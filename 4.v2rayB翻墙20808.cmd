%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
echo ------ע��ע��ע�⣬�ض��ض��ض�------
echo �ر���������ͨ������������������ѷ���Ϊ�������Ѷ��Զ�ץȡ�����Ƕ���ɿ��ԺͰ�ȫ�Բ����κγ�ŵ��
echo ���������Chromeҳ��򲻿���������ڵ㻺�漸���ӣ������Ӻ�ˢ��ҳ��Ӧ�þͿ����ˣ����Ż���ʱ�����ӣ��ڵ�Ӧ�û�Խ��Խ�죻
echo ------ע��ע��ע�⣬�ض��ض��ض�------
echo �뷢�ʼ��� banned.ebook@gmail.com ���з�����
echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡��������ϣ������IP.
echo ��3��������1ѡ��ip1����
choice /C 123 /T 15 /D 3 /M "1��ip1���� 2��ip2���� 3������"
if errorlevel 3 goto startfq
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip2
start /wait "" "%~dp0v2rayB\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0v2rayB\ip_Update\ip_1.bat"
goto startfq

:startfq
start "" "%~dp0v2rayB\v2ray.exe"  run
@REM echo �ȴ���ǽ������������Ժ�...
@REM IF EXIST %~dp0Browser\chrome.exe (
@REM     start %~dp0Browser\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server="socks5://127.0.0.1:20808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" https://www.bannedbook.org/bnews/fq/?utm_source=chgo-v2rayB
@REM ) ELSE (
@REM 	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
@REM 	IF  not errorlevel 1 (
@REM     start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="socks5://127.0.0.1:20808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"  https://www.bannedbook.org/bnews/fq/?utm_source=chgo-v2rayB
@REM 	) else (
@REM 		echo Chrome����������ڻ�û����ȷ��װ���볢�����°�װChrome�����
@REM 		echo ���߲������°취��
@REM 		echo �Ҽ��������Google Chromeͼ�꣬�ٵ����ԣ��ҵ�chrome.exe�ļ���·����Ȼ����Ǹ�Ŀ¼����chrome.exe ��ͬ�Ǹ�Ŀ¼�µ��������ļ��к��ļ���һ�𿽱���ChromeGo�ļ����µ�BrowserĿ¼���棬Ȼ����������ChromeGo�ķ�ǽ�ű���
@REM 	)
@REM )
@REM pause