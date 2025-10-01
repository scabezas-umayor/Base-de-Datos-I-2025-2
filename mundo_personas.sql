-- DDL: CREATE

-- SELECT sysdate FROM DUAL;

-- TABLAS DEBILES: SIN RELACIONES

CREATE TABLE nacionalidad (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

CREATE TABLE genero (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

CREATE TABLE apellido_orden (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

CREATE TABLE documento_identidad_tipo (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

CREATE TABLE contacto_medio (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

CREATE TABLE direccion_ubicacion_tipo (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

CREATE TABLE direccion_calle_tipo (
    id          NUMBER(8) PRIMARY KEY,
    nombre      VARCHAR2(50) NOT NULL, 
    activo      NUMBER(1) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP
);

-- TABLAS DE 1 RELACION

-- DROP TABLE direccion_ubicacion;

CREATE TABLE direccion_ubicacion (
    id                          NUMBER(8) PRIMARY KEY,
    nombre                      VARCHAR2(50) NOT NULL,
    super_id                    NUMBER(8),
    direccion_ubicacion_tipo_id NUMBER(8) NOT NULL,
    activo                      NUMBER(1) NOT NULL,
    created_at                  TIMESTAMP NOT NULL,
    updated_at                  TIMESTAMP,
    CONSTRAINT FK_DU_DUT_ID FOREIGN KEY (direccion_ubicacion_tipo_id) REFERENCES direccion_ubicacion_tipo (id),
    CONSTRAINT FK_DU_DU_SUPER FOREIGN KEY (super_id) REFERENCES direccion_ubicacion (id)
);

-- TABLAS DE 2 RELACIONES

CREATE TABLE direccion (
    id              NUMBER(8) PRIMARY KEY,
    nombre          VARCHAR2(50) NOT NULL,
    calle           VARCHAR2(50) NOT NULL,
    numero          VARCHAR2(50) NOT NULL,
    calle_tipo_id   NUMBER(8),
    ubicacion_id    NUMBER(8) NOT NULL,
    activo          NUMBER(1) NOT NULL,
    created_at      TIMESTAMP NOT NULL,
    updated_at      TIMESTAMP,
    CONSTRAINT FK_DIR_DCT_ID FOREIGN KEY (calle_tipo_id) REFERENCES direccion_calle_tipo (id),
    CONSTRAINT FK_DIR_DU_ID FOREIGN KEY (ubicacion_id) REFERENCES direccion_ubicacion (id)
);

-- CREATE TABLE PERSONA

CREATE TABLE persona (
    id                  NUMBER(12) PRIMARY KEY,
    fecha_nacimiento    TIMESTAMP NOT NULL,
    activo              NUMBER(1) NOT NULL,
    created_at          TIMESTAMP NOT NULL,
    updated_at          TIMESTAMP
);

DROP TABLE documento_identidad;

CREATE TABLE documento_identidad (
    id                  NUMBER(12) PRIMARY KEY,
    valor               VARCHAR2(50) NOT NULL,
    numero              VARCHAR2(50) NOT NULL,
    nombres             VARCHAR2(50) NOT NULL,
    apellido_paterno    VARCHAR2(50) NOT NULL,
    apellido_materno    VARCHAR2(50) NOT NULL,
    apellido_orden_id   NUMBER(8) NOT NULL,
    nacionalidad_id     NUMBER(8) NOT NULL,
    tipo_id             NUMBER(8) NOT NULL,
    genero_id           NUMBER(8) NOT NULL,
    persona_id          NUMBER(12) NOT NULL,
    activo              NUMBER(1) NOT NULL,
    created_at          TIMESTAMP NOT NULL,
    updated_at          TIMESTAMP,
    CONSTRAINT FK_DOCID_ORDEN_ID FOREIGN KEY (apellido_orden_id) REFERENCES apellido_orden (id),
    CONSTRAINT FK_DOCID_NACIO_ID FOREIGN KEY (nacionalidad_id) REFERENCES nacionalidad (id),
    CONSTRAINT FK_DOCID_DTIPO_ID FOREIGN KEY (tipo_id) REFERENCES documento_identidad_tipo (id),
    CONSTRAINT FK_DOCID_GENER_ID FOREIGN KEY (genero_id) REFERENCES genero (id),
    CONSTRAINT FK_DOCID_PERSO_ID FOREIGN KEY (persona_id) REFERENCES persona (id)
);

CREATE TABLE personas_medios_contacto (
    id                  NUMBER(8) PRIMARY KEY,
    valor               VARCHAR2(50) NOT NULL,
    calle               VARCHAR2(50) NOT NULL,
    persona_id          NUMBER(8) NOT NULL,
    contacto_medio_id   NUMBER(8) NOT NULL,
    activo              NUMBER(1) NOT NULL,
    created_at          TIMESTAMP NOT NULL,
    updated_at          TIMESTAMP,
    CONSTRAINT FK_PMC_PER_ID FOREIGN KEY (persona_id) REFERENCES persona (id),
    CONSTRAINT FK_PMC_CME_ID FOREIGN KEY (contacto_medio_id) REFERENCES contacto_medio (id)
);

CREATE TABLE persona_direcciones (
    id                  NUMBER(8) PRIMARY KEY,
    persona_id          NUMBER(12) NOT NULL,
    direccion_id        NUMBER(8) NOT NULL,
    activo              NUMBER(1) NOT NULL,
    created_at          TIMESTAMP NOT NULL,
    updated_at          TIMESTAMP,
    CONSTRAINT FK_PD_PER_ID FOREIGN KEY (persona_id) REFERENCES persona (id),
    CONSTRAINT FK_PD_DIR_ID FOREIGN KEY (direccion_id) REFERENCES direccion (id)
);
