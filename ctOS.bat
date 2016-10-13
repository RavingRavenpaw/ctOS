@echo off
rem I started working on this on 5/29/2014 11:21 AM
rem If you're reading this, you're probably cool. *fistbump*
:a
echo //*/*//*/*//
SET /P CN=Connect to local ctOS system? (y/n)
if /i {%CN%}=={y} (goto :yes)
if /i {%CN%}=={n} (goto :no)
SET /P ERR=/!\ FATAL SYSTEM ERROR. SHUTTING DOWN...
:no
set /P EXIT=Now exiting program...
exit
:yes
echo Connecting...
echo /*/*/*/*/*/*/
SET /P PR=Press ENTER to continue
echo .
echo ..
echo ...
echo /*/*/*/*/*/*/
echo Connected!
echo --------------------
echo ^|  ctOS INTERFACE  ^|
echo ^|      v0.0.1      ^|
echo ^|------------------^|
echo ^|  AUTHENTICATE TO ^|
echo ^|     CONTINUE     ^|
echo --------------------
:login
SET /P USR=ENTER USERNAME:
echo USR: %USR%
If /i {%USR%}=={ChromeFusion44} (goto :pw)
If /i {%USR%}=={PFC_STEVE} (goto :pwTy)
if /i {%USR%}=={Soullex6} (goto :pwShaun)
If /i {%USR%}=={DarkMages} (goto:pwKaty)
cls
set /P FAIL=/!\ USERNAME %USR% DOES NOT EXIST!
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime% %ip%] User attempted to log in with nonexistent username %USR% >> ctOS.dat
cls
goto :fail
:pw
set /P PASS=ENTER PASSWORD: 
echo PASS: ***ENCRYPTED***
If /i {%PASS%}=={Test} (goto :Blume)
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime% %ip%] %USR% failed to log in >> ctOS.dat
cls
goto :fail
:pwTy
set /P PASS=ENTER PASSWORD: 
echo PASS: ***ENCRYPTED***
If /i {%PASS%}=={Test} (goto :Blume)
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime% %ip%] %USR% failed to log in >> ctOS.dat
cls
goto :fail
:pwKaty
set /P PASS=ENTER PASSWORD: 
echo PASS: ***ENCRYPTED***
If /i {%PASS%}=={Password} (goto :Blume)
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime% %ip%] %USR% failed to log in >> ctOS.dat
cls
goto :fail
:pwShaun
set /P PASS=ENTER PASSWORD: 
echo PASS: ***ENCRYPTED***
If /i {%PASS%}=={Test} (goto :Blume)
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime% %ip%] %USR% failed to log in >> ctOS.dat
cls
goto :fail
cls
:fail
SET /P FL=AUTHENTICATION FAILED.
cls
goto :login
:Blume
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime%  %ip%] %USR% logged in >> ctOS.dat
cls
echo --------------------
echo ^|  ctOS INTERFACE  ^|
echo ^|      v0.0.1      ^|
echo --------------------

set /P=Blume Agent authenticated
echo              SYSTEM OPTIONS
echo               ID -> Command
echo shutdown
echo write data to event log [log]
echo electrical grid control [e_grid]
echo traffic systems control [traffic]
echo crime prevention system [crime]
echo police force [police]
echo user/person database [user_db]
:CMD
set /P CMD=ENTER COMMAND:
If /i {%CMD%}=={log} (goto :log)
If /i {%CMD%}=={shutdown} (goto :shutdown)
If /i {%CMD%}=={user_db} (goto :udb)
set /P BLNK=Starting %CMD% program...
set /P ERR=/!\ FATAL SYSTEM ERROR...
set /p ERR=Returning to command system
goto :CMD
:log
set /P TXT=Enter data to write to log: 
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo [%mydate%_%mytime%  %ip%] %USR%: %TXT% >> ctOS.dat
set /P stuff=Text written to log.
goto :cmd
:shutdown
set /P SHTDWN=Now shutting down...
exit
