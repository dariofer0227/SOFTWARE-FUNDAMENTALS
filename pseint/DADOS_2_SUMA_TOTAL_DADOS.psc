Proceso DADOS_2_SUMA_TOTAL_DADOS
	// Definición de variables
	Definir n, i, dado, suma Como Entero;
	suma <- 0;
	Escribir '--- LANZAMIENTOS DADO ---'; // Inicializamos la variable acumuladora
	// 1. VALIDACIÓN DE LA CANTIDAD DE TIROS (Bucle Repetir-Hasta Que)
	Repetir
		Escribir '¿Cuántos tiros desea realizar? (Debe ser un número positivo): ';
		Leer n;
		Si n<=0 Entonces
			Escribir 'ERROR: Debe ingresar un número positivo de tiros.';
		FinSi
	Hasta Que n>0
	// 2. SIMULACIÓN DE LOS N LANZAMIENTOS (Bucle Para)
	Para i<-1 Hasta n Con Paso 1 Hacer // El bucle se repite mientras n sea menor o igual a 0
		// Generar un número aleatorio entre 1 y 6
		dado <- Aleatorio(1,6);
		// Acumular la suma
		suma <- suma+dado;
		Escribir 'Tiro ', i, ': ', dado;
	FinPara
	// 3. PRESENTACIÓN DEL RESULTADO
	Escribir '';
	Escribir '------ RESULTADO FINAL ------';
	Escribir 'Total de tiros realizados: ', n;
	Escribir 'La suma total de todos los tiros es: ', suma;
FinProceso
