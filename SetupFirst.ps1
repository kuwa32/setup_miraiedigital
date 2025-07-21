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
    "Day01_09��13��",
    "Day02_09��27��",
    "Day03_10��04��",
    "Day04_10��11��",
    "Day05_11��22��",
    "Day06_11��29��",
    "Day07_12��06��",
    "Day08_12��27��",
    "Day09_01��17��",
    "Day10_01��31��",
    "Day11_02��07��",
    "Day12_02��21��",
    "Day13_03��07��"
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
Copy-Item -Path ".\�����̗\��.ps1" -Destination "C:\MiraieDigital\99_CommonTools"

# Copy �����̗\��.bat to Desktop
$desktopPath = [System.Environment]::GetFolderPath('Desktop')
Copy-Item -Path ".\�����̗\��.bat" -Destination $desktopPath