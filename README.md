# STDATALOG-PYSDK - Windows STWIN.box Development Kit

![latest tag](https://img.shields.io/github/v/tag/YumTaha/stdatalog-pysdk.svg?color=brightgreen)

The **[STDATALOG_PYSDK](https://github.com/YumTaha/stdatalog-pysdk)** is a customized Python framework designed to facilitate data capture, processing, and visualization specifically for the **STWIN.box** (STEVAL-STWINBX1) board on Windows systems.

This customized version has been streamlined for Windows development with the STWIN.box board, removing support for other platforms to reduce complexity and focus on the specific hardware being used.

**STDATALOG-PYSDK** has been developed in **Python 3.13**, but it is also compatible with Python 3.12, 3.11 and 3.10.

![](_htmresc/STDATALOG-PYSDK_Software_Architecture.svg)

## Repository Structure

This repository has been customized with the following changes:
- **Windows-only**: Removed Linux and macOS setup instructions and files
- **STWIN.box only**: Removed support for all other boards except STEVAL-STWINBX1
- **Streamlined**: Focused documentation and configuration for single-board development

## How to Clone and Setup

This repository uses `git submodule` for its architecture. Follow these steps:

### 1. Clone the Repository
```bash
git clone --recursive https://github.com/YumTaha/stdatalog-pysdk.git
```

### 2. Get Latest Updates (if already cloned)
```bash
git pull
git submodule update --init --recursive
```

## How to Install STDATALOG-PYSDK

> [!IMPORTANT]
> **For GitHub Copilot Users**: This project uses custom wheel files for the main stdatalog packages.
> **DO NOT** use `pip install -r requirements.txt` directly!

### Installation Steps

1. **Create Virtual Environment**
   ```bash
   python -m venv .venv
   ```

2. **Activate Virtual Environment**
   ```bash
   .\.venv\Scripts\activate
   ```

3. **Update Submodules**
   ```bash
   git submodule update --init --recursive
   ```

4. **Run Installation Script**
   ```bash
   .\STDATALOG-PYSDK_install.bat
   ```

### Behind a Proxy Server
If you are behind a proxy server, specify it in the command (replace special characters with hex representation, e.g., '&' → %26):
```bash
.\STDATALOG-PYSDK_install.bat http://usr_name:password@proxyserver_name:port
```

### Test Installation
Once installation is complete, test with the GUI:
```bash
cd stdatalog_examples
python gui_applications/stdatalog/GUI/stdatalog_GUI.py
```

Or use the convenient launcher:
```bash
.\launch_gui.bat
```

## Key Dependencies

The installation script automatically installs these core dependencies:

### Data Processing & Analysis
- numpy==2.2.4
- pandas==2.2.3
- h5py==3.13.0
- pyarrow==20.0.0
- dask==2025.5.1

### GUI Components (PySide6)
- PySide6==6.9.0
- PySide6-Addons==6.9.0
- PySide6-Essentials==6.9.0
- shiboken6==6.9.0
- pyqtgraph==0.13.7

### Visualization
- plotly==5.24.1
- plotly-resampler==0.10.0
- dash==3.1.1

### Core SDK Components (Wheel Files)
- stdatalog_pnpl-1.2.0 (from stdatalog_pnpl/dist/)
- stdatalog_core-1.2.0 (from stdatalog_core/dist/)
- stdatalog_dtk-1.2.0 (from stdatalog_dtk/dist/)
- stdatalog_gui-1.2.0 (from stdatalog_gui/dist/)

See [requirements.txt](requirements.txt) for the complete dependency list.

## Supported Hardware

This customized version supports only:
- **[STEVAL-STWINBX1](https://www.st.com/stwinbox)** - STWIN.box SensorTile Wireless Industrial Node Development Kit

## Development Environment

- **OS**: Windows (Linux and macOS support removed)
- **Python**: 3.13, 3.12, 3.11, 3.10
- **Board**: STWIN.box (STEVAL-STWINBX1) only

## GitHub Copilot Integration

This repository includes special instructions for GitHub Copilot:
- Copilot will automatically guide users through the correct installation process
- Prevents common mistakes like using `pip install -r requirements.txt`
- Provides step-by-step setup instructions
- Focuses on the wheel-based installation method

## Repository Customizations

### Removed Components
- Linux setup folder and USB configuration scripts
- Support for 12+ other boards (kept only STWIN.box)
- Linux/macOS installation instructions
- Non-Windows platform documentation

### Added Components
- Windows-focused requirements.txt with Copilot instructions
- GUI launcher batch file (launch_gui.bat)
- Streamlined documentation for single-board development
- Filtered USB device catalog (37 STWIN.box entries only)

## File Structure
```
stdatalog-pysdk/
├── README.md                        # This file
├── requirements.txt                 # Dependencies with Copilot instructions
├── launch_gui.bat                   # GUI launcher script
├── STDATALOG-PYSDK_install.bat     # Installation script
├── stdatalog_core/                  # Core SDK components
├── stdatalog_dtk/                   # Data toolkit
├── stdatalog_gui/                   # GUI components
├── stdatalog_pnpl/                  # PnPL components (STWIN.box only)
└── stdatalog_examples/              # Examples and documentation
```

## Getting Started

1. Clone the repository with submodules
2. Create and activate a virtual environment
3. Run the installation script
4. Launch the GUI with `.\launch_gui.bat`
5. Connect your STWIN.box board and start logging data

## Dependencies

- Python 3.10+ (recommended: 3.13)
- Windows OS
- STWIN.box board with FP-SNS-DATALOG2 firmware
- Virtual environment (recommended)

## Known Limitations

- Windows only (Linux and macOS support removed)
- STWIN.box board only (other boards not supported)
- Requires proper virtual environment setup
- Custom wheel files must be installed via provided script

## Development Toolchains

- **Compatible with**: Windows machines only
- **Python**: 3.13, 3.12, 3.11, 3.10
- **IDE**: VS Code (recommended with GitHub Copilot)
- **Hardware**: STWIN.box (STEVAL-STWINBX1)

## Backward Compatibility

- Compatible with FP-SNS-DATALOG2 function pack
- Maintains core SDK functionality
- Streamlined for single-board development
