; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_01e_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01e_403f

    ld b, l
    jr nz, jr_01e_4032

    ld b, e
    db $e4
    ld b, l
    cp d
    ld c, d
    dec a
    ld c, [hl]
    ld h, a
    ld c, c
    jp Jump_01e_5625


    jp Jump_01e_729f


    jp Jump_01e_4023


Jump_01e_4023:
    ld de, $6aab
    ret


    xor a
    ld [$d771], a
    ld [$d76e], a
    ld [$de29], a
    ret


Call_01e_4032:
jr_01e_4032:
    push bc
    call Call_000_0201
    pop bc
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ld [$cc05], a

jr_01e_403f:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld [$cc24], a
    call Call_000_01e3
    ret c

    ld a, $07
    add c
    ld l, a
    ld [hl], $80
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    ld a, [$cc05]
    ld [hl], a
    ld a, $24
    add c
    ld l, a
    ld a, [$cc24]
    ld [hl], a
    ld a, [$cc00]
    ld e, a

jr_01e_406b:
    ld a, [$cc01]
    ld d, a
    ld a, $00
    add c
    ld l, a
    call Call_000_017d
    inc l
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $13
    add c
    ld l, a
    call Call_000_0177
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $1c
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    ld a, $21
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc l
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$c3ef]
    sub b
    ret nc

    cpl
    inc a
    scf
    ret


    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$c3f0]
    sub b
    ret nc

    cpl
    inc a
    scf
    ret


    ldh [$ff8a], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ldh [$ff8b], a
    ld a, [$c3ef]
    ldh [$ff8c], a
    ld a, $1f
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    call Call_000_016b
    ldh a, [$ff8b]
    ld b, a
    ldh a, [$ff8c]
    sub b
    jr nc, jr_01e_40dd

    cpl
    inc a
    scf

jr_01e_40dd:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_01e_41bd
    ld c, l
    ld b, h
    ldh a, [$ff8a]
    ld e, a
    ld d, $00
    call Call_000_0285
    srl h
    rr l
    ld e, l
    ld d, h
    pop hl
    ld c, l
    pop af
    call c, Call_000_016b
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_01e_4104:
    ld a, $26
    add c
    ld l, a
    ld b, [hl]
    push hl
    push bc
    call Call_000_015f
    pop de
    pop hl
    ldh a, [$ff8b]
    or a
    ret z

    ld [hl], d
    ld a, $17
    add c
    ld l, a
    ldh a, [$ff8e]
    ld [hl], a
    scf
    ret


Call_01e_411e:
    ld a, $26
    add c
    ld l, a
    inc de
    inc de
    inc de
    inc de
    ld a, e
    add [hl]
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    cp $ff
    ret


Call_01e_4131:
    xor a
    jr jr_01e_4136

Call_01e_4134:
    ld a, $ff

jr_01e_4136:
    ld l, $01
    jr jr_01e_4141

Call_01e_413a:
    xor a
    jr jr_01e_413f

Call_01e_413d:
    ld a, $01

jr_01e_413f:
    ld l, $00

jr_01e_4141:
    ldh [$ff8a], a
    ld a, l
    ldh [$ff8c], a
    ld l, c
    push hl
    ld a, $0f
    add c
    ld l, a
    push hl
    add $fe
    ld l, a
    ld a, [de]
    add [hl]
    ld c, a
    inc de
    ld a, [de]
    add [hl]
    ld b, a
    pop hl
    ldh a, [$ff8c]
    or a
    jr nz, jr_01e_415e

    inc de

jr_01e_415e:
    inc de
    ld a, [de]
    add [hl]
    ld d, a
    ldh a, [$ff8a]
    add d
    ld d, a
    ld e, c
    call Call_000_0216
    pop hl
    ld c, l
    and $03
    ret z

    scf
    ret


    push de
    call Call_01e_413d
    pop de
    jr c, jr_01e_4186

jr_01e_4178:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_01e_413d
    pop de
    jr nc, jr_01e_4178

    or a
    ret


jr_01e_4186:
    push de
    call Call_01e_413a
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_01e_4186

    push de
    call Call_01e_4134
    pop de
    jr c, jr_01e_41a8

jr_01e_419a:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_01e_4134
    pop de
    jr nc, jr_01e_419a

    or a
    ret


jr_01e_41a8:
    push de
    call Call_01e_4131
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_01e_41a8

Call_01e_41b5:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_01e_41bd:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_01e_41c6:
    push af
    sla e
    rl d
    rl l
    rl h
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_01e_41da

    add hl, bc
    jr jr_01e_41db

jr_01e_41da:
    inc de

jr_01e_41db:
    pop af
    dec a
    jr nz, jr_01e_41c6

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


    ldh a, [$ff8f]
    or a
    ret z

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp b
    scf
    ret z

    or a
    ret


    xor a
    ld [$de2c], a
    ld [$cc6c], a
    ld a, $80
    ld [$cc6b], a
    ld a, [$de96]
    ld [$cc6f], a
    ld a, $01
    ld [$cc6d], a
    ret


    ld a, [$cc6a]
    ld b, a
    ld a, [$d7d2]
    sub b
    ld [$d8ac], a
    ld a, $7f
    ld [$d8ad], a
    ld a, $08
    ld [$de2c], a
    ret


    xor a
    ld [$cc81], a
    xor a
    ld [$cc6a], a
    ld a, [$d7d2]
    ld [$d8ac], a
    ret


    ld a, [$c3ef]
    ld e, a
    ld a, [$c3f0]
    ld d, a
    jr jr_01e_4243

    ld a, [$d72f]
    ld e, a
    ld a, [$d730]

Jump_01e_4242:
    ld d, a

jr_01e_4243:
    ld a, e
    cp [hl]
    ret c

    inc hl
    cp [hl]
    ccf
    ret c

    inc hl
    ld a, d
    cp [hl]
    ret c

    inc hl
    cp [hl]
    ccf
    ret


    ld c, l
    ld b, $10
    call Call_000_01b0
    call Call_000_015c
    ret


    ld c, l
    ld b, $10
    jp Jump_000_01b3


    ld c, l
    jp Jump_000_015f


    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


    di
    ld hl, $cca8
    ld [hl], $01
    inc hl
    xor a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    ei
    ret


    di
    ld hl, $cca8
    ld [hl], $05
    inc hl
    xor a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], d
    ei
    ret


Call_01e_4291:
    di
    ld hl, $cca8
    ld [hl], $07
    inc hl
    xor a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], e
    inc hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], d
    ei
    ret


jr_01e_42a9:
    ld a, [$cca8]
    and $07
    jr nz, jr_01e_42a9

    ret


    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld b, l
    ld a, e
    ldh [$ff8f], a
    ld a, d
    ldh [$ff90], a
    xor a
    ldh [$ff8c], a
    ldh [$ff8d], a
    ld a, [hl]
    or a
    jr z, jr_01e_42ca

    dec [hl]
    xor a
    sub $01
    ret


jr_01e_42ca:
    inc l

jr_01e_42cb:
    ld a, [hl]
    add a
    add [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $fe
    jr nz, jr_01e_42de

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_01e_42de:
    cp $ff
    jr nz, jr_01e_42ee

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_01e_42cb

jr_01e_42ee:
    inc [hl]
    dec l
    ld [hl], a
    ld a, $01
    ldh [$ff8d], a
    inc de
    ld a, [de]
    ldh [$ff8a], a
    inc de
    ld a, [de]
    ldh [$ff8b], a
    xor a
    inc a
    ret


    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_01e_4304:
    push bc
    push de
    ld b, $00
    call Call_000_0183
    pop de
    push hl
    ld a, d
    and $9c
    ld b, a
    ld hl, $0020
    add hl, de
    ld e, l
    ld a, h
    and $03
    or b
    ld d, a
    pop hl
    pop bc
    dec b
    jr nz, jr_01e_4304

    ret


    inc l
    inc h
    ld b, e
    inc bc
    inc bc
    rrca
    inc c
    ld a, [de]
    rra
    ccf
    dec [hl]
    cpl
    jr c, jr_01e_43ae

    ld d, b
    ld e, a
    ld l, b
    sbc a
    push af
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ffc8]
    ld hl, sp-$3c
    ld a, h
    sbc [hl]
    ld a, [$66fa]
    pop hl
    sbc a
    pop de
    ld a, a
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc b
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ffda
    rst $38
    or a
    cp a
    push de
    push de
    ld a, d
    ld [hl], a
    cp a
    ccf
    ld hl, sp+$58
    rst $38
    rst $30
    rst $18
    di
    cp $de
    cp l
    call c, $91b3
    ld a, a
    xor [hl]
    rst $38
    jp c, Jump_000_3fff

    db $eb
    rst $28
    db $db
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    ld a, c
    add a
    di
    rrca
    and $de
    db $ec
    inc a
    xor b
    ld a, b
    ld e, $1e
    dec l
    scf
    ld e, a
    ld a, d
    ld a, d
    ld e, a
    ld [hl], l
    ld l, [hl]
    ld e, c
    ld a, a
    scf
    ld a, [hl+]
    inc e
    rra
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    or a
    db $fc
    xor a
    db $fc
    ld d, b
    rst $18
    ld c, a
    rst $08
    adc e
    adc [hl]
    cp d
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    ldh a, [c]
    ld a, [hl]

jr_01e_43ae:
    inc c
    db $fc
    ld hl, sp-$08
    ret c

    ld a, b
    ret c

    ld hl, sp-$10
    ldh a, [rNR10]
    ldh a, [$ff78]
    sbc b
    or h
    db $ec
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld a, d
    halt
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld c, $0f
    rrca
    rrca
    rrca
    rra
    rra
    ld a, $26
    ld [hl], $2e
    ld a, [hl]
    ld a, [hl]
    ld e, d
    ld h, [hl]
    ret c

    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, h
    ld a, h
    ld a, $32
    ld [hl], $3a
    ccf
    ccf
    dec l
    inc sp
    jp c, $bcee

    db $e4
    ld [hl], h
    ld l, h
    ld l, b
    ld e, b
    jr nc, jr_01e_442e

    nop
    nop
    nop
    nop
    nop
    nop
    rla
    jr jr_01e_4445

    add hl, hl
    ld a, h
    ld d, a
    sub l
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    add $44
    rst $00
    add $c7
    ld b, l
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    dec l
    scf
    ld e, a
    ld a, d
    ld a, d
    ld e, a
    ld [hl], l
    ld l, [hl]

jr_01e_442e:
    ld e, c
    ld a, a
    scf
    ld a, [hl+]
    inc e
    rra
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    or a
    db $fc
    xor a
    db $fc
    ld d, b
    rst $18
    ld e, a
    rst $18
    ei
    cp $0f

jr_01e_4445:
    rrca
    inc bc

jr_01e_4447:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

jr_01e_444d:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $38
    cp $ff
    rst $38
    ldh [$ffe0], a
    and b
    ldh [$ffd0], a
    jr nc, jr_01e_4447

    jr jr_01e_444d

    inc e
    push de
    cp l
    ret c

    ld a, b
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld e, $1e
    ld e, $1e
    cpl
    ccf
    rst $08
    ld sp, hl
    ld e, e
    db $ed
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    reti


    ld a, c
    or c
    pop af
    ldh [$ff60], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    rst $20
    ld a, [hl-]
    add $ba
    cp $dc
    db $e4
    cp h
    db $fc
    ld a, b
    ld c, b
    ld c, b
    ld a, b
    jr nc, jr_01e_44d4

    ld b, $06
    dec de
    dec e
    add hl, hl
    ccf
    ld e, e
    ld l, l
    ld a, c
    ld l, a
    ld e, e
    ld l, l
    add hl, hl
    ccf
    dec de
    dec e
    rlca
    rlca
    call nz, Call_000_3ec7
    rst $38
    db $d3
    ccf
    pop af
    rra
    pop de
    ccf
    ccf
    rst $38
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    rst $38
    rst $38
    ld a, c
    add a
    di
    rrca
    and $de
    db $ec
    inc a
    xor h
    ld a, h

jr_01e_44d4:
    db $db
    db $ec
    ld a, h
    ld [hl], a
    ld l, a
    ld a, e
    scf
    inc a
    cpl
    inc a
    db $10
    rra
    rra
    rra
    ld a, e
    ld a, [hl]
    ld a, [$fdf6]
    db $d3
    ld e, l
    di
    ld sp, hl
    or a
    db $e3
    cp a
    cp [hl]
    sbc $5c
    ld h, h
    jr c, @+$3a

    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1608], sp
    ld e, $3d
    scf
    ld e, l
    ld [hl], a
    set 6, l
    sbc e
    push hl
    db $db
    and l
    rst $38
    add c
    cp l
    jp $ffc3


    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    ld bc, $0a01
    dec bc
    rla
    ld e, $1d
    ld d, $2d
    ld [hl], $2b
    inc [hl]
    dec sp
    inc h
    ccf
    jr nz, jr_01e_4535

jr_01e_4535:
    nop
    add b
    add b
    ld d, b
    ret nc

    ld l, b
    ld hl, sp+$68
    ld hl, sp+$24
    db $fc
    or h
    ld l, h
    call nc, $2f2c
    jr nc, jr_01e_4576

    jr nc, jr_01e_4578

    jr nc, jr_01e_457a

    jr nc, jr_01e_4564

    jr jr_01e_456a

    inc e
    ld c, $0f
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc l
    inc l
    ld e, e
    ld a, a

jr_01e_4564:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_456a:
    ld [$5408], sp
    ld e, h
    or h
    db $fc
    cp $b6
    ld l, d
    or [hl]
    ld [hl], e
    ld e, a

jr_01e_4576:
    or l
    db $db

jr_01e_4578:
    and l
    db $db

jr_01e_457a:
    xor h
    db $d3
    db $ec
    sub e
    xor $91
    cp $81
    cp $81
    ld l, c
    or a
    ld c, l
    or e
    ld e, l
    and e
    ld e, l
    and e
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c0bf
    cp a
    ret nz

    sbc a
    ldh [$ffdf], a
    ldh [$ffc7], a
    ld hl, sp+$60
    ld a, a
    ld a, b
    ld a, a
    rra
    rra
    inc b
    inc b
    ld a, [hl+]
    ld l, $5e
    ld a, d
    ld [hl], a
    ld e, e
    ld h, l
    ld e, e
    xor l
    db $d3
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    nop
    nop
    nop
    nop
    add b
    add b
    ld c, b
    ret z

    ld e, h
    call nc, Call_01e_76ba
    ld [$dd36], a
    inc hl
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38

jr_01e_45cd:
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$ffdf], a
    ldh [rVBK], a
    ld [hl], b
    ld h, a
    ld a, b
    jr c, @+$41

    rra
    rra
    jr c, jr_01e_45cd

    ld b, l
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld a, [bc]
    rrca
    rla
    ld e, $1d
    ld d, $3f
    inc h
    ret c

    ret c

    xor h
    db $fc
    sub $be
    ld d, l
    cp a
    db $db
    ccf
    or l
    ld a, a
    xor a
    ld [hl], c
    sbc a
    ld h, c
    dec sp
    inc h
    ccf
    jr nz, @+$31

    jr nc, jr_01e_462d

    db $10
    rla
    jr jr_01e_461d

    inc c
    ld b, $07
    ld bc, $df01
    ld hl, $03fd
    db $fd
    inc bc

jr_01e_461d:
    cp $02
    ld a, [de]
    and $14
    db $ec
    jr jr_01e_461d

    ldh [$ffe0], a
    nop
    nop
    inc b
    inc b
    dec bc
    rrca

