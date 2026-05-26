; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    rrca
    ld b, e
    cp e
    ld h, b
    jp Jump_008_73c1


    add hl, hl
    ld e, [hl]
    db $fd
    ld [hl], e
    dec h
    ld [hl], l

Call_008_400d:
    ld [$db0b], a
    ld [$db0c], a
    ret


Call_008_4014:
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
    ld a, $01
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


Call_008_402e:
jr_008_402e:
    ld a, [$cca8]
    and $07
    jr nz, jr_008_402e

jr_008_4035:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_008_4035

    ret


Call_008_403e:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_008_4052:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_008_4065

    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_008_406b

    dec [hl]

jr_008_4065:
    ld a, [$d773]
    ld d, a
    jr jr_008_40ac

jr_008_406b:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_4071:
    ld a, [hl+]
    or a
    jr nz, jr_008_407c

    ld d, $00
    call Call_008_40ac
    scf
    ret


jr_008_407c:
    cp $fe
    jr nz, jr_008_409e

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $d778
    res 0, [hl]
    push hl
    call Call_008_40bf
    pop hl
    bit 0, [hl]
    pop hl
    jr nz, jr_008_4065

    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a
    jr jr_008_4071

jr_008_409e:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_008_40ac:
jr_008_40ac:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Jump_008_40b9:
    ld hl, $d778
    set 0, [hl]
    ret


Call_008_40bf:
    push de
    ret


Call_008_40c1:
    ld c, d
    ld b, $00
    ld hl, $d7eb
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, e
    add hl, bc
    ld a, [hl]
    ret


Jump_008_40d0:
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a

Call_008_40e3:
    push bc
    ld c, l
    xor a
    ldh [$ff8b], a
    ldh [$ff8f], a
    ld a, $01
    add c
    ld l, a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr nc, jr_008_40fd

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_008_40fd:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $02
    add c
    ld l, a

jr_008_4107:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_008_4126

    inc [hl]
    inc [hl]
    inc [hl]
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    push hl
    push bc
    call Call_008_40bf
    pop bc
    pop hl
    jr jr_008_4146

jr_008_4126:
    cp $ff
    jr nz, jr_008_4132

    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a
    jr jr_008_4146

jr_008_4132:
    cp $fe
    jr nz, jr_008_414e

    dec [hl]
    ld a, $01
    ldh [$ff8b], a
    xor a
    ldh [$ff8f], a
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    scf
    jr jr_008_414f

jr_008_4146:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_008_4107

jr_008_414e:
    or a

jr_008_414f:
    push af
    ld b, a
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff8e], a
    ld [hl], b
    pop af
    ld a, b
    pop bc
    ret


Call_008_415d:
    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_008_416a:
    ldh a, [$ff92]
    cp $fe
    ret z

    ld l, a
    ld a, [bc]
    cp $80
    ret z

    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld a, [bc]
    inc bc
    add d
    ld d, a
    ld [hl+], a
    ld a, [bc]
    inc bc
    add e
    ld e, a
    ld [hl+], a
    ld a, [bc]
    inc bc
    push hl
    ld hl, $ffac
    add [hl]
    pop hl
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_008_416a

    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    inc a
    ld l, a
    ret nz

    inc h
    ret


Call_008_41a0:
    ld b, $00

jr_008_41a2:
    ld a, [hl]
    cp d
    ret z

    cp e
    jr z, jr_008_41ab

    add hl, bc
    jr jr_008_41a2

jr_008_41ab:
    scf
    ret


Call_008_41ad:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_008_41b6:
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
    jr nc, jr_008_41ca

    add hl, bc
    jr jr_008_41cb

jr_008_41ca:
    inc de

jr_008_41cb:
    pop af
    dec a
    jr nz, jr_008_41b6

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


    ret


    ld a, e
    ld [$de75], a
    ld a, d
    ld [$de76], a
    ld a, $0b
    ld [$de73], a
    ld a, $42
    ld [$de74], a
    ret


Call_008_41ea:
    ld a, [$de74]
    or a
    jr z, jr_008_4207

    xor a
    ldh [$ffab], a
    ld a, [$d70d]
    ldh [$ff8a], a
    ld a, [$d70e]
    ldh [$ff8b], a
    ld a, [$d725]
    ldh [$ff8c], a
    call Call_008_420b
    ldh a, [$ffab]

jr_008_4207:
    ld [$d70b], a
    ret


Call_008_420b:
    ldh a, [$ff8c]
    ld b, a
    cp $f0
    jr c, jr_008_4214

    ld b, $00

jr_008_4214:
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    bit 7, d
    jr z, jr_008_4221

    ld d, $00
    ld e, d

jr_008_4221:
    ld hl, $de75
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_4227:
    ld a, [hl+]
    ld c, a
    and [hl]
    inc a
    ret z

    ld a, e
    sub c
    ld a, d
    sbc [hl]
    jr c, jr_008_424a

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_008_424c

    inc hl
    ld a, b
    cp [hl]
    jr c, jr_008_424d

    inc hl
    cp [hl]
    jr nc, jr_008_424e

    ldh a, [$ffab]
    set 7, a
    ldh [$ffab], a
    ret


jr_008_424a:
    inc hl
    inc hl

jr_008_424c:
    inc hl

jr_008_424d:
    inc hl

jr_008_424e:
    inc hl
    jr jr_008_4227

Call_008_4251:
Jump_008_4251:
    ld hl, $cc00
    call Call_008_425e
    ld hl, $c3e5
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_008_425e:
    push hl
    call Call_008_428d
    pop hl
    ld c, l
    jp Jump_008_42b6


Call_008_4267:
    ld a, [$de8f]
    ld b, a

jr_008_426b:
    ld a, [hl+]
    or a
    jr z, jr_008_4274

    cp b
    jr nz, jr_008_426b

    ld a, $01

jr_008_4274:
    ld [$d161], a
    ret


Call_008_4278:
    ld a, [$d161]
    or a
    ret z

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    or c
    jr nz, jr_008_42a5

    push de
    call Call_000_0219
    pop de

Call_008_428d:
    ld a, l
    ld [$c3e5], a
    ld a, h
    ld [$c3e6], a
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $00
    ret


    ld c, l

jr_008_42a5:
    ld a, [$deaf]
    and $ff
    jp nz, Jump_008_430b

    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_008_430b

Jump_008_42b6:
jr_008_42b6:
    ld a, $2c
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    push hl
    ld l, [hl]
    ld h, $00
    ld b, l
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    cp $fe
    jr z, jr_008_430d

    cp $ff
    jr nz, jr_008_42de

    ld [hl], $00
    jr jr_008_42b6

jr_008_42de:
    inc [hl]
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ldh [$ff8a], a
    ld l, e
    ld h, d
    pop de
    ld a, b
    or c
    call nz, Call_000_0183
    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    ld a, $2b
    add c
    ld l, a
    ldh a, [$ff8a]
    ld [hl], a
    or a
    jr z, jr_008_42b6

Jump_008_430b:
jr_008_430b:
    xor a
    ret


jr_008_430d:
    scf
    ret


    inc de
    ld b, e
    add hl, de
    ld b, e
    ld e, $43
    inc l
    ld b, e
    ld a, [hl-]
    ld b, e
    ld b, $05
    inc d
    inc b
    rst $38
    nop
    or b
    ld d, b
    add hl, sp
    ld d, d
    ld d, l
    ld b, l
    jp nc, $2745

    nop
    ld h, e
    ld c, b
    ld b, e
    nop
    or b
    ld d, b
    add hl, sp
    ld d, d
    ld d, l
    ld b, l
    jp nc, $5745

    nop
    ld d, e
    jp z, Jump_000_0043

    or b
    ld d, b
    add hl, sp
    ld d, d
    ld e, h
    ld b, l
    jp nc, $4745

    nop
    inc sp
    inc de
    ld b, l
    add c
    add $45
    sbc $45
    nop
    nop
    jr nz, jr_008_4362

    add b
    ld e, [hl]
    ld b, e
    nop
    dec sp
    ld a, [bc]
    stop
    dec sp
    db $10
    jr nz, jr_008_435d

jr_008_435d:
    nop
    ld [bc], a
    add $45
    add b

jr_008_4362:
    ld b, [hl]
    and b
    nop
    jr nz, jr_008_4368

    add b

jr_008_4368:
    ld [hl], h
    ld b, e
    daa
    rlca
    ld [bc], a
    ld c, b
    ld b, e
    dec sp
    inc bc
    stop
    nop
    inc bc
    add $45
    jp nc, $a046

    nop
    jr nz, jr_008_437e

    add b

jr_008_437e:
    adc [hl]
    ld b, e
    daa
    ld bc, $5e02
    ld b, e
    ld l, $02
    stop
    ld l, $08
    stop
    nop
    add h
    add $45
    inc h
    ld b, a
    and b
    nop
    dec h
    dec sp
    ld bc, $43b8
    daa
    ld bc, $7402
    ld b, e
    inc a
    ld [$0140], sp
    inc a
    ld d, $30
    ld bc, $263c
    ld h, b
    ld bc, $2a02
    ld h, b
    ld a, [bc]
    dec sp
    cpl
    stop
    dec sp
    scf
    stop
    nop
    dec b
    cp [hl]
    ld b, l
    ld b, $49
    ret nz

    inc bc
    jr nz, jr_008_43c8

    add b
    jp z, Jump_000_0043

    cpl
    rlca
    ld d, b

jr_008_43c8:
    nop
    nop
    ld b, $c6
    ld b, l
    ld e, b
    ld c, c
    ret nz

    inc bc
    db $10
    inc bc
    add b
    call c, Call_000_2743
    rlca
    ld [bc], a
    cp b
    ld b, e
    nop
    rlca
    add $45
    xor d
    ld c, c
    ret nz

    inc bc
    inc [hl]
    inc de
    ld bc, $43fe
    scf
    ld bc, $ca02
    ld b, e
    dec hl
    ld [$0040], sp
    ld [bc], a
    ld c, $10
    dec bc
    ld [bc], a
    rrca
    db $10
    dec bc
    dec hl
    ld de, $0050
    nop
    adc b
    cp [hl]
    ld b, l
    ld c, h
    ld c, d
    nop
    dec b
    db $10
    inc b
    add b
    inc d
    ld b, h
    nop
    ld l, $08
    jr nc, jr_008_440f

jr_008_440f:
    ld [bc], a
    ld [$0b60], sp
    nop
    adc c
    add $45
    sbc [hl]
    ld c, d
    nop
    dec b
    ld de, $0113
    ld l, $44
    daa
    inc bc
    ld [bc], a
    cp $43
    cpl
    ld [$0050], sp
    ld l, $10
    stop
    nop
    ld a, [bc]
    cp [hl]
    ld b, l
    ld b, b
    ld c, e
    ld b, b
    ld b, $87
    ld bc, $4002
    ld b, h
    nop
    ld b, $07
    jr nz, jr_008_443f

jr_008_443f:
    nop
    dec bc
    add $45
    sub d
    ld c, e
    ld b, b
    ld b, $17
    inc bc
    ld [bc], a
    ld d, [hl]
    ld b, h
    add b
    ld bc, $2e80
    ld b, h
    inc a
    ld [bc], a
    db $10
    ld bc, $0c00
    add $45
    db $e4
    ld c, e
    ld b, b
    ld b, $20
    rrca
    add b
    ld a, b
    ld b, h
    db $10
    inc bc
    add b
    ld b, b
    ld b, h
    ld l, $01
    jr nc, jr_008_446b

jr_008_446b:
    ld l, $09
    jr nz, jr_008_446f

jr_008_446f:
    ld [bc], a
    ld a, [bc]
    db $10
    ld [bc], a
    ld l, $12
    jr nz, jr_008_4477

jr_008_4477:
    nop
    dec c
    add $45
    add [hl]
    ld c, h
    ldh [rTMA], a
    ld hl, $0109
    adc e
    ld b, h
    daa
    dec b
    ld [bc], a
    ld d, [hl]
    ld b, h
    nop
    nop
    adc [hl]
    cp [hl]
    ld b, l
    ret c

    ld c, h
    add b
    rlca
    db $10
    inc bc
    add b
    sbc l
    ld b, h
    nop
    inc a
    rlca
    ld d, b
    ld bc, $8f00
    add $45
    ld a, [hl+]
    ld c, l
    add b
    rlca
    ld hl, $0113
    cp e
    ld b, h
    daa
    ld [bc], a
    ld [bc], a
    adc e
    ld b, h
    ld [bc], a
    ld bc, $0b50
    dec sp
    ld b, $10
    nop
    inc a
    ld de, $0120
    nop
    db $10
    cp [hl]
    ld b, l
    call z, $c04d
    ld [$1322], sp
    ld bc, $44d5
    nop
    ld l, $05
    ld b, b
    nop
    ld l, $0d
    ld b, b
    nop
    ld l, $11
    jr nz, jr_008_44d4

jr_008_44d4:
    nop
    sub c
    cp [hl]
    ld b, l
    ld l, [hl]
    ld c, [hl]
    nop
    ld a, [bc]
    ld sp, $011d
    db $eb
    ld b, h
    nop
    dec sp
    ld [de], a
    jr nc, jr_008_44e6

jr_008_44e6:
    inc a
    ld a, [de]
    ld b, b
    ld bc, $1200
    cp [hl]
    ld b, l
    ld h, b
    ld c, a
    ldh [$ff0b], a
    db $10
    rlca
    add b
    db $fd
    ld b, h
    nop
    dec hl
    rlca
    ld d, b
    nop
    nop
    inc de
    ld l, l
    ld b, l
    or d
    ld c, a
    ldh [$ff0b], a
    ld sp, $0108
    inc de
    ld b, l
    rla
    rlca
    ld [bc], a
    db $eb
    ld b, h
    dec sp
    inc b
    stop
    nop
    inc d
    ld a, c
    ld b, l
    inc b
    ld d, b
    add b
    inc c
    ld sp, $0108
    cpl
    ld b, l
    nop
    nop
    inc d
    ld [hl], a
    ld b, l
    inc b
    ld d, b
    add b
    inc c
    ld sp, $0108
    cpl
    ld b, l
    nop
    nop
    push de
    adc a
    ld b, l
    ld d, [hl]
    ld d, b
    jr nz, jr_008_4543

    nop
    nop
    scf
    add hl, bc
    ld h, b
    nop
    nop
    inc bc
    add hl, bc
    ld bc, $0000
    nop

jr_008_4543:
    inc bc
    nop
    ld bc, $0303
    inc bc
    inc bc
    add hl, bc
    ld bc, $0000
    nop
    inc bc
    nop
    ld bc, $0303
    inc bc
    ld de, $52b1
    jp Jump_008_4251


    ret


    ld de, $52b1
    call Call_008_4251
    ld a, $43
    ld [$d85c], a
    ld a, $45
    ld [$d85d], a
    ret


    ld a, $3d
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    jr jr_008_4583

    ld a, $43
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a

jr_008_4583:
    ld a, $49
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    jr jr_008_45c8

    ld a, $4f
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a
    ld a, $40
    ld [$d768], a
    ld a, $fa
    ld [$d769], a
    ld a, $28
    ld [$d76a], a
    ld a, $58
    ld [$d823], a
    ld a, $00
    ld [$d824], a
    ld a, $58
    ld [$d825], a
    ld a, $00
    ld [$d826], a
    jr jr_008_45c8

    ld a, $40
    ld [$d821], a
    jp Jump_008_45c8


    jr jr_008_45c8

Jump_008_45c8:
jr_008_45c8:
    call $5727
    ld hl, $529b
    call Call_008_4267
    ret


    ld de, $52c7
    call Call_008_4278
    call Call_008_573c
    jr nz, jr_008_45dd

jr_008_45dd:
    ret


    inc d
    ld [$1c1b], sp
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    ld bc, $121b
    jr z, jr_008_4620

    inc hl
    ld b, h
    ld b, l
    nop
    ld h, $27
    nop
    add hl, de
    ld a, [de]
    ld h, $27
    ld b, e
    ld b, h
    ld [hl+], a
    add hl, hl
    ld bc, $130a
    ld b, h
    ld b, l
    nop
    nop
    ld a, $38
    dec d
    ld d, $37
    rla
    jr @+$17

    ld d, $00
    nop
    nop
    add hl, de
    ld bc, $0b0c
    nop
    nop
    nop

jr_008_4620:
    nop
    dec a
    nop
    rla
    jr jr_008_4626

jr_008_4626:
    dec d
    ld d, $17
    jr jr_008_4661

    jr c, jr_008_466c

    rla
    ld bc, $0d12
    nop
    nop
    ld a, $38
    dec a
    jr c, jr_008_464d

    ld d, $3f
    rla
    jr @+$17

    ld d, $00
    nop
    dec a
    dec d
    ld a, [de]
    inc de
    ld [de], a
    ld [hl], $3f
    dec a
    nop
    add hl, sp
    jr nz, jr_008_465e

    ld [de], a

jr_008_464d:
    ld a, [bc]
    dec bc
    ld d, $17
    jr jr_008_4691

    jr c, jr_008_468d

    jr c, @+$39

    ld a, [bc]
    inc de
    nop
    add hl, sp
    add hl, sp
    jr nz, @+$1d

jr_008_465e:
    inc e
    inc de
    inc de

jr_008_4661:
    inc c
    dec c
    dec h
    dec h
    ld [de], a
    ld c, $0f
    ld [de], a
    dec d
    ld d, $0c

jr_008_466c:
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld [de], a
    ld a, [bc]
    dec bc
    ld c, $0f
    ld [$1308], sp
    db $10
    ld de, $122d
    ld c, $0f
    ld a, [bc]
    ld [$011c], sp
    inc c
    dec c
    jr z, jr_008_469c

    inc d
    inc h
    dec de
    inc e
    ld [de], a

jr_008_468d:
    ld bc, $0000
    ld e, l

jr_008_4691:
    ld b, l
    ld e, l
    ld b, l
    ld b, e
    ld a, [bc]
    dec l
    nop
    nop
    nop
    ld a, $36

jr_008_469c:
    scf
    ccf
    nop
    inc c
    inc de
    ld [hl], $38
    scf
    ld b, c
    rla
    jr jr_008_46f5

    scf
    ld [de], a
    rra
    dec de
    inc l
    inc e
    nop
    dec d
    ld d, $3d
    dec d
    inc de
    ld [de], a
    ld a, [bc]
    dec bc
    ld c, $0f
    ld hl, $3918
    rla
    ld a, [bc]
    inc de
    inc c
    dec c
    db $10
    ld de, $0b0a
    ld hl, $0c15
    ld [hl+], a
    dec de
    inc l
    inc e
    inc h
    inc c
    dec c
    rra
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [$0114], sp
    dec de
    inc e
    ld h, b
    ld h, c
    inc d
    dec de
    inc e
    ld a, [bc]
    dec bc
    ld a, [de]
    ld h, $27
    ld [hl], $3f
    nop
    nop
    nop
    inc c
    dec c
    jr jr_008_4700

    ld d, $00
    ld b, b
    ld c, e
    ld [hl], $37
    ld [de], a
    inc d
    add hl, hl
    dec de

jr_008_46f5:
    inc e
    ld [hl], $3f
    add hl, sp
    nop
    nop
    inc de
    rra
    daa
    add hl, de
    ld a, [de]

jr_008_4700:
    nop
    ld b, b
    inc d
    nop
    nop
    ld a, [bc]
    inc d
    ld d, $17
    jr jr_008_470b

jr_008_470b:
    nop
    ld b, d
    nop
    nop
    inc c
    ld [de], a
    jr jr_008_4728

    ld d, $00
    nop
    add hl, sp
    nop
    ld c, $0f
    inc de
    ld [bc], a
    ld a, [bc]
    dec bc
    inc d
    jr z, @+$26

    inc d
    db $10
    ld de, $083c
    dec de
    inc e

jr_008_4728:
    jr z, @+$25

    ld [hl+], a
    inc de
    inc hl
    ld [hl+], a
    inc c
    dec c
    db $10
    ld de, $0f0e
    ld l, $2f
    ld a, [bc]
    dec bc
    ld b, [hl]
    ld [hl+], a
    ld [de], a
    jr z, jr_008_4766

    inc hl
    nop
    nop
    nop
    rla
    jr jr_008_4759

    ld d, $00
    nop
    nop
    ld [hl+], a
    inc h
    ld l, $2f
    jr nz, jr_008_4761

    nop
    nop
    rla
    jr jr_008_4763

    ld de, $2324
    nop
    nop
    ld [hl+], a

jr_008_4759:
    jr z, jr_008_476e

    nop
    nop
    inc de
    jr z, jr_008_4789

    inc h

jr_008_4761:
    dec de
    dec bc

jr_008_4763:
    ld b, h
    ld b, l
    nop

jr_008_4766:
    add hl, de
    ld a, [de]
    ld c, b
    ld c, b
    ld d, h
    ld d, h
    ld d, h
    ld c, c

jr_008_476e:
    db $10
    ld de, $1e1d
    inc c
    dec c
    dec de
    inc e
    inc de
    nop
    ld h, $27
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_008_4782

