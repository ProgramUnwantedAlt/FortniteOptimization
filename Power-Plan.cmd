@echo off
powershell -c "Invoke-WebRequest -Uri 'https://github.com/yuk1c/powerplans/raw/main/UltimatePerformance.pow' -OutFile %HOMEPATH%\AppData\Local\Temp\AdamxPowerPlan.pow
powercfg -import "%HOMEPATH%\AppData\Local\Temp\AdamxPowerPlan.pow"
