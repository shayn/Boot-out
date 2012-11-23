@echo off

REM /*
REM  * http://shayn.me
REM  */

echo --------------
echo Packing-up your Bootstrap-build:

set directory=package

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

echo 		Done.
echo Package ready at '\%directory%\'.
echo --------------

REM Added at the very end to top 'lessc' from ending batch job.
REM [-x | --yui-compress]
lessc %b%\less\bootstrap-full.less --yui-compress %directory%\bootstrap.css