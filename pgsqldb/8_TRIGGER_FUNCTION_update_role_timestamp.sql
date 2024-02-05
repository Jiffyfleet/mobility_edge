-- Trigger: role_update_trigger

-- DROP TRIGGER IF EXISTS role_update_trigger ON fleetmanager.user_role;

CREATE OR REPLACE TRIGGER role_update_trigger
    BEFORE UPDATE 
    ON fleetmanager.user_role
    FOR EACH ROW
    EXECUTE FUNCTION public.update_role_timestamp();