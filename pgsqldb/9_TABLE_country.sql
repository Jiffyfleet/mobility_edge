-- Table: fleetmanager.country

CREATE TABLE IF NOT EXISTS fleetmanager.country
(
    country_id integer NOT NULL DEFAULT nextval('fleetmanager.country_country_id_seq'::regclass),
    country_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    iso_alpha2 character(2) COLLATE pg_catalog."default" NOT NULL,
    iso_alpha3 character(3) COLLATE pg_catalog."default" NOT NULL,
    continent character varying(50) COLLATE pg_catalog."default",
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT country_pkey PRIMARY KEY (country_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager.country
    OWNER to postgres;