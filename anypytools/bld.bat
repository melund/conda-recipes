
REM mkdir src
REM cd src
REM xcopy "%RECIPE_DIR%"\..\src . /S/Y/I
REM cd ..
REM xcopy "%RECIPE_DIR%"\..\setup.py . /S/Y/I

for /f "delims=v" %%a in ('git describe --tags') do (
    echo %%a > "%SRC_DIR%\__conda_version__.txt"
)

"%PYTHON%" setup.py install 

cd "%PREFIX%"
mkdir AnyPyToolsTutorial
cd AnyPyToolsTutorial
xcopy "%SRC_DIR%\Tutorial" . /S/Y/I

cd "%PREFIX%"
mkdir Menu
copy "%RECIPE_DIR%\menu-windows-manual.json" "%PREFIX%\Menu\AnyPyToolsTutorial.json"
copy "%SRC_DIR%\anypytools.ico" "%SCRIPTS%\anypytools.ico"
cd "%SRC_DIR%"
