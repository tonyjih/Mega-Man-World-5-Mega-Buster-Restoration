; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld h, e
    ld b, e
    dec sp
    ld e, a
    adc b
    ld l, b
    jp Jump_005_5eda


    inc b
    ld l, [hl]
    ld sp, hl
    ld [hl], e

Call_005_400d:
    ld [$db0b], a
    ld [$db0c], a
    ret


Call_005_4014:
    ld a, d
    ld [$d725], a
    ld a, e
    ld [$d722], a
    ld a, [$d711]
    add e
    ld [$d70d], a
    ld a, [$d712]
    adc $00
    ld [$d70e], a
    ret


Call_005_402c:
    ld hl, $c000
    ld de, $0004
    ld a, $0a

jr_005_4034:
    ld [hl], $a0
    add hl, de
    dec a
    jr nz, jr_005_4034

    ret


Call_005_403b:
Jump_005_403b:
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


Call_005_4055:
jr_005_4055:
    ld a, [$cca8]
    and $07
    jr nz, jr_005_4055

jr_005_405c:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_005_405c

    ret


Call_005_4065:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_005_4079:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_005_408c

    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_005_4092

    dec [hl]

jr_005_408c:
    ld a, [$d773]
    ld d, a
    jr jr_005_40d3

jr_005_4092:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_005_4098:
    ld a, [hl+]
    or a
    jr nz, jr_005_40a3

    ld d, $00
    call Call_005_40d3
    scf
    ret


jr_005_40a3:
    cp $fe
    jr nz, jr_005_40c5

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $d778
    res 0, [hl]
    push hl
    call Call_005_42a3
    pop hl
    bit 0, [hl]
    pop hl
    jr nz, jr_005_408c

    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a
    jr jr_005_4098

jr_005_40c5:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_005_40d3:
jr_005_40d3:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Jump_005_40e0:
    ld hl, $d778
    set 0, [hl]
    ret


Call_005_40e6:
Jump_005_40e6:
    inc hl
    ld a, $fe
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_005_40ed:
    xor a
    ldh [$ff8a], a
    ldh [$ff8b], a
    ldh [$ff8d], a
    ld a, [hl+]
    ldh [$ff8c], a
    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr c, jr_005_410c

    dec hl
    ld b, [hl]
    jr jr_005_415a

jr_005_410c:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_005_4115:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_005_413b

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
    call Call_005_42a3
    pop bc
    pop hl

jr_005_4133:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_005_4115

jr_005_413b:
    cp $fe
    jr c, jr_005_4153

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_005_4149

    ld [hl], $00
    jr jr_005_4133

jr_005_4149:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_005_415b

jr_005_4153:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_005_415a:
    or a

jr_005_415b:
    ld [hl], b
    ret


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_005_4165:
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
    jr nz, jr_005_4165

    ret


Call_005_417a:
    ld a, [$d163]
    or a
    jr z, jr_005_418d

    ld a, [$d725]
    ld [$cc9a], a
    ld a, $01
    ld [$cc9b], a
    jr jr_005_41b5

jr_005_418d:
    ld a, [$cc9b]
    or a
    jr z, jr_005_41ae

    ld a, [$d74b]
    or a
    jr nz, jr_005_41ae

    ld hl, $cc9a
    ld a, [$d725]
    cp [hl]
    jr c, jr_005_41ae

    sub $04
    cp [hl]
    jr nc, jr_005_41ae

    ld a, $01
    ld [$cc99], a
    jr jr_005_41b5

jr_005_41ae:
    xor a
    ld [$cc99], a
    ld [$cc9b], a

jr_005_41b5:
    ret


Call_005_41b6:
    ld hl, $d722
    ld a, [hl]
    add e
    cp $09
    jr c, jr_005_41d4

    cp $97
    jr nc, jr_005_41d4

    ld [hl], a
    ld d, $00
    bit 7, e
    jr z, jr_005_41cb

    dec d

jr_005_41cb:
    ld hl, $d70d
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a

jr_005_41d4:
    ret


Call_005_41d5:
    ld hl, $d29b
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_005_41e1:
    ld hl, $d834
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_005_41ed:
    ld hl, $d838
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_005_41f9:
    ldh [$ff8a], a
    xor a
    ld [$d8ab], a
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld a, l
    ld hl, $d711
    sub [hl]
    ld e, a
    ld a, [$d7d1]
    add e
    ld e, a
    ld a, d
    add a
    add a
    add a
    add a
    ld d, a
    ld a, [$d7d2]
    add d
    ld d, a
    push de
    call Call_005_4288
    pop de
    ldh a, [$ff8a]
    ld [hl], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$d890]
    ld c, a
    ld a, [$d891]
    ld b, a
    add hl, bc
    ld a, [hl+]
    ld [$d8a7], a
    ld a, [hl+]
    ld [$d8a9], a
    ld a, [hl+]
    ld [$d8a8], a
    ld a, [hl+]
    ld [$d8aa], a
    call Call_005_4271
    res 0, l
    ld e, l
    ld d, h
    push de
    ld bc, $0002
    ld hl, $d8a7
    call Call_000_0183
    pop de
    push hl
    ld hl, $0020
    add hl, de
    ld a, h
    and $03
    or $98
    ld d, a
    ld e, l
    pop hl
    ld bc, $0002
    ld hl, $d8a9
    call Call_000_0183
    ld a, $01
    ld [$d8ab], a
    ret


Call_005_4271:
    ld a, e
    srl a
    srl a
    srl a
    ld e, a
    ld h, $00
    ld l, d
    add hl, hl
    add hl, hl
    ld a, l
    and $e0
    add e
    ld l, a
    ld de, $9800
    add hl, de
    ret


Call_005_4288:
    ld a, e
    swap a
    and $0f
    ld e, a
    ld a, d
    and $f0
    or e
    ld l, a
    ld h, $c1
    ret


Call_005_4296:
    ld b, $00

jr_005_4298:
    ld a, [hl]
    cp d
    ret z

    cp e
    jr z, jr_005_42a1

    add hl, bc
    jr jr_005_4298

jr_005_42a1:
    scf
    ret


Call_005_42a3:
    push de
    ret


Call_005_42a5:
Jump_005_42a5:
    ld hl, $cc00
    call Call_005_42b2
    ld hl, $c3e5
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_005_42b2:
    push hl
    call Call_005_42e1
    pop hl
    ld c, l
    jp Jump_005_430a


Call_005_42bb:
    ld a, [$de8f]
    ld b, a

jr_005_42bf:
    ld a, [hl+]
    or a
    jr z, jr_005_42c8

    cp b
    jr nz, jr_005_42bf

    ld a, $01

jr_005_42c8:
    ld [$d161], a
    ret


Call_005_42cc:
    ld a, [$d161]
    or a
    ret z

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    or c
    jr nz, jr_005_42f9

    push de
    call Call_000_0219
    pop de

Call_005_42e1:
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

jr_005_42f9:
    ld a, [$deaf]
    and $ff
    jp nz, Jump_005_435f

    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_005_435f

Jump_005_430a:
jr_005_430a:
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
    jr z, jr_005_4361

    cp $ff
    jr nz, jr_005_4332

    ld [hl], $00
    jr jr_005_430a

jr_005_4332:
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
    jr z, jr_005_430a

Jump_005_435f:
jr_005_435f:
    xor a
    ret


jr_005_4361:
    scf
    ret


    ld h, a
    ld b, e
    ld l, l
    ld b, e
    ld [hl], d
    ld b, e
    add b
    ld b, e
    adc [hl]
    ld b, e
    ld d, $09
    ld [de], a
    ld bc, $00ff
    add c
    ld d, b
    ld a, d
    ld d, d
    ldh a, [c]
    ld b, l
    pop hl
    ld b, [hl]
    ld b, b
    nop
    ld h, e
    sbc h
    ld b, e
    nop
    add c
    ld d, b
    ld a, d
    ld d, d
    ldh a, [c]
    ld b, l
    pop hl
    ld b, [hl]
    ld b, a
    nop
    ld d, e
    xor b
    ld b, l
    nop
    add c
    ld d, b
    ld a, d
    ld d, d
    ld hl, sp+$45
    pop hl
    ld b, [hl]
    scf
    nop
    inc sp
    ld e, d
    ld b, l
    ld bc, $46c5
    db $eb
    ld b, [hl]
    nop
    nop
    daa
    ld de, $b202
    ld b, e
    nop
    ld a, [hl+]
    db $10
    jr nz, jr_005_43ad

jr_005_43ad:
    ld [bc], a
    db $10
    ld h, b
    ld a, [bc]
    nop
    add d
    push bc
    ld b, [hl]
    adc l
    ld b, a
    and b
    nop
    ld [hl+], a
    nop
    inc bc
    add h
    ld b, l
    daa
    ld bc, $de02
    ld b, e
    jr c, jr_005_43c9

    ld h, b
    nop
    nop
    add d

jr_005_43c9:
    add l
    ld b, [hl]
    adc l
    ld b, a
    and b
    nop
    ld [hl+], a
    nop
    inc bc
    add h
    ld b, l
    daa
    ld bc, $de02
    ld b, e
    jr c, jr_005_43df

    ld h, b
    nop
    nop
    inc bc

jr_005_43df:
    push bc
    ld b, [hl]
    rst $18
    ld b, a
    and b
    nop
    nop
    scf
    inc bc
    ld [bc], a
    db $f4
    ld b, e
    ld [bc], a
    ld b, $20
    inc b
    jr z, jr_005_43f7

    ld d, b
    nop
    nop

Jump_005_43f4:
    inc b
    ret nz

    ld b, [hl]

jr_005_43f7:
    ld sp, $a048
    nop
    nop
    and a
    nop
    ld [bc], a
    sub [hl]
    ld b, l
    ld c, d
    nop
    nop
    nop
    nop
    dec b
    cp c
    ld b, [hl]
    add e
    ld c, b
    ld b, b
    ld bc, $1000
    ld [de], a
    add b
    jr nz, @+$46

    ld [bc], a
    rlca
    db $10
    ld a, [bc]
    add hl, de
    db $10
    ld d, b
    nop
    ld [bc], a
    ld [de], a
    ld b, b
    ld [bc], a
    nop
    ld b, $c5
    ld b, [hl]
    dec h
    ld c, c
    ldh [rSB], a
    rla
    ld [$0602], sp
    ld b, h
    db $10
    inc bc
    add b
    ld [hl], $44
    jr z, jr_005_4435

    jr nz, jr_005_4435

jr_005_4435:
    nop
    rlca
    push bc
    ld b, [hl]
    ld [hl], a
    ld c, c
    ldh [rSB], a
    rla
    inc bc
    ld [bc], a
    jr nz, jr_005_4486

    db $10
    ld b, $80
    ld c, h
    ld b, h
    ld d, $07
    ld b, b
    nop
    nop
    ld [$46c5], sp
    ret


    ld c, c
    ldh [rSB], a
    rla
    ld b, $02
    ld [hl], $44
    db $10
    ld bc, $6280
    ld b, h
    ld b, $01
    ld d, b
    nop
    nop
    add hl, bc
    push bc
    ld b, [hl]
    dec de
    ld c, d
    ldh [rSB], a
    rla
    ld bc, $4c02
    ld b, h
    ld [hl-], a
    dec e
    ld bc, $4488
    ld [bc], a
    ld bc, $0a20
    ld [bc], a
    ld [bc], a
    jr nz, jr_005_4486

    jr c, @+$09

    ld h, b
    nop
    ld d, $15
    stop
    jr z, jr_005_44a0

    ld h, b

jr_005_4486:
    nop
    nop
    adc d
    cp c
    ld b, [hl]
    dec c
    ld c, e
    ret nz

    inc bc
    ld hl, $0109
    cp d
    ld b, l
    rla
    ld [$a802], sp
    ld b, l
    jr c, jr_005_44a1

    ld d, b
    nop
    nop
    adc d
    sbc d

jr_005_44a0:
    ld b, [hl]

jr_005_44a1:
    dec c
    ld c, e
    ret nz

    inc bc
    ld hl, $0109
    cp d
    ld b, l
    rla
    ld [$a802], sp
    ld b, l
    jr c, jr_005_44b7

    ld d, b
    nop
    nop
    dec bc
    cp c
    ld b, [hl]

jr_005_44b7:
    ld e, a
    ld c, e
    ld h, b
    inc b
    nop
    inc hl
    dec e
    ld bc, $44d6
    ld d, $02
    stop
    ld d, $08
    jr nc, jr_005_44c9

jr_005_44c9:
    jr z, jr_005_44d8

    ld d, b
    nop
    ld [bc], a
    inc de
    ld d, b
    ld bc, $1402
    ld d, b
    ld a, [bc]
    nop
    inc c
    cp c

jr_005_44d8:
    ld b, [hl]
    ld d, c
    ld c, h
    ld b, b
    ld b, $00
    dec d
    add hl, bc
    ld bc, $44e8
    add hl, de
    rlca
    ld d, b
    nop
    nop
    dec c
    cp c
    ld b, [hl]
    and e
    ld c, h
    ldh [rTMA], a
    nop
    rla
    inc b
    ld [bc], a
    call z, $0245
    ld bc, $0620
    jr c, jr_005_4501

    ld h, b
    nop
    nop
    ld c, $c0
    ld b, [hl]

jr_005_4501:
    ld sp, $e048
    ld b, $00
    and a
    nop
    ld [bc], a
    db $10
    ld b, l
    ld c, d
    nop
    nop
    ld bc, $0f00
    push bc
    ld b, [hl]
    push af
    ld c, h
    ldh [rTMA], a
    nop
    ld [hl-], a
    add hl, bc
    ld bc, $4522
    inc sp
    ld [$0040], sp
    nop
    db $10
    cp c
    ld b, [hl]
    ld b, a
    ld c, l
    add b
    rlca
    nop
    db $10
    db $10
    add b
    ld b, b
    ld b, l
    ld d, $08
    jr nz, jr_005_4533

jr_005_4533:
    ld [bc], a
    add hl, bc
    ld d, b
    ld a, [bc]
    ld d, $0d
    jr nz, jr_005_453b

jr_005_453b:
    ld [bc], a
    ld de, $0230
    nop
    ld de, $4609
    jp hl


    ld c, l
    jr nz, jr_005_454f

    rla
    ld b, $02
    ld [hl+], a
    ld b, l
    ld sp, $0108

jr_005_454f:
    ld e, d
    ld b, l
    ld a, [hl+]
    ld [bc], a
    ld h, b
    nop
    ld a, [hl+]
    rlca
    jr nc, jr_005_4559

jr_005_4559:
    nop
    ld [de], a
    dec e
    ld b, [hl]
    dec sp
    ld c, [hl]
    ret nz

    ld [$3100], sp
    ld [$7601], sp
    ld b, l
    nop
    ld [de], a
    dec de
    ld b, [hl]
    dec sp
    ld c, [hl]
    ret nz

    ld [$3100], sp
    ld [$7601], sp
    ld b, l
    nop
    db $d3
    inc [hl]
    ld b, [hl]
    adc l
    ld c, [hl]
    ld h, b
    add hl, bc
    nop
    nop
    ld b, b
    ld [$0030], sp
    nop
    inc d
    ld h, e
    ld b, [hl]
    rst $20
    ld c, [hl]
    nop
    nop
    ld [hl+], a
    add hl, bc
    ld bc, $43c8
    nop
    ld [bc], a
    ld bc, $0650
    nop
    dec d
    push bc
    ld b, [hl]
    add hl, sp
    ld c, a
    and b
    nop
    nop
    ld [hl-], a
    add hl, bc
    ld bc, $4406
    inc sp
    ld [$0040], sp
    nop
    ld d, $c5
    ld b, [hl]
    adc e
    ld c, a
    ret nz

    inc bc
    nop
    dec h
    add hl, bc
    ld bc, $44b4
    ld [bc], a
    ld bc, $0220
    nop
    rla
    ld [hl], h
    ld b, [hl]
    db $dd
    ld c, a
    ld h, b
    inc b
    nop
    ld hl, $0300
    sbc [hl]
    ld b, h
    ld [bc], a
    ld [$0f60], sp
    nop
    jr @-$39

    ld b, [hl]
    cpl
    ld d, b
    ldh [rTMA], a
    nop
    daa
    inc b
    ld [bc], a
    cp $44
    nop
    inc bc
    add hl, bc
    ld bc, $4050
    ld b, b
    inc bc
    nop
    ld bc, $0303
    inc bc
    inc bc
    add hl, bc
    ld bc, $4050
    ld b, b
    inc bc
    nop
    ld bc, $0303
    inc bc
    ld de, $5307
    jp Jump_005_42a5


    ld de, $5307
    call Call_005_42a5
    ld a, $e0
    ld [$d85c], a
    ld a, $45
    ld [$d85d], a
    ret


    ld a, $da
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jp Jump_005_46d7


    jr jr_005_4627

    ld a, $e0
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a