jr_01e_462d:
    dec d
    rra
    dec de
    rra
    dec hl
    ccf
    dec [hl]
    dec hl
    ld a, $21
    ld h, b
    ld h, b
    and b
    ldh [$ffb8], a
    ld hl, sp+$74
    cp h
    ld e, d
    cp [hl]
    ld d, [hl]
    cp d
    ld l, l
    sbc e
    ld a, l
    adc e
    ld l, $31
    cpl
    jr nc, jr_01e_467b

    jr nc, @+$18

    add hl, de
    ld [de], a
    dec e
    add hl, bc
    ld c, $06
    rlca
    ld bc, $f701
    add hl, bc
    rst $38
    ld bc, $c33d
    ld e, $e2
    ld a, [de]
    and $34
    call z, $f818
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc b
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $1e1e
    dec l
    scf

jr_01e_467b:
    ld e, a
    ld a, d
    ld a, d
    ld e, a
    ld [hl], l
    ld l, [hl]
    ld e, c
    ld a, a
    scf
    ld a, [hl+]
    dec e
    rra
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    or a
    db $fc
    xor a
    db $fc
    ld d, b
    rst $18
    rst $38
    rst $38
    ei
    cp $ba
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    ldh a, [c]
    ld a, [hl]
    inc c
    db $fc
    ld hl, sp-$08
    rst $18
    ld a, a
    rst $38
    rst $20
    scf
    cpl
    ld a, $39
    dec de
    inc e
    dec e
    ld d, $3a
    cpl
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, a
    db $fd
    rst $20
    rst $38
    rst $38
    add c
    add c
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    ldh [$ffa0], a
    ldh [$ffe0], a
    ldh [$fffe], a
    cp $ff
    ld sp, hl
    cp $ff
    inc sp
    inc a
    add hl, bc
    ld c, $06
    rlca
    dec b
    rlca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    or b
    ld [hl], b
    ld hl, sp+$28
    ld a, h
    call nc, $fe52
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $04
    rlca
    rlca
    rlca
    jp c, $ffff

    or a
    cp a
    push de
    ld d, l
    ld a, d
    rst $30
    cp a
    rst $38
    jr c, jr_01e_475c

    rst $38
    ld [hl], a
    rst $18
    inc bc
    inc bc
    nop
    nop
    ld bc, $0201
    inc bc
    ld c, $0f
    dec [hl]
    dec sp
    ld l, [hl]
    ld [hl], c
    sbc $b1
    db $db
    db $ec
    db $fc
    rst $30
    ld l, a
    ei
    scf
    db $fc
    cpl
    db $fc
    ld d, b
    rst $18
    rst $38
    rst $38
    ei
    cp $10
    rra
    add hl, de
    ld e, $14
    rra
    ld e, $13
    dec e
    dec de
    rrca
    rrca
    nop
    nop
    nop
    nop
    rst $18
    or a
    ld d, a
    rst $38
    ld a, $f9
    ld a, e
    cp h
    ld e, l
    sub $ba
    xor a
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld bc, $0e01
    rrca
    dec sp
    inc a
    ld d, a
    ld a, e
    xor h
    rst $30
    db $d3
    db $ec
    xor [hl]
    pop de
    cp a
    ret nz

    ret nz

    ret nz

    rst $38
    ld a, a
    db $ed

jr_01e_475c:
    di
    ld [hl], $ce
    call c, $b43c
    ld a, h
    ld a, b
    ld hl, sp-$10
    stop
    nop
    rlca
    rlca
    dec de
    dec e
    ld h, $3f
    ld c, e
    ld a, h
    sbc l
    db $e3
    cp b
    rst $00
    cp a
    ret nz

    nop
    nop
    ld a, b
    ld a, b
    xor b
    ret c

    ret nc

    jr nc, @+$7a

    ld hl, sp-$28
    add sp, $3c
    db $fc
    ld a, [$0306]
    inc bc
    inc c
    rrca
    inc de
    inc e
    cpl
    jr nc, @+$41

    jr nz, jr_01e_47f1

    ld h, b
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    ld b, a
    ld a, b
    inc hl
    inc a
    inc hl
    inc a
    ld de, $0c1e
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    dec de
    inc e
    rla
    jr @+$31

    jr nc, @+$31

    jr nc, jr_01e_47e3

    jr nc, @+$29

    jr c, @+$19

    jr jr_01e_47cd

    inc e
    inc de
    inc e
    add hl, bc
    ld c, $09
    ld c, $05
    ld b, $02
    inc bc
    ld bc, $0301
    inc bc
    inc c
    rrca
    dec bc
    inc c

jr_01e_47cd:
    rla
    jr @+$19

    jr jr_01e_47e9

    jr @+$15

    inc e
    inc de
    inc e
    dec bc
    inc c
    dec bc
    inc c
    add hl, bc
    ld c, $05
    ld b, $05
    ld b, $03
    ld [bc], a

jr_01e_47e3:
    ld [bc], a
    inc bc
    ld bc, $0001
    nop

jr_01e_47e9:
    rlca
    rlca
    inc b
    rlca
    ld b, $07
    inc bc
    inc bc

jr_01e_47f1:
    ld bc, $0101
    ld bc, $0707
    jp c, $ffff

    or a
    cp a
    push de
    ld d, l
    ld a, [$ff37]
    ccf
    ld hl, sp-$28
    rst $38
    rst $30
    rst $18
    di
    cp $de
    cp l
    db $dd
    or e
    sub d
    ld a, a
    xor [hl]
    rst $38
    db $db
    rst $38
    ccf
    db $eb
    xor $db
    add b
    add b
    rst $38
    rst $38
    ld a, c
    add a
    di
    rrca
    and $de
    db $ec
    inc a
    xor h
    ld a, h
    jp c, Jump_000_0bfe

    dec c
    rla
    ld e, $1e
    rla
    dec e
    dec de
    ld d, $1f
    dec c
    ld a, [bc]
    rlca
    rlca
    inc bc
    inc bc
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    ld [hl], a
    cp h
    ld l, a
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    ei
    ld a, $b9
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    di
    ld a, a
    inc c
    db $fc
    ld hl, sp-$08
    ret c

    ld a, b
    db $fd
    rst $38
    ld [hl], e
    rst $38
    cp l
    bit 7, a
    push hl
    rst $38
    add l
    or a
    call Call_01e_7a4e
    inc a
    inc a
    db $dd
    cp a
    rst $20
    rst $38
    add d
    cp $42
    ld a, [hl]
    ld [hl], d
    ld a, [hl]
    ld c, h
    ld a, h
    ld c, b
    ld a, b
    jr nc, jr_01e_48a7

    db $ec
    inc a
    db $fc
    db $fc
    inc a
    inc a
    ld a, $3e
    rra
    rra
    ld e, $13
    dec de
    ld d, $0f
    inc c
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ld d, b
    ldh a, [$ff30]
    ldh a, [$ffa0]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld [$070f], sp
    rlca
    rrca
    ld c, $11
    rra
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_48a7:
    dec bc
    dec c
    rla
    ld e, $1e
    rla
    dec e
    dec de
    ld d, $1f
    dec c
    ld a, [bc]
    rlca
    rlca
    inc bc
    inc bc
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    ld [hl], a
    cp h
    ld l, a
    db $fc
    ret nc

    cp a
    cpl
    rst $28
    set 1, [hl]
    cp c
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    di
    ld a, a
    inc c
    db $fc
    ld hl, sp-$08
    ret c

    ld a, b
    dec bc
    ld c, $07
    rlca
    rlca
    rlca
    ld b, $07
    rrca
    add hl, bc
    dec c
    dec bc
    ld b, $07
    dec b
    rlca
    ret c

    ld a, b
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld h, b
    ldh [$ffd0], a
    jr nc, jr_01e_495c

    sbc b
    xor b
    ret c

    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld e, b
    ld hl, sp-$4c
    db $fc
    ld [hl], h
    db $fc
    sub h
    db $fc
    inc c
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    ld [hl], a
    cp h
    ld l, a
    db $fc
    rst $10
    or a
    cpl
    rst $28
    rst $08
    ret


    cp c
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    di
    ld a, a
    adc h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    dec [hl]
    cpl
    ld a, $39
    inc hl
    inc a
    dec e
    ld e, $1e
    dec de
    dec a
    daa
    ld b, d
    ld a, [hl]
    ld a, h
    ld a, h
    ldh [$ffe0], a
    ldh a, [$fff0]
    ld [hl], b
    ldh a, [$ffb8]
    ld hl, sp-$04
    db $fc
    call z, $4afc
    ld a, [hl]
    ld [hl-], a
    ld a, $21
    ccf
    add hl, sp
    ccf
    dec h

jr_01e_495c:
    ccf
    ld b, e
    ld a, a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld l, d
    ld c, c
    db $db
    db $ec
    ld a, h
    ld [hl], a
    ld l, a
    ld a, e
    scf
    inc a
    cpl
    inc a
    db $10
    rra
    rst $38
    rst $38
    ei
    cp $ba
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    ldh a, [c]
    ld a, [hl]
    inc c
    db $fc
    ld hl, sp-$08
    rst $18
    ld a, a
    ccf
    daa
    scf
    cpl
    ld a, $39
    dec de
    inc e
    dec e
    ld d, $3a
    cpl
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    ld a, [de]
    ld a, d
    ld l, l
    add sp, -$49
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    dec b
    dec b
    ld b, $0f
    ld a, [bc]
    ld c, $0d
    inc c
    dec bc
    and l
    rst $18
    sub a
    ld a, a
    ld e, a
    ld a, [$a8ff]
    rst $38
    add b
    ld [$a015], a
    ld e, a
    nop
    rst $38
    ld [$0d0f], sp
    rrca
    dec bc
    rrca
    rlca
    ld b, $05
    ld b, $02
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    push de
    rst $38
    rst $38
    cp a
    rst $38
    cpl
    cp a
    ld c, d
    cpl
    ret nc

    jp z, $70f5

    ld a, a
    dec e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, [de]
    dec e
    ld l, l
    ld [hl], a
    or a
    rst $18
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $06
    rlca
    ld a, [bc]
    dec c
    dec c
    dec bc
    dec bc
    rrca
    rst $18
    ld a, d
    ld a, a
    add sp, -$06
    and l
    xor b
    ld d, a
    add b
    ld a, a
    dec d
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    ld a, [bc]
    rrca
    inc c
    ld b, $05
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, [hl+]
    cp a
    ld b, b
    cpl
    ret nc

    ld c, d
    push af
    ret nc

    rst $38
    push af
    cp a
    ld a, a
    ld l, a
    rra
    ld a, [de]
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec e
    rra
    ld [hl], a
    ld a, d
    rst $18
    add sp, $01
    ld bc, $0303
    inc bc
    ld [bc], a
    ld b, $07
    rlca
    dec b
    dec c
    rrca
    dec bc
    ld c, $0f

jr_01e_4a79:
    inc c
    ld a, d
    and l
    add sp, -$69
    and l
    ld e, a
    ld d, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld [$a0ff], a
    rst $38
    nop
    rrca
    ld [$0d0a], sp
    inc c
    dec bc
    dec b
    rlca
    rlca
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $ff01
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, [hl+]
    push de
    ld b, b
    rst $38
    ret nc

    rst $38
    push af
    cp a
    rst $38
    cpl
    cp a
    jp z, Jump_01e_706f

    ld a, [de]
    dec e
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01e_4a79

    ld c, d
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld a, [bc]
    rrca
    rla
    ld e, $1d
    ld d, $3f
    inc h
    ret c

    ret c

    xor h
    db $fc
    sub $be
    ld d, l
    cp a
    db $db
    ccf
    or l
    ld a, a
    xor a
    ld [hl], c
    sbc a
    ld h, c
    dec sp
    inc h
    ccf
    jr nz, @+$31

    jr nc, jr_01e_4b03

    db $10
    rla
    jr jr_01e_4af3

    inc c
    ld b, $07
    ld bc, $df01
    ld hl, $03fd
    db $fd
    inc bc

jr_01e_4af3:
    cp $02
    ld a, [de]
    and $14
    db $ec
    jr jr_01e_4af3

    ldh [$ffe0], a
    nop
    nop
    inc b
    inc b
    dec bc
    rrca

jr_01e_4b03:
    dec d
    rra
    dec de
    rra
    dec hl
    ccf
    dec [hl]
    dec hl
    ld a, $21
    ld h, b
    ld h, b
    and b
    ldh [$ffb8], a
    ld hl, sp+$74
    cp h
    ld e, d
    cp [hl]
    ld d, [hl]
    cp d
    ld l, l
    sbc e
    ld a, l
    adc e
    ld l, $31
    cpl
    jr nc, jr_01e_4b51

    jr nc, @+$18

    add hl, de
    ld [de], a
    dec e
    add hl, bc
    ld c, $06
    rlca
    ld bc, $f701
    add hl, bc
    rst $38
    ld bc, $c33d
    ld e, $e2
    ld a, [de]
    and $34
    call z, $f818
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc b
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $1e1e
    dec l
    scf

jr_01e_4b51:
    ld e, a
    ld a, d
    ld a, d
    ld e, a
    ld [hl], l
    ld l, [hl]
    ld e, c
    ld a, a
    scf
    ld a, [hl+]
    dec e
    rra
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    or a
    db $fc
    xor a
    db $fc
    ld d, b
    rst $18
    rst $38
    rst $38
    ei
    cp $ba
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    ldh a, [c]
    ld a, [hl]
    inc c
    db $fc
    ld hl, sp-$08
    rst $18
    ld a, a
    rst $38
    rst $20
    scf
    cpl
    ld a, $39
    dec de
    inc e
    dec e
    ld d, $3a
    cpl
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, a
    db $fd
    rst $20
    rst $38
    rst $38
    add c
    add c
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    ldh [$ffa0], a
    ldh [$ffe0], a
    ldh [$fffe], a
    cp $ff
    ld sp, hl
    cp $ff
    inc sp
    inc a
    add hl, bc
    ld c, $06
    rlca
    dec b
    rlca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    or b
    ld [hl], b
    ld hl, sp+$28
    ld a, h
    call nc, $fe52
    cp $fe
    rlca
    rlca
    ld [$170f], sp
    jr jr_01e_4bf2

    ld sp, $203f
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff78]
    ld hl, sp-$1c
    inc e
    sbc h
    ld a, h
    ldh a, [c]
    ld c, $ce
    ld a, $bf
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    ldh a, [c]
    ld c, $f9
    rlca
    pop af

jr_01e_4bf2:
    rrca
    and $1e
    ld sp, hl
    rlca
    sbc [hl]
    ld a, [hl]
    ldh a, [c]
    ld c, $ce
    ld a, $00
    nop
    inc bc
    inc bc
    inc c
    rrca
    dec de
    inc e
    ld d, $19
    cpl
    jr nc, jr_01e_4c49

    jr nz, @+$41

    jr nz, jr_01e_4c0e

jr_01e_4c0e:
    nop
    add b
    add b
    ld h, b

jr_01e_4c12:
    ldh [rNR10], a

jr_01e_4c14:
    ldh a, [rSVBK]
    ldh a, [$ff98]
    ld a, b
    db $e4
    inc e
    call z, Call_01e_5f3c
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_01e_4c12

    inc e
    sbc h
    ld a, h
    ldh a, [c]
    ld c, $cc
    inc a
    ldh a, [c]
    ld c, $fa
    ld b, $e4
    inc e
    call z, Call_000_003c
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    inc c
    ld e, $19

jr_01e_4c49:
    rla
    jr @+$21

    stop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rSVBK]
    ldh a, [$ffc8]

jr_01e_4c5a:
    jr c, jr_01e_4c94

    ld hl, sp+$2f
    jr nc, jr_01e_4c9f

    jr nz, jr_01e_4ca1

    jr nz, jr_01e_4ca3

