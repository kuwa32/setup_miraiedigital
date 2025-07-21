# powershell ���s 
# PowerShell -ExecutionPolicy RemoteSigned .\test.ps1
# PowerShell -ExecutionPolicy RemoteSigned -File "C:\Users\tec207\Documents\����\�����̗\��.ps1"
# 
$DIR =  [System.Environment]::GetEnvironmentVariable("MD2025_DAILY", [System.EnvironmentVariableTarget]::User)
$TODAY_FILE = Get-Date -UFormat "%Y_%m_%d"
$TODAY_FILE = $TODAY_FILE + ".txt"
$FILE_PATH = $DIR + "\" + $TODAY_FILE

if(Test-Path $FILE_PATH){
    Write-Host "������"
}else{
    Write-Host "�Ȃ�"
    New-Item $FILE_PATH
}

Start-Process code -ArgumentList $FILE_PATH