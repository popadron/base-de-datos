<div align="justify">

# Donación de Sangre

<div align="center">
<img width="300" src="https://tiposdesangre.org/wp-content/uploads/2017/05/Descubre-los-requisitos-para-Donar-Sangre-768x727.jpg"/>

</div>

¿Sabías que la mayoría de los adultos sanos pueden ser  donantes? Aunque existen ciertas condiciones que debes cumplir para realizar con éxito una donación. Descubre los requisitos básicos para donar sangre.

Para la poder donar sangre se deben cumplir varias condicones:
- Tener un peso superior a 50Kg.
- Ser apto para donar sangre.
- No haber donado en un periodo anterior a 90 días en caso de ser hombre y 120 días en caso de mujer.

Teniendo en cuenta esta información se pide:
- Crea una base datos llamada donacion.
  
```sql
  CREATE DATABASE donacion;
```
  
- Crea una tabla llamada persona con los siguientes campos:
    - Peso. (Entero)
    - Admitido. Texto(Si/No). __(Valores de dominio:Si/No)__
    - Sexo. Texto (H/M). __(Valores de dominio:H/M)__
    - Fecha Última Donación. DateTime.
  
```sql
  CREATE TABLE persona (
    id INT autoIncrement PRIMARY KEY,
    peso INT UNSIGNED,
    admitido VARCHAR(2),
    sexo CHAR(1),
    fechaUltimaDonacion DATETIME
  );
```
  
- Realiza al menos 10 insert en la tabla, con datos aleatorios, generados por el usuario.

```sql
  DELIMITER //
  CREATE PROCEDURE datosPersona (IN peso INT UNSIGNED, IN admitido VARCHAR(2), IN sexo CHAR(1), IN fechaUltimaDonacion DATETIME)
  BEGIN
    INSERT into persona VALUES(peso, admitido, sexo, fechaUltimaDonacion);
  END //
  
    CALL PROCEDURE datosPersona(69, 'Si', 'H', '2012-10-15 15:45:56');
    CALL PROCEDURE datosPersona(107, 'No', 'M', '2010-12-05 10:56:12');
    CALL PROCEDURE datosPersona(250, 'No', 'H', '2009-10-06 09:45:56');
    CALL PROCEDURE datosPersona(45, 'No', 'H', '2012-09-14 12:45:56');
    CALL PROCEDURE datosPersona(50, 'Si', 'H', '2012-08-13 13:25:56');
    CALL PROCEDURE datosPersona(40, 'No', 'M', '2012-07-12 14:55:56');
    CALL PROCEDURE datosPersona(198, 'Si', 'M', '2012-06-11 15:23:56');
    CALL PROCEDURE datosPersona(92, 'Si', 'M', '2012-02-10 16:43:56');
    CALL PROCEDURE datosPersona(60, 'No', 'H', '2012-01-09 17:15:56');
    CALL PROCEDURE datosPersona(73, 'Si', 'M', '2012-10-08 18:48:56');
  ```
  ```sql
  CORREGIDO:
  DELIMETER //
  DROP PROCEDURE introducirPersona IF exists;
  CREATE PROCEDURE introducirPersona (IN numPersonas INT)
  BEGIN
    DECLARE pesoEntrada INT default 55;
    DECLARE numPersona INT default 0;
    WHILE numPersonas>0 then
      IF (numPersona/2) <> 0 then

        INSERT INTO persona VALUES(pesoEntrada, 'Si', 'H', '2012-10-15 15:45:56');
      ELSE

        INSERT INTO persona VALUES(pesoEntrada, 'Si', 'M', '2012-10-15 15:45:56');
      end IF;
      set numPersonas = numPersonas -1;
      set numPersona = numPersona + 1;
    end WHILE;
  END //
```
  
- Realice un procedimiento para determinar si la persona puede donar sangre de acuerdo a las siguientes condiciones:
  
   - Si el peso es menor a 50 kg guarde en estado adminito "NO", en caso contrario seria "SI".
  
```sql
  DELIMITER //
  DROP PROCEDURE datosPersonas IF exists;
  CREATE PROCEDURE datosPersonas (IN peso INT UNSIGNED, IN/OUT admitido VARCHAR(2), IN sexo CHAR(1), IN fechaUltimaDonacion DATETIME)
  BEGIN
    INSERT into persona VALUES(peso, admitido, sexo, fechaUltimaDonacion);
  
    UPDATE datosPersonas
      SET admitido = 'Si'
      WHERE peso>50;
    UPDATE datosPersonas
      SET admitido = 'No'
      WHERE peso<50;
  END //
  
    CALL PROCEDURE datosPersonas();
```
```sql
  CORREGIDO:
  DELIMITER //
  DROP PROCEDURE datosPersonas IF exists;
  CREATE PROCEDURE datosPersonas (IN pesoMin INT UNSIGNED)
  BEGIN
    INSERT into persona VALUES(admitido);
  
    UPDATE persona as p
      SET admitido = 'SI'
      WHERE p.peso>pesoMin;
    UPDATE persona as p
      SET admitido = 'NO'
      WHERE p.peso<pesoMin;
  END //
  
    CALL PROCEDURE datosPersonas(50);
```
  
</div>
