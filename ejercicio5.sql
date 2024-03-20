/*
Enlistar todos los vendedores con su nombre y el numero de dias en el concesionario
*/

SELECT nombre, DATEDIFF(CURDATE(), fecha_alta) AS 'Dias en la empresa' FROM vendedores;