@echo off
title Easy CMD

:start
cls
echo *************************************
echo EasyCMD   Made by Justin			user: %username%
echo *************************************
echo.
echo [1] Log in
echo [2] Exit
echo [3] Help
echo.
echo *************************************
set /p choice= What would you like to do?: 

if %choice%==1 goto password
if %choice%=="log in" goto password
if %choice%==2 goto startexit
if %choice%=="exit" goto startexit
if %choice%==3 goto help
if %choice%==help goto help
if %choice%==a goto cmd
echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto start

:cmd
cls
color 1
cmd

:startexit
echo.
set /p YN=Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto start
echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto startexit

:password
cls
echo.
echo user: %username%
echo.
set /p password=Admin Password: 
if %password%==root goto main
set /a times=%times%-1
cls
echo Error. Incorrect password. %times% attempts remaining
if %times%==0 goto rip
echo.
pause
goto password

:rip
echo 3 Invalid Attempts. Hasta la vista baby
pause
exit

:main
cls
echo *************************************
echo E A S Y   C M D   -   Main Menu												user: %username%
echo *************************************
echo.
echo [1] Access Network Commands
echo [2] Clean
echo [3] Check
echo [4] Manage Folders
echo [5] View System Stuff
echo [6] Access CMD
echo [7] Back
echo [8] Exit
echo.
echo *************************************
echo.
echo ~Press Ctrl+C to cancel a running command.
echo.
echo ~Say no if it asks you to terminate the batch.
echo.
echo.

set /p choice=What would you like to do?: 
if %choice%==1 goto network
if %choice%=="access network comands" goto network
if %choice%==2 goto clean
if %choice%==clean goto clean
if %choice%==3 goto check
if %choice%==check goto check
if %choice%==4 goto folders
if %choice%=="manage folders" goto "folders"
if %choice%==5 goto stuff
if %choice%=="view system stuff" goto stuff
if %choice%==6 goto cmd
if %choice%=="access cmd" goto cmd
if %choice%==7 goto start
if %choice%==back goto start
if %choice%==8 goto exit
if %choice%=="exit" goto exit

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto main

:clean
cls
echo *************************************
echo PC Cleanup Utility   I am not the owner of this tool!							user: %username%
echo *************************************
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Disk Defragment
echo [5] Back
echo [6] Exit
echo.
set /p op=Run:
if %op%==1 goto 1
if %op%=="delete internet cookies" goto 1
if %op%==2 goto 2
if %op%=="delete temporary internet files" goto 2
if %op%==3 goto 3
if %op%=="disk cleanup" goto 3
if %op%==4 goto 4
if %op%=="disk defragment" 4
if %op%==5 goto main
if %op%==back goto main
if %op%==6 goto exit
if %op%==exit goto exit

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto clean

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

:folders
cls
echo *************************************
echo E A S Y   C M D - FOLDER   MANAGER												user: %username%
echo *************************************
echo.
echo [1] Move
echo [2] Remove [-]
echo [3] Create [+]
echo [4] View Contents
echo [5] Back
echo.
echo *************************************

set /p folder= What would you like to do?: 

if %folder%== 1 goto move
if %folder%=="move" goto move
if %folder%==2 goto remove
if %folder%==remove goto remove
if %folder%==3 goto create
if %folder%==create goto create
if %folder%==4 goto view
if %folder%=="view contents" goto view
if %folder%==5 goto main
if %folder%==back goto main

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto folders

:move
cls
echo.
echo Enter the location of the file/ folder.
echo.
echo Examples C:/Games/Steam	C:/Users/username/Documents/example.txt
echo.
set /p movecurrent=Current location of file/ folder: 

cls
echo *************************************
echo E A S Y   C M D -   Move Menu													user: %username%
echo *************************************
echo.
echo [1] C Drive
echo [2] Desktop
echo [3] Documents
echo [4] Downloads
echo [5] Music
echo [6] Pictures
echo [7] Videos
echo.
echo *************************************
echo.
echo If you don't want to move it to any of these locations simply list the location.
echo Example: C:/Games/Steam
set /p movenew=Enter new location: 

if %movenew%==1 set /a movenew=C:/
if %movenew%==2 set /a movenew=C:/Users/%username%/Desktop
if %movenew%==3 set /a movenew=C:/Users/%username%/Documents 
if %movenew%==4 set /a movenew=C:/Users/%username%/Downloads
if %movenew%==5 set /a movenew=C:/Users/%username%/Music
if %movenew%==6 set /a movenew=C:/Users/%username%/Pictures
if %movenew%==7 set /a movenew=C:/Users/%username%/Videos

move %movecurrent% %movenew%
cls
echo [+] Moving...
ping localhost -n 2 >nul
echo [+] Successfully Moved.
echo.
pause

echo.
set /p ynr=Want to move anything else? (y/n): 
if %ynr%==y goto move
if %ynr%==n goto folders
echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto move3