jr_008_4782:
    nop
    nop
    ld h, $27
    jr nc, jr_008_47b9

    rra

jr_008_4789:
    nop
    nop
    nop
    dec d
    ld d, $00
    nop
    nop
    ld b, d
    nop
    nop
    ld h, $27
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    ld b, e
    ld b, h
    ld c, $0d
    nop
    add hl, de
    ld a, [de]
    rla
    jr jr_008_47db

    ld [hl], $38
    scf
    ld c, e
    scf
    inc d
    inc hl
    jr nc, jr_008_47df

    jr z, jr_008_47d4

    ld c, $0f
    ld b, d
    nop
    dec d
    ld d, $00
    nop
    nop

jr_008_47b9:
    rla
    jr jr_008_47d1

    ld d, $00
    nop
    nop
    dec d
    ld d, $47
    inc d
    inc hl
    nop
    nop
    ld [bc], a
    dec de
    inc e
    ccf
    nop
    nop
    dec a
    nop
    nop
    dec d

jr_008_47d1:
    ld d, $00
    nop

jr_008_47d4:
    nop
    rla
    jr jr_008_47d8

jr_008_47d8:
    nop
    db $10
    ld [de], a

jr_008_47db:
    nop
    rla
    jr jr_008_47f4

jr_008_47df:
    ld d, $00
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld a, [bc]
    dec bc
    ld b, a
    ld b, d
    ld h, $27
    db $10
    ld de, $003d
    rla
    jr jr_008_47f3

jr_008_47f3:
    nop

jr_008_47f4:
    nop
    dec d
    ld d, $17
    jr jr_008_47fa

jr_008_47fa:
    nop
    nop
    rla
    jr jr_008_480d

    rrca
    inc d
    ccf
    nop
    ld bc, $4719
    ld b, b
    jr c, jr_008_4848

    dec a
    nop
    nop
    rla

jr_008_480d:
    jr jr_008_480f

jr_008_480f:
    nop
    nop
    dec d
    ld d, $36
    scf
    inc d
    inc de
    nop
    dec d
    ld d, $17
    jr jr_008_481d

jr_008_481d:
    nop
    nop
    nop
    dec a
    ld a, $0c
    dec c
    rra
    ld a, [hl-]
    dec d
    ld d, $26
    daa
    ld b, b
    scf
    ld a, [bc]
    dec bc
    ld [de], a
    nop
    nop
    rla
    jr jr_008_4849

    ld d, $00
    nop
    nop
    dec d
    ld d, $10
    ld de, $3d00
    nop
    ld bc, $4617
    nop
    nop
    add hl, sp
    add hl, sp
    nop
    nop

jr_008_4848:
    dec d

jr_008_4849:
    ld d, $00
    nop
    nop
    rla
    jr jr_008_4850

jr_008_4850:
    nop
    ld [hl+], a
    inc d
    nop
    rla
    jr jr_008_486c

    ld d, $1b
    inc e
    ld c, $0f
    dec a
    dec a
    dec de
    inc e
    inc hl
    dec a
    rla
    jr jr_008_487a

    ld d, $00
    ld a, $0c
    dec c
    inc de
    nop

jr_008_486c:
    nop
    ld [de], a
    ld d, $17
    jr jr_008_4872

jr_008_4872:
    nop
    nop
    rla
    jr jr_008_4877

jr_008_4877:
    nop
    nop
    add hl, sp

jr_008_487a:
    nop
    nop
    dec d
    inc d
    nop
    nop
    add hl, sp
    add hl, sp
    nop
    nop
    rla
    jr jr_008_4887

jr_008_4887:
    nop
    nop
    dec d
    ld d, $00
    nop
    ld h, $12
    ld [bc], a
    ld l, $2f
    dec h
    dec h
    ld c, $0f
    db $10
    ld de, $4041
    ld d, h
    ld d, h
    ld d, h
    ld b, c
    dec h
    dec h
    rla
    jr jr_008_48b1

    rrca
    ld b, a
    inc d
    inc hl
    nop
    nop
    dec l
    dec h
    dec h
    dec h
    nop
    nop
    nop
    dec d

jr_008_48b1:
    ld d, $36
    ld [hl], $38
    ld b, c
    nop
    nop
    rla
    ld b, [hl]
    jr nz, jr_008_48e4

    ld c, $0f
    nop
    nop
    dec d
    ld d, $00
    nop
    nop
    ld c, $0f
    nop
    ld a, $15
    inc de
    ld bc, $3130
    ld [$1008], sp
    ld de, $1c1b
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    nop
    nop
    ld [de], a
    ld [de], a
    db $10
    ld de, $0f0e
    nop
    nop

jr_008_48e4:
    nop
    dec l
    nop
    nop
    ld c, $0f
    nop
    nop
    ld c, $0f
    ld c, $0f
    ld c, $0f
    nop
    nop
    ld c, $0f
    ld c, $0f
    db $10
    ld de, $0000
    ld c, $0f
    ld [de], a
    nop
    nop
    db $10
    ld de, $1c1b
    ld c, $0a
    ld [$0c1c], sp
    dec c
    rra
    ld [hl+], a
    db $10
    ld de, $0115
    inc de
    rrca
    ld c, $0f
    dec de
    inc e
    ld c, $0f
    rla
    ld bc, $110a
    db $10
    ld de, $2023
    db $10
    ld de, $0115
    inc c
    inc d
    dec de
    inc e
    add hl, hl
    inc d
    add hl, de
    ld a, [de]
    rla
    daa
    ld b, a
    inc hl
    ld h, $27
    ld c, b
    ld c, c
    rla
    jr jr_008_494d

    ld d, $14
    daa
    dec d
    ld d, $36
    scf
    dec d
    ld d, $17
    jr jr_008_498a

    ld d, $17
    jr jr_008_497e

    scf
    rla
    jr @+$17

    inc d

jr_008_494d:
    ld c, $0f
    ld c, $0f
    ld [de], a
    ld c, $0f
    ld [de], a
    ld a, [bc]
    dec bc
    db $10
    ld a, [bc]
    ld [$3d1f], sp
    dec a
    ld bc, $3130
    jr z, @+$26

    inc hl
    ld [de], a
    rra
    dec a
    dec a
    ld bc, $001a
    nop
    ld h, $27
    dec l
    ld b, [hl]
    dec a
    dec a
    ld bc, $0018
    nop
    dec d
    ld d, $13
    dec bc
    dec a
    dec a
    ld bc, $3e16

jr_008_497e:
    scf
    rla
    jr jr_008_499d

    dec c
    dec a
    dec a
    ld h, $18
    dec a
    nop
    dec d

jr_008_498a:
    ld d, $20
    inc e
    add hl, sp
    add hl, sp
    dec d
    ld d, $39
    nop
    rla
    jr jr_008_49a0

    ld b, a
    add hl, sp
    add hl, sp
    rla
    dec de
    inc e
    ccf

jr_008_499d:
    dec d
    ld d, $0c

jr_008_49a0:
    ld b, [hl]
    ld a, [bc]
    dec bc
    ld hl, $0e47
    rrca
    rla
    ld [bc], a
    ld [de], a
    inc d
    ld [$0b0a], sp
    inc d
    ld c, $0f
    inc d
    rra
    nop
    nop
    nop
    dec a
    dec d
    ld d, $08
    nop
    nop
    ld [$1817], sp
    inc d
    inc c
    dec c
    inc d
    db $10
    ld de, $2328
    ld [hl], $36
    jr c, @+$43

    rla
    jr @+$4a

    jr c, jr_008_4a08

    ld c, c
    dec d
    ld d, $0a
    rra
    ld [de], a
    ld [hl+], a
    ld hl, $1a19
    nop
    nop
    nop
    nop
    ld [bc], a
    dec de
    inc e
    jr z, jr_008_4a07

    dec de
    inc l
    inc e
    ld [bc], a
    inc c
    ld [hl+], a
    inc de
    inc d
    rra
    rla
    jr jr_008_49ef

jr_008_49ef:
    nop
    nop
    nop
    ld bc, $2726
    ld c, b
    ld d, h
    ld d, h
    ld c, c
    add hl, de
    ld bc, $1b22
    inc l
    inc e
    inc hl
    dec d
    ld d, $36
    ld [hl], $38
    jr c, jr_008_4a50

jr_008_4a07:
    dec d

jr_008_4a08:
    ld d, $36
    ccf
    ld a, $37
    rla
    daa
    ld c, b
    dec bc
    ld b, d
    ld b, d
    nop
    rla
    jr jr_008_4a4d

    ld [hl], $0e
    rrca
    scf
    rla
    jr jr_008_4a54

    ld b, c
    ld b, b
    scf
    dec d
    ld d, $00
    dec c
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld e, [hl]
    ld e, a
    dec h
    dec h
    db $10
    ld de, $1521
    ld d, $00
    nop
    nop
    nop
    ld c, $0f
    dec de
    ld b, a
    dec a
    dec a
    ld [bc], a
    dec e
    ld e, $08
    ld [$1c1b], sp
    ld c, $0f
    ld [de], a
    ld c, $0f
    ld [$1008], sp
    ld de, $0a23

jr_008_4a4d:
    ld [$1110], sp

jr_008_4a50:
    inc d
    jr jr_008_4a54

    inc de

jr_008_4a54:
    ld e, b
    ld e, c
    db $10
    ld de, $420b
    add hl, de
    ld d, $01
    ld h, $18
    dec a
    ld [hl+], a
    ld hl, $3a0d
    rla
    jr jr_008_4a68

    dec d

jr_008_4a68:
    ld d, $3a
    nop
    ld a, [bc]
    inc d
    dec a
    dec d
    ld d, $01
    rla
    jr jr_008_4aad

    nop
    inc c
    ld c, c
    ld b, c
    rla
    jr jr_008_4abd

    dec d
    ld d, $3d
    nop
    jr nz, jr_008_4a81

jr_008_4a81:
    nop
    dec d
    ld d, $39
    rla
    jr jr_008_4ac1

    nop
    ld a, [bc]
    inc e
    nop
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    nop
    inc c
    ld [de], a
    jr z, @+$23

    nop
    ld c, $0f
    nop
    nop
    ld c, $0f
    inc d
    ld [$1b12], sp
    inc e
    jr @+$3f

    dec d
    ld d, $3d
    nop
    dec de
    inc e
    inc d
    db $10

jr_008_4aad:
    ld de, $0000
    dec d
    ld d, $3a
    dec de
    inc de
    nop
    add hl, de
    ld d, $3a
    rla
    jr jr_008_4af9

    nop

jr_008_4abd:
    nop
    nop
    add hl, de
    ld a, [de]

jr_008_4ac1:
    ld b, d
    nop
    nop
    rla
    jr jr_008_4b01

    nop
    ld [de], a
    nop
    rla
    inc d
    ld [bc], a
    dec de
    inc l
    inc l
    inc e
    ld [de], a
    ld [de], a
    rla
    jr @+$3c

    nop
    dec de
    inc e
    ld [bc], a
    inc d
    ld [de], a
    inc de
    nop
    dec d
    ld a, [de]
    ld bc, $2726
    ld b, d
    ld [hl+], a
    inc de
    inc de
    dec d
    ld d, $3d
    nop
    nop
    ld h, $01
    ld b, d
    inc de
    rrca
    nop
    rla
    jr jr_008_4af6

    dec d

jr_008_4af6:
    ld d, $3d
    nop

jr_008_4af9:
    ld c, $0f
    rla
    jr jr_008_4b3b

    nop
    nop
    dec d

jr_008_4b01:
    ld a, [de]
    dec a
    ld c, $11
    nop
    dec d
    ld d, $42
    rla
    jr @+$3c

    nop
    db $10
    ld de, $1615
    ld a, [hl-]
    nop
    nop
    rla
    jr jr_008_4b51

    db $10
    ld hl, $1700
    jr @+$3f

    dec d
    ld d, $3d
    nop
    ld b, a
    ld b, a
    rla
    jr jr_008_4b60

    nop
    nop
    dec d
    ld d, $3a
    ld [hl+], a
    ld c, $0f
    inc d
    ld d, $02
    ld [de], a
    ld l, $2f
    ld c, $0f
    ld l, $2f
    ld c, $0f
    nop

jr_008_4b3b:
    nop
    ld c, $0f
    ld l, $2f
    ld a, [bc]
    ld [$001c], sp
    rla
    jr @+$3b

    dec d
    ld d, $00
    nop
    ld l, $00
    nop
    dec d
    ld d, $39

jr_008_4b51:
    rla
    jr jr_008_4b54

jr_008_4b54:
    nop
    jr nc, jr_008_4b78

    nop
    rla
    jr @+$3f

    dec d
    ld d, $00
    nop
    ld [de], a

jr_008_4b60:
    ld b, [hl]
    nop
    dec d
    ld d, $1b
    inc l
    inc l
    inc l
    inc e
    inc de
    rrca
    nop
    rla
    jr jr_008_4bb1

    add hl, de
    ld a, [de]
    ld [hl+], a
    inc h
    ld c, $11
    dec de
    inc l
    inc l

jr_008_4b78:
    inc e
    rla
    jr jr_008_4b7c

jr_008_4b7c:
    nop
    db $10
    ld [de], a
    jr z, jr_008_4ba4

    daa
    ld b, d
    dec d
    ld d, $00
    nop
    ld [hl+], a
    dec l
    nop
    add hl, de
    ld d, $39
    rla
    jr jr_008_4b90

jr_008_4b90:
    nop
    ld [de], a
    ld a, [bc]
    ld [$0012], sp
    rla
    jr jr_008_4bd3

    dec d
    ld d, $00
    nop
    dec l
    inc de
    nop
    dec d
    ld d, $39
    rla

jr_008_4ba4:
    jr jr_008_4ba6

jr_008_4ba6:
    nop
    inc de
    inc e
    nop
    dec de
    inc e
    ld a, [hl-]
    dec d
    ld d, $00
    nop

jr_008_4bb1:
    dec de
    dec bc
    nop
    rra
    ld l, $2f
    rla
    jr jr_008_4bba

jr_008_4bba:
    nop
    ld a, [bc]
    dec c
    nop
    dec de
    inc a
    ld sp, $1621
    nop
    nop
    inc c
    inc e
    nop
    add hl, de
    ld a, [de]
    ld [de], a
    ld c, $0f
    nop
    nop
    dec de
    ld [de], a
    nop
    rla

jr_008_4bd3:
    jr jr_008_4be8

    db $10
    ld de, $0000
    ld [de], a
    inc de
    jr z, @+$23

    ld [bc], a
    dec de
    inc l
    inc e
    ld [$1308], sp
    inc d
    ld [$281c], sp

jr_008_4be8:
    inc hl
    ld bc, $1c1b
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    inc d
    dec d
    ld bc, $1b14
    inc e
    ld [de], a
    add hl, de
    ld a, [de]
    ld bc, $0027
    ld b, d
    ld [$1908], sp
    ld a, [de]
    ld b, d
    ld [$0008], sp
    rla
    ld bc, $1a19
    ld [de], a
    inc de
    rla
    jr jr_008_4c2b

    ld d, $36
    ld c, d
    ld d, h
    ld c, c
    rla
    jr @+$3f

    ld c, b
    ld c, c
    ld a, $15
    ld a, [de]
    rla
    jr @+$15

    ld [de], a
    dec d
    ld d, $17
    jr jr_008_4c5e

    ccf
    ld a, $36

jr_008_4c2b:
    dec d
    ld d, $3d
    ld [hl], $37
    dec a
    rla
    jr @+$17

    ld d, $12
    inc de
    rla
    jr jr_008_4c4f

    ld d, $00
    dec a
    dec a
    ld a, $17
    jr jr_008_4c7f

    ld [hl], $37
    dec a
    dec d
    ld d, $17
    jr jr_008_4c5d

    ld [de], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_008_4c4f:
    ld [hl], $41
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, b
    ld [hl], $37
    ld b, c
    ld d, d
    ld d, e
    ld d, b
    ld d, c

jr_008_4c5d:
    ld [de], a

jr_008_4c5e:
    inc de
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    inc de
    ld c, $0f
    ld c, $0f
    jr z, jr_008_4c9c

    ld c, $0f
    ld c, $0f
    ld hl, $0e20

jr_008_4c7f:
    rrca
    ld c, $0f
    ld hl, $2820
    inc hl
    ld a, [bc]
    ld [$1b0b], sp
    inc e
    inc c
    dec c
    inc de
    inc hl
    ld [hl+], a
    jr z, jr_008_4cb6

    dec c
    nop
    add hl, de
    ld a, [de]
    ld b, d
    ld h, $27
    ld c, b
    ld d, h
    ld c, c

jr_008_4c9c:
    ld [de], a
    nop
    rla
    jr @+$3b

    dec d
    ld d, $36
    jr c, jr_008_4ce5

    inc de
    ld c, e
    ld [bc], a
    dec de
    inc e
    add hl, hl
    dec de
    inc l
    inc l
    inc l
    inc hl
    dec a
    ld bc, $4227
    add hl, de

jr_008_4cb6:
    ld a, [de]
    ld [hl+], a
    add hl, hl
    add hl, hl
    ld hl, $193d
    ld d, $3d
    rla
    jr @+$44

    ld a, [bc]
    dec bc
    ld [de], a
    ld c, d
    rla
    jr jr_008_4d0a

    dec d
    ld d, $4a
    inc c
    dec c
    inc de
    jr nz, @+$1d

    inc e
    ld hl, $0217
    jr nz, jr_008_4cfb

    inc d
    ld a, [bc]
    ld [$1c1b], sp
    rla
    ld bc, $3013
    inc a
    ld sp, $2d23
    add hl, de

jr_008_4ce5:
    ld a, [de]
    dec d
    ld bc, $1a19
    ld b, d
    ld h, $27
    inc de
    rla
    jr @+$40

    ld c, c
    rla
    jr jr_008_4d32

    dec d
    ld d, $0a
    inc e
    ld d, $3a

jr_008_4cfb:
    nop
    dec d
    ld d, $39
    rla
    jr @+$0e

    ld hl, $3d18
    ld a, $14
    jr jr_008_4d4a

    dec d

jr_008_4d0a:
    ld d, $12
    rra
    ld d, $39
    ld a, [hl-]
    add hl, de
    ld d, $00
    rla
    jr @+$15

    ld b, [hl]
    jr jr_008_4d3e

    dec h
    rla
    jr jr_008_4d1d

jr_008_4d1d:
    ld c, $0f
    inc hl
    dec de
    inc e
    nop
    nop
    dec de
    inc l
    inc e
    db $10
    ld de, $1414
    ld [$2420], sp
    jr nc, jr_008_4d61

    ld [hl+], a
    inc h

jr_008_4d32:
    inc de
    inc de
    dec de
    inc e
    inc hl
    inc c
    dec c
    db $10
    ld de, $3130
    inc hl

jr_008_4d3e:
    dec de
    inc e
    dec bc
    nop
    ld h, $27
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    nop

jr_008_4d4a:
    nop
    nop
    ld h, $27
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    nop
    dec c
    ld [hl], $36
    jr c, jr_008_4d91

    jr c, jr_008_4d91

    jr c, jr_008_4d93

    jr c, jr_008_4d97

    jr c, @+$3a

jr_008_4d61:
    ld [hl], $36
    jr c, jr_008_4d9d

    jr c, jr_008_4d9f

    ld [hl], $21
    nop
    dec d
    ld d, $36
    jr c, jr_008_4da6

    rla
    jr jr_008_4d84

    dec de
    inc e
    dec d
    dec de
    inc l
    inc e
    rla
    dec de
    inc e
    ld [de], a
    ld [de], a
    ld [hl], $17
    jr jr_008_4db7

    ccf
    nop
    dec d

jr_008_4d84:
    ld d, $13
    jr z, jr_008_4dab

    rla
    daa
    nop
    nop
    dec d
    ld a, [de]
    ld [hl+], a
    inc de
    inc de

jr_008_4d91:
    ccf
    dec d

jr_008_4d93:
    ld d, $00
    ld b, b
    scf

jr_008_4d97:
    rla
    jr nz, jr_008_4da4

    dec bc
    nop
    dec d

jr_008_4d9d:
    ld d, $00

jr_008_4d9f:
    nop
    rla
    jr jr_008_4da3

jr_008_4da3:
    ld a, [bc]

jr_008_4da4:
    ld a, [bc]
    dec bc

jr_008_4da6:
    rla
    ld [bc], a
    ld [de], a
    nop
    nop

jr_008_4dab:
    dec d
    ld b, [hl]
    inc c
    dec c
    nop
    dec h
    dec h
    nop
    nop
    dec h
    dec h
    nop

