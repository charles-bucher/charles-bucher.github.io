# Set the base screenshots folder
$baseFolder = "C:\Users\buche\repos\Cloud_Work\repos\charles-bucher.github.io\screenshots\Multi-Tier-App-Troubleshooting-Playground"

# Get all PNG files recursively, sorted by name
$files = Get-ChildItem -Path $baseFolder -Recurse -Filter *.png | Sort-Object FullName

# Loop through each file and generate Markdown
foreach ($file in $files) {
    # Create relative path from README location
    $relativePath = $file.FullName -replace [regex]::Escape((Get-Location).Path + "\"), ""
    
    # Use the filename (without extension) as alt text
    $altText = $file.BaseName

    # Output Markdown
    Write-Host "### $altText`n"
    Write-Host "[![$altText]($relativePath)]($relativePath)`n"
}
