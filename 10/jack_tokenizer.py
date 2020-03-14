debug=1
symbols=['{','}','[',']','(',')','.',';',',','+','~','*','/','&','|','>','<','=','-']
keywords=['class','constructor','function','method','field','static','var','int','char','boolean','void','true','false','null','this','let','do','if','else','return','while']
digits=list(map(lambda x:str(x),range(10)))

def do_next_state(test_char,next_state,state,c,line_num,char_in_line_num,char_num):
    if(c==test_char):
        state=next_state
        log(f'state is now {state}',c,line_num,char_in_line_num,char_num)
    return state

def log(msg,char,line_num,char_in_line_num,char_num):
    if ( debug > 0 ):
        # print lietrally \n instead of going to next line
        if(char=='\n'):
            char='\\n'
        print(f'{line_num}:{char_in_line_num} (char_num: {char_num}) (char is {char}), {msg}')
    

    

        
class jack_tokenizer:



    def add_token(this,token_type,token):
        # example <keyword> class </keyword>
        this.tokens.append((token_type,token))
        if ( debug > 0 ):
            print(f'<{token_type}> {token} </{token_type}>')

        
    def parse(this):
        #initliazing the chars and lines positions counters
        char_num=1
        line_num=1
        char_in_line_num=1

        # we'll work with a state based parsing
        state='none'
        word=''

        
        for c in this.read_data:
            
            if ( state == 'identifier_or_keyword' ):
                if ( c.isalpha() or c=='_' or c.isdigit() ):
                    word=word+c
                else:
                    # end of the identifier_or_keyword
                    state='none'
                    if ( word in keywords ):
                        this.add_token('keyword',word)
                    else:
                        this.add_token('identifier',word)
                    word=''

            if ( state == 'integerConstant' ):
                if ( c in digits ):
                    word=word+c
                elif( not ( c.isspace() or c=='\n' or (c in symbols) ) ):
                    log(f'invalid character {c} in integerConstant',c,line_num,char_in_line_num,char_num)
                    exit(1)
                else:
                    # end of the integerConstant
                    state='none'
                    this.add_token('integerConstant',word)
            
            # special case for / symbol
            # if the previous char was a slash and is not followed be another / or *
            # it's simply the / symbol
            # else it's a comment and will be managed if the next part
            if ( state == '/' ):
                if( c!='/' and c!='*' ):
                    state='none'
                    this.add_token('symbol','/')
                    
            
                        
            if ( state == 'none' ):
                # a bare slash should be the start of a comment
                state=do_next_state(test_char='/',next_state='/',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)

                # a ' should be the start of a StringConstant
                state=do_next_state(test_char='"',next_state='StringConstant',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)

                # maybe we have a symbol?
                # / symbol is managed separately in the comments parsing part
                # because if followed by another / or a * it's not a symbol
                if ( (c in symbols) and not c=='/' ):
                    this.add_token('symbol',c)
                
                # maybe we have an identifier or a keyword
                if ( c.isalpha() or c=='_' ):
                    state='identifier_or_keyword'
                    word=c
                    log(f'state is now {state}',c,line_num,char_in_line_num,char_num)

                # maybe we have an integerConstant
                if ( c in digits ):
                    state='integerConstant'
                    word=c
                    log(f'state is now {state}',c,line_num,char_in_line_num,char_num)

            elif ( state == '/' ):
                state=do_next_state(test_char='/',next_state='//',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
                state=do_next_state(test_char='*',next_state='/*',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
                if ( state == '/' ):
                    log(f'invalid syntax, was expecting a / or a *',c,line_num,char_in_line_num,char_num)
                    exit(1)

            elif ( state == '//' ):
                state=do_next_state(test_char='\n',next_state='none',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
                    
            elif ( state == '/*' ):
                state=do_next_state(test_char='*',next_state='/*..*',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)

            elif ( state == '/*..*' ):
                state=do_next_state(test_char='/',next_state='none',state=state,c=c,line_num=line_num,char_in_line_num=char_in_line_num,char_num=char_num)
                # if char is not /, go back to state '/*'
                if ( state != 'none' ):
                    state = '/*'
            
            elif ( state == 'StringConstant' ):
                if ( c == '"' ):
                    this.add_token('stringConstant',word)
                    state='none'
                    word=''
                else:
                    word=word+c
            
            
              
                
            char_num=char_num+1
            if( c=='\n' ):
                line_num=line_num+1
                char_in_line_num=1        
            else:
                char_in_line_num=char_in_line_num+1
                

    def __init__(self,file):
        with open(file) as fp:
            self.fp=fp
            self.read_data = fp.read()
            self.tokens=[]
            self.parse()
            if ( debug > 0 ):
                with open(file+'_jack_tokenizer.out','w') as dfp:
                    dfp.write('<tokens>\n')
                    for token in self.tokens:
                        c=token[1]
                        if( c == '>' ):
                            c='&gt;'
                        elif( c == '<'):
                            c='&lt;'
                        elif( c == '&' ):
                            c='&amp;'
                        dfp.write(f'<{token[0]}> {c} </{token[0]}>\n')
                    dfp.write('</tokens>\n')
            self.cursor=0
            self.len=len(tokens)
            
    def hasMoreTokens(this):
        if ( this.cursor<(this.len - 1)):
            return True
        else:
            return False

    def tokenType(this):
        return this.tokens[this.cursor][0]
    
    def keyWord(this):
        if (this.tokenType!='KEYWORD'):
            
        