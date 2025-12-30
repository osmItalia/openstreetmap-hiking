-- Function to update hiking_ways when a relation member changes
CREATE OR REPLACE FUNCTION maintain_hiking_status_from_member() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        UPDATE hiking_ways SET is_hiking = TRUE WHERE osm_id = NEW.way_id;
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        -- Check if it's still in another relation
        IF NOT EXISTS (SELECT 1 FROM hiking_relation_members WHERE way_id = OLD.way_id) THEN
            UPDATE hiking_ways SET is_hiking = NULL WHERE osm_id = OLD.way_id;
        END IF;
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Function to check hiking status when a way is inserted/updated (e.g. during replication update of a way)
CREATE OR REPLACE FUNCTION maintain_hiking_status_from_way() RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM hiking_relation_members WHERE way_id = NEW.osm_id) THEN
        NEW.is_hiking := TRUE;
    ELSE
        NEW.is_hiking := NULL;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger on hiking_relation_members
DROP TRIGGER IF EXISTS trg_maintain_hiking_status_member ON hiking_relation_members;
CREATE TRIGGER trg_maintain_hiking_status_member
AFTER INSERT OR UPDATE OR DELETE ON hiking_relation_members
FOR EACH ROW EXECUTE FUNCTION maintain_hiking_status_from_member();

-- Trigger on hiking_ways (BEFORE INSERT/UPDATE to set the column directly)
DROP TRIGGER IF EXISTS trg_maintain_hiking_status_way ON hiking_ways;
CREATE TRIGGER trg_maintain_hiking_status_way
BEFORE INSERT OR UPDATE ON hiking_ways
FOR EACH ROW EXECUTE FUNCTION maintain_hiking_status_from_way();

-- Initial Population (for bulk import)
-- This runs once at startup to set the flag for all currently related ways.
UPDATE hiking_ways AS w
SET is_hiking = TRUE
FROM hiking_relation_members m
WHERE w.osm_id = m.way_id;