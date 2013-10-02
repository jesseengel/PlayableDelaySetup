# calculate_transpose.py
# a quick little jscript to take in note values and transpose them diatonically
# outputs (volue
# Jesse Engel 12-17-12
import OSC, launchpad


class polydelay:
    """A class to take in played midi notes and calculate out
    transposition values for polydelay"""
    def __init__(self, OSC_send_client):
        self.s = OSC_send_client
        self.msg = OSC.OSCMessage()
        self.msg.setAddress('/max/polydelay')

#self.color_dict = {'Red': [0,3], 'Green': [3,0], 'Yellow': [3,3], 'Clear': [0,0]}
#self.octave_dict = {-1: 'Red', 0:'Green', 1:'Yellow'}

        # self.sidebar = launchpad.sidebar()
        # self.wet = launchapad.slider('wet', 0, 100, 'Yellow')
        # self.feedback = launchpad.slider('feedback', 1, 100, 'Red')
        # self.dry = launchpad.button('dry', 'toggle', 2, 1, 'Green')

        self.voices = 4

        self.focus = 0
        self.octave_cue = 0
        self.slider_menu = 0
        self.keyboard_menu = 0

        self.instant_update = True

        self.onoffs = [0] * self.voices
        self.input_volume = [0] * self.voices
        self.output_volume = [0] * self.voices
        self.pan = [0] * self.voices
        self.feedback = [0] * self.voices
        self.pitch = [0] * self.voices
        self.octave = [0] * self.voices
        self.time = [0] * self.voices
        self.units = [0] * self.voices

        self.note = 0
        self.transpose = [0] * self.voices
        self.root_note = 0
        self.root_key = 'C'
        self._root_dict = {'C': 0, 'C#': 1, 'D': 2, 'D#':3, 
                          'E': 4, 'F': 5, 'F': 6, 'G': 7, 
                          'G#': 8, 'A': 9, 'A#': 10, 'B': 11}
        self.transpose_lookup=[] #Create transpose_lookup[note][pitch_list]
        self._transpose_lookup_init()
        

    def _transpose_lookup_init(self):
        base = [0,2,4,5,7,9,11,12]
        modes = {'ionian':[0,0,0,0,0,0,0,0],
                      'dorian':[0,0,-1,0,0,0,-1,0],
                      'phrygian':[0,-1,-1,0,0,-1,-1,0],
                      'lydian':[0,0,0,+1,0,0,0,0],
                      'mixolydian':[0,0,0,0,0,0,-1,0],
                      'aeolian':[0,0,-1,0,0,-1,-1,0],
                      'locrian':[0,-1,-1,0,-1,-1,-1,0]}
        mode_lookup = ['ionian','dorian','dorian','phrygian',
                'phrygian','lydian','mixolydian','mixolydian',
                'aeolian','aeolian','locrian','locrian']
        out_of_key = [0,1,0,1,0,0,1,0,1,0,1,0]
        for i in range(12):
            self.transpose_lookup.append(map(lambda x,y,z: x+y+z, 
                                        base, modes[mode_lookup[i]],
                                        (ones*out_of_key[i] for ones in [1]*8)))
    def sendOSC(self, address, data):
        self.msg.setAddress(address)
        self.msg.append(data)
        self.s.sendOSC(self.msg)
        self.msg.clearData()

    def array_to_pattr(array):
        for i, ival in enumerate(array):
                pattr_var = '%s[%s]' % (array[0], i)
                self.sendOSC('/polydelay/pattr', [pattr_var, ival])

            
    # Setters calculate transpose too
    def set_input_volume(self, val):
        if input_volume is not val:
            self.input_volume = val
            self.send_to_pattr(input_volume)
