-- The next functions will create two layers with info about hiking routes

-- Europe bounding box (approximate)
local EUROPE_BBOX = {
    min_lon = -31.0,  -- West (Atlantic/Azores)
    max_lon = 70.0,   -- East (Urals)
    min_lat = 27.0,   -- South (Canary Islands)
    max_lat = 82.0    -- North (Svalbard)
}

local function is_in_europe(object)
    local min_lon, min_lat, max_lon, max_lat = object:get_bbox()
    if not min_lon then
        return false
    end
    return max_lon >= EUROPE_BBOX.min_lon and min_lon <= EUROPE_BBOX.max_lon
       and max_lat >= EUROPE_BBOX.min_lat and min_lat <= EUROPE_BBOX.max_lat
end

local previous_process_way = osm2pgsql.process_way
local previous_process_relation = osm2pgsql.process_relation
local previous_select_relation_members = osm2pgsql.select_relation_members

local tables = {}

local function sanitize_str(value)
    if value == nil then
        return nil
    end
    local s = tostring(value)
    if s == '' then
        return nil
    end
    s = s:gsub('[\t\r\n]+', ' ')
    s = s:gsub(' +', ' ')
    return s
end

local function sanitize_tags(tags)
    if type(tags) ~= 'table' then
        return
    end
    for key, val in pairs(tags) do
        if type(val) == 'string' then
            tags[key] = sanitize_str(val)
        end
    end
end

local function sanitize_fields(row, keys)
    for _, key in ipairs(keys) do
        row[key] = sanitize_str(row[key])
    end
end

tables.hiking_ways = osm2pgsql.define_table({
    name = 'hiking_ways',
    ids = { type = 'way', id_column = 'osm_id' },
    columns = {
        { column = 'highway', type='text'},
        { column = 'name', type='text'},
        { column = 'ref', type='text'},
        { column = 'bicycle', type= 'text' },
        { column = 'horse', type= 'text' },
        { column = 'tunnel', type= 'text' },
        { column = 'covered', type= 'text' },
        { column = 'bridge', type= 'text' },
        { column = 'geom', type = 'linestring' },
    }
})

tables.hiking_routes = osm2pgsql.define_table({
    name = 'hiking_routes',
    ids = { type = 'relation', id_column = 'osm_id' },
    columns = {
        { column = 'name', type = 'text' },
        { column = 'cai_scale', type = 'text' },
        { column = 'ref', type= 'text' },
        { column = 'tags', type = 'hstore' },
    }
})

tables.hiking_relation_members = osm2pgsql.define_table({
    name = 'hiking_relation_members',
    schema = 'public',
    ids = { type = 'any', id_column = 'id' },
    columns = {
        { column = 'osm_id', sql_type = 'int8', not_null = true },
        { column = 'way_id', sql_type = 'int8', not_null = true },
        { column = 'rel_network', type = 'text' },
    }
})

local function clean_tags(tags)
    tags.odbl = nil
    tags.created_by = nil
    tags.source = nil
    tags['source:ref'] = nil

    return next(tags) == nil
end 

local function process_hiking_way(object)
    if not object.tags.highway then
        return
    end

    if not is_in_europe(object) then
        return
    end
    
    clean_tags(object.tags)
    sanitize_tags(object.tags)
        
    local row = {
        highway = object.tags.highway,
        name = object.tags.name,
        ref = object.tags.ref,
        bicycle = object.tags.bicycle,
        horse = object.tags.horse,
        tunnel = object.tags.tunnel,
        covered = object.tags.covered,
        bridge = object.tags.bridge,
        geom = object:as_linestring(),
    }

    tables.hiking_ways:insert(row)
end

function osm2pgsql.select_relation_members(relation)
    local base = previous_select_relation_members and previous_select_relation_members(relation)
    if relation.tags.type == 'route' and relation.tags.route == 'hiking' then
        local ways = osm2pgsql.way_member_ids(relation)
        if base and base.ways then
            for _, id in ipairs(base.ways) do
                ways[#ways + 1] = id
            end
        end
        return { ways = ways, nodes = base and base.nodes, relations = base and base.relations }
    end
    return base
end

local function process_hiking_relation(object)
    if object.tags.type ~= 'route' or object.tags.route ~= 'hiking' then
        return
    end

    -- Only process hiking routes in Europe
    if not is_in_europe(object) then
        return
    end

    sanitize_tags(object.tags)
    local row = {
        name = object.tags.name,
        cai_scale = object.tags.cai_scale,
        ref = object.tags.ref,
        tags = object.tags,
    }

    tables.hiking_routes:insert(row)

    for _, member in ipairs(object.members) do
        if member.type == 'w' then
            tables.hiking_relation_members:insert({
                osm_id = object.id,
                way_id = member.ref,
                rel_network = object.tags.network
            })
        end
    end
end

function osm2pgsql.process_way(object)
    if previous_process_way then
        previous_process_way(object)
    end
    process_hiking_way(object)
end

function osm2pgsql.process_relation(object)
    if previous_process_relation then
        previous_process_relation(object)
    end
    process_hiking_relation(object)
end
  
