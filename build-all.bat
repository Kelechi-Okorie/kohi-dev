@ECHO OFF
REM Build Everything

ECHO "Building everything..."


PUSHD engine
CALL build.bat
POP
IF %ERRORLEVEL NEQ 0 (echo Error:%ERRORLEVEL% && exit)

PUSHD testbed
CALL build.bat
POPD
IF %ERRORLEVEL% NEQ 0 (echo Error: %ERRORLEVEL% && exit)

ECHO "All assemblies build successfully."