:remove
cls
echo *************************************
echo E A S Y   C M D -   Remove Menu												user: %username%
echo *************************************
echo.
echo [1] C Drive
echo [2] Desktop
echo [3] Documents
echo [4] Downloads
echo [5] Music
echo [6] Pictures
echo [7] Videos
echo [8] OTHER
echo [9] Back
echo.
echo *************************************
echo.
echo.
set /p folderlocation=Folder Location: 
if %folderlocation%==1 cd C:/
if %folderlocation%==2 cd C:/Users/%username%/Desktop
if %folderlocation%==3 cd C:/Users/%username%/Documents
if %folderlocation%==4 cd C:/Users/%username%/Downloads
if %folderlocation%==5 cd C:/Users/%username%/Music
if %folderlocation%==6 cd C:/Users/%username%/Pictures
if %folderlocation%==7 cd C:/Users/%username%/Videos
if %folderlocation%==8 goto rmother
if %folderlocation%==9 goto folders
goto rmcorrect

:rmother
echo Do not include the actual file or folder being deleted.
set /p foflocation Where is the File/ Folder Located? (Example: C:/Users/username/Documents/example): 
cd %foflocation%
goto rmcorrect

:rmcorrect
echo.
cd
echo.
set /p correct=Is this correct? (y/n): 
if %correct%==y goto remove2
if %correct%==n goto remove

:remove2
cls
echo ==========================================================================================
echo ~If you are removing a folder do not include that folder in the location.
echo ~To remove a folder with more than one word such as This Is A Folder, Use quotation marks
echo For Example, "This Is One Folder"
echo.
echo ~To remove multiple folders/ files at once simply put a space in between each folder
echo For example, Folder1 Folder2 "Folder Number 3"
echo.
echo ~Do folders and files in separate turns!
echo.
echo.
set /p fofname=Folder/ File name(s): 
echo.
set /p fof=Are you working with files or folders?: 
if %fof%==files del %fofname%
if %fof%==folders rmdir %fofname%

echo [-] Removing...
ping localhost -n 2 >nul
echo [+] Done.
echo.
pause
goto removedone

:removedone

echo.
set /p ynr=Want to remove anything else? (y/n): 
if %ynr%==y goto remove
if %ynr%==n goto folders
echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto removedone

:create
cls
echo *************************************
echo E A S Y   C M D -   Create Menu												user: %username%
echo *************************************
echo.
echo [1] C Drive
echo [2] Desktop
echo [3] Documents
echo [4] Downloads
echo [5] Music
echo [6] Pictures
echo [7] Videos
echo [8] OTHER
echo [9] Back
echo.
echo *************************************
echo.


echo.
echo Example: C:/Games/Steam
echo.
set /p folderlocation=New Folder Location: 

if %folderlocation%==1 cd C:/
if %folderlocation%=="c drive" cd C:/
if %folderlocation%==2 cd C:/Users/%username%/Desktop
if %folderlocation%==desktop cd C:/Users/%username%/Desktop
if %folderlocation%==3 cd C:/Users/%username%/Documents
if %folderlocation%==documents cd C:/Users/%username%/Documents
if %folderlocation%==4 cd C:/Users/%username%/Downloads
if %folderlocation%==downloads cd C:/Users/%username%/Downloads
if %folderlocation%==5 cd C:/Users/%username%/Music
if %folderlocation%==music cd C:/Users/%username%/Music
if %folderlocation%==6 cd C:/Users/%username%/Pictures
if %folderlocation%==pictures cd C:/Users/%username%/Pictures
if %folderlocation%==7 cd C:/Users/%username%/Videos
if %folderlocation%==videos cd C:/Users/%username%/Videos
if %folderlocation%==8 goto other
if %folderlocation%==other goto other
if %folderlocation%==9 goto folders
if %folderlocation%==back goto folders

goto correct

:other
set /p folderlocation=Enter folder location (Example: C:/Users/jlarock/Documents): 
cd %folderlocation%
goto correct

:correct
cd
echo.
set /p yn=Is this correct? (y/n): 
if %yn%==y goto create2
if %yn%==n goto create
echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto correct

:create2
cls
echo *************************************
echo Proper Layouts																	user %username%
echo *************************************
echo.
echo ~Folders with more than one word- 
echo use quotation marks around the title.
echo Example: "This Is One Folder"
echo.
echo ~Multiple folders- put a space
echo in between each folder.
echo Example: Folder1 "Folder Number 2" Folder3
echo.
echo *************************************
echo.

set /p foldername=Folder name(s): 
mkdir %foldername%
cls
echo [+] Creating Folder...
ping localhost -n 2 >nul
echo [+] Done
echo.
pause
goto createdone

:createdone
echo.
set /p done=Want to create anything else? (y/n): 
if %done%==y goto create
if %done%==n goto folders
echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto createdone

:view
set /p location=Enter folder location:
cd %location%
dir
echo.
pause
goto folders

:network
cls
echo *************************************
echo E A S Y   C M D   -   Network													user: %username%
echo *************************************
echo.
echo [1] ping
echo [2] ipconfig
echo [3] ipconfig /all
echo [4] ipconfig /release
echo [5] ipconfig /renew
echo [6] tracert
echo [7] netstat
echo [8] pathping
echo [9] nslookup
echo [10] Exit
echo [11] Back
echo [12] Help  (wth does this stuff mean)
echo.
echo *************************************

