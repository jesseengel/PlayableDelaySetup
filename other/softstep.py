import OSC

class softstep:
        def __init__(self, OSC_send_client):
                self.s = OSC_send_client
                self.msg = OSC.OSCMessage()
                self.msg.setAddress('/softstep')
                self.mode = 'polydelay_preset'
 
        def sendOSC(self, address, data):
                self.msg.setAddress(address)
                self.msg.append(data)
                self.s.send(self.msg)
                self.msg.clearData()

        def polydelay_preset(self, preset):
                self.sendOSC('/polydelay/preset', [preset])

        def push(self, PadNumber, value):
                # Put the majority of the behavior here
                print PadNumber, value
                if self.mode is 'polydelay_preset':
                        if value:
                                self.polydelay_preset(PadNumber)

                
