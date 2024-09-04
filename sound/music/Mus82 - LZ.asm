; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Wed Jan 22 2020, 20:15:16
; -------------------------------------------------------

MusLZ_Header:
	smpsHeaderVoice	MusLZ_Voices
	smpsHeaderChan	6,0
	smpsHeaderTempo	$2, $2
	smpsHeaderDAC	MusLZ_DAC
	smpsHeaderFM	MusLZ_FM1,	$0, $10
	smpsHeaderFM	MusLZ_FM2,	$0, $10
	smpsHeaderFM	MusLZ_FM3,	$0, $18
	smpsHeaderFM	MusLZ_FM4,	$0, $18
	smpsHeaderFM	MusLZ_FM5,	$0, $18

MusLZ_FM1:
	smpsCall	MusLZ_FM1_p0
	smpsCall	MusLZ_FM1_p1
	smpsCall	MusLZ_FM1_p2
	smpsCall	MusLZ_FM1_p3
	smpsCall	MusLZ_FM1_p4
	smpsCall	MusLZ_FM1_p5
	smpsCall	MusLZ_FM1_p6
	smpsCall	MusLZ_FM1_p7
	smpsCall	MusLZ_FM1_p8
	smpsCall	MusLZ_FM1_p9
	smpsJump	MusLZ_FM1

MusLZ_FM2:
	smpsCall	MusLZ_FM2_p0
	smpsCall	MusLZ_FM2_p1
	smpsCall	MusLZ_FM2_p2
	smpsCall	MusLZ_FM2_p3
	smpsCall	MusLZ_FM2_p4
	smpsCall	MusLZ_FM2_p5
	smpsCall	MusLZ_FM2_p6
	smpsCall	MusLZ_FM2_p7
	smpsCall	MusLZ_FM2_p8
	smpsCall	MusLZ_FM2_p9
	smpsJump	MusLZ_FM2

MusLZ_FM3:
	smpsCall	MusLZ_FM3_p0
	smpsCall	MusLZ_FM3_p1
	smpsCall	MusLZ_FM3_p2
	smpsCall	MusLZ_FM3_p3
	smpsCall	MusLZ_FM3_p4
	smpsCall	MusLZ_FM3_p1
	smpsCall	MusLZ_FM3_p1
	smpsCall	MusLZ_FM3_p7
	smpsCall	MusLZ_FM3_p8
	smpsCall	MusLZ_FM3_p9
	smpsJump	MusLZ_FM3

MusLZ_FM4:
	smpsCall	MusLZ_FM4_p0
	smpsCall	MusLZ_FM4_p1
	smpsCall	MusLZ_FM4_p2
	smpsCall	MusLZ_FM4_p3
	smpsCall	MusLZ_FM4_p4
	smpsCall	MusLZ_FM4_p1
	smpsCall	MusLZ_FM4_p1
	smpsCall	MusLZ_FM4_p1
	smpsCall	MusLZ_FM4_p1
	smpsCall	MusLZ_FM4_p9
	smpsJump	MusLZ_FM4

MusLZ_FM5:
	smpsCall	MusLZ_FM5_p0
	smpsCall	MusLZ_FM5_p1
	smpsCall	MusLZ_FM5_p2
	smpsCall	MusLZ_FM5_p3
	smpsCall	MusLZ_FM5_p4
	smpsCall	MusLZ_FM5_p5
	smpsCall	MusLZ_FM5_p6
	smpsCall	MusLZ_FM5_p7
	smpsCall	MusLZ_FM5_p8
	smpsCall	MusLZ_FM5_p9
	smpsJump	MusLZ_FM5

MusLZ_DAC:
	smpsCall	MusLZ_DAC_p0
	smpsCall	MusLZ_DAC_p1
	smpsCall	MusLZ_DAC_p2
	smpsCall	MusLZ_DAC_p3
	smpsCall	MusLZ_DAC_p4
	smpsCall	MusLZ_DAC_p1
	smpsCall	MusLZ_DAC_p1
	smpsCall	MusLZ_DAC_p7
	smpsCall	MusLZ_DAC_p8
	smpsCall	MusLZ_DAC_p9
	smpsJump	MusLZ_DAC


