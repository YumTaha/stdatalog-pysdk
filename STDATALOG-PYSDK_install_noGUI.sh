#!/bin/bash 
#This batch file is used to install all Python packages needed to use the HSDPython_SDK and its examples
echo "HSDPython_SDK(no GUI version) Installer"
echo ""
echo "[NOTE]: If you are using a proxy launch this script passing your proxy string as a parameter."
echo "-- e.g.: HSDPython_SDK_install.bat http://usr_name:password@proxyserver_name:port"
echo ""

# Section 0: Linux Prerequisites
echo "==================================================="
echo "check and install prerequisites"
echo "==================================================="
sudo apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0
sudo apt-get install libxcb-cursor-dev

if [[ "$(uname -m)" == "aarch64" || "$(uname -m)" == "armv7l" ]]; then
sudo apt-get install libjpeg-dev zlib1g-dev
sudo apt-get install python3-dev libatlas-base-dev
fi

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
