# Project-specific identifier (shortened)
$projectIdentifier = "MD2025"

# Environment variable keys
$projectRootKey = "${projectIdentifier}_ROOT"
$dairyMemoKey = "${projectIdentifier}_DAIRY"
$toolsKey = "${projectIdentifier}_TOOLS"

# Get environment variables
$projectRootPath = [System.Environment]::GetEnvironmentVariable($projectRootKey, [System.EnvironmentVariableTarget]::User)
$dairyMemoPath = [System.Environment]::GetEnvironmentVariable($dairyMemoKey, [System.EnvironmentVariableTarget]::User)
$toolsPath = [System.Environment]::GetEnvironmentVariable($toolsKey, [System.EnvironmentVariableTarget]::User)

# Display environment variables
Write-Host "Environment variable '$projectRootKey': $projectRootPath"
Write-Host "Environment variable '$dairyMemoKey': $dairyMemoPath"
Write-Host "Environment variable '$toolsKey': $toolsPath"

# Check if environment variables are set
if (-not $projectRootPath) {
    Write-Error "ERROR: Environment variable '$projectRootKey' is not set."
}
if (-not $dairyMemoPath) {
    Write-Error "ERROR: Environment variable '$dairyMemoKey' is not set."
}
if (-not $toolsPath) {
    Write-Error "ERROR: Environment variable '$toolsKey' is not set."
}
