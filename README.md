# Amiga DB23 Video Adapter

## Overview

The Amiga DB23 Video Adapter is a small plug-mounted PCB that fits directly onto the Amiga's 
DB23 video port. It buffers and filters the Amiga's analog video signals for use with modern 
displays, and optionally allows switching between PAL and NTSC clock frequencies without 
rebooting or using software.

***

<a href="images/Amiga_DB23_video_adapter_rev1b_pic1.png">
<img src="images/Amiga_DB23_video_adapter_rev1b_pic1.png" width="400" height="295">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1b_pic2.png">
<img src="images/Amiga_DB23_video_adapter_rev1b_pic2.png" width="400" height="295">
</a>
<br />
<a href="images/Amiga_DB23_video_adapter_rev1b_pic3.png">
<img src="images/Amiga_DB23_video_adapter_rev1b_pic3.png" width="400" height="283">
</a>
<a href="images/Amiga_DB23_video_adapter_rev1b_pic4.png">
<img src="images/Amiga_DB23_video_adapter_rev1b_pic4.png" width="400" height="283">
</a>

***

### Video Signal Conditioning (Rev 1B)

- **HSync and VSync** are passed through a dual non-inverting Schmitt-trigger buffer (U1) to 
  reduce jitter and noise on the sync lines.
