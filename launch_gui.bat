@echo off
REM STDatalog GUI Launcher with automatic virtual environment activation
REM This script should be placed in the root directory of stdatalog-pysdk

REM Get the directory where this batch file is located
set SCRIPT_DIR=%~dp0

REM Change to the script directory
cd /d "%SCRIPT_DIR%"

REM Check if virtual environment exists
if not exist ".venv\Scripts\Activate.bat" (
    echo ERROR: Virtual environment not found!
    echo Please make sure you have run the installation script first.
    echo Expected location: .venv\Scripts\Activate.bat
    pause
    exit /b 1
)

REM Activate virtual environment
echo Activating virtual environment...
call .venv\Scripts\Activate.bat

REM Check if GUI file exists
if not exist "stdatalog_examples\gui_applications\stdatalog\GUI\stdatalog_GUI.py" (
    echo ERROR: GUI file not found!
    echo Please make sure submodules are initialized: git submodule update --init --recursive
    pause
    exit /b 1
)

REM Launch the GUI
echo Launching STDatalog GUI...
python stdatalog_examples\gui_applications\stdatalog\GUI\stdatalog_GUI.py

REM Keep the terminal open to see any output/errors
echo.
echo GUI has closed. Press any key to exit...
pause
