# digilent-jtag-eeprom
The Digilent JTag uses FT2232, but its configuration EEPROM contains secrete data needed to be recoginzed by Xilinx ISE/Vivado. 
The following method only works on linux (tested on Ubuntu16.04), but the patched FT2232 doggle also works on Windows. 
Since WSL1 does not provide USB device access, the following method will not work for WSL1.

__DONT use FT_Prog on offical Digilent cable, as it can trash the firmware! The offical eeprom contains secrete data that cannot be handled correctly by FT_Prog.__

__Here are steps to create a Digilent-like Jtag that can be used in Xilinx ISE and Vivado__

1. Install softwares: `sudo apt-get install libftdi1 ftdi-eeprom`
2. Create a file "flash_digilent.conf" with the following content:
__flash_digilent.conf:__
```
vendor_id=0x0403
product_id=0x6010

flash_raw=true

filename="digilent_jtag_uart.bin"	# Filename, leave empty to skip file writing
```
3. Backup the original content of the EEPROM: `sudo ftdi_eeprom --read-eeprom flash_digilent.conf`, then rename and move the
digilent_jtag_uart.bin to a safe storage location.
4. Generate a firmware for Digilent Jtag with a UART interface:
```
echo -n -e \\x01\\x08\\x03\\x04\\x10\\x60\\x00\\x07\\x80\\x2f\\x08\\x00\\x00\\x00\\x9a\\x12\\xac\\x34\\xe0\\x1a\\x00\\x00\\x00\\x00\\x56\\x00\\x01\\x00\\xc7\\x92\\x6a\\x35\\x51\\x01\\x80\\x30\\x4a\\x74\\x61\\x67\\x53\\x6d\\x74\\x31\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x44\\x69\\x67\\x69\\x6c\\x65\\x6e\\x74\\x20\\x4a\\x54\\x41\\x47\\x2d\\x53\\x4d\\x54\\x31\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x01\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x12\\x03\\x44\\x00\\x69\\x00\\x67\\x00\\x69\\x00\\x6c\\x00\\x65\\x00\\x6e\\x00\\x74\\x00\\x34\\x03\\x44\\x00\\x69\\x00\\x67\\x00\\x69\\x00\\x6c\\x00\\x65\\x00\\x6e\\x00\\x74\\x00\\x20\\x00\\x41\\x00\\x64\\x00\\x65\\x00\\x70\\x00\\x74\\x00\\x20\\x00\\x55\\x00\\x53\\x00\\x42\\x00\\x20\\x00\\x44\\x00\\x65\\x00\\x76\\x00\\x69\\x00\\x63\\x00\\x65\\x00\\x1a\\x03\\x32\\x00\\x31\\x00\\x30\\x00\\x32\\x00\\x30\\x00\\x33\\x00\\x38\\x00\\x35\\x00\\x39\\x00\\x32\\x00\\x38\\x00\\x39\\x00\\x02\\x03\\x00\\x00\\xfb\\x6a > digilent_jtag_uart.bin
```
5. Flash the firmware to FT2232's EEPROM: `$ sudo ftdi_eeprom --flash-eeprom flash_digilent.conf`

__End of Tutorial__

