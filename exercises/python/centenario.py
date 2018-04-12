#Función que acepta el nombre de una persona y un año de nacimiento y dice en qué año la persona cumplirá 100 años
def centenario(n,y):       
    if not isinstance(y,int):
        y=int(y)
    print(n+' tendrá 100 años en '+str(y+100))

