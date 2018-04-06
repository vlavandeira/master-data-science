#!/usr/bin/zsh

#"Exercise 1: Use grep to extract all 7x7 or 3xx (where x can be any number) airplane models from optd_aircraft.csv."

#Podría usar cut para quedarme únicamente con el campo "modelo" pero no quiero perder el resto de información así que aplico la expresión regular sobre la línea completa para identificar el patrón deseado únicamente en la tercera columna (modelo)
#Añado [^0-9] para asegurar que no hay más números después de 7x7 o 3xx (p.ej: no tolero el modelo 3000)

cat ~/Data/opentraveldata/optd_aircraft.csv | tail -n +2 | grep -E ".*\^.*\^.*(7[0-9]7|3[0-9]{2})[^0-9].*\^"
