sqlite> CREATE TABLE producto(
   ...> codigo INT PRIMARY KEY,
   ...> nombre TEXT,
   ...> precio DOUBLE,
   ...> codigo_fabricante INT references producto(codigo)
   ...> );

sqlite> CREATE TABLE fabricante(
   ...> codigo INT PRIMARY KEY,
   ...> nombre TEXT
   ...> );