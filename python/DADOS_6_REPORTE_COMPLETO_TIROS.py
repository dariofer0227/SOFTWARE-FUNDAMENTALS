import random
import sys

def lanzar_dado_interactivo():
    
    # Inicialización de contadores
    tiros_efectuados = 0
    suma_total = 0
    total_pares = 0
    total_impares = 0
    
    print("--- INICIO JUEGO DE DADOS ---")
    
    # Un bucle que Continúa hasta que el jugador decida no continuar
    while True:
        respuesta = input("\n¿Desea tirar el dado ahora? (S/N): ").upper()
        
        if respuesta == 'S':
            tiros_efectuados += 1
            
            # 1. Lanzamiento del dado (Valor entre 1 y 6)
            dado = random.randint(1, 6)
            
            print(f"** ¡Tiro #{tiros_efectuados}: Salió el {dado}! **")
            
            # 2. Actualizo contadores y suma
            suma_total += dado
            
            # 3. Valido si es PAR o IMPAR
            if dado % 2 == 0:
                total_pares += 1
                print("El número es PAR.")
            else:
                total_impares += 1
                print("El número es IMPAR.")

        elif respuesta == 'N':
            print("\nFinalizando el juego por decisión del jugador.")
            break # Sale del bucle 
        
        else:
            print("Respuesta no válida. Por favor, ingrese 'S' para Sí o 'N' para No.")
            
    # REPORTE FINAL
    print("\n==================================")
    print("   REPORTE COMPLETO DE TIROS")
    print("==================================")
    print(f"Total de tiros efectuados: {tiros_efectuados}")
    print(f"Suma total de los tiros:   {suma_total}")
    print(f"Total de pares generados:  {total_pares}")
    print(f"Total de impares generados: {total_impares}")
    print("==================================")

# Ejecución del programa
lanzar_dado_interactivo()