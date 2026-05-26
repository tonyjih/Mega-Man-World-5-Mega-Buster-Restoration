; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

Jump_004_4000:
    jp Jump_004_405d


    jp $53d7


    jp Jump_004_6b9e


    jp Jump_004_50ef


    jp Jump_004_51db


    jp Jump_004_4069


    jp Jump_004_63d6


    jp Jump_004_63d0


    jp Jump_004_7437


    jp Jump_004_743b


    jp Jump_004_743f


    jp Jump_004_7443


    jp Jump_004_5090


    ret nc

    ld h, e
    ld [hl], $74
    ld a, [hl-]
    ld [hl], h
    ld a, $74
    ld b, d
    ld [hl], h
    push hl
    ld b, a
    jr jr_004_407d

    pop de
    ld c, b
    ld c, e
    ld c, b
    sbc [hl]
    ld c, b
    dec hl
    ld l, d
    ld e, h
    ld d, a
    push bc
    ld e, c
    cp a
    ld d, a
    ld [bc], a
    ld e, c
    ld l, l
    ld h, d
    cp $5c
    rrca
    ld h, h
    ld [de], a
    ld h, a
    push af
    ld l, b
    xor b
    ld l, c
    jr z, jr_004_40ae

    cp [hl]
    ld l, e
    ld d, e
    ld [hl], c
    ld b, [hl]
    ld [hl], h
    dec sp
    ld a, d
    inc hl
    ld d, h

Jump_004_405d:
    ld de, $8000
    ld hl, $4075

jr_004_4063:
    ld bc, $06a0
    call Call_000_0183

Jump_004_4069:
    ld de, $8800
    ld hl, $4715
    ld bc, $00d0
    jp Jump_000_0183


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_407d:
    inc a
    nop
    ld b, e
    inc a
    ld b, e
    inc a
    ld b, l
    dec sp
    nop
    nop
    nop
    nop
    ld c, $00
    rra
    inc c
    inc a
    dec de
    ld a, b
    rlca
    cp b
    ld [hl], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3e

    jr nz, jr_004_4063

    inc a
    ldh [rTAC], a
    ld [bc], a
    ld [hl], a
    ld [bc], a
    adc a
    ld [hl], d
    adc l
    ld [hl], e
    sbc [hl]

jr_004_40ae:
    ld h, l
    ld b, a
    ld a, $27
    rra
    rra
    nop
    push af
    ld a, e
    ld a, e
    sbc l
    ld a, e
    sbc h
    ld [hl], e
    db $fc
    rst $30
    add hl, bc
    rlca
    ei
    rst $38
    rlca
    db $fc
    ld a, a
    ld hl, sp+$60
    db $f4
    ld l, b
    ldh [c], a
    call c, $dee1

jr_004_40cd:
    pop de
    adc [hl]

jr_004_40cf:
    pop de
    adc [hl]
    ld c, [hl]
    add b
    ld e, b
    add b
    jr nc, @+$21

    ld e, $0f
    ld a, $1f
    ld e, a
    inc a
    ld b, d
    inc a
    ld h, d
    inc e
    add c
    ld a, [hl]
    rst $38
    nop
    ld [hl-], a
    call z, $9e61
    pop hl
    ld a, $e5
    ld a, [$70ee]
    ld [hl], b
    nop

jr_004_40f1:
    nop
    nop
    nop
    nop
    ld c, $00
    rra
    inc c
    inc a
    dec de
    ld a, b
    rlca
    cp b
    ld [hl], a
    rst $38
    nop
    cp $4f
    rst $28
    ld d, e
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_004_40cd

    jr nz, jr_004_40cf

    jr nc, jr_004_40f1

    or b
    ld h, b
    ld a, h
    and b
    rst $28
    ld d, e
    xor [hl]
    ld a, a
    ld e, [hl]
    ld hl, $1f20
    ccf
    nop
    ld e, a
    cpl

jr_004_4121:
    ld c, a
    ld [hl], $3d
    ld [bc], a
    ld a, h
    sbc b
    ld a, [hl]
    sbc h
    ld a, a
    cp [hl]
    rst $38
    ld l, [hl]
    ldh [c], a
    call c, Call_000_3cc2
    inc h
    ret c

    ld [$d2f0], sp
    inc l
    db $fc
    jr nc, @+$7e

    jr c, jr_004_417e

    inc a
    ld hl, $391e
    ld b, $41
    ld a, $7e
    nop

jr_004_4145:
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jp $99ff


    rst $20

jr_004_414d:
    and c
    rst $18
    add c
    rst $38
    jp Jump_004_7eff


    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_004_4121

    jr nz, @-$3e

    jr nc, jr_004_4145

    ccf
    inc de
    dec sp
    inc d
    dec sp
    inc d
    dec hl
    rra
    rla
    ld [$0738], sp
    ld b, a
    jr c, @+$42

    ccf
    xor h
    ret c

    rst $18
    add sp, -$21
    rst $20
    sbc [hl]
    rst $28
    cp [hl]

jr_004_417e:
    ld [hl], a
    ld a, a
    ld hl, sp-$03
    ld hl, sp-$26
    db $ec
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_004_414d

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ffe0], a
    nop
    ld b, b
    ccf
    ccf
    nop
    rlca
    inc bc
    add hl, bc
    rlca

jr_004_419d:
    ld [$1c07], sp
    inc bc
    jr nz, jr_004_41c2

    ccf
    nop
    or d
    call c, $3ec3
    add a
    rst $38
    rst $38
    rst $00
    ld b, [hl]
    add e
    ld b, e
    add b
    jr nz, @-$3e

    ldh [rP1], a
    ldh a, [rP1]
    ld [$04f0], sp
    ld hl, sp+$24
    ret c

    ld a, b
    add b
    add b
    nop

jr_004_41c1:
    nop

jr_004_41c2:
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    db $db
    rst $20
    cp l
    jp $c3bd


    db $db
    rst $20
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_004_419d

    jr nz, @-$3e

    jr nc, jr_004_41c1

    or b
    ld h, b
    ld [hl], b
    and b
    ld bc, $0100
    nop
    inc bc
    nop
    dec b
    inc bc
    inc b
    inc bc
    ld [$0907], sp
    ld b, $08
    rlca
    sbc $a7
    ld e, h
    rst $38
    cp h
    ld b, e
    pop bc
    cp [hl]
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$60
    db $f4
    ld hl, sp-$1c
    ld hl, sp-$1e
    cp h
    ldh a, [c]
    adc h
    ldh [c], a
    sbc h
    ld [$0707], sp
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc c
    inc bc
    db $10
    rrca
    rra
    nop
    ret nz

    ccf
    ld b, b
    ccf
    ldh a, [$ff7f]
    ld a, a
    ei
    dec de
    pop af
    ld de, $11e0
    ldh [$fff1], a
    nop
    ld h, d
    sbc h
    ld e, h
    add b
    ldh [$ffc0], a
    sub b
    ldh [rNR23], a
    ldh [rTMA], a
    ld hl, sp+$01
    cp $ff
    nop
    ld c, $00
    rra
    inc c
    inc a
    dec de
    ld a, b
    rlca
    cp b
    ld [hl], a
    rst $38
    nop
    add b
    ld a, a
    add b
    ld a, a
    sbc $21
    nop
    rst $38
    cp h
    ld b, e
    pop bc
    cp [hl]
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    rlca
    nop
    ret nz

    ccf
    ld b, b
    ccf
    ldh a, [$ff7f]
    cp a
    ld a, e
    adc a
    ld [hl], c
    dec b
    ld hl, sp+$05
    ld hl, sp-$03
    nop
    ld e, $00
    ld [hl], c
    ld c, $fd
    ld e, [hl]
    and c
    ld e, [hl]
    ld [hl], c
    ld c, $1e
    nop
    nop
    nop
    nop
    nop
    dec sp
    inc d
    db $eb
    rra
    rst $30
    ld c, b
    ld hl, sp+$77
    rst $38
    ld a, b
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $f7cf
    adc a
    rst $30
    sbc a
    ld l, l
    dec a
    jp c, Jump_000_36f9

jr_004_42af:
    ld hl, sp-$09
    db $fc
    ei
    di
    db $fc
    ret nz

    nop
    ldh [$ffc0], a
    ret nc

jr_004_42ba:
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    ld [bc], a
    ld bc, $0103
    rlca
    inc bc
    add hl, bc
    rlca
    ld [$1c07], sp
    inc bc
    jr nz, jr_004_42f2

    ccf
    nop
    ld [bc], a
    db $fc
    inc bc
    cp $87
    rst $38
    rst $38
    rst $08
    ld c, [hl]
    add a
    ld b, h
    add e
    ld [hl+], a
    pop bc
    db $e3
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nc, jr_004_42af

    inc c
    ldh a, [rSC]

jr_004_42f2:
    db $fc
    cp $00
    rlca
    ld [bc], a
    rra
    ld [bc], a
    rra
    ld a, [bc]
    dec e
    dec bc
    ld e, $0d
    rra
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld d, e
    xor [hl]
    ld a, a
    sbc $21
    ldh [$ff5f], a
    rst $38
    ld b, b
    rst $38
    rrca
    rrca
    ld b, $0d
    ld [bc], a
    ccf
    inc de
    ei
    inc d
    ei
    ld d, h
    db $eb
    ld e, a
    rst $30
    ld l, b
    ld hl, sp+$07
    ld b, a
    jr c, @+$42

    ccf
    xor h
    ret c

    call c, $d8e8
    ldh [$ff90], a
    ldh [$ffb8], a
    ld [hl], b
    ld a, h
    ld hl, sp-$04
    ld hl, sp-$26
    db $ec
    jr nc, jr_004_4337

jr_004_4337:
    ld c, b
    jr nc, jr_004_42ba

    ld a, b

jr_004_433b:
    adc l
    ld [hl], b
    ld c, [hl]
    ld sp, $1c23
    rla
    dec c
    rrca
    dec b
    jr c, jr_004_4347

jr_004_4347:
    ld a, [hl]
    jr nc, jr_004_433b

    ld l, [hl]
    ldh [$ff1f], a
    ldh [$ffdf], a
    db $fc
    inc bc
    ld a, [$bd3d]
    ld c, [hl]
    inc c
    nop
    ld [de], a
    inc c
    ld bc, $b11e
    ld c, $b2
    inc c
    call nz, $e8b8
    or b
    ldh a, [$ffa0]
    ld a, e
    inc d
    dec hl

jr_004_4368:
    rra
    rla
    ld [$001f], sp
    rra
    ld [$0f1f], sp
    rra
    rrca
    ld a, a
    rrca
    sbc $e4
    sbc h
    ldh [rNR32], a
    add sp, -$48
    ld d, b
    ld a, b

jr_004_437e:
    or b
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld e, $0f
    daa
    rra
    inc hl
    rra
    ld hl, $421e
    inc a
    add d
    ld a, h
    add [hl]
    ld a, b
    ld a, b
    nop
    ld bc, $01fe
    cp $87
    cp $ff
    ld e, $1f
    ld c, $17
    ld c, $11
    ld c, $21
    ld e, $11
    ld c, $11
    ld c, $11
    ld c, $11
    ld c, $11
    ld c, $0e
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
    ld bc, $0200
    ld bc, $0003
    inc bc
    ld bc, $0103
    dec sp
    inc d
    db $eb
    rra
    rst $30
    ld l, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b

jr_004_43cf:
    rst $38
    rrca
    rra
    rrca
    ld a, a
    rrca
    nop
    nop
    nop
    nop
    nop
    ld de, $1801
    ld [bc], a
    dec e
    inc bc
    inc e
    ld e, $e1
    ld h, $5d
    jr c, jr_004_4368

    ld a, [hl]
    or c
    pop af
    ld l, [hl]
    ldh [$ff1f], a
    ldh [$ffdf], a
    db $fc
    inc bc
    jp nz, $013d

    cp $00
    nop
    nop
    nop
    nop
    adc b
    add b
    jr jr_004_437e

    jr c, @-$3e

    cp b
    ld hl, sp-$79
    db $e4
    cp d
    ld b, a
    inc a
    add [hl]
    ld a, l
    adc a
    ld [hl], d
    adc e
    ld [hl], l
    ld [hl], e
    dec c
    ld bc, $01fe
    ld a, $07
    jr jr_004_43cf

    ld b, [hl]
    ld bc, $71fe
    adc [hl]
    ei
    dec b
    rst $30
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [c], a
    ld a, h
    pop hl
    ld a, [hl]
    pop af
    adc $d1
    xor [hl]
    adc $b0
    add b
    ld a, a
    add b
    ld a, h
    add b
    ld a, b
    rlca
    inc bc
    add hl, bc
    rlca
    ld [$0807], sp
    rla
    db $10
    cpl
    jr nz, jr_004_44a0

    ld hl, $1e1e
    nop
    nop
    rst $38
    add b
    rst $38
    jp Jump_004_7fff


    adc a
    adc a
    ld [hl], a
    adc e
    ld h, a
    adc b
    ld b, a
    db $10
    adc a
    add b
    ld [hl], b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld l, [hl]
    add b
    ld b, e
    add b
    ld b, b
    add b
    nop
    ld b, d
    inc a
    ld b, c
    ld a, $31
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    inc d
    dec hl
    rra
    scf
    ld [$0718], sp
    ccf
    jr @+$81

    ccf
    sbc a
    ld a, e
    adc e
    ld [hl], c
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld a, [bc]
    pop af
    inc de
    pop hl
    rla
    db $e3
    ld e, c
    and a
    xor b
    rlca
    inc e

jr_004_44a0:
    inc bc
    jr nz, jr_004_44c2

    ccf
    nop
    ld [bc], a
    ld bc, $0001
    rlca
    nop
    dec bc
    rlca
    di
    rrca
    sub c
    ld l, a
    add e
    ld a, l
    ld b, e
    inc a
    ld a, a
    add b
    rst $38
    daa
    ld [hl], a
    add hl, hl
    rst $30
    add hl, hl
    rst $10
    cp a
    xor $91
    cp a

jr_004_44c2:
    ldh [$ffbe], a
    pop af
    sbc b
    ld [hl], b
    ld e, b
    or b
    cp b
    ret nc

    or b
    ret nz

    jr c, @-$3e

    inc a
    ret c

    ld a, d
    cp h
    ldh a, [c]
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    dec h
    jr @+$7b

    nop
    sbc a
    ld h, b
    inc bc
    rst $38
    ld bc, $01ff
    cp $3e
    ret nz

    ret nz

    nop
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $00
    db $fc
    call nz, $f8f8
    nop
    nop
    nop
    nop
    nop
    ldh [c], a
    call c, $8cd2
    and d
    inc e
    ld h, $18
    ld b, c
    ld a, $79
    ld b, $07
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
    nop
    inc c
    inc bc
    ld [$1007], sp
    rrca
    jr jr_004_4534

    inc e
    nop
    ld [hl+], a
    inc e
    ldh [c], a
    inc e
    pop af
    adc $c9
    or $c5
    ld a, [$fac7]
    rst $00

jr_004_4534:
    ld a, [$0f78]
    sbc b
    ld l, a
    sbc b
    ld h, a
    sbc h
    ld a, e
    cp a
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    ld a, a
    rlca
    rst $00
    ld a, [$fa07]
    ld c, $f4
    ld e, $ec
    db $fc
    jr @-$06

    ldh a, [$fffc]
    ldh a, [$ffce]
    db $fc
    db $10
    rrca
    db $10
    rrca
    jr jr_004_456a

    rra
    ld c, $2f
    ld e, $27
    ld e, $22
    inc e
    ld hl, $1f1e
    xor $3f
    sbc $41

jr_004_456a:
    cp [hl]
    add d
    ld a, h
    add h
    ld a, b
    ld b, h
    jr c, jr_004_4596

    jr @+$1a

    nop
    ld hl, $211e
    ld e, $21
    ld e, $22
    inc e
    inc h
    jr jr_004_4598

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    jr jr_004_459c

    jr nc, jr_004_45ae

    ccf
    nop
    ld l, $1f
    cpl
    inc de
    inc e

jr_004_4596:
    nop
    ldh [c], a

jr_004_4598:
    inc e
    ldh a, [c]
    db $ec
    add hl, de

jr_004_459c:
    or $05
    ld a, [$fa05]
    and a
    ld a, d
    rst $30
    ld a, d
    cpl
    inc de
    xor $1f
    cp $61
    ld sp, hl
    ld a, [hl]
    rst $38

jr_004_45ae:
    ld a, a
    rst $38
    rra
    rra
    rrca
    rra
    rrca
    rst $30
    ld a, d
    and a
    ld a, d
    adc [hl]
    ld [hl], h
    ld e, $ec
    db $fc
    ld hl, sp-$08
    ldh a, [$fffc]
    ldh a, [$ffce]
    db $fc
    ld bc, $0700
    ld bc, $0708
    ccf
    rrca
    ld a, a
    ccf
    cp a
    ld a, a
    adc b
    ld a, a
    sub b
    ld l, a
    or b
    ld c, a
    ld h, b
    rra
    jr nz, jr_004_45fa

    jr c, jr_004_45fc

    ccf
    ld e, $3f
    ld e, $3e
    inc e
    ld [hl+], a
    inc e
    dec c
    ldh a, [c]
    ld e, $fc
    dec a
    cp $79
    or $f1
    ld c, $23
    inc e
    ld hl, $3f1e
    nop
    ld [hl+], a
    inc e
    ld hl, $211e

jr_004_45fa:
    ld e, $11

jr_004_45fc:
    ld c, $11
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    sub a
    ld l, b
    ld b, c
    ld a, $21
    ld e, $21
    ld e, $4f
    jr nc, jr_004_4642

    nop
    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld c, c
    ld a, $41
    ld a, $4b
    ld a, $5b
    ld a, $7b
    ld a, $00
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
    ccf
    nop
    ld a, a
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    pop bc
    ld a, [hl]
    ld e, a

jr_004_4642:
    rst $38
    ld [hl], b
    rst $38
    ld e, [hl]
    ccf
    ld a, $1f
    inc e
    rlca
    inc b
    inc bc
    inc bc
    ld bc, $0306
    ld c, $07
    rlca
    nop
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, d
    rst $38
    ld c, b
    rst $38
    ld c, c
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    db $fc
    ld h, b
    ldh [c], a
    call c, Call_000_3ec1
    pop bc
    cp [hl]
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    inc d
    inc d
    ld d, h
    ld d, h
    ld l, h
    ld l, h
    inc a
    inc a
    jr c, jr_004_46bd

    nop
    nop
    ld d, b
    ld d, b
    inc d
    inc d
    ld d, b
    ld d, b
    inc l
    inc l
    db $10
    stop
    nop
    nop
    nop
    ld d, b
    ld d, b
    inc b
    inc b
    nop
    nop
    jr nz, jr_004_46bd

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    ccf
    jr jr_004_472b

    jr nz, jr_004_472d

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc

jr_004_46bd:
    rra
    inc c
    rra
    ld [$103f], sp
    ccf
    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rrca
    inc b
    rra
    ld [$081f], sp
    nop
    nop
    nop
    nop
    jr jr_004_46db

jr_004_46db:
    inc a
    jr jr_004_471a

    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_46ef

    halt
    add hl, bc
    sbc $21
    xor l
    ld d, d
    ret


    inc h

jr_004_46ef:
    rst $30
    ld [$a15e], sp
    call z, $0022
    nop
    jr nc, jr_004_4701

    ld [bc], a
    jr nc, jr_004_474e

    add hl, bc
    ld [hl-], a
    ld c, c
    inc h
    ld [de], a

jr_004_4701:
    ld b, b
    inc h
    nop
    ld b, b
    ld b, $00
    ld [$0106], sp
    ld [$0102], sp
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    rlca
    rlca
    jr jr_004_4738

    daa

jr_004_471a:
    ccf
    ld c, a
    ld a, a
    ld e, a
    ld a, h
    cp a
    ld hl, sp-$41
    ldh a, [$ffbf]
    ldh a, [rTAC]
    rlca
    rra
    jr jr_004_4769

    daa

jr_004_472b:
    ld a, a
    ld c, a

jr_004_472d:
    ld a, a
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    inc a
    inc a
    ld a, [hl]

jr_004_4738:
    ld b, d
    rst $38
    rst $38
    rst $20
    cp l
    rst $20
    cp l
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    inc a
    inc a
    inc a
    inc a
    ld b, d
    ld a, [hl]
    rst $38
    rst $38
    rst $28
    or l
    rst $38

jr_004_474e:
    and l
    rst $38
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $20
    sbc c
    rst $08
    or c
    rst $18
    and c
    rst $38
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]

jr_004_4769:
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    rra
    rra
    jr nz, jr_004_47bc

    ld e, a
    ld a, a
    ld a, a
    ld a, h
    rst $38
    sbc b
    cp a
    ret c

    nop
    nop
    inc bc
    inc bc
    rrca
    ld c, $11
    ld e, $21
    ld a, $41
    ld a, a
    ld b, c
    ld a, [hl]
    ld c, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, jr_004_481d

    ld e, a
    ld a, h
    ld a, a
    ld hl, sp-$61
    cp b
    rst $18
    rst $38
    or e
    rst $38
    and c
    rst $38
    and [hl]
    cp a
    and $7f
    ld h, b
    ccf
    daa
    rra
    inc de
    rrca
    inc c
    ccf
    ccf
    ld h, b
    ld a, a
    cp a
    rst $28
    rst $38

jr_004_47bc:
    xor c
    rst $38
    xor a
    cp a
    add sp, $60
    ld a, a
    ccf
    ccf
    ret nz

    ret nz

    ld h, b
    ldh [$ffd0], a
    ld [hl], b
    ldh a, [$ff50]
    ldh a, [$ff50]
    ret nc

    ld [hl], b
    ld h, b
    ldh [$ffc0], a
    ret nz

    ccf
    ccf
    ld h, b
    ld a, a
    cp a
    ldh [rIE], a
    and b
    rst $38
    and b
    cp a
    ldh [$ff60], a
    ld a, a
    ccf
    ccf
    inc bc
    add sp, $47
    rst $38
    rst $38
    adc e
    db $f4
    ld a, a
    ld a, a
    ld d, a
    ld l, b
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, h
    ld e, a
    ld l, a
    rst $38
    rst $38
    pop de
    cpl
    cp $fe
    ld [$fa16], a
    or $fa
    or $ea
    ld d, $ea
    or $ff
    rst $38
    adc e
    db $f4
    ld a, a
    ld a, a
    ld d, a
    ld l, b
    ld d, a
    ld l, b
    ld d, a
    ld l, b
    ld d, a
    ld l, b
    ld d, a
    ld l, b
    inc bc
    dec de
    ld c, b
    rlca
    rlca

jr_004_481d:
    rra
    jr jr_004_485c

    inc hl
    ld [hl], d
    ld c, l
    ld l, a
    ld d, a
    xor $9f
    sbc $af
    rst $00
    cp a
    ldh [$ffe0], a
    ld hl, sp+$18
    inc a
    call nz, $b24e
    or $ea
    ld [hl], a
    ld sp, hl
    dec sp
    push af
    add e
    db $fd
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $261e
    add hl, sp
    dec hl
    inc [hl]
    ld c, a
    ld [hl], b
    ld d, a
    ld l, b
    dec b
    ld c, [hl]
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld d, b
    ld a, a
    cp a
    rst $10
    rst $38
    sub [hl]

jr_004_485c:
    rst $38
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    cp $fd
    set 7, a
    ld l, c
    rst $38
    ld l, c
    rst $38
    sub a
    rst $38
    sub [hl]
    cp a
    sub $50
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret


    rst $38
    add hl, bc
    db $fd
    dec bc
    ld a, [bc]
    cp $fc
    db $fc
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
    ccf
    ccf
    ld d, b
    ld a, a
    cp a
    ret nc

    rst $38
    sub b
    rst $38
    sub b
    inc bc
    and c
    ld c, b
    rst $38
    rst $38
    cp l
    jp $ffbd


    cp l
    db $e3
    cp l
    rst $38
    cp l
    db $e3
    cp l
    rst $38
    cp l
    jp $ffff


    cp l
    jp $c3bd


    cp l
    jp $c3bd


    cp l
    jp $c3bd


    cp l

jr_004_48c0:
    jp $ffff


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
    inc l
    call nc, $0748
    nop
    rrca
    rlca
    rra
    ld [$103f], sp
    ld l, a
    jr nc, @+$81

    jr nz, jr_004_48c0

    ld h, b
    sbc $61
    ret nz

    nop
    ldh [$ffc0], a
    or b
    ld h, b
    ret c

    jr nc, @-$32

    jr c, @-$12

    jr jr_004_4957

    sbc h

jr_004_48f2:
    ld h, $dc
    sbc $61
    sbc $61
    adc $71
    ld l, a
    jr nc, jr_004_4964

    jr c, @+$35

    inc e
    jr @+$11

    rrca
    rlca
    ld h, $dc
    ld b, $fc

Call_004_4908:
    ld h, $dc
    ld l, h
    sbc b
    call z, $9838
    ld [hl], b
    jr nc, jr_004_48f2

    ldh [$ffc0], a
    nop
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, @+$81

    jr nz, jr_004_499f

    ld h, b
    rst $38
    ld h, c
    rst $38
    nop
    ret nz

    ret nz

    ldh [$ff60], a
    ldh a, [$ff30]
    ld hl, sp+$38
    db $fc
    jr @-$02

    sbc h
    cp $dc
    cp $61
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    jr nc, @+$81

    jr c, jr_004_49bd

    inc e
    ccf
    rrca
    rra
    rlca
    rrca
    call c, $fcfe
    cp $dc
    cp $98
    db $fc
    jr c, @-$02

    ld [hl], b
    ld hl, sp-$20
    ldh a, [$ffc0]
    ldh [rTAC], a
    nop
    rrca

jr_004_4957:
    rlca
    rra
    ld [$1c33], sp
    ld h, c
    ld a, $df
    ld h, b
    push bc
    ld a, d
    bit 6, h

jr_004_4964:
    ret nz

    nop
    ldh [$ffc0], a
    ld [hl], b
    and b
    cp b
    ld d, b
    call c, $fe28
    inc b

jr_004_4970:
    cp [hl]
    ld b, h
    halt
    adc h
    add $79
    call $df72
    ld h, b
    ld l, [hl]
    ld sp, $1837
    jr @+$11

    rrca
    rlca
    rlca
    nop
    and $1c
    add $3c
    cp $0c
    call z, Call_004_7838
    sub b
    jr nc, jr_004_4970

    ldh [$ffc0], a
    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    ld [$1c1f], sp
    ccf
    ld a, $7f
    ld h, b

jr_004_499f:
    rst $38
    ld a, d
    rst $38
    ld [hl], h
    rst $38
    nop
    ret nz

    ret nz

    ldh [$ffa0], a
    ldh a, [$ff50]
    ld hl, sp+$28
    db $fc
    inc b
    cp $44
    cp $8c
    cp $79
    rst $38
    ld [hl], d
    rst $38
    ld h, b
    rst $38
    ld sp, $187f

jr_004_49bd:
    ccf

jr_004_49be:
    rrca
    rra
    rlca
    rrca
    nop
    rlca
    inc e
    cp $3c
    cp $0c
    cp $38
    db $fc
    sub b
    ld hl, sp-$20
    ldh a, [$ffc0]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    ld [hl-], a
    dec e
    ld h, a
    jr c, @-$2f

    ld [hl], b
    cp h
    jp RST_00


    nop
    nop
    ldh [rP1], a
    ldh a, [$ffe0]
    jr c, jr_004_49be

    sbc h
    ld l, b
    adc $34
    ld b, $fa
    rst $00
    ld a, b
    ld h, a
    jr c, @+$35

    inc e
    dec de
    inc c
    dec c
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    ld e, $e4
    inc e
    add sp, $38
    ret nc

    ld [hl], b
    and b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    dec e
    ccf
    jr c, @+$81

    ld [hl], b
    rst $38
    jp Jump_000_00ff


    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ldh a, [$ffd0]
    ld hl, sp+$68
    db $fc
    inc [hl]
    cp $fa
    cp $78
    rst $38
    jr c, @+$81

    inc e
    ccf
    inc c
    rra
    ld b, $0f
    inc bc
    rlca
    ld bc, $0003
    ld bc, $fee4
    add sp, -$04
    ret nc

    ld hl, sp-$60
    ldh a, [$ffc0]
    ldh [$ff80], a
    ret nz

    nop
    add b
    nop
    nop
    inc bc
    ld bc, $0306
    dec c
    ld b, $1b
    inc c
    scf
    jr @+$39

    jr jr_004_4a98

    jr jr_004_4a9a

    jr @-$7e

    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nc, @-$1e

    ld e, b
    or b
    ld e, b
    or b
    ld e, b
    or b
    ld e, b
    or b
    scf
    jr @+$39

    jr @+$39

    jr jr_004_4aad

    dec e
    add hl, de
    ld c, $0d
    ld b, $06
    inc bc
    inc bc
    ld bc, $b058
    ld e, b
    or b
    ld e, b
    or b
    ret c

    jr nc, @-$4e

    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    ld bc, $0303
    rlca

jr_004_4a98:
    ld b, $0f

jr_004_4a9a:
    inc c
    rra
    jr jr_004_4add

    jr @+$41

    jr @+$41

    jr @+$41

    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$ffb0]

jr_004_4aad:
    ld hl, sp-$50
    ld hl, sp-$50
    ld hl, sp-$50
    ld hl, sp+$18
    ccf
    jr jr_004_4af7

    jr jr_004_4af9

    dec e
    ccf
    ld c, $1f
    ld b, $0f
    inc bc
    rlca
    ld bc, $b003
    ld hl, sp-$50
    ld hl, sp-$50
    ld hl, sp+$30
    ld hl, sp+$60
    ldh a, [$ffc0]
    ldh [$ff80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    stop
    nop

jr_004_4add:
    ld [$0000], sp
    jr nz, jr_004_4ae2

jr_004_4ae2:
    stop
    ld bc, $0800
    ld bc, $0108
    nop
    inc b
    db $10
    inc b
    stop
    ld b, b
    db $10
    jr nz, jr_004_4af4

jr_004_4af4:
    nop
    inc c
    nop

jr_004_4af7:
    nop
    nop

jr_004_4af9:
    nop
    inc c
    ld [bc], a
    nop
    add b
    inc b
    nop
    nop
    nop
    add b
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0008
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0140
    nop
    inc b
    ld bc, HeaderLogo
    nop
    inc b
    stop
    nop
    nop
    inc c
    nop
    nop
    ld b, d
    nop
    ld bc, $0002
    add b
    ld h, b
    nop
    nop
    nop
    nop
    ld h, b
    jr jr_004_4b35

jr_004_4b35:
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    inc b
    nop
    nop
    ld b, d
    nop
    ld bc, $0800
    ld b, b
    nop
    nop
    jr nz, @+$03

    jr nz, jr_004_4b4e

    add b

jr_004_4b4e:
    inc b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    ld bc, $0030
    nop
    ld h, b
    nop
    nop
    jr jr_004_4b61

jr_004_4b61:
    nop
    jr jr_004_4b68

    nop
    nop
    nop
    nop

jr_004_4b68:
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    ld b, d
    jr nz, jr_004_4b74

    db $10

jr_004_4b74:
    ld [$0001], sp
    ld [$0820], sp
    jr nz, jr_004_4b7c

jr_004_4b7c:
    add b
    db $10
    add c
    stop
    ld b, b
    nop
    jr nz, jr_004_4b85

jr_004_4b85:
    nop
    nop
    nop
    jr nc, jr_004_4b8a

jr_004_4b8a:
    nop
    inc c
    nop
    nop
    jr jr_004_4b94

    nop
    nop
    inc b
    add b

jr_004_4b94:
    cp h
    ld c, e
    inc b
    nop
    dec b
    ld a, [bc]
    rrca
    rst $38
    cp h
    ld c, e
    inc bc
    ld bc, $0302
    inc b
    rst $38
    cp h
    ld c, e
    inc bc
    ld b, $07
    ld [$ff09], sp
    cp h
    ld c, e
    inc bc
    dec bc
    inc c
    dec c
    ld c, $ff
    cp h
    ld c, e
    inc bc
    db $10
    ld de, $1312
    rst $38
    add sp, $4b
    db $fd
    ld c, e
    ld b, d
    ld c, h
    add a
    ld c, h
    call z, $114c
    ld c, l
    ld h, $4d
    ld l, e
    ld c, l
    or b
    ld c, l
    push af
    ld c, l
    ld a, [hl-]
    ld c, [hl]
    ld c, a
    ld c, [hl]
    sub h
    ld c, [hl]
    reti


    ld c, [hl]
    ld e, $4f
    ld h, e
    ld c, a
    ld a, b
    ld c, a
    cp l
    ld c, a
    ld [bc], a
    ld d, b
    ld b, a
    ld d, b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    jr nz, @+$12

    nop
    ld [$1021], sp
    nop
    rlca
    ld hl, $0030
    ld [$3020], sp
    ld [$22e9], sp
    stop
    ld [$1000], sp
    nop
    ld [$1001], sp
    nop
    rlca
    ld [hl+], a
    jr nc, @+$09

    jp hl


    ld [hl+], a
    ld d, b
    ld bc, $0208
    stop
    ld [$1003], sp
    rst $38
    rlca
    ld [hl+], a
    ld [hl], b
    ld [$20e9], sp
    ld d, b
    nop
    ld [$5021], sp
    nop
    rlca
    ld hl, $0070
    ld [$7020], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    inc hl
    stop
    ld [$1024], sp
    nop
    rlca
    inc h
    jr nc, jr_004_4c4f

jr_004_4c4f:
    ld [$3023], sp
    ld [$25e9], sp
    stop
    ld [$1000], sp
    nop
    ld [$1001], sp
    nop
    rlca
    dec h
    jr nc, @+$09

    jp hl


    dec h
    ld d, b
    ld bc, $0208
    stop
    ld [$1003], sp
    rst $38
    rlca
    dec h
    ld [hl], b
    ld [$23e9], sp
    ld d, b
    nop
    ld [$5024], sp
    nop
    rlca
    inc h
    ld [hl], b
    nop
    ld [$7023], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    ld h, $10
    nop
    ld [$1027], sp
    nop
    rlca
    daa
    jr nc, jr_004_4c94

jr_004_4c94:
    ld [$3026], sp
    ld [$28e9], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    rlca
    jr z, jr_004_4cd7

    rlca
    jp hl


    jr z, jr_004_4cfb

    ld bc, $0608
    stop
    ld [$1007], sp
    rst $38
    rlca
    jr z, @+$72

    ld [$26e9], sp
    ld d, b
    nop
    ld [$5027], sp
    nop
    rlca
    daa
    ld [hl], b
    nop
    ld [$7028], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    add hl, hl
    stop
    ld [$102a], sp
    nop
    rlca
    ld a, [hl+]

jr_004_4cd7:
    jr nc, jr_004_4cd9

jr_004_4cd9:
    ld [$3029], sp
    ld [$2be9], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    rlca
    dec hl
    jr nc, @+$09

    jp hl


    dec hl
    ld d, b
    ld bc, $0608
    stop
    ld [$1007], sp
    rst $38
    rlca
    dec hl

jr_004_4cfb:
    ld [hl], b
    ld [$29e9], sp
    ld d, b
    nop
    ld [$502a], sp
    nop
    rlca
    ld a, [hl+]
    ld [hl], b
    nop
    ld [$7029], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$0010], sp
    ld [$1009], sp
    ld [$0af8], sp
    stop
    ld [$100b], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    jr nz, @+$12

    nop
    ld [$1021], sp
    nop
    rlca
    ld hl, $0030
    ld [$3020], sp
    ld [$22e9], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    rlca
    ld [hl+], a
    jr nc, @+$09

    jp hl


    ld [hl+], a
    ld d, b
    ld bc, $0a08
    stop
    ld [$100b], sp
    rst $38
    rlca
    ld [hl+], a
    ld [hl], b
    ld [$20e9], sp
    ld d, b
    nop
    ld [$5021], sp
    nop
    rlca
    ld hl, $0070
    ld [$7020], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    inc hl
    stop
    ld [$1024], sp
    nop
    rlca
    inc h
    jr nc, jr_004_4d78

jr_004_4d78:
    ld [$3023], sp
    ld [$25e9], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    rlca
    dec h
    jr nc, @+$09

    jp hl


    dec h
    ld d, b
    ld bc, $0a08
    stop
    ld [$100b], sp
    rst $38
    rlca
    dec h
    ld [hl], b
    ld [$23e9], sp
    ld d, b
    nop
    ld [$5024], sp
    nop
    rlca
    inc h
    ld [hl], b
    nop
    ld [$7023], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    ld h, $10
    nop
    ld [$1027], sp
    nop
    rlca
    daa
    jr nc, jr_004_4dbd

