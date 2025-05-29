-- ****************************************************
-- Procedures
-- ****************************************************

-- -----------------------------------------------------
-- Procedure "ObtenerTicketDeVenta"
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS ObtenerTicketDeVenta;

DELIMITER $$
CREATE PROCEDURE ObtenerTicketDeVenta(IN venta_id INT)
BEGIN
    SELECT 
        V.idVenta AS id_venta,
        ObtenerNombreCompleto(C.nombre, C.apellido) AS nombre_completo,
        V.fecha AS fecha,
        P.nombre AS nombre_producto,
        VP.cantidad AS cantidad_producto,
        P.precioUsd * VP.cantidad AS precio
    FROM `vinateria_la_gran_bodega`.`Ventas` AS V
    INNER JOIN `vinateria_la_gran_bodega`.`Clientes` AS C
        ON V.idCliente = C.idCliente
    INNER JOIN `vinateria_la_gran_bodega`.`Ventas_Productos` AS VP
        ON V.idVenta = VP.idVenta
    INNER JOIN `vinateria_la_gran_bodega`.`Productos` AS P
        ON VP.idProducto = P.idProducto
    WHERE V.idVenta = venta_id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- Procedure "ObtenerVentasPorCliente"
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS ObtenerVentasPorCliente;

DELIMITER $$
CREATE PROCEDURE ObtenerVentasPorCliente(IN cliente_id INT)
BEGIN
    SELECT 
        C.idCliente AS id_cliente,
        ObtenerNombreCompleto(C.nombre, C.apellido) AS nombre_completo,
        V.idVenta as id_venta
    FROM `vinateria_la_gran_bodega`.`Clientes` AS C
    INNER JOIN `vinateria_la_gran_bodega`.`Ventas` AS V
        ON C.idCliente = V.idCliente
    WHERE V.idCliente = cliente_id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- Procedure "ObtenerVentasPorFecha"
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS ObtenerVentasPorFecha;

DELIMITER $$
CREATE PROCEDURE ObtenerVentasPorFecha(IN fecha_id DATE)
BEGIN
    SELECT 
        V.idVenta AS id_venta,
        V.fecha AS fecha
    FROM `vinateria_la_gran_bodega`.`Ventas` AS V
    WHERE V.fecha = fecha_id;
END$$

DELIMITER ;

