# Installation

This document explain how to configure your system for running OpenStreetMap hiking.

# Data configuration

## OpenStreetMap data

Please as first step follow [OpenStreetMap Carto instructions](https://github.com/osmItalia/openstreetmap-carto/blob/master/INSTALL.md) since for the base data is sharing the same data structure.

The next step is to create the two tables to render corretly the routes. It use the `flex` output, it allows for a flexible configuration that tells osm2pgsql what OSM data to store in your database and exactly where and how.

```
osm2pgsql -d gis --output=flex -S scripts/route.lua ~/path/to/data.osm.pbf
```

## Elevation data

This style use several several layers derived from a digital terrain model to correctly represent the shape of the terrain.
Starting from a DTM, three raster layers are created to be used as background: a shaded relief map, a slope map and a colour relief map.

You can create these layers using GDAL's tool `gdaldem`. For each raster we add tiling and overviews to speed up reading and reduce memory usage.

First we need to reproject the DTM to Web Mercator (EPSG:3857) to avoid reprojection on the fly.
**Note**: All raster commands should be run inside the `layers` directory.

```bash
cd layers
gdalwarp -t_srs EPSG:3857 -r bilinear -co TILED=YES -co COMPRESS=LZW -co PREDICTOR=2 input_dtm.tif input_dtm_3857.tif
```

### 1. Compute Raster Layers

Generate the intermediate raster layers (hillshade, colored relief, and slope). We use standard compression here; optimization happens in the next step.

```bash
# Hillshade
gdaldem hillshade -co TILED=YES -co COMPRESS=DEFLATE -co PREDICTOR=2 input_dtm_3857.tif hillshade.tif

# Color Relief
gdaldem color-relief -co TILED=YES -co COMPRESS=DEFLATE -co PREDICTOR=2 input_dtm_3857.tif ../scripts/color-relief.txt relief.tif

# Slope Map (requires two steps: slope calculation -> color relief)
gdaldem slope input_dtm_3857.tif output_slope.tif
gdaldem color-relief -co TILED=YES -co COMPRESS=DEFLATE -co PREDICTOR=2 output_slope.tif ../scripts/slope-relief.txt slope.tif
rm -f output_slope.tif
```

### 2. Convert to Cloud Optimized GeoTIFFs (COGs)

Convert all generated rasters to Cloud Optimized GeoTIFFs.

```bash
parallel gdal_translate {} {.}_cog.tif -of COG -co COMPRESS=DEFLATE -co PREDICTOR=YES -co OVERVIEW_RESAMPLING=CUBIC -co BIGTIFF=YES ::: hillshade.tif relief.tif slope.tif
parallel mv {.}_cog.tif {} ::: hillshade.tif relief.tif slope.tif
```

The last layer required to represent the terrain model is the contour layer, which can be created with the `gdal_contour` tool.

```bash
gdal_contour -i 100 -a elev -f GeoJSONSeq input_dtm_3857.tif contour.jsonl
gzip contour.jsonl
```

Now import and optimize the contour data. **Subdividing** the lines is essential for 50GB+ datasets to prevent OOM crashes in Mapnik:

```bash
# Import
ogr2ogr -f PostgreSQL 'PG:dbname=gis' /vsigzip/contour.jsonl.gz -nln contour_raw -a_srs EPSG:3857

# Optimize: Subdivide large lines, add major levels, and index
psql -d gis -f scripts/optimize_contours.sql
```

## Custom index

Custom indexes are required for rendering performance and are essential for large databases.

```bash
psql -d gis -f scripts/indexes.sql
```
