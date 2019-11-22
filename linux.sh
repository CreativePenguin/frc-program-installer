#!/bin/sh

. util/unixutil.lib

echo "Installing everything needed for 2019 FRC development for Linux"

# Install Visual Studio Code (Java IDE for FRC)
echo "==================================================
       Installing Visual Studio Code
==================================================
"
vscodeSnapInstallation

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

# Install VsCode Extensions

VsCodeExtensions linux

# Install StuyPulse Jars

stuyJarInstallation
