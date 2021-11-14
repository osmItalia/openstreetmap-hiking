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

You can create these layers using GDAL's tool `gdaldem`. For each raster we had the overview to speed up raster reading.

First we create the shaded relief

```
gdaldem hillshade -co compress=lzw -co predictor=2 input_dtm.tif layers/hillshade.tif

gdaladdo --config COMPRESS_OVERVIEW JPEG layers/hillshade.tif
```

After the colour relief map

```
gdaldem color-relief -co compress=lzw -co predictor=2 input_dtm.tif scripts/color-relief.txt layers/relief.tif

gdaladdo --config COMPRESS_OVERVIEW JPEG layers/relief.tif
```

Finally we create the slope map, it requires two steps, first create the slope map and then colour it.

```
gdaldem slope input_dtm.tif output_slope.tif

gdaldem color-relief -co compress=lzw -co predictor=2 output_slope.tif script/slope-relief.txt layers/slope.tif
gdaladdo --config COMPRESS_OVERVIEW JPEG layers/slope.tif
rm -f output_slope.tif
```

The last layer required to represent the terrain model is the contour layer, which can be created with the `gdal_contour` tool.
Two values must be set, the name of the column that will contain the altitude values and the interval between the lines, in our case the value is 100 metres

```
gdal_contour -i 100 -a elev input_dtm.tif contour.shp
```

Now we need to import the output shapefile into PostgreSQL database

```
shp2pgsql -g wkb_geometry contour.shp contour | psql gis
```

## Custom index

Custom indexes are required for rendering performance and are essential for each databases.

~~~
psql -d gis -f scripts/indexes.sql
~~~
