@echo off
setlocal

set /p runAtStartup=Would you like to run Delete Log Files, Clear DNS Cache, and Temporary Files at startup? (Y/N): 

if /i "%runAtStartup%"=="Y" (
    echo Creating startup batch file...
    (
    echo @echo off
    echo ## Flush DNS
    echo @echo
    echo ipconfig /flushdns
    echo @echo
    echo pause
    echo.
    echo ## Delete Log Files
    echo cls
    echo cd/
    echo @echo
    echo del *.log /a /s /q /f
    echo pause
    echo.
    echo ## Delete Temp Files
    echo cls
    echo RD /S /Q %temp%
    echo MKDIR %temp%
    echo takeown /f "%temp%" /r /d y
    echo takeown /f "C:\Windows\Temp" /r /d y
    echo RD /S /Q C:\Windows\Temp
    echo MKDIR C:\Windows\Temp
    echo takeown /f "C:\Windows\Temp" /r /d y
    echo takeown /f %temp% /r /d y
    ) > "%temp%\startup_actions.bat"

    echo Startup batch file created at %temp%\startup_actions.bat

    echo Creating shortcut in startup folder...
    set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
    copy "%temp%\startup_actions.bat" "%startupFolder%"
    echo Shortcut created in "%startupFolder%"

    echo Actions will run at startup.
) else (
    echo Actions will not run at startup.
)

pause
