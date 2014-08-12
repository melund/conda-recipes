

IF %PY3K% == 1 IF %ARCH% == 64 (
      copy "%RECIPE_DIR%"\PythonMagick-0.9.10.win-amd64-py3.4.exe pm.zip
      )
IF %PY3K% == 0 IF %ARCH% == 64 (
      copy "%RECIPE_DIR%"\PythonMagick-0.9.10.win-amd64-py2.7.exe pm.zip
      )
IF %PY3K% == 1 IF %ARCH% == 32 (
      copy "%RECIPE_DIR%"\PythonMagick-0.9.10.win32-py3.4.exe pm.zip
      )
IF %PY3K% == 0 IF %ARCH% == 32 (
      copy "%RECIPE_DIR%"\PythonMagick-0.9.10.win32-py2.7.exe pm.zip
      )

      
unzip pm.zip
xcopy PLATLIB\PythonMagick\* "%SP_DIR%"\PythonMagick\* /S/Y/I/Q
xcopy DATA\Lib\site-packages\PythonMagick\* "%SP_DIR%"\PythonMagick\* /S/Y/I/Q
