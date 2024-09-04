; =============================================================================================
; Project Name:		Mus91
; Created:		21st January 2020
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Mus91_Header:
	smpsHeaderVoice	Mus91_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$33

	smpsHeaderDAC	Mus91_DAC
	smpsHeaderFM	Mus91_FM1,	smpsPitch01lo,	$12
	smpsHeaderFM	Mus91_FM2,	smpsPitch00,	$0B
	smpsHeaderFM	Mus91_FM3,	smpsPitch01lo,	$14
	smpsHeaderFM	Mus91_FM4,	smpsPitch01lo,	$08
	smpsHeaderFM	Mus91_FM5,	smpsPitch01lo,	$20
	smpsHeaderPSG	Mus91_PSG1,	smpsPitch04lo,	$01,	$00
	smpsHeaderPSG	Mus91_PSG2,	smpsPitch04lo,	$03,	$00
	smpsHeaderPSG	Mus91_PSG3,	smpsPitch00,	$03,	$04

; FM1 Data
Mus91_FM1:
	smpsE2		$01
	dc.b		nRst,	$60
	smpsFMvoice	$1C
	smpsAlterVol	$F8
	smpsNoteFill	$06
	smpsCall	Mus91_Call01
	smpsPan		panCentre,	$00
	smpsNoteFill	$00
	smpsFMvoice	$03
	smpsModSet	$0D,	$01,	$07,	$04
	dc.b		nRst,	$30
	smpsCall	Mus91_Call02
	dc.b		nE6,	nD6,	$18,	nC6,	$0C,	nB5,	$18,	nC6
	dc.b		$0C,	nB5,	$18,	nG5,	$54
	smpsCall	Mus91_Call02
	dc.b		$0C,	nF5,	$18,	nA5,	$0C,	nG5,	$18,	nA5
	dc.b		$0C,	nG5,	$18,	nC5,	$24,	nRst,	$60,	nRst
	dc.b		nRst,	nRst,	smpsModOff
	smpsE2		$01
	smpsSetTempoMod	$0F
	smpsFMvoice	$05
	smpsAlterVol	$02
	dc.b		nRst,	$06,	nE5,	nG5,	nE5,	nG5,	$09,	nA5
	dc.b		nB5,	$0C,	nC6,	$06,	nB5,	nA5,	nG5,	$09
	dc.b		nA5,	$06,	nG5,	$03,	nE5,	$06,	nRst,	$06
	dc.b		nA5,	nC6,	nA5,	nC6,	$09,	nD6,	nE6,	$0C
	dc.b		nF6,	$06,	nE6,	nD6,	nC6,	$0C,	nA5,	$0C
	dc.b		nD6,	$04,	nC6,	nD6,	nC6,	$24
	smpsAlterPitch	$F4
	smpsAlterVol	$09
	smpsFMvoice	$08
	dc.b		nRst,	$18,	nA5,	$06,	nB5,	nC6,	nE6
	smpsCall	Mus91_Call03
	smpsFMvoice	$0B
	smpsAlterVol	$EB
	dc.b		nRst,	$0C,	nG5,	nA5,	nG6
	smpsCall	Mus91_Call04
	dc.b		nE6,	$1E,	nE7,	$06,	nC7,	$18,	nRst,	$24
	smpsE2		$01
	smpsSetTempoMod	$0A
	smpsFMvoice	$0F
	smpsAlterPitch	$0C
	smpsAlterVol	$0B
	smpsCall	Mus91_Call05
	smpsE2		$01
	smpsSetTempoMod	$07
	dc.b		nRst,	$60
	smpsE2		$01
	smpsSetTempoMod	$03
	dc.b		nRst,	$30
	smpsFMvoice	$17
	smpsAlterVol	$0E
	dc.b		nRst,	$04,	nF6,	$08,	nE6,	$03,	nRst,	nD6
	dc.b		nRst,	nC6,	nRst,	nD6,	nRst,	nC6,	$04,	nA5
	dc.b		nRst,	$02,	nBb5,	nRst,	$04,	nBb5,	$08,	nC6
	dc.b		$03,	nRst,	nBb5,	nRst,	nA5,	$04,	nBb5,	nRst
	dc.b		$02,	nC6,	$0E,	nRst,	$06,	nE6,	$02,	nRst
	dc.b		$04,	nE6,	$0C,	nF6,	nE6,	$0A,	nD6,	$02
	smpsE2		$01
	smpsSetTempoMod	$04
	smpsAlterVol	$F5
	smpsFMvoice	$1A
	dc.b		nRst,	$60
	smpsCall	Mus91_Call06
	smpsAlterVol	$09
	smpsAlterNote	$03
	smpsFMvoice	$18
	smpsModSet	$00,	$01,	$06,	$04
	smpsCall	Mus91_Call07
	smpsAlterVol	$EF
	smpsFMvoice	$1B
	smpsAlterNote	$02
	dc.b		nA1,	$6C,	smpsNoAttack,	$60
	smpsE2		$01
	smpsStop

Mus91_Call02:
	dc.b		nC6,	$0C,	nA5,	$18,	nC6,	$0C,	nB5,	$18
	dc.b		nC6,	$0C,	nB5,	$18,	nG5,	$48,	nA5,	$0C
	smpsReturn

Mus91_Call06:
	dc.b		nRst,	$0C,	nCs6,	$15,	nRst,	$03,	nCs6,	$06
	dc.b		nRst,	nD6,	$0F,	nRst,	$03,	nB5,	$18,	nRst
	dc.b		$06,	nCs6,	$06,	nRst,	nCs6,	nRst,	nCs6,	nRst
	dc.b		nA5,	nRst,	nG5,	$0F,	nRst,	$03,	nB5,	$18
	dc.b		nRst,	$06
	smpsLoop	$00,	$02,	Mus91_Call06
	smpsReturn

; FM2 Data
Mus91_FM2:
	dc.b		nRst,	$60
	smpsFMvoice	$1D
Mus91_Loop01:
	dc.b		nD3,	$0C,	nD3,	nB3,	nB3,	nG3,	nG3,	nA3
	dc.b		nA3,	nD3,	nD3,	nA3,	nA3,	nFs3,	nFs3,	nG3
	dc.b		nG3,	nC3,	nC3,	nG3,	nG3,	nFs3,	nFs3,	nG3
	dc.b		nG3,	nA2,	nA2,	nA2,	nA2,	nD3,	nD3,	nD3
	dc.b		nE3
	smpsLoop	$00,	$02,	Mus91_Loop01
	smpsFMvoice	$00
Mus91_Loop02:
	smpsNoteFill	$05
	dc.b		nF3,	$0C
	smpsCall	Mus91_Call08
	smpsNoteFill	$05
	dc.b		nE3,	$0C,	$0C,	$0C,	$0C,	$0C
	smpsNoteFill	$00
	dc.b		nC3,	nD3,	nE3
	smpsLoop	$00,	$02,	Mus91_Loop02
	smpsNoteFill	$05
	dc.b		nF3
	smpsCall	Mus91_Call08
	smpsNoteFill	$05
	dc.b		nE3
	smpsCall	Mus91_Call08
	smpsNoteFill	$05
	dc.b		nD3
	smpsCall	Mus91_Call08
	smpsNoteFill	$05
	dc.b		nC3,	$0C,	$0C,	$0C,	$0C,	$0C
	smpsNoteFill	$00
	dc.b		nG2,	nA2,	nB2
	smpsNoteFill	$05
Mus91_Loop03:
	dc.b		nC3
	smpsLoop	$00,	$18,	Mus91_Loop03
	smpsNoteFill	$00
	dc.b		nC3,	$06,	nRst,	nC3,	$0C,	nA2,	$06,	nRst
	dc.b		nA2,	$0C,	nBb2,	$06,	nRst,	nBb2,	$0C,	nB2
	dc.b		$06,	nRst,	nB2,	$0C
	smpsFMvoice	$06
	smpsAlterPitch	$E8
	smpsAlterVol	$02