jr_008_4db7:
    inc c
    inc c
    dec c
    dec d
    ld bc, $2e2d
    dec sp
    cpl
    inc d
    ld [de], a
    ld [de], a
    ld [$0808], sp
    ld [$0808], sp
    ld [$1208], sp
    inc d
    ld [$2814], sp
    inc hl
    inc d
    dec de
    inc e
    db $10
    ld de, $1c1b
    inc c
    dec c
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    dec sp
    nop
    add hl, de
    ld a, [de]
    ld b, d
    nop
    ld h, $27
    inc d
    ld b, a
    inc d
    dec de
    inc e
    ld b, a
    ld h, $27
    ld b, d
    add hl, de
    ld a, [de]
    ld b, d
    jr nc, jr_008_4e2e

    rla
    jr @+$3f

    nop
    dec d
    ld d, $00
    ld [hl+], a
    inc h
    ld c, $0f
    inc hl
    dec d
    ld d, $3d
    rla
    jr @+$3b

    nop
    ld hl, $1615
    add hl, sp
    nop
    rla
    jr jr_008_4e5a

    ld d, h
    ld c, c
    db $10
    ld de, $1749
    jr jr_008_4e53

    dec d
    ld d, $41
    nop
    ld b, [hl]
    rla
    jr @+$43

    nop
    dec d
    ld d, $36
    jr c, @+$39

    ld [$3708], sp
    dec d
    ld d, $41

jr_008_4e2e:
    rla
    jr jr_008_4e31

jr_008_4e31:
    dec de
    dec bc
    dec h
    dec h
    nop
    ld [$2525], sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    dec h
    ld [$2525], sp
    nop
    ld c, $0d
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e

jr_008_4e53:
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, e
    db $10

jr_008_4e5a:
    ld [de], a
    ld hl, $0f0e
    jr z, @+$26

    ld c, $0f
    ld c, $0f
    ld hl, $0e20
    rrca
    ld c, $0f
    ld hl, $2820
    inc hl
    ld e, $08
    dec sp
    inc e
    rra
    ld e, b
    ld e, c
    nop
    ld e, b
    ld e, c
    nop
    ld e, b
    ld e, c
    nop
    ld e, b
    ld e, c
    ld [hl+], a
    jr nc, jr_008_4eb2

    db $10
    ld de, $3023
    ld sp, $1014
    ld de, $1c1b
    inc hl
    inc d
    add hl, hl
    ld sp, $2314
    dec d
    ld d, $00
    rla
    jr jr_008_4e97

jr_008_4e97:
    dec d
    ld d, $00
    rla
    jr @+$45

    ld b, h
    ld [hl+], a
    inc h
    ld c, $0f
    add hl, de
    ld a, [de]
    ld c, b
    ld c, c
    ld h, $27
    add hl, de
    ld a, [de]
    ld c, b
    ld d, h
    nop
    nop
    nop
    rla
    jr jr_008_4eb2

jr_008_4eb2:
    dec d
    ld d, $00
    rla
    jr jr_008_4eb8

jr_008_4eb8:
    dec d
    ld d, $00
    nop
    ld b, e
    ld b, h
    db $10
    ld de, $1817
    ld [hl], $37
    dec d
    ld d, $17
    jr jr_008_4eff

    jr c, jr_008_4ecb

jr_008_4ecb:
    nop
    nop
    dec d
    ld d, $00
    rla
    jr jr_008_4ed3

jr_008_4ed3:
    dec d
    ld d, $00
    rla
    jr jr_008_4ed9

jr_008_4ed9:
    nop
    add hl, de
    ld a, [de]
    ld c, b
    ld c, c
    dec d
    ld d, $36
    scf
    rla
    jr @+$17

    ld d, $20
    ld [de], a
    inc e
    nop
    nop
    rla
    jr jr_008_4eee

jr_008_4eee:
    dec d
    ld d, $00
    rla
    jr jr_008_4ef4

jr_008_4ef4:
    dec d
    ld d, $00
    nop
    rla
    jr jr_008_4f31

    scf
    rla
    jr jr_008_4f35

jr_008_4eff:
    scf
    dec d
    ld d, $17
    jr jr_008_4f19

    inc de
    rrca
    nop
    nop
    dec h
    dec h
    ld [de], a
    rla
    jr jr_008_4f0f

jr_008_4f0f:
    dec h
    dec h
    nop
    rla
    jr jr_008_4f15

jr_008_4f15:
    nop
    dec d
    ld d, $36

jr_008_4f19:
    scf
    dec d
    ld d, $36
    scf
    rla
    jr jr_008_4f33

    ld c, $0f
    ld a, [bc]
    ld de, $0000
    ld c, $0f
    dec l
    dec h
    dec h
    nop
    jr nz, jr_008_4f43

    ld [de], a
    dec h

jr_008_4f31:
    dec h
    nop

jr_008_4f33:
    nop
    inc d

jr_008_4f35:
    ld c, $0f
    inc d
    dec h
    dec h
    ld [hl], $37
    ld c, $0f
    inc de
    db $10
    ld de, $0e0c

jr_008_4f43:
    rrca
    nop
    db $10
    ld de, $0a2d
    dec bc
    nop
    ld c, $0f
    dec l
    ld a, [bc]
    dec bc
    ld c, $0f
    ld [hl+], a
    db $10
    ld de, $0023
    nop
    dec de
    inc e
    db $10
    ld de, $0f0e
    ld c, $0f
    ld a, [bc]
    ld [$2814], sp
    add hl, hl
    inc h
    dec de
    inc l
    inc e
    ld bc, $1413
    ld c, c
    ld h, $27
    nop
    nop
    add hl, de
    ld a, [de]
    ld bc, $1200
    scf
    dec d
    ld d, $36
    ccf
    rla
    jr jr_008_4fc6

    scf
    dec l
    dec de
    inc l
    inc e
    nop
    dec a
    dec d
    ld d, $36
    scf
    inc de
    inc hl
    add hl, de
    ld a, [de]
    nop
    dec a
    rla
    jr jr_008_4f92

jr_008_4f92:
    ld a, $14
    dec bc
    rla
    jr jr_008_4f98

jr_008_4f98:
    ld b, b
    dec d
    ld d, $20
    ld c, $0f
    dec c
    dec h
    ld a, [hl+]
    ld d, a
    dec hl
    dec h
    dec h
    ld [de], a
    db $10
    ld de, $0812
    dec l
    dec l
    dec l
    ld [$2d08], sp
    dec de
    inc e
    ld a, [bc]
    ld [$0b0a], sp
    jr z, jr_008_4fdc

    inc d
    dec de
    inc e
    inc d
    inc de
    db $10
    inc c
    dec c
    ld b, l
    ld c, b
    ld c, c
    ld e, l
    ld b, l
    add hl, de

jr_008_4fc6:
    ld a, [de]
    inc bc
    ld [de], a
    ld c, b
    ld [hl], $38
    jr c, @+$3a

    scf
    rla
    jr jr_008_4fd5

    inc de
    ccf
    rla

jr_008_4fd5:
    jr jr_008_500d

    jr c, @+$39

    dec d
    ld d, $03

jr_008_4fdc:
    ld [de], a
    ld b, c
    dec d
    ld d, $1b
    inc e
    jr z, jr_008_500d

    inc d
    inc d
    inc de
    ccf
    rla
    jr jr_008_5033

    ld c, c
    add hl, de
    ld a, [de]
    inc b
    dec b
    dec bc
    ld [de], a
    dec d
    ld d, $36
    scf
    rla
    jr jr_008_4fff

    rlca
    dec c
    inc de
    jr z, jr_008_5022

    dec de

jr_008_4fff:
    inc e
    ld hl, $1202
    inc d
    ld a, [bc]
    ld [$1b11], sp
    inc e
    inc de
    inc d
    inc d
    inc de

jr_008_500d:
    dec de
    inc e
    stop
    add hl, de
    ld a, [de]
    ld c, b
    ld d, h
    ld d, h
    ld c, c
    add hl, de
    ld a, [de]
    inc bc
    nop
    rla
    jr @+$38

    jr c, @+$3a

    scf
    rla

jr_008_5022:
    jr @+$05

    nop
    dec d
    ld d, $36
    jr c, jr_008_5062

    scf
    dec d
    ld d, $03
    ld c, $0f
    ld hl, $2c1b

jr_008_5033:
    inc l
    inc e
    ld c, $0f
    ld [de], a
    db $10
    ld de, $0b0a
    jr z, @+$2b

    inc h
    db $10
    ld de, $2313
    inc d
    inc c
    dec c
    jr nz, jr_008_5056

    rrca
    inc hl
    ld a, [bc]
    dec bc
    jr z, jr_008_5071

    dec de
    inc e
    inc hl
    db $10
    ld de, $0c28
    dec c

jr_008_5056:
    dec bc
    ld [$5a11], sp
    ld e, b
    ld e, c
    ld e, d
    ld e, d
    ld e, d
    ld e, b
    ld e, c
    ld e, d

jr_008_5062:
    ld [de], a
    nop
    ld a, $15
    ld d, $36
    jr c, jr_008_50a1

    dec d
    ld d, $3f
    inc de
    nop
    dec a
    rla

jr_008_5071:
    jr jr_008_5073

jr_008_5073:
    nop
    nop
    rla
    jr jr_008_50b5

    ld [de], a
    nop
    ld c, l
    dec d
    ld d, $36
    ld c, e
    scf
    dec d
    ld d, $4c
    inc de
    ld [de], a
    dec a
    rla
    jr jr_008_5089

jr_008_5089:
    dec a
    nop
    rla
    jr @+$3f

    ld [de], a
    dec l
    ld b, b
    dec d
    ld d, $36
    ld c, d
    scf
    dec d
    ld d, $41
    inc de
    inc de
    nop
    rla
    jr jr_008_509f

jr_008_509f:
    nop
    nop

jr_008_50a1:
    rla
    jr jr_008_50a4

jr_008_50a4:
    ld [de], a
    inc d
    ld a, [hl+]
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    ld d, a
    dec hl
    ld d, l
    ld d, [hl]
    dec hl
    inc de
    ld h, d
    nop
    nop
    nop
    nop

jr_008_50b5:
    rrca
    rrca
    db $10
    db $10
    rrca
    rrca
    db $10
    db $10
    dec c
    dec c
    ld c, $0e
    daa
    daa
    inc b
    rlca
    dec b
    ld [$0906], sp
    daa
    jr nz, jr_008_50d6

    ld h, $0b
    ld h, $0c
    ld h, $11
    inc de
    ld [de], a
    inc d
    inc bc

jr_008_50d6:
    inc bc
    inc bc
    inc bc
    dec d
    dec e
    ld d, $3c
    rla
    dec a
    jr jr_008_511f

    dec e
    add hl, de
    inc a
    ld a, [de]
    dec a
    dec de
    ld a, $1c
    jr nc, jr_008_511e

    ld sp, $3234
    dec [hl]
    jr nc, jr_008_5124

    ld [hl], $39
    scf
    ld a, [hl-]
    jr c, @+$3d

    ld [hl], $39
    jr z, jr_008_5125

    add hl, hl
    dec hl
    ld a, [hl+]
    inc l
    dec hl
    dec l
    ld b, b
    ld b, d
    ld b, c
    ld b, e
    ld c, l
    ld c, l
    ld c, [hl]
    ld d, b
    ld c, a
    ld d, c
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld d, d
    ld d, h
    ld d, e
    ld d, l
    ld c, l
    ld c, l
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, c
    nop
    ld c, l
    ld b, b

jr_008_511e:
    ld b, d

jr_008_511f:
    inc h
    dec h
    inc h
    dec h
    ld b, c

jr_008_5124:
    ld b, e

jr_008_5125:
    ld e, d
    ld e, d
    ccf
    ccf
    ccf
    ccf
    ld e, e
    ld e, e
    daa
    daa
    daa
    daa

Jump_008_5131:
    ld e, $27
    ld h, $1e
    ld h, $1f
    rra
    daa
    daa
    jr nz, jr_008_515c

    ld h, $21
    ld h, $27
    ld hl, $2626
    inc hl
    inc hl
    ld c, h
    nop
    ld c, h
    nop
    nop
    ld c, l
    nop
    ld d, h
    nop
    ld d, l
    nop
    ld c, l
    inc hl
    inc hl
    ld h, $26
    ld h, $26
    ld h, $26
    ld c, b
    jr z, jr_008_51a6

jr_008_515c:
    add hl, hl
    ld c, d
    jr z, jr_008_51a8

    add hl, hl
    inc h
    dec h
    inc h
    dec h
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec hl
    ld b, b
    ld e, d
    inc h
    ccf
    inc h
    ccf
    ld b, c
    ld e, e
    ld e, d
    ld b, d
    ccf
    dec h
    ccf
    dec h
    ld e, e
    ld b, e
    ld c, [hl]
    ld d, b
    ld c, a
    ld d, c
    ld d, d
    ld d, h
    ld d, e
    ld d, l
    nop
    ld d, b
    nop
    ld d, c
    nop
    ld d, h
    nop
    ld d, l
    ld c, b
    ld c, b
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, b
    ld c, b
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, e
    ld c, c
    ld c, e
    ld c, c
    ld c, c
    ld c, e
    ld c, c
    ld c, e
    inc h
    ccf
    inc h
    ccf
    ccf
    dec h
    ccf
    dec h
    ld c, e

jr_008_51a6:
    ld c, e
    ld c, e

jr_008_51a8:
    ld c, e
    ld b, h
    ld c, e
    ld c, d
    ld b, h
    ld c, d
    ld b, l
    ld b, l
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, [hl]
    ld c, d
    ld b, a
    ld c, d
    ld c, e
    ld b, a
    nop
    ld c, e
    nop
    ld c, e
    ld e, a
    ld e, h
    ld h, b
    ld e, l
    ld h, c
    ld e, [hl]
    ld e, a
    ld e, h
    ld h, b
    ld e, l
    ld h, c
    ld e, [hl]
    daa
    ld [hl+], a
    daa
    ld [hl+], a
    ld [hl+], a
    daa
    ld [hl+], a
    daa
    nop
    ld c, b
    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, b
    ld b, a
    ld c, d
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, l
    ld c, d
    ld b, h
    ld b, a
    ld b, l
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, d
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, a
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld c, h
    ld d, d
    ld c, h
    ld d, e
    ld c, h
    ld c, l
    ld c, h
    nop
    ld c, d
    nop
    ld c, d
    ld c, l
    jr nc, jr_008_5256

    ld sp, $324f
    ld c, l
    jr nc, jr_008_5258

    jr z, jr_008_525a

    add hl, hl
    ld b, d
    nop
    dec h
    nop
    dec h
    nop
    ld b, e
    nop
    ld b, d
    nop
    ld b, e
    nop
    ld l, b
    ld l, d
    ld l, c
    ld l, e
    ld h, c
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld e, a
    ld e, h
    ld c, l
    ld b, b
    ld c, [hl]
    inc h
    ld c, a
    inc h
    ld c, l
    ld b, c
    inc hl
    nop
    ld h, $00
    ld h, $00
    inc hl
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_008_5249:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_008_5256:
    inc bc
    inc bc

jr_008_5258:
    inc bc
    inc bc

jr_008_525a:
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
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
    nop
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
    nop
    inc bc
    inc bc
    nop

jr_008_5282:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp

jr_008_52a5:
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    jr nz, jr_008_5249

    ld b, b
    nop
    ld l, h
    ld d, h
    nop
    ld h, b
    sub [hl]
    jr nz, jr_008_52bc

jr_008_52bc:
    db $ec
    ld d, l
    nop
    add b
    sub [hl]
    ld b, b
    nop
    inc l
    ld d, l
    ld bc, $20ff

jr_008_52c8:
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    inc l
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_52d9

jr_008_52d9:
    db $ec
    ld d, l
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_52e0

jr_008_52e0:
    ld c, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_52e7

jr_008_52e7:
    xor h
    ld d, [hl]
    ld [bc], a
    jr nz, jr_008_5282

    ld b, b
    nop
    xor h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_52fc

jr_008_52fc:
    inc c
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_5303

jr_008_5303:
    ld a, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_530a

jr_008_530a:
    call c, $0256
    jr nz, jr_008_52a5

    ld b, b
    nop
    db $ec
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    xor h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_531f

jr_008_531f:
    inc l
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_5326

jr_008_5326:
    ld c, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_532d

jr_008_532d:
    xor h
    ld d, [hl]
    ld [bc], a
    jr nz, jr_008_52c8

    ld b, b
    nop
    xor h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_5342

jr_008_5342:
    db $ec
    ld d, l
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_5349

jr_008_5349:
    ld a, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_5350

jr_008_5350:
    call c, $0256
    jr nz, @-$68

    ld b, b
    nop
    ld l, h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    inc l
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_5365

jr_008_5365:
    inc c
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_536c

jr_008_536c:
    ld c, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_5373

jr_008_5373:
    xor h
    ld d, [hl]
    ld [bc], a
    jr nz, @-$68

    ld b, b
    nop
    xor h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_5388

jr_008_5388:
    inc l
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_538f

jr_008_538f:
    ld a, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_5396

jr_008_5396:
    call c, $0256
    jr nz, @-$68

    ld b, b
    nop
    db $ec
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    xor h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_53ab

jr_008_53ab:
    db $ec
    ld d, l
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_53b2

jr_008_53b2:
    ld c, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_53b9

jr_008_53b9:
    xor h
    ld d, [hl]
    ld [bc], a
    jr nz, @-$68

    ld b, b
    nop
    xor h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_53ce

jr_008_53ce:
    inc c
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_53d5

jr_008_53d5:
    ld a, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_53dc

jr_008_53dc:
    call c, $0256
    jr nz, @-$68

    ld b, b
    nop
    ld l, h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    inc l
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_53f1

jr_008_53f1:
    inc l
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_53f8

jr_008_53f8:
    ld c, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_53ff

jr_008_53ff:
    xor h
    ld d, [hl]
    ld [bc], a
    jr nz, @-$68

    ld b, b
    nop
    xor h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_5414

jr_008_5414:
    db $ec
    ld d, l
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_541b

jr_008_541b:
    ld a, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_5422

jr_008_5422:
    call c, $0256
    jr nz, @-$68

    ld b, b
    nop
    db $ec
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    xor h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_5437

jr_008_5437:
    inc c
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_543e

jr_008_543e:
    ld c, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_5445

jr_008_5445:
    xor h
    ld d, [hl]
    ld [bc], a
    jr nz, @-$68

    ld b, b
    nop
    xor h
    ld d, h
    ld [bc], a
    add b
    sub [hl]
    ld b, b
    nop
    ld l, h
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    jr nz, jr_008_545a

jr_008_545a:
    inc l
    ld d, [hl]
    ld [bc], a
    ret nz

    sub l
    jr nc, jr_008_5461

jr_008_5461:
    ld a, h
    ld d, [hl]
    ld [bc], a
    ldh a, [$ff95]
    jr nc, jr_008_5468

jr_008_5468:
    call c, $0256
    rst $38
    nop
    nop
    rrca
    rrca
    ccf
    jr nc, @+$72

    ld b, b
    ret nz

    add b
    sbc h
    nop
    inc a
    jr jr_008_54f7

    jr c, jr_008_547d

jr_008_547d:
    nop
    ldh a, [$fff0]
    db $fc
    inc c
    ld a, [hl-]
    ld b, $0d
    inc bc
    ld b, $01
    ld b, $01
    inc bc
    nop
    ld a, b
    jr nc, @+$52

    jr nz, jr_008_54b1

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
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    inc c
    ld [$080c], sp
    add hl, de
    stop
    nop
    nop
    nop
    rrca

jr_008_54b1:
    rrca
    rst $38
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    rst $38
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    ldh a, [$ff60]
    ldh a, [$ffe0]
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
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $04
    ld b, $04
    inc c
    ld [$080c], sp
    inc c
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a

jr_008_54f7:
    adc a
    rst $38
    ldh a, [$fff0]
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
    ldh a, [$fff0]
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    ldh [rP1], a
    ldh [$ffc0], a
    ldh [$ffc0], a
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
    inc bc
    inc bc
    rlca
    inc b
    inc c
    ld [$080c], sp
    add hl, de
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    adc a
    cp a
    or b
    ld d, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_5545:
    nop
    pop af
    pop af
    ei
    ld a, [bc]
    dec bc
    ld [bc], a
    ld b, b
    ret nz

    nop
    nop
    rst $38
    rst $38
    cp $01
    ld bc, $0000
    nop

jr_008_5558:
    ldh a, [rP1]
    ldh a, [$ffc0]
    ld b, $04
    ld b, $04
    ld b, $04
    add $c4
    and [hl]
    ld h, h
    sub $34
    ld d, [hl]
    inc [hl]
    ld l, b
    jr jr_008_556d

jr_008_556d:
    nop
    nop
    nop
    rrca
    rrca
    ccf
    jr nc, jr_008_5545

    ret nz

    jr nz, jr_008_5558

    sub b

jr_008_5579:
    ld [hl], b
    add h

jr_008_557b:
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    db $fc
    inc c
    dec bc
    inc bc
    rlca
    inc b
    inc c
    ld [$080c], sp
    ld a, [hl]
    ld a, [hl]
    db $fd
    add e
    add e
    nop
    ld bc, $7000
    nop
    ldh a, [$ff60]
    ret nc

    ld h, b
    ldh [rP1], a
    jr jr_008_55ae

    sbc c
    sub b
    ld e, c
    ret nc

    xor c
    ld h, b
    xor b
    ld h, b
    ret nc

    jr nc, jr_008_5579

    jr nc, jr_008_557b

    jr nc, jr_008_55ad

