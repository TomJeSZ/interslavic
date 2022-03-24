@echo off
echo USERPROFILE= %USERPROFILE% 
SET icon=%cd%\interslavicApps\interslavic.ico
SET appl1=%cd%\interslavicApps\Latinka.exe
SET appl2=%cd%\interslavicApps\Cirilla.exe
SET appl3=%cd%\interslavicApps\fontSelect.exe
SET wdir=%cd%\interslavicApps\
echo ====================================================================
echo "%icon%"
echo "%appl1%"
echo "%appl2%"
echo "%appl3%"
echo "%wdir%"
dir  "%wdir%"
echo ====================================================================
rem pause

echo Set oWS = WScript.CreateObject("WScript.Shell") > C:\temp\CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\DESKTOP\Cyr. to Lat..lnk" >> C:\temp\CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> C:\temp\CreateShortcut.vbs
echo oLink.TargetPath = "%appl1%"      >> C:\temp\CreateShortcut.vbs
echo oLink.WorkingDirectory = "%wdir%" >> C:\temp\CreateShortcut.vbs
echo oLink.IconLocation = "%icon%"     >> C:\temp\CreateShortcut.vbs
echo oLink.Save >> C:\temp\CreateShortcut.vbs
cscript //Nologo C:\temp\CreateShortcut.vbs
del C:\temp\CreateShortcut.vbs

echo Set oWS = WScript.CreateObject("WScript.Shell") > C:\temp\CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\DESKTOP\Lat. to Cyr..lnk" >> C:\temp\CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> C:\temp\CreateShortcut.vbs
echo oLink.TargetPath = "%appl2%"      >> C:\temp\CreateShortcut.vbs
echo oLink.WorkingDirectory = "%wdir%" >> C:\temp\CreateShortcut.vbs
echo oLink.IconLocation = "%icon%"     >> C:\temp\CreateShortcut.vbs
echo oLink.Save >> C:\temp\CreateShortcut.vbs
cscript //Nologo C:\temp\CreateShortcut.vbs
del C:\temp\CreateShortcut.vbs

echo Set oWS = WScript.CreateObject("WScript.Shell") > C:\temp\CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\DESKTOP\FONTS.lnk" >> C:\temp\CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> C:\temp\CreateShortcut.vbs
echo oLink.TargetPath = "%appl3%"      >> C:\temp\CreateShortcut.vbs
echo oLink.WorkingDirectory = "%wdir%" >> C:\temp\CreateShortcut.vbs
echo oLink.IconLocation = "%icon%"     >> C:\temp\CreateShortcut.vbs
echo oLink.Save >> C:\temp\CreateShortcut.vbs
cscript //Nologo C:\temp\CreateShortcut.vbs
del C:\temp\CreateShortcut.vbs

rem mklink /J %USERPROFILE%\DESKTOP\interslavicApp .\interslavicApps\

cd %cd%\interslavicApps
fontSelect.exe
cd ..
pause

