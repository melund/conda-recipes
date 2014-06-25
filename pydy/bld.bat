
REM mkdir src
REM cd src
REM xcopy "%RECIPE_DIR%"\..\src . /S/Y/I
REM cd ..
REM xcopy "%RECIPE_DIR%"\..\setup.py . /S/Y/I

for /f "delims=v" %%a in ('git describe --tags') do (
    echo %%a > "%SRC_DIR%\__conda_version__.txt"
)

"%PYTHON%" setup.py install --single-version-externally-managed --record=record.txt

