class compilation_engine:
    def __init__(self,tok,ofp):
        self.tok=tok
        self.ofp=ofp
        self.indent_level=0
        
    def write(self,msg):
        for i in range(self.indent_level):
            self.ofp.write('  ')
        self.ofp.write(msg)
        self.ofp.write('\n')
        
    def compile_class(self):
        self.write('<class>')
        self.indent_level=self.indent_level+1
        if ( self.tok.keyWord() == 'CLASS' ):
            self.write('<keyword> class </keyword>')
            self.tok.advance()    
            if( self.tok.tokenType() == 'IDENTIFIER' ):
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')
                self.tok.advance()
                if( self.tok.symbol() == '{' ):
                    self.write('<symbol> { </symbol>')
                    
                    while ( True ):
                        try:
                            self.compile_class_var_dec()
                        except Not_class_var_dec:
                            self.tok.backoff()
                            break
                            
                    while ( True ):
                        try:
                            self.compile_subroutine()
                        except Not_subroutine:
                            self.tok.backoff()
                            break

                    self.tok.advance()
                    if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == '}' ):
                        self.write('<symbol> } </symbol>')
                        self.indent_level=self.indent_level-1
                        self.write('</class>')

                    else:
                        raise MyException("Expected } at the end of class definition at "+f'{self.tok.tokens[self.tok.cursor][2]}')
                    
                        # if( self.tok.symbol() in ['STATIC','FIELD']):
                            # self.compile_class_var_dec()
                        # elif ( self.tok.symbol() in ['CONSTRUCTOR','FUNCTION','METHOD']):
                            # self.compile_subroutine()
                        # elif ( self.tok.symbol() == '}' ):
                            # break
                else:
                    raise MyException("Expected { after class identifier")
            else:
                raise MyException("Expected identifier of class")
        else:
            raise MyException("Was about to compile_class but the current keyword is not CLASS at "+f'{self.tok.tokens[self.tok.cursor][2]}')


    def compile_type(self):
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['INT','CHAR','BOOLEAN'] ):
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
        elif( self.tok.tokenType() == 'IDENTIFIER' ):
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')      
        else:
            raise MyException(f"Was expecting a type at "+f'{self.tok.tokens[self.tok.cursor][2]}')
            
    def compile_identifier(self):            
        if( self.tok.tokenType() == 'IDENTIFIER' ):
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')
        else:
            raise MyException(f"Was expecting an identifier at "+f'{self.tok.tokens[self.tok.cursor][2]}')  
            
    def compile_symbol(self,symbol):   
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == symbol ):
            self.write(f'<symbol> {symbol} </symbol>')        
        else:
            raise MyException(f"Expected {symbol} at "+f'{self.tok.tokens[self.tok.cursor][2]}')   

            
    def compile_class_var_dec(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['STATIC','FIELD'] ):
            self.write('<classVarDec>')
            self.indent_level=self.indent_level+1
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
        else:
            raise Not_class_var_dec()
            
        self.tok.advance()
        self.compile_type()
        
        self.tok.advance()
        if( self.tok.tokenType() == 'IDENTIFIER' ):
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')
        else:
            raise MyException(f"Was expecting an identifier at "+f'{self.tok.tokens[self.tok.cursor][2]}')
            
        while ( True ):            
            self.tok.advance()
            if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == ',' ):
                self.write('<symbol> , </symbol>')
            else:
                self.tok.backoff()
                break
            self.tok.advance()
            if( self.tok.tokenType() == 'IDENTIFIER' ):
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')
            else:
                raise MyException(f"Was expecting an identifier at "+f'{self.tok.tokens[self.tok.cursor][2]}')                

        self.tok.advance()
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == ';' ):
            self.write('<symbol> ; </symbol>')
            self.indent_level=self.indent_level-1
            self.write('</classVarDec>')            
        else:
            raise MyException("Expected ; at the end of class variable definition at "+f'{self.tok.tokens[self.tok.cursor][2]}')        

                    
    def compile_subroutine(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['CONSTRUCTOR','FUNCTION','METHOD'] ):
            self.write('<subroutineDec>')
            self.indent_level=self.indent_level+1
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
        else:
            raise Not_subroutine()
        self.tok.advance()
        # VOID or Type
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['INT','CHAR','BOOLEAN','VOID'] ):
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
        elif( self.tok.tokenType() == 'IDENTIFIER' ):
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')      
        else:
            raise MyException(f"Was expecting a type or VOID at "+f'{self.tok.tokens[self.tok.cursor][2]}')

        self.tok.advance()
        self.compile_identifier()
        self.tok.advance()
        self.compile_symbol('(')

        self.write('<parameterList>')
        self.indent_level=self.indent_level+1
            
        while ( True ):
            self.tok.advance()
            #  if Type
            if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['INT','CHAR','BOOLEAN'] ):
                self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
            elif( self.tok.tokenType() == 'IDENTIFIER' ):
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')      
            else:
                self.tok.backoff()
                break
                
            self.tok.advance()
            self.compile_identifier()
            
            self.tok.advance()
            try:
                self_compile_symbol(',')
            except MyException:
                self.tok.backoff()
                break
        
        self.tok.advance()
        self.indent_level=self.indent_level-1
        self.write('</parameterList>')           
        self.compile_symbol(')')        
 
            
class MyException(Exception):
    pass
    
class Not_class_var_dec(Exception):
    pass
    
class Not_subroutine(Exception):
    pass
