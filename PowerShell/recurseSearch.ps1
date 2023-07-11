param(
    [string]$path,
    [string]$pattern
)

Get-ChildItem -Path $path -Recurse | Where-Object { $_.Name -like "*$pattern*" } | ForEach-Object { Write-Output $_.FullName }
