import random
random.seed()   #modulo random inicializado

print("¿Cuántas veces quieres tirar los dados? ")
tiros = int(input())
contador = 0
dado1 = 0
dado2 = 0
while not dado1 == 6 and dado2 == 6 or contador == tiros:
    contador = contador + 1
    dado1 = int(random.random() * 7)
    dado2 = int(random.random() * 7)
    print("tiro" + str(contador) + ": " + str(dado1) + " " + str(dado2))
if dado1 == 6 and dado2 == 6:
    print("¡Salió par de seis en el ultimo tiro " + str(contador) + "!")
else:
    print("Se completaron los " + str(tiros) + " tiros sin obtener par de seis.")
