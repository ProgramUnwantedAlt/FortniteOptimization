@echo off
:runScript
:: Replace the File
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/1229680329271410711/1241233300203376640/NQQUQV8.ini?ex=66497417&is=66482297&hm=9bd20ad1cfd8d21cf2cf9e7ce1d6e5aae47b46b38ebe3cd05f9dd7023139e7b7&', 'GameUserSettings.ini')"

:: Set the File to Read-Only
attrib +R "C:\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini"

echo File replaced and set to read-only.

Pause>nul
