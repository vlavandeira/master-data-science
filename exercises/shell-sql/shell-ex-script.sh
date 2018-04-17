#!/bin/sh
#Se espera un argumento conteniendo el nombre o ruta absoluta del fichero csv a analizar. Mejora plausible: control de errores
inputfile=$1
#Se devuelven todos los datos de un avión con el mayor número de motores. Mejora plausible: gestionar cuando hay varios aviones con el mayor número de motores
csvsort -d '^' -c nb_engines -r --blanks $1 | head -2 | csvlook


