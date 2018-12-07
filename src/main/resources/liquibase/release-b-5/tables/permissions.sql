------------ permissions -----------------------------------
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