/*
Modificar la comision de los vendedores y ponerla al 12% cuando gana mas de 50000
*/

UPDATE vendedores SET comision = 12 WHERE sueldo >= 50000;


