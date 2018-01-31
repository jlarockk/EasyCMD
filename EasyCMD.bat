@echo off
title Easy CMD

:start
cls

echo  Justin's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Main Screen
echo  ---------------------
echo.
echo  1. Main Menu
echo  2. Exit
echo  3. Help
echo  4. Info
echo.

set /p choice= Input the number of your choice and press Enter: 

if %choice%==1 goto main
if %choice%==2 goto startexit
if %choice%==3 goto help
if %choice%==4 goto info

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto start

:info
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Information
echo  ---------------------
echo.
echo  Coded by Justin
echo  I did not create the Cleanup Utility!
echo.

pause
goto start

:startexit
echo.
set /p YN= Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto start

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto startexit

:help
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Help
echo  ---------------------
echo.
echo  1. Input the number of your choice and press Enter
echo  2. Ctrl+C cancels a running command
echo.

pause
goto start

:main
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Main Menu
echo  ---------------------
echo.
echo  1. Networking Commands
echo  2. Disk Cleanup
echo  3. Check Disk
echo  4. System Information
echo  5. Open Command Prompt
echo  6. Back
echo  7. Exit
echo.

set /p choice= Input the number of your choice and press Enter: 
if %choice%==1 goto network
if %choice%==2 goto clean
if %choice%==3 goto check
if %choice%==4 goto stuff
if %choice%==5 goto cmd
if %choice%==6 goto start
if %choice%==7 goto exit

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto main

:cmd
echo.
set /p choice= Are you sure you want to exit EasyCMD and open Command Prompt? (y/n): 

if %choice%==y (cls
cd C:/
cmd)
if %choice%==n goto main

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto cmd

:clean
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Disk Cleanup
echo  ---------------------
echo.
echo  1. Delete Internet Cookies
echo  2. Delete Temporary Internet Files
echo  3. Disk Cleanup
echo  4. Disk Defragment
echo  5. Back
echo  6. Exit
echo.

set /p op= Input the number of your choice and press Enter: 
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto main
if %op%==6 goto cleanexit

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto clean

:cleanexit
echo.
set /p YN=Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto clean

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto cleanexit

:1
cls

echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...

ping localhost -n 3 >nul

del /f /q "%userprofile%\Cookies\*.*"
cls

echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .

pause >nul
goto clean

:2
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...

ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls

echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .

pause >nul
goto clean

:3
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...

ping localhost -n 3 >nul

if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q

:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q

:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto clean

:4
cls

echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Defragmenting hard disks...

ping localhost -n 3 >nul
defrag -c -v
cls

echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Disk Defrag successful!
echo.

pause
goto clean

:network
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Networking Commands
echo  ---------------------
echo.
echo  1. test a connection
echo  2. display network settings
echo  3. display all TCP/IP values
echo  4. force a client to give up lease
echo  5. renew IP address
echo  6. record route of connection to its destination
echo  7. display protocol statistics and TCP/IP connections
echo  8. network latency and loss stats
echo  9. diagnose DNS infastructure
echo  10. Back
echo  11. Exit
echo.

set /p choice= Input the number of your choice and press Enter: 

if %choice%==1 goto ping
if %choice%==2 goto ipconfig
if %choice%==3 goto "ipconfig /all"
if %choice%==4 goto ipconfig /release
if %choice%==5 goto ipconfig /renew
if %choice%==6 goto tracert
if %choice%==7 goto netstat
if %choice%==8 goto pathping
if %choice%==9 goto nslookup
if %choice%==10 goto main
if %choice%==11 goto netexit

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto network

:netexit
echo.
set /p YN= Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto network

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto netexit

:ping
cls
set /p pingchoice= What would you like test? (Example: www.cnn.com or 192.168.0.1): 
cls
ping %pingchoice%
echo.
echo [+] Done
echo.
pause
echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto ping
if %doagain%==n goto network

goto ping

:ipconfig
cls 
ipconfig

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto ipconfig
if %doagain%==n goto network

goto network

:ipconfig /all
cls
"ipconfig /all"

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto ipconfig /all
if %doagain%==n goto network

goto network

:ipconfig /release
cls
"ipconfig /release"

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto ipconfig /release
if %doagain%==n goto network

goto network

:ipconfig /renew
cls
"ipconfig /renew"

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto ipconfig /renew
if %doagain%==n goto network

goto network

:chkdsk
cls
chkdsk

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto Chkdsk
if %doagain%==n goto check

goto check

:tracert
cls

set /p tracertchoice= Enter an IP or WEB address: 
tracert %tracertchoice%

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto tracert
if %doagain%==n goto network

goto network

:netstat
cls
netstat

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto netstat
if %doagain%==n goto network

goto network

:systeminfo
cls
systeminfo

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto systeminfo
if %doagain%==n goto stuff

goto stuff

:driverquery
cls
driverquery

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto driverquery
if %doagain%==n goto stuff

goto stuff

:pathping
cls

set /p pathpingchoice= Enter an IP or web address: 
pathping %pathpingchoice%

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto pathping
if %doagain%==n goto network

goto network

:nslookup
cls
nslookup

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto nslookup
if %doagain%==n goto network

goto network

:system
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  System Information
echo  ---------------------
echo.
echo  1. show local and remote MAC addresses
echo  2. display system hardware/ software info
echo  3. display all installed drivers
echo  4. back
echo  5. exit
echo.

set /p stuffchoice= Input the number of your choice and press Enter: 
if %stuffchoice%==1 goto getmac
if %stuffchoice%==2 goto systeminfo
if %stuffchoice%==3 goto driverquery
if %stuffchoice%==4 goto main
if %stuffchoice%==5 goto systemexit

echo.
echo [!] Error. Please enter a valid option.
echo.
pause
goto system

:systemexit
echo.
set /p YN= Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto stuff

echo.
echo [!] Error. Please enter a valid option.
echo.
pause
goto stuffexit

:getmac
cls
getmac

echo.
echo [+] Done
echo.

pause

echo.
set /p doagain= Would you like to run this command again? (y/n): 
if %doagain%==y goto getmac
if %doagain%==n goto system

goto system

:check
cls

echo  Jular's EasyCMD 1.2
echo  ---------------------
echo  CMD made easy
echo.
echo  User: %username%
echo.
echo.
echo  Check Disk
echo  ---------------------
echo.
echo  1. verify integrity of disk and check for errors
echo  2. back
echo  3. exit
echo.

set /p checkc= Input the number of your choice and press Enter: 
if %checkc%==1 goto chkdsk
if %checkc%==2 goto main
if %checkc%==3 goto checkexit

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto check

:checkexit
echo.
set /p YN= Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto check

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto checkexit

:exit
echo.
set /p YN= Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto main

echo.
echo [!] Error. Please enter a valid option.
echo.

pause
goto exit