jr_005_4627:
    ld a, $e6
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    jp Jump_005_46d7


    ld a, $ec
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a
    ld a, $40
    ld [$d768], a
    ld a, $fb
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
    jr jr_005_46d7

    ld a, $fe
    ld [$d820], a
    ld a, $b0
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    jr jr_005_46d7

    ld a, $02
    ld [$d820], a
    ld a, $50
    ld [$d821], a
    ld a, $00
    ld [$d822], a
    jr jr_005_46d7

    ld hl, $46c7
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    ld a, $50
    ld [$d821], a
    jr jr_005_46d7

    ld hl, $46cf
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    ld a, $fe
    ld [$d820], a
    ld a, $b0
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    jr jr_005_46d7

    ld a, $40
    ld [$d821], a
    jr jr_005_46d7

    ld a, $90
    call Call_000_020a
    jr jr_005_46d7

    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    inc e
    ld a, [de]
    ld a, [de]
    ld [$0201], sp
    ld [bc], a
    inc e
    inc e
    ld a, [de]
    ld a, [de]

Jump_005_46d7:
jr_005_46d7:
    call Call_005_5616
    ld hl, $52f8
    call Call_005_42bb
    ret


    ld de, $531d
    call Call_005_42cc
    call Call_005_562d
    ret


    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld c, $0a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    ld c, $00
    nop
    ld c, $0a
    dec bc
    inc c
    nop
    nop
    ld c, $00
    nop
    ld c, $00
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    ld c, $0e
    dec c
    ld c, $00
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    ld c, $0a
    dec c
    nop
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    nop
    ld c, $0a
    nop
    ld e, d
    ld c, $00
    ld [de], a
    ld d, $14
    ld a, [de]
    dec e
    inc d
    nop
    dec bc
    ld a, [bc]
    ld c, $00
    nop
    ld c, $00
    nop
    ld e, d
    nop
    nop
    nop
    nop
    inc de
    rla
    dec d
    ld a, [de]
    dec e
    add hl, de
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
    ld c, $0b
    ld a, [bc]
    nop
    db $10
    ld de, $1a1c
    dec e
    dec d
    ld [de], a
    inc d
    ld [de], a
    ld d, $14
    ld [de], a
    inc d
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    ld [de], a
    inc d
    ld a, [de]
    ld a, [de]
    dec e
    rrca
    inc de
    dec d
    inc de
    rla
    dec d
    inc de
    dec d
    db $10
    ld de, $1110
    rrca
    db $10
    ld de, $1513
    ld [de], a
    ld a, [de]
    dec e
    inc d
    ld a, [bc]
    ld [$1412], sp
    db $10
    ld de, $1110
    inc de
    ld a, [de]
    dec e
    add hl, de
    inc de
    dec d
    ld hl, $1c1c
    inc e
    ld e, $1a
    dec e
    dec d
    ld e, [hl]
    ld e, [hl]
    jr nz, jr_005_47c1

    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    add hl, de
    ld e, a
    ld e, a
    jr nz, jr_005_47cb

    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    dec d
    db $10
    ld de, $5959
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    inc d

jr_005_47c1:
    ld [de], a
    inc e
    jr nz, jr_005_47df

    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    add hl, de

jr_005_47cb:
    jr jr_005_47e7

    jr nz, jr_005_47e9

    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    dec d
    inc de
    ld a, [de]
    jr nz, jr_005_47eb

    inc d
    ld [de], a
    ld d, $14
    ld [de], a
    inc d

jr_005_47df:
    ld a, [bc]
    ld [$1a0f], sp
    jr nz, @+$15

    dec d
    inc de

jr_005_47e7:
    rla
    dec d

jr_005_47e9:
    inc de
    dec d

jr_005_47eb:
    ld [de], a
    ld a, [de]
    jr nz, jr_005_480b

    inc e
    ld e, $1c
    inc e
    ld e, $14
    inc de
    ld a, [de]
    jr nz, @+$1c

    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    dec e
    dec d
    rrca
    ld a, [de]
    jr nz, jr_005_481d

    ld a, [de]
    dec e
    db $10
    ld de, $0f02
    ld [de], a
    ld a, [de]

jr_005_480b:
    ld e, d
    ld e, d
    ld a, [de]
    dec e
    inc e
    inc e
    ld bc, $1814
    ld a, [de]
    ld hl, $1a1c
    dec e
    ld a, [de]
    ld a, [de]
    ld e, $15

jr_005_481d:
    inc de
    ld a, [de]
    jr nz, jr_005_483b

    ld a, [de]
    dec e
    ld [de], a
    ld d, $16
    inc d
    db $10
    ld de, $1b0f
    dec de
    dec e
    inc de
    rla
    rla
    dec d
    ld a, [bc]
    ld [$7640], sp
    halt
    halt
    halt
    halt
    ld a, b
    ld h, b

jr_005_483b:
    ld h, c
    ld h, d
    ld b, b
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    ld a, d
    ld a, e
    ld h, l
    ld c, l
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld h, [hl]
    ld a, h
    ld l, b
    ld b, b
    ld b, b
    ld b, c
    ld b, a
    ld b, h
    ld c, h
    ld a, b
    ld l, c
    ld l, d
    ld l, e
    ld c, h
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld a, b
    ld l, h
    ld l, l
    ld l, [hl]
    ld b, b
    dec sp
    ld b, [hl]
    dec sp
    ld b, [hl]
    dec sp
    ld a, b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0814], sp
    ld l, $2f
    cpl
    cpl
    jr nc, jr_005_4904

    ld a, c
    ld a, c
    jr z, jr_005_48cc

    ld a, $2d
    dec hl
    dec l
    inc a
    dec a
    ld a, $29
    ld bc, $5025
    ld b, l
    nop
    nop
    nop
    nop
    nop
    ld b, b
    jr z, jr_005_48ce

    add hl, hl
    ld d, c
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    ld b, l
    ld bc, $4026
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    jr z, jr_005_48e3

    inc a
    add hl, hl
    ld b, [hl]
    dec sp
    ld c, h
    ld c, [hl]
    ld b, b
    dec sp
    ld c, [hl]
    ld bc, $4c23
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld d, b

jr_005_48cc:
    ld b, c
    ld b, a

jr_005_48ce:
    ld b, h
    ld c, [hl]
    ld b, b
    ld c, l
    ld c, [hl]
    ld d, b
    dec h
    ld b, b
    ld c, [hl]
    nop
    nop
    nop
    ld e, d
    ld e, d
    nop
    jr z, jr_005_491b

    add hl, hl
    ld b, [hl]
    ld c, h
    ld b, [hl]

jr_005_48e3:
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld h, $3e
    add hl, hl
    nop
    ld e, d
    nop
    nop
    nop
    nop
    jr z, jr_005_4930

    ld a, $3c
    add hl, hl
    ld b, [hl]
    ld c, [hl]
    ld c, h
    ld b, b
    ld c, [hl]
    jr z, jr_005_4929

    dec hl
    add hl, hl
    nop
    nop
    nop
    nop
    nop

jr_005_4904:
    nop
    ld a, [hl+]
    dec [hl]
    ld [hl], $37
    add hl, hl
    ld b, [hl]
    ld c, [hl]
    jr z, jr_005_494a

    add hl, hl
    dec [hl]
    ld [hl], $3c
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_005_4944

jr_005_491b:
    dec [hl]
    ld [hl], $37
    dec a
    ld a, $3c
    add hl, hl
    add hl, sp
    ccf
    jr c, jr_005_4930

    ld [$3635], sp

jr_005_4929:
    add hl, hl
    ld bc, $2d28
    dec l
    inc a
    dec a

jr_005_4930:
    ld a, $29
    ld d, b
    ld d, c
    ld bc, $5045
    ld d, c
    ld d, b
    ld b, l
    jr z, jr_005_4965

    ld b, b
    ld b, [hl]
    ld d, b
    ld c, [hl]
    ld b, b
    ld b, c
    ld b, h
    ld c, [hl]

jr_005_4944:
    jr z, jr_005_4983

    ld a, $29
    ld c, d
    ld c, a

jr_005_494a:
    ld c, d
    ld c, d
    ld c, d
    ld c, a
    jr z, jr_005_4950

jr_005_4950:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$2b

    nop

jr_005_4965:
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    jr z, @+$2b

    ld [$0808], sp
    ld [$0808], sp
    ld a, [hl+]
    ld [bc], a
    jr z, jr_005_4982

    ld [$293c], sp
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld bc, $2879

jr_005_4982:
    dec l

jr_005_4983:
    add hl, hl
    ld [$4c40], sp
    ld c, [hl]
    ld b, b
    ld bc, $4540
    jr z, jr_005_49b7

    ld [$4a4a], sp
    ld c, a
    ld c, d
    nop
    ld c, d
    ld c, a
    jr z, jr_005_4998

jr_005_4998:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0028], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop

jr_005_49b7:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3d28], sp
    ld a, $29
    ld [bc], a
    ld a, [hl+]
    ld [$0808], sp
    ld [$0a28], sp
    ld [$0129], sp
    jr z, @+$2f

    inc a
    dec l
    dec l
    inc a
    inc l
    dec l
    dec h
    ld bc, $4550
    ld d, b
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    dec h
    ld h, $50
    ld b, b
    ld c, [hl]
    ld b, b
    ld c, h
    ld b, b
    ld c, [hl]
    ld b, b
    ld h, $29
    ld a, c
    ld a, c
    ld a, c
    jr z, jr_005_4a2b

    inc l
    add hl, hl
    ld [bc], a
    jr z, @+$27

    ld c, h
    ld b, b
    ld c, [hl]
    ld d, b
    ld d, b
    ld d, b
    ld b, l
    ld bc, $2624
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, h
    ld c, [hl]
    ld d, b
    dec h
    inc a
    dec a
    ld a, $29
    ld c, l
    ld b, b
    ld b, b
    ld c, [hl]
    ld c, h
    ld h, $35
    dec [hl]
    ld [hl], $3d
    ld a, $29
    ld [bc], a
    jr z, jr_005_4a56

    dec l
    ld e, $08
    inc a
    dec l
    dec l
    dec a
    ld a, $2c
    inc a
    add hl, hl
    ld l, $2f
    cpl
    cpl
    jr nc, jr_005_4a53

jr_005_4a2b:
    dec l
    inc l
    inc a
    dec hl
    add hl, hl
    ld e, e
    ld e, b
    ld a, [hl-]
    ld e, b
    ld d, e
    jr z, jr_005_4a64

    dec a
    ld a, $3c
    add hl, hl
    dec h
    ld d, b
    ld d, b
    ld d, b
    ld [$5108], sp
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, b
    ld d, b
    nop

jr_005_4a53:
    nop
    nop
    nop

jr_005_4a56:
    ld d, b
    jr z, jr_005_4a86

    ld h, $4d
    dec sp
    ld b, b
    ld b, l
    ld d, b
    ld b, [hl]
    dec sp
    ld b, b
    ld c, [hl]
    ld b, b

jr_005_4a64:
    dec sp
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld b, c
    ld b, a
    ld b, h
    nop
    nop
    nop
    nop
    ld b, b
    ld b, l
    ld d, b
    dec l
    dec a
    ld a, $2d
    inc l
    dec a
    ld a, $29
    ld c, h
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, h
    nop
    nop

jr_005_4a86:
    nop
    nop
    nop
    nop
    ld b, b
    ld b, [hl]
    ld c, h
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld b, b
    ld c, [hl]
    ld b, b
    dec h
    ld d, b
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, c
    ld d, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld c, h
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    jr z, jr_005_4ad8

    add hl, hl
    nop
    nop
    nop
    nop
    ld c, h
    ld c, [hl]
    ld b, b
    ld h, $4c
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, c
    ld b, a
    ld b, h
    ld c, [hl]
    ld c, d
    ld c, d
    ld c, d
    nop
    ld e, d
    ld e, d
    ld e, d
    nop
    nop
    jr z, jr_005_4b05

    ld a, $29
    nop
    nop
    nop
    nop
    ld c, d
    ld c, a
    jr z, jr_005_4af6

    ld b, b
    ld c, l
    ld b, b
    ld c, [hl]
    ld c, h
    ld b, [hl]

jr_005_4ad8:
    ld b, b
    ld b, [hl]
    ld c, [hl]
    jr z, jr_005_4b19

    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    add hl, sp
    jr c, @+$2c

    nop
    nop
    nop
    nop
    jr z, @+$2f

    inc a
    add hl, hl
    ld [bc], a
    jr z, jr_005_4b30

    ld a, $2d
    dec l

jr_005_4af6:
    dec hl
    inc a
    inc l
    dec a
    ld a, $29
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_005_4b31

    inc a

jr_005_4b05:
    add hl, hl
    nop
    jr z, jr_005_4b32

    nop
    ld a, [hl+]
    dec [hl]
    ld [hl], $0a
    ld [$3529], sp
    ld [hl], $37
    add hl, hl
    db $10
    ld de, $1110
    rrca

jr_005_4b19:
    dec a
    ld a, $29
    nop
    nop
    ld hl, $1c1c
    ld e, [hl]
    ld e, [hl]
    ld d, b
    ld d, b
    ld b, l
    nop
    nop
    jr nz, jr_005_4b44

    ld a, [de]
    ld e, a
    ld e, a
    ld b, b
    ld c, h
    ld c, [hl]

jr_005_4b30:
    nop

jr_005_4b31:
    nop

jr_005_4b32:
    jr nz, @+$5b

    ld e, c
    db $10
    ld de, $404c
    ld c, [hl]
    nop
    nop
    jr nz, jr_005_4b58

    ld a, [de]
    ld e, $14
    dec a
    ld a, $29

jr_005_4b44:
    nop
    nop
    jr nz, jr_005_4b62

    ld a, [de]
    dec e
    dec d
    dec l
    dec hl
    add hl, hl
    ld [de], a
    inc d
    db $10
    ld de, $1d0f
    inc d
    inc a
    inc l
    add hl, hl

jr_005_4b58:
    inc de
    dec d
    ld [de], a
    ld d, $14
    dec e
    dec d
    ld e, $08
    ld [de], a

jr_005_4b62:
    nop
    nop
    nop
    nop
    nop
    ld c, $0a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld c, $00
    db $10
    jr jr_005_4b81

jr_005_4b81:
    dec bc
    inc c
    nop
    nop
    ld c, $00
    nop
    nop
    ld c, $0b
    ld a, [bc]
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    dec bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    nop
    nop
    ld c, $00
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [de], a
    db $10
    ld de, $0000
    ld c, $0d
    ld c, $00
    ld a, [bc]
    dec bc
    ld c, $13
    ld [de], a
    nop
    nop
    nop
    ld c, $0d
    dec bc
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    ld bc, $1418
    db $10
    ld de, $0000
    ld c, $00
    nop
    nop
    ld c, $00
    ld e, $13
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    dec bc
    inc c
    nop
    nop
    ld c, $0d
    nop
    nop
    ld bc, $1913
    dec bc
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    dec bc
    ld a, [bc]
    ld c, $00
    nop
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld c, $12
    dec d
    nop
    nop
    nop
    nop
    dec bc
    inc c
    ld c, $00
    nop
    db $10
    ld de, $0000
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    ld [de], a
    inc d
    nop
    ld [de], a
    inc d
    nop
    nop
    nop
    jr jr_005_4c3e

    db $10
    ld de, $0000
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    nop
    ld [de], a
    ld d, $10
    ld de, $1110
    nop
    nop
    nop
    nop
    nop
    inc de
    dec d

