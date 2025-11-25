Proceso Reto_Condicional_2_Validar_numero_Par_Impar
		
		Definir numero Como Entero;
		
		Escribir "--- VALIDACIÓN DE PAR O IMPAR ---";
		Escribir "Ingresa un número entero (positivo o negativo): ";
		Leer numero;
		
		Si (numero MOD 2) = 0 Entonces
			Escribir "El número ", numero, " es PAR.";
		SiNo
			Escribir "El número ", numero, " es IMPAR.";
		Fin Si
		
FinProceso

