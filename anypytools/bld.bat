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