jr_01e_4c64:
    jr nz, jr_01e_4ca5

    jr nz, jr_01e_4ca7

    jr nz, @+$31

    jr nc, jr_01e_4c8b

    db $10
    ret z

    jr c, jr_01e_4c64

    inc c
    db $e4
    inc e
    ret z

    jr c, jr_01e_4c5a

    inc e
    sbc b
    ld a, b
    ret z

    jr c, jr_01e_4c14

    ld a, b
    ld bc, $6201
    ld h, e
    ld d, e
    ld [hl], d
    ccf
    ld l, $1d
    ld d, $1b
    inc e
    ld [hl], a
    ld a, b

jr_01e_4c8b:
    cp a
    ret nz

    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_01e_4c94:
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $7b
    ld a, h
    cp a
    ret nz

    nop
    nop

jr_01e_4c9f:
    ld h, b
    ld h, b

jr_01e_4ca1:
    ld d, b
    ld [hl], b

jr_01e_4ca3:
    inc a
    inc l

jr_01e_4ca5:
    dec de
    rla

jr_01e_4ca7:
    inc d
    dec de
    dec bc
    inc c
    dec bc
    inc c
    rlca
    rlca
    dec de
    inc e
    cpl
    scf
    ld e, b
    ld a, b
    ld [hl], b
    ld d, b
    and b
    ldh [$ffe0], a
    and b
    ldh [$ffa0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    dec bc
    inc c
    rla
    jr jr_01e_4ce3

    jr jr_01e_4cce

jr_01e_4cce:
    nop
    jr c, jr_01e_4d09

    ld d, h
    ld l, h
    ld a, h
    ld b, h
    ld d, h
    ld l, h
    jr c, jr_01e_4d11

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $07

jr_01e_4ce3:
    ld a, [bc]
    rrca
    ld d, $1b
    ld e, $1b
    ld e, $1b
    ld e, $1b
    nop
    nop
    ret nz

    ret nz

    rst $20
    ld h, a
    ld d, h
    rst $30
    xor $5f
    ld a, e
    rst $08
    ld sp, hl
    ld c, a
    ld a, c
    rst $08
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    ld a, c
    add a
    di
    rrca
    and $de

jr_01e_4d09:
    db $fc
    inc a
    and d
    ld a, [hl]
    ld d, $1b
    ld a, [bc]
    rrca

jr_01e_4d11:
    ld b, $07
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld e, a
    ld d, b
    ldh a, [$ffe0]
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ba01
    ld [hl], a
    db $ed
    rst $18
    or [hl]
    ld a, a
    call $f77f
    ld a, [hl]
    ld c, $ff
    ld sp, hl
    ld sp, hl
    rst $18
    ld a, a
    ld sp, hl
    rst $38
    push bc
    rst $38
    di
    cpl
    ei
    sub a
    ld a, [$da16]
    ld [hl], $34
    db $ec
    ld hl, sp-$08
    db $ec
    inc a
    db $fc
    db $fc
    inc a
    inc a
    ld a, $3e
    rra
    rra
    ld e, $13
    dec de
    ld d, $0f
    inc c
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ld d, b
    ldh a, [$ff30]
    ldh a, [$ffa0]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld [$070f], sp
    rlca
    rrca
    ld c, $11
    rra
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec c
    rla
    ld e, $1e
    rla
    dec e
    dec de
    ld d, $1f
    dec c
    ld a, [bc]
    rlca
    rlca
    inc bc
    inc bc
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    ld [hl], a
    cp h
    ld l, a
    db $fc
    ret nc

    cp a
    cpl
    rst $28
    set 1, [hl]
    cp c
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    di
    ld a, a
    inc c
    db $fc
    ld hl, sp-$08
    ret c

    ld a, b
    dec bc
    ld c, $07
    rlca
    rlca
    rlca
    ld b, $07
    rrca
    add hl, bc
    dec c
    dec bc
    ld b, $07
    dec b
    rlca
    ret c

    ld a, b
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld h, b
    ldh [$ffd0], a
    jr nc, jr_01e_4e32

    sbc b
    xor b
    ret c

    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld e, b
    ld hl, sp-$4c
    db $fc
    ld [hl], h
    db $fc
    sub h
    db $fc
    inc c
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    ld [hl], a
    cp h
    ld l, a
    db $fc
    rst $10
    or a
    cpl
    rst $28
    rst $08
    ret


    cp c
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    di
    ld a, a
    adc h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    dec [hl]
    cpl
    ld a, $39
    inc hl
    inc a
    dec e
    ld e, $1e
    dec de
    dec a
    daa
    ld b, d
    ld a, [hl]
    ld a, h
    ld a, h
    ldh [$ffe0], a
    ldh a, [$fff0]
    ld [hl], b
    ldh a, [$ffb8]
    ld hl, sp-$04
    db $fc
    call z, $4afc
    ld a, [hl]
    ld [hl-], a
    ld a, $21
    ccf
    add hl, sp
    ccf
    dec h

jr_01e_4e32:
    ccf
    ld b, e
    ld a, a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01e_4e7f

    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    ld l, [hl]
    ld a, a
    ret


    cp $b3
    call c, Call_000_0303
    inc bc
    inc bc
    dec b
    rlca
    dec b
    rlca
    dec c
    dec bc
    dec c
    dec bc
    rrca
    add hl, bc
    ld a, [bc]
    dec c
    ld d, [hl]
    cp c
    ld b, a
    cp c
    adc $31
    db $ec
    inc de
    ld h, l
    sbc d
    push af
    adc d
    cp e
    call nz, $c2bd
    dec bc
    inc c
    dec b
    ld b, $04
    rlca
    ld c, $0f
    add hl, bc
    rrca
    dec b
    ld b, $06
    rlca
    inc bc

jr_01e_4e7f:
    inc bc
    ld c, a
    ldh a, [$ffe2]
    dec e
    db $fd
    ld [bc], a
    inc sp
    call z, $f887
    rra
    ldh [$fffc], a
    inc bc
    scf
    rst $08
    cp $ff
    jp Jump_000_3efc


    ld sp, $0f0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, e
    ld a, h
    or [hl]
    ld sp, hl
    xor l
    di
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $06
    rlca
    ld c, $0f
    dec bc
    rrca
    dec bc
    rrca
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc b
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $1e1e
    dec l
    scf
    ld e, a
    ld a, d
    ld a, d
    ld e, a
    ld [hl], l
    ld l, [hl]
    ld e, c
    ld a, a
    scf
    ld a, [hl+]
    dec e
    rra
    db $db
    db $ec
    db $fc
    rst $30
    rst $28
    ei
    or a
    db $fc
    xor a
    db $fc
    ld d, b
    rst $18
    rst $38
    rst $38
    ei
    cp $ba
    ld [hl], a
    db $ed
    rst $18
    or l
    ld a, a
    ret


    ld a, a
    ldh a, [c]
    ld a, [hl]
    inc c
    db $fc
    ld hl, sp-$08
    rst $18
    ld a, a
    rst $38
    rst $20
    scf
    cpl
    ld a, $39
    dec de
    inc e
    dec e
    ld d, $3a
    cpl
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, a
    db $fd
    rst $20
    rst $38
    rst $38
    add c
    add c
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    ldh [$ffa0], a
    ldh [$ffe0], a
    ldh [$fffe], a
    cp $ff
    ld sp, hl
    cp $ff
    inc sp
    inc a
    add hl, bc
    ld c, $06
    rlca
    dec b
    rlca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    or b
    ld [hl], b
    ld hl, sp+$28
    ld a, h
    call nc, $fe52
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $04
    rlca
    rlca
    rlca
    jp c, $ffff

    or a
    cp a
    push de
    ld d, l
    ld a, d
    rst $30
    cp a
    rst $38
    jr c, jr_01e_4fb5

    rst $38
    ld [hl], a
    rst $18
    inc bc
    inc bc
    nop
    nop
    ld bc, $0201
    inc bc
    ld c, $0f
    dec [hl]
    dec sp
    ld l, [hl]
    ld [hl], c
    sbc $b1
    xor l
    ld [hl], e
    cp d
    ld h, a
    sbc e
    ld h, [hl]
    sbc c
    ld h, [hl]
    call $cd32
    ld [hl-], a
    and $19
    ld [hl], e
    adc h
    dec c
    dec bc
    ld c, $09
    dec bc
    inc c
    dec b
    ld b, $06
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    cp l
    jp nz, $fc63

    adc [hl]
    ld [hl], c
    db $fc
    inc bc
    ld [hl], c
    adc [hl]
    jp Jump_000_0ffc


    ldh a, [$fffe]
    ld bc, $cff3
    ld a, a
    ld a, a
    inc e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4fb5:
    nop
    nop
    nop
    rlca
    rlca
    dec a
    dec sp
    ld l, e
    ld [hl], a
    sub $ef
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    dec c
    ld c, $0d
    ld c, $0e
    rrca
    sub h
    rst $28
    or l
    adc $b3
    call z, $cc73
    ld e, e
    db $e4
    cp e
    ld h, h
    call $e732
    jr @+$10

    rrca
    dec bc
    rrca
    dec c
    dec bc
    ld b, $05
    dec b
    ld b, $06
    rlca
    inc bc
    inc bc
    ld bc, $7f01
    add b
    dec a
    jp nz, $fcc3

    ld c, $f1
    db $fc
    inc bc
    ld [hl], l
    adc [hl]
    dec de
    db $fc
    rst $20
    ld hl, sp-$42
    pop bc
    ld a, c
    ld h, a
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec a
    dec a
    ld e, e
    ld l, a
    or l
    rst $38
    rst $38
    ld l, a
    ld a, a
    xor e
    xor e
    db $f4
    ld l, a
    rst $38
    ld a, a
    pop af
    or b
    rst $38
    rst $28
    cp a
    rst $20
    db $fd
    cp l
    ld a, e
    cp e
    ld h, [hl]
    daa
    db $fc
    ld e, l
    rst $38
    or a
    cp $7f
    sub $dd
    or a
    ld [hl], b
    ld [hl], b
    ret nc

    or b
    sub b
    ld [hl], b
    or b
    ld [hl], b
    and b
    ldh [$ffe0], a
    ld h, b
    ld l, h
    db $ec
    cp d
    cp $3e
    dec sp
    ld l, l
    ld [hl], a
    or a
    ei
    adc [hl]
    di
    ld e, l
    ld h, [hl]
    ld l, h
    ld [hl], a
    ld a, h
    ld a, a
    cp $9f
    ld l, a
    ld e, a
    dec sp
    scf
    ld l, $31
    rla
    jr jr_01e_50a3

    dec l
    ld a, h
    ld d, a
    sub l
    rst $38
    rst $38
    rst $38
    db $fd
    rst $30
    rst $38
    rst $38
    add a
    add a
    ld b, a
    rst $00
    ld b, e
    jp $e3e3


    ld h, c
    pop hl
    ldh [$ffe0], a
    cp b
    cp b
    call nz, $f2fc
    adc $fa
    and $f3
    rst $28
    push hl
    rst $38
    dec l
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0002
    nop
    nop

jr_01e_50a3:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    dec c
    rlca
    ld [$0502], sp
    nop
    nop
    nop
    ld b, b
    jr nz, jr_01e_50b7

    db $10

jr_01e_50b7:
    ld bc, $0409
    dec b
    ld a, [bc]
    inc bc
    inc b
    rrca
    stop
    add d
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$42

    ldh [$ffe0], a
    sub b
    ldh a, [$ffa8]
    ret c

    ld d, h
    ld l, h
    ld a, [hl+]
    ld [hl], $15
    dec de
    add hl, bc
    rrca
    rlca
    rlca
    cp a
    push af
    push af
    cp a
    db $eb
    db $dd
    or d
    rst $38
    ld l, [hl]
    ld d, l
    add hl, sp
    ccf
    ld e, $1e
    nop
    nop
    or a
    ret c

    ld sp, hl
    rst $28
    ld e, a
    or $ef
    ld hl, sp-$21
    ld hl, sp+$20
    ccf
    rra
    rra
    rla
    inc e
    ld [hl], e
    rst $28
    jp c, Jump_01e_6abf

    rst $38
    sub d
    rst $38
    rst $20
    rst $38
    add hl, de
    ld sp, hl
    ldh a, [$fff0]
    or b
    ldh a, [$ffed]
    rst $30
    ld e, a
    pop hl
    ld c, l
    di
    ldh [c], a
    cp [hl]
    ld a, h
    sbc h
    inc [hl]
    call z, $f888
    ld [hl], b
    ld [hl], b
    rla
    inc e
    rra
    rra
    ld e, $1e
    ld a, $3e
    inc a
    inc a
    ld a, h
    ld c, h
    ld l, h
    ld e, h
    cp h
    db $f4
    dec bc
    inc c
    rla
    jr @+$21

    jr jr_01e_5175

    dec h
    halt
    ld e, e
    adc e
    rst $38
    db $fc
    db $fc
    nop
    nop
    jp Jump_01e_4242


    jp $c342


    and l
    rst $20
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    rra
    rra
    ld d, $17
    ld a, [de]
    ld a, [bc]
    rrca

jr_01e_5158:
    ld e, $17
    ccf
    daa
    ld c, e
    ld a, a
    ld l, [hl]
    ld a, e
    ld e, [hl]
    rst $38
    ei
    rst $30
    ei
    or [hl]
    or d
    ld c, a
    push af
    rst $38
    ei
    rra
    rlca
    rst $38
    cp $fb
    ld [hl], b
    ret nc

    ret nc

    or b
    sub b

jr_01e_5175:
    ld [hl], b
    jr nz, jr_01e_5158

    ldh [$ffe0], a
    or b
    ret nc

    ld a, b
    adc b
    db $fc
    inc b
    ld a, $3b
    ld l, l
    ld [hl], a
    or a
    ei
    adc $b3
    cp l
    add $5c
    ld h, a
    inc a
    ccf
    ld e, $1f
    rst $28
    rra
    dec sp
    or $ef
    sbc $3d
    rst $38
    adc b
    ld a, a
    ld hl, sp+$0f
    add hl, bc
    rst $38
    rra
    rst $38
    cp $82
    pop hl

jr_01e_51a3:
    ld e, a
    ld c, l
    rst $38
    cp [hl]
    cp $e0

jr_01e_51a9:
    ldh [$ff80], a
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$ffe0], a
    and b
    ldh [$ffd0], a
    jr nc, jr_01e_51a3

    jr jr_01e_51a9

    inc e
    push de
    cp l
    call Call_01e_52fb
    ld a, $0c
    add c
    ld l, a
    ld a, $1d
    add c
    ld e, a
    ld d, h
    ld a, [de]
    inc e
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc e
    adc [hl]
    ld [hl+], a
    ld a, [de]
    inc e
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc e
    adc [hl]
    ld [hl+], a
    ret


    push de
    call Call_01e_520b
    pop de

Call_01e_51e2:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_01e_5204

    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    inc de
    cpl
    ld b, a
    ld a, [de]
    inc de
    cpl
    inc b
    jr nz, jr_01e_51fa

    inc a

jr_01e_51fa:
    ld [hl], b
    inc l
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


Jump_01e_5204:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_01e_520b:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_01e_521c

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_01e_521d

jr_01e_521c:
    inc d

jr_01e_521d:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_01e_5223:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01e_522d:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01e_5235:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01e_523d:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_5259

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_01e_524f

    inc a

jr_01e_524f:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_01e_5259:
jr_01e_5259:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_01e_5263:
    ld a, $1f
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


    ld a, $1d
    add c
    ld l, a
    jr jr_01e_5277

    ld a, $1f
    add c
    ld l, a

jr_01e_5277:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_01e_5281

    inc d

jr_01e_5281:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_01e_5285:
    ld a, $1d
    add c
    ld e, a
    ld d, h
    ld a, $0c
    add c
    ld l, a
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ret


