Proceso reto_condicional_4_v4_OPERACIONES_BASICAS
	Definir num1, num2, res Como Real;
	Definir opt Como Entero;
	Limpiar Pantalla;
	Escribir 'Enter value to number 1: ';
	Leer num1;
	Escribir 'Enter value to number 2: ';
	Leer num2;
	Escribir '';
	Escribir 'Math menu:';
	Escribir '   [1]. Add';
	Escribir '   [2]. Subs';
	Escribir '   [3]. Mult';
	Escribir '   [4]. Div';
	Escribir '   [5]. All';
	Escribir '';
	Escribir 'Press any option [1 - 5]: ';
	Leer opt;
	Segun opt Hacer
		1:
			res <- num1+num2;
			Escribir 'Addition: ', res;
		2:
			res <- num1-num2;
			Escribir 'Substraction: ', res;
		3:
			res <- num1*num2;
			Escribir 'Multiplication: ', res;
		4:
			Si num2>0 Entonces
				res <- num1/num2;
				Escribir 'Division: ', res;
			SiNo
				Escribir 'It is not possible to divide by zero';
			FinSi
		5:
			Escribir 'Add: ', num1+num2;
			Escribir 'Subs: ', num1-num2;
			Escribir 'Mult: ', num1*num2;
			Si num2>0 Entonces
				Escribir 'Division: ', num1/num2;
			SiNo
				Escribir 'It is not possible to divide by zero';
			FinSi
		De Otro Modo:
			Escribir 'Invalid option !!!';
	FinSegun
FinProceso
