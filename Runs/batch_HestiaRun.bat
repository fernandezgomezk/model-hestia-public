REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_dakisolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_gevelisolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_glasisolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_deurisolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_spouwmuurisolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_vloerisolatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_biomassaketel.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_hrketel.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_hybridewarmtepomp.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_warmtepomp.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_ventilatie.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_zonneboiler.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_zonnepanelen.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_besparingskengetallen/export_csv/Export

pause Totaal klaar