Para esta actividad se uso una computadora de mano que posee 64mb y 4Gb de RAM. Durante este deber se realizó un script que permita el conteo de filas y columas de archivos txt junto con el uso del comando for para hacer una lectura continua. Inicialmente solo se uso comandos como wc -l para contar filas y grep -o para las columnas, luego fuer necesario usar echo para diferenciar las canidades y for para generar un loop. De este modo, se generó con previo aviso los scripts y archivos txt desde GitBash. Posterior a ello fue necesario subir los archivos uno desde Atom y otro desde GitHub a nuestro repositorio. Cabe recalcar que en mi caso primero yo verifique que el script corriera de manera correcta para poderla subir al repositorio, es por ello que no se ven cambios o versiones significantes. Además los bashes o resultados de los comandos fueron guardados en un archivo txt con el mismo nombre, donde se puede evidenciar los resultados del script .sh.*

Git Bash, Git Hub, y Atom son progrmas bio informaticos que mediante comandos nos permiten optimizar tiempo y operaciones de revisión dentro de una carpeta y/o archivo. Esta tarea tiene como fin generar un script (serie de comandos) que sea capaz de contabilizar las filas y columnas de cada uno de los archivos .txt de la carpeta Saavedra.

**Generar los archivos**

Para generar archivos usamos el comanod *touch* junto con el nombre del archivo, en mi caso yo generé dos archivos 

**1.-** Deber01A.sh --> Este es un script para el literal A del deber que dice que lea las filas y las columnas de un único archivo de  Saavedra

**2.-** Deber01B.sh --> Que es un script que utiliza un loop para contar de manera continua las filas y columnas de los archivo .txt de la carpeta Saavedra


**Actividad 01**

Una vez generado el archivo abrimos el **nano** aquí vamos a escribir nuestros comando para que se ejecute la acción. En este caso el comando ocupado fue


*#!bin/bash*

*cd ../../../

*cd git/sandbox/GBI6_GITHUB/

*echo "Nombre del archivo:" n1.txt

*echo "Número de filas: "

*wc -l | cut -f 1 $1

*echo "Número de columnas: "

*head -n 1 n1.txt |grep -o " " | wc -l $2

Se puede ingresar al archivo Deber01A.sh para una decripción más detallada de cada uno de los comandos. Sin embargo, como se puede observar se puede poner el nombre del archivo de manera directa ya que es un único archivo el que se debe leer

**Actividad 02**

De igual manera abrimos el **nano** del archivo Deber01B.sh creado anteriormente. Dentro de este el codigo que se escribe es 

*#!bin/bash

*cd ../../../

*cd git/sandbox/GBI6_GITHUB

*for file in Saavedra

*do echo "Nombre del archivo:"

*wc -l $file | cut -f 2 $1

*echo "Npumero de filas:"

*wc -l $file | cut -f 1 $2

*echo "Número de columnas"

*head -n 1 $file | grep -o " " | wc -l $3

*done

En este archivo se puede notar que usamor un comando for, este comando es un comando repetitivo que nos permite leer cada uno de los archivos de forma individual. Y como es notorio se uso el comnaod de la Actividad 01 como una base y se modifico. De la misma manera, si se requiere una explicación más a detalle esta se encuentra en el documento Deber1B.sh

**Generador de los archivos texto**

Los archivos textos se generaron con el mismo nombre pero con difernte terminal, es decir ahora son .txt, estos documentos no guardan los comando o su script, al contrario guardan las respuestas de correr el script para ello usamos el sigueinte codigo según la actividad que corresponda

*bash Deber01A.sh > Deber01A.txt

Este archivo txt va a guardar las respuestas generadas por el script, y pueden encontradas en el repositorio.

**Envio de archivos**

Tanto como Atom, Git Bash y Git Hub estan enlazadas entre si, por lo cual se puede generar un repositorio de la nube y esta señal puede ser receptada por los otrs programas o visceversa. 

Para Atom y Git Bash fue necesario primero un enlace de conección esto se lo hizo a parte de un token y el usuario y contraseña, respectivamente.

Una vez enlazado en Atom se abre los archivos generados, y de manera automática al lado derecho de la pantalla aparece la opcion de subir a Git Hub, esto se lo hace junto con un commentario del cambio que se realice o a que hace referencia. Posteriormente, en los botones inferiores aparecia la opcion push la cual nos permite subir la información desde el programa a la nube.

Por otro lado para Git Bash fue necesario una serie de codigos que son:

*git add Deber01A.sh

*git commit -m "Deber enviado desde Git Bash"

*git push

De esta manera, *add* puede agregar un archivo a la nube, *commit -m* hace el comentario respctivo del cambio dado, y *push* envia los datos del programa hacia la nube.

En conclusión, lor programas como Atom, Git Hub y Git Bash mantienen una relación de archivos entre ellos, esto facilita el control de versiones de cada uno de los archivos del repositorio.
