REM Game Dev Laptop Organize Files
REM 01.13.2020
@ECHO OFF

REM Make Directory for Starters (.gmz)
IF NOT EXIST C:\GameDev\NUL MD C:\GameDev
IF NOT EXIST C:\GameDev\Starters\NUL MD C:\GameDev\Starters

REM Move Starters from Desktop, Documents, Downloads to Starters
MOVE %UserProfile%\Desktop\*.gmz C:\GameDev\Starters
MOVE %UserProfile%\Documents\*.gmz C:\GameDev\Starters
MOVE %UserProfile%\Downloads\*.gmz C:\GameDev\Starters

REM Make Directory for Projects (.gmx)
IF NOT EXIST C:\GameDev\Projects\NUL MD C:\GameDev\Projects

REM Copy Projects from Desktop, Documents, (/GameMaker) Downloads to Projects
XCOPY %UserProfile%\Desktop\*.gmx C:\GameDev\Projects /q /s

REM Remove Projects from Desktop, Documents, (/GameMaker) Downloads
FOR /D /R %UserProfile%\Desktop %%X IN (*.gmx) DO RMDIR /S /Q "%%X"

REM Make Directory for Old Projects (.gm81)
IF NOT EXIST C:\GameDev\Old\NUL MD C:\GameDev\Old

REM Move Old .gm81 files to Old
MOVE %UserProfile%\Desktop\*.gm81 C:\GameDev\Old
MOVE %UserProfile%\Documents\*.gm81 C:\GameDev\Old
MOVE %UserProfile%\Downloads\*.gm81 C:\GameDev\Old

REM Delete *.gb1 files
DEL %UserProfile%\Desktop\*.gb1
DEL %UserProfile%\Downloads\*.gb1
DEL %UserProfile%\Documents\*.gb1

REM http://www.tenforums.com/tutorials/57518-desktop-icons-auto-arrange-turn-off-windows-10-a.html 
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" /V FFLAGS /T REG_DWORD /D 1075839525 /F
TASKKILL /f /im explorer.exe
START explorer.exe

ECHO Done
PAUSE