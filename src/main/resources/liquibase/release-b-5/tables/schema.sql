--CREATE DATABASE movieland
--    WITH 
--   OWNER = postgres
--   ENCODING = 'UTF8'
--   CONNECTION LIMIT = -1;

------------ users -----------------------------------
DROP IF EXISTS TABLE users;
DROP SEQUENCE IF EXISTS user_id_seq CASCADE;

CREATE TABLE users (
    id            SERIAL                   NOT NULL,
    login         CHARACTER VARYING(255)   NOT NULL,
    name          CHARACTER VARYING(255)   NOT NULL,
    email         CHARACTER VARYING(255)   NOT NULL,
    password      CHARACTER VARYING(255)   NOT NULL,
    sole          CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL,
    role          CHARACTER VARYING(255)   NOT NULL
);

ALTER TABLE ONLY users ADD CONSTRAINT users_pk PRIMARY KEY (id);
ALTER TABLE ONLY users ADD CONSTRAINT users_uk UNIQUE (login);

CREATE SEQUENCE user_id_seq START 1 INCREMENT 1;

------------ permissions -----------------------------------
DROP IF EXISTS TABLE permissions;
DROP SEQUENCE IF EXISTS permission_id_seq CASCADE;

CREATE TABLE permissions (
    id            SERIAL                   NOT NULL,
    role          CHARACTER VARYING(255)   NOT NULL,
    object        CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY permissions ADD CONSTRAINT permissions_pk PRIMARY KEY (id);
ALTER TABLE ONLY permissions ADD CONSTRAINT permissions_uk UNIQUE (role,object);

CREATE SEQUENCE permission_id_seq START 1 INCREMENT 1;

------------ genres -----------------------------------
DROP IF EXISTS TABLE genres;
DROP SEQUENCE IF EXISTS genre_id_seq CASCADE;

CREATE TABLE genres (
    id            SERIAL                   NOT NULL,
    name          CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY genres ADD CONSTRAINT genres_pk PRIMARY KEY (id);
ALTER TABLE ONLY genres ADD CONSTRAINT genres_uk UNIQUE (name);

CREATE SEQUENCE genre_id_seq START 1 INCREMENT 1;

------------ movies -----------------------------------
DROP IF EXISTS TABLE movies CASCADE;
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

------------ movies_genre -----------------------------------
DROP IF EXISTS TABLE movies_genre;

CREATE TABLE movies_genre (
    movie_id      SERIAL                   NOT NULL,
    genre_id      SERIAL                   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY movies_genre ADD CONSTRAINT movies_genre_pk PRIMARY KEY (movie_id,genre_id);
ALTER TABLE ONLY movies_genre ADD CONSTRAINT movies_genre_fk1 FOREIGN KEY (movie_id) REFERENCES movies(id);
ALTER TABLE ONLY movies_genre ADD CONSTRAINT movies_genre_fk2 FOREIGN KEY (genre_id) REFERENCES genre(id);

------------ posters -----------------------------------
DROP IF EXISTS TABLE posters;
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

-------------- reviews -----------------------------------
DROP IF EXISTS TABLE reviews;
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

