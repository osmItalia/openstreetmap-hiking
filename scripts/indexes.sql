-- This file is used to create indexes to improve rendering performance

CREATE INDEX contour_geom
  ON contour USING GIST (wkb_geometry);

CREATE INDEX idx_hiking_routes_osm_id
  ON hiking_routes (osm_id);

CREATE INDEX idx_hiking_relation_members_way_id
  ON hiking_relation_members (way_id);

CREATE INDEX idx_hiking_relation_members_osm_id
  ON hiking_relation_members (osm_id);
