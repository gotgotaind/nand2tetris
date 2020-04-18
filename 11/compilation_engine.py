class compilation_engine:
    def __init__(self,tok,st,vw,ofp):
        self.tok=tok
        self.st=st
        self.ofp=ofp
        self.vw=vw
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
                self.st.set_class(self.tok.identifier())
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
            return self.tok.keyWord().lower()
        elif( self.tok.tokenType() == 'IDENTIFIER' ):
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')
            return self.tok.identifier()
        else:
            raise MyException(f"Was expecting a type at "+f'{self.tok.tokens[self.tok.cursor][2]}')
            
    def compile_identifier(self):            
        if( self.tok.tokenType() == 'IDENTIFIER' ):
            identifier=self.tok.identifier()
            self.write(f'<identifier> {identifier} </identifier>')
            return identifier
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
            kind=self.tok.keyWord().lower()
            self.write(f'<keyword> {kind} </keyword>')
        else:
            raise Not_class_var_dec()
            
        self.tok.advance()
        type=self.compile_type()
        
        self.tok.advance()
        if( self.tok.tokenType() == 'IDENTIFIER' ):
            name=self.tok.identifier()
            self.write(f'<identifier> {name} </identifier>')
            self.st.define(name,type,kind)
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
                name=self.tok.identifier()
                self.write(f'<identifier> {name} </identifier>')
                self.st.define(name,type,kind)
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
        nvars=1
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['VAR'] ):
            self.write('<varDec>')
            self.indent_level=self.indent_level+1
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
            kind=self.tok.keyWord().lower()
        else:
            raise Not_var_dec()
            
        self.tok.advance()
        type=self.compile_type()
        
        self.tok.advance()
        if( self.tok.tokenType() == 'IDENTIFIER' ):
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')
            name=self.tok.identifier()
        else:
            raise MyException(f"Was expecting an identifier at "+f'{self.tok.tokens[self.tok.cursor][2]}')
            
        self.st.define(name,type,kind)
        while ( True ):            
            self.tok.advance()
            if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == ',' ):
                self.write('<symbol> , </symbol>')
                nvars=nvars+1
            else:
                self.tok.backoff()
                break
            self.tok.advance()
            if( self.tok.tokenType() == 'IDENTIFIER' ):
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')
                name=self.tok.identifier()
                self.st.define(name,type,kind)
            else:
                raise MyException(f"Was expecting an identifier at "+f'{self.tok.tokens[self.tok.cursor][2]}')                

        self.tok.advance()
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == ';' ):
            self.write('<symbol> ; </symbol>')
            self.indent_level=self.indent_level-1
            self.write('</varDec>')            
        else:
            raise MyException("Expected ; at the end of class variable definition at "+f'{self.tok.tokens[self.tok.cursor][2]}')   

        return nvars
            
            
    def compileIf(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')

        if_line=self.tok.get_line()

        
        self.tok.advance()
        self.compile_symbol('(')

        self.compile_expression()

        self.tok.advance()
        self.compile_symbol(')')

        self.vw.write_if('if_true_'+if_line)
        self.vw.write_goto('if_false_'+if_line)
        self.vw.write_label('if_true_'+if_line)
        
        self.tok.advance()
        self.compile_symbol('{')

        self.compile_statements()

        self.tok.advance()
        self.compile_symbol('}')        

        
        
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in 'ELSE' ):
            self.vw.write_goto('if_end_'+if_line)
            self.vw.write_label('if_false_'+if_line)  
            self.write(f'<keyword> else </keyword>')
            self.tok.advance()
            self.compile_symbol('{')

            self.compile_statements()

            self.tok.advance()
            self.compile_symbol('}')
            self.vw.write_label('if_end_'+if_line)
        else:
            self.vw.write_label('if_false_'+if_line)
            self.tok.backoff()
                
                
        
        self.indent_level=self.indent_level-1
        self.write(f'</{statement}Statement>')     

    def compileLet(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')
        
        self.tok.advance()
        id=self.compile_identifier()  
        id_kind=self.st.kind_of(id)
        id_index=self.st.index_of(id)
        
        self.tok.advance()
        is_array=False
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() in '[' ):
            is_array=True
            self.write(f'<symbol> [ </symbol>')

            self.compile_expression()
            self.tok.advance()
            self.compile_symbol(']')   
            self.vw.write_push(id_kind,id_index)
            self.vw.write_arithmetic('+')
        else:
            is_array=False
            self.tok.backoff()
            
        self.tok.advance()
        self.compile_symbol('=')   
        self.compile_expression()                
        self.tok.advance()
        self.compile_symbol(';')  
        
        if( is_array ):
            self.vw.write_pop('temp',0)
            self.vw.write_pop('pointer',1)
            self.vw.write_push('temp',0)
            self.vw.write_pop('that',0)           
        else:
            self.vw.write_pop(id_kind,id_index)
        
        
        self.indent_level=self.indent_level-1
        self.write(f'</{statement}Statement>')     

    def compileWhile(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')
        while_line=self.tok.get_line()
        self.vw.write_label('while_start_'+while_line)
       
        self.tok.advance()
        self.compile_symbol('(')   

        self.compile_expression()

        self.vw.write_arithmetic('~')
        self.vw.write_if('while_end_'+while_line)
        
        self.tok.advance()
        self.compile_symbol(')')   

            
        self.tok.advance()
        self.compile_symbol('{')   
        self.compile_statements()                
        self.tok.advance()
        self.compile_symbol('}')  
        
        self.vw.write_goto('while_start_'+while_line)
        self.vw.write_label('while_end_'+while_line)
        
        self.indent_level=self.indent_level-1
        self.write(f'</{statement}Statement>')    

    def compileDo(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')

        self.compile_subroutine_call()
        
        # If it's a fo function, we always get rid of the returned value?
        self.vw.write_pop('temp',0)
        self.tok.advance()
        self.compile_symbol(';')  
        
        self.indent_level=self.indent_level-1
        self.write(f'</{statement}Statement>')    

    def compileReturn(self):
        statement=self.tok.keyWord().lower()
        self.write(f'<{statement}Statement>')
        self.indent_level=self.indent_level+1        
        self.write(f'<keyword> {statement} </keyword>')


        self.tok.advance()
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() in ';' ):
            self.compile_symbol(';')
            # if there is nothing to return (void function), we must still push
            # something into the stack.
            self.vw.write_push('constant',0)
        else:
            self.tok.backoff()
            self.compile_expression()
            self.tok.advance()
            self.compile_symbol(';')  
                     
        self.indent_level=self.indent_level-1
        self.write(f'</{statement}Statement>')
        self.vw.write_return()        
        
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
        self.st.start_subroutine()
        self.tok.advance()
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['CONSTRUCTOR','FUNCTION','METHOD'] ):
            self.write('<subroutineDec>')
            self.indent_level=self.indent_level+1
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
            sub_type=self.tok.keyWord().lower()
        else:
            raise Not_subroutine()
        self.tok.advance()
        # VOID or Type
        if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['INT','CHAR','BOOLEAN','VOID'] ):
            sub_returns=self.tok.keyWord().lower()
            self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
        elif( self.tok.tokenType() == 'IDENTIFIER' ):
            sub_returns=self.tok.identifier()
            self.write(f'<identifier> {self.tok.identifier()} </identifier>')      
        else:
            raise MyException(f"Was expecting a type or VOID at "+f'{self.tok.tokens[self.tok.cursor][2]}')

        self.tok.advance()
        self.compile_identifier()
        sub_name=self.tok.identifier()
        
        self.tok.advance()
        self.compile_symbol('(')

        #compile parameterList
        self.write('<parameterList>')
        self.indent_level=self.indent_level+1
        
        sub_param_nb=0
        while ( True ):
            self.tok.advance()
            #  if Type
            if( self.tok.tokenType() == 'KEYWORD' and self.tok.keyWord() in ['INT','CHAR','BOOLEAN'] ):
                self.write(f'<keyword> {self.tok.keyWord().lower()} </keyword>')
                sub_param_nb=sub_param_nb+1
                type=self.tok.keyWord().lower()
            elif( self.tok.tokenType() == 'IDENTIFIER' ):
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')
                sub_param_nb=sub_param_nb+1                
                type=self.tok.identifier()
            else:
                self.tok.backoff()
                break
                
            self.tok.advance()
            name=self.compile_identifier()
            
            self.st.define(name,type,'argument')
            
            self.tok.advance()
            try:
                self.compile_symbol(',')
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
        
        sub_nlocals=0
        while ( True ):
            try:
                nvars=self.compile_var_dec()
                sub_nlocals=sub_nlocals+nvars
            except Not_var_dec:
                self.tok.backoff()
                break
                
        self.vw.write_function(self.st.get_class()+'.'+sub_name,sub_nlocals)

        if( sub_type == 'constructor' ):
            nb_fields=self.st.get_class_nb_fields()
            self.vw.write_push('constant',nb_fields)
            self.vw.write_call('Memory.alloc',1)
            # don't know why this one...
            self.vw.write_pop('pointer',0)

        if( sub_type == 'method' ):
            self.vw.write_push('argument',0)
            self.vw.write_pop('pointer',0)
        
        self.compile_statements()        
                
        self.tok.advance()
        self.compile_symbol('}')
        self.indent_level=self.indent_level-1        
        self.write('</subroutineBody>')
        self.indent_level=self.indent_level-1        
        self.write('</subroutineDec>')
        
    def compile_expression(self):
        self.write('<expression>')
        self.indent_level=self.indent_level+1        
        self.compile_term()

            
        while ( True ):
            try:
                op=self.compile_op()
                self.compile_term()
                self.vw.write_arithmetic(op)
            except Not_op:
                self.tok.backoff()
                break
        self.indent_level=self.indent_level-1        
        self.write('</expression>')

                
    def compile_term(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'INT_CONST'):
            self.write('<term>')
            self.indent_level=self.indent_level+1
            self.write(f'<integerConstant> {self.tok.intVal()} </integerConstant>')
            self.vw.write_push('constant',self.tok.intVal())
            self.indent_level=self.indent_level-1
            self.write('</term>')
        elif( self.tok.tokenType() == 'STRING_CONST'):
            self.write('<term>')
            self.indent_level=self.indent_level+1
            chaine=self.tok.stringVal()
            
            self.write(f'<stringConstant> {chaine} </stringConstant>')
            
            self.vw.write_push('constant',len(chaine))
            self.vw.write_call('String.new',1)
            for char in chaine:
                self.vw.write_push('constant',ord(char))
                self.vw.write_call('String.appendChar',2)
                
            self.indent_level=self.indent_level-1
            self.write('</term>')
        elif( self.tok.tokenType() =='KEYWORD' and self.tok.keyWord() in ['TRUE','FALSE','NULL','THIS'] ):
            self.write('<term>')
            self.indent_level=self.indent_level+1
            word=self.tok.keyWord().lower()
            self.write(f'<keyword> {word} </keyword>')
            if ( word == 'true' ):
                self.vw.write_push('constant',0)
                self.vw.write_arithmetic('~')
            elif ( word == 'false' ):
                self.vw.write_push('constant',0)
            elif ( word == 'null' ):
                self.vw.write_push('constant',0)                
            elif ( word == 'this' ):
                #self.vw.write_comment('what should we push when the term is this?') 
                self.vw.write_push('pointer',0)                
                
            self.indent_level=self.indent_level-1
            self.write('</term>')
        elif( self.tok.tokenType() == 'IDENTIFIER' ):
            hack_identifier=self.tok.identifier()
            self.tok.advance()
            if ( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == '[' ):
                #varname [ expression ]
                self.tok.backoff()
                self.write('<term>')
                self.indent_level=self.indent_level+1
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')
                name=self.tok.identifier()
                self.tok.advance()
                self.write(f'<symbol> [ </symbol>')
                self.compile_expression()
                self.vw.write_push(self.st.kind_of(name),self.st.index_of(name))
                self.vw.write_arithmetic('+')
                self.vw.write_pop('pointer',1)
                self.vw.write_push('that',0)    
                self.tok.advance()
                self.compile_symbol(']')  
                self.indent_level=self.indent_level-1
                self.write('</term>')
            elif ( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() in ['(','.'] ):
                #subroutinecall
                self.tok.backoff()
                self.tok.backoff()
                self.write('<term>')
                self.indent_level=self.indent_level+1
                self.compile_subroutine_call()
                self.indent_level=self.indent_level-1
                self.write('</term>')
            else:
                # simple var name?
                self.tok.backoff()
                self.write('<term>')
                self.indent_level=self.indent_level+1
                self.write(f'<identifier> {self.tok.identifier()} </identifier>')
                name=self.tok.identifier()
                self.vw.write_push(self.st.kind_of(name),self.st.index_of(name))
                self.indent_level=self.indent_level-1
                self.write('</term>')
        elif ( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol()=='(' ):
            #( expression )
            self.write('<term>')
            self.indent_level=self.indent_level+1 
            self.compile_symbol('(')
            self.compile_expression()
            self.tok.advance()
            self.compile_symbol(')')
            self.indent_level=self.indent_level-1
            self.write('</term>')            
        elif ( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() in ['-','~'] ):
            unary_op=self.tok.symbol()
            
            self.write('<term>')
            self.indent_level=self.indent_level+1        
            self.write(f'<symbol> {self.tok.symbol()} </symbol>')
            self.compile_term()
            self.vw.write_arithmetic(unary_op)
            self.indent_level=self.indent_level-1
            self.write('</term>')
        else:
            raise Not_term()    


    def compile_op(self):
        self.tok.advance()
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() in ['+','-','*','/','&','|','<','>','='] ):
            c=self.tok.symbol()
            op=self.tok.symbol()
            
            if( c == '>' ):
                c='&gt;'
            elif( c == '<'):
                c='&lt;'
            elif( c == '&' ):
                c='&amp;'
                            
            self.write(f'<symbol> {c} </symbol>')
            return op
        else:
            raise Not_op(f"Expected '+','-','*','/','&','|','<','>' or '=' at "+f'{self.tok.tokens[self.tok.cursor][2]}')       
    
    def compile_subroutine_call(self):
        self.tok.advance()
        sub_name_part1=self.tok.identifier()
        self.write(f'<identifier> {self.tok.identifier()} </identifier>')
        self.tok.advance()
        self.write(f'<symbol> {self.tok.symbol()} </symbol>')
        
        # special flag to be able to add one argument to the 
        # argument number when it is an object method
        # because the self/this is not explicitely in the argument list
        additional_object_method_implied_argument=0
        
        if( self.tok.symbol() == '(' ):
            # so it would be a method of current object (this)
            # so need to push this object as first argument
            # and add one to the number of arguments
            additional_object_method_implied_argument=1
            self.vw.write_push('pointer',0)
            el_length=self.compile_expression_list()
            sub_name=self.st.get_class()+'.'+sub_name_part1
            self.tok.advance()
            self.compile_symbol(')')
            print(f'was here {sub_name},{el_length},{additional_object_method_implied_argument}')
        elif( self.tok.symbol() == '.' ):
            self.tok.advance()
            if( self.tok.tokenType() == 'IDENTIFIER' ):
                id=self.tok.identifier()
                self.write(f'<identifier> {id} </identifier>')
                kind_of_part1=self.st.kind_of(sub_name_part1)
                if ( kind_of_part1 == 'NONE' ):
                    # not an object method, but a class method or constructor
                    sub_name=sub_name_part1+'.'+id
                else:
                    # object method, so must push object as first argument
                    # and replace the object name by its class name ( type )
                    self.vw.write_push(self.st.kind_of(sub_name_part1),self.st.index_of(sub_name_part1))
                    sub_name=self.st.type_of(sub_name_part1)+'.'+id
                    additional_object_method_implied_argument=1
            else:
                raise Not_op(f"Expected an identifier at "+f'{self.tok.tokens[self.tok.cursor][2]}')
            self.tok.advance()
            self.compile_symbol('(')
            el_length=self.compile_expression_list()
            self.tok.advance()
            self.compile_symbol(')')
        el_length=el_length+additional_object_method_implied_argument
        self.vw.write_call(sub_name,el_length)
        print(f'{sub_name},{el_length},{additional_object_method_implied_argument}')

    def compile_expression_list(self):
        
        el_length=0
        self.write('<expressionList>')
        self.indent_level=self.indent_level+1    
        self.tok.advance()           
        if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == ')' ):
            self.indent_level=self.indent_level-1
            self.write('</expressionList>') 
            self.tok.backoff()
            return el_length
        self.tok.backoff()    
        self.compile_expression()
        el_length=el_length+1
        while( True ):
            self.tok.advance()
            if( self.tok.tokenType() == 'SYMBOL' and self.tok.symbol() == ',' ):
                self.compile_symbol(',')
                self.compile_expression()
                el_length=el_length+1
            else:
                self.tok.backoff()
                break
        
        self.indent_level=self.indent_level-1         
        self.write('</expressionList>')
        return el_length
            
        
        
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
    
class Not_op(Exception):
    pass
    
class Not_term(Exception):
    pass