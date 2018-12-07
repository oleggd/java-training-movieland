------------ posters -----------------------------------
DROP SEQUENCE IF EXISTS poster_id_seq CASCADE;

CREATE TABLE posters (
    id            SERIAL                   NOT NULL,
    movie_id      SERIAL                   NOT NULL,
    url           CHARACTER VARYING(1000)  NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY posters ADD CONSTRAINT posters_pk PRIMARY KEY (id);
ALTER TABLE ONLY posters ADD CONSTRAINT posters_fk FOREIGN KEY (movie_id) REFERENCES movies(id);

CREATE SEQUENCE poster_id_seq START 1 INCREMENT 1;