import OSC
import time
import launchpad


receive_address = ( '127.0.0.1', 57120 )
send_address = ( '127.0.0.1', 9600 )

# Sending
s = OSC.OSCClient()
s.connect(send_address) # (host,port)

msg = OSC.OSCMessage()
msg.setAddress("/launchpad")

 
def sendOSC(address, data):
    msg.setAddress(address)
    msg.append(data)
    s.send(msg)
    msg.clearData()
                

sendOSC("/launchpad", ['led',1,2,'Green'])
