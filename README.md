# Amiga_DB23_video_adapter
A PCB for creating Amiga DB23 to SCART or Amiga DB23 to VGA (15 kHz RGB) cables. This adapter sports an optional external crystal OSC feeding into Agnus via XCLK making your machine true PAL/NTSC switchable. The HSync and VSync lines are buffered via a dual non-inverting Schmitt-trigger IC to reduce jitter and noise. The PAL/NTSC switch has a small debounce circuit using the hysteresis in a dual-inverting Schmitt-trigger IC for proper debounce in hardware. This IC also controls the enabling (OE) of the crystal oscillator as well as asserting /XCLKEN. A solderpad with a jumper-pin exist for connecting a flylead back to a switchable Agnus (Not all are) on pin 41 (or JP4 on A500 Rev. 6A), this is completely optional. 

With this adapter you can:

    1. Make an Amiga DB23 to SCART RGBS (RGB with CSync) cable, 
       and optionally populate X1 with either a 28.63636 MHz (NTSC) 
       or 28.37516 MHz (PAL) oscillator, obviously you'll choose a crystal here 
       opposite to what your machine has on the motherboard.

    or

    2. Make an Amiga DB23 to VGA RGBHV (RGB with separate HSync, VSync) cable 
       (This requires a 15 kHz compatible monitor http://15khz.wikidot.com/ ), 
       and optionally populate X1 with either a 28.63636 MHz (NTSC) 
       or 28.37516 MHz (PAL) oscillator, obviously you'll choose a crystal here 
       opposite to what your machine has on the motherboard.

    or

    3. Make a Plug-only with no cable and populate X1 with either a 28.63636 MHz (NTSC) 
       or 28.37516 MHz (PAL) oscillator, obviously you'll choose a crystal here 
       opposite to what your machine has on the motherboard.


***

BOM SCART
---------
PART  | Value   | Description
----- | ------- | -------
R1    | 330 Ohm | 0805 &nbsp;&nbsp;&nbsp;(CSync)
R2    | 75 Ohm  | 1206 &nbsp;&nbsp;&nbsp;(+5V)
R3    | 1k Ohm  | 1206 &nbsp;&nbsp;&nbsp;(+12V)

   

BOM VGA
-------
PART  | Value     | Description
----- | --------- | -------
U1    | 74HCT2G17 | TSOP-6 (Dual non-inverting Schmitt trigger), (HSync, VSync) <br />https://assets.nexperia.com/documents/data-sheet/74HC_HCT2G17.pdf
C2    | 0.1 uF    | 0805


BOM XCLK
--------
PART  | Value      | Description
--------- | ---------- | -------
R4        | 10k Ohm    | 0805
R5        | 10k Ohm    | 0805
C1        | 0.1 uF     | 0805
C3        | 0.1 uF     | 0805
C4        | 0.1 uF     | 0805
U2        | 74HCT2G14  | TSOP-6 (Dual inverting Schmitt trigger) <br />https://assets.nexperia.com/documents/data-sheet/74HC_HCT2G14.pdf
X1 (PAL)  | 28.375 MHz  | Standard Clock Oscillator 5V (7.5 mm x 5 mm)<br />LFSPXO014117Bulk<br />https://eu.mouser.com/datasheet/2/741/LFSPXO014117Bulk-983232.pdf
X1 (NTSC) | 28.6363 MHz | XO (Standard) CMOS Oscillator 5V (7 mm x 5 mm)<br />K50-HC0CSE28.6363MR<br />https://media.digikey.com/pdf/Data%20Sheets/AVX%20PDFs/K50-HC%20Series%20Oscillators.pdf<br />
JP1       | | Solder Jumper with pin for flylead to switchable Agnus pin 41 (or its pad on motherboard, e.g. JP4 on A500 Rev.6A)
SW1       | Handle length: 3mm-6mm| On-Off mini slide switch SS12D00 3pin 1P2T 2 Position toggle switch 
