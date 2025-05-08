REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

REM aanpassingen voor machine specifieke paden
Call path/set.bat

REM s0: referentiescenario
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s0.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_ref/export_csv/Export

REM s1a: schillabel B en eWPlw
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1a_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1a_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s1b: schillabel B en eWPbw
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1b_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s1b_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s2a: schillabel B en HT warmtenet
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2a_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2a_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s2d: schillabel D en HT warmtenet
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2d_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s2d_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s3a: schillabel B en LT warmtenet
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s3a_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s3a_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s3d: schillabel B en MT warmtenet
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s3d_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s3d_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s3g: schillabel D en LT warmtenet
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s3g_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s3g_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s4a: schillabel B en hwP
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4a_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4a_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

REM s4b: schillabel D en hwP
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4b_Nat.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export
START "HESTIA" /WAIT /BELOWNORMAL "%exe_path%" "/L%log_dir%\HestiaRun.txt"  "%prj_dir%\Runs\HestiaRun_s4b_Zst.dms" /TussenResultaten/R4_2024/StateNaAllocatie/bebouwingImpl/Woning/BO/Jaarlijks/Eindgebruikerskosten/export_strategie/export_csv/Export

pause Totaal klaar