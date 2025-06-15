-- ****************************************************
-- Seeder
-- ****************************************************

USE `vinateria_la_gran_bodega` ;

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

INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (201,'Jose','Perez',21);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (202,'Andrea','Aguilar',29);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (203,'Sergio','Rivas',27);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (204,'Olivia','Tristan',42);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (205,'Francisco','Hernandez',37);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (206,'Isabel','Soria',52);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (207,'Matias','Alarcon',31);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (208,'Carlos','Palacios',25);
INSERT INTO `vinateria_la_gran_bodega`.`Clientes`(`idCliente`,`nombre`,`apellido`,`edad`) VALUES (209,'Ximena','Perez',30);

INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21101, 'Juan', 'Perez', 22, ObtenerFormatoFecha('10/11/2023'), 'tarde','empleado');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21102, 'Maria', 'Segovia', 27, ObtenerFormatoFecha('21/12/2023'), 'tarde','supervisor');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21103, 'Kevin', 'Alcocer', 25, ObtenerFormatoFecha('14/02/2024'), 'manana','empleado');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21104, 'Luisa', 'Hernandez', 32, ObtenerFormatoFecha('11/10/2023'), 'tarde','empleado');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21105, 'Jesus', 'Herrera', 24, ObtenerFormatoFecha('08/01/2024'), 'manana','empleado');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21106, 'Santiago', 'Huerta', 37, ObtenerFormatoFecha('21/09/2023'), 'manana','gerente');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21107, 'Enrique', 'Soriano', 21, ObtenerFormatoFecha('11/11/2023'), 'manana','empleado');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21108, 'Ximena', 'Loera', 31, ObtenerFormatoFecha('21/10/2023'), 'manana','supervisor');
INSERT INTO `vinateria_la_gran_bodega`.`Empleados`(`idEmpleado`,`nombre`,`apellido`,`edad`,`fecha_contratacion`,`turno`,`posicion`) VALUES (21109, 'Amdres', 'Hernandez', 19, ObtenerFormatoFecha('29/12/2023'), 'tarde','empleado');

INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1001,ObtenerFormatoFecha('11/05/2025'),201,21103);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1002,ObtenerFormatoFecha('12/05/2025'),201,21104);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1003,ObtenerFormatoFecha('24/05/2025'),202,21103);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1004,ObtenerFormatoFecha('11/05/2025'),203,21101);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1005,ObtenerFormatoFecha('25/05/2025'),204,21101);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1006,ObtenerFormatoFecha('20/05/2025'),206,21108);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1007,ObtenerFormatoFecha('17/05/2025'),206,21105);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1008,ObtenerFormatoFecha('02/05/2025'),206,21102);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1009,ObtenerFormatoFecha('01/04/2025'),207,21105);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1010,ObtenerFormatoFecha('11/05/2025'),207,21105);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1011,ObtenerFormatoFecha('22/05/2025'),208,21107);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas`(`idVenta`, `fecha`,`idCliente`,`idEmpleado`) VALUES (1012,ObtenerFormatoFecha('25/05/2025'),208,21103);

INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8001,1001,11,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8002,1001,15,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8003,1002,12,3);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8004,1003,20,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8005,1005,26,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8006,1006,21,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8007,1006,19,1);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8008,1008,11,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8009,1009,13,3);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8010,1010,12,3);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8011,1010,25,2);
INSERT INTO `vinateria_la_gran_bodega`.`Ventas_Productos`(`idVentaProducto`,`idVenta`,`idProducto`,`cantidad`) VALUES (8012,1001,26,2);
