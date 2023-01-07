function bubbleSort($array) {
  $n = $array.Length
  for ($i = 0; $i -lt $n; $i++) {
    for ($j = 0; $j -lt $n - $i - 1; $j++) {
      if ($array[$j] -gt $array[$j + 1]) {
        # swap elements
        $temp = $array[$j]
        $array[$j] = $array[$j + 1]
        $array[$j + 1] = $temp
      }
    }
  }
}

$sints = (Read-Host "Enter space separated integers") -split " "
$array = @()
foreach ($el in $sints) {
  $array += [int]$el
}
bubbleSort $array
Write-Output $array

