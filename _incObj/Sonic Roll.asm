; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to roll when he's moving
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Roll:
		tst.b	(f_jumponly).w
		bne.s	@noroll
		move.w	obInertia(a0),d0
		bpl.s	@ispositive
		neg.w	d0

	@ispositive:
		cmpi.w	#$80,d0		; is Sonic moving at $80 speed or faster?
		bcs.s	@noroll		; if not, branch
		move.b	(v_jpadhold2).w,d0
		andi.b	#btnL+btnR,d0	; is left/right	being pressed?
		bne.s	@noroll		; if yes, branch
		btst	#bitDn,(v_jpadhold2).w ; is down being pressed?
		bne.s	Sonic_ChkRoll	; if yes, branch

	@noroll:
		rts	
; ===========================================================================

Sonic_ChkRoll:
		btst	#2,obStatus(a0)	; is Sonic already rolling?
		beq.s	@roll		; if not, branch
		rts	
; ===========================================================================

@roll:


	@ismoving:
		rts	
; End of function Sonic_Roll