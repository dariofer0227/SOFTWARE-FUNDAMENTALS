import random

def pares_impares():
    n = int(input("¿Cuántos tiros quiere hacer?: "))
    pares = 0
    impares = 0

    for i in range(n):
        dado = random.randint(1,6)
        if dado % 2 == 0:
            pares += 1
        else:
            impares += 1

    print("Total Pares:", pares)
    print("Total Impares:", impares)

pares_impares()