jr_004_4dbd:
    ld [$3026], sp
    ld [$28e9], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    rlca
    jr z, jr_004_4e00

    rlca
    jp hl


    jr z, jr_004_4e24

    ld bc, $0e08
    stop
    ld [$100f], sp
    rst $38
    rlca
    jr z, @+$72

    ld [$26e9], sp
    ld d, b
    nop
    ld [$5027], sp
    nop
    rlca
    daa
    ld [hl], b
    nop
    ld [$7028], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    add hl, hl
    stop
    ld [$102a], sp
    nop
    rlca
    ld a, [hl+]

jr_004_4e00:
    jr nc, jr_004_4e02

jr_004_4e02:
    ld [$3029], sp
    ld [$2be9], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    rlca
    dec hl
    jr nc, @+$09

    jp hl


    dec hl
    ld d, b
    ld bc, $0e08
    stop
    ld [$100f], sp
    rst $38
    rlca
    dec hl

jr_004_4e24:
    ld [hl], b
    ld [$29e9], sp
    ld d, b
    nop
    ld [$502a], sp
    nop
    rlca
    ld a, [hl+]
    ld [hl], b
    nop
    ld [$7029], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $10
    stop
    ld [$1011], sp
    ld [$12f8], sp
    stop
    ld [$1013], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    jr nz, @+$12

    nop
    ld [$1021], sp
    nop
    rlca
    ld hl, $0030
    ld [$3020], sp
    ld [$22e9], sp
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    rlca
    ld [hl+], a
    jr nc, @+$09

    jp hl


    ld [hl+], a
    ld d, b
    ld bc, $1208
    stop
    ld [$1013], sp
    rst $38
    rlca
    ld [hl+], a
    ld [hl], b
    ld [$20e9], sp
    ld d, b
    nop
    ld [$5021], sp
    nop
    rlca
    ld hl, $0070
    ld [$7020], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    inc hl
    stop
    ld [$1024], sp
    nop
    rlca
    inc h
    jr nc, jr_004_4ea1

jr_004_4ea1:
    ld [$3023], sp
    ld [$25e9], sp
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    rlca
    dec h
    jr nc, @+$09

    jp hl


    dec h
    ld d, b
    ld bc, $1208
    stop
    ld [$1013], sp
    rst $38
    rlca
    dec h
    ld [hl], b
    ld [$23e9], sp
    ld d, b
    nop
    ld [$5024], sp
    nop
    rlca
    inc h
    ld [hl], b
    nop
    ld [$7023], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    ld h, $10
    nop
    ld [$1027], sp
    nop
    rlca
    daa
    jr nc, jr_004_4ee6

jr_004_4ee6:
    ld [$3026], sp
    ld [$28e9], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    rlca
    jr z, jr_004_4f29

    rlca
    jp hl


    jr z, jr_004_4f4d

    ld bc, $1608
    stop
    ld [$1017], sp
    rst $38
    rlca
    jr z, @+$72

    ld [$26e9], sp
    ld d, b
    nop
    ld [$5027], sp
    nop
    rlca
    daa
    ld [hl], b
    nop
    ld [$7028], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    add hl, hl
    stop
    ld [$102a], sp
    nop
    rlca
    ld a, [hl+]

jr_004_4f29:
    jr nc, jr_004_4f2b

jr_004_4f2b:
    ld [$3029], sp
    ld [$2be9], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    rlca
    dec hl
    jr nc, @+$09

    jp hl


    dec hl
    ld d, b
    ld bc, $1608
    stop
    ld [$1017], sp
    rst $38
    rlca
    dec hl

jr_004_4f4d:
    ld [hl], b
    ld [$29e9], sp
    ld d, b
    nop
    ld [$502a], sp
    nop
    rlca
    ld a, [hl+]
    ld [hl], b
    nop
    ld [$7029], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    jr jr_004_4f77

    nop
    ld [$1019], sp
    ld [$1af8], sp
    stop
    ld [$101b], sp
    add b
    ldh a, [rNR10]
    db $ed

jr_004_4f77:
    dec c
    xor $f0
    jr nz, @+$12

    nop
    ld [$1021], sp
    nop
    rlca
    ld hl, $0030
    ld [$3020], sp
    ld [$22e9], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    rlca
    ld [hl+], a
    jr nc, @+$09

    jp hl


    ld [hl+], a
    ld d, b
    ld bc, $1a08
    stop
    ld [$101b], sp
    rst $38
    rlca
    ld [hl+], a
    ld [hl], b
    ld [$20e9], sp
    ld d, b
    nop
    ld [$5021], sp
    nop
    rlca
    ld hl, $0070
    ld [$7020], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    inc hl
    stop
    ld [$1024], sp
    nop
    rlca
    inc h
    jr nc, jr_004_4fca

jr_004_4fca:
    ld [$3023], sp
    ld [$25e9], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    rlca
    dec h
    jr nc, @+$09

    jp hl


    dec h
    ld d, b
    ld bc, $1a08
    stop
    ld [$101b], sp
    rst $38
    rlca
    dec h
    ld [hl], b
    ld [$23e9], sp
    ld d, b
    nop
    ld [$5024], sp
    nop
    rlca
    inc h
    ld [hl], b
    nop
    ld [$7023], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    ld h, $10
    nop
    ld [$1027], sp
    nop
    rlca
    daa
    jr nc, jr_004_500f

jr_004_500f:
    ld [$3026], sp
    ld [$28e9], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    nop
    rlca
    jr z, jr_004_5052

    rlca
    jp hl


    jr z, jr_004_5076

    ld bc, $1e08
    stop
    ld [$101f], sp
    rst $38
    rlca
    jr z, jr_004_50a2

    ld [$26e9], sp
    ld d, b
    nop
    ld [$5027], sp
    nop
    rlca
    daa
    ld [hl], b
    nop
    ld [$7028], sp
    add b
    ldh a, [rNR10]
    db $ed
    dec c
    xor $f0
    add hl, hl
    stop
    ld [$102a], sp
    nop
    rlca
    ld a, [hl+]

jr_004_5052:
    jr nc, jr_004_5054

jr_004_5054:
    ld [$3029], sp
    ld [$2be9], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    nop
    rlca
    dec hl
    jr nc, @+$09

    jp hl


    dec hl
    ld d, b
    ld bc, $1e08
    stop
    ld [$101f], sp
    rst $38
    rlca
    dec hl

jr_004_5076:
    ld [hl], b
    ld [$29e9], sp
    ld d, b
    nop
    ld [$502a], sp
    nop
    rlca
    ld a, [hl+]
    ld [hl], b
    nop
    ld [$7029], sp
    add b
    sbc h
    ld c, e
    and h
    ld c, e
    xor h
    ld c, e
    or h
    ld c, e

Jump_004_5090:
    push bc
    ld a, [$d297]
    sub $0c
    ld de, $5088
    call Call_000_0171
    call Call_004_50ac
    pop bc
    ldh a, [$ffab]

jr_004_50a2:
    xor $10
    ldh [$ffab], a
    ld a, b
    ld c, e
    ld b, d
    jp Jump_000_0210


Call_004_50ac:
    push hl
    ld a, [de]
    inc de
    ldh [$ff8a], a
    ld a, [de]
    inc de
    ldh [$ff8b], a
    ld a, $10
    add c
    ld l, a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr nc, jr_004_50c9

    ld [hl], $00
    ld a, $0c
    add c
    ld l, a
    inc [hl]
    jr jr_004_50cd

jr_004_50c9:
    ld a, $0c
    add c
    ld l, a

jr_004_50cd:
    push de
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    pop de
    cp $80
    jr c, jr_004_50df

    ld [hl], $00
    jr jr_004_50cd

jr_004_50df:
    ld e, a
    ld d, $00
    ld hl, $ff8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


Jump_004_50ef:
    ld de, $9720
    ld hl, $50fb
    ld bc, $00e0
    jp Jump_000_0183


    rst $38
    rst $38
    ld [hl], h
    ld [hl], h
    rst $38
    ld [hl], l
    ld d, l
    rst $38
    rst $38
    ld d, h
    xor l
    xor l
    xor l
    xor l
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    ld l, l
    rst $38
    and l
    and l
    rst $38
    rst $38
    ld l, c
    jp hl


    jp hl


    db $ed
    db $ed
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ldh a, [$fff1]
    xor $e1
    sbc $c1
    cp [hl]
    add b
    cp [hl]
    add c
    cp [hl]
    add c
    inc c
    ld c, h
    ccf
    ccf
    rrca
    adc a
    ld [hl], a
    add a
    ld a, e
    add e
    ld a, l
    ld bc, $817d
    ld a, l
    add c
    jr nc, jr_004_51ed

    ld e, $5e
    add hl, de
    ld e, c
    add hl, bc
    ld e, c
    add b
    sbc a
    ret nz

    ret c

    ldh [$ffec], a
    ldh a, [$fff3]
    db $fc
    db $fc
    ld a, b
    ld a, d
    sbc b
    sbc d
    sub b
    sbc d
    ld bc, $03f9
    dec de
    rlca
    scf
    rrca
    rst $08
    ccf
    ccf

Jump_004_51db:
    ld de, $8e00
    ld hl, $51e7
    ld bc, $01f0
    jp Jump_000_0183


    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    db $dd

jr_004_51ed:
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    sbc h
    rst $38
    jp nz, $ffff

    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    jp $ffff


    rst $38
    sbc h
    rst $38
    sbc c
    rst $38
    sub e
    rst $38
    add a
    rst $38
    sub e
    rst $38
    sbc c
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    add b
    rst $38
    sub h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    adc h
    rst $38
    add h
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sub h
    rst $38
    sbc b
    rst $38
    sbc l
    rst $38
    jp nz, $ffff

    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    pop bc
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sub h
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    sbc c
    rst $38
    jp $e7ff


    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    add b
    nop
    nop
    nop
    ld d, l
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    ld d, l
    add hl, sp
    ld b, l
    ld bc, $1955
    ld b, l
    ld bc, $1955
    ld b, l
    ld bc, $3955
    ld bc, $fa01
    sbc e
    sbc $b7
    jr nz, jr_004_53ec

    ld a, [wPrimaryWeaponModeFlags]
    bit PRIMARY_WEAPON_ROCK_BUSTER_F, a
    ld hl, $5423
    jr nz, jr_004_53f2

    ld hl, $5556
    jr jr_004_53f2

jr_004_53ec:
    ld hl, $5409
    call Call_000_016e

jr_004_53f2:
    ld a, l
    or h
    ret z

    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $86a0
    jp Jump_000_0183


    ld d, [hl]
    ld d, l
    adc c
    ld d, [hl]
    ld e, h
    ld d, a
    cp a
    ld d, a
    ld [bc], a
    ld e, c
    push bc
    ld e, c
    dec hl
    ld e, e
    cp $5c
    ld sp, $c45e
    ld e, [hl]
    daa
    ld h, b
    ld a, [hl-]
    ld h, c
    ld l, l
    ld h, d
    inc de
    ld h, $54
    rlca
    rlca
    ld a, [de]
    rra

jr_004_542a:
    cpl
    ld sp, $605f
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ret nz

    ret nz

    jr nc, jr_004_542a

    ret c

    jr c, @-$02

    sub h
    xor $9a
    rst $38
    ld c, c
    cp $4a
    rst $38
    ld c, c
    rst $38
    ld c, c
    cp $4a
    rst $38
    ld c, c
    xor $9a
    db $fc
    sub h
    ret c

    jr c, jr_004_5483

    ldh a, [$ffc0]
    ret nz

    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    jr @+$31

    jr nc, jr_004_54a0

    jr nz, jr_004_54c2

    ld h, b
    ld a, a
    ld b, b
    nop
    nop
    rst $00
    rst $00
    ld a, [$ff3d]
    inc c
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

jr_004_5483:
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, $ff
    inc c
    ld a, [$c73d]
    rst $00
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_004_54fc

    ld h, b
    ld a, a
    ld b, b

jr_004_54a0:
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ldh [$ffe0], a
    ret c

    jr c, @-$02

    inc b
    cp $1e
    rst $38
    ld bc, $06fe
    rst $38
    ld bc, $02fe
    nop
    nop
    nop
    nop
    jr nc, jr_004_54ec

    ld c, b
    ld a, b
    or h
    db $ec
    cp h
    db $f4

jr_004_54c2:
    cp h
    db $f4
    cp h
    db $f4
    cp $02
    rst $38
    ld bc, $06fe
    rst $38
    ld bc, $1efe
    db $fc
    inc b
    ret c

    jr c, @-$1e

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    jr nz, @+$41

    jr nz, jr_004_54e7

jr_004_54e7:
    nop
    nop
    nop
    nop
    nop

jr_004_54ec:
    ret nz

    ret nz

    ld hl, sp+$38
    db $fc
    inc b
    cp $0e
    rst $38
    ld bc, $0000
    ld b, $06
    add hl, bc
    rrca

jr_004_54fc:
    rrca
    dec c
    rrca
    dec c
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    rst $38
    rrca
    cp $02
    db $fc
    inc a
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ccf
    jr nc, jr_004_5593

    ld b, a
    ldh a, [$ff8f]
    ldh a, [$ff8f]
    ld a, b
    ld b, a
    ccf
    jr nc, jr_004_5534

    rrca
    ldh a, [$fff0]
    cp $0e
    rst $38
    ld bc, $877f
    ld a, a
    add b
    rst $38
    inc bc
    db $fc
    inc e

jr_004_5534:
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jp $99ff


    rst $20
    and c
    rst $18
    add c
    rst $38
    jp Jump_004_7eff


    ld a, [hl]
    inc de
    ld e, c
    ld d, l
    nop
    nop
    rlca
    rlca
    jr jr_004_557e

jr_004_555f:
    cpl
    jr nc, jr_004_55c1

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_004_555f

    ld [$c4f8], sp
    inc a
    ldh [c], a
    ld e, $c6
    ld a, $f9
    rlca
    cp a
    ret nz

    ld a, a
    ld b, b
    ld e, a

jr_004_557e:
    ld h, b
    cpl
    jr nc, jr_004_559a

    rra

jr_004_5583:
    rlca
    rlca
    nop
    nop
    nop
    nop
    add [hl]
    ld a, [hl]
    pop af
    rrca
    and $1e
    adc b
    ld a, b
    jr nc, jr_004_5583

jr_004_5593:
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop

jr_004_559a:
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    ld l, $31
    jr c, @+$29

    ld [hl], b
    ld c, a
    ld [hl], d
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, h
    db $fc
    ld a, [hl-]
    add $3e
    jp nz, $fe02

    halt
    ld c, a
    ld h, e
    ld e, a
    dec h
    ld a, $1a
    dec e

jr_004_55c1:
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld a, [hl]
    call nz, Call_004_787c
    ld hl, sp-$80
    add b
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
    jr c, jr_004_5615

    ld [hl], a
    ld c, a
    rst $20
    cp c
    pop af
    rst $38
    ld d, a
    ld l, a
    jr c, jr_004_561f

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
    ld hl, sp-$08
    sub h
    db $fc
    ld c, a
    ld a, a
    ld hl, $213f
    ccf
    ld hl, $273f
    ccf
    ld c, b
    ld a, b
    jr nc, jr_004_5633

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    sub a
    rst $38
    ld b, c
    ld a, a
    ld hl, $213f
    ccf

jr_004_5615:
    ld c, a
    ld a, a
    jr nc, jr_004_5649

    nop
    nop
    jr c, jr_004_5655

    ld b, a
    ld a, a

jr_004_561f:
    and c
    rst $38
    pop af
    rst $38
    ld b, c
    ld a, a
    ccf
    ccf
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    ld bc, $0307

jr_004_5633:
    rlca
    inc bc
    rlca
    nop
    nop
    nop
    sbc $a7
    ld e, h
    rst $38
    cp h
    ld b, e
    pop bc
    cp [hl]
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    ccf

jr_004_5649:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc c
    inc bc

jr_004_5655:
    db $10
    rrca
    rra
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ldh a, [$ff7f]
    ld a, a
    ei
    dec de
    pop af
    ld de, $11e0
    ldh [$fff1], a
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
    nop
    inc b
    inc bc
    rlca
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ldh a, [$ff7f]
    cp a
    ld a, e
    adc a
    ld [hl], c
    dec b
    ld hl, sp+$05
    ld hl, sp-$03
    nop
    dec c
    adc h
    ld d, [hl]
    inc c
    inc c
    rrca
    dec bc
    ld c, $0f
    rrca
    add hl, bc
    ld d, $1f
    db $10
    rra
    dec e
    ld [de], a
    rst $38
    push af
    ld [$dc08], sp
    call nc, $e43c
    inc e
    db $f4
    jr @-$06

    call nz, $e43c
    inc e
    db $e4
    sbc h
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
    inc c
    inc c
    ld a, [bc]
    ld c, $ff
    cp l
    rst $38
    ldh [$ff7f], a
    ld b, b
    ccf
    daa
    rra
    rra
    rrca
    ld [$0707], sp
    ld bc, $f801
    sbc b
    cp $0e
    ei
    rst $08
    rst $38
    cp h
    db $fc
    ld c, e
    cp $fb
    ld c, $fb
    rrca
    db $fc
    ld c, $0a
    ld a, $3a
    add $fe
    adc [hl]
    cp $df
    ld [hl], e
    ei
    ld l, l
    ei
    ld l, l
    cp $f2
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld c, $09
    jr jr_004_5711

    rra
    rra
    add a
    rst $38
    jp $fffe


    cp [hl]
    db $e3
    ld [hl+], a
    rst $18
    ld e, h
    ld sp, hl
    rst $20
    ld h, b
    rst $18
    rst $38
    rst $38
    sbc $de
    adc $4a
    rst $00

