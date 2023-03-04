SECTION data_user

PUBLIC PLY_AKM_INIT
PUBLIC PLY_AKM_PLAY
PUBLIC PLY_AKM_STOP
PUBLIC PLY_AKM_INITSOUNDEFFECTS
PUBLIC PLY_AKM_PLAYSOUNDEFFECT
PUBLIC _SONG


defc PLY_AKM_REGISTERS_OFFSETVOLUME = 1
defc PLY_AKM_STOP_SOUNDS = 1
defc PLY_AKM_USE_HOOKS = 1
defc PLY_AKM_DATA_OFFSETPTSTARTTRACK = 1
defc PLY_AKM_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME = 2
PLY_AKM_START:
PLY_AKM_DATA_OFFSETWAITEMPTYCELL:
PLY_AKM_OFFSET2B:
PLY_AKM_OFFSET1B:
	jp PLY_AKM_INIT
defc PLY_AKM_SOUNDEFFECTDATA_OFFSETSPEED = 1
defc PLY_AKM_DATA_OFFSETBASENOTE = 2
defc PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB = 2
PLY_AKM_DATA_OFFSETPTTRACK:
PLY_AKM_SOUNDEFFECTDATA_OFFSETCURRENTSTEP:
	jp PLY_AKM_PLAY
defc PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT = 1
defc PLY_AKM_DATA_OFFSETESCAPEWAIT = 2
defc PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT = 2
PLY_AKM_DATA_OFFSETESCAPENOTE:
	jp PLY_AKM_INITVARS_END
defc PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP = 2
PLY_AKM_INITSOUNDEFFECTS:
PLY_AKM_DATA_OFFSETPTINSTRUMENT:
PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB:
	ld (PLY_AKM_PTSOUNDEFFECTTABLE),hl
PLY_AKM_DATA_OFFSETINSTRUMENTSPEED:
	ret 
PLY_AKM_PLAYSOUNDEFFECT:
PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME:
	dec a
defc PLY_AKM_DATA_OFFSETTRACKPITCHINTEGER = 1
PLY_AKM_DATA_OFFSETISPITCHUPDOWNUSED:
	ld hl,(PLY_AKM_PTSOUNDEFFECTTABLE)
PLY_AKM_DATA_OFFSETTRACKPITCHDECIMAL:
	ld e,a
PLY_AKM_DATA_OFFSETTRACKPITCHSPEED:
	ld d,0
PLY_AKM_DATA_OFFSETISARPEGGIOTABLEUSED:
	add hl,de
PLY_AKM_DATA_OFFSETPTARPEGGIOTABLE:
	add hl,de
    ld e,(hl)
PLY_AKM_DATA_OFFSETPTARPEGGIOOFFSET:
	inc hl
PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSTEP:
	ld d,(hl)
PLY_AKM_DATA_OFFSETARPEGGIOORIGINALSPEED:
	ld a,(de)
PLY_AKM_DATA_OFFSETCURRENTARPEGGIOVALUE:
	inc de
PLY_AKM_DATA_OFFSETISPITCHTABLEUSED:
	ex af,af'
PLY_AKM_DATA_OFFSETPTPITCHTABLE:
	ld a,b
defc PLY_AKM_DATA_OFFSETPTPITCHOFFSET = 1
defc PLY_AKM_DATA_OFFSETPITCHCURRENTSTEP = 2
    ld hl,PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
defc PLY_AKM_DATA_OFFSETCURRENTPITCHTABLEVALUE = 1
PLY_AKM_DATA_OFFSETPITCHORIGINALSPEED:
	ld b,0
    sla c
    sla c
    sla c
    add hl,bc
    ld (hl),e
    inc hl
    ld (hl),d
    inc hl
    ld (hl),a
    inc hl
    ld (hl),0
    inc hl
    ex af,af'
    ld (hl),a
    ret 
PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL:
	add a,a
    add a,a
    add a,a
    ld e,a
    ld d,0
    ld hl,PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    add hl,de
    ld (hl),d
    inc hl
    ld (hl),d
    ret 
PLY_AKM_PLAYSOUNDEFFECTSSTREAM:
	rla 
    rla 
    ld ix,PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    ld iy,PLY_AKM_TRACK1_REGISTERS
    ld c,a
    call PLY_AKM_PSES_PLAY
    ld ix,PLY_AKM_CHANNEL2_SOUNDEFFECTDATA
    ld iy,PLY_AKM_TRACK2_REGISTERS
    srl c
    call PLY_AKM_PSES_PLAY
    ld ix,PLY_AKM_CHANNEL3_SOUNDEFFECTDATA
    ld iy,PLY_AKM_TRACK3_REGISTERS
    scf
    rr c
    call PLY_AKM_PSES_PLAY
    ld a,c
    ld (PLY_AKM_MIXERREGISTER),a
    ret 
PLY_AKM_PSES_PLAY:
	ld l,(ix+0)
    ld h,(ix+1)
    ld a,l
    or h
    ret z
PLY_AKM_PSES_READFIRSTBYTE:
	ld a,(hl)
    inc hl
    ld b,a
    rra 
    jr c,PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE
    rra 
    jr c,PLY_AKM_PSES_HARDWAREONLY
    rra 
    jr c,PLY_AKM_PSES_S_ENDORLOOP
    call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    set 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_S_ENDORLOOP:
	rra 
    jr c,PLY_AKM_PSES_S_LOOP
    xor a
    ld (ix+0),a
    ld (ix+1),a
    ret 
PLY_AKM_PSES_S_LOOP:
	ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jr PLY_AKM_PSES_READFIRSTBYTE
PLY_AKM_PSES_SAVEPOINTERANDEXIT:
	ld a,(ix+3)
    cp (ix+4)
    jr c,PLY_AKM_PSES_NOTREACHED
    ld (ix+3),0
    defb 221
    defb 117
    defb 0
    defb 221
    defb 116
    defb 1
    ret 
PLY_AKM_PSES_NOTREACHED:
	inc (ix+3)
    ret 
PLY_AKM_PSES_HARDWAREONLY:
	call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    set 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE:
	rra 
    jr c,PLY_AKM_PSES_SOFTWAREANDHARDWARE
    call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    res 2,c
    call PLY_AKM_PSES_READSOFTWAREPERIOD
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
defc PLY_AKM_ROM_BUFFERSIZE = 2
PLY_AKM_PSES_SOFTWAREANDHARDWARE:
	call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    call PLY_AKM_PSES_READSOFTWAREPERIOD
    res 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE:
	rra 
    jr nc,PLY_AKM_PSES_H_AFTERRETRIG
    ld d,a
    ld a,255
    ld (PLY_AKM_SETREG13OLD),a
    ld a,d
PLY_AKM_PSES_H_AFTERRETRIG:
	and 7
    add a,8
    ld (PLY_AKM_SETREG13),a
    rl b
    call PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    call PLY_AKM_PSES_READHARDWAREPERIOD
    ld a,16
    jp PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD
PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL:
	jr c,PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL_OPENNOISE
    set 5,c
    ret 
PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL_OPENNOISE:
	ld a,(hl)
    ld (PLY_AKM_NOISEREGISTER),a
    inc hl
    res 5,c
    ret 
PLY_AKM_PSES_READHARDWAREPERIOD:
	ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    ret 
PLY_AKM_PSES_READSOFTWAREPERIOD:
	ld a,(hl)
    ld (iy+5),a
    inc hl
    ld a,(hl)
    ld (iy+9),a
    inc hl
    ret 
PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS:
	and 15
PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD:
	sub (ix+2)
    jr nc,PLY_AKM_PSES_MVFA_NOOVERFLOW
    xor a
PLY_AKM_PSES_MVFA_NOOVERFLOW:
	ld (iy+1),a
    ret 
