REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

set pd_root=N:\PD\_Bas\Vesta35beta_Bas\Runs
set exe=GeoDms7182

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%

if not exist %pd_root% goto error



"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S0_Referentie_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S0_Referentie.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S0_Referentie_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S0_Referentie.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1a_AllElectric_lucht_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S1a_AllElectric_lucht.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1a_AllElectric_lucht_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S1a_AllElectric_lucht.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1b_AllElectric_bodem_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S1b_AllElectric_bodem.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1b_AllElectric_bodem_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S1b_AllElectric_bodem.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2a_restwarmte_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S2a_restwarmte.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2a_restwarmte_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S2a_restwarmte.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2b_Geothermie-metcontour_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S2b_Geothermie-metcontour.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2b_Geothermie-metcontour_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S2b_Geothermie-metcontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2c_Geothermie-zondercontour_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S2c_Geothermie-zondercontour.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2c_Geothermie-zondercontour_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S2c_Geothermie-zondercontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2d_BioWKK_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S2d_BioWKK.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2d_BioWKK_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S2d_BioWKK.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3a_LT3030_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S3a_LT3030.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3a_LT3030_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S3a_LT3030.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3b_LT3070_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S3b_LT3070.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3b_LT3070_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S3b_LT3070.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3c_LT3050_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S3c_LT3050.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3c_LT3050_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S3c_LT3050.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3d_WKO_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S3d_WKO.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3d_WKO_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S3d_WKO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3e_TEO_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S3e_TEO.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3e_TEO_R2_2030_DataPakketExport_NL.txt" "%pd_root%\S3e_TEO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S4_hwp_GG_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S4_hwp_GG.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S4_hwp_GG_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S4_hwp_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S5_HR_GG_StartJaar_DataPakketExport_NL.txt" "%pd_root%\S5_HR_GG.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/export_csv_nl/result
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S5_HR_GG_R1_2030_DataPakketExport_NL.txt" "%pd_root%\S5_HR_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all




"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S0_Referentie_StartJaar_DataPakketExport.txt" "%pd_root%\S0_Referentie.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S0_Referentie_R1_2030_DataPakketExport.txt" "%pd_root%\S0_Referentie.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1a_AllElectric_lucht_StartJaar_DataPakketExport.txt" "%pd_root%\S1a_AllElectric_lucht.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1a_AllElectric_lucht_R2_2030_DataPakketExport.txt" "%pd_root%\S1a_AllElectric_lucht.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1b_AllElectric_bodem_StartJaar_DataPakketExport.txt" "%pd_root%\S1b_AllElectric_bodem.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S1b_AllElectric_bodem_R2_2030_DataPakketExport.txt" "%pd_root%\S1b_AllElectric_bodem.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2a_restwarmte_StartJaar_DataPakketExport.txt" "%pd_root%\S2a_restwarmte.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2a_restwarmte_R1_2030_DataPakketExport.txt" "%pd_root%\S2a_restwarmte.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2b_Geothermie-metcontour_StartJaar_DataPakketExport.txt" "%pd_root%\S2b_Geothermie-metcontour.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2b_Geothermie-metcontour_R1_2030_DataPakketExport.txt" "%pd_root%\S2b_Geothermie-metcontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2c_Geothermie-zondercontour_StartJaar_DataPakketExport.txt" "%pd_root%\S2c_Geothermie-zondercontour.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2c_Geothermie-zondercontour_R1_2030_DataPakketExport.txt" "%pd_root%\S2c_Geothermie-zondercontour.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2d_BioWKK_StartJaar_DataPakketExport.txt" "%pd_root%\S2d_BioWKK.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S2d_BioWKK_R1_2030_DataPakketExport.txt" "%pd_root%\S2d_BioWKK.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3a_LT3030_StartJaar_DataPakketExport.txt" "%pd_root%\S3a_LT3030.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3a_LT3030_R2_2030_DataPakketExport.txt" "%pd_root%\S3a_LT3030.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3b_LT3070_StartJaar_DataPakketExport.txt" "%pd_root%\S3b_LT3070.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3b_LT3070_R2_2030_DataPakketExport.txt" "%pd_root%\S3b_LT3070.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3c_LT3050_StartJaar_DataPakketExport.txt" "%pd_root%\S3c_LT3050.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3c_LT3050_R2_2030_DataPakketExport.txt" "%pd_root%\S3c_LT3050.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3d_WKO_StartJaar_DataPakketExport.txt" "%pd_root%\S3d_WKO.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3d_WKO_R2_2030_DataPakketExport.txt" "%pd_root%\S3d_WKO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3e_TEO_StartJaar_DataPakketExport.txt" "%pd_root%\S3e_TEO.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S3e_TEO_R2_2030_DataPakketExport.txt" "%pd_root%\S3e_TEO.dms" /Resultaten/R2_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S4_hwp_GG_StartJaar_DataPakketExport.txt" "%pd_root%\S4_hwp_GG.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S4_hwp_GG_R1_2030_DataPakketExport.txt" "%pd_root%\S4_hwp_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all

"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S5_HR_GG_StartJaar_DataPakketExport.txt" "%pd_root%\S5_HR_GG.dms" /Resultaten/StartJaar/DataPakketExport/bestaand/generate_all
"N:\prog\ObjectVision\%exe%\GeoDmsRun.exe" /L"N:\log_bas\%SUBFILENAME%_S5_HR_GG_R1_2030_DataPakketExport.txt" "%pd_root%\S5_HR_GG.dms" /Resultaten/R1_2030/DataPakketExport/bestaand/generate_all


