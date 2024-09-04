Pylon:    ; Routine 0
                move.l    #Map_Pylon,obMap(a0)
                move.w    #$83CC,obGfx(a0)
        move.b    #$10,obActWid(a0)
        tst.b   obSubtype(a0)
        bne.s   GHZRock
        bra.w   Tree_Display
;SLZPylon:
        ;move.l    #Map_Pylon,obMap(a0)
        ;move.w    #$83CC,obGfx(a0)
        ;move.b    #$10,obActWid(a0)
        ;bra.w   Pyl_Display
GHZRock:
    move.b    #1,obPriority(a0)
            move.b  #2,obFrame(a0)
        bra.w   Rock_Display


Tree_Display:    ; Routine 2
            move.l    (v_screenposx).w,d1
            add.l    d1,d1
        swap    d1
        neg.w    d1
        move.w    d1,obX(a0)
        add.l    d1,d1
        swap    d1
        andi.w    #$3F,d1
        neg.w    d1
        addi.w    #$100,d1
        move.w    d1,obScreenY(a0)
        bra.w    DisplaySprite
        rts
Rock_Display:    ; Routine 2
            move.l    (v_screenposx).w,d1
        add.l    d1,d1
                add.l    d1,d1
        swap    d1
        neg.w    d1
        move.w    d1,obX(a0)
        add.l    d1,d1
        swap    d1
        andi.w    #$3F,d1
        neg.w    d1
        addi.w    #$100,d1
        move.w    d1,obScreenY(a0)
        bra.w    DisplaySprite