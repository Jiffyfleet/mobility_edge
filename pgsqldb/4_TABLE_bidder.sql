-- Table: fleetmanager.bidder

-- DROP TABLE IF EXISTS fleetmanager.bidder;

CREATE TABLE IF NOT EXISTS fleetmanager.bidder
(
    id integer NOT NULL,
    bidder_id character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    bidder_name character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    bidder_country character(3) COLLATE pg_catalog."default",
    is_active "char",
    created_on time with time zone,
    updated_on time with time zone,
    CONSTRAINT bidder_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager.bidder
    OWNER to postgres;