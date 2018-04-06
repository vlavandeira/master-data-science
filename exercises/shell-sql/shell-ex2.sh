#!/usr/bin/zsh

#"Exercise 2: Use grep to obtain the number of airlines with prefix “aero” in their name from optd_airlines.csv"

#Entiendo "prefix aero" como las aerolíneas que comienzan tanto por aero como Aero (y no en otra parte del nombre)
#Elimino la cabecera y posibles duplicados

cut -d "^" -f 8 < ~/Data/opentraveldata/optd_airlines.csv | tail -n +2 | grep -E "^[Aa]ero" | sort | uniq | wc -l 
