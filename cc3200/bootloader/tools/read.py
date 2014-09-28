#!/usr/bin/env python
import serial
import sys

ser = serial.Serial('/dev/cc1', 921600)
ser.write("r")
readConf = ser.readline()
if readConf != "read OK\n":
    print "Error establishing read"
    exit()

print "Please enter the filename to read: "
fname = raw_input()
ser.write(fname + "\n")
l = int(ser.readline(), 16)
print "Reading", l, "Bytes"

b = ser.read(l)
f = open(sys.argv[1], "wb")
f.write(b)
f.close()
