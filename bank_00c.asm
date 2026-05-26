; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    jp Jump_00c_417b


    sub c
    ld b, c
    ld b, [hl]
    ld b, a
    ld c, a
    ld h, c
    or b
    ld d, c
    and l
    ld d, a
    jp c, Jump_00c_7b5c

    ld c, h
    ld h, h
    ld h, [hl]
    ret


    ld l, e
    inc c
    ld [hl], c
    add c
    ld [hl], l
    halt
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    add c
    ei
    add c
    ei
    add b
    ei
    add e
    ei
    add e
    ei
    rst $38
    rst $38
    rst $38
    jp $f8ff


    ld d, a
    db $fc
    ld c, a
    rst $38
    jp c, $feff

    rst $38
    inc c
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ld a, a
    ld bc, $03f1
    di
    inc bc
    db $e3
    rlca
    pop hl
    rlca
    pop bc
    add d
    ei
    add b
    ei
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $81
    db $fd
    add e
    ei
    inc c
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, a
    ret nz

jr_00c_4066:
    cp $c0
    cp $e0
    db $fc
    rrca
    ret


    rrca
    adc h
    rra
    sbc h
    rra
    inc e
    ccf
    inc a
    ccf
    add hl, sp
    ld a, a
    ld a, c
    ld a, a
    ld [hl], c
    rst $00
    rst $00
    rst $38
    rst $20
    cp a
    db $e3
    cp a
    ldh a, [$ff9f]
    ld hl, sp-$31
    sbc [hl]
    add e
    sbc a
    rst $38
    rst $38
    ldh [$fffc], a
    ldh a, [$fff8]
    push af
    db $fd
    db $fd
    db $fd
    rst $38
    inc a
    rst $38
    nop
    rst $38
    jp $ffff


    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $00
    db $fd
    rrca
    ld sp, hl
    rra
    push af
    ld a, c
    pop bc
    ld sp, hl
    rst $38
    rst $38
    nop
    rst $38
    ld a, b
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    rst $38
    ld a, b
    ld hl, sp-$01
    nop
    nop
    nop
    ld [bc], a
    db $fc
    ld a, $3c
    cp $00
    nop
    nop
    ld [bc], a
    db $fc
    ld a, $3c
    cp $00
    nop
    nop
    rla
    adc a
    ld h, b
    ld b, b
    ld h, c
    jr nc, jr_00c_4066

    jr c, jr_00c_40dc

    sbc e
    sub d
    add [hl]
    and h
    adc l
    add c
    adc e
    rst $38

jr_00c_40dc:
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $fe6c
    xor $ff
    rst $28
    rst $38
    ret nc

    ldh [c], a
    inc c
    inc b
    inc c
    jr @+$54

    jr c, jr_00c_4114

    or d
    sub d
    jp nz, Jump_00c_624a

    ld [bc], a
    and d
    or c
    add e
    add c
    add e
    cp b
    add c
    add b
    add b
    and b
    add b
    adc a
    sbc a
    and a
    adc a
    add e
    add a
    sub e
    rst $28
    add e
    rst $00
    ret nz

    rst $20
    ld [hl], b
    ld hl, sp+$18

jr_00c_4114:
    inc a
    inc b
    adc [hl]
    add d
    rst $00
    rst $28
    rst $38
    adc d
    jp nz, $e2c2

    ld a, [bc]
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld a, [$0202]
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    add d
    add d
    and c
    adc e
    add h
    adc l
    sub d
    add [hl]
    ld [$949b], sp
    jr c, jr_00c_4196

    jr nc, @+$62

    ld b, b
    rla
    adc a
    rst $28
    rst $38
    xor $ff
    db $10
    xor $00
    ld bc, $007c
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [bc]
    and d
    ld b, d
    ld h, d
    sub d
    jp nz, $b220

    ld d, d
    jr c, jr_00c_4162

    jr jr_00c_4164

    inc b
    ret nc

    ldh [c], a
    nop
    rst $38
    ld a, b
    ld hl, sp-$01
    nop
    nop

jr_00c_4162:
    nop
    nop

jr_00c_4164:
    rst $38
    ld a, b
    ld hl, sp-$01
    nop
    nop
    nop
    ld [bc], a
    db $fc
    ld a, $3c
    cp $00
    nop
    nop
    ld [bc], a
    db $fc
    ld a, $3c
    cp $00
    nop
    nop

Jump_00c_417b:
    ld a, [$df0a]
    cp $0d
    ld hl, $40cb
    jr nz, jr_00c_4188

    ld hl, $401b

jr_00c_4188:
    ld de, $9040
    ld bc, $00b0
    jp Jump_000_0183


    ld e, e
    rrca
    sub [hl]
    ld b, c
    nop

jr_00c_4196:
    ld l, b
    jr nc, jr_00c_4201

    jr nc, jr_00c_4202

    jr nc, jr_00c_4204

    scf
    ld h, b
    scf
    ld h, a
    jr nc, jr_00c_420b

    jr nc, jr_00c_420d

    jr nc, jr_00c_41c1

    inc c
    ld a, [de]
    inc c
    ld [$ea0c], a
    db $ec
    ld a, [bc]
    db $ec
    ld [$1a0c], a
    inc c
    ld a, [de]
    inc c
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_00c_41dc

    jr jr_00c_41ce

    add hl, de
    inc c
    inc b

jr_00c_41c1:
    dec c
    ld [bc], a
    ld bc, $0709
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr @+$0a

jr_00c_41ce:
    sbc b
    jr nc, @+$22

    or b
    ld b, b
    add b
    sub b
    ldh [$ff09], a
    rlca
    ld [bc], a
    ld bc, $0d04

jr_00c_41dc:
    add hl, de
    inc c
    jr @+$12

    jr nz, jr_00c_4202

    ld b, b
    ld b, b
    nop
    nop
    sub b
    ldh [rLCDC], a
    add b
    jr nz, @-$4e

    sbc b
    jr nc, jr_00c_4207

    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld h, b

jr_00c_4201:
    nop

jr_00c_4202:
    ld h, d
    nop

jr_00c_4204:
    ld h, d
    nop
    nop

jr_00c_4207:
    nop
    rst $38
    nop
    rst $38

jr_00c_420b:
    nop
    rst $38

jr_00c_420d:
    nop
    nop
    nop
    ld b, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    nop
    nop
    db $fc
    nop
    ld a, [$f600]
    nop
    ld c, $00
    ld c, $00
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, d

Call_00c_4233:
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld b, h
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
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    or $00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, b
    ld e, $4e
    ld a, $58
    ld a, $52
    inc a
    ld e, [hl]
    jr nc, jr_00c_42a5

jr_00c_42a5:
    nop
    nop
    nop
    ld a, h
    nop
    ld b, $78
    ld [hl], d
    ld a, h
    ld a, [de]
    ld a, h
    ld c, d
    inc a
    ld l, d
    inc e
    nop
    nop
    nop
    nop
    ld d, [hl]
    jr c, jr_00c_430d

    inc a
    ld e, b
    ld a, $4e
    ld a, $60
    ld e, $3e
    nop
    nop
    nop
    nop
    nop
    ld l, d
    inc e
    ld c, d
    inc a
    ld a, [de]
    ld a, h
    ld [hl], d
    ld a, h
    ld b, $78
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld e, d
    inc a
    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    nop
    nop
    nop
    nop
    ld a, d
    nop
    nop
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    nop
    ld a, d
    ld a, d
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    ld l, a
    ld h, b
    ld c, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_00c_430d:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    cp $fe
    cp $fe
    nop
    cp $00
    cp $fe
    cp $1a
    db $f4
    ld [de], a
    db $e4
    ld b, e
    ld a, h
    ld b, h
    ld a, b
    ld c, e
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl], b
    rst $38
    nop
    nop
    nop
    ld [$0010], sp
    rst $38
    ld a, h
    rst $38
    ld b, d
    db $fd
    ld a, $c1
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld b, $06
    ld b, $06
    nop
    nop
    jp nz, $223c

    inc e
    jp nc, $d2dc

    call c, Call_000_1c12
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld c, e
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, e
    ld [hl], b
    ld b, h
    ld a, b
    ld [hl], e
    ld l, a
    ld h, b
    ld c, a
    ld [$ff10], sp
    cp $83
    db $fc
    rst $38
    add b
    ld [$0010], sp
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld d, l
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    push de
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld d, d
    inc e
    ld [de], a
    sbc h
    sub d
    sbc h
    ld [de], a
    sbc h
    ld d, d
    inc e
    ld [hl+], a
    inc e
    jp c, Jump_000_12f4

    db $e4
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld [bc], a
    db $fc
    cp $00
    nop
    cp $00
    cp $fe
    nop
    cp $00
    cp $00
    nop
    nop
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
    ld e, d
    inc a
    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a

Jump_00c_43ec:
    ld e, d
    inc a
    nop
    nop
    set 6, b
    adc c
    di
    adc d
    pop af
    nop
    nop
    call nc, Call_000_0666
    inc b
    xor $40
    ld e, $0c
    ld a, [$021c]
    db $fc
    add d
    ld a, h
    sbc d
    pop hl
    ei
    cp l
    rst $38
    jp $ffc0


    ret nz

    rst $38

Jump_00c_4410:
    ret z

    ei
    ret nz

    di
    ret nz

    rst $38
    ld [bc], a
    ld a, h
    ld a, $c0
    and b
    ld b, b
    ld h, $d8
    ld h, $d8
    and $18
    and $18
    ld b, $38
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    ret z

    ei
    ret nz

    di
    ret nz

    rst $38
    ret nz

    rst $38
    rst $08
    ldh a, [$ffc8]
    ldh a, [$ffc8]
    di
    ret z

    di
    ld h, $f8
    and $f8
    add $38
    ld h, $38
    and $f8
    add $38
    ld h, $38
    ld h, $f8
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
    ld hl, sp-$7d
    rst $38
    add b
    add e
    add b
    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    nop
    nop
    ld h, $f8
    ld a, $c0
    jp nz, RST_00

    nop
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    nop
    nop
    nop
    nop
    jr jr_00c_448a

jr_00c_448a:
    db $db
    nop
    db $db
    nop
    jr jr_00c_4490

jr_00c_4490:
    jp $1800


    nop
    nop
    nop
    nop
    nop
    ld e, e
    cpl
    ld e, e
    cpl
    nop
    nop
    dec l
    rla
    nop
    nop
    ld e, e
    cpl
    ld e, e
    cpl
    nop
    nop
    jp c, $daf4

    db $f4
    nop
    nop
    or h
    add sp, $00
    nop
    jp c, $daf4

    db $f4
    ld e, e
    inc l
    ld e, e
    ld l, $5b
    cpl
    nop
    nop
    dec l
    rla
    nop
    nop
    dec h
    inc de
    nop
    nop
    jp c, $da34

    ld [hl], h
    jp c, Jump_000_00f4

    nop
    or h
    add sp, $00
    nop
    and h
    ret z

    nop
    nop
    dec h
    inc de
    nop
    nop
    dec l
    rla
    nop
    nop
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    ld l, $5b
    inc l
    and h
    ret z

    nop
    nop
    or h
    add sp, $00
    nop
    jp c, $daf4

    db $f4
    jp c, $da74

    inc [hl]
    ld e, e
    cpl
    nop
    nop
    dec l
    rla
    nop
    nop
    ld e, e
    cpl
    ld e, e
    cpl
    dec l
    rla
    nop
    nop
    jp c, Jump_000_00f4

    nop
    or h
    add sp, $00
    nop
    jp c, $daf4

Jump_00c_4511:
    db $f4
    or h
    add sp, $00
    nop
    nop
    nop
    add hl, de
    rlca
    nop
    nop
    ld [hl], a
    rrca
    ld c, a
    ld b, $26
    db $10
    ld h, $10
    jr nz, jr_00c_4536

    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld a, $3e
    inc e
    inc e
    ret


    ld e, l
    ret


    ld b, c
    pop bc

jr_00c_4536:
    nop
    nop
    call z, Call_000_00f0
    nop
    rst $30
    ld a, b
    ld a, c
    jr nc, jr_00c_4573

    add h
    ld [hl-], a
    add h
    ld [bc], a
    add h
    jr nz, jr_00c_4558

    jr nz, jr_00c_455a

    jr nz, jr_00c_455c

    jr nz, jr_00c_455e

    jr nz, jr_00c_4560

    jr nz, jr_00c_4562

    jr nz, jr_00c_4564

    jr nz, jr_00c_4566

    ld b, c
    pop bc

jr_00c_4558:
    ld b, c
    pop bc

jr_00c_455a:
    ld b, c
    pop bc

jr_00c_455c:
    ld b, c
    pop bc

jr_00c_455e:
    ld b, c
    pop bc

jr_00c_4560:
    ld b, c
    pop bc

jr_00c_4562:
    ld b, c
    pop bc

jr_00c_4564:
    ld b, c
    pop bc

jr_00c_4566:
    ld [bc], a
    add h
    ld [bc], a
    add h
    ld [bc], a
    add h
    ld [bc], a
    add h
    ld [bc], a
    add h
    ld [bc], a
    add h
    ld [bc], a

jr_00c_4573:
    add h
    ld [bc], a
    add h
    jr nz, jr_00c_4588

    ld h, $10
    ld [hl], $00
    ld c, a
    ld b, $77
    rrca
    nop
    nop
    add hl, de
    rlca
    nop
    nop
    ld b, c
    pop bc

jr_00c_4588:
    ld e, l
    ret


    inc e
    ret


    ld a, $1c
    rst $38
    ld a, $00
    nop
    rst $38
    rst $38
    nop
    nop

jr_00c_4596:
    ld [bc], a
    add h
    ld [hl-], a
    add h
    ld [hl], $80
    ld a, c
    jr nc, jr_00c_4596

    ld a, b
    nop
    nop
    call z, Call_000_00f0
    nop
    ld a, e
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld l, b
    nop
    ld c, e
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, b
    nop
    db $fc
    nop
    inc a
    nop
    db $fc
    nop
    inc [hl]
    nop
    db $e4
    nop
    inc a
    nop
    db $fc
    nop
    inc a
    nop
    ret nz

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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    jr nc, jr_00c_45fc

jr_00c_45fc:
    ld a, b
    nop
    inc a
    nop
    ld e, $00
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    jr nc, jr_00c_460e

jr_00c_460e:
    ld h, $00
    ld l, $00
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    inc c
    nop
    ld h, h
    nop
    ld [hl], h
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld l, $00
    ld h, $00
    jr nc, jr_00c_4630

jr_00c_4630:
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld [hl], h
    nop
    ld h, h
    nop
    inc c
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    cpl
    ld e, e
    cpl
    jp c, $daf4

    db $f4
    jp c, $daf4

    db $f4
    jp c, $daf4

    db $f4
    jp c, $daf4

    db $f4
    nop
    nop
    jr jr_00c_4682

    ld e, d
    ld e, d
    ld b, d
    ld e, d
    nop
    ld e, d
    ld e, d
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    nop
    jr c, jr_00c_46b6

    and l
    cp c
    inc h
    cp c
    inc h
    cp c
    sbc l
    and c

jr_00c_4682:
    ld b, d
    add c
    inc a
    jp Jump_000_006a


    ld d, l
    nop
    dec sp
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld b, h
    nop
    ld de, $4400
    nop
    nop
    ld e, d
    ld e, d
    nop
    nop
    ld e, d
    ld b, d
    jr @+$5c

    nop
    ld e, d
    nop
    jr jr_00c_46a4

jr_00c_46a4:
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_00c_46b6:
    add sp, $00
    ld d, h
    nop
    cp b
    nop
    ld d, h
    nop
    xor b
    nop
    ld b, h
    nop
    stop
    ld b, h
    nop
    nop
    nop
    ld [hl], b
    ld hl, sp+$44
    jr c, jr_00c_46cd

jr_00c_46cd:
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [hl], b
    ld hl, sp+$44
    jr c, jr_00c_46dd

jr_00c_46dd:
    nop
    nop

jr_00c_46df:
    nop
    db $10
    sub b
    jr jr_00c_46fc

    inc e

jr_00c_46e5:
    inc e
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop

jr_00c_46ef:
    nop
    ld [hl+], a
    inc e
    ld c, $1f
    nop
    nop
    sbc h
    sbc h
    jr jr_00c_4712

    db $10
    ld d, b

jr_00c_46fc:
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc e
    ld c, $1f
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld h, b
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, b
    ld [hl], c
    ld d, b
    ld h, c

jr_00c_4712:
    ld h, b
    ld b, c
    ld b, b
    ld b, c
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    ld hl, sp+$62
    sub b
    sub d
    inc c
    xor d
    inc h
    or [hl]
    jr nc, jr_00c_46df

    jr c, @+$42

    ld b, c
    ld h, b
    ld b, c
    ld d, b
    ld h, c
    ld c, b
    ld [hl], c
    ld h, [hl]
    ld l, c
    ld b, b
    ld c, a
    ccf
    nop
    nop
    nop
    cp d
    jr c, jr_00c_46ef

    jr nc, jr_00c_46e5

    inc h
    sub d
    inc c
    ld l, d
    sbc b
    ld [bc], a
    ldh a, [$fffc]
    nop
    nop
    nop
    ld d, e
    rrca
    ld c, e
    ld b, a
    nop
    ld l, b
    jr nc, jr_00c_47ae

    jr nc, @+$69

    jr nc, jr_00c_47b9

    scf
    ld h, b
    scf
    ld h, a
    jr nc, jr_00c_47b8

    jr nc, jr_00c_47c2

    jr nc, jr_00c_4776

    inc c
    ld a, [bc]
    inc c
    ld [$ea0c], a
    db $ec
    ld a, [bc]
    db $ec
    ld [$0a0c], a
    inc c
    ld a, [de]
    inc c
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00c_4773

    db $10

jr_00c_4773:
    inc b
    add hl, bc
    add hl, bc

jr_00c_4776:
    nop
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    add d
    ret nz

    add h
    sub b
    ret z

    ld c, b
    add b
    sub b
    jr nz, jr_00c_47da

    jr nz, jr_00c_4791

    inc bc
    ld [bc], a
    ld bc, $0c05

jr_00c_4791:
    jr jr_00c_479f

    add hl, sp
    db $10
    jr nz, @+$22

    nop
    nop
    nop
    nop
    ret nc

    ldh [rNR41], a
    ret nz

jr_00c_479f:
    ret nc

    jr jr_00c_47ae

    jr jr_00c_47f2

    add h
    ld [bc], a
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a

jr_00c_47ae:
    nop
    inc b
    ld [bc], a
    dec h
    db $10
    inc b
    nop
    ld hl, $0410

jr_00c_47b8:
    nop

jr_00c_47b9:
    dec h
    stop
    nop
    ld [$0571], a
    inc bc
    push de

