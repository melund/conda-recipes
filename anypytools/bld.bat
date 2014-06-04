
REM mkdir src
REM cd src
REM xcopy "%RECIPE_DIR%"\..\src . /S/Y/I
REM cd ..
REM xcopy "%RECIPE_DIR%"\..\setup.py . /S/Y/I

git describe --tags > "%SRC_DIR%\__conda_version__.txt"

"%PYTHON%" setup.py install 

cd "%PREFIX%"
mkdir AnyPyToolsTutorial
cd AnyPyToolsTutorial
xcopy "%SRC_DIR%\Tutorial" . /S/Y/I

cd "%PREFIX%"
mkdir Menu
copy "%RECIPE_DIR%\menu-windows_manual.json" "%PREFIX%\Menu\AnyPyToolsTutorial.json"
copy "%SRC_DIR%\anypytools.ico" "%PREFIX%\Menu\anypytools.ico"
cd "%SRC_DIR%"
