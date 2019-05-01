@echo off
echo This will use a loop to iterate over each folder in the current directory
echo which matches the expression "takeout-*" and merge them together in the 
echo current directory.
echo.
echo It was designed to take all the Google Takeout Archive File "Chunks" and 
echo merge them back together.
echo.

PAUSE

echo.

for /D %%g in (takeout-*) do (
    Echo Merging the contents of %%g into the current directory.
    robocopy /E /MOVE %%g . /log+:robocopy.log
)

echo All folders have been merged into the current directory.
echo Please ensure that all your files are present using the robocopy.log file
echo that was generated in the current directory.
echo.
echo Press any key to exit.
echo.
PAUSE