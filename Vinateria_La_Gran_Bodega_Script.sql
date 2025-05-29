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
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Clientes` (
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
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`idVenta`),
  INDEX `idCliente_idx` (`idCliente` ASC),
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `vinateria_la_gran_bodega`.`Clientes` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

-- -----------------------------------------------------
-- Table `vinateria_la_gran_bodega`.`Ventas_Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vinateria_la_gran_bodega`.`Ventas_Productos` (
  `idVentaProducto` INT NOT NULL AUTO_INCREMENT,
  `idVenta` INT NOT NULL,
  `idProducto` INT NOT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`idVentaProducto`),
  INDEX `idVenta_idx` (`idVenta` ASC),
  INDEX `idProducto_idx` (`idProducto` ASC),
   CONSTRAINT `idVenta`
    FOREIGN KEY (`idVenta`)
    REFERENCES `vinateria_la_gran_bodega`.`Ventas` (`idVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idProducto`
    FOREIGN KEY (`idProducto`)
    REFERENCES `vinateria_la_gran_bodega`.`Productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

SHOW FULL TABLES FROM vinateria_la_gran_bodega;

    

