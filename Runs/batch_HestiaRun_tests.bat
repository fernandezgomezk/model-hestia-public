REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_2020_zst.dms" /TussenResultaten/StartJaar/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_2021_zst.dms" /TussenResultaten/R1_2021/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_2022_zst.dms" /TussenResultaten/R2_2022/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_2023_zst.dms" /TussenResultaten/R3_2023/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_2024_zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_2025_zst.dms" /TussenResultaten/R5_2025/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export


pause Totaal klaar