jr_005_4c3e:
    nop
    inc de
    dec d
    nop
    nop
    nop
    inc de
    rla
    dec d
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    rla
    ld a, [bc]
    ld [$1011], sp
    ld de, $585b
    ld d, e
    ld e, e
    ld e, b
    ld d, e
    ld sp, $1c14
    inc e
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld d, b
    ld sp, $1a15
    ld a, [de]
    nop
    nop
    nop
    ld c, h
    ld b, b
    ld b, b
    ld sp, $1a1c
    ld a, [de]
    nop
    nop
    nop
    ld b, b
    dec sp
    ld b, b
    ld sp, $1b1b
    dec de
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld c, h
    ld l, $10
    ld de, $000f
    nop
    nop
    ld b, b
    ld c, l
    ld b, b
    ld d, b
    inc d
    db $10
    ld de, $5a00
    nop
    jr z, jr_005_4cc4

    inc a
    dec l
    dec d
    ld [de], a
    inc d
    nop
    nop
    nop
    ld a, [hl+]
    dec [hl]
    ld [hl], $3c
    ld a, [bc]
    ld [$2832], sp
    inc a
    inc l
    add hl, hl
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    jr z, jr_005_4ce2

    ld a, c
    ld a, c
    ld [$4079], sp
    ld b, b
    ld c, [hl]
    ld b, b
    dec h
    ld [hl-], a
    ld b, b
    ld c, h
    ld d, b
    ld c, [hl]
    ld b, b
    dec sp
    ld c, [hl]
    ld c, l
    ld h, $32

jr_005_4cc4:
    jr z, jr_005_4d02

    add hl, hl
    ld c, [hl]
    ld e, d
    ld e, d
    ld e, d
    ld b, b
    inc hl
    jr nc, jr_005_4d48

    ld a, c
    ld a, c
    ld c, [hl]
    ld d, b
    ld d, b
    ld b, l
    ld b, b
    dec h
    ld d, b
    ld b, b
    dec sp
    ld b, b
    ld c, [hl]
    ld b, b
    dec sp
    ld c, [hl]
    ld c, h
    ld h, $29

jr_005_4ce2:
    ld c, h
    ld b, b
    ld c, l
    ld c, [hl]
    ld b, b
    ld c, h
    ld c, [hl]
    jr z, jr_005_4d18

    inc a
    inc l
    inc a
    add hl, hl
    ld c, [hl]
    jr z, jr_005_4d1f

    inc a
    dec l
    dec a
    ld a, [bc]
    ld [$3b40], sp
    ld b, [hl]
    ld c, h
    dec sp
    ld b, b
    ld c, [hl]
    ld b, b
    dec sp
    ld b, b
    ld b, a

jr_005_4d02:
    ld b, a
    ld b, c
    ld b, a
    ld b, a
    ld b, h
    ld c, [hl]
    ld b, b
    ld c, l
    ld b, b
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld b, [hl]
    ld c, [hl]
    ld c, h
    ld b, b
    ld b, b
    nop
    nop
    nop

jr_005_4d18:
    ld d, b
    ld d, b
    ld b, [hl]
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b

jr_005_4d1f:
    nop
    nop
    nop
    ld c, l
    ld b, b
    ld b, [hl]
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, h
    nop
    nop
    nop
    ld c, d
    ld c, d
    ld c, d
    ld c, a
    jr z, jr_005_4d5f

    dec hl
    nop
    ld e, d
    nop
    jr z, jr_005_4d75

    ld a, $2d
    inc a
    inc l
    inc a
    nop
    nop
    nop
    ld a, [hl+]
    add hl, sp
    ccf
    jr c, jr_005_4d7a

    ld [hl], $37
    inc d

jr_005_4d48:
    ld [$2f2e], sp
    cpl
    jr nc, jr_005_4d76

    inc a
    add hl, hl
    ld e, e
    ld e, b
    ld d, e
    jr z, jr_005_4d91

    dec a
    ld a, $3c
    add hl, hl
    ld bc, $3c28
    dec l
    ld d, b
    ld b, l

jr_005_4d5f:
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$5008], sp
    nop
    nop
    nop
    nop
    ld bc, $3350
    ld d, h
    ld b, b
    ld c, [hl]
    nop
    nop

jr_005_4d75:
    nop

jr_005_4d76:
    nop
    nop
    nop
    ld d, b

jr_005_4d7a:
    ld d, b
    ld b, l
    ld c, h
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld sp, $4c3c
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    dec sp
    ld c, [hl]
    ld b, b

jr_005_4d91:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld l, $2f
    ld b, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
    ld c, a
    ld c, d
    nop
    nop
    nop
    nop
    nop
    jr z, @+$3f

    ld a, $2d
    add hl, hl
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
    ld e, d
    ld e, d
    ld e, d
    nop
    ld a, [hl+]
    dec [hl]
    ld [hl], $2b
    add hl, hl
    nop
    ld e, d
    nop
    nop
    ld e, d
    ld e, d
    nop
    jr z, jr_005_4df5

    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_005_4e10

    dec a
    inc a
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_005_4e09

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec [hl]
    ld [hl], $0a
    ld [$292b], sp
    ld l, $2f
    cpl
    cpl
    jr nc, jr_005_4e1b

    inc a
    inc a

jr_005_4df5:
    dec h
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    inc bc
    ld h, $40
    dec sp
    ld c, [hl]
    ld b, b
    dec sp
    ld c, [hl]
    ld b, b
    ld c, l
    inc bc

jr_005_4e09:
    inc hl
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, [hl]

jr_005_4e10:
    ld b, b
    ld b, b
    inc bc
    dec h
    ld [bc], a
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    inc b

jr_005_4e1b:
    dec b
    dec l
    ld h, $01
    ld c, h
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, $07
    inc a
    ld [hl+], a
    ld d, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld c, h
    ld c, [hl]
    ld a, [hl+]
    dec [hl]
    ld [hl], $2c
    inc a
    inc a
    inc l
    dec l
    add hl, hl
    ld [bc], a
    jr z, jr_005_4e67

    inc a
    ld a, [bc]
    ld [$3c2d], sp
    add hl, hl
    ld e, e
    ld e, b
    ld e, b
    ld d, e
    jr z, @+$3f

    ld a, $50
    ld b, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    inc bc
    ld c, h
    ld c, [hl]
    ld c, h
    dec sp
    ld b, b
    dec sp
    ld b, b
    ld c, [hl]
    ld b, b
    inc bc
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld c, h
    ld b, b
    ld c, l
    ld c, [hl]
    ld c, h
    inc bc
    inc a
    dec l

jr_005_4e67:
    inc a
    inc l
    inc a
    dec l
    inc a
    inc l
    inc a
    dec l
    add hl, hl
    add hl, sp
    ld a, [hl-]
    ccf
    jr c, jr_005_4e9d

    add hl, hl
    add hl, sp
    ld a, [hl-]
    jr z, jr_005_4ea3

    add hl, sp
    ccf
    ld a, [hl+]
    dec [hl]
    ld [hl], $29
    add hl, sp
    ccf
    jr z, jr_005_4eab

    add hl, hl
    dec [hl]
    ld [hl], $37
    add hl, hl
    dec [hl]
    dec [hl]
    jr z, jr_005_4ec9

    dec bc
    ld [$0929], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr z, jr_005_4ee0

    ld d, b
    ld d, b

jr_005_4e9d:
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    ld d, b

jr_005_4ea3:
    ld d, b
    jr z, @+$50

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]

jr_005_4eab:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr z, jr_005_4eff

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr z, jr_005_4ee5

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr z, @+$2b

    ld b, b
    ld b, b

jr_005_4ec9:
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr z, jr_005_4efb

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr z, jr_005_4f06

    add hl, bc
    add hl, bc
    add hl, bc

jr_005_4ee0:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_005_4ee5:
    add hl, bc
    jr z, jr_005_4ef2

    ld [$100f], sp
    ld de, $100f
    ld de, $1110
    db $10

jr_005_4ef2:
    ld de, $1c12
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4efb:
    ld e, $0f
    inc de
    ld a, [de]

jr_005_4eff:
    nop
    nop
    nop
    nop
    nop
    nop
    dec e

jr_005_4f06:
    inc e
    rrca
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld a, [de]
    ld [de], a
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc de
    dec de
    nop
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    nop
    db $10
    ld de, $1416
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld d, $17
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    rla
    ld a, [bc]
    ld [$4040], sp
    ld c, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    dec sp
    ld c, [hl]
    ld b, b
    ld b, c
    ld b, a
    ld b, h
    ld c, [hl]
    ld b, b
    dec sp
    ld c, h
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, [hl]
    ld c, h
    ld b, [hl]
    ld c, [hl]
    ld b, b
    ld b, b
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld b, b
    ld b, [hl]
    ld c, [hl]
    ld c, h
    ld b, b
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, c
    ld b, b
    ld b, [hl]
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    dec sp
    ld c, [hl]
    ld c, l
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld c, [hl]
    jr z, @+$3f

    ld c, d
    ld c, d
    ld c, a
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    jr z, jr_005_4fad

    dec hl
    dec l
    inc l
    dec l
    inc a
    dec a
    ld a, $2b
    dec l
    inc a
    dec l
    ld a, [bc]
    ld [$2c3c], sp
    add hl, hl
    db $10
    ld de, $1713
    dec d
    dec e
    inc d
    inc [hl]
    ld d, b
    ld b, l
    nop
    nop
    ld hl, $1c1c
    dec e
    add hl, de
    jr nc, @+$42

    ld c, [hl]
    nop
    nop
    jr nz, jr_005_4fc2

    ld a, [de]
    dec e
    dec d
    inc l
    inc a

jr_005_4fad:
    add hl, hl
    nop
    nop
    jr nz, jr_005_4fc2

    ld de, $1110
    ld e, h
    ld d, b
    ld b, l
    nop
    nop
    jr nz, jr_005_4fd8

    inc e
    inc e
    rrca
    ld d, d
    ld c, h
    ld c, [hl]

jr_005_4fc2:
    nop
    nop
    jr nz, @+$1c

    ld a, [de]
    ld a, [de]
    ld e, $5b
    ld e, b
    ld e, b
    ld e, b
    ld e, h
    jr nz, jr_005_4feb

    dec de
    dec de
    rra
    add hl, hl
    dec [hl]
    ld [hl], $29
    ld d, d

jr_005_4fd8:
    db $10
    ld de, $1110
    rrca
    ld a, [bc]
    ld [$1110], sp
    db $10
    ld de, $100f
    ld de, $1612
    inc d
    inc e
    inc e

jr_005_4feb:
    inc e
    nop
    nop
    nop
    nop
    inc de
    rla
    dec d
    ld a, [de]
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    nop
    ld [$1408], sp
    ld [de], a
    ld d, $14
    nop
    nop
    nop
    nop
    inc e
    ld e, $19
    inc de
    rla
    dec d
    nop
    nop
    nop
    nop
    ld a, [de]
    dec e
    dec d
    rrca
    db $10
    ld de, $5a00
    ld e, d
    nop
    ld a, [de]
    dec e
    inc d
    ld [de], a
    ld d, $14
    nop
    nop
    nop
    nop
    ld a, [de]
    dec e
    dec d
    inc de
    rla
    dec d
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $080a
    add hl, hl
    ld a, c
    ld a, c
    ld a, c
    ld c, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    jr z, jr_005_5065

    ld c, d
    ld c, d
    ld c, d
    ld c, a
    ld c, d
    ld c, d
    ld c, d
    ld [$7928], sp
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    add hl, hl
    ld b, b
    dec sp
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    dec sp
    ld c, [hl]
    jr z, jr_005_5083

    ld b, b
    ld c, l
    ld b, b
    ld a, c
    ld a, c
    ld c, h
    ld b, b
    ld c, [hl]
    jr z, jr_005_508d

    ld c, d

jr_005_5065:
    ld c, d
    ld c, d
    ld c, a
    ld c, d
    ld c, d
    ld c, d
    ld c, a
    jr z, jr_005_506e

jr_005_506e:
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    add hl, hl
    ld [$0808], sp
    ld c, [hl]
    ld b, b
    ld [$0808], sp
    jr z, @+$80

    nop

jr_005_5083:
    nop
    nop
    nop
    ld c, c
    ld c, c
    ld c, d
    ld c, d
    ld c, c
    ld c, c
    ld c, d

jr_005_508d:
    ld c, d
    dec c
    dec c
    ld c, $0e
    inc b
    rlca
    dec b
    ld [$0906], sp
    ld [hl-], a
    jr nc, jr_005_50a5

    ld [hl-], a
    dec bc
    ld d, a
    inc c
    ld e, b
    ld [hl-], a
    jr nc, jr_005_50cc

    dec hl
    ld a, [hl+]

jr_005_50a5:
    inc l
    ld h, c
    ld h, e
    ld h, d
    ld h, h
    db $10
    ld h, l
    ld de, $0000
    ld de, $1000
    rrca
    ld h, l
    ld h, l
    nop
    ld de, $0010
    rrca
    nop
    rrca
    nop
    ld de, $1412
    inc de
    dec d
    ld [de], a
    inc d
    ld d, $18
    rla
    add hl, de
    inc de
    dec d
    ld [de], a
    inc d

jr_005_50cc:
    ld a, [de]
    dec de
    ld [de], a
    inc d
    inc e
    dec d
    dec e
    dec de
    inc de
    dec d
    inc e
    inc d
    inc de
    dec d
    ld [de], a
    jr nz, @+$15

    ld hl, $1422
    inc hl
    dec d
    ld [de], a
    inc d
    dec de
    dec de
    dec de
    dec de
    inc de
    dec d
    inc h
    ld h, $25
    daa
    inc h
    jr z, jr_005_5116

    jr z, jr_005_50f3

jr_005_50f3:
    ld h, $00
    daa
    inc h
    ld h, $2f
    cpl
    nop
    ld h, $00
    cpl
    inc h
    jr z, @+$31

    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    nop
    cpl
    inc [hl]
    ld [hl], $35
    scf
    inc [hl]
    add hl, sp
    jr c, @+$3c

    inc [hl]
    ld [hl], $1f
    scf

jr_005_5116:
    inc [hl]
    ld h, [hl]
    dec [hl]
    ld h, a
    ld l, b
    ld [hl], $69
    scf
    jr nc, jr_005_5151

    ld sp, $3030
    ld [hl-], a
    ld sp, $4330
    ld b, h
    ld sp, $3032
    ld [hl-], a
    ld sp, $3032
    ld sp, $3033
    jr nc, jr_005_5167

    ld sp, $4330
    ld b, h
    ld sp, $4c30
    ld d, b
    ld [hl-], a
    ld c, e
    jr nc, @+$4d

    ld sp, $324b
    ld c, e
    ld c, h
    ld c, l
    ld c, h
    ld c, h
    ld [hl-], a
    jr nc, @+$34

    ld sp, $4c4c
    ld c, [hl]
    ld c, h
    ld c, e

jr_005_5151:
    jr nc, jr_005_519e

    ld sp, $4c4f
    jr nc, jr_005_519d

    ld sp, $4846
    ld b, a
    ld b, [hl]
    jr nc, jr_005_51a4

    ld sp, $3046
    ld d, c
    ld d, c
    dec de
    dec de
    dec de

