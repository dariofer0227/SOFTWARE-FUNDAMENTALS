# Reto_Condicional_1_Dados_Aleatorios

# 1. Recordar importar el módulo random
import random

print("--- PARA LANZAR LOS DADOS ---")

# ----------------------------------------------------
# PASO 1: Poner la Entrada Opción de Inicio
# ----------------------------------------------------
opcion = input("Presiona S para INICIAR el Lanzamiento de los Dados: ")

if opcion.upper() == "S":
    
    # 2. Generación de resultados aleatorios por el módulo random, pilas definir los valores entre 1 y 6
    dado_1 = random.randint(1, 6) 
    dado_2 = random.randint(1, 6)
    
    print("\n--- RESULTADOS DEL LANZAMIENTO DE LOS DADOS ---")
    print(f"Dado 1: {dado_1}")
    print(f"Dado 2: {dado_2}")

    # ----------------------------------------------------
    # PASO 3: resultado de la Partida (YOU WIN / GAME OVER)
    # ----------------------------------------------------
    if dado_1 == dado_2:
        print("¡YOU WIN! ¡Los dados son iguales!") 
    else:
        print("GAME OVER. Los dados son diferentes.") 

    print("\n--- DETALLE DE LOS DADOS ---")

    # ----------------------------------------------------
    # PASO 4: Validación de Par o Impar para cada dado
    # ----------------------------------------------------

    # Para el Dado 1
    if dado_1 % 2 == 0:
        print(f"Dado 1 ({dado_1}): PAR") 
    else:
        print(f"Dado 1 ({dado_1}): IMPAR") 

    # Para el Dado 2
    if dado_2 % 2 == 0:
        print(f"Dado 2 ({dado_2}): PAR") 
    else:
        print(f"Dado 2 ({dado_2}): IMPAR")
        
else:
    print("Programa finalizado. ¡Hasta pronto!")