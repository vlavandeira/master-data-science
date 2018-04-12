#Función que acepta tres números y devuelve el mayor
def largest(x,y,z):                                                                                    
    if x>=y and x>=z:                                                                                  
        return x                     
    elif y>=x and y>=z:                       
        return y
    else:
        return z

