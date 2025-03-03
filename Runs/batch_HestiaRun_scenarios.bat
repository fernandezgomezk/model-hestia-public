REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_aardgasvrij.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_aardgasvrij_zonder.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_hybride.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_hybride_zonder.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_isolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_isolatie_zonder.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_isolatielight.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_isolatielight_zonder.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_isolatielighthybride.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_isolatielighthybride_zonder.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Export_resultaten/export_csv/Export

pause Totaal klaar