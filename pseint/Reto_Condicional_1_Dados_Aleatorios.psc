Proceso Reto_Condicional_1_Dados_Aleatorios
	// Definimos las variables
	Definir dado1, dado2 Como Entero;
	Definir opcion Como Cadena;
	Escribir 'Presiona S para INICIAR el Lanzamiento de los Dados:';
	Leer opcion;
	Si (opcion='S' O opcion='s') Entonces
		// 1. Generación de los resultados aleatorios
		dado1 <- Aleatorio(1,6);
		dado2 <- Aleatorio(1,6); // número al azar entre 1 y 6
		Escribir ''; // otro número al azar entre 1 y 6
		Escribir '--- RESULTADOS DEL LANZAMIENTO ---';
		Escribir 'Dado 1: ', dado1;
		Escribir 'Dado 2: ', dado2;
		Escribir '';
		// 2. Validación y Resultado de la Partida
		Si dado1=dado2 Entonces
			Escribir '¡YOU WIN!';
		SiNo // Siempre y cuando los dados son iguales
			Escribir 'GAME OVER';
		FinSi // Siempre y cuando los dados son diferentes
		Escribir '';
		Escribir '--- DETALLE DE LOS DADOS ---';
		// 3. Validación de Par o Impar para Dado 1
		Si (dado1 MOD 2)=0 Entonces
			Escribir 'Dado 1 (', dado1, '): PAR';
		SiNo
			Escribir 'Dado 1 (', dado1, '): IMPAR';
		FinSi
		// 4. Validación de Par o Impar para Dado 2
		Si (dado2 MOD 2)=0 Entonces
			Escribir 'Dado 2 (', dado2, '): PAR';
		SiNo
			Escribir 'Dado 2 (', dado2, '): IMPAR';
		FinSi
	SiNo
		Escribir 'Programa finalizado. ¡Hasta pronto!';
	FinSi
FinProceso