PLY_AKM_INIT:
	ld de,PLY_AKM_PTINSTRUMENTS
    ldi
    ldi
    ld de,PLY_AKM_PTARPEGGIOS
    ldi
    ldi
    ld de,PLY_AKM_PTPITCHES
    ldi
    ldi
    add a,a
    ld e,a
    ld d,0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld ix,PLY_AKM_INITVARS_START
    ld a,13
PLY_AKM_INITVARS_LOOP:
	ld e,(ix+0)
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
    ld de,PLY_AKM_TRACK1_PTSTARTTRACK
    ld bc,104
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
    ld hl,0
    ld (PLY_AKM_CHANNEL1_SOUNDEFFECTDATA),hl
    ld (PLY_AKM_CHANNEL2_SOUNDEFFECTDATA),hl
    ld (PLY_AKM_CHANNEL3_SOUNDEFFECTDATA),hl
    ld ix,PLY_AKM_REGISTERSFORROM
    ld iy,PLY_AKM_TRACK1_REGISTERS
    ld bc,PLY_AKM_SENDPSGREGISTER
    ld de,4
PLY_AKM_INITROM_LOOP:
	ld a,(ix+0)
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
PLY_AKM_INITROM_SPECIAL:
	rl h
    jr c,PLY_AKM_INITROM_WRITEENDCODE
    ld bc,PLY_AKM_SENDPSGREGISTERR13
    ld (iy+2),c
    ld (iy+3),b
    ld bc,PLY_AKM_SENDPSGREGISTERAFTERPOP
    ld (iy+4),c
    ld (iy+5),b
    add iy,de
PLY_AKM_INITROM_WRITEENDCODE:
	ld bc,PLY_AKM_SENDPSGREGISTEREND
    ld (iy+2),c
    ld (iy+3),b
    ret 
PLY_AKM_REGISTERSFORROM:
	defb 8
    defb 0
    defb 1
    defb 9
    defb 2
    defb 3
    defb 10
    defb 4
    defb 5
    defb 6
    defb 7
    defb 11
    defb 76
PLY_AKM_INITVARS_START:
	defw PLY_AKM_NOTEINDEXTABLE
    defw PLY_AKM_NOTEINDEXTABLE+1
    defw PLY_AKM_TRACKINDEX
    defw PLY_AKM_TRACKINDEX+1
    defw PLY_AKM_SPEED
    defw PLY_AKM_PRIMARYINSTRUMENT
    defw PLY_AKM_SECONDARYINSTRUMENT
    defw PLY_AKM_PRIMARYWAIT
    defw PLY_AKM_SECONDARYWAIT
    defw PLY_AKM_DEFAULTSTARTNOTEINTRACKS
    defw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS
    defw PLY_AKM_DEFAULTSTARTWAITINTRACKS
    defw PLY_AKM_FLAGNOTEANDEFFECTINCELL
PLY_AKM_INITVARS_END:
PLY_AKM_STOP:
	ld (PLY_AKM_SAVESP),sp
    xor a
    ld (PLY_AKM_TRACK1_VOLUME),a
    ld (PLY_AKM_TRACK2_VOLUME),a
    ld (PLY_AKM_TRACK3_VOLUME),a
    ld a,191
    ld (PLY_AKM_MIXERREGISTER),a
    jp PLY_AKM_SENDPSG
PLY_AKM_PLAY:
	ld (PLY_AKM_SAVESP),sp
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
PLY_AKM_LINKER:
	ld de,(PLY_AKM_TRACKINDEX)
    exx
    ld hl,(PLY_AKM_PTLINKER)
PLY_AKM_LINKERPOSTPT:
	xor a
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
PLY_AKM_LINKERSPEEDCHANGE:
	ld (PLY_AKM_SPEED),a
PLY_AKM_LINKERAFTERSPEEDCHANGE:
	rr b
    jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
    ld a,(hl)
    inc hl
    ld (PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT),a
    jr PLY_AKM_LINKERSETREMAININGHEIGHT
PLY_AKM_LINKERUSEPREVIOUSHEIGHT:
	ld a,(PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT)
PLY_AKM_LINKERSETREMAININGHEIGHT:
	ld (PLY_AKM_PATTERNREMAININGHEIGHT),a
    ld ix,PLY_AKM_TRACK1_WAITEMPTYCELL
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,PLY_AKM_TRACK2_WAITEMPTYCELL
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,PLY_AKM_TRACK3_WAITEMPTYCELL
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld (PLY_AKM_PTLINKER),hl
PLY_AKM_READLINE:
	ld de,(PLY_AKM_PTINSTRUMENTS)
    ld bc,(PLY_AKM_NOTEINDEXTABLE)
    exx
    ld ix,PLY_AKM_TRACK1_WAITEMPTYCELL
    call PLY_AKM_READTRACK
    ld ix,PLY_AKM_TRACK2_WAITEMPTYCELL
    call PLY_AKM_READTRACK
    ld ix,PLY_AKM_TRACK3_WAITEMPTYCELL
    call PLY_AKM_READTRACK
    xor a
PLY_AKM_TICKCOUNTERMANAGED:
	ld (PLY_AKM_TICKCOUNTER),a
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
    call PLY_AKM_PLAYSOUNDEFFECTSSTREAM
PLY_AKM_SENDPSG:
	ld sp,PLY_AKM_TRACK1_REGISTERS
PLY_AKM_SENDPSGREGISTER:
	pop hl
PLY_AKM_SENDPSGREGISTERAFTERPOP:
	ld a,l
    out (160),a
    ld a,h
    out (161),a
    ret 
PLY_AKM_SENDPSGREGISTERR13:
	ld a,(PLY_AKM_SETREG13OLD)
    ld b,a
    ld a,(PLY_AKM_SETREG13)
    cp b
    jr z,PLY_AKM_SENDPSGREGISTEREND
    ld (PLY_AKM_SETREG13OLD),a
    ld h,a
    ld l,13
    ret 
PLY_AKM_SENDPSGREGISTEREND:
	ld sp,(PLY_AKM_SAVESP)
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK:
	rr b
    rr b
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
    ld (ix+1),a
    ld (ix+3),a
    inc hl
    ld a,(hl)
    ld (ix+2),a
    ld (ix+4),a
    exx
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET:
	rra 
    ld d,a
    ld e,(hl)
    inc hl
    ld c,l
    ld a,h
    add hl,de
    defb 221
    defb 117
    defb 1
    defb 221
    defb 116
    defb 2
    defb 221
    defb 117
    defb 3
    defb 221
    defb 116
    defb 4
    ld l,c
    ld h,a
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK:
	ld a,(ix+1)
    ld (ix+3),a
    ld a,(ix+2)
    ld (ix+4),a
    ret 
PLY_AKM_READTRACK:
	ld a,(ix+0)
    sub 1
    jr c,PLY_AKM_RT_NOEMPTYCELL
    ld (ix+0),a
    ret 
PLY_AKM_RT_NOEMPTYCELL:
	ld l,(ix+3)
    ld h,(ix+4)
PLY_AKM_RT_GETDATABYTE:
	ld b,(hl)
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
    ld a,(ix+6)
    jr PLY_AKM_RT_AFTERNOTEREAD
PLY_AKM_RT_NEWESCAPENOTE:
	ld a,(hl)
    ld (ix+6),a
    inc hl
    jr PLY_AKM_RT_AFTERNOTEREAD
PLY_AKM_RT_NOTEANDEFFECTS:
	dec a
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
    jr PLY_AKM_RT_GETDATABYTE
PLY_AKM_RT_NONOTEMAYBEEFFECTS:
	bit 4,b
    jr z,PLY_AKM_RT_READWAITFLAGS
    ld a,b
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
    jr PLY_AKM_RT_READWAITFLAGS
PLY_AKM_RT_NOTEREFERENCE:
	exx
    ld l,a
    ld h,0
    add hl,bc
    ld a,(hl)
    exx
