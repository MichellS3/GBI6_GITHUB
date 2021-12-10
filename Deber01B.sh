#!/bin/bash

#Cambiar la ubicación de lectura
cd ../../../
cd unix/data/Saavedra2013

#Generamos el loop, este loop leerá cada archivo .txt dentro de Saavedra 2013
for file in *.txt
do

#Imprimir el nombre del documento
echo "Nombre del documento:"
#wc-l cuenta el numero de filas o lineas
#cut corta  la primera columna que correspone al valor numero
wc -l $file | cut -d " " -f 2 $1

#FILAS
#Echo nos permite imprimir el texto
echo "Número de filas: "
#wc -l cuenta las filas o lineas de cada archivo .txt
#cut corta el valor de la fila 1 que es el numero de líneas
wc -l $file | cut -d " " -f 1 $2

#COLUMNAS
#Echo nos permite imprimir el texto
echo "Número de columnas: "
#Head es para tomar la primera fila del archivo, 
#grep nos permite transformar el caracter " " en  caracteres en lineas, 
#por lo que wc -l cuenta las lineas
head -n 1 $file | grep -o " " |wc -l $3
#Cerramos el loop
done
