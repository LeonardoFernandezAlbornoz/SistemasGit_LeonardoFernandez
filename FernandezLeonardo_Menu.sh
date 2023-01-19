#!/bin/bash

echo `clear`

function crearDirectorio(){

	if [ -e $nombreDir ]
	then
		echo El directorio $nombreDir ya existe
	else
		`mkdir $nombreDir`
		echo Se ha creado el directorio $nombreDir
	fi
}

function crearArchivo(){

	if [ -e $nombreAr ]
	then
		echo El archivo $nombreAr ya existe
	else
		`touch $nombreAr`
		echo Se ha creado el archivo $nombreAr
	fi	
	
}

function getMes(){
	case $numMes in
		1) 
       	 	mes="enero"
        	;;
       	 	2)
       		mes="febrero"
		;;
       		3)
       		mes="marzo"
       		;;
       		4)
       		mes="abril"
       		;;
       		5)
       		mes="mayo"
       		;;
       		6)
       		mes="junio"
       		;;
       		7)
       		mes="julio"
       		;;
       		8)
       		mes="agosto"
		;;
		9)
       		mes="septiembre"
		;;
		10)
       		mes="octubre"
		;;
		11)
       		mes="noviembre"
		;;
		12)
       		mes="diciembre"
		;;
		*)
		mes="MES NO VÁLIDO"
		;;
	esac
}

function cambiarFecha(){
	getMes
	echo La nueva fecha es: $dia de $mes de $anho
}

function listarContenido(){
	echo -e "\nLISTA CONTENIDO"
	for file in $ruta
	do
		if [ -d $file ]
		then
			echo `basename $file`: Directorio
		else
			echo `basename $file`: Archivo
		fi	
	done		
}

function areaTriangulo(){
	area=$(( $base * $altura / 2 ))
	return $area
}

opcion=1
while (( $opcion != 6 ))
	do
		echo -e "\nMENU \n 1.Crear directorio \n 2.Crear archivo \n 3.Cambiar fecha \n 4.Listar archivos \n 5.Calcular área triángulo \n 6.Salir"
		read -p "Elige una opción: " opcion

		case $opcion in 
			1)
			echo -e "\n"
			read -p "Nombre del nuevo directorio: " nombreDir
			crearDirectorio
			;;
			2)
			echo -e "\n"
			read -p "Nombre del nuevo directorio: " nombreAr
			crearArchivo
			;;
			3)
			echo -e "\n"
			read -p "Introduce el día: " dia
			read -p "Introduce el valor numérico del mes: " numMes
			read -p "Introduce el año: " anho
			cambiarFecha
			;;
			4)
			echo -e "\n"
			echo -e "OPCIONES \n 1.Listar contenido del directorio actual \n 2.Listar contenido de otro directorio" 
			read -p "Elige una opción: " opcion2
			case $opcion2 in
				1)
				ruta=$HOME/*
				listarContenido
				;;
				2)
				read -p "Introduce una ruta: " ruta
				listarContenido
				;;
				*)
				echo La opción no es válida
				;;
			esac
			;;
			5)
	 		read -p "Introduce la base: " base
			read -p "Introduce la altura: " altura
			areaTriangulo $base $altura
			echo El área del triángulo es: $?
			;;
			6)
			opcion=6;
			;;
			*)
			echo La opción no es válida
			opcion=1
			;;
		esac		
	done