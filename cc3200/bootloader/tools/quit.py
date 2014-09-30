#!/usr/bin/env python
import serial
import sys

ser = serial.Serial('/dev/cc1', 921600)
ser.setTimeout(2)
print "Waiting for response"
ser.flushInput()
ser.write("q")
quitConf = ser.readline()
if quitConf == "":
    print "No response, please ensure the device is in bootloader mode."
    exit()
elif quitConf != "quit OK\n":
    print "Error leaving bootloader"
    exit()

ser.close()