Call_01e_5297:
    ld a, $1f
    add c
    ld e, a
    ld d, h
    ld a, $0e
    add c
    ld l, a
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ret


Jump_01e_52a9:
    ld a, $1d
    add c
    ld e, a
    ld d, h
    ld a, $0c
    add c
    ld l, a
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ret


    ld a, [$d74b]
    or a
    ret z

    inc de
    inc de
    ld a, [de]
    ld l, a
    ldh a, [$ff8b]
    add l
    sub $0d
    ld l, a
    ld a, [$d725]
    cp l
    jr nz, jr_01e_52f9

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_01e_52e4

    xor a

jr_01e_52e4:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_01e_52f9

    ld a, [de]
    add b
    cp $d0
    jr c, jr_01e_52f2

    xor a

jr_01e_52f2:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_01e_52f9:
    or a
    ret


Call_01e_52fb:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $30
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    bit 7, a
    jr nz, jr_01e_5316

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_01e_5316

    ld de, $0350

jr_01e_5316:
    ld [hl], d
    dec l
    ld [hl], e
    ret


    push de
    call Call_01e_52fb
    pop de
    call Call_01e_5333
    ret z

    bit 0, a
    jr z, jr_01e_532b

    ld a, $1d
    jr jr_01e_532d

jr_01e_532b:
    ld a, $1f

jr_01e_532d:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01e_5333:
    ld a, e
    ldh [$ffa7], a
    ld a, d
    ldh [$ffa8], a
    ld l, c
    push hl
    ld a, $1d
    add c
    ld l, a
    ld de, $ff9f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, $0c
    add c
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ldh [$ff98], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ldh [$ff9a], a
    call Call_000_01d4
    pop hl
    ld c, l
    ld a, $0c
    add c
    ld l, a
    ld de, $ffa3
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ldh a, [$ffa9]
    or a
    ret


Call_01e_537c:
Jump_01e_537c:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_01e_538c

    cp $90
    jr nc, jr_01e_53a1

jr_01e_538c:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_01e_5399

    cp $c0
    jr nc, jr_01e_53a1

jr_01e_5399:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_01e_53a1:
    xor a
    ld b, a
    ret


    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


    push de
    push hl
    ld a, [$c3ef]
    ldh [$ff8a], a
    ld a, [$c3f0]
    ldh [$ff8b], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add $30
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    add $30
    ldh [$ff9c], a
    ld e, b
    pop hl
    call Call_01e_53da
    pop de
    ld b, a
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_01e_52a9


Call_01e_53da:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    ld a, [hl]
    or a
    jr z, jr_01e_53e6

    dec [hl]
    jr jr_01e_5418

jr_01e_53e6:
    ld [hl], e
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ld l, c
    push hl
    call Call_000_0252
    pop hl
    ld c, l
    ld d, b
    ld a, [hl]
    or a
    jr nz, jr_01e_53ff

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_01e_5418

jr_01e_53ff:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_01e_5418

    dec a
    ld e, $01
    jr z, jr_01e_5412

    ld e, $ff

jr_01e_5412:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_01e_5418:
    pop bc
    pop hl
    ld a, [hl]
    ret


    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_01e_542f

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_542f

    ld b, $20

jr_01e_542f:
    ld a, b
    ld [$d3ea], a
    ld a, e
    ldh [$ffa4], a
    ld a, d
    ldh [$ffa6], a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    ld [$cc46], a
    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    ld [$cc47], a
    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e0], a
    ld a, $03
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e1], a
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e2], a
    ld a, $13
    add c
    ld l, a
    ld b, [hl]
    ret


    ld b, h
    ld hl, $d725
    ld a, [hl]
    add d
    ld [hl], a
    ld hl, $d732
    ld a, [hl]
    add e
    ld [hl], a
    ld h, b
    ret


Call_01e_5476:
    xor a
    ld [$ccc2], a
    ld [$ccc3], a
    ld [$dd00], a
    ld [$dd01], a
    ld [$ccc1], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
    add $0f
    ld l, a
    ld [hl], $01
    add $f5
    ld l, a
    ld [hl], $80
    add $02
    ld l, a
    ld e, [hl]
    ld [hl], $b0
    add $2c
    ld l, a
    ld [hl], e
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, [$d1e0]
    or a
    call nz, Call_000_0222
    ld a, $ff
    ld [$d74a], a
    ld [$de34], a
    ld de, $54c1
    call Call_01e_51e2
    ld a, $01
    ld [$d703], a
    ret


    nop
    nop
    nop
    inc bc

Call_01e_54c5:
    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_01e_54e1

    add $02
    ld [$dd01], a
    and $07
    ret nz

    ld a, [$deea]
    or a
    ret nz

    rst $08
    rla
    ret


jr_01e_54e1:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $02
    ld [$dd00], a
    ret


Call_01e_54ed:
    ld a, [$dd00]
    cp $02
    ret nz

    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    sla a
    sla a
    sla a
    ld [$dd01], a
    ret


Call_01e_5502:
    ld a, [$ccc1]
    or a
    jr nz, jr_01e_5515

    ld a, $01
    ld [$ccc1], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $0a
    xor a
    ret


jr_01e_5515:
    call Call_01e_5333
    and $02
    ret


    push hl
    push bc
    call Call_01e_5502
    pop bc
    pop hl
    or a
    jr z, jr_01e_553c

    ld a, $17
    add c
    ld l, a
    ld [hl], b
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_01e_5542

jr_01e_553c:
    ld b, l
    ld a, $17
    add c
    ld l, a
    ld [hl], b

jr_01e_5542:
    call Call_000_025e
    ld b, $01
    ret


Jump_01e_5548:
    push de
    call Call_01e_4104
    pop de
    call Call_01e_411e
    jr nz, jr_01e_5542

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_01e_5570

    ld a, $01
    ld [$dee9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$d74a], a
    call Call_000_015c
    jr jr_01e_5542

jr_01e_5570:
    call Call_01e_54c5
    jr jr_01e_5542

    ld hl, sp+$07
    rst $20
    ld [$00ec], sp
    inc d
    nop
    nop
    db $fd
    nop
    nop
    add b
    db $fd
    add b
    ld a, [$38c8]
    sbc $10
    dec de
    dec bc
    dec de
    ld e, e
    or $67
    nop
    ld l, b
    ld a, [bc]
    ld l, b
    nop

jr_01e_5594:
    nop
    jr nc, jr_01e_5594

    db $ec
    nop
    inc d
    nop
    ld hl, sp+$07
    ld a, [$e809]
    ei
    jr @-$03

    add b
    db $fc
    ld d, b
    rst $38
    nop
    cp $e6
    db $fc
    ld a, [de]
    db $fc
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ldh a, [$fffe]
    ret nz

    cp $56
    rst $38
    add b
    db $fc
    nop
    db $fc
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp $01
    cp $01
    cp $00
    ld [bc], a
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01fe
    cp $00
    cp $00
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $00
    add b
    db $fc
    ld a, $68
    ld b, h
    ld l, b
    ld c, d
    ld l, b
    or b
    ld d, b
    ret nz

    ld b, b
    dec de
    ld l, h
    or c
    add $00
    nop
    nop
    nop
    adc b
    db $fd
    db $10
    ld e, b
    jr @+$1a

    jr nz, @+$7a

    jr nc, jr_01e_561b

    ld b, b
    ld h, b
    ld h, b
    jr nc, @+$62

    ld [hl], b
    add b
    ld [$6880], sp
    sbc b
    ld a, b
    xor b
    ld [hl], b
    jr z, jr_01e_564b

jr_01e_561b:
    ld [$d108], sp
    ld [$1307], sp
    inc bc
    dec b
    rst $18
    ld b, b

Jump_01e_5625:
    ld a, b
    dec b
    jp z, Jump_01e_5758

    dec b
    jr z, jr_01e_5637

    dec b
    jp z, Jump_01e_5818

    dec b
    jr z, jr_01e_5672

    or a
    jr z, jr_01e_569b

jr_01e_5637:
    ld a, $01
    ld [$c3e9], a
    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    set 2, [hl]
    jp Jump_01e_5758


Jump_01e_564a:
    xor a

jr_01e_564b:
    ld [$ccbb], a
    ld [$cc97], a
    ld [$cc98], a
    ld [$cca6], a
    ld [$c3e9], a
    ld [$de29], a
    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    ld b, $78
    call Call_000_023a
    ld a, $ff
    ld [$df80], a
    ld a, $1b
    jp Jump_000_0297


jr_01e_5672:
    ld a, [$d140]
    or a
    jr z, jr_01e_567d

    dec a
    jr z, jr_01e_5684

    jr jr_01e_568b

jr_01e_567d:
    ld a, $3b
    call Call_000_020a
    jr jr_01e_5695

jr_01e_5684:
    ld a, $3c
    call Call_000_020a
    jr jr_01e_5690

jr_01e_568b:
    ld a, $3d
    call Call_000_020a

jr_01e_5690:
    ld a, $1b
    ld [$de96], a

jr_01e_5695:
    ld a, $3e
    call Call_000_020a
    ret


jr_01e_569b:
    ld a, $ff
    ld [$ccbb], a
    ld a, $1a
    ld [$cc98], a
    ld [$cc97], a
    ld a, $c3
    ld [$ca01], a
    ld a, [$d140]
    or a
    jr nz, jr_01e_56d9

    ld d, $04
    call Call_01e_41b5
    call Call_000_025e
    call Call_01e_5476
    ld a, $2b
    add c
    ld l, a
    ld [hl], $5a
    xor a
    ld [$de34], a
    ld [$d1e0], a
    ld a, $34
    add c
    ld l, a
    ld [hl], $13
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    jr jr_01e_56dc

jr_01e_56d9:
    call Call_01e_56f2

jr_01e_56dc:
    call Call_000_015c
    ld a, $00
    ld [$ca00], a
    ld [$ca05], a
    ld a, $40
    ld [$ca04], a
    ld de, $6867
    jp Jump_000_01dd


Call_01e_56f2:
    xor a
    ld [$ccc2], a
    ld [$ccc1], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    add $fa
    ld l, a
    ld a, [$d143]
    ld [hl], a
    ld a, $0d
    add c
    ld l, a
    ld a, [$d141]
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $b0
    ld a, [$d1e0]
    or a
    call nz, Call_000_0222
    ld de, $54c1
    call Call_01e_51e2
    ld a, $18
    add c
    ld l, a
    ld a, [$d142]
    ld [hl], a
    ld b, a
    ld a, $34
    add c
    ld l, a
    ld [hl], b
    add $e3
    ld l, a
    ld [hl], $01
    add $1b
    ld l, a
    ld [hl], $00
    call Call_000_025e
    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    add $0b
    ld l, a
    ld [hl], $78
    add $e2
    ld l, a
    ld [hl], $01
    add $1c
    ld l, a
    ld [hl], $01
    ret


Jump_01e_5758:
    ld a, [$deaf]
    and $27
    jp nz, Jump_01e_5818

    push hl
    ld hl, $ca06
    inc [hl]
    pop hl
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    add a
    add b
    add $c4
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld [$ca02], a
    inc de
    ld a, [de]
    ld [$ca03], a
    inc de
    ld a, [de]
    or a
    jr z, jr_01e_57c1

    ld a, $18
    add c
    ld l, a
    ld b, [hl]
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jp nz, Jump_01e_5e31

    cp b
    jr z, jr_01e_57c1

    jr c, jr_01e_57c1

    ld b, a
    dec b
    ld [hl], b
    ld a, $18
    add c
    ld l, a
    ld [hl], b
    ld a, b
    or a
    jp z, Jump_01e_5e56

    ld a, b
    cp $0d
    jr z, jr_01e_57b6

    jr nc, jr_01e_57c1

    cp $07
    jr c, jr_01e_57bb

    jr nz, jr_01e_57c1

    ld a, $02
    jr jr_01e_57b8

jr_01e_57b6:
    ld a, $01

jr_01e_57b8:
    ld [$d140], a

jr_01e_57bb:
    ld a, $33
    add c
    ld l, a
    ld [hl], $01

jr_01e_57c1:
    jp $ca01


    ld [hl-], a
    ld e, b
    nop
    ld d, d
    ld e, b
    nop
    ld e, b
    ld e, b
    ld bc, $58ea
    ld bc, $59bb
    nop
    ld d, $5a
    nop
    ld h, d
    ld e, d
    ld bc, $5af2
    ld bc, $5bec
    ld bc, $5cfa
    ld bc, $5e31
    nop
    db $f4
    ld d, a
    nop
    ld a, [bc]
    ld e, b
    nop
    ld [de], a
    ld e, b
    nop
    jr @+$5a

    nop
    dec de
    ld e, b
    nop

Jump_01e_57f4:
    ld a, $33
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_5818

    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_01e_59bb


Jump_01e_580a:
    ld a, $33
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_5818

Jump_01e_5812:
    ld a, $21
    add c
    ld l, a
    set 3, [hl]

Jump_01e_5818:
jr_01e_5818:
    call Call_000_025e
    ld a, [$ca05]
    or a
    jr z, jr_01e_5824

    call Call_01e_6156

jr_01e_5824:
    ld a, $34
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_01e_582f

    call Call_01e_54ed

Jump_01e_582f:
jr_01e_582f:
    ld b, $01
    ret


    ld a, $0f
    add c
    ld l, a
    ld [hl], $67
    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_01e_582f

    ld a, $2a
    add c
    ld l, a
    inc [hl]
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp Jump_01e_580a


    ld de, $67a0
    jp Jump_01e_5548


    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_5881

    dec a
    jr z, jr_01e_5892

    dec a
    jr z, jr_01e_58b2

    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    add $f6
    ld l, a
    ld [hl], $03
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_01e_58ff


jr_01e_5881:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_57f4

    ld [hl], $32
    add $fd
    ld l, a
    inc [hl]
    call Call_000_015c

jr_01e_5892:
    ld de, $67c2
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $0f
    jp nz, Jump_01e_580a

    call Call_01e_638d
    ld a, $36
    add c
    ld l, a
    inc [hl]

Jump_01e_58aa:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_01e_57f4


jr_01e_58b2:
    ld de, $67c2
    call Call_01e_4104
    jp nc, Jump_01e_580a

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1f
    ld l, a
    ld a, [hl]
    cp $03
    jr z, jr_01e_58d5

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    jp Jump_01e_57f4


jr_01e_58d5:
    ld [hl], $00
    ld a, $35
    add c
    ld l, a
    ld [hl], $32
    add $f5
    ld l, a
    ld [hl], $03
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_01e_57f4


    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_590c

    dec a
    jr z, jr_01e_5922

    dec a
    jr z, jr_01e_5941

    dec a
    jr z, jr_01e_595b

    dec a
    jp z, Jump_01e_5995

Jump_01e_58ff:
    ld a, $35
    add c
    ld l, a
    ld [hl], $32
    add $fd
    ld l, a
    inc [hl]
    jp Jump_01e_57f4


jr_01e_590c:
    ld a, [$ca00]
    or a
    jp nz, Jump_01e_57f4

    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_57f4

    ld a, $1e
    call Call_01e_6341
    jr jr_01e_5939

jr_01e_5922:
    ld de, $558d
    call Call_01e_6359
    jp nz, Jump_01e_57f4

    call Call_000_015c
    ld a, $35
    add c
    ld l, a
    ld [hl], $14
    add $01
    ld l, a
    ld [hl], $00

Jump_01e_5939:
jr_01e_5939:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_01e_580a


jr_01e_5941:
    ld de, $67ea
    call Call_01e_4104
    jp nc, Jump_01e_580a

    call Call_000_015c
    ld a, $00
    call Call_01e_6241
    ld de, $5589
    call Call_01e_632a
    jp Jump_01e_5939


