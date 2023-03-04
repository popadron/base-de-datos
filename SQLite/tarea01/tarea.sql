/*
Se plantea la creación de una BBDD para una empresa de tecnología. Las necesidades se describen en la siguiente guía de tablas de la BBDD.

tabla fabricante:

id_fab:entero;
nombre:texto;
pais:texto;
clave primaria(id_fab);

tabla programa:

codigo:entero,
nombre:texto;
version:texto;
clave primaria(codigo);

tabla comercio:

cif:entero,
nombre:texto,
ciudad:texto);
clave primaria(cif);

tabla cliente:

dni:entero,
nombre:texto,
edad:entero;
clave primaria(dni);

tabla desarrolla:

id_fab entero:
codigo entero:
clave primaria(id_fab,codigo);

tabla distribuye:

cif entero:
codigo entero:
cantidad entero,
clave primaria(cif,codigo);

tabla registra:

cif entero:
dni entero:
codigo entero:
medio texto:
clave primaria(cif,dni);
*/

-- Realiza la creación de la BBDD, creando las sentencias sql necesarias.

CREATE TABLE fabricante(
	id_fab INTEGER PRIMARY KEY,
	nombre TEXT,
	pais TEXT
);

CREATE TABLE programa(
	codigo INTEGER PRIMARY KEY,
	nombre TEXT,
	version TEXT
);

CREATE TABLE comercio(
	cif INTEGER PRIMARY KEY,
	nombre TEXT,
	ciudad TEXT
);

CREATE TABLE cliente(
	dni INTEGER PRIMARY KEY,
	nombre TEXT,
	edad INTEGER
);

CREATE TABLE desarrolla (
	id_fab INTEGER,
	codigo INTEGER,
	PRIMARY KEY(id_fab, codigo)
);

CREATE TABLE distribuye (
	cif INTEGER,
	codigo INTEGER,
	cantidad INTEGER,
	PRIMARY KEY(cif, codigo)
);

CREATE TABLE registra(
	cif INTEGER,
	dni INTEGER,
	codigo INTEGER,
	medio TEXT,
	PRIMARY KEY(cif, dni)
);

-- Realiza la inserción de los siguientes valores:

insert into fabricante values(1,'Oracle','Estados Unidos');
insert into fabricante values(2,'Microsoft','Estados Unidos');
insert into fabricante values(3,'IBM','Estados Unidos');
insert into fabricante values(4,'Dinamic','España');
insert into fabricante values(5,'Borland','Estados Unidos');
insert into fabricante values(6,'Symantec','Estados Unidos');

insert into programa values(1,'Application Server','9i');
insert into programa values(2,'Database','8i');
insert into programa values(3,'Database','9i');
insert into programa values(4,'Database','10g');
insert into programa values(5,'Developer','6i');
insert into programa values(6,'Access','97');
insert into programa values(7,'Access','2000');
insert into programa values(8,'Access','XP');
insert into programa values(9,'Windows','98');
insert into programa values(10,'Windows','XP Professional');
insert into programa values(11,'Windows','XP Home Edition');
insert into programa values(12,'Windows','2003 Server');
insert into programa values(13,'Norton Internet Security','2004');
insert into programa values(14,'Freddy Hardest',NULL);
insert into programa values(15,'Paradox','2');
insert into programa values(16,'C++ Builder','5.5');
insert into programa values(17,'DB/2','2.0');
insert into programa values(18,'OS/2','1.0');
insert into programa values(19,'JBuilder','X');
insert into programa values(20,'La prisión','1.0');

insert into comercio values(1,'El Corte Inglés','Sevilla');
insert into comercio values(2,'El Corte Inglés','Madrid');
insert into comercio values(3,'Jump','Valencia');
insert into comercio values(4,'Centro Mail','Sevilla');
insert into comercio values(5,'FNAC','Barcelona');

insert into cliente values(1,'Pepe Pérez',45);
insert into cliente values(2,'Juan González',45);
insert into cliente values(3,'María Gómez',33);
insert into cliente values(4,'Javier Casado',18);
insert into cliente values(5,'Nuria Sánchez',29);
insert into cliente values(6,'Antonio Navarro',58);

