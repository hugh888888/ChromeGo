%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡��һ��ʹ������ȸ���IP.
echo ��7��������1ѡ��ip1���£���ip1��������ѡip2��3...���£�������º��ò��ˣ��뷢�ʼ��� freeman105@gmail.com ���з�����
choice /C 1234567 /T 17 /D 7 /M "1��ip1����  2��ip2����  3��ip3����  4��ip4���� 5��ip5���� 6��ip6���� 7������"
if errorlevel 7 goto startfq
if errorlevel 6 goto ip6
if errorlevel 5 goto ip5
if errorlevel 4 goto ip4
if errorlevel 3 goto ip3
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip6
start /wait "" "%~dp0clash.meta\ip_Update\ip_6.bat"
goto startfq

:ip5
start /wait "" "%~dp0clash.meta\ip_Update\ip_5.bat"
goto startfq

:ip4
start /wait "" "%~dp0clash.meta\ip_Update\ip_4.bat"
goto startfq

:ip3
start /wait "" "%~dp0clash.meta\ip_Update\ip_3.bat"
goto startfq

:ip2
start /wait "" "%~dp0clash.meta\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0clash.meta\ip_Update\ip_1.bat"
goto startfq

:startfq

start "" "%~dp0clash.meta\clash.meta-windows-386.exe"  -d .\clash.meta\
echo �ȴ���ǽ������������Ժ�...
@REM IF EXIST %~dp0Browser\chrome.exe (
@REM     start %~dp0Browser\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server=127.0.0.1:7890 https:/www.google.com/
@REM ) ELSE (
@REM 	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
@REM 	IF  not errorlevel 1 (
@REM     start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server=127.0.0.1:7890 https://www.google.com
@REM 	) else (
@REM 		echo Chrome����������ڻ�û����ȷ��װ���볢�����°�װChrome�����
@REM 		echo ���߲������°취��
@REM 		echo �Ҽ��������Google Chromeͼ�꣬�ٵ����ԣ��ҵ�chrome.exe�ļ���·����Ȼ����Ǹ�Ŀ¼����chrome.exe ��ͬ�Ǹ�Ŀ¼�µ��������ļ��к��ļ���һ�𿽱���ChromeGo�ļ����µ�BrowserĿ¼���棬Ȼ����������ChromeGo�ķ�ǽ�ű���
@REM 	)
@REM )
echo ------ע��ע��ע�⣬�ض��ض��ض�------
echo �ر���������ͨ������������������ѷ���Ϊ�������Ѷ��Զ�ץȡ�����Ƕ���ɿ��ԺͰ�ȫ�Բ����κγ�ŵ��
echo ���������Chromeҳ��򲻿����������Եȼ����ӵȴ�����Զ�����ѡ��ǽ��������
echo ------ע��ע��ע�⣬�������ݱض����������Ķ�------
pause