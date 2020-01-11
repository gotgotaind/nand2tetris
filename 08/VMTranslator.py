import sys
import re
import os
import glob


def out(str):
    ocode.append(str)

# if no argument is given set path as current directory
if len(sys.argv) == 1:
    print("No argument given, setting path to compile as current directory.")
    path=os.path.abspath(".")
else:
    path=os.path.abspath(sys.argv[1])

# if path is a directory, create a list of vm files to parse in the directory
# else just parse the provided file
if os.path.isdir(path):  
    print("path is a directory.")
    files_list=glob.glob(path+os.sep+"*.vm")
    opath=path+os.sep+os.path.basename(path)+'.asm'
    opath_nocomment=path+os.sep+os.path.basename(path)+'.nocomment.asm'
elif os.path.isfile(path):  
    print("path is a file.")  
    files_list=[path]
    [notext,ext]=os.path.splitext(path)
    opath=notext+'.asm'
    opath_nocomment=notext+'.nocomment.asm'
else:  
    print("It is a special file (socket, FIFO, device file). Aborting..." )
    exit(1)

print(f"The following files will be compiled : {files_list}")
print(f"The output file will be named : {opath}")


ocode=[]

segments_d={
"local":"LCL",
"argument":"ARG",
"this":"THIS",
"that":"THAT",
"temp":"TEMP"
}

for file in files_list:
    icode=[]
    with open(file) as fp:
        for line in fp:
            # remove empty lines, and lines with only comments
            if ( re.match("^$",line) or re.match("^//",line)):
                continue
            # remove the comments
            if( re.match(".*?//",line) ):
                m=re.match("(.*?)//.*",line)
                line=m.group(1)
            icode.append(line.strip())
            
    with open(file) as fp:
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
                elif ( segment == "temp" ):
                    out(f'@{5+int(value)} // temp starts at 5')
                    out('D=M')
                elif( segment == 'pointer' ):
                    if ( value == '0' ):
                        out('@THIS')
                    else:
                        out('@THAT')
                    out('D=M')
                elif( segment == 'static' ):
                    out(f'@{basename}.{value}')
                    out('D=M')
                else:
                    out(f'@{segments_d[segment]}')
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
                if ( segment == "temp" ):
                    
                    out(f'''
@{5+int(value)}
D=A // D is now temp+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1''')
                elif( segment == 'pointer' ):
                    out(f'@SP')
                    out('AM=M-1')
                    out('D=M')
                    if( value == '0' ):
                        out('@THIS')
                    else:
                        out('@THAT')
                    out('M=D')
                elif( segment == 'static' ):
                    out(f'@SP')
                    out('AM=M-1')
                    out('D=M')
                    out(f'@{basename}.{value}')
                    out('M=D')
                else:
                     out(f'''
@{segments_d[segment]}
D=M
@{value}
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1''')           
                
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

# Print the asm without comment line
with open(opath_nocomment,"w") as fnl:

    for line in ocode:
        match_comment = re.match('^//',line)
        match_empty = re.match('^.\s$',line)
        if ( not ( match_comment or match_empty ) ):
            print(line,file=fnl)
            print(line)