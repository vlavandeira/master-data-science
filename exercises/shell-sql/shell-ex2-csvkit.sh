#!/usr/bin/zsh

#Usando CSVKIT
#"Exercise 2: Use grep to obtain the number of airlines with prefix “aero” in their name from optd_airlines.csv"

#Entiendo "prefix aero" como las aerolíneas que comienzan tanto por aero como Aero (y no en otra parte del nombre)
#Busco el patrón en la columna "name" y luego corto esa columna, quito duplicados y hago recuento

csvgrep -d "^" ~/Data/opentraveldata/optd_airlines.csv -c name -r '^[Aa]ero' | csvcut -c name | tail -n +2 | csvsort | uniq | wc -l
