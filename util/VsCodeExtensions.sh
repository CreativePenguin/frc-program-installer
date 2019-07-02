#!/bin/sh

cd $WPILIB_INSTALL_PATH/vsCodeExtensions
code --install-extension Cpp.vsix
code --install-extension JavaLang.vsix
code --install-extension JavaDeps.vsix
code --install-extension JavaDebug.vsix
code --install-extension WPILib.vsix