jr_005_5167:
    dec de
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld e, $3b
    ld d, h
    dec sp
    ld d, a
    ld sp, $3058
    jr nc, jr_005_51a9

    ld sp, $3057
    ld e, b
    ld sp, $5230
    ld d, l
    ld d, e
    ld d, [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    ld a, $42
    ccf
    dec sp
    ld a, $3b
    ccf
    dec sp
    ld a, $42
    dec sp
    dec sp
    ld b, b
    ld a, $3b
    dec sp
    nop
    dec sp
    nop
    dec a
    ld b, d
    ld b, d
    dec sp

jr_005_519d:
    dec sp

jr_005_519e:
    ccf
    dec sp
    ccf
    dec sp
    ld b, b
    ld b, d

jr_005_51a4:
    dec sp
    dec sp
    ld b, c
    dec sp
    ccf

jr_005_51a9:
    dec sp
    ld l, $00
    ld l, $00
    ld [hl-], a
    ld sp, $3050
    inc a
    dec sp
    dec sp
    dec sp
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    dec sp
    dec a
    dec a
    ld l, $00
    dec l
    nop
    nop
    dec sp
    nop
    dec sp
    nop
    ld b, d
    nop
    dec sp
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    ld c, e
    ld c, h
    ld c, l
    ld c, e
    ld sp, $304b
    ld c, l
    ld sp, $3232
    jr nc, jr_005_520e

    ld sp, $304e
    ld c, a
    ld sp, $4b32
    ld c, e
    ld c, e
    ld c, e
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld l, d
    ld l, h
    ld l, e
    ld l, l
    ld c, h
    ld d, b
    ld d, b
    ld c, e
    ld c, e
    ld c, a
    ld c, a
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, e
    ld c, [hl]
    ld e, l
    ld e, a
    ld e, [hl]
    ld h, b
    ld e, l
    ld e, a
    ld e, [hl]
    ld h, b
    nop
    sub b
    nop
    sub c
    adc l
    sub d
    nop
    sub e
    adc [hl]
    sub h
    adc a
    sub l

jr_005_520e:
    nop
    nop
    sub [hl]
    sbc e
    sub a
    sbc h
    sbc b
    sbc l
    sbc c
    sbc [hl]
    sbc d
    sbc a
    and b
    and [hl]
    and c
    and a
    and d
    xor b
    and e
    xor c
    and h
    xor d
    and l
    xor e
    xor h
    or d
    xor l
    or e
    xor [hl]
    or h
    xor a
    or l
    or b
    or [hl]
    or c
    or a
    nop
    nop
    cp b
    cp h
    nop
    nop
    cp c
    cp l
    cp d
    cp [hl]
    cp e
    cp a
    nop
    nop
    ret nz

    nop
    pop bc
    nop
    jp nz, $c300

    nop
    call nz, RST_00
    nop
    sub [hl]
    add $97
    rst $00
    sbc b
    ret z

    call z, $cdce
    rst $08
    ret nc

    jp nc, $d3d1

    sub $d8
    rst $10
    reti


    call nc, $d4d5
    push de
    dec sp
    dec sp
    jp c, Jump_000_30da

    nop
    ld sp, $0000
    nop
    sub [hl]
    db $db
    sub a
    call c, $dd98
    jp z, $cba8

    xor c
    rst $18
    xor b
    ldh [$ffa9], a
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
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
    inc bc
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0503
    ld [$0b09], sp
    inc c
    dec c
    rrca
    db $10
    ld de, $1514
    rla
    nop
    ld d, b
    sub [hl]
    stop
    ld [hl], d
    ld d, e
    nop
    ld h, b
    sub [hl]
    ld b, b
    nop
    and d
    ld d, e
    nop
    and b
    sub [hl]
    ld b, b
    nop
    and d
    ld d, h
    ld bc, $50ff
    sub [hl]
    stop
    ld [hl], d
    ld d, e
    inc b
    ld h, b
    sub [hl]
    ld b, b
    nop
    and d
    ld d, e
    inc b
    and b
    sub [hl]
    ld b, b
    nop
    and d
    ld d, h
    inc b
    ld d, b
    sub [hl]
    stop
    add d
    ld d, e
    inc b
    ld h, b
    sub [hl]
    ld b, b
    nop
    ldh [c], a
    ld d, e
    inc b
    and b
    sub [hl]
    ld b, b
    nop
    ldh [c], a
    ld d, h
    inc b
    ld d, b
    sub [hl]
    stop
    sub d
    ld d, e
    inc b
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld [hl+], a
    ld d, h
    inc b
    and b
    sub [hl]
    ld b, b
    nop
    ld [hl+], a
    ld d, l
    inc b
    ld d, b
    sub [hl]
    stop
    add d
    ld d, e
    inc b
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, d
    ld d, h
    inc b
    and b
    sub [hl]
    ld b, b
    nop
    ld h, d
    ld d, l
    inc b
    rst $38
    nop
    nop
    nop
    nop
    stop
    stop
    ld l, h
    db $10
    stop
    stop
    nop
    nop
    nop
    nop
    stop
    nop
    db $10
    jr z, @+$12

    sub d
    ld a, h
    jr z, @+$12

    nop
    db $10
    stop
    nop
    nop
    nop

jr_005_5395:
    db $10
    db $10
    db $10
    db $10
    jr c, @+$7e

    cp $10
    jr c, jr_005_53af

    stop
    db $10
    ld e, a
    jr nz, jr_005_53e5

    jr nz, @+$4f

    ld hl, $2040
    ld b, d
    ld hl, $2344
    ld c, c

jr_005_53af:
    daa
    ld b, e
    cpl
    ld a, [$0204]
    inc b
    or d
    add h
    ld [bc], a
    inc b
    ld b, d
    add h
    ld [hl+], a
    call nz, $e492
    jp nz, Jump_005_43f4

    cpl
    ld c, c
    daa
    ld b, h
    inc hl
    ld b, d
    ld hl, $2040
    ld c, l
    ld hl, $2040
    ld e, a
    jr nz, jr_005_5395

    db $f4
    sub d
    db $e4
    ld [hl+], a
    call nz, $8442
    ld [bc], a
    inc b
    or d
    add h
    ld [bc], a
    inc b
    ld a, [$5f04]
    jr nz, jr_005_5425

jr_005_53e5:
    jr nz, @+$4f

    inc l
    ld b, b
    jr nz, jr_005_542d

    jr nz, jr_005_542f

    jr nz, jr_005_5431

    jr z, jr_005_5439

    ld a, [hl+]
    ld a, [$0204]
    inc b
    or d
    inc b
    ld [bc], a
    inc b
    add d
    inc b
    jp nz, $e204

    inc b
    ld h, d
    add h
    ld c, b
    ld a, [hl+]
    ld b, d
    jr z, jr_005_5449

    jr nz, jr_005_544b

    jr nz, jr_005_544b

    jr nz, @+$4f

    inc l
    ld b, b
    jr nz, @+$61

    jr nz, jr_005_5435

    call nz, $8462
    jp nz, $8204

    inc b
    ld [bc], a
    inc b
    or d
    inc b
    ld [bc], a
    inc b
    ld a, [$5f04]
    jr nz, jr_005_5465

jr_005_5425:
    jr nz, jr_005_5474

    jr nz, jr_005_5469

    jr nz, @+$45

    jr nz, jr_005_5474

jr_005_542d:
    jr nz, jr_005_547e

jr_005_542f:
    jr nz, jr_005_547c

jr_005_5431:
    inc h
    ld a, [$0204]

jr_005_5435:
    inc b
    or d
    inc b
    ld [bc], a

jr_005_5439:
    inc b
    jp nz, $e204

    inc b
    ldh a, [c]
    inc b
    ldh a, [c]
    inc b
    ld c, e
    inc h
    ld c, l

jr_005_5445:
    ld [hl+], a
    ld b, a
    jr nz, @+$45

jr_005_5449:
    jr nz, jr_005_548b

jr_005_544b:
    jr nz, jr_005_549a

    jr nz, jr_005_548f

    jr nz, jr_005_54b0

    jr nz, jr_005_5445

    inc b
    ldh a, [c]
    inc b
    ldh [c], a
    inc b
    jp nz, Jump_000_0204

    inc b
    or d
    inc b
    ld [bc], a
    inc b
    ld a, [$5f04]
    jr nz, jr_005_54a5

jr_005_5465:
    jr nz, jr_005_54b4

    jr nz, jr_005_54a9

jr_005_5469:
    jr nz, jr_005_54ac

    jr nz, jr_005_54b0

    jr nz, jr_005_54b6

    jr nz, jr_005_54b7

    ld hl, $04fa

jr_005_5474:
    ld [bc], a
    inc b
    or d
    inc [hl]
    ld [bc], a
    inc b
    ld b, d
    inc b

jr_005_547c:
    ld b, d
    inc b

jr_005_547e:
    ld b, d
    inc d
    ld [de], a
    ld d, h
    ld b, h
    inc hl
    ld b, [hl]
    ld hl, $2043
    ld b, c
    jr nz, jr_005_54cb

jr_005_548b:
    jr nz, jr_005_54da

    jr nz, jr_005_54cf

jr_005_548f:
    jr nz, jr_005_54f0

    jr nz, jr_005_54a5

    ld d, h
    ld b, d
    inc d
    ld b, d
    inc b
    ld b, d
    inc b

jr_005_549a:
    ld [bc], a
    inc b
    or d
    inc [hl]
    ld [bc], a
    inc b
    ld a, [$0004]
    rst $38
    or a

jr_005_54a5:
    rst $38
    cp a
    rst $38
    cp a

jr_005_54a9:
    rst $38
    rst $38
    nop

jr_005_54ac:
    ld b, b
    cp a
    ld b, b
    cp a

jr_005_54b0:
    ld a, [hl]
    add c
    nop
    rst $38

jr_005_54b4:
    dec b
    rst $38

jr_005_54b6:
    db $fd

jr_005_54b7:
    rst $38
    db $fd
    rst $38
    rst $38
    nop
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    add d
    ld a, l
    ld c, b
    or a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    nop
    cp a

jr_005_54cb:
    nop
    add c
    nop
    or a

jr_005_54cf:
    nop
    nop
    nop
    ld a, [$0205]
    db $fd
    ld [bc], a
    db $fd
    nop
    nop

jr_005_54da:
    db $ed
    nop
    ld a, l
    nop
    dec b
    nop
    nop
    nop
    ld b, b
    cp a
    rst $38
    nop
    cp a
    rst $38
    add c
    rst $38
    or a
    rst $38
    cp a
    rst $38
    rst $38
    nop

jr_005_54f0:
    ld b, b
    cp a
    ld [bc], a
    db $fd
    rst $38
    nop
    db $ed
    rst $38
    ld a, l
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    rst $38
    nop
    ld [de], a
    db $ed
    ld b, b
    cp a
    ld a, [hl]
    add c
    ld c, b
    or a
    ld b, b
    cp a
    nop
    nop
    cp a
    nop
    add c
    nop
    or a
    nop
    ld [de], a
    db $ed
    add d
    ld a, l
    ld a, [$0205]
    db $fd
    nop
    nop
    db $ed
    nop
    ld a, l
    nop
    dec b
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    nop
    cp a
    rst $38
    cp a
    rst $38
    add c
    rst $38
    or a
    rst $38
    cp a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rst $38
    nop
    db $ed
    rst $38
    db $ed
    rst $38
    ld a, l
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    ld a, [hl]
    add c
    ld c, b
    or a
    ld b, b
    cp a
    nop
    nop
    cp a
    nop
    rst $38
    nop
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    add d
    ld a, l
    ld a, [$0205]
    db $fd
    nop
    nop
    db $ed
    nop
    ld c, b
    or a
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    nop
    cp a
    rst $38
    cp a
    rst $38
    add c
    rst $38
    or a
    rst $38
    ld a, [$0205]
    db $fd
    ld [bc], a
    db $fd
    rst $38
    nop
    db $ed
    rst $38
    db $ed
    rst $38
    ld a, l
    rst $38
    dec b
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    nop
    nop
    cp a
    nop
    add c
    nop
    or a
    nop
    cp a
    nop
    nop
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    nop
    db $ed
    nop
    ld a, l
    nop
    dec b
    nop
    db $fd
    nop
    nop
    nop
    ld [bc], a
    ld a, [bc]
    nop
    ld e, [hl]
    inc e
    ld e, a
    ld a, [de]
    nop
    ld bc, $1403
    dec d
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    rrca
    db $10
    rla
    nop
    ld b, $c2
    ld d, l
    rlca
    jp c, Jump_000_1855

    cp $55
    nop
    add $55
    nop
    nop
    add b
    rst $38
    inc b
    rrca
    ld bc, $0000
    ld a, c
    ld a, c
    nop
    nop
    ld a, c
    nop
    nop
    ld a, c
    ld a, c
    ld a, c
    nop
    nop
    ld a, c
    ldh [rHDMA5], a
    db $ec
    ld d, l
    nop
    nop
    add b
    rst $38
    inc bc
    rlca
    ld bc, $0000
    ld a, c
    ld a, c
    nop
    nop
    ld a, c
    add b
    nop
    dec b
    dec c
    ld bc, $7979
    ld a, c
    nop
    ld a, c
    ld a, c
    nop
    ld a, c
    ld a, c
    ld a, c
    nop
    nop
    nop
    inc b
    ld d, [hl]
    dec c
    ld d, [hl]
    nop
    nop
    add b
    nop
    ld [bc], a
    inc b
    ld bc, $7979
    ld a, c
    nop
    add b
    rst $38
    ld b, $04
    ld bc, $7979
    nop
    nop

Call_005_5616:
    ld hl, $55b8
    call Call_005_579d
    ld hl, $55a2
    call Call_005_5de6
    ld hl, $55aa
    call Call_005_5d31
    xor a
    ld [$d140], a
    ret


Call_005_562d:
    call Call_005_585a
    ld a, [$cca4]
    or a
    ld de, $55a5
    call nz, Call_005_5df8
    ld a, [$d165]
    or a
    call nz, Call_005_5d5f
    ld a, [$dd00]
    or a
    jr z, jr_005_5666

    ld a, [$c2d2]
    cp $50
    ld a, $40
    jr nz, jr_005_5652

    ld a, $4e

jr_005_5652:
    ld [$cc9c], a
    ld a, [$ccc2]
    or a
    jr z, jr_005_5666

    ld hl, $d140
    ld de, $5667
    ld b, $00
    call Call_005_5e9e

jr_005_5666:
    ret


    ld bc, $0900
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

Call_005_56b3:
    ld hl, $cb80
    ld bc, $0038
    xor a
    call Call_000_0174
    ld hl, $cb81
    ld [hl], $01
    ret


    ld a, $02
    ld [$cb81], a
    call Call_005_5763
    ret


Call_005_56cc:
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
    call Call_005_42a3
    ret


Call_005_572f:
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


Call_005_5763:
    ld a, [$cb80]
    or a
    ret z

    ld hl, $cb88

jr_005_576b:
    ld a, l
    ld [$cb86], a
    ld a, h
    ld [$cb87], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    or e
    jr z, jr_005_579c

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
    call Call_005_42a3
    ld a, b
    or a
    jr nz, jr_005_5799

    call Call_005_572f

jr_005_5799:
    pop hl
    jr jr_005_576b

jr_005_579c:
    ret


Call_005_579d:
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$dd31], a
    push hl
    ld hl, $d141
    ld bc, $0018
    xor a
    call Call_000_0174
    pop hl
    ld a, [$de8f]
    ld d, a
    ld c, $03
    ld e, $00
    call Call_005_4296
    ret c

    push hl
    call Call_005_56b3
    pop hl
    ld a, [$d7d1]
    ld [$d14c], a
    ld [$d14d], a
    ld a, $ff
    ld [$d149], a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_005_57d5:
    ld a, [hl+]
    or [hl]
    jr z, jr_005_57f7

    dec hl
    push hl
    ld a, [hl+]
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8b], a
    ld de, $596d
    call Call_005_56cc
    ld hl, $cc9d
    set 0, [hl]
    ld hl, $d141
    inc [hl]
    pop hl
    ld de, $0002
    add hl, de
    jr jr_005_57d5

jr_005_57f7:
    ld hl, $d154
    ld a, [$d144]
    ld [hl+], a
    ld a, [$d146]
    ld [hl+], a
    ld a, [$d145]
    ld [hl+], a
    ld a, [$d147]
    ld [hl+], a
    ld b, $05
    ld de, $5827
    call Call_005_41e1
    ld b, $05
    ld de, $581b
    call Call_005_41d5
    ret


    xor a
    ld [$d298], a
    ld a, $c9
    ld [$c0f0], a
    jp Jump_000_01c5


    ld a, e
    cp $a0
    jr nc, jr_005_5841

    ld b, d
    inc b
    ld hl, $d154
    ld a, [hl+]
    cp b
    jr nc, jr_005_5841

    ld a, [hl+]
    cp b
    jr nc, jr_005_5844

    ld a, [hl+]
    cp b
    jr nc, jr_005_5841

    ld a, [hl+]
    cp b
    jr nc, jr_005_5849

jr_005_5841:
    ld b, $ff
    ret


jr_005_5844:
    ld a, [$d14c]
    jr jr_005_584c

jr_005_5849:
    ld a, [$d14d]

jr_005_584c:
    push de
    add e
    ld e, a
    ld a, [$d7d2]
    add d
    ld d, a
    call Call_005_4288
    ld b, [hl]
    pop de
    ret


Call_005_585a:
    ld a, [$d81c]
    or a
    jr nz, jr_005_5894

    ld a, [$d141]
    or a
    jr z, jr_005_5894

    ld hl, $d142
    bit 0, [hl]
    jr nz, jr_005_5874

    set 0, [hl]
    call Call_005_5c96
    jr jr_005_5894

