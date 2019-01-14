-- -----------------------------------------------------
-- Data for table `GrandesAlmacenes`.`Cajeros`
-- -----------------------------------------------------
START TRANSACTION;
USE `GrandesAlmacenes`;
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (1, 'Cajero A');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (2, 'Cajero B');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (3, 'Cajero C');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (4, 'Cajero D');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (5, 'Cajero E');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (6, 'Cajero F');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (7, 'Cajero G');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (8, 'Cajero H');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (9, 'Cajero I');
INSERT INTO `GrandesAlmacenes`.`Cajeros` (`Cajero`, `NomApels`) VALUES (10, 'Cajero J');

COMMIT;

-- -----------------------------------------------------
-- Data for table `GrandesAlmacenes`.`Productos`
-- -----------------------------------------------------
START TRANSACTION;
USE `GrandesAlmacenes`;
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (1, 'Producto 1', 10);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (2, 'Producto 2', 20);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (3, 'Producto 3', 30);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (4, 'Producto 4', 40);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (5, 'Producto 5', 50);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (6, 'Producto 6', 60);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (7, 'Producto 7', 70);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (8, 'Producto 8', 80);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (9, 'Producto 9', 90);
INSERT INTO `GrandesAlmacenes`.`Productos` (`Producto`, `Nombre`, `Precio`) VALUES (10, 'Producto 10', 100);

COMMIT;


-- -----------------------------------------------------
-- Data for table `GrandesAlmacenes`.`Maquinas_Registradoras`
-- -----------------------------------------------------
START TRANSACTION;
USE `GrandesAlmacenes`;
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (1, 1);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (2, 1);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (3, 1);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (4, 1);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (5, 1);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (6, 2);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (7, 2);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (8, 2);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (9, 2);
INSERT INTO `GrandesAlmacenes`.`Maquinas_Registradoras` (`Maquina`, `Piso`) VALUES (10, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `GrandesAlmacenes`.`Venta`
-- -----------------------------------------------------
START TRANSACTION;
USE `GrandesAlmacenes`;
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (1, 1, 1);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (1, 1, 3);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (1, 1, 6);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (2, 2, 1);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (2, 2, 5);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (3, 3, 10);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (4, 4, 5);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (5, 5, 6);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (6, 6, 2);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (6, 6, 3);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (7, 7, 4);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (7, 7, 8);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (8, 8, 7);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (8, 8, 9);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (9, 9, 9);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (9, 9, 1);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (9, 9, 4);
INSERT INTO `GrandesAlmacenes`.`Venta` (`Cajero`, `Maquina`, `Producto`) VALUES (10, 10, 3);

COMMIT;
