@echo off
echo Downloading: Latest AppxSideload release from "github.com"
cd updaterCore
updaterCoreMain https://github.com/kruct/appxsideload/archive/refs/heads/main.zip
exit