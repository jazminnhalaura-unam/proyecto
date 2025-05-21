![Escudo_pct](https://pctierra.geofisica.unam.mx/recursos/logos/unam_pct.png)
## Universidad Nacional Autónoma de México
## Posgrado en Ciencias de la Tierra
## Herramientas GNU-Linux 
## Dulce Rosario Herrera Moro
## Pedro Damian Cruz Santiago
## Proyecto final
## Laura Jazmín G. Rodríguez
## jazminnhalaura@gmail.com
## 22 de mayo de 2025

## Instrucciones: 

### Actividad 1

1. Generar un archivo CSV con la estructura de la Tabla 1.
![Ejemplo de la estructura del archivo csv de entrada](https://tlaloc.atmosfera.unam.mx/jupyterlab/master/42570/hub/user-redirect/lab/tree/proyecto/imgs/tabla1.png)

2. Clonar el repositorio en el home de su usuario en Tlaloc
Para realizarlo se utilizó la opción:
```
git clone https://github.com/DulceRosario/Proy_GNU_2025-2
```
Tras crear un directorio y entrar a él:
```
mkdir proyecto
cd proyecto
```

3. Utilizar el script graficar.py para generar las gráficas:

Para esto, primero se creó un entorno y se instalaron las bibliotecas necesarias, siguiendo las instrucciones de la Actividad 2. Después, se ingresó al directorio Proy_GNU_2025-2

Posteriormente, se ejecutó el script: 

```
python graficar.py --file datos_estaciones.csv --variable Tmax
```

Para obtener los mapas de temperatura máxima, y

```
python graficar.py --file datos_estaciones.csv --variable Pmax
```

Para obtener los mapas de precipitación máxima.

4. Utilizar el archivo README.md para documentar del script en bash utilizado para generar el archivo CSV, así como para mostrar las imágenes resultantes

Se creó el archivo README.md dentro de la carpeta proyecto

```
touch README.md
```

### Actividad 2

El script graficar.py requiere de los paquetes: pandas, geopandas, numpy, scipy y matplotlib para procesar el archivo CSV y generar las imágenes. A continuación se describen los pasos para generar un entorno en python con los paquetes mencionados, utilizando el administrador de paquetes micromamba (https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html)

1. Crear un directorio y descargar micromamba
```
mkdir proyecto
cd proyecto curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
```
2. Definir el directorio actual como entorno base 
```
export MAMBA_ROOT_PREFIX=$PWD
```
3. Configurar la sesión
```
eval "$(./bin/micromamba shell hook -s posix)"
```
4. Activar el entorno base 
```
micromamba activate
```
5. Instalar los paquetes 
```
micromamba install geopandas
```
6. Invocar el script 
```
python NOMBRE_SCRIPT.py
```
### Actividad 3

Las siguientes líneas son utilizadas para obtener el total de ingresos para cada una de las estaciones de la Línea 1 del metro para la fecha 2021-01-01 a partir del archivo afluenciastc_desglosado_02_2025.csv:

```
grep 2021-01-01 afluenciastc_desglosado_02_2025.csv |
grep -w "Línea 1" |
cut -d, -f 5 |
uniq > estaciones
grep 2021-01-01 afluenciastc_desglosado_02_2025.csv |
grep -w "Línea 1" > ingresos
cat estaciones | while read EST; do
echo -n "$EST: "
grep "$EST" ingresos | cut -d, -f7 |
awk '{ VAR += $1} ; END {print VAR}'
done
```
* a)¿Qué resultado se obtiene al eliminar grep -w "Línea 1" de la secuencia de comandos? explique
* b) A partir del razonamiento anterior, ¿qué modificación debe realizarse para obtener el total de ingresos de todas las estaciones (todas las líneas del metro) para el mes de enero de 2021?
* c) A partir del resultado anterior, ¿qué modificaciones deben realizarse para obtener el total de ingresos de todas las estaciones (todas la líneas del metro) para el año 2021?
* d) Reportar la estación con más número de ingresos para los años 2021, 2022, 2023, 2024
* e) A partir de los resultados anteriores, ¿ qué modificaciones deben realizarse para obtener el total de ingresos de todas las estaciones para todos los registros en el archivo, en otras palabras para todos los años registrados 2021 .. 2025?