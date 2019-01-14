--2
SELECT P.Nombre, COUNT(V.Producto) AS 'Cantidad'
FROM Productos P, Venta V
WHERE P.Producto=V.Producto
GROUP BY P.Nombre
ORDER BY COUNT(V.Producto) DESC;

--3
SELECT C.NomApels, P.Nombre, P.Precio, Mr.Piso
FROM Venta V, Cajeros C, Productos P, Maquinas_Registradoras Mr
WHERE V.Cajero = C.Cajero
AND V.Producto = P.Producto
AND V.Maquina = Mr.Maquina;

--4
SELECT Mr.Piso, COUNT(V.Maquina) AS 'Ventas totales'
FROM Maquinas_Registradoras Mr, Venta V
WHERE V.Maquina = Mr.Maquina
GROUP BY Mr.Piso
ORDER BY Mr.Piso DESC;

--5
SELECT C.Cajero AS 'Codigo', C.NomApels AS 'Nombre', SUM(P.Precio) AS 'Importe'
FROM Cajeros C, Productos P, Venta V
WHERE C.Cajero = V.Cajero
AND P.Producto = V.Producto
GROUP BY C.Cajero;

--6
SELECT C.Cajero AS 'Codigo', C.NomApels AS 'Nombre'
FROM Cajeros C
WHERE C.Cajero IN
(
  SELECT Cajero
  FROM Venta
  WHERE Maquina IN
  (
    SELECT Maquina
    FROM Maquinas_Registradoras
    WHERE Piso IN
    (
      SELECT Piso
      FROM Venta V, Productos P, Maquinas_Registradoras Mr
      WHERE V.Producto = P.Producto
      AND V.Maquina = Mr.Maquina
      GROUP BY Piso
      HAVING SUM(Precio) < 5000
    )
  )
);