insert into desarrolla values(1,1);
insert into desarrolla values(1,2);
insert into desarrolla values(1,3);
insert into desarrolla values(1,4);
insert into desarrolla values(1,5);
insert into desarrolla values(2,6);
insert into desarrolla values(2,7);
insert into desarrolla values(2,8);
insert into desarrolla values(2,9);
insert into desarrolla values(2,10);
insert into desarrolla values(2,11);
insert into desarrolla values(2,12);
insert into desarrolla values(6,13);
insert into desarrolla values(4,14);
insert into desarrolla values(5,15);
insert into desarrolla values(5,16);
insert into desarrolla values(3,17);
insert into desarrolla values(3,18);
insert into desarrolla values(5,19);
insert into desarrolla values(4,20);

insert into distribuye values(1,1,10);
insert into distribuye values(1,2,11);
insert into distribuye values(1,6,5);
insert into distribuye values(1,7,3);
insert into distribuye values(1,10,5);
insert into distribuye values(1,13,7);
insert into distribuye values(2,1,6);
insert into distribuye values(2,2,6);
insert into distribuye values(2,6,4);
insert into distribuye values(2,7,7);
insert into distribuye values(3,10,8);
insert into distribuye values(3,13,5);
insert into distribuye values(4,14,3);
insert into distribuye values(4,20,6);
insert into distribuye values(5,15,8);
insert into distribuye values(5,16,2);
insert into distribuye values(5,17,3);
insert into distribuye values(5,19,6);
insert into distribuye values(5,8,8);

insert into registra values(1,1,1,'Internet');
insert into registra values(1,3,4,'Tarjeta postal');
insert into registra values(4,2,10,'Teléfono');
insert into registra values(4,1,10,'Tarjeta postal');
insert into registra values(5,2,12,'Internet');
insert into registra values(2,4,15,'Internet');

-- Realiza las siguientes consultas:
-- Averigua el DNI de todos los clientes.
SELECT dni FROM cliente;

-- Consulta todos los datos de todos los programas.
SELECT * FROM programa;

-- Obtén un listado con los nombres de todos los programas.
SELECT nombre FROM programa;

-- Genera una lista con todos los comercios.
SELECT * FROM comercio;

-- Genera una lista de las ciudades con establecimientos donde se venden programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
SELECT DISTINCT ciudad FROM comercio;

-- Obtén una lista con los nombres de programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
SELECT DISTINCT nombre FROM programa;

-- Obtén el DNI más 4 de todos los clientes.
SELECT dni+4 FROM cliente;

-- Haz un listado con los códigos de los programas multiplicados por 7.
SELECT codigo*7 FROM programa;

-- ¿Cuáles son los programas cuyo código es inferior o igual a 10?
SELECT codigo FROM programa
	WHERE codigo<=10;

-- ¿Cuál es el programa cuyo código es 11?
SELECT nombre, codigo FROM programa
	WHERE codigo=11;

-- ¿Qué fabricantes son de Estados Unidos?
SELECT nombre, pais FROM fabricante
	WHERE pais='Estados Unidos';

-- ¿Cuáles son los fabricantes no españoles? Utilizar el operador IN.
SELECT nombre, pais FROM fabricante
	WHERE pais not in ('España');

-- Obtén un listado con los códigos de las distintas versiones de Windows.
SELECT nombre, codigo, version FROM programa
	WHERE nombre in ('Windows');

-- ¿En qué ciudades comercializa programas El Corte Inglés?
SELECT nombre, ciudad FROM comercio
	WHERE nombre in ('El Corte Inglés');

-- ¿Qué otros comercios hay, además de El Corte Inglés? Utilizar el operador IN.
SELECT nombre, ciudad FROM comercio
	WHERE nombre not in ('El Corte Inglés');

-- Genera una lista con los códigos de las distintas versiones de Windows y Access. Utilizar el operador IN.
SELECT codigo, nombre, version FROM programa
	WHERE nombre in ('Windows', 'Access');

