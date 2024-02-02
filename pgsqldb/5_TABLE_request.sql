-- Table: fleetmanager.request

DROP TABLE IF EXISTS fleetmanager.request;

CREATE TABLE IF NOT EXISTS fleetmanager.request
(
    id integer NOT NULL,
    request_id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(100) COLLATE pg_catalog."default",
    last_name character varying(100) COLLATE pg_catalog."default",
    emp_id character varying(50) COLLATE pg_catalog."default",
    country character varying(100) COLLATE pg_catalog."default",
    make character varying(100) COLLATE pg_catalog."default",
    model character varying(100) COLLATE pg_catalog."default",
    model_year integer,
    "trim" character varying(100) COLLATE pg_catalog."default",
    classification character varying(100) COLLATE pg_catalog."default",
    fuel_type character varying(50) COLLATE pg_catalog."default",
    engine_power_cc character varying(10) COLLATE pg_catalog."default",
    engine_power_hp character varying(10) COLLATE pg_catalog."default",
    "Transmission" character varying(50) COLLATE pg_catalog."default",
    body_type character varying(50) COLLATE pg_catalog."default",
    exterior_color character varying(50) COLLATE pg_catalog."default",
    interior_color character varying(50) COLLATE pg_catalog."default",
    additional_options character varying(500) COLLATE pg_catalog."default",
    price_local_curr numeric(10,2),
    created_on time with time zone,
    uploaded_by character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT request_pkey PRIMARY KEY (id, request_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager.request
    OWNER to postgres;