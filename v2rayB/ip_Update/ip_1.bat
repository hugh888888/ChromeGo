@Echo Off
Title ip1�ƶ˸��� v2rayb ��������
cd /d %~dp0
..\..\wget -t 5 --no-check-certificate https://fastly.jsdelivr.net/gh/jsvpn/jsproxy@dev/cbnews/20200809/1366909.md

if exist 1366909.md goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\config.json_backup"
ren "..\config.json"  config.json_backup
copy /y "%~dp01366909.md" ..\config.json
del "%~dp01366909.md"
ECHO.&ECHO.�Ѹ����������v2rayB����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit