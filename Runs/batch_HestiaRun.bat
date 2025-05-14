REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGuiQt.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
echo HestiaRuns NL: voor 2024 eindgebruikerskosten (tussenresultaten) voor stratiegie S1a .... S4b
if (%1) NEQ () echo met Geodms versie %1

Call path/set.bat %1

set HESTIA_STUDIEGEBIED=NL
set HESTIA_OUTPUT=NL

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1a.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1b.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2a.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2d.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4a.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4b.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

pause Totaal klaar