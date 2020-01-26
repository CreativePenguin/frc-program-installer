#!/usr/bin/env python3

import toml
import sys

NUM_INPUTS = len(sys.argv) - 1
HELP_MESSAGE = '''
Usage: csaw <command> [candidate] [version]

    commands:
        install
        upgrade
'''

if NUM_INPUTS == 0:
    
    print('Usage: csaw <command> [candidate] [version]')
    print('\tcommands:')
