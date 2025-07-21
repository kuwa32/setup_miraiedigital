# Project-specific identifier (shortened)
$projectIdentifier = "MD2025"

# Environment variable keys
$projectRootKey = "${projectIdentifier}_ROOT"
$dailyMemoKey = "${projectIdentifier}_DAILY"
$toolsKey = "${projectIdentifier}_TOOLS"

# Get environment variables
$projectRootPath = [System.Environment]::GetEnvironmentVariable($projectRootKey, [System.EnvironmentVariableTarget]::User)
$dailyMemoPath = [System.Environment]::GetEnvironmentVariable($dailyMemoKey, [System.EnvironmentVariableTarget]::User)
$toolsPath = [System.Environment]::GetEnvironmentVariable($toolsKey, [System.EnvironmentVariableTarget]::User)

# Display environment variables
Write-Host "Environment variable '$projectRootKey': $projectRootPath"
Write-Host "Environment variable '$dailyMemoKey': $dailyMemoPath"
Write-Host "Environment variable '$toolsKey': $toolsPath"

# Check if environment variables are set
if (-not $projectRootPath) {
    Write-Error "ERROR: Environment variable '$projectRootKey' is not set."
}
if (-not $dailyMemoPath) {
    Write-Error "ERROR: Environment variable '$dailyMemoKey' is not set."
}
if (-not $toolsPath) {
    Write-Error "ERROR: Environment variable '$toolsKey' is not set."
}
