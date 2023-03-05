
	SECTION code_user
	PUBLIC	PLY_AKM_INIT
	PUBLIC	PLY_AKM_START
	PUBLIC	PLY_AKM_PLAY
	PUBLIC	PLY_AKM_STOP

.PLY_AKM_REGISTERS_OFFSETVOLUME equ $+1
.PLY_AKM_DATA_OFFSETTRANSPOSITION equ $+1
.PLY_AKM_STOP_SOUNDS equ $+1
.PLY_AKM_USE_HOOKS equ $+1
.PLY_AKM_DATA_OFFSETPTSTARTTRACK equ $+2
.PLY_AKM_START
.PLY_AKM_DATA_OFFSETWAITEMPTYCELL
.PLY_AKM_OFFSET2B
.PLY_AKM_OFFSET1B jp PLY_AKM_INIT
.PLY_AKM_DATA_OFFSETPTTRACK equ $+1
.PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB equ $+2
    jp PLY_AKM_PLAY
.PLY_AKM_DATA_OFFSETESCAPENOTE equ $+1
.PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT equ $+2
.PLY_AKM_DATA_OFFSETBASENOTE jp PLY_AKM_INITVARS_END
.PLY_AKM_DATA_OFFSETPTINSTRUMENT equ $+1
.PLY_AKM_INIT
.PLY_AKM_DATA_OFFSETESCAPEWAIT
.PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT
.PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB ld de,PLY_AKM_PTINSTRUMENTS
.PLY_AKM_DATA_OFFSETINSTRUMENTSPEED equ $+1
.PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP ldi
.PLY_AKM_DATA_OFFSETISPITCHUPDOWNUSED equ $+1
.PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME ldi
.PLY_AKM_DATA_OFFSETTRACKPITCHDECIMAL equ $+2
.PLY_AKM_DATA_OFFSETTRACKPITCHINTEGER ld de,PLY_AKM_PTARPEGGIOS
.PLY_AKM_DATA_OFFSETTRACKPITCHSPEED ldi
.PLY_AKM_DATA_OFFSETPTARPEGGIOTABLE equ $+1
.PLY_AKM_DATA_OFFSETISARPEGGIOTABLEUSED ldi
.PLY_AKM_DATA_OFFSETPTARPEGGIOOFFSET equ $+1
.PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSTEP equ $+2
    ld de,PLY_AKM_PTPITCHES
.PLY_AKM_DATA_OFFSETARPEGGIOORIGINALSPEED equ $+1
.PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSPEED ldi
.PLY_AKM_DATA_OFFSETISPITCHTABLEUSED equ $+1
.PLY_AKM_DATA_OFFSETCURRENTARPEGGIOVALUE ldi
.PLY_AKM_DATA_OFFSETPTPITCHTABLE add a,a
    ld e,a
.PLY_AKM_DATA_OFFSETPITCHCURRENTSTEP equ $+1
.PLY_AKM_DATA_OFFSETPTPITCHOFFSET ld d,0
.PLY_AKM_DATA_OFFSETPITCHCURRENTSPEED add hl,de
.PLY_AKM_DATA_OFFSETPITCHORIGINALSPEED ld a,(hl)
.PLY_AKM_DATA_OFFSETCURRENTPITCHTABLEVALUE inc hl
    ld h,(hl)
    ld l,a
    ld ix,PLY_AKM_INITVARS_START
    ld a,13
.PLY_AKM_INITVARS_LOOP ld e,(ix+0)
    ld d,(ix+1)
    inc ix
    inc ix
    ldi
    dec a
    jr nz,PLY_AKM_INITVARS_LOOP
    ld (PLY_AKM_PATTERNREMAININGHEIGHT),a
    ex de,hl
    ld hl,PLY_AKM_PTLINKER
    ld (hl),e
    inc hl
    ld (hl),d
    ld hl,PLY_AKM_TRACK1_WAITEMPTYCELL
    ld de,PLY_AKM_TRACK1_TRANSPOSITION
    ld bc,113
    ld (hl),a
    ldir
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
    ld a,(PLY_AKM_SPEED)
    dec a
    ld (PLY_AKM_TICKCOUNTER),a
    ld hl,(PLY_AKM_PTINSTRUMENTS)
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc de
    ld (PLY_AKM_TRACK1_PTINSTRUMENT),de
    ld (PLY_AKM_TRACK2_PTINSTRUMENT),de
    ld (PLY_AKM_TRACK3_PTINSTRUMENT),de
    ld ix,PLY_AKM_REGISTERSFORROM
    ld iy,PLY_AKM_TRACK1_REGISTERS
    ld bc,PLY_AKM_SENDPSGREGISTER
    ld de,4
.PLY_AKM_INITROM_LOOP ld a,(ix+0)
    ld h,a
    inc ix
    and 63
    ld (iy+0),a
    ld (iy+1),0
    ld a,h
    and 192
    jr nz,PLY_AKM_INITROM_SPECIAL
    ld (iy+2),c
    ld (iy+3),b
    add iy,de
    jr PLY_AKM_INITROM_LOOP
.PLY_AKM_INITROM_SPECIAL rl h
    jr c,PLY_AKM_INITROM_WRITEENDCODE
    ld bc,PLY_AKM_SENDPSGREGISTERR13
    ld (iy+2),c
    ld (iy+3),b
    ld bc,PLY_AKM_SENDPSGREGISTERAFTERPOP
    ld (iy+4),c
    ld (iy+5),b
    add iy,de
.PLY_AKM_INITROM_WRITEENDCODE ld bc,PLY_AKM_SENDPSGREGISTEREND
    ld (iy+2),c
    ld (iy+3),b
    ret 
.PLY_AKM_REGISTERSFORROM db 8
    db 0
    db 1
    db 9
    db 2
    db 3
    db 10
    db 4
    db 5
    db 6
.PLY_AKM_ROM_BUFFERSIZE db 7
    db 11
    db 76
.PLY_AKM_INITVARS_START dw PLY_AKM_NOTEINDEXTABLE
    dw PLY_AKM_NOTEINDEXTABLE+1
    dw PLY_AKM_TRACKINDEX
    dw PLY_AKM_TRACKINDEX+1
    dw PLY_AKM_SPEED
    dw PLY_AKM_PRIMARYINSTRUMENT
    dw PLY_AKM_SECONDARYINSTRUMENT
    dw PLY_AKM_PRIMARYWAIT
    dw PLY_AKM_SECONDARYWAIT
    dw PLY_AKM_DEFAULTSTARTNOTEINTRACKS
    dw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS
    dw PLY_AKM_DEFAULTSTARTWAITINTRACKS
    dw PLY_AKM_FLAGNOTEANDEFFECTINCELL
.PLY_AKM_INITVARS_END
.PLY_AKM_STOP ld (PLY_AKM_SAVESP),sp
    xor a
    ld (PLY_AKM_TRACK1_VOLUME),a
    ld (PLY_AKM_TRACK2_VOLUME),a
    ld (PLY_AKM_TRACK3_VOLUME),a
    ld a,191
    ld (PLY_AKM_MIXERREGISTER),a
    jp PLY_AKM_SENDPSG
.PLY_AKM_PLAY ld (PLY_AKM_SAVESP),sp
    ld a,(PLY_AKM_SPEED)
    ld b,a
    ld a,(PLY_AKM_TICKCOUNTER)
    inc a
    cp b
    jp nz,PLY_AKM_TICKCOUNTERMANAGED
    ld a,(PLY_AKM_PATTERNREMAININGHEIGHT)
    sub 1
    jr c,PLY_AKM_LINKER
    ld (PLY_AKM_PATTERNREMAININGHEIGHT),a
    jr PLY_AKM_READLINE
.PLY_AKM_LINKER ld de,(PLY_AKM_TRACKINDEX)
    exx
    ld hl,(PLY_AKM_PTLINKER)
