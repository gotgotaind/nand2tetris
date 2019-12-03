import sys
import re
import os

icode=[]
ocode=[]

path=sys.argv[1]

[notext,ext]=os.path.splitext(path)
opath=notext+'.asm'
print(opath)

def out(str):
    ocode.append(str)


with open(path) as fp:
    for line in fp:
        # remove empty lines, and lines with only comments
        if ( re.match("^$",line) or re.match("^//",line)):
            continue
        # remove the comments
        if( re.match(".*?//",line) ):
            m=re.match("(.*?)//.*",line)
            line=m.group(1)
        icode.append(line.strip())
        

for i,line in enumerate(icode):
    # push constant x
    reg="push\s+constant\s+(\d+)"
    match = re.search(reg,line)
    if match:
        value = match.group(1)
        out(f'@{value}')
        out('D=A')
        out('@SP')
        out('A=M')
        out('M=D')
        out('@SP')
        out('M=M+1')
    # add
    reg="add"
    match = re.search(reg,line)
    if match:
        out('@SP')
        out('A=M-1')
        out('D=M')
        out('A=A-1')
        out('D=M+D')
        out('@SP')
        out('M=M-1')
        out('M=M-1')
        out('A=M')
        out('M=D')
        out('@SP')
        out('M=M+1')

# Print the asm
with open(opath,"w") as fnl:
    for line in ocode:
        print(line,file=fnl)
        print(line)