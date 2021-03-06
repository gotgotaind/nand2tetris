kinds=['static','field','argument','var']
debug=1

class symbol_table:
    def __init__(self):
        self.symbol={}
        self.kind_index={}
        self.class_name='none'
        for kind in kinds:
            self.kind_index[kind]=0
        
    def define(self,name,type,kind):
        self.symbol[name]={}
        self.symbol[name]['type']=type
        self.symbol[name]['kind']=kind
        self.symbol[name]['index']=self.kind_index[kind]
        if ( debug > 0 ):
            print(f'defined : name: {name}, type: {type}, kind: {kind}, index: { self.kind_index[kind] }')
        self.kind_index[kind]=self.kind_index[kind]+1
        
    def var_count(self,kind):
        return self.kind_index[kind]
        
    
    def kind_of(self,name):
        if ( name in self.symbol ):
            return self.symbol[name]['kind']
        else:
            return 'NONE'
    
    def type_of(self,name):
        return self.symbol[name]['type']
        
    def index_of(self,name):
        return self.symbol[name]['index']
        
    def start_subroutine(self):
        keys_to_delete=[]
        for name in self.symbol:
            kind=self.symbol[name]['kind']
            if ( kind in ('argument','var')):
                keys_to_delete.append(name)
                self.kind_index[kind]=self.kind_index[kind]-1
                
        for name in keys_to_delete:
            del self.symbol[name]
                
    def get_class(self):
        return self.class_name

    def get_class_nb_fields(self):
        return self.kind_index['field']
        
    def set_class(self,name):
        self.class_name=name
    