PLY_AKM_RT_AFTERNOTEREAD:
	ld (ix+5),a
    ld a,b
    and 48
    jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
    cp 16
    jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
    cp 32
    jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
    ld a,(hl)
    inc hl
    ld (ix+7),a
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_SAMEESCAPEINSTRUMENT:
	ld a,(ix+7)
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_SECONDARYINSTRUMENT:
	ld a,(PLY_AKM_SECONDARYINSTRUMENT)
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_PRIMARYINSTRUMENT:
	ld a,(PLY_AKM_PRIMARYINSTRUMENT)
PLY_AKM_RT_STORECURRENTINSTRUMENT:
	exx
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
    ld (ix+12),a
    defb 221
    defb 117
    defb 9
    defb 221
    defb 116
    defb 10
    exx
    xor a
    ld (ix+11),a
    ld (ix+14),a
    ld (ix+15),a
    ld (ix+16),a
    ld (ix+23),a
    ld (ix+24),a
    ld (ix+30),a
    ld (ix+31),a
PLY_AKM_RT_READWAITFLAGS:
	ld a,b
    and 192
    jr z,PLY_AKM_RT_SAMEESCAPEWAIT
    cp 64
    jr z,PLY_AKM_RT_PRIMARYWAIT
    cp 128
    jr z,PLY_AKM_RT_SECONDARYWAIT
    ld a,(hl)
    inc hl
    ld (ix+8),a
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_SAMEESCAPEWAIT:
	ld a,(ix+8)
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_PRIMARYWAIT:
	ld a,(PLY_AKM_PRIMARYWAIT)
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_SECONDARYWAIT:
	ld a,(PLY_AKM_SECONDARYWAIT)
PLY_AKM_RT_STORECURRENTWAIT:
	ld (ix+0),a
    ld a,(PLY_AKM_RT_READEFFECTSFLAG)
    or a
    jr nz,PLY_AKM_RT_READEFFECTS
PLY_AKM_RT_AFTEREFFECTS:
	defb 221
    defb 117
    defb 3
    defb 221
    defb 116
    defb 4
    ret 
PLY_AKM_RT_READEFFECTS:
	xor a
    ld (PLY_AKM_RT_READEFFECTSFLAG),a
PLY_AKM_RT_READEFFECT:
	ld iy,PLY_AKM_EFFECTTABLE
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
PLY_AKM_RT_READEFFECT_RETURN:
	bit 0,b
    jr nz,PLY_AKM_RT_READEFFECT
    jr PLY_AKM_RT_AFTEREFFECTS
PLY_AKM_RT_WAITLONG:
	ld a,(hl)
    inc hl
    ld (ix+0),a
    jr PLY_AKM_RT_CELLREAD
PLY_AKM_RT_WAITSHORT:
	ld a,b
    rlca 
    rlca 
    and 3
    ld (ix+0),a
PLY_AKM_RT_CELLREAD:
	defb 221
    defb 117
    defb 3
    defb 221
    defb 116
    defb 4
    ret 
PLY_AKM_MANAGEEFFECTS:
	ld a,(ix+14)
    or a
    jr z,PLY_AKM_ME_PITCHUPDOWNFINISHED
    ld l,(ix+17)
    ld h,(ix+15)
    ld e,(ix+18)
    ld d,(ix+19)
    ld a,(ix+16)
    bit 7,d
    jr nz,PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED
PLY_AKM_ME_PITCHUPDOWN_POSITIVESPEED:
	add hl,de
    adc a,0
    jr PLY_AKM_ME_PITCHUPDOWN_SAVE
PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED:
	res 7,d
    or a
    sbc hl,de
    sbc a,0
PLY_AKM_ME_PITCHUPDOWN_SAVE:
	ld (ix+16),a
    defb 221
    defb 117
    defb 17
    defb 221
    defb 116
    defb 15
PLY_AKM_ME_PITCHUPDOWNFINISHED:
	ld a,(ix+20)
    or a
    jr z,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
    ld e,(ix+21)
    ld d,(ix+22)
    ld l,(ix+23)
    ld h,0
    add hl,de
    ld a,(hl)
    sra a
    ld (ix+26),a
    ld a,(ix+24)
    cp (ix+25)
    jr c,PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED
    ld (ix+24),0
    inc (ix+23)
    inc hl
    ld a,(hl)
    rra 
    jr nc,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
    ld l,a
    ld (ix+23),a
    jr PLY_AKM_ME_ARPEGGIOTABLEFINISHED
PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED:
	inc a
    ld (ix+24),a
PLY_AKM_ME_ARPEGGIOTABLEFINISHED:
	ld a,(ix+27)
    or a
    ret z
    ld l,(ix+28)
    ld h,(ix+29)
    ld e,(ix+30)
    ld d,0
    add hl,de
    ld a,(hl)
    sra a
    jp p,PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE
    dec d
PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE:
	ld (ix+33),a
    defb 221
    defb 114
    defb 34
    ld a,(ix+31)
    cp (ix+32)
    jr c,PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED
    ld (ix+31),0
    inc (ix+30)
    inc hl
    ld a,(hl)
    rra 
    ret nc
    ld l,a
    ld (ix+30),a
    ret 
PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED:
	inc a
    ld (ix+31),a
    ret 
PLY_AKM_PLAYSOUNDSTREAM:
	ld l,(ix+9)
    ld h,(ix+10)
PLY_AKM_PSS_READFIRSTBYTE:
	ld a,(hl)
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
    defb 221
    defb 117
    defb 9
    defb 221
    defb 116
    defb 10
    jr PLY_AKM_PSS_READFIRSTBYTE
PLY_AKM_PSS_NSNH_NOTENDOFSOUND:
	set 2,c
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld (iy+1),a
    rl b
    call c,PLY_AKM_PSS_READNOISE
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SOFTORSOFTANDHARD:
	rra 
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
PLY_AKM_PSS_S_AFTERARPANDORNOISE:
	ld a,d
    call PLY_AKM_CALCULATEPERIODFORBASENOTE
    rl b
    exx
    ld (iy+5),l
    ld (iy+9),h
    exx
PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER:
	ld a,(ix+11)
    cp (ix+12)
    jr nc,PLY_AKM_PSS_S_SPEEDREACHED
    inc (ix+11)
    ret 
PLY_AKM_PSS_S_SPEEDREACHED:
	defb 221
    defb 117
    defb 9
    defb 221
    defb 116
    defb 10
    ld (ix+11),0
    ret 
PLY_AKM_PSS_SOFTANDHARD:
	call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SOFTWARETOHARDWARE:
	call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,b
    rlca 
    rlca 
    rlca 
    rlca 
    and 7
    exx
    jr z,PLY_AKM_PSS_STH_RATIOEND
PLY_AKM_PSS_STH_RATIOLOOP:
	srl h
    rr l
    dec a
    jr nz,PLY_AKM_PSS_STH_RATIOLOOP
    jr nc,PLY_AKM_PSS_STH_RATIOEND
    inc hl
PLY_AKM_PSS_STH_RATIOEND:
	ld a,l
    ld (PLY_AKM_REG11),a
    ld a,h
    ld (PLY_AKM_REG12),a
    exx
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV:
	and 2
    add a,8
    ld (PLY_AKM_SETREG13),a
    ld (iy+1),16
    xor a
    call PLY_AKM_CALCULATEPERIODFORBASENOTE
    exx
    ld (iy+5),l
    ld (iy+9),h
    exx
    ret 
PLY_AKM_PSS_SHARED_ADJUSTVOLUME:
	and 15
    sub (ix+13)
    ret nc
    xor a
    ret 
PLY_AKM_PSS_READNOISE:
	ld a,(hl)
    inc hl
    ld (PLY_AKM_NOISEREGISTER),a
    res 5,c
    ret 
PLY_AKM_CALCULATEPERIODFORBASENOTE:
	exx
    ld h,0
    add a,(ix+5)
    add a,(ix+26)
    ld bc,65292