Mus91_Loop04:
	dc.b		nC4,	$0F,	nRst,	$03,	nE4,	nRst,	nG4,	$09
	dc.b		nRst,	$03,	nA4,	$09,	nRst,	$03,	nB4,	$0F
	dc.b		nRst,	$03,	nA4,	nRst,	nG4,	$09,	nRst,	$03
	dc.b		nE4,	$09,	nRst,	$03
	smpsAlterPitch	$05
	smpsLoop	$00,	$02,	Mus91_Loop04
	smpsAlterPitch	$F6
	dc.b		nC4,	$0F,	nRst,	$03,	nE4,	nRst,	nG4,	$09
	dc.b		nRst,	$03,	nE4,	$09,	nRst,	$03,	nC4,	$06
	dc.b		nRst,	$12,	nE4,	$18
	smpsAlterVol	$01
	smpsFMvoice	$09
Mus91_Loop05:
	dc.b		nA3,	$03,	nRst,	nA3,	$06,	nE4,	$03,	nRst
	dc.b		nE4,	$06,	nD4,	$03,	nRst,	nD4,	$06,	nE4
	dc.b		$03,	nRst,	nE4,	$06
	smpsLoop	$00,	$02,	Mus91_Loop05
Mus91_Loop06:
	dc.b		nD4,	$03,	nRst,	nD4,	$06,	nA4,	$03,	nRst
	dc.b		nA4,	$06,	nF4,	$03,	nRst,	nF4,	$06,	nA4
	dc.b		$03,	nRst,	nA4,	$06
	smpsLoop	$00,	$02,	Mus91_Loop06
	dc.b		nB3,	$03,	nRst,	nB3,	$06,	nF4,	$03,	nRst
	dc.b		nF4,	$06,	nD4,	$03,	nRst,	nD4,	$06,	nF4
	dc.b		$03,	nRst,	nF4,	$06,	nE4,	$03,	nRst,	nE4
	dc.b		$06,	nB4,	$03,	nRst,	nB4,	$06,	nAb4,	$03
	dc.b		nRst,	nAb4,	$06,	nB4,	$03,	nRst,	nB4,	$06
	dc.b		nA3,	$03,	nRst,	nA3,	$06,	nE4,	$03,	nRst
	dc.b		nE4,	$06,	nC4,	$03,	nRst,	nC4,	$06,	nE4
	dc.b		$03,	nRst,	nE4,	$06,	nA3,	$03,	nRst,	$09
	dc.b		nRst,	$24
	smpsAlterVol	$F8
	dc.b		nC4,	$06,	nRst,	$03,	nC4,	nRst,	$06,	nC4
	dc.b		$12,	nRst,	$06,	nC4,	$02,	nRst,	$01,	nC4
	dc.b		$02,	nRst,	$01,	nBb3,	$06,	nRst,	$03,	nBb3
	dc.b		$03,	nRst,	$06,	nA3,	$12,	nRst,	$06,	nA3
	dc.b		$02,	nRst,	$01,	nA3,	$02,	nRst,	$01
Mus91_Loop07:
	dc.b		nD4,	$06,	nRst,	$03,	nD4,	$06,	nRst,	$03
	dc.b		nD4,	$02,	nRst,	$01,	nD4,	$02,	nRst,	$01
	smpsAlterPitch	$FF
	smpsLoop	$00,	$04,	Mus91_Loop07
	smpsAlterPitch	$04
	dc.b		nG3,	$06,	nRst,	$03,	nG3,	nRst,	$06,	nG3
	dc.b		$12,	nRst,	$06,	nG3,	$02,	nRst,	$01,	nG3
	dc.b		$02,	nRst,	$01,	nB3,	$06,	nRst,	$03,	nB3
	dc.b		nRst,	$06,	nB3,	$12,	nRst,	$06,	nD4,	$02
	dc.b		nRst,	$01,	nB3,	$02,	nRst,	$01,	nC4,	$06
	dc.b		nRst,	$03,	nC4,	nRst,	$06,	nC4,	$12,	nRst
	dc.b		$06,	nE4,	$02,	nRst,	$01,	nF4,	$02,	nRst
	dc.b		$01,	nG4,	$06,	nRst,	nG3,	$24
	smpsFMvoice	$10
	smpsAlterPitch	$0C
	smpsAlterVol	$07
	smpsNoteFill	$06
Mus91_Loop08:
	smpsCall	Mus91_Call09
	smpsAlterPitch	$06
	smpsCall	Mus91_Call09
	smpsAlterPitch	$FF
	smpsCall	Mus91_Call09
	smpsAlterPitch	$02
	smpsCall	Mus91_Call09
	smpsAlterPitch	$F9
	smpsLoop	$02,	$02,	Mus91_Loop08
	smpsNoteFill	$00
	smpsAlterPitch	$F4
	smpsAlterVol	$FC
	smpsFMvoice	$14
	dc.b		nRst,	$30,	nRst,	$30,	nA4,	$03,	nRst,	nA4
	dc.b		nRst,	nG4,	nRst,	nG4,	nRst,	nF4,	nRst,	nF4
	dc.b		nRst,	nE4,	nRst,	nE4,	$02,	nRst,	nBb4
	smpsAlterVol	$02
	dc.b		nRst,	$04,	nBb4,	$08,	nC5,	$03,	nRst,	nBb4
	dc.b		nRst,	nA4,	$06,	nRst,	nBb4,	$04,	nA4,	nRst
	dc.b		$02,	nG4,	nRst,	$04,	nG4,	$08,	nA4,	$03
	dc.b		nRst,	nG4,	nRst,	nF4,	nRst,	nF4,	nRst,	nG4
	dc.b		$04,	nF4,	nRst,	$02,	nE4,	nRst,	$04,	nE4
	dc.b		$08,	nE4,	$03,	nRst,	nE4,	nRst,	nA4,	$09
	dc.b		nRst,	$03,	nA4,	$0A,	nD4,	$02
	smpsAlterPitch	$0C
	smpsAlterVol	$FE
	smpsFMvoice	$19
	dc.b		nRst,	$60
Mus91_Loop09:
	dc.b		nA3,	$06,	nRst,	nA3,	nRst,	nE3,	nRst,	nE3
	dc.b		nRst,	nG3,	$12,	nFs3,	$0C,	nG3,	$06,	nFs3
	dc.b		$0C,	nA3,	$06,	nRst,	nA3,	nRst,	nE3,	nRst
	dc.b		nE3,	nRst,	nD4,	$12,	nCs4,	$0C,	nD4,	$06
	dc.b		nCs4,	$0C
	smpsLoop	$00,	$02,	Mus91_Loop09
	dc.b		nG3,	$06,	nRst,	nE3,	nRst,	nF3,	nRst,	nFs3
	dc.b		nRst,	nG3,	$06,	nG3,	$06,	nE3,	$06,	nRst
	dc.b		nF3,	nRst,	nG3,	nRst,	nE3,	$06,	nRst,	nE3
	dc.b		nRst,	nAb3,	nRst,	nAb3,	nRst,	nB3,	$06,	nRst
	dc.b		nB3,	nRst,	nD4,	nRst,	nD4,	nRst,	nRst,	$0C
	dc.b		nA3,	$12,	nRst,	$06,	nA3,	$12,	nAb3,	$12
	dc.b		nA3,	$06,	nRst
	smpsAlterVol	$FD
	dc.b		nA2,	$6C,	smpsNoAttack,	$60
	smpsStop
	dc.b		$00,	$01

Mus91_Call08:
	dc.b		$0C,	$0C,	$0C,	$0C,	$0C,	$0C
	smpsNoteFill	$00
	dc.b		$0C
	smpsReturn

Mus91_Call09:
	dc.b		nC4,	$03,	nC4,	nG3,	nG3,	nA3,	nA3,	nG3
	dc.b		nG3
	smpsLoop	$00,	$02,	Mus91_Call09
	smpsReturn

