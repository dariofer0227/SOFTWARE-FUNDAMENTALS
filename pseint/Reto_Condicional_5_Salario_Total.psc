Proceso Reto_Condicional_5_Salario_Total
	// Definir las variables y la constante
	Definir ANIO_ACTUAL Como Entero;
	ANIO_ACTUAL <- 2025;
	Definir nombre_completo, genero, id_tipo, direccion, telefono Como Cadena;
	Definir anio_nacimiento, edad, largo, LARGO_MINIMO Como Entero;
	Definir salario, aumento, salario_final Como Real;
	LARGO_MINIMO <- 8;
	Escribir '--- REGISTRO Y CÁLCULO DE SALARIO ---';
	// 1. SOLICITUD DE DATOS Y VALIDACIÓN DE TEXTO (NOMBRES/APELLIDOS) CON BUCLE
	Repetir
		Escribir 'Ingrese Nombre y Apellido (mínimo ', LARGO_MINIMO, ' letras): ';
		Leer nombre_completo; // Constante para el largo mínimo
		largo <- Longitud(nombre_completo);
		Si largo<LARGO_MINIMO Entonces
			Escribir 'ERROR: La entrada debe tener al menos ', LARGO_MINIMO, ' caracteres.';
		FinSi
	Hasta Que largo>=LARGO_MINIMO
	// Otros datos (sin validación de bucle para simplificarn por el momento)
	Escribir 'Tipo de identificación (CC, PS, CE, CI): ';
	Leer id_tipo;
	Escribir 'Género (M/F): ';
	Leer genero;
	Escribir 'Dirección: ';
	Leer direccion;
	Escribir 'Teléfono: ';
	Leer telefono;
	// 2. VALIDACIÓN INMEDIATA DE MENOR DE EDAD (DETIENE EL PROGRAMA)
	Repetir
		Escribir 'Año de nacimiento: ';
		Leer anio_nacimiento;
		edad <- ANIO_ACTUAL-anio_nacimiento;
		Si edad<18 Entonces
			Escribir '';
			Escribir '¡INVALIDO! El usuario es menor de edad (', edad, ' años).';
			Escribir 'No se puede continuar.';
		FinSi
	Hasta Que edad>=18
	// 3. Solicitud y Cálculo (si el programa no se detuvo)
	Escribir 'Salario: ';
	Leer salario;
	aumento <- 0;
	// CÁLCULO SALARIAL (Estructura Si-SinoSi-FinSi)
	// RANGO 1: Salario <= 1200000
	Si salario<=1200000 Entonces // El bucle solo termina si es mayor de 18.
		Si (Mayusculas(genero)='F') Entonces
			aumento <- salario*0.10;
		SiNo
			aumento <- salario*0.08;
		FinSi
		// RANGO 2: 1200000 < Salario < 2000000
	SiNo
		Si (salario>1200000 Y salario<2000000) Entonces
			aumento <- salario*0.05;
			// RANGO 3: Salario >= 2000000
		SiNo
			Si (Mayusculas(genero)='F') Entonces
				aumento <- salario*0.03;
			SiNo
				aumento <- salario*0.025;
			FinSi
		FinSi
		// 4. Resultados
		salario_final <- salario+aumento;
		Escribir '';
		Escribir '------ RESULTADO DE SALARIO TOTAL ------';
		Escribir 'Nombre Completo: ', nombre_completo;
		Escribir 'Edad: ', edad, ' años';
		Escribir 'Salario inicial: ', salario;
		Escribir 'Monto del Aumento: ', aumento;
		Escribir 'Salario final: ', salario_final;
	FinSi
FinProceso
