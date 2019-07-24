# Make sure to run "Set-ExecutionPolicy RemoteSigned"

# This variable needs to be updated regularly -- Replace with link to frc update suite of that year
$frc_update_suite_link = http://download.ni.com/support/softlib/first/frc/FileAttachments/FRCUpdateSuite_2019.2.0.zip
#This variable should match the end of the last url
$frc_update_suite_zip_file_name = 'FRCUpdateSuite_2019.2.0.zip'

# These variables will update automatically and hopefully won't need to be changed
#This variable will get the version number of the wpilibsuite. It goes to a webpage that automatically redirects to the latest release of wpilib, and snips out the rest of the link to only include the version number.
$wpilib_version = (curl.exe https://github.com/wpilibsuite/allwpilib/releases/latest).Substring(90, 8)
#This variable takes the download link for the wpilib releases, and puts in the version number.
$wpilib_install_link = 'https://github.com/wpilibsuite/allwpilib/releases/download/v' + $wpilib_version + '/WPILibInstaller_Windows64-' + $wpilib_version + '.zip'

choco feature enable -n allowGlobalConfirmation
choco install git.install
y
choco install wget
y

# Runs command prompt because wget only works there
& 'C:\Windows\System32\cmd.exe'
wget $wpilib_install_link
wget $update_suite_link
exit

Expand-Archive -Path WPILibInstaller_Windows64-$test.zip -DestinationPath wpilib
Expand-Archive -Path $frc_update_suite_zip_file_name -DestinationPath wpilib
& .\'wpilib\WPILibInstaller_Windows64-'$wpilib_version'.exe'
.\wpilib\setup.exe
