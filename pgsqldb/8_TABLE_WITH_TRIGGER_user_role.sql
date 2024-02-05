-- Table: fleetmanager.user_role

CREATE TABLE IF NOT EXISTS fleetmanager.user_role
(
    role_id integer NOT NULL DEFAULT nextval('fleetmanager.role_role_id_seq'::regclass),
    role_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT role_pkey PRIMARY KEY (role_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager.user_role
    OWNER to postgres;

-- Trigger: role_update_trigger

-- DROP TRIGGER IF EXISTS role_update_trigger ON fleetmanager.user_role;

CREATE OR REPLACE TRIGGER role_update_trigger
    BEFORE UPDATE 
    ON fleetmanager.user_role
    FOR EACH ROW
    EXECUTE FUNCTION public.update_role_timestamp();