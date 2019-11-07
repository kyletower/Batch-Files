@ECHO OFF
ECHO Copying Google Hangouts Chat to shell:startup folder
XCOPY /B /I "%UserProfile%\Desktop\Hangouts Chat.lnk" "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
ECHO Success! Google Hangouts Chat will now automatically open when you log in to Windows.
ECHO Press any key to exit.
PAUSE
