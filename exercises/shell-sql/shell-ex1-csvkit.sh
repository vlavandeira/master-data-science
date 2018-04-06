#!/usr/bin/zsh

#Usando CSVKIT
#"Exercise 1: Use grep to extract all 7x7 or 3xx (where x can be any number) airplane models from optd_aircraft.csv."

#Filtro mediante una expresión regular sobre la columna "model" y muestro el resultado

csvgrep -d "^" ~/Data/opentraveldata/optd_aircraft.csv -c model -r '.*(7[0-9]7|3[0-9]{2}).*' | csvlook | less -S
