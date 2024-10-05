# Set-Manifest.ps1

# Define the path to the manifest file
$manifestPath = "C:\Windows\BrowserCore\manifest.json"

# Define the content to be written to the file
$manifestContent = @'
{
  "name": "com.microsoft.browsercore",
  "description": "BrowserCore",
  "path": "BrowserCore.exe",
  "type": "stdio",
  "allowed_origins": [],
  "blocked_origins": [
	"chrome-extension://kbfnbcaeplbcioakkpcpgfkobkghlhen/",
	"https://google.com"
  ]
}
'@

# Write the content to the manifest file
Set-Content -Path $manifestPath -Value $manifestContent

# Output a confirmation message
Write-Host "Manifest file updated successfully."
