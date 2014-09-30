#!/usr/bin/env python
import os
import sys
import serial

def printUsage():
    print "Usage: write.py [options] infile"
    print "\t-f\t--flash-bootloader\tFlash the system image"
    print "\t-s\t--start\t\t\tExit bootloader mode after flashing"
    print "\t-a\t--app\t\t\tFlash the application image"
    print "\t\t--help\t\t\tPrint this message"
    exit()

if len(sys.argv) < 2 or len(sys.argv) > 4:
    printUsage()

start = False
flash = False
app = False
fpath = ""

for arg in sys.argv[1:]:
    if arg == "-s" or arg == "--start":
        start = True
    elif arg == "-f" or arg == "--flash-bootloader":
        flash = True
    elif arg == "-a" or arg == "--app":
        app = True
    elif arg == "--help":
        printUsage()
    elif arg[0] != "-":
        fpath = arg
    else:
        printUsage()

if fpath == "":
    printUsage()

if flash and (app or start):
    print "--flash-bootloader is not compatible with any other options."
    exit()

if not os.path.exists(fpath):
    print "File", fpath, "doesn't exist."
    exit()

size = os.path.getsize(fpath)
f = open(fpath, "rb")

if size > 524288:
    print "File", fpath, "is to large to transfer"
    exit()

if flash:
    fname = "/sys/mcuimg.bin"
elif app:
    fname = "/usr/appimg.bin"
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
print "Waiting for response."
ser.setTimeout(2)
ser.flushInput();
ser.write("w")
writeConf = ser.readline()
if writeConf == "":
    print "No response, please ensure the device is in bootloader mode."
    exit()
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

if resp == "DONE\n":
    print "Flash successful"
else:
    print "Error, no finish confirmation received."

if start:
    print "Exiting bootloader"
    ser.write("q")
    quitConf = ser.readline()

    if quitConf != "quit OK\n":
        print "Failed to exit bootloader"
    else:
        print "Boot successful"

ser.close()
