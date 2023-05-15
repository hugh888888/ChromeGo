%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
echo 是否执行IP更新？IP更新从云端更新IP配置以解决封锁问题！第一次使用务必先更新IP.
echo 按7跳过，按1选择ip1更新，若ip1不好用再选ip2、3...更新，如果更新后都用不了，请发邮件到 freeman105@gmail.com 进行反馈！
choice /C 1234567 /T 17 /D 7 /M "1、ip1更新  2、ip2更新  3、ip3更新  4、ip4更新 5、ip5更新 6、ip6更新 7、跳过"
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
echo 等待翻墙软件启动，请稍候...
@REM IF EXIST %~dp0Browser\chrome.exe (
@REM     start %~dp0Browser\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server=127.0.0.1:7890 https:/www.google.com/
@REM ) ELSE (
@REM 	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
@REM 	IF  not errorlevel 1 (
@REM     start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server=127.0.0.1:7890 https://www.google.com
@REM 	) else (
@REM 		echo Chrome浏览器不存在或没有正确安装，请尝试重新安装Chrome浏览器
@REM 		echo 或者采用以下办法：
@REM 		echo 右键点桌面的Google Chrome图标，再点属性，找到chrome.exe文件的路径，然后打开那个目录，把chrome.exe 连同那个目录下的所有子文件夹和文件，一起拷贝到ChromeGo文件夹下的Browser目录里面，然后重新启动ChromeGo的翻墙脚本。
@REM 	)
@REM )
echo ------注意注意注意，必读必读必读------
echo 特别声明：本通道服务器来自网络免费分享，为方便网友而自动抓取，我们对其可靠性和安全性不做任何承诺。
echo 启动后如果Chrome页面打不开，请耐心稍等几分钟等待软件自动测试选择翻墙服务器。
echo ------注意注意注意，以上内容必读，请认真阅读------
pause