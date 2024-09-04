; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Sat Jan 25 2020, 01:33:01
; -------------------------------------------------------

MusFGameOver_Header:
	smpsHeaderVoice	MusFGameOver_Voices
	smpsHeaderChan	6,0
	smpsHeaderTempo	$2, $3
	smpsHeaderDAC	MusFGameOver_DAC
	smpsHeaderFM	MusFGameOver_FM1,	$0, $c
	smpsHeaderFM	MusFGameOver_FM2,	$0, $10
	smpsHeaderFM	MusFGameOver_FM3,	$0, $10
	smpsHeaderFM	MusFGameOver_FM4,	$0, $10
	smpsHeaderFM	MusFGameOver_FM5,	$0, $20

MusFGameOver_FM1:
	smpsCall	MusFGameOver_FM1_p0
	smpsCall	MusFGameOver_FM1_p0
	smpsCall	MusFGameOver_FM1_p1
	smpsStop

MusFGameOver_FM2:
	smpsCall	MusFGameOver_FM2_p0
	smpsCall	MusFGameOver_FM2_p0
	smpsCall	MusFGameOver_FM2_p1
	smpsStop

MusFGameOver_FM3:
	smpsCall	MusFGameOver_FM3_p0
	smpsCall	MusFGameOver_FM3_p0
	smpsCall	MusFGameOver_FM3_p1
	smpsStop

MusFGameOver_FM4:
	smpsCall	MusFGameOver_FM4_p0
	smpsCall	MusFGameOver_FM4_p0
	smpsCall	MusFGameOver_FM4_p1
	smpsStop

MusFGameOver_FM5:
	smpsCall	MusFGameOver_FM5_p0
	smpsCall	MusFGameOver_FM5_p2
	smpsCall	MusFGameOver_FM5_p1
	smpsStop

MusFGameOver_DAC:
	smpsCall	MusFGameOver_DAC_p0
	smpsCall	MusFGameOver_DAC_p2
	smpsCall	MusFGameOver_DAC_p1
	smpsStop


; Pattern data for FM1
MusFGameOver_FM1_p0:
	dc.b		$e7,$8
	smpsFMvoice	$0
	dc.b		$b2,$c
	dc.b		$80,$4
	dc.b		$b2
	dc.b		$80
	dc.b		$b3,$c
	dc.b		$b0,$14
	dc.b		$b2,$4
	dc.b		$80
	dc.b		$b2
	dc.b		$80
	dc.b		$b2
	dc.b		$80
	dc.b		$ae
	dc.b		$80
	dc.b		$ac,$c
	dc.b		$b0,$8
	dc.b		$80,$c
	smpsReturn

MusFGameOver_FM1_p1:
	dc.b		$b1,$5
	dc.b		$3
	dc.b		$b0,$4
	dc.b		$80
	dc.b		$af
	dc.b		$80
	dc.b		$ae
	dc.b		$80
	dc.b		$ad,$40
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM2
MusFGameOver_FM2_p0:
	smpsFMvoice	$1
	dc.b		$cd,$8
	dc.b		$cd
	dc.b		$ca
	dc.b		$ca
	dc.b		$cb,$e
	dc.b		$12
	dc.b		$cd,$8
	dc.b		$cd
	dc.b		$ca
	dc.b		$ca
	dc.b		$d0,$e
	dc.b		$12
	smpsReturn

MusFGameOver_FM2_p1:
	dc.b		$80,$61
	smpsReturn

; Pattern data for FM3
MusFGameOver_FM3_p0:
	smpsFMvoice	$1
	dc.b		$ca,$8
	dc.b		$ca
	dc.b		$c6
	dc.b		$c6
	dc.b		$c8,$e
	dc.b		$12
	dc.b		$ca,$8
	dc.b		$ca
	dc.b		$c6
	dc.b		$c6
	dc.b		$cb,$e
	dc.b		$12
	smpsReturn

MusFGameOver_FM3_p1:
	dc.b		$80,$61
	smpsReturn

; Pattern data for FM4
MusFGameOver_FM4_p0:
	smpsFMvoice	$0
	dc.b		$a2,$4
	dc.b		$80
	dc.b		$a2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$e
	dc.b		$9f,$8
	dc.b		$a0,$2
	dc.b		$9f,$8
	dc.b		$a2,$4
	dc.b		$80
	dc.b		$a2
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$a7,$e
	dc.b		$a6,$8
	dc.b		$a7,$2
	dc.b		$a6,$8
	smpsReturn

MusFGameOver_FM4_p1:
	dc.b		$a2,$5
	dc.b		$3
	dc.b		$a1,$4
	dc.b		$80
	dc.b		$a0
	dc.b		$80
	dc.b		$9f
	dc.b		$80
	dc.b		$9f,$40
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM5
MusFGameOver_FM5_p0:
	dc.b		$e7,$20
	smpsFMvoice	$0
	dc.b		$b3,$c
	dc.b		$80,$2
	dc.b		$b3,$12
	dc.b		$80,$20
	dc.b		$b8,$c
	dc.b		$80,$2
	dc.b		$b8,$12
	smpsReturn

MusFGameOver_FM5_p2:
	dc.b		$80,$20
	dc.b		$b3,$c
	dc.b		$80,$2
	dc.b		$b3,$12
	dc.b		$80,$20
	dc.b		$b8,$c
	dc.b		$80,$2
	dc.b		$b8,$12
	smpsReturn

MusFGameOver_FM5_p1:
	dc.b		$80,$61
	smpsReturn

; Pattern data for DAC
MusFGameOver_DAC_p0:
	dc.b		$80,$10
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$81
	smpsReturn

MusFGameOver_DAC_p2:
	dc.b		$80,$10
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$81
	smpsReturn

MusFGameOver_DAC_p1:
	dc.b		$80,$61
	smpsReturn

MusFGameOver_Voices:
	dc.b	$3a,$51,$8,$51,$2,$1e,$1e,$1e,$10,$1f,$1f,$1f,$f,$0,$0,$0
	dc.b	$2,$f,$f,$f,$1f,$18,$24,$22,$81	; Voice 0 (Voice 0 ripped from Mus8F - Game Over.bin)
	dc.b	$3c,$33,$30,$73,$70,$94,$9f,$96,$9f,$12,$0,$14,$f,$4,$a,$4
	dc.b	$d,$2f,$f,$4f,$2f,$33,$80,$1a,$80	; Voice 1 (Voice 1 ripped from Mus8F - Game Over.bin)
	dc.b	$3a,$1,$7,$1,$1,$8e,$8e,$8d,$53,$e,$e,$e,$3,$0,$0,$0
	dc.b	$7,$1f,$ff,$1f,$f,$1c,$28,$27,$80	; Voice 2 (Voice 2 ripped from Mus8F - Game Over.bin)
	dc.b	$1f,$66,$31,$53,$22,$1c,$98,$1f,$1f,$12,$f,$f,$f,$0,$0,$0
	dc.b	$0,$ff,$f,$f,$f,$8c,$8d,$8a,$8b	; Voice 3 (Voice 3 ripped from Mus8F - Game Over.bin)
	even