; FM3 Data
Mus91_FM3:
	dc.b		nRst,	$60
	smpsLoop	$00,	$08,	Mus91_FM3
	smpsFMvoice	$1F
	smpsAlterVol	$01
	smpsPan		panRight,	$00
	dc.b		nD6,	$06,	nE6,	nFs6,	nG6,	nE6,	nFs6,	nG6
	dc.b		nA6,	nFs6,	nG6,	nA6,	nB6,	nA6,	nB6,	nC7
	dc.b		nD7
Mus91_Loop0A:
	smpsPan		panLeft,	$00
	dc.b		nE7
	smpsPan		panRight,	$00
	dc.b		nC7
	smpsAlterVol	$02
	smpsLoop	$00,	$0D,	Mus91_Loop0A
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	smpsAlterVol	$E5
	smpsAlterPitch	$E8
	dc.b		nG6,	$06,	nA6,	nC7,	$0C,	nA6,	nRst,	$4E
	dc.b		nRst,	nG6,	$06,	nA6,	nC7,	$0C,	nE7,	nRst
	dc.b		$4E,	nRst,	nG6,	$06,	nA6,	nC7,	$0C,	nA6
	dc.b		nRst,	$36,	nRst,	nC7,	$06,	nRst,	$12,	nA6
	dc.b		$18,	nG6,	$06,	nRst,	nA6,	nRst,	nC7,	nRst
	dc.b		smpsModOff
	smpsFMvoice	$04
	smpsAlterVol	$FE
Mus91_Loop0B:
	dc.b		nC6,	$01,	smpsNoAttack,	nB5,	$1B,	nRst,	$08,	nBb5
	dc.b		$01,	smpsNoAttack,	nA5,	$1B,	nRst,	$08
	smpsLoop	$00,	$02,	Mus91_Loop0B
	dc.b		nC6,	$01,	smpsNoAttack,	nB5,	$0B,	nRst,	$0C,	nBb5
	dc.b		$01,	smpsNoAttack,	nA5,	$0B,	nRst,	$0C,	nCs6,	$01
	dc.b		smpsNoAttack,	nC6,	$1B,	nRst,	$08,	nC6,	$01,	smpsNoAttack
	dc.b		nB5,	$24,	smpsNoAttack,	$18,	smpsNoAttack,	$5A,	nRst,	$06
	smpsAlterPitch	$18
	dc.b		nRst,	$60,	nRst,	nRst,	$30
	smpsAlterPitch	$E8
	smpsFMvoice	$08
	smpsAlterPitch	$0C
	smpsAlterVol	$03
	smpsAlterNote	$02
	dc.b		nRst,	$18,	nA5,	$06,	nB5,	nC6,	nE6
	smpsCall	Mus91_Call03
	smpsFMvoice	$0D
	smpsAlterPitch	$0C
	smpsAlterVol	$0B
	dc.b		nRst,	$0C,	nG5,	nA5,	nG6
	smpsCall	Mus91_Call04
	smpsFMvoice	$0A
	smpsAlterVol	$EC
	dc.b		nRst,	$06
	smpsAlterNote	$14
	dc.b		nG5,	$01,	smpsNoAttack
	smpsAlterNote	$00
	dc.b		$02,	nA5,	$03
	smpsNoteFill	$05
	dc.b		nC6,	$03,	nC6,	$06,	nA5,	$03,	nC6
	smpsNoteFill	$00
	dc.b		nC6
	smpsAlterVol	$FC
	smpsAlterPitch	$33
	smpsFMvoice	$0E
	dc.b		nEb4,	$03
	smpsAlterVol	$07
	dc.b		nEb4
	smpsAlterVol	$07
	dc.b		nEb4
	smpsAlterVol	$07
	dc.b		nEb4
	smpsFMvoice	$0A
	smpsAlterVol	$EF
	smpsAlterPitch	$CD
	dc.b		nE6,	$03,	nF6,	nG6,	nRst,	$09
	smpsAlterNote	$EC
	dc.b		nC7,	$01,	smpsNoAttack
	smpsAlterNote	$00
	smpsModSet	$2C,	$01,	$04,	$04
	dc.b		nC7,	$23,	smpsModOff
	smpsFMvoice	$0F
	smpsAlterVol	$FF
	smpsAlterNote	$03
	smpsCall	Mus91_Call05
	smpsAlterNote	$00
	smpsFMvoice	$15
	smpsAlterVol	$09
	dc.b		nRst,	$30,	nRst,	$30,	nRst,	$2E,	nF5,	$02
	dc.b		nRst,	$04,	nF5,	$08,	nF5,	$03,	nRst,	nF5
	dc.b		nRst,	nE5,	$03,	nRst,	$13,	nD5,	$02,	nRst
	dc.b		$04,	nD5,	$08,	nD5,	$03,	nRst,	nD5,	nRst
	dc.b		nC5,	$03,	nRst,	$15,	nRst,	$04,	nA6,	$08
	dc.b		nG6,	$03,	nRst,	nG6,	nRst,	nF6,	nRst,	nF6
	dc.b		nRst,	nE6,	$04,	nF6,	$02,	nE6,	$04,	nD6
	dc.b		$02
	smpsFMvoice	$0A
	smpsAlterVol	$F9
	dc.b		nRst,	$60
Mus91_Loop0C:
	dc.b		nE6,	$06,	nRst,	nE6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nD6,	$12,	nD6,	$1E,	nE6,	$06,	nRst
	dc.b		nE6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nG6,	$12
	dc.b		nG6,	$1E
	smpsLoop	$00,	$02,	Mus91_Loop0C
	dc.b		nRst,	$0C,	nD6,	$12,	nRst,	$06,	nD6,	nRst
	dc.b		nCs6,	$12,	nD6,	nCs6,	$0C,	nAb5,	$18,	nB5
	dc.b		nD6,	nAb6,	nRst,	$0C,	nE6,	nRst,	nE6,	$12
	dc.b		nEb6,	nE6,	$06,	nRst
	smpsFMvoice	$19
	smpsAlterVol	$F8
	smpsAlterNote	$03
	dc.b		nA2,	$6C,	smpsNoAttack,	$60
	smpsStop

Mus91_Call16:
	dc.b		nD6,	$06,	nE6,	nFs6,	nG6,	nE6,	nFs6,	nG6
	dc.b		nA6,	nFs6,	nG6,	nA6,	nB6,	nA6,	nB6,	nC7
	dc.b		nD7
	smpsReturn

; FM4 Data
Mus91_FM4:
	smpsFMvoice	$20
	dc.b		nRst,	$60
	smpsAlterVol	$08
	smpsCall	Mus91_Call0A
	dc.b		nFs5,	$0C,	nFs5,	nRst,	nRst,	nA5,	nA5,	nRst
	dc.b		nRst
	smpsCall	Mus91_Call0A
	dc.b		nA5,	$24,	$24,	$18
	smpsPan		panLeft,	$00
	smpsCall	Mus91_Call0B
	smpsAlterVol	$F2
Mus91_Loop0D:
	dc.b		nAb5,	$01,	smpsNoAttack,	nG5,	$1B,	nRst,	$08,	nFs5
	dc.b		$01,	smpsNoAttack,	nF5,	$1B,	nRst,	$08
	smpsLoop	$00,	$02,	Mus91_Loop0D
	dc.b		nAb5,	$01,	smpsNoAttack,	nG5,	$0B,	nRst,	$0C,	nFs5
	dc.b		$01,	smpsNoAttack,	nF5,	$0B,	nRst,	$0C,	nBb5,	$01
	dc.b		smpsNoAttack,	nA5,	$1B,	nRst,	$08,	nAb5,	$01,	smpsNoAttack
	dc.b		nG5,	$24,	smpsNoAttack,	$18,	smpsNoAttack,	$5A,	nRst,	$06
	smpsAlterPitch	$18
	dc.b		nRst,	$60,	nRst,	nRst,	$5A
	smpsPan		panCentre,	$00
	smpsFMvoice	$0A
	smpsAlterPitch	$F4
	smpsAlterVol	$05
