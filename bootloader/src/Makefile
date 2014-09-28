###############################################################################
#	Payload software makefile
#	Questions? Ping t-havida
#
#
###############################################################################

ARCH:=arm-none-eabi
CC:=$(ARCH)-gcc
CXX:=$(ARCH)-g++
AS:=$(ARCH)-as

PROJECT_ROOT:=.
INCLUDE_ROOT:=$(PROJECT_ROOT)/include/
TOOLS_ROOT:=$(PROJECT_ROOT)/tools/win32

OBJDIR:=$(PROJECT_ROOT)/obj
BINDIR:=$(PROJECT_ROOT)/bin

HOMEDIR:=${HOME}
CC3200SDK:=$(HOMEDIR)/.wine/drive_c/ti/CC3200SDK_1.0.0/cc3200-sdk
SIMPLELINK:=$(CC3200SDK)/simplelink/
DRIVERLIB:=$(CC3200SDK)/driverlib/


INCLUDE_PATHS:=$(CC3200SDK)/inc/ $(SIMPLELINK)/include $(DRIVERLIB)


ARMFLAGS=-mthumb
ARMFLAGS+=-mcpu=cortex-m4
#ARMFLAGS+=-mfpu=fpv4-sp-d16
#ARMFLAGS+=-mfloat-abi=soft
#ARMFLAGS+=-DTARGET_IS_CC3200
ARMFLAGS+=-Dgcc

CFLAGS=-std=c99 -g
CCFLAGS=-ffunction-sections -fdata-sections -g -Wall -Wextra #-nostartfiles
CXXFLAGS=-fno-exceptions -fno-rtti -g -Wall -Wextra #-nostartfiles

LD:=$(ARCH)-ld
LDFLAGS:=--entry ResetISR --gc-sections -L$(DRIVERLIB)/gcc/exe/ -L$(SIMPLELINK)/gcc/exe -lsimplelink_nonos -ldriver

INCLUDE=$(INCLUDE_PATHS:%=-I%)

SIZE=$(ARCH)-size

OBJCOPY:=$(ARCH)-objcopy
PROGRAM:=payload
PROGRAM_DEPLOY:=$(payload:%:=%.hex)

CP:=cp
TOUCH:=touch
MKDIR:=mkdir -p

# include new .c files here

SRC_C:=main.c startup_gcc.c gpio_if.c memcpy.c uart_if.c file.c
SRC_CPP:=


OBJ:=$(SRC_C:.c=.o) $(SRC_CPP:.cpp=.o)
OBJ:=$(addprefix $(OBJDIR)/,$(OBJ))

BINS:=payload.hex payload.bin
BINS:=$(addprefix $(BINDIR)/,$(BINS))

NODE_NAME?=local
BUILD_ID?=$(shell date +"%c" | tr ' :' '__')

all: package


.PHONY: build
.PHONY: deploy
.PHONY: package

$(OBJDIR):
	$(MKDIR) $@

$(BINDIR):
	$(MKDIR) $@

$(OBJ) : | $(OBJDIR)

$(BINS) : | $(BINDIR)

$(OBJDIR)/%.o: %.c
	$(CC) -c $(CFLAGS) $(CCFLAGS) $(ARMFLAGS) $(INCLUDE)  $< -o $@

$(OBJDIR)/%.o: %.cpp
	$(CXX) -c $(CCFLAGS) $(CXXFLAGS) $(ARMFLAGS) $(INCLUDE) $< -o $@

$(BINDIR)/payload.bin: $(OBJ) linker.ld
	$(LD) -T linker.ld $(OBJ) $(LDFLAGS) -o $@

$(BINDIR)/payload.hex: $(BINDIR)/payload.bin
	$(OBJCOPY) -O binary $< $@

build: $(BINS)

package: $(BINDIR)/payload.hex

deploy: $(BINDIR)/payload.hex
		$(FLASH) $(FLASHFLAGS) $(BINDIR)/payload.hex

clean:
	rm -rf $(BINDIR) $(OBJDIR)
