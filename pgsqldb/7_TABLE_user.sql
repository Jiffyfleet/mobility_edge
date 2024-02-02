-- Table: fleetmanager.user

-- DROP TABLE IF EXISTS fleetmanager."user";

CREATE TABLE IF NOT EXISTS fleetmanager."user"
(
    user_id integer,
    first_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(100) COLLATE pg_catalog."default",
    email character varying(100) COLLATE pg_catalog."default",
    password character varying(10000) COLLATE pg_catalog."default",
    role character varying(100) COLLATE pg_catalog."default",
    permission character varying(100) COLLATE pg_catalog."default",
    status character varying(100) COLLATE pg_catalog."default",
    created_on timestamp with time zone,
    created_by character varying(100) COLLATE pg_catalog."default",
    approved_by character varying(100) COLLATE pg_catalog."default",
    updated_by character varying(100) COLLATE pg_catalog."default",
    updated_on timestamp with time zone,
    last_logged_on timestamp with time zone
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager."user"
    OWNER to postgres;