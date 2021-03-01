@echo off
TaskKill/IM "vmware.exe"
TaskKill/IM "vmware-kvm.exe"

set /P n1="Enter VM Name:"
set vworkstation="C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe"
%vworkstation% setextradata "%n1" vworkstation/TM/TSCMode RealTSCOffset
%vworkstation% setextradata "%n1" vworkstation/CPUM/SSE4.1 1  
%vworkstation% setextradata "%n1" vworkstation/CPUM/SSE4.2 1
@pause
