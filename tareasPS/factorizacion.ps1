$num=Read-Host "Introduce un número" 
$num2=$num
$numeros=@{}
$string="$num = "

for($i=2;$i -le $num2;$i++){

    if($($num2 % $i) -eq 0){
        $num2=$($num2 / $i)
        $numeros[$i]++
        $i=1
    }

}

foreach($numero in $numeros.GetEnumerator()){
   
   $string += " $($numero.Key)^$($numero.Value) *" 

}

Write-Host $string.Remove($string.Length-1)





