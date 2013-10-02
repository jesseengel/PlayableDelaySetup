class t():
    def __init__(self):
        self._f = 1;
        self._woot = 0;
        
    def fget(self):
        return self._f
        
    def fset(self, val):
        self._f = val * 2

    f = property(fget, fset)

    def woot(self):
        print 'woot'
        self._woot = self._woot + 1
