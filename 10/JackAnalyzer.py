#input: a single .jack file or a directory containing containing
# several jack files
# for each file 
#   create a jack_tokenizer from filename.jack
#   create an output file names filename.xml
#   and prepares it for writing
#   creates and uses a compilation_engine to compile the jack_tokenizer
#   into the output file

import sys
import re
import os
import glob
from jack_tokenizer import jack_tokenizer
from compilation_engine import compilation_engine

# if no argument is given set path as current directory
if len(sys.argv) == 1:
    print("No argument given, setting path to compile as current directory.")
    path=os.path.abspath(".")
else:
    path=os.path.abspath(sys.argv[1])

# if path is a directory, create a list of jack files to parse in the directory
# else just parse the provided file
if os.path.isdir(path):  
    print("path is a directory.")
    files_list=glob.glob(path+os.sep+"*.jack")
    #opath=path+os.sep+os.path.basename(path)+'.asm'
elif os.path.isfile(path):  
    print("path is a file.")  
    files_list=[path]
    #[notext,ext]=os.path.splitext(path)
    #opath=notext+'.asm'
else:  
    print("It is a special file (socket, FIFO, device file). Aborting..." )
    exit(1)

print(f"The following files will be compiled : {files_list}")

for file in files_list:
    tok=jack_tokenizer(file)
    ofile=os.path.splitext(file)[0]+".xml"
    print(f"The output file will be : {ofile}")
    with open(ofile,'w',encoding='utf-8') as ofp:
        ce=compilation_engine(tok,ofp)
        ce.compile_class()
        # while( tok.hasMoreTokens() ):
            # a=tok.tokenType()        
            # ofp.write(f'toto {a}\n')
            # tok.advance()
    


