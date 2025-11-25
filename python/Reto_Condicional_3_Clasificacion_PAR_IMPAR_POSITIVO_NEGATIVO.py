# Reto condicional 3: Validar Par/Impar y Positivo/Negativo

# ----------------------------------------------------
# PASO 1: Solicitar el número
# ----------------------------------------------------

print("--- CLASIFICACIÓN NÚMERO COMO PAR-IMPAR Y POSITIVO-NEGATIVO ---")
try:
    numero = int(input("Por favor, ingresa un número entero (positivo o negativo): "))
except ValueError:
    print("Error: La entrada no es un número entero válido.")
    exit()

# ----------------------------------------------------
# PASO 2: Validar Signo y Si es Par o Impar
# ----------------------------------------------------

resultado = ""

if numero == 0:
    resultado = "CERO (es un número PAR, Positivo)."
else:
    # 1. Determinar el Signo (Positivo o Negativo)
    if numero > 0:
        signo = "POSITIVO"
    else:
        signo = "NEGATIVO"

    # 2. Determinar si es (Par o Impar)
    if numero % 2 == 0:
        paridad = "PAR"
    else:
        paridad = "IMPAR"

    # [cite_start]3. Combinar el resultado [cite: 9]
    resultado = f"{paridad} {signo}"


print(f"\nEl número {numero} es: {resultado}")