jr_01e_595b:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jr z, jr_01e_5971

    call Call_01e_6230
    ld de, $5589
    call Call_01e_6313
    call Call_01e_62d1
    jp Jump_01e_580a


jr_01e_5971:
    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    ld a, $1b
    ld [$de96], a
    ld a, $02
    call Call_01e_6241
    ld de, $557d
    call Call_01e_51e2
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $08
    ld l, a
    ld [hl], $05
    jp Jump_01e_57f4


Jump_01e_5995:
    call Call_01e_61f7
    jp nz, Jump_01e_580a

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1e
    ld l, a
    ld [hl], $32
    add $fd
    ld l, a
    ld [hl], $01
    add $f8
    ld l, a
    ld [hl], $02
    jp Jump_01e_57f4


Jump_01e_59bb:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_01e_59cc

    dec a
    jr z, jr_01e_59e1

    dec a
    jr z, jr_01e_59fd

    jp Jump_01e_5812


jr_01e_59cc:
    call Call_000_015c
    call Call_01e_61bf
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    ld de, $5593
    call Call_01e_51e2
    jp Jump_01e_59f5


jr_01e_59e1:
    call Call_01e_61d8
    call Call_01e_5297
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_01e_5812

    add $15
    ld l, a
    ld [hl], $10

Jump_01e_59f5:
jr_01e_59f5:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_01e_5812


jr_01e_59fd:
    ld a, $35
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_01e_5a0b

    jr nc, jr_01e_5a0b

    call Call_01e_6470

jr_01e_5a0b:
    ld de, $67a5
    call Call_01e_4104
    jr c, jr_01e_59f5

    jp Jump_01e_5812


    ld a, $35
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_01e_580a

    call Call_01e_52fb
    ld de, $5575
    call Call_01e_5333
    bit 1, a
    jp z, Jump_01e_580a

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1c
    ld l, a
    ld [hl], $00
    ld a, [$d140]
    dec a
    jr z, jr_01e_5a47

    dec a
    jr z, jr_01e_5a50

    jr jr_01e_5a59

jr_01e_5a47:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    jp Jump_01e_580a


jr_01e_5a50:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $08
    jp Jump_01e_580a


jr_01e_5a59:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $09
    jp Jump_01e_580a


    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_5a88

    dec a
    jr z, jr_01e_5aa9

    dec a
    jr z, jr_01e_5ab9

    call Call_000_0168
    and $01
    ld b, a
    ld a, $2f
    add c
    ld l, a
    ld [hl], b
    add $07
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $3c
    jp Jump_01e_58aa


jr_01e_5a88:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_57f4

    ld e, $3a
    add $fa
    ld l, a
    ld b, [hl]
    add $07
    ld l, a
    ld a, [hl]
    and $01
    xor b
    jr nz, jr_01e_5aa1

    ld e, $28

jr_01e_5aa1:
    ld a, $35
    add c
    ld l, a
    ld [hl], e
    jp Jump_01e_58aa


jr_01e_5aa9:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $28
    jp nz, Jump_01e_5ab9

    call Call_01e_6677
    jp Jump_01e_5939


Jump_01e_5ab9:
jr_01e_5ab9:
    ld de, $682b
    call Call_01e_4104
    jp nc, Jump_01e_580a

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1f
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $03
    jr nc, jr_01e_5add

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    jp Jump_01e_57f4


jr_01e_5add:
    ld [hl], $00
    ld a, $35
    add c
    ld l, a
    ld [hl], $3c
    add $f5
    ld l, a
    ld [hl], $07
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_01e_57f4


    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_5b14

    dec a
    jr z, jr_01e_5b25

    dec a
    jr z, jr_01e_5b5f

    dec a
    jr z, jr_01e_5b6f

    dec a
    jp z, Jump_01e_5ba6

    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_57f4

    ld [hl], $3c
    jp Jump_01e_5939


jr_01e_5b14:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $1b
    jr nz, jr_01e_5b25

    call Call_01e_66f1
    ld a, $32
    add c
    ld l, a
    inc [hl]

jr_01e_5b25:
    ld de, $67ea
    call Call_01e_4104
    jp nc, Jump_01e_580a

    call Call_000_015c
    ld a, $36
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $02
    jr nc, jr_01e_5b49

    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1b
    ld l, a
    ld [hl], $00
    jp Jump_01e_57f4


jr_01e_5b49:
    ld [hl], $04
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1e
    ld l, a
    ld [hl], $3c
    ld de, $55a5
    call Call_01e_51e2
    jp Jump_01e_58aa


jr_01e_5b5f:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_57f4

    add $e2
    ld l, a
    ld [hl], $01
    jp Jump_01e_58aa


jr_01e_5b6f:
    call Call_01e_61d8
    ld de, $5575
    call Call_01e_5333
    bit 1, a
    jp nz, Jump_01e_5b94

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $8c
    jr c, jr_01e_5b8a

    ld [hl], $8c
    jr jr_01e_5b91

jr_01e_5b8a:
    cp $14
    jp nc, Jump_01e_580a

    ld [hl], $14

jr_01e_5b91:
    jp Jump_01e_580a


Jump_01e_5b94:
    ld a, $17
    add c
    ld l, a
    ld [hl], $0e
    add $1e
    ld l, a
    ld [hl], $04
    add $fd
    ld l, a
    inc [hl]
    jp Jump_01e_580a


Jump_01e_5ba6:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_580a

    ld a, $36
    add c
    ld l, a
    dec [hl]
    jr z, jr_01e_5bc8

    ld de, $55a5
    call Call_01e_51e2
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $1b
    ld l, a
    dec [hl]
    jp Jump_01e_580a


jr_01e_5bc8:
    ld b, $14
    ld a, $24
    add c
    ld l, a
    push hl
    bit 0, [hl]
    jr z, jr_01e_5bd5

    ld b, $8c

jr_01e_5bd5:
    add $e9
    ld l, a
    ld [hl], b
    pop hl
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_01e_57f4


    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_5c1f

    dec a
    jr z, jr_01e_5c2f

    dec a
    jr z, jr_01e_5c4f

    dec a
    jp z, Jump_01e_5c97

    dec a
    jp z, Jump_01e_5cdf

    ld a, $35
    add c
    ld l, a
    ld [hl], $1e
    add $e2
    ld l, a
    ld [hl], $00
    add $18
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    ld [hl], $00

Jump_01e_5c17:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_01e_5818


jr_01e_5c1f:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_5818

    ld a, $1e
    call Call_01e_6341
    jp Jump_01e_5c17


jr_01e_5c2f:
    ld de, $558d
    call Call_01e_6359
    jp nz, Jump_01e_5818

    call Call_000_015c
    ld a, $1a
    add c
    ld l, a
    ld [hl], $04
    ld a, $32
    add c
    ld l, a
    inc [hl]
    ld de, $55b9
    call Call_01e_51e2
    jp Jump_01e_5818


jr_01e_5c4f:
    ld de, $6837
    call Call_000_015f
    call Call_01e_61fd
    jp nz, Jump_01e_5818

    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    cp $02
    jr nc, jr_01e_5c73

    ld a, $17
    add c
    ld l, a
    ld [hl], $29
    add $1f
    ld l, a
    ld [hl], $00
    jp Jump_01e_5c17


jr_01e_5c73:
    call Call_000_015c
    call Call_01e_5223
    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    add $01
    ld l, a
    ld [hl], $03
    add $10
    ld l, a
    inc [hl]
    add $08
    ld l, a
    ld [hl], $00
    add $f2
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_01e_5818


Jump_01e_5c97:
    ld de, $6837
    call Call_000_015f
    ld a, $2f
    add c
    ld l, a
    ld b, [hl]
    add $07
    ld l, a
    ld a, [hl]
    add a
    bit 0, b
    jr nz, jr_01e_5cad

    add $18

jr_01e_5cad:
    add $bd
    ld e, a
    ld a, $55
    adc $00
    ld d, a
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, [de]
    inc de
    bit 0, b
    jr nz, jr_01e_5cc3

    xor $ff
    inc a

jr_01e_5cc3:
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [hl+], a
    inc hl
    ld a, [de]
    add [hl]
    ld [hl], a
    ld a, $36
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0c
    jp c, Jump_01e_5818

    ld [hl], $00
    jp Jump_01e_5c17


Jump_01e_5cdf:
    ld a, $2f
    add c
    ld l, a
    inc [hl]
    add $f5
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld de, $55b9
    call Call_01e_51e2
    ld a, $32
    add c
    ld l, a
    dec [hl]
    dec [hl]
    jp Jump_01e_5818


    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_5d25

    dec a
    jr z, jr_01e_5d47

    dec a
    jr z, jr_01e_5d6d

    dec a
    jr z, jr_01e_5d7c

    dec a
    jp z, Jump_01e_5dc5

    dec a
    jp z, Jump_01e_5dd6

    dec a
    jp z, Jump_01e_5e11

    ld a, $35
    add c
    ld l, a
    ld [hl], $1e
    add $e2
    ld l, a
    ld [hl], $00
    jp Jump_01e_5c17


jr_01e_5d25:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_5818

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $1c
    ld l, a
    ld [hl], $00
    ld de, $55ed
    call Call_01e_5263
    call Call_01e_522d
    jp Jump_01e_5c17


jr_01e_5d47:
    call Call_01e_61d8
    call Call_01e_5297
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_01e_5d61

    ld a, $35
    add c
    ld l, a
    ld [hl], $1e

jr_01e_5d5c:
    ld a, $32
    add c
    ld l, a
    inc [hl]

Jump_01e_5d61:
jr_01e_5d61:
    ld a, $33
    add c
    ld l, a
    bit 0, [hl]
    jp z, Jump_01e_5818

    jp Jump_01e_5de5


jr_01e_5d6d:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_5d61

    ld a, $1e
    call Call_01e_6349
    jr jr_01e_5d5c

jr_01e_5d7c:
    ld de, $55ef
    call Call_01e_6359
    push af
    add $de
    ld e, a
    add $13
    ld l, a
    bit 0, [hl]
    ld l, e
    jr nz, jr_01e_5d92

    res 3, [hl]
    jr jr_01e_5d94

jr_01e_5d92:
    set 3, [hl]

jr_01e_5d94:
    pop af
    jr z, jr_01e_5d99

    jr jr_01e_5d61

jr_01e_5d99:
    call Call_000_015c
    call Call_01e_61bf
    ld a, $35
    add c
    ld l, a
    ld [hl], $3c
    add $de
    ld l, a
    res 3, [hl]
    add $04
    ld l, a
    ld [hl], $02
    add $02
    ld l, a
    set 0, [hl]
    ld de, $55f9
    call Call_01e_632a
    call Call_01e_60e6
    ld a, $03
    ld [$d140], a
    jp Jump_01e_59f5


Jump_01e_5dc5:
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jr nz, jr_01e_5dd6

    ld [hl], $f0
    call Call_01e_6641
    ld a, $32
    add c
    ld l, a
    inc [hl]

Jump_01e_5dd6:
jr_01e_5dd6:
    call Call_01e_6120
    ld de, $55f9
    call Call_01e_6313
    call Call_01e_62ec
    jp Jump_01e_5812


Jump_01e_5de5:
    call Call_000_015c
    ld a, $1b
    ld [$de96], a
    ld a, $13
    add c
    ld l, a
    res 3, [hl]
    call Call_01e_5223
    call Call_01e_610b
    ld a, $19
    add c
    ld l, a
    res 0, [hl]
    add $fe
    ld l, a
    ld [hl], $01
    add $1b
    ld l, a
    ld [hl], $07
    add $01
    ld l, a
    ld [hl], $00
    jp Jump_01e_5818


Jump_01e_5e11:
    call Call_01e_61d8
    ld de, $5575
    call Call_01e_5333
    bit 1, a
    jp z, Jump_01e_5818

    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $13
    ld l, a
    dec [hl]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_01e_5818


Jump_01e_5e31:
    ld a, $20
    ld [$d771], a
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_5eb0

    dec a
    jp z, Jump_01e_5ee3

    dec a
    jp z, Jump_01e_5f1b

    dec a
    jp z, Jump_01e_5f54

    dec a
    jp z, Jump_01e_5fa2

    dec a
    jp z, Jump_01e_5ff9

    dec a
    jp z, Jump_01e_603b

Jump_01e_5e56:
    rst $08
    nop
    rst $08
    dec d
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    call Call_01e_54ed
    ld a, $34
    add c
    ld l, a
    ld [hl], $80
    add $ed
    ld l, a
    ld [hl], $00
    add $f2
    ld l, a
    res 3, [hl]
    ld a, $01
    ld [$c3e9], a
    ld [$de29], a
    ld [$c2c4], a
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    cp [hl]
    ld a, $00
    jr nc, jr_01e_5e8b

    inc a

jr_01e_5e8b:
    ld [$d703], a
    ld a, $20
    ld [$d771], a
    xor a
    ld [$d773], a
    ld [$d774], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $0a
    add $08
    ld l, a
    ld [hl], $01
    add $e1
    ld l, a
    ld a, [hl]
    set 7, a
    res 0, a
    set 2, a
    ld [hl], a

jr_01e_5eb0:
    xor a
    ld [$d773], a
    ld [$d774], a
    call Call_01e_61d8
    ld de, $5575
    call Call_01e_5333
    bit 1, a
    jp z, Jump_01e_5818

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_01e_5818

    call Call_000_015c
    ld de, $5601
    call Call_01e_5263
    call Call_01e_522d
    ld a, $17
    add c
    ld l, a
    ld [hl], $2e
    jp Jump_01e_5c17


Jump_01e_5ee3:
    xor a
    ld [$d773], a
    ld [$d774], a
    ld de, $6855
    call Call_000_015f
    call Call_01e_61d8
    ld de, $5575
    call Call_01e_5333
    bit 1, a
    jp z, Jump_01e_5818

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_01e_5818

    call Call_000_015c
    call Call_01e_7261
    ld a, $17
    add c
    ld l, a
    ld [hl], $33
    add $1e
    ld l, a
    ld [hl], $3c
    jp Jump_01e_5c17


Jump_01e_5f1b:
    xor a
    ld [$d773], a
    ld [$d774], a
    ld de, $685e
    call Call_000_015f
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_01e_5818

    ld [hl], $78
    ld b, $30
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_01e_5f3e

Call_01e_5f3c:
    ld b, $70

jr_01e_5f3e:
    add $12
    ld l, a
    ld [hl], b
    ld e, $00
    ld a, [$d722]
    cp b
    jr nc, jr_01e_5f4c

    ld e, $01

jr_01e_5f4c:
    ld a, $2f
    add c
    ld l, a
    ld [hl], e
    jp Jump_01e_5c17


Jump_01e_5f54:
    ld de, $685e
    call Call_000_015f
    ld a, $2f
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_01e_5f72

    ld a, $36
    add c
    ld l, a
    ld b, [hl]
    ld a, [$d722]
    cp b
    jr c, jr_01e_5f82

    ld d, $20
    jp Jump_01e_5f93


jr_01e_5f72:
    ld a, $36
    add c
    ld l, a
    ld b, [hl]
    ld a, [$d722]
    cp b
    jr nc, jr_01e_5f82

    ld d, $10
    jp Jump_01e_5f93


jr_01e_5f82:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    ld d, $20
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_01e_5f93

    ld d, $10

Jump_01e_5f93:
jr_01e_5f93:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    jp Jump_01e_5818


Jump_01e_5fa2:
    ld de, $685e
    call Call_000_015f
    xor a
    ld [$d774], a
    ld [$d773], a
    ld a, $35
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_01e_5fc3

    dec [hl]
    jp nz, Jump_01e_5818

    ld a, $3c
    ld [$de88], a
    jp Jump_01e_5818


