/*
Mostrar los apellidos de los vendedores, su fecha y su numero de grupo ordenado por fecha descendente
*/


SELECT apellidos, fecha_alta, grupo_id FROM vendedores ORDER BY fecha_alta DESC LIMIT 4;