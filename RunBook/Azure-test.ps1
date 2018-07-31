param(
     [int64]$StartTsUtcTicks
)
$VerbosePreference = "Continue"
$DebugPreference = "Continue"
$InformationPreference = "Continue"
$WarningPreference = "Continue"
$ErrorActionPreference = "Continue"

Write-Verbose "Verbose"
Write-Debug "Debug"
Write-Information "Information"
Write-Warning "Warning"
Write-Error "Error"

$startTsUtc = ([DateTime]($StartTsUtcTicks))
$endTsUtc = (Get-Date).ToUniversalTime()

$delay = ([Math]::Round(($endTsUtc -$startTsUtc).TotalSeconds)).ToString()
((Get-Date).ToString() + " " + $delay + " " )
"Test2"
