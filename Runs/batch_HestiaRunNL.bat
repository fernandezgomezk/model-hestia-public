REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

set HESTIA_STUDIEGEBIED=NL
set HESTIA_OUTPUT=NL

"%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s0.dms" /Resultaten/Exports/GenerateAllIndicatoren
if %ERRORLEVEL% NEQ 0 goto :error	

echo NL klaar
GOTO :EOF

:error
echo Error in HestiaRun
pause
EXIT
