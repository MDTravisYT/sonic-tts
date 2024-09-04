; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Fri Jan 24 2020, 23:50:43
; -------------------------------------------------------

MusSLZ_Header:
	smpsHeaderVoice	MusSLZ_Voices
	smpsHeaderChan	6,0
	smpsHeaderTempo	$2, $2
	smpsHeaderDAC	MusSLZ_DAC
	smpsHeaderFM	MusSLZ_FM1,	$0, $10
	smpsHeaderFM	MusSLZ_FM2,	$0, $10
	smpsHeaderFM	MusSLZ_FM3,	$0, $10
	smpsHeaderFM	MusSLZ_FM4,	$0, $10
	smpsHeaderFM	MusSLZ_FM5,	$0, $18

MusSLZ_FM1:
	smpsCall	MusSLZ_FM1_p0
	smpsCall	MusSLZ_FM1_p1
	smpsCall	MusSLZ_FM1_p0
	smpsCall	MusSLZ_FM1_p3
	smpsCall	MusSLZ_FM1_p4
	smpsCall	MusSLZ_FM1_p5
	smpsCall	MusSLZ_FM1_p6
	smpsCall	MusSLZ_FM1_p7
	smpsCall	MusSLZ_FM1_p6
	smpsCall	MusSLZ_FM1_p9
	smpsCall	MusSLZ_FM1_p4
	smpsCall	MusSLZ_FM1_pb
	smpsJump	MusSLZ_FM1

MusSLZ_FM2:
	smpsCall	MusSLZ_FM2_p0
	smpsCall	MusSLZ_FM2_p1
	smpsCall	MusSLZ_FM2_p2
	smpsCall	MusSLZ_FM2_p3
	smpsCall	MusSLZ_FM2_p4
	smpsCall	MusSLZ_FM2_p5
	smpsCall	MusSLZ_FM2_p6
	smpsCall	MusSLZ_FM2_p7
	smpsCall	MusSLZ_FM2_p6
	smpsCall	MusSLZ_FM2_p9
	smpsCall	MusSLZ_FM2_pa
	smpsCall	MusSLZ_FM2_pb
	smpsJump	MusSLZ_FM2

MusSLZ_FM3:
	smpsCall	MusSLZ_FM3_p0
	smpsCall	MusSLZ_FM3_p1
	smpsCall	MusSLZ_FM3_p2
	smpsCall	MusSLZ_FM3_p3
	smpsCall	MusSLZ_FM3_p4
	smpsCall	MusSLZ_FM3_p5
	smpsCall	MusSLZ_FM3_p6
	smpsCall	MusSLZ_FM3_p7
	smpsCall	MusSLZ_FM3_p6
	smpsCall	MusSLZ_FM3_p9
	smpsCall	MusSLZ_FM3_pa
	smpsCall	MusSLZ_FM3_pb
	smpsJump	MusSLZ_FM3

MusSLZ_FM4:
	smpsCall	MusSLZ_FM4_p0
	smpsCall	MusSLZ_FM4_p1
	smpsCall	MusSLZ_FM4_p2
	smpsCall	MusSLZ_FM4_p3
	smpsCall	MusSLZ_FM4_p4
	smpsCall	MusSLZ_FM4_p5
	smpsCall	MusSLZ_FM4_p6
	smpsCall	MusSLZ_FM4_p7
	smpsCall	MusSLZ_FM4_p6
	smpsCall	MusSLZ_FM4_p9
	smpsCall	MusSLZ_FM4_pa
	smpsCall	MusSLZ_FM4_pb
	smpsJump	MusSLZ_FM4

MusSLZ_FM5:
	smpsCall	MusSLZ_FM5_p0
	smpsCall	MusSLZ_FM5_p1
	smpsCall	MusSLZ_FM5_p0
	smpsCall	MusSLZ_FM5_p3
	smpsCall	MusSLZ_FM5_p4
	smpsCall	MusSLZ_FM5_p5
	smpsCall	MusSLZ_FM5_p6
	smpsCall	MusSLZ_FM5_p7
	smpsCall	MusSLZ_FM5_p6
	smpsCall	MusSLZ_FM5_p9
	smpsCall	MusSLZ_FM5_pa
	smpsCall	MusSLZ_FM5_pb
	smpsJump	MusSLZ_FM5

