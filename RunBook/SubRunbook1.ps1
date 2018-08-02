
# Specifies a path to one or more locations.
param(
    [Parameter(Mandatory = $true)][string] $input1,
    [Parameter(Mandatory = $true)][string] $input2
)

$SCRunbookResult = [PSCustomObject]@{
    RunBookName  = "SubRunBook1"
    ErrorMessage = ""
    Input        = ([hashtable] $PSBoundParameters)
}
$SCRunbookResult