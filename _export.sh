#!/bin/sh
mkdir -p interslavic$1/lin32/interslavicApps/
cp -R FontSelector/src/fontSelect/application.linux32/*  interslavic$1/lin32/interslavicApps/
cp -R Latinka/src/Latinka/application.linux32/*          interslavic$1/lin32/interslavicApps/
cp -R Cirilla/src/Cirilla/application.linux32/*          interslavic$1/lin32/interslavicApps/
cp    Latinka/src/config_ubuntu_tmpl.txt                 interslavic$1/lin32/
cp    png/interslavic.png                                interslavic$1/lin32/ 
# config.sh ?
rm -f interslavic$1/lin32/interslavicApps/source/*.pde
zip -rvT -5 ./iSlavicTools$1_lin32.zip  interslavic$1/lin32/*


mkdir -p interslavic$1/lin64/interslavicApps/
cp -R FontSelector/src/fontSelect/application.linux64/*  interslavic$1/lin64/interslavicApps/
cp -R Latinka/src/Latinka/application.linux64/*          interslavic$1/lin64/interslavicApps/
cp -R Cirilla/src/Cirilla/application.linux64/*          interslavic$1/lin64/interslavicApps/
cp    Latinka/src/config_ubuntu_tmpl.txt                 interslavic$1/lin64/
cp    png/interslavic.png                                interslavic$1/lin64/
# config.sh ? 
rm -f interslavic$1/lin64/interslavicApps/source/*.pde
zip -rvT -5 ./iSlavicTools$1_lin64.zip  interslavic$1/lin64/*


mkdir -p interslavic$1/win32/interslavicApps/
cp -R FontSelector/src/fontSelect/application.windows32/*  interslavic$1/win32/interslavicApps/
cp -R Latinka/src/Latinka/application.windows32/*          interslavic$1/win32/interslavicApps/
cp -R Cirilla/src/Cirilla/application.windows32/*          interslavic$1/win32/interslavicApps/
cp    Latinka/src/config_windows_bez_glagolicy.txt         interslavic$1/win32/
cp    Latinka/src/config.bat                               interslavic$1/win32/
cp    png/interslavic.png/interslavic.ico                  interslavic$1/win32/interslavicApps/
rm -f interslavic$1/win32/interslavicApps/source/*.pde
zip -rvT -5 ./iSlavicTools$1_win32.zip  interslavic$1/win32/*

mkdir -p interslavic$1/win64/interslavicApps/
cp -R FontSelector/src/fontSelect/application.windows64/*  interslavic$1/win64/interslavicApps/
cp -R Latinka/src/Latinka/application.windows64/*          interslavic$1/win64/interslavicApps/
cp -R Cirilla/src/Cirilla/application.windows64/*          interslavic$1/win64/interslavicApps/
cp    Latinka/src/config_windows_bez_glagolicy.txt         interslavic$1/win64/
cp    Latinka/src/config.bat                               interslavic$1/win64/
cp    png/interslavic.png/interslavic.ico                  interslavic$1/win64/interslavicApps/
rm -f interslavic$1/win64/interslavicApps/source/*.pde
zip -rvT -5 ./iSlavicTools$1_win64.zip  interslavic$1/win64/*



