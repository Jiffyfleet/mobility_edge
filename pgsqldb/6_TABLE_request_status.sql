-- Table: fleetmanager.request_status

-- DROP TABLE IF EXISTS fleetmanager.request_status;

CREATE TABLE IF NOT EXISTS fleetmanager.request_status
(
    id integer NOT NULL,
    request_id character varying(100) COLLATE pg_catalog."default",
    status character varying(50) COLLATE pg_catalog."default",
    error_details bytea,
    created_on time with time zone,
    updated_by character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT request_status_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager.request_status
    OWNER to postgres;