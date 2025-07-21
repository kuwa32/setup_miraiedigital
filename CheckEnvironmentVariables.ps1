# Project-specific identifier (shortened)
$projectIdentifier = "F0615"

# Environment variable keys
$projectRootKey = "${projectIdentifier}_ROOT"
$fixedResourcesKey = "${projectIdentifier}_FRES"
$unityFixedResourcesKey = "${projectIdentifier}_UFRES"
$unityResourcesKey = "${projectIdentifier}_URES"
$unityScriptsKey = "${projectIdentifier}_USCRIPT"

# Get environment variables
$projectRootPath = [System.Environment]::GetEnvironmentVariable($projectRootKey, [System.EnvironmentVariableTarget]::User)
$fixedResourcesPath = [System.Environment]::GetEnvironmentVariable($fixedResourcesKey, [System.EnvironmentVariableTarget]::User)
$unityFixedResourcesPath = [System.Environment]::GetEnvironmentVariable($unityFixedResourcesKey, [System.EnvironmentVariableTarget]::User)
$unityResourcesPath = [System.Environment]::GetEnvironmentVariable($unityResourcesKey, [System.EnvironmentVariableTarget]::User)
$unityScriptsPath = [System.Environment]::GetEnvironmentVariable($unityScriptsKey, [System.EnvironmentVariableTarget]::User)

# Display environment variables
Write-Host "Environment variable '$projectRootKey': $projectRootPath"
Write-Host "Environment variable '$fixedResourcesKey': $fixedResourcesPath"
Write-Host "Environment variable '$unityFixedResourcesKey': $unityFixedResourcesPath"
Write-Host "Environment variable '$unityResourcesKey': $unityResourcesPath"
Write-Host "Environment variable '$unityScriptsKey': $unityScriptsPath"

# Check if environment variables are set
if (-not $projectRootPath) {
    Write-Error "ERROR: Environment variable '$projectRootKey' is not set."
}
if (-not $fixedResourcesPath) {
    Write-Error "ERROR: Environment variable '$fixedResourcesKey' is not set."
}
if (-not $unityFixedResourcesPath) {
    Write-Error "ERROR: Environment variable '$unityFixedResourcesKey' is not set."
}
if (-not $unityResourcesPath) {
    Write-Error "ERROR: Environment variable '$unityResourcesKey' is not set."
}
if (-not $unityScriptsPath) {
    Write-Error "ERROR: Environment variable '$unityScriptsKey' is not set."
}
