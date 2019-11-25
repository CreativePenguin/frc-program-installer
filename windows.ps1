# Make sure to run "Set-ExecutionPolicy RemoteSigned"

#This variable should match the end of the last url This variable will probably need to be updated regularly
$frc_update_suite_verion = 'FRCUpdateSuite_2019.2.0.zip'
# This variable needs to be updated regularly -- Replace with link to frc update suite of that year
$frc_update_suite_link = http://download.ni.com/support/softlib/first/frc/FileAttachments/ + $frc_update_suite_verion


# These variables will update automatically and hopefully won't need to be changed
#This variable will get the version number of the wpilibsuite. It goes to a webpage that automatically redirects to the latest release of wpilib, and snips out the rest of the link to only include the version number.
$wpilib_version = (curl.exe https://github.com/wpilibsuite/allwpilib/releases/latest).Substring(90, 8)
# This variable takes the download link for the wpilib releases, and puts in the version number.
$wpilib_install_link = 'https://github.com/wpilibsuite/allwpilib/releases/download/v' + $wpilib_version + '/WPILibInstaller_Windows64-' + $wpilib_version + '.zip'
# This variable stores the beginning index for the substring that keeps track of the ctre version.
# link lists all the releases for ctre. This code gets the latest one listed CTRE Toolsuite
$ctre_version = py .\util\getLatestCTREVersion.py (curl.exe http://www.ctr-electronics.com/downloads/installers/) "CTRE Toolsuite"
$ctre_install_link = http://www.ctr-electronics.com/downloads/installers/ + $ctre_version.Replace(" ", "%20")

choco install git.install -y
choco install wget -y
choco install vscode -y
choco install python3 -y
refreshenv

# Runs command prompt because wget only works there
& 'C:\Windows\System32\cmd.exe'
wget $wpilib_install_link
wget $frc_update_suite_link
wget $ctre_install_link
exit

# unzips the zip files from wget
Expand-Archive -Path "WPILibInstaller_Windows64-" + $wpilib_version + ".zip" -DestinationPath .\wpilib
Expand-Archive -Path $frc_update_suite_zip_file_name -DestinationPath .\wpilib
# run exe files that are unzipped
& .\'wpilib\WPILibInstaller_Windows64-'$wpilib_version'.exe'
& .\wpilib\setup.exe

# run command prompt again to edit system variables
& 'C:\Windows\System32\cmd.exe'
setx /M PATH "%PATH%;C:\Users\Public\frc2019\jdk\bin"
setx /M JAVA_HOME "C:\Users\Public\frc2019\jdk"
setx /M FRC_HOME "C:\Users\Public\frc2019"
exit
