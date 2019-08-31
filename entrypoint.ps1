[cmdletbinding()]
param()

$outputMsg = '**Publishing Module**'
if ($env:INPUT_TAGS) {
    $outputMsg += "`nTags were provided`n" + ($env:INPUT_TAGS -split "," | Format-List | Out-String -Width 80).Trim()
}
if ($env:INPUT_APIKEY) {
    $outputMsg += "`nAPI Key was provided too`n" + ($env:INPUT_APIKEY)
}

$outputMsg += "`nCurrent path on this container: $($pwd)`n"

Write-Output $outputMsg