jr_005_5874:
    ld hl, $de00
    ld a, [hl]
    ld [$d158], a
    ld [hl], $01
    xor a
    ld [$d153], a
    call Call_005_5763
    call Call_005_417a
    ld a, [$d153]
    or a
    call nz, Call_005_5a94
    ld a, [$d158]
    ld [$de00], a

jr_005_5894:
    ret


Jump_005_5895:
    ld a, $00
    add c
    ld l, a
    ld a, [$d141]
    ld [hl], a
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld a, $06
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, [de]
    inc de
    ldh [$ff8c], a
    add a
    add a
    add a
    add a
    ldh [$ff91], a
    ld a, [de]
    inc de
    ldh [$ff8d], a
    ld a, [de]
    inc de
    ldh [$ff8e], a
    add a
    add a
    add a
    add a
    ldh [$ff92], a
    ld a, $0e
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ld a, [$d141]
    ld c, a
    ld a, $44
    add c
    ld l, a
    ld a, $d1
    adc $00
    ld h, a
    ldh a, [$ff91]
    ld [hl], a
    sub $03
    ld b, a
    ld a, $48
    add c
    ld l, a
    ld a, $d1
    adc $00
    ld h, a
    ld [hl], b
    ldh a, [$ff92]
    ld e, a
    ldh a, [$ff91]
    add e
    ld e, a
    ld a, $46
    add c
    ld l, a
    ld a, $d1
    adc $00
    ld h, a
    ld [hl], e
    ld a, $4a
    add c
    ld l, a
    ld a, $d1
    adc $00
    ld h, a
    ld a, e
    sub $03
    ld [hl], a
    ld a, [$cb82]
    ld c, a
    ld a, [$cb83]
    ld h, a
    ld a, $08
    add c
    ld l, a
    ldh a, [$ff8c]
    ld [hl], a
    add a
    add a
    add a
    add a
    ld b, a
    ld a, $02
    add c
    ld l, a
    ld [hl], b
    ld a, $03
    add c
    ld l, a
    ldh a, [$ff92]
    add b
    sub $07
    ld [hl], a
    ld a, $09
    add c
    ld l, a
    ldh a, [$ff8d]
    ld [hl], a
    ld a, $0a
    add c
    ld l, a
    ldh a, [$ff8e]
    ld [hl], a
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_005_5953

    ld a, $09
    add c
    ld l, a
    ld e, [hl]
    dec e
    ld a, $0b
    add c
    ld l, a
    ld [hl], e
    ld a, $0c
    add c
    ld l, a
    ld [hl], $0f
    jr jr_005_595f

jr_005_5953:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $00
    ld a, $0c
    add c
    ld l, a
    ld [hl], $0a

jr_005_595f:
    ld a, $01
    add c
    ld l, a
    ld [hl], $00
    ld a, $04
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


    dec b
    jr z, jr_005_597b

    dec b
    jr z, jr_005_5978

    inc b
    inc b
    jp z, Jump_005_5895

jr_005_5978:
    ld b, $00
    ret


jr_005_597b:
    ld a, [$deaf]
    or a
    jr nz, jr_005_59eb

    ld a, $01
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_005_5994

    set 0, [hl]
    call Call_005_5aa9
    ld a, $0d
    add c
    ld l, a
    ld [hl], $00

jr_005_5994:
    ld a, $06
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld b, a
    adc d
    ld [hl], a
    sub b
    ld [$d151], a
    bit 7, a
    jr z, jr_005_59b0

    cpl
    inc a

jr_005_59b0:
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [hl], a
    cp $10
    jr c, jr_005_59c2

    sub $10
    ld [hl], a
    call Call_005_5aa9

jr_005_59c2:
    ld l, c
    push hl
    ld a, $05
    add c
    ld l, a
    ld d, [hl]
    ld a, $00
    add c
    ld l, a
    ld c, [hl]
    ld a, $4c
    add c
    ld l, a
    ld a, $d1
    adc $00
    ld h, a
    ld a, [$d7d1]
    sub d
    ld [hl], a
    pop hl
    ld c, l
    ld a, [$d151]
    or a
    jr z, jr_005_59eb

    ld l, c
    push hl
    call Call_005_5a49
    pop hl
    ld c, l

jr_005_59eb:
    ld a, [$de9b]
    cp $01
    jr nz, jr_005_5a1c

    ld a, [$c2d1]
    cp $01
    jr z, jr_005_59fd

    cp $03
    jr nz, jr_005_5a1a

jr_005_59fd:
    ld a, $03
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    ld a, [$c2d3]
    add $0b
    cp [hl]
    jr c, jr_005_5a1a

    cp b
    jr nc, jr_005_5a1a

    ld a, [$d151]
    ld b, a
    ld de, $c2d5
    ld a, [de]
    add b
    ld [de], a

jr_005_5a1a:
    jr jr_005_5a46

jr_005_5a1c:
    ld a, [$c2cd]
    or a
    jr z, jr_005_5a46

    ld a, [$c2d1]
    cp $01
    jr nz, jr_005_5a46

    ld a, $03
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    ld a, [$c2d3]
    add $0b
    cp [hl]
    jr c, jr_005_5a46

    cp b
    jr nc, jr_005_5a46

    ld a, [$d151]
    ld b, a
    ld de, $c2d5
    ld a, [de]
    add b
    ld [de], a

jr_005_5a46:
    ld b, $01
    ret


Call_005_5a49:
    ld a, [$d74b]
    cp $01
    jr nz, jr_005_5a74

    ld a, [$c2cc]
    bit 7, a
    jr nz, jr_005_5a74

    ld a, $03
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    ld a, [$d725]
    add $0d
    cp [hl]
    jr c, jr_005_5a74

    cp b
    jr nc, jr_005_5a74

    ld a, [$d151]
    ld b, a
    ld de, $d732
    ld a, [de]
    add b
    ld [de], a

jr_005_5a74:
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_005_5a81

    call Call_005_5b27
    jr jr_005_5a84

jr_005_5a81:
    call Call_005_5b3f

jr_005_5a84:
    ret nc

    ld hl, $d153
    inc [hl]
    ld a, [$d151]
    ld [$d152], a
    ld e, a
    call Call_005_41b6
    ret


Call_005_5a94:
    call Call_005_5b91
    jr c, jr_005_5a9e

    call Call_005_5bab
    jr nc, jr_005_5aa8

jr_005_5a9e:
    xor a
    ld [$d73a], a
    ld a, $14
    ld [$d739], a
    ret


jr_005_5aa8:
    ret


Call_005_5aa9:
    push hl
    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    ld [$d150], a
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff8a], a
    ld a, $0c
    add c
    ld l, a
    ld e, [hl]
    ld a, $08
    add c
    ld l, a
    ld d, [hl]
    ld a, $0b
    add c
    ld l, a
    ld b, [hl]
    ld a, $0e
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    add b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ldh a, [$ff8a]
    ld b, a

jr_005_5ad7:
    push de
    push bc
    push hl
    ld a, [hl]
    call Call_005_41f9
    pop hl
    ld a, [$d150]
    ld e, a
    ld d, $00
    add hl, de
    pop bc
    pop de
    inc d
    dec b
    jr nz, jr_005_5ad7

    pop hl
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_005_5b0e

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    sub $01
    jr nc, jr_005_5b02

    ld a, [$d150]
    dec a

jr_005_5b02:
    ld [hl], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    dec a
    and $0f
    ld [hl], a
    jr jr_005_5b26

jr_005_5b0e:
    ld a, [$d150]
    ld b, a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    inc a
    cp b
    jr c, jr_005_5b1c

    xor a

jr_005_5b1c:
    ld [hl], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    inc a
    and $0f
    ld [hl], a

jr_005_5b26:
    ret


Call_005_5b27:
    ld a, [$d163]
    or a
    jr nz, jr_005_5b36

    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jr jr_005_5b4c

jr_005_5b36:
    ld a, [$d722]
    add $f8
    ldh [$ff98], a
    jr jr_005_5b81

Call_005_5b3f:
    ld a, [$d163]
    or a
    jr nz, jr_005_5b7a

    ld a, [$d722]
    add $06
    ldh [$ff98], a

Jump_005_5b4c:
jr_005_5b4c:
    ld a, [$cc99]
    or a
    jr nz, jr_005_5b58

    ld d, $f8
    call Call_005_5b66
    ret c

jr_005_5b58:
    ld d, $fd
    call Call_005_5b66
    ret c

    ld d, $05
    call Call_005_5b66
    ret c

    ld d, $0c

Call_005_5b66:
jr_005_5b66:
    ldh a, [$ff98]
    ld e, a
    ld a, [$d725]
    add d
    ld d, a
    call Call_000_0165
    ret nc

    ld a, [$d74e]
    cp $02
    ret z

    scf
    ret


jr_005_5b7a:
    ld a, [$d722]
    add $08
    ldh [$ff98], a

Jump_005_5b81:
jr_005_5b81:
    ld d, $fe
    call Call_005_5b66
    ret c

    ld d, $05
    call Call_005_5b66
    ret c

    ld d, $0c
    jr jr_005_5b66

Call_005_5b91:
    ld a, [$d163]
    or a
    jr nz, jr_005_5ba1

    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jp Jump_005_5b4c


jr_005_5ba1:
    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jp Jump_005_5b81


Call_005_5bab:
    ld a, [$d163]
    or a
    jr nz, jr_005_5bbb

    ld a, [$d722]
    add $06
    ldh [$ff98], a
    jp Jump_005_5b4c


jr_005_5bbb:
    ld a, [$d722]
    add $07
    ldh [$ff98], a
    jp Jump_005_5b81


    ld a, [$d14c]
    ld [$d14e], a
    ld a, [$d14d]
    ld [$d14f], a
    ld a, $0d
    ld [$de2c], a
    ld a, [$d148]
    ldh [rLYC], a
    ld a, $01
    ld [$dd31], a
    ret


    push bc
    ldh a, [rLYC]
    ld b, a
    ld a, [$d148]
    cp b
    jr z, jr_005_5c00

    ld a, [$d149]
    cp b
    jr z, jr_005_5c4f

    ld a, [$d14a]
    cp b
    jr z, jr_005_5c29

    ld a, [$d14b]
    cp b
    jr z, jr_005_5c71

    jp Jump_005_5c94


jr_005_5c00:
    ld a, [$d144]
    dec a
    ld b, a

jr_005_5c05:
    ldh a, [rLY]
    cp b
    jr c, jr_005_5c05

jr_005_5c0a:
    ldh a, [rSTAT]
    and $03
    jr z, jr_005_5c0a

jr_005_5c10:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_005_5c10

    ld a, [$d14e]
    ldh [rSCX], a
    ld a, [$d149]
    ld b, a
    ld a, [$d14a]
    cp b
    jr z, jr_005_5c44

    ldh [rLYC], a
    jr jr_005_5c94

jr_005_5c29:
    ld a, [$d146]
    dec a
    ld b, a

jr_005_5c2e:
    ldh a, [rLY]
    cp b
    jr c, jr_005_5c2e

jr_005_5c33:
    ldh a, [rSTAT]
    and $03
    jr z, jr_005_5c33

jr_005_5c39:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_005_5c39

    ld a, [$d7d1]
    ldh [rSCX], a

jr_005_5c44:
    ld a, [$d149]
    cp $c8
    jr nc, jr_005_5c8c

    ldh [rLYC], a
    jr jr_005_5c94

jr_005_5c4f:
    ld a, [$d145]
    dec a
    ld b, a

jr_005_5c54:
    ldh a, [rLY]
    cp b
    jr c, jr_005_5c54

jr_005_5c59:
    ldh a, [rSTAT]
    and $03
    jr z, jr_005_5c59

jr_005_5c5f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_005_5c5f

    ld a, [$d14f]
    ldh [rSCX], a
    ld a, [$d14b]
    ldh [rLYC], a
    jr jr_005_5c94

jr_005_5c71:
    ld a, [$d147]
    dec a
    ld b, a

jr_005_5c76:
    ldh a, [rLY]
    cp b
    jr c, jr_005_5c76

jr_005_5c7b:
    ldh a, [rSTAT]
    and $03
    jr z, jr_005_5c7b

jr_005_5c81:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_005_5c81

    ld a, [$d7d1]
    ldh [rSCX], a

jr_005_5c8c:
    ld a, $7f
    ldh [rLYC], a
    xor a
    ld [$de2c], a

Jump_005_5c94:
jr_005_5c94:
    pop bc
    ret


Call_005_5c96:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $05
    dec hl
    ld [hl], $5b
    dec hl
    ld [hl], $c5
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $05
    dec hl
    ld [hl], $5b
    dec hl
    ld [hl], $e1
    dec hl
    ld [hl], $c3
    ret


    nop
    ld bc, $0603
    ld a, [$d74e]
    cp $5a
    ld c, $00
    ret nz

    ldh a, [$ffaa]
    dec a
    jr nz, jr_005_5cfa

    ld a, $01
    ld [$d16c], a
    ld hl, $d16f
    ld a, [hl]
    inc [hl]
    or a
    jr nz, jr_005_5cfa

    ld a, [$d16d]
    or a
    jr nz, jr_005_5cfa

    ld hl, $d167
    ld a, [hl]
    ld [hl], $00
    ld hl, $d169
    add [hl]
    ld [hl], a
    call Call_005_5dc8
    ld hl, $d166
    ld [hl], $0c
    ld hl, $d16e
    ld [hl], $01

jr_005_5cfa:
    ld d, $05
    ldh a, [$ffaa]
    or a
    jr z, jr_005_5d09

    ld a, [$d16e]
    or a
    jr z, jr_005_5d09

    ld d, $10

jr_005_5d09:
    ldh a, [$ffaa]
    or a
    ld a, [$d168]
    jr nz, jr_005_5d16

    jr jr_005_5d16

    ld a, [$d16a]

jr_005_5d16:
    ld b, a
    add d
    ld e, a
    ld a, [$d751]
    and $0f
    cp b
    jr c, jr_005_5d28

    cp e
    jr nc, jr_005_5d28

    ld b, $03
    jr jr_005_5d2a

jr_005_5d28:
    ld b, $00

jr_005_5d2a:
    ld a, b
    ld [$d74e], a
    ld c, $01
    ret


Call_005_5d31:
    push hl
    ld hl, $d165
    ld bc, $000b
    xor a
    call Call_000_0174
    pop hl

jr_005_5d3d:
    ld a, [hl]
    or a
    ret z

    ld a, [$de8f]
    cp [hl]
    jr z, jr_005_5d49

    inc hl
    jr jr_005_5d3d

jr_005_5d49:
    ld a, $01
    ld [$d165], a
    ld b, $05
    ld de, $5cc2
    call Call_005_41ed
    call Call_005_5dc8
    ld hl, $d16e
    ld [hl], $02
    ret


Call_005_5d5f:
    ld hl, $d16c
    ld a, [hl]
    ld [hl], $00
    inc hl
    ld [hl], a
    ld hl, $d16f
    ld [hl], $00
    ld hl, $d16e
    ld a, [hl]
    or a
    jr z, jr_005_5d74

    dec [hl]

jr_005_5d74:
    xor a
    ld [$d16b], a
    ld hl, $d894
    ld a, $03
    cp [hl]
    jr z, jr_005_5d88

    inc hl
    cp [hl]
    jr z, jr_005_5d88

    inc hl
    cp [hl]
    jr nz, jr_005_5d8d

jr_005_5d88:
    ld a, $01
    ld [$d16b], a

jr_005_5d8d:
    ld hl, $d894
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$deaf]
    or a
    jr nz, jr_005_5de5

    ld hl, $d166
    call Call_000_01e9
    jr nz, jr_005_5de5

    ld [hl], $0c
    ld hl, $d167
    ld a, [hl]
    inc a
    cp $04
    jr c, jr_005_5dae

    xor a

jr_005_5dae:
    ld [hl], a
    jr z, jr_005_5dc8

    ld e, a
    ld a, [$d16b]
    or a
    jr z, jr_005_5dc8

    ld d, $00
    ld hl, $5cbe
    add hl, de
    ld a, [hl]
    ld hl, $d168
    sub [hl]
    ld hl, $d725
    add [hl]
    ld [hl], a

Call_005_5dc8:
jr_005_5dc8:
    ld hl, $d167
    ld e, [hl]
    ld d, $00
    ld hl, $5cbe
    add hl, de
    ld a, [hl]
    ld [$d168], a
    ld a, [$d169]
    add e
    and $03
    ld e, a
    ld hl, $5cbe
    add hl, de
    ld a, [hl]
    ld [$d16a], a

