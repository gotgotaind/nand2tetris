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

    def compile_var_dec(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['VAR'] ):
            self.write('<varDec>')
            self.indent_level=self.indent_level+1
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
        else:
            raise Not_var_dec()
            
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
            self.write('</varDec>')            
        else:
            raise MyException("Expected ; at the end of class variable definition at "+f'{self.tok.tokens[self.tok.cursor][2]}')   


            
            
    def compileIf(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')
        
        self.tok.advance()
        self.compile_symbol('(')

        self.compile_expression()

        self.tok.advance()
        self.compile_symbol(')')

        self.tok.advance()
        self.compile_symbol('{')

        self.compile_statements()

        self.tok.advance()
        self.compile_symbol('}')        

        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in 'ELSE' ):
            self.write(f'<keyword> else </keyword>')
            self.tok.advance()
            self.compile_symbol('{')

            self.compile_statements()

            self.tok.advance()
            self.compile_symbol('}')               
        else:
            self.tok.backoff()
                
        
        self.indent_level=self.indent_level-1
        self.write(f'/<{statement}Statement>')     

    def compileLet(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')
        
        self.tok.advance()
        self.compile_identifier()  

        self.tok.advance()
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() in '[' ):
            self.write(f'<symbol> [ </symbol>')
            self.compile_expression()
            self.tok.advance()
            self.compile_symbol(']')   
        else:
            self.tok.backoff()
            
        self.tok.advance()
        self.compile_symbol('=')   
        self.compile_expression()                
        self.tok.advance()
        self.compile_symbol(';')  
        
        self.indent_level=self.indent_level-1
        self.write(f'/<{statement}Statement>')     

    def compileWhile(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')

        self.tok.advance()
        self.compile_symbol('(')   

        self.compile_expression()

        self.tok.advance()
        self.compile_symbol(')')   

            
        self.tok.advance()
        self.compile_symbol('{')   
        self.compile_statements()                
        self.tok.advance()
        self.compile_symbol('}')  
        
        self.indent_level=self.indent_level-1
        self.write(f'/<{statement}Statement>')    

    def compileDo(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')

        self.compile_subroutine_call()
             
        self.tok.advance()
        self.compile_symbol(';')  
        
        self.indent_level=self.indent_level-1
        self.write(f'/<{statement}Statement>')    

    def compileReturn(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')

        try:
            compile_expression()
        except Not_expression:
            self.tok.backoff()
             
        self.tok.advance()
        self.compile_symbol(';')  
        
        self.indent_level=self.indent_level-1
        self.write(f'/<{statement}Statement>')    
        
    def compile_statement(self):
    
    
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord()=='IF' ):
            self.compileIf()
        elif( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord()=='LET' ):
            self.compileLet()
        elif( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord()=='WHILE' ):
            self.compileWhile()            
        elif( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord()=='DO' ):
            self.compileDo()
        elif( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord()=='RETURN' ):
            self.compileReturn()
        else:
            raise Not_statement()



    def compile_statements(self):
        self.write('<statements>')
        self.indent_level=self.indent_level+1

        while ( True ):
            try:
                self.compile_statement()
            except Not_statement:
                self.tok.backoff()
                break        
        self.indent_level=self.indent_level-1
        self.write('</statements>')  

                
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

        #compile parameterList
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

        # compile subroutineBody
        self.write('<subroutineBody>')
        self.indent_level=self.indent_level+1
        self.tok.advance()
        self.compile_symbol('{')
        
        while ( True ):
            try:
                self.compile_var_dec()
            except Not_var_dec:
                self.tok.backoff()
                break

        self.compile_statements()        
                
        self.tok.advance()
        self.compile_symbol('}')
        self.indent_level=self.indent_level-1        
        self.write('</subroutineBody>')

    def compile_expression(self):
        try:
            self.compile_term()
        except Not_term:
            raise Not_expression
            
        while ( true ):
            try:
                self.compile_op()
                self.compile_term()
            except Not_op:
                self.tok.backoff()
                break
                
    def compile_term(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'INT_CONST'):
            self.write('<term>')
            self.indent_level=self.indent_level+1
            self.write(f'<integerConstant> {self.tok.intVal()} </integerConstant>')
            self.indent_level=self.indent_level-1
            self.write('</term>')
        elif( self.tok.tokenType() == 'STRING_CONST'):
            self.write('<term>')
            self.indent_level=self.indent_level+1
            self.write(f'<stringConstant> {self.tok.stringVal()} </stringConstant>')
            self.indent_level=self.indent_level-1
            self.write('</term>')
        elif( self.tok.tokenType() =='KEYWORD' and self.tok.keyWord() in ['TRUE','FALSE','NULL','THIS'] ):
            self.write('<term>')
            self.indent_level=self.indent_level+1
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
            self.indent_level=self.indent_level-1
            self.write('</term>')
        else:
            raise Not_term()    
        
class MyException(Exception):
    pass
    
class Not_class_var_dec(Exception):
    pass

class Not_var_dec(Exception):
    pass
    
class Not_subroutine(Exception):
    pass

class Not_statement(Exception):
    pass
    
class Not_expression(Exception):
    pass