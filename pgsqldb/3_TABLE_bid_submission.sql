-- Table: fleetmanager.bid_submission

-- DROP TABLE IF EXISTS fleetmanager.bid_submission;

CREATE TABLE IF NOT EXISTS fleetmanager.bid_submission
(
    id integer NOT NULL,
    request_id character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    bidder_id character varying(50) COLLATE pg_catalog."default",
    bid_value character varying(50) COLLATE pg_catalog."default",
    created_on time with time zone,
    CONSTRAINT bid_submission_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS fleetmanager.bid_submission
    OWNER to postgres;