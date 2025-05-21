
![Escudo_pct](https://pctierra.geofisica.unam.mx/recursos/logos/unam_pct.png)

## Universidad Nacional Autónoma de México
## Posgrado en Ciencias de la Tierra
### Herramientas GNU-Linux 
### Dulce Rosario Herrera Moro
### Pedro Damian Cruz Santiago
### Proyecto final
### Laura Jazmín G. Rodríguez
### jazminnhalaura@gmail.com
### 22 de mayo de 2025
***
## Instrucciones: 

### Actividad 1

1. Generar un archivo CSV con la estructura de la Tabla 1.

![Ejemplo de la estructura del archivo csv de entrada](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/tabla1.png)

Archivo generado, separado por comas: 
```
Estacion,Longitud,Latitud,Tmax,Pmax,Date
ENP1,-99.1220,19.2713,24.8,,2022-01
ENP2,-99.0999,19.3840,25.5,5.1,2022-01
ENP3,-99.0948,19.4818,26.4,1.8,2022-01
ENP4,-99.1949,19.4037,,,2022-01
ENP5,-99.0805,19.1624,25.1,.2,2022-01
ENP6,-99.0924,19.2107,25.4,3.0,2022-01
ENP7,-99.1269,19.4197,23.7,1.0,2022-01
ENP8,-99.1945,19.3674,,,2022-01
ENP9,-99.1281,19.4833,25.3,9.8,2022-01
```
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

Esto devolvió 24 imágenes en formato .png, que se pueden encontrar en la carpeta ```results/```, y se muestran a continuación: 

*Enero 2022*

![Temperatura en enero 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-01.png)![Precipitación en enero 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-01.png)

*Febrero 2022*

![Temperatura en febrero 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-02.png)![Precipitación en febrero 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-02.png)

*Marzo 2022*

![Temperatura en marzo 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-03.png)![Precipitación en marzo 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-03.png)

*Abril 2022*

![Temperatura en abril 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-04.png)![Precipitación en abril 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-04.png)

*Mayo 2022*

![Temperatura en mayo 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-05.png)![Precipitación en mayo 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-05.png)

*Junio 2022*

![Temperatura en junio 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-06.png)![Precipitación en junio 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-06.png)

*Julio 2022*

![Temperatura en julio 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-07.png)![Precipitación en julio 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-07.png)

*Agosto 2022*

![Temperatura en agosto 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-08.png)![Precipitación en agosto 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-08.png)

*Septiembre 2022*

![Temperatura en septiembre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-09.png)![Precipitación en septiembre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-09.png)

*Octubre 2022*

![Temperatura en octubre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-10.png)![Precipitación en octubre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-10.png)

*Noviembre 2022*

![Temperatura en noviembre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-11.png)![Precipitación en noviembre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-11.png)

*Diciembre 2022*

![Temperatura en diciembre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/temp_max_2022-12.png)![Precipitación en diciembre 2022](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-12.png)

A causa de la disponibilidad de información y de la forma como el programa de python realiza la interpolación, los mapas de diciembre no presentan datos de precipitación ni temperatura máxima, a pesar de sí existir algunos datos puntuales.

4. Utilizar el archivo README.md para documentar del script en bash utilizado para generar el archivo CSV, así como para mostrar las imágenes resultantes

La estructura de la carpeta proyecto se compone de: 

* data/
   * datos_estaciones_csv
   * enp_data.csv
* imgs/
   * a.png
   * b.png
   * c.png
   * d2021.png
   * d2022.png
   * d2023.png
   * d2024.png
   * e cat.png
   * e grep.png
   * tabla1.png
* results/
   * prec_max_2022-01.png
   * temp_max_2022-01.png
   * prec_max_2022-02.png
   * temp_max_2022-02.png
   * prec_max_2022-03.png
   * temp_max_2022-03.png
   * prec_max_2022-04.png
   * temp_max_2022-04.png
   * prec_max_2022-05.png
   * temp_max_2022-05.png
   * prec_max_2022-06.png
   * temp_max_2022-06.png
   * prec_max_2022-07.png
   * temp_max_2022-07.png
   * prec_max_2022-08.png
   * temp_max_2022-08.png
   * prec_max_2022-09.png
   * temp_max_2022-09.png
   * prec_max_2022-10.png
   * temp_max_2022-10.png
   * prec_max_2022-11.png
   * temp_max_2022-11.png
   * prec_max_2022-12.png
   * temp_max_2022-12.png
* scripts/
   * get_st.sh
   * graficar.py

Dentro del directorio ```data/``` se encuentran los archivos ```datos_estaciones.csv``` y ```enp_data.csv```. Ambos contienen información referente a los datos de la red PEMBU, ordenados por mes en datos_estaciones y por estación en enp_data. El primero de estos archivos es el que sirve de entrada para realizar los mapas con ayuda de ```graficar.py```. 

El directorio ```imgs/``` contiene imágenes de apoyo para el reporte contenido en este archivo.

El directorio ```results/``` contiene los mapas de salida, resultado de aplicar la función de ```graficar.py``` al archivo ```datos_estaciones.csv```, ya sea para la columna de temperatura o precipitación. Un ejemplo de las imágenes obtenidas se presenta a continuación:

![Ejemplo de imagen resultado](https://github.com/jazminnhalaura-unam/proyecto/blob/master/results/prec_max_2022-06.png)

El directorio scripts contiene dos scripts, uno propio, en lenguaje bash, llamado ```get_st.sh```, y uno en lenguaje python, disponible en https://github.com/DulceRosario/Proy_GNU_2025-2 llamado ```graficar.py```. El primer script toma datos que se encuentran localmente en la ruta proporcionada, recorre todos los archivos por estación (ENP1-ENP9), y después por mes, extrayendo la latitud y longitud de las cabeceras del archivo, y obteniendo el valor máximo de las mediciones de temperatura y precipitación para cada estación en cada mes, y manejando los casos en los que ese valor no está disponible (no puede ser cero, porque cero es una medición válida, y no puede ser un valor no numérico, porque el código de python que los grafica trabaja con numpy y no acepta esos valores combinados con valores numéricos). Este código lanza un aviso cada vez que no se encuentre algún valor, ya sea de temperatura, precipitación o el registro para alguna fecha/estación. Finalmente, devuelve dos salidas: ```enp_data.csv```, donde la información está organizada por estaciones, para mejor legibilidad, y ```datos_estaciones.csv```, ordenada por meses, para su uso en el código ```graficar.py```. *Importante*: para que este script funcione, debe existir la ruta /LUSTRE/tmp/temp/estaciones-ENP/. Para que ```graficar.py``` funcione, deben estar instaladas las librerías pandas, geopandas, numpy, scipy y matplotlib, deben encontrarse todos los archivos .shp de soporte disponibles en el repositorio antes señalado y se debe llamar a la funció indicando el nombre del archivo y la variable a graficar, como se mencionó en la Actividad 1.  

Se creó el archivo README.md dentro de la carpeta proyecto.

```
touch README.md
```



***
### Actividad 2

El script graficar.py requiere de los paquetes: pandas, geopandas, numpy, scipy y matplotlib para procesar el archivo CSV y generar las imágenes. A continuación se describen los pasos para generar un entorno en python con los paquetes mencionados, utilizando el administrador de paquetes micromamba (https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html)

1. Crear un directorio y descargar micromamba
```
mkdir proyecto
cd proyecto
curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj 
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

Se realizó la instalación exitosa del administrador de paquetes micromamba, lo que permitió instalar las librerías necesarias y ejecutar el script con éxito.

***
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
  * R. Dado que la secuencia de comandos anterior devuelve una lista de todas las estaciones de la línea 1 y sus ingresos para el 01/01/2021, eliminar las dos instancias de ```grep -w "Línea 1"```, devuelve una lista de todas las estaciones, sin distinción de la linea, y sus ingresos para ese mismo día. Adicionalmente, como hay estaciones que pertenecen a más de una línea, y uniq aplica a líneas contiguas, y la lista de estaciones está ordenada por línea, no por estación, hay estaciones que se repetirán y hay que sumar esos valores para obtener información similar a las líneas anteriores. Ejemplo:
![Ejemplo salida a](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/a.png)
* b) A partir del razonamiento anterior, ¿qué modificación debe realizarse para obtener el total de ingresos de todas las estaciones (todas las líneas del metro) para el mes de enero de 2021?
  * R. Tres modificaciones cruciales se deben hacer para obtener esta información: la primera es sustituir ```grep 2021-01-01``` en ambas instancias por ```grep 2021-01```, lo cual en lugar de un día toma todo el mes de enero de los registros. En segundo lugar, antes de exportar la lista de estaciones, para tomar en cuenta estaciones que pertenecen a distintas líneas pero que se deben contabilizar en conjunto, agregar ```sort``` antes de ```unique```. Finalmente, tras obtener la lista de estaciones y sus ingresos para el mes  de enero, tomar la segunda columna (después del separador ":"), incluir un símbolo de suma entre cada par de números y realizar la operación para obtener el total, como se ve en el ejemplo:
![Ejemplo salida b](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/b.png)
* c) A partir del resultado anterior, ¿qué modificaciones deben realizarse para obtener el total de ingresos de todas las estaciones (todas la líneas del metro) para el año 2021?
  * R. Por lógica, se podría pensar que lo único necesario a modificar es ```grep 2021-01``` por ```grep 2021```, similar a la respuesta anterior, pero debido a que los ingresos se reportan en números enteros y la cadena "2021" podría encontrarse ahí, se debe utilizar ```grep 2021-``` para aislar los registros que correspondan a ese año:
![Ejemplo salida c](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/c.png)
* d) Reportar la estación con más número de ingresos para los años 2021, 2022, 2023, 2024
  * R. Para ello se puede modificar a partir del postulado anterior, antes de separar los ingresos y realizar la suma, ordenándolo numéricamente por la segunda columna y tomando el último valor, lo cual devuelve el nombre de la estación y la cantidad de ingresos en ese año, con lo cual se encontró que para los cuatro años Pantitlán fue la estación con más afluencia: 45993260 en 2021, 51542799 en 2022, 48523294 en 2023 y 37141821 en 2024:
![Ejemplo salida d21](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/d2021.png)![Ejemplo salida d22](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/d2022.png)![Ejemplo salida d23](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/d2023.png)![Ejemplo salida d24](https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/d2024.png)

* e) A partir de los resultados anteriores, ¿ qué modificaciones deben realizarse para obtener el total de ingresos de todas las estaciones para todos los registros en el archivo, en otras palabras para todos los años registrados 2021 .. 2025?
  * R. Para ello se intentó realizar de dos formas: la primera, considerando que no se sabe cuántos años abarca el registro pero se quiere aislar los años de 2021-2025, con ```grep -e```, y la segunda, considerando que se conoce que todos los registros se encuentran en este rango, únicamente con ```cat```, y manteniendo la estructura básica de lo anteriormente descrito en c, b...
<img src="https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/e grep.png" alt="Ejemplo salida e grep"/>
<img src="https://github.com/jazminnhalaura-unam/proyecto/blob/master/imgs/e cat.png" alt="Ejemplo salida e cat"/>

Dado que ambas opciones dieron el mismo resultado, se confirma que los registros se encuentran en ese rango. 
