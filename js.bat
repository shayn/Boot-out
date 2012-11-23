@echo off

set d_=bootstrap\js
set b_=bootstrap\js\bootstrap-

echo Compiling and minifying Javascript...

cat %b_%affix.js %b_%alert.js %b_%button.js %b_%carousel.js %b_%collapse.js %b_%dropdown.js %b_%modal.js %b_%popover.js %b_%scrollspy.js %b_%tab.js %b_%tooltip.js %b_%transition.js %b_%typeahead.js > %d_%\bootstrap.js
java -jar yui*.jar %d_%\bootstrap.js > %d_%\bootstrap.min.js

echo 	Done.

rem cat %b_%affix.js \n %b_%alert.js \n %b_%button.js \n %b_%carousel.js \n %b_%collapse.js \n %b_%dropdown.js \n %b_%modal.js \n %b_%popover.js \n %b_%scrollspy.js \n %b_%tab.js \n %b_%tooltip.js \n %b_%transition.js \n %b_%typeahead.js \n > %d_%\bootstrap.js