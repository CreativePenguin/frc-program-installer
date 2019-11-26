import sys

search = sys.argv[-1]
val = ''
for i in sys.argv[:-1]:
    if search in i:
        val = i

# " v5.0.3.3.zip" is a hypothetical versioning. They're all the same length
startindex = val.index(search)
endindex = startindex + len(" v5.0.3.3.zip")
print(val[startindex:endindex])
