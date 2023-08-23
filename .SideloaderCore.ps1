$appxFolderPath = "AppxFiles"

$appxFiles = Get-ChildItem -Path $appxFolderPath -Filter *.appx

foreach ($appxFile in $appxFiles) {
    Write-Host "Installing $($appxFile.Name)..."
    Add-AppxPackage -Path $appxFile.FullName
    Write-Host "Installation of $($appxFile.Name) completed."
    Write-Host ""
}

Write-Host "All .appx files in the folder have been installed."
