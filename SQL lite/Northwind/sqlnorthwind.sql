SELECT LastName AS Apellido FROM Employees

---------------------------------AS Y ORDER BY---------------------------------
SELECT * FROM Products
SELECT Price FROM Products
SELECT Price*2 AS precioDoble FROM Products
SELECT Price, Price*2 AS precioDoble FROM Products
---------------------------------
--El valor por defecto de ORDER BY ES ASC
--#El valor con menos valor es el NULL luego, numeros,caracteres especiales y letras(Siendo el que tiene mas valor)
SELECT * FROM Products ORDER BY Price
SELECT * FROM Products ORDER BY Price ASC
SELECT * FROM Products ORDER BY Price DESC
SELECT * FROM Products ORDER BY Price ASC NULLS LAST --NOS MUESTRA LOS NULLS AL FINAL DE LA TABLA

---------------------------------DISTINCT---------------------------------
--ELimina datos duplicados
SELECT DISTINCT ProductName FROM  Products