jr_00c_47c2:
    db $e3
    dec b
    inc bc
    ret nc

    ldh [rTIMA], a
    inc bc
    push de
    db $e3
    nop
    nop
    ld d, a
    adc [hl]
    and b
    ret nz

    xor e
    rst $00
    and b
    ret nz

    dec bc
    rlca
    and b
    ret nz

    xor e

jr_00c_47da:
    rst $00
    nop
    nop
    ld c, b
    nop
    jr nz, @+$42

    and h
    ld [$0020], sp
    add h
    ld [$0020], sp
    and h
    ld [$1025], sp
    inc b
    nop
    ld hl, $0410

jr_00c_47f2:
    nop
    dec h
    db $10
    inc b
    ld [bc], a
    ld [de], a
    nop
    nop
    nop
    push de
    db $e3
    dec b
    inc bc
    ret nc

    ldh [rTIMA], a
    inc bc
    push de
    db $e3
    dec b
    inc bc
    ld [$0071], a
    nop
    xor e
    rst $00
    and b
    ret nz

    dec bc
    rlca
    and b
    ret nz

    xor e
    rst $00
    and b
    ret nz

    ld d, a
    adc [hl]
    nop
    nop
    and h
    ld [$0020], sp
    add h
    ld [$0020], sp
    and h
    ld [$4020], sp
    ld c, b
    nop
    nop
    nop
    dec d
    jr nz, @+$17

    jr nz, @+$17

    jr nz, jr_00c_4847

    jr nz, @+$17

    jr nz, jr_00c_484b

    jr nz, jr_00c_484d

    jr nz, jr_00c_484f

    jr nz, jr_00c_483c

jr_00c_483c:
    nop
    ld a, $00
    ld h, b
    ld e, $4e
    ld a, $58
    ld a, $52
    inc a

jr_00c_4847:
    ld e, [hl]
    jr nc, jr_00c_484a

jr_00c_484a:
    nop

jr_00c_484b:
    nop
    nop

jr_00c_484d:
    ld a, h
    nop

jr_00c_484f:
    ld b, $78
    ld [hl], d
    ld a, h
    ld a, [de]
    ld a, h
    ld c, d
    inc a
    ld l, d
    inc e
    nop
    nop
    nop
    nop
    ld d, [hl]
    jr c, jr_00c_48b2

    inc a
    ld e, b
    ld a, $4e
    ld a, $60
    ld e, $3e
    nop
    nop
    nop
    nop
    nop
    ld l, d
    inc e
    ld c, d
    inc a
    ld a, [de]
    ld a, h
    ld [hl], d
    ld a, h
    ld b, $78
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld e, d
    inc a
    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    nop
    nop
    ld e, d
    inc a
    nop
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    nop
    ld e, d
    ld e, d
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
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38

jr_00c_48b2:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    jp Jump_000_3c00


    jp $ffc3


    jp $3cff


    jp Jump_000_00c3


    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    inc h
    jr jr_00c_48f6

    jr @+$26

    jr @+$26

    jr jr_00c_4932

    inc a
    ld e, d
    inc a
    nop
    nop
    inc sp
    rrca
    nop
    nop
    inc sp
    rla
    inc de
    rla
    ld h, b
    jr nz, jr_00c_4953

    daa
    ld h, b
    jr nz, jr_00c_48ec

jr_00c_48ec:
    nop
    call z, Call_000_00f0
    nop
    call z, $c8e8
    add sp, $06

jr_00c_48f6:
    inc b
    sub $e4
    ld b, $04
    ld h, b
    jr nz, jr_00c_4969

    daa
    ld l, e
    daa
    dec bc
    rlca
    ld l, e
    daa
    ld l, e
    daa
    ld l, e
    daa
    ld l, e
    daa
    ld b, $04
    sub $e4
    sub $e4
    ret nc

    ldh [$ffd6], a
    db $e4
    sub $e4
    sub $e4
    sub $e4
    ld h, b
    jr nz, @+$6d

    daa
    ld h, b
    jr nz, @+$15

    rla
    inc sp
    rla
    nop
    nop
    inc sp
    rrca
    nop
    nop
    ld b, $04
    sub $e4
    ld b, $04
    ret z

jr_00c_4932:
    add sp, -$34
    add sp, $00
    nop
    call z, Call_000_00f0
    nop
    ld b, d
    inc e
    ld b, h
    jr @+$4b

    ld de, $0352
    ld b, h
    rlca
    ld c, b
    rrca
    db $10
    rra
    ld bc, $421e
    ld b, h
    ld h, d
    ld b, h
    ld d, d
    ld b, h
    ld c, d
    ld b, h

jr_00c_4953:
    ld c, d
    ld b, h
    ld d, d
    ld b, h
    ld h, d
    ld b, h
    ld b, d
    ld b, h
    nop
    nop
    ld a, [hl]

jr_00c_495e:
    ld a, [hl]
    nop

jr_00c_4960:
    ld a, [hl]
    nop
    ld b, d
    jr jr_00c_49bf

    nop
    ld b, d
    db $10
    ld d, d

jr_00c_4969:
    nop
    ld b, d
    nop
    nop
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    rst $28
    ld [$11ef], sp
    sbc $13
    call c, $d817
    nop
    nop
    rst $38
    rst $38
    ld [$e407], sp
    di
    inc d
    db $e3
    adc d
    ld [hl], c
    jp z, $ea31

    ld de, $5a18
    nop
    ld b, d
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_00c_4996:
    nop
    ld a, [hl+]

jr_00c_4998:
    nop
    ld a, [hl+]
    nop
    db $10
    rst $18
    jr nz, jr_00c_495e

    jr nz, jr_00c_4960

    daa
    cp a
    xor b
    ccf
    ld d, b
    ld a, h
    ld d, b
    ld a, b
    ld d, c
    ld a, c
    ld a, [bc]
    pop af
    dec b
    ld hl, sp+$05
    ld hl, sp-$1b
    ld hl, sp+$15
    add sp, $4a
    ld [hl], h
    xor d
    call nc, $944a
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop

jr_00c_49bf:
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    jr jr_00c_4a41

    ld d, d
    ld a, e
    ld d, l
    ld a, [hl]
    ld d, d
    ld a, h
    xor b
    cp a
    daa
    cp b
    jr nz, jr_00c_4996

    jr nz, jr_00c_4998

    db $10
    rst $18
    adc d
    inc d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc [hl]
    dec d
    add sp, -$1b
    jr jr_00c_49eb

    ld hl, sp+$05
    ld hl, sp+$0a
    pop af

jr_00c_49eb:
    inc h
    ld a, d
    ld b, d
    ld a, h
    ld b, d
    ld a, h
    ld a, $40
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    rla
    ret c

    inc de
    call c, $de11
    ld [$07ef], sp
    add sp, $00
    ldh a, [rIE]
    nop
    nop
    nop
    ld [$ca11], a
    ld sp, $718a
    inc d
    db $e3
    db $f4
    inc bc
    ld [$ff07], sp
    nop
    nop
    nop
    push de
    db $e3
    push de
    db $e3
    push de
    db $e3
    push de
    db $e3
    push de
    db $e3
    push de
    db $e3
    push de
    db $e3
    push de
    db $e3
    xor e
    rst $00
    xor e
    rst $00
    xor e
    rst $00
    xor e
    rst $00
    xor e
    rst $00
    xor e
    rst $00
    xor e
    rst $00
    xor e
    rst $00
    xor b
    inc b
    xor b
    inc b
    xor b
    inc b

jr_00c_4a41:
    xor b
    inc b
    xor b
    inc b
    xor b
    inc b
    xor b
    inc b
    xor b
    inc b
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
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
    ccf
    rra
    ld a, a
    jr nz, jr_00c_4ac3

    jr nz, jr_00c_4ac5

    cpl
    ld h, b
    jr nz, jr_00c_4ac9

    cpl
    ld h, b
    nop
    nop
    nop
    db $fc
    ld a, [$02fc]
    inc b
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    jr nz, jr_00c_4add

    cpl
    ld h, b
    jr nz, jr_00c_4ae1

    cpl
    ld h, b
    nop
    ld h, b
    jr nz, jr_00c_4ae6

    ccf
    nop
    nop
    nop
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    ld [bc], a
    inc b
    ld b, $f8
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    jr nc, jr_00c_4aa3

jr_00c_4aa3:
    ld h, $00
    ld l, $00
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    inc c
    nop
    ld h, h
    nop
    ld [hl], h
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld l, $00
    ld h, $00

jr_00c_4ac3:
    jr nc, jr_00c_4ac5

jr_00c_4ac5:
    ld e, $00
    nop
    nop

jr_00c_4ac9:
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld [hl], h
    nop
    ld h, h
    nop
    inc c
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_4add:
    jr jr_00c_4adf

jr_00c_4adf:
    ld e, d
    nop

jr_00c_4ae1:
    jr jr_00c_4ae3

jr_00c_4ae3:
    ld e, d
    nop
    ld e, d

jr_00c_4ae6:
    nop
    jr jr_00c_4ae9

jr_00c_4ae9:
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    ld [$5500], a
    nop
    cp e
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, h
    nop
    ld de, $4400
    nop
    ld e, [hl]
    nop
    ld b, [hl]
    nop
    ld e, [hl]
    nop
    ld b, [hl]
    nop
    ld e, [hl]
    nop
    ld b, [hl]
    nop
    ld e, [hl]
    nop
    ld b, [hl]
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    or $00
    db $ec
    nop
    ret c

    nop
    or b
    nop
    rra
    nop
    adc a
    nop
    rst $00
    nop
    db $e3
    nop
    ld [hl], c
    nop
    jr c, jr_00c_4b57

jr_00c_4b57:
    call c, $0e00
    nop
    ld h, e
    nop
    ret nz

    nop
    adc a
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst $30
    nop
    inc bc
    nop
    db $fd
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    rra
    nop
    add b
    nop
    rst $00
    nop
    ld h, b
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    ld bc, $fb00
    nop
    rlca
    nop
    or c
    nop
    ret c

    nop
    db $ec
    nop
    or $00
    ei
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    xor $00
    inc e
    nop
    jr c, jr_00c_4bb1

jr_00c_4bb1:
    ld [hl], c
    nop
    db $e3
    nop
    rst $00
    nop
    adc a
    nop
    rra
    nop
    ld e, [hl]
    nop
    ld b, [hl]
    nop
    ld e, l
    nop
    ld b, e
    nop
    ld d, [hl]
    nop
    ld c, h
    nop
    ld e, b
    nop
    jr nc, jr_00c_4bcb

jr_00c_4bcb:
    jr nc, jr_00c_4bcd

jr_00c_4bcd:
    ld e, b
    nop
    ld c, h
    nop
    ld b, [hl]
    nop
    ld e, e
    nop
    ld b, l
    nop
    ld e, [hl]
    nop
    ld b, [hl]
    nop
    ld e, $00
    add [hl]
    nop
    add $00
    ldh [c], a

jr_00c_4be2:
    nop
    ld [hl], b
    nop
    jr c, jr_00c_4be7

jr_00c_4be7:
    call c, $0e00
    nop
    adc $00
    inc e
    nop
    cp b
    nop
    ld [hl], b
    nop
    ldh [c], a
    nop
    add $00
    adc [hl]
    nop
    ld b, $00
    jr nz, jr_00c_4c5d

    cpl
    ld h, b
    jr nz, jr_00c_4c61

    cpl
    ld h, b
    jr nz, jr_00c_4c65

    cpl
    ld h, b
    jr nz, jr_00c_4c69

    cpl
    ld h, b
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    ld [bc], a

jr_00c_4c10:
    inc b
    ldh a, [c]
    inc b
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    ld [bc], a
    inc b
    ldh a, [c]
    inc b
    inc c
    ld [$080c], sp
    inc c
    ld [$0406], sp
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ldh [rP1], a
    ret nc

    ld h, b
    ldh a, [$ff60]
    ld [hl], b
    nop
    ld bc, $8300
    nop
    db $fd
    add e
    ld a, [hl]
    ld a, [hl]
    ret nz

    nop
    ret nc

    jr nc, jr_00c_4c10

    jr nc, jr_00c_4be2

    ld h, b
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld b, l
    cp e
    and d
    reti


    sbc c
    add $84
    call z, Call_00c_6ca8
    ld c, b
    inc l
    jr z, jr_00c_4c5c

jr_00c_4c5c:
    nop

jr_00c_4c5d:
    add hl, hl
    sbc e
    ldh a, [rNR10]

jr_00c_4c61:
    ldh [$ffe4], a
    ld e, $10

jr_00c_4c65:
    ld c, $0e
    nop
    nop

jr_00c_4c69:
    nop
    nop
    nop
    nop
    ld [hl], d
    ld c, [hl]
    ret


    add a
    push bc
    add e
    push bc
    or e
    push bc
    or e
    ld a, [hl]
    ld b, d
    cp h
    inc a

jr_00c_4c7b:
    ld d, e
    rrca
    add b
    ld c, h
    nop
    xor b
    ld [hl], b
    and b
    ld [hl], b
    sub b
    ld h, b
    add a
    ld e, a
    adc b
    ld h, a
    and a
    ld [hl], b
    xor b
    ld [hl], b
    nop
    nop
    dec d
    ld c, $05
    ld c, $09
    ld b, $e1
    ld a, [$e611]
    push hl
    ld c, $15
    ld c, $00
    nop
    ld b, b
    add c
    db $e3
    ld b, c
    ld h, e
    ld sp, $3912
    dec c
    jr jr_00c_4cb5

    nop
    ld [hl], l
    inc bc
    ld l, d
    pop af
    inc b
    ld [bc], a
    ld c, $04
    inc c

jr_00c_4cb5:
    jr jr_00c_4cc7

    jr c, jr_00c_4d19

    jr nc, @-$5e

    nop
    ld e, h
    add b
    xor h
    ld e, $05
    inc bc
    ld a, [bc]
    nop
    dec c
    jr jr_00c_4cd9

jr_00c_4cc7:
    add hl, sp
    ld h, e
    ld sp, $41e3
    ld b, b
    add c
    nop
    nop
    ld b, b
    add b
    and b
    nop
    ld h, b
    jr nc, jr_00c_4ce7

    jr c, jr_00c_4ce5

jr_00c_4cd9:
    jr jr_00c_4ce9

    inc b
    inc b
    ld [bc], a
    nop
    nop
    ld e, d
    inc a
    add b
    nop
    dec l

jr_00c_4ce5:
    sbc [hl]
    nop

jr_00c_4ce7:
    add b
    sub [hl]

jr_00c_4ce9:
    adc a
    ret nz

    add b
    sub a
    rst $08
    db $eb
    rst $00
    ld bc, $1657
    ld b, c
    ld bc, $1c40
    jr c, jr_00c_4c7b

    inc b
    add hl, bc
    ld [bc], a
    ld d, h
    sbc c
    xor d
    call z, $ea80
    ld l, b
    add d
    add b
    ld [bc], a
    jr jr_00c_4d44

    ld hl, $5040
    add b
    xor d
    add hl, de
    ld d, l
    inc sp
    ld e, d
    inc a
    ld bc, $b500
    ld a, b
    ld bc, $6800

jr_00c_4d19:
    pop af
    nop
    ld bc, $f1ea
    call nc, $a9e3
    inc sp
    ld e, d
    sub c
    ld de, $5210
    sub d
    dec b
    inc de
    ld d, d
    adc c
    ld c, c
    add h
    and h
    jp nz, $c6d4

    db $e4
    or [hl]
    ld d, b
    ld h, l
    and c
    ld b, d
    dec bc
    dec b

jr_00c_4d3a:
    rst $00
    ld [$d50e], a
    dec e
    dec hl
    ld [hl+], a
    ld l, c
    dec h
    ld l, h

jr_00c_4d44:
    ld c, d
    and [hl]
    inc b
    inc bc
    and b
    ret nz

    ld d, h
    ld h, e
    and e
    jr nc, jr_00c_4d93

    sub b
    xor c
    call nz, $8942
    add b
    ld [$4902], sp
    ld b, b
    adc b
    sub d
    ld bc, $0122
    ld b, l
    inc bc
    and h
    jp nz, $8449

    ld d, d
    adc c
    dec b
    inc de
    ld d, d
    sub d
    ld de, $5210
    sub c
    and l
    inc sp
    ld c, $29
    dec h
    call z, $e6ca
    inc b
    inc bc
    jr nz, jr_00c_4d3a

    ld d, l
    ld h, b
    and d
    inc [hl]
    ld b, d
    sub h
    call nc, $a300
    nop
    ld b, h
    inc bc
    add b
    nop
    inc b
    inc bc
    xor d
    ld b, $45
    inc l
    ld b, d
    add hl, hl
    ld b, l
    inc bc
    ld [hl+], a

jr_00c_4d93:
    ld bc, $0192
    ld c, b
    add b
    ld [bc], a
    ld c, c
    add b
    ld [$8942], sp
    xor c
    call nz, $e7cb
    and a
    rst $08
    ld b, b
    add b
    sub [hl]
    rrca
    nop
    nop
    dec l
    ld e, $00
    nop
    ld e, d
    inc a
    and h
    ret z

    ld c, b
    sub b
    ld bc, $8200
    nop
    inc h
    jr jr_00c_4dfb

    nop
    ld b, c
    nop
    ld d, [hl]
    ld bc, $1325
    ld [de], a
    add hl, bc
    add b
    nop
    ld b, c
    nop
    inc h
    jr jr_00c_4dcd

    nop
    add d

jr_00c_4dcd:
    nop
    ld l, d
    add b
    call nc, $eae3
    pop af
    ld [bc], a
    ld bc, $f16a
    ld bc, $b500
    ld a, b
    ld bc, $5a00
    inc a
    nop
    nop
    ld b, b
    ccf
    ld a, [hl-]
    ld a, a
    ld a, d
    ld a, a
    rrca
    ld [hl], b
    ld a, b
    nop
    ld a, h
    nop
    dec b
    ld a, b
    nop
    nop
    nop
    rst $38
    ld e, l
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop

jr_00c_4dfb:
    nop
    jr nz, jr_00c_4e16

    ld sp, hl
    inc h
    nop
    nop
    nop
    rst $38
    ld e, l
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld b, d
    call c, $0042
    nop
    inc b
    ld hl, sp+$42
    db $fc

jr_00c_4e16:
    ld d, d
    db $fc
    cp $00
    nop
    nop
    ld a, $00
    ld a, $00
    ld [hl], l
    ld a, b
    ld h, d
    ld a, h
    ld a, d
    ld a, h
    ccf
    ld a, a
    nop
    ccf
    dec sp
    nop
    nop
    nop
    nop
    nop
    db $e4
    ld b, d
    sbc h
    ld b, d
    rst $18
    nop
    sbc $ff
    nop
    rst $38
    ld a, $00
    nop

