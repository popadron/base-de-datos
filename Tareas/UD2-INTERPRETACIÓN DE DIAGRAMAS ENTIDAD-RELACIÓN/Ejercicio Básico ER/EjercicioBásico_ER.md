# Ejercicio Básico ER


[//]: <> (Foto de la portada)
<p align="center">
  <img src="https://www.hn.cl/wp-content/uploads/2020/11/BDM-1.png"/>
</p>

<p align="right">
  Patricia Isabel Ojeda Padrón
</p>

<p align="right">
  1º DAM
</p>

##

### ÍNDICE

- [MySQL](#mysql)
- [SQLServer](#sqlserver)
- [Oracle](#oracle)
- [Microsoft Access](#microsoft-access)
- [PostgreSql](#postgresql)
- [H2](#h2)
- [FireBird](#firebird)
- [SQL Express](#sql-express)
- [SQLite](#sqlite)
- [Oracle Berkeley DB](#oracle-berkeley-db)
- [Bibliografia](#bibliografia)

##

Representa las entidades, relaciones y cardinalidades mínimas y máximas para cada uno de los siguientes supuestos:

* En una academia los profesores dan clase a los alumnos matriculados de modo que todo profesor da clase al menos a un alumno y todo alumno recibe clase de un único profesor.

* Los profesores de un centro pueden ser o no tutores de un alumno, en cualquier caso los alumnos solo podrán tener un único tutor.

* En un comercio, un cliente compra varios productos, y un producto puede ser comprado por varios clientes.

* Representa la relación entre Personas y sus padres.

* En una carrera de relevos, representar la relación dar el relevo entre atletas(para calcular las cardinalidades máxima y mínima deberás tener en cuenta si se trata de el primero, el último o el 2º o 3º).

* Una empresa está compuesta por varios departamentos de los que se desea almacenar su nº, nombre y localidad. - Los empleados deben estar asignados a un departamento y se guardarán sus datos nºempleado, apellido, salario. Además, cada empleado tiene un jefe.
(Nota: se ha supuesto que un departamento puede no tener empleados)

* Se desea construir una bd para mantener información sobre los equipos y partidos de la liga. - Un equipo tiene un cierto nº de jugadores (Id_jugador, datos personales) y no todos participan en cada partido. Queremos registrar además por cada partido, qué jugadores juegan, la fecha y la hora del partido, resultados de los encuentros y las posiciones donde juegan.

* En una empresa, para cada uno de sus empleados, se guardan los datos de sus hijos. Representa esta relación haciendo las suposiciones que creas convenientes.

* Se desea diseñar una BD para una Universidad que contenga información sobre carreras y asignaturas que se pueden estudiar. Además se incluirá la información de los alumnos matriculados en las correspondientes asignaturas y las calificaciones que obtienen en las asignaturas en las que están matriculados. Nota: suponer que una asignatura solo puede pertenecer a una carrera.
