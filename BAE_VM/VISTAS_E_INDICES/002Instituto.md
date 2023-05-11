<div align="justify">

# Tarea 1 de trabajo con índices

<div align="center">
<img src="[imagen robada del profe](https://github.com/jpexposito/base-datos/blob/main/PROGRAMACION/img/indices.png?raw=true)"/>
</div>

Un instituto de enseñanza guarda los siguientes datos de sus alumnos:
 - número de inscripción, comienza desde 1 cada año,
 - año de inscripción,
 - nombre del alumno,
 - documento del alumno,
 - domicilio,
 - ciudad,
 - provincia,
 - clave primaria: número de inscripto y año de inscripción.
 
Se pide: 
- Elimine la tabla "alumno" si existe. 
    >__Nota__:_Muestra el comando y la salida_.
 ```sql
  CREATE DATABASE alumnos IF NOT EXISTS;
  DROP TABLE alumno IF EXISTS;
 ```
- Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de 
inscripción).
    >__Nota__:_Muestra el comando y la salida_. 
 ```sql
  CREATE DATABASE alumnos IF NOT EXISTS;
  DROP TABLE alumno IF EXISTS;
  CREATE TABLE alumno (
    nInscripcion INT AUTO_INCREMENT;
    anioInscripción INT;
    nombre CHAR(15);
    documento CHAR(20);
    domicilio CHAR(60);
    ciudad CHAR(15);
    provincia(15);
    PRIMARY KEY(nInscripcion, anioInscripcion);
  );
```
- Define los siguientes indices:
- Un índice único por el campo "documento" y un índice común por ciudad y provincia.
    >__Nota__:_Muestra el comando y la salida. Justifica el tipo de indice en un comentario_.
 ```sql
  CREATE UNIQUE INDEX idxDocumento ON usuarios(documento);
 ```
 ```sql
  CREATE INDEX idxCiudadProvincia ON usuarios(ciudad, provincia);
 ```
- Vea los índices de la tabla.
    >__Nota__:_Muestra el comando y la salida __"show index"___.
 ```sql
  SELECT idxDocumento, idxCiudadProvincia FROM usuarios;
 ```
- Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria.
    >__Nota__:_Muestra el comando y la salida_.
 ```sql
  DELIMITER $$
  DROP PROCEDURE introducirPersona IF exists $$
  DELIMITER //
  CREATE PROCEDURE incercionRegistro (IN numRegistros INT, IN nInscripcion INT)
  BEGIN
    DECLARE asigNInscripcion INT;
    DECLARE asigAnioInscripcion INT;
    DECLARE asigNombre CHAR(15);
    DECLARE asigCodDocumento CHAR(20);
    DECLARE asigDomicilio CHAR(60);
    DECLARE asigCiudad CHAR(15);
    DECLARE asigProvincia CHAR(15);
    
    asigAnioInscripcion = '2020';
    asigNombre = CONCAT('mella', nInscripcion);
    asigCodDocumento = CONCAT('0000', nInscripcion);
    asigProvincia = 'Aveces';
 
    IF (nInscripcion/2) <> 0 then
      asigDomicilio = CONCAT('C/Dr. No Quiero', nInscripcion);
      asigCiudad = 'Larca Dorim';
    ELSE
      asigDomicilio = CONCAT('C/Dr. Si Quiero', nInscripcion);
      asigCiudad = 'Arcu Mant';
    end IF;
  END //
 
  CALL PROCEDURE introducirPersona(2, nInscripcion);
 ```
- Intente ingresar un alumno con clave primaria repetida.
    >__Nota__:_Muestra el comando y la salida_.
 ```sql
 
 ```
 
- Intente ingresar un alumno con documento repetido.
    >__Nota__:_Muestra el comando y la salida_.
- Ingrese varios alumnos de la misma ciudad y provincia.
    >__Nota__:_Muestra el comando y la salida_.
- Elimina los indices creados, y muestra que ya no se encuentran.
    >__Nota__:_Muestra el comando y la salida_.


</div>
