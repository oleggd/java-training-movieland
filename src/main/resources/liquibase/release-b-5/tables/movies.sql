------------ movies -----------------------------------
DROP SEQUENCE IF EXISTS movie_id_seq CASCADE;

CREATE TABLE movies (
    id            SERIAL                   NOT NULL,
    name          CHARACTER VARYING(255)   NOT NULL,
    name_orig     CHARACTER VARYING(255)   NOT NULL,
    year          INTEGER,  
    country       CHARACTER VARYING(255),
    --genre         CHARACTER VARYING(255),
    description   CHARACTER VARYING(4000),
    rating        NUMERIC(5,2),
    price         NUMERIC,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY movies ADD CONSTRAINT movies_pk PRIMARY KEY (id);
ALTER TABLE ONLY movies ADD CONSTRAINT movies_uk UNIQUE (name,year,country);

CREATE SEQUENCE movie_id_seq START 1 INCREMENT 1;