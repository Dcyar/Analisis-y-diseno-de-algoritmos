Proceso numeroMayor
	Escribir "Ingrese el máximo de números"
	Leer max
	Dimension numeross[max]
	llave <- 1
	Para l<-1 Hasta max Con Paso 1 Hacer
		//Escribir "Escriba el valor ", l
		//Leer numeross[l]
		numeross[l] <- azar(200)
		Escribir numeross[l]
		si llave = 1 Entonces
			mayorr <- numeross[l]
			menorr <- numeross[l]
			llave <- 0
		FinSi
		Si l>1 Entonces
			//lrd <- l - 1
			si numeross[l] > mayorr Entonces
				mayorr <- numeross[l]
			FinSi
			si numeross[l] < menorr Entonces
				menorr <- numeross[l]
			FinSi
		Fin Si
	Fin Para
	Escribir "El número mayor es: ", mayorr
	Escribir "El número menor es: ", menorr
FinProceso