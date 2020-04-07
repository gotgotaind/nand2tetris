import os

class vm_writer:

    def __init__(self,file):
        vm_file=os.path.splitext(file)[0]+".vm"
        with open(vm_file,'w') as vfp:
            self.vfp=vfp
            
    def write_push(self,segment,index):
        vfp.write(f'push {segment} {index}\n')
        
    def write_pop(self,segment,index):
        vfp.write(f'pop {segment} {index}\n')        
        
    def write_arithmetic(self,command):
        vfp.write(f'{command}\n')
        
    def write_label(self,label):
        vfp.write(f'label {label}\n')
        
    def write_goto(self,label):
        vfp.write(f'goto {label}\n')
        
    def write_if(self,label):
        vfp.write(f'if-goto {label}\n')
    
    def write_call(self,name,nargs):
        vfp.write(f'call {name} {nargs}\n')
        
    def write_function(self,name,nlocals):
        vfp.write(f'function {name} {nlocals}\n')
        
    def write_return():
        vfp.write('return\n')
        
    def close():
        vfp.close()