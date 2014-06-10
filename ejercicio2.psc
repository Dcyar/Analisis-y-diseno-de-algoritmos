Proceso ejercicio2
	Dimension nota[4], alumno[5], nombre_alumno[5]
	nombre_alumno[1] <- "Albert"
	nombre_alumno[2] <- "Carlos"
	nombre_alumno[3] <- "Juan"
	nombre_alumno[4] <- "Cris"
	nombre_alumno[5] <- "Angel"
	
	n <- 0
	llave <- Falso
	Para l<-1 Hasta 5 Con Paso 1 Hacer
		Para u<-1 Hasta 4 Con Paso 1 Hacer
			Escribir "Ingrese la nota ", u," del alumno ", nombre_alumno[l]
			Repetir
				Leer n
				Si n <= 20 Entonces
					nota[u] <- n
					llave <- Verdadero
				Sino
					Escribir "Ingrese una nota válida"
				Fin Si
			Hasta Que llave = Verdadero
			llave <- Falso
		Fin Para
		Para r<-1 Hasta 4 Con Paso 1 Hacer
			alumno[l] <- nota[r] + alumno[l]
		Fin Para
		Escribir "----------------------------------------"
		alumno[l] <- alumno[l] / 4
	Fin Para
	Para d<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "La nota del alumno ",nombre_alumno[d]," es: ",alumno[d]
	Fin Para
	
FinProceso