jr_005_5de5:
    ret


Call_005_5de6:
    xor a
    ld [$cca4], a
    ld a, [$de8f]
    ld c, a

jr_005_5dee:
    ld a, [hl+]
    or a
    ret z

    cp c
    jr nz, jr_005_5dee

    ld [$cca4], a
    ret


Call_005_5df8:
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a
    ld a, [$de9b]
    cp $0b
    ret nz

    ld a, [$d779]
    or a
    ret z

    ld a, [$d703]
    or a
    ld e, $f8
    jr z, jr_005_5e13

    ld e, $08

jr_005_5e13:
    ld d, $00
    push de
    call Call_005_5e1c
    pop de
    ld d, $f8

Call_005_5e1c:
    ld a, [$d722]
    add e
    ld e, a
    ldh [$ff9b], a
    ld a, [$d725]
    add d
    ld d, a
    ldh [$ff9c], a
    call Call_000_027f
    ldh [$ff8c], a
    ld b, a
    ld hl, $ff8e
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_005_5e36:
    ld a, [hl+]
    or a
    ret z

    cp b
    jr z, jr_005_5e3f

    inc hl
    jr jr_005_5e36

jr_005_5e3f:
    ld a, [hl]
    ldh [$ff8d], a
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ldh a, [$ff9b]
    add e
    push af
    and $f0
    add $07
    ldh [$ffa3], a
    ld c, a
    sub e
    ldh [$ff9b], a
    pop af
    ld a, $00
    adc d
    ldh [$ffa4], a
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    ld a, c
    ldh [$ff98], a
    ldh a, [$ff9c]
    and $f0
    add $07
    ld d, a
    ldh [$ff9c], a
    swap a
    and $0f
    ldh [$ff9a], a
    ldh a, [$ff98]
    ld e, a
    ldh a, [$ff9a]
    ld d, a
    ld c, $01
    ld b, $01
    ld hl, $ff8d
    call Call_000_0246
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    ret


Call_005_5e9e:
jr_005_5e9e:
    ld a, [hl]
    cp $08
    ret nc

    inc [hl]
    ld c, a
    ld l, e
    ld h, d
    bit 0, b
    jr nz, jr_005_5eb0

    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl+]
    ldh [$ff9c], a

jr_005_5eb0:
    ld a, [hl+]
    ldh [$ff98], a
    ld e, a
    ld a, [hl+]
    ldh [$ff9a], a
    dec a
    sub c
    ld c, a
    ldh [$ff8b], a
    ld b, $00
    ld d, $00

jr_005_5ec0:
    ld a, c
    or a
    jr z, jr_005_5ec8

    add hl, de
    dec c
    jr jr_005_5ec0

jr_005_5ec8:
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ldh a, [$ff8b]
    add d
    ld d, a
    ldh a, [$ff98]
    ld c, a
    ld b, $01
    jp Jump_000_0246


Jump_005_5eda:
    ld de, $5ee1
    ld b, $01
    jr jr_005_5e9e

    dec bc
    ld [$0910], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld c, $47
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    dec bc
    db $10
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rrca
    db $10
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rrca
    db $10
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rrca
    db $10
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rrca
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    db $10
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ccf
    ld e, a
    ld b, l
    ld e, a
    ld b, [hl]
    ld e, a
    ld b, [hl]
    ld e, a
    ld b, [hl]
    ld e, a
    rst $38
    inc de
    ret z

    ld e, a
    ld h, c
    ld h, b
    ld h, h
    ld e, a
    ld l, c
    ld e, a
    daa
    nop
    ld b, e
    ld d, h
    ld e, a
    ld bc, $5f65
    ld l, h
    ld e, a
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld b, d
    ld [$0060], sp
    nop
    ret


    call Call_005_60f3
    ret


    jp Jump_005_60fd


    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    dec bc
    dec bc
    inc c
    dec c
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0f0e
    db $10
    ld de, $0f0e
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $17
    jr jr_005_5fcf

    jr jr_005_5fd1

    jr jr_005_5fd3

    jr jr_005_5fd5

    add hl, de
    ld a, [de]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    inc e
    ld h, $00
    nop
    nop
    nop
    dec c
    dec c

jr_005_5fcf:
    ld c, $0e

jr_005_5fd1:
    dec c
    dec c

jr_005_5fd3:
    ld c, $0e

jr_005_5fd5:
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    inc b
    rlca
    dec b
    ld [$0906], sp
    dec c
    dec c
    ld a, [bc]
    ld c, $0b
    dec c
    inc c
    ld c, $0d
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    ccf
    ld b, b
    ccf
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    ld de, $1219
    ld a, [de]
    inc de
    dec de
    inc d
    inc e
    dec d
    dec e
    ld d, $1e
    rla
    rra
    jr jr_005_6031

    inc bc
    ld hl, $2203
    inc hl
    dec h
    inc h
    ld h, $43
    ld b, l
    ld b, c
    inc bc
    ld b, c
    inc bc
    ld b, c
    inc bc
    ld b, c
    inc bc
    ld b, h
    ld b, [hl]
    ld b, l
    ld b, l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, [hl]
    ld b, [hl]

jr_005_6031:
    ld b, l
    ld b, a
    inc bc
    ld b, d
    inc bc
    ld b, d
    inc bc
    ld b, d
    inc bc
    ld b, d
    ld b, [hl]
    ld c, b
    nop
    dec hl
    daa
    inc l
    jr z, jr_005_6046

    add hl, hl
    inc bc
    ld a, [hl+]

jr_005_6046:
    dec l
    nop
    ld l, $2f
    inc sp
    jr nc, jr_005_6081

    inc bc
    dec [hl]
    inc bc
    ld [hl], $31
    scf
    ld [hl-], a
    jr c, jr_005_608f

    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    dec sp
    ld [bc], a
    inc a
    ld [bc], a
    dec a
    ld [bc], a
    ld a, $02
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
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
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop

jr_005_6081:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc bc
    jr jr_005_60a6

    add hl, de
    add hl, de

jr_005_608f:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec e
    ld e, $1f
    rra
    rra
    rra
    rra
    rra

jr_005_60a6:
    rra
    rra
    jr nz, jr_005_60aa

jr_005_60aa:
    nop
    ld a, [bc]
    inc bc
    stop
    ld d, $00
    ld c, $00
    rla
    ld d, $0f
    ld d, $15
    ld c, $0f
    inc de
    db $10
    ld [de], a
    ld d, $10
    rla
    dec d
    nop
    rla
    ld c, $11
    dec c
    ld c, $0f
    nop
    rrca
    ld c, $01
    rst $08
    ld h, b
    nop
    push de
    ld h, b
    db $e4
    ld h, b
    nop
    nop
    ldh [rIE], a
    inc b
    ld a, [bc]
    ld bc, $1212
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ret nz

    rst $38
    dec b
    ld a, [bc]
    ld bc, $1313
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

Call_005_60f3:
    ld hl, $60cb
    call Call_005_579d
    call Call_005_624c
    ret


Jump_005_60fd:
    call Call_005_6187
    ld a, [$d140]
    or a
    call z, Call_005_585a
    ld hl, $d159
    bit 0, [hl]
    jr nz, jr_005_612b

    ld [hl], $ff
    ld hl, $9980
    ld bc, $00c0
    ld a, $00
    call Call_000_0186
    ld a, $a0
    ldh [rWY], a
    ld a, $e3
    ld [$de97], a
    xor a
    ld [$d1e0], a
    ld [$df09], a

jr_005_612b:
    call Call_005_628d
    ret


Jump_005_612f:
    call Call_005_6137
    ld a, $1a
    jp Jump_000_0297


Call_005_6137:
    ld a, $01
    ld [$cca6], a
    ld b, $00
    ld e, b
    ld d, b
    ld c, $04
    call Call_005_403b
    call Call_005_4055
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ld [wPrimaryWeaponModeFlags], a
    ret


Call_005_6155:
Jump_005_6155:
    ld [$cf7b], a
    ld a, $50
    ld [$cf86], a
    ld a, $3c
    ld [$de88], a
    ld a, $02
    ld [$cf7c], a
    xor a
    ld [$cf7d], a
    ld [$cf7e], a
    ld de, $6182
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $05
    call Call_000_02d3
    xor a
    ld [$de88], a
    ret


    ld a, $3c
    ld [$de88], a

Call_005_6187:
Jump_005_6187:
    ld a, [$de92]
    bit 3, a
    ret z

    rst $28
    ld l, $31
    cp $ff
    call Call_005_6137
    jp Jump_000_02df


jr_005_6198:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_005_61a3
    pop bc
    jr jr_005_6198

Call_005_61a3:
Jump_005_61a3:
    call Call_000_01c5
    call Call_000_01c8
    jp Jump_005_6187


Call_005_61ac:
jr_005_61ac:
    ld a, [$cca8]
    and $07
    ret z

    call Call_005_61a3
    jr jr_005_61ac

    cp $65
    ld h, e
    ld b, $00
    cp $bd
    ld h, e
    ld [$7800], a
    nop
    cp $c0
    ld h, e
    ld b, b
    nop
    ld l, b
    nop
    cp $c6
    ld h, e
    cp $c9
    ld h, e
    inc a
    nop
    cp $fd
    ld h, e
    cp $3c
    ld h, h
    inc a
    nop
    cp $4a
    ld h, h
    cp $3d
    ld h, d
    ld bc, $fe00
    ld d, l
    ld h, h
    cp $42
    ld h, d
    ld e, $00
    cp $5a
    ld h, h
    ld e, $00
    cp $77
    ld h, h
    cp $78
    ld h, h
    inc a
    nop
    cp $93
    ld h, h
    jr z, jr_005_61fc

jr_005_61fc:
    cp $99
    ld h, h
    cp $bb
    ld h, h
    dec b
    nop
    cp $45
    ld h, l
    ld e, d
    nop
    cp $d8
    ld h, h
    inc a
    nop
    cp $52
    ld h, l
    cp $5f
    ld h, l
    ld a, [bc]
    nop
    ld bc, $3c02
    nop
    ld bc, $2802
    nop
    ld d, b
    nop
    or h
    ld [bc], a
    ld bc, $fe00
    sub e
    ld h, h
    cp $6c
    ld h, l
    inc a
    nop
    cp $7e
    ld h, l
    or h
    nop
    cp $84
    ld h, l
    cp $92
    ld h, l
    ld a, b
    nop
    cp $9c
    ld h, l
    nop

Call_005_623d:
    ld a, $60
    ldh [rWY], a
    ret


    ld a, $a0
    ldh [rWY], a
    ld a, $08
    ld [$d165], a
    ret


Call_005_624c:
    ld a, $01
    ld [$de9a], a
    ld a, $ff
    ld [$de99], a
    ld a, $10
    ld de, $8000
    call Call_000_020d
    ld a, $11
    ld de, $8240
    call Call_000_020d
    ld hl, $c800
    ld bc, $0028
    xor a
    call Call_000_0174
    call Call_005_65dd
    ld de, $61b7
    call Call_005_4065
    ld hl, $c811
    call Call_005_40e6
    ld hl, $c827
    ld [hl], $40
    call Call_005_6359
    ld a, $98
    ld [$de9e], a
    ret


Call_005_628d:
    ld a, $01
    ld [$de29], a
    ld a, [$deaf]
    or a
    jr nz, jr_005_62a1

    call Call_005_4079
    jp c, Jump_005_612f

    call Call_005_62a2

jr_005_62a1:
    ret


Call_005_62a2:
    ld a, [$d73a]
    or a
    jr z, jr_005_62c6

    ld hl, $d735
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    jr z, jr_005_62c6

    bit 7, d
    jr nz, jr_005_62b8

    call Call_000_016b

jr_005_62b8:
    ld a, [$c804]
    add $30
    ld [$c804], a
    jr nc, jr_005_62c3

    inc de

jr_005_62c3:
    ld [hl], d
    dec hl
    ld [hl], e

jr_005_62c6:
    ld hl, $d731
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c802]
    or a
    jr z, jr_005_62d7

    ld a, $70
    ld [$d73a], a

jr_005_62d7:
    ld a, [$c814]
    or a
    jr z, jr_005_632a

    ld a, [$c805]
    ld e, a
    ld a, [$c806]
    ld d, a
    ld hl, $c807
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c807], a
    ld a, h
    ld [$c808], a
    ld a, [$c809]
    ld e, a
    ld a, [$c80a]
    ld d, a
    add hl, de
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    ld a, [$c80b]
    ld e, a
    ld a, [$c80c]
    ld d, a
    ld hl, $c80d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c80d], a
    ld a, h
    ld [$c80e], a
    ld a, [$c80f]
    ld e, a
    ld a, [$c810]
    ld d, a
    ld hl, $c811
    call Call_005_40ed

jr_005_632a:
    ld a, [$c825]
    or a
    jr z, jr_005_6355

    ld a, [$c81c]
    ld e, a
    ld a, [$c81d]
    ld d, a
    ld hl, $c81e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c81e], a
    ld a, h
    ld [$c81f], a
    ld a, [$c820]
    ld e, a
    ld a, [$c821]
    ld d, a
    ld hl, $c822
    call Call_005_40ed

jr_005_6355:
    call Call_005_66d8
    ret


Call_005_6359:
    ld hl, $c811
    jp Jump_005_40e6


Call_005_635f:
    ld hl, $c822
    jp Jump_005_40e6


    ld a, $24
    ld [$c80e], a
    ld a, $47
    ld [$c80a], a
    ld a, $04
    ld [$c80b], a
    ld a, $00
    ld [$c80c], a
    ld a, $05
    ld [$c80f], a
    ld a, $67
    ld [$c810], a
    ld a, $01
    ld [$c814], a
    ld [$c815], a
    ld a, $0c
    ld [$c81f], a
    ld a, $47
    ld [$c81b], a
    ld a, $04
    ld [$c81c], a
    ld a, $00
    ld [$c81d], a
    ld a, $db
    ld [$c820], a
    ld a, $67
    ld [$c821], a
    ld a, $01
    ld [$c825], a
    ld [$c826], a
    ret


    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $06
    jp Jump_005_403b


    rst $28
    ld a, $c9
    ld a, $01
    ld [$d165], a
    ret


    rst $08
    ld [hl], a
    ret


    ld a, $00
    ld [$c80b], a
    ld a, $00
    ld [$c80c], a
    ld a, $17
    ld [$c80f], a
    ld a, $67
    ld [$c810], a
    call Call_005_6359
    ld a, $00
    ld [$c81c], a
    ld a, $00
    ld [$c81d], a
    ld a, $e3
    ld [$c820], a
    ld a, $67
    ld [$c821], a
    call Call_005_635f
    ld a, $01
    ld [$d140], a
    ret


    ld a, [$c80e]
    add $f4
    ld b, a
    ld a, [$c81f]
    cp b
    jr c, jr_005_6425

    ld a, b
    ld [$c81f], a
    ld a, $00
    ld [$c81c], a
    ld a, $00
    ld [$c81d], a
    ld a, $e3
    ld [$c820], a
    ld a, $67
    ld [$c821], a
    call Call_005_635f
    ret


jr_005_6425:
    ld a, $f0
    ld [$c820], a
    ld a, $67
    ld [$c821], a
    ld a, $80
    ld [$c81c], a
    ld a, $00
    ld [$c81d], a
    jp Jump_005_40e0


    ld a, $0d
    ld [$c80f], a
    ld a, $67
    ld [$c810], a
    call Call_005_6359
    ret


    ld a, $80
    call Call_005_6155
    ld a, $3c
    ld [$de88], a
    ret


    ld a, $19
    jp Jump_005_6155


    ld a, $40
    ld [$c81c], a
    ld a, $ff
    ld [$c81d], a
    ld a, $e8
    ld [$c820], a
    ld a, $67
    ld [$c821], a
    call Call_005_635f
    ld a, $00
    ld [$c826], a
    ret


    ret


    ld a, [$c81f]
    cp $f0
    jp nc, Jump_005_40e0

    cp $e8
    jp c, Jump_005_40e0

    ld hl, $c827
    ld a, [hl]
    ld [hl], $40
    call Call_000_01a7
    xor a
    ld [$c825], a
    ret


    ld a, $02
    ld [$d165], a
    ret


    ld a, $34
    ld [$c805], a
    ld a, $00
    ld [$c806], a
    ld a, $40
    ld [$c807], a
    ld a, $fc
    ld [$c808], a
    ld a, $12
    ld [$c80f], a
    ld a, $67
    ld [$c810], a
    call Call_005_6359
    ret


    ld a, [$c808]