jr_004_5711:
    ld b, l
    add a
    add l
    adc a
    adc l
    sbc e
    sub a
    or c
    xor a
    cp a
    cp a
    rrca
    rrca
    rst $18
    call nc, $e73f
    ld e, $f7
    dec de
    ei
    add $3f
    rst $20
    rra
    and $9f
    db $fc
    db $fc
    db $e4
    inc e
    db $fc
    db $fc
    and b
    ld h, b
    ldh [$ffe0], a
    and b
    ld h, b
    ldh [$ffe0], a
    and e
    ld h, e
    ei
    sbc e
    cp $0f
    ei
    rst $08
    rst $38
    cp h
    db $fc
    ld c, e
    cp $fb
    ld c, $fb
    rrca
    db $fc
    push hl
    rst $20
    cp a
    ld a, e
    add $fe
    adc [hl]
    cp $df
    ld [hl], e
    ei
    ld l, l
    ei
    ld l, l
    cp $f2
    ld b, $5f
    ld d, a
    jr c, jr_004_5799

    ld b, h
    ld a, h
    cp d
    add $ba
    add $ba
    add $44
    ld a, h
    jr c, jr_004_57a5

    nop
    nop
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
    jr jr_004_5795

    jr @+$03

    ld bc, $0302
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    ld b, $0d
    ld c, $7b
    ld a, h
    cp a
    ret nz

    nop
    nop
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b

jr_004_5795:
    inc a
    inc l
    dec de
    rla

jr_004_5799:
    inc d
    dec de
    dec bc
    inc c
    dec bc
    inc c
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $20
    sbc c

jr_004_57a5:
    rst $08
    or c
    rst $18
    and c
    rst $38
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    inc d
    jp nz, Jump_000_3c57

    inc a
    ld a, d
    ld b, [hl]
    pop de
    and e
    pop hl
    add e
    pop bc
    add e
    and l
    jp Jump_004_665a


    inc a
    inc a
    ld e, $1e
    dec a
    inc hl
    ld h, d
    ld b, c
    ret


    sub b
    pop de
    add b
    pop bc
    add b
    and e
    ret nz

    ld a, [hl]
    ld b, c
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add hl, hl
    scf
    ld e, $1e
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
    rra
    jr jr_004_5841

    jr nz, jr_004_5872

    ld b, b
    ld l, a
    ld b, [hl]
    call z, $cc86
    add b
    nop
    nop
    ldh [$ffe0], a
    ret c

    jr c, jr_004_584d

    inc c
    ld a, [de]
    ld b, $0a
    ld b, $0d
    inc bc
    dec c
    inc bc
    ret nz

    add b
    ret nz

    add b
    ld h, b
    ld b, b
    ld [hl], b
    ld b, b
    ccf
    jr nz, @+$21

jr_004_582d:
    jr jr_004_5836

    rlca
    nop
    nop
    dec c
    inc bc
    add hl, de
    rlca

jr_004_5836:
    dec sp
    rlca
    ld [hl], d
    ld c, $e4
    inc e
    sbc b
    ld a, b
    ldh [$ffe0], a
    nop

jr_004_5841:
    nop
    ld bc, $0701
    ld b, $0e
    ld [$1018], sp
    inc sp
    jr nz, jr_004_5884

jr_004_584d:
    inc hl
    ld h, [hl]
    ld b, e
    ld h, [hl]
    ld b, b
    ldh [$ffe0], a
    ret c

    jr c, jr_004_586b

    inc c
    ld a, [bc]
    ld b, $82
    ld b, $85
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, @+$22

    jr c, jr_004_588a

    rla

jr_004_586b:
    jr jr_004_587a

jr_004_586d:
    ld c, $03
    inc bc
    nop
    nop

jr_004_5872:
    add hl, bc
    rlca
    dec bc
    rlca
    ld [de], a
    ld c, $64
    inc e

jr_004_587a:
    ret z

    jr c, jr_004_582d

    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca

jr_004_5884:
    rra
    jr jr_004_58bf

    jr nz, jr_004_58f0

    ld b, b

jr_004_588a:
    ld l, a
    ld b, [hl]
    call z, $cc86
    add b
    ret nz

    add b
    add b
    add b
    ld h, b
    ldh [$ff90], a
    ld [hl], b
    jr z, jr_004_58b2

    inc d
    inc c
    inc d
    inc c
    ld a, [de]
    ld b, $1a
    ld b, $c0
    add b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, jr_004_58ca

    rla
    jr jr_004_58ba

    ld c, $03
    inc bc
    nop
    nop

jr_004_58b2:
    ld a, [de]
    ld b, $12
    ld c, $36
    ld c, $64
    inc e

jr_004_58ba:
    ret z

    jr c, jr_004_586d

    ld [hl], b
    ret nz

jr_004_58bf:
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc e
    db $10

jr_004_58ca:
    inc sp
    jr nz, jr_004_5904

    inc hl
    ld h, [hl]
    ld b, e
    ld h, b
    ld b, b
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    ld l, b
    jr jr_004_590f

    inc c
    inc d
    inc c
    ld a, [de]
    ld b, $1a
    ld b, $60
    ld b, b
    jr nc, jr_004_5906

    jr c, jr_004_5908

    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop

jr_004_58f0:
    nop
    nop
    ld [hl-], a
    ld c, $76
    ld c, $e4
    inc e
    ret z

    jr c, jr_004_592b

    ldh a, [$ffc0]
    ret nz

    nop
    nop
    nop
    nop
    inc c
    dec b

jr_004_5904:
    ld e, c
    rlca

jr_004_5906:
    rlca
    ld a, [de]

jr_004_5908:
    rra
    ld l, $3b
    ld e, a
    ld l, e
    ld c, a
    ld a, d

jr_004_590f:
    ld l, $3b
    dec de
    rra
    rlca
    rlca
    db $fc
    db $fc
    sub [hl]
    cp $dd
    ld [hl], a
    ld a, a
    or l
    cp a
    push de
    db $dd
    ld [hl], a
    ld [hl], $fe
    db $fc
    db $fc
    rlca
    rlca
    dec de
    rra
    cpl
    ld a, [hl-]

jr_004_592b:
    ld e, [hl]
    ld l, e
    ld c, a
    ld a, e
    cpl
    ld a, [hl-]
    ld a, [de]
    rra
    rlca
    rlca
    db $fc
    db $fc
    ld [hl], $fe
    cp l
    rst $10
    rst $18
    ld [hl], l
    ld a, a
    or l
    cp l
    rst $10
    ld d, [hl]
    cp $fc
    db $fc
    rlca
    rlca
    ld a, [de]
    rra
    cpl
    dec sp
    ld e, a
    ld l, d
    ld c, [hl]
    ld a, e
    cpl
    dec sp
    ld a, [de]
    rra
    rlca
    rlca
    db $fc
    db $fc
    ld d, [hl]
    cp $7d
    or a
    cp a
    push de
    rst $18
    ld [hl], l
    ld a, l
    or a
    sub [hl]
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$5e

    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    add sp, -$68
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    add sp, -$68
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_59bd

    ld d, b
    ld [hl], b
    ldh [$ffa0], a
    ldh a, [rSVBK]
    adc a
    ld a, a
    rst $38
    nop
    adc a
    ld a, a
    ldh a, [rSVBK]
    ldh [$ffa0], a
    ld [hl], b
    ld d, b
    jr z, jr_004_59d9

    jr jr_004_59bb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_004_59b6:
    nop
    nop
    nop
    nop
    nop

jr_004_59bb:
    ldh a, [$fff0]

jr_004_59bd:
    rrca
    rst $38
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    ld d, $c8
    ld e, c
    ld h, b
    jr nz, jr_004_5a2e

    ld h, c
    inc bc
    inc bc

jr_004_59ce:
    nop
    nop
    nop
    nop
    nop
    nop
    add $42
    add $c6
    nop

jr_004_59d9:
    nop
    ret nz

    ret nz

    jr nc, jr_004_59ce

    add sp, $18
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fa06]
    ld b, $f6
    ld c, $f6
    ld c, $ec
    inc e
    call c, $383c
    ld hl, sp-$10
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld bc, $0c02
    ld c, $72
    ld a, h
    add h
    ld hl, sp+$64
    inc l
    reti


    or h
    ld e, d
    and a
    ld c, d
    and [hl]
    ld l, b
    add [hl]
    ld [hl+], a
    add l
    sub l
    nop
    ld bc, $6000
    jr nz, jr_004_5a20

    inc bc
    ld bc, $0007
    nop

jr_004_5a20:
    ld d, c
    ld sp, $3150
    inc bc
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    jr jr_004_59b6

jr_004_5a2e:
    nop
    nop
    ld b, d
    jp nz, Jump_004_66a0

    rst $20
    ld hl, $b957
    inc bc
    ld [bc], a
    inc de
    ld [bc], a
    dec b
    ld b, $05
    ld c, $0a
    dec c
    ld a, [bc]
    inc c
    inc l
    ld a, [hl-]
    ret z

    db $f4
    halt
    db $10
    ld a, [hl+]
    ld e, h
    dec [hl]
    ld c, b
    ld a, $01
    inc h
    ld [de], a
    ld [hl-], a
    inc b
    nop
    inc h
    nop
    jr nz, jr_004_5a59

jr_004_5a59:
    nop
    nop
    nop
    inc b
    nop
    nop
    inc b
    nop
    nop
    ld a, [bc]
    ld c, $1d
    dec de
    ld l, h
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld [$e600], sp
    xor $80
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    or b
    ld [hl], b
    ld c, b
    jr c, jr_004_5a9b

    inc c
    ld b, e
    ccf
    rra
    nop
    jr nc, jr_004_5a9d

    ld b, l
    inc bc
    ld e, $01
    ld b, c
    ccf
    ld l, $1e
    jp nc, $8034

    add b
    add b

jr_004_5a9b:
    add b
    ld b, b

jr_004_5a9d:
    ret nz

    ld [bc], a
    ret nz

    ldh a, [$ff78]
    ld c, h
    cp h
    inc sp

jr_004_5aa5:
    ld c, a
    rrca
    stop
    nop
    ld sp, $0100
    ld sp, $3030
    nop
    nop
    ld [bc], a
    inc b
    ld b, b
    add $d6
    ld [hl], $00
    nop
    ld bc, $3f06
    ret nz

    dec l
    inc de
    ld a, [bc]
    ld b, $1d

jr_004_5ac3:
    ld h, d
    dec hl
    db $10
    inc b
    ld [$9460], sp
    ret nc

    jr nc, @+$62

    ldh [$ff84], a
    add b
    inc b
    add h
    ret nz

    jr nz, jr_004_5aa5

    jr nc, @-$3e

    ret nz

    nop
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    ld b, b
    jr nz, @+$62

    jr nz, jr_004_5b4a

    ld b, b
    jr nz, jr_004_5afd

    jr nc, jr_004_5b17

    jr jr_004_5b59

    jr jr_004_5ac3

    jr nc, jr_004_5b15

    ldh [$ffc0], a
    ret nz

    jr c, jr_004_5b32

    ld d, h
    ld l, h
    cp d

jr_004_5afd:
    add $fa
    add [hl]
    ld a, [$b686]
    adc $4c
    ld a, h
    jr c, jr_004_5b40

    nop
    nop
    jr c, jr_004_5b44

    ld [hl], h
    ld l, h
    ld a, h
    ld b, h
    ld d, h
    ld l, h
    jr c, jr_004_5b4c

    nop

jr_004_5b15:
    nop

jr_004_5b16:
    nop

jr_004_5b17:
    nop
    jr nc, jr_004_5b4a

    ld a, [hl]
    ld c, [hl]
    ld e, l
    ld l, e
    xor l
    di
    jp nc, $feee

    sub [hl]
    sbc $ba
    ld l, [hl]
    ld l, [hl]
    dec e
    ld l, $5b
    rrca
    ld l, $5b
    nop
    nop
    nop
    nop

jr_004_5b32:
    jr jr_004_5b4c

    rla
    rra
    inc e
    rra
    ld e, $13
    inc e
    rra
    dec sp
    inc [hl]
    nop
    nop

jr_004_5b40:
    nop
    nop
    inc e
    inc e

jr_004_5b44:
    db $f4
    db $ec
    db $ec
    call c, $f838

jr_004_5b4a:
    jr jr_004_5b44

jr_004_5b4c:
    jr c, jr_004_5b16

    cp e
    xor a
    ld a, e
    ld l, a
    ld l, h
    ld e, a
    rst $08
    or b
    ld a, a
    ld l, [hl]
    dec a

jr_004_5b59:
    dec sp
    rrca
    rrca
    ld b, $05
    add l
    ld a, l
    cp [hl]
    ld a, [hl]
    ld a, $ce
    ld h, a
    ld sp, hl
    cp [hl]
    ld a, [hl]
    db $fc
    db $fc
    sbc $f2
    cp a
    db $ed
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
    ld e, $1e
    ccf
    dec [hl]
    rlca
    rlca
    rlca
    ld b, $05
    rlca
    inc b
    rlca
    rrca
    rrca
    dec d
    dec de
    rra
    ld de, $1f1f
    rst $28
    cp l
    xor l
    ld a, a
    ld [hl], d
    rst $18
    db $ed
    sbc $fe
    rst $38
    ld d, e
    cp a
    jp hl


    rra
    rst $38
    rst $38
    push af
    rst $38
    ld a, a
    rst $18
    db $eb
    ld a, e
    ld [hl], b
    or b
    and b
    ld h, b
    ldh [rNR41], a
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
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

jr_004_5bc0:
    jr jr_004_5bda

    rla
    rra
    ld d, $1b
    rla
    jr jr_004_5bc0

    ld hl, sp-$41
    ret c

    ld e, a
    ld h, b
    ld h, b
    ld h, b
    and b
    ldh [$ff60], a
    and b
    cp $7e
    jp nz, $fc7e

    inc b

jr_004_5bda:
    db $fc
    inc c
    db $f4
    inc c
    ld bc, $0201
    inc bc
    dec [hl]
    ld [hl], $2f
    inc a
    cpl
    jr c, jr_004_5c18

    jr nc, @+$31

    jr nc, @+$01

    ldh a, [$ff80]
    add b
    add b
    add b
    db $fc
    db $fc
    add h
    db $fc
    ld hl, sp+$18
    db $fc
    inc c
    ld a, [$fd06]
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec bc
    dec c
    ld l, e
    ld l, l
    ld e, a
    ld a, b
    ld e, a
    ld l, b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_004_5c0f

jr_004_5c0f:
    nop
    ld a, b
    ld a, b
    adc b
    ld hl, sp+$70
    sub b
    db $fc
    inc a

jr_004_5c18:
    ldh a, [c]
    ld c, $fd
    inc bc
    rst $38
    rrca
    add b
    add b
    ld b, b
    ret nz

    adc $4e
    ld a, a
    cp l
    cp l
    ld [hl], a
    rst $30
    ccf
    ld e, c
    ld sp, hl
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    ldh [$ffe0], a
    ldh [$ffc0], a
    ret nz

    add [hl]
    add [hl]
    ld c, a
    rst $08
    db $ed
    ld l, e
    ld l, a
    xor a
    cp [hl]
    halt
    ld a, [$6c2e]
    db $fc
    ldh a, [$fff0]
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld h, b
    and b

jr_004_5c56:
    cp c
    ld a, c
    rst $30
    ccf
    ld e, l
    rst $30
    rst $38
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$ffe0], a
    ld h, b
    ldh [$ffc0], a
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc a
    ccf
    ld a, $33
    inc e
    rra
    dec sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ret c

    ld hl, sp+$34
    db $ec
    inc e
    db $fc
    jr c, jr_004_5c56

    dec sp
    cpl
    ei
    rst $28
    ld l, h
    ld e, a
    rst $08
    or b
    ld a, a
    ld l, [hl]
    dec a
    dec sp
    rrca
    rrca
    ld b, $05
    add h
    ld a, h
    cp a
    ld a, a
    ld a, $ce
    ld h, a
    ld sp, hl
    cp [hl]
    ld a, [hl]
    db $fc
    db $fc
    sbc $f2
    cp a
    db $ed
    nop
    nop
    ld [$1408], sp
    inc e
    rla
    rra
    inc e
    rra
    ld e, $13
    inc e
    rra
    jr nc, @+$41

    nop
    nop
    jr c, jr_004_5cfa

    ld l, b
    ld e, b
    ret c

    cp b
    ret c

    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp+$38
    ret z

    and b
    cp a
    ld a, e
    ld a, a
    ld l, h
    ld e, a
    rst $08
    or b
    ld a, a
    ld l, [hl]
    dec a
    dec sp
    rrca
    rrca
    ld b, $05
    dec b
    db $fd
    cp [hl]
    cp $3e
    adc $67
    ld sp, hl
    cp [hl]
    ld a, [hl]
    db $fc
    db $fc
    sbc $f2
    cp a
    db $ed
    cp e
    xor a
    ld a, e
    ld l, a
    ld l, h
    ld e, a
    rst $08
    or b
    ld a, a
    ld l, [hl]
    ccf
    ccf

jr_004_5cfa:
    dec c
    dec bc
    ld b, $07
    inc de
    ld bc, $3c5d
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $81ff


    rst $38
    add c
    cp l
    jp Jump_004_665a


    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

jr_004_5d26:
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    ld d, b
    and b
    ld d, b
    and b
    ldh a, [$fff0]
    nop

jr_004_5d3e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld d, h
    xor b
    ld d, h

jr_004_5d4a:
    xor b
    db $fc
    db $fc
    nop

jr_004_5d4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    rst $38

jr_004_5d5c:
    rst $38
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld d, b
    jr nc, @-$2e

    and b
    ld [hl], b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld e, b
    jr c, jr_004_5d4a

    xor h
    ld [hl], h
    ld l, b
    inc e
    jr jr_004_5d7c

jr_004_5d7c:
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld e, b
    jr c, jr_004_5d5c

    xor [hl]
    ld [hl], l
    ld l, e
    dec e
    ld a, [de]
    rlca
    ld b, $00
    nop
    nop
    nop
    jr nz, jr_004_5db3

    db $10
    jr nc, jr_004_5d26

    ldh [rSVBK], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_5dc3

    db $10
    jr nc, jr_004_5d3e

    add sp, $74
    ld c, h
    inc h
    jr c, jr_004_5dc8

    stop
    nop
    nop
    nop
    jr nz, jr_004_5dd3

jr_004_5db3:
    db $10
    jr nc, jr_004_5d4e

    add sp, $74
    ld c, h
    ld h, $3a
    dec e
    inc de
    add hl, bc
    ld c, $07
    inc b
    db $10
    db $10

jr_004_5dc3:
    ldh a, [$ff90]
    ld c, b
    ld a, b
    ld [hl], b

jr_004_5dc8:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10