jr_008_55ad:
    nop

jr_008_55ae:
    rrca
    rrca
    ccf
    jr nc, jr_008_5623

    ld b, b
    ret nz

    add b
    inc e
    nop
    call z, $34c8
    ldh a, [rP1]
    nop
    ldh a, [$fff0]
    db $fc
    inc c
    ld a, [hl-]
    ld b, $0d
    inc bc
    inc b
    nop
    inc bc
    inc bc
    rrca
    inc c
    ret z

    jr c, jr_008_55cf

jr_008_55cf:
    nop
    rst $38
    rst $38
    cp $01
    ld bc, $0000
    nop
    ldh [rP1], a
    ldh [$ffc0], a
    inc e
    db $10
    jr nc, jr_008_5600

    ld sp, $c320
    pop bc
    and e
    ld h, c
    jp nc, Jump_008_5131

    jr nc, @+$6a

    jr jr_008_55ed

jr_008_55ed:
    push af
    nop
    rst $10
    nop
    ld h, a
    nop
    ld [hl+], a
    nop
    jr nz, jr_008_55f7

jr_008_55f7:
    adc b
    nop
    db $dd
    nop
    rst $30
    nop
    or $00
    ld e, [hl]

jr_008_5600:
    nop
    ld e, h
    nop
    dec c
    nop
    adc c
    nop
    pop bc
    nop
    db $e3
    nop
    jp nc, $0800

    nop
    adc b
    nop
    push de
    nop

jr_008_5613:
    rst $38
    nop
    sub $00
    ld h, a
    nop
    ld h, d
    nop
    jr nz, jr_008_561d

jr_008_561d:
    add c
    nop
    pop bc
    nop
    ldh [c], a
    nop

jr_008_5623:
    or $00
    jp c, Jump_008_5c00

    nop
    sbc h
    nop
    ret


    nop
    ld h, [hl]
    nop
    ld [hl+], a
    nop
    ld [$8800], sp
    nop
    db $dd
    nop
    ld l, a
    nop
    push af
    nop
    and a
    nop
    inc e
    nop
    dec c
    nop

jr_008_5641:
    adc b
    nop

jr_008_5643:
    pop bc
    nop
    and e
    nop
    or $00
    ld l, [hl]
    nop
    ld e, d
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

    jr nc, jr_008_5641

jr_008_5671:
    jr nc, jr_008_5613

    ld h, b
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    add hl, de
    db $10
    dec c
    ld [$080c], sp
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    ldh [$ffc0], a
    ldh [rP1], a
    ld bc, $fe00
    ld bc, $ffff
    nop
    nop
    nop
    nop
    ld d, b
    jr nc, jr_008_56ef

    jr nc, jr_008_5671

    jr nc, jr_008_5643

    ld h, b
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
    ld h, [hl]
    ld b, l
    cp e
    and d
    reti


    sbc c
    add $84
    call z, $6ca8
    ld c, b
    inc l
    jr z, jr_008_56bd

jr_008_56bd:
    nop
    add hl, hl
    sbc e
    ldh a, [rNR10]
    ldh [$ffe4], a
    ld e, $10
    ld c, $0e
    nop
    nop
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
    nop
    nop
    ld h, a
    ld b, h
    or e
    and e
    ret nc

    sub b
    call z, $5888
    ld d, b
    jr jr_008_56fa

    add hl, de
    stop
    nop
    ldh a, [c]

jr_008_56ef:
    ld [de], a
    pop hl
    push hl
    dec e
    ld de, $0d0d
    nop
    nop
    nop
    nop

jr_008_56fa:
    ret nz

    nop
    nop
    nop
    ldh a, [c]
    adc [hl]
    adc c
    rlca
    add l
    ld h, e
    add l
    ld h, e
    cp $82
    ld a, h
    ld a, h
    nop
    nop
    nop
    ei
    nop
    db $fc
    nop
    db $fd
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $ff01
    nop
    ld bc, $2100
    ld b, b
    pop de
    ld bc, $000a
    xor a
    call Call_000_0174
    xor a
    ld [$cca2], a
    call Call_008_574e
    call Call_008_5a48
    ret


Call_008_573c:
    ld a, [$d147]
    or a
    call nz, Call_008_5787
    call Call_008_58c4
    ld a, [$cb00]
    or a
    call nz, Call_008_5a3f
    ret


Call_008_574e:
    xor a
    ld [$d140], a
    ld a, $01
    ld [$d144], a
    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    ld a, $2e
    add c
    ld l, a
    ld l, [hl]
    ld h, $00
    ld de, $0014
    call Call_008_41ad
    ld a, l
    and $03
    add $02
    ld [$d142], a
    ld hl, $d147
    ld [hl], $00
    ld a, [$de8f]
    cp $0c
    jr z, jr_008_5784

    cp $10
    jr nz, jr_008_5786

jr_008_5784:
    ld [hl], $01

jr_008_5786:
    ret


Call_008_5787:
    ld a, [$d81c]
    or a
    ret nz

    ld a, [$deaf]
    or a
    jr nz, jr_008_57d3

    ld hl, $d146
    ld a, [hl]
    or a
    jr z, jr_008_579a

    dec [hl]

jr_008_579a:
    ld hl, $d141
    inc [hl]
    ld a, [hl]
    cp $0a
    jr c, jr_008_57a9

    ld [hl], $00
    ld hl, $d142
    inc [hl]

jr_008_57a9:
    ld a, [$d70d]
    and $1f
    srl a
    ld de, $5712
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    ld a, [$d142]
    and $03
    ld de, $5723
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$d145], a
    add $64
    add b
    ld [$d143], a

jr_008_57d3:
    ld a, [$d143]
    ld b, a
    ld a, [$d725]
    add $0d
    sub b
    jr c, jr_008_57f7

    ld a, [$d140]
    cp $03
    jr nc, jr_008_57eb

    call Call_008_58b0
    jr jr_008_57f7

jr_008_57eb:
    ld a, [$d143]
    sub $0d
    ld [$d725], a
    xor a
    ld [$d144], a

jr_008_57f7:
    call Call_008_5872
    ld a, [$d74b]
    cp $01
    jr nz, jr_008_5834

    ld hl, $c2cc
    bit 7, [hl]
    jr z, jr_008_580f

    ld a, $03
    ld [$d146], a
    jr jr_008_5871

jr_008_580f:
    ld a, [$d146]
    or a
    jr z, jr_008_5820

    xor a
    ld [$d74b], a
    ld hl, $d729
    ld [hl+], a
    ld [hl+], a
    jr jr_008_5871

jr_008_5820:
    ld a, [$d725]
    cp $50
    jr c, jr_008_5871

    call Call_008_5893
    ld a, [$d143]
    sub $0d
    ld [$d725], a
    jr jr_008_5871

jr_008_5834:
    or a
    jr nz, jr_008_5871

    ld a, [$d752]
    cp $09
    jr nz, jr_008_5871

    ld a, [$d146]
    or a
    jr nz, jr_008_5871

    ld a, [$d70d]
    and $1f
    cp $04
    jr c, jr_008_5861

    cp $0c
    jr nc, jr_008_5861

    jr jr_008_5855

    jr jr_008_5861

jr_008_5855:
    ld a, $02
    ld [$d140], a
    ld a, $01
    ld [$d144], a
    jr jr_008_5871

jr_008_5861:
    xor a
    ld [$d752], a
    ld a, $01
    ld [$d144], a
    xor a
    ld [$d140], a
    call Call_008_58b0

jr_008_5871:
    ret


Call_008_5872:
    ld a, $ff
    ld [$cca2], a
    xor a
    ld [$d186], a
    ld a, [$d144]
    or a
    ld a, [$d143]
    jr z, jr_008_5886

    add $04

jr_008_5886:
    ld d, a
    ld b, $00
    call Call_000_0294
    ld d, $90
    ld b, $81
    jp Jump_000_0294


Call_008_5893:
    ld a, [$d145]
    or a
    ret z

    ld a, [$d727]
    ld e, a
    ld a, [$d728]
    ld d, a
    call Call_000_016b
    sra d
    rr e
    ld a, e
    ld [$d731], a
    ld a, d
    ld [$d732], a
    ret


Call_008_58b0:
    ld hl, $d140
    ld a, [hl]
    inc [hl]
    ld de, $570c
    call Call_000_0171
    ld a, e
    ld [$d729], a
    ld a, d
    ld [$d72a], a
    ret


Call_008_58c4:
    ld a, [$d760]
    or a
    jr nz, jr_008_58f6

    ld a, [$d74b]
    or a
    jr nz, jr_008_58f6

    ld a, [$deaf]
    or a
    jr nz, jr_008_58f6

    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    ld d, a
    call Call_000_027f
    ld [$d74e], a
    cp $4f
    jr nz, jr_008_58f6

    ld hl, $d148
    ld a, [hl]
    add $80
    ld [hl], a
    ld hl, $d725
    ld a, [hl]
    adc $01
    ld [hl], a

jr_008_58f6:
    ret


Call_008_58f7:
    ld hl, $cb80
    ld bc, $0038
    xor a
    call Call_000_0174
    ld hl, $cb81
    ld [hl], $01
    ret


    ld a, $02
    ld [$cb81], a
    call Call_008_59a7
    ret


Call_008_5910:
    ld hl, $cb80
    ld a, [hl]
    cp $0c
    ccf
    ret c

    ld a, e
    ld [$cb84], a
    ld a, d
    ld [$cb85], a
    call Call_000_0219
    ret c

    ld a, l
    ld [$cb82], a
    ld a, h
    ld [$cb83], a
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld hl, $cb80
    ld a, [hl]
    inc [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $cb88
    add hl, de
    ld a, l
    ld [$cb86], a
    ld a, h
    ld [$cb87], a
    ld de, $cb84
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [$cb82]
    ld e, a
    ld a, [$cb83]
    ld d, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld l, e
    ld h, d
    ld c, l
    ld a, [$cb84]
    ld e, a
    ld a, [$cb85]
    ld d, a
    ld b, $00
    call Call_008_40bf
    ret


Call_008_5973:
    ld hl, $cb86
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_029d
    ld a, [$cb80]
    dec a
    ld [$cb80], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $cb88
    add hl, bc
    push hl
    ld bc, $0004
    ld a, [$cb86]
    ld e, a
    ld a, [$cb87]
    ld d, a
    call Call_000_0180
    pop hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_008_59a7:
    ld a, [$cb80]
    or a
    ret z

    ld hl, $cb88

jr_008_59af:
    ld a, l
    ld [$cb86], a
    ld a, h
    ld [$cb87], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    or e
    jr z, jr_008_59e0

    ld a, [hl+]
    ld [$cb82], a
    ld [$cc40], a
    ld c, a
    ld a, [hl+]
    ld [$cb83], a
    ld [$cc41], a
    push hl
    ld h, a
    ld a, [$cb81]
    ld b, a
    call Call_008_40bf
    ld a, b
    or a
    jr nz, jr_008_59dd

    call Call_008_5973

jr_008_59dd:
    pop hl
    jr jr_008_59af

jr_008_59e0:
    ret


    inc b
    db $f4
    ld e, c
    ld [$5a07], sp
    add hl, bc
    ld c, $5a
    ld c, $15
    ld e, d
    rrca
    inc e
    ld e, d
    ld de, $5a23
    rst $38
    add hl, de
    ld [bc], a
    inc l
    ld bc, $003c
    jr z, jr_008_59fe

    ld a, [bc]
    nop

jr_008_59fe:
    inc a
    nop
    jr nc, jr_008_5a04

    ld e, $00

jr_008_5a04:
    inc a
    nop
    rst $38
    inc bc
    ld [bc], a
    inc a
    nop
    inc a
    nop
    rst $38
    inc bc
    ld [bc], a
    inc a
    nop
    inc a
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    or h
    nop
    ld a, [bc]
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    or h
    nop
    ld a, [bc]
    nop
    rst $38
    inc bc
    ld [bc], a
    nop
    nop
    ld a, [bc]
    nop
    ld b, $02
    jr z, jr_008_5a2d

jr_008_5a2d:
    ld a, [bc]
    nop
    add hl, bc
    ld [bc], a
    inc d
    nop
    ld a, [bc]
    nop
    inc c
    ld [bc], a
    nop
    nop
    ld a, [bc]
    nop
    rst $38
    ld c, a
    ld c, a
    ld c, a

Call_008_5a3f:
    ld a, [$cb01]
    ldh [$ffac], a
    call Call_008_59a7
    ret


Call_008_5a48:
    xor a
    ld [$dd31], a
    ld hl, $cb00
    ld bc, $0005
    xor a
    call Call_000_0174
    ld hl, $59e1
    ld a, [$de8f]
    ld d, a
    ld c, $03
    ld e, $ff
    call Call_008_41a0
    ret c

    push hl
    call Call_008_58f7
    pop hl
    ld a, $01
    ld [$cb00], a
    ld [$dd31], a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_5a76:
    ld a, [hl]
    cp $ff
    jr z, jr_008_5a8f

    ld a, l
    ldh [$ff8a], a
    ld a, h
    ldh [$ff8b], a
    push hl
    ld de, $5b42
    call Call_008_5910
    pop hl
    ld de, $0006
    add hl, de
    jr jr_008_5a76

jr_008_5a8f:
    ld a, $8c
    call Call_000_020a
    ld [$cb01], a
    ret


Call_008_5a98:
    push hl
    push de
    ld e, l
    ld d, h
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, b
    add c
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    pop hl
    ret


Jump_008_5aad:
    ld a, $00
    add c
    ld l, a
    ld [hl], $00
    ld a, $1c
    add c
    ld l, a
    ld [hl], $40
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld a, $02
    add c
    ld l, a
    ld a, [de]
    add $00
    inc de
    ld [hl], a
    ld a, $01
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld [$cb02], a
    ld a, $16
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $02
    add c
    ld l, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld b, $06
    call Call_008_5a98
    ld a, [$cb02]
    add a
    add a
    add a
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld b, $08
    call Call_008_5a98
    ld de, $0010
    add hl, de
    ld b, $0c
    call Call_008_5a98
    pop hl
    ld de, $fff0
    add hl, de
    bit 7, h
    jr z, jr_008_5b18

    ld hl, $0000

jr_008_5b18:
    ld b, $0a
    call Call_008_5a98
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $08
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $06
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    srl d
    rr e
    ld a, $04
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


    ld a, b
    dec b
    jr z, jr_008_5b50

    dec b
    jr z, jr_008_5b4d

    or a
    jp z, Jump_008_5aad

jr_008_5b4d:
    ld b, $00
    ret


jr_008_5b50:
    ld a, [$deaf]
    or a
    jr nz, jr_008_5b70

    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_008_5c32

    dec a
    jp z, Jump_008_5ca0

    dec a
    jp z, Jump_008_5d86

    ld a, $1a
    add c
    ld l, a
    ld [hl], $00
    call Call_008_5c0b

Jump_008_5b70:
jr_008_5b70:
    ld de, $5bfa
    ld a, $04
    add c
    ld l, a
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ld a, [hl+]
    sub e
    ld e, a
    ldh [$ff9b], a
    ld a, [hl+]
    sbc d
    jr nz, jr_008_5b90

    ld a, e
    cp $b0
    jr c, jr_008_5b9a

    jp Jump_008_5be8


jr_008_5b90:
    inc a
    jp nz, Jump_008_5be8

    ld a, e
    cp $f0
    jp c, Jump_008_5be8

jr_008_5b9a:
    ld a, $1b
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_008_5be8

    cp $01
    jr nz, jr_008_5bab

    ld e, $01
    jr jr_008_5bb7

jr_008_5bab:
    ld a, $01
    add c
    ld l, a
    ld a, [hl]
    dec a
    ld e, $06
    jr z, jr_008_5bb7

    ld e, $0c

jr_008_5bb7:
    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld l, c
    push hl
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    cp $40
    jr c, jr_008_5bd2

    push hl
    push bc
    ld a, e
    call Call_000_01a4
    pop bc
    pop hl
    ld [hl], a

jr_008_5bd2:
    push af
    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    ld hl, $5fa5
    call Call_000_016e
    ld c, l
    ld b, h
    pop af
    call Call_008_415d
    pop hl
    ld c, l
    jr jr_008_5bfa

Jump_008_5be8:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    cp $40
    jr nc, jr_008_5bfa

    ld [hl], $40
    ld l, c
    push hl
    call Call_000_01a7
    pop hl
    ld c, l

jr_008_5bfa:
    ld b, $01
    ret


Call_008_5bfd:
    ld a, $18
    add c

Jump_008_5c00:
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]

Call_008_5c04:
    ld a, $16
    add c
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d

Call_008_5c0b:
    ld a, $12
    add c
    ld l, a
    ld [hl], $00
    inc hl
    ld [hl], $01
    ld a, $15
    add c
    ld l, a
    ld [hl], $f8
    ld a, $1a
    add c
    ld l, a
    inc [hl]
    ld a, $00
    add c
    ld l, a
    ld [hl], $01
    ld a, $1b
    add c
    ld l, a
    ld [hl], $00
    ld de, $5fa0
    call Call_008_5dfa
    ret


Jump_008_5c32:
    ld a, $16
    add c
    ld l, a
    call Call_000_01ec
    jr nz, jr_008_5c76

    ld a, $1b
    add c
    ld l, a
    ld [hl], $01
    ld de, $5fa0
    call Call_008_5e01
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld [hl+], a
    ld e, a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld d, a
    ld a, $14
    add c
    ld l, a
    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl], a
    cp $e0
    jr nc, jr_008_5c76

    cp $88
    jr c, jr_008_5c76

    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    cp $01
    jr nc, jr_008_5c79

    ld de, $003c
    call Call_008_5c04

jr_008_5c76:
    jp Jump_008_5b70


jr_008_5c79:
    call Call_008_5c7e
    jr jr_008_5c76

Call_008_5c7e:
    ld a, $1b
    add c
    ld l, a
    ld [hl], $00
    ld a, $0f
    add c
    ld l, a
    ld [hl], $e0
    inc hl
    ld [hl], $00
    ld a, $16
    add c
    ld l, a
    ld [hl], $3c
    ld a, $00
    add c
    ld l, a
    ld [hl], $02
    call Call_008_5e0b
    call Call_008_5dfa
    ret


Jump_008_5ca0:
    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_008_5d6d

    ld a, $0e
    add c
    ld l, a
    ld a, [hl]
    add $00
    ld [hl+], a
    ld a, [hl]
    ld b, a
    adc $02
    ld [hl+], a
    ld e, a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, b
    xor e
    and $10
    jr z, jr_008_5d09

    ld b, [hl]
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    ld [$cb02], a
    ld a, [hl]
    ld [$cb03], a
    ld h, b
    ld l, e
    ld de, $ff00
    add hl, de
    ld a, h
    or a
    jr nz, jr_008_5cea

    ld a, l
    cp $80
    jr nc, jr_008_5cea

    swap a
    and $0f
    ld [$cb04], a
    call Call_008_5da2
    jr jr_008_5d01

jr_008_5cea:
    ld de, $fec0
    add hl, de
    ld a, h
    or a
    jr nz, jr_008_5d01

    ld a, l
    cp $80
    jr nc, jr_008_5d01

    swap a
    and $0f
    ld [$cb04], a
    call Call_008_5dc3

jr_008_5d01:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a

jr_008_5d09:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff10
    add hl, de
    ld a, h
    or a
    jr nz, jr_008_5d37

    ld a, l
    cp $90
    jr nc, jr_008_5d37

    add $e8
    ld b, a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $15
    add c
    ld l, a
    ld [hl], b
    call Call_008_5e0b
    call Call_008_5e01
    ld e, $02
    jr jr_008_5d68

jr_008_5d37:
    ld de, $fec0
    add hl, de
    ld a, h
    or a
    jr nz, jr_008_5d5e

    ld a, l
    cp $90
    jr nc, jr_008_5d70

    add $e8
    ld b, a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $15
    add c
    ld l, a
    ld [hl], b
    call Call_008_5e1a
    call Call_008_5e01
    ld e, $03
    jr jr_008_5d68

jr_008_5d5e:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld e, $00

jr_008_5d68:
    ld a, $1b
    add c
    ld l, a
    ld [hl], e

Jump_008_5d6d:
jr_008_5d6d:
    jp Jump_008_5b70


jr_008_5d70:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $00
    add c
    ld l, a
    ld [hl], $03
    ld a, $1b
    add c
    ld l, a
    ld [hl], $00
    jr jr_008_5d6d

Jump_008_5d86:
    ld a, $1a
    add c
    ld l, a
    ld [hl], $00
    call Call_008_5bfd
    jp Jump_008_5b70


    jr nz, jr_008_5d94

jr_008_5d94:
    inc hl
    nop
    ld h, $00
    add hl, hl
    nop
    inc l
    nop
    cpl
    nop
    ld [hl-], a
    nop
    dec [hl]
    nop

