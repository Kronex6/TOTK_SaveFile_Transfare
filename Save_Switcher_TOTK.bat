@echo off

setlocal

REM Autofinder for source path
set "sourceRoot=%APPDATA%\Ryujinx\bis\user\save"
set "gameID=0000000000000004"
set "saveSlot=0"
set "source=%sourceRoot%\%gameID%\%saveSlot%"

REM Autofinder for destination path
set "destinationRoot=%APPDATA%\yuzu\nand\user\save"
set "titleID=34F05F90523E7DE5B51F0CBE1424B147"
set "saveDir=0100F2C0115B6000"
set "destination=%destinationRoot%\%titleID%\%saveDir%"

set /p direction="Enter the direction (1 for Ryujinx to Yuzu, 2 for Yuzu to Ryujinx): "

if "%direction%"=="1" (
    xcopy /s /i /y "%source%\*" "%destination%\"
    echo Files copied from "%source%" to "%destination%" successfully!
) else if "%direction%"=="2" (
    xcopy /s /i /y "%destination%\*" "%source%\"
    echo Files copied from "%destination%" to "%source%" successfully!
) else (
    echo Invalid direction specified!
)

pause