PLY_AKM_FINDOCTAVE_LOOP:
	inc b
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
PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP:
	srl h
    rr l
    djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED:
	jr nc,PLY_AKM_FINDOCTAVE_FINISHED
    inc hl
PLY_AKM_FINDOCTAVE_FINISHED:
	ld a,(ix+27)
    or a
    jr z,PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE
    ld c,(ix+33)
    ld b,(ix+34)
    add hl,bc
PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE:
	ld c,(ix+15)
    ld b,(ix+16)
    add hl,bc
    exx
    ret 
PLY_AKM_EFFECTVOLUME:
	ld (ix+13),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTTABLE:
	jr PLY_AKM_EFFECTTABLE
    jr PLY_AKM_EFFECTVOLUME
    jr PLY_AKM_EFFECTPITCHUPDOWN
    jr PLY_AKM_EFFECTARPEGGIOTABLE
    jr PLY_AKM_EFFECTPITCHTABLE
    jr PLY_AKM_EFFECTPITCHUPDOWN-4
    jr PLY_AKM_EFFECTPITCHUPDOWN-2
PLY_AKM_EFFECTPITCHUPDOWN:
	rra 
    jr nc,PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED
    ld (ix+14),255
    ld a,(hl)
    inc hl
    ld (ix+18),a
    ld a,(hl)
    inc hl
    ld (ix+19),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED:
	ld (ix+14),0
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTARPEGGIOTABLE:
	call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+20),a
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
    ld (ix+25),a
    defb 221
    defb 117
    defb 21
    defb 221
    defb 116
    defb 22
    ld bc,(PLY_AKM_NOTEINDEXTABLE)
    exx
    xor a
    ld (ix+23),a
    ld (ix+24),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTARPEGGIOTABLE_STOP:
	ld (ix+26),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTPITCHTABLE:
	call PLY_AKM_EFFECTREADIFESCAPE
    ld (ix+27),a
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
    ld (ix+32),a
    defb 221
    defb 117
    defb 28
    defb 221
    defb 116
    defb 29
    ld bc,(PLY_AKM_NOTEINDEXTABLE)
    exx
    xor a
    ld (ix+30),a
    ld (ix+31),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTREADIFESCAPE:
	cp 15
    ret c
    ld a,(hl)
    inc hl
    ret 
PLY_AKM_PERIODTABLE:
	defw 6778
    defw 6398
    defw 6039
    defw 5700
    defw 5380
    defw 5078
    defw 4793
    defw 4524
    defw 4270
    defw 4030
    defw 3804
    defw 3591
PLY_AKM_END:
_SONG:
JUSTADDCREAM_START:
	defw JUSTADDCREAM_INSTRUMENTINDEXES
    defw JUSTADDCREAM_ARPEGGIOINDEXES-2
    defw JUSTADDCREAM_PITCHINDEXES-2
    defw JUSTADDCREAM_SUBSONG0
JUSTADDCREAM_INSTRUMENTINDEXES:
	defw JUSTADDCREAM_INSTRUMENT0
    defw JUSTADDCREAM_INSTRUMENT1
    defw JUSTADDCREAM_INSTRUMENT2
    defw JUSTADDCREAM_INSTRUMENT3
    defw JUSTADDCREAM_INSTRUMENT4
    defw JUSTADDCREAM_INSTRUMENT5
    defw JUSTADDCREAM_INSTRUMENT6
    defw JUSTADDCREAM_INSTRUMENT7
    defw JUSTADDCREAM_INSTRUMENT8
    defw JUSTADDCREAM_INSTRUMENT9
    defw JUSTADDCREAM_INSTRUMENT10
    defw JUSTADDCREAM_INSTRUMENT11
JUSTADDCREAM_INSTRUMENT0:
	defb 255
JUSTADDCREAM_INSTRUMENT0LOOP:
	defb 0
    defb 4
    defw JUSTADDCREAM_INSTRUMENT0LOOP
JUSTADDCREAM_INSTRUMENT1:
	defb 0
    defb 181
    defb 1
    defb 31
    defb 61
    defb 61
    defb 61
    defb 53
    defb 4
    defw JUSTADDCREAM_INSTRUMENT0LOOP
JUSTADDCREAM_INSTRUMENT2:
	defb 0
    defb 189
    defb 1
    defb 17
    defb 61
    defb 61
    defb 61
    defb 232
    defb 13
    defb 216
    defb 13
    defb 4
    defw JUSTADDCREAM_INSTRUMENT0LOOP
JUSTADDCREAM_INSTRUMENT3:
	defb 0
    defb 82
    defb 82
    defb 53
    defb 49
    defb 45
    defb 45
JUSTADDCREAM_INSTRUMENT3LOOP:
	defb 45
    defb 45
    defb 4
    defw JUSTADDCREAM_INSTRUMENT3LOOP
JUSTADDCREAM_INSTRUMENT4:
	defb 0
    defb 49
    defb 45
    defb 41
JUSTADDCREAM_INSTRUMENT4LOOP:
	defb 37
    defb 4
    defw JUSTADDCREAM_INSTRUMENT4LOOP
JUSTADDCREAM_INSTRUMENT5:
	defb 0
    defb 181
    defb 1
    defb 31
    defb 61
    defb 61
    defb 61
JUSTADDCREAM_INSTRUMENT5LOOP:
	defb 45
    defb 4
    defw JUSTADDCREAM_INSTRUMENT5LOOP
JUSTADDCREAM_INSTRUMENT6:
	defb 0
    defb 185
    defb 1
    defb 17
    defb 57
    defb 57
    defb 57
    defb 224
    defb 13
JUSTADDCREAM_INSTRUMENT6LOOP:
	defb 45
    defb 4
    defw JUSTADDCREAM_INSTRUMENT6LOOP
JUSTADDCREAM_INSTRUMENT7:
	defb 0
    defb 57
    defb 53
    defb 49
JUSTADDCREAM_INSTRUMENT7LOOP:
	defb 45
    defb 4
    defw JUSTADDCREAM_INSTRUMENT7LOOP
JUSTADDCREAM_INSTRUMENT8:
	defb 0
JUSTADDCREAM_INSTRUMENT8LOOP:
	defb 33
    defb 4
    defw JUSTADDCREAM_INSTRUMENT8LOOP
JUSTADDCREAM_INSTRUMENT9:
	defb 0
    defb 165
    defb 24
    defb 161
    defb 24
    defb 29
JUSTADDCREAM_INSTRUMENT9LOOP:
	defb 25
    defb 153
    defb 24
    defb 153
    defb 24
    defb 25
    defb 4
    defw JUSTADDCREAM_INSTRUMENT9LOOP
JUSTADDCREAM_INSTRUMENT10:
	defb 0
    defb 153
    defb 24
    defb 149
    defb 24
    defb 17
JUSTADDCREAM_INSTRUMENT10LOOP:
	defb 13
    defb 141
    defb 24
    defb 141
    defb 24
    defb 13
    defb 4
    defw JUSTADDCREAM_INSTRUMENT10LOOP
JUSTADDCREAM_INSTRUMENT11:
	defb 0
    defb 149
    defb 24
    defb 145
    defb 24
    defb 13
JUSTADDCREAM_INSTRUMENT11LOOP:
	defb 9
    defb 137
    defb 24
    defb 137
    defb 24
    defb 9
    defb 4
    defw JUSTADDCREAM_INSTRUMENT11LOOP
JUSTADDCREAM_ARPEGGIOINDEXES:
	defw JUSTADDCREAM_ARPEGGIO1
    defw JUSTADDCREAM_ARPEGGIO2
    defw JUSTADDCREAM_ARPEGGIO3
JUSTADDCREAM_ARPEGGIO1:
	defb 1
    defb 14
    defb 8
    defb 0
    defb 1
JUSTADDCREAM_ARPEGGIO2:
	defb 1
    defb 32
    defb 24
    defb 14
    defb 1
JUSTADDCREAM_ARPEGGIO3:
	defb 1
    defb 24
    defb 14
    defb 8
    defb 1