Call_008_5da2:
    call Call_008_5dda
    ld a, [$cb02]
    ld c, a
    ld b, $00
    call Call_000_0180
    ld a, [$cb03]
    ld e, a
    ld a, [$cb04]
    ld d, a
    ld a, [$cb02]
    ld c, a
    ld b, $01
    ld hl, $5a3c
    call Call_000_0246
    ret


Call_008_5dc3:
    call Call_008_5dda
    ld l, e
    ld h, d
    ld a, [$cb03]
    ld e, a
    ld a, [$cb04]
    ld d, a
    ld a, [$cb02]
    ld c, a
    ld b, $01
    call Call_000_0246
    ret


Call_008_5dda:
    ld a, [$cb04]
    ld hl, $5d92
    call Call_000_016e
    ld a, [$cc40]
    ld e, a
    ld a, [$cc41]
    ld d, a
    add hl, de
    push hl
    ld a, [$cb03]
    ld e, a
    ld a, [$cb04]
    ld d, a
    call Call_008_40c1
    pop de
    ret


Call_008_5dfa:
    ld a, $1d
    add c
    ld l, a
    jp Jump_008_40d0


Call_008_5e01:
    ld a, $1d
    add c
    ld l, a
    inc de
    inc de
    call Call_008_40e3
    ret


Call_008_5e0b:
    ld a, $01
    add c
    ld l, a
    ld a, [hl]
    dec a
    ld de, $5f8c
    jr z, jr_008_5e19

    ld de, $5f96

jr_008_5e19:
    ret


Call_008_5e1a:
    ld a, $01
    add c
    ld l, a
    ld a, [hl]
    dec a
    ld de, $5f91
    jr z, jr_008_5e28

    ld de, $5f9b

jr_008_5e28:
    ret


    ld d, $2c
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    jr @+$0a

    ld [hl], l
    jr z, jr_008_5e8d

    dec a
    ld b, d
    dec l
    jp nc, $d02f

    nop
    nop
    nop
    nop
    nop
    call nz, Call_000_2bc4
    xor $11
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    dec a
    jp nz, Jump_008_6718

    nop
    ld a, a
    nop
    ld a, l
    nop
    jr jr_008_5e59

jr_008_5e59:
    nop
    nop
    nop
    rst $28
    db $10
    xor $11
    call nz, Call_000_003b
    rst $38

jr_008_5e64:
    nop
    sbc l
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    add hl, de
    jr @+$27

    add hl, de
    inc h
    dec e
    ld h, d
    ld l, l
    sub d
    ccf
    ld b, b
    cpl
    ret nc

    nop
    adc [hl]
    add h
    ld e, e
    adc [hl]

jr_008_5e81:
    ld d, c

jr_008_5e82:
    rst $18
    jr nz, jr_008_5e64

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a

jr_008_5e8d:
    sub b
    ld l, a
    sub b
    ld a, a
    nop
    add hl, bc
    halt
    add hl, de
    ld h, [hl]
    ld bc, $003e
    ccf
    nop
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_008_5e82

    jr nz, jr_008_5e81

    inc hl
    adc b
    ld [hl], a
    nop
    rst $18
    nop
    adc h
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    call nz, $c400
    nop
    xor $00
    xor $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld de, $1100
    nop
    dec [hl]
    nop
    dec a
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    ld bc, $9100
    nop
    sub c
    nop
    reti


    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $1300
    nop
    sub e
    nop
    sub e
    nop
    or a
    nop
    rst $30
    nop
    ld l, a
    sub b
    dec a
    jp nz, $6798

    add b
    ld a, a
    add d
    ld a, l
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    xor $11
    call nz, Call_000_003b
    rst $38
    ld h, d
    sbc l
    rst $30

jr_008_5f07:
    ld [$00ff], sp
    rst $38
    nop
    ld l, a
    sub b
    dec a
    jp nz, Jump_008_6718

    nop
    ld a, a
    nop
    ld a, l
    nop
    jr jr_008_5f19

jr_008_5f19:
    nop
    nop
    nop
    rst $28
    db $10
    xor $11
    call nz, Call_000_003b
    rst $38
    nop
    sbc l
    nop
    ld [$0000], sp
    nop
    nop
    ld l, a
    sub b
    ld l, a
    sub b
    rst $38
    nop
    adc c
    halt
    sbc c
    ld h, [hl]
    pop bc
    ld a, $c0
    ccf
    and $19
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_008_5f41:
    jr nz, @-$1f

    jr nz, @-$22

    inc hl
    adc b
    ld [hl], a
    jr nz, @-$1f

    ld [hl], e
    adc h
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    nop
    add hl, bc
    halt
    add hl, de
    ld h, [hl]
    ld bc, $003e
    ccf
    nop
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$1f

    jr nz, jr_008_5f41

    inc hl
    adc b
    ld [hl], a
    nop
    rst $18
    nop
    adc h
    nop
    stop
    jr z, jr_008_5f81

    ld b, h
    jr nz, jr_008_5fb8

    jr nz, @-$7c

    nop
    add d
    nop
    ld b, h
    nop
    jr c, jr_008_5f7d

jr_008_5f7d:
    nop
    nop
    jr jr_008_5f81

jr_008_5f81:
    inc h
    db $10
    ld b, d
    jr nz, jr_008_5f07

    nop
    add c
    nop
    ld b, d
    nop
    inc a
    and l
    ld e, a
    inc b
    nop
    rst $38
    and l
    ld e, a
    inc b
    ld [bc], a
    rst $38
    and l
    ld e, a
    inc b
    inc b
    rst $38
    and l
    ld e, a
    inc b
    ld b, $ff
    and l
    ld e, a
    inc b
    ld [$b9ff], sp
    ld e, a
    jp z, $db5f

    ld e, a
    db $f4
    ld e, a
    dec c
    ld h, b
    ld l, $60
    ld c, a
    ld h, b
    add b
    ld h, b
    or c
    ld h, b
    or [hl]

jr_008_5fb8:
    ld h, b
    ld [$00f8], sp
    stop
    ld [$3000], sp
    ld [$0200], sp
    jr nc, jr_008_5fc6

jr_008_5fc6:
    ld hl, sp+$02
    db $10
    add b
    ld [$04f8], sp
    stop
    ld [$3004], sp
    ld [$0600], sp
    jr nc, jr_008_5fd7

jr_008_5fd7:
    ld hl, sp+$06
    db $10
    add b
    nop
    ld hl, sp+$08
    stop
    ld [$300b], sp
    ld [$0c00], sp
    jr nc, jr_008_5fe8

jr_008_5fe8:
    ld hl, sp+$0c
    db $10
    ld [$0e00], sp
    stop
    ld [$300e], sp
    add b
    nop
    ld hl, sp+$0b
    stop
    ld [$3008], sp
    ld [$1000], sp
    jr nc, jr_008_6001

jr_008_6001:
    ld hl, sp+$10
    db $10
    ld [$1200], sp
    stop
    ld [$3012], sp
    add b
    ld [$00f0], sp
    stop
    ld [$1001], sp
    nop
    ld [$3001], sp
    nop
    ld [$3000], sp
    ld [$0200], sp
    jr nc, jr_008_6022

jr_008_6022:
    ld hl, sp+$03
    jr nc, jr_008_6026

jr_008_6026:
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    add b
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$3005], sp
    nop
    ld [$3004], sp
    ld [$0600], sp
    jr nc, jr_008_6043

jr_008_6043:
    ld hl, sp+$07
    jr nc, jr_008_6047

jr_008_6047:
    ld hl, sp+$07
    stop
    ld hl, sp+$06
    db $10
    add b
    nop
    ldh a, [$ff08]
    stop
    ld [$1009], sp
    nop
    ld [$300a], sp
    nop
    ld [$300b], sp
    ld [$0c00], sp
    jr nc, jr_008_6064

jr_008_6064:
    ld hl, sp+$0d
    jr nc, jr_008_6068

jr_008_6068:
    ld hl, sp+$0d
    stop
    ld hl, sp+$0c
    db $10
    ld [$0e00], sp
    stop
    ld [$100f], sp
    nop
    ld [$300f], sp
    nop
    ld [$300e], sp
    add b
    nop
    ldh a, [$ff0b]
    stop
    ld [$100a], sp
    nop
    ld [$3009], sp
    nop
    ld [$3008], sp
    ld [$1000], sp
    jr nc, jr_008_6095

jr_008_6095:
    ld hl, sp+$11
    jr nc, jr_008_6099

jr_008_6099:
    ld hl, sp+$11
    stop
    ld hl, sp+$10
    db $10
    ld [$1200], sp
    stop
    ld [$1013], sp
    nop
    ld [$3013], sp
    nop
    ld [$3012], sp
    add b
    db $fc
    db $fc
    inc d
    db $10
    add b
    db $fc
    db $fc
    dec d
    db $10
    add b
    cp a
    ld h, b
    push bc
    ld h, b
    jp z, $d860

    ld h, b
    and $60
    ld [$1108], sp
    ld [bc], a
    rst $38
    nop
    inc h
    ld l, l
    dec c
    ld l, a
    ldh a, [c]
    ld h, d
    adc e
    ld h, e
    ld d, c
    nop
    ld d, e
    db $f4
    ld h, b
    nop
    inc h
    ld l, l
    dec c
    ld l, a
    ldh a, [c]
    ld h, d
    adc e
    ld h, e
    ld b, a
    nop
    ld h, e
    ret nc

    ld h, c
    nop
    inc h
    ld l, l
    dec c
    ld l, a
    ld hl, sp+$62
    adc e
    ld h, e
    daa
    nop
    inc sp
    sub h
    ld h, d
    ld bc, $637f
    sbc b
    ld h, e
    nop
    nop
    add a
    ld bc, $0202
    ld h, c
    nop
    nop
    ld [bc], a
    ld a, a
    ld h, e
    ld [$0063], a
    nop
    add b
    ld bc, $f480
    ld h, b
    daa
    ld bc, $2002
    ld h, c
    ld [bc], a
    inc bc
    ld h, b
    ld a, [bc]
    ld [bc], a
    inc b
    db $10
    ld a, [bc]
    ld [bc], a
    dec b
    ld b, b
    inc b
    nop
    inc bc
    ld a, a
    ld h, e
    inc a
    ld h, h
    nop
    nop
    jr nz, jr_008_612a

    add b

jr_008_612a:
    ld [bc], a
    ld h, c
    daa
    dec h
    ld [bc], a
    ld a, $61
    rra
    dec c
    ld d, b
    nop
    rra
    dec de
    ld b, b
    nop
    inc [hl]
    inc hl
    jr nz, jr_008_613d

jr_008_613d:
    nop
    inc b
    ld a, a
    ld h, e
    ld a, [hl]
    ld h, l
    ldh [rSB], a
    dec h
    nop
    inc bc
    ret nz

    ld h, d
    scf
    inc b
    ld [bc], a
    ld [hl], d
    ld h, c
    inc [hl]
    ld [bc], a
    ld b, b
    nop
    ld [bc], a
    inc bc
    ld h, b
    ld a, [bc]
    nop
    inc b
    ld [hl], e
    ld h, e
    ld a, [hl]
    ld h, l
    ldh [rSB], a
    dec h
    nop
    inc bc
    ret nz

    ld h, d
    scf
    inc b
    ld [bc], a
    ld [hl], d
    ld h, c
    ld [bc], a
    inc bc
    ld h, b
    ld a, [bc]
    inc [hl]
    ld [$0040], sp
    nop
    dec b
    ld a, a
    ld h, e
    ret nc

    ld h, l
    ldh [rSB], a
    jr nc, jr_008_617f

    add b
    ld a, $61
    rla

jr_008_617f:
    ld bc, $9402
    ld h, c
    ld [bc], a
    rlca
    jr nz, jr_008_6190

    ld [bc], a
    rlca
    ld d, b
    ld a, [bc]
    ld [bc], a
    ld [$0920], sp
    ld [bc], a

jr_008_6190:
    ld [$0a50], sp
    nop
    ld b, $7f
    ld h, e
    ld [hl+], a
    ld h, [hl]
    ldh [rSB], a
    db $10
    ld bc, $7280
    ld h, c
    daa
    ld bc, $aa02
    ld h, c
    rra
    ld [$0020], sp
    nop
    add a
    ld a, a
    ld h, e
    ld [hl], h
    ld h, [hl]
    ldh [rSB], a
    jr nz, jr_008_61b4

    add b

jr_008_61b4:
    sub h
    ld h, c
    rla
    inc e
    ld [bc], a
    ret nc

    ld h, c
    dec l
    add hl, bc
    ld b, b
    nop
    inc [hl]
    rrca
    jr nz, jr_008_61c3

jr_008_61c3:
    jr z, @+$16

    ld d, b
    nop
    inc [hl]
    jr jr_008_61ea

    nop
    ld [bc], a
    ld a, [de]
    ld d, b
    ld bc, $0800
    ld a, a
    ld h, e
    ld h, [hl]
    ld h, a
    jr nz, @+$05

    db $10
    ld [$aa80], sp
    ld h, c
    inc h
    add hl, bc
    ld bc, $61e2
    nop
    add hl, bc
    ld a, d
    ld h, e
    cp b
    ld h, a
    ret nz

    inc bc
    nop

jr_008_61ea:
    ld [hl+], a
    dec e
    ld bc, $61fc
    inc [hl]
    rlca
    jr nc, jr_008_61f3

jr_008_61f3:
    inc [hl]
    ld [de], a
    jr nc, jr_008_61f7

jr_008_61f7:
    inc [hl]
    inc e
    ld b, b
    nop
    nop
    ld a, [bc]
    ld a, d
    ld h, e
    xor d
    ld l, b
    and b
    dec b
    nop
    jr nz, jr_008_620d

    add b
    ld c, $62
    ld b, $07
    ld b, b
    nop

jr_008_620d:
    nop
    dec bc
    ld a, a
    ld h, e
    db $fc
    ld l, b
    and b
    dec b
    daa
    rlca
    ld [bc], a
    db $fc
    ld h, c
    ld hl, $0109
    jr z, jr_008_6281

    rra
    ld bc, $0060
    rra
    ld [$0020], sp
    nop
    inc c
    ld a, d
    ld h, e
    ld c, [hl]
    ld l, c
    ld b, b
    ld b, $00
    ld hl, $0113
    ld b, [hl]
    ld h, d
    add hl, hl
    ld [$0010], sp
    ld [bc], a
    db $10
    ld h, b
    ld a, [bc]
    ld b, e
    ld [de], a
    jr nz, jr_008_6241

jr_008_6241:
    ld [bc], a
    ld [de], a
    ld b, b
    ld a, [bc]
    nop
    dec c
    ld a, d
    ld h, e
    ldh a, [rBCPD]
    add b
    rlca
    nop
    jr nz, jr_008_6257

    add b
    ld e, b
    ld h, d
    dec l
    ld [$0040], sp

jr_008_6257:
    nop
    ld c, $7f
    ld h, e
    ld b, d
    ld l, d
    add b
    rlca
    daa
    rlca
    ld [bc], a
    ld b, [hl]
    ld h, d
    ld sp, $0109
    ld l, [hl]
    ld h, d
    add hl, hl
    ld b, $10
    nop
    nop
    adc a
    add hl, bc
    ld h, e
    sub h
    ld l, d
    jr nz, jr_008_627d

    ld sp, $0130
    sub h
    ld h, d
    nop
    ld b, e
    add hl, bc

jr_008_627d:
    ld h, b
    nop
    ld [bc], a
    dec d

jr_008_6281:
    jr nz, jr_008_6285

    ld b, e
    inc e

jr_008_6285:
    ld d, b
    nop
    inc [hl]
    ld [hl+], a
    jr nz, jr_008_628b

jr_008_628b:
    ld [bc], a
    ld h, $60
    inc b
    rra
    jr nc, jr_008_62c2

    nop
    nop
    ld de, $631d
    ld h, $6c
    ldh [$ff0b], a
    nop
    inc [hl]
    ld [$b001], sp
    ld h, d
    nop
    ld de, $631b
    ld h, $6c
    ldh [$ff0b], a
    nop
    inc [hl]
    ld [$b001], sp
    ld h, d
    nop
    jp nc, Jump_008_6333

    ld a, b
    ld l, h
    add b
    inc c
    nop
    nop
    rst $38
    add b
    ld a, $09
    ld h, b
    nop
    nop
    sub e
    ld h, d

jr_008_62c2:
    ld h, e
    jp nc, $406c

    ld bc, $0925
    ld bc, $6158
    nop
    ld [bc], a
    ld bc, $0530
    ld [bc], a
    ld bc, $0d60
    ld [bc], a
    ld [bc], a
    jr nc, jr_008_62de

    nop
    inc bc
    ld sp, $2301

jr_008_62de:
    jr nz, jr_008_6300

    inc bc
    nop
    ld bc, $0303
    inc bc
    inc bc
    add hl, bc
    inc b
    inc hl
    jr nz, @+$22

    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    ld de, $6f8d
    jp Jump_008_4251


    ld de, $6f8d
    call Call_008_4251
    ld a, $e0

jr_008_6300:
    ld [$d85c], a
    ld a, $62
    ld [$d85d], a
    ret


    ld a, $da
    ld [$d858], a
    ld a, $62
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jp Jump_008_6381


    jr jr_008_6327

    ld a, $e0
    ld [$d85a], a
    ld a, $62
    ld [$d85b], a

jr_008_6327:
    ld a, $e6
    ld [$d858], a
    ld a, $62
    ld [$d859], a
    jr jr_008_6381

Jump_008_6333:
    ld a, $ec
    ld [$d85a], a
    ld a, $62
    ld [$d85b], a
    ld a, $40
    ld [$d768], a
    ld a, $fa
    ld [$d769], a
    ld a, $28
    ld [$d76a], a
    ld a, $58
    ld [$d823], a
    ld a, $00
    ld [$d824], a
    ld a, $58
    ld [$d825], a
    ld a, $00
    ld [$d826], a
    jr jr_008_6381

    ld a, $fe
    ld [$d820], a
    ld a, $90
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    jr jr_008_6381

    ld a, $62
    ld [$d821], a
    jr jr_008_6381

    ld a, $40
    ld [$d821], a
    jr jr_008_6381

Jump_008_6381:
jr_008_6381:
    call Call_008_73f5
    ld hl, $6f87
    call Call_008_4267
    ret


    call Call_008_73f9
    ld de, $6fa3
    call Call_008_4278
    call Call_008_41ea
    ret


    ld a, [bc]
    ld [$0b0a], sp
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    inc c
    ld hl, $2123
    ld [hl+], a
    ld hl, $2322
    ld hl, $1543
    rra
    jr nz, jr_008_63d1

    ld e, $1f
    ld e, $20
    jr z, jr_008_63cd

    ld b, h
    inc h
    jr nz, jr_008_63e0

    rra
    ld e, $1f
    jr nz, jr_008_63e0

    ld b, e
    dec d
    jr z, jr_008_63e5

    rra
    ld h, l
    jr z, @+$26

    jr nz, jr_008_63e9

    dec d
    dec d

jr_008_63cd:
    ld e, $20
    ld h, l
    nop

jr_008_63d1:
    nop
    jr z, @+$22

    rra
    dec d
    inc c
    rra
    jr nz, jr_008_63e4

    dec bc
    dec bc
    inc c
    jr nz, jr_008_63fd

    ld a, [bc]

jr_008_63e0:
    dec d
    ld e, $20
    ld a, [bc]

jr_008_63e4:
    inc c

jr_008_63e5:
    ld a, [bc]
    inc c
    jr nz, jr_008_6408

jr_008_63e9:
    ld d, $0a
    ld [$1f15], sp
    jr nz, @+$15

    inc d
    ld a, [bc]
    inc c
    jr nz, jr_008_6413

    dec d
    ld b, h
    inc h
    jr nz, @+$1e

    inc hl
    dec d
    ld [hl+], a

jr_008_63fd:
    jr nz, jr_008_641e

    ld a, [bc]
    dec d
    rra
    jr nz, jr_008_641e

    ld d, $15
    jr z, jr_008_6428

jr_008_6408:
    jr z, jr_008_641f

    ld b, h
    inc h
    jr nz, jr_008_6418

    inc c
    dec d
    rra
    jr nz, jr_008_6432

jr_008_6413:
    ld b, e
    dec d
    jr z, jr_008_6437

    dec de

jr_008_6418:
    rla
    inc hl
    ccf
    jr nz, jr_008_643b

    dec d

jr_008_641e:
    inc c

jr_008_641f:
    nop
    jr nz, jr_008_6437

    ld a, [de]
    ld d, $19
    jr nz, jr_008_644f

    dec d

jr_008_6428:
    ld b, h
    rra
    jr nz, jr_008_642c

jr_008_642c:
    nop
    inc hl
    nop
    jr nz, jr_008_6431

jr_008_6431:
    ld a, [bc]

jr_008_6432:
    dec d
    jr nz, jr_008_6455

    ld a, [bc]
    dec bc

jr_008_6437:
    inc c
    ld a, [bc]
    dec bc
    inc c

jr_008_643b:
    ld d, $28
    ld [$200c], sp
    jr nz, jr_008_644c

    dec bc
    inc c
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]

