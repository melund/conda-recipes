python setup.py install
if errorlevel 1 exit 1

REM del %SCRIPTS%\spyder_win_post_install.py

rd /s /q %SP_DIR%\pyflakes

cd "%PREFIX%"
mkdir Menu
copy "%RECIPE_DIR%\menu-windows_manual.json" "%PREFIX%\Menu\spyder.json"