; Pattern data for FM1
MusLZ_FM1_p0:
	dc.b		$e7,$24
	smpsFMvoice	$0
	dc.b		$b5,$4
	dc.b		$b8
	dc.b		$b5
	dc.b		$b8,$6
	dc.b		$ba
	dc.b		$bc,$8
	dc.b		$bd,$4
	dc.b		$bc
	dc.b		$ba
	dc.b		$b8,$6
	dc.b		$ba,$4
	dc.b		$b8,$2
	dc.b		$b5,$4
	dc.b		$80
	dc.b		$b5
	dc.b		$b8
	dc.b		$b5
	dc.b		$b8,$6
	dc.b		$ba
	dc.b		$bc,$4
	smpsReturn

MusLZ_FM1_p1:
	dc.b		$e7,$4
	dc.b		$bd
	dc.b		$bc
	dc.b		$ba
	dc.b		$b8,$6
	dc.b		$ba,$4
	dc.b		$b8,$2
	dc.b		$b5,$4
	dc.b		$80
	dc.b		$ba
	dc.b		$bd
	dc.b		$ba
	dc.b		$bd,$6
	dc.b		$bf
	dc.b		$c1,$8
	dc.b		$c2,$4
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd,$6
	dc.b		$bf,$4
	dc.b		$bd,$2
	dc.b		$ba,$4
	dc.b		$80
	dc.b		$ba
	dc.b		$bd
	dc.b		$ba
	dc.b		$bd,$6
	dc.b		$bf
	dc.b		$c1,$4
	smpsReturn

MusLZ_FM1_p2:
	dc.b		$e7,$4
	dc.b		$c2
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd,$8
	dc.b		$ba
	dc.b		$bf,$2
	dc.b		$bd,$3
	dc.b		$bf
	dc.b		$bd,$18
	dc.b		$80,$20
	dc.b		$bd,$8
	dc.b		$4
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$bd
	dc.b		$c2,$4
	smpsReturn

MusLZ_FM1_p3:
	dc.b		$e7,$4
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$c1,$a
	dc.b		$bd,$8
	dc.b		$4
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$bd
	dc.b		$c1,$24
	dc.b		$bd,$8
	dc.b		$4
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$bd
	dc.b		$c2,$4
	smpsReturn

MusLZ_FM1_p4:
	dc.b		$e7,$4
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$c1,$a
	dc.b		$c2,$4
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd
	dc.b		$bb
	dc.b		$ba
	dc.b		$b8
	dc.b		$b6
	dc.b		$b5
	dc.b		$bd,$c
	dc.b		$80,$14
	dc.b		$b5,$4
	dc.b		$b8
	dc.b		$b5
	dc.b		$b8,$6
	dc.b		$ba
	dc.b		$bc,$4
	smpsReturn

MusLZ_FM1_p5:
	dc.b		$e7,$4
	dc.b		$bd
	dc.b		$bc
	dc.b		$ba
	dc.b		$b8,$6
	dc.b		$ba,$4
	dc.b		$b8,$2
	dc.b		$b5,$4
	dc.b		$80
	dc.b		$b5
	dc.b		$b8
	dc.b		$b5
	dc.b		$b8,$6
	dc.b		$ba
	dc.b		$bc,$8
	dc.b		$bd,$4
	dc.b		$bc
	dc.b		$ba
	dc.b		$b8,$6
	dc.b		$ba,$4
	dc.b		$b8,$2
	dc.b		$b5,$4
	dc.b		$80
	dc.b		$ba
	dc.b		$bd
	dc.b		$ba
	dc.b		$bd,$6
	dc.b		$bf
	dc.b		$c1,$4
	smpsReturn

MusLZ_FM1_p6:
	dc.b		$e7,$4
	dc.b		$c2
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd,$6
	dc.b		$bf,$4
	dc.b		$bd,$2
	dc.b		$ba,$4
	dc.b		$80
	dc.b		$ba
	dc.b		$bd
	dc.b		$ba
	dc.b		$bd,$6
	dc.b		$bf
	dc.b		$c1,$8
	dc.b		$c2,$4
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd,$8
	dc.b		$ba
	dc.b		$bf,$2
	dc.b		$bd,$3
	dc.b		$bf
	dc.b		$bd,$18
	smpsReturn

MusLZ_FM1_p7:
	dc.b		$80,$20
	dc.b		$bd,$8
	dc.b		$4
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$bd
	dc.b		$c2,$8
	dc.b		$c1,$4
	dc.b		$bf
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$c1,$a
	dc.b		$bd,$8
	dc.b		$4
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$bd
	dc.b		$c1,$4
	smpsReturn

