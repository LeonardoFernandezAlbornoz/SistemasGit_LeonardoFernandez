$numeros= New-Object System.Collections.ArrayList

do{

    [int32]$num=Read-Host "Introduce un número"

    if($num -ne 0){
        $numeros.Add($num)
    }

}while($num -ne 0)

$numeros | Sort-Object -Descending