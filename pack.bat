@echo off

REM /*
REM  * http://shayn.me
REM  */

echo --------------
call js
call less

rem echo ---
echo Packing-up your Bootstrap-build:

set directory=package
set lib=libraries

echo 	Deleting old package...
REM Skip file delete yes/no.
echo y | del %directory%\*
rmdir %directory%
echo 		Done.

echo 	Copying files...
mkdir %directory%
set b=bootstrap

copy %b%\img\* %directory%\*
copy %b%\js\bootstrap.min.js %directory%\bootstrap.js

copy %b%\less\bootstrap-full.min.less %directory%\bootstrap.css

copy %lib%\jquery.min-min.js %directory%\jquery.js

echo 		Done.
echo Package ready at '\%directory%\'.
echo --------------