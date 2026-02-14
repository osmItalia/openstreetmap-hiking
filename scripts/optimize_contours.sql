CREATE TABLE contour AS
  SELECT ogc_fid, elev, ST_Subdivide(wkb_geometry, 255) as wkb_geometry 
  FROM contour_import;

ALTER TABLE contour ADD COLUMN major_level integer
  GENERATED ALWAYS AS (CASE WHEN (elev::numeric % 500. = 0) THEN 1 ELSE 0 END) STORED;

CREATE INDEX contour_major_level_idx ON contour (major_level);
CREATE INDEX contour_geom_gist_idx ON contour USING GIST (wkb_geometry);

ANALYZE contour;
DROP TABLE contour_import;