jr_005_64be:
    bit 7, a
    jp nz, Jump_005_40e0

    ld a, $00
    ld [$c805], a
    ld a, $00
    ld [$c806], a
    ld a, $00
    ld [$c807], a
    ld a, $00
    ld [$c808], a
    ret


    call Call_005_6702
    ld a, $01
    ld [$c801], a
    call Call_005_66d8
    ld b, $00
    ld e, $ff
    ld d, $00
    ld c, $04
    call Call_005_403b
    ld b, $08
    call Call_005_66c7
    call Call_005_6702
    call Call_005_61ac
    call Call_005_6702
    ld b, $04
    call Call_005_66c7
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $06
    call Call_005_403b
    rst $08
    jr jr_005_64be

    ld [$c814], a
    call Call_005_402c
    call Call_005_66d2
    ld b, $00
    ld a, $0d
    call Call_000_01cb
    ld a, [$c80e]
    add $02
    ld e, a
    ld a, [$c80a]
    add $f5
    ld d, a
    call Call_005_4014
    ld a, $0c
    ld [$d70a], a
    xor a
    ld [$d74b], a
    xor a
    ld hl, $d729
    ld [hl+], a
    ld [hl+], a
    ld [$d724], a
    xor a
    ld [$d785], a
    ret


    ld a, $5a
    ld [$c801], a
    ld [$c800], a
    xor a
    ld [$c803], a
    ret


    xor a
    ld [$d77e], a
    ld [$d739], a
    ld hl, $d72b
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, [$d74b]
    cp $01
    jp nz, Jump_005_40e0

    xor a
    ld [$d74a], a
    ret


    ld a, [$d73a]
    or a
    jp z, Jump_005_40e0

    cp $80
    jp nz, Jump_005_40e0

    ld a, $01
    ld [$c802], a
    ret


    ld a, $08
    call Call_005_400d
    ret


    rst $28
    dec l
    ld b, $00
    ld e, $1c
    ld d, $00
    ld c, $0c
    call Call_005_403b
    ret


    ldh a, [rOBP1]
    or a
    jp nz, Jump_005_40e0

    ld [$c398], a
    ret


    ld a, $0f
    ld [$d165], a
    ld hl, $9800
    ld bc, $0180
    ld a, $03
    call Call_000_0186
    ld d, $02
    rst $28
    add hl, sp
    call Call_005_623d
    ld a, $80
    call Call_005_6155
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $0c
    call Call_005_403b
    call Call_005_61ac
    ld a, $1a
    call Call_005_6155
    ld a, $01
    ld [$cca6], a
    ld b, $00
    ld e, b
    ld d, b
    ld c, $0c
    call Call_005_403b
    call Call_005_61ac
    ret


Call_005_65dd:
    ld hl, $d785
    ld [hl], $05
    inc hl
    ld [hl], $ee
    inc hl
    ld [hl], $65
    ld a, $01
    ld [$d77e], a
    ret


    call Call_005_6686
    ld a, [$c814]
    or a
    ret z

    ld a, [$c811]
    ld hl, $671c
    call Call_000_016e
    ld c, l
    ld b, h
    ld a, [$c80e]
    ld [$d722], a
    ld a, [$c80a]
    ld [$d725], a
    ld a, [$c815]
    ld [$d703], a
    ld a, [$d722]
    add $08
    ld e, a
    ld a, [$d725]
    add $10
    ld d, a
    ld hl, $c000
    ld a, [$d703]
    or a
    jp nz, Jump_005_665b

    xor a
    ldh [$ffab], a

jr_005_662c:
    ld a, [bc]
    cp $80
    jr z, jr_005_664d

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
    ld [hl+], a
    push hl
    ld a, [bc]
    inc bc
    ld hl, $ffab
    xor [hl]
    pop hl
    ld [hl+], a
    ld a, l
    cp $28
    jr c, jr_005_662c

    jr jr_005_665a

jr_005_664d:
    ld de, $0004

jr_005_6650:
    ld a, l
    cp $28
    jr nc, jr_005_665a

    ld [hl], $c0
    add hl, de
    jr jr_005_6650

jr_005_665a:
    ret


Jump_005_665b:
    ld a, $20
    ldh [$ffab], a
    ld a, e
    sub $07
    ld e, a

jr_005_6663:
    ld a, [bc]
    cp $80
    jr z, jr_005_664d

    inc bc
    add d
    ld d, a
    ld [hl+], a
    ld a, [bc]
    inc bc
    sub e
    cpl
    inc a
    ld e, a
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    push hl
    ld a, [bc]
    inc bc
    ld hl, $ffab
    xor [hl]
    pop hl
    ld [hl+], a
    ld a, l
    cp $28
    jr c, jr_005_6663

    jr jr_005_665a

Call_005_6686:
    ld a, [$c825]
    or a
    ret z

    ld a, [$c827]
    cp $40
    jr c, jr_005_669a

    ld a, $09
    call Call_000_01a4
    ld [$c827], a

jr_005_669a:
    ld a, [$c81f]
    ldh [$ff9b], a
    ld a, [$c81b]
    ldh [$ff9c], a
    xor a
    ldh [$ffab], a
    ld a, [$c826]
    or a
    jr z, jr_005_66af

    ld a, $20

jr_005_66af:
    ld [$d3ea], a
    ld a, $24
    ldh [$ffac], a
    ld a, [$c822]
    ld hl, $67f8
    call Call_000_016e
    ld c, l
    ld b, h
    ld a, [$c827]
    jp Jump_000_0210


Call_005_66c7:
jr_005_66c7:
    ld a, b
    or a
    ret z

    push bc
    call Call_005_66d2
    pop bc
    dec b
    jr jr_005_66c7

Call_005_66d2:
    call Call_005_66d8
    jp Jump_005_61a3


Call_005_66d8:
    ld a, [$c800]
    or a
    ret z

    ld d, $1b
    ld hl, $c801
    ld a, [hl]
    or a
    jr z, jr_005_66f3

    dec [hl]
    jr nz, jr_005_66ed

    xor a
    ld [$c800], a

jr_005_66ed:
    bit 2, [hl]
    jr z, jr_005_66f3

    ld d, $06

jr_005_66f3:
    ld a, d
    ld [$de96], a
    ld hl, $c803
    ld a, [hl]
    or a
    jr z, jr_005_6700

    dec [hl]
    ret


jr_005_6700:
    ld [hl], $08

Call_005_6702:
    rst $08
    ld a, [de]
    ret


    inc e
    ld h, a
    inc c
    nop
    ld bc, $0102
    rst $38
    inc e
    ld h, a
    ldh a, [$ff03]
    rst $38
    inc e
    ld h, a
    ldh a, [rDIV]
    rst $38
    inc e
    ld h, a
    ldh a, [rSB]
    rst $38
    ld h, $67
    ld b, a
    ld h, a
    ld l, b
    ld h, a
    adc c
    ld h, a
    or d
    ld h, a
    db $eb
    ld hl, sp+$00
    nop
    nop
    ld [$0001], sp
    ld [$02f8], sp
    nop
    nop
    ld [$0003], sp
    ld [$04f8], sp
    nop
    nop
    ld [$0005], sp
    ld [$06f8], sp
    nop
    nop
    ld [$0007], sp
    add b
    ld [$00f8], a
    nop
    nop
    ld [$0001], sp
    ld [$02f8], sp
    nop
    nop
    ld [$0003], sp
    ld [$08f8], sp
    nop
    nop
    ld [$0009], sp
    ld [$0af8], sp
    nop
    nop
    ld [$000b], sp
    add b
    db $eb
    ld hl, sp+$00
    nop
    nop
    ld [$0001], sp
    ld [$02f8], sp
    nop
    nop
    ld [$0003], sp
    ld [$0cf8], sp
    nop
    nop
    ld [$000d], sp
    ld [$0ef8], sp
    nop
    nop
    ld [$000f], sp
    add b
    ld [$10f6], a
    nop
    ld [$11f8], sp
    nop
    nop
    ld [$0012], sp
    nop
    ld [$0013], sp
    ld [$14f0], sp
    nop
    nop
    ld [$0015], sp
    nop
    ld [$0016], sp
    ld [$17f0], sp
    nop
    nop
    ld [$0018], sp
    nop
    ld [$0019], sp
    add b
    db $eb
    db $ec
    ld a, [de]
    nop
    nop
    ld [$001b], sp
    nop
    ld [$001c], sp
    nop
    ld [$001d], sp
    ld [$1ef0], sp
    nop
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$21f0], sp
    nop
    nop
    ld [$0022], sp
    ld [$2300], sp
    nop
    add b
    ld hl, sp+$67
    ld a, [bc]
    nop
    ld bc, $0102
    rst $38
    ld hl, sp+$67
    ldh a, [$ff03]
    rst $38
    ld hl, sp+$67
    inc b
    nop
    ld bc, $0102
    rst $38
    ld hl, sp+$67
    inc b
    nop
    ld bc, $0102
    rst $38
    nop
    ld l, b
    dec e
    ld l, b
    ld b, d
    ld l, b
    ld h, e
    ld l, b
    ld [$00f8], a
    nop
    ld [$01ff], sp
    nop
    nop
    ld [$0002], sp
    ld [$03f7], sp
    nop
    nop
    ld [$0004], sp
    ld [$05f8], sp
    nop
    nop
    ld [$0006], sp
    add b
    ld [$07f8], a
    nop
    nop
    ld [$0008], sp
    ld [$09f0], sp
    nop
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    ld [$0cf7], sp
    nop
    nop
    ld [$000d], sp
    ld [$0ef8], sp
    nop
    nop
    ld [$000f], sp
    add b
    ld [$00f8], a
    nop
    ld [$1000], sp
    nop
    nop
    ld [$0011], sp
    ld [$12f8], sp
    nop
    nop
    ld [$0013], sp
    ld [$14f8], sp
    nop
    nop
    ld [$0015], sp
    pop af
    ldh a, [$ff09]
    nop
    add b
    db $eb
    ld hl, sp+$07
    nop
    nop
    ld [$0008], sp
    ld [$09f0], sp
    nop
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    ld [$0cf7], sp
    nop
    nop
    ld [$000d], sp
    ld [$16f8], sp
    nop
    nop
    ld [$0017], sp
    add b
    ld b, l
    rrca
    sub h
    ld l, b
    ld [de], a
    ld e, h
    db $e4
    ld l, h
    nop
    jr nz, jr_005_6897

    ld l, h
    inc a
    nop
    ld e, d

jr_005_6897:
    inc a
    add c
    ld b, d
    db $d3
    ld e, d
    bit 2, d
    add c
    ld b, d
    ld e, d
    inc a
    inc a
    nop
    ld [hl+], a
    ld b, a
    ld c, b
    ret nc

    sub h
    jr nc, jr_005_68f5

    inc l
    ld b, h
    dec e
    ld sp, $938b
    add a
    add hl, bc
    add a
    sbc c
    ld a, [bc]
    ld h, h
    dec l
    db $10
    ld [hl], $49
    sbc d
    and c
    call z, $e4c2
    jp nc, $84c0

    xor c
    ld d, b
    cpl
    cpl
    ld a, a
    ld d, b
    cpl
    cpl
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
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
    xor d
    xor d
    xor d
    ld a, [bc]
    db $f4
    db $f4
    cp $0a
    db $f4
    db $f4
    nop
    nop
    nop
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    sbc c

jr_005_68f5:
    ld d, b
    ld h, $b4
    ld [$926c], sp
    ld e, c
    add l
    inc sp
    ld b, e
    daa
    ld c, e
    inc bc
    ld hl, $a495
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    and h
    nop
    and h
    nop
    and c
    nop
    and d
    dec b
    and c
    rrca
    sub l
    rrca
    adc d
    rra
    xor d
    rra
    dec b
    nop
    ld a, [hl+]
    nop
    ld [$2a15], a
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    inc b
    nop
    xor d
    nop
    xor d
    ld d, l
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    adc d
    ccf
    sub l
    ccf
    ld d, l
    ccf
    dec d
    ld a, a
    ld d, l
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    ld a, a
    ld d, l
    ld a, a
    dec d
    ld a, a
    ld d, l
    ccf
    sub l
    ccf
    adc d
    ccf
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rra
    adc d
    rra
    sub l
    rrca
    and c
    rrca
    and d
    dec b
    and c
    nop
    and h
    nop
    and h
    nop
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld [$2a15], a
    nop
    dec b
    nop
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    ld d, l
    xor d
    nop
    inc b
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and e
    nop
    and h
    inc bc
    and b
    rrca
    dec h
    nop
    dec h
    nop
    jr nz, jr_005_69da

jr_005_69da:
    dec d
    nop
    push af
    ld a, [bc]
    ld d, l
    xor d
    dec d
    rst $38
    ld d, l
    rst $38
    and h
    nop
    and h
    nop
    and b
    nop
    ld d, l
    nop
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    rst $38
    ld d, l
    rst $38
    sub c
    rrca
    add d
    rra
    xor d
    rra
    adc d
    ccf
    adc d
    ccf
    ld d, l
    ccf
    dec d
    ld a, a
    dec d
    ld a, a
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    dec d
    ld a, a
    dec d
    ld a, a
    ld d, l
    ccf
    adc d
    ccf
    adc d
    ccf
    xor d
    rra
    add d
    rra
    sub c
    rrca
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    and b
    rrca
    and h
    inc bc
    and e
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    ld d, l
    rst $38
    dec d
    rst $38
    ld d, l
    xor d
    push af
    ld a, [bc]
    dec d
    nop
    jr nz, jr_005_6a50

jr_005_6a50:
    dec h
    nop
    dec h
    nop
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    nop
    and b
    nop
    and h
    nop
    and h
    nop
    jr nz, jr_005_6a66

jr_005_6a66:
    ld d, l
    nop
    ld d, l
    xor d
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    and b
    nop
    ld d, h
    nop
    ld d, a
    xor b
    ld d, h
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    dec h
    nop
    dec h
    nop
    add l
    nop
    ld b, l
    and b
    add l
    ldh a, [$ffa9]
    ldh a, [rHDMA1]
    ld hl, sp+$55
    ld hl, sp+$51
    db $fc
    xor c
    db $fc
    xor d
    db $fc
    xor b
    cp $aa
    cp $54
    cp $54
    cp $54
    cp $54
    cp $54
    cp $54
    cp $aa
    cp $a8
    cp $aa
    db $fc
    xor c
    db $fc
    ld d, c
    db $fc
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    xor d
    ld d, l
    nop
    jr nz, jr_005_6ac4

jr_005_6ac4:
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    ld d, a
    xor b
    ld d, h
    nop
    and b
    nop
    ld d, l
    ld hl, sp+$51
    ld hl, sp-$57
    ldh a, [$ff85]
    ldh a, [rLYC]
    and b
    add l
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec b
    nop
    xor d
    nop
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    rst $38
    xor d
    rst $38
    and h
    nop
    and h
    nop
    inc b
    nop
    xor b
    nop
    xor a
    ld d, b
    xor d
    ld d, l
    xor b
    rst $38
    xor d
    rst $38
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    push bc
    nop
    dec h
    ret nz

    dec b
    ldh a, [$ff89]
    ldh a, [rSTAT]
    ld hl, sp+$55
    ld hl, sp+$51
    db $fc
    ld d, c
    db $fc
    xor d
    db $fc
    xor b
    cp $a8
    cp $a8
    cp $a8
    cp $aa
    db $fc
    ld d, c
    db $fc
    ld d, c
    db $fc
    ld d, l
    ld hl, sp+$41
    ld hl, sp-$77
    ldh a, [$ffaa]
    rst $38
    xor d
    rst $38
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    nop
    dec b
    nop
    dec h
    nop
    dec h
    nop
    xor d
    rst $38
    xor b
    rst $38
    xor d
    ld d, l
    xor a
    ld d, b
    xor b
    nop
    inc b
    nop
    and h
    nop
    and h
    nop
    dec b
    ldh a, [rNR51]
    ret nz

    push bc
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    ld b, h
    ldh [c], a
    ld [de], a
    dec bc
    add hl, hl
    inc c
    ld d, d
    inc [hl]
    ld [hl+], a
    cp b
    adc h
    pop de
    ret


    pop hl
    sub b
    pop hl
    sub h
    dec bc
    ld e, d
    inc b
    dec l
    ld h, b
    sub b
    jr nc, jr_005_6bc6

    ret c

    ld hl, $066c
    or b
    sbc b
    ld b, c
    ld de, $2851
    and c
    dec d
    ld e, b
    ld a, [bc]
    cp b
    ld h, h
    ld d, $21
    inc c
    ld a, [de]
    inc bc
    and h
    jp nz, Jump_000_003f

    ld b, b
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld b, b
    ccf
    ccf
    nop
    ei
    nop
    nop
    ei
    rst $38
    ei
    rst $18
    db $ed
    rst $28

