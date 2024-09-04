; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Sun Feb 23 2020, 04:19:22
; -------------------------------------------------------

MusBEnding_Header:
	smpsHeaderVoice	MusBEnding_Voices
	smpsHeaderChan	6,2
	smpsHeaderTempo	$2, $2
	smpsHeaderDAC	MusBEnding_DAC
	smpsHeaderFM	MusBEnding_FM1,	$0, $c
	smpsHeaderFM	MusBEnding_FM2,	$0, $8
	smpsHeaderFM	MusBEnding_FM3,	$0, $d
	smpsHeaderFM	MusBEnding_FM4,	$0, $17
	smpsHeaderFM	MusBEnding_FM5,	$0, $c
	smpsHeaderPSG	MusBEnding_PSG1,	$dc, $5, $0
	smpsHeaderPSG	MusBEnding_PSG2,	$dc, $5, $0

MusBEnding_FM1:
	smpsCall	MusBEnding_FM1_p0
	smpsCall	MusBEnding_FM1_p1
	smpsCall	MusBEnding_FM1_p2
	smpsStop

MusBEnding_FM2:
	smpsCall	MusBEnding_FM2_p0
	smpsCall	MusBEnding_FM2_p1
	smpsCall	MusBEnding_FM2_p2
	smpsStop

MusBEnding_FM3:
	smpsCall	MusBEnding_FM3_p0
	smpsCall	MusBEnding_FM3_p1
	smpsCall	MusBEnding_FM3_p2
	smpsStop

MusBEnding_FM4:
	smpsCall	MusBEnding_FM4_p0
	smpsCall	MusBEnding_FM4_p1
	smpsCall	MusBEnding_FM4_p2
	smpsStop

MusBEnding_FM5:
	smpsCall	MusBEnding_FM5_p0
	smpsCall	MusBEnding_FM5_p1
	smpsCall	MusBEnding_FM5_p2
	smpsStop

MusBEnding_PSG1:
	smpsCall	MusBEnding_PSG1_p0
	smpsCall	MusBEnding_PSG1_p1
	smpsCall	MusBEnding_PSG1_p2
	smpsStop

MusBEnding_PSG2:
	smpsCall	MusBEnding_PSG2_p0
	smpsCall	MusBEnding_PSG2_p1
	smpsCall	MusBEnding_PSG2_p2
	smpsStop

MusBEnding_DAC:
	smpsCall	MusBEnding_DAC_p0
	smpsCall	MusBEnding_DAC_p0
	smpsCall	MusBEnding_DAC_p2
	smpsStop


; Pattern data for FM1
MusBEnding_FM1_p0:
	dc.b		$e7,$24
	smpsFMvoice	$3
	dc.b		$be,$7
	dc.b		$80,$1
	dc.b		$be,$2
	dc.b		$80
	dc.b		$bf,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$2
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$6
	dc.b		$be,$7
	dc.b		$80,$1
	dc.b		$be,$2
	dc.b		$80
	dc.b		$bf,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$2
	smpsReturn

MusBEnding_FM1_p1:
	dc.b		$be,$2
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$26
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c8,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c8,$8
	dc.b		$c1
	dc.b		$80,$20
	smpsReturn

MusBEnding_FM1_p2:
	dc.b		$e7,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c8
	dc.b		$c1
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c8
	dc.b		$c1
	dc.b		$80,$c
	dc.b		$a2,$4
	dc.b		$80
	dc.b		$a2
	dc.b		$80,$c
	dc.b		$96,$24
	dc.b		$80,$5
	smpsReturn

; Pattern data for FM2
MusBEnding_FM2_p0:
	dc.b		$e7,$20
	smpsFMvoice	$1
	dc.b		$a2,$2
	dc.b		$80
	dc.b		$a2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$9f,$4
	dc.b		$a0,$2
	dc.b		$9f,$4
	dc.b		$a2,$2
	dc.b		$80
	dc.b		$a2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a7,$6
	dc.b		$a6,$4
	dc.b		$a7,$2
	dc.b		$a6,$4
	dc.b		$a2,$2
	dc.b		$80
	dc.b		$a2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$9f,$4
	dc.b		$a0,$2
	dc.b		$9f,$4
	smpsReturn

