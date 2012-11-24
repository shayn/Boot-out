@echo off
set b_=bootstrap

echo Compiling and minifying LESS files...

REM Join files:
cat %b%\less\bootstrap.less %b%\less\responsive.less > %b%\less\bootstrap-full-c.less

REM Remove LESS multiline comments:
grep -vE "((/\*[^*]?)|(\s*\*[^*]?)|(\*/[^*]?))" %b_%\less\bootstrap-full-c.less > %b_%\less\bootstrap-full.less

echo 	Done.
rem echo Now you can run 'js or pack'.

REM Added at the very end to stop 'lessc' from ending batch job.
REM [-x | --yui-compress]
lessc %b_%\less\bootstrap-full.less --yui-compress %b_%\less\bootstrap-full.min.less