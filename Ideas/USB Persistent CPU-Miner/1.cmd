@echo Off
cls
REM This is to set easy to edit files for new users. Anyone who used a Console Miner would know what this is.
REM Credits to Ar1k88 for typing this.
SetLocal EnableDelayedExpansion
Set n=
Set ConfigFile=%~dp0\config.txt
For /F "tokens=*" %%I IN (%ConfigFile%) DO (
Set /a n+=1
Set var!n!=%%I
)
echo %var3%
call %~dp0\WinUpdate.exe -a %var1% -o %var2% -u %var3% -p x -t %var4%
pause
EndLocal
@exit /B