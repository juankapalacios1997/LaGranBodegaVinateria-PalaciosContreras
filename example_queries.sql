SELECT V.idVenta AS ID, P.nombre as Producto, V.cantidad as Cantidad
	FROM `vinateria_la_gran_bodega`.`Ventas` AS V INNER JOIN `vinateria_la_gran_bodega`.`Productos` AS P
	ON V.idProducto = P.idProducto
;

SELECT V.idVenta AS ID, C.nombre AS Nombre, C.apellido AS Apellido
	FROM `vinateria_la_gran_bodega`.`Ventas` AS V INNER JOIN `vinateria_la_gran_bodega`.`Cliente` AS C
	ON V.idCliente = C.idCliente
;

SELECT X.idVenta as ID, X.Fecha, P.nombre AS Producto, M.nombre as Marca, X.Cantidad, X.Nombre, X.Apellido
FROM 
(
	SELECT V.idVenta AS idVenta, V.idProducto AS idProducto, V.cantidad AS Cantidad, V.fecha AS Fecha,
           C.nombre AS Nombre, C.apellido AS Apellido
	FROM `vinateria_la_gran_bodega`.`Ventas` AS V 
	INNER JOIN `vinateria_la_gran_bodega`.`Cliente` AS C
	    ON V.idCliente = C.idCliente
) AS X 
INNER JOIN `vinateria_la_gran_bodega`.`Productos` AS P
	ON X.idProducto = P.idProducto
INNER JOIN `vinateria_la_gran_bodega`.`Marcas` AS M
	ON P.idMarca = M.idMarca;

CREATE OR REPLACE VIEW vinateria_la_gran_bodega.VW_Detalle_Ventas AS 
SELECT X.idVenta as ID, X.Fecha, P.nombre AS Producto, M.nombre as Marca, X.Cantidad, X.Nombre, X.Apellido
FROM 
(
	SELECT V.idVenta AS idVenta, V.idProducto AS idProducto, V.cantidad AS Cantidad, V.fecha AS Fecha,
           C.nombre AS Nombre, C.apellido AS Apellido
	FROM `vinateria_la_gran_bodega`.`Ventas` AS V 
	INNER JOIN `vinateria_la_gran_bodega`.`Cliente` AS C
	    ON V.idCliente = C.idCliente
) AS X 
INNER JOIN `vinateria_la_gran_bodega`.`Productos` AS P
	ON X.idProducto = P.idProducto
INNER JOIN `vinateria_la_gran_bodega`.`Marcas` AS M
	ON P.idMarca = M.idMarca;