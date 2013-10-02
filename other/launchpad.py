### to_max to Launchpad ###
import OSC

class launchpad:
        def __init__(self, OSC_send_client):
                self.s = OSC_send_client
                self.msg = OSC.OSCMessage()
                self.msg.setAddress('/launchpad')
                self.color_dict = {'Red': [0,3], 'Green': [3,0], 'Yellow': [3,3], 'Clear': [0,0]}
                self.octave_dict = {-1: 'Red', 0:'Green', 1:'Yellow'}
 
        def sendOSC(self, address, data):
                self.msg.setAddress(address)
                self.msg.append(data)
                self.s.send(self.msg)
                self.msg.clearData()

        def led(x,y,color):
                self.sendOSC('/max/launchpad/wac.lp/0/1/led', [x,y] + self.color_dict[color])

                
        def to_max(parameter, target, value):
                self.sendOSC('/max', ['target', target])
                self.sendOSC('/max', [parameter, value])
               


        def column(x, height, color):
                for iy in range(8):
                        #bottom to top
                        h = 8-iy
                        if h <= height:
                                self.led(x, iy, color)
                        else:
                                self.led(x, iy, 'Clear')

        def clear_column(x):
                #just clears
                self.column(x, 8, 'Clear')

        def clear_all():
                for ix in range(9):
                        for iy in range(8):
                                self.led(ix, iy, 'Clear')	

        def clear_page():
                for ix in range(8):
                        for iy in range(8):
                                self.led(ix, iy, 'Clear')





        ### MAKE IT CHECK WHICH MODE IT's IN AND DO REFRESH/PUSH ACTIONS FOR POLYDELAY IF IT'S IN POLYDELAY

        # Pass launchpad a polydelay object to let it know you're refreshing a polydelay
        def refresh_polydelay(polydelay):
                tmp = []

                for i in range(4):
                        #turn on the columns that are on	
                        if polydelay.onoffs[i] == 1:
                                self.column(polydelay.times[i], polydelay.pitches[i], self.octave_dict[polydelay.octaves[i]])
                                tmp.append(polydelay.times[i])
                        #turn off the columns that are off and not on in another delay line		
                        elif not any(polydelay.times[i]==itmp for itmp in tmp):
                                self.clear_column(polydelay.times[i])

                #clear the rest of them
                for icolumn in range(8):
                        if not any(icolumn==itime for itime in polydelay.times):
                                self.clear_column(icolumn)

                ###Octave Buttons####
                self.led(8,8-sidebar.octave_up,'Yellow')
                self.led(8,8-sidebar.octave_down,'Red')

                






        class slider:
                """A class to control slider info/behavior
                Mostly for feedback and wet to begin"""
                def __init__(self, parameter_name, column_number, top, color):
                        self.column = column_number #base 0
                        self.height = 5 #base 1
                        self.top = top
                        self.parameter = parameter_name
                        self.color = color

                def refresh(self):
                        self.column(self.column, self.height, self.color)

                def set(self, y):
                        self.height = y
                        self.sendOSC('/max',  [self.parameter, (self.height-1) / 7.0 * self.top])
                        self.refresh()

        class button:
                """A class to control button info/behavior
                Mostly for dry"""
                def __init__(self, parameter, behavior, x, y, color):
                        self.x = x 
                        self.y = y 
                        self.parameter = parameter
                        self.color = color
                        self.behavior = behavior #toggle or sustain
                        self.onoff = 1

                def refresh(self):
                        if self.onoff: 
                                launchpad.led(self.x, 8-self.y, self.color)
                        else:
                                launchpad.led(self.x, 8-self.y, 'Clear')

                def push(self, push):
                        if self.behavior is 'sustain':
                                self.onoff = push
                        elif self.behavior is 'toggle' and push:
                                self.onoff = (self.onoff + 1) % 2
                        s.sendOSC('/max/launchpad/', [self.parameter, self.onoff])
                        self.refresh()

        #Column 8 (Sidebar) Functions
        class sidebar:
                def __init__(self):
                        self.octave_up = 2
                        self.octave_down = 1
                        self.tap_tempo = 8
                        self.keyboard = 6
                        self.sliders = 7

