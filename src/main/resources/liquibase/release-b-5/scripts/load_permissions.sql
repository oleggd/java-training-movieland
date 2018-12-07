INSERT INTO permissions(id, role, object, creation_date) VALUES (nextval('permission_id_seq'), 'Guest', 'login',  CURRENT_TIMESTAMP(0));
INSERT INTO permissions(id, role, object, creation_date) VALUES (nextval('permission_id_seq'), 'Guest', 'logout', CURRENT_TIMESTAMP(0));
INSERT INTO permissions(id, role, object, creation_date) VALUES (nextval('permission_id_seq'), 'User',  'login',  CURRENT_TIMESTAMP(0));
INSERT INTO permissions(id, role, object, creation_date) VALUES (nextval('permission_id_seq'), 'User',  'logout', CURRENT_TIMESTAMP(0));
INSERT INTO permissions(id, role, object, creation_date) VALUES (nextval('permission_id_seq'), 'Admin', 'login',  CURRENT_TIMESTAMP(0));
INSERT INTO permissions(id, role, object, creation_date) VALUES (nextval('permission_id_seq'), 'Admin', 'logout', CURRENT_TIMESTAMP(0));