--CREATE DATABASE movieland
--    WITH 
--   OWNER = postgres
--   ENCODING = 'UTF8'
--   CONNECTION LIMIT = -1;

------------ users -----------------------------------
DROP TABLE public.users;
DROP SEQUENCE public.user_id_seq CASCADE;

CREATE TABLE public.users (
    id            SERIAL                   NOT NULL,
    login         CHARACTER VARYING(255)   NOT NULL,
    name          CHARACTER VARYING(255)   NOT NULL,
    email         CHARACTER VARYING(255)   NOT NULL,
    password      CHARACTER VARYING(255)   NOT NULL,
    sole          CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL,
    role          CHARACTER VARYING(255)   NOT NULL
);

ALTER TABLE ONLY public.users ADD CONSTRAINT users_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.users ADD CONSTRAINT users_uk UNIQUE (login);

ALTER TABLE public.users OWNER to postgres;

CREATE SEQUENCE public.user_id_seq START 1 INCREMENT 1;

------------ permissions -----------------------------------
DROP TABLE public.permissions;
DROP SEQUENCE public.permission_id_seq CASCADE;

CREATE TABLE public.permissions (
    id            SERIAL                   NOT NULL,
    role          CHARACTER VARYING(255)   NOT NULL,
    object        CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY public.permissions ADD CONSTRAINT permissions_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.permissions ADD CONSTRAINT permissions_uk UNIQUE (role,object);

ALTER TABLE public.permissions OWNER to postgres;

CREATE SEQUENCE public.permission_id_seq START 1 INCREMENT 1;

------------ genres -----------------------------------
DROP TABLE public.genres;
DROP SEQUENCE public.genre_id_seq CASCADE;

CREATE TABLE public.genres (
    id            SERIAL                   NOT NULL,
    name          CHARACTER VARYING(255)   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY public.genres ADD CONSTRAINT genres_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.genres ADD CONSTRAINT genres_uk UNIQUE (name);

ALTER TABLE public.genres OWNER to postgres;

CREATE SEQUENCE public.genre_id_seq START 1 INCREMENT 1;

------------ movies -----------------------------------
DROP TABLE public.movies CASCADE;
DROP SEQUENCE public.movie_id_seq CASCADE;

CREATE TABLE public.movies (
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

ALTER TABLE ONLY public.movies ADD CONSTRAINT movies_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.movies ADD CONSTRAINT movies_uk UNIQUE (name,year,country);

ALTER TABLE public.movies OWNER to postgres;

CREATE SEQUENCE public.movie_id_seq START 1 INCREMENT 1;

------------ movies_genre -----------------------------------
DROP TABLE public.movies_genre;

CREATE TABLE public.movies_genre (
    movie_id      SERIAL                   NOT NULL,
    genre_id      SERIAL                   NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY public.movies_genre ADD CONSTRAINT movies_genre_pk PRIMARY KEY (movie_id,genre_id);
ALTER TABLE ONLY public.movies_genre ADD CONSTRAINT movies_genre_fk1 FOREIGN KEY (movie_id) REFERENCES movies(id);
ALTER TABLE ONLY public.movies_genre ADD CONSTRAINT movies_genre_fk2 FOREIGN KEY (genre_id) REFERENCES genre(id);

ALTER TABLE public.movies_genre OWNER to postgres;

------------ posters -----------------------------------
DROP TABLE public.posters;
DROP SEQUENCE public.poster_id_seq CASCADE;

CREATE TABLE public.posters (
    id            SERIAL                   NOT NULL,
    movie_id      SERIAL                   NOT NULL,
    url           CHARACTER VARYING(1000)  NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY public.posters ADD CONSTRAINT posters_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.posters ADD CONSTRAINT posters_fk FOREIGN KEY (movie_id) REFERENCES movies(id);

ALTER TABLE public.posters OWNER to postgres;

CREATE SEQUENCE public.poster_id_seq START 1 INCREMENT 1;

-------------- reviews -----------------------------------
DROP TABLE public.reviews;
DROP SEQUENCE public.review_id_seq CASCADE;

CREATE TABLE public.reviews (
    id            SERIAL                   NOT NULL,
    movie_id      SERIAL                   NOT NULL,
    author        CHARACTER VARYING(255)   NOT NULL,
    description   CHARACTER VARYING(1000)  NOT NULL,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE ONLY public.reviews ADD CONSTRAINT reviews_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.reviews ADD CONSTRAINT reviews_fk FOREIGN KEY (movie_id) REFERENCES movies(id);

ALTER TABLE public.reviews OWNER to postgres;

CREATE SEQUENCE public.review_id_seq START 1 INCREMENT 1;

