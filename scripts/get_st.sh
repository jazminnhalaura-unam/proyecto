#!/bin/bash

#generar un archivo csv con la estructura de la tabla 1 

#recorrer todos los archivos por estación y después por mes
CAM="/LUSTRE/tmp/temp/estaciones-ENP/"
SALIDA="./enp_data.csv"
paste -d "," <(echo "Estacion") <(echo "Longitud") <(echo "Latitud") <(echo "Tmax") <(echo "Pmax") <(echo "Date")  > $SALIDA
for s in $(seq 1 9); do  
	ESTACION="ENP"$s
	FILEST="/LUSTRE/tmp/temp/estaciones-ENP/*"$ESTACION"-L1.CSV"
	#obtener latitud y longitud de las cabeceras de cada archivo
	#la latitud y longitud son las mismas para cada estación, así que no es necesario sacarlas por fecha
	#esto también evita información faltante en caso de que no tengamos el archivo para la fecha	
	echo "Obteniendo coordenadas de la estación $ESTACION"
	#echo $FILEST
	lat=$(head $FILEST | grep -w 'Lat' | head -n 1 | cut -d, -f 1 | cut -d ' ' -f 2)
	#echo $lat
	lon=$(echo "-1 * $(head $FILEST | grep -w 'Lon' | head -n 1 | cut -d, -f 2 | cut -d ' ' -f 3)" | bc)
	#echo $lon
	echo "Trabajando con los registros de $ESTACION";
	for m in $(seq 1 12); do
		MONTH=$(printf "%02d\n" $m)
		Date="2022-"$MONTH
		echo "Obteniendo información para la fecha $Date"
		FILE=$CAM$Date"-"$ESTACION"-L1.CSV"
		#echo $FILE
		if test -f $FILE
		then
			#obtener temperatura máxima de la segunda columna tras quitar los encabezados
			echo "Obteniendo temperatura máxima para la fecha $Date en la estación $ESTACION"
			Tmax=$(tail -n+10  $FILE | cut -d, -f 2 | sort -n | tail -n 1)
			if test "$Tmax" = "null"
			then
			#agregar una condición de que, si todos los valores de temperatura del archivo son null, la variable sea "Sin Información" 
				echo "No existe información de temperatura para la fecha $Date en $ESTACION."
				#primero quería que le pusiera "S/I (sin información), pero eso choca con el script de python que trata de convertir el dato a un número flotante, así que veré si dejarlo vacío (para que no sea 0) es una mejor idea
				Tmax=""
				#Tmax="S/I"
			#else
				#echo "Temperatura máxima: $Tmax"
			fi
			#obtener la precipitación máxima de la novena columna tras quitar los encabezados
			echo "Obteniendo precipitación máxima para la fecha $Date en la estación $ESTACION"
			Pmax=$(tail -n+10  $FILE | cut -d, -f 9 | sort -n | tail -n 1)
			#misma condición para la precipitación máxima
			if test "$Pmax" = "null"
			then
				echo "No existe información de precipitación para la fecha $Date en $ESTACION."
				Pmax=""
			#else
				#echo "Precipitación máxima: $Pmax"
			fi
		else
			#agregar un mensaje si no se encuentra el archivo para cierto mes de cierta estación, y hacer que las variables de temperatura y precipitación sean "Sin información"
			#la fecha y coordenadas no tienen que ser S/I, porque se pueden obtener de los otros archivos
			echo "No existe información para la fecha $Date en la estación $ESTACION"
			#Tmax="S/I"
			Tmax=""
			Pmax=""
		fi
		paste -d "," <(echo "$ESTACION") <(echo "$lon") <(echo "$lat") <(echo "$Tmax") <(echo "$Pmax") <(echo "$Date")  >> $SALIDA 

	done

done


paste -d "," <(echo "Estacion") <(echo "Longitud") <(echo "Latitud") <(echo "Tmax") <(echo "Pmax") <(echo "Date")  > datos_estaciones.csv
tail +2  $SALIDA | sort -t , -k 6 >> datos_estaciones.csv