#self.update_launchpad_lights()
        
    def set_output_volume(self, val):
        self.output_volume = val
        self.sendOSC('/polydelay', ['output_volume', self.output_volume])

        
    def set_pan(self, val):
        self.pan = val
        self.sendOSC('/polydelay', ['pan', self.pan])
        
    def set_feedback(self, val):
        self.feedback = val
        self.sendOSC('/polydelay', ['feedback', self.feedback])
        
    def set_time(self, val):
        self.time = val
        self.sendOSC('/polydelay', ['time', self.time])


    def set_units(self, val):
        self.units = val
        self.sendOSC('/polydelay', ['units', self.units])


    def set_pitch(self, val):
        self.pitch = val
        self.calc_transpose()

    def set_octave(self, val):
        self.octave = val
        self.calc_transpose()

    def set_note(self, val):
        # Make sure it's an int
        if type(val) is list:
            val = val[0]
            self.note = (val - self.root_note) % 12
        self.calc_transpose()

        
    # Normal funcs
    def set_root_key(self, val): 
        # Make sure it's an int
        if type(val) is list:
            val = val[0]
        self.root_key = val
        self.root_note = self._root_dict[val]

    def set_root_note(self, val):
        # Make sure it's an int
        if type(val) is list:
            val = val[0]
        self.root_note = val % 12

    def calc_transpose(self): 
        for i,ipitch in enumerate(self.pitch):
            self.transpose[i] = self.transpose_lookup[self.note][ipitch] + self.octave[i]*12
        self.sendOSC('/polydelay', ['transpose', self.transpose])

    def print_status(self,val):
        print "---"
        print "pitch: %s" % self.pitch
        print "octave: %s" % self.octave
        print "note: %s" % self.note
        print "root_note: %s" % self.root_note
        print "transpose: %s" % self.transpose
        print "---"

            ### Behavior Functions / From Launchpad ###

    # def tap_in(val):
    #     if val:
    #     	launchpad.led(8,8-sidebar.tap_tempo,'Green')
    #     else:
    #     	launchpad.led(8,8-sidebar.tap_tempo,'Clear')


    # def tap_out():
    #     maxObject.outlet(0,['tap', 'bang'])

    # def press(polydelay, *A):
    #         # Python's varargs are implemented as tuples, not lists. (list(A))
    #         xtime, ypitch, push = list(A)
    #         #map 0:7 onto 8:1
    #         ypitch = 8-ypitch
    #         # print "x:", x, "y:", y, "push:", push

    #         if xtime < 8:

    #                 if polydelay.slider_menu:
    #                         if xtime == wet.column:
    #                                 wet.set(ypitch)
    #                         elif xtime == feedback.column:
    #                                 feedback.set(ypitch)
    #                         elif xtime == dry.x and ypitch == dry.y:
    #                                 dry.push(push)

    #                 elif polydelay.keyboard_menu:
    #                         print 'insert keyboard functions here'
    #                 else:

    #                         if push:
    #                                 foundit = 0

    #                                 for i, ionoff in enumerate(polydelay.onoffs): 

    #                                         #find active lines with same delay time and pitch and turn them off
    #                                         if ionoff and polydelay.times[i]==xtime:			

    #                                                 if polydelay.pitches[i]==ypitch and polydelay.octave_cue==0:
    #                                                         focus(i)
    #                                                         onoff(0)
    #                                                         to_max('onoff', polydelay.focus, 0)
    #                                                         polydelay.octaves[i]=0
    #                                                         to_max('octave', polydelay.focus, 0)
    #                                                         foundit = 1
    #                                                 #or just set the pitch
    #                                                 else:
    #                                                         focus(i)
    #                                                         pitch(ypitch)
    #                                                         to_max('pitch', polydelay.focus, ypitch)
    #                                                         if polydelay.octave_cue != 0:
    #                                                                 octave(polydelay.octave_cue)
    #                                                         foundit = 1


    #                                 #if none found, turn on a new line
    #                                 if not foundit:

    #                                         #if there's an open delay line, use it
    #                                         if polydelay.onoffs.count(0) > 0:	
    #                                                 focus(polydelay.onoffs.index(0))
    #                                                 onoff(1)
    #                                                 to_max('onoff', polydelay.focus, 1)
    #                                         #otherwise use the closest line
    #                                         else:
    #                                                 focus( min(range(len(polydelay.times)), key=lambda index: abs(polydelay.times[index]-xtime)) )

    #                                         #In both cases, set the time and pitch
    #                                         time(xtime)
    #                                         to_max('time', polydelay.focus, xtime)
    #                                         pitch(ypitch)
    #                                         to_max('pitch', polydelay.focus, ypitch)
    #                                         if polydelay.octave_cue != 0:
    #                                                 octave(polydelay.octave_cue)

    #                                 #always refresh the page after a push
    #                                 refresh_page()


    #             #Sidebar Functions 
    #             elif xtime == 8:

    #                     # For bringing octaves up	
    #                     if ypitch == sidebar.octave_up:
    #                             if push:
    #                                     polydelay.octave_cue = 1
    #                             else:
    #                                     polydelay.octave_cue = 0

    #                     #For bringing octaves down	
    #                     if ypitch == sidebar.octave_down:
    #                             if push:
    #                                     polydelay.octave_cue = -1
    #                             else:
    #                                     polydelay.octave_cue = 0

    #                     #For tap tempo	
    #                     if ypitch == sidebar.tap_tempo:
    #                             if push:
    #                                     tap_out()
    #                                     launchpad.led(8,8-sidebar.tap_tempo,'Green')
    #                             else:
    #                                     launchpad.led(8,8-sidebar.tap_tempo,'Clear')

    #                     #For Sliders
    #                     if ypitch == sidebar.sliders:
    #                             if push:
    #                                     polydelay.slider_menu = 1
    #                                     launchpad.clear_page()
    #                                     wet.refresh()
    #                                     feedback.refresh()
    #                                     dry.refresh()
    #                                     launchpad.led(8,8-sidebar.sliders,'Green')
    #                             else:
    #                                     polydelay.slider_menu = 0
    #                                     refresh_page()
    #                                     launchpad.led(8,8-sidebar.sliders,'Clear')

    #                     #For Keyboard
    #                     if ypitch == sidebar.keyboard:
    #                             if push:
    #                                     polydelay.keyboard_menu = 1
    #                                     launchpad.led(8,8-sidebar.keyboard,'Yellow')
    #                             else:
    #                                     polydelay.keyboard_menu = 0
    #                                     launchpad.led(8,8-sidebar.keyboard,'Clear')





# import launchpad
# from polydelay import polydelay

# class delayLines:
# 	def __init__(self):
# 		self.focus = 0
# 		self.octave_cue = 0
# 		self.slider_menu = 0
# 		self.keyboard_menu = 0
# 		self.times = [0]*4
# 		self.pitches = [0]*4
# 		self.octaves = [0]*4
# 		self.onoffs = [0]*4





# ###External Functions###

# #internal function (base 0)
# def focus(t):
# 	self.focus = t
# 	#print 'focus:', d.focus

# #external function (base 1 input)
# def target(t):
# 	if t == 0:
# 		self.focus = 0
# 	else:
# 		d.focus = t-1
# 	#print 'target:', self.focus	

# def time(val):
# 	self.times[self.focus] = val

	
# def pitch(val):
# 	self.pitches[self.focus] = val

	
# def octave(val):
# 	tmp = self.octaves[self.focus] + val
# 	if abs(tmp) <= 1:
# 		self.octaves[self.focus] = tmp
# 		to_max('octave', self.focus, self.octaves[self.focus])

	
# def onoff(val):
# 	self.onoffs[self.focus] = val
# 	#print 'onoffs:', self.onoffs, self.focus, self.onoffs[self.focus]