Mus91_Loop0E:
	dc.b		nB6,	$09,	nRst,	$03,	nB6,	nRst,	nC7,	$06
	dc.b		nRst,	nB6,	$0C,	nRst,	$06
	smpsLoop	$00,	$02,	Mus91_Loop0E
	dc.b		nRst,	$12,	nC7,	$03,	nRst,	$0F,	nC7,	$03
	dc.b		nRst,	$1B,	nC7,	$03,	nRst,	$0F,	nC7,	$03
	dc.b		nRst,	$09,	nF6,	$09,	nRst,	$03,	nF6,	nRst
	dc.b		nA6,	$06,	nRst,	nF6,	$0C,	nRst,	$06,	nAb6
	dc.b		$09,	nRst,	$03,	nAb6,	nRst,	nB6,	$06,	nRst
	dc.b		nAb6,	$0C,	nRst,	$06,	nRst,	nRst,	$0C,	nC7
	dc.b		$03,	nRst,	$0F,	nC7,	$03,	nRst,	$0F,	nC7
	dc.b		$03,	nRst,	$2D
	smpsAlterPitch	$F4
	smpsAlterVol	$03
	smpsFMvoice	$0C
	smpsPan		panLeft,	$00
	smpsCall	Mus91_Call0C
	smpsFMvoice	$11
	smpsAlterVol	$F6
	smpsAlterPitch	$18
	smpsCall	Mus91_Call0D
	dc.b		nRst,	$0C
	smpsAlterNote	$EC
	dc.b		nA5,	$02
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$0A,	nRst,	$03,	nA5,	nRst,	nRst,	nA5
	dc.b		nRst,	$09
	smpsCall	Mus91_Call0D
	smpsAlterNote	$EC
	dc.b		nA5,	$02
	smpsAlterNote	$00
	dc.b		$0A,	nRst,	$06
	smpsModSet	$18,	$01,	$07,	$04
	smpsAlterNote	$E2
	dc.b		nA5,	$02,	smpsNoAttack
	smpsAlterNote	$00
	dc.b		$1C
	smpsAlterNote	$00
	smpsAlterNote	$03
	smpsCall	Mus91_Call0E
	smpsAlterNote	$00
	smpsPan		panCentre,	$00
	smpsFMvoice	$0A
	smpsAlterVol	$F5
	dc.b		nRst,	$60
Mus91_Loop0F:
	dc.b		nCs6,	$06,	nRst,	nCs6,	nRst,	nA5,	nRst,	nA5
	dc.b		nRst,	nB5,	$12,	nB5,	$1E,	nCs6,	$06,	nRst
	dc.b		nCs6,	nRst,	nA5,	nRst,	nA5,	nRst,	nD6,	$12
	dc.b		nD6,	$1E
	smpsLoop	$00,	$02,	Mus91_Loop0F
	smpsFMvoice	$18
	smpsAlterNote	$03
	smpsAlterVol	$08
	smpsCall	Mus91_Call07
	smpsFMvoice	$19
	smpsAlterVol	$F0
	smpsModSet	$00,	$01,	$06,	$04
	dc.b		nA2,	$6C,	smpsNoAttack,	$60
	smpsStop

Mus91_Call0A:
	dc.b		nB5,	$24,	$24,	$18,	nA5,	$24,	$24,	$18
	dc.b		nG5,	$24,	$24,	$18
	smpsReturn

Mus91_Call0B:
	smpsFMvoice	$02
	smpsAlterPitch	$E8
	smpsAlterVol	$0D
Mus91_Loop10:
	smpsCall	Mus91_Call0F
	dc.b		nD5,	nD5
	smpsLoop	$00,	$02,	Mus91_Loop10
	smpsCall	Mus91_Call0F
	dc.b		nE4,	nE4,	nC5,	nC5,	nA4,	nA4,	nF4,	nF4
	dc.b		nD4,	nD4,	nB4,	nB4
	smpsAlterVol	$03
	smpsAlterPitch	$0C
	smpsFMvoice	$01
	dc.b		nG6,	$18,	nA6,	nB6
	smpsAlterPitch	$F4
	smpsFMvoice	$04
	smpsReturn

Mus91_Call0F:
	dc.b		nE5,	$0C,	nE5,	nC5,	nC5,	nA4,	nA4,	nF4
	dc.b		nF4,	nD5,	nD5,	nB4,	nB4,	nG4,	nG4
	smpsReturn

Mus91_Call0D:
	dc.b		nRst,	$0C
	smpsAlterNote	$EC
	dc.b		nG5,	$02
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$06,	nRst,	$01,	nG5,	$03,	nRst,	$18
	dc.b		nRst,	$0C
	smpsAlterNote	$EC
	dc.b		nCs6,	$02
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$06,	nRst,	$01,	nCs6,	$03,	nRst,	$18
	dc.b		nRst,	$0C
	smpsAlterNote	$EC
	dc.b		nC6,	$02
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$06,	nRst,	$01,	nC6,	$03,	nRst,	$18
	smpsReturn

Mus91_Call0E:
	smpsAlterVol	$08
	smpsFMvoice	$16
	dc.b		nRst,	$30,	nRst,	$30
	smpsChanTempoDiv	$01
	smpsCall	Mus91_Call10
	smpsChanTempoDiv	$02
	smpsFMvoice	$12
	smpsModSet	$01,	$01,	$01,	$04
	dc.b		nD6,	$02,	nRst,	$04,	nD6,	$08,	nD6,	$03
	dc.b		nRst,	nD6,	nRst,	nC6,	nRst,	nA6,	nRst,	nF6
	dc.b		nRst,	$07,	nBb5,	$02,	nRst,	$04,	nBb5,	$08
	dc.b		nBb5,	$03,	nRst,	nBb5,	nRst,	nA5,	$03,	nRst
	dc.b		$13,	nA5,	$0E,	nCs6,	$0C,	nE6,	nCs7,	$0A
	dc.b		nD7,	$02
	smpsReturn

Mus91_Call10:
	dc.b		nBb3,	$01,	smpsNoAttack,	nA3,	$04,	nRst,	$07,	nBb3
	dc.b		$01,	smpsNoAttack,	nA3,	$04,	nRst,	$07,	nC4,	$01
	dc.b		smpsNoAttack,	nB3,	$04,	nRst,	$07,	nC4,	$01,	smpsNoAttack
	dc.b		nB3,	$04,	nRst,	$07,	nCs4,	$01,	smpsNoAttack,	nC4
	dc.b		$04,	nRst,	$07,	nCs4,	$01,	smpsNoAttack,	nC4,	$04
	dc.b		nRst,	$07,	nD4,	$01,	smpsNoAttack,	nCs4,	$04,	nRst
	dc.b		$07,	nD4,	$01,	smpsNoAttack,	nCs4,	$04,	nRst,	$03
	smpsReturn

Mus91_Call1A:
	dc.b		nRst,	$0C,	nG6,	nB6,	nD7,	nFs7,	nRst,	$06
	dc.b		nFs7,	$0C,	nG7,	$06,	nFs7,	$0C,	nAb7,	$54
	dc.b		nRst,	$0C,	nA7,	nRst,	nA7,	nRst,	$12,	nAb7
	dc.b		nA7,	$0C
	smpsReturn

; FM5 Data
Mus91_FM5:
	smpsFMvoice	$20
	dc.b		nRst,	$60
	smpsAlterVol	$F0
	smpsCall	Mus91_Call11
	dc.b		nD5,	$0C,	$0C,	nRst,	$18,	nFs5,	$0C,	$0C
	dc.b		nRst,	$18
	smpsCall	Mus91_Call11
	dc.b		nFs5,	$24,	$24,	$18
	smpsPan		panRight,	$00
	smpsCall	Mus91_Call0B
	smpsAlterVol	$F2