jr_01e_5fc3:
    ld a, c
    ld [$ca07], a
    ld a, h
    ld [$ca08], a
    ld l, c
    push hl
    call Call_01e_724a
    ld a, $01
    ld [$cccc], a
    rst $28
    dec bc
    ld a, $2f
    call Call_01e_7214
    call Call_01e_724a
    ld b, $3c
    call Call_01e_604b
    ld a, $30
    call Call_01e_7214
    ld b, $78
    call Call_01e_604b
    pop hl
    ld c, l
    ld a, $35
    add c
    ld l, a
    ld [hl], $78
    jp Jump_01e_5c17


Jump_01e_5ff9:
    ld de, $685e
    call Call_000_015f
    ld a, $20
    ld [$d773], a
    ld a, $01
    ld [$d74c], a
    ld a, [$d722]
    cp $f0
    jp nc, Jump_01e_5818

    cp $e8
    jp c, Jump_01e_5818

    xor a
    ld [$d773], a
    ld a, $35
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_01e_5818

    ld l, c
    push hl
    rst $28
    ld l, $3e
    ld bc, $a6ea
    call z, Call_000_0801
    rst $38
    ld de, $ffff
    call Call_01e_4291
    pop hl
    ld c, l
    jp Jump_01e_5c17


Jump_01e_603b:
    ld de, $685e
    call Call_000_015f
    ld a, [$cca8]
    or a
    jp nz, Jump_01e_5818

    jp Jump_01e_564a


Call_01e_604b:
jr_01e_604b:
    ld a, b
    or a
    ret z

    push bc
    call Call_01e_6059
    call Call_000_01c5
    pop bc
    dec b
    jr jr_01e_604b

Call_01e_6059:
    ld a, [$ca07]
    ld c, a
    ld a, [$ca08]
    ld h, a
    ld de, $685e
    call Call_000_015f
    ld a, $15
    add c
    ld l, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    ret z

    inc l
    ld a, [hl]
    add a
    add e
    ld l, a
    ld a, d
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$ce53], a
    ld a, [hl]
    ld [$ce54], a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    ld e, $00
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_60a0

    ld e, $20

jr_01e_60a0:
    ld a, e
    ld [$d3ea], a
    ld a, [$cc50]
    or a
    jr z, jr_01e_60b4

    ld d, a
    ldh a, [$ff9b]
    add d
    ldh [$ff9b], a
    xor a
    ld [$cc50], a

jr_01e_60b4:
    ld a, $10
    ldh [$ffab], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $10
    add c
    ld l, a
    ld e, [hl]
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    and $c0
    ld d, a
    ldh a, [$ffab]
    xor $10
    ldh [$ffab], a
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    cp $80
    ld a, e
    call Call_000_0210
    ret


Call_01e_60e6:
    ld a, $01
    ld [$ca05], a
    ld a, $0c
    ld b, $2c
    call Call_000_01b0
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    ld [$ca04], a
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $08
    inc l
    ld [hl], $00
    inc l
    ld [hl], $08
    inc l
    ret


Call_01e_610b:
    ld a, $00
    ld [$ca05], a
    ld a, $2c
    add c
    ld l, a
    ld a, [$ca04]
    ld [hl], a
    cp $40
    ret z

    ld b, $2c
    jp Jump_000_01b3


Call_01e_6120:
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, $2d
    add c
    ld l, a
    ld de, $0400
    bit 0, b
    jr nz, jr_01e_613d

    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    cp $a8
    jr c, jr_01e_6148

    add $a8
    jr jr_01e_6148

jr_01e_613d:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    cp $a8
    jr c, jr_01e_6148

    sub $a8

jr_01e_6148:
    ld [hl+], a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    cp $90
    jr c, jr_01e_6154

    sub $90

jr_01e_6154:
    ld [hl], a
    ret


Call_01e_6156:
    ld l, c
    push hl
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    add $55
    ldh [$ff90], a
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    call Call_000_019e
    ldh a, [$ff92]
    cp $fe
    jr z, jr_01e_61bc

    ld de, $5603
    ld a, $2e
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc l
    ld a, [hl]
    ldh [$ff8b], a
    ld b, $30
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_6189

    ld b, $10

jr_01e_6189:
    ld a, b
    ldh [$ff91], a
    ld l, e
    ld h, d

jr_01e_618e:
    ldh a, [$ff92]
    cp $fe
    jr z, jr_01e_61bc

    ldh a, [$ff8a]
    ld b, a
    ld a, [hl+]
    or a
    jr z, jr_01e_61bc

    add b
    jr c, jr_01e_61a2

    cp $a8
    jr c, jr_01e_61a4

jr_01e_61a2:
    sub $a8

jr_01e_61a4:
    ldh [$ff8f], a
    ldh a, [$ff8b]
    ld b, a
    ld a, [hl+]
    add b
    jr c, jr_01e_61b1

    cp $90
    jr c, jr_01e_61b3

jr_01e_61b1:
    sub $90

jr_01e_61b3:
    ldh [$ff8e], a
    push hl
    call Call_000_01a1
    pop hl
    jr jr_01e_618e

jr_01e_61bc:
    pop hl
    ld c, l
    ret


Call_01e_61bf:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$d141], a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    ld [$d142], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld [$d143], a
    ret


Call_01e_61d8:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $18
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    bit 7, a
    jr nz, jr_01e_61f3

    ld a, $00
    sub e
    ld a, $02
    sbc d
    jr nc, jr_01e_61f3

    ld de, $0200

jr_01e_61f3:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_01e_61f7:
    ld de, $67e2
    call Call_000_015f

Call_01e_61fd:
    call Call_01e_5285
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    bit 0, b
    jr nz, jr_01e_6217

    cp $14
    jp nc, Jump_01e_622c

    ld a, $14
    jr jr_01e_621e

jr_01e_6217:
    cp $8c
    jp c, Jump_01e_622c

    ld a, $8c

jr_01e_621e:
    ld [hl], a
    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $00
    or a
    ret


Jump_01e_622c:
    ld a, $00
    inc a
    ret


Call_01e_6230:
    ld a, $2c
    add c
    ld l, a
    dec [hl]
    ret nz

    ld [hl], $04
    add $01
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_01e_624e

Call_01e_6241:
    push af
    ld a, $2c
    add c
    ld l, a
    ld [hl], $04
    ld a, $2d
    add c
    ld l, a
    pop af
    ld [hl], a

jr_01e_624e:
    push af
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    pop af
    push bc
    push de
    push hl
    add a
    add b
    add $85
    ld e, a
    ld a, $62
    adc $00
    ld d, a
    ld a, [de]
    add $8b
    ld e, a
    ld a, $62
    adc $00
    ld d, a
    ld l, e
    ld h, d
    bit 0, b
    jr nz, jr_01e_6276

    ld de, $0500
    jr jr_01e_6279

jr_01e_6276:
    ld de, $0503

jr_01e_6279:
    ld bc, $0207
    call Call_000_0246
    rst $08
    ld d, c
    pop hl
    pop de
    pop bc
    ret


    nop
    ld c, $1c
    ld a, [hl+]
    jr c, jr_01e_62c3

    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $17
    rla
    rla
    rla
    rla
    rla
    jr jr_01e_62a7

    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_01e_62a7:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    inc e
    ld de, $1212
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

jr_01e_62c3:
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

Call_01e_62d1:
    ld de, $5585
    ld b, $38
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01e_62e0

    ld b, $68

jr_01e_62e0:
    ld a, b
    ldh [$ffa4], a
    ld a, $77
    ldh [$ffa6], a
    ld a, $03
    jp Jump_01e_62f9


Call_01e_62ec:
    ld de, $55f5
    ld a, $50
    ldh [$ffa4], a
    ld a, $40
    ldh [$ffa6], a
    ld a, $04

Jump_01e_62f9:
    ld [$c3e0], a
    ld a, $01
    ld [$cc46], a
    ld a, $05
    ld [$cc47], a
    ld a, $00
    ld [$c3e1], a
    ld [$c3e2], a
    ld b, $05
    jp Jump_000_021f


Call_01e_6313:
    ret


    ld a, $37
    add c
    ld l, a
    dec [hl]
    ret z

    ld [hl], $0c
    add $01
    ld l, a
    ld a, [hl]
    inc a
    cp $04
    jr c, jr_01e_6327

    ld a, $00

jr_01e_6327:
    ld [hl], a
    jr jr_01e_6336

Call_01e_632a:
    ld a, $37
    add c
    ld l, a
    ld [hl], $0c
    add $01
    ld l, a
    ld a, $00
    ld [hl], a

jr_01e_6336:
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$de96], a
    ret


Call_01e_6341:
    ld b, a
    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    ld a, b

Call_01e_6349:
    ld b, a
    ld a, $35
    add c
    ld l, a
    ld [hl], b
    add $f9
    ld l, a
    ld [hl], b
    add $08
    ld l, a
    ld [hl], $00
    ret


Call_01e_6359:
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    call Call_000_015f
    ld a, $36
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    dec [hl]
    jp nz, Jump_01e_638c

    ld a, b
    cp $02
    ret z

    ld a, $2e
    add c
    ld l, a
    ld b, [hl]
    add $07
    ld l, a
    ld [hl], b
    ld a, $36
    add c
    ld l, a
    inc [hl]

Jump_01e_638c:
    ret


Call_01e_638d:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5579
    ld a, $63
    ld [$cc00], a
    ld a, $64
    ld [$cc01], a
    call Call_01e_4032
    jr c, jr_01e_63b4

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_01e_63c9
    xor a
    pop hl
    ld c, l
    ret


jr_01e_63b4:
    scf
    pop hl
    ld c, l
    ret


    dec b
    jr z, jr_01e_63ea

    dec b
    jp nz, Jump_01e_6437

Jump_01e_63bf:
jr_01e_63bf:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_01e_63c9:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $08
    ld l, a
    ld [hl], b
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    ld de, $5581
    call Call_01e_523d
    call Call_01e_5235
    jp Jump_000_015c


jr_01e_63ea:
    ld a, [$ccc2]
    or a
    jr nz, jr_01e_63bf

    ld a, [$deaf]
    and $27
    jp nz, Jump_01e_6437

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_01e_6406

    dec a
    jr z, jr_01e_643e

    jp Jump_01e_6457


jr_01e_6406:
    ld de, $67ce
    call Call_000_015f
    call Call_01e_5285
    ld a, [$d722]
    ld e, a
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    add $17
    ld l, a
    ld a, b
    bit 0, [hl]
    jr nz, jr_01e_6426

    cp e
    jr nc, jr_01e_6437

    jp Jump_01e_6429


jr_01e_6426:
    cp e
    jr c, jr_01e_6437

Jump_01e_6429:
    ld a, $35
    add c
    ld l, a
    ld [hl], $14

Jump_01e_642f:
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    inc [hl]

Jump_01e_6437:
jr_01e_6437:
    call Call_01e_537c
    ret nz

    jp Jump_01e_63bf


jr_01e_643e:
    ld de, $67d4
    call Call_000_015f
    ld a, $35
    add c
    ld l, a
    dec [hl]
    jr nz, jr_01e_6437

    ld de, $5583
    call Call_01e_5263
    call Call_01e_522d
    jp Jump_01e_642f


Jump_01e_6457:
    ld de, $67db
    call Call_000_015f
    call Call_01e_5297
    jp Jump_01e_6437


    cp b
    ld h, e
    ld b, a
    dec h
    nop
    ld h, a
    ld l, b
    db $10
    ld bc, $0241
    ld e, $c4

Call_01e_6470:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5597
    ld a, $dd
    ld [$cc00], a
    ld a, $65
    ld [$cc01], a
    call Call_01e_4032
    jr c, jr_01e_6496

    call Call_01e_64a4

Jump_01e_648c:
    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    xor a
    pop hl
    ld c, l
    ret


Jump_01e_6496:
jr_01e_6496:
    scf
    pop hl
    ld c, l
    ret


    dec b
    jr z, jr_01e_64f3

    dec b
    jp nz, Jump_01e_65d6

Jump_01e_64a1:
jr_01e_64a1:
    ld b, $00
    ret


Call_01e_64a4:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    call Call_000_024f
    ld a, $30
    add c
    ld l, a
    ld [hl], b
    add $f4
    ld l, a
    bit 0, [hl]
    jr nz, jr_01e_64d1

    ld a, b
    cp $09
    jr c, jr_01e_64de

    cp $0c
    jr c, jr_01e_64e0

    ld a, $0c
    jr jr_01e_64e0

jr_01e_64d1:
    ld a, b
    cp $09
    jr nc, jr_01e_64de

    cp $06
    jr nc, jr_01e_64e0

    ld a, $06
    jr jr_01e_64e0

jr_01e_64de:
    ld a, $09

jr_01e_64e0:
    ld b, a
    ld l, c
    push hl
    ld de, $0380
    ld a, $1d
    add c
    ld l, a
    ld a, b
    call Call_000_024c
    pop hl
    ld c, l
    jp Jump_000_015c


jr_01e_64f3:
    ld a, [$ccc2]
    or a
    jr nz, jr_01e_64a1

    ld a, [$deaf]
    and $27
    jp nz, Jump_01e_65d6

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_01e_6515

    dec a
    jr z, jr_01e_6560

    dec a
    jr z, jr_01e_656f

    dec a
    jr z, jr_01e_6581

    jp Jump_01e_6590


jr_01e_6515:
    ld de, $67ac
    call Call_000_015f
    ld de, $559b
    call Call_01e_5333
    bit 1, a
    jp z, Jump_01e_65d6

Call_01e_6526:
    call Call_000_015c
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld b, a
    ld a, $2f
    add c
    ld l, a
    ld [hl], b
    ld a, b
    add a
    add a
    add a
    add a
    add $08
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld [hl], b
    add $02
    ld l, a
    ld [hl], $77
    add $08
    ld l, a
    ld [hl], $03
    add $0d
    ld l, a
    ld [hl], $00

Jump_01e_6558:
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_01e_65d6


jr_01e_6560:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jr nz, jr_01e_656f

    call Call_01e_6661
    jp Jump_01e_6558


jr_01e_656f:
    ld de, $67b3
    call Call_01e_4104
    jp nc, Jump_01e_65d6

    call Call_000_015c
    call Call_01e_65ea
    jp Jump_01e_65a4


jr_01e_6581:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jr nz, jr_01e_6590

    call Call_01e_6661
    jp Jump_01e_6558


Jump_01e_6590:
jr_01e_6590:
    ld de, $67b3
    call Call_01e_4104
    jp nc, Jump_01e_65d6

    call Call_000_015c
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_01e_65b8

Jump_01e_65a4:
    ld a, $2f
    add c
    ld l, a
    dec [hl]
    bit 7, [hl]
    jp nz, Jump_01e_64a1

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    sub $10
    ld [hl], a
    jr jr_01e_65cb

jr_01e_65b8:
    ld a, $2f
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $10
    jp nc, Jump_01e_64a1

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $10
    ld [hl], a

jr_01e_65cb:
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    add $13
    ld l, a
    ld [hl], $03

Jump_01e_65d6:
    call Call_01e_537c
    ret nz

    jp Jump_01e_64a1


    sbc d
    ld h, h
    ld b, a
    dec h
    nop
    ld h, a
    ld l, b
    dec bc
    ld bc, $0341
    ld e, $c6

Call_01e_65ea:
    ld l, c
    push hl
    ld a, $2f
    add c
    ld l, a
    ld b, [hl]
    inc b
    ld a, b
    cp $10
    jp nc, Jump_01e_6496

    ld de, $5597
    ld a, $dd
    ld [$cc00], a
    ld a, $65
    ld [$cc01], a
    call Call_01e_4032
    jp c, Jump_01e_6496

    call Call_01e_6611
    jp Jump_01e_648c


