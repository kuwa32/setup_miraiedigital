# Create base directory
New-Item -ItemType Directory -Force -Path "C:\MiraieDigital"

# Create root directories
$rootDirs = @(
    "01_Main",
    "02_Special",
    "03_DairyMemo",
    "99_CommonTools"
)
foreach ($dir in $rootDirs) {
    New-Item -ItemType Directory -Force -Path "C:\MiraieDigital\$dir"
}

# Create subdirectories under 01_Main
$mainSubdirs = @(
    "Day01_09Œ13“ú",
    "Day02_09Œ27“ú",
    "Day03_10Œ04“ú",
    "Day04_10Œ11“ú",
    "Day05_11Œ22“ú",
    "Day06_11Œ29“ú",
    "Day07_12Œ06“ú",
    "Day08_12Œ27“ú",
    "Day09_01Œ17“ú",
    "Day10_01Œ31“ú",
    "Day11_02Œ07“ú",
    "Day12_02Œ21“ú",
    "Day13_03Œ07“ú"
)
foreach ($subdir in $mainSubdirs) {
    New-Item -ItemType Directory -Force -Path "C:\MiraieDigital\01_Main\$subdir"
}

# Create subdirectory under 02_Special
New-Item -ItemType Directory -Force -Path "C:\MiraieDigital\02_Special\20_Taiken_0728"

# Copy files to 99_CommonTools
Copy-Item -Path ".\SetProjectRootPath.ps1" -Destination "C:\MiraieDigital\99_CommonTools"
Copy-Item -Path ".\SetProjectRootPath.bat" -Destination "C:\MiraieDigital\99_CommonTools"
Copy-Item -Path ".\CheckEnvironmentVariables.ps1" -Destination "C:\MiraieDigital\99_CommonTools"
Copy-Item -Path ".\¡“ú‚Ì—\’è.ps1" -Destination "C:\MiraieDigital\99_CommonTools"

# Copy ¡“ú‚Ì—\’è.bat to Desktop
$desktopPath = [System.Environment]::GetFolderPath('Desktop')
Copy-Item -Path ".\¡“ú‚Ì—\’è.bat" -Destination $desktopPath