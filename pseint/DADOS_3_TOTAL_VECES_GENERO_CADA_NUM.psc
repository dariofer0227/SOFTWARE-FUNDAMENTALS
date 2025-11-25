Proceso DADOS_3_TOTAL_VECES_GENERO_CADA_NUM
	Definir n, i, dado Como Entero;
	Definir c1, c2, c3, c4, c5, c6 Como Entero;
	c1 <- 0;
	c2 <- 0;
	c3 <- 0;
	c4 <- 0;
	c5 <- 0;
	c6 <- 0;
	Escribir '¿Cuántos lanzamientos desea realizar?';
	Leer n;
	Para i<-1 Hasta n Hacer
		dado <- Aleatorio(1,6);
		Segun dado Hacer
			1:
				c1 <- c1+1;
			2:
				c2 <- c2+1;
			3:
				c3 <- c3+1;
			4:
				c4 <- c4+1;
			5:
				c5 <- c5+1;
			6:
				c6 <- c6+1;
		FinSegun
	FinPara
	Escribir 'Cantidad de 1: ', c1;
	Escribir 'Cantidad de 2: ', c2;
	Escribir 'Cantidad de 3: ', c3;
	Escribir 'Cantidad de 4: ', c4;
	Escribir 'Cantidad de 5: ', c5;
	Escribir 'Cantidad de 6: ', c6;
FinProceso
