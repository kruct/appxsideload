@echo off

title Updater

if "%1"=="" (
    echo Use: %0 ^<URL^>
    pause >nul
    exit /b 1
)

set "url=%1"
for %%I in (%url%) do set "filename=%%~nxI"

certutil -urlcache -split -f "%url%" "%filename%" > nul

if %errorlevel% equ 0 (
    echo.
    echo Download complete: %filename%
    echo Press any key to exit.
    pause >nul
) else (
    echo Download failed (we don't know why)
)