MusSLZ_DAC:
	smpsCall	MusSLZ_DAC_p0
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_p1
	smpsCall	MusSLZ_DAC_pb
	smpsJump	MusSLZ_DAC


; Pattern data for FM1
MusSLZ_FM1_p0:
	dc.b		$e7,$8
	smpsFMvoice	$2
	dc.b		$ac
	dc.b		$ae
	dc.b		$b8
	dc.b		$b5,$1c
	dc.b		$2
	dc.b		$b6
	dc.b		$b8,$6
	dc.b		$ba
	dc.b		$bb,$4
	dc.b		$ba,$8
	dc.b		$b8
	dc.b		$b6,$14
	dc.b		$4
	dc.b		$b5
	dc.b		$b6
	smpsReturn

MusSLZ_FM1_p1:
	dc.b		$e7,$10
	dc.b		$b3,$8
	dc.b		$b5
	dc.b		$b6,$1c
	dc.b		$b3,$2
	dc.b		$b5
	dc.b		$b6,$6
	dc.b		$b8
	dc.b		$b9,$4
	dc.b		$b8,$8
	dc.b		$b6
	dc.b		$b5,$14
	dc.b		$b6,$4
	dc.b		$b5
	dc.b		$b3
	smpsReturn

MusSLZ_FM1_p3:
	dc.b		$e7,$10
	dc.b		$b3,$8
	dc.b		$b5
	dc.b		$b6,$1c
	dc.b		$b3,$2
	dc.b		$b5
	dc.b		$b6,$6
	dc.b		$b8
	dc.b		$b9,$4
	dc.b		$b8,$8
	dc.b		$b6
	dc.b		$b5,$14
	dc.b		$c1,$4
	dc.b		$bd,$8
	smpsReturn

MusSLZ_FM1_p4:
	dc.b		$e7,$20
	dc.b		$80,$14
	dc.b		$c1,$4
	dc.b		$bd,$28
	dc.b		$80,$14
	dc.b		$c1,$4
	dc.b		$bd,$8
	smpsReturn

MusSLZ_FM1_p5:
	dc.b		$e7,$20
	dc.b		$80,$14
	dc.b		$c1,$4
	dc.b		$bd,$10
	dc.b		$ac,$8
	dc.b		$ae
	dc.b		$b8
	dc.b		$b5,$1c
	dc.b		$2
	dc.b		$b6
	smpsReturn

MusSLZ_FM1_p6:
	dc.b		$b8,$6
	dc.b		$ba
	dc.b		$bb,$4
	dc.b		$ba,$8
	dc.b		$b8
	dc.b		$b6,$14
	dc.b		$4
	dc.b		$b5
	dc.b		$b6,$14
	dc.b		$b3,$8
	dc.b		$b5
	dc.b		$b6,$1c
	dc.b		$b3,$2
	dc.b		$b5
	smpsReturn

MusSLZ_FM1_p7:
	dc.b		$b6,$6
	dc.b		$b8
	dc.b		$b9,$4
	dc.b		$b8,$8
	dc.b		$b6
	dc.b		$b5,$14
	dc.b		$b6,$4
	dc.b		$b5
	dc.b		$b3,$c
	dc.b		$ac,$8
	dc.b		$ae
	dc.b		$b8
	dc.b		$b5,$1c
	dc.b		$2
	dc.b		$b6
	smpsReturn

MusSLZ_FM1_p9:
	dc.b		$b6,$6
	dc.b		$b8
	dc.b		$b9,$4
	dc.b		$b8,$8
	dc.b		$b6
	dc.b		$b5,$14
	dc.b		$c1,$4
	dc.b		$bd,$28
	dc.b		$80,$14
	dc.b		$c1,$4
	dc.b		$bd,$8
	smpsReturn

