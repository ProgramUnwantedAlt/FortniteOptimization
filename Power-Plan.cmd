@echo off
powershell -c "Invoke-WebRequest -Uri 'https://github.com/yuk1c/powerplans/raw/main/UltimatePerformance.pow' -OutFile %HOMEPATH%\AppData\Local\Temp\AdamxPowerPlan.pow
powercfg -import "%HOMEPATH%\AppData\Local\Temp\AdamxPowerPlan.pow"
cls
echo Check if "Ultimate Preformance" has been installed
powercfg /list
echo Hit Enter If you see it (GUID FOR ME 94fa1d00-ab4b-436b-9dc1-811fbb327f27, Should be the same for you but I am unsure)
pause>nul
powercfg /setactive 94fa1d00-ab4b-436b-9dc1-811fbb327f27
IF %errorlevel% NEQ 0 GOTO :error
GOTO :end
:error
cls
echo There was an error.
echo You Have to continue Manually through Power Plan
echo Hit the Windows Key
echo Type "Power Plan"
echo hit Enter
echo change advanced power settings
echo click the drop-down menu and click Ultimate Preformance
echo hit Enter inside of the CMD once this is completed
Pause>Nul
cls
exit
