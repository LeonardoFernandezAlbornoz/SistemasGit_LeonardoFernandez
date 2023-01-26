[int32]$numSuperior=Read-Host "Introduce número superior"
[int32]$numInferior=Read-Host "Introduce número inferior"
[int32]$random=Get-Random -Minimum $($numInferior) -Maximum $($numSuperior+1)
$intentos=0

do{
    $intentos++
    $respuesta=Read-Host "Adivina el número"

    if($respuesta -gt $random){
        Write-Host "El número es menor, prueba de nuevo."
    }else{
        Write-Host "El número es mayor, prueba de nuevo."
    }

}while($respuesta -ne $random)

Write-Host "¡Has ganado! Lo has conseguido en" $intentos "intentos."