@Echo Off
Title ip2�ƶ˸��� clash ��������
cd /d %~dp0
..\..\wget -t 5 --no-check-certificate https://www.githubip.xyz/jsvpn/jsproxy/dev/baitai/20200329/1302338.md

if exist 1302338.md goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\config.yaml_backup"
ren "..\config.yaml"  config.yaml_backup
copy /y "%~dp01302338.md" ..\config.yaml
del "%~dp01302338.md"
ECHO.&ECHO.�Ѹ����������clash����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit