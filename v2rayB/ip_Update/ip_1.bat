@Echo Off
Title ip1云端更新 v2rayb 最新配置
cd /d %~dp0
..\..\wget -t 5 --no-check-certificate https://fastly.jsdelivr.net/gh/jsvpn/jsproxy@dev/cbnews/20200809/1366909.md

if exist 1366909.md goto startcopy
echo ip更新失败，请试试ip_2更新
pause
exit
:startcopy

del "..\config.json_backup"
ren "..\config.json"  config.json_backup
copy /y "%~dp01366909.md" ..\config.json
del "%~dp01366909.md"
ECHO.&ECHO.已更新完成最新v2rayB配置,请按回车键或空格键启动程序！ &PAUSE >NUL 2>NUL
exit