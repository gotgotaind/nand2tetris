import sys
import re

path=sys.argv[1]
file=[]

with open(path) as fp:
    line = fp.readline()
    while line:
        if not ( re.match("^\s*$",line) or re.match("^\s*//",line) ):
            file.append(line.strip())
        line = fp.readline()
        

for line in file:
    if re.match("^@(.*)",line):
        m=re.match("^@(.*)",line)
        addr=int(m.group(1))
        print(f'{addr:016b}')
    else:
        if re.match("(.*)=(.*);(.*)\s*"):
            