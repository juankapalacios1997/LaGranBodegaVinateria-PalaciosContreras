-- ****************************************************
-- Vistas
-- ****************************************************

-- -----------------------------------------------------
-- Vista "Resumen_Inventario"
-- -----------------------------------------------------
DROP VIEW IF EXISTS Inventario_Resumen;

CREATE VIEW Inventario_Resumen AS
SELECT
  P.idProducto AS id_producto,
  P.nombre AS nombre,
  C.nombre AS categoria,
  M.nombre AS marca,
  P.stock,
  P.precioUsd
FROM `vinateria_la_gran_bodega`.`productos` P
JOIN `vinateria_la_gran_bodega`.`categorias` C 
ON P.idCategoria = C.idCategoria
JOIN `vinateria_la_gran_bodega`.`marcas` AS M 
ON P.idMarca = M.idMarca
ORDER BY id_producto
;

-- -----------------------------------------------------
-- Vista "Ventas_Por_Producto"
-- -----------------------------------------------------
DROP VIEW IF EXISTS Ventas_Por_Producto;

CREATE VIEW Ventas_Por_Producto AS
SELECT 
	P.idProducto AS id_producto,
    P.nombre AS nombre,
    SUM(VP.cantidad) AS cantidad
FROM `vinateria_la_gran_bodega`.`Productos` AS P
JOIN `vinateria_la_gran_bodega`.`ventas_productos` AS VP
ON VP.idProducto = P.idProducto
GROUP BY P.idProducto
ORDER BY cantidad DESC
;