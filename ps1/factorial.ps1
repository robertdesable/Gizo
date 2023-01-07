#$number = 0
if ($args.Count -eq 0) {
	$number = Read-Host "Enter a number"
} else {
	$number = $args[0]
}
$factorial = 1
for ($i = 2; $i -le $number; $i++) {
	$factorial *= $i
}
Write-Output "The factorial of $number is $factorial"