Call_01e_6611:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $de
    ld l, a
    ld b, [hl]
    add $27
    ld l, a
    ld [hl], b
    ld a, b
    add a
    add a
    add a
    add a
    add $08
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld [hl], b
    add $02
    ld l, a
    ld [hl], $77
    add $08
    ld l, a
    ld [hl], $03
    add $0d
    ld l, a
    ld [hl], $01
    call Call_000_015c
    jp Jump_01e_537c


Call_01e_6641:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $55fd
    ld a, $dd
    ld [$cc00], a
    ld a, $65
    ld [$cc01], a
    call Call_01e_4032
    jp c, Jump_01e_6496

    call Call_01e_6526
    jp Jump_01e_648c


Call_01e_6661:
    ld l, c
    push hl
    ld a, $2f
    add c
    ld l, a
    ld e, [hl]
    ld d, $07
    ld hl, $6676
    ld bc, $0101
    call Call_000_0246
    pop hl
    ld c, l
    ret


    inc c

Call_01e_6677:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $559f
    ld a, $e4
    ld [$cc00], a
    ld a, $66
    ld [$cc01], a
    call Call_01e_4032
    jr c, jr_01e_6697

    call Call_01e_66a5
    xor a
    pop hl
    ld c, l
    ret


jr_01e_6697:
    scf
    pop hl
    ld c, l
    ret


    dec b
    jr z, jr_01e_66c6

    dec b
    jp nz, Jump_01e_66dd

Jump_01e_66a2:
jr_01e_66a2:
    ld b, $00
    ret


Call_01e_66a5:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $08
    ld l, a
    ld [hl], b
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    ld de, $55a3
    call Call_01e_523d
    call Call_01e_5235
    jp Jump_000_015c


jr_01e_66c6:
    ld a, [$ccc2]
    or a
    jr nz, jr_01e_66a2

    ld a, [$deaf]
    and $27
    jp nz, Jump_01e_66dd

    ld de, $6814
    call Call_000_015f
    call Call_01e_5285

Jump_01e_66dd:
    call Call_01e_537c
    ret nz

    jp Jump_01e_66a2


    sbc e
    ld h, [hl]
    ld b, a
    dec h
    nop
    ld h, a
    ld l, b
    rra
    ld bc, $0341
    ld e, $c6

Call_01e_66f1:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $55a9
    ld a, $8e
    ld [$cc00], a
    ld a, $67
    ld [$cc01], a
    call Call_01e_4032
    jr c, jr_01e_6711

    call Call_01e_671f
    xor a
    pop hl
    ld c, l
    ret


jr_01e_6711:
    scf
    pop hl
    ld c, l
    ret


    dec b
    jr z, jr_01e_6742

    dec b
    jp nz, Jump_01e_6787

Jump_01e_671c:
jr_01e_671c:
    ld b, $00
    ret


Call_01e_671f:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $0c
    ld l, a
    ld [hl], $00
    add $d2
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    ld de, $55b1
    call Call_01e_523d
    ld de, $55b3
    call Call_01e_5263
    jp Jump_000_015c


jr_01e_6742:
    ld a, [$ccc2]
    or a
    jr nz, jr_01e_671c

    ld a, [$deaf]
    and $27
    jp nz, Jump_01e_6787

    ld de, $681b
    call Call_000_015f
    call Call_01e_61d8
    ld de, $55ad
    call Call_01e_5333
    bit 1, a
    jr z, jr_01e_6787

    ld a, $36
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $02
    jr nc, jr_01e_677b

    ld de, $55b1
    call Call_01e_523d
    ld de, $55b3
    call Call_01e_5263
    jr jr_01e_6787

jr_01e_677b:
    ld de, $55b5
    call Call_01e_523d
    ld de, $55b7
    call Call_01e_5263

Jump_01e_6787:
jr_01e_6787:
    call Call_01e_537c
    ret nz

    jp Jump_01e_671c


    dec d
    ld h, a
    ld b, a
    dec h
    nop
    ld h, a
    ld l, b
    daa
    ld bc, $0242
    ld e, $c4
    ld h, a
    ld l, b
    ld [$ff01], sp
    ld h, a
    ld l, b
    ld d, b
    nop
    rst $38
    ld h, a
    ld l, b
    db $10
    ld bc, $0102
    rst $38
    ld h, a
    ld l, b
    ld b, $0b
    inc c
    dec c
    rst $38
    ld h, a
    ld l, b
    ld [bc], a
    inc bc
    call Call_01e_725e
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    rst $38
    ld h, a
    ld l, b
    inc b
    nop
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    ld h, a
    ld l, b
    ld b, $10
    ld de, $67ff
    ld l, b
    inc b
    ld [de], a
    inc de
    inc d
    rst $38
    ld h, a
    ld l, b
    inc b
    dec d
    ld d, $17
    rst $38
    ld h, a
    ld l, b
    dec b
    jr jr_01e_6800

    ld a, [de]
    add hl, de
    rst $38
    ld h, a
    ld l, b
    inc b
    nop
    ld c, $1b
    dec de
    dec de
    dec de
    dec de
    dec de
    rst $38
    ld h, a
    ld l, b
    inc b
    inc e
    ld c, $1d
    ld c, $1e
    ld c, $ff

jr_01e_6800:
    ld h, a
    ld l, b
    ld [bc], a
    inc e
    ld c, $1d
    ld c, $1e
    ld c, $ff
    ld h, a
    ld l, b
    ld bc, $0e1c
    dec e
    ld c, $1e
    ld c, $ff
    ld h, a
    ld l, b
    inc b
    rra
    jr nz, jr_01e_683b

    rst $38
    ld h, a
    ld l, b
    inc b
    daa
    ld h, $22
    dec h
    daa
    ld h, $22
    dec h
    daa
    inc hl
    daa
    inc h
    rst $38
    ld h, a
    ld l, b
    inc b
    nop
    ld c, $1b
    jr z, @+$2a

    jr z, jr_01e_685d

    jr z, @+$01

    ld h, a
    ld l, b
    inc b
    add hl, hl

jr_01e_683b:
    ld a, [hl+]
    dec hl
    rst $38
    ld h, a
    ld l, b
    inc b
    inc l
    inc l
    rst $38
    ld h, a
    ld l, b
    ld [bc], a
    inc l
    inc l
    rst $38
    ld h, a
    ld l, b
    ld bc, $2c2c
    rst $38
    ld h, a
    ld l, b
    ld [$ff2d], sp
    ld h, a
    ld l, b
    inc bc
    ld l, $2f
    jr nc, jr_01e_688d

    ld [hl-], a

jr_01e_685d:
    rst $38
    ld h, a
    ld l, b
    inc bc
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    db $dd
    ld l, b
    ld h, $69
    ld l, a
    ld l, c
    or h
    ld l, c
    pop bc
    ld l, c
    sub $69
    di
    ld l, c
    db $10
    ld l, d
    dec l
    ld l, d
    ld c, d
    ld l, d
    ld e, a
    ld l, d
    ld l, h
    ld l, d
    add c
    ld l, d
    sub [hl]
    ld l, d
    xor e
    ld l, d
    add sp, $6a
    add hl, hl
    ld l, e
    ld [hl], $6b
    ld b, e
    ld l, e

jr_01e_688d:
    ld d, b
    ld l, e
    ld e, l
    ld l, e
    ld l, d
    ld l, e
    ld a, a
    ld l, e
    sub h
    ld l, e
    xor c
    ld l, e
    and $6b
    inc hl
    ld l, h
    ld e, h
    ld l, h
    sbc c
    ld l, h
    adc $6c
    inc bc
    ld l, l
    jr c, @+$6f

    ld d, l
    ld l, l
    ld [hl], d
    ld l, l
    adc a
    ld l, l
    and h
    ld l, l
    cp c
    ld l, l
    adc $6d
    db $e3
    ld l, l
    ld hl, sp+$6d
    ld bc, $466e
    ld l, [hl]
    ld a, e
    ld l, [hl]
    or b
    ld l, [hl]
    push hl
    ld l, [hl]
    ld h, $6f
    cpl
    ld l, a
    ld l, h
    ld l, a
    xor l
    ld l, a
    xor $6f
    cpl
    ld [hl], b
    ld [hl], b
    ld [hl], b
    and c
    ld [hl], b
    sub $70
    dec bc
    ld [hl], c
    ld b, b
    ld [hl], c
    ld [hl], l
    ld [hl], c
    xor d
    ld [hl], c
    rst $18
    ld [hl], c
    ld hl, sp+$09
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06e8], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld [$0ae8], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$0eed], sp
    stop
    ld [$100f], sp
    nop
    rlca
    ld c, $30
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$10e8], sp
    stop
    ld [$1011], sp
    nop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld [$12e8], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$100d], sp
    ld [$15e8], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$101a], sp
    ld [$1bf0], sp
    stop
    ld [$1008], sp
    nop
    ld [$101c], sp
    ld [$1de8], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18e8], a
    stop
    ld [$1019], sp
    add b
    db $fc
    inc bc
    db $fc
    add hl, bc
    ld a, [$1efc]
    db $10
    ld [$1f00], sp
    db $10
    add b
    ld a, [$f905]
    add hl, bc
    ld a, [$20f8]
    stop
    ld [$1021], sp
    ld [$22f8], sp
    stop
    ld [$3022], sp
    add b
    ld hl, sp+$07
    push af
    add hl, bc
    ldh a, [c]
    ld hl, sp+$23
    stop
    ld [$1024], sp
    ld [$25f8], sp
    stop
    ld [$1026], sp
    ld [$27f8], sp
    stop
    ld [$3027], sp
    add b
    ld hl, sp+$07
    pop af
    add hl, bc
    ldh a, [c]
    ld hl, sp+$28
    stop
    ld [$1029], sp
    ld [$2af8], sp
    stop
    ld [$302a], sp
    ld [$2bf8], sp
    stop
    ld [$302b], sp
    add b
    ld hl, sp+$07
    pop af
    add hl, bc
    ldh a, [c]
    ld hl, sp+$29
    jr nc, jr_01e_6a19

jr_01e_6a19:
    ld [$3028], sp
    ld [$2af8], sp
    stop
    ld [$302a], sp
    ld [$2bf8], sp
    stop
    ld [$302b], sp
    add b
    ld hl, sp+$07
    push af
    add hl, bc
    ldh a, [c]
    ld hl, sp+$24
    jr nc, jr_01e_6a36

jr_01e_6a36:
    ld [$3023], sp
    ld [$26f8], sp
    jr nc, jr_01e_6a3e

jr_01e_6a3e:
    ld [$3025], sp
    ld [$27f8], sp
    stop
    ld [$3027], sp
    add b
    ld a, [$f905]
    add hl, bc
    ld a, [$21f8]
    jr nc, jr_01e_6a53

jr_01e_6a53:
    ld [$3020], sp
    ld [$22f8], sp
    stop
    ld [$3022], sp
    add b
    db $fc
    inc bc
    db $fc
    add hl, bc
    ld a, [$1efc]
    jr nc, @+$0a

    nop
    rra
    jr nc, @-$7e

    ld hl, sp+$07
    ld a, [$fa09]
    rst $30
    inc l
    stop
    ld [$102d], sp
    ld [$2ef8], sp
    stop
    ld [$102f], sp
    add b
    ld hl, sp+$07
    ld a, [$f909]
    rst $30
    jr nc, @+$12

    nop
    ld [$1031], sp
    ld [$32f8], sp
    stop
    ld [$1033], sp
    add b
    ld hl, sp+$07
    ld a, [$fa09]
    ld sp, hl
    dec l
    jr nc, jr_01e_6a9f

jr_01e_6a9f:
    ld [$302c], sp
    ld [$2ff8], sp
    jr nc, jr_01e_6aa7

jr_01e_6aa7:
    ld [$302e], sp
    add b
    pop af
    nop
    rst $28
    ld [$f1ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$34f0], sp
    stop
    ld [$1003], sp

Jump_01e_6abf:
    nop
    ld [$1004], sp
    nop
    ld [$101a], sp
    ld [$35e8], sp
    stop
    ld [$1036], sp
    nop

jr_01e_6ad0:
    ld [$1037], sp
    nop
    ld [$101c], sp
    ld [$38ec], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    ld [$103b], sp
    add b
    pop af
    nop

jr_01e_6aea:
    rst $28
    ld [$f1ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$3cf0], sp
    stop
    ld [$103d], sp
    nop
    ld [$1004], sp
    nop
    ld [$101a], sp
    ld [$3ee8], sp
    stop
    ld [$103f], sp
    nop
    ld [$1037], sp
    nop
    ld [$101c], sp

jr_01e_6b14:
    ld [$40e4], sp
    stop
    ld [$1041], sp
    nop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    ld [$103b], sp
    add b

jr_01e_6b29:
    ld hl, sp+$07
    inc bc
    ld [$f802], sp
    ld b, d
    stop
    ld [$1043], sp
    add b
    ld hl, sp+$07
    inc bc
    ld [$f802], sp
    ld b, h
    stop
    ld [$1045], sp
    add b
    ld hl, sp+$07
    inc bc
    ld [$f802], sp
    ld b, [hl]
    stop
    rlca
    ld b, [hl]
    jr nc, jr_01e_6ad0

    ld hl, sp+$07
    inc bc
    ld [$f802], sp
    ld c, b
    stop
    rlca
    ld c, b
    jr nc, @-$7e

    ld hl, sp+$07
    inc bc
    ld [$f802], sp
    ld c, d
    stop
    rlca
    ld c, d
    jr nc, jr_01e_6aea

    ld sp, hl
    dec b
    ei
    dec bc
    db $fc
    ld hl, sp+$46
    stop
    rlca
    ld b, [hl]
    jr nc, jr_01e_6b7f

    ld sp, hl
    ld b, a
    stop
    rlca
    ld b, a
    jr nc, @-$7e

jr_01e_6b7f:
    ld a, [$fc04]
    inc c
    db $fd
    ld hl, sp+$48
    stop
    rlca
    ld c, b
    jr nc, jr_01e_6b94

    ld sp, hl
    ld c, c
    stop
    rlca
    ld c, c
    jr nc, jr_01e_6b14

jr_01e_6b94:
    ei
    inc bc
    db $fd
    dec c
    cp $f8
    ld c, d
    stop
    rlca
    ld c, d
    jr nc, jr_01e_6ba9

    ld sp, hl
    ld c, e
    stop
    rlca
    ld c, e
    jr nc, jr_01e_6b29

