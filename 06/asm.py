import sys
import re

path=sys.argv[1]
code=[]

comp_d={
"0":"0101010",
"1":"0111111",
"-1":"0111010",
"D":"0001100",
"A":"0110000",
"M":"1110000",
"!D":"0001101",
"!A":"0110001",
"!M":"1110001",
"-D":"0001111",
"-A":"0110011",
"-M":"1110011",
"D+1":"0011111",
"A+1":"0110111",
"M+1":"1110111",
"D-1":"0001110",
"A-1":"0110010",
"M-1":"1110010",
"D+A":"0000010",
"D+M":"1000010",
"D-A":"0010011",
"D-M":"1010011",
"A-D":"0000111",
"M-D":"1000111",
"D&A":"0000000",
"D&M":"1000000",
"D|A":"0010101",
"D|M":"1010101"
}

dest_d={
"null":"000",
"M":"001",
"D":"010",
"MD":"011",
"A":"100",
"AM":"101",
"AD":"110",
"AMD":"111"
}

jump_d={
"null":"000",
"JGT":"001",
"JEQ":"010",
"JGE":"011",
"JLT":"100",
"JNE":"101",
"JLE":"110",
"JMP":"111"
}



with open(path) as fp:
    for line in fp:
        # remove "space" chars
        line=re.sub("\s","",line)
        # remove empty lines, and lines with only comments
        if ( re.match("^$",line) or re.match("^//",line)):
            continue
        # remove the comments
        if( re.match(".*?//",line) ):
            m=re.match("(.*?)//.*",line)
            line=m.group(1)
        code.append(line.strip())
        
with open(path+".hack","w") as fo:
    for line in code:
        print("asm :"+line)
        if re.match("^@(.*)",line):
            m=re.match("^@(.*)",line)
            addr=int(m.group(1))
            print(f'{addr:016b}',file=fo)
        else:
            if re.match("(.*)=(.*);(.*)\s*",line):
                m=re.match("(.*)=(.*);(.*)\s*",line)
                dest_s=m.group(1)
                comp_s=m.group(2)
                jump_s=m.group(3)
                print(f'111{comp_d[comp_s]}{dest_d[dest_s]}{jump_d[jump_s]}',file=fo)
            elif re.match("(.*)=(.*)",line):
                m=re.match("(.*)=(.*)",line)
                dest_s=m.group(1)
                comp_s=m.group(2)
                print(f'111{comp_d[comp_s]}{dest_d[dest_s]}000',file=fo)
            elif re.match("(.*);(.*)",line):
                m=re.match("(.*);(.*)",line)
                comp_s=m.group(1)
                jump_s=m.group(2)
                print(f'111{comp_d[comp_s]}000{jump_d[jump_s]}',file=fo)
            