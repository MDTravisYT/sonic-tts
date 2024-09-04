mid2smps 0.3 Readme
===================
This tool converts your MIDIs into SMPS files compatible with the Sonic 1 sound driver.


Quick usage instructions
------------------------
- Use a MIDI editor to prepare the MIDI (only 9 monophonic channels + drum channel, see channel mapping below)
- Load instrument library
- Load DAC name and PSG envelope lists
- Load a mapping file or assign drums to DAC sounds, FM or PSG instruments
- Open the MIDI
- Use the Tempo Calculator to find the Ticks/Quarter setting that matches both, the song's notes and BPM best.
  Note about the Ticks/Quarter (TpQ) setting:
    If your song has an even rhythm, TpQ should be a multiple of 4.
    If your song has a swing or shuffle rhythm, TpQ should be a multiple of 3.
    If you are using pitch bends or fine volume slides, TpQ should be 12 or higher.
- Save as SMPS
- Run the SMPS files through SMPSOpt to save space


Features
--------
- full support for Pan, PitchBend and Tempo changes
- support for volume changes via note velocity and Main Volume controller (no Expression controller, sorry)
- support for gyb instrument files
- per-channel looping (via Controller 111, see mid2smps_Ctrls.txt)
- global loop markers using MIDI Marker Events (FF 06) with the text "loopStart" and "loopEnd"
- force E7 flag between notes
- programmable modulation effects
- Note Stop/Timeout effect
- dynamic switching between melody and drum mode on all FM channels
- mappings editor that allows you to assign GM drums to DAC, FM and PSG channels and instruments
- range limiter to prevent notes outside of the SMPS frequency limit


Channel mapping
---------------
 MIDI	 SMPS
 1-6	FM 1-6
  10	Drums (can be DAC, FM 1-6, PSG 3)
11-13	PSG 1-3
  14	PSG 3 Noise (different frequency algorithm, good for PSG periodic noise)


Included tools
--------------
SMPS Tempo Calculator:
- shows you all tempi possible with the current settings
- shows you the best matching tempo (and resulting BPM) for the loaded MIDI
- includes a frame calculator that can help you to calculate frame numbers for Note Fill effects and Modulation delays
- [hidden feature] can show Sonic 2 and Sonic 3 tempi (double-click on the text where the current tempo algorithm type is shown)

2612edit:
- an instrument editor that creates GYB files with a melody and a drum bank
- fully integrated into mid2smps
- imports instruments from many formats, including VGM and OPM
- Note: Don't bother with LFO features. They are part of the GYB format, but SMPS can't use them.

Mappings Editor:
- Click on one of the GM drums in the left list, then assign DAC sounds or FM and PSG instruments to it.
- FM drums can go to any of the 6 channels
- You can override the default drum frequency. (i.e. assign the Toms to the same FM instrument, but with 3 or 4 different frequencies)

DAC Name Editor:
- Use this tool to create a list of your DAC sounds. These will show up in the mappings editor then.

PSG Envelope Editor:
- Use this tool to create a list of your PSG instruments. These will show up in the mappings editor then.
- You can import single envelopes from .bin files.
- You can import a collection of envelopes from an ASM file. (Note: only labels, incbin and dc.b keywords are supported.)


Notes
-----
- "Save Mapping Configuration" saves only paths to the loaded files. It does NOT save any mappings, envelope or instrument files.
- Be careful with Pitch Bends, they can easily increase a file size a lot if overused.
  Pitch slides with 100+ events per Quarter don't make sense if you convert with 12 Ticks per Quarter.
- Be sure to load all DAC and PSG lists and GYB files before editing your mappings.
  If you select a drum in the left list and the respective instrument doesn't exist in the right list, it will be set to "None".


Thanks to
---------
- all the people who contributed to the Sonic Retro Music Hacking Guide
- nineko for the icon, the tempo calcuation algorithm and 2612edit
- Oerg866 and Rob Jinnai for various ROM and tools I used for testing
- Tamkis for making a terrible Final Fantasy 4 Boss conversion and so challenging me to make a better one (that's why I wrote mid2smps)
- the beta testers (Tweaker, Crash, Varion, DalekSam, other people I forgot?) who helped me to find bugs


Happy music making!
Valley Bell