jr_004_5dd3:
    ldh a, [$ff90]
    ld c, b
    ld a, b
    ld a, b
    ld c, b
    inc h
    inc a
    jr c, jr_004_5dfd

    nop
    nop
    nop
    nop
    db $10
    db $10
    ldh a, [$ff90]
    ld c, b
    ld a, b
    ld a, b
    ld c, b
    inc h
    inc a
    inc a
    inc h
    ld [de], a
    ld e, $1c
    db $10
    inc h
    inc a
    inc a
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5dfd:
    nop
    nop
    nop
    nop
    inc h
    inc a
    inc a
    inc h
    inc h
    inc a
    inc a
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc a
    inc a
    inc h
    inc h
    inc a
    inc a
    inc h
    inc h
    inc a
    inc a
    inc h
    nop
    nop
    nop
    nop
    inc h
    inc a
    inc a
    inc h
    inc h
    inc a
    inc a
    inc h
    inc h
    inc a
    inc a
    inc h
    inc h
    inc a
    inc a
    inc h
    add hl, bc
    inc [hl]
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $07
    rrca
    add hl, bc
    ld d, $1f
    db $10
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, Call_000_3ec4
    ld a, [$f21e]
    rra
    rst $38
    call nz, Call_000_003f
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
    rst $38
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_5e8e

    ld [hl], b
    ld d, b
    ret nc

    or b
    and b
    ld h, b
    dec e
    ld [de], a
    rst $38
    push af
    rst $38
    cp l
    rst $38
    ldh [$ff3f], a
    ld hl, $727f
    sbc $bd
    ei
    ei
    push hl
    ld e, $fe
    sbc a
    rst $38
    or e
    di
    dec l
    ei
    db $ed

jr_004_5e8e:
    ei
    ld l, l
    ccf
    di
    cp $fe
    rst $38
    inc sp
    dec sp
    db $ed
    dec sp
    db $ed
    rst $38
    rst $38
    ccf
    ldh [$ffdf], a
    ldh [$ffe0], a
    rst $38
    rra
    rra
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$ffe0], a
    db $fc
    sbc h
    ld a, [$9c96]
    db $fc
    ldh [$ffe0], a
    ret nz

    ret nz

    ret nz

    ld b, b
    add $46
    jp hl


    rst $28
    db $fc
    sub e
    db $fc
    sub e
    sbc c
    rst $38
    and $e6
    ld d, $c7
    ld e, [hl]
    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec bc
    rrca
    dec bc
    inc e
    inc d
    jr c, jr_004_5efb

    ld hl, sp-$38
    ldh a, [$ff30]
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    pop bc
    ld b, c
    xor $af

jr_004_5ee1:
    pop af
    cp a
    xor $be
    ldh a, [$ffb0]
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_004_5ee1

    rst $08
    rst $38
    scf
    inc a
    ccf
    dec l
    ld a, b
    ld a, b
    cp $86

jr_004_5efb:
    rst $38
    ld a, c
    add a
    add [hl]
    adc c
    adc a
    ld [hl], a
    rst $38
    adc b
    ld hl, sp+$70
    ld [hl], b
    pop de
    pop af
    xor $ff
    ld de, $0e1f
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffa0], a
    ldh a, [$ffd0]
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    add hl, sp
    add hl, hl
    rra
    ld d, $0f
    add hl, bc
    ld b, $06
    ld a, [hl]
    ld d, a
    ld a, a
    ld d, e
    db $ec
    xor h
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_5f53

    db $fc
    db $e4
    rst $38
    dec de
    rst $20
    push hl
    sbc a
    cp $63
    ld a, a
    inc e
    inc e
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc de
    inc a
    inc l
    ld a, h
    ld l, h

jr_004_5f53:
    cp d
    xor $75
    rst $10
    nop
    nop
    ldh [$ffe0], a
    ld hl, sp+$18
    db $fc
    db $e4
    ld e, $1a
    rlca
    dec b
    rlca
    ld b, $1b
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$74
    db $fc
    adc e
    adc a
    add a
    add [hl]
    push hl
    and a
    jp nz, $8143

    add c
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
    daa
    ld a, $d9
    ld sp, hl
    ld hl, $c1e1
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    add l
    rst $00
    ld b, l
    rst $00
    ld b, l
    adc $4a
    db $fc
    or h
    ld a, b
    ld c, b
    jr nc, jr_004_5fd5

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    set 1, a
    db $fc
    inc a
    cp $c6
    rst $38
    ei
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jr jr_004_5fd5

    inc a
    inc h
    db $fc
    call nc, $da7e
    cp $da
    rst $28
    cp e
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    rlca
    dec b

jr_004_5fd5:
    rlca
    dec b
    jr c, jr_004_6011

    db $fc
    call nz, $34fc
    adc $4a
    adc [hl]
    adc d
    adc [hl]
    adc d
    rlca
    dec b
    rrca
    ld c, $f7
    cp l
    rst $08
    ld c, l
    add a
    add l
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $30
    push af
    rrca
    db $fd
    rst $30
    db $fd
    rrca
    dec c
    add a
    add l
    add a
    add l
    add a
    add l
    adc [hl]
    adc d
    ld sp, $ce3f
    cp $30
    ldh a, [$ffc0]
    ret nz

    nop
    nop

jr_004_6011:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    and l
    ld a, [hl]
    ld e, d
    inc a
    inc h
    jr jr_004_6037

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $602a
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    dec de
    cpl
    ccf
    ccf
    cpl
    ld e, a

jr_004_6037:
    ld a, a
    ld a, a
    ld e, a
    rst $38
    rst $38
    ld a, [hl]
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    inc c
    dec bc
    dec c
    nop
    nop
    nop
    nop
    inc a
    inc a
    jp $3cff


    jp $3cff


    rst $38
    rst $38
    rst $38
    rst $38
    rla
    dec de
    rla
    dec de
    cpl
    scf
    cpl
    scf
    cpl
    scf
    cpl
    scf
    rla
    dec de
    rla
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rra
    rra
    inc a
    ccf
    ld [hl], e
    ld a, h
    ld h, a
    ld a, e
    rst $28
    rst $30
    rst $18
    rst $28
    rst $18
    rst $28
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ld a, $3f
    dec a
    ld a, $7b
    ld a, l
    ld [hl], a
    ld a, e
    inc c
    inc c
    ccf
    ccf
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a
    db $ed
    di
    db $ed
    di
    ld [hl], e
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ccf
    ccf

jr_004_60ec:
    inc c
    inc c
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
    jr jr_004_6116

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_004_6120

    nop
    nop
    rlca
    rlca
    jr jr_004_612d

    dec h
    ld a, [hl-]
    ld c, d
    ld [hl], l
    ld d, a
    ld l, b
    xor a
    ret nc

jr_004_6116:
    sbc a
    ldh [$ffaf], a
    ret nc

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_004_6120:
    ld [de], a
    dec e
    dec h
    ld a, [hl-]
    dec hl
    inc [hl]
    ld d, a
    ld l, b
    ld c, a
    ld [hl], b
    nop
    nop
    nop

jr_004_612d:
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld [de], a
    dec e
    dec d

jr_004_6135:
    ld a, [de]
    dec hl
    inc [hl]
    daa
    jr c, @+$15

    dec a
    ld h, c
    nop
    nop
    ld bc, $0300
    ld bc, $0007
    dec bc
    rlca
    rrca
    nop
    rrca
    inc b
    ld c, $05
    ldh [rP1], a
    ld hl, sp-$40
    call nz, $82b8
    ld a, h
    add d
    ld a, h
    di
    ld c, $eb
    or $f7
    ld a, [hl-]
    nop
    nop
    nop
    nop
    ld c, $00
    ld [hl-], a
    inc c
    ld b, h
    jr c, jr_004_60ec

    ld a, b
    add d
    db $fc
    call z, Call_000_1ef0
    dec b
    ld a, [hl-]
    rla
    ld a, a
    jr nz, jr_004_6135

    ld a, [hl]
    add b
    ld a, a
    ld b, d
    dec a
    inc a
    inc bc
    rlca
    nop
    rst $30
    add hl, sp
    rst $20
    ld sp, hl
    rst $00
    dec sp
    rst $28
    ld d, $df
    ld l, $ff
    ld a, [hl]
    cp c
    ld b, [hl]
    ld sp, hl
    ld a, $f0
    ret nz

    ret nz

    add b
    add b
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
    ccf
    nop
    ld e, h
    ccf
    and a
    ld a, b
    rst $38
    ld a, a
    cp c
    ld a, [hl]
    ld e, a
    ccf
    ccf
    nop
    rlca
    nop
    rst $30
    add hl, sp
    rst $20
    add hl, sp
    rst $30
    dec bc
    rst $08
    or $ff
    ld c, $3f
    sbc $f9
    ld b, $f9
    ld a, $3f
    nop
    ld e, a
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    ld e, a
    ccf
    ccf
    nop
    rlca
    nop
    rst $38
    nop
    cp $ff
    ccf
    ret nz

    rst $38
    rst $38
    rst $20
    ld hl, sp-$07
    cp $ff
    nop
    ld sp, hl
    ld a, $f0
    ld b, b
    ld h, b
    add b
    ldh a, [rP1]
    call z, $f0f0
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ei
    ld a, h
    rst $28
    ld [hl], b
    add l
    ld a, d
    ld c, d
    dec [hl]
    inc sp
    inc c
    ld l, l
    jr @+$5d

    inc a
    cp l
    ld a, [hl]
    add b
    nop
    ret nz

    add b
    and b
    ret nz

    db $10
    ldh [$ff08], a
    ldh a, [$ffc8]
    jr nc, jr_004_6212

    ldh a, [$fff0]
    nop
    ei
    ld a, l
    rst $28
    ld [hl], e
    add a

jr_004_6212:
    ld a, e
    ld b, d
    dec a
    inc sp
    inc c
    ld b, [hl]
    add hl, sp
    ld a, e
    rlca
    ld l, a
    rra
    add c
    nop
    rst $00
    add c
    cp c
    add $6a
    sbc h
    or h
    ld a, b
    cp b
    ret nz

    rst $20
    ld hl, sp-$04
    rst $38
    add b
    nop
    add b
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
    ldh [rP1], a
    ei
    ld a, l
    rst $28
    ld [hl], e
    add a
    ld a, e
    ld b, d
    dec a
    inc sp
    inc c
    ld b, l
    jr c, jr_004_62c9

    nop
    dec sp
    rlca
    add b
    nop
    ret nz

    add b
    and b
    ret nz

    inc de
    ldh [rNR33], a
    db $e3
    db $ed
    ld e, $7f
    rst $38
    rst $38
    rst $38

Jump_004_625d:
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    or b
    ld h, b
    ld h, b
    add b
    ret nz

    nop
    jr c, @-$3e

    rst $20
    ld hl, sp+$16
    ld [hl], b
    ld h, d
    nop
    nop
    dec a
    nop
    ld b, e
    dec a
    add a
    ld a, b
    sbc e
    ld h, a
    adc a
    ld [hl], b
    adc a
    ld [hl], h
    adc [hl]
    ld [hl], l
    ldh [rP1], a
    ld hl, sp-$40
    call nz, $82b8
    ld a, h
    add d
    ld a, h
    di
    ld c, $eb
    or $f7
    ld a, [hl-]
    rrca
    ld b, $0f
    ld b, $07
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    sbc $a7
    ld e, h
    rst $38
    cp h
    ld b, e
    pop bc
    cp [hl]
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc c
    inc bc
    db $10
    rrca
    rra
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ldh a, [$ff7f]
    ld a, a
    ei
    dec de

jr_004_62c9:
    pop af
    ld de, $11e0
    ldh [$fff1], a
    nop
    nop
    nop
    nop
    nop
    dec sp
    nop
    ld b, a
    dec sp
    adc a
    halt
    sbc [hl]
    ld h, c
    xor [hl]
    ld e, l
    cp a
    ld b, b
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ffcf]
    jr c, jr_004_6308

    ld a, [bc]
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    dec c
    inc bc
    ld c, $05
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    dec sp
    nop
    ld b, a
    dec sp
    adc a
    halt
    sbc [hl]
    ld h, c

jr_004_6308:
    xor [hl]
    ld e, l
    cp a
    ld b, b
    cp a
    ld d, e
    ei
    ld d, h
    add b
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ffcc]
    jr c, jr_004_62c9

    ret c

    rst $18
    add sp, $03
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld d, e
    xor [hl]
    ld a, a
    sbc $a1
    ldh [$ff5f], a
    ld a, a
    nop
    ccf
    rrca
    rra
    ld b, $0d
    ld [bc], a
    nop
    nop
    nop
    nop
    dec sp
    nop
    ld b, a
    dec sp
    adc a
    halt
    sbc [hl]
    ld h, c
    xor [hl]
    ld e, l
    cp a
    ld b, b
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ffcc]
    jr c, @-$3f

    ld d, e
    ei
    ld d, h
    ei
    ld d, h
    ld l, e
    rra
    scf
    ld [$0778], sp
    ld b, a
    jr c, jr_004_63af

    ccf
    xor h
    ret c

    call c, $d8e8
    ldh [$ff90], a
    ldh [$ffb8], a
    ld [hl], b
    ld a, h
    ld hl, sp-$04
    ld hl, sp-$26
    db $ec
    inc bc
    nop
    inc b
    inc bc
    ld [$0907], sp
    ld b, $0a
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rrca
    dec b
    cp b
    nop
    ld a, [hl]
    or b
    pop af
    ld l, [hl]
    ldh [$ff1f], a
    ldh [$ffdf], a
    db $fc
    inc bc
    ld a, [$bd3d]
    ld c, [hl]
    ei
    ld d, h
    ld l, e
    rra
    ld [hl], a
    jr z, @+$41

    db $10
    rra
    ld [$0f1f], sp
    rra
    rrca
    ld a, a

jr_004_63af:
    rrca
    ccf
    ccf
    ld l, d
    ld a, a
    call nc, $aaff
    push af
    push de
    ld [$f4ab], a
    rst $10
    add sp, -$75
    db $f4
    ld a, [hl]
    ld a, [hl]
    rst $18
    db $e3
    and c
    rst $18
    ret


    or a
    db $db
    and a
    db $ed
    or e
    jp Jump_004_7eff


    ld a, [hl]

Jump_004_63d0:
    call Call_004_63d6
    jp $53d7


Call_004_63d6:
Jump_004_63d6:
    ld de, $d080
    push de
    ld a, [$de9b]
    ld b, $01
    call Call_000_0300
    pop hl
    ld a, [hl+]
    push hl
    ld de, $9700
    call Call_004_63f0
    pop hl
    ld a, [hl+]
    ld de, $9710

Call_004_63f0:
    cp $03
    ld hl, $00f0
    jr z, jr_004_6409

    sub $e0
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    add $e7
    ld l, a
    ld a, h
    adc $51
    ld h, a

jr_004_6409:
    ld bc, $0010
    jp Jump_000_0183


    jr nc, jr_004_6423

    ld h, h
    jr c, jr_004_644c

    ld l, h
    ld a, h
    ld d, h
    ld l, h
    ld l, h
    ld a, h
    ccf
    dec sp
    ld b, $07
    add hl, bc
    rrca
    rra
    rra
    nop

jr_004_6423:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    add h
    rst $38
    ld hl, sp+$0f
    cp $ff
    inc bc
    inc bc
    ld b, $07
    dec b
    ld b, $06
    rlca
    ld a, a
    ld a, e
    or h
    db $fc
    cp h
    call c, $cc7c
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b

jr_004_644c:
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_004_64b4

    ld a, a
    cp e
    rst $30
    pop hl
    cp a
    rst $38
    cp a
    rst $38
    and [hl]
    rst $38
    and [hl]
    cp a
    pop af
    db $fd
    inc bc
    cp $f9
    rst $28
    sbc h
    rlca
    cp $ff
    cp $ff
    add $ff
    add $ff
    inc c
    inc h
    db $fc
    sbc b
    ld hl, sp+$44
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld a, a
    ld e, a
    ld e, a
    ld h, b
    jr nz, @+$41

    rra
    rra
    add hl, bc
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    cp $f9
    db $fc
    inc bc
    ld bc, $feff
    rst $38
    ld hl, sp+$0f
    db $fc
    add a
    ld h, e
    rst $38
    rst $38
    rst $38
    ld b, h
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$ff60]
    ldh [$ff80], a
    add b
    nop
    nop

jr_004_64b4:
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
    ld c, $0e
    dec de
    rra
    dec d
    dec de
    dec de
    rra
    ld c, $0e
    rlca
    dec b
    dec b
    rlca
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld h, e
    rst $38
    db $fd
    add a
    ld sp, hl
    rrca
    ld a, [hl+]
    ld [hl], $36
    ld a, $1c
    inc e
    jr c, @+$2a

    add sp, -$08
    ldh a, [$ffd0]
    ld e, b
    ld hl, sp+$78
    cp b
    rra
    rra
    cpl
    jr nc, jr_004_6556

    ld h, b
    cp a
    rst $18
    rst $30
    cp e
    jp hl


    cp a
    db $ec
    or a
    xor $b7
    cp $ff
    ld sp, hl
    rlca
    db $fc
    inc bc
    cp $f9
    rst $18
    cp h
    or a
    ld l, [hl]
    ld [hl], a
    adc $f7
    adc $fc
    sbc h
    ld c, h
    db $fc
    or h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    rst $28
    or a
    or l
    ei
    ld e, a
    ld a, a
    jr nz, jr_004_6569

    rra
    rra
    add hl, bc
    rrca
    ld b, $07
    ld bc, $f701
    adc $6e
    sbc l
    db $fc
    ei
    ld bc, $feff
    rst $38
    ld hl, sp+$0f
    add $ff
    rst $38
    rst $38
    ld b, h
    db $fc
    ld b, h
    db $fc
    add h
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$ff60]
    ldh [$ff80], a
    add b
    nop
    nop
    nop
    nop

jr_004_6556:
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    dec d
    dec de
    ld l, $31
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6569:
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    or [hl]
    cp [hl]
    ccf
    jr nz, jr_004_65a3

    ld sp, $1b15
    ld c, $0e
    rst $38
    rst $38
    ld a, a
    db $e3
    db $fd
    add a
    ld sp, hl
    rrca
    xor d
    or [hl]
    or [hl]
    cp [hl]
    inc e
    inc e
    jr c, jr_004_65b2

    add sp, -$08
    ldh a, [$ffd0]
    ld e, b
    ld hl, sp+$78
    cp b
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
    ld c, $0e
    rra
    rra
    nop

jr_004_65a3:
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
    rra
    rra

