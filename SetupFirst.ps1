
# Create base directory
New-Item -ItemType Directory -Force -Path "C:\MiraieDigital"

# Create subdirectories
$subdirs = @(
    "99_CommonTools",
    "30_DairyMemo",
    "20_Taiken_0728",
    "01_Day01_0913",
    "02_Day02_0927",
    "03_Day03_1004",
    "04_Day04_1011",
    "05_Day05_1122",
    "06_Day06_1129",
    "07_Day07_1206",
    "08_Day08_1227",
    "09_Day09_0117",
    "10_Day10_0131",
    "11_Day11_0207",
    "12_Day12_0221",
    "13_Day13_0307"
)

foreach ($subdir in $subdirs) {
    New-Item -ItemType Directory -Force -Path "C:\MiraieDigital\$subdir"
}

# Copy files to 99_CommonTools
Copy-Item -Path ".\SetProjectRootPath.ps1" -Destination "C:\MiraieDigital\99_CommonTools"
Copy-Item -Path ".\SetProjectRootdPath.bat" -Destination "C:\MiraieDigital\99_CommonTools"
Copy-Item -Path ".\CheckEnvironmentVariables.ps1" -Destination "C:\MiraieDigital\99_CommonTools"
Copy-Item -Path ".\今日の予定.ps1" -Destination "C:\MiraieDigital\99_CommonTools"

# Copy 今日の予定.bat to Desktop
$desktopPath = [System.Environment]::GetFolderPath('Desktop')
Copy-Item -Path ".\今日の予定.bat" -Destination $desktopPath
