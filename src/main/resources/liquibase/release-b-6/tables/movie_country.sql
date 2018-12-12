------------ movie_country -----------------------------------
CREATE TABLE movie_country (
    movie_id       SERIAL   NOT NULL,
    country_id     SERIAL   NOT NULL
);

ALTER TABLE ONLY movie_country ADD CONSTRAINT movie_country_uk UNIQUE (movie_id,country_id);