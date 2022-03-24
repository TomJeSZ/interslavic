#!/bin/sh
set -e
mkdir -p interslavic$1/lin32/interslavicApps/
cp -R FontSelector/src/fontSelect/application.linux32/*    interslavic$1/lin32/interslavicApps/
cp -R Latinka/src/Latinka/application.linux32/*            interslavic$1/lin32/interslavicApps/
cp -R Cirilla/src/Cirilla/application.linux32/*            interslavic$1/lin32/interslavicApps/
cp    Latinka/src/config_ubuntu_tmpl.txt                   interslavic$1/lin32/interslavicApps/data/
cp    png/interslavic.png                                  interslavic$1/lin32/
cp    png/inter*x*.png                                     interslavic$1/lin32/interslavicApps/lib/
rm -f                                                      interslavic$1/lin32/interslavicApps/source/*.pde
zip -rvT -9 ./iSlavicTools$1_lin32.zip                     interslavic$1/lin32/* > zip.lst


mkdir -p interslavic$1/lin64/interslavicApps/
cp -R FontSelector/src/fontSelect/application.linux64/*    interslavic$1/lin64/interslavicApps/
cp -R Latinka/src/Latinka/application.linux64/*            interslavic$1/lin64/interslavicApps/
cp -R Cirilla/src/Cirilla/application.linux64/*            interslavic$1/lin64/interslavicApps/
cp    Latinka/src/config_ubuntu_tmpl.txt                   interslavic$1/lin64/interslavicApps/data/
cp    png/interslavic.png                                  interslavic$1/lin64/
cp    png/inter*x*.png                                     interslavic$1/lin64/interslavicApps/lib/
rm -f                                                      interslavic$1/lin64/interslavicApps/source/*.pde
zip -rvT -9 ./iSlavicTools$1_lin64.zip                     interslavic$1/lin64/* >> zip.lst


mkdir -p interslavic$1/win32/interslavicApps/
cp -R FontSelector/src/fontSelect/application.windows32/*  interslavic$1/win32/interslavicApps/
cp -R Latinka/src/Latinka/application.windows32/*          interslavic$1/win32/interslavicApps/
cp -R Cirilla/src/Cirilla/application.windows32/*          interslavic$1/win32/interslavicApps/
cp    Latinka/src/config_windows_bez_glagolicy.txt         interslavic$1/win32/interslavicApps/data/
cp    Latinka/src/config_windows_bez_glagolicy.txt         interslavic$1/win32/interslavicApps/data/config.txt
chmod 666                                                  interslavic$1/win32/interslavicApps/data/config.txt
cp    Latinka/src/config.bat                               interslavic$1/win32/
cp    png/interslavic.ico                                  interslavic$1/win32/interslavicApps/
rm -f                                                      interslavic$1/win32/interslavicApps/source/*.pde
zip -rvT -9 ./iSlavicTools$1_win32.zip                     interslavic$1/win32/* >> zip.lst

mkdir -p interslavic$1/win64/interslavicApps/
cp -R FontSelector/src/fontSelect/application.windows64/*  interslavic$1/win64/interslavicApps/
cp -R Latinka/src/Latinka/application.windows64/*          interslavic$1/win64/interslavicApps/
cp -R Cirilla/src/Cirilla/application.windows64/*          interslavic$1/win64/interslavicApps/
cp    Latinka/src/config_windows_bez_glagolicy.txt         interslavic$1/win64/interslavicApps/data/
cp    Latinka/src/config_windows_bez_glagolicy.txt         interslavic$1/win64/interslavicApps/data/config.txt
chmod 666                                                  interslavic$1/win64/interslavicApps/data/config.txt
cp    Latinka/src/config.bat                               interslavic$1/win64/
cp    png/interslavic.ico                                  interslavic$1/win64/interslavicApps/
rm -f                                                      interslavic$1/win64/interslavicApps/source/*.pde
zip -rvT -9 ./iSlavicTools$1_win64.zip                     interslavic$1/win64/* >> zip.lst

egrep --color=always "(No errors|error|->.*% savings)" zip.lst
ls -l *.zip | egrep --color "iSl.*zip"




