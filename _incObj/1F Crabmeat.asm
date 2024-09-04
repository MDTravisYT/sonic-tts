; ---------------------------------------------------------------------------
; Object 1F - Crabmeat enemy (GHZ, SYZ)
; ---------------------------------------------------------------------------

Crabmeat:
        move.l    #Map_Crab,obMap(a0)
        move.w    #$4442,obGfx(a0)
        move.b    #4,obRender(a0)
        move.b    #$13,obActWid(a0)
        move.b    #4,obPriority(a0)
        bsr.w    DisplaySprite
 ;       out_of_range    DeleteObject
        rts