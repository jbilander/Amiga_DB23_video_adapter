# Amiga_DB23_video_adapter
A PCB for creating Amiga DB23 to SCART or Amiga DB23 to VGA cables. You can use this adapter to feed a new clock for the Amiga via XCLK (pin 1).
The XCLK provides a new base frequency for the entire Amiga, since that all clocks are a multiplier of the color clock frequency, be it NTSC or PAL.
The Amiga Agnus chip derives all clocks in the machine (CCK, CCKQ, 7M, /CDAC, 14M) from the main 28M crystal oscillator.

***
Why use this adapter with XCLK? <br /><br />
You don't have to, but being able to switch between true native PAL and true native NTSC in one machine is a very nice feature to get the correct aspect ratio on game graphics, also correct speed for sound playback and gameplay with smooth scrolling in both PAL 50 Hz and NTSC 60 Hz. For example check the comparison below on the game Defender Of The Crown with the awesome graphics, by the artist Jim Sachs, looks so much better in NTSC (lower pics). In PAL mode everything looks kind of squashed.
<br /><br />
<a href="images/pal_vs_ntsc_pic1.jpg">
<img src="images/pal_vs_ntsc_pic1.jpg" width="308" height="¨231">
</a>
<a href="images/pal_vs_ntsc_pic2.jpg">
<img src="images/pal_vs_ntsc_pic2.jpg" width="308" height="231">
</a>

***

<a href="images/Amiga_DB23_video_adapter_rev1a_pic1.png">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic1.png" width="312" height="198">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic2.png">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic2.png" width="312" height="198">
</a>
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic4.png">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic4.png" width="299" height="166">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic3.png">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic3.png" width="299" height="166">
</a>

***


The HSync and VSync lines are buffered via a dual non-inverting Schmitt-trigger IC to reduce jitter and noise. The PAL/NTSC switch has a simple resistor-capacitor (RC) debounce circuit using the hysteresis in a dual-inverting Schmitt-trigger IC for proper debounce in hardware. This IC also controls the enabling (OE-pin) of the crystal oscillator as well as asserting the /XCLKEN line (pin 2). A solderpad with a jumper-pin exists for connecting a jumper-wire back to a switchable Agnus (Not all Agnuses are switchable) on pin 41 (or JP4 on A500 Rev. 6A), this is completely optional, check your Agnus version before trying such a mod and that JP4 isn't bridged to GND. All ECS Agnuses can be switched in Software should your Agnus not have the PAL/NTSC pin. KS 3.0 and above lets you switch in early startup menu that you can access by holding down the two mouse buttons right after resetting the machine.

***

<a href="images/Amiga_DB23_video_adapter_rev1a_pic5.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic5.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic6.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic6.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic11.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic11.jpg" width="256" height="192">
</a>

***

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
       opposite to what your machine has on the motherboard. I assume you're using RGB2HDMI 
       or similar for hooking up your display but still want to be able to switch between true 
       PAL/NTSC by feeding XCLK to the machine.

***

If you use jumper-wire from JP1-pin then you bridge it either with the left pad or the right pad depending on your setup:

    1. Motherboard has PAL oscillator and Adapter has NTSC oscillator = bridge JP1-pin with XCLKEN-pad
    2. Motherboard has NTSC oscillator and Adapter has PAL oscillator = bridge JP1-pin with OE-pad

Please note, using a jumper-wire is completely optional, You can switch ECS Agnus in Early Startup menu or with software such as Degrader and then ju only switch the external XLCK-crystal enable or disable via the switch on the cable plug. However it can be more convenient to have both tasks controlled from one single switch, hence connecting a jumper-wire.

***

BOM SCART
---------
PART  | Value   | Description
----- | ------- | -------
R1    | 330 Ohm | 0805 &nbsp;&nbsp;&nbsp;(CSync), to Pin 20 of SCART, (Comp Video In, 1V including sync)
R2    | 75 Ohm  | 1206 &nbsp;&nbsp;&nbsp;(+5V), to Pin 16 of SCART, High (1-3V) RGB, Low (0-0.4V) Composite
R3    | 1k Ohm  | 1206 &nbsp;&nbsp;&nbsp;(+12V), to Pin 8 of SCART, Autoselect switch: High (9.5-12V) AVmode, Low (0-2V) TVmode