jr_005_6bad:
    call $fbff
    nop
    ei
    ei
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
    nop
    rst $38
    rst $38
    nop
    rst $18
    nop

jr_005_6bc6:
    nop
    rst $18
    rst $38
    rst $18
    rst $30
    cp e
    ei
    or e
    rst $38
    rst $18
    nop
    rst $18
    rst $18
    nop
    db $fc
    nop
    ld [bc], a
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $02
    db $fc
    db $fc
    nop
    adc b
    adc d
    inc d
    add l
    xor b
    ld a, [de]
    ld d, b
    dec e
    ld h, $68
    add h
    jr nc, jr_005_6c49

    ret nz

    dec h
    ld b, e
    add hl, hl
    ret nc

    ld e, d
    jr nz, jr_005_6bad

    ld b, $09
    inc c
    sub d
    dec de
    add h
    ld [hl], $60
    dec c
    add hl, de
    add d
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
    ld bc, $0e00
    ld bc, $0f31
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
    ret nz

    ccf
    ccf
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
    db $fc
    nop
    inc bc
    db $fc
    db $fc
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
    add b
    nop
    ld [hl], b
    add b
    adc h
    ldh a, [rP1]
    nop
    ld bc, $0200

jr_005_6c49:
    ld bc, $0305
    dec bc
    rlca
    dec bc
    rlca
    rla
    rrca
    rla
    rrca
    nop
    nop
    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    ret nc

    ldh [$ffd0], a
    ldh [$ffe8], a
    ldh a, [$ffe8]
    ldh a, [$ff2f]
    rra
    cpl
    rra
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    db $f4
    ld hl, sp-$0c
    ld hl, sp-$06
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$fdfc]
    cp $fd
    cp $06
    ld bc, $0001
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
    ld a, a
    ldh a, [$ff1f]
    db $fc
    jp Jump_000_303f


    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh [$ff7f], a
    rst $38
    nop
    sbc a
    ld a, a
    ldh [$ff1f], a
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld hl, sp+$07
    cp $ff
    nop
    ld sp, hl
    cp $07
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    cp $0f
    ld hl, sp+$3f
    jp Jump_000_0cfc


    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
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
    ld a, a
    nop
    cp a
    ld a, a
    xor [hl]
    ld e, a
    db $dd
    ld [hl], $be
    ld c, a
    cp a
    ld a, a
    ld a, a
    nop
    ld e, a
    ccf
    rst $38
    nop
    rst $38
    rst $38
    cp e
    ld a, h
    rst $30
    db $db
    ei
    inc a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    db $dd
    ld a, $eb
    db $dd
    db $dd
    ld a, $ff
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    cp $00
    jp hl


    cp $6d
    ldh a, [c]
    ei
    xor h
    db $ed
    ld [hl], d
    jp hl


    cp $fe
    nop
    jp nc, Jump_000_0ffc

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
    jr nz, jr_005_6d6d

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

jr_005_6d6d:
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
    ld e, a
    rrca
    add hl, bc
    ld l, [hl]
    nop
    nop
    nop
    ld a, b
    rst $20
    sbc $39
    scf
    adc $0d
    di
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $00fe
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    add b
    ld a, a
    rst $38
    ldh [$ff3f], a
    rst $18
    ld h, b
    nop
    nop
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    ld bc, $fffe

jr_005_6e45:
    rlca
    db $fc
    ei
    ld b, $00
    nop
    ld e, $e7
    ld a, e
    sbc h
    db $ec
    ld [hl], e
    or b
    rst $08
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    nop
    nop
    ld a, a
    nop
    nop
    add b
    rra
    ret nz

    nop
    ldh [rTAC], a
    ldh a, [rP1]
    ld hl, sp+$01
    db $fc
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
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rlca
    ld a, [$ba47]
    rst $00
    ld a, [hl-]
    ld b, a
    cp d
    and b
    rst $18
    ld e, b
    cp b
    and a
    ld h, a
    ld e, b
    call c, $d050
    jr nz, jr_005_6e45

    nop
    and b
    nop
    add b
    nop
    rst $38
    nop
    nop
    nop
    ret nc

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
    dec b
    ei
    ld a, [de]
    dec e
    dec b
    ld b, $02
    inc bc
    ld [bc], a
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $00ff
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    ldh [$ff5f], a
    ldh [c], a
    ld e, l
    db $e3
    ld e, h
    ldh [c], a
    ld e, l
    cp $00
    db $fc
    cp $00
    cp $fe
    nop
    nop
    cp $00
    cp $00
    cp $80
    ld a, [hl]
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
    nop
    nop
    ld a, h
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
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, l
    dec b
    ld a, e
    dec bc
    ld [hl], a
    rla
    ld l, a
    dec bc
    ld [hl], a
    dec b
    ld a, e
    ld [bc], a
    ld a, l
    ld bc, $c77e
    cp d
    rst $00
    cp d
    rst $00
    cp d
    rst $00
    cp d
    rst $00
    cp d
    rst $00
    cp d
    rst $00
    cp d
    ld b, a
    cp d
    nop
    and b
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    dec b
    nop
    ld bc, $5de3
    db $e3
    ld e, l
    db $e3
    ld e, l
    db $e3
    ld e, l
    db $e3
    ld e, l
    db $e3
    ld e, l
    db $e3
    ld e, l
    ldh [c], a
    ld e, l
    ld b, b
    cp [hl]
    and b
    sbc $d0
    xor $e8
    or $d0
    xor $a0
    sbc $40
    cp [hl]
    add b
    ld a, [hl]
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
    nop
    ld d, l
    nop
    ld d, l
    nop
    rst $00
    ld a, [hl-]
    ld b, a
    cp d
    rlca
    ld a, [$02ff]
    cp $ff
    ld bc, $ffff
    nop
    ld bc, $00fe
    add b
    nop
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    ld e, b
    cp b
    and b
    rst $18
    rst $18
    ld h, b
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
    dec bc
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec b
    nop
    dec b
    ld a, [bc]
    dec bc
    ld a, [de]
    dec sp
    push hl
    and $1a
    dec e
    dec b
    ei
    ei
    ld b, $e3
    ld e, h
    ldh [c], a
    ld e, l
    ldh [$ff5f], a
    rst $38
    ld b, b
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    nop
    add b
    ld a, a
    nop
    cp $00
    cp $00
    cp $fe
    nop
    db $fc
    cp $00
    cp $fe
    nop
    ld bc, $00fc
    rst $38
    inc bc
    db $fc
    rrca
    di
    dec a
    adc $f6
    add hl, sp
    ret c

    rst $20
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ld a, a
    add b
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_005_701c:
    rst $38
    rst $38
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
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    cp $01
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$ffcf]
    cp h
    ld [hl], e
    ld l, a
    sbc h
    dec de
    rst $20
    nop
    nop
    rst $38
    nop
    nop
    ld hl, sp+$07
    ldh a, [rP1]
    ldh [$ff1f], a
    ret nz

    nop
    add b
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    adc e
    jr nc, jr_005_7092

    ld a, b
    dec [hl]
    ld a, b
    ld c, h
    jr nc, jr_005_701c

    ld [bc], a
    ld [bc], a
    rlca
    ldh a, [rSC]
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
    sbc a
    add b
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
    cp $00
    nop
    ld bc, $02f2
    nop
    nop
    adc d
    jr nc, @+$36

    ld a, c
    inc [hl]
    ld a, c
    ld c, h

jr_005_7092:
    ld sp, $8338
    add b
    rst $00
    nop
    cp a
    db $fc
    ld bc, $00fe
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
    rst $00
    ldh [$ff61], a
    ldh a, [$ffa0]
    ld l, h
    ld e, d
    add hl, de
    dec b
    inc sp
    xor e
    rlca
    sub a
    rrca
    rst $00
    rra
    rst $38
    nop
    rra
    nop
    sbc b
    ld b, b
    db $d3
    ret nz

    call nz, $d3c3
    rst $00
    rst $00
    rst $10
    call nc, $ffd7
    nop
    pop af
    nop
    inc [hl]
    nop
    sub c
    ld b, $40
    add a
    sub b
    rst $00
    ret nz

    rst $10
    ld d, b
    rst $10
    add $0f
    inc c
    ld e, $0a
    ld l, h
    dec [hl]
    jr nc, @-$7d

    jr jr_005_712f

    add b
    ld h, e
    add b
    ld [hl], a
    add b
    ld a, a
    nop
    ccf
    ld a, a
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $a77e
    rra
    add a
    ccf
    add e
    ccf
    ld b, b
    ccf
    ld h, b
    rra
    jr c, @+$09

    rrca
    nop
    nop
    nop
    db $d3
    rst $10
    call nc, $c0d7
    rst $10
    jp $14d4


    jp $c403


    rst $00
    nop
    nop
    nop
    sub b
    rst $10
    ld d, b
    rst $10
    nop
    rst $10
    add c
    ld d, [hl]
    ld d, a
    add b
    add a
    ld b, b
    add $00
    nop
    nop
    ld [hl], e
    add b
    ld a, e
    add b
    ei
    nop

jr_005_712f:
    ld sp, hl
    nop
    pop af
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $00fa
    ld bc, $fa00
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld e, e
    ld c, a
    dec hl
    sbc a
    ld c, e
    ccf
    srl a
    nop
    nop
    add b
    nop
    ld a, [de]
    dec b
    ldh [rP1], a
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
    cp a
    nop
    ld e, a
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
    nop
    nop
    ld a, [$f400]
    rst $38
    nop
    nop
    or h
    push hl
    xor b
    ldh a, [c]
    and l
    ld hl, sp-$5a
    ld hl, sp+$00
    nop
    inc bc
    nop
    or b
    ld b, b
    rrca
    nop
    add b
    nop
    cp a
    nop
    nop
    nop
    cp a
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop

jr_005_7199:
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [c]
    inc b
    push hl
    ld [$11cb], sp
    sub d
    inc hl
    ld [hl-], a
    ld b, e
    ld [hl+], a
    ld b, e
    or $01
    inc b
    nop
    sub d
    ld h, c
    and l
    jp $8752


    and [hl]
    rla
    and [hl]
    rla
    add [hl]
    rlca
    sub a
    ld a, a
    db $10
    db $10
    ld c, b
    add a
    ld b, a
    adc a
    add a
    cpl
    add a
    cpl
    add a
    cpl
    add e
    rrca
    jp nc, Jump_000_10fd

    db $10
    inc h
    jp $e3c5


    jp nz, $c2e9

    jp hl


    jp nz, $82e9

    pop hl
    rst $18
    nop
    ld b, b
    nop
    sub d
    inc c
    ld c, e
    add [hl]
    sub l
    jp $d1ca


    jp z, $c2d1

    pop bc
    nop
    ld a, a
    nop
    ccf
    add b
    ld e, a
    ld c, a
    jr nz, jr_005_7199

    rla
    sub d
    adc c
    sbc c
    add h
    adc b
    add l
    nop
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp h
    ld a, a
    ret nz

    ccf
    jr nc, jr_005_7224

    rlca
    nop
    nop
    nop
    ld e, $e0
    rrca
    ldh a, [rIF]
    ldh a, [rNR34]

jr_005_7220:
    ldh [$ff3c], a
    ret nz

    pop af

jr_005_7224:
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
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
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rrca
    ld b, b
    ld b, b
    ld d, b
    db $10

jr_005_7248:
    ld d, l
    ld [$5b43], sp
    nop
    inc e
    nop
    db $db
    inc b
    ld a, [de]
    dec b
    ld e, d
    dec b
    ld a, [de]
    ld b, l
    ld e, d
    ld b, l
    or b
    daa
    or a
    jr nz, jr_005_7286

    jr nc, jr_005_7248

    ccf
    inc l
    db $fc
    dec hl
    ld hl, sp+$28
    ei
    daa
    di
    xor b
    daa
    xor a
    jr nz, @+$22

    jr nc, jr_005_72a0

    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    ret


    db $eb
    ld [$1808], sp
    jr @+$01

    nop
    nop
    rst $38
    nop
    nop

jr_005_7286:
    rst $38
    rst $38
    rst $38
    ld a, [de]
    ret


    db $db
    ld [$1828], sp
    cpl
    ld hl, sp+$68
    ld a, a
    xor b
    ld a, $29
    cp [hl]
    ret


    sbc [hl]
    jr nz, jr_005_7220

    or h
    ld bc, $0170
    or b

jr_005_72a0:
    ld b, e
    nop
    ld bc, $e0d6
    jr z, jr_005_7317

    dec hl
    jr nc, jr_005_72ef

    dec d
    sub b
    dec b
    push bc
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_005_72b7:
    ld a, h
    nop
    ld e, d
    ld b, l
    ld a, [de]
    ld b, l
    ld e, d
    ld b, l

jr_005_72bf:
    ld a, [de]
    ld b, l
    ld e, d
    dec b
    sbc d
    dec b
    ld a, [de]
    dec b
    nop
    nop
    jr nz, jr_005_72bf

    inc l
    db $e4
    ld [hl+], a
    add sp, $19
    ret


    inc b
    pop de
    jr nc, @-$6e

    dec c
    and d
    nop
    jr nz, jr_005_72da

jr_005_72da:
    nop
    nop
    nop
    sbc d
    add $a0
    ret nz

    inc l
    jp nz, Jump_000_00c0

    inc h
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    nop

jr_005_72ef:
    db $f4
    ld a, b
    db $fd
    ld c, b
    db $f4
    ld a, b
    db $fd
    ld b, b
    cp h
    ld b, b
    add hl, bc
    ld e, [hl]
    ld l, c
    ld c, [hl]
    adc c
    ld l, $31
    ld h, $c0
    ld d, $18
    inc de
    ldh [$ff0b], a
    nop
    ld [$3028], sp
    dec hl
    jr nc, jr_005_7339

    jr nc, jr_005_733b

    ld [hl], b
    db $d3
    ldh [rTAC], a
    nop
    or b
    ld b, b

jr_005_7317:
    nop
    nop
    db $ed
    ld [bc], a
    ldh a, [rP1]
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    dec bc
    and a
    nop
    jr nz, jr_005_72b7

    daa
    adc c
    daa
    add hl, bc
    daa
    nop
    jr nz, jr_005_7358

    ld bc, $0000

jr_005_7339:
    ld e, d
    cp h

jr_005_733b:
    nop
    nop
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, c
    nop
    nop
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    nop
    ld a, [$00ff]

jr_005_7358:
    nop
    pop hl
    ld a, [bc]
    nop
    ld [$c823], sp
    ld [hl+], a
    ret z

    ld hl, $01c8
    ld [$0089], sp
    nop
    nop
    ld l, a
    add b
    rra
    nop
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
    ld bc, $0200
    ld bc, $0355
    ld c, d
    rlca
    ld d, l
    rlca
    ld c, e
    dec de
    inc h
    dec c
    ld d, h
    ld h, $10
    rrca
    daa
    rra
    ld c, a
    jr c, jr_005_73a8

    ld [hl], b
    ld [hl-], a
    ld h, b
    jr z, @+$64

    ld [hl+], a
    ld l, d
    ld a, [hl+]
    ld l, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    xor d

jr_005_73a8:
    xor d
    ld de, $c8e0
    pop af
    db $e4
    add hl, sp
    ld sp, $991d
    dec c
    add hl, hl
    adc l
    adc b
    xor l
    xor b
    xor h
    nop
    nop
    add b
    nop
    ld d, l
    add b
    dec h
    ret nz

    sub l
    ret nz

    add l
    or b
    ld l, c
    ld h, b
    ld d, l
    ret z

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
    ld b, $05
    db $fc
    ld [hl], e
    ld l, $00
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
    jr jr_005_7434

    inc l
    ld e, $00
    nop
    ld a, [hl-]
    nop

jr_005_7434:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
