
REM mkdir src
REM cd src
REM xcopy "%RECIPE_DIR%"\..\src . /S/Y/I
REM cd ..
REM xcopy "%RECIPE_DIR%"\..\setup.py . /S/Y/I

REM for /f "delims=v" %%a in ('git describe --tags') do (
REM     echo %%a > "%SRC_DIR%\__conda_version__.txt"
REM )

"%PYTHON%" setup.py install

