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

- [Ejercicio 1](#ejercicio-1)
- [Ejercicio 2](#ejercicio-2)
- [Ejercicio 3](#ejercicio-3)
- [Ejercicio 4](#ejercicio-4)
- [Ejercicio 5](#ejercicio-5)
- [Ejercicio 6](#ejercicio-6)
- [Ejercicio 7](#ejercicio-7)
- [Ejercicio 8](#ejercicio-8)
- [Ejercicio 9](#ejercicio-9)

##

Representa las entidades, relaciones y cardinalidades mínimas y máximas para cada uno de los siguientes supuestos:

### Ejercicio 1
* En una academia los profesores dan clase a los alumnos matriculados de modo que todo profesor da clase al menos a un alumno y todo alumno recibe clase de un único profesor.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/1profesorAlumno.drawio.png?raw=true">
</p>
  
### Ejercicio 2
* Los profesores de un centro pueden ser o no tutores de un alumno, en cualquier caso los alumnos solo podrán tener un único tutor.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/2profesorAlumno.drawio.png?raw=true">
</p>

### Ejercicio 3
* En un comercio, un cliente compra varios productos, y un producto puede ser comprado por varios clientes.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/3clienteProducto.drawio.png?raw=true">
</p>

### Ejercicio 4
* Representa la relación entre Personas y sus padres.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/4persona.drawio.png?raw=true">
</p>

### Ejercicio 5
* En una carrera de relevos, representar la relación dar el relevo entre atletas(para calcular las cardinalidades máxima y mínima deberás tener en cuenta si se trata de el primero, el último o el 2º o 3º).

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/5atleta.drawio.png?raw=true">
</p>

### Ejercicio 6
* Una empresa está compuesta por varios departamentos de los que se desea almacenar su nº, nombre y localidad. Los empleados deben estar asignados a un departamento y se guardarán sus datos nºempleado, apellido, salario. Además, cada empleado tiene un jefe.
(Nota: se ha supuesto que un departamento puede no tener empleados)

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/6empresaDepartamentos.drawio.png?raw=true">
</p>

### Ejercicio 7
* Se desea construir una bd para mantener información sobre los equipos y partidos de la liga. Un equipo tiene un cierto nº de jugadores (Id_jugador, datos personales) y no todos participan en cada partido. Queremos registrar además por cada partido, qué jugadores juegan, la fecha y la hora del partido, resultados de los encuentros y las posiciones donde juegan.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/7equiposJugadores.drawio.png?raw=true">
</p>

### Ejercicio 8
* En una empresa, para cada uno de sus empleados, se guardan los datos de sus hijos. Representa esta relación haciendo las suposiciones que creas convenientes.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/8empleadoHijo.drawio.png?raw=true">
</p>

### Ejercicio 9
* Se desea diseñar una BD para una Universidad que contenga información sobre carreras y asignaturas que se pueden estudiar. Además se incluirá la información de los alumnos matriculados en las correspondientes asignaturas y las calificaciones que obtienen en las asignaturas en las que están matriculados. Nota: suponer que una asignatura solo puede pertenecer a una carrera.

<p align="center">
  <img src="https://github.com/popadron/base-de-datos/blob/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/Ejercicio%20B%C3%A1sico%20ER/9alumnoAsignatura.drawio.png?raw=true">
</p>
