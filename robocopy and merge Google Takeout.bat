@echo off
echo This script will iterate over each folder in the current directory (from which the script
echo is executed) which matches the expression "takeout-*" and merge them together in the 
echo current directory. 
echo Precondition: You've already unzipped all the archives in the current directory
echo and they are named with the default prefix of "takeout-".
echo.
echo I created this script to take all my Google Takeout Archive File "Chunks" and merge 
echo them back together in their original folder structure.
echo.

PAUSE

echo.
REM For each directory or folder in the current directory that matches the prefix "takeout-"
REM Move and merge the contents of the directory into the current directory. Log the results.
for /D %%g in (takeout-*) do (
    echo Merging the contents of %%g into the current directory.
    robocopy /E /MOVE %%g . /log+:robocopy-takeout.log
)

echo All folders have been merged into the current directory.
echo Please ensure that all your files are present using the robocopy.log file
echo that was generated in the current directory.
echo Launching robocopy-takeout.log file
start robocopy-takeout.log
echo.
echo You should always keep a back up of your Zipped Google Takeout.
echo Use this at your own risk.
echo Press any key to exit.
echo.
PAUSE
