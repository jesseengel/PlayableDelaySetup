import OSC

class softstep:
        """This is for handling the softstep"""
        def __init__(self, send_port, recieve_port):
                self.client = OSC.OSCClient()
                self.msg = OSC.OSCMessage()
                self.mode = 'polydelay_preset'
 
        def sendOSC(self, port, address, data):
                self.msg.setAddress(address)
                self.msg.append(data)
                try:
                        self.client.sendto(self.msg, port, None)
                except OSC.OSCClientError:
                        print 'Packet didn\'t make it'
                self.msg.clearData()


        def polydelay_preset(self, preset):
                self.sendOSC(send_port, '/polydelay/preset', [preset])

        def push(self, pad, value):
                # Put the majority of the behavior here
                # print pad, value
                if self.mode is 'polydelay_preset':
                        #if pad is 10: Put in behavior
                        if value:
                                self.polydelay_preset(pad)

                