Mus91_Loop11:
	dc.b		nF5,	$01,	smpsNoAttack,	nE5,	$1B,	nRst,	$08,	nEb5
	dc.b		$01,	smpsNoAttack,	nD5,	$1B,	nRst,	$08
	smpsLoop	$00,	$02,	Mus91_Loop11
	dc.b		nF5,	$01,	smpsNoAttack,	nE5,	$0B,	nRst,	$0C,	nEb5
	dc.b		$01,	smpsNoAttack,	nD5,	$0B,	nRst,	$0C,	nFs5,	$01
	dc.b		smpsNoAttack,	nF5,	$1B,	nRst,	$08,	nF5,	$01,	smpsNoAttack
	dc.b		nE5,	$24,	smpsNoAttack,	$18,	smpsNoAttack,	$5A,	nRst,	$06
	smpsAlterPitch	$18
	smpsPan		panCentre,	$00
	smpsAlterVol	$03
	smpsAlterPitch	$0C
	smpsFMvoice	$07
	dc.b		nRst,	$4E,	nG4,	$03,	nA4,	nC5,	nRst,	nA4
	dc.b		nRst,	$51,	nA5,	$03,	nF5,	nC5,	nRst,	nF5
	dc.b		nRst,	$5D
	smpsFMvoice	$0A
	smpsAlterPitch	$E8
	smpsAlterVol	$02
Mus91_Loop12:
	dc.b		nG6,	$09,	nRst,	$03,	nG6,	nRst,	nA6,	$06
	dc.b		nRst,	nG6,	$0C,	nRst,	$06
	smpsLoop	$00,	$02,	Mus91_Loop12
	dc.b		nRst,	$12,	nA6,	$03,	nRst,	$0F,	nA6,	$03
	dc.b		nRst,	$1B,	nA6,	$03,	nRst,	$0F,	nA6,	$03
	dc.b		nRst,	$09,	nD6,	$09,	nRst,	$03,	nD6,	nRst
	dc.b		nF6,	$06,	nRst,	nD6,	$0C,	nRst,	$06,	nE6
	dc.b		$09,	nRst,	$03,	nE6,	nRst,	nAb6,	$06,	nRst
	dc.b		nE6,	$0C,	nRst,	$18,	nA6,	$03,	nRst,	$0F
	dc.b		nA6,	$03,	nRst,	$0F,	nA6,	$03,	nRst,	$2D
	smpsFMvoice	$0C
	smpsPan		panRight,	$00
	smpsAlterPitch	$F4
	smpsAlterVol	$03
	smpsCall	Mus91_Call12
	smpsFMvoice	$12
	smpsAlterPitch	$24
	smpsAlterVol	$F4
	smpsCall	Mus91_Call13
	dc.b		nE6,	nF6,	nG6
	smpsCall	Mus91_Call13
	dc.b		nG6,	nF6,	nE6
	smpsAlterPitch	$F4
	smpsCall	Mus91_Call0E
	smpsPan		panCentre,	$00
	smpsFMvoice	$1A
	smpsAlterNote	$03
	smpsAlterVol	$F8
	dc.b		nRst,	$60
	smpsCall	Mus91_Call06
	smpsAlterVol	$00
	smpsFMvoice	$1A
	dc.b		nRst,	$60,	nRst,	$0C,	nE6,	$06,	nRst,	nB6
	dc.b		nE6,	$06,	nRst,	$0C,	nE6,	$06,	nRst,	nB6
	dc.b		nE6,	$06,	nRst,	$18
	smpsAlterVol	$05
	dc.b		nRst,	$0C,	nA3,	nRst,	nA3
	smpsStop

Mus91_Call11:
	dc.b		nG5,	$24,	$24,	$18,	nFs5,	$24,	$24,	$18
	dc.b		nE5,	$24,	$24,	$18
	smpsReturn

; PSG1 Data
Mus91_PSG1:
	dc.b		nRst,	$60
	smpsPSGvoice	$08
	smpsSetVol	$03
	smpsNoteFill	$06
	smpsCall	Mus91_Call01
	smpsPSGvoice	$01
	smpsNoteFill	$00
	smpsSetVol	$FD
Mus91_Loop13:
	dc.b		nRst,	$18,	nC6,	$06,	nRst,	$1E,	nC6,	$0C
	dc.b		nRst,	$18,	nRst,	$18,	nB5,	$06,	nRst,	$1E
	dc.b		nB5,	$0C,	nRst,	$18
	smpsLoop	$00,	$03,	Mus91_Loop13
	dc.b		nRst,	$18,	nA5,	$06,	nRst,	$1E,	nA5,	$0C
	dc.b		nRst,	$18,	nRst,	$18,	nG5,	$06,	nRst,	$1E
	dc.b		nG5,	$0C,	nRst,	$18
	smpsPSGvoice	$05
	smpsModSet	$0E,	$01,	$01,	$03
	smpsNoteFill	$10
	dc.b		nE5,	$24,	nD5,	nE5,	nD5,	nE5,	$0C,	nRst
	dc.b		nD5,	nRst,	nF5,	$24
	smpsNoteFill	$00
	dc.b		nE5,	$60,	smpsNoAttack,	$3C,	smpsModOff
	smpsPSGvoice	$09
	smpsSetVol	$01
Mus91_Loop14:
	dc.b		nRst,	$06,	nE6,	$0C,	nE6,	nE6,	nE6,	$06
	dc.b		nRst,	nE6,	$0C,	nE6,	nE6,	$03,	$09,	$06
	smpsAlterPitch	$05
	smpsLoop	$00,	$02,	Mus91_Loop14
	smpsAlterPitch	$F6
	dc.b		nRst,	$06,	nE6,	$0C,	nE6,	nE6,	nE6,	$06
	dc.b		nRst,	$30
	smpsPSGvoice	$08
	smpsSetVol	$01
	smpsCall	Mus91_Call14
	dc.b		nRst,	$02,	nRst,	$30
	smpsSetVol	$03
	smpsAlterPitch	$F4
	smpsPSGvoice	$05
	smpsCall	Mus91_Call0C
	smpsAlterPitch	$0C
	smpsSetVol	$FC
	smpsPSGvoice	$00
	smpsCall	Mus91_Call15
	dc.b		nRst,	$0C,	nF5,	nRst,	$03,	nF5,	nRst,	nRst
	dc.b		nF5,	nRst,	$09
	smpsCall	Mus91_Call15
	dc.b		nF5,	$0C,	nRst,	$06,	nF5,	$1E
	smpsPSGvoice	$06
	smpsSetVol	$04
	dc.b		nRst,	$30,	nRst,	$30
	smpsChanTempoDiv	$01
	smpsCall	Mus91_Call10
	smpsChanTempoDiv	$02
	dc.b		nD6,	$02,	nRst,	$04,	nD6,	$08,	nD6,	$03
	dc.b		nRst,	nD6,	nRst,	nC6,	nRst,	nA6,	nRst,	nF6
	dc.b		nRst,	$07,	nBb5,	$02,	nRst,	$04,	nBb5,	$08
	dc.b		nBb5,	$03,	nRst,	nBb5,	nRst,	nA5,	$03,	nRst
	dc.b		$13,	nA5,	$0E,	nCs6,	$0C,	nE6,	nCs7,	$0A
	dc.b		nD7,	$02,	nRst,	$60,	nRst,	nRst,	nRst,	nRst
	smpsSetVol	$FF
	dc.b		nRst,	$0C,	nB5,	$12,	nRst,	$06,	nB5,	nRst
	dc.b		nA5,	$12,	nB5,	nA5,	$0C,	nE5,	$18,	nAb5
	dc.b		nB5,	nD6,	nRst,	$0C,	nCs6,	nRst,	nCs6,	$12
	dc.b		nC6,	nCs6,	$06
	smpsStop

Mus91_Call15:
	dc.b		nRst,	$0C,	nE5,	$07,	nRst,	$02,	nE5,	$03
	dc.b		nRst,	$18,	nRst,	$0C,	nBb5,	$07,	nRst,	$02
	dc.b		nBb5,	$03,	nRst,	$18,	nRst,	$0C,	nA5,	$07
	dc.b		nRst,	$02,	nA5,	$03,	nRst,	$18
	smpsReturn

; PSG2 Data
Mus91_PSG2:
	dc.b		nRst,	$60
	smpsLoop	$00,	$08,	Mus91_PSG2
	dc.b		nRst,	$02
	smpsCall	Mus91_Call16
	smpsSetVol	$FE
	smpsPSGvoice	$01
	dc.b		nRst,	$16,	nE6,	$06,	nRst,	$1E,	nE6,	$0C
	dc.b		nRst,	$18,	nRst,	$18,	nD6,	$06,	nRst,	$1E
	dc.b		nD6,	$0C,	nRst,	$18