.PLY_AKM_LINKERPOSTPT xor a
    ld (PLY_AKM_TRACK1_WAITEMPTYCELL),a
    ld (PLY_AKM_TRACK2_WAITEMPTYCELL),a
    ld (PLY_AKM_TRACK3_WAITEMPTYCELL),a
    ld a,(PLY_AKM_DEFAULTSTARTNOTEINTRACKS)
    ld (PLY_AKM_TRACK1_ESCAPENOTE),a
    ld (PLY_AKM_TRACK2_ESCAPENOTE),a
    ld (PLY_AKM_TRACK3_ESCAPENOTE),a
    ld a,(PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS)
    ld (PLY_AKM_TRACK1_ESCAPEINSTRUMENT),a
    ld (PLY_AKM_TRACK2_ESCAPEINSTRUMENT),a
    ld (PLY_AKM_TRACK3_ESCAPEINSTRUMENT),a
    ld a,(PLY_AKM_DEFAULTSTARTWAITINTRACKS)
    ld (PLY_AKM_TRACK1_ESCAPEWAIT),a
    ld (PLY_AKM_TRACK2_ESCAPEWAIT),a
    ld (PLY_AKM_TRACK3_ESCAPEWAIT),a
    ld b,(hl)
    inc hl
    rr b
    jr nc,PLY_AKM_LINKERAFTERSPEEDCHANGE
    ld a,(hl)
    inc hl
    or a
    jr nz,PLY_AKM_LINKERSPEEDCHANGE
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jr PLY_AKM_LINKERPOSTPT
.PLY_AKM_LINKERSPEEDCHANGE ld (PLY_AKM_SPEED),a
.PLY_AKM_LINKERAFTERSPEEDCHANGE rr b
    jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
    ld a,(hl)
    inc hl
    ld (PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT),a
    jr PLY_AKM_LINKERSETREMAININGHEIGHT
.PLY_AKM_LINKERUSEPREVIOUSHEIGHT ld a,(PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT)
.PLY_AKM_LINKERSETREMAININGHEIGHT ld (PLY_AKM_PATTERNREMAININGHEIGHT),a
    ld ix,PLY_AKM_TRACK1_WAITEMPTYCELL
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,PLY_AKM_TRACK2_WAITEMPTYCELL
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,PLY_AKM_TRACK3_WAITEMPTYCELL
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld (PLY_AKM_PTLINKER),hl
.PLY_AKM_READLINE ld de,(PLY_AKM_PTINSTRUMENTS)
    ld bc,(PLY_AKM_NOTEINDEXTABLE)
    exx
    ld ix,PLY_AKM_TRACK1_WAITEMPTYCELL
    call PLY_AKM_READTRACK
    ld ix,PLY_AKM_TRACK2_WAITEMPTYCELL
    call PLY_AKM_READTRACK
    ld ix,PLY_AKM_TRACK3_WAITEMPTYCELL
    call PLY_AKM_READTRACK
    xor a
.PLY_AKM_TICKCOUNTERMANAGED ld (PLY_AKM_TICKCOUNTER),a
    ld de,PLY_AKM_PERIODTABLE
    exx
    ld c,224
    ld ix,PLY_AKM_TRACK1_WAITEMPTYCELL
    call PLY_AKM_MANAGEEFFECTS
    ld iy,PLY_AKM_TRACK1_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    srl c
    ld ix,PLY_AKM_TRACK2_WAITEMPTYCELL
    call PLY_AKM_MANAGEEFFECTS
    ld iy,PLY_AKM_TRACK2_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    scf
    rr c
    ld ix,PLY_AKM_TRACK3_WAITEMPTYCELL
    call PLY_AKM_MANAGEEFFECTS
    ld iy,PLY_AKM_TRACK3_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    ld a,c
    ld (PLY_AKM_MIXERREGISTER),a
.PLY_AKM_SENDPSG ld sp,PLY_AKM_TRACK1_REGISTERS
.PLY_AKM_SENDPSGREGISTER pop hl
.PLY_AKM_SENDPSGREGISTERAFTERPOP ld a,l
    out (160),a
    ld a,h
    out (161),a
    ret 
.PLY_AKM_SENDPSGREGISTERR13 ld a,(PLY_AKM_SETREG13OLD)
    ld b,a
    ld a,(PLY_AKM_SETREG13)
    cp b
    jr z,PLY_AKM_SENDPSGREGISTEREND
    ld (PLY_AKM_SETREG13OLD),a
    ld h,a
    ld l,13
    ret 
