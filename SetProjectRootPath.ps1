# Project-specific identifier (shortened)
$projectIdentifier = "MD2025"

# Get the project root folder path
$projectRootPath = Split-Path -Path (Get-Location).Path -Parent

# Define the paths
$dailyMemoPath = Join-Path $projectRootPath "03_DailyMemo"
$toolsPath = Join-Path $projectRootPath "99_CommonTools"

# Set environment variables with project-specific keys
[System.Environment]::SetEnvironmentVariable("${projectIdentifier}_ROOT", $projectRootPath, [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("${projectIdentifier}_DAILY", $dailyMemoPath, [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("${projectIdentifier}_TOOLS", $toolsPath, [System.EnvironmentVariableTarget]::User)

# Display confirmation messages
Write-Host "root '${projectIdentifier}_ROOT': $projectRootPath"
Write-Host "daily '${projectIdentifier}_DAILY': $dailyMemoPath"
Write-Host "tools '${projectIdentifier}_TOOLS': $toolsPath"