Mus91_Loop15:
	dc.b		nRst,	$18,	nE6,	$06,	nRst,	$1E,	nE6,	$0C
	dc.b		nRst,	$18,	nRst,	$18,	nD6,	$06,	nRst,	$1E
	dc.b		nD6,	$0C,	nRst,	$18
	smpsLoop	$00,	$02,	Mus91_Loop15
	dc.b		nRst,	$18,	nC6,	$06,	nRst,	$1E,	nC6,	$0C
	dc.b		nRst,	$18,	nRst,	$18,	nB5,	$06,	nRst,	$1E
	dc.b		nB5,	$0C,	nRst,	$18
	smpsNoteFill	$06
	smpsPSGvoice	$06
Mus91_Loop16:
	dc.b		nC7,	$0C,	nB6,	nA6,	nG6
	smpsLoop	$00,	$08,	Mus91_Loop16
	smpsNoteFill	$00
	smpsPSGvoice	$09
	smpsSetVol	$01
Mus91_Loop17:
	dc.b		nRst,	$06,	nG6,	$0C,	nG6,	nG6,	nG6,	$06
	dc.b		nRst,	nG6,	$0C,	nG6,	nG6,	$03,	$09,	$06
	smpsAlterPitch	$05
	smpsLoop	$00,	$02,	Mus91_Loop17
	smpsAlterPitch	$F6
	dc.b		nRst,	$06,	nG6,	$0C,	nG6,	nG6,	nG6,	$06
	dc.b		nRst,	$30,	nRst,	$02
	smpsAlterNote	$01
	smpsSetVol	$03
	smpsCall	Mus91_Call14
	smpsAlterNote	$00
	dc.b		nRst,	$30
	smpsSetVol	$01
	smpsAlterPitch	$F4
	smpsPSGvoice	$05
	smpsCall	Mus91_Call12
	smpsAlterPitch	$0C
	smpsSetVol	$FD
	smpsNoteFill	$03
Mus91_Loop18:
	dc.b		nC7,	$03,	nC7,	nG7,	nC7,	nF7,	nC7,	nE7
	dc.b		nC7
	smpsLoop	$00,	$02,	Mus91_Loop18
Mus91_Loop19:
	dc.b		nBb6,	nBb6,	nF7,	nBb6,	nEb7,	nBb6,	nCs7,	nBb6
	smpsLoop	$00,	$02,	Mus91_Loop19
Mus91_Loop1A:
	dc.b		nA6,	nA6,	nE7,	nA6,	nD7,	nA6,	nC7,	nA6
	smpsLoop	$00,	$04,	Mus91_Loop1A
	smpsLoop	$01,	$02,	Mus91_Loop18
	dc.b		nRst,	$60,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst
	smpsAlterVol	$0C
	smpsAlterNote	$02
	smpsSetVol	$02
	dc.b		nRst,	$0C,	nE6,	$06,	nRst,	nB6,	nE6,	$06
	dc.b		nRst,	$0C,	nE6,	$06,	nRst,	nB6,	nE6
	smpsStop

; PSG3 Data
Mus91_PSG3:
	smpsPSGform	$E7
	smpsNoteFill	$04
Mus91_Loop1B:
	dc.b		nA5,	$0C
	smpsLoop	$00,	$48,	Mus91_Loop1B
	smpsNoteFill	$06
Mus91_Loop1C:
	dc.b		$0C
	smpsLoop	$00,	$60,	Mus91_Loop1C
	smpsSetVol	$FF
	smpsCall	Mus91_Call17
	smpsNoteFill	$0E
	dc.b		$0C
	smpsNoteFill	$03
	dc.b		$06,	$06,	$03,	$03,	$06,	$03,	$03,	$06
Mus91_Loop1D:
	smpsCall	Mus91_Call17
	smpsLoop	$00,	$04,	Mus91_Loop1D
	smpsPSGvoice	$09
	smpsSetVol	$01
	smpsAlterPitch	$0B
Mus91_Loop1E:
	dc.b		nA3,	$06,	nA3,	nE4,	nE4,	nD4,	nD4,	nE4
	dc.b		nE4
	smpsLoop	$00,	$02,	Mus91_Loop1E
Mus91_Loop1F:
	dc.b		nD4,	nD4,	nA4,	nA4,	nF4,	nF4,	nA4,	nA4
	smpsLoop	$00,	$02,	Mus91_Loop1F
	dc.b		nB3,	nB3,	nF4,	nF4,	nD4,	nD4,	nF4,	nF4
	dc.b		nE4,	nE4,	nB4,	nB4,	nAb4,	nAb4,	nB4,	nB4
	dc.b		nA3,	nA3,	nE4,	nE4,	nC4,	nC4,	nE4,	nE4
	dc.b		nA3,	$06,	nRst,	$1E
	smpsNoteFill	$02
	smpsAlterPitch	$F5
Mus91_Loop20:
	smpsPSGvoice	$04
	dc.b		nA5,	$03,	$03
	smpsSetVol	$02
	smpsPSGvoice	$08
	smpsNoteFill	$08
	dc.b		$06
	smpsNoteFill	$03
	smpsSetVol	$FE
	smpsLoop	$00,	$1E,	Mus91_Loop20
	dc.b		nRst,	$24
Mus91_Loop21:
	smpsPSGvoice	$04
	dc.b		$03,	$03
	smpsSetVol	$02
	smpsPSGvoice	$08
	smpsNoteFill	$08
	dc.b		$06
	smpsNoteFill	$03
	smpsSetVol	$FE
	smpsLoop	$00,	$20,	Mus91_Loop21
	dc.b		nRst,	$30
	smpsNoteFill	$01
	smpsPSGvoice	$04
	smpsSetVol	$03
Mus91_Loop22:
	dc.b		nA5,	$02,	nRst,	nA5
	smpsLoop	$00,	$08,	Mus91_Loop22
Mus91_Loop23:
	dc.b		nRst,	$04,	nA5,	$02
	smpsLoop	$00,	$08,	Mus91_Loop23
	smpsSetVol	$FF
Mus91_Loop24:
	dc.b		nA5,	$02,	nRst,	nA5
	smpsLoop	$00,	$18,	Mus91_Loop24
	smpsSetVol	$FE
Mus91_Loop25:
	dc.b		nA5,	$04,	nRst,	nA5
	smpsLoop	$00,	$08,	Mus91_Loop25
Mus91_Loop26:
	smpsNoteFill	$03
	dc.b		$0C
	smpsNoteFill	$0C
	dc.b		$0C
	smpsNoteFill	$03
	dc.b		$0C
	smpsNoteFill	$0C
	dc.b		$0C
	smpsLoop	$00,	$0D,	Mus91_Loop26
	smpsNoteFill	$03
	dc.b		$06
	smpsNoteFill	$0E
	dc.b		$12
	smpsNoteFill	$03
	dc.b		$0C
	smpsNoteFill	$0F
	dc.b		$0C
	smpsStop

; DAC Data
Mus91_DAC:
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dSnare,	$0C,	$06
	dc.b		$0C,	$06,	$0C,	$0C,	$0C
	smpsCall	Mus91_Call18
	dc.b		dKick,	$18,	dSnare,	$0C,	dSnare,	dKick,	$18,	dSnare
	dc.b		$0C,	dSnare
	smpsCall	Mus91_Call18
	dc.b		dKick,	$0C,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare
Mus91_Loop27:
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	$0C,	dSnare
	dc.b		$18
	smpsLoop	$00,	$07,	Mus91_Loop27
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dSnare,	$0C
	dc.b		$0C,	$0C
Mus91_Loop28:
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	$0C,	dSnare
	dc.b		$18
	smpsLoop	$00,	$03,	Mus91_Loop28
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dSnare,	$0C
	dc.b		dSnare,	dSnare
	smpsSetTempoDiv	$02
