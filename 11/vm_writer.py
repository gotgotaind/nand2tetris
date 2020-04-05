class vm_writer:

    def __int__(self,file):
        vm_file=os.path.splitext(file)[0]+".vm"
        with open(vm_file,'w') as vfp:
            self.vfp=vfp
            
    def write_push(self,segment,index):
        vfp.write(f'push {segment} {index}')
        
    def write_pop(self,segment,index):
        vfp.write(f'pop {segment} {index}')        
        
    def write_arithmetic(self,command)
        vfp.write(f'command')
        
    def write_label(self,label):
        vfp.write(f'label {label}')
        
    def write_goto(self,label):
        vfp.write(f'goto {label}')
        
    def write_if(self,label):
        vfp.write(f'if-goto {label}')        