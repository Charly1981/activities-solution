INSERT INTO `usuarios` (user_id, username, password, enabled, nombre, apellido, email) VALUES (113411, 'user','$2a$10$Yc7.KOyG0mTaS.T2DjL0..Wk0Tn0xHPsbOCrkogYssYdvTqAzQXX2',1, 'Andres', 'Guzman','profesor@bolsadeideas.com');
INSERT INTO `usuarios` (user_id, username, password, enabled, nombre, apellido, email) VALUES (222222, 'admin','$2a$10$Yc7.KOyG0mTaS.T2DjL0..Wk0Tn0xHPsbOCrkogYssYdvTqAzQXX2',1, 'John', 'Doe','jhon.doe@bolsadeideas.com');

INSERT INTO `roles` (nombre) VALUES ('ROLE_USER');
INSERT INTO `roles` (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (1, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 1);