I used the Resistor-values following Stedy's guide here: <br /><br />
The Ultimate SCART cable <br />
http://ianstedman.co.uk/amiga-scart-guide/

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
X1 (PAL)  | 28.375 MHz  | Standard Clock Oscillator 5V (7.5 mm x 5 mm)<br />LFSPXO014117Bulk<br />https://eu.mouser.com/datasheet/2/741/LFSPXO014117Bulk-983232.pdf <br /> 91 pcs In Stock at the time of writing
X1 (NTSC) | 28.6363 MHz | XO (Standard) CMOS Oscillator 5V (7 mm x 5 mm)<br />K50-HC0CSE28.6363MR<br />https://media.digikey.com/pdf/Data%20Sheets/AVX%20PDFs/K50-HC%20Series%20Oscillators.pdf<br />895 pcs In Stock at the time of writing
JP1       | | Solder Jumper with pin for a flylead back to switchable Agnus pin 41 (or its pad on motherboard, e.g. JP4 on A500 Rev.6A)
SW1       | Handle length: 3mm-6mm| On-Off mini slide switch SS12D00 3pin 1P2T 2 Position toggle switch

***

## Howto modify a vga-cable and use with this adapter

First do some soldering, standard stuff nothing special:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic7.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic7.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic8.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic8.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic9.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic9.jpg" width="256" height="192">
</a>

***

Ok good, now the switch, solder it on and make a hole in the plastic hood (several small drill holes will do, or one 5 mm bulls-eye drill hole.):
<br />

<a href="images/Amiga_DB23_video_adapter_rev1a_pic10.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic10.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic11.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic11.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic12.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic12.jpg" width="256" height="192">
</a>

***

Now time to butcher one side of the vga cable:

<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic13.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic13.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic14.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic14.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic15.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic15.jpg" width="256" height="192">
</a>
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic16.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic16.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic17.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic17.jpg" width="256" height="192">
</a>

***

Now, first thing first, put a larger shrink tube around the cable (blue in picture) and then start cutting and stripping wires, you can beep out which one is which. In this cable all the individually shielded wires were RGBHV. Wire together the cable shielding like in picture below and use a shrink tube around. Pic below says it all:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic18.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic18.jpg" width="512" height="384">
</a>

***
Optional flylead:
<br /><br />
Now add a jumper wire with a right angled pin (crimped or soldered to the wire) and solder it onto JP1 bridging it with either of the pads (which one depends on your setup).

<a href="images/Amiga_DB23_video_adapter_rev1a_pic19.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic19.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic20.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic20.jpg" width="256" height="192">
</a>

***
Now, solder the shielding to the metal casing, I first tried without crimping a pin on there but couldn't get a good joint. I used my desolder gun 80W giving enough juice/heat to be able to solder this one finally:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic21.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic21.jpg" width="256" height="192">
</a>
<br />

Ok, now heat the blue shrink tube and fit the cable stop, don't tighten too hard.

<a href="images/Amiga_DB23_video_adapter_rev1a_pic22.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic22.jpg" width="512" height="384">
</a>

<br />

I did some testing that the switch works, and also I beeped out the cable verifying no shorts exists before trying it:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic23.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic23.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic24.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic24.jpg" width="256" height="192">
</a>

***
Installing jumper wire in A500 Rev 6A:
<br />

I ran the jumper wire through an existing hole in the Amiga 500 case/motherboard, then just soldered it onto JP4 pad next to Agnus verifying no continuity to GND-pad:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic25.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic25.jpg" width="384" height="512">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic26.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic26.jpg" width="384" height="512">
</a>

***

All done! We can now switch between true PAL/NTSC and get correct display resolution, yay!

<a href="images/Amiga_DB23_video_adapter_rev1a_pic27.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic27.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic28.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic28.jpg" width="256" height="192">
</a>

