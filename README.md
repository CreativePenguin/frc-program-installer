# frc-program-installer

Goal: To be able to install all things frc just by running a single script (should work for everything other than windows)
Goal: Add the stuypulse library as a subtree so that it will update automatically

[Trello Card](https://trello.com/c/xRbghY4X/196-develop-script-that-installs-all-things-frc)

## Windows Instructions

### Windows 7 & 10

> This installs git, wpilib, frc update suite, Alfred jar

1. First right click powershell, and select "run as administrator"
2. Type in `$PSVersionTable`, and verify that the powershell version is higher than 3
2. Run `Set-ExecutionPolicy RemoteSigned`. This is because Windows by default doesn't let you run scripts that aren't signed.
3. Run the shellscript with .\windows.ps1
4. Will update on the instructions on options for the exe files

### Windows (Powershell Version Under 3)

1. Install it manuall [here](https://classroom.google.com) *replace with real link when possible*
2. If you want to have another installer for all this stuff automatically, message Winston [here](https://www.ismycomputeronfire.com)

## MacOS Instructions

1. Type `sudo chmod +x osx` into terminal. `sudo` means to use administrative powers, `chmod` let's you changed the permissions of an object. You can make it read-only, or give you permission to write to the file. In this case, we typed `+x`. This gives us the permission to execute the file like we'll do in the next step
2. Type `. ./osx`. This will execute the script, and install everything. There's an extra dot added before it so that it runs the script within the same shell instead of spawning another shell.

## Linux Instructions

1. Install snap [here](https://docs.snapcraft.io/installing-snapd)
Note: Installed automatically on Ubuntu
2. Install vscode first with `snap install code --classic`