jr_00c_4e3d:
    nop
    nop
    nop
    jp hl


    inc h
    db $e3
    jr @+$01

    nop
    sbc $ff
    nop
    rst $38
    ld a, $00
    nop
    nop
    nop
    nop
    ld h, $18
    ld d, [hl]
    jr c, jr_00c_4eab

    jr c, jr_00c_4e3d

    ld hl, sp+$0c
    ldh a, [$ffdc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2e06], sp
    ld e, $1e
    ld l, $78
    ld [hl], $32
    ld a, b
    inc [hl]
    ld a, b
    nop
    nop
    nop
    nop
    db $10
    ld h, b
    ld [hl], h
    ld a, b
    ld a, b
    ld [hl], h
    ld e, $6c
    ld c, h
    ld e, $2c
    ld e, $00
    nop
    nop
    nop
    inc [hl]
    ld a, b
    ld [hl-], a
    ld a, b
    ld a, b
    ld [hl], $1e
    ld l, $2e
    ld e, $08
    ld b, $00
    nop
    nop
    nop
    inc l
    ld e, $4c
    ld e, $1e
    ld l, h
    ld a, b
    ld [hl], h
    ld [hl], h
    ld a, b
    db $10
    ld h, b
    nop
    nop
    jr jr_00c_4ea2

jr_00c_4ea2:
    inc h
    jr jr_00c_4eff

    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d

jr_00c_4eab:
    inc a
    ld e, d
    inc a
    nop
    nop
    ld e, a
    rst $38
    add a
    ld bc, $0187
    and a
    dec d
    adc e
    dec d
    xor a
    add hl, de
    and e
    dec d
    xor a
    dec b
    add sp, -$02
    ld [bc], a
    add b
    ld a, [hl+]
    add b
    ld a, [bc]
    and b
    ld [de], a
    and b
    ld [de], a
    and b
    ld [hl-], a
    add b
    ld [bc], a
    add b
    add a
    ld de, $15a3
    adc a
    add hl, de
    adc a
    ld hl, $05a7
    add e
    dec d
    add a
    ld bc, $ff5f
    ld [hl+], a
    add b
    ld a, [bc]
    and b
    ld [hl+], a
    add b
    ld a, [bc]
    add b
    ld [hl+], a
    adc b
    ld a, [bc]
    and b
    ld [bc], a
    add b
    add sp, -$02
    nop
    nop
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop

jr_00c_4eff:
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
    ld e, d
    inc a
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld bc, $7d7e
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld b, d
    ld e, l
    ld b, d
    nop
    nop
    ld a, a
    nop
    ld b, [hl]
    add hl, sp
    ld e, l
    dec sp
    ld h, [hl]
    add hl, de
    ld e, l
    dec sp
    ld e, l
    dec sp
    ld e, l
    dec sp
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
    rst $38
    rst $38
    add e
    rst $38
    rst $00
    nop
    nop
    sbc $00
    ld [bc], a
    call c, $9c4a
    add $18
    ld c, d
    sbc h
    ld c, d
    sbc h
    ld c, d
    sbc h
    ld h, l
    ld e, d
    ld a, c
    ld e, [hl]
    ld a, a
    nop
    nop
    nop
    ld a, [hl]
    inc a
    inc h
    ld e, d
    jr nz, jr_00c_4fb8

    ld e, e
    nop
    ld e, l
    dec sp
    ld h, d
    add hl, de
    ld e, e
    jr c, jr_00c_4fdf

    nop
    ld d, b
    xor a
    xor a
    rst $38
    ld [$afa7], sp
    nop
    rst $38
    rst $28
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld c, d
    sbc h
    add $18
    ld a, [hl+]
    inc e
    ld [$0a1c], a
    db $fc
    ld a, [$06f4]
    ld hl, sp-$04
    nop
    nop
    nop
    ld [hl], l
    dec bc
    ld [hl], l
    dec bc
    ld [hl], l
    dec bc
    ld h, $00
    ld hl, $5206
    daa
    ld d, d
    daa
    nop
    nop
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld [hl], e
    nop
    ld a, [bc]
    ld [hl], c
    ld sp, $317b
    ld a, e
    nop
    nop
    or $ff
    or $ff
    or $ff

jr_00c_4fb8:
    adc $00
    ld d, b
    adc [hl]
    adc h
    sbc $8c
    sbc $00
    nop
    xor [hl]
    ret nc

    xor [hl]
    ret nc

    xor [hl]
    ret nc

    ld h, h
    nop
    add h
    ld h, b
    ld c, d
    db $e4
    ld c, d
    db $e4
    ld d, d
    daa
    ld d, d
    daa
    ld d, d
    daa
    ld hl, $2606
    nop
    ld [hl], l
    dec bc
    ld [hl], l
    dec bc
    ld a, [bc]

jr_00c_4fdf:
    ld bc, $7b31
    ld sp, $317b
    ld a, e
    ld a, [bc]
    ld [hl], c
    ld [hl], e
    nop
    ld l, a
    rst $38
    ld l, a
    rst $38
    sub b
    ld l, a
    adc h
    sbc $8c
    sbc $8c
    sbc $50
    adc [hl]
    adc $00
    or $ff
    or $ff
    add hl, bc
    or $4a
    db $e4
    ld c, d
    db $e4
    ld c, d
    db $e4
    add h
    ld h, b
    ld h, h
    nop
    xor [hl]
    ret nc

    xor [hl]
    ret nc

    ld d, b
    add b
    ld d, l
    nop
    xor a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    and l
    nop
    jp hl


    nop
    db $e3
    nop
    ld d, a
    nop
    ei
    nop
    ld sp, hl
    nop
    di
    nop
    rst $08
    nop
    ld d, l
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
    ld d, h
    nop
    xor d
    nop
    db $f4
    nop
    ld a, [$fc00]
    nop
    ld a, [$fc00]
    nop
    ld a, [$7f00]
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    xor d
    nop
    ld d, l
    nop
    nop
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
    xor d
    nop
    ld d, l
    nop
    nop
    nop
    db $fc
    nop
    ld a, [$f400]
    nop
    ld [$ec00], a
    nop
    jp nc, Jump_000_0400

    nop
    nop
    nop
    ld a, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld e, h
    nop
    ld e, h
    nop
    ld d, h
    nop
    ld c, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld e, h
    nop
    ld c, h
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld b, h
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld a, $00
    jr nc, jr_00c_50ab

jr_00c_50ab:
    inc a
    nop
    ld a, $00
    ld [hl], $00
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, $00
    ld [hl], $00
    ld [hl], $00
    ld b, $00
    ld c, $00
    ld b, $00
    ld b, $00
    ld [hl], $00
    ld a, $00
    sbc h
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
    inc a
    nop
    ld a, [hl]
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    inc e
    nop
    jr c, jr_00c_50e5

jr_00c_50e5:
    ld [hl-], a
    nop
    ld a, $00
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
    jr c, jr_00c_50f7

jr_00c_50f7:
    ld a, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld h, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld l, h
    nop
    ld c, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    rst $30
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld a, h
    nop
    add hl, sp
    nop
    ld bc, $0000
    nop
    nop
    jr z, jr_00c_5152

jr_00c_5152:
    ld a, a
    nop
    ld e, a
    nop
    ld l, h
    nop
    ld l, b
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    cp $00
    ld a, d
    nop
    halt
    nop
    ld [hl], $00
    ld a, [de]
    nop
    ld b, $00
    ld [bc], a
    nop
    dec a
    nop
    ld d, b
    dec l
    sub c
    ld a, e
    xor a
    ld a, e
    sbc l
    ld [hl], a
    xor a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld c, a
    db $fc
    nop
    ld c, $f0
    ld d, h
    ld hl, sp-$56
    db $fc
    call nc, $eaf8
    call c, $e8e4
    ldh [$fff0], a
    rra
    ccf
    xor d
    ld e, a
    push bc
    ccf
    jr z, jr_00c_51ef

    sub l
    ld a, [hl+]
    ld d, h
    ld bc, $002a
    nop
    nop
    sub $e8
    xor h
    ldh a, [rSC]
    ld hl, sp+$2c
    ret nc

    ld e, d
    and b
    sub h
    ld b, b
    xor b
    nop
    nop
    nop
    ld e, a
    rrca
    or l
    ld d, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38

jr_00c_51ef:
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    inc bc
    rst $38
    rst $30
    rst $38
    rst $08

Call_00c_5208:
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp b
    rst $38
    jp $efff


    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
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
    rst $00
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    rst $28
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    cp h
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    di
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    pop af
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc bc
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
    rra
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    dec b
    or $0a
    db $ec
    inc d
    ret c

    nop
    add b
    ld b, b
    ld a, a
    and b
    ret nz

    ld c, [hl]
    add b
    sub h
    inc c
    add hl, hl
    jr jr_00c_53a4

    ld sp, $63a5
    nop
    nop
    nop
    rst $38
    nop
    nop
    halt
    nop
    xor b
    ld l, [hl]
    ld d, b
    db $dd
    and l
    cp c
    ld c, l
    ld [hl], c
    nop
    nop
    rst $38
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
    rst $38
    nop
    nop
    sbc a
    nop
    db $10
    rst $28
    rst $38
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    nop
    ld a, a
    nop
    inc bc
    inc b
    reti


    jp z, $ecec

    xor $ec
    xor $ec
    xor $ec
    xor $00
    add b
    ld b, b
    ld a, a
    and b
    ret nz

    ld b, e
    add b
    add b
    nop
    rla
    rrca
    nop
    nop
    ld e, a

jr_00c_53a4:
    ccf
    nop
    nop
    rlca
    ld hl, sp+$04
    rlca
    ldh a, [rTAC]
    rrca
    ld [$efc0], sp
    rra
    db $10
    adc a
    ret nc

    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    sbc c
    db $e3
    inc sp
    ld b, e
    ld [hl+], a
    add e
    ld [bc], a
    rst $00
    db $e4
    rlca
    inc bc
    db $f4
    rst $28
    nop
    ldh [rP1], a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld [$f7f7], sp
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$f7f7], sp
    nop
    rst $28
    nop
    nop
    nop
    ld [bc], a
    db $ec
    db $ec
    xor $02
    db $ec
    ld [bc], a
    db $ec
    ld c, $e0
    xor $00
    call c, RST_00
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
    nop
    rrca
    nop
    ld hl, sp+$07
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    nop
    pop af
    db $fd
    cp $ee
    rst $08
    ld a, a
    ld a, a
    ld a, e
    or e
    rst $38
    rst $18
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ei
    ld a, c
    ld a, a
    cp a
    cp [hl]
    sbc $df
    rst $28
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    add b
    sbc $c0
    ldh [$ff6f], a
    rst $38
    rst $30
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
    add hl, bc
    inc bc
    ldh a, [rDIV]
    db $f4
    db $f4
    nop
    nop
    rrca
    nop
    nop
    pop af
    db $fd
    cp $ee
    rst $08
    ld a, [hl]
    ld a, [hl]
    add hl, sp
    or b
    ret nc

    sub b
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    bit 1, c
    db $10
    jr nc, jr_00c_5475

    ld c, b
    ld c, h
    ld c, c

jr_00c_5475:
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    add b
    ld e, [hl]
    ld b, b
    and b
    cpl
    rrca
    rlca
    rst $38
    nop
    nop
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
    nop
    nop
    cp $1c
    nop
    rst $38
    rst $38
    rst $38
    ld b, $01
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $30
    nop
    rst $30
    ei
    ei
    nop
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    sub b
    nop
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    inc bc
    ld bc, $fefc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    push bc
    ld b, b
    sla e
    inc sp
    scf
    rla
    ld b, $46
    jr nc, jr_00c_5557

    inc b
    ld [hl], h
    ld e, c
    dec sp
    sbc b
    cp h
    inc d
    call z, $e3e2
    ei
    ld sp, hl
    jr c, jr_00c_5527

    inc bc
    dec sp
    jr jr_00c_550e

    add e
    reti


    rla
    ldh [$ffe8], a
    di
    ld h, e
    ld l, e
    ld b, h
    ld b, b
    ld b, b
    call nc, $d4d0
    nop
    call nc, $c0c4
    db $fc
    nop
    nop
    rrca
    pop af
    nop
    nop
    cp $ff

jr_00c_550e:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    nop
    nop
    sbc a
    rst $20
    nop
    nop
    ld a, e
    db $fd
    cp l
    nop
    sbc $ff
    rst $28
    rst $38
    rst $30
    ld a, a
    nop

jr_00c_5527:
    nop
    sbc a
    rst $20
    nop
    nop
    ei
    db $fd
    db $fd
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_00c_5534:
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    pop af
    nop
    nop
    cp $ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    scf

jr_00c_5557:
    ld h, $8f
    ret nz

    ld de, $4000
    rst $38
    cp a
    nop
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    jr nz, jr_00c_5534

    ld l, l
    add b
    or $00
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add sp, $08
    di
    rst $30
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    pop bc
    inc e
    cp [hl]
    and d
    ld [$001c], sp
    nop
    nop
    nop
    nop
    ld b, l
    db $10
    ld [$00aa], sp
    rst $30
    nop
    ei
    ei
    nop
    nop
    nop
    ld a, [hl+]
    inc e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    inc bc
    ld bc, $d805
    jp z, $ecec

    xor $ec
    xor $ec
    xor $ec
    xor $00
    rlca
    sub b
    ldh [$ffe4], a
    ld hl, sp-$07
    ld a, [hl]
    cp [hl]
    ld a, a
    rst $08
    ld a, a
    or e
    ld a, a
    adc h
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld b, d
    add c
    sub b
    ldh [$ffe4], a
    ld hl, sp-$07
    cp $00
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc h
    db $e3
    adc c
    ld a, b
    ld [hl+], a
    ld e, $08
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld b, h
    call z, $f311
    ld b, h
    inc a
    sub c
    adc a
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld c, b
    call nz, Call_000_3112
    ld b, h

jr_00c_5612:
    call z, Call_000_3311
    nop
    rst $38
    nop
    ld bc, $00fe
    nop
    nop
    adc d
    ld b, h
    ld [hl+], a
    db $10
    adc b
    ld b, h
    ld [hl+], a
    db $10
    add e
    ld a, a
    ret nz

    ccf
    or b
    ld c, a
    call z, $f333
    inc c
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    ld a, $ff
    rst $08
    rst $38
    inc sp
    rst $38
    inc c
    rst $38
    inc bc
    rst $38

jr_00c_563f:
    ret nz

    ccf
    jr nc, jr_00c_5612

    call z, Call_00c_4233
    add c
    sub b
    ldh [$ffe4], a
    ld hl, sp-$07
    cp $3e
    rst $38
    rst $08
    rst $38
    inc sp
    rst $38
    inc c
    rst $38
    inc h
    db $e3
    adc c
    ld a, b
    ld [hl+], a
    ld e, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, h
    call z, $f311
    ld b, h
    inc a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld c, b
    call nz, Call_000_3012
    ld b, h

jr_00c_567a:
    call z, RST_00
    jr nz, jr_00c_563f

    add sp, -$10
    db $f4
    ld hl, sp+$78
    db $fc
    rrca
    nop
    jp Jump_000_1000


    ldh [$fff5], a
    ld hl, sp-$06
    ld a, b
    ld a, l
    cp [hl]
    cp [hl]
    sbc $df
    rst $28
    di
    inc c
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    inc sp
    nop
    adc h
    nop
    ld b, e
    add b
    inc bc
    rst $38
    ret nz

    ccf
    jr nc, jr_00c_567a

    call z, $f333
    inc c
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp d
    db $fc
    ld e, d
    db $fc
    ld a, [de]
    db $fc
    ld a, [de]
    db $fc
    ld a, [de]
    db $fc
    sbc d
    ld a, h
    ld e, d
    cp h
    jp c, Jump_000_003c

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
    inc b
    inc bc
    dec d
    ld [$ff00], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$8207], sp
    ld [hl], b
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    nop

jr_00c_56f9:
    nop
    nop
    nop
    nop
    ld [$20f0], sp
    rlca
    ld [hl+], a
    nop
    ld [hl+], a
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
    add b
    nop
    db $10
    ld h, b
    ld d, h
    ld [$80a0], sp
    jr jr_00c_56f9

    db $fc
    ldh a, [rP1]
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    nop
    jr nc, jr_00c_5729

jr_00c_5729:
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
    nop
    nop
    jp c, $da3c

    inc a
    ld e, d
    inc a
    jp c, Jump_00c_5a3c

    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    dec [hl]
    nop
    dec [hl]
    nop
    dec [hl]
    nop
    dec [hl]
    nop
    inc [hl]
    nop
    jr nc, jr_00c_5761

jr_00c_5761:
    ld hl, $0500
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld d, h
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    ld d, $00
    ld b, $00
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    ld h, c
    nop
    nop
    sbc b
    and $00
    nop
    ei
    db $fd
    db $fd
    nop

jr_00c_5790:
    nop
    rst $38
    rst $38
    rst $38

jr_00c_5794:
    rst $38
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld d, e
    rrca
    xor d
    ld d, a
    nop
    ld a, d
    nop
    ld h, d
    nop
    ld a, d
    nop
    ld h, d
    nop
    ld a, d
    nop
    ld h, d
    nop
    ld a, d
    nop
    ld h, d
    nop
    nop
    ld bc, $4101
    ld hl, $1121
    dec d
    ld b, $0e
    rrca
    rra
    rrca
    rra
    ld c, a
    rst $18
    nop
    nop
    nop
    inc b
    ld [$5008], sp
    db $10
    jr nz, jr_00c_5794

    sub b
    ldh [$ff90], a
    ldh [$ff94], a
    and $07
    rra
    db $10
    rlca
    ld [$170b], sp
    db $10
    jr nz, jr_00c_5804

    ld bc, $0041
    ld bc, $0000
    db $10
    ldh [rNR10], a
    ret nz

    jr nz, jr_00c_5790

    ret nc

    db $10
    ld [$0008], sp
    inc b
    nop
    nop
    nop
    nop
    ccf
    ld h, b
    cpl
    ld e, a
    db $10
    ld c, a
    jr nz, jr_00c_5862

    jr z, jr_00c_5874

jr_00c_5804:
    ld a, [hl+]
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    db $fc
    ld b, $f4
    ld a, [$f208]
    inc b
    ld b, $14
    ld c, $54
    ld c, $54
    ld c, $54
    ld c, $3f
    nop
    ld l, a
    nop
    ld c, h
    nop
    ld a, e
    nop
    ld [hl], b
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop
    ld [hl], a
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld sp, hl
    nop
    inc bc
    nop
    di
    nop
    ldh a, [rP1]
    rst $28
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    cp $00
    ei
    nop
    add hl, bc
    nop
    rst $00
    nop

