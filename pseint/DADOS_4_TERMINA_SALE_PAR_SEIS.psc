Proceso DADOS_4_TERMINA_SALE_PAR_SEIS
	// Definición de variables
	Definir tiros, contador, dado1, dado2 Como Entero;
	contador <- 0;
	dado1 <- 0;
	dado2 <- 0;
	Escribir '--- DADO CON PAR DE SEIS ---'; // Inicializamos dado1 y dado2
	// 1. VALIDACIÓN DE LA CANTIDAD DE TIROS (Validación de entrada)
	Repetir
		Escribir '¿Cuántas veces quiere tirar los dados? (Número positivo):';
		Leer tiros;
		Si tiros<=0 Entonces
			Escribir 'ERROR: La cantidad de tiros debe ser mayor que cero.';
		FinSi
	Hasta Que tiros>0
	Escribir 'Iniciando ', tiros, ' tiros o hasta obtener un par de seis...';
	Escribir '';
	// 2. BUCLE PRINCIPAL (Estructura Mientras-Hacer)
	// El bucle CONTINÚA mientras NO se obtenga par de seises Y el contador sea menor al límite.
	Mientras  NO (dado1=6 Y dado2=6) Y (contador<tiros) Hacer
		contador <- contador+1;
		// Generamos los valores aleatorios
		dado1 <- Aleatorio(1,6);
		dado2 <- Aleatorio(1,6); // Incrementamos el contador
		Escribir 'Tiro ', contador, ': ', dado1, ' y ', dado2;
	FinMientras
	// 3. VALIDACIÓN FINAL PARA DETERMINAR POR QUÉ TERMINÓ EL BUCLE
	Escribir '';
	Escribir '------ RESULTADO DEL JUEGO ------';
	Si dado1=6 Y dado2=6 Entonces
		Escribir '¡Salió par de seis en el ultimo tiro ', contador, '!';
	SiNo
		Escribir 'Se completaron los ', tiros, ' tiros sin obtener par de seis.';
	FinSi
FinProceso
