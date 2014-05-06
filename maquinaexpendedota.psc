Proceso maquinaExpendedora
	//diseñar un algoritmo que permita obtener una bebida gaseosa de una maquina automatica
	// expendedora de bebidas enbotelladas  solo en soles y el maximo es 20 n/s
	Escribir "Elija el producto que desea llevar"
	Escribir "1.- S/. 5.50 --> Gaseosa"
	Escribir "2.- S/. 2.00 --> Agua mineral"
	Escribir "3.- S/. 3.00 --> Jugo"
	Escribir "4.- S/. 7.50 --> RedBull"
	Escribir "5.- S/. 4.50 --> Otro"
	llave <- Falso
	Repetir
		leer opcom
		Segun opcom Hacer
			1:
				pagar <- 5.50
				compra <- "Gaseosa"
				llave <- verdadero
			2:
				pagar <- 2.00
				compra <- "Agua mineral"
				llave <- verdadero
			3:
				pagar <- 3.00
				compra <- "Jugo"
				llave <- verdadero
			4:
				pagar <- 7.50
				compra <- "RedBull"
				llave <- verdadero
			5:
				pagar <- 4.50
				compra <- "Otro"
				llave <- verdadero
		De Otro Modo:
				escribir "Ingrese una opción válida"
		Fin Segun
	Hasta Que llave = Verdadero
	llave <- falso
	dinero <- 0
	Repetir
		Escribir "Ingrese dinero"
		leer din
		dinero <- dinero + din
	Hasta Que dinero >= pagar
	cambio <- 0
	si dinero > pagar Entonces
		cambio <- dinero - pagar
		Escribir "Su compra es ", compra,", costo: S/.",pagar,", dinero ingresado S/.",dinero," su cambio es S/.", cambio
	sino
		Escribir "Su compra es ", compra,", costo: S/.",pagar
	FinSi
FinProceso