-------------- reviews -----------------------------------
DROP SEQUENCE IF EXISTS review_id_seq CASCADE;

CREATE TABLE reviews (
    id            SERIAL                   NOT NULL,
    movie_id      SERIAL                   NOT NULL,
    author        CHARACTER VARYING(255)   NOT NULL,
    description   CHARACTER VARYING(1000)  NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY reviews ADD CONSTRAINT reviews_pk PRIMARY KEY (id);
ALTER TABLE ONLY reviews ADD CONSTRAINT reviews_fk FOREIGN KEY (movie_id) REFERENCES movies(id);

CREATE SEQUENCE review_id_seq START 1 INCREMENT 1;

