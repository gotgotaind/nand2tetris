symbols=['{','}','[',']','(',')','.',';',',','+','-','*','/','&','|','>','<','=','_']
keywords=['class','constructor','function','method','field','static','var','int','char','boolean','void','true','false','null','this','let','do','if','else','return','while']


with open(r'W:\data\nand2tetris\projects\10\ExpressionLessSquare\SquareGame.jack','r', encoding="utf-8") as f:
    read_data = f.read()


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
        start_comment=True
        char_num=char_num+1
        char_in_line_num=char_in_line_num+1
        next
    if( start_comment ):
        if ( c=='/' ):
            comment_until_next_line=True
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1            
            next
        elif ( c=='*' ):
            comment_until_starslash=True
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1            
            next
        else:
            print(f'syntax error, invalid character {c} following a / at {line_num}:{char_in_line_num}')
            exit(1)
    if( comment_until_next_line ):
        if ( c!='\n' ):
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1
            next
        else:
            start_comment=False
            comment_until_next_line=False
            line_num=lin_num+1
            char_in_line_num=1
            char_num=char_num+1
            next
    
    if( comment_until_starslash ):
        if ( c!='*' ):
            if( c=='\n' ):
                line_num=lin_num+1
                char_in_line_num=1
                char_num=char_num+1
            else:
                char_num=char_num+1
                char_in_line_num=char_in_line_num+1                
            next
        else:
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1   
            next_slash_will_end_starslash_comment=True
            next
            
    if ( next_slash_will_end_starslash_comment ):
        if( c=='/' ):
            start_comment=False
            comment_until_starslash=False
            next_slash_will_end_starslash_comment=False
            char_num=char_num+1
            char_in_line_num=char_in_line_num+1               
            next
        else:
            next_slash_will_end_starslash_comment=False
            if( c=='\n' ):
                line_num=lin_num+1
                char_in_line_num=1
                char_num=char_num+1
            else:
                char_num=char_num+1
                char_in_line_num=char_in_line_num+1              
            next
    
    if( c=='\n' ):
        line_num=lin_num+1
        char_in_line_num=1
        char_num=char_num+1
    else:
        char_num=char_num+1
        char_in_line_num=char_in_line_num+1   