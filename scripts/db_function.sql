create or replace function poi_ldir(geometry)
    returns double precision as
$$
    select degrees(st_azimuth(st_closestpoint(way, $1), $1)) as angle
    from planet_osm_line
    where way && st_expand($1, 100)
        and highway in ('motorway', 'trunk', 'primary', 'secondary', 'tertiary',
            'unclassified', 'residential', 'living_street', 'pedestrian')
    order by way <-> $1
    limit 1
$$
language 'sql'
stable;