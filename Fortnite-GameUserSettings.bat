@echo off
:runScript
:: Replace the File
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://discord.com/channels/@me/1229680329271410711/1241233300488720464', 'GameUserSettings.ini')"

:: Set the File to Read-Only
attrib +R "C:\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini"

echo File replaced and set to read-only.

Pause>nul