JUSTADDCREAM_PITCHINDEXES:
	defw JUSTADDCREAM_PITCH1
JUSTADDCREAM_PITCH1:
	defb 0
    defb 254
    defb 252
    defb 250
    defb 252
    defb 254
    defb 2
    defb 4
    defb 6
    defb 4
    defb 1
JUSTADDCREAM_SUBSONG0:
	defw JUSTADDCREAM_SUBSONG0_NOTEINDEXES
    defw JUSTADDCREAM_SUBSONG0_TRACKINDEXES
    defb 6
    defb 3
    defb 4
    defb 0
    defb 1
    defb 63
    defb 1
    defb 0
    defb 12
    defb 171
    defb 7
    defb 63
    defb 4
    defb 179
    defb 5
    defb 103
    defb 132
    defb 40
    defb 4
    defb 187
    defb 4
    defb 250
    defb 168
    defb 136
    defb 4
    defb 225
    defb 4
    defb 230
    defb 160
    defb 132
    defb 7
    defb 189
JUSTADDCREAM_SUBSONG0_LOOP:
	defb 160
    defb 128
    defb 0
    defb 116
    defb 168
    defb 6
    defb 88
    defb 6
    defb 145
    defb 6
    defb 249
    defb 168
    defb 129
    defb 128
    defb 131
    defb 128
    defb 137
    defb 170
    defb 31
    defb 3
    defb 82
    defb 133
    defb 138
    defb 40
    defb 3
    defb 100
    defb 134
    defb 40
    defb 3
    defb 119
    defb 133
    defb 168
    defb 3
    defb 145
    defb 134
    defb 132
    defb 170
    defb 63
    defb 129
    defb 128
    defb 131
    defb 128
    defb 2
    defb 55
    defb 128
    defb 131
    defb 128
    defb 137
    defb 170
    defb 31
    defb 3
    defb 51
    defb 133
    defb 130
    defb 40
    defb 3
    defb 69
    defb 134
    defb 40
    defb 3
    defb 88
    defb 133
    defb 40
    defb 3
    defb 114
    defb 134
    defb 40
    defb 3
    defb 136
    defb 135
    defb 8
    defb 3
    defb 181
    defb 8
    defb 3
    defb 228
    defb 8
    defb 4
    defb 25
    defb 170
    defb 63
    defb 129
    defb 128
    defb 131
    defb 128
    defb 2
    defb 12
    defb 128
    defb 131
    defb 128
    defb 137
    defb 1
    defb 0
    defw JUSTADDCREAM_SUBSONG0_LOOP
JUSTADDCREAM_SUBSONG0_TRACKINDEXES:
	defw JUSTADDCREAM_SUBSONG0_TRACK3
    defw JUSTADDCREAM_SUBSONG0_TRACK4
    defw JUSTADDCREAM_SUBSONG0_TRACK27
    defw JUSTADDCREAM_SUBSONG0_TRACK5
    defw JUSTADDCREAM_SUBSONG0_TRACK0
    defw JUSTADDCREAM_SUBSONG0_TRACK7
    defw JUSTADDCREAM_SUBSONG0_TRACK8
    defw JUSTADDCREAM_SUBSONG0_TRACK28
    defw JUSTADDCREAM_SUBSONG0_TRACK2
    defw JUSTADDCREAM_SUBSONG0_TRACK23
    defw JUSTADDCREAM_SUBSONG0_TRACK30
JUSTADDCREAM_SUBSONG0_TRACK0:
	defb 240
    defb 0
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK1:
	defb 12
    defb 193
    defb 3
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 129
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 177
    defb 1
    defb 34
    defb 12
    defb 1
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 241
    defb 1
    defb 5
    defb 2
    defb 12
    defb 241
    defb 2
    defb 3
    defb 18
    defb 12
    defb 177
    defb 1
    defb 2
    defb 12
    defb 129
    defb 34
    defb 12
    defb 241
    defb 2
    defb 127
    defb 18
JUSTADDCREAM_SUBSONG0_TRACK2:
	defb 12
    defb 212
    defb 2
    defb 3
    defb 6
    defb 112
    defb 0
    defb 86
    defb 64
    defb 84
    defb 94
    defb 19
    defb 148
    defb 94
    defb 24
    defb 64
    defb 148
    defb 30
    defb 26
    defb 64
    defb 94
    defb 14
    defb 64
    defb 158
    defb 26
    defb 95
    defb 94
    defb 24
    defb 158
    defb 26
    defb 158
    defb 28
    defb 128
    defb 30
    defb 29
    defb 64
    defb 94
    defb 17
    defb 64
    defb 158
    defb 29
    defb 95
    defb 94
    defb 24
    defb 158
    defb 29
    defb 25
    defb 64
    defb 158
    defb 24
    defb 128
    defb 94
    defb 19
    defb 64
    defb 158
    defb 24
    defb 89
    defb 94
    defb 19
    defb 158
    defb 23
    defb 94
    defb 26
    defb 64
    defb 158
    defb 23
    defb 94
    defb 19
    defb 192
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK3:
	defb 12
    defb 96
    defb 3
    defb 22
    defb 221
    defb 2
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 3
    defb 22
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 22
    defb 160
    defb 3
    defb 54
    defb 12
    defb 163
    defb 2
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 98
    defb 3
    defb 22
    defb 12
    defb 96
    defb 38
    defb 12
    defb 163
    defb 54
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 98
    defb 29
    defb 12
    defb 227
    defb 3
    defb 3
    defb 38
    defb 12
    defb 101
    defb 22
    defb 221
    defb 2
    defb 12
    defb 229
    defb 3
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 162
    defb 3
    defb 22
    defb 224
    defb 127
    defb 54
