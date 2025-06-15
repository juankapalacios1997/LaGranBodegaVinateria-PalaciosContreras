-- ****************************************************
-- Usuarios
-- ****************************************************

USE mysql;

DROP USER IF EXISTS 'empleado'@'localhost';
DROP USER IF EXISTS 'supervisor'@'localhost';
DROP USER IF EXISTS 'gerente'@'localhost';
DROP USER IF EXISTS 'dueno'@'localhost';

-- -----------------------------------------------------
-- Creacion de usuario 'Empleado'
-- -----------------------------------------------------

CREATE USER IF NOT EXISTS 'empleado'@'localhost'
IDENTIFIED BY 'password_empleado';

GRANT SELECT, INSERT ON `vinateria_la_gran_bodega`.`Categorias`
TO 'empleado'@'localhost';
GRANT SELECT, INSERT ON `vinateria_la_gran_bodega`.`Marcas`
TO 'empleado'@'localhost';
GRANT SELECT, INSERT ON `vinateria_la_gran_bodega`.`Productos`
TO 'empleado'@'localhost';

-- -----------------------------------------------------
-- Creacion de usuario 'Supervisor'
-- -----------------------------------------------------

CREATE USER IF NOT EXISTS 'supervisor'@'localhost'
IDENTIFIED BY 'password_supervisor';

GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Categorias`
TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Marcas`
TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Productos`
TO 'supervisor'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`Empleados`
TO 'supervisor'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`Ventas`
TO 'supervisor'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`ventas_productos`
TO 'supervisor'@'localhost';

-- -----------------------------------------------------
-- Creacion de usuario 'Gerente'
-- -----------------------------------------------------

CREATE USER IF NOT EXISTS 'gerente'@'localhost'
IDENTIFIED BY 'password_gerente';

GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Categorias`
TO 'gerente'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Marcas`
TO 'gerente'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Productos`
TO 'gerente'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Empleados`
TO 'gerente'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`Ventas`
TO 'gerente'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`ventas_productos`
TO 'gerente'@'localhost';

-- -----------------------------------------------------
-- Creacion de usuario 'Dueno'
-- -----------------------------------------------------

CREATE USER IF NOT EXISTS 'dueno'@'localhost'
IDENTIFIED BY 'password_dueno';

GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Categorias`
TO 'dueno'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Marcas`
TO 'dueno'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Productos`
TO 'dueno'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `vinateria_la_gran_bodega`.`Empleados`
TO 'dueno'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`Ventas`
TO 'dueno'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`ventas_productos`
TO 'dueno'@'localhost';
GRANT SELECT ON `vinateria_la_gran_bodega`.`clientes`
TO 'dueno'@'localhost';


SELECT USER, HOST FROM mysql.USER;