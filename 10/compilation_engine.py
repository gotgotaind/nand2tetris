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
                        self.write('<symbol> { </symbol>')
                        self.write('</class>')
                    else:
                        raise MyException("Expected } at the end of class definition")
                    
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
            raise MyException("Was about to compile_class but the current keyword is not CLASS")


    def compile_class_var_dec(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['STATIC','FIELD'] ):
            self.write('<classVarDec>')
        else:
            raise Not_class_var_dec()
            
    def compile_subroutine(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['CONSTRUCTOR','FUNCTION','METHOD'] ):
            self.write('<subroutineDec>')
        else:
            raise Not_subroutine()
        
            
class MyException(Exception):
    pass
    
class Not_class_var_dec(Exception):
    pass
    
class Not_subroutine(Exception):
    pass