jr_008_644c:
    dec bc
    inc c
    ld a, [bc]

jr_008_644f:
    inc c
    ld a, [de]
    add hl, de
    dec d
    add hl, hl
    add hl, hl

jr_008_6455:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    dec d
    ld a, [de]
    ld d, $19
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    ld a, [de]
    rla
    dec d
    jr nz, @+$22

    ld [hl+], a
    ld hl, $7823
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    inc hl
    nop
    inc hl
    ld hl, $2322
    nop
    inc hl
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    inc hl
    inc sp
    inc sp
    inc hl
    ld hl, $2122
    inc hl
    ld hl, $1a22
    dec d
    jr nz, jr_008_64b1

    ld e, $1f
    jr nz, jr_008_64ce

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    jr nz, jr_008_649d

jr_008_649d:
    jr nz, jr_008_64be

    inc h
    jr nz, jr_008_64a2

jr_008_64a2:
    jr nz, jr_008_6506

    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, b
    ld h, c
    ld h, d
    jr nz, @+$2f

    dec l
    jr nz, jr_008_64cf

    ld h, [hl]

jr_008_64b1:
    rra
    jr nz, jr_008_64d3

    inc h
    dec d
    inc c
    jr nz, @+$20

    rra
    inc h
    jr nz, jr_008_64f6

    add hl, sp

jr_008_64be:
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    jr nz, jr_008_64c5

jr_008_64c5:
    jr nz, jr_008_652c

    jr z, jr_008_64e9

    nop
    jr nz, jr_008_652e

    ld h, d
    ld h, d

jr_008_64ce:
    ld h, d

jr_008_64cf:
    ld h, d
    ld h, d
    ld h, d
    ld h, d

jr_008_64d3:
    jr nz, jr_008_6502

    dec l
    jr nz, jr_008_653d

    nop
    jr z, jr_008_64fb

    ld h, l
    jr z, @+$17

    dec d
    rra
    ld h, l
    nop
    jr z, jr_008_6504

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_008_64e9:
    add hl, sp
    add hl, sp
    jr nz, jr_008_64ed

jr_008_64ed:
    jr nz, jr_008_64ef

jr_008_64ef:
    nop
    jr nz, jr_008_64f2

jr_008_64f2:
    jr nz, jr_008_6556

    ld h, b
    ld h, c

jr_008_64f6:
    ld h, d
    ld h, d
    ld h, b
    ld h, c
    ld h, d

jr_008_64fb:
    dec d
    ld a, [bc]
    dec bc
    inc c
    ld e, $1f
    inc h

jr_008_6502:
    jr nz, jr_008_6504

jr_008_6504:
    nop
    dec de

jr_008_6506:
    dec de
    ld e, $1f
    ld e, $1f
    jr nz, jr_008_6546

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    jr nz, jr_008_6515

jr_008_6515:
    jr nz, jr_008_6535

    rra
    jr nz, jr_008_651a

jr_008_651a:
    jr nz, jr_008_657e

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    add hl, hl
    add hl, hl
    add hl, hl
    dec d
    ld h, $27
    dec d
    rra
    ld e, $1f
    jr nz, jr_008_654a

jr_008_652c:
    rra
    inc e

jr_008_652e:
    add hl, de
    jr z, jr_008_654f

    rra
    ld a, [bc]
    inc c
    ld a, [hl+]

jr_008_6535:
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    dec bc

jr_008_653d:
    inc c
    ld a, [bc]
    inc c
    ld d, $17
    jr nz, jr_008_65a6

    ld h, d
    add hl, hl

jr_008_6546:
    add hl, hl
    add hl, hl
    add hl, de
    inc e

jr_008_654a:
    inc e
    dec d
    ld b, e
    ld b, h
    ld a, [bc]

jr_008_654f:
    dec bc
    inc c
    ld h, [hl]
    jr nz, jr_008_6573

    inc h
    ld a, [de]

jr_008_6556:
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc e
    ld a, [bc]
    inc c
    jr @+$18

    dec e
    add hl, de
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $1a
    rla
    dec de
    inc e
    dec d
    add hl, hl
    add hl, hl
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $1c

jr_008_6573:
    dec d
    ld h, $27
    ld h, $27
    ld a, [de]
    dec de
    rla
    ld h, l
    jr z, jr_008_6593

jr_008_657e:
    ld a, [bc]
    ld [$0b0a], sp
    inc c
    ld c, d
    dec e
    ld d, $19
    nop
    nop
    dec d
    dec d
    ld hl, $2122
    ld [hl+], a
    ld hl, $0022
    nop

jr_008_6593:
    dec d
    ld b, h
    ld c, b
    ld e, $1f
    ld e, $48
    inc h
    ld c, b
    ld h, l
    ld a, [bc]
    ld d, $00
    jr z, jr_008_65ea

    ld d, e
    ld d, b
    ld d, h
    ld h, l

jr_008_65a6:
    nop
    dec d
    add hl, de
    nop
    nop
    ld e, $2f
    dec l
    ld l, $48
    inc h
    ld a, [bc]
    nop
    nop
    nop
    jr z, @+$31

    dec l
    ld l, $1e
    rra
    dec d
    nop
    nop
    nop
    rra
    ld d, l
    ld d, c
    ld d, [hl]
    ld h, l
    jr z, jr_008_65d0

    dec e
    inc de
    ld a, [bc]
    inc c
    cpl
    dec l
    ld l, $15
    dec de
    dec d

jr_008_65d0:
    ld a, [bc]
    ld [$0b0a], sp
    dec bc
    inc c
    cpl
    dec l
    ld l, $15
    ld a, [de]
    ld b, b
    dec d
    ld [hl+], a
    ld hl, $2f22
    dec l
    ld l, $21
    ld hl, $1b15
    ld e, $1f
    ld h, l

jr_008_65ea:
    cpl
    dec l
    ld l, $28
    ld c, b
    dec d
    inc e
    rra
    ld e, $1f
    cpl
    dec l
    ld e, d
    ld e, d
    ld e, d
    ld l, e
    add hl, de
    jr z, jr_008_6645

    nop
    ld d, l
    ld d, c
    ld d, [hl]
    ld e, $1f
    ld d, $15
    ld e, $1f
    ld c, b
    nop
    nop
    nop
    jr z, jr_008_662b

    ld a, [de]
    dec d
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    rla
    ld bc, $1515
    ld [$0808], sp
    dec d
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$0115], sp
    dec d
    dec d
    ld a, [bc]
    dec bc
    inc c

jr_008_662b:
    daa
    ld a, [bc]
    dec bc
    dec d
    ld bc, $2122
    dec [hl]
    inc sp
    inc [hl]
    ld hl, $1522
    dec d
    ld [hl+], a
    ld e, $1f
    cpl
    dec l
    ld l, $1f
    inc h
    dec d
    dec d
    ld h, l
    nop

jr_008_6645:
    nop
    cpl
    dec l
    ld l, $0a
    inc c
    ld b, e
    ld b, c
    ld a, [bc]
    inc c
    nop
    cpl
    dec l
    ld l, $00
    ld hl, $1943
    ld hl, $0a4e
    dec bc
    inc c
    ld l, $24
    rra
    dec de
    dec de
    rra
    ld c, h
    nop
    dec [hl]
    inc sp
    ld l, $48
    ld e, $1a
    inc e
    ld e, $4c
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc d
    rla
    ld d, $1e
    ld [$391c], sp
    add hl, sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, e
    ld l, h
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [bc]
    dec bc
    inc c
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld a, [de]
    ld d, $17
    dec de
    add hl, sp
    add hl, sp
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    dec [hl]
    inc [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    dec [hl]
    inc [hl]
    nop
    nop
    ld hl, $2122
    ld [hl+], a
    ld hl, $1c43
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    add hl, sp
    cpl
    ld l, $62
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    cpl
    ld l, $00
    nop
    nop
    ld e, $1f
    ld h, l
    nop
    dec d
    inc e
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    cpl
    ld l, $62
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    cpl
    ld l, $00
    nop
    nop
    nop
    nop
    add hl, bc
    ld [bc], a
    jr jr_008_6708

    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    add hl, sp
    cpl
    ld l, $62
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    cpl
    ld l, $00
    nop
    nop
    nop

jr_008_6708:
    add hl, bc
    add hl, bc
    ld bc, $1516
    add hl, sp
    add hl, sp
    nop
    nop
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl+]
    ld de, $2912

Jump_008_6718:
    nop
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    cpl
    ld l, $00
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    ld bc, $151a
    add hl, sp
    add hl, sp
    nop
    nop
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [de]
    ld h, e
    ld h, h
    add hl, de
    nop
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld de, $1712
    nop
    nop
    ld b, a
    inc de
    inc d
    ld bc, $1515
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    ld l, e
    ld l, h
    ld c, c
    nop
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    jr jr_008_6779

    add hl, de
    ld [$1a08], sp
    ld h, e
    ld l, [hl]
    ld bc, $0a43
    ld [$151a], sp
    dec e
    ld l, e
    dec bc
    inc c
    ld l, a
    ld [hl], b
    ld bc, $1715
    nop
    nop
    ld [hl], $00
    nop
    nop

jr_008_6779:
    ld [hl], $01
    ld l, l
    ld d, $00
    nop
    jr nc, jr_008_6781

jr_008_6781:
    nop
    nop
    jr nc, jr_008_6785

jr_008_6785:
    ld l, a
    inc c
    dec l
    dec l
    jr nc, jr_008_67b8

    dec l
    jr jr_008_67ab

    ld a, [bc]
    dec bc
    dec d
    dec l
    dec l
    ld c, d
    dec e
    dec e
    add hl, de
    ld [hl], $22
    ld hl, $0015
    nop
    ld [hl], $00
    nop
    nop
    jr nc, jr_008_67cb

    ld c, b
    inc c
    nop
    nop
    jr nc, jr_008_67a9

jr_008_67a9:
    nop
    nop

jr_008_67ab:
    jr nc, jr_008_67ad

jr_008_67ad:
    jr jr_008_67c7

    dec e
    ld c, c
    ld a, [bc]
    ld h, h
    ld h, e
    ld h, h
    ld h, e
    inc c
    ld a, [de]

jr_008_67b8:
    ld e, $08
    dec d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec d
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

jr_008_67c7:
    add hl, hl
    dec d
    inc de
    inc d

jr_008_67cb:
    ld b, b
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$7878], sp
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, [hl+]
    ld [hl], b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_6879

    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], $21
    ld [hl+], a
    nop
    ld [hl+], a
    ld hl, $3622
    ld a, b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, b
    inc c
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_6880

    ld h, d
    ld h, b
    ld h, c
    ld h, d
    jr nc, jr_008_6843

    nop
    nop
    nop
    jr z, jr_008_684d

    jr nc, jr_008_6864

    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [hl], $39
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_689e

    ld h, d
    ld h, b
    ld h, c
    ld h, d
    jr nc, jr_008_6842

jr_008_6842:
    nop

jr_008_6843:
    nop
    nop
    nop
    nop
    jr nc, jr_008_6882

    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp

jr_008_684d:
    add hl, sp
    add hl, sp
    ld a, [hl+]
    jr nc, jr_008_688b

    add hl, sp
    nop
    nop
    nop
    nop
    add hl, sp
    jr nc, @+$64

    nop
    nop
    nop
    add hl, hl
    jr nc, jr_008_6860

jr_008_6860:
    nop
    nop
    nop
    nop

jr_008_6864:
    nop
    jr nc, jr_008_6867

jr_008_6867:
    add hl, sp
    nop
    nop
    nop
    add hl, sp
    nop
    ld [hl], c
    ld h, e
    ld h, h
    ld a, [hl+]
    nop
    nop
    nop
    nop
    ld a, [hl+]
    jr nc, @+$64

    nop

jr_008_6879:
    add hl, hl
    nop
    add hl, hl
    jr nc, jr_008_687e

jr_008_687e:
    nop
    nop

jr_008_6880:
    nop
    nop

jr_008_6882:
    nop
    ccf
    nop
    add hl, sp
    nop
    nop
    nop
    add hl, sp
    nop

jr_008_688b:
    ld l, l
    ld l, e
    ld l, h
    ld b, b
    nop
    nop
    nop
    nop
    ld [hl], c
    jr nc, @+$2b

    nop
    ld [hl], c
    nop
    ld [hl], c
    jr nc, jr_008_690d

    nop
    nop

jr_008_689e:
    ld [hl], c
    nop
    nop
    inc e
    nop
    ld a, [hl+]
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld l, a
    ld a, [bc]
    ld [$6f3f], sp
    ld l, h
    ld l, e
    ld l, h
    ld l, e
    ld [hl], b
    ld e, $01
    ld d, $4b
    ld [hl], $21
    ld [hl+], a
    ld hl, $2136
    rra
    ld bc, $226d
    jr nc, jr_008_690b

    ld h, l
    jr z, jr_008_68f6

    ld h, l
    nop
    nop
    rrca
    ld e, $30
    ld d, e
    ld d, b
    ld d, h
    jr nc, jr_008_6924

    ld d, b
    ld d, h
    ld a, [de]
    ccf
    jr nc, jr_008_692c

    ld d, c
    ld d, [hl]
    jr nc, jr_008_6930

    ld d, c
    ld d, [hl]
    jr jr_008_68fb

    jr nc, jr_008_6929

    ld e, $1f
    jr jr_008_6902

    dec e
    rla
    ld c, $6e
    jr nc, jr_008_6909

    jr jr_008_6904

    ld a, [de]
    ld de, $0f12
    db $10
    ld [hl], b
    ld a, [bc]
    inc c
    inc e

jr_008_68f6:
    inc de
    ld a, [bc]
    ld h, h
    ld h, e
    ld l, [hl]

jr_008_68fb:
    ld a, [de]
    ld a, [bc]
    ld [$0d10], sp
    ld d, $49

jr_008_6902:
    ld b, a
    dec de

jr_008_6904:
    ld b, [hl]
    ld b, b
    ld e, e
    ld e, h
    ld e, c

jr_008_6909:
    dec [hl]
    inc [hl]

jr_008_690b:
    dec [hl]
    inc [hl]

jr_008_690d:
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld e, c
    cpl
    ld l, $2f
    ld l, $2f
    ld l, $55
    ld d, [hl]
    ld d, l
    ld e, c
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    inc de
    inc d

jr_008_6924:
    dec e
    jr jr_008_6935

    ld [hl-], a
    ld [bc], a

jr_008_6929:
    ld b, a
    dec de
    ld b, [hl]

jr_008_692c:
    ld hl, $2222
    dec c

jr_008_6930:
    db $10
    ld [hl-], a
    ld bc, $2122

jr_008_6935:
    ld [hl], $28
    inc h
    rra
    rrca
    dec de
    ld [hl-], a
    nop
    ld e, $1f
    jr nc, jr_008_6965

    rra
    ld h, l
    ld d, $1a
    ld h, e
    ld h, h
    ld h, e
    ld h, h
    ld h, e
    ld l, [hl]
    ld c, b
    ld [bc], a
    ld b, a
    inc d
    ld [$2a4b], sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    nop
    nop
    cpl
    dec l
    ld l, $00
    cpl
    dec l
    dec l
    ld l, $1a
    inc [hl]

jr_008_6965:
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], $00
    nop
    cpl
    dec l
    ld l, $00
    cpl
    dec l
    dec l
    ld l, $00
    ld d, [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_6982

jr_008_6982:
    nop
    cpl
    dec l
    ld l, $00
    cpl
    dec l
    dec l
    ld l, $00
    rla
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_6996

jr_008_6996:
    nop
    cpl
    dec l
    ld l, $00
    cpl
    dec l
    ld b, a
    ld b, [hl]
    ccf
    ld c, $39
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_69aa

jr_008_69aa:
    nop
    cpl
    dec l
    ld l, $00
    cpl
    dec l
    ld e, d
    ld e, d
    ld a, [de]
    db $10
    ld a, [hl+]
    add hl, sp
    nop
    add hl, sp
    nop
    add hl, sp
    add hl, sp
    jr nc, jr_008_69be

jr_008_69be:
    nop
    cpl
    dec l
    ld l, $00
    ld b, a
    ld b, [hl]
    ld h, e
    ld h, h
    dec d
    inc e
    inc e
    add hl, sp
    nop
    add hl, sp
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], c
    nop
    nop
    cpl
    dec l
    ld l, $00
    ld e, d
    ld e, d
    ld l, e
    ld l, h
    dec d
    dec c
    ld c, $2a
    nop
    ld a, [hl+]
    nop
    ld [hl], c
    ld [hl], c
    ld b, d
    nop
    nop
    ld h, e
    ld h, h
    ld b, a
    ld b, l
    ld b, l
    ld b, [hl]
    ld h, e
    ld h, h
    ld [hl], c
    ld a, [bc]
    ld [$1c19], sp
    inc de
    inc d
    ld b, a
    ld b, [hl]
    ld c, c
    ld bc, $1c68
    jr c, jr_008_69fe

jr_008_69fe:
    jr c, jr_008_6a00

jr_008_6a00:
    jr c, jr_008_6a02

jr_008_6a02:
    jr c, jr_008_6a05

    ld l, b

jr_008_6a05:
    dec de
    ld [hl-], a
    ld d, d
    ld l, d
    ld d, a
    ld l, b
    ld d, d
    ld l, d
    ld bc, $1a68
    ccf
    nop
    ld [hl-], a
    ld d, a
    ld l, b
    nop
    ld [hl-], a
    nop
    ld l, b
    ld b, a
    add hl, de
    ld d, d
    ld l, d
    ld d, a
    ld l, b
    ld d, d
    ld l, d
    ld d, a
    ld l, b
    ld a, [bc]
    inc a
    nop
    ld [hl-], a
    ld d, a
    ld l, b
    nop
    ld de, $1d12
    dec e
    inc a
    ld d, d
    ld l, d
    ld d, a
    jr @+$1f

    add hl, de
    ld a, [de]
    rla
    ld d, $3c
    ld b, a
    dec de
    ld b, [hl]
    add hl, de
    ld c, d
    ld b, a
    dec de
    ld b, [hl]
    ld c, e
    ld a, [bc]
    ld [$1916], sp
    ld b, a
    ld b, b
    dec de
    add hl, de
    ld c, d
    ld b, a
    dec de
    ld b, [hl]
    add hl, de
    nop
    jr c, jr_008_6a52

jr_008_6a52:
    jr c, jr_008_6a54

jr_008_6a54:
    jr c, jr_008_6a56

jr_008_6a56:
    jr c, jr_008_6a58

jr_008_6a58:
    ld d, $52
    ld l, d
    ld d, a
    ld l, b
    ld d, d
    ld l, d
    ld d, a
    ld l, b
    nop
    inc e
    nop
    ld [hl-], a
    ld d, a
    ld l, b
    nop
    ld [hl-], a
    ld d, a
    ld l, b
    nop
    ld d, $00
    ld [bc], a
    dec de
    ld b, [hl]
    dec e
    ld b, a
    dec de
    ld b, [hl]
    rla
    inc e
    nop
    ld bc, $3800
    nop
    jr c, jr_008_6a7e

jr_008_6a7e:
    jr c, jr_008_6a9b

    ld d, $00
    nop
    ld d, a
    ld l, b
    ld d, d
    ld l, d
    ld d, a
    ld l, b
    inc e
    ld b, l
    ld b, [hl]
    rla
    ld b, a
    ld b, l
    dec de
    ld b, [hl]
    ld [bc], a
    ld l, b
    inc e
    ld [hl-], a
    ld [$2a2a], sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]

jr_008_6a9b:
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec d
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    dec d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, a
    ld b, l
    ld b, [hl]
    ld c, e
    ld de, $1112
    ld [de], a
    ld de, $1112
    ld [de], a
    dec hl
    ld [de], a
    ld de, $1112
    ld [de], a
    ld de, $1112
    ld [de], a
    ld de, $7812
    ld a, b
    ld a, b
    ld a, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    inc hl
    ld hl, $2122
    inc hl
    ld hl, $2122
    inc hl
    ld hl, $2122
    ld [hl+], a
    inc hl
    ld hl, $2122
    ld [hl+], a
    ld [hl+], a
    inc bc
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], $79
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], $78
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], $00
    nop
    nop
    jr nz, jr_008_6b62

    inc h
    rra
    jr nz, jr_008_6b83

    nop
    jr z, jr_008_6b41

    ld c, b
    jr z, jr_008_6b42

    rra
    jr nz, jr_008_6b46

    ld e, $1f
    inc h
    ld h, l
    inc bc
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    jr nc, jr_008_6b9b

    ld h, d
    ld h, d
    ld h, b
    ld h, c
    jr nc, jr_008_6b78

    add hl, sp
    add hl, sp

jr_008_6b41:
    add hl, sp

jr_008_6b42:
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp

jr_008_6b46:
    jr nc, jr_008_6b98

    ld d, b
    ld d, b
    jr nz, @+$26

    rra
    ld h, [hl]
    jr nz, jr_008_6b50

