-- DML
INSERT INTO nacionalidad (id, nombre, activo) VALUES (seq_nacionalidad.NEXTVAL, 'Chilena', 1);
INSERT INTO nacionalidad (id, nombre, activo) VALUES (seq_nacionalidad.NEXTVAL, 'Peruana', 1);
INSERT INTO nacionalidad (id, nombre, activo) VALUES (seq_nacionalidad.NEXTVAL, 'Venezolana', 1);
INSERT INTO nacionalidad (id, nombre, activo) VALUES (seq_nacionalidad.NEXTVAL, 'Colombiana', 1);
INSERT INTO nacionalidad (id, nombre, activo) VALUES (seq_nacionalidad.NEXTVAL, 'Haitiana', 1);

INSERT INTO genero (id, nombre, activo) VALUES (seq_genero.NEXTVAL, 'Femenino', 1);
INSERT INTO genero (id, nombre, activo) VALUES (seq_genero.NEXTVAL, 'Masculino', 1);

INSERT INTO apellido_orden (id, nombre, activo) VALUES (seq_apellido_orden.NEXTVAL, 'Paterno', 1);
INSERT INTO apellido_orden (id, nombre, activo) VALUES (seq_apellido_orden.NEXTVAL, 'Materno', 1);

INSERT INTO documento_identidad_tipo (id, nombre, activo) VALUES (seq_documento_identidad_tipo.NEXTVAL, 'CI Cédula de Identidad', 1);
INSERT INTO documento_identidad_tipo (id, nombre, activo) VALUES (seq_documento_identidad_tipo.NEXTVAL, 'Pasaporte', 1);
INSERT INTO documento_identidad_tipo (id, nombre, activo) VALUES (seq_documento_identidad_tipo.NEXTVAL, 'Licencia de Conducir', 1);
INSERT INTO documento_identidad_tipo (id, nombre, activo) VALUES (seq_documento_identidad_tipo.NEXTVAL, 'DNI Documento Nacional de Identidad', 1);

INSERT INTO contacto_medio (id, nombre, activo) VALUES (seq_contacto_medio.NEXTVAL, 'Correo Electrónico', 1);
INSERT INTO contacto_medio (id, nombre, activo) VALUES (seq_contacto_medio.NEXTVAL, 'Teléfono', 1);
INSERT INTO contacto_medio (id, nombre, activo) VALUES (seq_contacto_medio.NEXTVAL, 'Whatsapp', 1);
INSERT INTO contacto_medio (id, nombre, activo) VALUES (seq_contacto_medio.NEXTVAL, 'Instagram', 1);
INSERT INTO contacto_medio (id, nombre, activo) VALUES (seq_contacto_medio.NEXTVAL, 'Facebook', 1);
INSERT INTO contacto_medio (id, nombre, activo) VALUES (seq_contacto_medio.NEXTVAL, 'X', 1);

INSERT INTO direccion_calle_tipo (id, nombre, activo) VALUES (seq_direccion_calle_tipo.NEXTVAL, 'Avenida', 1);
INSERT INTO direccion_calle_tipo (id, nombre, activo) VALUES (seq_direccion_calle_tipo.NEXTVAL, 'Calle', 1);
INSERT INTO direccion_calle_tipo (id, nombre, activo) VALUES (seq_direccion_calle_tipo.NEXTVAL, 'Pasaje', 1);

INSERT INTO direccion_ubicacion_tipo (id, nombre, activo) VALUES (seq_direccion_ubicacion_tipo.NEXTVAL, 'País', 1);
INSERT INTO direccion_ubicacion_tipo (id, nombre, activo) VALUES (seq_direccion_ubicacion_tipo.NEXTVAL, 'Región', 1);
INSERT INTO direccion_ubicacion_tipo (id, nombre, activo) VALUES (seq_direccion_ubicacion_tipo.NEXTVAL, 'Privincia', 1);
INSERT INTO direccion_ubicacion_tipo (id, nombre, activo) VALUES (seq_direccion_ubicacion_tipo.NEXTVAL, 'Comuna', 1);

INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Chile', null, 1, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'RM Región Metropolitana', 1, 2, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Provincia de Santiago', 2, 3, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Provincia del Maipo', 2, 3, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Provincia Cordillera', 2, 3, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Provincia de Talagante', 2, 3, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Comuna de Santiago', 3, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Maipú', 3, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'San Bernardo', 4, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Puente Alto', 5, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Las Condes', 3, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'La Pintana', 3, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Padre Hurtado', 6, 4, 1);
INSERT INTO direccion_ubicacion (id, nombre, super_id, direccion_ubicacion_tipo_id, activo) VALUES (seq_direccion_ubicacion.NEXTVAL, 'Ñuñoa', 3, 4, 1);




