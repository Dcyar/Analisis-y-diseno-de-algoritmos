Proceso TiendaProductos
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su apellido"
	Leer apellido
	Escribir "Ingrese la fecha"
	Leer fecha
	
	Dimension producto[20]
	Dimension cantidad[20]
	Dimension precio[20]
	top <- 1
	Repetir
		Escribir "Ingrese el producto"
		Leer producto[top]
		Escribir "Ingrese la cantidad"
		Leer cantidad[top]
		Escribir "Ingrese el precio por unidad"
		Leer precio[top]
		Escribir "Desea realizar otra compra(si/no)?"
		Leer desicion
		si desicion = "si" Entonces
			top <- top + 1
			Escribir "-------------------------------------------------------"
		FinSi
	Hasta Que desicion = "no"
	Escribir "-------------------------------------------------------"
	Escribir "Desea pagar al Contado(1) - Visa(2) - Mastercard(3)"
	leer modopago
	total <- 0
	Escribir "Cliente : ", Mayusculas(nombre)," ", Mayusculas(apellido)
	Escribir "Fecha de la compra ", fecha
	Segun modopago Hacer
		1:
			Para a<-1 Hasta top Con Paso 1 Hacer
				total <- total + (cantidad[a] * precio[a])
				subtotal <- cantidad[a] * precio[a]
				Escribir "Producto ", producto[a] ,", cantidad ",cantidad[a],", precio(c/u) S/.", precio[a],", subtotal S/.",subtotal
			Fin Para
			igv <- (total * 0.019)
			total <- total - igv
			Escribir "-------------------------------------------------------"
			Escribir "IGB(19%): S/.", igv
			Escribir "Descuento: S/.0"
		2:
			Para a<-1 Hasta top Con Paso 1 Hacer
				total <- total + (cantidad[a] * precio[a])
				subtotal <- cantidad[a] * precio[a]
				Escribir "Producto ", producto[a] ,", cantidad ",cantidad[a],", precio(c/u) S/.", precio[a],", subtotal S/.",subtotal
			Fin Para
			igv <- (total * 0.019)
			total <- total - igv
			descuento <- (total * 0.05)
			total <- total - descuento
			Escribir "-------------------------------------------------------"
			Escribir "IGB(19%): S/.", igv
			Escribir "Descuento: S/.", descuento
		3:
			Para a<-1 Hasta top Con Paso 1 Hacer
				total <- total + (cantidad[a] * precio[a])
				subtotal <- cantidad[a] * precio[a]
				Escribir "Producto ", producto[a] ,", cantidad ",cantidad[a],", precio(c/u) S/.", precio[a],", subtotal S/.",subtotal
			Fin Para
			igv <- (total * 0.019)
			total <- total - igv
			descuento <- (total * 0.03)
			total <- total - descuento
			Escribir "-------------------------------------------------------"
			Escribir "IGB(19%): S/.", igv
			Escribir "Descuento: S/.", descuento
		Fin Segun
		Escribir "Total a pagar: S/.", total
	FinProceso
