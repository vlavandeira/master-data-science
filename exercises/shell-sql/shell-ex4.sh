#!/usr/bin/zsh

#"Exercise 4: Find all files with txt extension that have word “Science” (case unsensitive) inside the content. Print file path and the line contaning the (S/s)cience word. " 

#Busco a partir de mi HOME. Los parámetros de grep me permiten mostrar el nombre del fichero y gestionar mayúsculas/minúsculas
find ~ -name "*.txt" -type f -exec grep -H -i science {} \;
 
