-- ****************************************************
-- Triggers
-- ****************************************************

-- -----------------------------------------------------
-- Trigger "after_venta_producto_insert"
-- -----------------------------------------------------

DELIMITER $$

CREATE TRIGGER After_Venta_Producto_Insert
AFTER INSERT ON `vinateria_la_gran_bodega`.`Ventas_Productos`
FOR EACH ROW
BEGIN
  UPDATE `vinateria_la_gran_bodega`.`Productos`
  SET stock = stock - NEW.cantidad
  WHERE idProducto = NEW.idProducto;
END$$

DELIMITER ;

-- Example queries

-- INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8016,1001,11,3);
-- INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8014,1001,12,5);
-- INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8015,1001,13,10);

-- SELECT * FROM `vinateria_la_gran_bodega`.`Productos`;

-- -----------------------------------------------------
-- Trigger "after_empleados_delete"
-- -----------------------------------------------------

DROP TRIGGER IF EXISTS after_empleados_delete;

DELIMITER $$

-- Example queries

CREATE TRIGGER After_Empleados_Delete
AFTER DELETE ON `vinateria_la_gran_bodega`.`Empleados`
FOR EACH ROW
BEGIN
  INSERT INTO `vinateria_la_gran_bodega`.`auditoria_empleados` (idEmpleado, nombre, apellido, fecha_contratacion, accion)
  VALUES (OLD.idEmpleado, OLD.nombre, OLD.apellido, OLD.fecha_contratacion, 'DELETE');
END$$

DELIMITER ;

-- DELETE FROM `vinateria_la_gran_bodega`.`Empleados` 
-- WHERE idEmpleado = 21101;

-- SELECT * FROM `vinateria_la_gran_bodega`.`empleados`;

-- SELECT * FROM `vinateria_la_gran_bodega`.`auditoria_empleados`;

