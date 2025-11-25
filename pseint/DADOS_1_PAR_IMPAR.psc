Proceso DADOS_1_PAR_IMPAR
	// Definición de variables
	Definir dado Como Entero;
	Escribir '--- SIMULACIÓN DE LANZAMIENTO DE UN DADO ---';
	// 1. Generar el número aleatorio (Equivalente a random.randint(1, 6) en Python)
	dado <- Aleatorio(1,6);
	Escribir 'El resultado del dado es: ', dado;
	// 2. Validación de Par o Impar
	Si (dado MOD 2)=0 Entonces
		Escribir 'El dado con número ', dado, ' es PAR';
	SiNo
		Escribir 'El dado con número ', dado, ' es IMPAR';
	FinSi
FinProceso
