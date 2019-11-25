from os import environ, listdir
from os.path import isfile

""" Will split up $PATH variable of the system into array
Used in unixutil.lib to scan installed binaries
Prints out each folder in PATH individually """
PATH = environ['PATH'].split(':')
for i in PATH:
    print(i)
# print(PATH)
