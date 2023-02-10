SELECT nombre FROM producto
SELECT nombre, precio FROM producto
SELECT * FROM producto
SELECT nombre, precio AS EU, precio *0.9 AS USD FROM producto
SELECT nombre, precio AS EU, precio *0.9 AS USD FROM producto
SELECT upper(nombre) AS nombre, precio FROM producto
SELECT LOWER(nombre) AS nombre, precio FROM producto
SELECT nombre,  UPPER(substring(nombre, 1,2)) FROM fabricante
SELECT nombre, FLOOR(precio) FROM producto 
SELECT nombre, TRUNCATE(precio, 0) FROM producto 
SELECT codigo_fabricante FROM producto
SELECT DISTINCT codigo_fabricante FROM producto
SELECT nombre FROM fabricante ORDER BY nombre ASC
SELECT nombre FROM fabricante ORDER BY nombre DESC
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC
SELECT * FROM fabricante LIMIT 5
SELECT * from fabricante LIMIT 3, 2
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1
SELECT nombre FROM producto WHERE codigo_fabricante = 2
SELECT nombre FROM producto WHERE codigo_fabricante = 2
SELECT nombre, precio,  nombre_fabricante FROM producto ORDER BY nombre_fabricante 
SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre
SELECT p.codigo, p.nombre, p.codigo_fabricante, f.nombre FROM producto p JOIN fabricante f 
SELECT p.nombre AS producto, p.precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio ASC LIMIT 1
SELECT p.nombre AS producto, p.precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio DESC LIMIT 1
SELECT * FROM producto p JOIN fabricante f ON f.codigo = p.codigo_fabricante AND f.nombre = 'Lenovo'
SELECT * FROM producto p JOIN fabricante f ON f.codigo = p.codigo_fabricante AND f.nombre = 'Crucial' AND precio > 200
SELECT * FROM producto p JOIN fabricante f ON f.codigo = p.codigo_fabricante AND f.nombre = 'Asus' OR f.nombre = 'Seagate' OR f.nombre = 'Hewlett-Packard'
SELECT * FROM producto WHERE codigo_fabricante IN (1,3,5) 
SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f WHERE (f.codigo = p.codigo_fabricante) AND f.nombre LIKE '%e' 
SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f WHERE (f.codigo = p.codigo_fabricante) AND f.nombre LIKE '%w%' 
SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f WHERE (f.codigo = p.codigo_fabricante) AND p.precio >=180 ORDER BY precio DESC , p.nombre ASC
SELECT f.nombre, f.codigo FROM fabricante f JOIN producto p WHERE (f.codigo = p.codigo_fabricante) 
SELECT * FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante OR  p.codigo_fabricante IS NULL
SELECT fabricante.nombre  FROM fabricante WHERE NOT EXISTS (SELECT fabricante.codigo FROM producto WHERE fabricante.codigo = producto.codigo_fabricante) 
SELECT * FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo'
SELECT * FROM producto WHERE producto.precio > (SELECT MAX(producto.precio) FROM producto WHERE producto.codigo_fabricante = 2)
SELECT * FROM producto p JOIN fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo' ORDER BY p.precio DESC LIMIT 1
SELECT * FROM producto p JOIN fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Hewlett-Packard' ORDER BY p.precio ASC LIMIT 1
SELECT * FROM producto WHERE producto.precio >= (SELECT MAX(producto.precio) FROM producto WHERE producto.codigo_fabricante = 1)
SELECT * FROM producto WHERE producto.precio > (SELECT AVG(producto.precio) FROM producto WHERE producto.codigo_fabricante = 1) 