jr_004_65b2:
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
    inc e
    inc e
    ld a, $3e
    rra
    rra
    rra
    rra
    ld c, $0e
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld l, $31
    rra
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    ld a, $3e
    inc e
    inc e
    jr c, jr_004_6622

    ld hl, sp-$08
    ldh a, [$fff0]
    ld hl, sp-$08
    ld hl, sp-$08
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    jp hl


    rst $38
    db $e4
    rst $38
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    rst $00
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc

jr_004_6622:
    rst $38
    rst $20
    rst $38
    pop af
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $ff01
    rst $00
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_004_665a:
    nop
    nop
    nop
    nop
    ld c, $0e
    rra
    dec de
    nop
    nop
    nop
    nop
    inc b
    inc b
    jp z, $bfce

    ei
    ld [hl], l
    ld e, e
    ld a, a
    ld l, d
    push de
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    and b
    ldh [$ffc0], a
    ld b, b
    call c, Call_004_7edc
    or $1f
    ld de, $1b1f
    ld c, $0e
    rlca
    dec b
    rlca
    dec b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    add hl, bc
    ld a, a
    add b
    push de
    ei
    ld a, a
    ld l, d
    ld [hl], l
    ld e, e
    cp a
    ei
    ei
    rst $28
    rst $38
    add l

Jump_004_66a0:
    rst $38
    add hl, bc
    sbc $32
    ld a, [hl]
    or $dc
    call c, Call_004_68f8
    cp b
    add sp, -$10
    ldh a, [$fff8]
    ld e, b
    ld hl, sp+$38
    rra
    rra
    ccf
    jr nz, jr_004_6736

    ld b, b
    rst $38
    sbc a
    rst $38
    or e
    rst $38
    xor c
    rst $38
    and h
    rst $38
    and [hl]
    rst $38
    cp $ff
    ld bc, $00ff
    rst $38
    ld hl, sp-$01
    sbc h
    rst $38
    ld h, $ff
    ld b, [hl]
    rst $38
    add $fc
    sbc h
    db $fc
    ld c, h
    db $fc
    or h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld b, h
    rst $38
    and a
    rst $38
    or c
    ld a, a
    ld e, a
    ccf
    jr nz, jr_004_670a

    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    ld bc, $c6ff
    rst $38
    inc c
    rst $38
    ld hl, sp-$01
    ld bc, $feff
    rst $38
    ld [$c6ff], sp
    rst $38
    rst $38
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    add h
    ld hl, sp+$08

jr_004_670a:
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$ff60], a
    add b
    add b
    ld e, $15
    ld h, a
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    inc d
    rra
    dec bc
    inc c
    rla
    add hl, de
    rla
    ld a, [de]
    rla
    dec e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, c
    pop hl
    cp a
    rst $38
    pop hl
    ld a, a
    rst $38
    rst $38
    sbc $e1
    nop

jr_004_6736:
    nop
    nop
    nop
    db $f4
    db $f4
    adc d
    cp $74
    call z, $a6fa
    ld a, [$fad6]
    xor $0b
    rrca
    ld b, $07
    inc bc
    ld [bc], a
    dec b
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    dec b
    rlca
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    cp $b6
    ld a, [hl]
    call c, $f0fc
    ret nc

    add sp, -$08
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$18
    add sp, -$08
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    rlca
    ld a, [bc]
    dec c
    rla
    jr jr_004_6790

    rra
    rra
    rra
    nop
    nop
    rst $38
    cp $ff
    cp $7f
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [hl+], a

jr_004_6790:
    db $e3
    db $e3
    db $e3
    nop
    nop
    ldh a, [$ffd0]
    ret nc

    ldh a, [$fff8]
    ld hl, sp-$4c
    call z, $867a
    ld [bc], a
    cp $fe
    cp $00
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    inc bc
    dec b
    ld b, $0b
    inc c
    ld [$0f0f], sp
    rrca
    rst $38
    cp $ff
    cp $7f
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sub c
    ld [hl], c
    db $10
    ldh a, [$fff0]
    ldh a, [$fffc]
    db $fc
    jp c, $82e6

    cp $1e
    cp $7c
    db $fc
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rrca
    rrca
    ld d, $19
    db $10
    rra
    ld e, $1f
    rrca
    rrca
    ld bc, $0001
    nop
    rst $38
    cp $ff
    cp $ff
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    and h
    rst $20
    db $e4
    rst $20
    rlca
    rlca
    ldh a, [$ffd0]
    ret nc

    ldh a, [$ffb0]
    ldh a, [$fff0]
    ldh a, [rBCPS]
    sbc b
    db $f4
    inc c
    inc b
    db $fc
    db $fc
    db $fc
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    db $e3
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    ld l, a
    di
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [hl+], a
    db $e3
    db $e3
    db $e3
    nop
    nop
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    ld a, a
    db $e3
    rst $38
    rst $38
    ccf
    rst $38
    sub c
    ld [hl], c
    db $10
    ldh a, [$fff0]
    ldh a, [rIE]
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    db $e3
    ld a, a
    rst $38
    ccf
    rst $38
    and h
    rst $20
    db $e4
    rst $20
    rlca
    rlca
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    db $e3
    rst $38
    cp $ff
    cp $ff
    cp $7f
    db $e3
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [hl+], a
    db $e3
    db $e3
    db $e3
    nop
    nop
    rst $38
    cp $ff
    cp $7f
    db $e3
    rst $38
    rst $38
    ccf
    rst $38
    sub c
    ld [hl], c
    db $10
    ldh a, [$fff0]
    ldh a, [rIE]
    cp $ff
    cp $ff
    db $e3
    ld a, a
    rst $38
    ccf
    rst $38
    and h
    rst $20
    db $e4
    rst $20
    rlca
    rlca
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    cp $7f
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $e3
    rst $38
    cp $7f
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $e3
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    db $e3
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [hl+], a
    db $e3
    db $e3
    db $e3
    nop
    nop
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    db $e3
    rst $38
    rst $38
    ccf
    rst $38
    sub c
    ld [hl], c
    db $10
    ldh a, [$fff0]
    ldh a, [rIE]
    cp a
    rst $38
    cp a
    rst $38
    db $e3
    ld a, a
    rst $38
    ccf
    rst $38
    and h
    rst $20
    db $e4
    rst $20
    rlca
    rlca
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $0b
    ld hl, sp+$68

Call_004_68f8:
    ld bc, $0701
    ld b, $0f
    add hl, bc
    ld e, $11
    ld e, $1b
    ccf
    inc hl
    rra
    inc de
    ld a, $23
    ld a, l
    ld a, l
    add e
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ccf
    db $fd
    ld [hl], e
    db $fd
    jr c, @+$01

    ret nz

    ret nz

    ldh a, [$ff30]
    db $fc
    inc c
    cp $02
    db $fc
    inc c
    cp $82
    ld a, a
    pop bc
    ld a, [hl]
    adc $1c
    rla
    rrca
    dec bc
    rlca
    ld b, $01
    ld bc, $0302
    ld [bc], a
    inc bc
    rlca
    rlca
    ld a, [bc]
    rrca
    add b
    rst $38
    pop af
    rra
    ld sp, hl
    rrca
    ei
    rst $28
    ccf
    cp $c7
    rst $38
    add e
    cp $8b
    cp $7e
    jp nz, $84fc

    ld hl, sp-$38
    ldh a, [$ff30]
    ldh a, [rNR10]
    ldh a, [$ff90]
    ldh a, [rNR10]
    ldh a, [$ff30]
    ld bc, $0701
    ld b, $0f
    add hl, bc
    ld e, $11
    rra
    dec de
    ccf
    ld hl, $131f
    ld a, $23
    ld a, l
    ld a, l
    add e
    cp $01
    cp $03
    db $fc
    rra
    db $fc
    ld a, e
    db $fd
    inc sp
    db $fd
    jr c, @+$01

    inc e
    rla
    rrca
    dec bc
    rlca
    ld b, $03
    inc bc
    ld bc, $3a01
    dec sp
    ld b, [hl]
    ld a, a
    adc e
    rst $38
    add b
    rst $38
    pop af
    rra
    ld sp, hl
    rrca
    ei
    rst $28
    rst $30
    cp $0f
    db $fc
    sbc a
    ld hl, sp-$01
    pop af
    ld a, [hl]
    jp nz, $84fc

    ld hl, sp-$18
    ld hl, sp+$38
    db $fc
    inc b
    cp $32
    cp $e2
    ld e, $f2
    ld [$69ab], sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_69cb

    ld h, [hl]
    ld a, [hl]
    db $db
    rst $20
    cp l
    jp $c3bd


    rlca
    rlca
    jr jr_004_69de

    cpl
    jr nc, @+$61

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

jr_004_69cb:
    inc bc
    inc bc
    dec b
    rlca
    rlca
    dec b
    rlca
    dec b
    ld c, e
    ld c, l
    xor l
    db $eb
    or $ba
    cp $b2
    ld [hl], l
    ld e, e
    or l

jr_004_69de:
    db $db
    cp a
    pop de
    xor l
    db $d3
    cp a
    jp Jump_004_625d


    ld c, [hl]
    ld [hl], c
    inc h
    dec sp
    jr nc, jr_004_6a1d

    ld d, b
    ld [hl], b
    or b
    ret nc

    ld h, b
    and b
    and b
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld b, $06
    ld a, [bc]
    ld c, $1c
    inc d
    inc a
    inc l
    ld c, b
    ld a, b
    cp b

jr_004_6a0a:
    ret c

    ld [bc], a
    inc bc
    dec b
    ld b, $0a
    dec c
    rla
    add hl, de
    rla
    ld a, [de]
    dec hl
    inc [hl]
    cpl
    jr nc, jr_004_6a41

    jr c, jr_004_6a0a

    ld l, [hl]

jr_004_6a1d:
    ld a, d
    or $f6
    xor $ec
    sbc h
    call c, $b83c
    ld a, b
    ld c, $fe
    ld sp, hl
    rlca
    rla
    ld l, $6a
    nop
    nop
    inc e
    inc e
    ld a, [hl-]
    ld h, $3a
    ld h, $22
    ld a, $1c
    inc e
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec b

jr_004_6a41:
    rlca
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
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld [hl], b
    ld [hl], b
    db $ec
    sbc h
    db $f4
    inc c
    ld a, [$fa06]
    ld b, $f2
    ld c, $64
    sbc h
    inc e
    inc e
    ld a, [hl-]
    ld h, $7d
    ld b, e
    ld a, l
    ld b, e
    ld e, c
    ld h, a
    ld [hl+], a
    ld a, $1c
    inc e
    nop
    nop
    adc a
    rst $38
    ld [hl], l
    ld [hl], a
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
    jr @+$21

jr_004_6a98:
    cpl
    jr nc, @+$61

    ld h, b
    cp a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_004_6a98

    adc b
    ld a, b
    call nz, $e23c
    ld e, $00
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    dec b
    ld b, $07
    inc b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ldh [$ff8f], a
    ldh a, [$fff2]
    ld c, $f1
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    db $fd
    rra
    ld a, [$fd26]
    ld b, e
    rrca
    ld [$080f], sp
    rrca
    ld [$0407], sp
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ld a, a
    ldh [$ff3f], a
    ld hl, sp+$1f
    rst $20
    rra
    call nz, Call_000_183c
    ld hl, sp-$20
    ldh [rP1], a
    nop
    ld a, l
    jp $e759


    ld [hl+], a
    cp $dc
    call c, RST_00
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
    ld b, $06
    ld a, [bc]
    ld c, $1c
    inc d
    jr jr_004_6b32

    jr z, jr_004_6b54

    jr nc, jr_004_6b4e

    ld a, h
    ld a, h
    or d
    adc $7d
    ld a, l
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
    ret nz

    ret nz

jr_004_6b32:
    or b
    ld [hl], b
    add sp, -$28
    inc [hl]
    inc a
    inc c
    inc c
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    daa
    ld a, d
    ld e, l
    ld [hl], a
    ld e, a
    ld e, b
    ld a, b
    ld a, b
    ld l, b

jr_004_6b4e:
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6b54:
    nop
    nop
    ret nz

    ret nz

    and e
    db $e3
    ld h, l
    ld h, a
    ld b, $06
    rlca
    dec b
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld a, a
    dec [hl]
    ccf
    ld c, $0e
    add sp, -$48
    ld hl, sp-$48
    or h
    db $fc
    ld l, d
    ld l, [hl]
    halt
    ld d, [hl]
    daa
    daa
    ld [$070f], sp
    rlca
    jr @+$1a

    ld l, $3e
    dec l
    ccf
    ld d, e
    ld [hl], e
    ld a, e
    ld a, e
    and [hl]
    rst $18
    ld sp, hl
    ld sp, hl
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    ld [hl], h
    ld a, h
    sbc b
    ld hl, sp-$10
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    nop
    nop

Jump_004_6b9e:
    push bc
    ld de, $8000
    ld hl, $4075
    ld bc, $06a0
    call Call_000_0183
    pop af
    or a
    ret nz

    xor a
    ld [wBusterUpgradeLevel], a
    xor a
    ld [$de9b], a
    ld a, $80
    ld [$def6], a
    jp $53d7


    ld e, c
    rrca
    jp Jump_000_006b


    nop
    nop
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    nop
    nop
    ld d, d
    ld hl, $7329
    nop
    nop
    jp z, $c504

    ld c, $c0
    nop
    push bc
    nop
    ld [bc], a
    dec b
    add l
    nop
    ld b, b
    add b
    nop
    nop
    ld d, d
    ld hl, $7329
    nop
    nop
    ld b, h
    nop
    db $10
    ld b, h
    ld b, l
    ld d, h
    inc d
    ld d, l
    nop
    nop
    sub h
    ld [$9c4a], sp
    nop
    nop
    inc d
    nop
    ld b, b
    inc d
    inc d
    ld d, h
    ld c, b
    ld e, h
    add hl, hl
    ld [hl], e
    jr z, jr_004_6c79

    jr z, jr_004_6c7a

    add hl, hl
    ld [hl], e
    dec hl
    ld [hl], e
    inc hl
    halt
    inc hl
    halt
    inc hl
    halt
    nop
    add b
    ld [bc], a
    ld a, h
    cp $ff
    db $fd
    add c
    add d
    ld a, h
    ld a, c
    cp $fd
    cp $81
    add b
    ld d, l
    dec d
    dec b
    dec d
    sub b
    dec b
    ld b, l
    add b
    add b
    ret nz

    ld [hl+], a
    ld b, c
    ld [bc], a
    ld e, c
    inc a
    add hl, de
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    db $10
    ld b, h
    ld b, h
    nop
    nop
    nop
    add d
    db $fc
    add d
    db $fc
    add d
    inc b
    inc hl
    halt
    inc hl
    halt
    ld h, $72
    add hl, hl
    ld [hl], e
    ld a, [hl+]
    ld [hl], c
    add hl, hl
    ld [hl], b
    jr z, jr_004_6cc1

    ld a, [hl+]
    ld [hl], b
    add c
    add b
    ld a, c
    cp $83
    ld a, h
    ld a, [hl]
    nop
    add b
    add c
    ld bc, $7efe
    nop
    nop
    nop
    inc h
    add hl, de
    ld a, [de]
    ld b, c
    ld [hl+], a
    ld b, c
    ld b, b
    add b
    ret nc

    nop
    add h
    db $10
    ld de, $5414
    dec d
    add d
    adc h
    add d
    call c, $fc82

jr_004_6c79:
    nop

jr_004_6c7a:
    nop
    nop
    nop
    ld b, h
    nop
    nop
    ld b, h
    ld d, h
    ld b, h
    jr z, jr_004_6cf8

    add hl, hl
    ld [hl], e
    ld d, d
    ld hl, $7329
    nop
    nop
    ld d, b
    ccf
    ld d, b
    ccf
    nop
    nop
    add c
    nop
    ld b, h
    add c
    add b
    dec b
    ld b, c
    add h
    inc b
    nop
    ret nz

    nop
    push bc
    ld c, $00
    nop
    dec b
    ld d, l
    ld d, d
    ld b, a
    ld b, l
    ld b, l
    nop
    ld b, l
    ld b, l
    nop
    nop
    nop
    add hl, hl
    ld [hl], e
    nop
    nop
    ld b, h
    ld d, h
    ld d, h
    ld d, h
    db $10
    ld d, h
    inc b
    db $10
    stop
    nop
    nop
    ld c, d
    sbc h

jr_004_6cc1:
    nop
    nop
    ld d, a
    nop
    jr z, jr_004_6d1e

    ld d, a
    ld b, b
    ld b, b
    ld b, b
    ld d, a
    ld b, b
    jr z, @+$59

    ld d, a
    nop
    nop
    nop
    nop
    nop
    jp Jump_000_3400


    jp Jump_000_30ca


    dec [hl]
    ld [$01c2], sp
    dec l
    jp Jump_000_0f33


    nop
    nop
    db $e3
    nop
    inc e
    add e
    ld h, e
    rra
    sbc [hl]
    ld a, a
    ld [hl], b
    rst $38
    jp Jump_000_1efc


    ldh [rP1], a
    nop
    xor $00
    db $10

jr_004_6cf8:
    xor $fe
    xor $10
    xor $10
    xor $ee
    nop
    nop
    nop
    nop
    nop
    rst $28
    nop
    db $10
    rst $28
    rst $38
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    rst $28
    nop
    nop
    nop
    adc $3f
    add hl, sp
    cp $e3
    db $fc
    adc [hl]
    ldh a, [rNR23]
    ldh [$ff64], a

jr_004_6d1e:
    add d
    adc a
    nop
    nop
    nop
    ld [hl], b
    add b
    add $01
    inc bc
    nop
    jr c, jr_004_6d2b

jr_004_6d2b:
    rst $08
    jr nc, jr_004_6d8e

    rra
    ccf
    nop
    nop
    nop
    push af
    nop
    ld a, [bc]
    push af
    push af
    ld bc, $0101
    push af
    ld bc, $f50a
    push af
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_6d66

    ld c, a
    ccf
    db $10
    ld [hl], b
    jr nz, jr_004_6dad

    inc h
    ld h, e
    jr nz, @+$62

    inc h
    ld h, e
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc b

jr_004_6d66:
    ld hl, sp-$0e
    db $fc
    ld a, [bc]
    inc c
    ld b, $04
    sub [hl]
    db $e4
    ld b, $04
    sub [hl]
    db $e4
    jr nz, @+$62

    inc h
    ld h, e
    jr nz, @+$62

    inc h
    ld h, e
    db $10
    ld [hl], b
    ld c, a
    ccf
    ccf
    nop
    nop
    nop
    nop

jr_004_6d84:
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38

