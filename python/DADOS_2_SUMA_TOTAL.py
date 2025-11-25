# ===============================================
# DADOS_2_SUMA_TOTAL_DADOS
# ===============================================

# Definición de variables
suma = 0

print("--- LANZAMIENTOS DADO ---")

# 1. VALIDACIÓN DE LA CANTIDAD DE TIROS
while True:
    n = int(input("¿Cuántos tiros desea realizar? (Debe ser un número positivo): "))
    
    if n > 0:
        break
    else:
        print("ERROR: Debe ingresar un número positivo de tiros.")

# 2. SIMULACIÓN DE LOS N LANZAMIENTOS
for i in range(1, n + 1):
    # Generar número aleatorio entre 1 y 6
    dado = int((6 - 1 + 1) * __import__("random").random() + 1)
    
    # Acumular
    suma = suma + dado
    
    print("Tiro", i, ": ", dado)

# 3. RESULTADO FINAL
print("\n------ RESULTADO FINAL ------")
print("Total de tiros realizados:", n)
print("La suma total de todos los tiros es:", suma)
