REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

REM eWPlwD: schillabel D en eWPlw
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_eWPlwD_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_eWPlwD_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM eWPbwD: schillabel D en eWPbw
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_eWPbwD_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_eWPbwD_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

pause Totaal klaar