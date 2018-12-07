------------ users -----------------------------------
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
