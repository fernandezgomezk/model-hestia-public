REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

set HESTIA_STUDIEGEBIED=NL
set HESTIA_OUTPUT=NL

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun.dms" /Resultaten/Exports/GenerateAllIndicatoren
if ErrorLEvel 1 goto :error	

pause Totaal klaar
exit /B

:error
echo Error in HestiaRun
pause
EXIT