MusLZ_FM1_p8:
	dc.b		$e7,$20
	dc.b		$bd,$8
	dc.b		$4
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$bd
	dc.b		$c2,$8
	dc.b		$c1,$4
	dc.b		$bf
	dc.b		$bd
	dc.b		$bf,$6
	dc.b		$c1,$a
	dc.b		$c2,$4
	dc.b		$c1
	dc.b		$bf
	dc.b		$bd
	dc.b		$bb
	dc.b		$ba
	dc.b		$b8
	dc.b		$b6
	smpsReturn

MusLZ_FM1_p9:
	dc.b		$b5,$4
	dc.b		$bd,$c
	dc.b		$80,$11
	smpsReturn

; Pattern data for FM2
MusLZ_FM2_p0:
	dc.b		$e7,$c
	smpsFMvoice	$1
	dc.b		$9b,$8
	dc.b		$a0,$2
	dc.b		$80
	dc.b		$a0
	dc.b		$80,$6
	dc.b		$99,$a
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$a4,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	dc.b		$99,$a
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	smpsReturn

MusLZ_FM2_p1:
	dc.b		$a4,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	dc.b		$9e,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a7,$6
	dc.b		$80,$2
	dc.b		$a9,$a
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$9e,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a7,$6
	dc.b		$80,$2
	smpsReturn

MusLZ_FM2_p2:
	dc.b		$a9,$a
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$99,$a
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	dc.b		$a5
	dc.b		$80
	dc.b		$a5,$4
	dc.b		$a0
	dc.b		$a5
	dc.b		$9f,$10
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$9d
	dc.b		$80,$8
	dc.b		$9d,$4
	smpsReturn

MusLZ_FM2_p3:
	dc.b		$9b,$4
	dc.b		$80,$8
	dc.b		$9b,$4
	dc.b		$99
	dc.b		$9b
	dc.b		$9d,$8
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$9d
	dc.b		$80,$8
	dc.b		$9d,$4
	dc.b		$a2
	dc.b		$80,$8
	dc.b		$a2,$4
	dc.b		$10
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$9d
	dc.b		$80,$8
	dc.b		$9d,$4
	smpsReturn

MusLZ_FM2_p4:
	dc.b		$9b,$4
	dc.b		$80,$8
	dc.b		$9b,$4
	dc.b		$99
	dc.b		$9b
	dc.b		$9d,$8
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$a3
	dc.b		$80,$8
	dc.b		$a3,$4
	dc.b		$a5
	dc.b		$80,$8
	dc.b		$a5,$4
	dc.b		$a0,$8
	dc.b		$a0
	dc.b		$99,$a
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	smpsReturn

MusLZ_FM2_p5:
	dc.b		$a4,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	dc.b		$99,$a
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$a4,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	dc.b		$9e,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a7,$6
	dc.b		$80,$2
	smpsReturn

MusLZ_FM2_p6:
	dc.b		$a9,$a
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$9e,$a
	dc.b		$80,$2
	dc.b		$a2
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a7,$6
	dc.b		$80,$2
	dc.b		$a9,$a
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$a5,$6
	dc.b		$80,$2
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$99,$a
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80
	dc.b		$a0,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	smpsReturn

MusLZ_FM2_p7:
	dc.b		$a5,$2
	dc.b		$80
	dc.b		$a5,$4
	dc.b		$a0
	dc.b		$a5
	dc.b		$9f,$10
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$9d
	dc.b		$80,$8
	dc.b		$9d,$4
	dc.b		$9b
	dc.b		$80,$8
	dc.b		$9b,$4
	dc.b		$99
	dc.b		$9b
	dc.b		$9d,$8
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$9d
	dc.b		$80,$8
	dc.b		$9d,$4
	smpsReturn

MusLZ_FM2_p8:
	dc.b		$a2,$4
	dc.b		$80,$8
	dc.b		$a2,$4
	dc.b		$10
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$9d
	dc.b		$80,$8
	dc.b		$9d,$4
	dc.b		$9b
	dc.b		$80,$8
	dc.b		$9b,$4
	dc.b		$99
	dc.b		$9b
	dc.b		$9d,$8
	dc.b		$9e,$4
	dc.b		$80,$8
	dc.b		$9e,$4
	dc.b		$a3
	dc.b		$80,$8
	dc.b		$a3,$4
	smpsReturn

MusLZ_FM2_p9:
	dc.b		$a5,$4
	dc.b		$80,$8
	dc.b		$a5,$4
	dc.b		$a0,$8
	dc.b		$a0
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM3
MusLZ_FM3_p0:
	smpsFMvoice	$4
	dc.b		$c6,$4
	dc.b		$c2
	dc.b		$bf
	dc.b		$c4,$8
	dc.b		$2
	dc.b		$80
	dc.b		$c4
	dc.b		$80,$66
	smpsReturn