MusBEnding_FM2_p1:
	dc.b		$a2,$2
	dc.b		$80
	dc.b		$a2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a7,$6
	dc.b		$a6,$4
	dc.b		$a7,$2
	dc.b		$a6,$4
	dc.b		$a0,$2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9e
	dc.b		$80
	dc.b		$9f
	dc.b		$80
	dc.b		$a0
	dc.b		$a0
	dc.b		$9d
	dc.b		$80
	dc.b		$9e
	dc.b		$80
	dc.b		$a0
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a1
	dc.b		$80
	dc.b		$a1
	dc.b		$80
	dc.b		$a4
	dc.b		$80
	dc.b		$a4
	dc.b		$80
	dc.b		$a7
	dc.b		$80
	dc.b		$a7
	dc.b		$80
	dc.b		$a0
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9e
	dc.b		$80
	dc.b		$9f
	dc.b		$80
	dc.b		$a0
	dc.b		$a0
	dc.b		$9d
	dc.b		$80
	dc.b		$9e
	dc.b		$80
	dc.b		$a0
	dc.b		$80
	smpsReturn

MusBEnding_FM2_p2:
	dc.b		$9d,$2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a1
	dc.b		$80
	dc.b		$a1
	dc.b		$80
	dc.b		$a4
	dc.b		$80
	dc.b		$a4
	dc.b		$80
	dc.b		$a7
	dc.b		$80
	dc.b		$a7
	dc.b		$80,$6
	dc.b		$96
	dc.b		$80,$2
	dc.b		$96,$6
	dc.b		$a1
	dc.b		$a2,$2
	dc.b		$80
	dc.b		$96,$24
	dc.b		$80,$5
	smpsReturn

; Pattern data for FM3
MusBEnding_FM3_p0:
	dc.b		$e7,$20
	smpsFMvoice	$2
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c1
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$bf,$6
	dc.b		$a
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c1
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$c4,$6
	dc.b		$a
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c1
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$bf,$6
	dc.b		$a
	smpsReturn

MusBEnding_FM3_p1:
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$c1
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$c4,$6
	dc.b		$a
	dc.b		$80,$4
	dc.b		$bf,$6
	dc.b		$80,$2
	dc.b		$bf
	dc.b		$80
	dc.b		$be,$6
	dc.b		$bf
	dc.b		$be,$4
	dc.b		$b9,$8
	dc.b		$bc
	dc.b		$bf
	dc.b		$c5
	dc.b		$80,$4
	dc.b		$bf,$6
	dc.b		$80,$2
	dc.b		$bf
	dc.b		$80
	dc.b		$be,$6
	dc.b		$bf
	dc.b		$be,$4
	smpsReturn

MusBEnding_FM3_p2:
	dc.b		$b9,$8
	dc.b		$bc
	dc.b		$bf
	dc.b		$c5
	dc.b		$80,$4
	dc.b		$c1
	dc.b		$80
	dc.b		$c1,$6
	dc.b		$c0
	dc.b		$c1,$2
	dc.b		$80
	smpsFMvoice	$1
	dc.b		$96,$24
	dc.b		$80,$5
	smpsReturn

; Pattern data for FM4
MusBEnding_FM4_p0:
	dc.b		$e7,$20
	smpsFMvoice	$2
	dc.b		$be,$2
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bc,$6
	dc.b		$a
	dc.b		$be,$2
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bf,$6
	dc.b		$a
	dc.b		$be,$2
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bc,$6
	dc.b		$a
	smpsReturn

MusBEnding_FM4_p1:
	dc.b		$be,$2
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bf,$6
	dc.b		$a
	dc.b		$80,$4
	dc.b		$c4
	dc.b		$c8
	dc.b		$cb
	dc.b		$cf
	dc.b		$80,$2
	dc.b		$cf,$4
	dc.b		$d0,$2
	dc.b		$cf,$4
	dc.b		$cd,$20
	dc.b		$80,$4
	dc.b		$c4
	dc.b		$c8
	dc.b		$cb
	dc.b		$cf
	dc.b		$80,$2
	dc.b		$cf,$4
	dc.b		$d0,$2
	dc.b		$cf,$4
	smpsReturn

MusBEnding_FM4_p2:
	dc.b		$d1,$1f
	dc.b		$80,$1
	dc.b		$d2,$6
	dc.b		$80,$2
	dc.b		$d2,$6
	dc.b		$80,$4
	dc.b		$d1,$6
	dc.b		$d2,$2
	dc.b		$80,$6
	smpsFMvoice	$1
	dc.b		$96,$24
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM5
MusBEnding_FM5_p0:
	dc.b		$e7,$24
	smpsFMvoice	$3
	dc.b		$be,$7
	dc.b		$80,$1
	dc.b		$be,$2
	dc.b		$80
	dc.b		$bf,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$2
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$6
	dc.b		$be,$7
	dc.b		$80,$1
	dc.b		$be,$2
	dc.b		$80
	dc.b		$bf,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$2
	smpsReturn

