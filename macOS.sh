#!/bin/sh

. ./unixutil.lib

echo "Installing everything needed for 2019 FRC development for Macbook"

# Install Homebrew (package manager for macs)
homebrewInstallation

# Install Visual Studio Code (Java IDE for FRC)
echo "==================================================
       Installing Visual Studio Code
==================================================
"
vscodeLinkInstallation

# Install WPILib

echo "==================================================
           Installing WPILIB
==================================================
"
wpilibInstallation

# Install NavX

navxInstallation

# Install CTRE

ctreInstallation

# Set JAVA_HOME

setEnvironmentVariables

# Install WPILib Tools

toolsUpdater

# Install VsCode Packages

vscodeExtensionsInstallation macOS

# Install stuypulse jars

stuyJarInstallation

