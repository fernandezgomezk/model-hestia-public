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

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/StartJaar/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R1_2021/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R2_2022/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R3_2023/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R4_2024/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R6_2026/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R7_2027/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R8_2028/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R9_2029/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R10_2030/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R15_2035/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R20_2040/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R25_2045/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt" "%prj_dir%\Runs\HestiaRun.dms" /TussenResultaten/R30_2050/AllocatieResultaten/Woning/BO/Outputtabellen/export_csv/Export


pause Totaal klaar