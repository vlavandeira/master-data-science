#!/usr/bin/zsh

#Usando CSVKIT
#"Exercise 3: How many optd_por_public.csv columns have “name” as part of their name? What are their numerical positions?"

csvcut -d '^' -n < ~/Data/opentraveldata/optd_por_public.csv | csvgrep -c 1 -m "name"
 
