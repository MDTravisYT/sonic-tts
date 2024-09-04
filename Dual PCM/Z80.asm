; ===========================================================================
; ---------------------------------------------------------------------------
; DUAL-PCM - by MarkeyJester
; ---------------------------------------------------------------------------
; Version: 201612131702GMT
;
;	A new YM2612 cue system.
;
;	Some fixes and improvements to the playback, repositioned the buffer
;	to 0F00.
;
;	The "Stop Sample/Mute Sample" pointer to 68k, is put into Z80 RAM
;	by the 68k, since the YM2612 cue list occupies the end of Z80 RAM.
;
; Version: 201611302323GMT
;
;	The "Mute Sample" is now outside the 68k, to keep the access speeds
;	the same (this'll stop one channel raising in pitch slightly when the
;	other rests).
;
;	The "M_Flush" instances have been rearranged slightly to allow for
;	a smoother stagger, along with the buffering speed increased to
;	compensate correctly (this increased the sample rate to 20500Hz too
;	incidentally.
;
; Version: 201611270400GMT
;
;	New driver!
;
; ---------------------------------------------------------------------------
; Structure:
;
;   Instructions that are aligned to here:
;
;		|
;
;   ...are using the first set of general purpose registers, thereas instructions
;   that are aligned to here:
;
;			|
;
;   ...are using the second set of general purpose registers.  This is a quick
;   way to clarify which set of registers are being accessed, since the exx
;   instructions don't really stand out as much by comparison to other
;   instructions, it can easily be missed.
;
;   Each instruction is followed by two comments, the first being comment
;   being the number of T-cycles that instruction is intended to take to
;   process, this can sometimes be:
;
;		; 13 | 08 = Z		or	; 12 | 07 = NZ
;
;   This signifies the instruction's condition changes the T-cycle outcome
;   and should be taken into consideration.  The first one for example will
;   signify that it takes 13 T-cycles if the condition is NOT zero, and takes
;   08 T-cycles if the condition IS zero.  The second one is the opposite, 12
;   for zero, 07 for NOT zero.  The comment following is a standard description.
;
; ===========================================================================
; ---------------------------------------------------------------------------
; Equates
; ---------------------------------------------------------------------------

E_BuffStart	=	00E80h		; Start of the buffer (ALWAYS keep it multiples of 20)
E_BuffFinish	=	00FFFh		; End of the buffer (keep in multiples of 100 - 1, e.g. 0FFF, 0EFF, 0DFF, 0CFF, etc)
E_BuffSize	=	020h		; Number of bytes to buffer ahead of time (keep at POT) (part of it is done manually, so just changing this value won't do it all).
E_CueStart	=	01000h		; Start of the cue, (ALWAYS keep in multiples of 10)
E_CueFinish	=	02000h		; End of the cue (keep in multiples of 10)
E_CueSize	=	00300h		; Number of bytes for the 68k to cue ahead (keep in multiples of 100)

; ===========================================================================
; ---------------------------------------------------------------------------
; Macros
; ---------------------------------------------------------------------------

	; --- Flushing a byte from the OUT buffer to the YM2612 ---

M_Flush	macro
		ld	a,(de)			; 07		; load byte from OUT buffer address
		ld	(ix+001h),a		; 19		; save byte to YM2612 DAC port
		inc	e			; 04		; advance OUT buffer address
		endm

; ===========================================================================
; ---------------------------------------------------------------------------
; Start of Z80 PC
; ---------------------------------------------------------------------------

Start:
		di				; 04		; disable the interrupts
		ld	ix,04000h		; 14		; load YM2612 port address
		jp	InitRout		; 10		; continue to main instructions

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to change window switch instructions correctly
; ---------------------------------------------------------------------------
		align	008h
; --- Example ---------------------------------------------------------------
;		ld	sp,CUPCM1_Switch	; 07		; load PCM switch list address
;		ld	hl,PCM1_BankCur		; 07		; load current bank window address
;		ld	b,(CUPCM1_SwStack-CUPCM1_Switch)/2 ; 07	; set number of bits to write
;		rst	Switch_PCM		; 11		; switch the PCM window address instructions
; ---------------------------------------------------------------------------

Switch_PCM:
		ld	a,(hl)			; 07		; load bank address itself
		rlca				; 04		; send first bit up
		ld	c,a			; 04		; store in c
		inc	(hl)			; 11		; increment for next time
		pop	af			; 10		; reload return address
		ex	af,af'			; 04		; store in other af register

SD_NextBit:
		ld	a,c			; 04		; load address
		rrca				; 04		; get next bit
		ld	c,a			; 04		; store address
		and	000000001b		; 07		; get only register bit (b or c)
		or	001110000b		; 07		; set instruction bits ("ld (hl),r")
		pop	hl			; 10		; load instruction address
		ld	(hl),a			; 07		; save instruction
		djnz	SD_NextBit		; 13 | 08 = Z	; repeat for all bits
		pop	hl			; 10		; move stack back
		ex	af,af'			; 04		; restore return address
		push	af			; 11		; push onto the stack
		ret				; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Catch-up - PCM 1 list
; ---------------------------------------------------------------------------

		dw	00000h					; the return address created by the z80 (this will be copied to below in "Switch_PCM")
CUPCM1_Switch:	dw	CUPCM1_Switch0				;  32KB -  64KB (  8000 -   10000)
		dw	CUPCM1_Switch1				;  64KB - 128KB ( 10000 -   20000)
		dw	CUPCM1_Switch2				; 128KB - 256KB ( 20000 -   40000)
		dw	CUPCM1_Switch3				; 256KB - 512KB ( 40000 -   80000)
		dw	CUPCM1_Switch4				; 512KB -   1MB ( 80000 -  100000)
		dw	CUPCM1_Switch5				;   1MB -   2MB (100000 -  200000)
		dw	CUPCM1_Switch6				;   2MB -   4MB (200000 -  400000)
	;	dw	CUPCM1_Switch7				;   4MB -   8MB (400000 -  800000)
	;	dw	CUPCM1_Switch8				;   8MB -  16MB (800000 - 1000000)
CUPCM1_SwStack:	dw	00000h					; stack return address (Copied to here by "Switch_PCM" for return)

; ===========================================================================
; ---------------------------------------------------------------------------
; Catch-up - PCM 2 list
; ---------------------------------------------------------------------------

		dw	00000h					; the return address created by the z80 (this will be copied to below in "Switch_PCM")
CUPCM2_Switch:	dw	CUPCM2_Switch0				;  32KB -  64KB (  8000 -   10000)
		dw	CUPCM2_Switch1				;  64KB - 128KB ( 10000 -   20000)
		dw	CUPCM2_Switch2				; 128KB - 256KB ( 20000 -   40000)
		dw	CUPCM2_Switch3				; 256KB - 512KB ( 40000 -   80000)
		dw	CUPCM2_Switch4				; 512KB -   1MB ( 80000 -  100000)
		dw	CUPCM2_Switch5				;   1MB -   2MB (100000 -  200000)
		dw	CUPCM2_Switch6				;   2MB -   4MB (200000 -  400000)
	;	dw	CUPCM2_Switch7				;   4MB -   8MB (400000 -  800000)
	;	dw	CUPCM2_Switch8				;   8MB -  16MB (800000 - 1000000)
CUPCM2_SwStack:	dw	00000h					; stack return address (Copied to here by "Switch_PCM" for return)

; ===========================================================================
; ---------------------------------------------------------------------------
; Catch-up Stack
; ---------------------------------------------------------------------------

		dw	00000h					; general stack space
		dw	00000h					; ''
		dw	00000h					; ''
CU_Stack:	dw	00000h					; return routine address (controlled by 68k)

; ===========================================================================
; ---------------------------------------------------------------------------
; Setup/init routine
; ---------------------------------------------------------------------------

InitRout:

	; --- YM2612 DAC Setup ---

		ld	(ix+000h),02Bh		; 19		; set address to DAC switch
		ld	(ix+001h),010000000b	; 19		; enable DAC/disable FM6 playback
		ld	(ix+000h),02Ah		; 19		; set address to DAC port

	; --- Pre-Muting buffer (with 80h) ---

		ld	hl,E_BuffStart		; 10		; load buffer address
		ld	de,E_BuffStart+1	; 10		; ''
		ld	bc,E_BuffFinish-E_BuffStart ; 10	; set size to null out
		ld	(hl),080h		; 10		; write null/blank 80 byte
		ldir				; 21 | 16 = Z	; blank out buffer with 80's

	; --- Setting up PCM 1 switch ---

		ld	bc,(MuteSample)		; 20		; load sample address to current address
		ld	(PCM1_SampCur),bc	; 20		; (68k to z80)
		ld	a,(MuteSample+002h)	; 13		; load bank address to current address
		ld	(PCM1_BankCur),a	; 13		; (68k to z80)

		ld	sp,CUPCM1_Switch	; 10		; load PCM switch list address
		ld	hl,PCM1_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM1_SwStack-CUPCM1_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions

	; --- Setting up PCM 2 switch ---

		ld	bc,(MuteSample)		; 20		; load sample address to current address
		ld	(PCM2_SampCur),bc	; 20		; (68k to z80)
		ld	a,(MuteSample+002h)	; 13		; load bank address to current address
		ld	(PCM2_BankCur),a	; 13		; (68k to z80)

		ld	sp,CUPCM2_Switch	; 10		; load PCM switch list address
		ld	hl,PCM2_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM2_SwStack-CUPCM2_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions

		ld	sp,CU_Stack		; 10		; load the standard stack control space

	; --- Final register setup ---

		ld	de,E_BuffStart+E_BuffSize ; 07		; set IN buffer start address
		ld	c,080h			; 07		; set 80 to c (used for comparing for end marker, and to convert signed to unsigned)
		exx				; 04		; switch registers

			ld	bc,00001h		; 07		; prepare 0/1 bit set values
			ld	hl,06000h		; 07		; prepare bank switch port address
			ld	de,E_BuffStart		; 07		; set OUT buffer start address
			jp	CatchUp			; 10		; go straight into catch-up loop

; ===========================================================================
; ---------------------------------------------------------------------------
; This align is to ensure that "CatchUp" and "Flush" are at the same 100th
; position, this'll allow the 68k to just change one byte to change the address
; of the "jp" jump.  If two bytes are needed to change, it's possible that the
; z80 "might" be stopped after it reads the first "jp" byte, but before the
; second "jp" byte.
; ---------------------------------------------------------------------------

		align	000E0h

; ===========================================================================
; ---------------------------------------------------------------------------
; Resetting window for sample 1
; ---------------------------------------------------------------------------

CUPCM1_Reset:
		inc	h			; 04		; increase sample 1 upper byte address
		jp	nz,CUPCM1_ResRet	; 10 always	; if it hasn't wrapped to 0, return

		ld	sp,CUPCM1_Switch	; 10		; load PCM switch list address
		ld	hl,PCM1_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM1_SwStack-CUPCM1_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions
		ld	sp,CU_Stack		; 10		; load the standard stack control space

		ld	hl,08000h		; 10		; reset sample 1 address to beginning of window
		ld	c,080h			; 07		; restore 80 to c
		jp	CUPCM1_ResRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Setting sample 1 as mute
; ---------------------------------------------------------------------------

CUPCM1_Mute:
		xor	a			; 04		; clear sample (a mute byte would have been loaded from hl anyway)
		ld	(de),a			; 07		; save to IN buffer
		ex	af,af'			; 04		; restore IN buffer address
		ld	e,a			; 04		; ''

		ld	bc,(MuteSample)		; 20		; load sample address to current address
		ld	(PCM1_SampCur),bc	; 20		; (68k to z80)
		ld	a,(MuteSample+002h)	; 13		; load bank address to current address
		ld	(PCM1_BankCur),a	; 13		; (68k to z80)

		ld	sp,CUPCM1_Switch	; 10		; load PCM switch list address
		ld	hl,PCM1_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM1_SwStack-CUPCM1_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions
		ld	sp,CU_Stack		; 10		; load the standard stack control space

		ld	c,080h			; 07		; restore c to 80h
		jp	CUPCM1_MuteRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Catch Up
; ---------------------------------------------------------------------------

CatchUp_Exx:
		exx				; 04		; switch registers

CatchUp:

	; --- PCM Sample 1 ---

CUPCM1_Switch0:		ld	(hl),b			; 07		; 0000 0000 1
CUPCM1_Switch1:		ld	(hl),b			; 07		; 0000 0001 0
CUPCM1_Switch2:		ld	(hl),b			; 07		; 0000 0010 0
CUPCM1_Switch3:		ld	(hl),b			; 07		; 0000 0100 0
CUPCM1_Switch4:		ld	(hl),b			; 07		; 0000 1000 0
CUPCM1_Switch5:		ld	(hl),b			; 07		; 0001 0000 0
CUPCM1_Switch6:		ld	(hl),b			; 07		; 0010 0000 0
CUPCM1_Switch7:		ld	(hl),b			; 07		; 0100 0000 0
CUPCM1_Switch8:		ld	(hl),b			; 07		; 1000 0000 0
			M_Flush
		exx				; 04		; switch registers
		ld	b,E_BuffSize/7		; 07		; repeat for number of double bytes to load
		ld	hl,(PCM1_SampCur)	; 16		; load sample 1 address
		ld	a,e			; 04		; store IN buffer address
		ex	af,af'			; 04		; ''

CUPCM1_Load:
		ldi				; 16		; load sample 1 to IN buffer and avance both addresses
		ldi				; 16		; '' (as long as "c" contains a number higher than 0, "b" will never be tampered with)
		ldi				; 16		; ''
		ldi				; 16		; ''
		ldi				; 16		; ''
		ldi				; 16		; ''
		ldi				; 16		; ''
			exx				; 04		; switch registers
			M_Flush
			exx				; 04		; switch registers
		djnz	CUPCM1_Load		; 13 | 08 = Z	; repeat for number of bytes to load
		ldi				; 16		; load sample 1 to IN buffer and avance both addresses
		ldi				; 16		; ''
		ldi				; 16		; ''
		ld	c,080h			; 07		; restore c to 80
		ld	a,(hl)			; 07		; load sample 1
		cp	c			; 04		; is this the end of the sample?
		jr	z,CUPCM1_Mute		; 12 | 07 = NZ	; if so, branch
		ld	(de),a			; 07		; save to IN buffer
		ex	af,af'			; 04		; restore IN buffer address
		ld	e,a			; 04		; ''
		inc	l			; 04		; advance sample 1 address
		jr	z,CUPCM1_Reset		; 12 | 07 = NZ	; if the sample 1 address has reached 00, branch
CUPCM1_ResRet:	ld	(PCM1_SampCur),hl	; 16		; update sample 1 address
CUPCM1_MuteRet:
	; --- PCM Sample 2 ---

		exx				; 04		; switch registers
CUPCM2_Switch0:		ld	(hl),b			; 07		; 0000 0000 1
CUPCM2_Switch1:		ld	(hl),b			; 07		; 0000 0001 0
CUPCM2_Switch2:		ld	(hl),b			; 07		; 0000 0010 0
CUPCM2_Switch3:		ld	(hl),b			; 07		; 0000 0100 0
CUPCM2_Switch4:		ld	(hl),b			; 07		; 0000 1000 0
CUPCM2_Switch5:		ld	(hl),b			; 07		; 0001 0000 0
CUPCM2_Switch6:		ld	(hl),b			; 07		; 0010 0000 0
CUPCM2_Switch7:		ld	(hl),b			; 07		; 0100 0000 0
CUPCM2_Switch8:		ld	(hl),b			; 07		; 1000 0000 0
			M_Flush
		exx				; 04		; switch registers
		ld	b,(E_BuffSize/3)-1	; 07		; repeat for number of double bytes to load
		ld	hl,(PCM2_SampCur)	; 16		; load sample 2 address

CUPCM2_Load:
		rept	003h
		ld	a,(de)			; 07		; load sample 1
		add	a,(hl)			; 07		; add sample 2
		add	a,c			; 04		; convert to unsigned
		ld	(de),a			; 07		; save to IN buffer
		inc	l			; 04		; advance sample 2 address
		inc	e			; 04		; advance IN buffer address
		endm
			exx				; 04		; switch registers
			M_Flush
			exx				; 04		; switch registers
		djnz	CUPCM2_Load		; 13 | 08 = Z	; repeat for number of bytes to load
		rept	004h
		ld	a,(de)			; 07		; load sample 1
		add	a,(hl)			; 07		; add sample 2
		add	a,c			; 04		; convert to unsigned
		ld	(de),a			; 07		; save to IN buffer
		inc	l			; 04		; advance sample 2 address
		inc	e			; 04		; advance IN buffer address
		endm
			exx				; 04		; switch registers
			M_Flush
			exx				; 04		; switch registers
		ld	a,(hl)			; 07		; load sample 2
		add	a,c			; 04		; convert to unsigned
		jr	z,CUPCM2_Mute		; 12 | 07 = NZ	; ...if it's the end of the sample, result will be 0, thus a jump
		ex	de,hl			; 04		; add sample 2
		add	a,(hl)			; 07		; ''
		ex	de,hl			; 04		; ''
		ld	(de),a			; 07		; save to IN buffer
		inc	l			; 04		; advance sample 2 address
		jr	z,CUPCM2_Reset		; 12 | 07 = NZ	; if the sample 2 address has reached 00, branch
CUPCM2_ResRet:	ld	(PCM2_SampCur),hl	; 16		; update sample 2 address
CUPCM2_MuteRet:	inc	e			; 04		; advance IN buffer address
		jr	z,CU_ResetBufferIN	; 12 | 07 = NZ	; if the IN buffer address has reached 00, branch
CU_ResBufINRet:	exx				; 04		; switch registers

			ld	a,e			; 04		; load OUT buffer address
			or	a			; 04		; has it reached 00?
			jr	z,CU_ResetBufferOUT	; 12 | 07 = NZ	; if so, branch
CU_ResBufOTRet:

	; --- Checking for "Buffer" mode ---

			ld	a,e			; 04		; load lower byte of OUT buffer
			and	-E_BuffSize		; 07		; keep within 20 bytes
		exx				; 04		; switch registers
		cp	e			; 04		; does the IN buffer match the OUT buffer?
		jp	nz,CatchUp_Exx		; 10 always	; if not, branch
		ld	a,d			; 04		; load upper byte of IN buffer
		exx				; 04		; switch registers
			cp	d			; 04		; does the OUT buffer match the IN buffer?
			jp	nz,CatchUp		; 10 always	; if not, branch

		exx				; 04		; switch registers
CUPCM1_RET:	nop				; 04		; can be changed to a "ret" instruction by 68k
CUPCM2_RET:	jr	nz,CUPCM2_NewSample	; 12 | 07 = NZ	; can be changed to "jr  z" by the 68k
		exx				; 04		; switch registers

; ---------------------------------------------------------------------------
; Buffer/Flush mode
; ---------------------------------------------------------------------------

Flush:
			jp	FL_Loop			; 10		; go to flush loop (not enough space up here, breaks "jr" instructions)

FL_Return:
			ld	a,e			; 04		; load OUT buffer address
			or	a			; 04		; has it reached 00?
			jr	z,BM_ResetBufferOUT	; 12 | 07 = NZ	; if so, branch
BM_ResBufOTRet:
FL_FlushSwitch:		jp	CatchUp			; 10		; loop ("CatchUp" can be changed to "Flush" on 68k side)

; ===========================================================================
; ---------------------------------------------------------------------------
; Setting sample 2 as mute
; ---------------------------------------------------------------------------

CUPCM2_Mute:
		ld	bc,(MuteSample)		; 20		; load sample address to current address
		ld	(PCM2_SampCur),bc	; 20		; (68k to z80)
		ld	a,(MuteSample+002h)	; 13		; load bank address to current address
		ld	(PCM2_BankCur),a	; 13		; (68k to z80)

		ld	sp,CUPCM2_Switch	; 10		; load PCM switch list address
		ld	hl,PCM2_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM2_SwStack-CUPCM2_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions
		ld	sp,CU_Stack		; 10		; load the standard stack control space

		ld	a,(de)			; 07		; add 80 to sample 2
		ld	c,080h			; 07		; restore c to 80h
		add	a,c			; 04		; ''
		ld	(de),a			; 07		; save to IN buffer
		jp	CUPCM2_MuteRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Resetting window for sample 2
; ---------------------------------------------------------------------------

CUPCM2_Reset:
		inc	h			; 04		; increase sample 2 upper byte address
		jp	nz,CUPCM2_ResRet	; 10 always	; if it hasn't wrapped to 0, return

		ld	sp,CUPCM2_Switch	; 10		; load PCM switch list address
		ld	hl,PCM2_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM2_SwStack-CUPCM2_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions
		ld	sp,CU_Stack		; 10		; load the standard stack control space

		ld	hl,08000h		; 10		; reset sample 2 address to beginning of window
		ld	c,080h			; 07		; restore 80 to c
		jp	CUPCM2_ResRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Resetting the IN buffer address
; ---------------------------------------------------------------------------

CU_ResetBufferIN:
		inc	d			; 04		; advance IN buffer upper byte address
		ld	a,d			; 04		; copy to a
		and	E_BuffFinish>>008h	; 07		; wrap within boundary
		jp	nz,CU_ResBufINRet	; 10 always	; if it hasn't wrapped to 0, return
		ld	de,E_BuffStart		; 10		; reset buffer address
		jp	CU_ResBufINRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Resetting the OUT buffer address (For catch up mode)
; ---------------------------------------------------------------------------

CU_ResetBufferOUT:
			inc	d			; 04		; advance IN buffer upper byte address
			ld	a,d			; 04		; copy to a
			and	E_BuffFinish>>008h	; 07		; wrap within boundary
			jp	nz,CU_ResBufOTRet	; 10 always	; if it hasn't wrapped to 0, return
			ld	de,E_BuffStart		; 10		; reset buffer address
			jp	CU_ResBufOTRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Resetting the OUT buffer address (For buffer mode)
; ---------------------------------------------------------------------------

BM_ResetBufferOUT:
			inc	d			; 04		; advance IN buffer upper byte address
			ld	a,d			; 04		; copy to a
			and	E_BuffFinish>>008h	; 07		; wrap within boundary
			jp	nz,BM_ResBufOTRet	; 10 always	; if it hasn't wrapped to 0, return
			ld	de,E_BuffStart		; 10		; reset buffer address
			jp	BM_ResBufOTRet		; 10		; return

; ===========================================================================
; ---------------------------------------------------------------------------
; 68K SET - routine to load a new sample 2
; ---------------------------------------------------------------------------

CUPCM2_NewSample:
		ld	bc,(PCM2_Sample)	; 20		; load sample address to current address
		ld	(PCM2_SampCur),bc	; 20		; (68k to z80)
		ld	a,(PCM2_Bank)		; 13		; load bank address to current address
		ld	(PCM2_BankCur),a	; 13		; (68k to z80)

		ld	sp,CUPCM2_Switch	; 10		; load PCM switch list address
		ld	hl,PCM2_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM2_SwStack-CUPCM2_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions
		ld	sp,CU_Stack		; 10		; load the standard stack control space

		ld	hl,CUPCM2_RET		; 10		; load return address
		ld	(hl),000100000b		; 10		; change instruction back to "JR NZ"
		ld	c,080h			; 07		; restore 80 to c
		xor	a			; 04		; set Z flag (for "jr  nz" instruction)
		jp	(hl)			; 04		; return to address

; ===========================================================================
; ---------------------------------------------------------------------------
; 68K SET - routine to load a new sample 1
; ---------------------------------------------------------------------------

CUPCM1_NewSample:
		ld	bc,(PCM1_Sample)	; 20		; load sample address to current address
		ld	(PCM1_SampCur),bc	; 20		; (68k to z80)
		ld	a,(PCM1_Bank)		; 13		; load bank address to current address
		ld	(PCM1_BankCur),a	; 13		; (68k to z80)

		ld	sp,CUPCM1_Switch	; 10		; load PCM switch list address
		ld	hl,PCM1_BankCur		; 10		; load current bank window address
		ld	b,(CUPCM1_SwStack-CUPCM1_Switch)/2 ; 07	; set number of bits to write
		rst	Switch_PCM		; 11		; switch the PCM window address instructions
		ld	sp,CU_Stack		; 10		; load the standard stack control space

		ld	hl,CUPCM1_RET		; 10		; load return address
		ld	(hl),000000000b		; 10		; change instruction back to "NOP"
		ld	c,080h			; 07		; restore 80 to c
		xor	a			; 04		; set Z flag (for "jr  nz" instruction)
		jp	(hl)			; 04		; return to address

; ===========================================================================
; ---------------------------------------------------------------------------
; The flush playback loop (had to put it here, else the "jr" instructions
; couldn't reach).
; ---------------------------------------------------------------------------

FL_Loop:
			ld	sp,(YM_PointZ80)	; 20		; load list pointer
			ld	b,E_BuffSize/2		; 07		; set number of bytes to flush

BM_NextByte:
			M_Flush
		exx				; 04		; switch registers
		pop	hl			; 10		; get YM2612 part address
		pop	bc			; 10		; get address/data bytes
		ld	a,h			; 04		; swap h and l around...
		ld	h,l			; 04		; ''
		ld	l,a			; 04		; ''
		ld	(hl),b			; 07		; set YM2612 address
		inc	l			; 04		; advance to YM2612 data port
		ld	(hl),c			; 07		; save YM2612 data
		ld	bc,02600h		; 10		; prepare "null operator write" value
		push	bc			; 11		; overwrite previous request with a null request
		pop	bc			; 10		; advance stack address to the next request
		ld	(ix+000h),02Ah		; 19		; set YM2612 address back to DAC port
		exx				; 04		; switch registers back
			djnz	BM_NextByte		; 13 | 08 = Z	; repeat for number of bytes to flush to YM2612
		exx				; 04		; switch registers

	; --- Z80 Cue Pointer ---

		ld	hl,00000h		; 10		; load Z80 pointer address from sp to hl (this is the quickest way I could find for now...)
		add	hl,sp			; 11		; ''
		ld	a,h			; 04		; wrap the Z80's pointer
		and	00Fh			; 07		; ''
		or	010h			; 07		; ''
		ld	h,a			; 04		; ''
		ld	(YM_PointZ80),hl	; 16		; update YM cue list address

	; --- 68k Cue Pointer ---

		ld	a,(YM_Point68k+001h)	; 13		; load 68k's pointer
		sub	h			; 04		; subtract Z80's pointer
		jp	p,Valid			; 10 Always	; if the difference is positive, branch
		add	a,E_CueStart>>008h	; 07		; wrap pointer infront of Z80's pointer (for calculating distance only)

Valid:
		cp	E_CueSize>>008h		; 07		; is the 68k pointer too far ahead (i.e. does the Z80 already have a lot to do)?
		jp	p,OutRange		; 10 Always	; if so, branch (do NOT change the pointer)
		ld	a,h			; 04		; advance the Z80's pointer ahead by the buffer/cue size (force the 68k pointer ahead a fixed amount)
		add	a,E_CueSize>>008h	; 07		; ''
		and	00Fh			; 07		; wrap the pointer
		or	010h			; 07		; ''
		ld	h,a			; 04		; save back to h (together with Z80 pointer's "l" for the 68k new pointer)
		ld	a,0FFh			; 07		; this flag is set just in case the 68k collects the address after the Z80...
		ld	(YM_Access),a		; 13		; ...writes the first byte, but before it writes the second byte
		ld	(YM_Point68k),hl	; 16		; set new 68k pointer
		xor	a			; 04		; let the 68k know that it can read the addres now...
		ld	(YM_Access),a		; 13		; ''

OutRange:
		ld	sp,CU_Stack		; 10		; restore the stack pointer address
		ld	c,080h			; 07		; restore c to 80 (so that the "ldi" instructions don't mess with the "b" register)
		exx				; 04		; switch registers back
			jp	FL_Return		; 10		; return to flush routine

; ===========================================================================
; ---------------------------------------------------------------------------
; PCM channel data
; ---------------------------------------------------------------------------

	; --- Currently accessed by z80 ---

PCM1_SampCur:	dw	00000h
PCM1_BankCur	db	000000000b
PCM2_SampCur:	dw	00000h
PCM2_BankCur	db	000000000b

	; --- New data written by 68k ---

PCM1_Sample:	dw	00000h
PCM1_Bank:	db	000000000b
PCM2_Sample:	dw	00000h
PCM2_Bank:	db	000000000b

; ===========================================================================
; ---------------------------------------------------------------------------
; Mute/Null sample (for the channel(s) that play no sample)
; ---------------------------------------------------------------------------
; This helps keep a consistent speed when only one sample is playing, allowing
; the speed/pitch to remain when a second sample plays or stops.
;
; This is a pointer from 68k side to a mute sample
;
; REMEMBER: both channels are ALWAYS running, even when they are not playing
; a requested sample, they will play a null/mute sample to keep consistent
; speed/pitch.
; ---------------------------------------------------------------------------

MuteSample:	dw	00000h
		db	000000000b

; ===========================================================================
; ---------------------------------------------------------------------------
; The YM2612 operator writing list (68k writes here, z80 must flush off)
; ---------------------------------------------------------------------------

YM_Access:	db	000h
YM_Point68k:	dw	YM_List+E_CueSize
YM_PointZ80:	dw	YM_List

		align	E_CueStart
YM_List:	rept	(E_CueFinish-E_CueStart)/004h
		dw	00040h			; Swapped, so the 68k can write the low byte, and immediately increment to the address/data bytes
		dw	02600h
		endm

; ===========================================================================



