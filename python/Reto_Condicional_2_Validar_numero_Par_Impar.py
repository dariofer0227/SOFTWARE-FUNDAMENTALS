# Reto condicional 2: Validar Número Par o Impar

# ----------------------------------------------------
# PASO 1: Solicitar el número al usuario
# ----------------------------------------------------

print("--- VALIDACIÓN DE PAR O IMPAR ---")
# Usamos int() para asegurar que la entrada sea un número entero
try:
    numero_entero = int(input("Por favor, ingresa un número entero (positivo o negativo): "))
except ValueError:
    print("Error: La entrada no es un número entero válido.")
    # Visualmnte Se mira bien si el script se detiene cuando la entrada es un numero decimal o texto
    exit() 

# ----------------------------------------------------
# PASO 2: Validar si es PAR o IMPAR
# ----------------------------------------------------

# El operador módulo (%) nos da el residuo de la división.
# Si el residuo de dividir entre 2 es 0, es PAR.
if numero_entero % 2 == 0:
    print(f"El número {numero_entero} es PAR.")
else:
    print(f"El número {numero_entero} es IMPAR.")