jr_00c_5862:
    inc bc
    nop
    di
    nop
    inc bc
    nop
    di
    nop
    ld [hl], b
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop

jr_00c_5874:
    ld [hl], a
    nop
    ld [hl], b
    nop
    ld [hl], a
    nop
    nop
    nop
    cp l
    nop
    ld h, [hl]
    nop
    ld e, d
    nop
    ld b, d
    nop
    ld a, [de]
    nop
    ld b, $00
    db $ed
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    inc bc
    nop
    di
    nop
    inc bc
    nop
    di
    nop
    inc bc
    nop
    di
    nop
    inc bc
    nop
    di
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0719
    ld d, $0f
    add hl, hl
    rra
    dec hl
    rra
    ld d, a
    ccf
    nop
    nop
    db $fc
    nop
    ld bc, $fcfc
    db $fd
    inc bc
    db $fd
    cp $fd
    rst $38
    db $fd
    rst $38
    db $fd
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    ccf
    nop
    add b
    ccf
    ccf
    cp a
    ret nz

    cp a
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    nop
    nop
    add b
    nop
    ld h, b
    add b
    sbc b
    ldh [rBCPS], a
    ldh a, [$ff94]
    ld hl, sp-$2c
    ld hl, sp-$16
    db $fc
    rlca
    nop
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    rlca
    nop
    ldh [rP1], a
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ldh [rP1], a
    dec hl
    rra
    rrca
    nop
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    call nc, $f0f8
    nop
    xor l
    ldh a, [$ffa4]
    ld sp, hl
    db $d3
    db $fd
    adc $fd
    di
    db $fd
    rst $38
    db $fd
    dec hl
    rra
    rrca
    nop
    or l
    rrca
    dec h
    sbc a
    res 7, a
    ld [hl], e
    cp a
    rst $08
    cp a
    rst $38
    cp a
    call nc, $f0f8
    nop
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    add h
    ld a, l
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld a, l
    nop
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    rrca
    nop
    dec hl
    rra
    rst $38
    db $fd
    di
    db $fd
    adc $fd
    db $d3
    db $fd
    and h
    ld sp, hl
    xor l
    ldh a, [$fff0]
    nop
    call nc, $fff8
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    cp a
    rst $08
    cp a
    ld [hl], e
    cp a
    res 7, a
    dec h
    sbc a
    or l
    rrca
    rrca
    nop
    dec hl
    rra
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ldh a, [rP1]
    call nc, Call_000_2bf8
    rra
    dec hl
    rra
    dec hl
    rra
    dec hl
    rra
    dec hl
    rra
    dec hl
    rra
    dec hl
    rra
    dec hl
    rra
    call nc, $d4f8
    ld hl, sp-$2c
    ld hl, sp-$2c
    ld hl, sp-$2c
    ld hl, sp-$2c
    ld hl, sp-$2c
    ld hl, sp-$2c
    ld hl, sp+$57
    ccf

Jump_00c_5a3c:
    dec hl
    rra
    add hl, hl
    rra
    ld d, $0f
    add hl, de
    rlca
    ld b, $01
    ld bc, $0000
    nop
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fd
    inc bc
    db $fd
    db $fc
    db $fd
    ld bc, $fcfc
    nop
    nop
    nop
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    cp a
    ret nz

    cp a
    ccf
    cp a
    add b
    ccf
    ccf
    nop
    nop
    nop
    ld [$d4fc], a
    ld hl, sp-$6c
    ld hl, sp+$68
    ldh a, [$ff98]
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    ld d, $2f
    ld d, $2f
    ld d, $2f
    ld d, $2f
    ld d, $2f
    ld d, $2f
    ld d, $2f
    ld d, $2f
    adc b
    db $f4
    adc b
    db $f4
    adc b
    db $f4
    adc b
    db $f4
    adc b
    db $f4
    adc b
    db $f4
    adc b
    db $f4
    adc b
    db $f4
    nop
    nop
    dec hl
    rra
    ld d, a

jr_00c_5a9f:
    ccf
    nop
    nop
    jr nz, jr_00c_5aa8

    ld d, a
    ccf
    dec hl
    rra

jr_00c_5aa8:
    nop
    nop
    nop
    nop
    call nc, $eaf8
    db $fc
    nop
    nop
    inc b
    jr nz, jr_00c_5a9f

    db $fc
    call nc, Call_000_00f8
    nop
    nop
    nop
    jr nc, jr_00c_5acc

    ld l, l
    dec e
    ld e, e
    add hl, sp
    scf
    ld [hl], e
    cpl
    ld h, a

jr_00c_5ac6:
    rra
    ld e, a
    rra
    ccf
    nop
    nop

jr_00c_5acc:
    nop
    ld [$eaff], a
    ldh [$ffea], a
    ld [$e0e0], a
    ldh [$ffea], a
    ldh [rP1], a
    ld [$0000], a
    dec hl
    rra
    rlca
    nop
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    inc bc
    nop
    nop
    nop
    call nc, $e0f8
    nop
    ld [$eafc], a
    db $fc
    ld [$eafc], a
    db $fc
    ret nz

    nop
    nop
    nop
    xor d
    inc e
    ld bc, $2f80
    rra
    rlca
    nop
    cpl
    rra
    xor a
    rra
    ld a, [hl+]
    sbc d
    inc bc
    rlca
    add d
    dec bc
    dec c
    sbc h
    adc d
    call z, Call_00c_6044
    jr nz, jr_00c_5ac6

    sub b
    ret c

    jp nz, Jump_00c_43ec

    inc bc
    and b
    dec de
    ld e, e
    jr c, jr_00c_5b79

    inc a
    ld e, c
    ld a, $3e
    nop
    ld e, c
    ld a, $59
    ld a, $ea
    db $fc
    ld a, [bc]
    db $fc
    ld [$001c], a
    nop
    jr z, jr_00c_5b4c

    ld [bc], a
    inc b
    jr nz, jr_00c_5b50

    ld a, [bc]
    inc c
    nop
    nop

Jump_00c_5b3c:
    jr nz, jr_00c_5b5d

    ld c, a
    ccf
    db $10
    ld [hl], b
    inc h
    ld h, e
    jr nz, jr_00c_5ba6

    dec hl
    ld h, a
    jr nz, jr_00c_5baa

    nop
    nop

jr_00c_5b4c:
    nop
    rst $38
    rst $38
    rst $38

jr_00c_5b50:
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc b

jr_00c_5b5d:
    ld hl, sp-$0e
    db $fc
    ld [$240e], sp
    add $04
    ld b, $d4
    and $04
    ld b, $2b
    ld h, a
    jr nz, jr_00c_5bce

    inc h
    ld h, e
    jr nz, jr_00c_5bd2

    db $10
    ld [hl], b
    ld c, a
    ccf
    jr nz, jr_00c_5b97

    nop

jr_00c_5b79:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    call nc, Call_000_04e6
    ld b, $24
    add $04
    ld b, $08
    ld c, $f2
    db $fc
    inc b

jr_00c_5b97:
    ld hl, sp+$00
    nop
    jr jr_00c_5b9c

jr_00c_5b9c:
    or a
    nop
    ld h, b
    nop
    ld e, a
    nop
    ld b, b
    nop
    ld a, [hl]
    nop

jr_00c_5ba6:
    nop
    nop
    rst $38
    nop

jr_00c_5baa:
    ld b, $00
    ld a, [de]
    nop
    ld b, d
    nop
    ld e, d
    nop
    ld h, [hl]
    nop
    cp l
    nop
    nop
    nop
    rst $38
    nop
    ld e, [hl]
    ccf
    ld e, l
    ld a, $00
    nop
    ld a, [hl+]
    inc e
    inc d
    ld [$1c2a], sp
    inc d
    ld [$1c2a], sp
    ld [$0000], a
    nop

jr_00c_5bce:
    nop
    nop
    jr jr_00c_5bff

jr_00c_5bd2:
    db $10
    dec l
    ld hl, $1212
    inc c
    nop
    nop
    ld d, a
    ccf
    ld d, a
    ccf
    ld d, a
    ccf
    scf
    rra
    rla
    ld c, a
    cpl
    daa
    rst $00
    db $d3
    xor e
    jp $fcea


    ld [$f8fc], a
    ldh [$ffea], a
    call c, $dcea
    ld [$f8dc], a
    ldh [$ffea], a
    db $fc
    db $10
    adc d
    nop
    add b
    adc e

jr_00c_5bff:
    rlca
    dec h
    inc hl
    ld [de], a
    ld sp, $18a9
    inc d
    inc c
    nop
    nop
    inc b
    add sp, $13
    jr jr_00c_5bff

    ei
    di
    ei
    inc bc
    ei
    ldh a, [$ff0b]
    ei
    nop
    nop
    nop
    ld [hl+], a
    inc e
    add b
    nop
    ld a, [hl+]
    add b
    add b
    xor d
    xor c
    xor e
    nop
    and l
    and l
    nop
    nop
    nop
    jr nz, jr_00c_5c3c

    ld c, b
    inc c
    sub d
    jr nc, jr_00c_5c51

    xor b
    ld b, h
    ld d, b
    ld [$2040], sp
    nop
    nop
    nop
    dec hl
    ld h, a

jr_00c_5c3c:
    jr nz, jr_00c_5c9e

    dec hl
    ld h, a
    jr nz, jr_00c_5ca2

    dec hl
    ld h, a
    jr nz, jr_00c_5ca6

    dec hl
    ld h, a
    jr nz, jr_00c_5caa

    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop

jr_00c_5c51:
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    call nc, Call_000_04e6
    ld b, $d4
    and $04
    ld b, $d4
    and $04
    ld b, $d4
    and $04
    ld b, $70
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop
    ld a, e
    nop
    ld c, h
    nop
    ld l, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    di
    nop
    inc bc
    nop
    rst $00
    nop
    add hl, bc
    nop
    ei
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_00c_5c9e:
    rst $38
    rst $38
    rst $38
    nop

jr_00c_5ca2:
    nop
    nop
    rst $38
    nop

jr_00c_5ca6:
    nop
    rst $38
    rst $38
    rst $38

jr_00c_5caa:
    nop
    nop
    ld [$f7f7], sp
    rst $38
    rst $30
    nop
    nop
    nop
    rst $30
    nop
    ld [$f7f7], sp
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    nop
    rst $30
    rst $38
    rst $30
    rst $38
    ld [$f7f7], sp
    nop
    nop
    nop
    ld [$f7f7], sp
    nop
    nop
    nop
    ld b, a
    rrca
    rst $18
    ld e, h
    nop
    nop
    nop
    and $00
    ld [$fbf3], sp
    db $fd
    db $fd
    cp $02
    db $fc
    db $fc
    cp $02
    db $fc
    nop
    nop
    rst $38
    nop
    nop
    ld a, a
    rst $38
    cp a
    ldh [$ffdf], a
    ccf
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    and a
    nop
    ld [$fbd3], sp
    db $ed
    dec c
    or $fa
    inc b
    db $fc
    cp $02
    db $fc
    ld a, [$0204]
    db $f4
    db $ed
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld h, [hl]
    call z, $cc66
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld h, [hl]
    call z, $cc66
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    db $fd
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld h, [hl]
    call z, $cc66
    xor e
    and a
    nop
    and b
    xor e
    rlca
    nop
    nop
    dec hl
    rst $00
    ret nc

    ldh [$ffe9], a
    di
    db $f4
    ld hl, sp-$56
    jp z, $0a00

    xor d
    ret nz

    nop
    nop
    xor b
    rst $00
    rla
    rrca
    cpl
    sbc a
    ld e, a
    ccf
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], a
    adc b
    adc b
    adc b
    xor d
    xor d
    adc b
    xor d
    ld [hl+], a
    adc b
    adc b
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], a
    adc b
    adc b
    adc b
    xor d
    xor d
    adc b
    xor d
    ld [hl+], a
    adc b
    adc b
    nop
    ccf
    ld h, b
    jr nz, jr_00c_5dc3

    ld c, a
    rra
    db $10
    ccf
    cpl
    ld [hl], b
    jr nc, jr_00c_5deb

    daa
    ld h, b
    jr z, jr_00c_5df6

    db $fc
    ld b, $04
    ld [bc], a
    ldh a, [c]
    ld hl, sp+$08
    db $fc
    db $f4
    ld c, $0c
    ld b, $e4
    ld b, $14
    and $27
    ld l, a
    jr z, jr_00c_5e0a

    rlca
    ld h, b
    ld b, b
    jr z, jr_00c_5dd0

    ld b, a
    ld b, a
    jr nz, jr_00c_5e14

    nop
    daa
    nop
    db $e4
    or $14
    and $e0
    ld b, $02
    inc d
    inc d
    ldh [c], a
    ldh [c], a
    inc b
    ld d, $00
    db $e4
    nop
    ld l, a
    rst $38
    ld l, a
    rst $38

jr_00c_5dc3:
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, e
    rst $38
    ld h, b
    rst $38
    ld h, a
    rst $38
    ld h, b
    rst $38
    db $ec

jr_00c_5dd0:
    rst $38
    db $ec
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    db $ec
    rst $38
    inc c
    rst $38
    db $ec
    rst $38
    inc c
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
    ld [hl], b
    rst $38

jr_00c_5deb:
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00c_5df6:
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [hl], e
    rst $38
    ld d, h
    rst $38
    ld [hl], e
    rst $38
    ld [hl], h
    rst $38
    ld [hl], e
    rst $38
    ld [hl], h

jr_00c_5e0a:
    rst $38
    ld [hl], e
    rst $38
    ld [hl], h
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_00c_5e14:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Jump_00c_5e1d:
    nop
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    add b
    or h
    rst $38
    or h
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld bc, $fdfe
    cp $03
    db $fc
    rst $38
    inc bc
    rst $30
    dec bc
    rst $38
    rst $20
    rst $08
    di
    rst $08
    di
    rst $08
    di
    or a
    ld sp, hl
    or a
    ld sp, hl
    ld a, e
    db $fc
    add a
    ld a, b
    rst $38
    rst $38
    pop hl
    cp $eb
    db $f4
    db $eb
    cp $e1
    cp $f3
    db $ec
    rst $38
    pop af
    rst $38
    rst $38
    ld a, c
    rst $00
    ld a, [hl]
    reti


    ld h, a
    call c, $dc7f

jr_00c_5e97:
    ld a, [hl]
    db $dd
    ld h, a
    db $dd
    ld a, c
    sbc $66
    rst $18
    rst $28
    sbc e
    ld l, h
    ei
    adc a
    ld a, d
    rst $28
    jr jr_00c_5e97

    ld a, e
    rst $28
    dec de
    adc a
    ld a, e
    ld l, a
    sbc e
    ld a, c
    cp $79
    cp $79
    cp $87
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, c
    cp $8f
    ei
    ld l, a
    ei
    adc a
    ld a, e
    rst $28
    dec de
    rst $28
    ld a, e
    rst $28
    dec de
    adc a
    ld a, e
    ld l, a
    sbc e
    ld a, c
    cp $79
    cp $79

jr_00c_5ed4:
    cp $79
    cp $79
    cp $79
    cp $79
    cp $79
    cp $8f
    ei
    ld l, h
    ei
    adc a
    ld a, d
    rst $28
    jr jr_00c_5ed4

    ld a, e
    db $ec
    dec de
    adc [hl]
    ld a, e
    ld l, l
    sbc e
    add a
    ld a, b
    add a
    ld a, b
    ld a, c
    cp $79
    cp $79
    cp $ff
    nop
    ld a, d
    cp l
    ld b, d
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ei
    call $c779
    ld h, [hl]
    reti


    ld a, a
    call nz, $dc7f
    ld a, [hl]
    db $dd
    ld h, a
    db $dd
    ld a, b
    rst $18
    ld h, a
    sbc $8f
    ei
    ld l, a
    ei
    adc a
    ld a, e

jr_00c_5f25:
    rst $28
    jr jr_00c_5f25

    ld h, e
    jp hl


    ld e, $be
    ld b, c
    ccf
    rst $38
    ld a, c
    cp $79
    cp $79
    cp $ff
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld b, b
    cp a
    db $e3
    cp l
    rst $00
    ld a, c
    add a
    ld sp, hl
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop

jr_00c_5f4c:
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    ld c, a
    cp e
    ld h, a
    ret c

    ld a, a
    ret nz

    ld h, a
    sbc a
    cp a
    ld a, a
    ret nz

    ccf
    ld a, a
    add b
    ld a, e
    rst $10
    ld h, a
    ret c

    di
    rrca
    ld sp, hl
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $00
    ccf
    jr nc, jr_00c_5f4c

    rst $38
    nop
    cp a
    rst $18
    and b
    rst $18
    cp a
    ret nz

    rst $38
    rst $38
    ldh a, [rIE]
    add e
    db $fc
    inc c
    di
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    add b
    add b
    ld a, a
    inc bc
    rst $38
    rst $38
    nop
    rst $30
    call $c53b
    ei
    dec b
    adc a
    di
    rst $38
    inc bc
    inc bc
    db $fd
    ld sp, hl
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add b
    rst $38
    ld b, c
    rst $38
    adc c
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    xor a
    rst $38
    db $d3
    rst $38
    ld h, l
    rst $38
    ld l, d
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rrca
    rst $38
    jp $04ff


    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    and e
    rst $38
    ld c, $ff
    dec a
    rst $38
    nop
    rst $38
    inc d
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ret nz

    rst $38
    ld [$80ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, [hl]
    rst $38
    or l
    rst $38
    ld c, d
    rst $38
    daa
    rst $38
    ld d, c
    rst $38
    jr c, @+$01

    inc e
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    inc d
    rst $38
    jp z, Jump_000_25ff

    rst $38
    sbc b
    rst $38
    call nz, $12ff
    rst $38
    nop
    rst $38
    ld c, e

jr_00c_6030:
    ccf
    nop
    nop
    ld a, [de]
    dec b
    dec h
    rra
    sbc a
    nop
    ld b, b
    ccf
    ld e, a
    ccf
    dec sp
    rlca
    rst $38
    rst $38
    dec bc
    ld b, $4b

Call_00c_6044:
    and l
    xor d
    push hl
    ld hl, sp+$06
    ld b, $ff
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld [hl], e
    add hl, sp
    xor l
    or l
    add hl, hl
    ld hl, $7373
    rst $38
    ret nz

    rst $38
    sbc a
    ret nz

    rst $38
    add e
    push bc
    ld d, c
    sub c
    ld b, c

jr_00c_6065:
    ld bc, $8383

jr_00c_6068:
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    di
    rlca
    ld e, a
    ccf
    ld b, a
    ccf
    jr jr_00c_607c

    inc hl
    ret nz

    jr jr_00c_6065

    jr jr_00c_6068

    push af

jr_00c_607c:
    jp hl


    ld [$fff3], sp
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld h, b
    rra
    adc a
    nop
    pop de
    ldh [rSC], a
    db $fc
    jr nz, jr_00c_6030

    ld d, b
    ccf
    ld d, b
    ccf
    ld e, a
    ccf
    ld h, b
    jr nz, jr_00c_60aa

    ld b, l
    ld l, d
    dec d
    dec d
    nop
    add hl, bc
    di
    dec d
    ld sp, hl
    dec d
    ld sp, hl
    push af
    ld sp, hl
    dec c
    add hl, bc
    db $10

jr_00c_60aa:
    ld b, l
    xor l
    ld d, b
    ld d, b
    nop
    nop
    nop
    ld d, l
    xor d
    xor d
    rst $38
    xor d
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
    rst $38
    rst $38
    nop
    nop
    ld d, l
    xor d
    xor d
    rst $38
    xor d
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl]
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    inc l
    ld e, $18
    ld b, $2e
    nop
    ld de, $aeae
    cp a
    sub c
    ld l, $2e
    nop
    add b
    add b
    sbc d
    cp h
    adc h
    or b
    inc d
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $94
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    jr jr_00c_6117

    inc l
    ld e, $00
    nop
    ld a, [hl-]
    nop