MusSLZ_FM1_pb:
	dc.b		$e7,$8
	dc.b		$ac
	dc.b		$ae
	dc.b		$b8
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM2
MusSLZ_FM2_p0:
	dc.b		$e7,$20
	smpsFMvoice	$3
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$99,$2
	dc.b		$99
	dc.b		$97,$4
	dc.b		$80,$2
	dc.b		$97
	dc.b		$80,$4
	dc.b		$96,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$96
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$9b
	dc.b		$9a,$4
	dc.b		$80,$2
	dc.b		$9a,$4
	dc.b		$80,$2
	dc.b		$9a
	dc.b		$9a
	smpsReturn

MusSLZ_FM2_p1:
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$99
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$98
	dc.b		$94,$4
	dc.b		$80,$2
	dc.b		$94
	dc.b		$80,$4
	dc.b		$94,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$94
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$80,$4
	dc.b		$98,$c
	dc.b		$80,$4
	dc.b		$98,$2
	dc.b		$98
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$99,$2
	dc.b		$99
	smpsReturn

MusSLZ_FM2_p2:
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$80,$4
	dc.b		$94,$c
	dc.b		$9b,$4
	dc.b		$94
	dc.b		$99
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$99,$2
	dc.b		$99
	dc.b		$97,$4
	dc.b		$80,$2
	dc.b		$97
	dc.b		$80,$4
	dc.b		$96,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$96
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$9b
	dc.b		$9a,$4
	dc.b		$80,$2
	dc.b		$9a,$4
	dc.b		$80,$2
	dc.b		$9a
	dc.b		$9a
	smpsReturn

MusSLZ_FM2_p3:
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$99
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$98
	dc.b		$94,$4
	dc.b		$80,$2
	dc.b		$94
	dc.b		$80,$4
	dc.b		$94,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$94
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$80,$4
	dc.b		$98,$c
	dc.b		$80,$4
	dc.b		$9b,$2
	dc.b		$98
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$99
	smpsReturn

MusSLZ_FM2_p4:
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$80,$4
	dc.b		$9b,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$9b
	dc.b		$9d,$4
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80,$4
	dc.b		$9d,$c
	dc.b		$80,$4
	dc.b		$98,$2
	dc.b		$9d
	dc.b		$9e,$4
	dc.b		$80,$2
	dc.b		$9e
	dc.b		$80,$4
	dc.b		$9e,$c
	dc.b		$80,$4
	dc.b		$a0,$2
	dc.b		$9e
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$99
	smpsReturn

MusSLZ_FM2_p5:
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$80,$4
	dc.b		$9b,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$9b
	dc.b		$9d,$4
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80,$4
	dc.b		$9d,$c
	dc.b		$80,$4
	dc.b		$9d,$2
	dc.b		$9e
	dc.b		$a0,$4
	dc.b		$80
	dc.b		$94,$18
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$99,$2
	dc.b		$99
	smpsReturn

MusSLZ_FM2_p6:
	dc.b		$97,$4
	dc.b		$80,$2
	dc.b		$97
	dc.b		$80,$4
	dc.b		$96,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$96
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$9b
	dc.b		$9a,$4
	dc.b		$80,$2
	dc.b		$9a,$4
	dc.b		$80,$2
	dc.b		$9a
	dc.b		$9a
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$99
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$98
	dc.b		$94,$4
	dc.b		$80,$2
	dc.b		$94
	dc.b		$80,$4
	dc.b		$94,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$94
	smpsReturn

MusSLZ_FM2_p7:
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$80,$4
	dc.b		$98,$c
	dc.b		$80,$4
	dc.b		$98,$2
	dc.b		$98
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$99,$2
	dc.b		$99
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$80,$4
	dc.b		$94,$c
	dc.b		$9b,$4
	dc.b		$94
	dc.b		$99
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$99,$2
	dc.b		$99
	smpsReturn

MusSLZ_FM2_p9:
	dc.b		$98,$4
	dc.b		$80,$2
	dc.b		$98
	dc.b		$80,$4
	dc.b		$98,$c
	dc.b		$80,$4
	dc.b		$9b,$2
	dc.b		$98
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$99
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$80,$4
	dc.b		$9b,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$9b
	dc.b		$9d,$4
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80,$4
	dc.b		$9d,$c
	dc.b		$80,$4
	dc.b		$98,$2
	dc.b		$9d
	smpsReturn

