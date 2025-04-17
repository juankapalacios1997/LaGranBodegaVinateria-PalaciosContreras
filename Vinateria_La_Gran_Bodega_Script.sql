-- -----------------------------------------------------
-- Schema vinateria_la_gran_bodega
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `vinateria_la_gran_bodega`;
CREATE SCHEMA IF NOT EXISTS `vinateria_la_gran_bodega` DEFAULT CHARACTER SET utf8 ;
USE `vinateria_la_gran_bodega` ;

-- -----------------------------------------------------
-- Table `vinateria_la_gran_bodega`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Categorias` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
;

-- -----------------------------------------------------
-- Table `vinateria_la_gran_bodega`.`Marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Marcas` (
  `idMarca` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMarca`))
;

-- -----------------------------------------------------
-- Table `vinateria_la_gran_bodega`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Productos` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NOT NULL,
  `idCategoria` INT NOT NULL,
  `idMarca` INT NOT NULL,
  `stock` INT NOT NULL,
  `precioUsd` DECIMAL(18,2) NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `idCategoria_idx` (`idCategoria` ASC),
  INDEX `idMarca_idx` (`idMarca` ASC),
  CONSTRAINT `idCategoria`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `vinateria_la_gran_bodega`.`Categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
CONSTRAINT `idMarca`
    FOREIGN KEY (`idMarca`)
    REFERENCES `vinateria_la_gran_bodega`.`Marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table `vinateria_la_gran_bodega`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `edad` INT NOT NULL,
  PRIMARY KEY (`idCliente`))
;


-- -----------------------------------------------------
-- Table `vinateria_la_gran_bodega`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Ventas` (
  `idVenta` INT NOT NULL AUTO_INCREMENT,
  `fecha` VARCHAR(20) NOT NULL,
  `idProducto` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`idVenta`),
  INDEX `idProducto_idx` (`idProducto` ASC),
  INDEX `idCliente_idx` (`idCliente` ASC),
  CONSTRAINT `idProducto`
    FOREIGN KEY (`idProducto`)
    REFERENCES `vinateria_la_gran_bodega`.`Productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `vinateria_la_gran_bodega`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

INSERT INTO `vinateria_la_gran_bodega`.`Categorias`(`idCategoria`,`nombre`) VALUES (1,'Whisky');
INSERT INTO `vinateria_la_gran_bodega`.`Categorias`(`idCategoria`,`nombre`) VALUES (2,'Vodka');
INSERT INTO `vinateria_la_gran_bodega`.`Categorias`(`idCategoria`,`nombre`) VALUES (3,'Tequila');

INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (101,'Don Julio');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (102,'Gran Centenario');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (103,'Maestro Dobel');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (104,'Smirnoff');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (105,'Stolichnaya');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (106,'Absolut');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (107,"Buchanan's");
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (108,'Chivas Regal');
INSERT INTO `vinateria_la_gran_bodega`.`Marcas`(`idMarca`,`nombre`) VALUES (109,'Johnny Walker');

INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (11,'Tequila Don Julio Blanco 750ml', 3, 101, 41, 19.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (12,'Tequila Don Julio Reposado 700ml', 3, 101, 124, 29.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (13,'Tequila Don Julio 70 Cristalino 700ml', 3, 101, 121, 49.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (14,'Tequila Gran Centenario Reposado 700ml', 3, 102, 32, 14.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (15,'Tequila Gran Centenario Plata Blanco 700ml', 3, 102, 20, 19.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (16,'Tequila Maestro Dobel Diamante 700ml', 3, 103, 9, 71.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (17,'Vodka Smirnoff Triple Destilado 750ml', 2, 104, 83, 9.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (18,'Vodka Smirnoff X1 Tamarindo 750ml', 2, 104, 68, 9.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (19,'Vodka Stolichnaya Spirit 750ml', 2, 105, 93, 14.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (20,'Vodka Absolut Azul 750ml', 2, 106, 103, 19.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (21,'Vodka Absolut Mandarin 750ml', 2, 106, 56, 22.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (22,'Vodka Absolut Watermelon 750ml', 2, 106, 36, 22.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (23,"Whisky Buchanan's 12 anos 750ml", 1, 107, 43, 34.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (24,"Whisky Buchanan's Reserva Especial 18 anos 750ml", 1, 107, 12, 34.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (25,'Whisky Chivas Regal 12 anos 1L', 1, 108, 12, 59.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (26,'Whisky Johnny Walker Red Label', 1, 109, 12, 19.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (27,'Whisky Johnny Walker Black Label', 1, 109, 12, 49.99);
INSERT INTO `vinateria_la_gran_bodega`.`Productos`(`idProducto`,`nombre`, `idCategoria`, `idMarca`, `stock`, `precioUsd`) VALUES (28,'Whisky Johnny Walker Blue Label', 1, 109, 12, 109.99);

INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (201,'Jose','Perez',21);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (202,'Andrea','Aguilar',19);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (203,'Sergio','Rivas',27);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (204,'Olivia','Tristan',42);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (205,'Francisco','Hernandez',37);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (206,'Isabel','Soria',52);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (207,'Matias','Alarcon',31);
INSERT INTO `vinateria_la_gran_bodega`.`Cliente`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (208,'Carlos','Palacios',27);

INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`, `idProducto`,`idCliente`,`cantidad`) VALUES (1001,'21/03/2025',11,201,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1002,'14/04/2025',26,201,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1003,'22/01/2025',18,202,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1004,'13/02/2025',14,203,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1005,'01/02/2025',20,204,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1006,'07/03/2025',16,206,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1007,'06/04/2025',27,206,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1008,'09/03/2025',13,206,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1009,'11/04/2025',14,207,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1010,'10/03/2025',23,207,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1011,'18/04/2025',17,208,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idProducto`,`idCliente`,`cantidad`) VALUES (1012,'21/02/2025',26,208,2);

SHOW FULL TABLES FROM vinateria_la_gran_bodega;


