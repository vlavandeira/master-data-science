#Función que elimina el carácter n-ésimo de la cadena pasada como primer argumento
#Control de cadena vacía -> WARNING
#Control de índice demasiado grande -> ERROR
def removechar(s,n):
    if s is None or len(s)==0:
        print("Warning: First parameter is empty")
        return None
    else:
        if n>len(s):
            print("Error: Cannot access the nth character")
            return -1
         else:
            return s[:n-1]+s[n:]

