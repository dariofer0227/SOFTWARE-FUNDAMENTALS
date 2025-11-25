# Reto_Condicional_5_Salario_Total

# --- CONSTANTE ---
ANIO_ACTUAL = 2025 
LARGO_MINIMO_NOMBRE = 8 # Para evitar Errores definir la constante de 8 caracteres

print("--- REGISTRO Y CÁLCULO DE SALARIO ---")

# 1. SOLICITUD DE DATOS Y VALIDACIÓN DE TEXTO (NOMBRES/APELLIDOS)
# Ojo Usamos un bucle while para forzar que el usuario ingrese el dato correctamente.
while True:
    tipo_id = input("Tipo de identificación (CC, PS, CE, CI): ")
    nombre_completo = input(f"Ingrese Nombre y Apellido (mínimo {LARGO_MINIMO_NOMBRE} letras, sin números): ")
    
    # Validación 1: Largo mínimo de 8 caracteres
    if len(nombre_completo) < LARGO_MINIMO_NOMBRE:
        print(f"ERROR: La entrada debe tener al menos {LARGO_MINIMO_NOMBRE} caracteres.")
        
    # Validación 2: Que solo contenga letras y espacios (isspace/isalpha)
    # isalpha() verifica que TODO sean letras. Añadimos un chequeo simple para espacios.
    elif not nombre_completo.replace(" ", "").isalpha(): 
        print("ERROR: No debe ingresar números o símbolos.")
        
    else:
        break # Si pasa ambas validaciones, salimos del bucle.

# Otros datos (sin validación de bucle para simplificarn por el momento)
genero = input("Género (M/F): ").lower()
direccion = input("Dirección: ")
telefono = input("Teléfono: ")

# 2. VALIDACIÓN AÑO DE NACIMIENTO Y CÁLCULO DE EDAD
while True:
    try:
        anio_nacimiento = int(input("Año de nacimiento: "))
        edad = ANIO_ACTUAL - anio_nacimiento
        
        # Validación de la edad (si es menor, sale del programa inmediatamente)
        if edad < 18:
            print(f"\n¡INVALIDO! El usuario es menor de edad ({edad} años). No se puede continuar.")
            exit() # ¡Detiene la ejecución del script aquí!
        else:
            break # Es mayor de edad, podemos continuar
            
    except ValueError:
        print("ERROR: Por favor, ingrese un año válido (solo números enteros).")

# 3. SOLICITUD DEL SALARIO (Continuamos solo si es mayor de edad)
salario = float(input("Salario: "))
aumento = 0 # Inicializamos el aumento segun genero y salario inicial

# 4. CÁLCULO DEL AUMENTO (Lógica Salarial)
# Rango 1: Salario menor o igual a 1200000
if salario <= 1200000:
    if genero == "f":
        aumento = salario * 0.10
    else: # Asumimos que es hombre ("m")
        aumento = salario * 0.08

# Rango 2: Salario entre 1200000 y 2000000
elif salario > 1200000 and salario < 2000000:
    aumento = salario * 0.05

# Rango 3: Salario mayor o igual a 2000000
else: # salario >= 2000000
    if genero == "f":
        aumento = salario * 0.03
    else: # Asumimos que es hombre ("m")
        aumento = salario * 0.025

# 5. SE MUESTRAN RESULTADOS
salario_final = salario + aumento

print("\n------ RESULTADOS DE SALARIO TOTAL ------")
print(f"Nombre Completo: {nombre_completo}")
print(f"Edad: {edad} años")
print(f"Salario inicial: ${salario:,.2f}")
print(f"Monto del Aumento: ${aumento:,.2f}")
print(f"Salario final: ${salario_final:,.2f}")