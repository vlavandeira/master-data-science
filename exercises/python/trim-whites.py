#Limpiar líneas con blanco al final y líneas vacías del fichero Finn2.txt
f=open("Finn2.txt","r",encoding="latin-1")
texto=f.read()
lineas=texto.splitlines()
final=""
for linea in lineas:
    if len(linea.strip())!=0:
        final=final+"\n"+linea.strip()

