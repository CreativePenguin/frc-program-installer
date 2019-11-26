# frc-program-installer

Goal: To be able to install all things frc just by running a single script, should require no user input
[Trello Card](https://trello.com/c/xRbghY4X/196-develop-script-that-installs-all-things-frc)

**Non Windows Users Note**: There are some applications that are exclusive to windows laptops.
You will be able to code regardless of the os, however, do note that certain testing applications are exclusive to windows

## Windows Instructions

### Windows 7 & 10  
> This installs git, wpilib, frc update suite, ctre, pheonix tuner  
Doesn't quite accomplish the "run without user input" goal installs with exe files, which require confirmation and stuff  
Dependencies -- [Chocolatey](https://chocolatey.org/), wget

1. Fun fact: Windows doesn't come pre-installed with github. Check if github is pre-installed by running
`git --version` in powershell, or searching for the `git bash` application. If github is installed, clone by
typing in `git clone https://github.com/Stuypulse/frc-program-installer.git`. If not, click `Clone or Download`
button, and download the whole thing as a zip.
1. Right click powershell app, and select "run as administrator". 
Verify typing `$PSVersionTable` states the powershell version is higher than 3.
2. Run `Set-ExecutionPolicy RemoteSigned .\windows.ps1`. 
This is because Windows by default doesn't let you run scripts that aren't signed.
3. Run the shellscript with .\windows.ps1
4. Will update on the instructions on options for the exe files

### Windows (Powershell Version Under 3)

1. Clone this git repo by typing `git clone https://github.com/StuyPulse/frc-program-installer.git`
1. Install it manually [here](https://classroom.google.com/h) *replace with real link when possible*
2. If you want to have another installer for all this stuff automatically, message Winston 
<a href='http://tinyurl.com/2g9mqh'>here</a>

## MacOS Instructions
> Note: This is temporarily broken on macOS see why here: https://github.com/microsoft/vscode/issues/74782
This installs wpilib, ctre, and navx  
Dependencies -- [homebrew](https://brew.sh/), wget

1. If git is not pre-installed, type in `xcode-select --install` to install it
1. Clone this git repo by typing `git clone https://github.com/StuyPulse/frc-program-installer.git`
1. Type `chmod +x macOS.sh` into terminal. `sudo` means to use administrative powers, `chmod` let's you changed the permissions of an object. You can make it read-only, or give you permission to write to the file. In this case, we typed `+x`. This gives us the permission to execute the file like we'll do in the next step
2. Type `. ./macOS.sh`. This will execute the script, and install everything. There's an extra dot added before it so that it runs the script within the same shell instead of spawning another shell.

## Linux Instructions

### Ubuntu Instructions
> This installs wpilib, ctre, and navx  
1. Clone this git repo by typing `git clone https://github.com/StuyPulse/frc-program-installer.git`
1. Type `chmod +x linux.sh` into terminal. See MacOS instructions for explanation
2. Type `. ./linux.sh`. This will execute the script, and install everything. There's an extra dot added before it so that it runs the script within the same shell instead of spawning another shell.|

### Other Distro Instructions
1. Install `snapd` by following this link [here](https://snapcraft.io/docs/installing-snapd)  
Snap is a program that let's you download packages regardless of the linux distro. That's where we're downloading vscode from.
2. Follow Ubuntu instructions from here
