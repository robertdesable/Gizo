$number = Read-Host "Enter a number"
$result = ""
for ($i = 1; $i -le $number; $i++) {
	$factorial = & ".\factorial.ps1" $i
	$result += "$factorial`n"
}
Set-Content -Path ".\result.txt" -Value $result