jr_004_6d8e:
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, $04
    sub [hl]
    db $e4
    ld b, $04
    sub [hl]
    db $e4
    ld a, [bc]
    inc c
    or $f8
    db $fc
    nop
    nop
    nop
    ccf
    nop
    ld h, b
    rra
    ld e, a
    ccf
    nop
    nop
    dec [hl]
    inc bc

jr_004_6dad:
    ld c, b
    jr nc, jr_004_6e07

    jr c, jr_004_6e02

    ccf
    ld hl, sp+$00
    inc c
    ldh a, [$fff4]
    ld hl, sp+$00
    nop
    ld e, b
    add b
    inc h
    jr jr_004_6d84

    jr c, jr_004_6dc6

    ld hl, sp+$50
    ccf
    ld d, b

jr_004_6dc6:
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$57
    jr c, jr_004_6e2e

    jr nc, jr_004_6e1d

    inc bc
    nop
    nop
    ld e, a
    ccf
    ld h, b
    rra
    ccf
    nop
    nop
    nop
    call nz, Call_000_2438
    jr jr_004_6e50

    add b
    nop
    nop
    db $f4
    ld hl, sp+$0c
    ldh a, [$fff8]
    nop
    nop

jr_004_6e02:
    nop
    dec hl
    rlca
    dec hl
    rlca

jr_004_6e07:
    ld c, e
    daa
    ld c, e
    daa
    ld b, b
    jr nz, jr_004_6e19

    rlca
    ld b, l
    inc hl
    nop
    nop
    sub h
    ldh [$ff94], a
    ldh [$ff92], a
    db $e4

jr_004_6e19:
    sub d
    db $e4
    ld [bc], a
    inc b

jr_004_6e1d:
    sub b
    ldh [rNR43], a
    call nz, RST_00
    nop
    nop
    ld e, [hl]
    nop
    jr nz, jr_004_6e87

    ld e, [hl]
    ld a, [hl]
    jr nz, jr_004_6e8b

    ld e, [hl]

jr_004_6e2e:
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    xor d
    nop
    nop
    nop
    ld a, c
    ld [bc], a
    add h
    halt
    ld l, b
    db $ec
    sub d
    ld e, c
    ld b, l
    inc de
    nop

jr_004_6e50:
    jr nz, jr_004_6e7d

    daa
    nop
    nop
    ld b, b

jr_004_6e56:
    ccf
    cp a
    ld a, a
    add hl, hl
    jr jr_004_6e56

    ld sp, hl
    ld sp, hl
    ei
    ld sp, hl
    dec sp
    ld sp, hl
    cp e
    nop
    nop
    ld [bc], a
    db $fc
    db $fd
    cp $26
    inc bc
    ld c, d
    daa
    ld h, $6f
    ld h, $6f
    ld h, $6f
    nop
    nop
    ld h, b
    nop
    db $10
    ld h, b
    ld h, h
    ld [hl], b
    ld d, $70

jr_004_6e7d:
    ld h, d
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], l
    halt
    nop
    rlca
    rlca
    nop

jr_004_6e87:
    ld e, [hl]
    nop
    jr nz, jr_004_6ee9

jr_004_6e8b:
    ld e, [hl]
    ld a, [hl]
    jr nz, jr_004_6eed

    ld e, [hl]
    nop
    nop
    nop
    nop
    xor d
    xor d
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    dec hl
    daa
    nop
    jr nz, jr_004_6eed

    inc de
    sub d
    ld e, c
    ld l, b
    db $ec
    add h
    halt
    ld a, c
    ld [bc], a
    nop
    nop
    ld sp, hl
    cp e
    ld hl, sp+$3b
    ld a, [$f1f8]
    ld hl, sp+$24
    inc de
    xor e
    ld h, a
    ld b, [hl]
    ld l, $15
    inc c
    ld h, $6f
    ld [bc], a
    ld l, a
    nop
    inc bc
    ld d, h
    xor b
    xor c
    cp $76

jr_004_6ece:
    rlca
    adc e
    ld [hl], e
    ld [hl], l
    jp hl


    halt
    ld [hl], a
    halt
    ld [hl], a
    jr nc, @+$72

    nop
    ld [hl], b
    ld b, [hl]
    scf
    and b
    rla
    ld sp, $5786
    add b
    dec [hl]
    ld h, l
    ld b, b
    dec h
    dec [hl]
    ld h, b

jr_004_6ee9:
    jr z, @+$72

    ld d, d
    dec a

jr_004_6eed:
    dec l
    rra
    dec e
    nop
    nop
    nop
    ld l, $1d
    ld l, $1d
    ld e, [hl]
    dec a
    dec h
    inc e
    ld e, [hl]
    ld a, $26
    rra
    ld e, [hl]
    ccf
    ld l, a
    ld e, $cb
    push bc
    adc e
    adc l
    sbc e
    dec e
    ld [hl], l
    cp c
    adc e
    ld [hl], e
    ld [hl], e
    rlca
    ei
    rst $38
    rst $38
    ei
    and d
    ret nz

    and h
    ret nz

    ret nc

    db $e4
    inc h
    jp nz, $e2d0

    ld [hl+], a
    jp nz, $e2d2

    or d
    add $5a
    inc a
    nop
    nop
    ld e, d
    inc a
    nop
    nop
    ld e, d
    inc a
    nop
    nop
    ld e, d
    inc a
    nop
    nop
    jr nc, jr_004_6f43

    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    ld a, [de]
    dec b
    jr nc, jr_004_6f42

    jr z, jr_004_6ece

    and h

jr_004_6f42:
    add hl, bc

jr_004_6f43:
    ld hl, sp-$05
    nop
    nop
    ld [hl], l
    ld a, [$0000]
    ld [hl], d
    db $fd
    adc b
    adc [hl]
    ld hl, $5075
    dec h
    ld h, [hl]
    add h
    inc b
    inc b
    jr z, jr_004_6f5d

    db $10
    ld [$00c0], sp

jr_004_6f5d:
    ld h, b
    nop
    jr nz, jr_004_6ee9

    xor b
    nop
    add b
    nop
    ccf
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, b
    nop
    ld c, a
    nop
    ld bc, $f200
    nop
    ld a, [de]
    nop
    ld a, [bc]
    nop
    ret z

    nop
    ret


    nop
    dec bc
    nop
    db $eb
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    nop
    ld b, h
    nop
    ld a, h
    nop
    ld b, h
    nop
    ld a, h
    nop
    ld b, h
    nop
    ld a, h
    nop
    ld b, h
    nop
    sbc a
    nop
    add b
    nop
    ld e, a
    nop
    jr nz, jr_004_6fab

jr_004_6fab:
    sub a
    nop
    ld [$e500], sp
    nop
    ld [bc], a
    nop
    ld sp, hl
    nop
    ld bc, $fa00
    nop
    inc b
    nop
    jp hl


    nop
    stop
    and a
    nop
    ld b, b
    nop
    ld c, [hl]
    nop
    ld h, c
    nop
    ld a, [hl]
    nop
    dec a
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    nop
    ld a, [$aa00]
    nop
    ld d, d
    nop
    nop
    nop
    ld h, c
    nop
    rlca
    nop
    ld h, a
    nop
    ld sp, hl
    nop
    nop
    nop
    ld a, [$0400]
    nop
    jp hl


    nop
    stop
    and a
    nop
    ld b, b
    nop
    rra
    nop
    add b
    nop
    ld e, a
    nop
    jr nz, jr_004_6ffb

jr_004_6ffb:
    sub a
    nop
    ld [$e500], sp
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld h, a
    nop
    rlca
    nop
    ld h, a
    nop
    rlca
    nop
    ld h, a
    nop
    rlca
    nop

jr_004_7011:
    ld h, a
    nop
    nop
    nop
    rst $38
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    xor $00
    cp e
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, h
    nop
    ld de, $0000
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    dec b
    inc bc
    ld [bc], a

jr_004_703a:
    ld bc, $005f
    sbc $7f
    and c
    ld e, a
    ld e, [hl]
    ld bc, $807a
    ei
    ld a, [hl]
    dec b
    ld a, [$80fa]
    ld b, b
    add b
    and b
    ld b, b
    jr nz, jr_004_7011

    ret nz

    add b
    ld bc, $0000
    ld bc, $2101
    ld sp, $1911
    ld [$050e], sp
    rlca
    ld bc, $77bb
    nop
    nop
    add b
    nop
    add b
    ld [$1098], sp
    jr nc, @+$22

    ldh [rLCDC], a
    ret nz

    nop
    cp d
    call c, Call_000_0177
    ld b, $05
    dec c
    ld [$1119], sp
    ld de, $0021
    ld bc, $0001
    nop
    nop
    call c, $c000
    ld b, b
    ld h, b
    jr nz, jr_004_703a

    db $10
    sub b
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_709e

    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    inc bc

jr_004_709e:
    nop
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    nop
    nop
    db $f4
    ld hl, sp-$06
    db $fc
    ld a, [$fafc]
    db $fc
    ld hl, sp+$00
    ld a, [$fafc]
    db $fc
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld a, [$fafc]
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$fafc]
    db $fc
    nop
    nop
    rra
    nop
    nop
    ld e, a
    ld e, a
    ld e, a
    rra
    ld e, a
    ld b, a
    rlca
    rlca
    rla
    rla
    rla
    nop
    nop
    ld c, a
    nop
    and b
    ld c, a
    ld c, a
    rst $28
    ld l, [hl]
    rst $28
    ld l, h
    xor $6d
    db $ec
    ld l, h
    db $ed
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    add d
    ld a, h
    ld a, c
    adc $e5
    or [hl]
    nop
    nop
    db $f4
    nop
    ld [bc], a
    db $f4
    db $f4
    or $76
    or $36
    halt
    ld [hl], $36
    ld [hl], $36
    rlca
    rla
    db $10
    rlca
    rlca
    ld b, a
    ld b, b
    ld e, a
    nop
    ld e, a
    ld e, a
    nop
    rra
    nop
    nop
    nop
    ld c, h
    db $ed
    and b
    ld l, l
    ld c, l
    db $ec
    add b
    ld l, l
    and c
    ld c, h
    ld l, h
    nop
    ld c, h
    nop
    nop
    nop
    push de
    and [hl]
    adc l
    add $32
    call z, $fefd
    inc bc
    db $fc
    nop
    nop
    xor d
    ld l, h
    nop
    nop
    inc [hl]
    ld [hl], $02
    ld [hl], $34
    ld [hl], $00
    ld [hl], $02
    inc [hl]
    ld [hl], $00
    inc [hl]
    nop
    nop
    nop
    ld l, $56
    ld [hl], c
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld sp, hl
    nop
    db $f4
    inc bc
    jp hl


    rlca
    jp nc, $a40e

    ld e, $f8
    nop
    rst $00
    nop
    db $10
    rrca
    rra
    cp a
    ld b, b
    ccf
    ccf
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    nop
    nop
    ld hl, sp+$00
    inc d
    ldh [$ffab], a
    call nz, $9946
    ld b, c
    sbc [hl]
    and b
    rra
    add b
    ccf
    rst $38
    nop
    rra
    nop
    ld b, e
    nop
    sub b
    nop
    db $e4
    nop
    ld a, d
    add b
    cp l
    ld b, b
    cp [hl]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    adc a
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ld hl, sp+$00
    ld c, d
    ld a, $8a
    ld a, a
    sub a
    ld a, a
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    adc e
    ld a, a
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    nop
    jr nz, jr_004_7217

    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    nop
    ld e, [hl]
    and b
    ld e, a
    and b
    ld e, a
    and b
    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    ld e, a
    and b
    nop
    nop
    add a
    nop
    ld b, e
    nop
    ld b, e
    nop
    and c
    nop
    and c
    nop
    and b
    nop
    ld b, b
    nop
    nop
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a

jr_004_7217:
    ld a, a
    nop
    nop
    rst $28
    nop
    ldh [rIF], a
    rst $20
    rrca
    rst $20
    rrca
    db $eb
    rlca
    push hl
    inc bc
    rst $38
    rst $38
    nop
    nop
    xor e
    nop
    ld [hl+], a
    xor e
    adc c
    xor d
    xor d
    adc b
    sub h
    call c, $e3d5
    add sp, -$01
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, [$e4fc]
    ld hl, sp+$0b
    db $f4
    nop
    nop
    nop
    nop
    ld c, l
    ld a, $00
    nop
    ld c, l
    ld a, $00
    nop
    ld c, l
    ld a, $d1
    nop
    inc bc
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld a, [$e001]
    nop
    add b
    nop
    and l
    rra
    ld c, e
    ccf
    ld c, e
    ccf
    sub a
    ld a, a
    nop
    nop
    ld sp, hl
    cp $07
    rrca
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rra
    and e
    rst $00
    nop
    nop
    db $f4
    rst $38
    ld a, [$faff]
    rst $38
    db $fd
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    rla
    add sp, $0b
    db $f4
    dec bc
    db $f4
    dec b
    ld a, [$0000]
    ld b, c
    cp $41
    cp $0f
    nop
    ld c, a
    nop
    and a
    nop
    and a
    nop
    db $d3
    nop
    ld bc, $7400
    add b
    ld [hl], h
    add b
    call $a21e
    inc hl
    add hl, bc
    ld b, c
    ld d, c
    ld b, c
    ld b, l
    ld d, c
    ld b, c
    ld d, l
    ld b, l
    ld d, c
    ld d, c
    ld b, c
    pop af
    inc bc
    inc b
    ld sp, hl
    ld a, [$fdfc]
    cp $fe
    rst $38
    ld bc, $fefe
    rst $38
    ld bc, $e9fe
    di
    db $f4
    ld sp, hl
    ld [hl], d
    db $fc
    jr c, jr_004_736c

    add hl, sp
    ld a, [hl]
    add hl, sp
    ld a, [hl]
    dec sp
    ld a, h
    ld [hl-], a
    ld a, h
    ld sp, hl
    db $ed
    pop af
    db $ed
    ld h, c
    di
    di
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    cp a
    ld [hl], e
    ld b, c
    cp $42
    db $fc
    ld b, h
    ld hl, sp+$4a
    pop af
    ld c, d
    pop af
    ld c, d
    pop af
    ld c, d
    pop af
    ld c, d
    pop af
    nop
    nop
    sbc d
    ld a, h
    nop
    nop
    jp nc, $acfc

    sbc [hl]
    add b
    ret nz

    jp nc, $acfc

    sbc [hl]
    add hl, bc
    ld b, c
    and d
    inc hl
    call $e01e
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fc
    db $fd
    nop
    di
    nop
    rrca
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    add b
    nop
    add [hl]
    ld a, b
    dec e
    ldh [$fffb], a
    nop
    and $01
    dec e
    inc bc
    di
    rrca
    adc a
    ld a, a
    nop
    nop
    cp c
    ld l, l
    ld [hl], c
    db $ed
    ld h, c
    di
    di
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$00ff]
    nop
    ld c, d
    pop af
    ld c, d
    pop af
    ld c, d
    pop af

jr_004_736c:
    ld c, d
    pop af
    sub d
    pop hl
    dec h
    jp $874b


    rla
    rrca
    add b
    ret nz

    jp nc, $acfc

    sbc [hl]
    add b
    ret nz

    jp nc, $d2fc

    db $fc
    and b
    ret nz

    ld l, c
    or d
    push af
    ld [bc], a
    ld hl, sp+$00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ldh a, [rP1]
    jp hl


    rlca
    and $01
    nop
    rst $38
    nop
    nop
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    ld a, a
    dec bc
    db $f4
    nop
    nop
    pop de
    cp $d1
    cp $d1
    cp $00
    nop
    add sp, -$01
    rla
    add sp, $0e
    rra
    nop
    nop
    ld l, c
    add b
    ld l, c
    add b
    ld l, c
    add b
    nop
    nop
    ld e, l
    and b
    and b
    nop
    sub h
    add hl, sp
    add hl, hl
    db $10
    call nc, $e606
    inc bc
    ld a, [$7c00]
    nop
    ld a, $00
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    pop af
    nop
    ldh [rTIMA], a
    db $e4
    add hl, bc
    nop
    nop
    ld c, e
    ccf
    sub a
    ld a, a
    nop
    nop
    cpl
    rst $38
    inc bc
    add a
    inc sp
    ld b, $12
    ld h, [hl]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add a
    rrca
    ld [bc], a
    halt
    ld h, d
    or $00
    nop
    db $fd
    rst $38
    cp $ff
    nop
    nop
    rst $38
    rst $38
    rlca
    rlca
    adc d
    ld h, d
    ld [hl], d
    ei
    nop
    nop
    dec bc
    db $f4
    add l
    ld a, [$0000]
    ld b, d
    db $fd
    ld a, [bc]
    add l
    dec b
    ld [hl], d
    ld sp, $077a
    nop
    and a
    nop
    db $d3
    nop
    inc bc
    nop
    jp hl


    nop
    ld [$6400], sp
    ld bc, $3045
    nop

Jump_004_7437:
    ld b, $00
    ret


    nop

Jump_004_743b:
    ld b, $00
    ret


    nop

Jump_004_743f:
    ld b, $00
    ret


    nop

Jump_004_7443:
    ld b, $00
    ret


    ld e, a
    rrca
    ld c, e
    ld [hl], h
    nop
    nop
    nop
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld [bc], a
    ld bc, $0305
    nop
    nop
    xor l
    ret nc

    xor l
    ret nc

    xor l
    ret nc

    xor l
    ret nc

    xor l
    ret nc

    ld d, b
    add b
    xor l
    ret nc

    add l
    add e
    add d
    add c
    jp nz, $c1c1

    ret nz

    pop hl
    ldh [$ffe0], a
    ldh [$fff5], a
    ldh a, [c]
    ldh a, [$fff0]
    xor l
    ret nc

    xor l
    ret nc

    xor l
    ret nc

    dec l
    ret nc

    dec l
    ret nc

    nop
    nop
    cpl
    rst $38
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
    jp hl


    cp $00
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld l, a
    adc a
    rrca
    rrca
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    sub [hl]
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, $4b
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    ld c, e
    ccf
    inc [hl]
    dec bc
    sub [hl]
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, $68
    add b
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    nop
    nop
    rst $38
    rst $38
    rla
    rst $28
    ld b, c
    add e
    add b
    ld bc, $18a4
    ld b, d
    inc a
    ld b, d
    inc a
    nop
    nop
    ld a, [$9dff]
    ldh [c], a
    add e
    ret nz

    ld bc, $2580
    jr @+$44

    inc a
    ld b, d
    inc a
    ccf
    ccf
    ccf
    cp a
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    ld [bc], a
    inc e
    ld b, d
    inc b
    ld b, b
    jr nc, jr_004_75a8

    jr jr_004_7580

    nop
    nop
    nop
    cpl
    rst $38
    ret nc

    cpl
    ld b, b
    jr c, jr_004_7590

    jr nz, jr_004_7552

    inc c
    ld h, [hl]

