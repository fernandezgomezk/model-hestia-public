REM aanpassingen voor machine specifieke paden

set prj_dir=E:\prj\TNO\model-hestia-public
set log_dir=C:\LocalData\Hestia\log

REM Default version, only used if no argument is given
set "geodms_version=17.4.6"

REM If %1 is provided (not empty), override the version
if not "%~1"=="" set "geodms_version=%~1"

set "exe_dir=C:\Program Files\ObjectVision\GeoDms%geodms_version%"

REM Handle optional overrides
if "%~1"=="R64" set "exe_dir=c:\dev\geodms\bin\release\x64"
if "%~1"=="D64" set "exe_dir=c:\dev\geodms\bin\debug\x64"

echo Using exe_dir: %exe_dir%
REM einde aanpassingen voor machine specifieke paden
set exe_path=%exe_dir%\GeoDmsRun.exe


