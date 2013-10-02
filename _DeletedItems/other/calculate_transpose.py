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

        self.transpose_lookup=[] #Create transpose_lookup[note][pitch_list]
        for i in range(12):
            transpose_lookup.append(map(lambda x,y,z: x+y+z, 
                                        base, modes[mode_lookup[i]],
                                        (ones*out_of_key[i] for ones in [1]*7)))


    def note(val): 
        global notein
        notein = (val - root) % 12
        transpose_out()


    def pitch(target, val):
        global pitch_list 
        pitch_list[target] = val
        transpose_out()

    def octave(target, val):
        global octave_list 
        octave_list[target] = val
        transpose_out()

    def transpose_out(): 
        global transpose, note
        for i,ipitch in enumerate(pitch_list):
            transpose[i] = transpose_lookup[notein][ipitch] + map(lambda x: x*7, octave_list[i])
            maxObject.outlet(0, ['target',  i+1])
            maxObject.outlet(0, ['transpose', transpose[i]])
        #status()


    def root_key(letter): 
        global root
        root = root_dict[letter]


    def root_note(notein):
        global root
        root = notein % 12

    def status():
        print 'note:',notein, 'transpose:',transpose, 'pitch_list:', pitch_list

