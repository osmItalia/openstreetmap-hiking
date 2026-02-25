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


-- Trigger on hiking_ways (BEFORE INSERT/UPDATE to set the column directly)
DROP TRIGGER IF EXISTS trg_maintain_hiking_status_way ON hiking_ways;
CREATE TRIGGER trg_maintain_hiking_status_way
BEFORE INSERT OR UPDATE ON hiking_ways
FOR EACH ROW EXECUTE FUNCTION maintain_hiking_status_from_way();

-- Batch reconciliation of is_hiking status (run after each osm2pgsql import/update)
BEGIN;
UPDATE hiking_ways SET is_hiking = NULL WHERE is_hiking IS NOT NULL;
UPDATE hiking_ways AS w
SET is_hiking = TRUE
FROM hiking_relation_members m
WHERE w.osm_id = m.way_id;
COMMIT;