MusBEnding_FM5_p1:
	dc.b		$be,$2
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$5
	dc.b		$80,$1
	dc.b		$bc,$8
	dc.b		$80,$6
	smpsFMvoice	$2
	dc.b		$c4,$4
	dc.b		$c8
	dc.b		$cb
	dc.b		$cf
	dc.b		$80,$2
	dc.b		$cf,$4
	dc.b		$d0,$2
	dc.b		$cf,$4
	dc.b		$cd,$20
	dc.b		$80,$4
	dc.b		$c4
	dc.b		$c8
	dc.b		$cb
	dc.b		$cf
	dc.b		$80,$2
	dc.b		$cf,$4
	dc.b		$d0,$2
	dc.b		$cf,$4
	smpsReturn

MusBEnding_FM5_p2:
	dc.b		$d1,$1f
	dc.b		$80,$1
	dc.b		$d2,$6
	dc.b		$80,$2
	dc.b		$d2,$6
	dc.b		$80,$4
	dc.b		$d1,$6
	dc.b		$d2,$2
	dc.b		$80,$2b
	smpsReturn

; Pattern data for PSG1
MusBEnding_PSG1_p0:
	dc.b		$e7,$7F,smpsNoAttack,$1
	smpsReturn

MusBEnding_PSG1_p1:
	dc.b		$e7,$24
	smpsPSGvoice	$0
	dc.b		$bc,$6
	dc.b		$80,$2
	dc.b		$bc
	dc.b		$80
	dc.b		$ba,$6
	dc.b		$bc
	dc.b		$ba,$4
	dc.b		$b5,$8
	dc.b		$b9
	dc.b		$bc
	dc.b		$bf
	dc.b		$80,$4
	dc.b		$bc,$6
	dc.b		$80,$2
	dc.b		$bc
	dc.b		$80
	dc.b		$ba,$6
	dc.b		$bc
	dc.b		$ba,$4
	smpsReturn

MusBEnding_PSG1_p2:
	dc.b		$b5,$8
	dc.b		$b9
	dc.b		$bc
	dc.b		$bf
	dc.b		$80,$4
	dc.b		$be
	dc.b		$80
	dc.b		$be,$6
	dc.b		$bd
	dc.b		$be,$2
	dc.b		$80,$2b
	smpsReturn

; Pattern data for PSG2
MusBEnding_PSG2_p0:
	dc.b		$e7,$7F,smpsNoAttack,$1
	smpsReturn

MusBEnding_PSG2_p1:
	dc.b		$e7,$44
	smpsPSGvoice	$0
	dc.b		$cd,$2
	dc.b		$80
	dc.b		$d4,$4
	dc.b		$cd,$2
	dc.b		$80
	dc.b		$d4,$8
	dc.b		$cd
	dc.b		$80,$20
	smpsReturn

MusBEnding_PSG2_p2:
	dc.b		$e7,$4
	dc.b		$cd,$2
	dc.b		$80
	dc.b		$d4
	dc.b		$cd
	dc.b		$80,$4
	dc.b		$cd,$2
	dc.b		$80
	dc.b		$d4
	dc.b		$cd
	dc.b		$80,$4d
	smpsReturn

; Pattern data for DAC
MusBEnding_DAC_p0:
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$82,$1
	dc.b		$82
	dc.b		$82,$3
	dc.b		$1
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$82,$1
	dc.b		$82
	dc.b		$82,$3
	dc.b		$1
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	smpsReturn

MusBEnding_DAC_p2:
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$82,$1
	dc.b		$82
	dc.b		$82,$3
	dc.b		$1
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$82,$6
	dc.b		$4
	dc.b		$81
	dc.b		$80,$25
	smpsReturn

MusBEnding_Voices:
	dc.b	$3d,$1,$2,$2,$2,$14,$e,$8c,$e,$8,$5,$2,$5,$0,$0,$0
	dc.b	$0,$1f,$1f,$1f,$1f,$1a,$80,$80,$80	; Voice 0 (Voice 0 ripped from Mus8B - Ending.bin)
	dc.b	$20,$36,$35,$30,$31,$df,$df,$9f,$9f,$7,$6,$9,$6,$7,$6,$6
	dc.b	$8,$2f,$1f,$1f,$ff,$19,$37,$13,$80	; Voice 1 (Voice 1 ripped from Mus8B - Ending.bin)
	dc.b	$3a,$1,$7,$1,$1,$8e,$8e,$8d,$53,$e,$e,$e,$3,$0,$0,$0
	dc.b	$0,$1f,$ff,$1f,$f,$18,$28,$27,$80	; Voice 2 (Voice 2 ripped from Mus8B - Ending.bin)
	dc.b	$3a,$51,$8,$51,$2,$1e,$1e,$1e,$10,$1f,$1f,$1f,$f,$0,$0,$0
	dc.b	$2,$f,$f,$f,$1f,$18,$24,$22,$81	; Voice 3 (Voice 3 ripped from Mus8B - Ending.bin)
	even