jr_00c_6117:
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl]
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    nop
    adc h
    or b
    sbc d
    cp h
    add b
    add b
    ld l, $00
    ld de, $aeae
    cp a
    sub c
    ld l, $2e
    nop
    inc b
    inc bc
    ld c, e
    jr nc, jr_00c_6138

    ld [$3753], sp
    ld d, e

jr_00c_6138:
    inc [hl]
    inc b

jr_00c_613a:
    ld [$3348], sp
    inc bc
    rlca
    db $10
    ld h, b
    ld l, c
    ld b, $10
    ld [$f6e5], sp
    push hl
    ld d, $10
    ld [$6609], sp
    ldh [rSVBK], a
    ld d, c
    rrca
    ld d, h
    ld h, c
    nop
    ld l, b
    jr nc, jr_00c_61b7

    jr nc, jr_00c_61c0

    jr nc, jr_00c_61c2

    daa
    ld b, b
    rlca
    ld h, a
    jr nc, jr_00c_61c1

    jr nc, jr_00c_61cb

    jr nc, @+$1c

    inc c
    ld a, [bc]
    inc c
    ld [$ea0c], a
    add sp, $02
    ldh [$ffea], a
    inc c
    ld a, [bc]
    inc c
    ld a, [de]
    inc c
    nop
    nop
    dec a
    ld a, [hl]
    ld e, [hl]
    ld a, e
    ld a, l
    ld e, e
    cpl
    ld e, c
    ld c, $59
    inc e
    ld c, c
    inc d
    ld c, c
    nop
    nop
    ld [hl], a
    ld hl, sp+$7a
    db $fd
    ld a, [hl-]
    db $fd
    dec de
    ld a, l
    ld e, a
    add hl, sp
    rla
    add hl, sp
    ld [de], a
    add hl, sp
    nop
    nop
    ld a, a
    rst $38
    cp l
    cp $da
    cp h
    jr c, jr_00c_613a

    adc l
    jr jr_00c_61ee

    jr jr_00c_61fe

    ld [$0000], sp
    or $f8
    ret c

    cp $5a
    cp $d6
    ld a, [hl]
    ld [hl], d
    ld e, [hl]
    halt
    ld e, d
    ld d, h
    ld e, d
    inc b
    ld c, c
    nop

jr_00c_61b7:
    ld c, c
    ld [$4841], sp
    ld bc, $0049
    ld b, l
    db $10

jr_00c_61c0:
    ld e, c

jr_00c_61c1:
    inc e

jr_00c_61c2:
    ld h, $18
    db $10
    add hl, sp
    jr jr_00c_61f9

    add hl, de
    jr nc, @+$37

jr_00c_61cb:
    db $10
    jr nc, jr_00c_61e2

    dec [hl]
    db $10
    ld hl, $4610
    ld d, b
    ld e, b
    ld [$0b0b], sp
    ld l, b
    dec bc
    ld [$680b], sp
    dec bc
    ld [$680b], sp
    dec bc

jr_00c_61e2:
    ld [$540b], sp
    ld e, d
    db $10
    ld e, d
    ld d, d
    jr jr_00c_61fd

    sbc b
    ld e, d
    sub b

jr_00c_61ee:
    ld e, b
    sub b
    ld e, d
    sub b
    ld d, [hl]
    sub h
    ld e, d
    inc a
    inc h
    jr jr_00c_6253

jr_00c_61f9:
    inc a
    inc h
    jr jr_00c_6257

jr_00c_61fd:
    inc a

jr_00c_61fe:
    inc h
    jr jr_00c_625b

    inc a
    inc h
    jr jr_00c_6245

    ld d, b
    ld b, d
    ld d, d
    ld d, d
    ld b, b
    ld d, b

jr_00c_620b:
    ld b, b
    ld h, b
    ld c, d
    ld l, d
    ld b, b
    jr nz, jr_00c_6252

    ld b, b
    nop
    inc bc
    ld [$a8a0], sp
    ld h, b
    ld l, d
    ld b, d
    ld c, b
    ld c, d
    ld b, b
    ld a, [bc]
    ld h, b
    ld [$02a0], sp
    nop
    ld b, [hl]
    sub h
    add $94
    add $94
    add [hl]
    call nc, $c492
    ld d, [hl]
    add b
    ld [de], a
    nop
    jp z, Jump_000_0080

    nop
    ccf
    cp a
    nop
    nop
    jr z, jr_00c_620b

    inc d
    rst $20
    nop
    nop
    db $fc
    ld bc, $0000
    inc a

jr_00c_6245:
    ld a, $42
    ld a, h
    ld b, d
    ld a, h

Jump_00c_624a:
    ld b, d
    ld a, h
    ld b, d
    ld a, h
    ld b, d
    ld a, h
    ld a, $00

jr_00c_6252:
    nop

jr_00c_6253:
    nop
    nop
    nop
    cp a

jr_00c_6257:
    cp a
    cp a
    nop
    nop

jr_00c_625b:
    nop
    nop
    cp a
    cp a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jp z, $8a10

    db $10
    ld a, [de]
    jr nz, jr_00c_629f

    ret nz

    and $00
    ld c, $00
    nop
    nop
    inc h
    jr @+$5c

    inc a
    inc h
    jr @+$5c

    inc a
    inc h
    jr @+$5c

    inc a
    inc h
    jr @+$5c

    inc a
    nop
    nop
    ld d, l
    nop
    xor d
    ld d, l
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, h
    jr c, jr_00c_62c3

    db $10
    ld e, h
    ld a, [hl-]
    ld c, d
    ld a, $64

jr_00c_629f:
    ld a, [de]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc e
    ld d, h
    ld [$5c3a], sp
    ld d, d
    ld a, h
    ld h, $58
    ld e, h
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld h, h
    ld a, [de]
    ld c, d
    ld a, $5c
    ld a, [hl-]
    ld a, [hl+]
    db $10
    ld d, h
    jr c, jr_00c_62c3

jr_00c_62c3:
    nop
    nop
    nop
    ld e, h
    nop
    ld h, $58
    ld d, d
    ld a, h
    ld a, [hl-]
    ld e, h
    ld d, h
    ld [$1c2a], sp
    nop
    nop
    stop
    nop
    db $10
    jr c, jr_00c_62ea

    cp d
    ld a, h
    jr c, @+$12

    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    inc d
    ld [hl+], a

jr_00c_62ea:
    ld [hl], $1c
    ld [$361c], sp
    inc e
    inc d
    ld [hl+], a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$1c2a], sp
    inc d
    ld [$0008], sp
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld l, a
    ld b, b
    ld c, a
    ld b, a
    ld a, b
    ld c, b
    ld [hl], b
    ld d, l
    ld h, b
    ld d, l
    ld h, l
    nop
    nop
    add e
    jp $835e


    ld e, [hl]
    add e
    rst $18
    nop
    nop
    nop
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop
    db $fc
    cp $02
    ld hl, sp+$02
    ldh a, [$fff2]
    inc c
    ld a, [bc]
    inc c
    ld d, d
    inc b
    ld d, d
    ld d, h
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld bc, $1e3e
    nop
    nop
    nop
    ld d, b
    ld h, l
    ld d, l
    ld h, b
    ld c, b
    ld [hl], b
    ld b, a
    ld a, a
    ld b, b
    ld l, a
    ld b, b
    ld c, a
    ccf
    ld b, b
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    sbc a
    jp $835e


    ld e, [hl]
    add e
    jp RST_00


    nop
    ld [bc], a
    ld d, h
    ld d, d
    inc b
    ld a, [bc]
    inc c
    ldh a, [c]
    db $fc
    ld [bc], a
    ld hl, sp+$02
    ldh a, [$fffe]
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld d, h
    ld a, h
    ld d, a
    ld d, a
    inc bc
    nop
    inc bc
    ld h, e
    inc bc
    dec bc
    ld h, e
    ld h, e
    ld l, e
    nop
    nop
    db $fd
    nop
    ld [bc], a
    db $fd
    db $fd
    rst $38
    ld [bc], a
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    nop
    ld [hl-], a
    nop
    ld h, l
    ld [de], a
    ld [hl+], a
    rla
    dec [hl]
    ld [de], a
    ld d, d
    scf
    ld [hl-], a
    rla
    ld [hl-], a
    rla
    ld h, e
    ld l, e
    dec bc
    ld h, e
    ld h, b
    inc bc
    inc bc
    nop
    nop
    ld d, a
    ld a, a
    ld d, h
    ld d, a
    nop
    nop
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    ld [bc], a
    db $fd
    rst $38
    nop
    ld [bc], a
    db $fd
    rst $38
    nop
    db $fd
    nop
    nop
    nop
    ld [hl-], a
    rla
    ld [hl-], a
    rla
    ld d, l
    ld [hl-], a
    scf
    db $10
    dec h
    ld [de], a
    ld h, a
    db $10
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    ld d, l
    xor d
    xor d
    rst $38
    ld d, l
    xor d
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    nop
    rst $38
    jr @+$01

    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    jr @+$01

    nop
    rst $38
    ld [hl], a
    nop
    rst $38
    ld [hl], a
    add b
    ld a, e
    cp a
    ld e, e
    xor a
    ld d, l
    daa
    ld d, a
    and e
    ld c, a
    and c
    ld e, a
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    call c, $fe00
    call c, $fc02
    ld a, [$eaf4]
    db $f4
    ld [$82c4], a
    ldh a, [$ff08]
    ldh [$ffa1], a
    ld e, [hl]
    or e
    ld c, h
    add l
    ld e, b
    ld l, h
    ld bc, $42bc
    add b
    ld b, b
    ld h, [hl]
    ld de, $0000
    ld a, [hl+]
    call nc, Call_00c_748a
    jp z, Jump_00c_6a34

    inc d
    ld a, [$0204]
    inc b
    inc a
    nop
    nop
    nop
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    xor d
    rst $38
    nop
    ld d, l
    xor d
    rst $38
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, h
    rst $38
    ld b, h
    rst $38
    inc d
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    xor $ff
    ld d, l
    rst $38
    cp e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    ld de, $44ff
    rst $38
    nop
    nop

jr_00c_64a6:
    ld hl, sp-$04
    add hl, bc
    pop af

jr_00c_64aa:
    ld [de], a
    db $e3
    inc h
    rst $00

jr_00c_64ae:
    ld c, b
    adc a
    adc a
    stop
    nop
    ld b, d
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    ld [hl], b
    ld d, b
    ld h, d
    ld h, [hl]
    ld b, h
    ld a, [bc]
    ld c, h
    ld [de], a
    inc e
    ld [hl+], a
    inc a
    ld c, h
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld e, h
    rst $38
    inc e
    inc bc
    ld l, e
    rra
    inc e
    inc bc
    ld l, e
    rra
    inc e
    inc bc
    ld l, e
    rra
    inc e
    inc bc
    ld l, e
    rra
    jr c, jr_00c_64a6

    sub $e8
    jr c, jr_00c_64aa

    sub $e8
    jr c, jr_00c_64ae

    sub $e8
    jr c, @-$3e

    sub $e8
    nop
    nop
    inc [hl]
    dec bc
    ld l, e
    rra
    ld l, e
    rra
    ld l, e
    rra
    ld l, e
    rra
    inc [hl]
    dec bc
    nop
    nop
    nop
    nop
    inc a
    ret nz

    sub $e8
    sub $e8
    sub $e8
    sub $e8
    inc a
    ret nz

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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    di
    rst $38
    nop
    rst $38
    dec a
    nop
    ld d, b
    dec l
    sub c
    ld a, e
    xor a
    ld a, e
    sbc l
    ld [hl], a
    xor a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld c, a
    db $fc
    nop
    ld c, $f0
    ld d, h
    ld hl, sp-$56
    db $fc
    call nc, $eaf8
    call c, $e8e4
    ldh [$fff0], a
    rra
    ccf
    xor d
    ld e, a
    push bc
    ccf
    jr z, jr_00c_65e3

    sub l
    ld a, [hl+]
    ld d, h
    ld bc, $002a
    nop
    nop
    sub $e8
    xor h
    ldh a, [rSC]
    ld hl, sp+$2c
    ret nc

    ld e, d
    and b
    sub h
    ld b, b
    xor b
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    ld h, b
    ld l, b
    ld h, b
    ld h, h
    ld l, b
    ld l, l
    ld l, [hl]
    ld h, h
    ld l, b
    ld [$6060], sp
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    ld b, $16
    ld b, $26
    ld d, $b6
    halt
    ld h, $16
    db $10
    ld b, $06
    nop
    nop
    ld a, [hl]

jr_00c_65de:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop

jr_00c_65e3:
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $f9ff
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sub c
    rst $38
    rst $38
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop

jr_00c_6626:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0204
    ld bc, $0315
    nop
    nop
    ld [de], a
    nop
    ld b, h
    nop
    dec d
    adc b
    ld l, b
    ld de, $60b2
    ld d, [hl]
    ldh [$ffa1], a
    call nz, Call_000_2305
    ld a, [bc]
    rlca
    dec l
    ld b, $16
    ld [$1089], sp
    inc sp
    nop
    ld b, b
    inc b
    ld [bc], a
    db $10
    or h
    ret z

    ld c, b
    adc b
    sub d
    ld [hl+], a
    and h
    inc h
    jr nz, jr_00c_65de

    jr nz, jr_00c_6680

    add b
    nop
    nop
    nop
    ld d, [hl]
    rrca
    ld l, c
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    stop
    jr z, @+$12

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00c_667b

jr_00c_667b:
    nop
    jr nz, jr_00c_6626

    ld [hl], b
    nop

jr_00c_6680:
    jr nz, jr_00c_66a2

    nop
    inc b
    nop
    ld a, [bc]
    inc b
    inc b
    nop
    inc b
    nop
    ld a, [bc]
    inc b
    inc b
    nop
    nop
    nop
    jr nz, jr_00c_6693

jr_00c_6693:
    ld d, b
    jr nz, jr_00c_66b6

    nop
    nop
    nop
    ld a, h
    add hl, sp
    ld b, d
    ld a, h
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ld h, d

jr_00c_66a2:
    inc a
    inc d
    ld bc, $3079
    call z, $9078
    inc c
    ld [hl], h
    ld [hl+], a
    ld c, d
    ld [hl], b
    add h
    ld hl, sp-$7c
    ld hl, sp+$08
    ldh a, [rNR10]

jr_00c_66b6:
    ldh [$ffdc], a
    nop
    jp nz, $827c

    db $fc
    add l
    ld a, [$fc83]
    dec b
    ld a, [$54aa]
    ld a, b
    nop
    nop
    nop
    ld [hl-], a
    inc a
    ld b, [hl]
    ld a, b
    ld c, d
    ld [hl], h
    ld b, $78
    ld a, [hl+]
    inc d
    ld d, h
    ld [$40a0], sp
    nop
    nop
    add l
    inc bc
    halt
    inc hl
    ld c, d
    ld [hl], c
    ld b, l
    jr c, jr_00c_6706

    jr jr_00c_66ed

    nop
    ld b, e
    add c
    sbc [hl]
    rrca
    db $ec
    pop af
    ld [bc], a
    db $fc

jr_00c_66ed:
    ld bc, $84fe
    ld a, d
    ld l, d
    inc d
    inc d
    ld bc, $f0f9
    inc c
    ld hl, sp+$30
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    jr nz, jr_00c_6722

    ld e, h
    inc bc
    and a

jr_00c_6706:
    ld b, b
    jr nc, jr_00c_6709

jr_00c_6709:
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld a, [$fc03]
    dec d
    ld [$54aa], a
    ld hl, sp+$00
    nop
    nop
    sub b
    inc c
    ld [hl], h
    ld [hl+], a
    ld c, d
    ld [hl], c
    add l
    ld hl, sp-$7c

jr_00c_6722:
    ld hl, sp+$18
    ldh [$ff62], a
    add b
    ld b, $00
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    nop
    nop
    ld [hl+], a
    ld b, h
    nop
    nop
    ld [hl+], a
    ld b, h
    nop
    nop
    ld [hl+], a
    ld b, h
    nop
    nop
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld h, $40
    ld b, b
    nop
    ld e, $00
    ld a, h
    add hl, sp
    jp nz, $c17c

    ld a, [hl]
    ret nz

    ld a, [hl]
    ld h, d
    inc a
    inc a
    ld bc, $0001
    inc h
    ld b, b
    ccf
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld h, b
    nop
    ld b, b
    nop
    nop
    nop
    xor h
    ret nc

    xor [hl]
    ret nc

    nop
    nop
    ldh a, [c]
    db $fc
    xor d
    db $f4
    xor d

jr_00c_6774:
    db $f4
    xor d
    db $f4
    xor d
    db $f4
    add d
    db $fc
    add d
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    xor b
    xor b
    ld [bc], a
    add d
    nop
    ld [hl-], a
    inc a
    ld b, d
    ld a, h
    ld b, [hl]
    jr c, @+$3e

    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    add b
    nop
    nop
    ld [bc], a
    inc b
    add b
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    ld a, b
    jr nc, jr_00c_6774

    ld a, b
    add d
    nop
    nop
    jr nz, jr_00c_67d0

    ld [$8208], sp
    xor d
    nop
    ld [bc], a
    nop
    nop
    nop
    inc e
    nop
    xor $00
    cp a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]

jr_00c_67c4:
    nop
    ld a, [hl+]
    nop
    sub b
    nop
    ld d, e
    nop
    ld bc, $9a00
    nop
    inc a

