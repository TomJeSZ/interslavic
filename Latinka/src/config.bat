@echo off
echo %USERPROFILE% 
SET icon=%cd%\interslavicApps\interslavic.ico
SET appl1=%cd%\interslavicApps\Latinka.exe
SET appl2=%cd%\interslavicApps\Cirilla.exe
SET wdir=%cd%\interslavicApps\
echo %icon%
echo %appl%
echo %wdir%
dir %wdir%

rem pause

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\DESKTOP\Cyr. to Lat..lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%appl1%" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%wdir%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%icon%"     >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\DESKTOP\Lat. to cyr..lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%appl2%" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%wdir%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%icon%"     >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

rem mklink /J %USERPROFILE%\DESKTOP\interslavicApp .\interslavicApps\

cd %cd%\interslavicApps
fontSelect.exe
