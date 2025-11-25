import random

def lanzar_dado():
    dado = random.randint(1, 6)
    if dado % 2 == 0:
        print("El dado con número", dado, "es PAR")
    else:
        print("El dado con número", dado, "es IMPAR")

lanzar_dado()
