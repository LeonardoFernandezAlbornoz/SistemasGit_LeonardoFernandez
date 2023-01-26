
function esPrimo($a){

    for ($i=2; $i -lt $a; $i++){

        if(($num % $i) -eq 0){

            return $false
        }
    }

    return $true
}

$salir="s"

do{
    $num=Read-Host "Introduce un número"
    Write-Host $(esPrimo $num)

    $salir=Read-Host "¿Quieres continuar? Salir(s) Continuar (Cualquier tecla)"

}while($salir -ne "s")