.PLY_AKM_SENDPSGREGISTEREND ld sp,(PLY_AKM_SAVESP)
    ret 
.PLY_AKM_CHECKTRANSPOSITIONANDTRACK rr b
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION
    ld a,(hl)
    ld (ix+1),a
    inc hl
.PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION rr b
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK
    ld a,(hl)
    inc hl
    sla a
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET
    exx
    ld l,a
    ld h,0
    add hl,de
    ld a,(hl)
    ld (ix+2),a
    ld (ix+4),a
    inc hl
    ld a,(hl)
    ld (ix+3),a
    ld (ix+5),a
    exx
    ret 
.PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET rra 
    ld d,a
    ld e,(hl)
    inc hl
    ld c,l
    ld a,h
    add hl,de
    ld (ix+2),l
    ld (ix+3),h
    ld (ix+4),l
    ld (ix+5),h
    ld l,c
    ld h,a
    ret 
.PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK ld a,(ix+2)
    ld (ix+4),a
    ld a,(ix+3)
    ld (ix+5),a
    ret 
.PLY_AKM_READTRACK ld a,(ix+0)
    sub 1
    jr c,PLY_AKM_RT_NOEMPTYCELL
    ld (ix+0),a
    ret 
.PLY_AKM_RT_NOEMPTYCELL ld l,(ix+4)
    ld h,(ix+5)
.PLY_AKM_RT_GETDATABYTE ld b,(hl)
    inc hl
    ld a,(PLY_AKM_FLAGNOTEANDEFFECTINCELL)
    ld c,a
    ld a,b
    and 15
    cp c
    jr c,PLY_AKM_RT_NOTEREFERENCE
    sub 12
    jr z,PLY_AKM_RT_NOTEANDEFFECTS
    dec a
    jr z,PLY_AKM_RT_NONOTEMAYBEEFFECTS
    dec a
    jr z,PLY_AKM_RT_NEWESCAPENOTE
    ld a,(ix+7)
    jr PLY_AKM_RT_AFTERNOTEREAD
.PLY_AKM_RT_NEWESCAPENOTE ld a,(hl)
    ld (ix+7),a
    inc hl
    jr PLY_AKM_RT_AFTERNOTEREAD
.PLY_AKM_RT_NOTEANDEFFECTS dec a
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
    jr PLY_AKM_RT_GETDATABYTE
.PLY_AKM_RT_NONOTEMAYBEEFFECTS bit 4,b
    jr z,PLY_AKM_RT_READWAITFLAGS
    ld a,b
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
    jr PLY_AKM_RT_READWAITFLAGS
.PLY_AKM_RT_NOTEREFERENCE exx
    ld l,a
    ld h,0
    add hl,bc
    ld a,(hl)
    exx
.PLY_AKM_RT_AFTERNOTEREAD add a,(ix+1)
    ld (ix+6),a
    ld a,b
    and 48
    jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
    cp 16
    jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
    cp 32
    jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
    ld a,(hl)
    inc hl
    ld (ix+8),a
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
.PLY_AKM_RT_SAMEESCAPEINSTRUMENT ld a,(ix+8)
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
.PLY_AKM_RT_SECONDARYINSTRUMENT ld a,(PLY_AKM_SECONDARYINSTRUMENT)
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
.PLY_AKM_RT_PRIMARYINSTRUMENT ld a,(PLY_AKM_PRIMARYINSTRUMENT)
.PLY_AKM_RT_STORECURRENTINSTRUMENT exx
    add a,a
    ld l,a
    ld h,0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld (ix+13),a
    ld (ix+10),l
    ld (ix+11),h
    exx
    xor a
    ld (ix+12),a
    ld (ix+15),a
    ld (ix+16),a
    ld (ix+17),a
    ld (ix+24),a
    ld (ix+25),a
    ld a,(ix+27)
    ld (ix+26),a
    ld (ix+32),a
    ld (ix+33),a
    ld a,(ix+35)
    ld (ix+34),a