JUSTADDCREAM_SUBSONG0_TRACK4:
	defb 12
    defb 244
    defb 5
    defb 2
    defb 2
    defb 112
    defb 0
    defb 118
    defb 6
    defb 112
    defb 0
    defb 84
    defb 94
    defb 19
    defb 180
    defb 5
    defb 94
    defb 24
    defb 112
    defb 0
    defb 180
    defb 6
    defb 62
    defb 26
    defb 5
    defb 112
    defb 0
    defb 126
    defb 14
    defb 5
    defb 112
    defb 0
    defb 190
    defb 26
    defb 6
    defb 95
    defb 94
    defb 24
    defb 190
    defb 26
    defb 5
    defb 158
    defb 28
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 190
    defb 29
    defb 5
    defb 2
    defb 79
    defb 112
    defb 0
    defb 94
    defb 17
    defb 64
    defb 190
    defb 29
    defb 6
    defb 95
    defb 94
    defb 24
    defb 190
    defb 29
    defb 5
    defb 153
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 190
    defb 24
    defb 5
    defb 2
    defb 176
    defb 0
    defb 94
    defb 19
    defb 64
    defb 190
    defb 24
    defb 6
    defb 89
    defb 94
    defb 19
    defb 190
    defb 23
    defb 5
    defb 78
    defb 26
    defb 112
    defb 0
    defb 190
    defb 23
    defb 6
    defb 94
    defb 19
    defb 240
    defb 0
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK5:
	defb 12
    defb 127
    defb 7
    defb 3
    defb 9
    defb 244
    defb 0
    defb 129
    defb 78
    defb 64
    defb 72
    defb 3
    defb 12
    defb 127
    defb 8
    defb 2
    defb 187
    defb 7
    defb 72
    defb 12
    defb 123
    defb 8
    defb 2
    defb 181
    defb 7
    defb 72
    defb 12
    defb 117
    defb 8
    defb 2
    defb 117
    defb 7
    defb 120
    defb 8
    defb 3
    defb 12
    defb 122
    defb 7
    defb 3
    defb 244
    defb 0
    defb 130
    defb 69
    defb 157
    defb 24
    defb 75
    defb 8
    defb 93
    defb 244
    defb 0
    defb 5
    defb 12
    defb 117
    defb 8
    defb 3
    defb 24
    defb 75
    defb 8
    defb 157
    defb 244
    defb 0
    defb 5
    defb 119
    defb 7
    defb 3
    defb 66
    defb 3
    defb 12
    defb 123
    defb 8
    defb 2
    defb 71
    defb 114
    defb 7
    defb 3
    defb 72
    defb 3
    defb 119
    defb 8
    defb 3
    defb 66
    defb 3
    defb 12
    defb 115
    defb 7
    defb 3
    defb 24
    defb 120
    defb 8
    defb 119
    defb 7
    defb 3
    defb 8
    defb 12
    defb 115
    defb 8
    defb 3
    defb 24
    defb 115
    defb 7
    defb 119
    defb 8
    defb 8
    defb 119
    defb 7
    defb 3
    defb 12
    defb 115
    defb 8
    defb 3
    defb 24
    defb 115
    defb 7
    defb 119
    defb 8
    defb 8
    defb 119
    defb 7
    defb 3
    defb 12
    defb 115
    defb 8
    defb 2
    defb 112
    defb 7
    defb 119
    defb 8
    defb 3
    defb 12
    defb 126
    defb 47
    defb 7
    defb 3
    defb 244
    defb 128
    defb 129
    defb 64
    defb 221
    defb 3
    defb 24
    defb 221
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK6:
	defb 12
    defb 127
    defb 7
    defb 3
    defb 9
    defb 244
    defb 0
    defb 129
    defb 78
    defb 64
    defb 72
    defb 3
    defb 12
    defb 127
    defb 8
    defb 2
    defb 187
    defb 7
    defb 72
    defb 12
    defb 123
    defb 8
    defb 2
    defb 181
    defb 7
    defb 72
    defb 12
    defb 117
    defb 8
    defb 2
    defb 117
    defb 7
    defb 120
    defb 8
    defb 3
    defb 12
    defb 122
    defb 7
    defb 3
    defb 244
    defb 0
    defb 130
    defb 69
    defb 157
    defb 24
    defb 75
    defb 8
    defb 93
    defb 244
    defb 0
    defb 5
    defb 12
    defb 117
    defb 8
    defb 3
    defb 24
    defb 75
    defb 8
    defb 157
    defb 244
    defb 0
    defb 5
    defb 119
    defb 7
    defb 3
    defb 66
    defb 3
    defb 12
    defb 123
    defb 8
    defb 2
    defb 71
    defb 114
    defb 7
    defb 3
    defb 72
    defb 3
    defb 119
    defb 8
    defb 3
    defb 66
    defb 3
    defb 12
    defb 115
    defb 7
    defb 3
    defb 24
    defb 120
    defb 8
    defb 119
    defb 7
    defb 3
    defb 8
    defb 12
    defb 115
    defb 8
    defb 3
    defb 24
    defb 115
    defb 7
    defb 119
    defb 8
    defb 8
    defb 119
    defb 7
    defb 3
    defb 12
    defb 115
    defb 8
    defb 3
    defb 24
    defb 115
    defb 7
    defb 119
    defb 8
    defb 8
    defb 12
    defb 114
    defb 7
    defb 2
    defb 136
    defb 114
    defb 8
    defb 12
    defb 242
    defb 7
    defb 2
    defb 24
    defb 120
    defb 8
    defb 12
    defb 117
    defb 7
    defb 8
    defb 12
    defb 50
    defb 8
    defb 24
    defb 12
    defb 126
    defb 58
    defb 7
    defb 9
    defb 244
    defb 128
    defb 129
    defb 74
    defb 157
    defb 24
    defb 72
    defb 8
    defb 12
    defb 122
    defb 8
    defb 3
    defb 24
    defb 12
    defb 114
    defb 7
    defb 8
    defb 120
    defb 8
    defb 119
    defb 7
    defb 3
    defb 12
    defb 242
    defb 8
    defb 127
    defb 2
JUSTADDCREAM_SUBSONG0_TRACK7:
	defb 12
    defb 193
    defb 3
    defb 3
    defb 9
    defb 6
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 65
    defb 12
    defb 177
    defb 1
    defb 2
    defb 193
    defb 3
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 177
    defb 1
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 177
    defb 1
    defb 2
    defb 129
    defb 12
    defb 113
    defb 2
    defb 18
    defb 193
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK8:
	defb 12
    defb 193
    defb 3
    defb 2
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 12
    defb 113
    defb 1
    defb 2
    defb 129
    defb 129
    defb 129
    defb 12
    defb 241
    defb 2
    defb 3
    defb 18
    defb 12
    defb 177
    defb 1
    defb 2
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 65
    defb 12
    defb 113
    defb 1
    defb 2
    defb 12
    defb 113
    defb 2
    defb 18
    defb 12
    defb 177
    defb 1
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 193
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK9:
	defb 148
    defb 240
    defb 0
    defb 4
    defb 86
    defb 94
    defb 28
    defb 64
    defb 89
    defb 192
    defb 2
    defb 150
    defb 128
    defb 148
    defb 192
    defb 3
    defb 158
    defb 19
    defb 128
    defb 158
    defb 20
    defb 192
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK10:
	defb 150
    defb 176
    defb 0
    defb 148
    defb 64
    defb 86
    defb 94
    defb 28
    defb 64
    defb 153
    defb 128
    defb 150
    defb 128
    defb 148
    defb 192
    defb 3
    defb 89
    defb 89
    defb 128
    defb 95
    defb 95
    defb 192
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK11:
	defb 148
    defb 240
    defb 0
    defb 4
    defb 86
    defb 94
    defb 28
    defb 64
    defb 89
    defb 86
    defb 128
    defb 150
    defb 64
    defb 86
    defb 148
    defb 192
    defb 3
    defb 94
    defb 29
    defb 86
    defb 94
    defb 36
    defb 64
    defb 89
    defb 94
    defb 35
    defb 94
    defb 38
    defb 192
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK12:
	defb 150
    defb 176
    defb 0
    defb 148
    defb 64
    defb 86
    defb 94
    defb 28
    defb 64
    defb 153
    defb 94
    defb 19
    defb 64
    defb 150
    defb 128
    defb 148
    defb 192
    defb 2
    defb 89
    defb 159
    defb 153
    defb 158
    defb 20
    defb 222
    defb 32
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK13:
	defb 12
    defb 180
    defb 5
    defb 2
    defb 176
    defb 0
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 12
    defb 118
    defb 6
    defb 2
    defb 126
    defb 28
    defb 5
    defb 112
    defb 0
    defb 121
    defb 5
    defb 48
    defb 0
    defb 182
    defb 6
    defb 176
    defb 0
    defb 180
    defb 5
    defb 12
    defb 241
    defb 2
    defb 3
    defb 18
    defb 12
    defb 190
    defb 19
    defb 5
    defb 2
    defb 177
    defb 1
    defb 126
    defb 20
    defb 6
    defb 79
    defb 240
    defb 0
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK14:
	defb 12
    defb 182
    defb 5
    defb 2
    defb 176
    defb 0
    defb 180
    defb 6
    defb 112
    defb 0
    defb 118
    defb 5
    defb 78
    defb 28
    defb 112
    defb 0
    defb 185
    defb 5
    defb 177
    defb 1
    defb 182
    defb 6
    defb 176
    defb 0
    defb 180
    defb 5
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 65
    defb 12
    defb 121
    defb 5
    defb 2
    defb 121
    defb 6
    defb 177
    defb 1
    defb 127
    defb 6
    defb 95
    defb 112
    defb 0
    defb 12
    defb 241
    defb 2
    defb 127
    defb 18
