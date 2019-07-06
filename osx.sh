#!/bin/sh

. ./unixutil.lib

echo "Installing everything needed for 2019 FRC development for Macbook"

# Install Homebrew (package manager for macs)
echo "=================================================
          Installing Homebrew
==================================================
"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git and wget using homebrew
echo "=================================================
        Using Homebrew to install git
=================================================
"
brew install git    # Version Control System used in robotics
echo "=================================================
       Using Homebrew to install wget
=================================================
"
brew install wget   # Needed to install online packages

# Install Visual Studio Code (Java IDE for FRC)
echo "==================================================
       Installing Visual Studio Code
==================================================
"
wget -c $VSCODE_WGET_LINK
unzip $VSCODE_WGET_ZIP_FILE -d $VSCODE_INSTALL_PATH
rm -f $VSCODE_WGET_ZIP_FILE

# Install WPILib

echo "==================================================
           Installing WPILIB
==================================================
"
wget $WPILIB_WGET_LINK
mkdir -p $WPILIB_INSTALL_PATH
tar xvzf $WPILIB_WGET_ZIP_FILE -C $WPILIB_INSTALL_PATH
rm -f $WPILIB_WGET_ZIP_FILE

# Install NavX

wget $NAVX_WGET_LINK
mkdir -p $NAVX_INSTALL_PATH
unzip $NAVX_WGET_ZIP_FILE -d $NAVX_INSTALL_PATH
rm -f $NAVX_WGET_ZIPFILE

# Install CTRE

wget $CTRE_WGET_LINK
mkdir -p $CTRE_INSTALL_PATH
unzip $CTRE_WGET_ZIP_FILE -d $NAVX_INSTALL_PATH
rm -f $CTRE_WGET_ZIPFILE

# Set JAVA_HOME

echo "export JAVA_HOME=$JAVA_HOME" >> $HOME/.profile
echo "export PATH=\"$PATH:$JAVA_HOME/bin\"" >> $HOME/.profile
. $HOME/.profile

# Install WPILib Tools

cd $WPILIB_INSTALL_PATH/tools
python3 ToolsUpdater.py

# Install VsCode Packages

cd $WPILIB_INSTALL_PATH/vsCodeExtensions
code --install-extension Cpp.vsix
code --install-extension JavaLang.vsix
code --install-extension JavaDeps.vsix
code --install-extension JavaDebug.vsix
code --install-extension WPILib.vsix

