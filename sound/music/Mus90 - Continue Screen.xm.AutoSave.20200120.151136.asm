; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Sun Mar 1 2020, 08:55:03
; -------------------------------------------------------

MusContinueScreenxmAutoSave_Header:
	smpsHeaderVoice	MusContinueScreenxmAutoSave_Voices
	smpsHeaderChan	6,3
	smpsHeaderTempo	$0, $1
	smpsHeaderDAC	MusContinueScreenxmAutoSave_DAC
	smpsHeaderFM	MusContinueScreenxmAutoSave_FM1,	$0, $10
	smpsHeaderFM	MusContinueScreenxmAutoSave_FM2,	$0, $10
	smpsHeaderFM	MusContinueScreenxmAutoSave_FM3,	$0, $10
	smpsHeaderFM	MusContinueScreenxmAutoSave_FM4,	$0, $10
	smpsHeaderFM	MusContinueScreenxmAutoSave_FM5,	$0, $10
	smpsHeaderPSG	MusContinueScreenxmAutoSave_PSG1,	$dc, $2, $0
	smpsHeaderPSG	MusContinueScreenxmAutoSave_PSG2,	$dc, $2, $0
	smpsHeaderPSG	MusContinueScreenxmAutoSave_PSG3,	$dc, $2, $0

MusContinueScreenxmAutoSave_FM1:
	smpsCall	MusContinueScreenxmAutoSave_FM1_p0
	smpsJump	MusContinueScreenxmAutoSave_FM1

MusContinueScreenxmAutoSave_FM2:
	smpsCall	MusContinueScreenxmAutoSave_FM2_p0
	smpsJump	MusContinueScreenxmAutoSave_FM2

MusContinueScreenxmAutoSave_FM3:
	smpsCall	MusContinueScreenxmAutoSave_FM3_p0
	smpsJump	MusContinueScreenxmAutoSave_FM3

MusContinueScreenxmAutoSave_FM4:
	smpsCall	MusContinueScreenxmAutoSave_FM4_p0
	smpsJump	MusContinueScreenxmAutoSave_FM4

MusContinueScreenxmAutoSave_FM5:
	smpsCall	MusContinueScreenxmAutoSave_FM5_p0
	smpsJump	MusContinueScreenxmAutoSave_FM5

MusContinueScreenxmAutoSave_PSG1:
	smpsCall	