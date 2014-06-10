Proceso Alumno
	// Realizar un algoritmo que calcule la nota final
	// de un alumno ingresando 4 notas parciales
	
	Dimension nota[4]
	NF <- 0
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingrese la Nota ",i
		Leer nota[i]
	Fin Para
	Para l<-1 Hasta 4 Con Paso 1 Hacer
		NF <- NF + nota[l]
	Fin Para
	Escribir "-----------------------------------------"
	Escribir "NF del Alumno es ",(NF/4)
FinProceso