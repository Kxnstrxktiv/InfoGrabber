@echo off
set "output_file=GRABBER_OUTPUT.txt"

echo -------------------------------------------------System Info: >> %output_file%
:: Get system information using systeminfo command
systeminfo > %output_file%

echo -------------------------------------------------Processor: >> %output_file%
:: Get processor information using PowerShell
powershell "Get-WmiObject -Class Win32_Processor | Select-Object -Property Name, NumberOfCores, NumberOfLogicalProcessors" >> %output_file%

echo -------------------------------------------------Motherboard: >> %output_file%
:: Get motherboard information using PowerShell
powershell "Get-WmiObject -Class Win32_BaseBoard | Select-Object -Property Manufacturer, Product, Version" >> %output_file%

echo -------------------------------------------------RAM: >> %output_file%
:: Get RAM information using PowerShell
powershell "Get-WmiObject -Class Win32_PhysicalMemory | Select-Object -Property Capacity, Speed" >> %output_file%

echo -------------------------------------------------GPU: >> %output_file%
:: Get GPU information using PowerShell
powershell "Get-WmiObject -Class Win32_VideoController | Select-Object -Property Name, VideoModeDescription" >> %output_file%

echo -------------------------------------------------Power Supply: >> %output_file%
:: Get power supply information using PowerShell
powershell "Get-WmiObject -Class Win32_PowerSupply | Select-Object -Property Name, Type" >> %output_file%

echo -------------------------------------------------Operating system: >> %output_file%
:: Get operating system information using PowerShell
powershell "Get-WmiObject -Class Win32_OperatingSystem | Select-Object -Property Caption, Version, BuildNumber" >> %output_file%

echo -------------------------------------------------Bios: >> %output_file%
:: Get BIOS version using PowerShell
powershell "Get-WmiObject -Class Win32_BIOS | Select-Object -Property SMBIOSBIOSVersion" >> %output_file%


echo --------------------------------------------------------------------------------------------------------------------------------------------- >> %output_file%
echo -------------------------------------------------Installed apps: >> %output_file%
:: Get installed apps using PowerShell
powershell "Get-Package | Select-Object -Property Name, Version" >> %output_file%