jr_00c_67d0:
    nop
    halt
    nop
    ld l, b
    nop
    sub e
    nop
    rlca
    nop
    add l
    nop
    adc $00
    ld e, l
    nop
    cp [hl]
    nop
    add hl, de
    nop
    jp $e300


    nop
    pop de
    nop
    rlca
    nop
    add e
    nop
    dec e
    nop
    ld a, [hl]
    nop
    ld a, [$fd00]
    nop
    rst $30
    nop
    xor e
    nop
    add c
    nop
    ld [de], a
    nop
    add hl, sp
    nop
    ld e, h
    nop
    jr z, jr_00c_6803

jr_00c_6803:
    ld d, d
    nop
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $1021
    ld de, $081f
    ld [$1607], sp
    rrca
    ld h, [hl]
    rst $38
    nop
    nop
    nop
    nop
    add b
    ld [$1090], sp
    ld [hl], b
    jr nz, jr_00c_67c4

    nop
    ld b, b
    add b
    ld c, h
    sbc [hl]
    inc [hl]
    rrca
    ld [$0f07], sp
    ld [$1118], sp
    ld bc, $0121
    ld bc, $0100
    nop
    nop
    ld e, b
    add b
    and b
    nop
    jr nz, jr_00c_685f

    or b
    db $10
    add b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, b
    nop
    inc l
    nop
    ld e, b
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    rst $30
    nop
    push hl
    nop
    ld d, e
    nop

jr_00c_685f:
    nop
    nop
    dec hl
    nop
    ld b, h
    nop
    ld de, $0000
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    nop
    cp $7f
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    or $7f
    nop
    nop
    db $fc
    nop
    and $f8
    ld a, [bc]
    db $f4
    inc b
    ld a, [$fc02]
    ld a, [bc]
    db $f4
    ld d, h
    xor b
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    ld hl, sp-$76
    db $f4
    inc b
    ld a, [$fc02]
    adc d
    ld [hl], h
    ld d, h
    jr z, jr_00c_68a8

jr_00c_68a8:
    nop
    call c, Call_00c_5208
    sbc h
    ld [hl+], a
    cp h
    sub h
    ld a, [de]
    ld l, d
    ld c, h
    ld d, d
    ld h, h
    inc l
    ret nc

    nop
    nop
    ld h, $1f
    ld h, [hl]
    rra
    nop
    nop
    ld c, a
    ccf
    ld d, l
    cpl
    ld d, l
    cpl
    ld d, l
    cpl
    ld d, l
    cpl
    xor h
    ret nc

    xor [hl]
    ret nc

    nop
    nop
    ld b, d
    adc h
    jp c, Jump_000_2a94

    or h
    xor d
    inc [hl]
    ld l, d
    ld [hl], h
    ld d, l
    cpl
    ld d, l
    cpl
    ld d, l
    cpl
    ld a, [hl]
    ld bc, $0000
    ld h, [hl]
    rra
    ld h, $1f
    nop
    nop
    xor d
    db $f4
    xor d
    db $f4
    xor d
    db $f4
    ld a, [hl]
    add b
    nop
    nop
    xor [hl]
    ret nc

    xor h
    ret nc

    nop
    nop
    xor h
    ret nc

    xor [hl]
    ret nc

    nop
    nop
    xor d
    inc [hl]
    ld c, d
    sub h
    ld c, d
    sub h
    ld e, d
    sub h
    add d
    inc c
    ld d, l
    cpl
    ld d, l
    ld l, $56
    inc l
    ld a, [hl]
    ld bc, $0000
    ld h, [hl]
    rra
    ld h, $1f
    nop
    nop
    ld d, $24
    halt
    ld h, h
    xor b
    ldh a, [c]
    ld a, h
    add b
    nop
    nop
    xor [hl]
    ret nc

    xor h
    ret nc

    nop
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    nop
    inc a
    nop
    ld b, d
    nop
    ld e, d
    nop
    ld b, d
    nop
    ld e, d
    nop
    ld b, d
    nop
    inc a
    nop
    nop
    nop
    rst $30
    nop
    rst $30
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst $30
    nop
    rst $30
    nop
    rlca
    nop
    ret nz

    nop
    daa
    nop
    inc de
    nop
    ld d, e
    nop
    stop
    db $d3
    nop
    db $d3
    nop
    ret z

    nop
    rlca
    nop
    ld h, b

jr_00c_6992:
    nop
    ld a, b
    nop
    ld a, a

jr_00c_6996:
    nop
    nop
    nop
    db $d3
    nop
    db $d3
    nop
    db $d3
    nop
    stop
    ld d, e
    nop
    ld d, e
    nop
    ld b, e
    nop
    stop
    ld a, a
    nop
    cp $7f
    ld d, h
    db $e3
    xor d
    ld d, c
    sbc d
    ld [hl], c
    sbc d
    ld [hl], c
    jp c, Jump_000_1831

    jr nc, jr_00c_6992

    jr nc, jr_00c_6996

    or b
    ld [hl], d
    sub b
    ld d, d
    add b
    ld h, $c0
    ld a, [de]
    db $e4
    inc b
    ld hl, sp+$00
    nop
    inc d
    ld [$0894], sp
    ccf
    add b
    cp a
    rst $38
    ld b, b
    cp a
    ccf
    add b
    sub h

jr_00c_69d6:
    ld [$0000], sp
    ld d, b
    jr nz, jr_00c_6a2e

    jr nz, jr_00c_69d6

    ld [bc], a
    ld a, [$04fe]
    ld a, [$02f8]
    ld d, d
    jr nz, jr_00c_69e8

jr_00c_69e8:
    nop
    or h
    ld e, b
    ld [hl], $18
    db $f4
    ld a, [de]
    ld a, [$04fe]
    ld a, [$02f8]
    ld [bc], a
    nop
    nop
    nop
    xor [hl]
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    xor [hl]
    ld b, h
    sbc d
    ld c, h
    sub h
    ld e, b
    sbc b
    ld b, b
    or h
    ld e, b
    push de
    ld c, a
    jr z, jr_00c_6a74

    ld b, h
    inc sp
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    dec sp
    nop
    nop
    nop
    set 6, d
    inc d
    and $22
    call z, Call_000_00dc
    nop
    nop
    call c, $dc00
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d

jr_00c_6a2e:
    ld d, l

jr_00c_6a2f:
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d

Jump_00c_6a34:
    ld d, l
    ld d, l
    nop
    nop
    nop
    inc [hl]
    jr jr_00c_6a96

    inc a
    inc [hl]
    jr jr_00c_6a9a

    inc a
    inc [hl]
    jr jr_00c_6a9e

    inc a
    inc [hl]
    jr jr_00c_6aa2

    inc a
    jp c, $b23c

    ld a, h
    ld h, [hl]
    ld hl, sp-$34
    ldh a, [$ff98]
    ldh [$ff30], a
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    rlca
    nop
    inc c
    inc bc
    add hl, de
    rlca
    inc sp
    rrca
    ld h, [hl]
    rra
    ld c, l
    ld a, $5b
    inc a
    nop
    nop
    ldh [rP1], a
    jr nc, jr_00c_6a2f

    sbc b
    ldh [$ffcc], a
    ldh a, [$ff66]

jr_00c_6a74:
    ld hl, sp-$4e
    ld a, h
    jp c, Jump_00c_5b3c

    inc a
    ld c, l
    ld a, $66
    rra
    inc sp
    rrca
    add hl, de
    rlca
    inc c
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    xor d
    xor d
    nop
    xor d
    xor d
    nop
    nop

jr_00c_6a96:
    nop
    nop
    nop
    ld [hl], a

jr_00c_6a9a:
    nop
    rst $38
    nop
    adc b

jr_00c_6a9e:
    ld [hl], a
    nop
    rst $38
    ld [hl], a

jr_00c_6aa2:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38
    call c, $fe00
    nop
    ld [hl+], a
    call c, $fe00
    call c, $fefe
    cp $00
    cp $dc
    cp $fe
    nop
    db $fc
    nop
    nop
    nop
    xor b
    nop
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    ld [hl], a
    ld a, a
    add b
    adc b
    ld [hl], a
    ld [hl], a
    nop
    add b
    nop
    ld [hl], a
    nop
    nop
    nop
    nop
    cp $22
    call c, $02fc
    ld [hl+], a
    call c, Call_000_00dc
    ld [bc], a
    nop
    call c, RST_00
    nop
    ld b, b
    ld a, a
    cp a
    cp a
    ld b, b
    ret nz

    ld d, l
    ret nz

    ld b, b
    ret nz

    add b
    ccf
    ccf
    ld b, b
    nop
    nop
    inc b
    ld hl, sp-$08
    ld a, [$0402]
    ld d, d
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld hl, sp-$04
    nop
    nop
    nop
    call $cd3f
    ccf
    nop
    nop
    rlca
    rst $30
    rlca
    sub h
    rlca
    sub $07
    ld d, [hl]
    rlca
    ld [hl], a
    ld l, $d0
    ld l, $d0
    nop
    nop
    sbc $c0
    sub $00
    ret nc

    ret nz

    sub $40
    sbc $c0
    rlca
    jr nc, jr_00c_6b33

    or [hl]
    nop
    nop
    rlca
    rst $30
    rlca
    ld [hl], a

jr_00c_6b33:
    inc bc
    dec sp
    inc bc
    dec de
    ld bc, $c20d
    ret nz

    sbc $40
    nop
    nop
    sbc $c0
    call c, $b8c0
    add b
    or b
    add b
    ld h, b
    nop
    ld [hl], a
    nop
    rst $38
    ld [hl], a
    add b
    ld a, e
    cp a
    ld e, e
    xor a
    ld d, l
    daa
    ld d, a
    and e
    ld c, a
    and c
    ld e, a
    call c, $fe00
    call c, $fc02
    ld a, [$eaf4]
    db $f4
    ld [$82c4], a
    ldh a, [$ff08]
    ldh [$ffa1], a
    ld e, [hl]
    or e
    ld c, h
    add l
    ld e, b
    ld l, h
    ld bc, $42bc
    add b
    ld b, b
    ld h, [hl]
    ld de, $0000
    ld a, [hl+]
    call nc, Call_00c_748a
    jp z, Jump_00c_6a34

    inc d
    ld a, [$0204]
    inc b
    inc a
    nop
    nop
    nop
    dec a
    nop
    ld d, b
    dec l
    sub c
    ld a, e
    xor a
    ld a, e
    sbc l
    ld [hl], a
    xor a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld c, a
    db $fc
    nop
    ld c, $f0
    ld d, h
    ld hl, sp-$56
    db $fc
    call nc, $eaf8
    call c, $e8e4
    ldh [$fff0], a
    rra
    ccf
    xor d
    ld e, a
    push bc
    ccf
    jr z, jr_00c_6c08

    sub l
    ld a, [hl+]
    ld d, h
    ld bc, $002a
    nop
    nop
    sub $e8
    xor h
    ldh a, [rSC]
    ld hl, sp+$2c
    ret nc

    ld e, d
    and b
    sub h
    ld b, b
    xor b
    nop
    nop
    nop
    ld d, h
    call z, Call_000_006b
    nop

jr_00c_6bce:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00c_6bd9

jr_00c_6bd9:
    jr nz, jr_00c_6bdb

jr_00c_6bdb:
    jr nz, jr_00c_6bdd

jr_00c_6bdd:
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
    ld bc, $0206
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
    add b
    nop
    nop
    add b
    nop
    ld b, $01
    dec bc
    rlca
    rla
    rrca
    rla
    rlca
    rla
    rrca
    nop
    nop

jr_00c_6c08:
    ld [$0400], sp
    inc bc
    jr nc, jr_00c_6bce

    adc b
    ldh a, [$ffc4]
    ld hl, sp+$54
    ld h, b
    xor d
    ret z

    ld [bc], a
    ld [$4422], sp
    ld d, [hl]
    add h
    jr nc, @+$42

    jr nc, jr_00c_6c60

    jr nc, jr_00c_6c62

    nop
    nop
    ld [hl], a
    nop
    nop
    rst $30
    ld a, a
    ld l, [hl]
    ccf
    xor [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    nop
    ld [hl], a
    cp $ee
    cp $ee
    dec c
    inc b
    ld a, [de]
    add hl, bc
    inc h
    inc de
    inc d
    inc sp
    ld l, b
    daa
    add hl, hl
    ld h, [hl]
    ret nc

    ld c, [hl]
    ld d, b
    adc $00
    add b
    nop
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
    inc [hl]
    ld b, $42
    scf

jr_00c_6c60:
    add hl, de
    inc bc

jr_00c_6c62:
    inc h
    add hl, de
    ld c, $00
    ld d, b
    ld bc, $06a9
    stop
    add b
    db $dd
    ld e, l
    ld b, b
    ld b, b
    ld b, b
    ld e, d
    ld e, a
    sbc d
    rst $18
    add b
    nop
    ccf
    nop
    ld b, b
    nop
    ld bc, $d0dc
    ld bc, $0105
    ld c, c
    add l
    ld h, l
    adc l
    inc h
    dec c
    push bc
    inc c
    db $e4
    inc c
    or d
    adc h
    and b
    sbc l
    inc h
    sbc c
    jr nc, jr_00c_6c9d

    ld [de], a
    inc b
    ld a, [bc]
    inc c
    ld [bc], a
    sbc h
    sbc h
    nop
    ld a, d

jr_00c_6c9d:
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    nop
    ld h, b
    add b

Call_00c_6ca8:
    or [hl]
    ret nz

    ld a, [de]
    ld h, b
    ld l, a
    nop
    sub [hl]
    ld h, b
    ld b, l
    jr nc, jr_00c_6cd5

    sbc c
    sub d
    ret


    set 0, b
    ld d, d
    ret nc

    nop
    ld d, c
    ccf
    nop
    add a
    ld a, b
    rrca
    ldh a, [$ff3c]
    ret nz

    pop af
    inc bc
    add a
    rrca
    cpl
    cpl
    adc a
    xor a
    ld a, [hl+]
    ld b, $d5
    inc bc
    dec bc
    jr nz, jr_00c_6d1f

    ldh [$ffce], a

jr_00c_6cd5:
    ldh [$ffcd], a
    ldh [$ffca], a
    pop bc
    sbc c
    jp Jump_00c_5e1d


    ld e, l
    sbc [hl]
    add b
    ccf
    ccf
    nop
    ld e, $1f
    ld e, a
    rst $18
    and b
    xor a
    rlca
    db $10
    ld d, b
    jr nz, jr_00c_6d17

    ld b, h
    add d
    inc c
    dec d
    ld [$148a], sp
    ld b, l
    adc b
    ld c, d
    add h
    sub l
    nop
    nop
    nop
    rrca
    nop
    dec e
    ld c, $1f
    nop
    rrca
    nop
    nop
    nop
    nop
    nop

jr_00c_6d0a:
    nop
    nop
    nop
    nop
    ld h, h
    ld a, b
    cp b
    ccf
    cp [hl]
    ccf
    ccf
    ld a, a
    ld a, [hl]

jr_00c_6d17:
    rst $38
    add b
    ld a, a
    nop
    nop
    cpl
    rrca
    inc e

jr_00c_6d1f:
    ld e, $80
    nop
    jr nz, @-$3d

    ld bc, $02fe
    db $fc
    jr jr_00c_6d0a

    ld bc, $1101
    add c
    dec h
    dec b
    ld c, c
    dec c
    sub c
    dec e
    dec h
    add hl, sp
    ld b, d
    ld a, c
    adc c
    ldh a, [rNR10]
    ldh [$ff57], a
    rla
    rla
    ld d, a
    db $10
    ld d, a
    ld b, a
    db $10
    rla
    rlca
    adc a
    xor a
    nop
    rst $18
    nop
    nop
    xor b
    pop bc
    xor d
    pop bc
    ld [hl+], a
    pop bc
    pop bc
    nop
    ret nc

    ldh [$ffd5], a
    ldh [$ff0b], a
    ldh a, [rSB]
    nop
    rlca
    nop
    nop
    nop
    rla
    rrca
    rra
    nop
    nop
    nop
    ld b, b
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    ldh a, [rDIV]
    nop
    ld [$dfcf], sp
    ret nz

    db $10
    db $10
    rlca
    dec hl
    ret nz

    ld b, b
    add b
    jp nz, $0200

    inc bc
    inc c
    rrca
    ldh a, [rIE]
    nop
    rrca
    ld bc, $f6ee
    nop
    nop
    nop
    ld b, d
    inc a
    cpl
    ret nz

    ld b, b
    add b
    nop
    cp a
    cp a
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$f9fc]
    ld bc, $00f8
    nop
    nop
    dec b
    ld hl, sp-$08
    ld bc, $0004
    adc h
    ld de, $502c
    ld [hl+], a
    db $d3
    nop
    nop
    ld b, b
    ccf
    ld a, $7f
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    ld l, $1f
    inc l
    ld e, $20
    nop
    dec h
    add b
    and b
    ld bc, $0361
    ld l, b
    inc bc
    ld l, d
    ld bc, $006d
    ldh [rP1], a
    and h
    jr jr_00c_6ddf

jr_00c_6ddf:
    add c
    pop bc
    add c
    cp e
    jp $f8f3


    nop
    ldh a, [$fff0]
    rlca
    rlca
    rlca
    nop
    nop
    nop
    rst $38
    cp $ff
    db $fd
    cp $fe
    nop
    nop
    nop
    ld bc, $f5fd
    ld sp, hl
    dec b
    rlca
    dec e
    sbc a
    inc a
    inc a
    ld [hl], e
    ld [hl], b
    push hl
    ldh [$ffcb], a
    ret nz

    and b
    add b
    or c
    adc [hl]
    dec b
    jp nz, Jump_000_1808

    dec b
    ld c, b
    ld h, c
    jr nz, jr_00c_6e40

    db $10
    add l
    nop
    nop
    nop
    adc $00
    inc d
    ld c, $14
    ld c, $08
    ld b, $04
    ld [de], a
    nop
    ld [$070a], sp
    dec b
    inc bc
    nop
    nop
    ret


    ld [bc], a
    sub $07
    ret nz

    nop
    ret nc

    rra
    pop bc
    ld e, $5e
    inc e
    dec e
    add b
    dec e
    rra
    ld c, a
    ld l, a
    xor a
    cpl

jr_00c_6e40:
    rrca
    rrca
    and c
    ld l, $40
    ld h, b
    jp hl


    rst $20
    adc c
    rlca
    add b
    ldh [$ffeb], a
    di
    rst $10
    rst $20
    ld c, [hl]
    adc [hl]
    dec l
    inc a
    ld l, e
    ld hl, sp+$66
    ldh [rNR32], a
    add c
    dec e
    jr nz, jr_00c_6eb2

    ccf
    ld a, [hl+]
    ld a, a
    db $10
    ld a, a
    ld h, b
    ccf
    ld d, d
    dec a
    dec [hl]
    ld a, [bc]
    ld a, [de]
    dec b
    rlca
    nop
    ld [hl], l
    add b
    sbc d
    ldh [$ff38], a
    ret nz

    ld e, b
    and b
    or l
    ld b, d
    ld l, d
    add l
    push hl
    ld a, [bc]
    add $08
    add b

