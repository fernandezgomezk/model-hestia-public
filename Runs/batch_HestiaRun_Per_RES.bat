REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

FOR /L %%i IN (0,1,29) DO (
    CALL :oneRes %%i
)

echo 30 RESSEN klaar
GOTO :EOF

:error
echo Error in HestiaRun
pause
EXIT


:oneRes
set HESTIA_RES=%1
set HESTIA_OUTPUT=%1
REM START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun.dms" /Resultaten/Exports/GenerateAllIndicatoren
"%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun.dms" /Resultaten/Exports/GenerateAllIndicatoren
if %ERRORLEVEL% neq 0 goto error
exit /B
