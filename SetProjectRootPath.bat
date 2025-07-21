cd %~dp0
@powershell Set-ExecutionPolicy Bypass -Scope CurrentUser
@powershell Get-ExecutionPolicy
@REM powershell Set-ExecutionPolicy RemoteSigned
@REM Set-ExecutionPolicy Undefined -Scope Process -Force

@ECHO %~n0
powershell -File %~n0.ps1
powershell -File CheckEnvironmentVariables.ps1

@powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
@powershell Get-ExecutionPolicy