# Project-specific identifier (shortened)
$projectIdentifier = "MD2025"

# Get the project root folder path
$projectRootPath = Split-Path -Path (Get-Location).Path -Parent

# Define the paths
$dairyMemoPath = Join-Path $projectRootPath "30_DairyMemo"
$toolsPath = Join-Path $projectRootPath "99_CommonTools"

# Set environment variables with project-specific keys
[System.Environment]::SetEnvironmentVariable("${projectIdentifier}_ROOT", $projectRootPath, [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("${projectIdentifier}_DAIRY", $dairyMemoPath, [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("${projectIdentifier}_TOOLS", $toolsPath, [System.EnvironmentVariableTarget]::User)

# Display confirmation messages
Write-Host "root '${projectIdentifier}_ROOT': $projectRootPath"
Write-Host "dairy '${projectIdentifier}_DAIRY': $dairyMemoPath"
Write-Host "tools '${projectIdentifier}_TOOLS': $toolsPath"
