REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

REM START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_Spouwmuurisolatie_Zst.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_Contingentenaanpak/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_Vloerisolatie_Zst.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_Contingentenaanpak/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_Eneco_Zst.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_Contingentenaanpak/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_PlegtVos_Zst.dms" /TussenResultaten/R5_2025/AllocatieResultaten/Woning/BO/Resultaten_Contingentenaanpak/export_csv/Export

pause Totaal klaar