Mus91_Loop29:
	dc.b		dKick,	$12,	dKick,	$06,	dKick,	$0C,	dSnare
	smpsLoop	$00,	$05,	Mus91_Loop29
	dc.b		dKick,	$12,	dKick,	$06,	dKick,	$06,	dSnare,	dSnare
	dc.b		dSnare
Mus91_Loop2A:
	dc.b		dKick,	$0C
	smpsLoop	$00,	$18,	Mus91_Loop2A
	dc.b		dKick,	$0C,	dKick,	dKick,	dKick,	$06,	dKick,	$02
	dc.b		dKick,	dSnare,	dSnare,	$0C,	nRst,	$24
Mus91_Loop2B:
	dc.b		dKick,	$0C,	dKick,	dKick,	dKick
	smpsLoop	$00,	$07,	Mus91_Loop2B
	dc.b		dKick,	$0C,	dKick,	dSnare,	$03,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dSnare
	smpsCall	Mus91_Call19
	dc.b		dHiTimpani,	$02,	dKick,	$01,	dMidTimpani,	$05,	dSnare,	$01
	dc.b		dHiTimpani,	$05,	dMidTimpani,	$06
	smpsCall	Mus91_Call19
	dc.b		dMidTimpani,	$02,	dSnare,	$01,	dHiTimpani,	$05,	dSnare,	$01
	dc.b		dMidTimpani,	$05,	dSnare,	$01,	dHiTimpani,	$02,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	dKick,	dKick,	dSnare,	dSnare,	dKick
	dc.b		dKick,	dKick,	dSnare,	$09,	dSnare,	$06,	$03,	$03
	dc.b		dKick,	$09,	$03,	dSnare,	$09,	dKick,	$06,	$06
	dc.b		$03,	dSnare,	$06,	$03,	$03,	dSnare,	$06,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	$04,	$02,	$04
	dc.b		dKick,	$02
Mus91_Loop2C:
	dc.b		nRst,	$04,	dKick,	$08,	dSnare,	$06,	dKick,	dKick
	dc.b		$0C,	dSnare,	$0A,	dKick,	$02
	smpsLoop	$00,	$03,	Mus91_Loop2C
	smpsSetTempoDiv	$01
	dc.b		nRst,	$18,	dSnare,	$14,	dKick,	$04,	dSnare,	$0C
	dc.b		dSnare,	dSnare,	$0C,	$08,	dKick,	$04
Mus91_Loop2D:
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare
	smpsLoop	$01,	$03,	Mus91_Loop2D
	dc.b		dKick,	$0C,	dSnare,	dKick,	$06,	nRst,	$02,	dSnare
	dc.b		dSnare,	dSnare,	$09,	dSnare,	$03
	smpsLoop	$00,	$03,	Mus91_Loop2D
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	dKick,	$06,	dSnare
	dc.b		$12,	dSnare,	$0C,	dKick
	smpsStop

Mus91_Call18:
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C
	dc.b		dSnare,	dKick
	smpsLoop	$00,	$03,	Mus91_Call18
	smpsReturn

Mus91_Call19:
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$06,	$03,	dKick
	dc.b		$01,	dHiTimpani,	$02,	dMidTimpani,	$03,	dSnare,	$01,	dHiTimpani
	dc.b		$0B,	dKick,	$0C,	dSnare,	$09,	dKick,	$06,	$03
	dc.b		dKick,	$01,	dHiTimpani,	$02,	dMidTimpani,	$03,	dSnare,	$01
	dc.b		dHiTimpani,	$0B,	dKick,	$0C,	dSnare,	$09,	dKick,	$06
	dc.b		$03,	dKick,	$01,	dHiTimpani,	$02,	dMidTimpani,	$03,	dSnare
	dc.b		$01,	dHiTimpani,	$0B,	dKick,	$0C,	dSnare,	$09,	dKick
	dc.b		$06,	dSnare,	$01
	smpsReturn

Mus91_Call01:
	smpsCall	Mus91_Call1A
	dc.b		nFs5,	nD5,	nE5,	nFs5,	nD5
	smpsCall	Mus91_Call1A
	dc.b		nB5,	nA5,	nB5,	nC6,	nD6
	smpsReturn

Mus91_Call07:
	dc.b		nB5,	$0C,	nG5,	nB5,	nD6,	nC6,	nB5,	nA5
	dc.b		nB5,	nA5,	nFs5,	nA5,	nC6,	nB5,	nA5,	nG5
	dc.b		nA5,	nG5,	nE5,	nG5,	nB5,	nA5,	nG5,	nFs5
	dc.b		nG5,	nFs5,	nG5,	nA5
	smpsReturn
	dc.b		nRst,	$0C,	nG6,	nB6,	nD7,	nFs7,	$0C,	nRst
	dc.b		$06,	nFs7,	$0C,	nG7,	$06,	nFs7,	$0C,	nE7
	dc.b		$60,	nRst,	$0C,	nG6,	nB6,	nD7,	nFs7,	$0C
	dc.b		nRst,	$06,	nFs7,	$0C,	nG7,	$06,	nFs7,	$0C
	dc.b		nAb7,	$5D,	nRst,	$03,	nA7,	$12,	nRst,	$06
	dc.b		nA7,	$12,	nRst,	$06,	nRst,	$06,	nAb7,	$12
	dc.b		nA7,	$06,	nRst,	$12
	smpsReturn

Mus91_Call17:
	smpsNoteFill	$0E
	dc.b		$0C
	smpsNoteFill	$03
	dc.b		$06,	$06,	$06,	$06,	$06,	$06
	smpsReturn

Mus91_Call03:
	dc.b		nB6,	$09,	nRst,	$03,	nB6,	$06,	nA6
	smpsLoop	$00,	$03,	Mus91_Call03
	dc.b		nB6,	nA6,	nE6,	nC6,	nG6,	$0C,	nA6,	$06
	dc.b		smpsNoAttack,	nF6,	$4D,	nRst,	$01,	nA6,	$24,	nB6
	dc.b		$0C,	nAb6,	$24,	nB6,	$09,	nRst,	$03,	nB6
	dc.b		$12,	nA6,	$1E
	smpsReturn

Mus91_Call14:
	dc.b		nRst,	$30,	nRst,	nRst,	nF7,	$03,	nD7,	nA6
	dc.b		nF6,	nD7,	nA6,	nF6,	nD6,	nA6,	nF6,	nD6
	dc.b		nA5,	nF6,	nD6,	nA5,	nF5,	$33,	nRst,	$5E
	smpsReturn

Mus91_Call04:
	dc.b		nE6,	$2A,	nE6,	$03,	nF6,	nG6,	$09,	nA6
	dc.b		nBb6,	$06,	nA6,	$0C,	nG6,	nF6,	$1E,	nF6
	dc.b		$06,	nE6,	nF6,	$1E,	nD6,	$0C,	nE6,	nF6
	dc.b		$2A,	nD6,	$03,	nE6,	nF6,	$09,	nG6,	nAb6
	dc.b		$06,	nG6,	$0C,	nF6
	smpsReturn

Mus91_Call12:
	smpsCall	Mus91_Call1B
	dc.b		nD6,	$06,	nRst,	$03,	nD6,	nRst,	$06,	nCs6
	dc.b		$18,	nRst,	$06
Mus91_Loop2E:
	dc.b		nF6,	$06,	nRst,	$03,	nE6,	$06,	nRst,	$03
	dc.b		nD6,	nRst
	smpsLoop	$00,	$02,	Mus91_Loop2E
	dc.b		nF6,	$06,	nRst,	$03,	nE6,	$06,	nRst,	$03
	dc.b		nD6,	$18,	nRst,	$06
	smpsAlterPitch	$FE
	smpsCall	Mus91_Call1B
	smpsAlterPitch	$03
	smpsCall	Mus91_Call1B
	smpsAlterPitch	$FF
	dc.b		nRst,	$06
	smpsNoteFill	$08
	dc.b		nG6,	$09,	$09,	$09,	$09
	smpsNoteFill	$05
	dc.b		$03,	$03
	smpsNoteFill	$00
	dc.b		nRst,	$0C,	nF6,	$24
	smpsReturn

