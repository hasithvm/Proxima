#!/usr/bin/env python
import serial
import sys

ser = serial.Serial('/dev/cc1', 921600)
ser.write("d")
readConf = ser.readline()
if readConf != "delete OK\n":
    print "Error establishing delete"
    exit()

print "Please enter the filename to delete: "
fname = raw_input()
ser.write(fname + "\n")

print "Waiting for confirmation"
resp = ser.readline()
if resp == "DONE\n":
    print "File deleted"
else:
    print "Error encountered:", resp