MusSLZ_FM2_pa:
	dc.b		$9e,$4
	dc.b		$80,$2
	dc.b		$9e
	dc.b		$80,$4
	dc.b		$9e,$c
	dc.b		$80,$4
	dc.b		$a0,$2
	dc.b		$9e
	dc.b		$99,$4
	dc.b		$80,$2
	dc.b		$99
	dc.b		$80,$4
	dc.b		$99,$c
	dc.b		$80,$4
	dc.b		$94,$2
	dc.b		$99
	dc.b		$9b,$4
	dc.b		$80,$2
	dc.b		$9b
	dc.b		$80,$4
	dc.b		$9b,$c
	dc.b		$80,$4
	dc.b		$96,$2
	dc.b		$9b
	dc.b		$9d,$4
	dc.b		$80,$2
	dc.b		$9d
	dc.b		$80,$4
	dc.b		$9d,$c
	dc.b		$80,$4
	dc.b		$9d,$2
	dc.b		$9e
	smpsReturn

MusSLZ_FM2_pb:
	dc.b		$a0,$4
	dc.b		$80
	dc.b		$94,$18
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM3
MusSLZ_FM3_p0:
	dc.b		$e7,$20
	smpsFMvoice	$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ac,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	dc.b		$ae
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80
	dc.b		$ae,$4
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80
	smpsReturn

MusSLZ_FM3_p1:
	dc.b		$ae,$4
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$ad
	dc.b		$80,$2
	dc.b		$ad
	dc.b		$80,$4
	dc.b		$ad,$10
	dc.b		$80,$4
	dc.b		$ac
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ac,$c
	dc.b		$80,$4
	dc.b		$b0
	smpsReturn

MusSLZ_FM3_p2:
	dc.b		$e7,$2
	dc.b		$80
	dc.b		$b0
	dc.b		$80
	dc.b		$ae,$6
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80
	dc.b		$aa,$8
	dc.b		$80,$4
	dc.b		$ac
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ac,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	dc.b		$ae
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80
	dc.b		$ae,$4
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80
	smpsReturn

MusSLZ_FM3_p3:
	dc.b		$ae,$4
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$ad
	dc.b		$80,$2
	dc.b		$ad
	dc.b		$80,$4
	dc.b		$ad,$10
	dc.b		$80,$8
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	smpsReturn

MusSLZ_FM3_p4:
	dc.b		$80,$4
	dc.b		$b1,$6
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1,$2
	dc.b		$b1
	dc.b		$80,$4
	dc.b		$b3,$6
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3,$2
	dc.b		$b3
	dc.b		$80,$4
	dc.b		$b5,$6
	dc.b		$b5
	dc.b		$b5
	dc.b		$b3
	dc.b		$b1,$4
	dc.b		$80
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	smpsReturn

MusSLZ_FM3_p5:
	dc.b		$80,$4
	dc.b		$b1,$6
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1,$2
	dc.b		$b1
	dc.b		$80,$4
	dc.b		$b3,$6
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3,$2
	dc.b		$b3
	dc.b		$80,$8
	dc.b		$ae,$18
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ac,$10
	dc.b		$80,$4
	smpsReturn

MusSLZ_FM3_p6:
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	dc.b		$ae
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80
	dc.b		$ae,$4
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80
	dc.b		$ae,$4
	dc.b		$80,$2
	dc.b		$ac,$4
	dc.b		$80,$2
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$4
	smpsReturn

MusSLZ_FM3_p7:
	dc.b		$ad,$4
	dc.b		$80,$2
	dc.b		$ad
	dc.b		$80,$4
	dc.b		$ad,$10
	dc.b		$80,$4
	dc.b		$ac
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ac,$c
	dc.b		$80,$4
	dc.b		$b0,$6
	dc.b		$80,$2
	dc.b		$b0
	dc.b		$80
	dc.b		$ae,$6
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80
	dc.b		$aa,$8
	dc.b		$80,$4
	dc.b		$ac
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ac,$10
	dc.b		$80,$4
	smpsReturn

