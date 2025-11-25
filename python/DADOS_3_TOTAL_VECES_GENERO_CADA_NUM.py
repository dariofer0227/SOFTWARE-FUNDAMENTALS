import random
random.seed()   #Prepare random number generator

lan1 = 0
lan2 = 0
lan3 = 0
lan4 = 0
lan5 = 0
lan6 = 0
print("ingresa el número de veces que quieres lanzar:")
lanzamiento = int(input())
for contador in range(1, lanzamiento + 1, 1):
    dado = int(random.random() * 6) + 1
    if dado == 1:
        lan1 = lan1 + 1
    if dado == 2:
        lan2 = lan2 + 1
    if dado == 3:
        lan3 = lan3 + 1
    if dado == 4:
        lan4 = lan4 + 1
    if dado == 5:
        lan5 = lan5 + 1
    if dado == 6:
        lan6 = lan6 + 1
print("Resultados:")
print("1 salió:",lan1)
print("2 salió:",lan2)
print("3 salió:",lan3)
print("4 salió:",lan4)
print("5 salió:",lan5)
print("6 salió:",lan6)
