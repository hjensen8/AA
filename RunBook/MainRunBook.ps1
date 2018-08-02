
$SCReturnObject = [PSCustomObject]@{
    RunBookName  = "MainRunBook"
    ErrorMessage = ""
    Input        = ([hashtable] $PSBoundParameters)
    Result = @()
}

$SCReturnObject.Result += (./SubRunbook1.ps1 -input1 "Input 1" -input2 "Input 2")
$SCReturnObject.Result += (./SubRunbook2.ps1 -input1 "Input 3" -input2 "Input 4")
$SCReturnObject.Result += (./SubRunbook3.ps1 -input1 "Input 5" -input2 "Input 6")
$SCReturnObject