-- Obtén un listado que incluya los nombres de los clientes de edades comprendidas entre 10 y 25 y de los mayores de 50 años. Da una solución con BETWEEN y otra sin BETWEEN.
SELECT nombre, edad FROM cliente
	WHERE edad BETWEEN 10 and 25
		or edad>50;

SELECT nombre, edad FROM cliente
	WHERE edad>=10 and edad<=25
		or edad>50;

-- Saca un listado con los comercios de Sevilla y Madrid. No se admiten valores duplicados.
SELECT DISTINCT nombre, ciudad FROM comercio
	WHERE ciudad in ('Sevilla', 'Madrid');

-- ¿Qué clientes terminan su nombre en la letra “o”?
SELECT DISTINCT nombre FROM cliente
	WHERE nombre like '%o';

-- ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años?
SELECT DISTINCT nombre, edad FROM cliente
	WHERE nombre like '%o'
		and edad>30;

-- Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A o por una W.
SELECT DISTINCT nombre, version FROM programa
	WHERE nombre REGEXP ('[A,W]')
		or version REGEXP('i$');

-- Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A y termine por una S.
SELECT DISTINCT nombre, version FROM programa
	WHERE nombre REGEXP ('^A') and nombre REGEXP ('s$')
		or version REGEXP('i$');

-- Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, y cuyo nombre no comience por una A.
SELECT DISTINCT nombre, version FROM programa
	WHERE nombre not REGEXP ('^A')
		or version REGEXP('i$');

-- Obtén una lista de empresas por orden alfabético ascendente.
SELECT nombre FROM fabricante
	ORDER by nombre;

-- Genera un listado de empresas por orden alfabético descendente.
SELECT nombre FROM fabricante
	ORDER by nombre DESC;

-- Obtén un listado de programas por orden de versión.
SELECT nombre, version FROM programa
	ORDER by version;

-- Genera un listado de los programas que desarrolla Oracle.
SELECT programa.nombre FROM desarrolla, programa, fabricante
	WHERE fabricante.id_fab=desarrolla.id_fab 
		and desarrolla.codigo=programa.codigo 
		and fabricante.nombre='Oracle';

-- ¿Qué comercios distribuyen Windows?
SELECT comercio.nombre FROM comercio, distribuye, programa
	WHERE comercio.cif=distribuye.cif
		and distribuye.codigo=programa.codigo
		and programa.nombre='Windows';

-- Genera un listado de los programas y cantidades que se han distribuido a El Corte Inglés de Madrid.
SELECT programa.nombre, distribuye.cantidad FROM programa, distribuye, comercio
	WHERE comercio.cif=distribuye.cif
		and distribuye.codigo=programa.codigo
		and comercio.nombre='El Corte Inglés'
		and comercio.ciudad='Madrid';

-- ¿Qué fabricante ha desarrollado Freddy Hardest?
SELECT fabricante.nombre FROM desarrolla, fabricante, programa
	WHERE fabricante.id_fab=desarrolla.id_fab
		and desarrolla.codigo=programa.codigo
		and programa.nombre='Freddy Hardest';

-- Selecciona el nombre de los programas que se registran por Internet.
SELECT programa.nombre FROM programa, registra
	WHERE programa.codigo=registra.codigo
		and registra.medio='Internet';

-- ¿Qué medios ha utilizado para registrarse Pepe Pérez?
SELECT cliente.nombre, registra.medio FROM cliente, registra
	WHERE cliente.dni=registra.dni
		and cliente.nombre='Pepe Pérez';

-- ¿Qué usuarios han optado por Internet como medio de registro?
SELECT cliente.nombre FROM cliente, registra
	WHERE cliente.dni=registra.dni
		and registra.medio='Internet';

-- ¿Qué programas han recibido registros por tarjeta postal?
SELECT programa.nombre FROM programa, registra
	WHERE programa.codigo=registra.codigo
		and registra.medio='Tarjeta postal';

-- ¿En qué localidades se han vendido productos que se han registrado por Internet?
SELECT programa.nombre FROM programa, registra
	WHERE programa.codigo=registra.codigo
		and registra.medio='Internet';

