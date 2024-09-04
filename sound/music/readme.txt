-------------------------------------------------------
.### .#   .### #. .# ###. .###   ###.   .##. .### #. .#
#    ##   #    ##.## #  # #         #   #  # #    ##.##
'##.  #   '##. #'#'# ###' '##.   .##'   #### '##. #'#'#
   #  #      # #   # #       #   #      #  #    # #   #
###'  #   ###' #   # #    ###'   ####   #  # ###' #   #
-------------------- Version 1.1 ----------------------
------------ Release Date - 22nd March 2008 -----------
-------- Created By Marc Gordon  (AKA Cinossu) --------

--------------------  R E A D M E  --------------------

-------------------------------------------------------
*	Contents
-------------------------------------------------------
1	Introduction
2	How To Use The Program
3	How To Use Your Created ASM'd Music
4	Command Line Support : Syntax 
5	Command Line Support : Return Values
6	Troubleshooting
7	Version History

-------------------------------------------------------
1	Introduction
-------------------------------------------------------

S1SMPS2ASM is a converter program, turning Sonic 1 SMPS
binary files (music81.bin, etc) into a more readable,
user-friendly form. It does this by writing the header,
the music data, and voices in an ASM-esque file using
macros and equates in the place of things such as the
coordinate flags, as well as adding comments to explain
what each value does.

-------------------------------------------------------
2	How To Use The Program
-------------------------------------------------------

To use, run the s1smps2asm.exe file and type in the
filename of the music WITHOUT the extension.
(ie. Instead of "music81.bin", you'd type "music81".)
You can use direct or relative paths to the file but be
aware that the created ASM file will be placed in the
same directory as the original.

Once this is done, you type in the "project name" which
is used for things such as labels. (ie. If the project
name is "GHZ", you'd have labels such as "GHZ_FM1" etc)

Next, you can choose whether to keep the song voices
unexploded or not. What this means is instead of making
the voices use macros to list each variable (set as the
default), you can make it just list them byte for byte.

Finally, you choose whether to reduce commenting within
the ASM to a minimum, Reducing means the only comments
added will be the main heading, channel data starts and
the voice numbers.

Once this is all done, the conversion takes place and
your ASM'd music is created.

You can quit the process at any time by typing a "." as
your input for the current position.

-------------------------------------------------------
3	How To Use Your Created ASM'd Music
-------------------------------------------------------

To use music created with S1SMPS2ASM, include the file
"_s1smps2asm_inc.asm" at the very beginning of the
disassembly for your rom hack and then include the file
created for your music in the place you want it.

-------------------------------------------------------
4	Command Line Support : Syntax 
-------------------------------------------------------

There are two ways of using this program. One is by the
usual double-click, with no arguments to the program,
which will open the in-program process for conversion.

The other is via arguments in the command line. The 
syntax for this is as follows:

s1smps2asm.exe <filename> <projname> [vc] [cmnt] [q]

<filename>	Filename of the input file without an
		extension. This is REQUIRED.
		(eg. "music81", not "music81.bin")

<projname>	Project name, used in labels and the
		commented header. This is REQUIRED.

[vc]		Produces voices in byte list format
		rather than exploded into its seperate 
		variables.
		Should be either 'Y' or 'y' for yes, or
		anything else for no.

[cmnt]		Reduces the commenting to voice numbers
		and channel data starts only.
		Should be either 'Y' or 'y' for yes, or
		anything else for no.

[q]		Makes the runtime completely quiet with
		no printing to the screen at all.
		Should be either 'Q' or 'q' for quiet,
		or anything else for not.

You can retrieve this information at any time by typing
s1smps2asm.exe /? whilst in command prompt in the right
directory.

Examples:

	s1smps2asm.exe music81 GHZ

Converts music81.bin, with project name "GHZ", and uses
full exploded voices and full commenting.


	s1smps2asm.exe music81 GHZ Y

Converts music81.bin, with project name "GHZ", and uses
byte-list voices and full commenting.


	s1smps2asm.exe music81 GHZ N Y

Converts music81.bin, with project name "GHZ", and uses
full exploded voices and reduced commenting.


	s1smps2asm.exe music81 GHZ N Y q

Converts music81.bin, with project name "GHZ", and uses
full exploded voices and reduced commenting. Also shows
nothing at command line once run.

-------------------------------------------------------
5	Command Line Support : Return Values
-------------------------------------------------------

With command line support added, the program returns a
different value depending on success or failure, plus
what the failure was, if any.

Return value		Description
------------		-----------
 1			File converted successfully

 0			User breakpoint

-1			s1.smps setup error

-2			Command line syntax error

-3			File to be converted does not
			exist

-4			Unknown

-------------------------------------------------------
6	Troubleshooting
-------------------------------------------------------

If there are any problems, please don't be afraid to PM
me on the Sonic Retro forums.

http://forums.sonicretro.org
Username: Cinossu

-------------------------------------------------------
7	Version History
-------------------------------------------------------

1.1	:	Fixed note/DAC label differentiating on
		jumps, loops and calls so any after-DAC
		data is displayed correctly. Added in
		command line support for people doing
		batch processing or when calling from
		another program or utility. Also fixed
		a major bug to do with having no FM or
		PSG channels.

1.0	:	First release. Added in fancy headering
		to created ASM, as well as neatened up
		the interfaces.

0.9	:	Done voice parsing two-mode support and
		the supporting macros. Bitwise ftw.

0.8	:	Added support for DAC-specific equates.
		s1.coord now s1.smps with dac in there.

0.7	:	Added note and octave calculation and
		fixed a nasty bug in locating the jump,
		loop and call positions in second pass.

0.6	:	Fixed coord flag parsing, durations and
		notes are now handled seperately in the
		code but no display difference yet.
		
0.5	:	Second pass first version, highly buggy
		for coord flags and hex values for any
		note/duration data.

0.4	:	Fixed bug in first pass for loops.

0.3	:	First pass complete, but no displaying.
		New use of s1.coord for specifying the
		coord flag info.

0.2	:	New version from scratch. Can only dump
		music headers for now, no passes.

0.1	:	Initial version, support for only jump,
		loop and call coords, all the rest hex
		values.