MusSLZ_FM3_p9:
	dc.b		$ad,$4
	dc.b		$80,$2
	dc.b		$ad
	dc.b		$80,$4
	dc.b		$ad,$10
	dc.b		$80,$8
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	dc.b		$80,$4
	dc.b		$b1,$6
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1,$2
	dc.b		$b1
	dc.b		$80,$4
	dc.b		$b3,$6
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3,$2
	dc.b		$b3
	smpsReturn

MusSLZ_FM3_pa:
	dc.b		$80,$4
	dc.b		$b5,$6
	dc.b		$b5
	dc.b		$b5
	dc.b		$b3
	dc.b		$b1,$4
	dc.b		$80
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	dc.b		$80,$4
	dc.b		$b1,$6
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1
	dc.b		$b1,$2
	dc.b		$b1
	dc.b		$80,$4
	dc.b		$b3,$6
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3,$2
	dc.b		$b3
	smpsReturn

MusSLZ_FM3_pb:
	dc.b		$80,$8
	dc.b		$ae,$18
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM4
MusSLZ_FM4_p0:
	dc.b		$e7,$20
	smpsFMvoice	$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	dc.b		$a7
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80,$4
	dc.b		$a6,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	smpsReturn

MusSLZ_FM4_p1:
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7,$10
	dc.b		$80,$4
	dc.b		$a7
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80,$4
	dc.b		$a7,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$a9
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80,$4
	dc.b		$a9,$c
	dc.b		$80,$4
	dc.b		$ac
	smpsReturn

MusSLZ_FM4_p2:
	dc.b		$e7,$2
	dc.b		$80
	dc.b		$ac
	dc.b		$80
	dc.b		$aa,$6
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80
	dc.b		$a7,$8
	dc.b		$80,$4
	dc.b		$a9
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	dc.b		$a7
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80,$4
	dc.b		$a6,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	smpsReturn

MusSLZ_FM4_p3:
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7,$10
	dc.b		$80,$4
	dc.b		$a7
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80,$4
	dc.b		$a7,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$8
	dc.b		$ac,$6
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac,$2
	dc.b		$ac
	smpsReturn

MusSLZ_FM4_p4:
	dc.b		$80,$4
	dc.b		$ae,$6
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae,$2
	dc.b		$ae
	dc.b		$80,$4
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	dc.b		$80,$4
	dc.b		$b1,$6
	dc.b		$b1
	dc.b		$b1
	dc.b		$b0
	dc.b		$ae,$4
	dc.b		$80
	dc.b		$ac,$6
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac,$2
	dc.b		$ac
	smpsReturn

MusSLZ_FM4_p5:
	dc.b		$80,$4
	dc.b		$ae,$6
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae,$2
	dc.b		$ae
	dc.b		$80,$4
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	dc.b		$80,$8
	dc.b		$aa,$18
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	smpsReturn

MusSLZ_FM4_p6:
	dc.b		$a7,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80,$4
	dc.b		$a6,$10
	dc.b		$80,$4
	dc.b		$aa
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$a9,$4
	dc.b		$80,$2
	dc.b		$a7,$10
	dc.b		$80,$4
	dc.b		$a7
	dc.b		$80,$2
	dc.b		$a7
	dc.b		$80,$4
	dc.b		$a7,$10
	dc.b		$80,$4
	smpsReturn

MusSLZ_FM4_p7:
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$4
	dc.b		$a9
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80,$4
	dc.b		$a9,$c
	dc.b		$80,$4
	dc.b		$ac,$6
	dc.b		$80,$2
	dc.b		$ac
	dc.b		$80
	dc.b		$aa,$6
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80
	dc.b		$a7,$8
	dc.b		$80,$4
	dc.b		$a9
	dc.b		$80,$2
	dc.b		$a9
	dc.b		$80,$4
	dc.b		$a9,$10
	dc.b		$80,$4
	smpsReturn

