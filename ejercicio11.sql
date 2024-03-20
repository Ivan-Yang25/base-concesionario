/*
Visualizar los cargos y el numeros de los vendedores en cada cargo
*/

SELECT cargo, COUNT(id) AS 'Empleados en el cargo' FROM vendedores GROUP BY cargo;