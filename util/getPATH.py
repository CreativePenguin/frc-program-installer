from os import environ, listdir
from os.path import isfile

PATH = environ['PATH'].split(':')
for i in PATH:
    print(i)
# print(PATH)
