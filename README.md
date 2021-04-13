# Amiga_DB23_video_adapter
A PCB for creating Amiga DB23 to SCART or Amiga DB23 to VGA (15 kHz RGB) cables. This adapter sports an optional external crystal OSC feeding into Agnus via XCLK making your machine true PAL/NTSC switchable. The HSync and VSync lines are buffered via a dual non-inverting Schmitt-trigger IC to reduce jitter and noise. The PAL/NTSC switch has a small debounce circuit using the hysteresis in a dual-inverting Schmitt-trigger IC for proper debounce in hardware. This IC also controls the enabling (OE) of the crystal oscillator as well as asserting /XCLKEN. A solderpad with a jumper-pin exist for connecting a flylead back to a switchable Agnus (Not all are) on pin 41 (or JP4 on A500 Rev. 6A), this is completely optional. 

With this adapter you can:

1. Make an Amiga DB23 to SCART RGBS (RGB with CSync) cable, and optionally populate X1 with either a 28.63636 MHz (NTSC) or 28.37516 MHz (PAL) oscillator, obviously you choose a crystal here opposite to what your machine has on the motherboard.

or

2. Make an Amiga DB23 to VGA RGBHV (RGB with separate HSync, VSync) cable (This requires a 15 kHz compatible monitor http://15khz.wikidot.com/), and optionally populate X1 with either a 28.63636 MHz (NTSC) or 28.37516 MHz (PAL) oscillator, obviously you choose a crystal here opposite to what your machine has on the motherboard.

or

3. Make a Plug-only with no cable and populate X1 with either a 28.63636 MHz (NTSC) or 28.37516 MHz (PAL) oscillator, obviously you choose a crystal here opposite to what your machine has on the motherboard.
