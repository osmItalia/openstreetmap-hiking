-- This file is used to create indexes to improve rendering performance

CREATE INDEX contour_geom
  ON contour USING GIST (wkb_geometry);

CREATE INDEX relation_id_index 
  ON hiking_routes (relation_id );