.PLY_AKM_RT_READWAITFLAGS ld a,b
    and 192
    jr z,PLY_AKM_RT_SAMEESCAPEWAIT
    cp 64
    jr z,PLY_AKM_RT_PRIMARYWAIT
    cp 128
    jr z,PLY_AKM_RT_SECONDARYWAIT
    ld a,(hl)
    inc hl
    ld (ix+9),a
    jr PLY_AKM_RT_STORECURRENTWAIT
.PLY_AKM_RT_SAMEESCAPEWAIT ld a,(ix+9)
    jr PLY_AKM_RT_STORECURRENTWAIT
.PLY_AKM_RT_PRIMARYWAIT ld a,(PLY_AKM_PRIMARYWAIT)
    jr PLY_AKM_RT_STORECURRENTWAIT
.PLY_AKM_RT_SECONDARYWAIT ld a,(PLY_AKM_SECONDARYWAIT)
.PLY_AKM_RT_STORECURRENTWAIT ld (ix+0),a
    ld a,(PLY_AKM_RT_READEFFECTSFLAG)
    or a
    jr nz,PLY_AKM_RT_READEFFECTS
.PLY_AKM_RT_AFTEREFFECTS ld (ix+4),l
    ld (ix+5),h
    ret 
.PLY_AKM_RT_READEFFECTS xor a
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
.PLY_AKM_RT_READEFFECT ld iy,PLY_AKM_EFFECTTABLE
    ld b,(hl)
    ld a,b
    inc hl
    and 14
    ld e,a
    ld d,0
    add iy,de
    ld a,b
    rra 
    rra 
    rra 
    rra 
    and 15
    jp (iy)
.PLY_AKM_RT_READEFFECT_RETURN bit 0,b
    jr nz,PLY_AKM_RT_READEFFECT
    jr PLY_AKM_RT_AFTEREFFECTS
.PLY_AKM_RT_WAITLONG ld a,(hl)
    inc hl
    ld (ix+0),a
    jr PLY_AKM_RT_CELLREAD
.PLY_AKM_RT_WAITSHORT ld a,b
    rlca 
    rlca 
    and 3
    ld (ix+0),a
.PLY_AKM_RT_CELLREAD ld (ix+4),l
    ld (ix+5),h
    ret 
.PLY_AKM_MANAGEEFFECTS ld a,(ix+15)
    or a
    jr z,PLY_AKM_ME_PITCHUPDOWNFINISHED
    ld l,(ix+18)
    ld h,(ix+16)
    ld e,(ix+19)
    ld d,(ix+20)
    ld a,(ix+17)
    bit 7,d
    jr nz,PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED
.PLY_AKM_ME_PITCHUPDOWN_POSITIVESPEED add hl,de
    adc a,0
    jr PLY_AKM_ME_PITCHUPDOWN_SAVE
.PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED res 7,d
    or a
    sbc hl,de
    sbc a,0
.PLY_AKM_ME_PITCHUPDOWN_SAVE ld (ix+17),a
    ld (ix+18),l
    ld (ix+16),h
.PLY_AKM_ME_PITCHUPDOWNFINISHED ld a,(ix+21)
    or a
    jr z,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
    ld e,(ix+22)
    ld d,(ix+23)
    ld l,(ix+24)
    ld h,0
    add hl,de
    ld a,(hl)
    sra a
    ld (ix+28),a
    ld a,(ix+25)
    cp (ix+26)
    jr c,PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED
    ld (ix+25),0
    inc (ix+24)
    inc hl
    ld a,(hl)
    rra 
    jr nc,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
    ld l,a
    ld (ix+24),a
    jr PLY_AKM_ME_ARPEGGIOTABLEFINISHED
.PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED inc a
    ld (ix+25),a
.PLY_AKM_ME_ARPEGGIOTABLEFINISHED ld a,(ix+29)
    or a
    ret z
    ld l,(ix+30)
    ld h,(ix+31)
    ld e,(ix+32)
    ld d,0
    add hl,de
    ld a,(hl)
    sra a
    jp p,PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE
    dec d
.PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE ld (ix+36),a
    ld (ix+37),d
    ld a,(ix+33)
    cp (ix+34)
    jr c,PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED
    ld (ix+33),0
    inc (ix+32)
    inc hl
    ld a,(hl)
    rra 
    ret nc
    ld l,a
    ld (ix+32),a
    ret 
.PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED inc a
    ld (ix+33),a
    ret 
.PLY_AKM_PLAYSOUNDSTREAM ld l,(ix+10)
    ld h,(ix+11)
.PLY_AKM_PSS_READFIRSTBYTE ld a,(hl)
    ld b,a
    inc hl
    rra 
    jr c,PLY_AKM_PSS_SOFTORSOFTANDHARD
    rra 
    jr c,PLY_AKM_PSS_SOFTWARETOHARDWARE
    rra 
    jr nc,PLY_AKM_PSS_NSNH_NOTENDOFSOUND
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld (ix+10),l
    ld (ix+11),h
    jr PLY_AKM_PSS_READFIRSTBYTE
.PLY_AKM_PSS_NSNH_NOTENDOFSOUND
    set 2,c
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld (iy+1),a
    rl b
    call c,PLY_AKM_PSS_READNOISE
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
.PLY_AKM_PSS_SOFTORSOFTANDHARD rra 
    jr c,PLY_AKM_PSS_SOFTANDHARD
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld (iy+1),a
    ld d,0
    rl b
    jr nc,PLY_AKM_PSS_S_AFTERARPANDORNOISE
    ld a,(hl)
    inc hl
    sra a
    ld d,a
    call c,PLY_AKM_PSS_READNOISE
.PLY_AKM_PSS_S_AFTERARPANDORNOISE ld a,d
    call PLY_AKM_CALCULATEPERIODFORBASENOTE
    rl b
    call c,PLY_AKM_READPITCHANDADDTOPERIOD
    exx
    ld (iy+5),l
    ld (iy+9),h
    exx
.PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER ld a,(ix+12)
    cp (ix+13)
    jr nc,PLY_AKM_PSS_S_SPEEDREACHED
    inc (ix+12)
    ret 
.PLY_AKM_PSS_S_SPEEDREACHED ld (ix+10),l
    ld (ix+11),h
    ld (ix+12),0
    ret 
.PLY_AKM_PSS_SOFTANDHARD call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
.PLY_AKM_PSS_SOFTWARETOHARDWARE call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,b
    rlca 
    rlca 
    rlca 
    rlca 
    and 7
    exx
    jr z,PLY_AKM_PSS_STH_RATIOEND
.PLY_AKM_PSS_STH_RATIOLOOP srl h
    rr l
    dec a
    jr nz,PLY_AKM_PSS_STH_RATIOLOOP
    jr nc,PLY_AKM_PSS_STH_RATIOEND
    inc hl
.PLY_AKM_PSS_STH_RATIOEND ld a,l
    ld (PLY_AKM_REG11),a
    ld a,h
    ld (PLY_AKM_REG12),a
    exx
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
.PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV and 2
    add a,8
    ld (PLY_AKM_SETREG13),a
    ld (iy+1),16
    xor a
    bit 7,b
    jr z,PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO
    ld a,(hl)
    inc hl
.PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO call PLY_AKM_CALCULATEPERIODFORBASENOTE
    bit 2,b
    call nz,PLY_AKM_READPITCHANDADDTOPERIOD
    exx
    ld (iy+5),l
    ld (iy+9),h
    exx
    ret 
.PLY_AKM_PSS_SHARED_ADJUSTVOLUME and 15
    sub (ix+14)
    ret nc
    xor a
    ret 
.PLY_AKM_PSS_READNOISE ld a,(hl)
    inc hl
    ld (PLY_AKM_NOISEREGISTER),a
    res 5,c
    ret 
.PLY_AKM_CALCULATEPERIODFORBASENOTE exx
    ld h,0
    add a,(ix+6)
    add a,(ix+28)
    ld bc,65292
.PLY_AKM_FINDOCTAVE_LOOP inc b
    sub c
    jr nc,PLY_AKM_FINDOCTAVE_LOOP
    add a,c
    add a,a
    ld l,a
    ld h,0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,b
    or a
    jr z,PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED
.PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP srl h
    rr l
    djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
.PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED jr nc,PLY_AKM_FINDOCTAVE_FINISHED
    inc hl
.PLY_AKM_FINDOCTAVE_FINISHED ld a,(ix+29)
    or a
    jr z,PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE
    ld c,(ix+36)
    ld b,(ix+37)
    add hl,bc
.PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE ld c,(ix+16)
    ld b,(ix+17)
    add hl,bc
    exx
    ret 
.PLY_AKM_READPITCHANDADDTOPERIOD ld a,(hl)
    inc hl
    exx
    ld c,a
    exx
    ld a,(hl)
    inc hl
    exx
    ld b,a
    add hl,bc
    exx
    ret 
.PLY_AKM_EFFECTRESETWITHVOLUME ld (ix+14),a
    xor a
    ld (ix+15),a
    ld (ix+21),a
    ld (ix+28),a
    ld (ix+29),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTVOLUME ld (ix+14),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTFORCEINSTRUMENTSPEED call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+13),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTFORCEPITCHSPEED call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+34),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTFORCEARPEGGIOSPEED call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+26),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTTABLE jr PLY_AKM_EFFECTRESETWITHVOLUME
    jr PLY_AKM_EFFECTVOLUME
    jr PLY_AKM_EFFECTPITCHUPDOWN
    jr PLY_AKM_EFFECTARPEGGIOTABLE
    jr PLY_AKM_EFFECTPITCHTABLE
    jr PLY_AKM_EFFECTFORCEINSTRUMENTSPEED
    jr PLY_AKM_EFFECTFORCEARPEGGIOSPEED
    jr PLY_AKM_EFFECTFORCEPITCHSPEED
.PLY_AKM_EFFECTPITCHUPDOWN rra 
    jr nc,PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED
    ld (ix+15),255
    ld a,(hl)
    inc hl
    ld (ix+19),a
    ld a,(hl)
    inc hl
    ld (ix+20),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED ld (ix+15),0
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTARPEGGIOTABLE call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+21),a
    or a
    jr z,PLY_AKM_EFFECTARPEGGIOTABLE_STOP
    add a,a
    exx
    ld l,a
    ld h,0
    ld bc,(PLY_AKM_PTARPEGGIOS)
    add hl,bc
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld (ix+27),a
    ld (ix+26),a
    ld (ix+22),l
    ld (ix+23),h
    ld bc,(PLY_AKM_NOTEINDEXTABLE)
    exx
    xor a
    ld (ix+24),a
    ld (ix+25),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTARPEGGIOTABLE_STOP ld (ix+28),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTPITCHTABLE call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+29),a
    or a
    jp z,PLY_AKM_RT_READEFFECT_RETURN
    add a,a
    exx
    ld l,a
    ld h,0
    ld bc,(PLY_AKM_PTPITCHES)
    add hl,bc
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld (ix+35),a
    ld (ix+34),a
    ld (ix+30),l
    ld (ix+31),h
    ld bc,(PLY_AKM_NOTEINDEXTABLE)
    exx
    xor a
    ld (ix+32),a
    ld (ix+33),a
    jp PLY_AKM_RT_READEFFECT_RETURN
.PLY_AKM_EFFECTREADIFESCAPE cp 15
    ret c
    ld a,(hl)
    inc hl
    ret 
.PLY_AKM_PERIODTABLE dw 6778
    dw 6398
    dw 6039
    dw 5700
    dw 5380
    dw 5078
    dw 4793
    dw 4524
    dw 4270
    dw 4030
    dw 3804
    dw 3591





SECTION bss_user

; Apparently we need 199 bytes
akm_vars:	defs	199



