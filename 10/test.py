symbols=['{','}','[',']','(',')','.',';',',','+','-','*','/','&','|','>','<','=','_']
keywords=['class','constructor','function','method','field','static','var','int','char','boolean','void','true','false','null','this','let','do','if','else','return','while']


with open(r'W:\data\nand2tetris\projects\10\ExpressionLessSquare\SquareGame.jack','r', encoding="utf-8") as f:
    read_data = f.read()

debug=1

def log(msg,char,line_num,char_in_line_num,char_num):
    if ( debug > 0 ):
        print(f'{line_num}:{char_in_line_num} (char_num: {char_num}) (char is {char}), {msg}')
    
#initliazing the chars and lines positions counters
char_num=1
line_num=1
char_in_line_num=1

# we'll work with flags based parsing
# all the flags have to be initialized to False at the beginning
start_comment=False
comment_until_next_line=False
comment_until_starslash=False
next_slash_will_end_starslash_comment=False

for c in read_data:
    
    # managing comments
    if( c=='/' and start_comment==False ):
        log('start_comment',c,line_num,char_in_line_num,char_num)
        start_comment=True
        char_num=char_num+1
        char_in_line_num=char_in_line_num+1
        continue
    if( start_comment and not comment_until_next_line and not comment_until_starslash ):
        if ( c=='/' ):
            log('comment_until_next_line',c,line_num,char_in_line_num,char_num)
            comment_until_next_line=True
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1            
            continue
        elif ( c=='*' ):
            log('comment_until_starslash',c,line_num,char_in_line_num,char_num)
            comment_until_starslash=True
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1            
            continue
        else:
            print(f'syntax error, invalid character {c} following a / at {line_num}:{char_in_line_num}')
            exit(1)
    if( comment_until_next_line ):
        if ( c!='\n' ):
            log('comment_until_next_line is set, ignoring char',c,line_num,char_in_line_num,char_num)
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1
            continue
        else:
            log('ending comment_until_next_line',c,line_num,char_in_line_num,char_num)
            start_comment=False
            comment_until_next_line=False
            line_num=line_num+1
            char_in_line_num=1
            char_num=char_num+1
            continue
    
    if( comment_until_starslash ):
        if ( c!='*' ):
            log('comment_until_starslash, waiting for a * char',c,line_num,char_in_line_num,char_num)
            if( c=='\n' ):
                line_num=line_num+1
                char_in_line_num=1
                char_num=char_num+1
            else:
                char_num=char_num+1
                char_in_line_num=char_in_line_num+1                
            continue
        else:
            log('comment_until_starslash, got * char, setting next_slash_will_end_starslash_comment',c,line_num,char_in_line_num,char_num)
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1   
            next_slash_will_end_starslash_comment=True
            continue
            
    if ( next_slash_will_end_starslash_comment ):
        if( c=='/' ):
            start_comment=False
            comment_until_starslash=False
            next_slash_will_end_starslash_comment=False
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1               
            continue
        else:
            next_slash_will_end_starslash_comment=False
            if( c=='\n' ):
                line_num=lin_num+1
                char_in_line_num=1
                char_num=char_num+1
            else:
                char_num=char_num+1
                char_in_line_num=char_in_line_num+1              
            continue
    
    if( c=='\n' ):
        line_num=line_num+1
        char_in_line_num=1
        char_num=char_num+1
    else:
        char_num=char_num+1
        char_in_line_num=char_in_line_num+1   