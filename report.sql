-- =====================================
-- REPORTE SQL - CHALLENGER SISTEMA VENTAS
-- =====================================

-- 1. Mostrar todos los clientes registrados
SELECT * FROM clientes;

-- 2. Mostrar todos los productos disponibles
SELECT * FROM productos;

-- 3. Mostrar todas las ventas realizadas
SELECT * FROM ventas;

-- 4. Mostrar solo nombre y email de clientes
SELECT nombre, email FROM clientes;

-- 5. Mostrar solo nombre y precio de productos
SELECT nombre, precio FROM productos;

-- 6. Productos con precio mayor a 50000


-- 7. Ventas realizadas el 2026-04-02


-- 8. Productos ordenados de mayor a menor precio


-- 9. Clientes ordenados por nombre


-- 10. Detalles de venta con cantidad >= 2


-- 11. Total de clientes


-- 12. Total de productos


-- 13. Total de ventas


-- 14. Precio promedio de productos


-- 15. Suma total de precios de productos:

SELECT SUM(precio) AS suma_total_precios
FROM productos;


-- 16. Mostrar venta + nombre del cliente + fecha

SELECT v.id_venta, 
    c.nombre AS nombre_cliente, 
    v.fecha
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente


-- 17. Mostrar detalle de ventas con id_venta + nombre producto + cantidad

SELECT dv.id_venta, 
    p.nombre AS nombre_producto, 
    dv.cantidad
FROM detalle_venta dv
JOIN productos p ON dv.id_producto = p.id_producto


-- 18. Mostrar nombre del cliente + id de venta + fecha

SELECT c.nombre AS nombre_cliente,
	v.id_venta,
	v.fecha, 
FROM ventas v
JOIN clientes c  ON v.id_cliente = c.id_cliente 


-- 19. Mostrar nombre del producto + cantidad vendida + id de venta

SELECT p.nombre AS nombre_producto,
	dv.cantidad,
	dv.id_venta
FROM detalle_venta dv 
JOIN productos p  ON dv.id_producto = p.id_producto 


-- 20. Mostrar cuántas ventas ha realizado cada cliente

SELECT c.nombre AS nombre_cliente,
	COUNT(v.id_venta)  AS cantidad_ventas
FROM clientes c 
LEFT JOIN ventas v ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente,
	c.nombre


-- 21. Mostrar solo los clientes con más de una venta


-- 22. Mostrar cuántas veces aparece cada producto en detalle_venta


-- 23. Mostrar solo los productos que aparecen más de una vez


-- 24. Mostrar las ventas que tienen más de un producto asociado


-- 25. Mostrar clientes cuya suma total de unidades compradas sea mayor a 2


-- 26. Consulta trampa que no devuelva resultados
-- Explicar por qué el resultado vacío es correcto
