Funcion categoria = obtenerCategoria(promedio)
	
	categoria Es Caracter
	
	Si promedio >= 0 Y promedio <= 5
		categoria = 'D'
	FinSi
	
	Si promedio >= 6 Y promedio <= 8
		categoria = 'A'
	FinSi
	
	Si promedio >= 9 Y promedio <= 10
		categoria = 'P'
	FinSi
	
FinFuncion

Funcion promedio = obtenerPromedio(n1, n2, n3)
	
	promedio Es Real
	
	promedio = (n1 + n2 + n3) / 3
	
FinFuncion

SubProceso leerNota(nota Por Referencia)
	
	Mostrar "Ingrese nota [0, 10]" Sin Saltar
	Leer nota
	
	Mientras nota < 0 Y nota > 10
		
		Mostrar "Nota inválida"
		Mostrar "Ingrese nota [0, 10]" Sin Saltar
		Leer nota
		
	FinMientras
	
FinSubProceso

SubProceso generarVector(vector, dim)
	
	n1, n2, n3, i Son Enteros
	promedio Es Real
	categoria Es Caracter
	
	Para i = 1 Hasta dim
		
		Mostrar "---------------"
		Mostrar "Alumno " i
		Mostrar "---------------"
		leerNota(n1)
		leerNota(n2)
		leerNota(n3)
		promedio = obtenerPromedio(n1, n2, n3)
		categoria = obtenerCategoria(promedio)
		vector[i] = categoria
	FinPara
	
FinSubProceso

SubProceso mostrarVector(vector, dim)
	
	i Es Entero
	
	Mostrar "---------------"
	Mostrar "Vector"
	Mostrar "---------------"
	
	Para i = 1 Hasta dim
		Mostrar "[" vector[i] "]" Sin Saltar
	FinPara
	Mostrar ""
	
FinSubProceso

Algoritmo Ejercicio1
	
	notas Es Caracter
	Dimension notas[20]
	
	generarVector(notas, 3)
	mostrarVector(notas, 3)
	
FinAlgoritmo
