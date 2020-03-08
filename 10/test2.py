symbols=['{','}','[',']','(',')','.',';',',','+','-','*','/','&','|','>','<','=','_']
keywords=['class','constructor','function','method','field','static','var','int','char','boolean','void','true','false','null','this','let','do','if','else','return','while']


with open(r'W:\data\nand2tetris\projects\10\ExpressionLessSquare\SquareGame.jack','r', encoding="utf-8") as f:
    read_data = f.read()

debug=1

def log(msg,char,line_num,char_in_line_num,char_num):
    if ( debug > 0 ):
        # print lietrally \n instead of going to next line
        if(char=='\n'):
            char='\\n'
        print(f'{line_num}:{char_in_line_num} (char_num: {char_num}) (char is {char}), {msg}')
    
def do_next_state(test_string,next_state,state,c,line_num,char_in_line_num,char_num):
    if(c==test_string):
        state=next_state
        log(f'state is now {state}',c,line_num,char_in_line_num,char_num)
    return state
    
#initliazing the chars and lines positions counters
char_num=1
line_num=1
char_in_line_num=1

# we'll work with a state based parsing
state='none'

for c in read_data:
    
    if ( state == 'none' ):
        state=do_next_state(test_string='/',next_state='/',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)

        state=do_next_state(test_string='\'',next_state='StringConstant',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)       
  
    elif ( state == '/' ):
        state=do_next_state(test_string='/',next_state='//',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
        state=do_next_state(test_string='*',next_state='/*',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
        if ( state == '/' ):
            log(f'invalid syntax, was expecting a / or a *',c,line_num,char_in_line_num,char_num)
            exit(1)

    elif ( state == '//' ):
        state=do_next_state(test_string='\n',next_state='none',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
            
        
    char_num=char_num+1
    if( c=='\n' ):
        line_num=line_num+1
        char_in_line_num=1        
    else:
        char_in_line_num=char_in_line_num+1