REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1a.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1b.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2a.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2b.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4a.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4b.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

pause Totaal klaar