import sys
import re
import os

icode=[]
ocode=[]

path=sys.argv[1]

[notext,ext]=os.path.splitext(path)
opath=notext+'.asm'
print(opath)

segments_d={
"local":"LCL",
"argument":"ARG",
"this":"THIS",
"that":"THAT",
"temp":"TEMP"
}


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
        
with open(path) as fp:
    for i,line in enumerate(fp):
    #for i,line in enumerate(icode):
        out(f'// line {i+1}: {line.strip()}')
        
        # don't parse empty lines, and lines with only comments
        if ( re.match("^$",line) or re.match("^//",line)):
            continue
        
        # remove the comments
        if( re.match(".*?//",line) ):
            m=re.match("(.*?)//.*",line)
            line=m.group(1)
            
        # push segment x
        reg="push\s+(\S+)\s+(\d+)"
        match = re.search(reg,line)
        if match:
            segment = match.group(1)
            value = match.group(2)
            if ( segment == "constant" ):
                out(f'@{value}')
                out('D=A')
            else:
                out(f'@{segments_d[segment]}')
                out('A=M')
                out('D=M')
                out(f'@{value}')
                out('A=D+A')
                out('D=M')                
            out('@SP')
            out('A=M')
            out('M=D')
            out('@SP')
            out('M=M+1')

        # pop segment x
        reg="pop\s+(\S+)\s+(\d+)"
        match = re.search(reg,line)
        if match:
            segment = match.group(1)
            value = match.group(2)
            out(f'''
@SP
AM=M-1
D+M
@{segments_d[segment]}
A=M
M=D''')
            
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
            
        # sub
        reg="sub"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('A=A-1')
            out('D=M-D')
            out('@SP')
            out('M=M-1')
            out('M=M-1')
            out('A=M')
            out('M=D')
            out('@SP')
            out('M=M+1')

        # and
        reg="and"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('A=A-1')
            out('D=D&M')
            out('@SP')
            out('M=M-1')
            out('M=M-1')
            out('A=M')
            out('M=D')
            out('@SP')
            out('M=M+1')

        # or
        reg="or"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('A=A-1')
            out('D=D|M')
            out('@SP')
            out('M=M-1')
            out('M=M-1')
            out('A=M')
            out('M=D')
            out('@SP')
            out('M=M+1')
            
        # neg
        reg="neg"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('D=-D')
            out('M=D')

        # not
        reg="not"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('D=!D')
            out('M=D')
            
            
        # eq
        reg="eq"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('A=A-1')
            out(f'''D=D-M
@EQTRUE{i}
D;JEQ
@EQFALSE{i}
D;JNE
(EQTRUE{i})
    @SP
    AM=M-1
    A=A-1
    M=-1
    @EQEND{i}
    0;JMP
(EQFALSE{i})
    @SP
    AM=M-1
    A=A-1
    M=0
(EQEND{i})''')

        # lt
        reg="lt"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('A=A-1')
            out(f'''D=D-M
@TRUE{i}
D;JLE
@FALSE{i}
D;JGT
(TRUE{i})
    @SP
    AM=M-1
    A=A-1
    M=0
    @END{i}
    0;JMP
(FALSE{i})
    @SP
    AM=M-1
    A=A-1
    M=-1
(END{i})''')

        # gt
        reg="gt"
        match = re.search(reg,line)
        if match:
            out('@SP')
            out('A=M-1')
            out('D=M')
            out('A=A-1')
            out(f'''D=D-M
@TRUE{i}
D;JGE
@FALSE{i}
D;JLT
(TRUE{i})
    @SP
    AM=M-1
    A=A-1
    M=0
    @END{i}
    0;JMP
(FALSE{i})
    @SP
    AM=M-1
    A=A-1
    M=-1
(END{i})''')                 



            
# Print the asm
with open(opath,"w") as fnl:
    for line in ocode:
        print(line,file=fnl)
        print(line)