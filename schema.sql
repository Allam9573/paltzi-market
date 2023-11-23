create database market;
use market;
drop database market;

CREATE TABLE categorias (
  id_categoria int NOT NULL,
  descripcion VARCHAR(45) NOT NULL,
  estado BOOLEAN NOT NULL,
  PRIMARY KEY (id_categoria));


CREATE TABLE productos (
  id_producto int NOT NULL,
  nombre VARCHAR(45) NULL,
  id_categoria int NOT NULL,
  codigo_barras VARCHAR(150) NULL,
  precio_venta double NULL,
  cantidad_stock INT NOT NULL,
  estado BOOLEAN NULL,
  PRIMARY KEY (id_producto),
  CONSTRAINT fk_productos_categorias
    FOREIGN KEY (id_categoria)
    REFERENCES categorias (id_categoria)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE clientes (
  id_cliente VARCHAR(20) NOT NULL,
  nombre VARCHAR(40) NULL,
  apellidos VARCHAR(100) NULL,
  celular NUMERIC NULL,
  direccion VARCHAR(80) NULL,
  correo_electronico VARCHAR(70) NULL,
  PRIMARY KEY (id_cliente));
-- -----------------------------------------------------
CREATE TABLE  compras (
  id_compra SERIAL NOT NULL,
  id_cliente VARCHAR(20) NOT NULL,
  fecha TIMESTAMP NULL,
  medio_pago CHAR(1) NULL,
  comentario VARCHAR(300) NULL,
  estado CHAR(1) NULL,
  PRIMARY KEY (id_compra),
  CONSTRAINT fk_compras_clientes1
    FOREIGN KEY (id_cliente)
    REFERENCES clientes (id_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE compras_productos (
  id_compra serial NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NULL,
  total double NULL,
  estado BOOLEAN NULL,
  PRIMARY KEY (id_compra, id_producto),
  CONSTRAINT fk_compras_productos_productos1
    FOREIGN KEY (id_producto)
    REFERENCES productos (id_producto)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_compras_productos_compras1
    FOREIGN KEY (id_compra)
    REFERENCES compras (id_compra)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
  -- -----------------------------------------------------

show tables;
desc compras;
