------------ movies_genre -----------------------------------
CREATE TABLE movies_genre (
    movie_id      SERIAL                   NOT NULL,
    genre_id      SERIAL                   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY movies_genre ADD CONSTRAINT movies_genre_pk PRIMARY KEY (movie_id,genre_id);
--ALTER TABLE ONLY movies_genre ADD CONSTRAINT movies_genre_fk1 FOREIGN KEY (movie_id) REFERENCES movies(id);
--ALTER TABLE ONLY movies_genre ADD CONSTRAINT movies_genre_fk2 FOREIGN KEY (genre_id) REFERENCES genres(id);
