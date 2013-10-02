"""
Things to do:

1)Transposer responds right to /polydelay time etc.
2)Launchpad python script as an object
3)OSC handling correctly calling functions.



List of variables: /polydelay
Wet, delaytime, delaytime[1], delaytime[2], delaytime[3], feedback, feedback[1], feedback[2], feedback[3], input_volume, input_volume[1], input_volume[2], input_volume[3], output_volume, output_volume[1], output_volume[2], output_volume[3],, octave, octave[1], octave[2], octave[3], units, units[1], units[2], units[3], pitch, pitch[1], pitch[2], pitch[3], pan, pan[1], pan[2], pan[3], Global_pan, Global_delaytime, Global_feedback, Global_input_volume, Global_output_volume, Global_octave, Global_units, Global_pitch

and preset
"""

import OSC
import time, threading
import polydelay


receive_address = ( '127.0.0.1', 9600 )
send_address = ( '127.0.0.1', 57120 )

# Sending
s = OSC.OSCClient()
s.connect(send_address) # (host,port)
msg = OSC.OSCMessage()
msg.setAddress("/max/polydelay")


# Recieving
r = OSC.OSCServer(receive_address)
r.addDefaultHandlers()



### --------------------------- ###
# Polydelay object
p = polydelay.polydelay(s, msg)

p_methods = {
               'input_volume':p.set_input_volume,
               'output_volume':p.set_output_volume,
               'pan':p.set_pan,
               'feedback':p.set_feedback,
               'pitch':p.set_pitch,
               'octave':p.set_octave,
               'time':p.set_time,
               'units':p.set_units,
               'note':p.set_note,
               'root_note':p.set_root_note,
               'root_key':p.set_root_key,
               'status':p.print_status
                }

def max_data_call_function(obj, max_in):
    print ''

    
### --------------------------- ###

# define a message-handler function for the server to call.
# it executes this code everytime it recieves an appropriate message
# Main Function calls and sendback go here
def polydelay_handler(addr, tags, data, source):
    print "---"
    print "received new osc msg from %s" % OSC.getUrlStr(source)
    print "with addr : %s" % addr
    print "typetags %s" % tags
    print "data %s" % stuff
    print "---"
    
    # Call any function that's input stuff = ['function', 'data']
    function = stuff.pop(0)
    getattr(p, function)(stuff)

    
r.addMsgHandler("/polydelay", polydelay_handler) # adding our function



### --------------------------- ###
    
# just checking which handlers we have added
print "Registered Callback-functions are :"
for addr in r.getOSCAddressSpace():
    print addr


# Start OSCServer
print "\nStarting OSCServer. Use ctrl-C to quit."
rt = threading.Thread( target = r.serve_forever )
rt.start()


try :
    while 1 :
        time.sleep(5)

except KeyboardInterrupt :
    print "\nClosing OSCServer."
    r.close()
    print "Waiting for Server-thread to finish"
    rt.join() ##!!!
    print "Done"
        











