

#include <stdlib.h>
#include <stdint.h>

typedef    int word;        /* "word" used for optimal copy speed */

#define    wsize    sizeof(word)
#define    wmask    (wsize - 1)

/* * Copy a block of memory, handling overlap.
 * This is the routine that actually implements
 * (the portable versions of) bcopy, memcpy, and memmove.
 */

void * memcpy(void *dst0, const void *src0, size_t length)
{
    char *dst = dst0;
    const char *src = src0;
    size_t t;
    
    if (length == 0 || dst == src) {        /* nothing to do */
        return dst0;
    }
    
    if ((unsigned long)dst < (unsigned long)src) {
        /*
         * Copy forward.
         */
        t = (uintptr_t)src;    /* only need low bits */
        if ((t | (uintptr_t)dst) & wmask) {
            /*
             * Try to align operands.  This cannot be done
             * unless the low bits match.
             */
            if ((t ^ (uintptr_t)dst) & wmask || length < wsize) {
                t = length;
            } else {
                t = wsize - (t & wmask);
            }

            length -= t;

            while(t--) {
                *dst++ = *src++;
            }
        }
        /*
         * Copy whole words, then mop up any trailing bytes.
         */
        t = length / wsize;
        if (t) {
            while(t--) {
                *(word*)dst = *(word*)src;
                src += wsize;
                dst += wsize;
            }
        }
        t = length & wmask;
        if (t) {
            while(t--) {
                *dst++ = *src++;
            }
        }
    } else {
        /*
         * Copy backwards.  Otherwise essentially the same.
         * Alignment works as before, except that it takes
         * (t&wmask) bytes to align, not wsize-(t&wmask).
         */
        src += length;
        dst += length;
        t = (uintptr_t)src;
        if ((t | (uintptr_t)dst) & wmask) {
            if ((t ^ (uintptr_t)dst) & wmask || length <= wsize)
                t = length;
            else
                t &= wmask;
            length -= t;
            while(t--) {
                *--dst = *--src;
            }
        }
        t = length / wsize;
        if (t) {
            while(t--) {
                src -= wsize;
                dst -= wsize;
                *(word*)dst = *(word*)src;
            }
        }
        t = length & wmask;
        if (t) {
            while(t--) {
                *--dst = *--src;
            }
        }
    }

    return dst0;
}

int memcmp(const void* s1, const void* s2, size_t n)
{
    unsigned char u1, u2;

    for (; n--; s1++, s2++) {
        u1 = *(unsigned char *)s1;
        u2 = *(unsigned char *)s2;
        if ( u1 != u2) {
            return (u1-u2);
        }
    }
    return 0;
}

void* memset(void* p, int c, size_t n)
{
    uint8_t*  sp;
    uint32_t* lp;
    uint32_t  u32;
    uint8_t   u8;

    u8 = (uint8_t)c;
    u32 = (uint32_t)c;
    sp = (uint8_t*)p;

    while(n-- && (((uint32_t)sp & (uint32_t)-4) < (uint32_t)sp))
    {
        *(sp++) = u8;
    }

    lp = (uint32_t*)((void*)sp);

    while((n / 4) > 0)
    {
        *(lp++) = u32;
        n -= 4;
    }

    sp = (uint8_t*)lp;

    while(n--)
    {
        *(sp++) = u8;
    }

    return p;
}

