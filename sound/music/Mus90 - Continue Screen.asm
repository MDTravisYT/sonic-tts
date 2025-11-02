; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Mon Jan 20 2020, 15:14:11
; -------------------------------------------------------

MusContinueScreen_Header:
	smpsHeaderVoice	MusContinueScreen_Voices
	smpsHeaderChan	2,2
	smpsHeaderTempo	$2, $3
	smpsHeaderDAC	MusContinueScreen_DAC
	smpsHeaderFM	MusContinueScreen_FM1,	$c, $10
	smpsHeaderPSG	MusContinueScreen_PSG1,	$e8, $4, $0
	smpsHeaderPSG	MusContinueScreen_PSG2,	$e8, $4, $0

MusContinueScreen_FM1:
	smpsCall	MusContinueScreen_FM1_p0
	smpsStop

MusContinueScreen_PSG1:
	smpsCall	MusContinueScreen_PSG1_p0
	smpsStop

MusContinueScreen_PSG2:
	smpsCall	MusContinueScreen_PSG2_p0
	smpsStop

MusContinueScreen_DAC:
	smpsCall	MusContinueScreen_DAC_p0
	smpsStop


; Pattern data for FM1
MusContinueScreen_FM1_p0:
	smpsFMvoice	$0
	dc.b		$b3,$c
	dc.b		$ac,$18
	dc.b		$80,$25
	smpsReturn

; Pattern data for PSG1
MusContinueScreen_PSG1_p0:
	smpsPSGvoice	$0
	dc.b		$b0,$c
	dc.b		$18
	dc.b		$80,$25
	smpsReturn

; Pattern data for PSG2
MusContinueScreen_PSG2_p0:
	smpsPSGvoice	$0
	dc.b		$ac,$c
	dc.b		$18
	dc.b		$80,$25
	smpsReturn

; Pattern data for DAC
MusContinueScreen_DAC_p0:
	dc.b		$81,$2
	dc.b		$80,$a
	dc.b		$82,$20
	dc.b		$80,$1d
	smpsReturn

MusContinueScreen_Voices:
	dc.b	$4,$37,$72,$77,$49,$1f,$1f,$1f,$1f,$7,$a,$7,$d,$0,$0,$0
	dc.b	$0,$10,$7,$10,$7,$23,$80,$23,$80	; Voice 0 (Voice 4 ripped from Mus85 - SYZ.bin)
	even
