#!/usr/bin/env python
import serial
import sys

ser = serial.Serial('/dev/cc1', 921600)
print "Waiting for response"
ser.flushInput()
ser.setTimeout(2)
ser.write("i")
infoConf = ser.readline()
if infoConf == "":
    print "No response, please ensure the device is in bootloader mode."
    exit()
if infoConf != "info OK\n":
    print "Error establishing info", infoConf,
    exit()

print "Please enter the filename to get info: "
fname = raw_input()
ser.write(fname + "\n")

print "Waiting for confirmation"
resp = ser.readline()
if resp == "OK\n":
    size = int(ser.readline(), 16)
    alloc = int(ser.readline(), 16)
    flags = int(ser.readline(), 16)
else:
    print "Error encountered:", resp,
    exit()

resp = ser.readline()
if resp == "DONE\n":
    print "Info received successfully"
    print "File Size:", size
    print "Allocated Size:", alloc
    print "Flags:", flags
else:
    print "Error encountered:", resp
