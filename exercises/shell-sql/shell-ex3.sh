#!/usr/bin/zsh

#"Exercise 3: How many optd_por_public.csv columns have “name” as part of their name? What are their numerical positions? (hint: use seq and paste)"

#Separo los campos de la cabecera por líneas en un fichero temporal
head -1 ~/Data/opentraveldata/optd_por_public.csv | tr "^" "\n" > names

#Creo una secuencia (longitud arbitraria) para las posiciones
seq 50 > positions

#Pego el número de posición con cada campo y filtro los que contienen "name"
paste -d ":" positions names | grep name

#También muestro el recuento al final
echo "--------------------\nHay `paste -d ":" positions names | grep name | wc -l` columnas con \"name\""

#Borro fichero temporales
rm names positions
 
