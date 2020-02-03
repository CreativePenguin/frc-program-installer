#!/usr/bin/env python3

import toml
import sys

# Quick note: the help messages are based off of sdkman
NUM_INPUTS = len(sys.argv) - 1
HELP_MSG = '''
Usage: csaw <command> [candidate] [version]

    commands:
        install
        upgrade
'''
NO_INPUTS_MSG = '''
Usage: csaw <command> [candidate]

    commands:
        install     or i    [application]
        uninstall   or rm   [application]
        list        or ls
        help        or h
		new					[project name]
'''
def getOS():
    """Returns current os that matches toml description
    sys.platform docs: https://docs.python.org/3/library/sys.html#sys.platform
    toml is organized by OS. This function is used to detect current OS, &
    translates it so it can be read by toml
    """
    try:
        platform = {"win32":"Windows", "darwin":"macOS", "linux":"Linux"}
        return platform[sys.platform]
    except KeyError:
        if sys.platform.startswith("linux"):
            return "Linux"
        print("OS Invalid. csaw only works on windows, macOS, & linux")
        raise OSError

def install(argv2):
    downloadInfo = toml.load("{}.toml".format(argv2))["Windows"]

# https://stackoverflow.com/questions/419163/what-does-if-name-main-do
if __name__ == '__main__':
    if NUM_INPUTS == 0:
        print(NO_INPUTS_MSG)

    if NUM_INPUTS == 1:
        command = sys.argv[1]
        if input == 'i' or input == 'install':
            install(argv[2])
        if input == 'help' or input == 'h':
            print(HELP_MSG)
