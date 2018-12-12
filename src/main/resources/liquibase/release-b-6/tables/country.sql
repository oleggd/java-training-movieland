------------ country -----------------------------------
CREATE TABLE country (
    id       SERIAL                   NOT NULL,
    name     CHARACTER VARYING(255)   NOT NULL
);

ALTER TABLE ONLY country ADD CONSTRAINT country_pk PRIMARY KEY (id);
ALTER TABLE ONLY country ADD CONSTRAINT country_uk UNIQUE (name);