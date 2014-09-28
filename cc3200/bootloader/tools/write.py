#!/usr/bin/env python
import os
import sys
import serial

if len(sys.argv) < 3 or (len(sys.argv) == 3 and sys.argv[1] != "-f"):
    print "Usage: write.py [-f] infile"
    print "\t-f\tFlash the system image"
    exit()

if len(sys.argv) == 2:
    fpath = sys.argv[1]
else:
    fpath = sys.argv[2]

if not os.path.exists(fpath):
    print "File", fpath, "doesn't exist."
    exit()

size = os.path.getsize(fpath)
f = open(fpath, "rb")

if size > 524288:
    print "File", fpath, "is to large to transfer"
    exit()

if len(sys.argv) == 3:
    fname = "/sys/mcuimg.bin"
else:
    while True:
        print "Please enter filename to save as: "
        fname = raw_input()

        print "Confirm saving as '" + fname + "' (y/n): "
        conf = "a"
        while conf != 'y' and conf != 'n':
            conf = raw_input()
            if conf != 'y' and conf != 'n':
                print "Invalid choice."
                print "Confirm saving as '" + fname + "' (y/n): "
        if conf == 'y':
            break
 
ser = serial.Serial('/dev/cc1', 921600)
ser.write("w")
writeConf = ser.readline()
if writeConf != "write OK\n":
    print "Error, write not confirmed"
    print "Received:", writeConf
    print "Hex:",":".join("{:02x}".format(ord(c)) for c in writeConf) 
    exit()

print "Sending filename"
ser.write(fname + "\n")
if ser.readline() != "file OK\n":
    print "Error, filename not confirmed"
    exit()

print "Sending file size"
ser.write(str(size) + "\n")
if ser.readline() != "size OK\n":
    print "Error, file size not confirmed"
    exit()

tsize = int(ser.readline(), 16)
print "Buffer size is:", tsize

resp = ser.readline()

written = 0
while resp == "OK\n":
    data = f.read(tsize)
    if data == None:
        print "Read no data, file finished transferring"
        break
    written = written + ser.write(data)
    resp = ser.readline()
    print "Wrote %d of %d (%d%%): %s" % (written, size, written*100/size, resp),

if resp != "DONE\n":
    print "Error, no finish confirmation received."
