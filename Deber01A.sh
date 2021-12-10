#!/bin/bash

#Escribir el nombre del documento
echo "Nombre del documento: " n1.txt
#FILAS

#Escribir el texto para diferenciar
echo "Número de filas: "
#Contabilizar las filas
wc -l n1.txt |cut -d " " -f 1 $1

#COLUMNAS

#Escribir el texto para diferenciar
echo "Número de columnas: "
#Tomar la primera linea del archivo
#Contabilizar los espacios, sabiendo que el número de espacios es igual al numero de caracteres en la fila, porque al final de la fila hay un espacio
#grep -o toma y ordena los caracteres en filas
# contabilizar las filas
head -n 1 n1.txt | grep -o " " | wc -l $2
