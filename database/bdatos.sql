CREATE DATABASE IF NOT EXISTS tienda5;

USE tienda5;

CREATE TABLE IF NOT EXISTS t_usuarios(
    id_usuarios   int(11)      auto_increment  NOT NULL,
    nombre        varchar(100)                 NOT NULL,
    apellido      varchar(100)                 NOT NULL,
    email         varchar(200)                 NOT NULL,
    password      varchar(200)                 NOT NULL,
    rol           varchar(20)                  NOT NULL,
    imagen        varchar(200),
    CONSTRAINT    pk_usuarios            PRIMARY KEY(id_usuarios),
    CONSTRAINT    uq_email               UNIQUE(email)
)ENGINE=InnoDb;

INSERT INTO  t_usuarios  VALUE(NULL, 'Laura','Barrera','sofiabarreramontenegro26@gmail.com','123456789','admin','imagen');

CREATE TABLE IF NOT EXISTS t_categorias(
    id_categorias          int(11)        auto_increment  NOT NULL,
    nombre_categorias      varchar(100)                   NOT NULL,
    CONSTRAINT pk_categorias               PRIMARY KEY(id_categorias)
)ENGINE=InnoDb;

INSERT INTO t_categorias VALUE(NULL,'Construccion'),(NULL,'Electricos'),(NULL,'Pinturas'),(NULL,'Pisos');
  
CREATE TABLE IF NOT EXISTS t_productos(
    id_producto              int    (11)    auto_increment  NOT NULL,
    nombre_producto          varchar(100)                   NOT NULL,
    descripcion              varchar(200)                   NOT NULL,
    fecha                    date                           NOT NULL,
    stock                    int    (100)                   NOT NULL,
    precio                   float  (10,2)                  NOT NULL,
    imagen                   varchar(255),                  NOT NULL,
    oferta                   varchar(200)                   NOT NULL,         
    id_categorias            int    (11)                    NOT NULL,
    CONSTRAINT pk_producto                   PRIMARY KEY(id_producto),
    CONSTRAINT fk_producto_categoria         FOREIGN KEY(id_categorias) REFERENCES t_categorias(id_categorias)
)ENGINE=InnoDb;
  