MusSLZ_FM4_p9:
	dc.b		$aa,$4
	dc.b		$80,$2
	dc.b		$aa
	dc.b		$80,$4
	dc.b		$aa,$10
	dc.b		$80,$8
	dc.b		$ac,$6
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ae,$6
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae,$2
	dc.b		$ae
	dc.b		$80,$4
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	smpsReturn

MusSLZ_FM4_pa:
	dc.b		$80,$4
	dc.b		$b1,$6
	dc.b		$b1
	dc.b		$b1
	dc.b		$b0
	dc.b		$ae,$4
	dc.b		$80
	dc.b		$ac,$6
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac
	dc.b		$ac,$2
	dc.b		$ac
	dc.b		$80,$4
	dc.b		$ae,$6
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae
	dc.b		$ae,$2
	dc.b		$ae
	dc.b		$80,$4
	dc.b		$b0,$6
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$b0
	smpsReturn

MusSLZ_FM4_pb:
	dc.b		$80,$8
	dc.b		$aa,$18
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM5
MusSLZ_FM5_p0:
	dc.b		$e7,$8
	smpsFMvoice	$4
	dc.b		$b8
	dc.b		$ba
	dc.b		$c4
	dc.b		$c1,$1c
	dc.b		$2
	dc.b		$c2
	dc.b		$c4,$6
	dc.b		$c6
	dc.b		$c7,$4
	dc.b		$c6,$8
	dc.b		$c4
	dc.b		$c2,$14
	dc.b		$4
	dc.b		$c1
	dc.b		$c2
	smpsReturn

MusSLZ_FM5_p1:
	dc.b		$e7,$10
	dc.b		$bf,$8
	dc.b		$c1
	dc.b		$c2,$1c
	dc.b		$bf,$2
	dc.b		$c1
	dc.b		$c2,$6
	dc.b		$c4
	dc.b		$c5,$4
	dc.b		$c4,$8
	dc.b		$c2
	dc.b		$c1,$14
	dc.b		$c2,$4
	dc.b		$c1
	dc.b		$bf
	smpsReturn

MusSLZ_FM5_p3:
	dc.b		$e7,$10
	dc.b		$bf,$8
	dc.b		$c1
	dc.b		$c2,$1c
	dc.b		$bf,$2
	dc.b		$c1
	dc.b		$c2,$6
	dc.b		$c4
	dc.b		$c5,$4
	dc.b		$c4,$8
	dc.b		$c2
	dc.b		$c1,$4
	smpsFMvoice	$2
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	smpsReturn

MusSLZ_FM5_p4:
	dc.b		$80,$4
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$80
	dc.b		$bd
	dc.b		$80
	dc.b		$ba
	dc.b		$bd
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$80,$4
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$c2
	dc.b		$c1
	dc.b		$c2
	dc.b		$c4
	dc.b		$80
	dc.b		$bd
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	smpsReturn

MusSLZ_FM5_p5:
	dc.b		$80,$4
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$80
	dc.b		$bd
	dc.b		$80
	dc.b		$ba,$2
	dc.b		$ba
	dc.b		$bd,$4
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$c2
	dc.b		$c4
	dc.b		$80,$6
	dc.b		$c9,$18
	smpsFMvoice	$4
	dc.b		$c1,$1c
	dc.b		$2
	dc.b		$c2
	smpsReturn

MusSLZ_FM5_p6:
	dc.b		$c4,$6
	dc.b		$c6
	dc.b		$c7,$4
	dc.b		$c6,$8
	dc.b		$c4
	dc.b		$c2,$14
	dc.b		$4
	dc.b		$c1
	dc.b		$c2,$14
	dc.b		$bf,$8
	dc.b		$c1
	dc.b		$c2,$1c
	dc.b		$bf,$2
	dc.b		$c1
	smpsReturn

MusSLZ_FM5_p7:
	dc.b		$c2,$6
	dc.b		$c4
	dc.b		$c5,$4
	dc.b		$c4,$8
	dc.b		$c2
	dc.b		$c1,$14
	dc.b		$c2,$4
	dc.b		$c1
	dc.b		$bf,$c
	dc.b		$b8,$8
	dc.b		$ba
	dc.b		$c4
	dc.b		$c1,$1c
	dc.b		$2
	dc.b		$c2
	smpsReturn

