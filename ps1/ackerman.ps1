# Define the Ackerman function
function Ackerman($m, $n) {
    if ($m -eq 0) {
        return $n + 1
    }
    elseif ($m -gt 0 -and $n -eq 0) {
        return Ackerman($m - 1) 1
    }
    else {
        return Ackerman($m - 1)(Ackerman $m ($n - 1))
    }
}

# Get the input numbers
$m = [int](Read-Host "Enter a value for m")
$n = [int](Read-Host "Enter a value for n")

# Calculate and print the result
$result = Ackerman $m $n
Write-Output "Ackerman $m $n  = $result"
