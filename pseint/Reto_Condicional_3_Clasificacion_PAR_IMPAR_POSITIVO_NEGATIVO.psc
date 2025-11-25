Proceso Reto_Condicional_3_Clasificacion_PAR_IMPAR_POSITIVO_NEGATIVO
	Definir numero Como Entero;
	Escribir '--- CLASIFICACIÓN NÚMERO COMO PAR-IMPAR Y POSITIVO-NEGATIVO ---';
	Escribir 'Ingresa un número entero (positivo o negativo): ';
	Leer numero;
	Si numero=0 Entonces
		Escribir 'El número es CERO POSITIVO.';
	SiNo
		// PRIMERA DECISIÓN: ¿Es Positivo o Negativo?
		Si numero>0 Entonces
			// Es POSITIVO
			// SEGUNDA DECISIÓN: ¿Es Par o Impar?
			Si (numero MOD 2)=0 Entonces
				Escribir 'El número ', numero, ' es PAR POSITIVO.';
			SiNo
				Escribir 'El número ', numero, ' es IMPAR POSITIVO.';
			FinSi
		SiNo
			// Es NEGATIVO
			// TERCERA DECISIÓN: ¿Es Par o Impar?
			Si (numero MOD 2)=0 Entonces // Si no es mayor que 0, debe ser negativo
				Escribir 'El número ', numero, ' es PAR NEGATIVO.';
			SiNo
				Escribir 'El número ', numero, ' es IMPAR NEGATIVO.';
			FinSi
		FinSi
	FinSi
FinProceso
