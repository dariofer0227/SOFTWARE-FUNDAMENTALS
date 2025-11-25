Proceso DADOS_5_CUANTOS_TIROS_FUERON_PAR_IMPAR
	Definir n, i, dado, pares, impares Como Entero;
	pares <- 0;
	impares <- 0;
	Escribir '¿Cuántos tiros quiere hacer?';
	Leer n;
	Para i<-1 Hasta n Hacer
		dado <- Aleatorio(1,6);
		Si dado MOD 2=0 Entonces
			pares <- pares+1;
		SiNo
			impares <- impares+1;
		FinSi
	FinPara
	Escribir 'Total pares: ', pares;
	Escribir 'Total impares: ', impares;
FinProceso