MusSLZ_FM5_p9:
	dc.b		$c2,$6
	dc.b		$c4
	dc.b		$c5,$4
	dc.b		$c4,$8
	dc.b		$c2
	dc.b		$c1,$4
	smpsFMvoice	$2
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$80,$4
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$80
	dc.b		$bd
	dc.b		$80
	dc.b		$ba
	dc.b		$bd
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	smpsReturn

MusSLZ_FM5_pa:
	dc.b		$80,$4
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$c2
	dc.b		$c1
	dc.b		$c2
	dc.b		$c4
	dc.b		$80
	dc.b		$bd
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$db
	dc.b		$80,$4
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$80
	dc.b		$bd
	dc.b		$80
	dc.b		$ba,$2
	dc.b		$ba
	dc.b		$bd,$4
	dc.b		$ba
	dc.b		$80
	dc.b		$b8,$2
	dc.b		$ba
	dc.b		$bd
	dc.b		$bd,$4
	dc.b		$ba,$2
	dc.b		$bd
	dc.b		$bd
	dc.b		$80
	smpsFMvoice	$4
	dc.b		$db
	dc.b		$db
	dc.b		$db
	smpsFMvoice	$2
	dc.b		$c1
	dc.b		$c2
	smpsReturn

MusSLZ_FM5_pb:
	dc.b		$c4,$2
	dc.b		$80,$6
	dc.b		$c9,$18
	dc.b		$80,$1
	smpsReturn

; Pattern data for DAC
MusSLZ_DAC_p0:
	dc.b		$80,$20
	dc.b		$81,$8
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	smpsReturn

MusSLZ_DAC_p1:
	dc.b		$81,$8
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	smpsReturn

MusSLZ_DAC_pb:
	dc.b		$81,$8
	dc.b		$81
	dc.b		$81
	dc.b		$81,$9
	smpsReturn

MusSLZ_Voices:
	dc.b	$34,$33,$41,$7e,$74,$5b,$9f,$5f,$1f,$4,$7,$7,$8,$0,$0,$0
	dc.b	$0,$ff,$ff,$ef,$ff,$23,$90,$29,$97	; Voice 0 (Voice 0 ripped from Mus84 - SLZ - Copy.bin)
	dc.b	$3a,$61,$3c,$14,$31,$9c,$db,$9c,$da,$4,$9,$4,$3,$3,$1,$3
	dc.b	$0,$1f,$f,$f,$af,$21,$47,$31,$80	; Voice 1 (Voice 1 ripped from Mus84 - SLZ - Copy.bin)
	dc.b	$4,$72,$42,$32,$32,$1f,$1f,$1f,$1f,$0,$0,$0,$0,$0,$0,$0
	dc.b	$0,$0,$7,$0,$7,$23,$80,$23,$80	; Voice 2 (Voice 2 ripped from Mus84 - SLZ - Copy.bin)
	dc.b	$3a,$1,$7,$1,$1,$8e,$8e,$8d,$53,$e,$e,$e,$3,$0,$0,$0
	dc.b	$0,$1f,$ff,$1f,$f,$18,$28,$27,$80	; Voice 3 (Voice 3 ripped from Mus84 - SLZ - Copy.bin)
	dc.b	$3c,$38,$74,$76,$33,$10,$10,$10,$10,$2,$7,$4,$7,$3,$9,$3
	dc.b	$9,$2f,$2f,$2f,$2f,$1e,$80,$1e,$80	; Voice 4 (Voice 4 ripped from Mus84 - SLZ - Copy.bin)
	dc.b	$f4,$6,$4,$f,$e,$1f,$1f,$1f,$1f,$0,$0,$b,$b,$0,$0,$5
	dc.b	$8,$f,$f,$ff,$ff,$15,$85,$2,$8a	; Voice 5 (Voice 5 ripped from Mus84 - SLZ - Copy.bin)
	even
