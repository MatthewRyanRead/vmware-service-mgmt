@echo off
if "%~1"=="" goto usage
if "%~2" neq "" goto usage
if "%1"=="start" goto service
if "%1"=="stop" goto service

:usage
echo Usage: vmware.bat [start^|stop]
goto :eof

:service
net %1 "vmware authorization service"
net %1 "vmware dhcp service"
net %1 "vmware nat service"
net %1 "vmware usb arbitration service"
 