jr_008_6b50:
    nop
    nop
    jr nz, jr_008_6b72

    rra
    ld e, $1e
    jr nz, jr_008_6b77

    rra
    ld h, l
    nop
    nop
    inc bc
    ld a, [hl+]
    add hl, sp
    add hl, sp
    add hl, sp

jr_008_6b62:
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    jr nc, jr_008_6bcd

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    jr nc, jr_008_6baa

    add hl, sp

jr_008_6b72:
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_008_6b77:
    add hl, sp

jr_008_6b78:
    jr nc, jr_008_6bcb

    ld d, c
    ld d, c
    jr nz, jr_008_6b7e

jr_008_6b7e:
    nop
    nop
    nop
    nop
    nop

jr_008_6b83:
    nop
    jr nz, jr_008_6b86

jr_008_6b86:
    nop
    nop
    jr z, jr_008_6baa

    ld h, l
    nop
    ld de, $1112
    ld [de], a
    ld a, [hl+]
    add hl, sp
    nop
    add hl, sp
    nop
    nop
    add hl, sp
    add hl, sp

jr_008_6b98:
    add hl, sp
    nop
    nop

jr_008_6b9b:
    dec d
    ld h, d
    ld h, d
    nop
    ld h, d
    nop
    jr nc, jr_008_6ba3

jr_008_6ba3:
    nop
    nop
    add hl, sp
    nop
    nop
    add hl, sp
    add hl, sp

jr_008_6baa:
    jr nc, jr_008_6bac

jr_008_6bac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    add hl, bc
    ld de, $1112
    ld [de], a
    ld de, $1112
    ld [de], a
    dec d
    inc b
    dec b
    dec d
    ld a, [hl+]
    ld a, [hl+]
    nop
    add hl, sp
    nop
    nop
    add hl, sp
    add hl, sp
    add hl, sp

jr_008_6bcb:
    nop
    nop

jr_008_6bcd:
    dec d
    add hl, hl
    ld h, d
    nop
    add hl, hl
    nop
    jr nc, jr_008_6bd5

jr_008_6bd5:
    nop
    nop
    add hl, sp
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    add hl, bc
    nop
    ld de, $1512
    dec d
    ld de, $1512
    dec d
    ld b, $07
    dec d
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    dec d
    add hl, hl
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld d, $1c
    nop
    nop
    inc a
    inc a
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    ld de, $1112
    ld [de], a
    ld de, $1112
    ld [de], a
    dec d
    ld de, $1512
    ld a, [bc]
    ld [$1211], sp
    ld de, $1112
    ld [de], a
    ld de, $1112
    ld [de], a
    ld d, d
    ld d, d
    inc hl
    ld d, d
    ld d, d
    inc hl
    ld d, d
    ld de, $0d12
    cpl
    ld l, $20
    cpl
    ld l, $20
    cpl
    ld de, $0f12
    ld d, l
    ld d, [hl]
    jr nz, @+$57

    ld d, [hl]
    jr nz, jr_008_6ca2

    ld de, $1a12
    ld de, $1112
    ld [de], a
    ld e, $20
    ld c, b
    ld hl, $0322
    dec d
    dec c
    ld c, $15
    rra
    jr nz, jr_008_6c80

    ld e, $48
    inc bc
    dec d
    rrca
    db $10
    dec d
    ld c, b
    jr nz, @+$20

    rra
    ld c, b
    inc bc
    ld de, $1112
    ld [de], a
    ld de, $1112
    ld [de], a
    ld de, $0b12
    ld [$773c], sp
    ld [hl], h
    ld [hl], l
    ld [hl], a
    ld [hl], a

jr_008_6c80:
    ld [hl], a
    ld [hl], h
    ld [hl], l
    ld [hl], a
    dec hl
    ld c, $65
    nop
    jr nz, jr_008_6cb2

    ld e, $1f
    jr nz, jr_008_6cad

    jr z, @+$17

    db $10
    inc h
    rra
    jr nz, @+$26

    rra
    inc h
    jr nz, jr_008_6cbd

    rra
    inc a
    add hl, de
    rra
    inc h
    jr nz, @+$67

    ld e, $1f

jr_008_6ca2:
    jr nz, jr_008_6cc3

    ld e, $16
    ld hl, $1f1e
    jr nz, jr_008_6cc9

    rra
    inc h

jr_008_6cad:
    jr nz, jr_008_6ccd

    rra
    ld d, $1e

jr_008_6cb2:
    rra
    inc h
    jr nz, @+$21

    ld e, $1f
    jr nz, jr_008_6cd9

    ld h, l
    inc a
    ld c, b

jr_008_6cbd:
    ld h, l
    nop
    jr nz, jr_008_6d26

    nop
    nop

jr_008_6cc3:
    jr nz, jr_008_6d2a

    nop
    dec d
    inc a
    halt

jr_008_6cc9:
    ld [hl], d
    ld [hl], e
    halt
    halt

jr_008_6ccd:
    halt
    ld [hl], d
    ld [hl], e
    halt
    dec hl
    ld a, [bc]
    ld [$0c0a], sp
    dec de
    ld b, [hl]
    ld a, [de]

jr_008_6cd9:
    ld d, $19
    inc de
    inc d
    rla
    dec d
    ld [$0808], sp
    ld [$0808], sp
    ld [$165d], sp
    dec d
    nop
    ld hl, $2122
    ld [hl+], a
    ld hl, $2222
    ld b, e
    dec d
    ld d, e
    ld d, h
    ld h, l
    jr z, jr_008_6d4b

    ld d, h
    ld h, [hl]
    inc h
    dec de
    jr jr_008_6d1b

    ld d, $17
    add hl, bc
    ld a, [bc]
    inc c
    ld [bc], a
    jr z, jr_008_6d20

    add hl, de
    dec [hl]
    inc [hl]
    ld c, e
    add hl, bc
    dec [hl]
    inc [hl]
    ld bc, $0000
    rla
    ld d, l
    ld d, [hl]
    nop
    add hl, bc
    ld d, l
    ld d, [hl]
    nop
    nop
    nop
    ld a, [de]

jr_008_6d1b:
    ld d, $1d
    ld c, c
    ld a, [bc]
    inc c

jr_008_6d20:
    ld a, [bc]
    dec bc
    inc c
    dec d
    ld a, d
    nop

jr_008_6d26:
    nop
    nop
    nop
    rrca

jr_008_6d2a:
    rrca
    db $10
    db $10
    rrca
    rrca
    db $10
    db $10
    dec c
    dec c
    ld c, $0e
    dec l
    scf
    inc b
    rlca
    dec b
    ld [$0906], sp
    scf
    cpl
    ld a, [bc]
    ld [hl], $0b
    ld [hl], $0c
    jr nc, jr_008_6d57

    inc de
    ld [de], a
    inc d
    ld e, [hl]
    ld h, b

jr_008_6d4b:
    ld e, a
    ld h, c
    dec h
    add hl, hl
    ld h, $2a
    daa
    dec hl
    ld h, $2a
    daa
    dec hl

jr_008_6d57:
    jr z, jr_008_6d85

    dec d
    add hl, de
    ld d, $1a
    rla
    dec de
    jr jr_008_6d7d

    dec e
    ld hl, $221e
    rra
    inc hl
    jr nz, @+$26

    ld b, b
    ld b, h
    ld b, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, a
    jr c, jr_008_6daf

    add hl, sp
    dec a
    ld a, [hl-]
    ld a, $3b
    ccf
    ld [hl-], a
    inc [hl]
    inc sp
    dec [hl]

jr_008_6d7d:
    ld a, [de]
    ld e, $1b
    rra
    ld [hl], $2e
    ld l, $37

jr_008_6d85:
    dec l
    scf
    ld [hl], $2d
    jr nc, jr_008_6dc1

    scf
    jr nc, jr_008_6dc5

    cpl
    cpl
    ld [hl], $38
    inc a
    jr c, jr_008_6dd1

    scf
    scf
    scf
    scf
    ld [hl], $36
    ld [hl], $36
    ld c, b
    ld c, h
    ld c, c
    ld c, l
    ld c, d
    ld c, l
    ld c, e
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, l

jr_008_6daf:
    nop
    ld c, [hl]
    nop
    ld d, b
    nop
    ld c, a
    ld c, b
    ld c, h
    ld c, d
    ld c, l
    nop
    nop
    ld c, b
    ld c, h
    ld [hl-], a
    inc [hl]
    add hl, de
    dec e

jr_008_6dc1:
    inc e
    jr nz, jr_008_6df7

    dec [hl]

jr_008_6dc5:
    nop
    nop
    ld e, l
    nop
    ld l, d
    ld h, [hl]
    ld l, e
    ld h, a
    ld l, h
    ld l, b
    ld l, l
    ld l, c

jr_008_6dd1:
    ld b, b
    ld b, h
    ld b, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, a
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, b
    ld e, b
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    nop
    nop
    nop
    nop
    ld e, c
    ld e, c
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, b

jr_008_6df7:
    nop
    ld e, c
    nop
    ld e, c
    nop
    ld e, b
    nop
    ld e, c
    nop
    ld e, c
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld h, h
    ld h, h
    ld h, l
    ld h, l
    ld d, [hl]
    ld e, e
    ld d, c
    ld d, e
    ld d, h
    ld d, a
    ld h, l
    ld h, l
    ld b, b
    ld b, h
    ld b, e
    ld b, a
    ld b, c
    ld b, l
    ld b, d
    ld b, [hl]
    dec [hl]
    inc sp
    ld [hl-], a
    inc [hl]
    dec l
    scf
    ld l, $37
    jr c, jr_008_6e63

    dec sp
    ccf
    ld sp, $3137
    scf
    dec d
    ld hl, $2418
    ld [hl-], a
    inc [hl]
    ld a, [de]
    ld e, $1b
    rra
    inc sp
    dec [hl]
    ld a, [hl-]
    ld a, $3a
    ld a, $3a
    ld a, $3b
    jr nc, jr_008_6e7b

    cpl
    ld a, [hl-]
    ld a, $48
    ld c, h
    ld c, e
    ld c, [hl]
    ld [hl], $36
    ld l, $30
    dec l
    cpl
    ld [hl], $36
    scf
    cpl
    scf
    jr nc, jr_008_6ea5

    ld d, b
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    nop
    ld d, b
    nop
    nop
    nop
    nop

jr_008_6e63:
    nop
    ld d, b
    ld e, d
    ld e, b
    ld e, d
    ld e, b
    ld e, b
    ld e, d
    ld e, b
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    ld e, d
    ld e, c
    ld e, d
    ld e, b
    ld e, d
    ld e, b
    ld e, d
    ld e, c
    ld e, c
    ld e, d

jr_008_6e7b:
    ld e, b
    ld e, d
    ld e, b
    ld e, d
    ld e, c
    ld e, d
    ld e, d
    nop
    ld e, d
    nop
    scf
    scf
    nop
    nop
    nop
    nop
    scf
    scf
    ld [hl], $00
    ld [hl], $00
    nop
    ld [hl], $00
    ld [hl], $00
    ld [hl], $37
    jr nc, jr_008_6ed1

    cpl
    nop
    ld [hl], $36
    nop
    ld l, $37
    dec l
    scf
    ld [hl], $00

jr_008_6ea5:
    ld h, d
    ld h, d
    ld d, d
    ld d, l
    ld d, h
    ld d, a
    ld h, e
    ld h, e
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    dec h
    ld [hl], $27
    ld a, [de]
    daa
    dec de
    jr z, jr_008_6eef

    ld e, h
    nop
    nop
    nop
    ld e, h
    nop
    ld e, l
    nop
    ld e, c
    ld e, c
    ld e, d
    nop
    ld e, d
    nop
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    nop
    ld e, d
    nop
    ld e, d
    ld e, c
    ld e, c

jr_008_6ed1:
    ld [hl], $29
    ld e, $2a
    rra
    ld a, [hl+]
    ld [hl], $2c
    dec h
    add hl, hl
    daa
    ld a, [de]
    daa
    dec de
    jr z, jr_008_6f0d

    dec h
    add hl, hl
    ld e, $2a
    rra
    ld a, [hl+]
    jr z, jr_008_6f15

    add hl, sp
    ld sp, $313b
    nop
    ld b, b

jr_008_6eef:
    nop
    ld b, c
    nop
    ld b, d
    nop
    ld b, e
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    nop
    ld b, b
    nop
    ld b, e
    ld b, h
    nop
    ld b, a
    nop
    nop
    ld h, h
    nop
    ld h, l
    nop
    ld h, d
    nop
    ld h, e

jr_008_6f0d:
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_008_6f15:
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_008_6f25:
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_008_6f50:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
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
    nop
    nop
    nop
    nop

jr_008_6f65:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_008_6f7a:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0002
    nop
    inc bc
    rlca
    add hl, bc
    inc c
    rrca
    nop
    jr nz, jr_008_6f25

jr_008_6f8f:
    ld b, b
    nop
    and b
    ld [hl], b
    nop
    ld h, b
    sub [hl]
    ld b, b
    nop
    ldh [rSVBK], a
    nop
    and b
    sub [hl]
    ld b, b
    nop
    jr nz, jr_008_7012

    ld bc, $20ff

jr_008_6fa4:
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], b
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ldh [rSVBK], a
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    jr nz, jr_008_7028

    inc b
    jr nz, jr_008_6f50

    ld b, b
    nop
    ld h, b
    ld [hl], c
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], c
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    ldh [$ff71], a
    inc b
    jr nz, jr_008_6f65

    ld b, b
    nop
    jr nz, jr_008_7045

    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, b
    ld [hl], d
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], d
    inc b
    jr nz, jr_008_6f7a

    ld b, b
    nop
    ldh [$ff72], a
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ldh [rSVBK], a
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    jr nz, jr_008_7067

    inc b
    jr nz, jr_008_6f8f

    ld b, b
    nop
    and b
    ld [hl], b
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], c
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    ldh [$ff71], a
    inc b
    jr nz, jr_008_6fa4

    ld b, b
    nop
    ld h, b
    ld [hl], c

jr_008_7012:
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, b
    ld [hl], d
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], d
    inc b
    jr nz, @-$68

    ld b, b
    nop
    jr nz, jr_008_7099

    ld [bc], a

jr_008_7028:
    ld h, b
    sub [hl]
    ld b, b
    nop
    ldh [rSVBK], a
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    jr nz, jr_008_70a6

    inc b
    jr nz, @-$68

    ld b, b
    nop
    ldh [$ff72], a
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], c
    ld [bc], a
    and b

jr_008_7045:
    sub [hl]
    ld b, b
    nop
    ldh [$ff71], a
    inc b
    jr nz, @-$68

    ld b, b
    nop
    and b
    ld [hl], b
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, b
    ld [hl], d
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], d
    inc b
    jr nz, @-$68

    ld b, b
    nop
    ld h, b
    ld [hl], c
    ld [bc], a

jr_008_7067:
    ld h, b
    sub [hl]
    ld b, b
    nop
    ldh [rSVBK], a
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    jr nz, jr_008_70e5

    inc b
    jr nz, @-$68

    ld b, b
    nop
    jr nz, jr_008_70ed

    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], c
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    ldh [$ff71], a

jr_008_7089:
    inc b
    jr nz, @-$68

    ld b, b
    nop
    ldh [$ff72], a
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, b
    ld [hl], d
    ld [bc], a
    and b

jr_008_7099:
    sub [hl]
    ld b, b
    nop
    and b
    ld [hl], d
    inc b
    rst $38
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop

jr_008_70a6:
    rra
    nop
    rrca

jr_008_70a9:
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $fe00
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca

jr_008_70c7:
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ld e, b
    jr c, @+$5d

    jr c, @+$5b

jr_008_70e5:
    jr c, jr_008_713f

    jr c, jr_008_7141

    dec sp
    xor b

jr_008_70eb:
    ld e, l
    sub h

jr_008_70ed:
    ld l, [hl]
    xor e
    ld [hl], a
    inc d
    jr jr_008_70c7

    jr jr_008_7089

    jr jr_008_710b

    jr jr_008_710d

    ret c

    ld a, [hl+]
    sub b
    ld d, [hl]
    jr nz, jr_008_7129

    call nz, $3b58
    ld e, b
    jr c, jr_008_715e

    jr c, jr_008_7162

    jr c, jr_008_7161

    jr c, @+$5b

jr_008_710b:
    add hl, sp
    ld e, e

jr_008_710d:
    dec sp
    ld b, b
    jr c, jr_008_7125

    ret c

    inc d
    jr jr_008_70a9

    jr jr_008_70eb

    jr jr_008_712d

    jr @-$6a

    sbc b
    call nc, $1cd8
    nop
    nop
    nop
    rst $18
    dec l
    rst $18

jr_008_7125:
    dec l
    rst $18
    dec l
    nop

jr_008_7129:
    nop
    ld b, b
    jr c, jr_008_7188

jr_008_712d:
    dec sp
    ld e, c
    add hl, sp
    nop
    nop
    adc h
    ldh [$ff8c], a
    ldh [$ff8c], a
    ldh [rP1], a
    nop
    inc e
    nop
    call nc, $94d8

jr_008_713f:
    sbc b
    nop

jr_008_7141:
    nop
    xor a
    ld e, e
    xor a
    ld e, e
    xor a
    ld e, e
    nop
    nop
    xor e
    ld [hl], a
    sub h
    ld l, [hl]
    xor b
    ld e, l
    nop
    nop
    adc d
    ret nc

jr_008_7154:
    adc d
    ret nc

    adc d
    ret nc

    nop
    nop
    ld a, [hl+]
    call nz, Call_000_2056

jr_008_715e:
    ld a, [hl+]
    sub b
    inc bc

jr_008_7161:
    nop

jr_008_7162:
    ld bc, $ff00

jr_008_7165:
    nop
    ld a, a
    nop
    ccf

jr_008_7169:
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    add b
    nop
    nop
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf

jr_008_7187:
    nop

jr_008_7188:
    ld a, a
    nop
    rst $38
    nop
    ld bc, $0300
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    nop
    nop
    add b
    nop
    ld e, b
    jr c, jr_008_71fe

    dec sp
    ld e, c

jr_008_71a5:
    add hl, sp
    ld e, b
    jr c, jr_008_7204

    jr c, jr_008_7154

    ld e, h
    sub h
    ld l, [hl]
    xor e
    ld [hl], a
    inc d
    jr jr_008_7187

    ret c

    sub h
    sbc b
    inc d
    jr @-$2a

    jr jr_008_7165

    db $10
    ld d, [hl]
    jr nz, jr_008_71e9

    call nz, $385b
    ld e, b
    jr c, jr_008_721e

    add hl, sp
    ld e, e
    dec sp
    ld e, b
    jr c, jr_008_7223

    add hl, sp
    ld e, b
    dec sp
    ld b, b
    jr c, jr_008_71a5

    jr jr_008_71e7

    jr jr_008_7169

    sbc b
    call nc, Call_000_14d8
    jr jr_008_71ef

    sbc b
    inc d
    ret c

    inc e
    nop
    nop
    nop
    ld e, a
    or a
    ld e, a
    or a
    ld e, a

jr_008_71e7:
    or a
    nop

jr_008_71e9:
    nop
    ld b, b
    jr c, jr_008_7245

    dec sp
    ld e, b

jr_008_71ef:
    add hl, sp
    nop
    nop
    add [hl]
    ld [hl], b
    add [hl]
    ld [hl], b
    add [hl]
    ld [hl], b
    nop
    nop
    inc e
    nop
    inc d
    ret c

jr_008_71fe:
    inc d
    sbc b
    nop
    nop
    ld e, a
    or a

jr_008_7204:
    ld e, a
    or a
    ld e, a
    or a
    nop
    nop
    xor e
    ld [hl], a
    sub h
    ld l, [hl]
    xor c
    ld e, h
    nop
    nop
    add [hl]
    ld [hl], b
    add [hl]
    ld [hl], b
    add [hl]
    ld [hl], b
    nop
    nop
    ld a, [hl+]
    call nz, Call_000_2056

jr_008_721e:
    xor d
    db $10
    rrca
    nop
    rlca

jr_008_7223:
    nop
    inc bc
    nop
    ld bc, $ff00
    nop
    ld a, a
    nop
    ccf
    nop
    rra

jr_008_722f:
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    rra
    nop
    ccf
    nop
    ld a, a

jr_008_7245:
    nop
    rst $38
    nop
    ld bc, $0300
    nop
    rlca

jr_008_724d:
    nop
    rrca
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld e, b
    jr c, jr_008_72bb

    dec sp
    ld e, b

jr_008_7265:
    add hl, sp
    ld e, b
    jr c, jr_008_72c4

    dec sp
    xor c
    ld e, l
    sub h
    ld l, [hl]
    xor e
    ld [hl], a
    inc d

jr_008_7271:
    jr jr_008_7287

    ret c

    inc d
    sbc b
    inc d
    jr jr_008_724d

    ret c

    xor d
    sub b
    ld d, [hl]
    jr nz, jr_008_72a9

    call nz, $3b5b
    ld e, b
    jr c, @+$5a

    add hl, sp
    ld e, b