set /p choice=What would you like to do?: 

if %choice%==ping goto ping
if %choice%==1 goto ping
if %choice%==ipconfig goto ipconfig
if %choice%==2 goto ipconfig
if %choice%=="ipconfig /all" goto ipconfig /all
if %choice%==3 goto "ipconfig /all"
if %choice%=="ipconfig /release" goto ipconfig /release
if %choice%==4 goto ipconfig /release
if %choice%=="ipconfig /renew" goto ipconfig /renew
if %choice%==5 goto ipconfig /renew
if %choice%==tracert goto tracert
if %choice%==6 goto tracert
if %choice%==netstat goto netstat
if %choice%==7 goto netstat
if %choice%==pathping goto pathping
if %choice%==8 goto pathping
if %choice%==nslookup goto nslookup
if %choice%==9 goto nslookup
if %choice%==exit goto exit
if %choice%==10 goto exit
if %choice%==back goto main
if %choice%==11 goto main
if %choice%==help goto nethelp
if %choice%==12 goto nethelp

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto network

:nethelp
cls
echo.
echo ping- tests a connection
echo ipconfig- displays network settings currently assigned
echo ipconfig /all- displays all TCP/IP network configuration values
echo ipconfig /release- forces client to give up lease
echo ipconfig /renew- renew IP address
echo tracert- records route of a connection to its destination
echo netstat- displays protocol statistics and current TCP/IP connections
echo pathping- provides info on network latency and loss
echo nslookup- displays info to diagnose DNS infastructure
echo.
pause
goto network


:ping
cls
set /p pingchoice=What would you like test? (Example: www.cnn.com or 192.168.0.1): 
cls
ping %pingchoice%
echo.
echo [+] Done
echo.
pause
echo.
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
if %doagain%==y goto ipconfig /renew
if %doagain%==n goto network

goto network

:Chkdsk
cls
chkdsk
echo.
echo [+] Done
echo.
pause
echo.
set /p doagain=Would you like to run this command again? (y/n): 
if %doagain%==y goto Chkdsk
if %doagain%==n goto check

goto check

:tracert
cls
set /p tracertchoice=Enter an IP or WEB address: 
tracert %tracertchoice%
echo.
echo [+] Done
echo.
pause
echo.
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
if %doagain%==y goto driverquery
if %doagain%==n goto stuff

goto stuff

:pathping
cls
set /p pathpingchoice=What would you like test? (IP or WEB address) 
pathping %pathpingchoice%
echo.
echo [+] Done
echo.
pause
echo.
set /p doagain=Would you like to run this command again? (y/n): 
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
set /p doagain=Would you like to run this command again? (y/n): 
if %doagain%==y goto nslookup
if %doagain%==n goto network

goto network

:getmac
cls
getmac
echo.
echo [+] Done
echo.
pause
echo.
set /p doagain=Would you like to run this command again? (y/n): 
if %doagain%==y goto getmac
if %doagain%==n goto stuff

goto stuff

:stuff
cls
echo *************************************
echo E A S Y   C M D   -   System Stuff												user: %username%
echo *************************************
echo.
echo [1] getmac- Displays local and remote MAC addresses
echo [2] systeminfo- displays system hardware/ software info
echo [3] driverquery- displays all installed drivers
echo [4] back
echo [5] exit
echo.
echo *************************************

set /p stuffchoice=What would you like to do?: 
if %stuffchoice%==1 goto getmac
if %stuffchoice%==getmac goto getmac
if %stuffchoice%==2 goto systeminfo
if %stuffchoice%==systeminfo goto systeminfo
if %stuffchoice%==3 goto driverquery
if %stuffchoice%==driverquery goto driverquery
if %stuffchoice%==4 goto main
if %stuffchoice%==back goto main
if %stuffchoice%==5 goto exit
if %stuffchoice%==exit goto exit

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto stuff

:check
cls
echo *************************************
echo E A S Y   C M D   -   Check													user: %username%
echo *************************************
echo.
echo [1] chkdsk- verifies integrity of disk and checks for errors
echo [2] back
echo [3] exit
echo.
echo *************************************

set /p checkc=What would you like to do? 
if %checkc%==1 goto chkdsk
if %checkc%==chkdsk goto chkdsk
if %checkc%==2 goto main
if %checkc%==back goto main
if %checkc%==3 goto exit
if %checkc%==exit goto exit

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto check

:exit

echo.
set /p YN=Are you sure you want to exit? (y/n): 

if %YN%==y exit
if %YN%==n goto main

echo.
echo [-] Error. Please enter a valid option.
echo.
pause
goto exit

:help

cls
echo *************************************
echo 	HELP
echo *************************************
echo.
echo ~Type the number of the option
echo or type the option itself.
echo.
echo ~Login is required if you choose
echo to manage files.
echo.
echo *************************************
pause
goto start