- **RGB signals** are routed through a THS7374 4-channel video amplifier (U3) with its 
  low-pass filter enabled. This effectively removes the "jailbar" 
  interference patterns commonly seen when connecting an Amiga's 15 kHz signal to LCD displays.
  > ⚠️ A 15 kHz-capable display is required. See [15khz.wikidot.com](http://15khz.wikidot.com/) 
  > for compatible monitors.

### PAL/NTSC Clock Switching (Optional)

When a crystal oscillator (Y1) is populated, the adapter can supply an external pixel clock 
to the Amiga's Agnus/Alice chip, allowing the machine to be switched between PAL and NTSC 
video modes. The slide switch (SW1) enables or disables the `/XCLKEN` signal — when asserted, 
this tells Agnus/Alice to use the external clock from the adapter instead of the onboard 
motherboard oscillator.

The switch itself is hardware-debounced using a resistor-capacitor (RC) circuit combined with 
the hysteresis of a dual-inverting Schmitt-trigger IC (U2), ensuring clean, glitch-free 
switching.

Two solder pads (`XCLKEN` and `/XCLKEN`) are provided on the PCB. An optional jumper wire 
can be soldered from one of these pads back to pin 41 of a switchable Agnus chip 
(or JP4 on the A500 Rev. 6A board), so that the switch on the adapter controls both the 
external clock enable and the Agnus clock selection simultaneously.

> ⚠️ **Before attempting this mod**, verify that your Agnus revision supports hardware 
> PAL/NTSC switching, and confirm that JP4 is not already bridged to GND. 
> All ECS Agnus chips can be switched in **software** if the hardware pin is not available — 
> use the Early Startup Menu (hold both mouse buttons at reset) on KS 3.0+, or a tool 
> such as [Degrader](https://aminet.net/package/util/boot/Degrader).

#### Choosing the correct crystal and solder pad

Install a crystal **opposite** to the one already on your Amiga's motherboard:

| Motherboard oscillator | Install crystal | Solder jumper wire to pad |
|------------------------|-----------------|---------------------------|
| PAL (28.37516 MHz)     | NTSC (28.63636 MHz) | `XCLKEN` |
| NTSC (28.63636 MHz)    | PAL (28.37516 MHz)  | `/XCLKEN` |

> The jumper wire is entirely optional. Without it you can still enable/disable the external 
> clock via SW1, and switch the Agnus video mode independently through software or the 
> Early Startup Menu.

---

## Why use this adapter with XCLK?

You don't have to — but being able to switch between true native PAL and true native NTSC on 
the same machine is a very compelling feature. It gives you:

- ✅ Correct **aspect ratio** for game graphics designed for a specific video standard
- ✅ Correct **sound playback speed** (PAL/NTSC run at different clock rates)
- ✅ Correct **gameplay speed** and smooth scrolling in both PAL 50 Hz and NTSC 60 Hz

For example, compare the screenshots below from *Defender of the Crown*, with its stunning 
artwork by artist **Jim Sachs**. The game was designed for NTSC and looks significantly better 
in NTSC mode (bottom row) — in PAL mode (top row) everything appears vertically squashed.

<br />

**PAL (top) vs NTSC (bottom):**

<a href="images/pal_vs_ntsc_pic1.jpg">
<img src="images/pal_vs_ntsc_pic1.jpg" width="308" height="231">
</a>
<a href="images/pal_vs_ntsc_pic2.jpg">
<img src="images/pal_vs_ntsc_pic2.jpg" width="308" height="231">
</a>

***

## Usage Scenarios

### 1 — Amiga DB23 to SCART (RGBS)
Build a cable carrying RGB + Composite Sync (CSync) to a SCART-equipped display.  
U1 and C3 are **not required** in this configuration.  
Y1 can optionally be populated for PAL/NTSC switching as described above.

### 2 — Amiga DB23 to VGA (RGBHV)
Build a cable carrying RGB + separate HSync/VSync to a VGA monitor.  
Requires a [15 kHz-compatible monitor](http://15khz.wikidot.com/).  
U1 and C3 **are required** in this configuration.  
Y1 can optionally be populated for PAL/NTSC switching as described above.

### 3 — Plug only, no cable (clock switching only)
Populate Y1 and the XCLK circuitry, but attach no output cable. Useful if you are already 
using an RGBtoHDMI or similar device for display output but want to retain hardware 
PAL/NTSC switching via the adapter's switch.

***

## Bill of Materials (Rev 1B)

**J1, U3 and RN1 are required for both SCART and VGA builds.**

| Reference | Qty | Value | Description | Package | Mouser / Notes |
|-----------|-----|-------|-------------|---------|----------------|
| J1 | 1 | DB23 Female | DB-23 female connector (Amiga video port) | DB-23 | [Aliexpress DB23 Female](https://www.aliexpress.com/item/1005004634222021.html) |
| U1 | 1 | 74HCT2G17 | Dual non-inverting Schmitt-trigger buffer — **VGA only** | TSOP-6 | [771-HCT2G17GV125](https://www.mouser.com/ProductDetail/771-HCT2G17GV125) |
| U2 | 1 | 74HCT2G14 | Dual inverting Schmitt-trigger buffer (SW1 debounce) — **XCLK optional** | TSOP-6 | [771-HCT2G14GV125](https://www.mouser.com/ProductDetail/771-HCT2G14GV125) |
| U3 | 1 | THS7374IPWR | 4-channel video amplifier with low-pass filter | TSSOP-14 | [595-THS7374IPWR](https://www.mouser.com/ProductDetail/595-THS7374IPWR) |
| U4 | 1 | 74LVC1GX04 | Crystal clock buffer — **XCLK optional** | TSOP-6 | [771-LVC1GX04GV125](https://www.mouser.com/ProductDetail/771-LVC1GX04GV125) |
| Y1 | 1 | 28.37516 MHz (PAL) or 28.63636 MHz (NTSC) | Crystal oscillator, CL=16pF — **XCLK optional** | 3.2 x 2.5 mm | e.g. ABM8-28.375MHZ-B2-T (PAL) or ECS-286.3-18-33-JEM-TR (NTSC) |
| RN1 | 1 | 75Ω | Resistor network, 4× 75Ω isolated (CAT16-75R0F4LF) | 1206 | [CAT16-75R0F4LF](https://www.mouser.com/ProductDetail/652-CAT16-75R0F4LF) |
| SW1 | 1 | SW_SPDT | Slide switch, enables/disables `/XCLKEN` (external clock to Agnus/Alice). Recommended: SS12D00 3-pin 1P2T, pin pitch 2.5 mm, handle length 5 mm — **XCLK optional** | | e.g. [AliExpress SS12D00](https://www.aliexpress.com/item/1005008330569768.html) |
| R1 | 1 | 100Ω | **Optional** — CCK clock termination. Populate only if experiencing clock interference noise. See [vidmod fix](http://www.l8r.net/technical/wblock/a4000hard/vidmod.html) | 1206 | |
| R2 | 1 | 75Ω | RGB mode autoselect — **SCART only** (drives SCART pin 16 high for RGB mode) | 1206 | |
| R3 | 1 | 1kΩ | AV mode autoselect — **SCART only** (drives SCART pin 8 high at 9.5–12V so TV automatically switches to SCART input) | 1206 | |
| R4 | 1 | 150Ω | Damping resistor XCLK-line — **XCLK optional** | 1206 | |
| R5 | 1 | 330Ω | CSync resistor — **SCART only** | 0805 | |
| R6, R7, R8 | 3 | 75Ω | Video termination resistor | 0603 | |
| R9, R10 | 2 | 10kΩ | Resistor (SW1 RC debounce) — **XCLK optional** | 0805 | |
| R11 | 1 | 1kΩ | Resistor — **XCLK optional** | 0603 | |
| R12 | 1 | 2.2MΩ | Resistor (SW1 RC debounce) — **XCLK optional** | 0603 | |
| C1, C2 | 2 | 100nF | Decoupling capacitor | 0805 | |
| C3 | 1 | 100nF | Decoupling capacitor — **VGA only** | 0603 | |
| C4, C5 | 2 | 100nF | Decoupling capacitor — **XCLK optional** | 0603 | |
| C6, C7 | 2 | 32pF | Crystal load capacitor (06031A320FAT2A) — **XCLK optional** | 0603 | [581-06031A320FAT2A](https://www.mouser.com/ProductDetail/581-06031A320FAT2A) |

### Partial BOM by build type

| Component | Mandatory (both) | SCART only | VGA only | XCLK optional |
|-----------|:---:|:---:|:---:|:---:|
| J1, U3, RN1 | ✅ | | | |
| C1, R6, R7, R8 | ✅ | | | |
| R2, R3, R5 | | ✅ | | |
| U1, C3 | | | ✅ | |
| U2, U4, Y1, SW1 | | | | ✅ |
| C2, C4, C5, C6, C7 | | | | ✅ |
| R4, R9, R10, R11, R12 | | | | ✅ |
| R1 | optional | | | |

### SCART cable wiring reference

| Signal | Resistor | Value | SCART pin | Notes |
|--------|----------|-------|-----------|-------|
| CSync  | R5 | 330Ω | Pin 20 | Composite sync / composite video in, 1V incl. sync |
| +5V    | R2 | 75Ω  | Pin 16 | RGB select: High (1–3V) = RGB mode, Low (0–0.4V) = Composite |
| +12V   | R3 | 1kΩ  | Pin 8  | AV autoswitch: High (9.5–12V) = AV mode, Low (0–2V) = TV mode |

### VGA cable reference

U1 (74HCT2G17) buffers HSync and VSync. Datasheet: [74HC/HCT2G17](https://assets.nexperia.com/documents/data-sheet/74HC_HCT2G17.pdf)

***
***
***

### OLD rev 1A:
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