-- Obtén un listado de los nombres de las personas que se han registrado por Internet, junto al nombre de los programas para los que ha efectuado el registro.
SELECT cliente.nombre, registra.medio, programa.nombre FROM cliente, programa, registra
	WHERE cliente.dni=registra.dni
		and programa.codigo=registra.codigo
		and registra.medio='Internet';

-- Genera un listado en el que aparezca cada cliente junto al programa que ha registrado, el medio con el que lo ha hecho y el comercio en el que lo ha adquirido.
SELECT DISTINCT cliente.nombre, programa.nombre, registra.medio, comercio.nombre FROM cliente, programa, registra, comercio;

-- Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.
SELECT DISTINCT comercio.ciudad FROM comercio, distribuye, programa, desarrolla, fabricante
	WHERE comercio.cif=distribuye.cif
		and distribuye.codigo = programa.codigo
		and programa.codigo = desarrolla.codigo
		and desarrolla.id_fab = fabricante.id_fab
		and fabricante.nombre = 'Oracle';

-- Obtén el nombre de los usuarios que han registrado Access XP.
SELECT cliente.nombre FROM cliente, registra, programa
	WHERE cliente.dni = registra.dni
		and registra.codigo = programa.codigo 
		and programa.nombre = 'Access' 
		and programa.version like  'XP%';

-- Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta).
SELECT nombre FROM fabricante
	WHERE pais = (SELECT pais FROM fabricante
					WHERE nombre = 'Oracle');

-- Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez. (Subconsulta).
SELECT nombre FROM cliente
	WHERE edad = (SELECT edad FROM cliente
					WHERE nombre = 'Pepe Pérez');

-- Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta).
SELECT nombre FROM cliente
	WHERE edad = (SELECT edad FROM cliente
					WHERE nombre = 'Pepe Pérez');

-- Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta).
SELECT nombre FROM cliente
	WHERE edad = (SELECT edad FROM cliente
					WHERE nombre = 'Pepe Pérez');

-- Obtener el número de programas que hay en la tabla programas.
SELECT count(codigo) FROM programa;

--Calcula el número de clientes cuya edad es mayor de 40 años.
SELECT count(dni) FROM cliente
	WHERE edad > 40;

-- Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1.
SELECT sum(cantidad) FROM distribuye
	WHERE cif = 1;

-- Calcula la media de programas que se venden cuyo código es 7.
SELECT avg(cantidad) FROM distribuye as d, programa as p 
	WHERE  d.codigo = p.codigo
		and p.codigo = 7;

-- Calcula la mínima cantidad de programas de código 7 que se ha vendido.
SELECT MIN(cantidad) FROM distribuye,programa
	WHERE distribuye.codigo = programa.codigo
		and programa.codigo = 7;

-- Calcula la máxima cantidad de programas de código 7 que se ha vendido.
SELECT max(cantidad) FROM distribuye as d,programa as p
	WHERE d.codigo = p.codigo
		and p.codigo = 7;

-- ¿En cuántos establecimientos se vende el programa cuyo código es 7?
SELECT count (c.cif) FROM comercio as c,distribuye as d
	WHERE d.cif = c.cif
		and d.codigo = 7;

-- Calcular el número de registros que se han realizado por Internet.
SELECT count(dni) FROM registra 
	WHERE medio="INTERNET";

-- Obtener el número total de programas que se han vendido en ʻSevillaʼ.
SELECT sum(distribuye.cantidad) FROM comercio,distribuye
	WHERE comercio.cif=distribuye.cif
		and comercio.ciudad="SEVILLA" ;

-- Calcular el número total de programas que han desarrollado los fabricantes cuyo país es ʻEstados Unidosʼ.
SELECT count(programa.codigo) FROM fabricante, desarrolla, programa
	WHERE fabricante.id_fab=desarrolla.id_fab
		and desarrolla.codigo=programa.codigo
		and fabricante.pais="Estados Unidos";

-- Visualiza el nombre de todos los clientes en mayúscula. En el resultado de la consulta debe aparecer también la longitud de la cadena nombre.
SELECT upper(nombre), lenght(nombre) FROM cliente ;

-- Con una consulta concatena los campos nombre y versión de la tabla PROGRAMA.
SELECT  nombre || version FROM programa ;
