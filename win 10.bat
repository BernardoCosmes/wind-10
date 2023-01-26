@echo off
title Serial Key Activation

:validation
net session
cls
if %errorLevel%==0 (goto :script) else (goto :erro)

:erro
echo * RUN AS ADMINISTRATOR *
echo.
echo Press any key to exit...
pause > nul
exit

:script
systeminfo | findstr /l /c:"Microsoft Windows"
echo.
echo Windows versions:
echo -------------------------------------------------
echo [a] Home/Core
echo [b] Home/Core (Country Specific)
echo [c] Home/Core (Single Language)
echo [d] Home/Core N
echo [e] Professional
echo [f] Professional N
echo [g] Enterprise
echo [h] Enterprise N
echo [i] Education
echo [j] Education N
echo [k] Enterprise 2015 LTSB
echo [l] Enterprise 2015 LTSB N
echo [m] Enterprise 2016 LTSB
echo [n] Enterprise 2016 LTSB N
echo -------------------------------------------------
choice /c abcdefghijklmn /n /m "Choose a option:"
if %errorLevel%==1 (set serial=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99)
if %errorLevel%==2 (set serial=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR)
if %errorLevel%==3 (set serial=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH)
if %errorLevel%==4 (set serial=3KHY7-WNT83-DGQKR-F7HPR-844BM)
if %errorLevel%==5 (set serial=W269N-WFGWX-YVC9B-4J6C9-T83GX)
if %errorLevel%==6 (set serial=MH37W-N47XK-V7XM9-C7227-GCQG9)
if %errorLevel%==7 (set serial=NPPR9-FWDCX-D2C8J-H872K-2YT43)
if %errorLevel%==8 (set serial=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4)
if %errorLevel%==9 (set serial=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2)
if %errorLevel%==10 (set serial=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ)
if %errorLevel%==11 (set serial=WNMTR-4C88C-JK8YV-HQ7T2-76DF9)
if %errorLevel%==12 (set serial=2F77B-TNFGY-69QQF-B8YKP-D69TJ)
if %errorLevel%==13 (set serial=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ)
if %errorLevel%==14 (set serial=QFFDN-GRT3P-VKWWX-X7T3R-8B639)
cls
cscript slmgr.vbs /ipk %serial%
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
echo Press any key to exit...
pause > nul
exit