.PLY_AKM_PTINSTRUMENTS  equ akm_vars - 8192 +  8192
.PLY_AKM_PTARPEGGIOS  equ akm_vars - 8192 +  8194
.PLY_AKM_PTPITCHES  equ akm_vars - 8192 +  8196
.PLY_AKM_PTLINKER  equ akm_vars - 8192 +  8198
.PLY_AKM_NOTEINDEXTABLE  equ akm_vars - 8192 +  8200
.PLY_AKM_TRACKINDEX  equ akm_vars - 8192 +  8202
.PLY_AKM_SAVESP  equ akm_vars - 8192 +  8204
.PLY_AKM_DEFAULTSTARTNOTEINTRACKS  equ akm_vars - 8192 +  8206
.PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS  equ akm_vars - 8192 +  8207
.PLY_AKM_DEFAULTSTARTWAITINTRACKS  equ akm_vars - 8192 +  8208
.PLY_AKM_PRIMARYINSTRUMENT  equ akm_vars - 8192 +  8209
.PLY_AKM_SECONDARYINSTRUMENT  equ akm_vars - 8192 +  8210
.PLY_AKM_PRIMARYWAIT  equ akm_vars - 8192 +  8211
.PLY_AKM_SECONDARYWAIT  equ akm_vars - 8192 +  8212
.PLY_AKM_FLAGNOTEANDEFFECTINCELL  equ akm_vars - 8192 +  8213
.PLY_AKM_PATTERNREMAININGHEIGHT  equ akm_vars - 8192 +  8214
.PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT  equ akm_vars - 8192 +  8215
.PLY_AKM_SPEED  equ akm_vars - 8192 +  8216
.PLY_AKM_TICKCOUNTER  equ akm_vars - 8192 +  8217
.PLY_AKM_SETREG13OLD  equ akm_vars - 8192 +  8218
.PLY_AKM_SETREG13  equ akm_vars - 8192 +  8219
.PLY_AKM_RT_READEFFECTSFLAG  equ akm_vars - 8192 +  8220
.PLY_AKM_TRACK1_REGISTERS  equ akm_vars - 8192 +  8221
.PLY_AKM_TRACK1_VOLUME  equ akm_vars - 8192 +  8222
.PLY_AKM_TRACK2_REGISTERS  equ akm_vars - 8192 +  8233
.PLY_AKM_TRACK2_VOLUME  equ akm_vars - 8192 +  8234
.PLY_AKM_TRACK3_REGISTERS  equ akm_vars - 8192 +  8245
.PLY_AKM_TRACK3_VOLUME  equ akm_vars - 8192 +  8246
.PLY_AKM_NOISEREGISTER  equ akm_vars - 8192 +  8258
.PLY_AKM_MIXERREGISTER  equ akm_vars - 8192 +  8262
.PLY_AKM_REG11  equ akm_vars - 8192 +  8266
.PLY_AKM_REG12  equ akm_vars - 8192 +  8270
.PLY_AKM_TRACK1_WAITEMPTYCELL  equ akm_vars - 8192 +  8277
.PLY_AKM_TRACK1_TRANSPOSITION  equ akm_vars - 8192 +  8278
.PLY_AKM_TRACK1_ESCAPENOTE  equ akm_vars - 8192 +  8284
.PLY_AKM_TRACK1_ESCAPEINSTRUMENT  equ akm_vars - 8192 +  8285
.PLY_AKM_TRACK1_ESCAPEWAIT  equ akm_vars - 8192 +  8286
.PLY_AKM_TRACK1_PTINSTRUMENT  equ akm_vars - 8192 +  8287
.PLY_AKM_TRACK2_WAITEMPTYCELL  equ akm_vars - 8192 +  8315
.PLY_AKM_TRACK2_ESCAPENOTE  equ akm_vars - 8192 +  8322
.PLY_AKM_TRACK2_ESCAPEINSTRUMENT  equ akm_vars - 8192 +  8323
.PLY_AKM_TRACK2_ESCAPEWAIT  equ akm_vars - 8192 +  8324
.PLY_AKM_TRACK2_PTINSTRUMENT  equ akm_vars - 8192 +  8325
.PLY_AKM_TRACK3_WAITEMPTYCELL  equ akm_vars - 8192 +  8353
.PLY_AKM_TRACK3_ESCAPENOTE  equ akm_vars - 8192 +  8360
.PLY_AKM_TRACK3_ESCAPEINSTRUMENT  equ akm_vars - 8192 +  8361
.PLY_AKM_TRACK3_ESCAPEWAIT  equ akm_vars - 8192 +  8362
.PLY_AKM_TRACK3_PTINSTRUMENT  equ akm_vars - 8192 +  8363
