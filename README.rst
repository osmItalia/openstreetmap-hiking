Hiking style 
=============

These are the CartoCSS map stylesheets for the hiking style

Prerequisites
==============

Software
---------

* gdal
* cartocss
* Mapnik
* PostGIS

Data
-----
* OpenStreetMap data loaded in PostGIS database called `gis` with prefix name `planet_osm`
* contour lines loadded in PostGIS database called `gis` with table name `contour`
* a hillshade raster file called `hillshade.tif` located in `layers` folder
* a slope raster called `slope.tif` located in `layers` folder
* a relief raster called `relief.tif` located in `layers` folder

This tree rasters can be created using gdaldem software

License
========

This stylesheets is released under Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-SA 4.0).

For more info read the LICENSE file