jr_00c_6e7d:
    add b
    add b
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add hl, de
    and d
    nop
    add b
    ld de, $13a6
    and h
    add hl, de
    and d
    add hl, de
    and d
    add hl, de
    and d

jr_00c_6e9a:
    inc e
    and c
    ld l, b
    jr nc, jr_00c_6e9f

jr_00c_6e9f:
    nop
    ld l, c
    jr nc, jr_00c_6ea6

    ld bc, $316b

jr_00c_6ea6:
    inc bc
    ld bc, $316a
    ld [bc], a
    ld bc, $040b
    sub [hl]
    ld h, b
    cp b
    ret nz

jr_00c_6eb2:
    sub h
    ldh [rNR30], a
    ldh [rNR50], a
    ret nc

    jr jr_00c_6e9a

    cp d
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    inc e
    and c
    nop
    add b
    ld bc, $dfbe
    and b
    rra
    and b
    rst $18
    and b
    rst $18
    and b
    rst $18
    and b
    ld l, c
    jr nc, jr_00c_6edf

jr_00c_6edf:
    nop
    ld l, c
    jr nc, jr_00c_6ee6

    ld bc, $336a

jr_00c_6ee6:
    ld bc, $6a02
    inc sp
    ld bc, $1402
    and c
    xor c
    ld b, b
    ld d, d
    ld bc, $8a01
    jp z, Jump_00c_4511

    sbc b
    call z, $c210
    jr jr_00c_6e7d

    ld a, a
    nop
    nop
    ld a, l
    nop
    ld a, $00
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    cp a
    rst $38
    nop
    nop
    rst $20
    nop
    ld sp, hl
    nop
    ld a, [hl]
    nop
    cp l
    nop
    nop
    nop
    nop
    nop
    rra
    and b
    nop
    nop
    add b
    ccf
    rst $08
    db $10
    ld h, $08
    di
    inc b
    nop
    nop
    nop
    nop
    ld l, d
    ld sp, $0001
    jr z, jr_00c_6f62

    dec b
    nop
    dec b
    dec d
    jr nz, @+$07

    ld bc, $0000
    nop
    call z, $aa10
    nop
    nop
    nop
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld a, h
    cp $38
    cp $10
    cp $10
    xor $38
    add $7c
    add d
    cp $00
    nop
    nop
    rrca
    nop
    ld h, $00
    ld [hl], h
    nop

jr_00c_6f62:
    db $10
    jr nz, jr_00c_6fad

jr_00c_6f65:
    db $10
    ld c, b
    nop
    nop
    db $10
    db $10
    jr nz, jr_00c_6f78

    nop
    dec a
    nop
    ld a, b
    dec b
    ld hl, sp+$05
    ldh a, [$ff08]
    ret nz

    ld [hl-], a

jr_00c_6f78:
    add e
    ld c, h
    adc a
    jr nc, jr_00c_6fa7

    ld b, $d5
    inc bc
    db $eb
    nop
    db $ec
    nop
    ld l, [hl]
    add b
    dec l
    ld b, b
    ld a, [bc]
    add c

jr_00c_6f8a:
    reti


    inc bc
    nop
    nop
    ld h, h
    ld a, b
    cp b
    ccf
    cp [hl]
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    add b
    ld a, a
    nop
    nop
    ld a, a
    nop
    ld a, $00
    add b
    nop
    jr nz, jr_00c_6f65

    ld bc, $02fe

jr_00c_6fa7:
    db $fc
    jr jr_00c_6f8a

    ld bc, $9101

jr_00c_6fad:
    ld bc, $0525
    ld c, c
    dec c
    sub c
    dec e
    dec h
    add hl, sp
    ld b, d
    ld a, c
    adc c
    ldh a, [rNR10]
    ldh [$ff7f], a
    nop
    cp a
    nop
    ret nz

    nop
    rst $18
    nop
    ret nc

    nop
    ret c

    nop
    db $dd
    nop
    sbc $00
    cp $00
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    inc b
    nop
    inc c
    nop
    call c, Call_000_3c00
    nop
    call c, $de00
    nop
    rst $18
    nop
    rst $18
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc a
    nop
    ld a, h
    nop
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
    ld a, a
    nop
    cp a
    nop
    ret nz

    nop
    rst $18
    nop
    rst $18
    rrca
    rst $18
    rlca
    rst $18
    ld [bc], a
    rst $18
    ld bc, $00fe
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    db $fc
    ld hl, sp-$04

jr_00c_7017:
    ldh a, [$fffc]
    jr nz, jr_00c_7017

    ret nz

    rst $18
    inc bc
    rst $18
    ld bc, $00df
    rst $18
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    db $fc
    ldh [$fffc], a
    ret nz

    db $fc
    add b
    db $fc
    nop
    nop

jr_00c_7035:
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
    rst $38
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
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc bc
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
    ld [bc], a
    nop
    adc d
    nop
    ld a, [de]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
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
    nop
    nop
    rrca
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [de]
    nop
    adc d
    nop
    ld [bc], a
    nop
    ldh [c], a
    nop
    nop
    nop
    add sp, $00
    ret nc

    nop
    ld [$0000], a
    nop
    ld a, d
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    nop
    nop
    ld l, a
    nop
    or $00
    push bc
    jr nc, jr_00c_7035

    ld a, c
    ei

jr_00c_70b5:
    nop
    nop
    nop
    ei
    nop
    ld [hl], c
    nop
    ccf
    nop
    add a
    ld a, b
    ld bc, $00fe
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl+]
    ld b, $d5
    inc bc
    db $eb
    nop
    db $ec
    nop
    xor $00
    dec c
    nop
    jp z, $d901

    inc bc
    nop
    nop
    ld h, h
    ld a, b
    cp b
    ccf
    cp [hl]
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    add b
    ld a, a
    nop
    nop
    ccf
    nop
    ld e, $00
    add b
    nop
    jr nz, jr_00c_70b5

    ld bc, $02fe
    db $fc
    jr @-$1e

    ld bc, $9101
    ld bc, $0525
    ld c, c
    dec c
    sub c
    dec e
    dec h
    add hl, sp
    ld b, d
    ld a, c
    adc c
    ldh a, [rNR10]
    ldh [rBGP], a
    rrca
    ld de, $0071
    ld a, h
    cp $38
    cp $10
    cp $10
    xor $38
    add $7c
    add d
    cp $00
    nop
    nop
    add a
    add a
    ld b, b
    jr c, jr_00c_7161

    ld a, a
    cp b
    nop
    add b
    add b
    add a
    add b
    and a
    add a
    rst $20
    or a
    pop hl
    pop hl
    ld [bc], a
    inc e
    call c, Call_000_1dfe
    nop
    ld bc, $e101
    ld bc, $e1e9
    ld sp, hl
    db $ed
    jr jr_00c_7185

    ld b, d
    ld e, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop

jr_00c_7161:
    add l
    inc bc
    jr nz, jr_00c_7175

    add l
    inc bc
    jr nz, jr_00c_7179

    add l
    inc bc
    jr nz, jr_00c_717d

    add l
    inc bc
    jr nz, jr_00c_7181

    nop
    nop
    ld e, d
    inc a

jr_00c_7175:
    nop
    nop
    ld e, d
    inc a

jr_00c_7179:
    nop
    nop
    ld e, d
    inc a

jr_00c_717d:
    nop
    nop
    ld e, d
    inc a

jr_00c_7181:
    ld e, d
    inc a
    nop
    nop

jr_00c_7185:
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
    inc b
    ld [$c0a1], sp
    inc b
    ld [$c0a1], sp
    inc b
    ld [$c0a1], sp
    inc b
    ld [$c0a1], sp
    ld c, e
    rrca
    and a
    ld [hl], $16
    and h
    add $8c
    ld h, $b4
    sub a
    ld h, $4b
    rrca
    nop
    nop
    db $fd
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $fd00
    rst $38
    nop
    nop
    ld h, h
    add b
    sub d
    ret c

    adc b
    ld d, d
    add [hl]
    ld h, d
    sub b
    ld e, d
    adc d
    ret nc

    ld h, h
    add b
    nop
    nop
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    add [hl]
    ld c, a
    inc h
    ld b, b
    inc h
    ld b, b
    inc h
    ld b, b
    inc h
    ld b, b
    inc h
    ld b, b
    inc h
    ld b, b
    inc h
    ld b, b
    inc h
    ld b, b
    ld a, [hl+]
    ld b, $55
    inc c
    nop
    nop
    ld a, a
    nop
    push bc
    ccf
    xor e
    ld e, h
    sbc l
    dec hl
    adc e
    dec hl
    and h
    ld [hl], e
    ld c, e
    rst $20
    nop
    nop
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld [hl], a
    xor a
    rst $38
    xor a
    ld c, d
    sbc h
    and l
    adc $00
    nop
    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    inc e
    db $dd
    db $eb
    rst $38
    db $eb
    xor b
    ret nz

    ld d, h
    ld h, b
    nop
    nop
    db $fc
    nop
    ld b, [hl]
    ld hl, sp-$56
    ld [hl], h
    ld [hl], d
    xor b
    and d
    xor b
    xor d
    add hl, bc
    adc b
    ld e, h
    call nz, Call_00c_7f3f
    nop
    nop
    nop
    ld d, l
    inc c
    ld a, [hl+]
    ld b, $00
    nop
    xor b
    daa
    jr nz, jr_00c_72b5

    ld [hl], b
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, e
    rst $20
    and h
    ld [hl], e
    nop
    nop
    ld a, [hl+]
    ret


    ld [$1c1c], sp
    rst $38
    rst $38
    nop
    nop
    nop
    and l
    adc $4a
    sbc h
    nop
    nop
    xor d
    jr nz, jr_00c_7286

    ld [hl], h
    ld b, [hl]
    ld hl, sp-$04
    nop
    nop
    nop
    ld d, h
    ld h, b
    xor b
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, [hl]
    db $dd
    ld c, [hl]
    ld c, e
    ld c, [hl]
    res 0, c
    ld e, h
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld a, d

jr_00c_7286:
    cp e

jr_00c_7287:
    ld [hl], d
    jp nc, $d372

    add c
    ld a, [hl-]
    ld a, d
    nop
    nop
    nop
    inc b
    jr z, jr_00c_72ce

    ld a, h
    nop
    nop
    ld [hl+], a
    ld h, h
    ld a, [hl-]
    ld a, h
    ld a, [hl-]
    ld h, h
    ld a, [hl-]
    ld e, b
    inc b
    jr c, jr_00c_72a6

    jr c, jr_00c_72de

    ld e, b
    ld a, [hl-]

jr_00c_72a6:
    ld h, h
    ld a, [hl-]
    ld a, h
    ld [hl+], a
    ld h, h
    nop
    nop
    ld a, [hl-]
    ld a, h
    inc b
    jr z, jr_00c_72b2

jr_00c_72b2:
    nop
    dec h
    add hl, de

jr_00c_72b5:
    ld d, d
    dec sp
    daa
    ld [hl], a
    rrca
    ld l, a
    ld e, a
    rra
    cpl
    ccf
    ld d, $7e
    nop
    nop
    ld b, b
    adc d
    xor d
    jp nz, $e240

    sbc d
    ret nz

    and h
    sub b
    dec h

jr_00c_72ce:
    ld h, [hl]
    ld [bc], a
    add e
    ld c, b
    dec a
    ld h, b
    ld a, [de]
    ld [hl], $02
    ld [$2804], sp
    ld b, b
    ld b, $02
    add hl, hl

jr_00c_72de:
    ld [hl], e
    ld [bc], a
    ld bc, $8228
    jp nz, $888a

jr_00c_72e6:
    jp nz, $0002

    sub b
    ret nz

    ret z

    sub c
    ld b, h
    adc b
    and [hl]
    inc b
    nop
    xor h
    xor h
    xor [hl]
    ld [bc], a
    xor h
    xor h
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $fc
    db $fc
    nop
    nop
    nop
    ld l, l
    xor $46
    jr z, jr_00c_7287

    nop
    ld [$a404], sp
    ld b, d
    inc de
    ld bc, $e051
    nop
    inc b
    ld d, d
    ld [hl+], a
    xor d
    ld [hl], d
    ld [hl], b
    ld a, [$76b4]
    ld c, d
    inc l
    inc d
    jr jr_00c_72e6

    ldh a, [rP1]
    nop
    ld d, d
    db $e4
    ld [bc], a
    inc b
    ld d, d
    db $e4
    ld [bc], a
    inc b
    ld d, d
    db $e4
    ld d, d
    db $e4
    inc h
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $08
    rst $38
    db $10
    rst $38
    cpl
    rst $38
    ld e, b
    rst $38
    ld d, b
    rst $38
    ld d, e
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    db $10
    rst $38
    ret z

    rst $38
    ld h, h
    rst $38
    inc h
    rst $38
    and h
    rst $38
    inc h
    rst $38
    ld d, e
    rst $38
    ld e, b
    rst $38
    ld c, a
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    ld h, h
    rst $38
    call nz, Call_000_08ff
    rst $38
    db $10
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld b, h
    rst $38
    ld a, h
    rst $38
    ld b, h
    rst $38
    ld a, h
    rst $38
    ld b, h
    rst $38
    ld a, h
    rst $38
    ld b, h
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld bc, $f9ff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld bc, $f9ff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    db $dd
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc b
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld de, $aaff
    rst $38
    ld d, l
    rst $38
    cp e
    rst $38
    xor $ff
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], a
    nop
    rst $38
    ld [hl], a
    add b
    ld a, e
    cp a
    ld e, e
    xor a
    ld d, l
    daa
    ld d, a
    and e
    ld c, a
    and c
    ld e, a
    call c, $fe00
    call c, $fc02
    ld a, [$eaf4]
    db $f4
    ld [$82c4], a
    ldh a, [$ff08]
    ldh [$ffa1], a
    ld e, [hl]
    or e
    ld c, h
    add l
    ld e, b
    ld l, h
    ld bc, $42bc
    add b
    ld b, b
    ld h, [hl]
    ld de, $0000
    ld a, [hl+]
    call nc, Call_00c_748a
    jp z, Jump_00c_6a34

    inc d
    ld a, [$0204]
    inc b
    inc a
    nop
    nop
    nop
    nop
    nop
    cpl
    rra
    ld e, a
    ccf
    nop
    nop
    ld e, a
    ccf
    ld e, a
    ccf
    nop
    nop
    add hl, bc
    ld e, e
    nop
    nop
    and h
    ld hl, sp-$2e
    db $fc
    nop
    nop
    jp nc, $d2fc

    db $fc
    nop
    nop
    ld c, d
    sub b
    nop
    nop
    ld d, a
    ccf
    ld d, a
    ccf
    cpl
    rra
    ld e, a
    ccf
    nop
    nop
    cpl
    rra
    nop
    nop
    nop
    nop
    or [hl]
    add sp, -$4a
    add sp, -$58
    ldh a, [$ffa6]
    ld hl, sp+$00
    nop
    ld c, h
    ldh a, [rP1]
    nop
    nop
    nop
    cpl
    rra
    nop
    nop
    cpl
    rra
    nop

Call_00c_748a:
    nop
    cpl
    rra
    nop
    nop
    cpl
    rra
    nop
    nop
    ld c, h
    ldh a, [rP1]
    nop
    ld c, h
    ldh a, [rP1]
    nop
    ld c, h
    ldh a, [rP1]
    nop
    ld c, h
    ldh a, [$ff3f]
    nop
    ld c, b
    nop
    sub e
    nop
    and a
    nop
    call z, $9900
    nop
    sub e
    nop
    sub b
    nop
    ld hl, sp+$00
    inc h
    nop
    jp nc, $ea00

    nop
    halt
    nop
    cp d
    nop
    jp c, Jump_000_1a00

    nop
    sub e
    nop
    sbc c
    nop
    call z, $a700
    nop
    sub e
    nop
    ld c, b
    nop
    ccf
    nop
    nop
    nop
    jp c, $ba00

    nop
    halt
    nop
    ld [$d200], a
    nop
    inc h
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    cp $00
    sbc l
    ld bc, $15ad
    pop de
    add hl, bc
    jp hl


    db $10
    push hl
    inc bc
    add c
    dec sp
    ld a, a
    nop
    rst $38
    nop
    ld [hl], e
    nop
    ld l, e
    ld d, b
    rla
    jr nz, jr_00c_752a

    db $10
    ld c, a
    add b
    inc bc
    ld a, b
    cp l
    ld [bc], a
    add c
    ld de, $09e4
    jp hl


    ld de, $01d1
    xor l
    nop
    sbc l
    nop
    cp $00
    rst $38
    add b
    inc bc
    db $10
    ld c, a
    jr nz, jr_00c_7546

    ld d, b
    rla
    nop
    ld l, e
    nop
    ld [hl], e
    nop
    rst $38
    nop
    rst $38
    dec a
    nop
    ld d, b
    dec l
    sub c
    ld a, e
    xor a
    ld a, e
    sbc l

jr_00c_752a:
    ld [hl], a
    xor a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld c, a
    db $fc
    nop
    ld c, $f0
    ld d, h
    ld hl, sp-$56
    db $fc
    call nc, $eaf8
    call c, $e8e4
    ldh [$fff0], a
    rra
    ccf
    xor d
    ld e, a
    push bc

jr_00c_7546:
    ccf
    jr z, jr_00c_75a0

    sub l
    ld a, [hl+]
    ld d, h
    ld bc, $002a
    nop
    nop
    sub $e8
    xor h
    ldh a, [rSC]
    ld hl, sp+$2c
    ret nc

    ld e, d
    and b
    sub h
    ld b, b
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, a
    ld e, a
    ld e, b
    ld e, b
    nop
    ld d, a
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$fafa]
    ld a, [de]
    ld a, [de]
    nop
    ld [$0a00], a
    nop
    nop
    nop
    nop
    ld e, a
    rrca
    add [hl]
    ld [hl], l
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
    cp $00
    ldh a, [rSB]
    pop bc
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop

jr_00c_75a0:
    nop
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    rrca
    add b
    add e
    ldh a, [rIE]
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
    pop af
    ld bc, $0fcf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ccf
    ccf
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    pop af
    rst $38
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
    ld a, a
    nop
    adc a
    add b
    di
    ldh a, [rIE]
    nop
    cp $00
    db $fc
    ld bc, $03f9
    di
    rlca
    di
    rlca
    rst $20
    rrca
    rst $20
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fffc]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    ccf
    add b
    sbc a
    ret nz

    rst $08
    ldh [$ffcf], a
    ldh [$ffe7], a
    ldh a, [$ffe7]
    ldh a, [rIE]
    nop
    cp $00
    db $fd
    ld bc, $00f8
    ld hl, sp+$02
    or $07
    db $ec
    ld c, $e0
    inc b
    jr c, @+$41

    ldh [rIE], a
    nop
    ld h, [hl]
    ld b, h
    ld b, h
    nop
    sub c
    ld sp, $63ff
    ld h, e
    ld b, d
    ld b, e
    inc bc
    rst $38
    ld bc, $00ff
    jr jr_00c_767d

    stop
    rst $00
    jp $04ff


    add a
    nop
    inc bc

