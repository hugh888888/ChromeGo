@Echo Off
Title ip1�ƶ˸��� clash ��������
cd /d %~dp0
..\..\wget  -t 5 --no-check-certificate  https://gitlab.com/free9999/ipupdate/-/raw/master/clash.meta/config.yaml

if exist config.yaml goto startcopy

..\..\wget -t 5 --no-check-certificate https://www.githubip.xyz/Alvin9999/pac2/master/clash.meta/1/config.yaml

if exist config.yaml goto startcopy

echo ip����ʧ�ܣ�����������ip����
pause
exit
:startcopy

del "..\config.yaml_backup"
ren "..\config.yaml"  config.yaml_backup
copy /y "%~dp0config.yaml" ..\config.yaml
del "%~dp0config.yaml"
ECHO.&ECHO.�Ѹ����������clash.meta����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit