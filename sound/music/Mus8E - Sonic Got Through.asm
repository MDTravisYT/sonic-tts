; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Thu Jan 23 2020, 00:35:03
; -------------------------------------------------------

MusESonicGotThrough_Header:
	smpsHeaderVoice	MusESonicGotThrough_Voices
	smpsHeaderChan	6,2
	smpsHeaderTempo	$2, $2
	smpsHeaderDAC	MusESonicGotThrough_DAC
	smpsHeaderFM	MusESonicGotThrough_FM1,	$fe, $10
	smpsHeaderFM	MusESonicGotThrough_FM2,	$fe, $10
	smpsHeaderFM	MusESonicGotThrough_FM3,	$fe, $10
	smpsHeaderFM	MusESonicGotThrough_FM4,	$fe, $10
	smpsHeaderFM	MusESonicGotThrough_FM5,	$fe, $10
	smpsHeaderPSG	MusESonicGotThrough_PSG1,	$da, $2, $0
	smpsHeaderPSG	MusESonicGotThrough_PSG2,	$da, $2, $0

MusESonicGotThrough_FM1:
	smpsCall	MusESonicGotThrough_FM1_p0
	smpsStop

MusESonicGotThrough_FM2:
	smpsCall	MusESonicGotThrough_FM2_p0
	smpsStop

MusESonicGotThrough_FM3:
	smpsCall	MusESonicGotThrough_FM3_p0
	smpsStop

MusESonicGotThrough_FM4:
	smpsCall	MusESonicGotThrough_FM4_p0
	smpsStop

MusESonicGotThrough_FM5:
	smpsCall	MusESonicGotThrough_FM5_p0
	smpsStop

MusESonicGotThrough_PSG1:
	smpsCall	MusESonicGotThrough_PSG1_p0
	smpsStop

MusESonicGotThrough_PSG2:
	smpsCall	MusESonicGotThrough_PSG2_p0
	smpsStop

MusESonicGotThrough_DAC:
	smpsCall	MusESonicGotThrough_DAC_p0
	smpsStop


; Pattern data for FM1
MusESonicGotThrough_FM1_p0:
	dc.b		$e7,$4
	smpsFMvoice	$0
	dc.b		$ae
	dc.b		$b0
	dc.b		$b2
	dc.b		$b3
	dc.b		$b5
	dc.b		$b7
	dc.b		$b8
	dc.b		$ba
	dc.b		$bc
	dc.b		$ca,$1
	dc.b		$cb
	dc.b		$ca,$2
	dc.b		$c6
	dc.b		$c8,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM2
MusESonicGotThrough_FM2_p0:
	smpsFMvoice	$1
	dc.b		$a2,$2
	dc.b		$a2
	dc.b		$96,$4
	dc.b		$96
	dc.b		$a2,$2
	dc.b		$a2
	dc.b		$96,$4
	dc.b		$96
	dc.b		$a2,$2
	dc.b		$a2
	dc.b		$80,$c
	dc.b		$96,$6
	dc.b		$98,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM3
MusESonicGotThrough_FM3_p0:
	smpsFMvoice	$2
	dc.b		$bf,$2
	dc.b		$bf
	dc.b		$80,$8
	dc.b		$bf,$2
	dc.b		$bf
	dc.b		$80,$8
	dc.b		$bf,$2
	dc.b		$bf
	dc.b		$80,$c
	dc.b		$bf,$6
	dc.b		$c1,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM4
MusESonicGotThrough_FM4_p0:
	smpsFMvoice	$2
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$80,$8
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$80,$8
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$80,$c
	dc.b		$bc,$6
	dc.b		$be,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM5
MusESonicGotThrough_FM5_p0:
	smpsFMvoice	$3
	dc.b		$ba,$4
	dc.b		$bf
	dc.b		$be
	dc.b		$ba
	dc.b		$bf
	dc.b		$be
	dc.b		$ba
	dc.b		$bf
	dc.b		$be
	dc.b		$bf
	dc.b		$bf,$6
	dc.b		$be,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for PSG1
MusESonicGotThrough_PSG1_p0:
	dc.b		$e7,$4
	smpsPSGvoice	$0
	dc.b		$ae
	dc.b		$b0
	dc.b		$b2
	dc.b		$b3
	dc.b		$b5
	dc.b		$b7
	dc.b		$b8
	dc.b		$ba
	dc.b		$bc
	dc.b		$ca,$1
	dc.b		$cb
	dc.b		$ca,$2
	dc.b		$c6
	dc.b		$c8,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for PSG2
MusESonicGotThrough_PSG2_p0:
	smpsPSGvoice	$0
	dc.b		$c6,$4
	dc.b		$cb
	dc.b		$ca
	dc.b		$c6
	dc.b		$cb
	dc.b		$ca
	dc.b		$c6
	dc.b		$cb
	dc.b		$ca,$8
	dc.b		$cb,$6
	dc.b		$ca,$22
	dc.b		$80,$1
	smpsReturn

; Pattern data for DAC
MusESonicGotThrough_DAC_p0:
	dc.b		$82,$2
	dc.b		$82
	dc.b		$81,$4
	dc.b		$81
	dc.b		$82,$2
	dc.b		$82
	dc.b		$81,$4
	dc.b		$81
	dc.b		$82,$2
	dc.b		$82
	dc.b		$88
	dc.b		$88
	dc.b		$89
	dc.b		$89
	dc.b		$89
	dc.b		$89
	dc.b		$82,$6
	dc.b		$22
	dc.b		$80,$1
	smpsReturn

MusESonicGotThrough_Voices:
	dc.b	$3d,$1,$2,$0,$1,$1f,$e,$e,$e,$7,$1f,$1f,$1f,$0,$0,$0
	dc.b	$0,$1f,$f,$f,$f,$17,$8d,$8c,$8c	; Voice 0 (Voice 0 ripped from Mus8E - Sonic Got Through.bin)
	dc.b	$3a,$61,$3c,$14,$31,$9c,$db,$9c,$da,$4,$9,$4,$3,$3,$1,$3
	dc.b	$0,$1f,$f,$f,$f,$21,$47,$31,$80	; Voice 1 (Voice 1 ripped from Mus8E - Sonic Got Through.bin)
	dc.b	$3d,$1,$1,$1,$1,$8e,$52,$14,$4c,$8,$8,$e,$3,$0,$0,$0
	dc.b	$0,$1f,$1f,$1f,$1f,$1b,$80,$80,$9b	; Voice 2 (Voice 2 ripped from Mus8E - Sonic Got Through.bin)
	dc.b	$3d,$1,$1,$1,$1,$8e,$52,$14,$4c,$8,$8,$e,$3,$0,$0,$0
	dc.b	$0,$1f,$1f,$1f,$1f,$1b,$80,$80,$9b	; Voice 3 (Voice 3 ripped from Mus8E - Sonic Got Through.bin)
	dc.b	$3d,$1,$2,$2,$2,$10,$50,$50,$50,$7,$8,$8,$8,$1,$0,$0
	dc.b	$0,$2f,$1f,$1f,$1f,$1c,$82,$82,$82	; Voice 4 (Voice 4 ripped from Mus8E - Sonic Got Through.bin)
	even