MusLZ_FM3_p1:
	dc.b		$e7,$7F,smpsNoAttack,$1
	smpsReturn

MusLZ_FM3_p2:
	dc.b		$e7,$60
	smpsFMvoice	$4
	dc.b		$c1,$20
	smpsReturn

MusLZ_FM3_p3:
	dc.b		$e7,$10
	dc.b		$c2,$8
	dc.b		$c4
	dc.b		$bd,$20
	dc.b		$be
	dc.b		$c1
	smpsReturn

MusLZ_FM3_p4:
	dc.b		$e7,$10
	dc.b		$c2,$8
	dc.b		$c4
	dc.b		$bd,$10
	dc.b		$bf
	dc.b		$c1
	dc.b		$c4
	dc.b		$80,$20
	smpsReturn

MusLZ_FM3_p7:
	dc.b		$e7,$20
	smpsFMvoice	$4
	dc.b		$c1,$30
	dc.b		$c2,$8
	dc.b		$c4
	dc.b		$bd,$20
	smpsReturn

MusLZ_FM3_p8:
	dc.b		$be,$20
	dc.b		$c1,$30
	dc.b		$c2,$8
	dc.b		$c4
	dc.b		$bd,$10
	dc.b		$bf
	smpsReturn

MusLZ_FM3_p9:
	dc.b		$c1,$10
	dc.b		$c4
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM4
MusLZ_FM4_p0:
	smpsFMvoice	$4
	dc.b		$c6,$4
	dc.b		$c2
	dc.b		$bf
	dc.b		$c4,$8
	dc.b		$2
	dc.b		$80
	dc.b		$c4
	dc.b		$80,$66
	smpsReturn

MusLZ_FM4_p1:
	dc.b		$e7,$7F,smpsNoAttack,$1
	smpsReturn

MusLZ_FM4_p2:
	dc.b		$e7,$60
	smpsFMvoice	$4
	dc.b		$c1,$20
	smpsReturn

MusLZ_FM4_p3:
	dc.b		$e7,$10
	dc.b		$c2,$8
	dc.b		$c4
	dc.b		$bd,$20
	dc.b		$be
	dc.b		$c1
	smpsReturn

MusLZ_FM4_p4:
	dc.b		$e7,$10
	dc.b		$c2,$8
	dc.b		$c4
	dc.b		$bd,$10
	dc.b		$bf
	dc.b		$c1
	dc.b		$c4
	dc.b		$80,$20
	smpsReturn

MusLZ_FM4_p9:
	dc.b		$e7,$21
	smpsReturn

; Pattern data for FM5
MusLZ_FM5_p0:
	smpsFMvoice	$1
	dc.b		$bd,$4
	dc.b		$ba
	dc.b		$b6
	dc.b		$bd,$6
	dc.b		$80,$2
	dc.b		$bd
	dc.b		$80
	dc.b		$bd
	dc.b		$80,$3a
	smpsFMvoice	$2
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$80
	dc.b		$ba
	dc.b		$80,$22
	smpsReturn

MusLZ_FM5_p1:
	dc.b		$e7,$14
	dc.b		$c1,$2
	dc.b		$bd
	dc.b		$ba
	dc.b		$80
	dc.b		$bd
	dc.b		$80,$36
	dc.b		$bd,$2
	dc.b		$bf
	dc.b		$c2
	dc.b		$80
	dc.b		$bf
	dc.b		$80,$22
	smpsReturn

MusLZ_FM5_p2:
	dc.b		$e7,$14
	dc.b		$c6,$2
	dc.b		$c2
	dc.b		$bd
	dc.b		$80
	dc.b		$c2
	dc.b		$80,$26
	dc.b		$b8,$4
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bb,$2
	dc.b		$80
	dc.b		$bb
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	smpsReturn

MusLZ_FM5_p3:
	dc.b		$bd,$c
	dc.b		$4
	dc.b		$bc
	dc.b		$bd
	dc.b		$bf,$8
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bc
	dc.b		$80
	dc.b		$be
	dc.b		$be
	dc.b		$c1
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	smpsReturn

MusLZ_FM5_p4:
	dc.b		$bd,$c
	dc.b		$4
	dc.b		$bc
	dc.b		$bd
	dc.b		$bf,$8
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd
	dc.b		$ba
	dc.b		$b8
	dc.b		$bd
	dc.b		$bd
	dc.b		$ba
	dc.b		$b8
	dc.b		$bd
	dc.b		$bd
	dc.b		$ba
	dc.b		$b8
	dc.b		$80,$20
	smpsReturn