__hexdump of digilent_eeprom.raw (Original version of Digilent's Jtag, no UART):__

digilent_eeprom.raw is a binary file!
```
rikka@rikka-virtual-machine:~$ hexdump -C digilent_eeprom.raw 
00000000  01 01 03 04 10 60 00 07  80 2f 08 00 00 00 9a 12  |.....`.../......|
00000010  ac 34 e0 1a 00 00 00 00  56 00 01 00 c7 92 6a 35  |.4......V.....j5|
00000020  51 01 80 30 4a 74 61 67  53 6d 74 31 00 00 00 00  |Q..0JtagSmt1....|
00000030  00 00 00 00 00 44 69 67  69 6c 65 6e 74 20 4a 54  |.....Digilent JT|
00000040  41 47 2d 53 4d 54 31 00  00 00 00 00 00 00 00 00  |AG-SMT1.........|
00000050  00 00 01 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000090  00 00 00 00 00 00 00 00  00 00 12 03 44 00 69 00  |............D.i.|
000000a0  67 00 69 00 6c 00 65 00  6e 00 74 00 34 03 44 00  |g.i.l.e.n.t.4.D.|
000000b0  69 00 67 00 69 00 6c 00  65 00 6e 00 74 00 20 00  |i.g.i.l.e.n.t. .|
000000c0  41 00 64 00 65 00 70 00  74 00 20 00 55 00 53 00  |A.d.e.p.t. .U.S.|
000000d0  42 00 20 00 44 00 65 00  76 00 69 00 63 00 65 00  |B. .D.e.v.i.c.e.|
000000e0  1a 03 32 00 31 00 30 00  32 00 30 00 33 00 38 00  |..2.1.0.2.0.3.8.|
000000f0  35 00 39 00 32 00 38 00  39 00 02 03 00 00 7b 6e  |5.9.2.8.9.....{n|
00000100
```

__How did I patch the second interface to make it a UART__

Compile (gcc xxx.c -o xxx) the following code and run it. 
It will patch the EEPROM file (digilent_eeprom.raw) and recalculate the checksum. After patching, follow mentioned procedure to flash the patched EEPROM.
Now interface A is JTag (Digilent & Xilinx compatible) and interface B is UART which can be used for debug purposes.

Changes: byte0x01: 0x01 -> 0x08, byte0xFE: 0x7B->0xFB, byte0xFF: 0x6E->0x6A

```
#include <stdio.h>
#include <stdint.h>

int main()
{
    uint8_t buf[256];
    int size = sizeof(buf);
    unsigned short checksum, value;
    FILE * pFile;
    pFile = fopen("digilent_eeprom.raw", "rw+b");
    fread(buf, 1, 256, pFile);
    
    buf[1] = 0x08;

    // calculate checksum
    checksum = 0xAAAA;

    for (int i = 0; i < size/2-1; i++)
    {
        value = buf[i*2];
        value += buf[(i*2)+1] << 8;

        checksum = value^checksum;
        checksum = (checksum << 1) | (checksum >> 15);
    }

    printf("%02x, %02x\n", buf[size-2], buf[size-1]);

    buf[size-2] = checksum & 0xFF;
    buf[size-1] = (checksum >> 8 ) & 0xFF;

    fseek(pFile, 0, SEEK_SET);
    fwrite(buf, 1, 256, pFile);

    fclose(pFile);
    return 0;
}
```

__TI's DSP Emulator__
This command gives the original FT2232 firmware of the TI's XDS100v2 Jtag emulator (With SCI/UART):
```
echo -n -e \\x00\\x08\\x03\\x04\\xd0\\xa6\\x00\\x07\\x80\\xc8\\x0c\\x00\\xcc\\x0c\\x9a\\x06\\xa0\\x4a\\xea\\x10\\x00\\x00\\x00\\x00\\x56\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x06\\x03\\x54\\x00\\x49\\x00\\x4a\\x03\\x54\\x00\\x65\\x00\\x78\\x00\\x61\\x00\\x73\\x00\\x20\\x00\\x49\\x00\\x6e\\x00\\x73\\x00\\x74\\x00\\x72\\x00\\x75\\x00\\x6d\\x00\\x65\\x00\\x6e\\x00\\x74\\x00\\x73\\x00\\x20\\x00\\x49\\x00\\x6e\\x00\\x63\\x00\\x2e\\x00\\x58\\x00\\x44\\x00\\x53\\x00\\x31\\x00\\x30\\x00\\x30\\x00\\x20\\x00\\x56\\x00\\x65\\x00\\x72\\x00\\x20\\x00\\x32\\x00\\x2e\\x00\\x30\\x00\\x10\\x03\\x46\\x00\\x32\\x00\\x38\\x00\\x4d\\x00\\x33\\x00\\x36\\x00\\x58\\x00\\x00\\x00\\x00\\x00\\x98\\x54 > ti_jtag_sci.bin
```
__flash_ti.conf:__
```
vendor_id=0x0403
product_id=0xa6d0

flash_raw=true

filename="ti_jtag_sci.bin"	# Filename, leave empty to skip file writing
```

References:

http://jumpstartengineering.com/embedded_systems/jtag/changing-ft2232h-based-device-parameters/

https://github.com/sprhawk/libftdi/blob/3e078e16d4909044b00de1c610e7904e40a614d9/src/ftdi.c#L3076

