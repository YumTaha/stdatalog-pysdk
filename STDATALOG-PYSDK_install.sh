#!/bin/bash 
#This batch file is used to install all Python packages needed to use the HSDPython_SDK and its examples
echo "HSDPython_SDK Installer"
echo ""
echo "[NOTE]: If you are using a proxy launch this script passing your proxy string as a parameter."
echo "-- e.g.: HSDPython_SDK_install.bat http://usr_name:password@proxyserver_name:port"
echo ""

# Section 0: Linux Prerequisites
echo "==================================================="
echo "check and install prerequisites"
echo "==================================================="

if [[ "$(uname -m)" == "armv7l" ]]; then
echo "Raspberry Pi doesn't support GUI. Please use HSDPython_SDK_install_noGUI.sh"
fi

sudo apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0
sudo apt-get install libxcb-cursor-dev

# Section 1: stdatalog_pnpl
echo "==================================================="
echo "installing stdatalog_pnpl..."
echo "==================================================="
python3 -c "import pkg_resources; pkg_resources.require('stdatalog_pnpl')" 2>/dev/null
if [ $? -eq 0 ]; then
	echo "Version to be installed: 1.0.0"
	python3 -m pip uninstall stdatalog_pnpl -y
fi
if [ -z $1 ]
then
	python3 -m pip install stdatalog_pnpl/dist/stdatalog_pnpl-1.0.0-py3-none-any.whl
else
	python3 -m pip install stdatalog_pnpl/dist/stdatalog_pnpl-1.0.0-py3-none-any.whl --proxy=$1
fi
# Section 2: stdatalog_core
echo "==================================================="
echo "installing stdatalog_core..."
echo "==================================================="
python3 -c "import pkg_resources; pkg_resources.require('stdatalog_core')" 2>/dev/null
if [ $? -eq 0 ]; then
	echo "Version to be installed: 1.0.0"
	python3 -m pip uninstall stdatalog_core -y
fi
if [ -z $1 ]
then
	python3 -m pip install stdatalog_core/dist/stdatalog_core-1.0.0-py3-none-any.whl
else
	python3 -m pip install stdatalog_core/dist/stdatalog_core-1.0.0-py3-none-any.whl --proxy=$1
fi
# Section 3: stdatalog_dtk
echo "==================================================="
echo "installing stdatalog_dtk..."
echo "==================================================="
python3 -c "import pkg_resources; pkg_resources.require('stdatalog_dtk')" 2>/dev/null
if [ $? -eq 0 ]; then
	echo "Version to be installed: 1.0.0"
	python3 -m pip uninstall stdatalog_dtk -y
fi
if [ -z $1 ]
then
	python3 -m pip install stdatalog_dtk/dist/stdatalog_dtk-1.0.0-py3-none-any.whl
else
	python3 -m pip install stdatalog_dtk/dist/stdatalog_dtk-1.0.0-py3-none-any.whl --proxy=$1
fi
# Section 4: stdatalog_gui
echo "==================================================="
echo "installing stdatalog_gui..."
echo "==================================================="
python3 -c "import pkg_resources; pkg_resources.require('stdatalog_gui')" 2>/dev/null
if [ $? -eq 0 ]; then
	echo "Version to be installed: 1.0.0"
	python3 -m pip uninstall stdatalog_gui -y
fi
if [ -z $1 ]
then
	python3 -m pip install stdatalog_gui/dist/stdatalog_gui-1.0.0-py3-none-any.whl
else
	python3 -m pip install stdatalog_gui/dist/stdatalog_gui-1.0.0-py3-none-any.whl --proxy=$1
fi
