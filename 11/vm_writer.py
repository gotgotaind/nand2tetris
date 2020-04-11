import os




class vm_writer:

    def __init__(self,vfp):
        self.vfp=vfp
            
    def write_push(self,segment,index):
        self.vfp.write(f'push {segment} {index}\n')
        
    def write_pop(self,segment,index):
        self.vfp.write(f'pop {segment} {index}\n')        
        
    def write_arithmetic(self,op):
        opd={
        '+':'add',
        '-':'neg',
        '*':'call Math.multiply 2',        
        '/':'call Math.divide 2',
        '&':'and',
        '|':'or',
        '<':'lt',
        '>':'gt',
        '=':'eq',
        }
        command=opd[op]
        self.vfp.write(f'{command}\n')
        
    def write_label(self,label):
        self.vfp.write(f'label {label}\n')
        
    def write_goto(self,label):
        self.vfp.write(f'goto {label}\n')
        
    def write_if(self,label):
        self.vfp.write(f'if-goto {label}\n')
    
    def write_call(self,name,nargs):
        self.vfp.write(f'call {name} {nargs}\n')
        
    def write_function(self,name,nlocals):
        self.vfp.write(f'function {name} {nlocals}\n')
        
    def write_return(self):
        self.vfp.write('return\n')
        
    def close(self):
        self.vfp.close()