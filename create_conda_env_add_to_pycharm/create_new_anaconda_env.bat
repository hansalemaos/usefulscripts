echo "Name of new env: "
call userInput.bat envname
echo %envname%

echo "Python version: "
call userInput.bat pyversion
echo %pyversion%

echo "Packages to install: "
call userInput.bat packages
echo %packages%

call conda create -y -n %envname% python=%pyversion% pip %packages%
call conda activate %envname%
call where /R "%PROGRAMFILES%" /F pycharm64.exe >  newenvtmpmsg.txt
call set /p msg= < newenvtmpmsg.txt
call %msg% "%USERPROFILE%\anaconda3\envs\%envname%"
del newenvtmpmsg.txt