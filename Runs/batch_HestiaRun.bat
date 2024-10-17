REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden

Call path/set.bat

 
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/StartJaar/AllocatieResultaten/Woning/BO/Resultaten_Floris/export_csv/Export
COPY /b/v/y "C:\Users\teunistj\Documents\Results\model-hestia-public\Results\stage_floris\StartJaar_Resulaten_Floris_export.csv" 

pause Totaal klaar