jr_00c_7676:
    ret nz

    rst $38
    add b
    rst $38
    nop
    jr jr_00c_7685

jr_00c_767d:
    ld [$e300], sp
    jp Jump_000_20ff


    pop hl
    nop

jr_00c_7685:
    ret nz

    inc e
    db $fc
    rlca
    rst $38
    nop
    ld h, [hl]
    ld [hl+], a
    ld [hl+], a
    nop
    adc c
    adc h
    rst $38
    add $c6
    ld b, d
    jp nz, Jump_000_00ff

    ld a, a
    nop
    cp a
    add b
    rra
    nop
    rra
    ld b, b
    ld l, a
    ldh [$ff37], a
    ld [hl], b
    rlca
    jr nz, jr_00c_7676

    rra
    rst $08
    rra
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    di
    ld hl, sp-$0d
    ld hl, sp-$07
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    db $fc
    cp $fc
    cp $d0
    add hl, de
    ret nc

    rra
    and b
    ccf
    add b
    inc e
    ld h, e
    ld l, e
    ld b, d
    ld l, e
    inc e
    inc e
    ld a, a
    ld a, a
    nop
    sbc h
    ldh a, [rIE]
    ldh [rIE], a
    ld b, b
    ld a, b
    add a
    or a
    inc h
    or a
    ld a, b
    ld a, b
    rst $38
    rst $38
    nop
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    add a

jr_00c_76ef:
    or a
    inc b
    or a
    nop
    ld a, b
    rst $38
    rst $38
    nop
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    ld e, $e1
    db $ed
    jr nz, jr_00c_76ef

    nop
    ld e, $ff
    rst $38
    nop
    add hl, sp
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    ld e, $e1
    db $ed
    inc h
    db $ed
    ld e, $1e
    rst $38
    rst $38
    dec bc
    sbc b
    dec bc
    ld hl, sp+$05
    db $fc
    ld bc, $c638
    sub $42
    sub $38

jr_00c_7723:
    jr c, jr_00c_7723

    cp $ff
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
    rst $38
    nop
    cp $00
    add b
    nop
    add [hl]
    ccf
    add b
    nop
    pop bc
    nop
    call nc, $a90b
    rla
    xor c
    rla
    nop
    nop
    nop
    nop
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    cp e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    nop
    nop
    nop
    nop
    cpl
    rst $38
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
    nop
    nop
    nop
    nop
    db $f4
    rst $38
    nop
    nop
    rra
    ldh [$fffd], a
    rst $38
    cp $ff
    cp $ff
    nop
    nop
    nop
    nop
    ld bc, $00ff
    nop
    rst $38
    nop
    ret nc

    rst $38
    add sp, -$01
    add sp, -$01
    nop
    nop
    ld bc, $6100
    db $fc
    ld bc, $0300
    nop
    ld e, e
    and b
    dec l
    ret nc

    dec l
    ret nc

    nop
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, [$f501]
    ld [bc], a
    push af
    ld [bc], a
    db $f4
    nop
    di
    nop
    db $f4
    inc bc
    db $eb
    rlca
    ldh [$ff1f], a
    adc e
    ld a, a
    rla
    rst $38
    rla
    rst $38
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
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    rst $38
    nop
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rra
    rla
    rst $08
    add b
    ldh [$ffe2], a
    ret nz

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
    rst $38
    nop
    nop
    rst $18
    nop
    nop
    rst $38
    rst $28
    rst $38
    or $ff
    db $f4
    ld hl, sp-$16
    ldh a, [$ffd5]
    ldh [rTIMA], a
    ld bc, $0308
    rlca
    ld hl, sp-$17
    cp $80
    nop
    ccf
    nop
    nop
    ld a, a
    ld bc, $feff
    cp $05
    db $fc
    cp a
    nop
    ld e, a
    add b

jr_00c_781a:
    cpl
    nop
    rst $08
    nop
    rla
    ldh [$ffeb], a
    ldh a, [rNR13]
    jr @+$0b

    inc c
    call nc, $c808
    db $10
    pop bc
    db $10
    jp nz, $d210

    nop
    and b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    inc bc
    ld bc, $01fd
    nop
    ld bc, $00fd
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    ret nz

    jr nz, jr_00c_781a

    inc l
    jp $c703


    ld de, $b9bb
    inc bc
    jp Jump_000_2607


    rrca
    rst $18
    nop
    nop
    nop
    ld bc, $e6fe
    rst $38
    xor e
    ld h, a
    dec b
    and e
    adc d
    add l
    adc b
    nop
    inc bc
    dec bc
    dec bc
    inc bc
    add c
    rla
    ld d, [hl]
    add a
    ld c, a
    adc a
    inc de
    adc a
    add [hl]
    ld bc, $0080
    ld hl, sp-$05
    ei
    ei
    rst $30
    rst $30
    inc hl
    rst $30
    ret nz

    rst $20
    pop bc
    rst $28
    ld b, [hl]
    adc $80
    ld b, b
    add l
    inc b
    ld d, l
    add h

jr_00c_789a:
    add d
    jp nz, $c2e8

    jp z, $85e0

    add b
    ld [bc], a
    nop
    nop
    nop
    call nc, $c808
    db $10
    pop bc
    db $10
    jp nz, $c210

    db $10
    jp nz, $c210

    db $10
    jp nz, RST_10

    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, e
    nop
    rlca
    inc bc
    inc bc
    ld bc, $01fd
    ld bc, $fd01
    ld bc, $0101
    ld bc, $fd01
    ld bc, $c0a2
    jr nz, jr_00c_789a

    inc l
    jp $c703


    ld de, $39bb
    add e
    ld b, e
    add [hl]
    daa
    adc $df
    nop
    nop
    nop
    ld bc, $fefe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, c
    ld a, l
    ld a, c
    inc bc
    dec bc
    inc bc
    dec bc
    add e
    rla
    ld d, a
    sub a
    ld d, a
    sub a
    ld d, a
    sub a
    ld b, b
    sub a
    ld b, a
    sub a
    ld hl, sp-$05
    ei
    ei
    rst $30
    rst $30
    di
    rst $30
    ldh a, [$fff7]
    ldh a, [$fff7]
    ld de, $f7f7
    or $85
    inc b
    ld d, l
    add h
    add d
    jp nz, $c2ea

    ld [$4ae2], a
    jp nz, $a2ea

    ld [$c242], a
    db $10
    jp nz, $c210

    db $10
    jp nz, $c210

    db $10
    jp nz, $c210

    db $10
    jp z, Jump_00c_4410

    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h

jr_00c_793f:
    nop
    ld b, h

jr_00c_7941:
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $ce27
    dec h
    adc $25
    adc $24
    adc $24
    rst $08
    ld [bc], a
    rst $00
    inc de
    cp e
    add hl, sp
    add e
    ld e, c
    inc de
    jp hl


    inc bc
    or l
    rlca
    ld [hl], l
    ld b, a
    jp hl


    rst $08
    ld h, e
    rst $08
    rlca
    rst $38
    rst $38
    rst $38
    ld d, a
    add a
    ld d, h
    add e
    jr z, jr_00c_793f

    jr z, jr_00c_7941

    ld a, [hl+]
    pop bc
    dec d
    ldh [rNR14], a
    ldh [rNR30], a
    ldh [$fff3], a
    pop af
    ld d, $f7
    add hl, bc
    ld a, [$f80b]
    dec b
    db $fc
    ldh a, [c]
    ld c, $f9
    rlca
    ld a, [hl]
    ld bc, $c2a8
    ld b, d
    add b
    push de
    inc b
    add c
    inc b
    dec c
    ld [$1813], sp
    db $eb

jr_00c_79a3:
    ldh a, [rNR22]
    ldh [$ffd4], a
    ld [$07e8], sp
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    di
    nop
    di
    nop
    db $f4
    nop
    nop
    nop
    nop
    rst $38
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
    nop
    nop
    ld b, $03
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, e
    add a
    inc hl
    rst $08
    jr z, jr_00c_79a3

    and b
    ld b, b
    and b
    ld b, b
    db $e3
    nop
    ret nz

    nop
    ccf
    nop
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    nop
    nop
    nop
    nop
    cp $00
    nop
    nop
    nop
    nop
    inc e
    ldh [rNR34], a
    ldh [$ff3c], a
    ret nz

    nop
    nop
    nop
    nop
    add b
    nop
    ld c, $01
    jr c, jr_00c_7a0d

    nop
    nop
    ld e, d
    inc a
    nop
    nop
    ld e, d

jr_00c_7a0d:
    inc a
    nop
    nop
    ld e, d
    inc a
    add b
    nop
    and c
    ret nz

    rst $08
    nop
    cpl
    nop
    adc a
    nop
    rrca
    nop
    rra
    nop
    sbc a
    nop
    rrca
    nop
    cpl
    add b
    rst $30
    nop
    push af
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ldh [$ff1f], a
    ld bc, $fdff
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    nop
    inc e
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rNR24], a
    ldh [rNR24], a
    ldh [rNR24], a
    ldh [rNR10], a
    ldh [$ff71], a
    rrca
    ld h, b
    rra
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    nop
    nop
    pop hl
    rst $38
    sbc $e0
    rst $38
    rst $18
    ld l, a
    rst $18
    ld b, a
    cp a
    nop
    cp a
    add c
    ld a, $00
    nop
    rst $08
    add b
    cpl
    ld b, b
    scf
    add b
    sub a
    ret nz

    dec de
    ret nz

    ld l, e
    add b
    db $eb
    nop
    inc bc
    nop
    nop
    nop
    ld a, a
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
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    db $fc
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc [hl]
    ld a, b
    jr nc, jr_00c_7aca

jr_00c_7aca:
    ld d, h
    jr c, jr_00c_7add

    jr c, jr_00c_7b07

    db $10
    db $10
    stop
    db $10
    stop
    nop
    nop
    ccf
    cp a
    cp a
    cp a
    add b

jr_00c_7add:
    cp a
    ccf
    cp a
    add b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fd
    db $fd
    db $fd
    ld bc, $fcfd
    db $fd
    ld bc, $fcfc
    nop
    nop
    nop
    push af
    ld [bc], a
    push af
    ld [bc], a
    pop af
    nop
    ld hl, sp+$00
    push af
    ld [bc], a
    pop af
    ld [bc], a
    db $f4
    dec b
    ldh a, [rTIMA]
    rla

jr_00c_7b07:
    rst $38
    rla
    rst $38
    ld [hl], h
    dec bc
    nop
    nop
    rla
    rst $38
    rla
    sbc [hl]
    ld c, d
    ld l, l
    add hl, hl
    ld c, h
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, b
    cp a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    inc a
    cp l
    db $db
    ld e, d
    sbc c
    db $fd
    rst $38
    db $fd
    rst $38
    dec b
    ld a, [$0000]
    db $fd
    rst $38
    rst $38
    inc a
    cp l
    db $db
    ld e, d
    sbc c
    ld [de], a
    pop hl
    db $10
    ldh [$fff4], a
    inc bc
    inc b
    inc bc
    inc d
    db $e3
    sub h
    ld h, e
    ld d, b
    and b
    sub h
    inc hl
    cp a
    rst $38
    rla
    nop
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rla
    nop
    cp a
    rst $38
    rst $38
    rst $38
    db $f4
    nop
    rst $38
    rst $38

Jump_00c_7b5c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    nop
    rst $38
    rst $38
    xor l
    ldh a, [rP1]
    nop
    xor d
    db $f4
    xor d
    db $f4
    xor d
    db $f4
    xor d
    db $f4
    nop
    nop
    xor d
    db $f4
    jr nc, jr_00c_7bf1

    ld a, e
    ld hl, sp+$01
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
    ld [hl], b
    ldh a, [rNR32]
    db $fc
    inc bc
    ccf
    ret nz

    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    rra
    ld h, b
    ld a, a
    nop
    nop
    rra
    ld a, a
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$08
    ld b, $fe
    nop
    nop
    ld hl, sp-$02
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $0f
    jr c, jr_00c_7bfc

    ret nz

    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    add b
    ld a, a
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
    rst $38
    nop
    ld sp, hl
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
    ld hl, sp+$00
    ld a, [bc]
    sbc [hl]
    ld hl, sp+$07
    nop
    nop
    rlc b

jr_00c_7bf1:
    add b
    nop
    ld c, e
    ccf
    ld c, e
    ccf
    nop
    nop
    inc e
    inc a
    nop

jr_00c_7bfc:
    rst $38
    nop
    nop
    and b
    ld e, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc a
    inc a
    dec b
    ld a, [$0000]
    dec b
    ld a, [$0000]
    add sp, -$01
    add sp, -$01
    nop
    nop
    db $10
    ld h, b
    pop af
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    cp b
    ld b, b
    cp b
    ld b, b
    nop
    nop
    nop
    nop
    sbc a
    ld a, a
    ld h, a
    rra
    ld e, $01
    nop
    nop
    xor a
    ld a, a
    ld d, a
    ccf
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    db $f4
    rst $38
    jp hl


    cp $00
    nop
    ld bc, $eb00
    ldh a, [$ff27]
    ret nz

    rst $18
    nop
    rrca
    nop
    or a
    ld b, b
    ld h, a
    add b
    rrca
    nop
    push af
    inc bc
    ldh a, [c]
    rlca
    ldh a, [c]
    rlca
    db $ec
    rlca
    db $e4
    ld c, $e4
    inc c
    ret c

    inc c
    ret z

    inc e
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld d, l
    nop
    nop
    ld d, l
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    ld bc, $0154
    nop
    ld d, l
    db $fc
    rst $38
    scf
    ld hl, sp+$37
    ld hl, sp+$6f
    ldh a, [$ff6f]
    ldh a, [$ff6f]
    ldh a, [$ffd8]
    ldh [$ffd3], a
    and $00
    cp $fe
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    ld [hl], b
    nop
    ld h, $0c
    xor a
    ld a, a
    ld d, a
    ccf
    nop
    nop
    xor a
    ld a, a
    ld d, a
    ccf
    nop
    nop
    xor a
    ld a, a
    ld d, a
    ccf
    db $f4
    rst $38
    jp hl


    cp $00
    nop
    db $f4
    rst $38
    jp hl


    cp $00
    nop
    db $f4
    rst $38
    jp hl


    cp $b7
    ld b, b
    ld h, a
    add b
    rrca

jr_00c_7cce:
    nop
    or a

jr_00c_7cd0:
    ld b, b
    ld h, a
    add b
    rrca
    nop
    or a

jr_00c_7cd6:
    ld b, b
    ld h, a
    add b
    nop
    nop
    ld c, d
    ld sp, $7830
    ld sp, $3278
    ld a, c
    ld bc, $4a7b
    ld sp, $0331
    nop
    nop
    rla
    rst $08
    nop
    nop
    rst $18
    nop
    nop
    rst $18
    rst $38
    rst $18
    jr nz, jr_00c_7cd6

    rst $38
    rst $28
    nop
    nop
    add sp, -$0d
    nop
    nop
    ei
    nop
    nop
    ei
    rst $38
    ei
    inc b
    ei
    rst $38
    rst $30
    nop
    add b
    ccf
    cp a
    jr nz, jr_00c_7cce

    jr nz, jr_00c_7cd0

    rra
    and b
    nop
    add b
    nop
    ret nz

    ld l, d
    call nz, $0002
    ldh a, [c]
    ld hl, sp+$0a
    ldh a, [$ff0a]
    ldh a, [$fffa]
    nop
    ld [bc], a
    nop
    ld a, [bc]
    inc b
    and [hl]
    ld c, h
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ccf
    ld b, b
    nop
    nop
    nop
    nop
    jr nz, jr_00c_7d54

    rra
    ccf
    ccf
    nop
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    nop
    add l
    inc bc
    ei
    add a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_00c_7d54:
    rst $38
    rst $38
    nop
    xor d
    ld b, h
    rst $38
    ldh a, [rIE]
    rst $08
    rst $20
    or a
    rst $10
    and a
    rst $08
    rst $08
    nop
    rst $38
    rst $38
    nop
    xor d
    ld b, h
    rst $38
    rrca
    rst $38
    di
    ld sp, hl
    db $ed
    push af
    jp hl


    di
    di
    nop
    rst $38
    rst $38
    nop
    xor d
    ld b, h
    ld h, [hl]
    call z, $cc66
    ld h, [hl]
    call z, $cc66
    ld h, b
    ret nz

    ld l, a
    rst $08
    ld l, b
    rst $08
    ld h, b
    rst $08
    ld h, [hl]
    call z, $cc66
    ld h, [hl]
    call z, $cc66
    ld b, $0c
    add $ec
    ld h, $cc
    ld h, $cc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    cp c
    ccf
    add b
    nop
    ret c

    rra
    ret nc

    ld de, $11d0

jr_00c_7dc5:
    xor $0f
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ccf
    rst $38
    jr nc, @-$0e

    jr nc, jr_00c_7dc5

    rra
    rst $38
    nop
    nop
    nop
    nop
    ret nc

    rst $38
    nop
    nop
    ldh [rIE], a
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    rlca
    rst $38
    rra
    ccf
    rra
    ccf
    ccf
    rst $38
    nop
    nop
    nop
    nop
    cp $ff
    nop
    nop
    db $fc
    rst $38
    inc c
    rrca
    inc c
    rrca
    ld hl, sp-$01
    nop
    nop
    ld bc, $9d00
    db $fc
    ld bc, $1b00
    ld hl, sp+$0b
    adc b
    dec bc
    adc b
    ld [hl], a
    ldh a, [rIF]
    nop
    add b
    nop
    cp c
    ccf
    add b
    nop
    ret c

    rra
    call nz, $c607
    rlca
    xor $0f
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ccf
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    ret nc

    rst $38
    nop
    nop
    ldh [rIE], a
    add b
    add a
    add b
    add a
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    rlca
    rst $38
    ld bc, $01e1
    pop hl
    ccf
    rst $38
    nop
    nop
    nop
    nop
    cp $ff
    nop
    nop
    db $fc
    rst $38
    ldh a, [$fff0]
    ldh a, [$fff0]
    ld hl, sp-$01
    nop
    nop
    ld bc, $9d00
    db $fc
    ld bc, $1b00
    ld hl, sp+$23
    ldh [$ff63], a
    ldh [rPCM34], a
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00c_7f3f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
