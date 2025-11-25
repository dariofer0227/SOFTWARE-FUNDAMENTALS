Proceso DADOS_6_REPORTE_COMPLETO_TIROS
		
		// Definición de variables
		Definir tiros_efectuados, suma_total, dado, total_pares, total_impares Como Entero;
		Definir respuesta Como Caracter;
		
		// Inicialización
		tiros_efectuados = 0;
		suma_total = 0;
		total_pares = 0;
		total_impares = 0;
		respuesta = "S";
		
		Escribir "--- INICIO JUEGO DE DADOS ---";
		
		// INICIO BUCLE 
		Repetir
			
			// Lanzamiento del dado
			tiros_efectuados = tiros_efectuados + 1;
			dado = Aleatorio(1, 6);
			
			Escribir "";
			Escribir "** ¡Tiro #", tiros_efectuados, ": Salió el ", dado, "! **";
			
			// Se acumula valores
			suma_total = suma_total + dado;
			
			// Se valida si es par o impar
			Si (dado MOD 2) = 0 Entonces
				total_pares = total_pares + 1;
				Escribir "El número es PAR.";
			SiNo
				total_impares = total_impares + 1;
				Escribir "El número es IMPAR.";
			FinSi
			
			// Se pregunta si desea volver a lanzar
			Repetir
				Escribir "¿Desea volver a lanzar? (S/N): ";
				Leer respuesta;
				respuesta = Mayusculas(respuesta);
				
			Hasta Que respuesta = "S" O respuesta = "N"
			
		Hasta Que respuesta = "N"
		
		Escribir "";
		Escribir "Finalizando el juego por decisión del jugador.";
		
		// REPORTE FINAL
		Escribir "";
		Escribir "==================================";
		Escribir "        REPORTE DE JUEGO";
		Escribir "==================================";
		Escribir "Total de tiros efectuados: ", tiros_efectuados;
		Escribir "Suma total de los tiros:   ", suma_total;
		Escribir "Total de pares generados:  ", total_pares;
		Escribir "Total de impares generados:", total_impares;
		Escribir "==================================";
		
FinProceso
