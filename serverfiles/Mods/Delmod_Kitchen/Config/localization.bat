@echo off
color 4F
echo _________      .___                       __               .___.__        
echo \______  \   __^| _/____  ___.__. ______ _/  ^|_  ____     __^| _/^|__^| ____  
echo     /    /  / __ ^|\__  \(   ^|  ^|/  ___/ \   __\/  _ \   / __ ^| ^|  ^|/ __ \ 
echo    /    /  / /_/ ^| / __ \\___  ^|\___ \   ^|  ^| (  (_) ) / /_/ ^| ^|  \  ___/ 
echo   /____/   \____ ^|(____  / ____/____  )  ^|__^|  \____/ Localization appender
echo                 \/     \/\/         \/                      \/         \/ 
echo.
for %%I in (.) do set CurrDirName=%%~nxI
echo This will install localization for %CurrDirName%.
echo.
IF EXIST "Localization.txt" echo Detected "localization.txt"
IF EXIST "Localization - Quest.txt" echo Detected "localization - quests.txt"
echo.
IF EXIST "Localization.txt" echo A backup of your localization.txt will be made called localization.txt.bak
IF EXIST "Localization - Quest.txt" echo A backup of your localization - quests.txt will be made called localization - quests.txt.bak
echo.
IF EXIST "Localization.txt" echo This batch file can only do so much. 
IF EXIST "Localization - Quest.txt" echo You may also want to manually backup your txt file in /data/config
echo.
:start
echo.
echo MENU:
echo 1 to Continue
echo 2 to Quit
echo 3 to restore a backup if one exists
set /p choice=Option: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto install
if '%choice%'=='2' goto end
if '%choice%'=='3' goto restore
ECHO "%choice%" Choice is not valid, try again
ECHO.
goto start
:install
IF EXIST "Localization.txt" copy "..\..\..\data\config\Localization.txt" "..\..\..\data\config\Localization.txt.bak"
IF EXIST "Localization - Quest.txt" copy "..\..\..\data\config\Localization - Quest.txt" "..\..\..\data\config\Localization - Quest.txt.bak"
type localization.txt >> "../../data/config/Localization.txt"
type localization - Quest.txt >> "../../data/config/Localization - Quest.txt"
echo Finished
goto end
:restore
IF NOT EXIST ..\..\..\data\config\Localization.txt.bak echo Localization backup does not exist
IF EXIST ..\..\..\data\config\Localization.txt.bak echo Restoring backuped up file.
IF EXIST ..\..\..\data\config\Localization.txt.bak copy "..\..\..\data\config\Localization.txt.bak" "..\..\..\data\config\Localization.txt"
IF EXIST ..\..\..\data\config\Localization.txt.bak del "..\..\..\data\config\Localization.txt.bak"
IF NOT EXIST "..\..\..\data\config\Localization - Quest.txt.bak" echo Localization - Quest backup does not exist
IF EXIST "..\..\..\data\config\Localization - Quest.txt.bak" echo Restoring backuped up file.
IF EXIST "..\..\..\data\config\Localization - Quest.txt.bak" copy "..\..\..\data\config\Localization - Quest.txt.bak" "..\..\..\data\config\Localization - Quest.txt"
IF EXIST "..\..\..\data\config\Localization - Quest.txt.bak" del "..\..\..\data\config\Localization - Quest.txt.bak"
:end
pause

