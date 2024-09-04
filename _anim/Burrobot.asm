; ---------------------------------------------------------------------------
; Animation script - Burrobot enemy
; ---------------------------------------------------------------------------
Ani_Burro:	dc.w @walk1-Ani_Burro
		dc.w @walk2-Ani_Burro
		dc.w @digging-Ani_Burro
		dc.w @fall-Ani_Burro
@walk1:		dc.b 8,	0, afEnd
@walk2:		dc.b 15, 1, 0, 2, 0, afEnd
@digging:	dc.b 8, 3, afEnd
@fall:		dc.b 8, 3, afEnd
@dead:		dc.b 4,	4, 5, afEnd
		even