jr_01e_6ba9:
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$4cf0], sp
    stop
    ld [$104d], sp
    nop
    ld [$104e], sp
    nop
    ld [$104f], sp
    ld [$50e8], sp
    stop
    ld [$1051], sp
    nop
    ld [$1052], sp
    nop
    ld [$1053], sp
    ld [$54ef], sp
    stop
    ld [$1055], sp
    ld [$5700], sp
    db $10
    db $fd
    ld [$1056], sp
    add b
    ld hl, sp+$07
    rst $20
    ld [$f7e4], sp
    nop
    stop
    ld [$1001], sp
    ld [$4cf0], sp
    stop
    ld [$104d], sp
    nop
    ld [$104e], sp
    nop
    ld [$104f], sp
    ld [$58e8], sp
    stop
    ld [$1059], sp
    nop
    ld [$105a], sp
    nop
    ld [$1053], sp
    ld [$5bf0], sp
    stop
    ld [$105c], sp
    ld [$5df8], sp
    stop
    ld [$105e], sp
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$4cf0], sp
    stop
    ld [$104d], sp
    nop
    ld [$104e], sp
    nop
    ld [$104f], sp
    ld [$58e8], sp
    stop
    ld [$105f], sp
    nop
    ld [$1060], sp
    nop
    ld [$1053], sp
    ld [$61f2], sp
    stop
    ld [$1062], sp
    ld [$6300], sp
    db $10
    add b
    pop af
    nop
    rst $28
    ld [$f1ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$101a], sp
    ld [$64f0], sp
    stop
    ld [$1065], sp
    nop
    ld [$101c], sp
    ld [$66ec], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    ld [$103b], sp
    ldh a, [c]
    call c, Call_000_1018
    nop
    ld [$1019], sp
    add b
    db $ed
    ld [$08f1], sp
    db $ed
    pop af
    ld h, a
    stop
    ld [$3067], sp
    ld [$68f0], sp
    stop
    ld [$1069], sp
    nop
    ld [$3069], sp
    nop
    ld [$3068], sp
    ld [$6ae8], sp
    stop
    ld [$106b], sp
    nop
    ld [$306b], sp
    nop
    ld [$306a], sp
    ld [$6cf0], sp
    stop
    ld [$306c], sp
    add b
    db $ed
    ld [$08f1], sp
    db $ed
    pop af
    ld l, l
    stop
    ld [$306d], sp
    ld [$6ef0], sp
    stop
    ld [$106f], sp
    nop
    ld [$306f], sp
    nop
    ld [$306e], sp
    ld [$70e8], sp
    stop
    ld [$1071], sp
    nop
    ld [$3071], sp
    nop
    ld [$3070], sp
    ld [$72f0], sp
    stop
    ld [$3072], sp
    add b
    db $ed
    ld [$08f1], sp
    db $ed
    pop af
    ld [hl], e
    stop
    ld [$3073], sp
    ld [$74f0], sp
    stop
    ld [$1075], sp
    nop
    ld [$3075], sp
    nop
    ld [$3074], sp
    ld [$76e8], sp
    stop
    ld [$1077], sp
    nop
    ld [$3077], sp
    nop
    ld [$3076], sp
    ld [$78f0], sp
    stop
    ld [$3078], sp
    add b
    ld a, [$f405]
    rlca
    ldh a, [c]
    ld hl, sp+$3c
    stop
    ld [$103d], sp
    ld [$3ef8], sp
    stop
    ld [$103f], sp
    rlca
    ld hl, sp+$3c
    ld d, b
    nop
    ld [$503d], sp
    add b
    ei
    inc b
    push af
    ld b, $f2
    ld hl, sp+$40
    stop
    ld [$1041], sp
    ld [$42f8], sp
    stop
    ld [$1043], sp
    rlca
    ld hl, sp+$40
    ld d, b
    nop
    ld [$5041], sp
    add b
    db $fc
    inc bc
    or $05
    ldh a, [c]
    ld hl, sp+$44
    stop
    ld [$1045], sp
    ld [$46f8], sp
    stop
    ld [$1047], sp
    rlca
    ld hl, sp+$44
    ld d, b
    nop
    ld [$5045], sp
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp-$08
    ld c, b
    stop
    rlca
    ld c, b
    jr nc, jr_01e_6da3

    ld sp, hl
    ld c, b
    ld d, b
    nop
    rlca
    ld c, b
    ld [hl], b

jr_01e_6da3:
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp-$08
    ld c, c
    stop
    rlca
    ld c, c
    jr nc, jr_01e_6db8

    ld sp, hl
    ld c, c
    ld d, b
    nop
    rlca
    ld c, c
    ld [hl], b

jr_01e_6db8:
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp-$08
    ld c, d
    stop
    rlca
    ld c, d
    jr nc, jr_01e_6dcd

    ld sp, hl
    ld c, d
    ld d, b
    nop
    rlca
    ld c, d
    ld [hl], b

jr_01e_6dcd:
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp-$08
    ld c, e
    stop
    rlca
    ld c, e
    jr nc, jr_01e_6de2

    ld sp, hl
    ld c, e
    ld d, b
    nop
    rlca
    ld c, e
    ld [hl], b

jr_01e_6de2:
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp-$08
    ld c, h
    stop
    rlca
    ld c, h
    jr nc, jr_01e_6df7

    ld sp, hl
    ld c, h
    ld d, b
    nop
    rlca
    ld c, h
    ld [hl], b

jr_01e_6df7:
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    db $fc
    db $fc
    ld c, l
    db $10
    add b
    pop af
    nop
    rst $28
    ld [$f1ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$4ee8], sp
    stop
    ld [$104f], sp
    nop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1050], sp
    ld [$51e0], sp
    stop
    ld [$1052], sp
    nop
    ld [$1064], sp
    nop
    ld [$1053], sp
    nop
    ld [$1054], sp
    ld [$66ec], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    ld [$103b], sp
    add b
    or $09
    di
    ld b, $ed
    ld hl, sp+$2c
    stop
    ld [$7031], sp
    ld [$2df0], sp
    stop
    ld [$102e], sp
    nop
    ld [$7030], sp
    nop
    ld [$702f], sp
    ld [$2fe8], sp
    stop
    ld [$1030], sp
    nop
    ld [$702e], sp
    nop
    ld [$702d], sp
    ld [$31f0], sp
    stop
    ld [$702c], sp
    add b
    or $09
    di
    ld b, $ed
    ld hl, sp+$32
    stop
    ld [$7042], sp
    ld [$33f0], sp
    stop
    ld [$103f], sp
    nop
    ld [$7041], sp
    nop
    ld [$7040], sp
    ld [$40e8], sp
    stop
    ld [$1041], sp
    nop
    ld [$703f], sp
    nop
    ld [$7033], sp
    ld [$42f0], sp
    stop
    ld [$7032], sp
    add b
    or $09
    di
    ld b, $ed
    ld hl, sp+$43
    stop
    ld [$7048], sp
    ld [$44f0], sp
    stop
    ld [$1045], sp
    nop
    ld [$7047], sp
    nop
    ld [$7046], sp
    ld [$46e8], sp
    stop
    ld [$1047], sp
    nop
    ld [$7045], sp
    nop
    ld [$7044], sp
    ld [$48f0], sp
    stop
    ld [$7043], sp
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$49f1], sp
    stop
    ld [$104a], sp
    nop
    ld [$104b], sp
    nop
    ld [$104c], sp
    ld [$56e8], sp
    stop
    ld [$1057], sp
    nop
    ld [$1058], sp
    nop
    ld [$1059], sp
    ld [$5af0], sp
    stop
    ld b, $5a
    jr nc, jr_01e_6f22

    push af
    ld e, e
    stop
    ld [$105c], sp
    nop

jr_01e_6f22:
    ld [$305b], sp
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld d, l
    db $10
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$60f0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$1deb], sp
    stop
    ld [$1063], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$60f0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$1deb], sp
    stop
    ld [$1063], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add sp, -$12
    ld d, c
    db $10
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$60f0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$1deb], sp
    stop
    ld [$1063], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add sp, -$12
    ld d, d
    db $10
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$60f0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$1deb], sp
    stop
    ld [$1063], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add sp, -$12
    ld d, e
    db $10
    add b
    ld hl, sp+$07
    rst $20
    ld [$f8e5], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$60f0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$1deb], sp
    stop
    ld [$1063], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add sp, -$12
    ld d, h
    db $10

Jump_01e_706f:
    add b
    ld hl, sp+$07
    rst $28
    ld [$f8ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$4df0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$4eef], sp
    stop
    ld [$104f], sp
    nop
    ld [$1050], sp
    add b
    ld hl, sp+$07
    rst $28
    ld [$f8ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$4df0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$4eef], sp
    stop
    ld [$104f], sp
    nop
    ld [$1050], sp
    ldh a, [$ffea]
    ld d, c
    db $10
    add b
    ld hl, sp+$07
    rst $28
    ld [$f8ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$4df0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$4eef], sp
    stop
    ld [$104f], sp
    nop
    ld [$1050], sp
    ldh a, [$ffea]
    ld d, d
    db $10
    add b
    ld hl, sp+$07
    rst $28
    ld [$f8ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$4df0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$4eef], sp
    stop
    ld [$104f], sp
    nop
    ld [$1050], sp
    ldh a, [$ffea]
    ld d, e
    db $10
    add b
    ld hl, sp+$07
    rst $28
    ld [$f8ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$5df5], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    ld [$4df0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$4eef], sp
    stop
    ld [$104f], sp
    nop
    ld [$1050], sp
    ldh a, [$ffea]
    ld d, h
    db $10
    add b
    db $f4
    dec bc
    pop af
    ld [$f8ed], sp
    ld h, a
    stop
    ld [$3067], sp
    ld [$68f0], sp
    stop
    ld [$1069], sp
    nop
    ld [$3069], sp
    nop
    ld [$3068], sp
    ld [$6ae8], sp
    stop
    ld [$106b], sp
    nop
    ld [$306b], sp
    nop
    ld [$306a], sp
    ld [$6cf0], sp
    stop
    ld [$306c], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8ed], sp
    ld l, l
    stop
    ld [$306d], sp
    ld [$6ef0], sp
    stop
    ld [$106f], sp
    nop
    ld [$306f], sp
    nop
    ld [$306e], sp
    ld [$70e8], sp
    stop
    ld [$1071], sp
    nop
    ld [$3071], sp
    nop
    ld [$3070], sp
    ld [$72f0], sp
    stop
    ld [$3072], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8ed], sp
    ld [hl], e
    stop
    ld [$3073], sp
    ld [$74f0], sp
    stop
    ld [$1075], sp
    nop
    ld [$3075], sp
    nop
    ld [$3074], sp
    ld [$76e8], sp
    stop
    ld [$1077], sp
    nop
    ld [$3077], sp
    nop
    ld [$3076], sp
    ld [$78f0], sp
    stop
    ld [$3078], sp
    add b

Call_01e_7214:
Jump_01e_7214:
    ld [$cf7b], a
    ld a, $54
    ld [$cf86], a
    ld a, $3c
    ld [$de88], a
    ld a, $03
    ld [$cf7c], a
    xor a
    ld [$cf7d], a
    ld a, [$d7d2]
    srl a
    srl a
    srl a
    ld [$cf7e], a
    ld de, $724f
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $1e
    call Call_000_02d3
    xor a
    ld [$de88], a
    ret


Call_01e_724a:
    ld a, $80
    jp Jump_01e_7214


    ld a, $3c
    ld [$de88], a
    push hl
    push de
    push bc
    call Call_01e_6059
    pop bc
    pop de
    pop hl
    ret


Call_01e_725e:
    rst $08
    ld d, d
    ret


Call_01e_7261:
    ld l, c
    push hl
    call Call_01e_7284
    call Call_000_01c5
    ld a, $3a
    ld de, $8700
    call Call_000_020d
    ld a, $3d
    ld de, $89c0
    call Call_000_020d
    ld a, $3e
    pop hl
    ld c, l
    ld a, $05
    add c
    ld l, a
    ld [hl], $70
    ret


Call_01e_7284:
    ld hl, $c028
    ld de, $0004
    ld b, $1e
    xor a

jr_01e_728d:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_01e_728d

    ret


    add b
    db $fd
    add b
    ld a, [$08d1]
    rlca
    ld bc, $9401
    rst $18
    ld b, b

Jump_01e_729f:
    ld a, b
    dec b
    jr z, jr_01e_72e1

    dec b
    jr z, jr_01e_72af

    dec b
    jr z, jr_01e_7309

    dec b
    jr z, jr_01e_72b2

    or a
    jr z, jr_01e_72bd

jr_01e_72af:
    ld b, $00
    ret


jr_01e_72b2:
    ld a, $3b
    call Call_000_020a
    ld a, $3e
    call Call_000_020a
    ret


jr_01e_72bd:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ec
    ld l, a
    ld [hl], $00
    add $0d
    ld l, a
    ld [hl], $00
    ld a, $0d
    add c
    ld l, a
    ld [hl], $87
    add $02
    ld l, a
    ld [hl], $47
    call Call_000_025e
    ld de, $6867
    jp Jump_000_01dd


jr_01e_72e1:
    ld a, [$deaf]
    or a
    jr nz, jr_01e_7309

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_730c

    ld de, $67a0
    call Call_000_015f
    ld a, [$d140]
    cp $01
    jr nz, jr_01e_7309

    ld a, $80
    ld [$d140], a
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]

jr_01e_7309:
    jp Jump_01e_537c


jr_01e_730c:
    ld a, $2c
    add c
    ld l, a
    res 0, [hl]
    push hl
    ld de, $7403
    call Call_01e_4104
    pop hl
    jr c, jr_01e_7329

    bit 0, [hl]
    jr z, jr_01e_7332

    ld l, c
    push hl
    call Call_01e_734a
    pop hl
    ld c, l
    jr jr_01e_7332

jr_01e_7329:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00

jr_01e_7332:
    jr jr_01e_7309

Call_01e_7334:
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    ret


    ld a, b
    ld [hl], e
    ld b, a
    and h
    nop
    ld h, a
    ld l, b
    db $10
    ld bc, $0141
    ld e, $c4
    db $ec
    nop

Call_01e_734a:
    ld de, $7348
    ld a, $3b
    ld [$cc00], a
    ld a, $73
    ld [$cc01], a
    call Call_01e_4032
    ret c

    ld de, $7293
    call Call_01e_5259
    ld de, $7295
    call Call_01e_5263
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    ld [hl], $00
    ld de, $6867
    jp Jump_000_01dd


    dec b
    jr z, jr_01e_7381

    dec b
    jr nz, jr_01e_73b1

    ld b, $00
    ret


jr_01e_7381:
    ld a, [$deaf]
    or a
    jr nz, jr_01e_73b1

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01e_73b4

    dec a
    jr z, jr_01e_73ce

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $52
    jr nc, jr_01e_73a8

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $3c
    call Call_000_015c

jr_01e_73a8:
    call Call_01e_5285
    ld de, $67ce
    call Call_000_015f

jr_01e_73b1:
    jp Jump_01e_537c


jr_01e_73b4:
    ld de, $67d4
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01e_73cc

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $02
    ld l, a
    ld [hl], $00
    call Call_000_015c

jr_01e_73cc:
    jr jr_01e_73b1

jr_01e_73ce:
    ld de, $67db
    call Call_000_015f
    call Call_01e_5297
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $18
    jr nc, jr_01e_7401

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_01e_7401

    set 0, [hl]
    ld a, $50
    ldh [$ff8a], a
    ld a, $20
    ldh [$ff8b], a
    ld de, $7423
    ld b, $1e
    call Call_000_02d6
    rst $08
    dec h
    ld a, $01
    ld [$d141], a

jr_01e_7401:
    jr jr_01e_73b1

    ld h, a
    ld l, b
    inc b
    nop
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    call Call_01e_7334
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rst $38
    inc b
    rst $38
    add b
    nop
    rlca
    db $fc
    nop
    nop
    ld hl, sp+$00
    ld sp, hl
    db $fc
    nop
    ld sp, hl
    inc b
    nop
    nop
    ld [$0704], sp
    inc b
    nop
    ld c, $f8
    nop
    nop
    ldh a, [rP1]
    ldh a, [c]
    ld hl, sp+$00
    ldh a, [c]
    ld [$0000], sp
    db $10
    inc b
    ld c, $08
    nop
    dec d
    db $f4
    nop
    nop
    add sp, $00
    db $eb
    db $f4
    nop
    db $eb
    inc c
    nop
    nop
    jr jr_01e_745e

    dec d
    inc c
    nop
    inc e

jr_01e_745e:
    ldh a, [rP1]
    nop
    ldh [rP1], a
    db $e4
    ldh a, [rP1]
    db $e4
    stop
    nop
    jr nz, jr_01e_7470

    inc e
    db $10
    cp $ff

jr_01e_7470:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01e_76ba:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01e_7a4e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
