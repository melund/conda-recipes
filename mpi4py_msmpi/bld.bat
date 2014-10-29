IF %PY_VER%==2.7 ( copy %RECIPE_DIR%\mpi4py-1.3.1-msmpi-2012.r2.win-amd64-py2.7.exe %SRC_DIR%\mpi4py.exe )
IF %PY_VER%==3.4 ( copy %RECIPE_DIR%\mpi4py-1.3.1-msmpi-2012.r2.win-amd64-py3.4.exe %SRC_DIR%\mpi4py.exe )
unzip mpi4py.exe
xcopy PLATLIB\* "%SP_DIR%"\* /S/Y/I/Q
