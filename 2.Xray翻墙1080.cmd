%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off

echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡��һ��ʹ������ȸ���IP.
echo ��5��������1ѡ��ip1���£���ip1�������ٰ�2ѡip2���£�������º��ò��ˣ��뷢�ʼ���freeman105@gmail.com���з�����
choice /C 12345 /T 15 /D 5 /M "1��ip1����  2��ip2����  3��ip3����  4��ip4���� 5������"
if errorlevel 5 goto startfq
if errorlevel 4 goto ip4
if errorlevel 3 goto ip3
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip4
start /wait "" "%~dp0Xray\ip_Update\ip_4.bat"
goto startfq

:ip3
start /wait "" "%~dp0Xray\ip_Update\ip_3.bat"
goto startfq

:ip2
start /wait "" "%~dp0Xray\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0Xray\ip_Update\ip_1.bat"
goto startfq

:startfq

start "xray 1080" "%~dp0Xray\xray.exe"  -c .\Xray\config.json
echo �ȴ���ǽ������������Ժ�...
@REM IF EXIST %~dp0Browser\chrome.exe (
@REM     start %~dp0Browser\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server="socks5://127.0.0.1:1080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" https://www.bannedbook.org/bnews/fq/?utm_source=chgo-Xray
@REM ) ELSE (
@REM 	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
@REM 	IF  not errorlevel 1 (
@REM     start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="socks5://127.0.0.1:1080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"  https://www.bannedbook.org/bnews/fq/?utm_source=chgo-Xray
@REM 	) else ( 
@REM 		echo Chrome����������ڻ�û����ȷ��װ���볢�����°�װChrome�����
@REM 		echo ���߲������°취��
@REM 		echo �Ҽ��������Google Chromeͼ�꣬�ٵ����ԣ��ҵ�chrome.exe�ļ���·����Ȼ����Ǹ�Ŀ¼����chrome.exe ��ͬ�Ǹ�Ŀ¼�µ��������ļ��к��ļ���һ�𿽱���ChromeGo�ļ����µ�BrowserĿ¼���棬Ȼ����������ChromeGo�ķ�ǽ�ű���
@REM 		pause
@REM 	)
@REM )