/*
Sacar a todos los vendedores cuya fecha de alta sea posterior al 1 de julio de 2018
*/

SELECT * FROM vendedores WHERE fecha_alta >= '2018-07-01';


UPDATE vendedores SET fecha_alta = '2016-08-30' WHERE nombre = 'David';
