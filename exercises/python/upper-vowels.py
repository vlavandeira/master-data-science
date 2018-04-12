#Función que recibe una cadena de texto y pone las vocales en mayúscula y las consonantes en minúscula
def upper_vowels_v1(s):
    res=""
    for letra in s:
        if letra in "aeiou":
            res+=letra.upper()
        else:
            res+=letra.lower()
    return res

#Misma funcionalidad con cálculo lambda
def upper_vowels_v2(s):
    r=list(map(lambda x : x.upper() if x in "aeiou" else x.lower(),s))
    return "".join(r)