jr_004_7552:
    jr jr_004_7590

    nop
    nop
    nop
    and l
    ld a, [$a05a]
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    ccf
    ccf
    ld hl, sp-$08
    ei
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ld d, a
    cp a
    ld d, a

jr_004_7580:
    cp a
    ld d, a
    cp a
    ld d, a
    cp a
    ld d, a
    cp a
    xor b
    rla
    nop
    nop
    nop
    nop
    ld [$eafd], a

jr_004_7590:
    db $fd
    ld [$eafd], a
    db $fd
    ld [$15fd], a
    add sp, $00
    nop
    rra
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rra

jr_004_75a8:
    rra
    rra
    rra
    ld [bc], a
    db $fc
    nop
    nop
    ld bc, $1901
    ld bc, $1ba3
    sub e
    dec sp
    ld [hl], h
    scf
    daa
    ld [hl], a
    nop
    nop
    db $fc
    nop
    inc b
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    rst $38
    add b
    nop
    nop
    jr c, jr_004_760f

    ld c, b
    ld [hl], b
    pop hl
    pop af
    pop hl
    pop af
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    nop
    nop
    cp $00
    inc b
    ld hl, sp-$08
    db $fc
    pop af
    ld hl, sp-$0e
    ld sp, hl
    inc de
    pop hl
    pop hl
    di
    add b
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc hl
    ret nz

    db $e4
    jp $c7ab


    ld c, b
    add a
    nop
    rst $38
    nop
    nop
    nop

jr_004_7600:
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [$086f], sp
    ld c, a

jr_004_760f:
    ld c, a
    db $10
    ld d, c
    ld e, $1e
    jr nz, jr_004_7634

    jr nz, jr_004_7618

jr_004_7618:
    nop
    nop
    nop
    add b
    nop
    adc b
    inc b
    dec b
    inc c
    inc l
    inc l
    add hl, bc
    inc l
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld d, e
    db $e4
    inc b
    rlca
    ld b, a

jr_004_7634:
    add sp, -$59
    ret z

    nop
    nop
    nop
    nop
    jr nz, jr_004_7600

    inc hl
    ret nz

    jp Jump_004_4000


    add b
    add e
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld c, a
    add b
    rst $08
    nop
    ret nz

    nop
    rrca
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ld a, [$fcf9]
    db $fc
    ldh a, [$fff0]
    jp nz, $85cc

    add [hl]
    ld d, d
    dec sp
    cp c
    ld a, l
    ld [hl], c
    db $fd
    jp hl


    db $fd
    cp d
    ld a, a
    ld e, l
    ccf
    ld e, l
    ccf
    ld l, $1f
    xor [hl]
    rra
    ld l, $9f
    rla
    adc a
    rla
    adc a
    ld e, c
    and b
    inc l
    ret nc

    inc l
    ret nc

    sub [hl]
    add sp, -$6a
    add sp, -$6a
    add sp, $4b
    db $f4
    ld c, e
    db $f4
    rra
    rra
    adc a
    rrca
    adc a
    rrca
    ld c, a
    rrca
    ld b, a
    rlca
    ld b, a
    rlca
    daa
    rlca
    inc hl
    inc bc
    pop hl
    db $e3
    pop de
    call $9eac
    add [hl]
    and e
    sbc c
    add b
    adc d
    sbc h
    call $ccde
    rst $18
    pop de
    db $fd
    and l
    ld sp, hl
    ld c, b
    pop af
    ld de, $2260
    add b
    ld b, b
    nop
    nop
    nop
    add c
    nop
    rla
    adc a
    dec bc
    add a
    adc e
    rlca
    dec bc
    rlca
    dec bc
    rlca
    inc b
    inc bc
    nop
    ld bc, $f874
    ld c, e
    db $f4
    and l
    ld a, [$faa5]
    and l
    ld a, [$faa5]
    ld b, a
    add b
    ld [bc], a
    nop
    ld c, c
    jr nc, jr_004_771f

    inc bc
    sub e
    inc bc
    sub c
    ld bc, $0191
    db $dd
    ld bc, $0022
    nop
    nop
    ld b, h
    sbc b
    call $cede
    call c, $ddc8
    jp nz, $d4da

    call nz, $c8c0
    pop hl
    ldh [$fffc], a
    db $fd
    ld [bc], a
    ld bc, $0385

jr_004_771f:
    inc h
    nop
    ld d, d
    ld hl, $63b5
    db $d3
    ld h, a
    ld l, a
    rst $00
    and a
    rst $08
    ld a, [$fafc]
    db $fc
    ld a, [bc]
    inc b
    ld d, $e0
    adc c
    ldh a, [$ffca]
    pop af
    push de
    db $e3
    sub e
    rst $20
    or h
    ld a, c
    ld [hl], l
    ld sp, hl
    inc c
    nop
    sub h
    ld h, c
    ld c, c
    pop af
    ret


    di
    db $d3
    rst $20
    sub [hl]
    rst $20
    xor d
    call z, $cea4
    jr nz, @+$04

    call nz, Call_004_4908
    sbc l
    ld e, c
    sbc l
    sub l
    add hl, sp
    or e
    dec sp
    ld hl, sp-$08
    ld sp, hl
    ei
    ld hl, sp-$08
    ld sp, hl
    ld a, [$fdfc]
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rrca
    adc a
    rra
    ld c, $1f
    ld d, h
    rrca
    add hl, hl
    ld b, [hl]
    db $10
    or b
    ld c, [hl]
    rra
    add b
    add b
    xor a
    rst $00
    ld h, $cf
    ld e, h
    adc a
    adc c
    ld e, $12
    ld c, h
    ld b, c
    add b
    sub h
    ld c, $00
    nop
    dec h
    adc $4a
    sbc h
    sub h
    add hl, sp
    add hl, hl
    ld [hl], e
    ld [de], a
    ld h, c
    ld [$4200], sp
    ld sp, $0000
    dec hl
    ld [hl], e
    ld d, a
    rst $20
    xor a
    rst $08
    ld e, a
    sbc a
    sbc a
    rra
    ld e, a
    rra
    cp a
    ccf
    ld a, a
    ld a, a
    ld hl, sp-$08
    pop af
    ldh a, [$fff1]
    ldh a, [$fff2]
    ldh a, [$ffe2]
    ldh [$ffe2], a
    ldh [$ffe4], a
    ldh [$ffc4], a
    ret nz

    sbc d
    dec b
    inc [hl]
    dec bc
    inc [hl]
    dec bc
    ld l, c
    rla
    ld l, c
    rla
    ld l, c
    rla
    jp nc, $d22f

    cpl
    ld e, l
    cp $ba
    db $fc
    cp d
    db $fc
    ld [hl], h
    ld hl, sp+$75
    ld hl, sp+$74
    ld sp, hl
    add sp, -$0f
    add sp, -$0f
    ccf
    ccf
    rrca
    rrca
    ld b, e
    inc sp
    and c
    ld h, c
    ld c, d
    call c, $be9d
    adc [hl]
    cp a
    sub a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    ld e, a
    sbc a
    call nz, $c9c0
    ret nz

    adc c
    add b
    adc c
    add b
    cp e
    add b
    ld b, h
    nop
    nop
    nop
    ld [hl+], a
    add hl, de
    jp nc, $a52f

    ld e, a
    and l
    ld e, a
    and l
    ld e, a
    and l
    ld e, a
    ldh [c], a
    ld bc, $0040
    sub d
    inc c
    add sp, -$0f
    ret nc

    pop hl
    pop de
    ldh [$ffd0], a
    ldh [$ffd0], a
    ldh [rNR41], a
    ret nz

    nop
    add b
    ld l, $1f
    adc e
    cp a
    and l
    sbc a
    ld [de], a
    adc a
    adc b
    ld b, $44
    ld bc, $0002
    nop

Call_004_7838:
    nop
    add c
    nop
    add a
    rst $00
    adc e
    or e
    dec [hl]
    ld a, c
    ld h, c
    push bc
    sbc c
    ld bc, $3951
    or e
    ld a, e
    inc sp
    ei
    ld d, l
    inc sp
    dec h
    ld [hl], e
    inc b
    ld b, b
    inc hl
    db $10
    sub d
    cp c
    sbc d
    cp c
    xor c
    sbc h
    call Call_000_2ddc
    sbc [hl]
    xor [hl]
    sbc a
    jr nc, jr_004_7861

jr_004_7861:
    add hl, hl
    add [hl]
    sub d
    adc a
    sub e
    rst $08
    set 4, a
    ld l, c
    rst $20
    ld e, a
    ccf
    ld e, a
    ccf
    ld d, b
    jr nz, jr_004_78da

    rlca
    sub c
    rrca
    ld d, e
    adc a
    xor e
    rst $00
    ret


    rst $20
    ld b, b

Call_004_787c:
    add b
    and c
    ret nz

    inc h
    nop
    ld c, d
    add h
    xor l
    add $cb
    and $f6
    db $e3
    push hl
    di
    or e
    ld a, e
    ld [hl], e
    dec sp
    inc de
    cp e
    ld b, e
    ld e, e
    dec hl
    inc hl
    inc bc
    inc de
    add a
    rlca
    ccf
    cp a
    call nc, $eace
    rst $20
    push af
    di
    ld a, [$f9f9]
    ld hl, sp-$06
    ld hl, sp-$03
    db $fc
    cp $fe
    and h
    ld [hl], e
    ld d, d
    add hl, sp
    add hl, hl
    sbc h
    sub h
    adc $48
    add [hl]
    stop
    ld b, d
    adc h
    nop
    nop
    push af
    db $e3
    ld h, h
    di
    ld a, [hl-]
    pop af
    sub c
    ld a, b
    ld c, b
    ld [hl-], a
    add d
    ld bc, $7029
    nop
    nop
    ld a, [$f1f0]
    ld hl, sp+$70
    ld hl, sp+$2a
    ldh a, [$ff94]
    ld h, d
    ld [$720d], sp
    ld hl, sp+$01

jr_004_78da:
    ld bc, $1f1f
    sbc a
    rst $18
    rra
    rra
    sbc a
    ld e, a
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    db $e4
    db $e3
    ret nz

    pop bc
    sub d
    adc h
    xor l
    sbc [hl]
    ldh a, [$fff0]
    add a
    add b
    inc e
    inc bc
    ld [hl], e
    rrca
    adc [hl]
    rra
    and l
    adc $52
    db $e4
    ld h, c
    ld [hl], b
    nop
    nop
    ld d, h
    ldh [$ffa8], a
    ret nz

    ld d, b
    add b
    or b
    nop
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ld [bc], a
    ld bc, $0609
    ld d, $0c

jr_004_7923:
    add hl, bc
    inc e
    inc a
    add hl, de
    ld a, [de]
    add hl, sp
    ld a, [de]
    add hl, sp
    rra
    rra
    sbc a
    rra
    ld h, a
    rlca
    sbc c
    ld h, c
    ld h, [hl]
    ld hl, sp-$0f
    cp $3c
    rst $38

jr_004_7939:
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    rra
    ld h, a
    add a
    add e
    inc bc
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ld a, [$f0f9]
    ldh a, [$ffe7]
    rst $28
    ret nc

    ret nz

    ret


    add $5c
    ccf
    cp d
    ld a, a
    halt
    rst $38
    db $ec
    rst $38
    ld e, b
    ccf
    ld bc, $a29e
    call z, $2014
    dec sp
    ld [hl], b
    or e
    jr c, jr_004_79a2

    cp b
    jr z, jr_004_7923

    add b
    jr nc, jr_004_7986

    ld h, b
    jr nz, jr_004_7939

    ld bc, $8000

jr_004_797c:
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

jr_004_7986:
    nop
    ld h, b
    nop
    sub b
    ld h, b
    ld a, [hl-]
    add hl, de
    inc c
    add hl, de
    dec d
    ld [$040a], sp
    inc bc
    nop
    nop
    nop
    rrca
    rrca
    ld a, a
    ld a, a
    ld h, a
    cp $30
    cp $1a
    db $fc
    pop bc

jr_004_79a2:
    inc a
    jr nz, jr_004_79c2

    inc c
    ld bc, $f0f1
    db $fc
    db $fc
    add hl, sp
    ld a, l
    ld h, d
    ret nz

    call c, $2280
    sbc h
    adc h
    ld a, $4c
    ld a, $6c
    ld a, $2c
    ld a, [hl]
    and $ef
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20

jr_004_79c2:
    rst $28
    and $ef
    jp hl


    and $e6
    ldh [$ffc1], a
    pop bc
    ld d, b
    add b
    inc h
    call nz, $c425
    dec h
    call nz, $8e4e
    xor a
    rrca
    cpl
    ld c, a
    ld d, a
    add a
    ld b, e
    nop
    sub $01
    ld d, h
    add e
    add c
    rst $10
    sub $53
    ld b, e
    jr z, jr_004_797c

    add b
    ldh [$ffe0], a
    ld d, h
    ldh [$ff64], a
    ret nz

    xor d
    ret nz

    ld c, b
    sub d
    sub l
    ld hl, $4323
    rra
    rra
    rst $38
    rst $38
    inc l
    ld a, [hl]
    inc d
    ld a, [hl]
    ld d, h
    ld a, $a4
    sbc [hl]
    and h
    sbc [hl]
    jp nc, $eccc

    ldh [$fff1], a
    pop af
    sub $cf
    ldh [$ffe0], a
    di
    rst $30
    ld a, [$fdf9]
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rlca
    or a
    ld b, a
    sub a
    rst $20
    rst $10
    rst $20
    ld d, a
    rst $20
    sub a
    ld h, a
    ld l, a
    rrca
    sbc a
    sbc a
    ld hl, sp-$08
    pop af
    ldh a, [$ffe3]
    ldh [$ffe3], a
    ldh [$ffc6], a
    pop bc
    add $c1
    adc l
    add e
    add l
    add e
    rla
    ld a, $7a
    nop
    nop
    or l
    ld a, b
    ld l, l
    ldh a, [rBCPD]
    ldh a, [$ffda]
    ldh [$ffd2], a
    ldh [$ffb6], a
    ret nz

    and h
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    rla
    rrca
    inc l
    jr @+$14

    ld hl, $1f1f
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    and a
    rst $00
    rst $10
    rst $20
    dec bc
    inc de
    dec hl
    jp $ffff


    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fd
    db $fc
    ld a, [$f8f9]
    ei

jr_004_7a7c:
    db $f4
    di
    ld c, c
    ld sp, $7cba
    dec d
    ld c, $a6
    ld b, e
    ld c, d
    pop af
    call nc, $d5f9
    ld hl, sp-$6c
    ld hl, sp+$6c
    add b
    ld c, h
    add b
    jr jr_004_7a94

jr_004_7a94:
    jr jr_004_7a96

jr_004_7a96:
    adc b
    nop
    add b
    nop
    jr nc, jr_004_7a9c

jr_004_7a9c:
    ld e, c
    jr nz, jr_004_7ac8

    ld b, a
    ld d, h
    rrca
    ld l, $1f
    ld e, $3f
    ld e, $3f
    ld l, $1f
    ld c, [hl]
    rra
    inc b
    ld e, b
    inc de
    db $e3
    sub e
    db $e3
    sub a
    rst $20
    sub a
    rst $20
    sub a
    rst $20
    sub a
    rst $20
    or a
    rst $00
    ld [hl], a
    rlca
    or $f1

jr_004_7ac0:
    ldh a, [$fff0]
    db $e4
    db $e3
    db $eb
    rst $20
    ldh [$ffe8], a

jr_004_7ac8:
    call nc, $cbc3
    rst $00
    rst $00
    rst $08
    jr z, jr_004_7ac0

    add hl, de
    ld h, b
    adc b
    ld bc, $c1a2
    ld d, d
    ld h, c
    adc c
    db $10
    ld a, [hl+]
    ret nz

    sub d
    pop hl
    xor b
    ld [hl], c
    ld [hl], h
    pop hl
    ret nc

    db $e4
    and b
    bit 4, b
    add b
    rl e
    rlca
    rlca
    ld e, [hl]
    sbc [hl]
    db $10
    ld b, e
    rlca
    rrca
    jr jr_004_7a7c

    inc h
    inc bc
    ld d, $0f
    inc l
    rra
    ld e, d
    ccf
    or l
    ld a, [hl]
    rla
    add a
    and a
    rst $00
    rla
    daa
    sub a
    rlca
    ld c, a
    adc a
    ld c, a
    adc a
    cp a
    ccf
    ld a, a
    ld a, a
    rst $28
    rst $20
    ldh a, [c]
    rst $30
    push af
    ldh a, [c]
    ld hl, sp-$06
    ld hl, sp-$08
    db $fd
    db $fc
    cp $fe
    rst $38
    rst $38
    ld h, b
    add b
    adc b
    db $10
    ld d, h
    ld h, e
    xor e
    rst $00
    rst $10
    adc a
    jr nz, @-$5f

    cp a
    nop
    nop
    nop
    ld a, $3e
    dec e
    inc e
    dec h
    call nz, $f0c9
    db $e4
    ld hl, sp+$00
    db $fc
    db $fd
    ld bc, $0303
    ld a, [hl+]
    db $fc
    ld d, l
    ld sp, hl
    dec hl
    di
    ld d, a
    rst $20
    xor a
    ld c, a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld a, [hl]
    pop hl
    rst $38
    sbc c
    rst $38
    rst $20
    cp a
    ld sp, hl
    rst $10
    rst $18
    pop af
    db $fd
    di
    ld l, d
    halt
    inc a
    inc a
    nop
    nop
    nop
    nop
    rst $20
    ld sp, hl
    rst $38
    pop de
    rst $18
    pop af
    db $fd
    di
    ld h, d
    ld a, [hl]
    inc a
    inc a
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
    inc a
    inc a
    ld b, d
    ld a, [hl]
    add c
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    cp c
    rst $38
    adc a
    rst $38
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
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
    ld [hl], b
    ld [hl], b
    call z, $a3fc
    rst $38
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7edc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_004_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_004_7fff:
    rst $38