JUSTADDCREAM_SUBSONG0_TRACK15:
	defb 12
    defb 180
    defb 5
    defb 2
    defb 176
    defb 0
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 12
    defb 118
    defb 6
    defb 2
    defb 126
    defb 28
    defb 5
    defb 112
    defb 0
    defb 121
    defb 5
    defb 86
    defb 176
    defb 0
    defb 182
    defb 6
    defb 112
    defb 0
    defb 86
    defb 180
    defb 5
    defb 12
    defb 241
    defb 2
    defb 3
    defb 18
    defb 12
    defb 126
    defb 29
    defb 5
    defb 2
    defb 86
    defb 78
    defb 36
    defb 112
    defb 0
    defb 121
    defb 6
    defb 78
    defb 35
    defb 94
    defb 38
    defb 240
    defb 0
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK16:
	defb 12
    defb 182
    defb 5
    defb 2
    defb 176
    defb 0
    defb 180
    defb 6
    defb 112
    defb 0
    defb 118
    defb 5
    defb 78
    defb 28
    defb 112
    defb 0
    defb 185
    defb 5
    defb 78
    defb 19
    defb 112
    defb 0
    defb 182
    defb 6
    defb 176
    defb 0
    defb 180
    defb 5
    defb 12
    defb 241
    defb 2
    defb 2
    defb 18
    defb 12
    defb 121
    defb 6
    defb 2
    defb 127
    defb 5
    defb 12
    defb 113
    defb 2
    defb 18
    defb 12
    defb 185
    defb 5
    defb 2
    defb 190
    defb 20
    defb 6
    defb 94
    defb 32
    defb 12
    defb 241
    defb 2
    defb 127
    defb 18
JUSTADDCREAM_SUBSONG0_TRACK17:
	defb 240
    defb 0
    defb 15
    defb 148
    defb 192
    defb 13
    defb 148
    defb 0
    defb 148
    defb 192
    defb 11
    defb 222
    defb 19
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK18:
	defb 12
    defb 148
    defb 2
    defb 240
    defb 0
    defb 5
    defb 148
    defb 0
    defb 148
    defb 0
    defb 148
    defb 128
    defb 148
    defb 128
    defb 148
    defb 128
    defb 148
    defb 128
    defb 148
    defb 128
    defb 148
    defb 128
    defb 222
    defb 24
    defb 2
    defb 29
    defb 244
    defb 0
    defb 16
    defb 128
    defb 12
    defb 94
    defb 22
    defb 3
    defb 244
    defb 0
    defb 140
    defb 30
    defb 23
    defb 221
    defb 127
    defb 244
    defb 0
    defb 16
JUSTADDCREAM_SUBSONG0_TRACK19:
	defb 221
    defb 23
    defb 221
    defb 127
    defb 244
    defb 0
    defb 1
JUSTADDCREAM_SUBSONG0_TRACK20:
	defb 240
    defb 0
    defb 53
    defb 12
    defb 177
    defb 1
    defb 2
    defb 12
    defb 241
    defb 2
    defb 3
    defb 18
    defb 193
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK21:
	defb 12
    defb 96
    defb 3
    defb 22
    defb 221
    defb 2
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 3
    defb 22
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 22
    defb 160
    defb 3
    defb 54
    defb 12
    defb 163
    defb 2
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 98
    defb 3
    defb 22
    defb 12
    defb 96
    defb 38
    defb 12
    defb 163
    defb 54
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 98
    defb 29
    defb 12
    defb 227
    defb 3
    defb 3
    defb 38
    defb 12
    defb 101
    defb 22
    defb 221
    defb 2
    defb 12
    defb 229
    defb 3
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 162
    defb 3
    defb 22
    defb 12
    defb 224
    defb 127
    defb 54
JUSTADDCREAM_SUBSONG0_TRACK22:
	defb 224
    defb 3
    defb 227
    defb 9
    defb 38
    defb 12
    defb 160
    defb 2
    defb 162
    defb 3
    defb 22
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 22
    defb 160
    defb 3
    defb 54
    defb 12
    defb 163
    defb 2
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 98
    defb 3
    defb 22
    defb 12
    defb 96
    defb 38
    defb 12
    defb 163
    defb 54
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 98
    defb 221
    defb 2
    defb 12
    defb 227
    defb 3
    defb 3
    defb 38
    defb 12
    defb 101
    defb 22
    defb 221
    defb 2
    defb 12
    defb 229
    defb 3
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 162
    defb 3
    defb 22
    defb 224
    defb 127
    defb 54
JUSTADDCREAM_SUBSONG0_TRACK23:
	defb 12
    defb 127
    defb 7
    defb 3
    defb 9
    defb 244
    defb 0
    defb 129
    defb 78
    defb 64
    defb 72
    defb 3
    defb 12
    defb 127
    defb 8
    defb 2
    defb 187
    defb 7
    defb 72
    defb 12
    defb 123
    defb 8
    defb 2
    defb 181
    defb 7
    defb 72
    defb 12
    defb 117
    defb 8
    defb 2
    defb 117
    defb 7
    defb 120
    defb 8
    defb 3
    defb 12
    defb 122
    defb 7
    defb 3
    defb 244
    defb 0
    defb 130
    defb 69
    defb 157
    defb 24
    defb 75
    defb 8
    defb 93
    defb 244
    defb 0
    defb 5
    defb 12
    defb 117
    defb 8
    defb 3
    defb 24
    defb 75
    defb 8
    defb 157
    defb 244
    defb 0
    defb 5
    defb 119
    defb 7
    defb 3
    defb 66
    defb 3
    defb 12
    defb 123
    defb 8
    defb 2
    defb 71
    defb 114
    defb 7
    defb 3
    defb 72
    defb 3
    defb 119
    defb 8
    defb 3
    defb 66
    defb 3
    defb 12
    defb 115
    defb 7
    defb 3
    defb 24
    defb 120
    defb 8
    defb 119
    defb 7
    defb 3
    defb 8
    defb 12
    defb 115
    defb 8
    defb 3
    defb 24
    defb 115
    defb 7
    defb 119
    defb 8
    defb 8
    defb 119
    defb 7
    defb 3
    defb 12
    defb 115
    defb 8
    defb 3
    defb 24
    defb 115
    defb 7
    defb 119
    defb 8
    defb 8
    defb 12
    defb 114
    defb 7
    defb 2
    defb 136
    defb 114
    defb 8
    defb 12
    defb 242
    defb 7
    defb 2
    defb 24
    defb 120
    defb 8
    defb 12
    defb 117
    defb 7
    defb 8
    defb 12
    defb 50
    defb 8
    defb 24
    defb 12
    defb 126
    defb 58
    defb 7
    defb 9
    defb 244
    defb 128
    defb 129
    defb 74
    defb 157
    defb 24
    defb 72
    defb 8
    defb 12
    defb 122
    defb 8
    defb 3
    defb 24
    defb 178
    defb 7
    defb 221
    defb 127
    defb 244
    defb 0
    defb 6
JUSTADDCREAM_SUBSONG0_TRACK24:
	defb 12
    defb 212
    defb 2
    defb 3
    defb 6
    defb 112
    defb 0
    defb 86
    defb 64
    defb 84
    defb 94
    defb 19
    defb 148
    defb 94
    defb 24
    defb 64
    defb 148
    defb 30
    defb 26
    defb 64
    defb 94
    defb 14
    defb 64
    defb 158
    defb 26
    defb 95
    defb 94
    defb 24
    defb 158
    defb 26
    defb 158
    defb 28
    defb 128
    defb 30
    defb 29
    defb 64
    defb 94
    defb 17
    defb 64
    defb 158
    defb 29
    defb 95
    defb 94
    defb 24
    defb 158
    defb 29
    defb 25
    defb 64
    defb 222
    defb 24
    defb 3
    defb 159
    defb 192
    defb 6
    defb 86
    defb 148
    defb 222
    defb 19
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK25:
	defb 12
    defb 96
    defb 3
    defb 22
    defb 221
    defb 2
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 3
    defb 22
    defb 12
    defb 160
    defb 3
    defb 38
    defb 162
    defb 22
    defb 160
    defb 3
    defb 54
    defb 12
    defb 163
    defb 2
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 163
    defb 3
    defb 54
    defb 160
    defb 38
    defb 12
    defb 98
    defb 3
    defb 22
    defb 12
    defb 96
    defb 38
    defb 12
    defb 163
    defb 54
    defb 93
    defb 12
    defb 99
    defb 2
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 12
    defb 96
    defb 38
    defb 93
    defb 12
    defb 163
    defb 3
    defb 54
    defb 98
    defb 29
    defb 12
    defb 227
    defb 3
    defb 3
    defb 38
    defb 12
    defb 101
    defb 22
    defb 221
    defb 2
    defb 12
    defb 101
    defb 82
    defb 93
    defb 12
    defb 165
    defb 66
    defb 12
    defb 101
    defb 50
    defb 93
    defb 12
    defb 165
    defb 34
    defb 12
    defb 101
    defb 2
    defb 221
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK26:
	defb 12
    defb 193
    defb 3
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 129
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 177
    defb 1
    defb 34
    defb 12
    defb 1
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 193
    defb 9
    defb 12
    defb 177
    defb 2
    defb 34
    defb 12
    defb 193
    defb 127
    defb 18