MusLZ_FM5_p5:
	dc.b		$e7,$14
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$80
	dc.b		$ba
	dc.b		$80,$36
	dc.b		$c1,$2
	dc.b		$bd
	dc.b		$ba
	dc.b		$80
	dc.b		$bd
	dc.b		$80,$22
	smpsReturn

MusLZ_FM5_p6:
	dc.b		$e7,$14
	dc.b		$bd,$2
	dc.b		$bf
	dc.b		$c2
	dc.b		$80
	dc.b		$bf
	dc.b		$80,$36
	dc.b		$c6,$2
	dc.b		$c2
	dc.b		$bd
	dc.b		$80
	dc.b		$c2
	dc.b		$80,$22
	smpsReturn

MusLZ_FM5_p7:
	dc.b		$e7,$4
	dc.b		$b8
	dc.b		$80
	dc.b		$ba
	dc.b		$80
	dc.b		$bb,$2
	dc.b		$80
	dc.b		$bb
	dc.b		$80
	dc.b		$be
	dc.b		$80
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	dc.b		$bd,$c
	dc.b		$4
	dc.b		$bc
	dc.b		$bd
	dc.b		$bf,$8
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	smpsReturn

MusLZ_FM5_p8:
	dc.b		$80,$4
	dc.b		$ba
	dc.b		$80
	dc.b		$bc
	dc.b		$80
	dc.b		$be
	dc.b		$be
	dc.b		$c1
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	dc.b		$bd,$c
	dc.b		$4
	dc.b		$bc
	dc.b		$bd
	dc.b		$bf,$8
	dc.b		$c1,$c
	dc.b		$4
	dc.b		$bf,$c
	dc.b		$4
	smpsReturn

MusLZ_FM5_p9:
	dc.b		$80,$4
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd
	dc.b		$ba
	dc.b		$b8
	dc.b		$bd
	dc.b		$bd
	dc.b		$ba
	dc.b		$b8
	dc.b		$bd
	dc.b		$bd
	dc.b		$ba
	dc.b		$b8
	dc.b		$80,$1
	smpsReturn

; Pattern data for DAC
MusLZ_DAC_p0:
	dc.b		$82,$4
	dc.b		$82
	dc.b		$82
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$8
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p1:
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p2:
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p3:
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81
	dc.b		$82
	dc.b		$82,$8
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p4:
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$81,$c
	dc.b		$4
	dc.b		$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p7:
	dc.b		$81,$c
	dc.b		$4
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p8:
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81
	dc.b		$82
	dc.b		$82,$8
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	dc.b		$81
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81,$8
	dc.b		$82
	smpsReturn

MusLZ_DAC_p9:
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$80,$1
	smpsReturn

MusLZ_Voices:
	dc.b	$31,$34,$35,$30,$31,$df,$df,$9f,$9f,$c,$7,$c,$9,$7,$7,$7
	dc.b	$8,$2f,$1f,$1f,$2f,$17,$32,$14,$80	; Voice 0 (Voice 0 ripped from Mus82 - LZ - Copy.bin)
	dc.b	$18,$37,$30,$30,$31,$9e,$dc,$1c,$9c,$d,$6,$4,$1,$8,$a,$3
	dc.b	$5,$bf,$bf,$3f,$2f,$2c,$22,$14,$80	; Voice 1 (Voice 1 ripped from Mus82 - LZ - Copy.bin)
	dc.b	$3a,$1,$7,$1,$1,$8e,$8e,$8d,$53,$e,$e,$e,$3,$0,$0,$0
	dc.b	$0,$1f,$ff,$1f,$f,$18,$28,$27,$80	; Voice 2 (Voice 2 ripped from Mus82 - LZ - Copy.bin)
	dc.b	$3d,$1,$2,$2,$2,$14,$e,$8c,$e,$8,$5,$2,$5,$0,$0,$0
	dc.b	$0,$1f,$1f,$1f,$1f,$1a,$92,$a7,$80	; Voice 3 (Voice 3 ripped from Mus82 - LZ - Copy.bin)
	dc.b	$3c,$31,$52,$50,$30,$52,$53,$52,$53,$8,$0,$8,$0,$4,$0,$4
	dc.b	$0,$1f,$f,$1f,$f,$1a,$80,$16,$80	; Voice 4 (Voice 4 ripped from Mus82 - LZ - Copy.bin)
	even
