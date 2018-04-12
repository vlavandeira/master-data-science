#Función que devuelve la longitud, número de líneas y número de palabras de una cadena de caracteres
def wc(s):
    t=len(s)
    w=len(s.replace("\n"," ").split(" "))
    l=len(s.splitlines())
    print("Longitud:"+str(t)+" Palabras:"+str(w)+" Lineas:"+str(l))
