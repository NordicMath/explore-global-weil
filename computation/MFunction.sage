
class MFunction():
    
    """
    Creates an M-function. There are three ways to define this: with f= some function, dc= some dirichlet character, ec= some elliptic curve. For custom functions, a bound must be inputted, given by (b, d) where |a_n| < b*n^d
    """
    def __init__(self, f=None, dc=None, ec=None, bound=None):
        
        def getValueFunction(ob, type):
            return {
                0: ob
                1: ob
                2: ob.an
            }[type]
        
        # Getting the definition
        definers = [(x, s) for x, s in [(f, 0), (dc, 1), (ec, 2)] if x != None]
        
        if len(definers) != 1:
            raise ValueError("Please provide exactly one definition of the m-function")
        
        self.object, self.type = definers[0]
        
        if bound != None:
            self.bound = bound
        else:
            
        
        vf = getValueFunction(self.object, self.type)
        self.values = LazyList(data = vf, cache = True)
    
    def amt_terms(self, z, epsilon):
        n = self.bound
    
    def __call__(self, z, epsilon = 0.0001):
        if abs(z) < 1:
            raise ValueError("M-function input outside circle of convergence! (z<1)")
        t = amt_terms(z, epsilon)
        
        
    
    def __getitem__(self, key): 
        return self.values[key]
