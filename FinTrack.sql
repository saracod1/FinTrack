#Creamos la base de datos
CREATE SCHEMA FinTrack;

#Crear tabla clientes 
CREATE TABLE clientes (
cliente_id INT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
email VARCHAR(100),
telefono VARCHAR(20)
);

#Crear tabla prestamos 
CREATE TABLE prestamos (
prestamo_id INT PRIMARY KEY AUTO_INCREMENT,
cliente_id INT,
monto DECIMAL(10,2),
fecha_solicitud DATE,
tasa_interes DECIMAL(5,2),
plazo INT,
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
); 

#Crear tabla tarjetas de credito
CREATE TABLE tarjetas_credito(
tarjeta_id INT PRIMARY KEY AUTO_INCREMENT,
cliente_id INT,
limite_credito DECIMAL(10,2),
fecha_emision DATE,
fecha_vencimiento DATE,
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

#Crear tabla transacciones
CREATE TABLE transacciones(
transaccion_id INT PRIMARY KEY AUTO_INCREMENT,
tarjeta_id INT,
fecha_transaccion DATE,
monto_transaccion DECIMAL(10,2),
FOREIGN KEY (tarjeta_id) REFERENCES tarjetas_credito(tarjeta_id)
);

#Insertar los siguientes datos en la tabla clientes 
INSERT INTO clientes (cliente_id, nombre, apellido, email, telefono) VALUES
(1, 'Sofía', 'García', 'sofiagar@gmail.com', '+34 685123456'),
(2, 'Juan', 'Pérez', 'juanperez@gmail.com', '+52 5578901234'),
(3, 'Carla', 'Martínez', 'carlamartinez@gmail.com', '+1 3055551212'),
(4, 'Pedro', 'González', 'pedrogonzalez@gmail.com', '+57 3105551912'),
(5, 'Ana', 'Torres', 'anatorres@gmail.com', '+33 612345678'),
(6, 'Mario', 'Gago','mariogago@yahoo.com', '+54 91123457689'),
(7, 'Lucía', 'Sánchez', 'luciasanchez@gmail.com',''),
(8, 'Alejandro', 'López', 'alejandrolpz@gmail.com', '+1 3055451212'),
(9, 'Elena', 'Gómez', 'elenagomez@gmail.com', '+52 5578901204'),
(10, 'Carlos', 'Hernández', 'carloshdz@gmail.com', '+34 685133456'),
(11, 'Laura', 'Díaz', 'lauradiaz@gmail.com', '+33 612345678'),
(12, 'Marta', 'Fernández', 'martafe@gmail.com', '+57 3105651002'),
(13, 'Javier', 'Álvarez', 'javieralvarez@gmail.com', '+1 3067551472'),
(14, 'María', 'Romero', 'mariaromero@gmail.com', '+54 91123456029'),
(15, 'Pablo', 'Jiménez', 'pablojimenez@gmail.com', '+49 17619045678'),
(16, 'Sara', 'Moreno', 'saramoreno@gmail.com', '+34 685123546'),
(17, 'Diego', 'Muñoz', 'diegomunoz@gmail.com', '+52 5578907234'),
(18, 'Alicia', 'Álvarez', 'aliciaalvarez@gmail.com', '+1 3097515212'),
(19, 'Fernando', 'Gutierrez','', '+57 3108742212'),
(20, 'Victoria', 'González', 'victoriagonzalez@gmail.com', '+33 612346078'),
(21, 'David', 'Sánchez', 'davidsanchez@gmail.com', '+54 91123456179'),
(22, 'Marina', 'Martínez', 'marinamartinez@gmail.com', '+49 17612345905'),
(23, 'Manuel', 'Torres', 'manueltorres@gmail.com', '+34 685134256'),
(24, 'Valeria', 'Cabrera', 'valeriacabrera@gmail.com', '+598 93216666'),
(25, 'Lucas', 'Fernández', 'lucasfernandez@hotmail.com',''),
(26, 'Giselle', 'González', 'gisellegonzalez@gmail.com',''),
(27, 'Hugo', 'Martínez', 'hugomartinez@yahoo.com', '+598 94444322'),
(28, 'Laura', 'Rodríguez','', '+598 99887766'),
(29, 'Juan', 'Sánchez', 'juansanchez@hotmail.com', '+598 99775588'),
(30, 'Luciana', 'Silva', 'lucianasilva@yahoo.com', '+598 99886699'),
(31, 'Marcelo', 'Torres', 'marcelotorres@gmail.com', '+598 91122334'),
(32, 'Adriana', 'Vázquez', 'adrianavazquez@hotmail.com', '+598 94123456'),
(33, 'Clara', 'Flores', 'claraflores@gmail.com', '+49 17612345678'),
(34, 'Cristina', 'Vega', 'cristinavega@gmail.com', '+34 611234567'),
(35, 'Arturo', 'Reyes', 'arturoreyes@gmail.com', '+57 3205551212'),
(36, 'Gabriela', 'Aguilar', 'gabrielaaguilar@gmail.com', '+52 5556781243'),
(37, 'Pablo', 'Santos', 'pablosantos@gmail.com', '+54 91134567890'),
(38, 'Gabriela', 'Ferrari', 'gabrielaferrari@hotmail.com', '+598 99998877'),
(39, 'Hernán', 'García', 'hernangarcia@yahoo.com', '+598 92223344'),
(40, 'Raquel', 'Ramírez', 'raquelramirez@yahoo.com', '+598 94445566'),
(41, 'Luisa', 'García', 'luisagarcia@gmail.com', '+57 3505761999'),
(42, 'Héctor', 'Ramírez', 'hectorramirez@gmail.com', '+52 3312345888'),
(43, 'Mateo', 'Castillo', 'mateocastillo@gmail.com', '+1 3055537612'),
(44, 'María', 'Dominguez','', '+33 698765432'),
(45, 'Javier', 'Fuentes', 'javierfuentes@gmail.com', '+54 91134567890'),
(46, 'Patricia', 'Gómez', 'patriciagomez@gmail.com', '+49 17612765478'),
(47, 'Santiago', 'Hernández', 'santiagohernandez@gmail.com', '+34 611234567'),
(48, 'Camila', 'Mendoza', 'camilamendoza@gmail.com', '+49 16012345678'),
(49, 'Gonzalo', 'Herrera', 'gonzaloherrera@gmail.com', '+1 3055661290'),
(50, 'Valentina', 'Rojas', 'valentinarojas@gmail.com', '+33 712345678');


#Unir nombre y apellido en un solo campo
SELECT CONCAT (nombre, ' ', apellido) AS nombre_completo 
FROM FinTrack.Clientes;

SELECT nombre, 
	   apellido
FROM FinTrack.Clientes
ORDER BY apellido, nombre; 

#¿Cuántos clientes tienen un préstamo o una tarjeta de crédito con FinTrack? 
SELECT COUNT(DISTINCT t.cliente_id) AS total_clientes_con_tarjetas,
COUNT(DISTINCT p.cliente_id) AS total_clientes_con_prestamos
FROM tarjetas_credito t
LEFT JOIN prestamos p 
	ON t.cliente_id = p.cliente_id

#Seleccionar a los clientes que empiezan con la letra A
SELECT * 
FROM FinTrack.Clientes
WHERE apellido LIKE 'A%';

#Seleccionar los clientes y su email, mostrando un mensaje diferente para aquellos que no tienen email
SELECT nombre, apellido,
CASE
	WHEN email = '' THEN 'no disponible'
    ELSE email
END AS 'correo electronico'
FROM FinTrack.Clientes;

#Mostrar el teléfono y el país al que pertenece cada número ordenados por país
SELECT
CASE
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+54' THEN 'Argentina'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+1' THEN 'Estados Unidos'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+598' THEN 'Uruguay'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+49' THEN 'Alemania'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+34' THEN 'España'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+57' THEN 'Colombia'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+52' THEN 'México'
WHEN SUBSTRING_INDEX(teléfono, ' ', 1) = '+33' THEN 'Francia'
ELSE 'País_desconocido'
END AS pais,
teléfono
FROM FinTrack.Clientes
ORDER BY pais;

SELECT MAX(monto) as monto_maximo
FROM FinTrack.prestamos;

#Obtener el monto promedio de los préstamos para cada cliente
SELECT cliente_id, 
	AVG(monto) AS monto_promedio
FROM FinTrack.prestamos
GROUP BY cliente_id
ORDER BY monto_promedio DESC;

#Obtener el monto total prestado por cada cliente, ordenado de mayor a menor
SELECT cliente_id,
	SUM(monto) AS monto_total
FROM FinTrack.prestamos
GROUP BY cliente_id
ORDER BY monto_total DESC;

SELECT c.nombre, c.apellido,
SUM(p.monto) AS monto_total
FROM FinTrack.Clientes c
INNER JOIN FinTrack.prestamos p ON c.cliente_id = p.cliente_id
GROUP BY nombre, apellido
ORDER BY monto_total DESC;

#Obtener el número de préstamos por cada plazo, donde el plazo sea mayor o igual a 12 meses
SELECT plazo,
COUNT(*) AS numero_prestamos
FROM FinTrack.prestamos
WHERE plazo >= 12
GROUP BY plazo;

#Obtener el número de préstamos concedidos en cada mes
SELECT MONTH(fecha_solicitud) AS MES, 
	COUNT(*) AS numero_prestamos
FROM FinTrack.prestamos
GROUP BY MES
ORDER BY numero_prestamos DESC;

#Mostrar el límite de crédito redondeado al número entero más cercano para cada tarjeta de crédito
SELECT
tarjeta_id, 
ROUND(limite_credito) AS limite_redondeado
FROM FinTrack.tarjetas_credito;

#Mostrar la diferencia en días entre la fecha de emisión y la fecha de vencimiento de cada tarjeta de crédito: (tip: usar DATEDIFF)
SELECT 
	tarjeta_id,
    DATEDIFF(fecha_vencimiento, fecha_emision) 	AS DIAS
FROM FinTrack.tarjetas_credito;

#Mostrar todas las tarjetas de crédito que vencen en menos de 150 días
SELECT fecha_vencimiento, NOW() AS fecha_hoy, DATEDIFF(fecha_vencimiento, NOW()) AS dif_dias
FROM FinTrack.tarjetas_credito
WHERE DATEDIFF(fecha_vencimiento, NOW()) <= 150 AND DATEDIFF(fecha_vencimiento, NOW()) >0;

#Mostrar todas las tarjetas de crédito que vencen en un día determinado de la semana (Monday)
SELECT * 
FROM FinTrack.tarjetas_credito
WHERE dayname(fecha_vencimiento) = 'Monday';

#Mostrar el nombre del día de la semana en que se emitió cada tarjeta de crédito, el nombre del mes en que vencerá(concatenado al año: “abril de 2023”) y el límite de crédito redondeado hacia arriba 
SELECT 
dayname(fecha_emision) AS dia_emision,
CONCAT(monthname(fecha_vencimiento), ' de ', YEAR(fecha_vencimiento)) AS mes_vencimiento,
CEILING(limite_credito) AS limite_redondeado 
FROM FinTrack.tarjetas_credito;

#Seleccionar todas las transacciones cuyo monto es superior a la media de todos los montos de las transacciones
SELECT * 
FROM FinTrack.transacciones
WHERE monto_transaccion > (SELECT AVG(monto_transaccion) FROM FinTrack.transacciones);

#Selecciona los nombres y apellidos de los clientes que han realizado alguna transacción
SELECT nombre, apellido
FROM Clientes c 
INNER JOIN tarjetas_credito t 
	ON c.cliente_id = t.cliente_id
INNER JOIN transacciones ts 
	ON t.tarjeta_id = ts.tarjeta_id;

#Selecciona los nombres de los clientes que han realizado alguna transacción en un día de la semana cuyo nombre empieza por 'M'
SELECT c.nombre
FROM Clientes c 
INNER JOIN tarjetas_credito t 
	ON c.cliente_id = t.cliente_id
INNER JOIN transacciones ts
	ON t.tarjeta_id = ts.tarjeta_id
WHERE dayname(ts.fecha_transaccion) LIKE 'M%';

#Selecciona los nombres de los clientes que tienen alguna tarjeta de crédito cuyo límite sea inferior a la media de todos los límites de las tarjetas de crédito:
SELECT c.nombre 
FROM Clientes c 
JOIN tarjetas_credito t
	ON c.cliente_id = t.cliente_id
WHERE t.limite_credito < (SELECT AVG(limite_credito) FROM tarjetas_credito); 

#Obtener la suma total de préstamos y el número de préstamos otorgados para cada cliente que tenga más de 3 préstamos, ordenados de forma descendente por la suma total de préstamos:
SELECT 
	c.nombre,
	SUM(p.monto) AS total_prestamos,
    COUNT(p.prestamo_id) AS numero_prestamos
FROM clientes c
INNER JOIN prestamos p 
	ON c.cliente_id = p.cliente_id 
GROUP BY c.cliente_id 
HAVING numero_prestamos > 3
ORDER BY total_prestamos DESC;

#Obtener la suma total de las transacciones realizadas en el último mes para cada tarjeta de crédito activa

SELECT 
t.tarjeta_id,
SUM(s.monto_transaccion) AS total_transacciones
FROM tarjetas_credito t 
INNER JOIN transacciones s
	ON t.tarjeta_id = s.tarjeta_id
WHERE 
	t.fecha_vencimiento > CURDATE()
    AND t.fecha_emision <= CURDATE()
	AND DATEDIFF(CURDATE(), s.fecha_transaccion) <= 30
GROUP BY t.tarjeta_id
HAVING total_transacciones > 0;

#Obtener una lista de todos los clientes y la información de las tarjetas de crédito asociadas, incluyendo aquellos clientes que no tienen tarjeta de crédito

SELECT c.nombre, t.fecha_emision, t.fecha_vencimiento
FROM Clientes c 
LEFT JOIN  tarjetas_credito t
	ON c.cliente_id = t.cliente_id;
    
#Obtener una lista de todos los clientes y sus respectivos préstamos, incluso aquellos clientes que no tienen ningún préstamo otorgado
SELECT c.nombre, p.monto
FROM Clientes c 
LEFT JOIN prestamos p
	ON c.cliente_id = p.cliente_id;