JUSTADDCREAM_SUBSONG0_TRACK27:
	defb 119
    defb 11
    defb 72
    defb 12
    defb 117
    defb 9
    defb 2
    defb 74
    defb 117
    defb 10
    defb 114
    defb 9
    defb 122
    defb 10
    defb 117
    defb 11
    defb 117
    defb 9
    defb 74
    defb 117
    defb 11
    defb 114
    defb 9
    defb 122
    defb 10
    defb 117
    defb 11
    defb 114
    defb 10
    defb 122
    defb 11
    defb 69
    defb 66
    defb 119
    defb 9
    defb 66
    defb 114
    defb 11
    defb 120
    defb 9
    defb 114
    defb 10
    defb 71
    defb 119
    defb 9
    defb 66
    defb 119
    defb 10
    defb 120
    defb 9
    defb 114
    defb 10
    defb 119
    defb 11
    defb 120
    defb 10
    defb 242
    defb 11
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK28:
	defb 114
    defb 11
    defb 69
    defb 12
    defb 126
    defb 64
    defb 9
    defb 2
    defb 75
    defb 127
    defb 10
    defb 122
    defb 9
    defb 123
    defb 10
    defb 127
    defb 11
    defb 127
    defb 9
    defb 75
    defb 127
    defb 11
    defb 122
    defb 9
    defb 123
    defb 10
    defb 127
    defb 11
    defb 122
    defb 10
    defb 123
    defb 11
    defb 79
    defb 74
    defb 114
    defb 9
    defb 74
    defb 122
    defb 11
    defb 117
    defb 9
    defb 122
    defb 10
    defb 66
    defb 114
    defb 9
    defb 74
    defb 114
    defb 11
    defb 117
    defb 9
    defb 122
    defb 10
    defb 114
    defb 11
    defb 117
    defb 10
    defb 250
    defb 11
    defb 127
JUSTADDCREAM_SUBSONG0_TRACK29:
	defb 12
    defb 193
    defb 3
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 129
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 177
    defb 1
    defb 34
    defb 12
    defb 1
    defb 2
    defb 12
    defb 49
    defb 2
    defb 18
    defb 12
    defb 49
    defb 1
    defb 2
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 241
    defb 1
    defb 5
    defb 2
    defb 12
    defb 241
    defb 2
    defb 3
    defb 18
    defb 12
    defb 177
    defb 1
    defb 2
    defb 12
    defb 129
    defb 34
    defb 12
    defb 177
    defb 2
    defb 18
    defb 12
    defb 65
    defb 50
    defb 12
    defb 193
    defb 127
    defb 18
JUSTADDCREAM_SUBSONG0_TRACK30:
	defb 205
    defb 127
JUSTADDCREAM_SUBSONG0_NOTEINDEXES:
	defb 48
    defb 12
    defb 55
    defb 53
    defb 21
    defb 60
    defb 33
    defb 52
    defb 57
    defb 31
    defb 59
    defb 62
PLY_AKM_CHANNEL1_SOUNDEFFECTDATA:
	defw  57431
PLY_AKM_CHANNEL2_SOUNDEFFECTDATA:
	defw  57439
PLY_AKM_CHANNEL3_SOUNDEFFECTDATA:
	defw  57447
PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS:
	defw  57359
PLY_AKM_DEFAULTSTARTNOTEINTRACKS:
	defw  57358
PLY_AKM_DEFAULTSTARTWAITINTRACKS:
	defw  57360
PLY_AKM_FLAGNOTEANDEFFECTINCELL:
	defw  57365
PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT:
	defw  57367
PLY_AKM_MIXERREGISTER:
	defw  57414
PLY_AKM_NOISEREGISTER:
	defw  57410
PLY_AKM_NOTEINDEXTABLE:
	defw  57352
PLY_AKM_PATTERNREMAININGHEIGHT:
	defw  57366
PLY_AKM_PRIMARYINSTRUMENT:
	defw  57361
PLY_AKM_PRIMARYWAIT:
	defw  57363
PLY_AKM_PTARPEGGIOS:
	defw  57346
PLY_AKM_PTINSTRUMENTS:
	defw  57344
PLY_AKM_PTLINKER:
	defw  57350
PLY_AKM_PTPITCHES:
	defw  57348
PLY_AKM_PTSOUNDEFFECTTABLE:
	defw  57429
PLY_AKM_REG11:
	defw  57418
PLY_AKM_REG12:
	defw  57422
PLY_AKM_RT_READEFFECTSFLAG:
	defw  57372
PLY_AKM_SAVESP:
	defw  57356
PLY_AKM_SECONDARYINSTRUMENT:
	defw  57362
PLY_AKM_SECONDARYWAIT:
	defw  57364
PLY_AKM_SETREG13:
	defw  57371
PLY_AKM_SETREG13OLD:
	defw  57370
PLY_AKM_SPEED:
	defw  57368
PLY_AKM_TICKCOUNTER:
	defw  57369
PLY_AKM_TRACK1_ESCAPEINSTRUMENT:
	defw  57459
PLY_AKM_TRACK1_ESCAPENOTE:
	defw  57458
PLY_AKM_TRACK1_ESCAPEWAIT:
	defw  57460
PLY_AKM_TRACK1_PTINSTRUMENT:
	defw  57461
PLY_AKM_TRACK1_PTSTARTTRACK:
	defw  57453
PLY_AKM_TRACK1_REGISTERS:
	defw  57373
PLY_AKM_TRACK1_VOLUME:
	defw  57374
PLY_AKM_TRACK1_WAITEMPTYCELL:
	defw  57452
PLY_AKM_TRACK2_ESCAPEINSTRUMENT:
	defw  57494
PLY_AKM_TRACK2_ESCAPENOTE:
	defw  57493
PLY_AKM_TRACK2_ESCAPEWAIT:
	defw  57495
PLY_AKM_TRACK2_PTINSTRUMENT:
	defw  57496
PLY_AKM_TRACK2_REGISTERS:
	defw  57385
PLY_AKM_TRACK2_VOLUME:
	defw  57386
PLY_AKM_TRACK2_WAITEMPTYCELL:
	defw  57487
PLY_AKM_TRACK3_ESCAPEINSTRUMENT:
	defw  57529
PLY_AKM_TRACK3_ESCAPENOTE:
	defw  57528
PLY_AKM_TRACK3_ESCAPEWAIT:
	defw  57530
PLY_AKM_TRACK3_PTINSTRUMENT:
	defw  57531
PLY_AKM_TRACK3_REGISTERS:
	defw  57397
PLY_AKM_TRACK3_VOLUME:
	defw  57398
PLY_AKM_TRACK3_WAITEMPTYCELL:
	defw  57522
PLY_AKM_TRACKINDEX:
	defw  57354
