------------ genres -----------------------------------
DROP SEQUENCE IF EXISTS genre_id_seq CASCADE;

CREATE TABLE genres (
    id            SERIAL                   NOT NULL,
    name          CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY genres ADD CONSTRAINT genres_pk PRIMARY KEY (id);
ALTER TABLE ONLY genres ADD CONSTRAINT genres_uk UNIQUE (name);

CREATE SEQUENCE genre_id_seq START 1 INCREMENT 1;