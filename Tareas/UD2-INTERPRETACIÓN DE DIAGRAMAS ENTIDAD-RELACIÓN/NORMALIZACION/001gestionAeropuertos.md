<div align="justify">

# Gestión de Aeropuertos 

<div align="center">
<img src="https://raw.githubusercontent.com/popadron/base-de-datos/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/NORMALIZACION/img/aena_logo.png?token=GHSAT0AAAAAAB3KRMJHCND57O74BPHESERSY3WQMZQ" width="400px"/>
</div>

Se ha creado una base de datos con los datos de ciudades y sus aeropuertos. Los campos y los tipos de datos son los que se indican a continuación:
- Ciudad: Nombre de la ciudad (único).
- HabCiudad_M: número de habitantes de la ciudad en millones. 
- País: País en el que se encuentra la ciudad.
- HabPais_M: Número de habitantes del país en millones.
- PerteneceUE: campo booleano. TRUE si el país Pertenece a la Unión Europea; FALSE, no pertenece a la Unión Europea. 
- CodigoAeropuerto: único.
- NombreAeropuerto: único.
- Distancia_km: distancia del aeropuerto a la ciudad en km.

La representación de la información dentro de la BBDD es la siguiente:


<div align="center">
 <img src="https://raw.githubusercontent.com/popadron/base-de-datos/main/Tareas/UD2-INTERPRETACI%C3%93N%20DE%20DIAGRAMAS%20ENTIDAD-RELACI%C3%93N/NORMALIZACION/img/tabla.png?token=GHSAT0AAAAAAB3KRMJHVJ3LQ7W7P46KUPFUY3WQNSQ"/>
 </div>

Se pide:
  
  
##
  
### ÍNDICE 
  
  - Indicar claves candidatas
  - Comprobar si se cumple la 1ª Forma Normal
  - Normalizar si no se cumple el apartado 2
  - Determinantes sobre las tablas resultado del apartado 3
  - Indicar claves candidatas de todas las tablas resultantes
  
##

## SOLUCIÓN

1. Indicar claves candidatas.
  Las claves candidatas son las siguientes:
  - __Cuidad, CodAeropuerto, NombreAeropuerto__.
  
2. Comprobar si se cumple la 1ª Forma Normal.
  No cumple la 1FN dado que tiene __valores multivaluados__. Los campos __CodAeropuerto, NombreAeropuerto y distancia_km__ no son atómicos.
  
3. Normalizar si no se cumple el apartado 2.
  Vamos a ver como se relacionan los campos:
    - La relación es de tipo __N:N__ _si suponemos que una ciudad puede tener varios aeropuertos y que un aeropuerto puede serlo de varias ciudades_.

**Ciudad**
  
  | Ciudad | HabCiudad_M | País | HabPaís_M | PerteneceUE |
  |--------|-------------|------|-----------|-------------|
  | Madrid | 3 | España | 45 | Verdadero |
  | París | 13 | Francia | 66 | Verdadero |
  | Londres | 8'3 | Gran Bretaña | 60 | Verdadero |
  | Belgrado | 1'3 | Serbia | 7'5 | Falso |
  | Viena | 1'8 | Austria | 8'5 | Verdadero |

**Ciudad --> Aeropuerto**
  
  | codAeropuerto | Ciudad |
  |----|----|
  | MAD | Madrid |
  | CDG | París |
  | ORY | París |
  | LHT | Londres |
  | LTN | Londres |
  | BEG | Belgrado |
  | VIE | Viena |

**Aeropuerto**
  
  | codAeropuerto | NombreAeropuerto | Distancia_km |
  |----|----|----|
  | MAD | Barajas | 13 |
  | CDG | Roissy De Gaulle | 23 |
  | ORY | Orly | 16 |
  | LHT | Luton | 48 |
  | LTN | Heathrow | 28 |
  | BEG | Nikola Tesla | 12 |
  | VIE | Schwechat | 18 |
  
4. Determinantes sobre las tablas resultado del apartado 3.
  Se crean nuevas tablas reordenando los campos que los componen. Como se ha descrito en las 3 últimas tablas.

5. Indicar claves candidatas de todas las tablas resultantes.
  - ciudad: ciudad. Aunque la columna debería ser llamada de otra forma, por ejemplo "nombre", y evitar la redundancia entre tabla y nombre.
  - aeropuerto: codAeropuerto. Aunque la columna debería llamarse código.
  - ciudad-->aeropuero: codAeropuerto y ciudad.
