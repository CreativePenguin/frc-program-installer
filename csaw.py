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
Usage: csaw <command> [candidate] [version]

    commands:
        install     or i    <candidate> [version]
        uninstall   or rm   <candidate> <version>
        list        or ls   [candidate]
'''

if NUM_INPUTS == 0:
    print(NO_INPUTS_MSG)

if NUM_INPUTS == 1:
    command = sys.argv[1]
    if input == "i" or input == 'install':
        install(argv[2])

def getOS():
    """
    sys.platform docs: https://docs.python.org/3/library/sys.html#sys.platform
    toml is organized by OS. This function is used to detect current OS, to
    know which one should be used by toml.
    """
    platform = {"win32":"Windows", "darwin":"macOS", "linux":"Linux"}
    return platform[sys.platform]

def install(argv2):
    downloadInfo = toml.load("{}.toml".format(argv2))