jr_008_7287:
    dec sp
    ld e, b
    jr c, jr_008_72e4

    jr c, jr_008_72e8

    jr c, jr_008_72cf

    jr c, jr_008_7265

    ret c

    inc d
    jr jr_008_72a9

    sbc b
    inc d
    ret c

    inc d
    jr jr_008_722f

    jr jr_008_7271

    jr jr_008_72bb

    nop
    nop
    nop
    xor a
    ld e, e
    xor a
    ld e, e
    xor a
    ld e, e
    nop

jr_008_72a9:
    nop
    ld b, b
    jr c, jr_008_7308

    jr c, jr_008_7308

    jr c, jr_008_72b1

jr_008_72b1:
    nop
    adc d
    ret nc

    adc d
    ret nc

    adc d
    ret nc

    nop
    nop
    inc e

jr_008_72bb:
    nop
    call nc, $9418
    jr jr_008_72c1

jr_008_72c1:
    nop
    rst $18
    dec l

jr_008_72c4:
    rst $18
    dec l
    rst $18
    dec l
    nop
    nop
    xor e
    ld [hl], a
    sub h
    ld l, [hl]
    xor c

jr_008_72cf:
    ld e, l
    nop
    nop
    adc h
    ldh [$ff8c], a
    ldh [$ff8c], a
    ldh [rP1], a
    nop
    ld a, [hl+]
    call nz, Call_000_2056
    xor d

jr_008_72df:
    sub b
    ccf
    nop
    rra
    nop

jr_008_72e4:
    rrca
    nop
    rlca
    nop

jr_008_72e8:
    inc bc
    nop
    ld bc, $ff00
    nop
    ld a, a
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    cp $00
    db $fc
    nop
    ld a, a
    nop
    rst $38
    nop
    ld bc, $0300
    nop

jr_008_7308:
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    db $fc
    nop
    cp $00
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    inc bc
    ld sp, $0773
    dec a
    ld [hl], e
    add hl, bc

jr_008_7327:
    ld c, c
    ld [hl], e
    inc c
    ld e, d
    ld [hl], e
    rrca
    ld h, c
    ld [hl], e
    nop
    nop
    ld h, b
    nop
    ret nc

    nop
    jr @+$52

    ld bc, $01d0
    ld l, h
    nop
    nop
    stop
    sub b
    nop
    jr @-$4e

    nop
    ld b, b
    ld bc, $006c
    nop
    stop
    add b
    nop
    jr jr_008_72df

    nop
    ldh [rP1], a
    ld l, h
    ld h, b
    ld bc, $01e0
    jr jr_008_7359

jr_008_7359:
    nop
    stop
    add b
    nop
    jr jr_008_7360

jr_008_7360:
    nop
    ld bc, $b000
    nop
    jr jr_008_7327

    nop
    db $10
    ld bc, $206c
    ld bc, $01a0
    jr jr_008_7371

jr_008_7371:
    nop

Call_008_7372:
    ld a, $00
    ld [$ccba], a
    ld a, $00
    ld [$ccbb], a
    ld hl, $7320

jr_008_737f:
    ld a, [hl]
    or a
    ret z

    ld a, [$de8f]
    cp [hl]
    jr z, jr_008_738d

    inc hl
    inc hl
    inc hl
    jr jr_008_737f

jr_008_738d:
    inc hl
    ld de, $ccbd
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $c1
    ld [$ccba], a
    ld a, $73
    ld [$ccbb], a
    ld a, $08
    ld [$ccbc], a
    ret


Call_008_73a7:
    ld a, [$ccbb]
    or a
    jr z, jr_008_73bd

    ld a, [$d70d]
    ldh [$ff8a], a
    ld a, [$d70e]
    ldh [$ff8b], a
    call Call_008_73c1
    ld a, [$cc98]

jr_008_73bd:
    ld [$cc97], a
    ret


Call_008_73c1:
Jump_008_73c1:
    xor a
    ld [$cc98], a
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    bit 7, d
    jr z, jr_008_73d2

    ld d, $00
    ld e, d

jr_008_73d2:
    ld hl, $ccbd
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_73d8:
    ld a, [hl+]
    ld c, a
    or [hl]
    ret z

    ld a, e
    sub c
    ld a, d
    sbc [hl]
    ret c

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_008_73f1

    inc hl
    ld a, [hl]
    ld [$cc98], a
    ret


    inc hl
    inc hl

jr_008_73f1:
    inc hl
    inc hl
    jr jr_008_73d8

Call_008_73f5:
    call Call_008_7372
    ret


Call_008_73f9:
    call Call_008_73a7
    ret


    ld bc, $0774
    ld [hl], h
    ld [$0874], sp
    ld [hl], h
    ld [$ff74], sp
    dec bc
    add h
    ld [hl], h
    dec b
    ld [hl], l
    ld a, [hl+]
    ld [hl], h
    ld sp, $1774
    nop
    ld h, e
    ld d, $74
    ld b, c
    jr nc, @+$76

    ld [hl-], a
    ld [hl], h
    nop
    nop
    nop
    and a
    nop
    ld [bc], a
    ld d, $74
    rst $38
    add b
    ld d, d
    ld [$0070], sp
    nop
    ld a, $ff
    ld [$d74a], a
    ret


    ret


    ret


    ld a, [bc]
    ld [$0c0c], sp
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
    dec e
    ld e, $1f
    ld a, [bc]
    dec bc
    dec e
    ld e, $1f
    ld a, [bc]
    dec bc
    jr nz, jr_008_7486

jr_008_7486:
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $0d0d
    ld c, $0e
    db $10
    ld [de], a
    inc b
    rlca
    dec b
    ld [$0906], sp
    db $10
    ld [de], a
    ld a, [bc]
    inc de
    dec bc
    ld [de], a
    inc c
    inc de
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $4213
    inc d
    ld b, e
    dec d
    ld b, h
    inc a
    ld b, l
    ld d, $16
    rla
    rla
    jr @+$1d

    add hl, de
    inc e
    ld a, [de]
    inc e
    ld a, [de]
    inc e
    dec e
    rra
    ld e, $20
    ld e, $21
    ld e, $21
    ld [hl+], a
    dec h
    inc hl
    ld h, $24
    ld h, $24
    ld h, $27
    add hl, hl
    jr z, jr_008_74ff

    jr z, jr_008_7502

    jr z, jr_008_7504

    inc l
    ld h, $2c
    ld h, $2d
    ld h, $2e
    cpl
    jr z, jr_008_7514

    jr z, jr_008_7516

    jr z, jr_008_7519

    jr nc, jr_008_751c

    inc [hl]
    inc e
    inc [hl]
    inc e
    dec [hl]
    inc e
    ld [hl], $37
    ld e, $39
    ld e, $39
    ld e, $3a
    jr c, jr_008_7534

    db $10
    dec a
    ld de, $123e
    ccf

jr_008_74ff:
    inc de
    ld b, b
    inc de

jr_008_7502:
    ld b, c
    inc de

jr_008_7504:
    ld b, c
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop

jr_008_7514:
    nop
    nop

jr_008_7516:
    nop
    nop
    nop

jr_008_7519:
    nop
    nop
    nop

jr_008_751c:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    add hl, hl
    ld [hl], l
    cpl
    ld [hl], l
    jr nc, jr_008_75a0

    jr nc, jr_008_75a2

    jr nc, jr_008_75a4

    rst $38
    inc de
    add h
    ld [hl], h
    dec b

jr_008_7534:
    ld [hl], l
    ld c, [hl]
    ld [hl], l
    ld d, d
    ld [hl], l
    rlca
    nop
    ld b, e
    ld a, $75
    ld b, c
    ld d, c
    ld [hl], l
    ld d, l
    ld [hl], l
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], b
    add hl, bc
    ld [$0040], sp
    nop
    jp Jump_008_786f


    ret


    jp Jump_008_78a8


    ld a, [bc]
    ld [$0000], sp
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
    dec e
    ld e, $1f
    ld a, [bc]
    dec bc
    dec e
    ld e, $1f
    ld a, [bc]
    dec bc
    nop
    sub [hl]
    add b
    nop
    ld d, $76
    nop
    add b
    sub [hl]
    ld h, b
    nop
    ld d, $77

jr_008_75a0:
    nop
    nop

jr_008_75a2:
    sub [hl]
    add b

jr_008_75a4:
    nop
    sub [hl]
    halt
    nop
    add b
    sub [hl]
    ld h, b
    nop
    halt
    ld [hl], a
    ld bc, $00ff
    sub [hl]
    add b
    nop
    ld d, $76
    ld [$9680], sp
    ld h, b
    nop
    ld d, $77
    ld [$9600], sp
    nop
    nop
    ld d, $76
    ld [$9680], sp
    ld h, b
    nop
    halt
    ld [hl], a
    ld [$00ff], sp
    sub [hl]
    add b
    nop
    ld d, $76
    ld [$9680], sp
    ld h, b
    nop
    ld d, $77
    ld [$9600], sp
    add b
    nop
    sub [hl]
    halt
    ld [$9680], sp
    ld h, b
    nop
    halt
    ld [hl], a
    ld [$00ff], sp
    sub [hl]
    nop
    nop
    ld d, $76
    ld [$9680], sp
    ld h, b
    nop
    ld d, $77
    ld [$9600], sp
    add b
    nop
    sub [hl]
    halt
    ld [$9680], sp
    ld h, b
    nop
    halt
    ld [hl], a
    ld [$80ff], sp
    sub [hl]
    ld h, b
    nop
    ld d, $77
    db $10
    add b
    sub [hl]
    ld h, b
    nop
    halt
    ld [hl], a
    db $10
    rst $38
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
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $f4
    db $f4
    ret z

    res 6, b
    or a
    ld [hl], b
    ld a, a
    jr nz, jr_008_765f

    ldh [$ffe6], a
    ld h, b
    ld h, h
    ldh [$ffee], a
    ld de, $0e11
    xor $0f
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc de
    inc de
    ld de, $0175
    dec a
    ldh a, [$fffc]
    ld a, h
    ld a, a
    sbc a
    sbc a
    rst $28
    rst $28
    sbc a
    sbc a
    rst $28
    rst $28
    rst $30
    rst $30
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_765f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld e, e
    and a
    and a
    rst $08
    rst $08
    ldh a, [$fff0]
    ldh [$ffee], a
    ldh [$ffe9], a
    ret nz

    jp $ab80


    ld bc, $03fd
    ld [hl], e
    add c
    or c
    add [hl]
    and [hl]
    rrca
    rrca
    inc bc
    jp $ef0f


    ld c, $ae
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fd
    cp $fe
    db $fd
    db $fd
    add sp, -$18
    sub b
    sub a
    ld h, b
    ld l, a
    ldh [rIE], a
    ld b, b
    ld c, [hl]
    ldh [$ffe8], a
    ret nz

    call z, $dcc0
    inc hl
    inc hl
    inc e
    call c, $ff1f
    ccf
    rst $38
    ccf
    ccf
    daa
    ld h, a
    inc hl
    db $eb
    inc bc
    ld a, e
    ldh a, [$fffc]
    db $fc
    rst $38
    ccf
    ccf
    rst $18
    rst $18
    ccf
    ccf
    rst $18
    rst $18
    rst $28
    rst $28
    rra
    rra
    cp $fe
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
    ld hl, sp-$05
    ldh a, [$fff7]
    add b
    or a
    ld c, [hl]
    ld c, [hl]
    sbc a
    sbc a
    pop bc
    pop bc
    ldh [$ffe0], a
    ld b, b
    ld e, a
    nop
    sub [hl]
    nop
    ld b, b
    inc bc
    ei
    rlca
    rst $20
    ld bc, $0c61
    ld c, h
    rra
    sbc a
    inc a
    inc a
    ld [hl], c
    ld [hl], c
    ldh [$ffee], a
    rst $18
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ld a, a
    nop
    ld a, c
    ccf
    ld a, a
    nop
    jr c, @+$21

    ld a, $11
    ld a, $11
    ld e, $0f
    rrca
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    nop
    ccf
    rst $38
    ccf
    ldh a, [$ff3f]
    ldh a, [$ff1f]
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret nc

    rst $38
    rst $38
    nop
    ldh [rIE], a
    ei
    db $fc
    ei
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    dec bc
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $ff
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp-$01
    rst $38
    nop
    cp $00
    sbc [hl]
    db $fc
    cp $00
    inc e
    ld hl, sp+$7c
    adc b
    ld a, h
    adc b
    ld a, b
    ldh a, [$fff0]
    nop
    ld a, a
    nop
    ld a, c
    ccf
    ld a, a
    nop
    jr c, @+$21

    inc a
    rlca
    ld a, $07
    ld e, $0f
    rrca
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    nop
    ccf
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rra
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret nc

    rst $38
    rst $38
    nop
    ldh [rIE], a
    ld hl, sp-$79
    ld hl, sp-$79
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    dec bc
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rra
    pop hl
    rra
    pop hl
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $ff
    rst $38
    nop
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [$fff8]
    rst $38
    rst $38
    nop
    cp $00
    sbc [hl]
    db $fc
    cp $00
    inc e
    ld hl, sp+$3c
    ldh [$ff7c], a
    ldh [$ff78], a
    ldh a, [$fff0]
    nop
    rlca
    sbc b
    ld b, $05
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld c, d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld c, e
    ld c, h
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld c, l
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rst $08
    sbc d
    inc b
    dec b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    cp $3d
    ld a, d
    cp $68
    ld a, d
    ld e, $00
    ld e, $10
    cp $77
    ld a, d
    ld a, [bc]
    db $10
    inc a
    nop
    cp $7d
    ld a, d
    cp $82
    ld a, d
    inc a
    nop
    cp $85
    ld a, d
    inc a
    nop
    cp $8b
    ld a, d
    cp $a4
    ld a, d
    ld a, b
    nop
    dec b
    db $10
    inc a
    nop
    cp $ae
    ld a, d
    inc b
    nop
    ld b, $10
    ld e, b
    nop
    ld bc, $0a01
    nop
    ld [bc], a
    ld bc, $0002
    cp $b4
    ld a, d
    ld a, b
    nop
    cp $d1
    ld a, d
    ld e, $00
    cp $da
    ld a, d
    ld e, $00
    cp $db
    ld a, d
    ld a, b
    nop
    cp $fd
    ld a, d
    ld [hl], b
    nop
    cp $00
    ld a, e
    ld e, $00
    cp $0b
    ld a, e
    jr z, jr_008_786e

jr_008_786e:
    nop

Jump_008_786f:
    ld hl, $d142
    ld bc, $000a
    xor a
    call Call_000_0174
    ld a, $01
    ld [$d161], a
    ld de, $7593
    call Call_008_4251
    ld a, $f6
    ld [$d722], a
    ld a, $f6
    ld [$d70d], a
    ld a, $ff
    ld [$d70e], a
    ld a, $01
    ld [$d74c], a
    xor a
    ld [$dece], a
    ld de, $7810
    call Call_008_403e
    ld a, $01
    ld [$d74b], a
    ret


Jump_008_78a8:
    ld a, $60
    ldh [rWY], a
    ld a, [$deaf]
    or a
    jr nz, jr_008_78bd

    call Call_008_4052
    jr c, jr_008_78be

    call Call_008_7985
    call Call_008_78de

jr_008_78bd:
    ret


jr_008_78be:
    rst $28
    ld l, $06
    rst $38
    ld e, b
    ld d, b
    ld c, $04
    call Call_008_4014
    call Call_008_402e
    ld a, $ff
    ld [$de57], a
    ld [$de56], a
    ld a, $ff
    ld [$df80], a
    ld a, $0b
    jp Jump_000_0297


Call_008_78de:
Jump_008_78de:
    ld a, [$d143]
    or a
    jr z, jr_008_7904

    dec a
    ld de, $75b0
    jr z, jr_008_78f3

    ld de, $75cd
    dec a
    jr z, jr_008_78f3

    ld de, $75ea

jr_008_78f3:
    ld hl, $c3e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, l
    ld a, $2c
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    call Call_008_4278

jr_008_7904:
    ld hl, $d148
    call Call_000_01e9
    ld a, [$d149]
    or [hl]
    ld [hl], a
    ret


Call_008_7910:
    ld hl, $9800
    ld bc, $0140
    ld a, $00
    call Call_000_0186
    ld hl, $9980
    ld bc, $01c0
    ld a, $00
    call Call_000_0186
    ld hl, $77d6
    call Call_008_7933
    ld hl, $77f8
    call Call_008_7933
    ret


Call_008_7933:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_008_793b:
    push bc
    push de
    ld b, $00
    call Call_000_0183
    pop de
    push hl
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec b
    jr nz, jr_008_793b

    ret


Call_008_7950:
Jump_008_7950:
    ld [$cf7b], a
    ld a, $d4
    ld [$cf86], a
    ld a, $3c
    ld [$de88], a
    ld a, $02
    ld [$cf7c], a
    xor a
    ld [$cf7d], a
    ld [$cf7e], a
    ld de, $7982
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $08
    call Call_000_02d3
    xor a
    ld [$de88], a
    ret


Call_008_797d:
    ld a, $80
    jp Jump_008_7950


    jp Jump_008_78de


Call_008_7985:
    ld a, [$d145]
    ld b, a
    ld a, $30
    sub b
    add $88
    ld [$d14b], a
    ld a, [$d147]
    ld b, a
    ld a, $50
    sub b
    ld [$d14a], a
    ret


    ld a, [$d14a]
    ldh [rSCX], a
    ld hl, $d148
    bit 2, [hl]
    ld a, [$de96]
    jr z, jr_008_79ad

    ld a, $e7

jr_008_79ad:
    ldh [rBGP], a
    ld a, $25
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    push bc
    ldh a, [rLYC]
    ld b, a
    ld a, $25
    cp b
    jr z, jr_008_79c7

    ld a, $4d
    cp b
    jr z, jr_008_79f6

jr_008_79c7:
    push de
    ld e, $00
    ld a, [$d14b]
    ld d, a
    ld a, [$de96]
    ld c, a
    ld a, $27
    ld b, a

jr_008_79d5:
    ldh a, [rLY]
    cp b
    jr c, jr_008_79d5

jr_008_79da:
    ldh a, [rSTAT]
    and $03
    jr z, jr_008_79da

jr_008_79e0:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_008_79e0

    ld a, e
    ldh [rSCX], a
    ld a, d
    ldh [rSCY], a
    ld a, c
    ldh [rBGP], a
    ld a, $4d
    ldh [rLYC], a
    pop de
    jr jr_008_7a13

jr_008_79f6:
    ld a, $4f
    ld b, a

jr_008_79f9:
    ldh a, [rLY]
    cp b
    jr c, jr_008_79f9

jr_008_79fe:
    ldh a, [rSTAT]
    and $03
    jr z, jr_008_79fe

jr_008_7a04:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_008_7a04

    ld a, [$d7d2]
    ldh [rSCY], a
    xor a
    ld [$de2c], a

jr_008_7a13:
    pop bc
    ret


Call_008_7a15:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $08
    dec hl
    ld [hl], $79
    dec hl
    ld [hl], $9c
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $08
    dec hl
    ld [hl], $79
    dec hl
    ld [hl], $b9
    dec hl
    ld [hl], $c3
    ret


    call Call_008_7910
    call Call_008_797d
    xor a
    ld [$de42], a
    ld a, $01
    ld [$de29], a
    ld a, $30
    ld [$d145], a
    ld a, $50
    ld [$d147], a
    call Call_008_7985
    xor a
    ld [$d14a], a
    ld a, $01
    ld [$d143], a
    call Call_008_7a15
    rst $08
    ld hl, $f0c9
    ld b, a
    cp $1b
    jp nz, Jump_008_40b9

    ld a, $01
    ld [$de8a], a
    rst $28
    ld d, $c9
    ld a, $06
    call Call_008_400d
    ret


    ld a, $38
    jp Jump_008_7950


    rst $08
    ld a, d
    ret


    ld a, $02
    ld [$d143], a
    ret


    ld hl, $d144
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    cp $60
    ret nc

    ld de, $0020
    add hl, de
    ld a, l
    ld [$d144], a
    ld a, h
    ld [$d145], a
    jp Jump_008_40b9


    ld a, $39
    call Call_008_7950
    ld a, $00
    jp Jump_008_7950


    ld a, $01
    ld [$d140], a
    ret


    ld a, [$d141]
    cp $01
    jp nz, Jump_008_40b9

    xor a
    ld [$d141], a
    ld a, $03
    ld [$d143], a
    ld a, $80
    ld [$d149], a
    rst $08
    nop
    rst $08
    ld d, $ef
    ld [hl-], a
    ret


    call Call_000_01c5
    ld a, $3a
    call Call_008_7950
    ret


    ret


    ld hl, $d146
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    cp $c0
    jr nc, jr_008_7af5

    ld de, $0080
    add hl, de
    ld a, l
    ld [$d146], a
    ld a, h
    ld [$d147], a
    jp Jump_008_40b9


jr_008_7af5:
    xor a
    ld [$d149], a
    ld [$d143], a
    ret


    rst $08
    ld a, d
    ret


    ld a, $3b
    call Call_008_7950
    ld a, $01
    call Call_008_400d
    ret


    rst $08
    ld a, h
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