Mus91_Call1B:
	dc.b		nE6,	$06,	nRst,	$03,	nE6,	nRst,	$06,	nE6
	dc.b		$18,	nRst,	$06
	smpsReturn

Mus91_Call0C:
	dc.b		nG6,	$06,	nRst,	$03,	nG6,	nRst,	$06,	nG6
	dc.b		$18,	nRst,	$06,	nF6,	$06,	nRst,	$03,	nF6
	dc.b		nRst,	$06,	nE6,	$18,	nRst,	$06,	nA6,	$06
	dc.b		nRst,	$03,	nG6,	$06,	nRst,	$03,	nF6,	nRst
	dc.b		nA6,	$06,	nRst,	$03,	nG6,	$06,	nRst,	$03
	dc.b		nF6,	nRst,	nA6,	$06,	nRst,	$03,	nG6,	$06
	dc.b		nRst,	$03,	nF6,	$18,	nRst,	$06,	nF6,	$06
	dc.b		nRst,	$03,	nF6,	nRst,	$06,	nF6,	$18,	nRst
	dc.b		$06,	nAb6,	$06,	nRst,	$03,	nAb6,	nRst,	$06
	dc.b		nAb6,	$18,	nRst,	$06,	nRst,	$06
	smpsNoteFill	$08
	dc.b		nB6,	$09,	$09,	$09,	$09
	smpsNoteFill	$05
	dc.b		$03,	$03
	smpsNoteFill	$00
	dc.b		nRst,	$0C,	nA6,	$24
	smpsReturn

Mus91_Call05:
	smpsCall	Mus91_Call1C
	dc.b		nG6,	$12,	nA6,	$06,	nG6,	$12,	nE6,	$0C
	smpsCall	Mus91_Call1C
	dc.b		nG6,	$30,	nRst,	$06
	smpsReturn

Mus91_Call1C:
	dc.b		nG6,	$1E,	nE6,	$06,	nC6,	nC7,	nBb6,	$0C
	dc.b		nC7,	$06,	nBb6,	$0C,	nG6,	$06,	nBb6,	nA6
	dc.b		$24,	nE6,	$06,	nF6
	smpsReturn

Mus91_Call13:
	dc.b		nRst,	$03,	nE6,	nC6,	$06,	$06,	nG5,	nC6
	dc.b		$09,	nE6,	$09,	nRst,	$06,	nRst,	$03,	nF6
	dc.b		nCs6,	$06,	$06,	nBb5,	nCs6,	$09,	nF6,	$09
	dc.b		nRst,	$06,	nRst,	$03,	nE6,	nC6,	$06,	$06
	dc.b		nA5,	nC6,	$09,	nE6,	$0F,	nD6,	$0C
	smpsReturn

Mus91_Voices:
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$80;			Voice 00
	dc.b		$2C,$72,$78,$34,$34,$1F,$12,$1F,$12,$00,$0A,$00,$0A,$00,$00,$00
	dc.b		$00,$0F,$1F,$0F,$1F,$16,$80,$17,$80;			Voice 01
	dc.b		$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$80,$17,$80;			Voice 02
	dc.b		$04,$72,$42,$32,$32,$12,$12,$12,$12,$00,$08,$00,$08,$00,$08,$00
	dc.b		$08,$0F,$1F,$0F,$1F,$23,$80,$23,$80;			Voice 03
	dc.b		$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$07,$00,$07,$00,$07,$00
	dc.b		$07,$00,$38,$00,$38,$16,$80,$17,$80;			Voice 04
	dc.b		$31,$34,$35,$30,$31,$DF,$DF,$9F,$9F,$0C,$07,$0C,$09,$07,$07,$07
	dc.b		$08,$2F,$1F,$1F,$2F,$17,$32,$14,$80;			Voice 05
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$2C,$22,$14,$80;			Voice 06
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$80,$16,$80;			Voice 07
	dc.b		$22,$0A,$13,$05,$11,$03,$12,$12,$11,$00,$13,$13,$00,$03,$02,$02
	dc.b		$01,$1F,$1F,$0F,$0F,$1E,$18,$26,$81;			Voice 08
	dc.b		$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,$04,$09,$04,$03,$03,$01,$03
	dc.b		$00,$1F,$0F,$0F,$AF,$21,$47,$31,$80;			Voice 09
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 0A
	dc.b		$34,$33,$41,$7E,$74,$5B,$9F,$5F,$1F,$04,$07,$07,$08,$00,$00,$00
	dc.b		$00,$FF,$FF,$EF,$FF,$23,$90,$29,$97;			Voice 0B
	dc.b		$04,$72,$42,$32,$32,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$00,$07,$00,$07,$23,$80,$23,$80;			Voice 0C
	dc.b		$3C,$38,$74,$76,$33,$10,$10,$10,$10,$02,$07,$04,$07,$03,$09,$03
	dc.b		$09,$2F,$2F,$2F,$2F,$1E,$80,$1E,$80;			Voice 0D
	dc.b		$F4,$06,$04,$0F,$0E,$1F,$1F,$1F,$1F,$00,$00,$0B,$0B,$00,$00,$05
	dc.b		$08,$0F,$0F,$FF,$FF,$15,$85,$02,$8A;			Voice 0E
	dc.b		$29,$36,$74,$71,$31,$04,$04,$05,$1D,$12,$0E,$1F,$1F,$04,$06,$03
	dc.b		$01,$5F,$6F,$0F,$0F,$27,$27,$2E,$80;			Voice 0F
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 10
	dc.b		$3D,$01,$01,$01,$01,$8E,$52,$14,$4C,$08,$08,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$1F,$1F,$1F,$1B,$80,$80,$9B;			Voice 11
	dc.b		$3D,$01,$02,$00,$01,$1F,$0E,$0E,$0E,$07,$1F,$1F,$1F,$00,$00,$00
	dc.b		$00,$1F,$0F,$0F,$0F,$17,$8D,$8C,$8C;			Voice 12
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$10,$07,$10,$07,$1A,$80,$16,$80;			Voice 13
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$32,$22,$14,$80;			Voice 14
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$5F,$0F,$0F,$2F,$18,$22,$18,$80;			Voice 15
	dc.b		$2C,$74,$74,$34,$34,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$80,$17,$80;			Voice 16
	dc.b		$04,$37,$72,$77,$49,$1F,$1F,$1F,$1F,$07,$0A,$07,$0D,$00,$00,$00
	dc.b		$00,$10,$07,$10,$07,$23,$80,$23,$80;			Voice 17
	dc.b		$3D,$01,$02,$02,$02,$14,$0E,$8C,$0E,$08,$05,$02,$05,$00,$00,$00
	dc.b		$00,$1F,$1F,$1F,$1F,$1A,$80,$80,$80;			Voice 18
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$2F,$1F,$1F,$FF,$19,$37,$13,$80;			Voice 19
	dc.b		$3A,$51,$08,$51,$02,$1E,$1E,$1E,$10,$1F,$1F,$1F,$0F,$00,$00,$00
	dc.b		$02,$0F,$0F,$0F,$1F,$18,$24,$22,$81;			Voice 1A
	dc.b		$3A,$32,$56,$32,$42,$8D,$4F,$15,$52,$06,$08,$07,$04,$02,$00,$00
	dc.b		$00,$1F,$1F,$2F,$2F,$19,$20,$2A,$80;			Voice 1B
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 1C
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 1D
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 1E
	dc.b		$36,$0F,$01,$01,$01,$1F,$1F,$1F,$1F,$12,$11,$0E,$00,$00,$0A,$07
	dc.b		$09,$FF,$0F,$1F,$0F,$18,$80,$80,$80;			Voice 1F
	dc.b		$3A,$03,$19,$01,$53,$1F,$DF,$1F,$9F,$0C,$02,$0C,$05,$04,$04,$04
	dc.b		$07,$1F,$FF,$0F,$2F,$1D,$36,$1B,$80;			Voice 20
	dc.b		$00;			Voice 21
	even
