
<div align="justify">

# ¿El salario?

<div align="center">
<img width="400" src="https://www.gestion.org/wp-content/uploads/2017/08/que-integra-el-salario-base-de-cotizacion-768x452.jpg"/>

</div>

Una de las preguntas más comunes que se hacen las personas cuando empiezan su vida laboral, suele ser qué es el salario base. Y es que es normal que la gente ande un poco confundida ya que, si no tienes conocimientos en este campo, es fácil hacerse un lío con términos como:
- Salario base.
- Base reguladora.
- Salario bruto.
- Salario neto.
- Etc.

Teniendo en cuenta esta información se pide:
- Crea una base datos llamada __salario__.
    - [Crear BBDD en MySql](https://dev.mysql.com/doc/refman/8.0/en/creating-database.html).
```sql
  CREATE DATABASE salario;
```
  
- Crea una tabla llamada persona con los siguientes campos:
    - Identificador. (Texto)__(PK)__.
    - Nombre (Texto).
    - Salario_base. (__Escoge el tipo de dato__).
```sql
  INSERT INTO persona VALUES(2500.5,"Calvito");
  INSERT INTO persona VALUES(2210.4,"Desconocideishon");
  INSERT INTO persona VALUES(2450.9,"Agustín");
  INSERT INTO persona VALUES(2900.3,"Rubius");
  INSERT INTO persona VALUES(2960.2,"Noquiero");
  INSERT INTO persona VALUES(2713.1,"Abreaguas");
  INSERT INTO persona VALUES(1420.0,"Jojo");
  INSERT INTO persona VALUES(2990.5,"Manolo");
  INSERT INTO persona VALUES(1200.4,"Brexx");
  INSERT INTO persona VALUES(3190.1,"NomedaRegalos");
```
 
Cree una función para cada punto teniendo en cuenta que:
- Función __subsidio_transporte__: El subsidio de transporte equivale al __7%__ al salario básico.
```sql
  DELIMITER //
  CREATE FUCNTION subsidio_transporte(base double) RETURNS double
  BEGIN
      DECLARE res double;
      DECLARE mod double;
  
      SET mod = 7;
      SET res = (base*100)/mod;
  
      RETURN res;
  END //
```
  
- Función __salud__: La salud que corresponde al __4%__ al salario básico.
```sql
  DELIMITER //
  CREATE FUCNTION salud(base double) RETURNS double
  BEGIN
      DECLARE res double;
      DECLARE mod double;
  
      SET mod = 4;
      SET res = (base*100)/mod;
  
      RETURN res;
  END //
```
  
- Función __pension__: La pensión que corresponde al __4%__ al salario básico
```sql
  DELIMITER //
  CREATE FUCNTION pension(base double) RETURNS double
  BEGIN
      DECLARE res double;
      DECLARE mod double;
  
      SET mod = 4;
      SET res = (base*100)/mod;
  
      RETURN res;
  END //
```
  
- Función __bono__: Un bono que corresponde al __8%__ al salario básico.
```sql
  DELIMITER //
  CREATE FUCNTION bono(base double) RETURNS double
  BEGIN
      DECLARE res double;
      DECLARE mod double;
  
      SET mod = 8;
      SET res = (base*100)/mod;
  
      RETURN res;
  END //
```
  
- Función __integral__: El salario integral es la ___suma del salario básico - salud - pension + bono + sub de transporte___.
```sql
  DELIMITER //
  CREATE FUCNTION integral(base double) RETURNS double
  BEGIN
      DECLARE res double;
      DECLARE salud double;
      DECLARE pension double;
      DECLARE bono double;
      DECLARE subTransporte double;

      SET salud = salud(base);
      SET pension = pension(base);
      SET bono = bono(base);
      SET subTransporte = subTransporte(base);

      SET res = base - salud - pension + bono + subTransporte;

      RETURN res;
  END //
```

</div>
