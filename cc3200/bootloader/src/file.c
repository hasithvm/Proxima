#include "file.h"

#include "simplelink.h"

#include "rom.h"
#include "rom_map.h"

#include "hw_types.h"
#include "uart_if.h"

uint8_t buf[4096];
uint8_t fname[32];

void ReadFile() {
    SlFsFileInfo_t info;
    int32_t fh;
    uint32_t len;

    // Get filename
    UartReadline(fname, sizeof(fname));

    // Ensure file exists
    if (!sl_FsGetInfo(fname, 0, &info)) {
        // Write file length
        UartWriteInt(info.FileLen);
        UartWrite("\n");

        // Open file and output section by section
        if (sl_FsOpen(fname, FS_MODE_OPEN_READ, NULL, &fh)) {
            UartWrite("Failed to Open");
        } else {
            for(uint32_t i = 0; i < info.FileLen; i += sizeof(buf)) {
                if (info.FileLen - i > sizeof(buf)) {
                    len = sizeof(buf);
                } else {
                    len = info.FileLen - i;
                }
                len = sl_FsRead(fh, i, buf, len);
                UartOut(buf, len);
            }
            sl_FsClose(fh, NULL, NULL, 0);
        }
    } else {
        UartWrite("-1\n");
    }
}

// Round up to next step of 512
uint32_t fileSize(uint32_t v) {
    if (v == 0) {
        return 0;
    }

    return ((v - 1) & 512) + 512 + (v & -512);
}

void DeleteFile() {
    int32_t err;
    // Get filename
    UartReadline(fname, sizeof(fname));

    if(!(err = sl_FsDel(fname, 0))) {
        UartWrite("DONE\n");
    } else {
        UartWrite("ERR: ");
        UartWriteInt(err);
        UartWrite("\n");
    }
}

void InfoFile() {
    SlFsFileInfo_t info;
    int32_t err;

    // Get filename
    UartReadline(fname, sizeof(fname));

    if(!(err = sl_FsGetInfo(fname, 0, &info))) {
        UartWrite("OK\n");
        UartWriteInt(info.FileLen);
        UartWrite("\n");
        UartWriteInt(info.AllocatedLen);
        UartWrite("\n");
        UartWriteInt(info.flags);
        UartWrite("\n");
        UartWrite("DONE\n");
    } else {
        UartWrite("ERR: ");
        UartWriteInt(err);
        UartWrite("\n");
    }
}

void FixFile() {
    SlFsFileInfo_t info;
    int32_t err;

    // Get filename
    UartReadline(fname, sizeof(fname));
    UartWrite("OK\n");

    if(!(err = sl_FsGetInfo(fname, 0, &info))) {
        UartWrite("DONE\n");
    } else {
        int32_t fh;
        switch(err) {
            case SL_FS_FILE_HAS_NOT_BEEN_CLOSE_CORRECTLY:
                sl_FsOpen(fname, FS_MODE_OPEN_READ, NULL, &fh);
                sl_FsClose(fh, NULL, NULL, 0);
                break;
        }
        UartWrite("DONE\n");
    }
}

void WriteFile() {
    int32_t fh;
    int32_t len;
    uint32_t written = 0;
    int32_t err;

    // Get filename
    UartReadline(fname, sizeof(fname));
    UartWrite("file OK\n");

    // Get file length
    uint32_t v = UartReadInt();
    UartWrite("size OK\n");
    if (v > sizeof(buf)) {
        UartWriteInt(sizeof(buf));
        UartWrite("\n");
    } else {
        UartWriteInt(v);
        UartWrite("\n");
    }

    // delete mcuimg before flashing
    if (!memcmp(fname, "/sys/mcuimg.bin", 16)) {
        sl_FsDel(fname, 0);
    }

    if (!(err = sl_FsOpen(fname, FS_MODE_OPEN_CREATE(fileSize(v), 0), NULL, &fh))) {
        while (v) {
            if (v > sizeof(buf)) {
                len = sizeof(buf);
            } else {
                len = v;
            }

            v -= len;

            UartWrite("OK\n");
            UartReadData(buf, len);
            if ((err = sl_FsWrite(fh, written, buf, len)) != len) {
                UartWrite("ERR during write: ");
                UartWriteInt(err);
                UartWrite("\n");
                break;
            }
            written += len;
        }

        sl_FsClose(fh, NULL, NULL, 0);
        UartWrite("DONE\n");
    } else {
        UartWrite("ERR: ");
        UartWriteInt(err);
        UartWrite("\n");
    }
}

bool LoadFile(uint8_t* fname, uint8_t* loc) {
    SlFsFileInfo_t info;
    int32_t fh;
    int32_t len;

    // Ensure file exists
    if (!sl_FsGetInfo(fname, 0, &info)) {

        // Open file and output section by section
        if (sl_FsOpen(fname, FS_MODE_OPEN_READ, NULL, &fh)) {
            return false;
        } else {
            for(uint32_t i = 0; i < info.FileLen; i += sizeof(buf)) {
                if (info.FileLen - i > sizeof(buf)) {
                    len = sizeof(buf);
                } else {
                    len = info.FileLen - i;
                }
                if (len != sl_FsRead(fh, i, buf, len)) {
                    return false;
                }
                memcpy((loc + i), buf, len);
            }
            sl_FsClose(fh, NULL, NULL, 0);

        }
    } else {
        return false;
    }

    return true;
}
