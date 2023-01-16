# Creación y manipulación de BBDD

Se plantea la creación de una BBDD para una empresa de tecnología. Las necesidades se describen en la siguiente guía de tablas de la BBDD.
- tabla fabricante:
  - id_fab:entero (clave primaria);
  - nombre:texto;
  - pais:texto;


- tabla programa:
  - codigo:entero (clave primaria),
  - nombre:texto;
  - version:texto;
- tabla comercio:
  - cif:entero (clave primaria),
  - nombre:texto,
  - ciudad:texto);
- tabla cliente:
  - dni:entero (clave primaria),
  - nombre:texto,
  - edad:entero;
- tabla desarrolla:
  - id_fab entero:
  - codigo entero:
    - (clave primaria)(id_fab,codigo);
- tabla distribuye:
  - cif entero:
  - codigo entero:
  - cantidad entero,
    - (clave primaria)(cif,codigo);
- tabla registra:
  - cif entero:
  - dni entero:
  - codigo entero:
  - medio texto:
    - (clave primaria)(cif,dni);
