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
```sql
  CREATE DATABASE if NOT exists alumnos;
  CREATE TABLE alumno (
    nInscripcion INT;
    anioInscripción INT;
    nombre CHAR(20);
    apellidos CHAR(50);
    domicilio CHAR(60);
    ciudad CHAR(15);
    provincia(15);
    
  );
  
```
  
  
Se pide: 
- Elimine la tabla "alumno" si existe. 
    >__Nota__:_Muestra el comando y la salida_.
- Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de 
inscripción).
    >__Nota__:_Muestra el comando y la salida_. 
- Define los siguientes indices:
   - Un índice único por el campo "documento" y un índice común por ciudad y provincia.
        >__Nota__:_Muestra el comando y la salida. Justifica el tipo de indice en un comentario_. 
    - Vea los índices de la tabla.
        >__Nota__:_Muestra el comando y la salida __"show index"___.
- Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria.
    >__Nota__:_Muestra el comando y la salida_.
- Intente ingresar un alumno con clave primaria repetida.
    >__Nota__:_Muestra el comando y la salida_.
- Intente ingresar un alumno con documento repetido.
    >__Nota__:_Muestra el comando y la salida_.
- Ingrese varios alumnos de la misma ciudad y provincia.
    >__Nota__:_Muestra el comando y la salida_.
- Elimina los indices creados, y muestra que ya no se encuentran.
    >__Nota__:_Muestra el comando y la salida_.
## Referencias

- [Índices en MySql](https://dev.mysql.com/doc/refman/8.0/en/mysql-indexes.html).
- [Apuntes](../../indices.md).

</div>
