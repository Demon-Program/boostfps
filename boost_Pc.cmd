color 0a

echo ================================================
echo        ⚡ Game Boost & PC Clean Tool ⚡
echo        Optimizing your PC for FiveM / GTA V
echo ================================================
echo.

:: Clean temp files
echo 🧹 Cleaning temporary files...
del /s /f /q "%temp%\*" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*" >nul 2>&1
echo Done!

:: Clear DNS cache
echo 🔄 Flushing DNS...
ipconfig /flushdns
echo Done!

:: Disable unnecessary services temporarily
echo 🛑 Stopping unnecessary background services...
net stop "SysMain" >nul 2>&1
net stop "Windows Search" >nul 2>&1
net stop "Fax" >nul 2>&1
net stop "Print Spooler" >nul 2>&1
echo Done!

:: Disable Xbox services (safe for gaming PCs)
echo 🎮 Disabling Xbox-related services...
sc stop XblAuthManager >nul 2>&1
sc stop XblGameSave >nul 2>&1
sc stop XboxNetApiSvc >nul 2>&1
echo Done!

:: Network optimizations
echo 📡 Setting network tweaks for low ping...
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=enabled
netsh int ip reset >nul
echo Done!

:: Clean Prefetch (Optional - won't harm system)
echo 🚀 Cleaning prefetch files...
del /q /f C:\Windows\Prefetch\* >nul 2>&1
echo Done!

:: Clear event logs (optional)
echo 🧾 Clearing system event logs...
for /F "tokens=*" %%1 in ('wevtutil el') DO wevtutil cl "%%1"
echo Done!

:: Pause before exit
echo.
echo ✅ Optimization Complete! Enjoy smoother gameplay 🎮
pause
exit
