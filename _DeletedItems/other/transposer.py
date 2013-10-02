# calculate_transpose.py
# a quick little jscript to take in note values and transpose them diatonically
# outputs (volue
# Jesse Engel 12-17-12

class transposer:
    """A class to take in played midi notes and calculate out
    transposition values for PolyDelay"""
    def __init__(self):
        self.notein = 0
        self.root = 0
        self.transpose = [0]*4
        self.pitch_list = [0]*4
        self.octave_list = [0]*4
        self.root_dict = {'C': 0, 'C#': 1, 'D': 2, 'D#':3, 
                          'E': 4, 'F': 5, 'F': 6, 'G': 7, 
                          'G#': 8, 'A': 9, 'A#': 10, 'B': 11}
        
        self.transpose_lookup=[] #Create transpose_lookup[note][pitch_list]
        self.base = [0,2,4,5,7,9,11]
        self.modes = {'ionian':[0,0,0,0,0,0,0],
                      'dorian':[0,0,-1,0,0,0,-1],
                      'phrygian':[0,-1,-1,0,0,-1,-1],
                      'lydian':[0,0,0,+1,0,0,0],
                      'mixolydian':[0,0,0,0,0,0,-1],
                      'aeolian':[0,0,-1,0,0,-1,-1],
                      'locrian':[0,-1,-1,0,-1,-1,-1]}
        self.mode_lookup = ['ionian','dorian','dorian','phrygian',
                'phrygian','lydian','mixolydian','mixolydian',
                'aeolian','aeolian','locrian','locrian']
        self.out_of_key = [0,1,0,1,0,0,1,0,1,0,1,0]
        for i in range(12):
            self.transpose_lookup.append(map(lambda x,y,z: x+y+z, 
                                        self.base, self.modes[self.mode_lookup[i]],
                                        (ones*self.out_of_key[i] for ones in [1]*7)))


    def note(self, val): 
        self.notein = (val - self.root) % 12
        self.transpose_out()


    def pitch(self, target, val):
        self.pitch_list[target] = val
        self.transpose_out()

    def octave(self, target, val):
        self.octave_list[target] = val
        self.transpose_out()

    def transpose_out(self): 
        for i,ipitch in enumerate(self.pitch_list):
            self.transpose[i] = self.transpose_lookup[self.notein][ipitch] + \
                self.octave_list[i]*7
            print 'target:',  i+1
            print 'transpose:', self.transpose[i]


    def root_key(self, letter): 
        self.root = self.root_dict[letter]


    def root_note(self, notein):
        self.root = notein % 12

