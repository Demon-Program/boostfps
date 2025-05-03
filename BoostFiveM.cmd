color 0A

echo ---------------------------
echo 🔧 
echo ---------------------------
del /s /f /q %temp%\* >nul 2>&1
del /s /f /q C:\Windows\Temp\* >nul 2>&1
cleanmgr /sagerun:1

echo ---------------------------
echo 🚀 
echo ---------------------------
reg add "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >nul

echo ---------------------------
echo ⏱ 
echo ---------------------------
net stop "SysMain" >nul 2>&1
net stop "DiagTrack" >nul 2>&1
net stop "Print Spooler" >nul 2>&1

echo ---------------------------
echo 🌐 
echo ---------------------------
ipconfig /flushdns
netsh winsock reset >nul
netsh int ip reset >nul

echo ---------------------------
echo ✅
echo ---------------------------
pause
