Funcion cantidad = contarAlumnos(vector, dim, categoria)
	
	cantidad, i Son Enteros
	
	cantidad = 0
	
	Para i = 1 Hasta dim
		
		Si vector[i] = categoria
			cantidad = cantidad + 1
		FinSi
		
	FinPara
	
FinFuncion

SubProceso categoriaConMasAlumnos(vector, dim)
	
	cantD, cantA, cantP Son Enteros
	cantD = contarAlumnos(vector, dim, 'D')
	cantA = contarAlumnos(vector, dim, 'A')
	cantP = contarAlumnos(vector, dim, 'P')
	
	Mostrar "La categoria con más alumnos es " Sin Saltar
	
	Si cantD >= cantA 
		Si cantD >= cantP
			Mostrar "D"
		SiNo
			Mostrar "P"
		FinSi
	SiNo
		Si cantA >= cantP
			Mostrar "A"
		SiNo
			Mostrar "P"
		FinSi
	FinSi
	
FinSubProceso

SubProceso mostrarVector(vector, dim)
	
	i Es Entero
	
	Para i = 1 Hasta dim
		Mostrar "[" vector[i] "]" Sin Saltar
	FinPara
	Mostrar ""
	
FinSubProceso

SubProceso eliminarDesaprobados(vector, dim Por Referencia)
	
	i, j Es Entero
	
	i = 1
	
	Mientras i <= dim
		
		Si vector[i] = 'D'
			
			j = i
			
			Mientras j <= dim - 1
				
				vector[j] = vector[j + 1]
				
				j = j + 1
				
			FinMientras
			
			dim = dim - 1
			
		SiNo
			
			i = i + 1
			
		FinSi
		
	FinMientras
	
FinSubProceso

SubProceso leerCategoria(categoria Por Referencia)
	
	Mostrar "Ingrese categoría (D, A, P)" Sin Saltar
	Leer categoria
	
	Mientras categoria <> 'D' Y categoria <> 'A' Y categoria <> 'P'
		
		Mostrar "Categoría inválida"
		Mostrar "Ingrese categoría (D, A, P)" Sin Saltar
		Leer categoria
		
	FinMientras
	
FinSubProceso

Algoritmo Ejercicio2
	
	dim, cantidadAlumnos Es Entero
	categorias, cat Es Caracter
	Dimension categorias[20]
	
	dim = 3
	
	categorias[1] = 'A'
	categorias[2] = 'P'
	categorias[3] = 'P'
	
	Mostrar "---------------"
	Mostrar "Determinar cantidad de alumnos"
	Mostrar "---------------"
	leerCategoria(cat)
	cantidadAlumnos = contarAlumnos(categorias, dim, cat)
	
	Si cantidadAlumnos > 0
		Mostrar "Hay " cantidadAlumnos " alumno(s) en esta categoria"
	SiNo
		Mostrar "No existe ningun alumno en esta categoria"
	FinSi
	
	
	Mostrar "---------------"
	Mostrar "Categoría con más alumnos"
	Mostrar "---------------"
	categoriaConMasAlumnos(categorias, dim)
	
	Mostrar "---------------"
	Mostrar "Eliminar los desaprobados y mostrar el vector"
	Mostrar "---------------"
	eliminarDesaprobados(categorias, dim)
	mostrarVector(categorias, dim)
	
	
FinAlgoritmo
