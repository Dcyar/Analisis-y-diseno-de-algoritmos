Proceso sin_titulo
	Leer num
	restoc <- 0
	definir queda como entero
	Dimension guarda[10]
	Dimension monto[3]
	monto[1] <- ' billetes de 100'
	monto[2] <- ' billetes de 10'
	monto[3] <- ' monedas de un nuevo sol'
	ini <- 1
	Si num > 100 Entonces
		queda <- num / 100
		guarda[ini] <- queda
		restoc <- num % 100
		num <- restoc
		ini <- ini + 1
	Fin Si
	Si num > 10 Entonces
		queda <- num / 10
		guarda[ini] <- queda
		restoc <- num % 10
		num <- restoc
	Fin Si
	
	
	Si ini = 2 Entonces
		Para i<-1 Hasta ini Con Paso 1 Hacer
			escribir guarda[i],monto[i]
		Fin Para
		escribir num,monto[3]
	Sino
		escribir guarda[1],monto[2]
		escribir num,monto[3]
	Fin Si
FinProceso