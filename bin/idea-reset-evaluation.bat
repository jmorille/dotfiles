@echo off

rem *************** start of 'main'
set DEBUG=1
if "%DEBUG%"=="1" (set TRACE=echo) else (set TRACE=rem)


rem ### Install Variable ###
set JTB_INSTALL_ROOT=c:\jtb 
set JTB_IDEA_RESET_LICENSE_SH=./idea-reset-evaluation.sh


rem ### System environnement ###
%TRACE% Run Regedit with file :  %JTB_IDEA_RESET_LICENSE_REGFILE%
rem %SystemRoot%\regedit.exe /S %JTB_IDEARESET_REGFILE%
reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\idea" /f 
reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\phpstorm" /f 


rem ### Clear FS ###
%TRACE% Call SH Script :  %JTB_IDEA_RESET_LICENSE_SH%
%GIT_HOME%\git-bash.exe -c %JTB_IDEA_RESET_LICENSE_SH%
