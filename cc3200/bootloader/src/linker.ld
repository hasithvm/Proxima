/*****************************************************************************
* blinky.ld
*
* GCC Linker script for blinky application.
*
* Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/ 
* 
* 
*  Redistribution and use in source and binary forms, with or without 
*  modification, are permitted provided that the following conditions 
*  are met:
*
*    Redistributions of source code must retain the above copyright 
*    notice, this list of conditions and the following disclaimer.
*
*    Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in the 
*    documentation and/or other materials provided with the   
*    distribution.
*
*    Neither the name of Texas Instruments Incorporated nor the names of
*    its contributors may be used to endorse or promote products derived
*    from this software without specific prior written permission.
*
*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
*  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
*  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
*  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
******************************************************************************/


HEAP_SIZE = 0x00010000;

MEMORY
{
    SRAM (rwx) : ORIGIN = 0x20004000, LENGTH = 0x00030000
    BLOAD (rwx) : ORIGIN = 0x20020000, LENGTH = 0x00010000
}

SECTIONS
{
    .inittext :
    {
        __bootload_sram_start = .;
        __vector_start = .;
        KEEP(*(.intvecs))
        __vector_end = .;
        *(.inittext*)
        __bootload_text_start = .;
    } > SRAM

    .newvector :
    {
        _newvector = .;
        . += __vector_end - __vector_start;
    } > BLOAD

    .text :
    {
        _text = .;
        *(.text*)
        *(.rodata*)
	*(.ARM.extab* .gnu.linkonce.armextab.*)
	. = ALIGN(8);
        _etext = .;
    } > BLOAD AT > SRAM

    .ARM : {
    __exidx_start = .;
      *(.ARM.exidx*)
      __exidx_end = .;
    } > BLOAD AT > SRAM

    .datastart :
    {
        __init_data = .;
    } > SRAM

    .data :
    {
        _data = .;
        *(.data*)
	. = ALIGN (8);
        _edata = .;
    } > BLOAD AT > SRAM

    .dataend :
    {
        __end_data = .;
    } > SRAM

    .bootloader :
    {
        __bootload_text_end = .;
    } > SRAM
        
    .bss :
    {
        _bss = .;
        *(.bss*)
        *(COMMON)
        _ebss = .;
    } > BLOAD AT > SRAM


    /*.heap :
    {
	_heap = .;
	. = . + HEAP_SIZE;
	. = ALIGN(8);
	_eheap = .;

    }*/
}

