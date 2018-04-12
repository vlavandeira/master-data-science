#Funcion que recibe una lista de cadenas como primer argumento y devuelve las que contienen el cáracter indicado como segundo argumento
def filtrado(l,c):
    return list(filter(lambda x : c in x,l))