***

We can even switch during run-time thanks to the proper debounce circuit in hardware, but I think it's best to power off the Amiga, do the switching, and then power on again.

Short video-clip below showing hot-switching, don't try this at home folks ;)

https://imgur.com/iBLLAlT


Here a comparison between PAL vs NTSC on WB 3.1.4 on a A1200 and a Benq BL912 tweaked with pixelclock setting around 90 and some overscan, very nice picture quality I must say:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic29.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic29.jpg" width="410" height="308">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic30.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic30.jpg" width="205" height="308">
</a>
<br />
<br />
It is very important to adjust the pixelclock on the Benq monitor to get rid of those vertical jailbars, otherwise it will look like this:
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic31.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic31.jpg" width="308" height="231">
</a>
<br />
<br />
If you ever wondered how one of those moulded vga plugs looks like inside, this is it:
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic32.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic32.jpg" width="256" height="192">
</a>

***

## Howto solder a SCART-cable (RGBS) with this adapter.

<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic33.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic33.jpg" width="512" height="384">
</a>
<br />
<br />
First the resistors R1-R3 and then the oscillator with its decoupling cap:
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic34.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic34.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic35.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic35.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic36.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic36.jpg" width="256" height="192">
</a>

***

I'm using a cut-down DB25 to DB23 here and because of this I didn't solder the PCB flush against the connector as you would normally do, this is to make the PCB fit in the slighly larger plastic shroud of the DB25. Solder the mini-slide switch as the last step after the 23-pins for easier soldering:

<a href="images/Amiga_DB23_video_adapter_rev1a_pic37.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic37.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic38.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic38.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic39.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic39.jpg" width="256" height="192">
</a>


<br />
<br />

Drill out a hole for the switch 5 mm or similar and if needed cut some plastic from the shroud to clear the oscillator:

<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic37.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic37.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic38.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic38.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic39.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic39.jpg" width="256" height="192">
</a>
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic40.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic40.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic41.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic41.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic42.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic42.jpg" width="256" height="192">
</a>
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic43.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic43.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic44.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic44.jpg" width="256" height="192">
</a>

***

Now, add shrinktubes on the main cable and for the shielding and the L and R audio wires...then solder all the wires to the PCB and crimp the audio wires together, audio GND can be wired together and soldered to the GND pad(s) of the PCB:
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic45.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic45.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic46.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic46.jpg" width="256" height="192">
</a>
<br />
<br />
Add the jumper-wire-pin and solder the slide switch and the shielding last (I use my desolder gun 80W to be able to solder the shielding):
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic47.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic47.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic48.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic48.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic49.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic49.jpg" width="256" height="192">
</a>
<br />
<br />
Ok all done with the d-sub connector...
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic50.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic50.jpg" width="512" height="384">
</a>
<br />
<br />
...now the Scart-plug, this is straight forward soldering, nothing special, I use a stick from a q-tip to separate the pin rows to not risk any shorts. I find it holds the pins better in position too.
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic51.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic51.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic52.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic52.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic53.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic53.jpg" width="256" height="192">
</a>

***

<a href="images/Amiga_DB23_video_adapter_rev1a_pic54.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic54.jpg" width="512" height="384">
</a>
<br />
All done!
<br />
<br />
Here another SCART-cable I made, this time with a real DB23 plug:
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic55.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic55.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic56.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic56.jpg" width="256" height="192">
</a>

***
As a last step, don't forget to select Game Mode and the correct AV-mode on your TV.
<br />
<br />
<a href="images/Amiga_DB23_video_adapter_rev1a_pic57.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic57.jpg" width="256" height="192">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1a_pic58.jpg">
<img src="images/Amiga_DB23_video_adapter_rev1a_pic58.jpg" width="256" height="192">
</a>
<br />
<br />
Game On!
<br />
<br />
Happy Hackin´

***

<br />
<br />

[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
