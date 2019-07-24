# frc-program-installer

## Windows Instructions

### Windows 10

> This installs git, wpilib, frc update suite, Alfred jar

1. First right click powershell, and select "run as administrator"
2. Run Set-ExecutionPolicy RemoteSigned. This is because Windows by default doesn't let you run shellscripts that aren't signed
3. Run the shellscript with .\windows.ps1
4. Will update on the instructions on options for the exe files

### Windows 7

1. Buy Winston a cookie, and offer to do some of his math homework, and he'll write a script to do it automatically. Or just install it manually [here](ismycomputeron.com) *replace with real link when possible*

## MacOS Instructions

1. Type `sudo chmod +x osx` into terminal. `sudo` means to use administrative powers, `chmod` let's you changed the permissions of an object. You can make it read-only, or give you permission to write to the file. In this case, we typed `+x`. This gives us the permission to execute the file like we'll do in the next step
2. Type `. ./osx`. This will execute the script, and install everything. There's an extra dot added before it so that it runs the script within the same shell instead of spawning another shell.

## Linux Instructions

### Debian (Ubuntu)

1. Install vscode first with `snap install code --classic`

### Red Hat (Fedora) -- untested bc no one on the team uses this

### Arch

1. Install snap [here](https://docs.snapcraft.io/installing-snapd)
