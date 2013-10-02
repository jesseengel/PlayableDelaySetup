def test():
    print 'woot'
    import OSC
    import time, threading

    receive_address = ( '127.0.0.1', 57120 )
    send_address = ( '127.0.0.1', 9600 )

    # Sending
    s = OSC.OSCClient()
    s.connect(send_address) # (host,port)

    msg = OSC.OSCMessage()
    msg.setAddress("/polydelay")

    data = ['pitch', 0, 1, 2, 3]
    msg.append(data)
    s.send(msg)
    msg.clearData()

    data = ['octave', 0, 1, -1, 0]
    msg.append(data)
    s.send(msg)
    msg.clearData()

    data = ['note', 5, 0, 0]
    msg.append(data)
    s.send(msg)
    msg.clearData()

    data = ['status', 0, 1, 2, 3]
    msg.append(data)
    s.send(msg)
    msg.clearData()








if __name__ == "__main__":
    test()
