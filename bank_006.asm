; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    jp Jump_006_4509


    jp Jump_006_4514


    jp Jump_006_475a


    jp Jump_006_48f1


    jp $44f9


    jp Jump_006_45a0


    jp UpdateBusterChargeEffects


    jp Jump_006_69bd


    jp Jump_006_7ac0


    jp Jump_006_780d


    jp Jump_006_42b0


    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


Call_006_4028:
    ld a, [$d722]
    add [hl]
    inc hl
    ld e, a
    ld a, [$d725]
    add [hl]
    ld d, a
    jp Jump_000_0165


Call_006_4036:
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    inc a
    ld c, a
    ret nz

    inc b
    ret


Call_006_4040:
    bit 7, d
    push af
    jr z, jr_006_404f

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_006_404f

    inc d

jr_006_404f:
    call Call_006_405e
    pop af
    ret z

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    ret nz

    inc d
    ret


Call_006_405e:
    call Call_000_0285
    ld d, c
    ld e, h
    ret


Call_006_4064:
    ld l, e
    ld h, d
    ldh a, [$ff9c]
    ld d, a
    inc hl
    inc hl
    ld a, [hl+]
    add d
    ldh [$ff8a], a
    ld a, [hl-]
    add d
    ldh [$ff8b], a
    dec hl
    ldh a, [$ff9b]
    ldh [$ffa4], a
    add [hl]
    ld e, a
    ld b, $10
    call Call_006_40eb
    jr c, jr_006_4091

jr_006_4081:
    inc e
    call Call_006_40eb
    jr c, jr_006_40a5

    dec b
    jr z, jr_006_409f

    ldh a, [$ff9b]
    inc a
    ldh [$ff9b], a
    jr jr_006_4081

jr_006_4091:
    dec e
    ldh a, [$ff9b]
    dec a
    ldh [$ff9b], a
    call Call_006_40eb
    jr nc, jr_006_40a5

    dec b
    jr nz, jr_006_4091

jr_006_409f:
    ldh a, [$ffa4]
    ldh [$ff9b], a
    scf
    ret


jr_006_40a5:
    xor a
    ret


Call_006_40a7:
    ld l, e
    ld h, d
    ldh a, [$ff9c]
    ld d, a
    inc hl
    inc hl
    ld a, [hl+]
    add d
    ldh [$ff8a], a
    ld a, [hl-]
    add d
    ldh [$ff8b], a
    dec hl
    dec hl
    ldh a, [$ff9b]
    ldh [$ffa4], a
    add [hl]
    ld e, a
    ld b, $10
    call Call_006_40eb
    jr c, jr_006_40d5

jr_006_40c5:
    dec e
    call Call_006_40eb
    jr c, jr_006_40e9

    dec b
    jr z, jr_006_40e3

    ldh a, [$ff9b]
    dec a
    ldh [$ff9b], a
    jr jr_006_40c5

jr_006_40d5:
    inc e
    ldh a, [$ff9b]
    inc a
    ldh [$ff9b], a
    call Call_006_40eb
    jr nc, jr_006_40e9

    dec b
    jr nz, jr_006_40d5

jr_006_40e3:
    ldh a, [$ffa4]
    ldh [$ff9b], a
    scf
    ret


jr_006_40e9:
    xor a
    ret


Call_006_40eb:
    push bc
    ldh a, [$ff8a]
    ld d, a
    ldh a, [$ff8b]
    ld b, $d0
    cp b
    jr nc, jr_006_40fa

    ld a, d
    cp b
    jr nc, jr_006_4116

jr_006_40fa:
    push de
    ld a, d
    call Call_000_0165
    pop de
    jr c, jr_006_4137

    ldh a, [$ff8b]
    ld b, a
    ld a, d
    cp b
    jr nc, jr_006_4137

    add $08
    jr nc, jr_006_410f

    ld a, $ff

jr_006_410f:
    ld d, a
    cp b
    jr c, jr_006_40fa

    ld d, b
    jr jr_006_40fa

jr_006_4116:
    push de
    ld a, d
    call Call_000_0165
    pop de
    jr c, jr_006_4137

    ldh a, [$ff8b]
    ld b, a
    ld a, d
    cp $d0
    jr nc, jr_006_4132

    cp b
    jr nc, jr_006_4137

    add $08
    ld d, a
    cp b
    jr c, jr_006_4116

    ld d, b
    jr jr_006_4116

jr_006_4132:
    add $08
    ld d, a
    jr jr_006_4116

jr_006_4137:
    pop bc
    ret


    ld l, e
    ld h, d
    ldh a, [$ff9b]
    ld e, a
    ld a, [hl+]
    add e
    ldh [$ff8a], a
    ld a, [hl+]
    add e
    ldh [$ff8b], a
    ldh a, [$ff9c]
    ldh [$ffa6], a
    add [hl]
    ld d, a
    ld b, $10
    call Call_006_41ba
    jr c, jr_006_4163

jr_006_4153:
    dec d
    call Call_006_41ba
    jr c, jr_006_4177

    dec b
    jr z, jr_006_4171

    ldh a, [$ff9c]
    dec a
    ldh [$ff9c], a
    jr jr_006_4153

jr_006_4163:
    inc d
    ldh a, [$ff9c]
    inc a
    ldh [$ff9c], a
    call Call_006_41ba
    jr nc, jr_006_4177

    dec b
    jr nz, jr_006_4163

jr_006_4171:
    ldh a, [$ffa6]
    ldh [$ff9c], a
    scf
    ret


jr_006_4177:
    xor a
    ret


Call_006_4179:
    ld l, e
    ld h, d
    ldh a, [$ff9b]
    ld e, a
    ld a, [hl+]
    add e
    ldh [$ff8a], a
    ld a, [hl+]
    add e
    ldh [$ff8b], a
    inc hl
    ldh a, [$ff9c]
    ldh [$ffa6], a
    add [hl]
    ld d, a
    ld b, $10
    call Call_006_41ba
    jr c, jr_006_41a4

jr_006_4194:
    inc d
    call Call_006_41ba
    jr c, jr_006_41b8

    dec b
    jr z, jr_006_41b2

    ldh a, [$ff9c]
    inc a
    ldh [$ff9c], a
    jr jr_006_4194

jr_006_41a4:
    dec d
    ldh a, [$ff9c]
    dec a
    ldh [$ff9c], a
    call Call_006_41ba
    jr nc, jr_006_41b8

    dec b
    jr nz, jr_006_41a4

jr_006_41b2:
    ldh a, [$ffa6]
    ldh [$ff9c], a
    scf
    ret


jr_006_41b8:
    xor a
    ret


Call_006_41ba:
    push bc
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld b, $d0
    cp b
    jr nc, jr_006_41c9

    ld a, e
    cp b
    jr nc, jr_006_41e5

jr_006_41c9:
    push de
    ld a, d
    call Call_000_0165
    pop de
    jr c, jr_006_4206

    ldh a, [$ff8b]
    ld b, a
    ld a, e
    cp b
    jr nc, jr_006_4206

    add $10
    jr nc, jr_006_41de

    ld a, $ff

jr_006_41de:
    ld e, a
    cp b
    jr c, jr_006_41c9

    ld e, b
    jr jr_006_41c9

jr_006_41e5:
    push de
    ld a, d
    call Call_000_0165
    pop de
    jr c, jr_006_4206

    ldh a, [$ff8b]
    ld b, a
    ld a, e
    cp $d0
    jr nc, jr_006_4201

    cp b
    jr nc, jr_006_4206

    add $10
    ld e, a
    cp b
    jr c, jr_006_41e5

    ld e, b
    jr jr_006_41e5

jr_006_4201:
    add $10
    ld e, a
    jr jr_006_41e5

jr_006_4206:
    pop bc
    ret


Call_006_4208:
    ld a, $02
    ld [$d878], a
    ld a, l
    ld [$d879], a
    ld a, h
    ld [$d87a], a
    ld a, e
    ld [$d87b], a
    ld a, d
    ld [$d87c], a
    ld b, c
    ld a, l
    cpl
    inc a
    add e
    jr c, jr_006_422c

    cpl
    inc a
    push af
    ld a, c
    cpl
    inc a
    ld b, a
    pop af

jr_006_422c:
    ld [$d87d], a
    ld a, b
    ld [$d87e], a
    ld b, c
    ld a, h
    cpl
    inc a
    add d
    jr c, jr_006_4242

    cpl
    inc a
    ld h, a
    ld a, c
    cpl
    inc a
    ld b, a
    ld a, h

jr_006_4242:
    ld [$d87f], a
    ld a, b
    ld [$d880], a
    ret


Call_006_424a:
    ld c, $00
    ld a, [$d87d]
    ld hl, $d87f
    cp [hl]
    jr nc, jr_006_427e

    ld a, [$d878]
    ld hl, $d87d
    add [hl]
    jr c, jr_006_4267

    ld [$d878], a
    ld hl, $d87f
    sub [hl]
    jr c, jr_006_4273

jr_006_4267:
    ld [$d878], a
    ld a, e
    ld hl, $d87e
    add [hl]
    ld e, a
    jr nc, jr_006_4273

    inc c

jr_006_4273:
    ld a, d
    ld hl, $d880
    add [hl]
    ld d, a
    jr nc, jr_006_42a5

    inc c
    jr jr_006_42a5

jr_006_427e:
    ld a, [$d878]
    ld hl, $d87f
    add [hl]
    jr c, jr_006_4290

    ld [$d878], a
    ld hl, $d87d
    sub [hl]
    jr c, jr_006_429c

jr_006_4290:
    ld [$d878], a
    ld a, d
    ld hl, $d880
    add [hl]
    ld d, a
    jr nc, jr_006_429c

    inc c

jr_006_429c:
    ld a, e
    ld hl, $d87e
    add [hl]
    ld e, a
    jr nc, jr_006_42a5

    inc c

jr_006_42a5:
    ld a, c
    or a
    ret


    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


Call_006_42b0:
Jump_006_42b0:
    or a
    jr nz, jr_006_42b9

    ld e, a
    ld d, a
    ld c, a
    ld b, a
    jr jr_006_42d1

jr_006_42b9:
    dec a
    and $3f
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $431c
    add hl, bc
    push de
    call Call_006_42d9
    pop de
    push bc
    call Call_006_42d9
    pop de
    pop hl

jr_006_42d1:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_006_42d9:
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld [$d871], a
    ld b, a
    bit 7, a
    jr z, jr_006_42ed

    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_006_42ed

    inc b

jr_006_42ed:
    push hl
    call Call_000_0285
    rl h
    rl c
    rl b
    rl h
    rl c
    rl b
    rl h
    rl c
    rl b
    rl h
    rl c
    rl b
    pop hl
    ld a, [$d871]
    bit 7, a
    jr z, jr_006_431b

    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_006_431b

    inc b

jr_006_431b:
    ret


    nop
    nop
    nop
    ldh a, [$ff91]
    ld bc, $f014
    rra
    inc bc
    ld c, a
    ldh a, [$ffa5]
    inc b
    or b
    ldh a, [$ff1f]
    ld b, $38
    pop af
    adc e
    rlca
    db $e4
    pop af
    db $e4
    ld [$f2b2], sp
    ld h, $0a
    and d
    di
    ld d, b
    dec bc
    or b
    db $f4
    ld e, [hl]
    inc c
    jp c, Jump_006_4ef5

    dec c
    inc e
    rst $30
    inc e
    ld c, $75
    ld hl, sp-$38
    ld c, $e1
    ld sp, hl
    ld d, b
    rrca
    ld e, e
    ei
    or c
    rrca
    pop hl
    db $fc
    db $ec
    rrca
    ld l, a
    cp $00
    stop
    nop
    db $ec
    rrca
    sub c
    ld bc, $0fb1
    rra
    inc bc
    ld d, b
    rrca
    and l
    inc b
    ret z

    ld c, $1f
    ld b, $1c
    ld c, $8b
    rlca
    ld c, [hl]
    dec c
    db $e4
    ld [$0c5e], sp
    ld h, $0a
    ld d, b
    dec bc
    ld d, b
    dec bc
    ld h, $0a
    ld e, [hl]
    inc c
    db $e4
    ld [$0d4e], sp
    adc e
    rlca
    inc e
    ld c, $1f
    ld b, $c8
    ld c, $a5
    inc b
    ld d, b
    rrca
    rra
    inc bc
    or c
    rrca
    sub c
    ld bc, $0fec
    nop
    nop
    nop
    db $10
    ld l, a
    cp $ec
    rrca
    pop hl
    db $fc
    or c
    rrca
    ld e, e
    ei
    ld d, b
    rrca
    pop hl
    ld sp, hl
    ret z

    ld c, $75
    ld hl, sp+$1c
    ld c, $1c
    rst $30
    ld c, [hl]
    dec c
    jp c, Jump_006_5ef5

    inc c
    or b
    db $f4
    ld d, b

jr_006_43bf:
    dec bc
    and d
    di
    ld h, $0a
    or d
    ldh a, [c]
    db $e4
    ld [$f1e4], sp
    adc e
    rlca
    jr c, jr_006_43bf

    rra
    ld b, $b0
    ldh a, [$ffa5]
    inc b
    ld c, a
    ldh a, [$ff1f]
    inc bc
    inc d
    ldh a, [$ff91]
    ld bc, $f000
    nop

jr_006_43df:
    nop
    inc d
    ldh a, [$ff6f]
    cp $4f
    ldh a, [$ffe1]
    db $fc
    or b
    ldh a, [$ff5b]
    ei
    jr c, jr_006_43df

    pop hl
    ld sp, hl
    db $e4
    pop af
    ld [hl], l
    ld hl, sp-$4e
    ldh a, [c]
    inc e
    rst $30
    and d
    di
    jp c, $b0f5

    db $f4
    or b
    db $f4
    jp c, $a2f5

    di
    inc e
    rst $30
    or d
    ldh a, [c]
    ld [hl], l
    ld hl, sp-$1c
    pop af
    pop hl
    ld sp, hl
    jr c, @-$0d

    ld e, e
    ei
    or b
    ldh a, [$ffe1]
    db $fc
    ld c, a
    ldh a, [$ff6f]
    cp $14
    ldh a, [rSB]
    inc bc
    rlca
    ld bc, $fd02
    ld [bc], a
    db $fd
    nop
    nop
    db $dd
    ld d, d
    dec sp
    ld d, e
    ld l, d
    ld bc, $0100
    inc bc
    rlca
    ld bc, $fd02
    ld [bc], a
    db $fd
    nop
    nop
    ld [hl], a
    ld d, [hl]
    xor e
    ld d, [hl]
    ld l, d
    nop
    ld bc, $0304
    rlca
    ld [bc], a
    inc b
    db $fd
    inc b
    db $fd
    ld [$6f00], sp
    ld e, e
    adc h
    ld e, e
    ld l, d
    ld bc, $0400
    ld [bc], a
    ld bc, $0401
    db $fc
    inc b
    db $fc
    inc b
    ld [bc], a
    ld a, [$2e5c]
    ld e, l
    ld l, d
    ld [bc], a
    nop
    ld b, $02
    ld bc, $0004
    nop
    nop
    nop
    ld [$2101], sp
    ld h, b
    ld b, b
    ld h, b
    ld l, d
    ld bc, $0500
    ld bc, $0201
    ld [$08f9], sp
    ld sp, hl
    stop
    inc sp
    ld h, c
    ld d, e
    ld h, c
    ld l, d
    ld [bc], a
    nop
    ld bc, $0704
    ld bc, $fd02
    ld [bc], a
    db $fd
    nop
    nop
    inc c
    ld l, d
    ld e, l
    ld l, d
    ld l, d
    ld bc, $0401
    ld bc, $0301
    nop
    nop
    nop
    nop
    db $10
    ld bc, $644f
    sub b
    ld h, h
    ld l, d
    ld bc, $0100
    inc bc
    rlca
    ld bc, $fd02
    ld [bc], a
    db $fd
    nop
    nop
    jp z, $f459

    ld e, c
    ld l, d
    nop
    ld bc, $0108
    ld bc, $0002
    nop
    nop
    nop
    ld [$5701], sp
    ld [hl], c
    ld a, b
    ld [hl], c
    ld l, d
    ld [bc], a
    nop
    add hl, bc
    ld bc, $0603
    nop
    nop
    nop
    nop
    jr nz, jr_006_44d0

jr_006_44d0:
    xor e
    ld [hl], e
    ld b, [hl]
    ld [hl], h
    ld l, d
    nop
    nop
    ld bc, HeaderLogo
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld a, c
    ldh a, [$ff79]
    ld l, d
    inc bc
    ld bc, $0404
    ld bc, $0004
    nop
    nop
    nop
    nop
    inc b
    and e
    ld a, e
    rlca
    ld a, h
    ld l, d
    ld [bc], a
    ld bc, $0406
    ld hl, $c245

jr_006_44fe:
    ld [hl], $40
    ld a, $20
    add l
    ld l, a
    dec b
    jr nz, jr_006_44fe

    jr jr_006_450d

Jump_006_4509:
    xor a
    ld [wBusterChargeCounter], a

jr_006_450d:
    call Call_000_022e
    xor a
    ld [$c201], a

Jump_006_4514:
    xor a
    ld [$c200], a
    ld [$c2cc], a
    ld [$c2cd], a
    ld [$c2d0], a
    ld a, [$de9b]
    ld e, a
    swap a
    and $f0
    add e
    ld l, a
    ld h, $00
    ld de, $441c
    add hl, de
    ld a, [hl+]
    ld [$c22b], a
    ld a, [hl+]
    ld [$c22c], a
    ld a, [hl+]
    set 0, a
    ld [$c22d], a
    ld de, $c203
    ld a, [hl+]
    ld [de], a
    ld b, $05

jr_006_4546:
    inc e
    ld [de], a
    ld a, [hl+]
    dec b
    jr nz, jr_006_4546

    dec hl
    ld a, [hl+]
    ld [$c22e], a
    ld a, [hl+]
    ld [$c235], a
    ld [$c236], a
    ld de, $c22f
    ld a, $c3
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, $c3
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$c2bb], a
    ld a, [hl+]
    ld [wPlayerShotAnimType], a
    ld a, [hl+]
    ld [$c2e9], a
    ld b, $04
    ld hl, $c23b

jr_006_457f:
    ld [hl], $00
    ld a, $20
    add l
    ld l, a
    dec b
    jr nz, jr_006_457f

    call LoadBusterChargeThresholds
    xor a
    ld [$d779], a
    ld a, [$de9b]
    cp $0c
    jr nz, jr_006_459f

    ld a, $40
    ld [$c2d1], a
    xor a
    ld [$c2f3], a

jr_006_459f:
    ret


Jump_006_45a0:
    xor a
    ld [$d783], a
    ld hl, $d77a
    ld a, [hl]
    or a
    jr z, jr_006_45ac

    dec [hl]

jr_006_45ac:
    ld a, [$de9b]
    or a
    jp z, Jump_006_464a

    cp $0c
    jp z, Jump_006_7e9c

    cp $06
    jr nz, jr_006_45e0

    ld a, [wBusterChargeCounter]
    cp $1e
    ld a, [$d740]
    jp c, Jump_006_4681

    ld a, [$d767]
    and $02
    ret nz

    ld a, [$d81c]
    or a
    jr z, jr_006_45d8

    xor a
    ld [wBusterChargeCounter], a
    ret


jr_006_45d8:
    ld a, $01
    ld [$c2ce], a
    jp Jump_006_4684


jr_006_45e0:
    cp $09
    jr nz, jr_006_45ff

    ld a, [$d70a]
    cp $06
    jr c, jr_006_45ef

    cp $0c
    jr c, jr_006_45ff

jr_006_45ef:
    ld a, [$c2d1]
    or a
    ld a, [$d741]
    jp z, Jump_006_4681

    ld a, [$d740]
    jp Jump_006_4681


jr_006_45ff:
    cp $0a
    jr nz, jr_006_4609

    ld a, [$dea8]
    ld [$c2d8], a

jr_006_4609:
    cp $0b
    jr nz, jr_006_4648

    ld a, [$d740]
    bit 1, a
    jr nz, jr_006_4640

    ld a, [wBusterChargeCounter]
    cp $10
    ret c

    ld a, [$d767]
    and $02
    ret nz

    ld a, [$d74b]
    cp $01
    jr nz, jr_006_4633

    ld a, [$d163]
    or a
    jr nz, jr_006_4633

    xor a
    ld [$c201], a
    jr jr_006_4684

jr_006_4633:
    ld a, [$d767]
    or $02
    ld [$d767], a
    ld hl, wBusterChargeCounter
    dec [hl]
    ret


jr_006_4640:
    ld a, [$c200]
    cp $03
    ret nc

    jr jr_006_4684

jr_006_4648:
    jr jr_006_467e

Jump_006_464a:
    ld a, [wBusterChargeMinThreshold]
    ld b, a
    ld a, [wBusterChargeCounter]
    cp b
    jr nc, jr_006_465e

    ld a, [$c2ea]
    or a
    ret nz

    ld a, [$d740]
    jr jr_006_4681

jr_006_465e:
    ld a, [$d767]
    and $02
    ret nz

    ld a, [$d81c]
    or a
    jr nz, jr_006_4679

    ld a, [$d73a]
    cp $5a
    jr nc, jr_006_4679

    ld a, [wBusterChargeCounter]
    ld [wReleasedChargeCounter], a
    jr jr_006_4684

jr_006_4679:
    xor a
    ld [wBusterChargeCounter], a
    ret


jr_006_467e:
    ld a, [$d740]

Jump_006_4681:
jr_006_4681:
    bit 1, a
    ret z

Jump_006_4684:
jr_006_4684:
    ld a, [$cc94]
    bit 0, a
    ret nz

    ld a, [$c200]
    ld hl, $c22c
    cp [hl]
    ret nc

    ld a, [$c22e]
    or a
    jr z, jr_006_46a7

    ld a, [$de9b]
    ld de, $de9e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    or a
    ret z

jr_006_46a7:
    ld a, [$d706]
    or a
    ret nz

    ld hl, $c201
    ld a, [hl]
    cp $08
    ret nc

    call Call_006_46d8
    ld hl, $c201
    ld [hl], $10
    call $4735

Call_006_46be:
    call Call_006_4886
    call Call_006_46f8
    ld a, c
    ld [$c2bd], a
    ld a, $c2
    ld [$c2be], a
    ld a, $01
    ld [$d783], a
    ld a, [$de9b]
    jp $c22f


Call_006_46d8:
    ld a, [$d74b]
    add a
    ld hl, $d703
    add [hl]
    add a
    ld e, a
    ld d, $00
    ld hl, $4729
    add hl, de
    ld a, [$d722]
    add [hl]
    inc hl
    ld [$d76b], a
    ld a, [$d725]
    add [hl]
    ld [$d76c], a
    ret


Call_006_46f8:
    ld h, $c2
    ld a, $04
    add c
    ld l, a
    ld a, [$d76b]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$d76c]
    ld [hl], a
    ld h, $c2
    ld a, $0c
    add c
    ld l, a
    ld a, [$d703]
    ld [hl], a

Call_006_4714:
    ld a, $0b
    add c
    ld l, a
    ld a, [$c203]
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ldh a, [c]
    inc bc
    ld c, $03
    xor $01
    inc de
    ld bc, $01f2
    db $10
    ld bc, $9bfa
    sbc $b7
    ret z

    ld a, [$c22e]
    ld b, a

Call_006_473e:
    ld a, [$de9b]
    ld de, $de9e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [wPowerGeneratorUnlocked]
    or a
    jr z, jr_006_4752

    srl b

jr_006_4752:
    ld a, [de]
    sub b
    jr nc, jr_006_4757

    xor a

jr_006_4757:
    ld [de], a
    or a
    ret


Jump_006_475a:
    ld a, [$c2c4]
    or a
    jp nz, Jump_006_48f1

    ld a, [$de9e]
    or a
    jp z, Jump_006_48f1

    call Call_006_4926
    ld c, $3b

jr_006_476d:
    ld h, $c2
    ld a, c
    ld [$c2bd], a
    ld a, h
    ld [$c2be], a
    ld l, c
    ld a, [hl]
    or a
    jr z, jr_006_4797

    ld a, [$deaf]
    and $73
    jr nz, jr_006_478f

    ld a, $12
    add c
    ld l, a
    inc [hl]
    ld b, $01
    call Call_006_47c6
    jr z, jr_006_4794

jr_006_478f:
    call Call_006_47d2
    jr jr_006_4797

jr_006_4794:
    call Call_006_48c6

jr_006_4797:
    ld a, [$c2bd]
    add $20
    ld c, a
    cp $bb
    jr c, jr_006_476d

    ld hl, $c202
    ld a, [hl+]
    ld e, a
    ld d, $01
    cp $09
    jr nz, jr_006_47ae

    ld d, $00

jr_006_47ae:
    inc l
    ld [hl], d
    ld l, e
    ld [hl], $00
    ld hl, $c216
    ld a, [hl+]
    ld e, a
    ld d, $01
    cp $1d
    jr nz, jr_006_47c0

    ld d, $00

jr_006_47c0:
    inc l
    ld [hl], d
    ld l, e
    ld [hl], $00
    ret


Call_006_47c6:
    ld a, $14
    add c
    ld l, a
    bit 0, [hl]
    jp nz, Jump_006_49ff

    jp $c232


Call_006_47d2:
    ld a, $1f
    add c
    ld l, a
    bit 2, [hl]
    ret nz

    xor a
    bit 4, [hl]
    jr nz, jr_006_47e0

    ld a, $10

jr_006_47e0:
    ldh [$ffab], a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    xor a
    ld [$ce56], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_006_47ff

    ld a, $20

jr_006_47ff:
    ld [$d3ea], a
    ld a, [$de74]
    or a
    call nz, Call_000_0303
    ld h, $c2
    ld a, $1e
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $09
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_006_4857

    ld a, [hl]
    and $03
    jr nz, jr_006_4851

    ld a, $0a
    add c
    ld l, a
    ld l, [hl]
    ld h, $d1
    ld l, [hl]
    dec h
    inc l
    ld a, [hl]
    cp $fe
    jr z, jr_006_4850

    ld l, a
    ld h, $cf
    ld e, [hl]
    ld d, $c0
    ld h, $c2
    ld a, $08
    add c
    ld l, a
    ld a, $0c
    add [hl]
    ld [de], a
    inc e
    dec l
    dec l
    dec l
    dec l
    ld a, $04
    add [hl]
    ld [de], a
    inc e
    ld a, $0d
    ld [de], a
    inc e
    ldh a, [$ffab]
    ld [de], a

jr_006_4850:
    ret


jr_006_4851:
    xor a
    ld [$ce56], a
    jr jr_006_4864

Jump_006_4857:
    ld a, [$de9b]
    cp $0c
    jp z, Jump_006_7e11

    cp $07
    jp z, Jump_006_66cd

jr_006_4864:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    and $c0
    jr z, jr_006_4875

    cp $40
    jp z, Jump_006_4c05

    jp Jump_006_4c1b


jr_006_4875:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    ld l, e
    ld h, d
    jp Jump_000_01aa


Call_006_4886:
    ld b, $04
    ld hl, $c23b

jr_006_488b:
    ld a, [hl]
    or a
    jr z, jr_006_489a

    ld a, $20
    add l
    ld l, a
    dec b
    jr nz, jr_006_488b

    ld l, $3b
    scf
    ret


jr_006_489a:
    ld a, [$c22d]
    ld [hl], a
    ld c, l
    ld a, $1f
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld a, [$c2bb]
    ld [hl], a
    ld a, $0a
    add c
    ld l, a
    ld a, [$c22b]
    push hl
    push bc
    call Call_000_01a4
    pop bc
    pop hl
    ld [hl], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $80
    ld l, $00
    inc [hl]
    or a
    ret


Call_006_48c6:
    ld a, [$c2bd]
    ld c, a
    ld a, [$c2be]
    ld h, a
    ld l, c
    ld a, [hl]
    or a
    ret z

    push hl
    push bc
    ld b, $02
    call Call_006_47c6
    pop bc
    pop hl
    ld [hl], $00
    ld l, c
    push hl
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_01a7
    pop hl
    ld c, l
    ld c, l
    ld hl, $c200
    dec [hl]
    ret


Jump_006_48f1:
    ld a, $01
    ld [$d789], a
    ld c, $3b

jr_006_48f8:
    ld h, $c2
    ld a, c
    ld [$c2bd], a
    ld a, h
    ld [$c2be], a
    ld l, c
    push hl
    call Call_006_48c6
    pop hl
    ld c, l
    ld a, $20
    add c
    ld c, a
    cp $bb
    jr c, jr_006_48f8

    ld l, $00
    ld [hl], $00
    call Call_006_4926
    ld c, $3b
    ld a, $1c
    ldh [rOBP0], a
    xor a
    ld [$c2c4], a
    ld [$d789], a
    ret


Call_006_4926:
    xor a
    ld [$c209], a
    ld [$c21d], a
    ld a, $09
    ld [$c202], a
    ld a, $1d
    ld [$c216], a
    ret


Call_006_4938:
    ld a, e
    ld [$d888], a
    ld a, d
    ld [$d889], a
    ld a, $1f
    add c
    ld l, a
    set 0, [hl]
    ld a, b
    or a
    jr nz, jr_006_4971

    res 1, [hl]
    ld d, h
    ld a, [$c202]
    cp $15
    ret nc

    ld e, a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    and $3f
    ret z

    push hl
    push bc
    ld a, l
    ld [de], a
    inc e
    ld a, [$d888]
    ld [de], a
    inc e
    ld a, [$d889]
    ld [de], a
    inc e
    ld a, e
    ld [$c202], a
    jr jr_006_4996

jr_006_4971:
    set 1, [hl]
    ld d, h
    ld a, [$c216]
    cp $29
    ret nc

    ld e, a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    and $3f
    ret z

    push hl
    push bc
    ld a, l
    ld [de], a
    inc e
    ld a, [$d888]
    ld [de], a
    inc e
    ld a, [$d889]
    ld [de], a
    inc e
    ld a, e
    ld [$c216], a

jr_006_4996:
    pop bc
    pop hl
    ret


    ldh a, [$ff92]
    push af
    ld l, c
    push hl
    ld a, e
    ld [$dec9], a
    ld a, d
    ld [$deca], a
    ld a, $1f
    add c
    ld l, a
    bit 1, [hl]
    jr nz, jr_006_49c2

    ld a, [$c205]
    add e
    ld l, a
    ld a, [$c207]
    add d
    ld h, a
    ld a, [$c206]
    add e
    ld e, a
    ld a, [$c208]
    jr jr_006_49d4

jr_006_49c2:
    ld a, [$c219]
    add e
    ld l, a
    ld a, [$c21b]
    add d
    ld h, a
    ld a, [$c21a]
    add e
    ld e, a
    ld a, [$c21c]

jr_006_49d4:
    add d
    ld d, a
    call Call_000_02f7
    pop hl
    ld c, l
    pop af
    ldh [$ff92], a
    ret


Jump_006_49df:
    jr jr_006_49ea

Jump_006_49e1:
    ld a, $0c
    add c
    ld l, a
    ld b, [hl]
    ld a, b
    add a
    jr nz, jr_006_49ea

Jump_006_49ea:
jr_006_49ea:
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, a
    ld a, $0d
    add c
    ld l, a
    ld [hl], b
    inc l
    ld [hl], d
    ld a, $14
    add c
    ld l, a
    ld [hl], $01
    xor a
    inc a
    ret


Jump_006_49ff:
    dec b
    ret nz

    ld a, $01
    add c
    ld e, a
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld l, e
    ld de, $0400
    jr z, jr_006_4a14

    ld de, $fc00

jr_006_4a14:
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ld a, $05
    add c
    ld l, a
    ld [hl], $00
    inc l
    inc l
    ld [hl], $fd
    call Call_006_4b33
    ret z

    ld a, $1f
    add c
    ld l, a
    res 4, [hl]
    res 2, [hl]
    xor a
    inc a
    ret


Call_006_4a31:
    res 6, [hl]
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret nz

    pop de
    xor a
    ret


Call_006_4a3d:
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    inc l
    ld d, [hl]
    ld e, a
    ld b, d
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sub e
    ld e, a
    ld a, b
    sbc d
    ld [hl-], a
    dec l
    ld [hl], e
    ret


Call_006_4a6a:
    ld a, $08
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ret


Call_006_4a74:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    push hl
    push bc
    call Call_006_40a7
    pop bc
    pop hl
    ldh a, [$ff9b]
    ld [hl], a
    ret


Call_006_4a8d:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    push hl
    push bc
    call Call_006_4064
    pop bc
    pop hl
    ldh a, [$ff9b]
    ld [hl], a
    ret


Call_006_4aa6:
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    push hl
    push bc
    call Call_006_4179
    pop bc
    pop hl
    ldh a, [$ff9c]
    ld [hl], a
    ret


Call_006_4abf:
Jump_006_4abf:
    ld a, e
    ldh [$ffa7], a
    ld a, d
    ldh [$ffa8], a
    ld l, c
    push hl
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9f], a
    ld a, [hl+]
    ldh [$ffa3], a
    ld a, [hl+]
    ldh [$ffa0], a
    ld a, [hl+]
    ldh [$ffa4], a
    ldh [$ff98], a
    ld a, [hl+]
    ldh [$ffa1], a
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa2], a
    ld a, [hl+]
    ldh [$ffa6], a
    ldh [$ff9a], a
    call Call_000_01d4
    pop hl
    ld c, l
    ld a, $02
    add c
    ld l, a
    ldh a, [$ffa3]
    ld [hl+], a
    inc l
    ldh a, [$ffa4]
    ld [hl+], a
    inc l
    ldh a, [$ffa5]
    ld [hl+], a
    inc l
    ldh a, [$ffa6]
    ld [hl+], a
    inc l
    ldh a, [$ffa9]
    or a
    ret


Call_006_4b04:
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    xor $01
    and $01
    ld [hl], a
    ret


Call_006_4b0f:
    ld a, $04
    add c
    ld l, a
    ld a, [$d7c3]
    add [hl]
    ld [hl], a
    ret


Call_006_4b19:
    ld h, $c2
    ld a, $01
    add c
    ld l, a
    ld a, [$d7c2]
    ld b, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    sub b
    ld [hl+], a
    ld e, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld d, a
    ret


Call_006_4b33:
    ld h, $c2
    ld a, $01
    add c
    ld l, a
    ld a, [$d7c2]
    ld b, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    sub b
    ld [hl+], a
    ld e, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld d, a
    jr jr_006_4b5b

Call_006_4b4e:
    ld b, $00
    ld h, $c2
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]

jr_006_4b5b:
    ld a, e
    cp $f4
    jr nc, jr_006_4b68

    cp $ac
    jr c, jr_006_4b68

    set 0, b
    jr jr_006_4b78

jr_006_4b68:
    ld a, d
    cp $f8
    jr nc, jr_006_4b75

    cp $90
    jr c, jr_006_4b75

    set 1, b
    jr jr_006_4b78

jr_006_4b75:
    xor a
    inc a
    ret


jr_006_4b78:
    xor a
    ret


Call_006_4b7a:
    push hl
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld e, a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld d, a
    ld hl, $d746
    ld a, e
    cp [hl]
    jr c, jr_006_4ba2

    inc hl
    cp [hl]
    jr nc, jr_006_4ba2

    inc hl
    ld a, d
    cp [hl]
    jr c, jr_006_4ba2

    inc hl
    cp [hl]
    jr nc, jr_006_4ba2

    pop hl
    xor a
    ret


jr_006_4ba2:
    pop hl
    xor a
    inc a
    ret


Call_006_4ba6:
    ld a, [$ccbb]
    or a
    jr z, jr_006_4bd3

    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld e, a
    ld d, $00
    cp $d0
    jr c, jr_006_4bb9

    dec d

jr_006_4bb9:
    ld a, [$d711]
    add e
    ldh [$ff8a], a
    ld a, [$d712]
    adc d
    ldh [$ff8b], a
    ld l, c
    push hl
    call Call_000_02ca
    pop hl
    ld c, l
    ld a, [$cc98]
    or a
    ld e, a
    jr nz, jr_006_4bd5

jr_006_4bd3:
    ld e, $30

jr_006_4bd5:
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    add e
    ld e, a
    ld [hl+], a
    inc l
    ld a, [hl]
    adc $00
    ld d, a
    ld [hl], a
    ret


Call_006_4be4:
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_006_4be9:
    push hl
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    call Call_000_0264
    pop hl
    ld a, b
    or a
    ret


Call_006_4bfa:
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ret


Jump_006_4c05:
    ldh a, [$ffab]
    xor $10
    ldh [$ffab], a
    ld a, $0a
    add c
    ld l, a
    ld e, [hl]
    add $03
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, e
    call Call_006_4c31
    ret


Jump_006_4c1b:
    ldh a, [$ffab]
    xor $10
    ldh [$ffab], a
    ld a, $0a
    add c
    ld l, a
    ld e, [hl]
    add $03
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, e
    call Call_000_0210
    ret


Call_006_4c31:
    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a
    ld a, [$d3ea]
    bit 5, a
    jr nz, jr_006_4c71

jr_006_4c45:
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
    ld [hl+], a
    push hl
    ld a, [bc]
    ld hl, $ffab
    xor [hl]
    pop hl
    inc bc
    ld [hl], a
    jr jr_006_4c45

jr_006_4c71:
    ldh a, [$ffab]
    xor $20
    ldh [$ffab], a
    ld a, e
    sub $07
    ld e, a

jr_006_4c7b:
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
    ld hl, $ffab
    xor [hl]
    pop hl
    inc bc
    ld [hl], a
    jr jr_006_4c7b

Call_006_4ca9:
    ld l, c
    push hl
    ld hl, $ff8a
    call Call_000_024c
    pop hl
    ld c, l
    ld a, $01
    add c
    ld l, a
    ldh a, [$ff8a]
    ld [hl+], a
    inc l
    ldh a, [$ff8b]
    ld [hl+], a
    inc l
    ldh a, [$ff8c]
    ld [hl+], a
    inc l
    ldh a, [$ff8d]
    ld [hl+], a
    ret


Call_006_4cc7:
    ld l, c
    push hl
    ld hl, $ff8a
    call Call_000_024c
    pop hl
    ld c, l
    ld a, $01
    add c
    ld l, a
    ldh a, [$ff8a]
    add [hl]
    ld [hl+], a
    inc l
    ldh a, [$ff8b]
    adc [hl]
    ld [hl+], a
    inc l
    ldh a, [$ff8c]
    add [hl]
    ld [hl+], a
    inc l
    ldh a, [$ff8d]
    adc [hl]
    ld [hl+], a
    ret


    swap a
    and $0f
    cp $0b
    jr c, jr_006_4cf3

    xor a
    ret


jr_006_4cf3:
    add $fe
    ld e, a
    ld a, $00
    adc $4c
    ld d, a
    ld a, [de]
    or a
    ret


    nop
    inc bc
    rlca
    nop
    ld bc, $0802
    nop
    dec b
    inc b
    ld b, $3e
    inc b
    add c
    ld l, a
    ld a, [hl]
    add e
    ld e, a
    ld a, [hl]
    add b
    ld b, a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add d
    ld d, a
    ld l, c
    push hl
    call Call_000_0216
    pop hl
    ld c, l
    ret


Call_006_4d22:
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add e
    ld e, a
    ld a, [hl]
    add b
    ld b, a
    ld l, c
    push hl
    call Call_000_0216
    pop hl
    ld c, l
    ret


Call_006_4d34:
    ld a, $04
    add c
    ld l, a
    ld a, [$d7c3]
    add [hl]
    ld [hl], a
    ret


Call_006_4d3e:
    ld l, c
    push hl
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $fc
    ld l, a
    ld c, [hl]
    ld hl, $d080
    push hl
    ld a, [de]
    inc de
    add $30
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    add $30
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    add $30
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add $30
    add b
    ld [hl+], a
    pop hl
    call Call_006_4de0
    pop hl
    ld c, l
    ret


Call_006_4d6c:
    push hl
    push bc
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $fc
    ld l, a
    ld c, [hl]
    ld l, e
    ld h, d
    ld a, $01
    ld [$cc71], a
    ld de, $cc72
    ld a, [hl+]
    add c
    add $30
    ld [de], a
    inc e
    ld a, [hl+]
    add c
    add $30
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    add $30
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    add $30
    ld [de], a
    pop bc
    pop hl
    ret


Jump_006_4d9b:
    ld a, $08
    add c
    ld l, a
    ld a, [$d725]
    sub [hl]
    cp b
    jr nz, jr_006_4dbc

Jump_006_4da6:
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $30
    add e
    ld e, a
    ld a, [hl]
    add $30
    add d
    ld d, a
    ld a, [$d72f]
    cp e
    jr c, jr_006_4dbc

    cp d
    ret c

jr_006_4dbc:
    xor a
    ret


Call_006_4dbe:
    ld a, $01
    add c
    ld l, a
    jr jr_006_4dc8

Call_006_4dc4:
    ld a, $05
    add c
    ld l, a

jr_006_4dc8:
    ld a, [hl+]
    add e
    ld e, a
    inc l
    ld a, [hl]
    adc d
    ld d, a
    call Call_000_0213
    ld [hl], d
    dec l
    dec l
    ld [hl], e
    inc l
    ld a, [hl]
    add e
    ld [hl+], a
    inc l
    ld a, [hl]
    ld e, a
    adc d
    ld [hl], a
    ret


Call_006_4de0:
    ld a, [$d72f]
    ld e, a
    ld a, [$d730]
    ld d, a
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


Call_006_4df7:
    ld a, $10
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_006_4dff:
Jump_006_4dff:
    xor a
    ldh [$ff8e], a

jr_006_4e02:
    xor a
    ldh [$ff8f], a
    ld h, $c2
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
    jr nc, jr_006_4e1e

    ld [hl], $00
    inc l
    inc [hl]

jr_006_4e1e:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $11
    add c
    ld l, a

jr_006_4e28:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $ff
    jr nz, jr_006_4e42

    ld [hl], $00
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    ld a, $01
    ldh [$ff8f], a
    jr jr_006_4e28

jr_006_4e42:
    ld b, a
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ldh a, [$ff8e]
    ld l, a
    or a
    ld a, b
    jp z, Jump_006_4e73

    dec l
    jp z, Jump_006_4ea8

    dec l
    jp z, Jump_006_4e6a

    dec l
    jp z, Jump_006_4e9f

    ret


Call_006_4e5e:
Jump_006_4e5e:
    ld a, $01
    ldh [$ff8e], a
    jr jr_006_4e02

    ld a, $03
    ldh [$ff8e], a
    jr jr_006_4e02

Jump_006_4e6a:
    ld b, a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    and $01
    or b

Jump_006_4e73:
    ld b, a
    ld a, $0f
    add c
    ld l, a
    ld [hl], b
    ld a, b
    ld b, a
    ld a, $0d
    add c
    ld l, a
    push hl
    call Call_006_4ed4
    ld a, [hl+]
    ld [$c206], a
    ld a, [hl+]
    ld [$c205], a
    ld a, [hl+]
    ld [$c208], a
    ld a, [hl+]
    ld [$c207], a
    ld hl, $0004
    add hl, de
    pop de
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld h, d
    ret


Jump_006_4e9f:
    ld b, a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    and $01
    or b

Call_006_4ea8:
Jump_006_4ea8:
    ld b, a
    ld a, $0f
    add c
    ld l, a
    ld [hl], b
    ld a, b

Call_006_4eaf:
    ld b, a
    ld a, $0d
    add c
    ld l, a
    push hl
    call Call_006_4ed4
    ld a, [hl+]
    ld [$c21a], a
    ld a, [hl+]
    ld [$c219], a
    ld a, [hl+]
    ld [$c21c], a
    ld a, [hl+]
    ld [$c21b], a
    ld hl, $0004
    add hl, de
    pop de
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld h, d
    ret


Call_006_4ed4:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    and $c0
    cp $c0
    push af
    ld a, b
    ld l, e
    ld h, d
    call Call_000_016e
    ld e, l
    ld d, h
    pop af
    ret nz

    ld a, [$d703]
    or a
    ret z

    ld a, [hl+]
    cpl
    ldh [$ff8b], a
    ld a, [hl+]
    cpl
    ldh [$ff8a], a

Jump_006_4ef5:
    ld a, [hl+]
    ldh [$ff8c], a
    ld a, [hl+]
    ldh [$ff8d], a
    ld hl, $ff8a
    ret


Call_006_4eff:
    ld h, $c2
    ld d, h
    ld a, [$c202]
    cp $15
    ret nc

    ld e, a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    and $3f
    ld a, l
    ld [de], a
    inc e
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld [de], a
    inc e
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld a, e
    ld [$c202], a
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    and $fd
    or $01
    ld [hl], a
    ret


Call_006_4f32:
    ld h, $c2
    ld d, h
    ld a, [$c216]
    cp $29
    ret nc

    ld e, a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    and $3f
    ld a, l
    ld [de], a
    inc e
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld [de], a
    inc e
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld a, e
    ld [$c216], a
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    or $03
    ld [hl], a
    ret


Call_006_4f63:
    ld a, [$d703]
    or a
    ret nz

    ld a, e
    cpl
    ld e, a
    ld a, d
    cpl
    ld d, a
    inc de
    ret


Call_006_4f70:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    call Call_006_4f63
    call Call_006_4f89
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    jp Jump_006_4fa2


Call_006_4f83:
    call Call_006_4f9f

Call_006_4f86:
    ld de, $0000

Call_006_4f89:
jr_006_4f89:
    ld h, $c2
    ld a, $01
    add c
    ld l, a
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ret


Call_006_4f94:
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    call nz, Call_000_016b
    jr jr_006_4f89

Call_006_4f9f:
    ld de, $0000

Call_006_4fa2:
Jump_006_4fa2:
    ld h, $c2
    ld a, $05
    add c
    ld l, a
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ret


Call_006_4fad:
    ld l, c
    push hl
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    push af
    push de
    ld a, $01
    add c
    ld e, a
    ld d, h
    pop hl
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    pop af
    call nz, Call_006_4036
    ld a, c
    ld [de], a
    inc de
    inc de
    ld a, b
    ld [de], a
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    pop hl
    ld c, l
    ret


Call_006_4fd6:
    ld a, $03
    add c
    ld l, a
    ld a, [hl-]
    dec l
    cpl
    ld d, a
    ld a, [hl]
    cpl
    inc a
    jr nz, jr_006_4fe4

    inc d

jr_006_4fe4:
    ld [hl+], a
    inc l
    ld [hl], d
    ret


Call_006_4fe8:
    ld a, $07
    add c
    ld l, a
    ld a, [hl-]
    dec l
    cpl
    ld d, a
    ld a, [hl]
    cpl
    inc a
    jr nz, jr_006_4ff6

    inc d

jr_006_4ff6:
    ld [hl+], a
    inc l
    ld [hl], d
    ret


    ld a, $01
    add c
    ld l, a
    jr jr_006_5004

    ld a, $05
    add c
    ld l, a

jr_006_5004:
    push hl
    push bc
    ld c, e
    ld b, d
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_006_4040
    pop bc
    pop hl
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ret


Call_006_5016:
    ld a, [$d74b]
    cp $02
    jr nz, jr_006_5025

    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $02
    ld [hl], a

jr_006_5025:
    ld a, $04
    add c
    ld l, a
    ld a, [$d722]
    ld d, a
    ld a, [hl]
    cp $f0
    jr c, jr_006_5033

    xor a

jr_006_5033:
    add d
    rr a
    ld [hl], a
    ret


    ld a, $0c
    add c
    ld e, a
    add $f5
    ld l, a
    ld a, [hl+]
    inc l
    or [hl]
    jr z, jr_006_504c

    xor a
    bit 7, [hl]
    jr nz, jr_006_504a

    inc a

jr_006_504a:
    ld l, e
    ld [hl], a

jr_006_504c:
    ret


Jump_006_504d:
    ld a, [wPrimaryWeaponModeFlags]
    bit PRIMARY_WEAPON_MEGA_BUSTER_F, a
    ret z

    ld a, $be
    ld [$c233], a
    ld a, $50
    ld [$c234], a
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    and $3f
    ld [hl], a
    ld de, $50ff
    ld a, $0d
    add c
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $0a
    add c
    ld l, a
    ld a, $06
    call Call_000_01b9
    ld l, c
    push hl
    ld hl, $50eb
    ld de, $c217
    ld bc, $0006
    call Call_000_0180
    ld hl, $d72b
    ld a, [$d703]
    or a
    ld de, $0080
    ld b, $04
    jr z, jr_006_5099

    ld de, $ff80
    ld b, $fc

jr_006_5099:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld hl, $d732
    ld a, [hl]
    add b
    ld [hl], a
    xor a
    ld [$d74b], a
    ld hl, $d729
    ld a, [hl]
    add $00
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl+], a
    pop hl
    ld c, l
    ld a, $0b
    add c
    ld l, a
    ld a, $01
    ld [hl], a
    ret


    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    and $03
    jp z, Jump_006_5345

    dec b
    ret nz

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_006_50db

    ld de, $50d9
    jp Jump_006_49ea


    daa
    ld d, c

jr_006_50db:
    call Call_006_4b33
    ret z

    call Call_006_4f32
    ld de, $50f1
    call Call_006_4e5e
    xor a
    inc a
    ret


    ld bc, $0701
    ld a, [$f906]
    ld sp, hl
    ld d, b
    inc b
    nop
    ld bc, $ff02
    rst $38
    rst $38
    ld d, b
    dec bc
    ld d, c
    add hl, de
    ld d, c
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld [hl+], a
    nop
    ld bc, $0240
    add b
    ld sp, hl
    rlca
    ld a, [$f805]
    ld hl, sp+$32
    inc bc
    inc b
    dec b
    ld b, e
    ld b, $45
    add b
    rst $30
    ld [$07f8], sp
    ld hl, sp-$08
    ld [hl-], a
    rlca
    ld [$4709], sp
    ld a, [bc]
    ld c, c
    add b
    ld hl, sp-$08
    ld [hl+], a
    dec bc
    inc c
    ld c, e
    ld c, $80
    ld e, $46
    inc d
    ld a, [bc]
    ld a, [de]
    ld b, c
    inc d
    ld a, [bc]
    ld a, [de]
    inc a
    inc d
    ld a, [bc]
    db $10
    jr z, @+$14

    ld [$512f], sp
    inc sp
    ld d, c
    scf
    ld d, c
    dec sp
    ld d, c
    add b
    ld [bc], a
    nop
    nop
    add b
    ld [bc], a
    dec c
    ld b, e
    ld de, $0e00
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    ld a, [de]
    ld b, e
    ld [hl+], a
    inc b
    rrca
    nop
    dec b
    nop
    nop
    nop
    dec b
    rlca
    ld b, e
    ld de, $0e00
    nop
    ld b, $00
    nop
    nop
    ld b, $0d
    ld b, e
    ld [hl+], a
    inc b
    rrca
    nop
    ld [$0000], sp
    nop
    ld [$4305], sp
    ld de, $0e00
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld b, e
    ld [hl+], a
    inc b
    rrca

LoadBusterChargeThresholds:
    ld a, [wBusterUpgradeLevel]
    cp $01
    ld e, $02
    jr z, jr_006_51a2

    cp $02
    ld e, $03
    jr nc, jr_006_51a2

    ld a, [wMegaArmUpgradeMHUnlocked]
    or a
    ld e, $01
    jr nz, jr_006_51a2

    ld e, $00

jr_006_51a2:
    ld a, e
    ld hl, BusterChargeThresholdPointerTable
    call Call_000_016e
    ld de, wBusterChargeMinThreshold
    ld bc, $0004
    jp Jump_000_0180


UpdateBusterChargeEffects:
    ld hl, wBusterChargeMinThreshold
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, [$c2ea]
    or a
    jr z, jr_006_51c6

    xor a
    ld [wBusterChargeCounter], a

jr_006_51c6:
    ld a, [wBusterChargeCounter]
    cp e
    jr nc, jr_006_51d6

    xor a
    ld [wBusterChargePaletteSfxTimer], a
    ld b, $00
    ld d, $1c
    jr jr_006_51f9

jr_006_51d6:
    ld hl, wBusterChargeFlashTimer
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_006_51e3

    xor a
    ld [hl+], a
    inc [hl]
    dec hl

jr_006_51e3:
    inc hl
    ld a, [hl]
    and $03
    ld e, a
    ld a, [wBusterChargeCounter]
    cp d
    ld hl, BusterChargePaletteCycleLow
    jr c, jr_006_51f5

    ld hl, BusterChargePaletteCycleHigh
    ld b, c

jr_006_51f5:
    ld d, $00
    add hl, de
    ld d, [hl]

jr_006_51f9:
    ld a, [$cca6]
    or a
    jr nz, jr_006_5209

    ld a, [$cca8]
    bit 1, a
    jr nz, jr_006_5209

    ld a, d
    ldh [rOBP0], a

jr_006_5209:
    ld hl, wBusterChargePaletteSfxTimer
    ld a, b
    or a
    jr z, jr_006_521b

    inc [hl]
    ld a, [hl]
    cp $01
    jr nz, jr_006_5219

    rst $08
    db $10
    ld a, [hl]

jr_006_5219:
    cp b
    ret c

jr_006_521b:
    ld [hl], $00
    ret


    db $10
    inc d
    jr @+$1e

    inc e
    ld h, b
    or h
    ret z

InitChargedBusterShot:
    xor a
    ld [wPlayerIdleShotTimer], a
    ld a, $08
    add c
    ld l, a
    ld d, [hl]
    add $fc
    ld l, a
    ld e, [hl]
    ld l, c
    push hl
    call Call_000_02fa
    pop hl
    ld c, l
    ld de, ChargedBusterShotAnim
    ld a, $0d
    add c
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $0a
    add c
    ld l, a
    ld a, $04
    call Call_000_01b9
    ld a, $1a
    add c
    ld l, a
    ld [hl], $00
    ld a, $01
    ld [wPlayerShotAnimType], a
    ld l, c
    push hl
    ld a, [wBusterUpgradeLevel]
    or a
    ld hl, BusterShotParams_Unupgraded
    jr z, jr_006_526c

    dec a
    ld hl, BusterShotParams_Upgrade1
    jr z, jr_006_526c

    ld hl, BusterShotParams_Upgrade2

jr_006_526c:
    ld a, [wBusterChargeFullThreshold]
    ld d, a
    ld a, [wBusterChargeCounter]
    ld b, a
    xor a
    ld [wBusterChargeCounter], a
    ld a, b
    cp d
    ld de, $0000
    jr c, jr_006_5282

    ld de, $000b

jr_006_5282:
    add hl, de
    push hl
    call Call_006_4f70
    pop de
    ld hl, $0004
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld c, l
    ld a, $17
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $15
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    inc hl
    ld [hl], $00
    ld a, $0b
    add c
    ld l, a
    ld [hl], $01
    ld a, $1f
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, $09
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, [de]
    inc de
    ld [$c236], a
    ld a, [de]
    inc de
    call Call_000_0222
    ld a, $19
    add c
    ld l, a
    ld [hl], $01
    ld a, $1d
    add c
    ld l, a
    ld [hl], $08
    call Call_006_4df7
    call AnimateChargedBusterShot
    jp Jump_006_504d


AnimateChargedBusterShot:
    ld de, ChargedBusterBaseAnim
    jp Jump_006_4e5e


    ld a, [$d740]
    bit 1, a
    jp z, InitChargedBusterShot

    ld a, [wBusterUpgradeLevel]
    or a
    ld a, $00
    jr z, jr_006_52f2

    ld de, $5335
    jr jr_006_52f5

Jump_006_52f2:
jr_006_52f2:
    ld de, $532f

jr_006_52f5:
    ldh [$ff8a], a
    ld l, c
    push hl
    ld b, h
    ld a, $09
    add c
    ld l, a
    ldh a, [$ff8a]
    ld [hl], a
    ld l, e
    ld h, d
    ld a, [hl+]
    call Call_000_0222
    ld a, [hl+]
    push hl
    ld h, b
    ld b, a
    ld a, $1f
    add c
    ld l, a
    ld [hl], b
    pop hl
    call Call_006_4f70
    pop hl
    ld c, l
    ld a, $01
    ld [wPlayerShotAnimType], a
    ret


Jump_006_531c:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $01
    ld a, $0a
    add c
    ld l, a

jr_006_5326:
    ld a, $01
    call Call_000_01b9
    ld a, $04
    jr jr_006_52f2

    dec c
    ld bc, $0200
    nop
    nop
    dec c
    ld bc, $0380
    nop
    nop

Jump_006_533b:
    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    and $03
    jp nz, Jump_006_5364

Jump_006_5345:
    dec b
    ret nz

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_006_5358

    ld de, $5356
    jp Jump_006_49ea


    db $d3
    ld d, l

jr_006_5358:
    or a
    ret z

    call Call_006_4b33
    ret z

    call Call_006_4eff
    xor a
    inc a
    ret


Jump_006_5364:
    ld a, [$c2c5]
    ld e, a
    xor a
    ld [$c2c5], a
    dec b
    jr nz, @+$09

    ld a, e
    cp $02
    jr nz, jr_006_537e

    rst $08
    jr c, jr_006_5326

    ld [$c2ea], a
    ld [$c2ee], a
    ret


jr_006_537e:
    ld a, $04
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff98], a
    inc l
    inc l
    inc l
    ld a, [hl]
    ldh [$ff9a], a
    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    ld [$c2ea], a
    cp $02
    jr z, jr_006_5412

    cp $03
    jp z, Jump_006_549e

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_006_53a8

    bit 7, a
    jr z, jr_006_53f0

Jump_006_53a8:
jr_006_53a8:
    ld a, $0b
    add c
    ld l, a
    xor a
    ld [hl], a
    ld [$c2ee], a
    ld a, [wMegaArmUpgradeCLUnlocked]
    or a
    jr z, jr_006_53db

    ld a, $80
    ld [$c2ee], a
    call Call_006_4bfa

Jump_006_53bf:
    xor a
    ld [$c2eb], a
    ld [$c2ec], a
    ld [$c2ed], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $02
    ld a, $1c
    add c
    ld l, a
    xor a
    ld [hl], a
    ld a, $0b
    add c
    ld l, a
    ld [hl], $01

jr_006_53db:
    ld a, $15
    add c
    ld l, a
    ld [hl], $00
    ld a, $19
    add c
    ld l, a
    ld a, $02
    ld [hl], a
    ld [$c2ea], a
    call Call_006_4df7
    jr jr_006_545f

jr_006_53f0:
    ld de, ChargedBusterBaseAnim
    call Call_006_4e5e
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    cp $a0
    jr nc, jr_006_53a8

    ld a, $15
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_53a8

    call Call_006_4f32
    call Call_006_4b33
    jp z, Jump_006_53a8

    ret


jr_006_5412:
    ld a, [$c2ee]
    bit 7, a
    jr z, jr_006_5434

    ld a, $1d
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_5434

    call Call_006_5519
    jp nz, Jump_006_547e

    ld a, $0b
    add c
    ld l, a
    ld a, [wMegaArmUpgradeCLUnlocked]
    and $01
    ld [hl], a
    jr jr_006_543a

jr_006_5434:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $00

jr_006_543a:
    ld a, $15
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_006_5459

    ld [hl], $04
    ld a, [$de9e]
    or a
    jr z, jr_006_5459

    call Call_006_558b
    ld a, $17
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    call Call_006_4ca9

jr_006_5459:
    call Call_006_4b33
    call Call_006_5535

jr_006_545f:
    ld de, $55be
    call Call_006_4e5e
    call Call_006_4f32
    call Call_006_4b7a
    ret nz

    ld a, $02
    ld [$c2c5], a
    xor a
    ld [$c2ea], a
    ld a, $1f
    add c
    ld l, a
    set 2, [hl]
    xor a
    inc a
    ret


Jump_006_547e:
jr_006_547e:
    ld a, $1a
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $06
    jp nc, Jump_006_5512

    ld a, $19
    add c
    ld l, a
    ld a, $03
    ld [hl], a
    ld [$c2ea], a
    ld a, $1b
    add c
    ld l, a
    ld [hl], $0a
    call Call_006_4df7
    jr jr_006_5500

Jump_006_549e:
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    cp $a0
    jp nc, Jump_006_5512

    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    cp $80
    jp nc, Jump_006_5512

    ld a, $1b
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_547e

    call Call_006_5519
    ld a, $1c
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_006_5516

    ld a, [$d7c3]
    ld b, a
    ld a, $04
    add c
    ld l, a
    ld a, [$c2eb]
    add b
    add [hl]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$c2ec]
    add [hl]
    ld [hl], a
    xor a
    ld [$c2eb], a
    ld [$c2ec], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    sub $06
    and $07
    srl a
    sub $01
    ld d, a
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld a, d
    jr z, jr_006_54fd

    cpl
    inc a

jr_006_54fd:
    ld [$c2ed], a

jr_006_5500:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $01
    ld de, $55b7
    call Call_006_4e5e
    call Call_006_4f32
    xor a
    inc a
    ret


Jump_006_5512:
    xor a
    ld [$c2ee], a

jr_006_5516:
    jp Jump_006_53bf


Call_006_5519:
    ld a, [$d76d]
    and $01
    ret z

    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld d, a
    ld a, [$c2ee]
    ld [hl], a
    res 0, a
    ld [$c2ee], a
    ld a, [hl]
    and d
    and $01
    ret


Call_006_5535:
    ld a, [wMegaArmUpgradeMHUnlocked]
    or a
    ret z

    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff8a], a
    ld a, $01
    ld [$c2c5], a
    ldh a, [$ff98]
    ld e, a
    ldh a, [$ff9a]
    ld d, a
    ld a, [$d7c2]
    ld b, a
    ld a, $04
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    add b
    sub e
    ld [$c2ca], a
    inc l
    inc l
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    sub d
    ld [$c2cb], a
    ldh a, [$ff8a]
    bit 0, a
    ld de, $fc00
    jr z, jr_006_5572

    ld de, $0004

jr_006_5572:
    push hl
    ld hl, $c2c6
    ldh a, [$ff9b]
    add $30
    add d
    ld [hl+], a
    sub d
    add e
    ld [hl+], a
    ldh a, [$ff9c]
    add $30
    add $fa
    ld [hl+], a
    add $0d
    ld [hl+], a
    pop hl
    ret


Call_006_558b:
    ld a, [$d72f]
    ldh [$ff8a], a
    ld a, [$d730]
    ldh [$ff8b], a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld e, a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld d, a
    ld l, c
    push hl
    call Call_000_0252
    pop hl
    ld c, l
    or a
    ret


    jp Jump_000_0455


    nop
    ld bc, $0001
    ld bc, $c3ff
    ld d, l
    inc b
    inc bc
    inc b
    dec b
    rst $38
    jp $1055


    inc b
    rst $38
    rst $08
    ld d, l
    db $e4
    ld d, l
    ld sp, hl
    ld d, l
    ld [bc], a
    ld d, [hl]
    rrca
    ld d, [hl]
    jr @+$58

    ld a, [$fa06]
    ld b, $f9

jr_006_55d4:
    ld sp, hl
    ld l, d
    stop
    ld [$106b], sp
    ld [$6cf8], sp
    stop
    ld [$106d], sp
    add b
    ei
    dec b
    ei
    dec b
    ld sp, hl
    ld sp, hl

jr_006_55ea:
    ld l, [hl]
    stop
    ld [$106f], sp
    ld [$70f8], sp

jr_006_55f3:
    stop
    ld [$1071], sp
    add b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fd
    ld [hl], d
    db $10
    add b
    db $fc
    nop
    cp $02
    ld hl, sp-$05
    ld [hl], e
    db $10
    ld [$7400], sp
    db $10
    add b
    db $fc
    nop
    cp $02
    db $fc
    db $fc
    ld [hl], l
    db $10
    add b
    db $fc
    nop
    cp $02
    db $fc
    db $fd
    halt
    db $10
    add b
    ld a, [$fa06]
    ld b, $f9
    ld hl, sp+$6b
    jr nc, jr_006_562a

jr_006_562a:
    ld [$306a], sp
    ld [$6df8], sp
    jr nc, jr_006_5632

jr_006_5632:
    ld [$306c], sp
    add b
    ei
    dec b
    ei
    dec b
    ld sp, hl
    ld hl, sp+$6f
    jr nc, jr_006_563f

jr_006_563f:
    ld [$306e], sp
    ld [$71f8], sp
    jr nc, jr_006_5647

jr_006_5647:
    ld [$3070], sp
    add b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    ld [hl], d
    jr nc, jr_006_55d4

    nop
    inc b
    cp $02
    ld hl, sp-$03
    ld [hl], e
    jr nc, jr_006_5665

    nop
    ld [hl], h
    jr nc, @-$7e

    nop
    inc b
    cp $02

jr_006_5665:
    db $fc
    db $fc
    ld [hl], l
    jr nc, jr_006_55ea

    nop
    inc b
    cp $02
    db $fc
    ei
    halt
    jr nc, jr_006_55f3

    or $0a
    ldh a, [c]
    db $fc
    ld a, $15
    add c
    ld l, a
    ld [hl], $01
    ld a, [$c2cc]
    and $01
    jp nz, Jump_006_531c

    ld a, [$de9f]
    or a
    jp z, Jump_006_531c

    ld [hl], $00
    ld e, $fd
    ld d, $02
    call Call_006_57a0
    ld a, $1b
    add c
    ld l, a
    ld [hl], $00
    ld [$c2d1], a
    add $fb
    ld l, a
    ld [hl], $f0
    xor a
    ld [$c2d4], a
    ld [$c2d5], a
    ret


    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_006_533b

    dec b
    jp nz, Jump_006_5782

    ld a, $02
    add c
    ld l, a
    ld a, [$c2d4]
    add [hl]
    ld [hl+], a
    inc l
    ld a, [$c2d5]
    adc [hl]
    ld [hl+], a
    xor a
    ld [$c2d4], a
    ld [$c2d5], a
    ld a, $08
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ld a, $1b
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d1], a
    or a
    jr nz, jr_006_5703

    call Call_006_581b
    jp c, Jump_006_5782

    cp $02
    jp nz, Jump_006_576c

    call Call_006_57fb
    xor a
    ld de, $59a0
    call Call_006_4ea8
    call Call_006_58ab
    jp z, Jump_006_5787

jr_006_56fd:
    call Call_006_5791
    jp Jump_006_5767


jr_006_5703:
    dec a
    jr nz, jr_006_573c

    call Call_006_5928
    jr c, jr_006_571d

    ld b, $10
    call Call_006_473e
    ld a, $1b
    add c
    ld l, a
    ld [hl], $03
    add $fb
    ld l, a
    ld [hl], $5a
    jr jr_006_574b

jr_006_571d:
    call Call_006_5942
    jr c, jr_006_56fd

    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_5737

    call Call_006_5899
    xor a
    ld de, $59a0
    call Call_006_4ea8
    jr jr_006_5767

jr_006_5737:
    call Call_006_5791
    jr jr_006_5767

jr_006_573c:
    dec a
    jr nz, jr_006_574b

    call Call_006_58d9
    cp $02
    jr nz, jr_006_5767

    call Call_006_57fb
    jr jr_006_5782

jr_006_574b:
    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_5737

    call Call_006_5942
    jr c, jr_006_5737

    ld a, $1f
    add c
    ld l, a
    ld [hl], $03
    ld a, $01
    ld de, $59a0
    call Call_006_4ea8

Jump_006_5767:
jr_006_5767:
    call Call_006_4b4e
    jr z, jr_006_5782

Jump_006_576c:
    call Call_006_4d34
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d2], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d3], a
    xor a
    inc a
    ret


Jump_006_5782:
jr_006_5782:
    xor a
    ld [$c2cc], a
    ret


Jump_006_5787:
    call Call_006_4df7
    ld a, $1b
    add c
    ld l, a
    ld [hl], $01
    ret


Call_006_5791:
    ld a, $1b
    add c
    ld l, a
    ld [hl], $02
    add $04
    ld l, a
    res 2, [hl]
    call Call_006_58be
    ret


Call_006_57a0:
    xor a
    ld [wPlayerShotAnimType], a
    ld a, $01
    ld [$c2cc], a
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld b, e
    jr z, jr_006_57b3

    ld b, d

jr_006_57b3:
    add $f8
    ld l, a
    ld a, [hl]
    add b
    ld [hl], a
    ld a, $0a
    add c
    ld l, a
    ld a, $0a
    call Call_000_01b9
    ld a, $1e
    add c
    ld l, a
    ld [hl], $5a
    add $01
    ld l, a
    set 4, [hl]
    add $fd
    ld l, a
    ld [hl], $00
    add $ec
    ld l, a
    ld e, l
    ld b, $fc
    ld a, [hl]
    add b
    cp $d0
    jr c, jr_006_57df

    xor a

jr_006_57df:
    ld b, a
    ld a, $1d
    add c
    ld l, a
    ld [hl], b
    ld l, e
    ld [hl], $f8
    push hl
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    call Call_000_0264
    ld hl, $cc70
    ld [hl], b
    pop hl
    ret


Call_006_57fb:
    ld a, $1e
    add c
    ld l, a
    ld [hl], $6a
    add $01
    ld l, a
    res 4, [hl]
    ret


Call_006_5807:
    push hl
    push bc
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    ld hl, $cc70
    call Call_000_0267
    pop bc
    pop hl
    ret


Call_006_581b:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    cp $d0
    jr nc, jr_006_582a

    cp $96
    jr c, jr_006_582a

    scf
    ret


jr_006_582a:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_006_5845

    ld de, $595e
    call Call_006_4e5e
    ldh a, [$ff8f]
    or a
    jr z, jr_006_5892

    ld a, $1c
    add c
    ld l, a
    ld [hl], $02
    jr jr_006_5892

jr_006_5845:
    ld a, $1d
    add c
    ld l, a
    ld b, [hl]
    add $eb
    ld l, a
    ld a, [hl]
    cp $d0
    jr nc, jr_006_5881

    cp b
    jr c, jr_006_5881

    ld a, [$de9b]
    cp $08
    jr z, jr_006_5879

    ld a, [hl]
    cp $80
    jr nc, jr_006_5881

    call Call_006_58b5
    jr z, jr_006_5881

    ld b, $04

jr_006_5868:
    ld a, $08
    add c
    ld l, a
    dec [hl]
    push bc
    call Call_006_58b5
    pop bc
    jr z, jr_006_5879

    dec b
    jr z, jr_006_5879

    jr jr_006_5868

jr_006_5879:
    ld a, $1c
    add c
    ld l, a
    ld [hl], $01
    jr jr_006_5892

jr_006_5881:
    call Call_006_5807
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $04
    ld [hl], a
    ld de, $5959
    call Call_006_4e5e

jr_006_5892:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    or a
    ret


Call_006_5899:
    ld b, $03
    cp $80
    jr nc, jr_006_58a5

    and $04
    jr z, jr_006_58a5

    ld b, $07

jr_006_58a5:
    ld a, $1f
    add c
    ld l, a
    ld [hl], b
    ret


Call_006_58ab:
    ld d, $02
    call Call_006_58b7
    ret nz

    call Call_006_58b5
    ret


Call_006_58b5:
    ld d, $0a

Call_006_58b7:
    ld e, $f9
    ld b, $08
    jp $4d09


Call_006_58be:
    ld a, $1e
    add c
    ld l, a
    ld [hl], $5a
    add $01
    ld l, a
    set 4, [hl]
    call Call_006_4df7
    ld de, $5965
    call Call_006_4e5e
    ld a, $1c
    add c
    ld l, a
    ld [hl], $01
    ret


Call_006_58d9:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr nz, jr_006_58fc

    ld de, $5965
    call Call_006_4e5e
    ldh a, [$ff8f]
    or a
    jr z, jr_006_5921

    ld a, $1c
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_006_5921

jr_006_58fc:
    ld a, $00
    ldh [$ff8b], a
    ld a, $04
    ldh [$ff8c], a
    ld de, $ffa0
    call Call_006_4dc4
    cp $90
    jr c, jr_006_5918

    cp $f8
    jr nc, jr_006_5918

    ld a, $1c
    add c
    ld l, a
    ld [hl], $02

jr_006_5918:
    call Call_006_5807
    ld de, $5959
    call Call_006_4e5e

jr_006_5921:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    or a
    ret


Call_006_5928:
    ld a, [$d74b]
    or a
    scf
    ret nz

    ld a, [$d72a]
    bit 7, a
    ret nz

    ld de, $5673
    call Call_006_4d3e
    ret c

    ld a, $01
    ld [$d762], a
    or a
    ret


Call_006_5942:
    ld a, [$c2cc]
    bit 6, a
    jr nz, jr_006_5957

    call Call_006_58b5
    jr nz, jr_006_5957

    ld d, $0b
    call Call_006_58b7
    jr z, jr_006_5957

    or a
    ret


jr_006_5957:
    scf
    ret


    ld l, h
    ld e, c
    ld a, b
    nop
    rst $38
    ld l, h
    ld e, c
    inc b
    ld bc, $0200
    rst $38
    ld l, h
    ld e, c
    inc b
    ld [bc], a
    nop
    ld bc, $72ff
    ld e, c
    ld a, [hl]
    ld e, c
    sub d
    ld e, c
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    db $ec
    inc d
    nop
    nop
    nop
    nop
    add b
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    db $f4
    inc sp
    ld bc, $8102
    ld bc, $8102
    inc bc
    inc b
    add e
    ld [$02f8], sp
    add b
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc b
    ld sp, $0403
    add e
    ld [$02f8], sp
    add b
    and h
    ld e, c
    or l
    ld e, c
    ld sp, hl
    ld [$0a02], sp
    ldh a, [c]
    db $f4
    inc sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$f980], sp
    ld [$0a02], sp
    ldh a, [c]
    db $f4
    inc sp
    nop
    add hl, bc
    ld a, [bc]
    inc bc
    dec bc
    inc c
    ld b, $07
    ld [$f480], sp
    inc c
    ld bc, $3e0a
    dec d
    add c
    ld l, a
    ld [hl], $01
    ld a, [$c2cc]
    and $01
    jp nz, Jump_006_531c

    ld a, [$dea6]
    or a
    jp z, Jump_006_531c

    ld [hl], $00
    ld e, $fc
    ld d, $03
    call Call_006_57a0
    ld a, $1b
    add c
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    ld [hl], $f0
    ret


    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_006_533b

    dec b
    jp nz, Jump_006_5782

    ld a, $1b
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_006_5a20

    call Call_006_581b
    jp c, Jump_006_5782

    cp $02
    jp nz, Jump_006_5a9f

    call Call_006_57fb
    call Call_006_5b1c
    jp z, Jump_006_5aa5

    jp Jump_006_5ab0


jr_006_5a20:
    dec a
    jr nz, jr_006_5a44

    call Call_006_5b1c
    jp nz, Jump_006_5ab0

    ld a, [$d74b]
    or a
    jr z, jr_006_5a35

    call Call_006_5af2
    jp c, Jump_006_5ac0

jr_006_5a35:
    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jp z, Jump_006_5ab0

    call Call_006_5899
    jr jr_006_5a88

jr_006_5a44:
    dec a
    jr nz, jr_006_5a54

    call Call_006_58d9
    cp $02
    jr nz, jr_006_5a9f

    call Call_006_57fb
    jp Jump_006_5782


Jump_006_5a54:
jr_006_5a54:
    push hl
    ld hl, $c2cc
    res 7, [hl]
    pop hl
    call Call_006_5b2b
    jp z, Jump_006_5ab0

    call Call_006_5afb
    call Call_006_5b1c
    jp nz, Jump_006_5ab0

    ld a, $1f
    add c
    ld l, a
    ld [hl], $03
    call Call_006_5af2
    jr nc, jr_006_5a88

    ld a, $16
    add c
    ld l, a
    ld a, [hl]
    ld [$d732], a
    xor a
    ld [$d731], a
    push hl
    ld hl, $c2cc
    set 7, [hl]
    pop hl

jr_006_5a88:
    ld de, $5b65
    call Call_006_4e5e

jr_006_5a8e:
    call Call_006_4b4e
    jp z, Jump_006_5782

    call Call_006_5ad8
    jr nc, jr_006_5a9f

    ld de, $59c6
    call Call_006_4d6c

Jump_006_5a9f:
jr_006_5a9f:
    call Call_006_4d34
    xor a
    inc a
    ret


Jump_006_5aa5:
    call Call_006_4df7
    ld a, $1b
    add c
    ld l, a
    ld [hl], $01
    jr jr_006_5a88

Jump_006_5ab0:
    ld a, $1b
    add c
    ld l, a
    ld [hl], $02
    add $04
    ld l, a
    res 2, [hl]
    call Call_006_58be
    jr jr_006_5a8e

Jump_006_5ac0:
    ld a, $1b
    add c
    ld l, a
    ld [hl], $03
    add $f7
    ld l, a
    ld [hl], $fa
    add $ef
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    call Call_006_5b2b
    jp Jump_006_5a54


Call_006_5ad8:
    ld a, $08
    add c
    ld l, a
    ld a, [$d725]
    sub [hl]
    sub $f4
    bit 7, a
    jr z, jr_006_5ae8

    cpl
    inc a

jr_006_5ae8:
    cp $03
    ret nc

    ld e, $ef
    ld d, $11
    jp Jump_006_4da6


Call_006_5af2:
    ld b, $f4
    ld e, $ee
    ld d, $12
    jp Jump_006_4d9b


Call_006_5afb:
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld de, $ffe0
    jr z, jr_006_5b09

    ld de, $0020

jr_006_5b09:
    ld a, $00
    ldh [$ff8b], a
    ld a, $01
    ldh [$ff8c], a
    call Call_006_4dbe
    sub e
    ld e, a
    ld a, $16
    add c
    ld l, a
    ld [hl], e
    ret


Call_006_5b1c:
    ld d, $01
    call Call_006_5b24
    ret nz

    ld d, $0a

Call_006_5b24:
    ld e, $f4
    ld b, $0c
    jp $4d09


Call_006_5b2b:
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    cp $3c
    jr nc, jr_006_5b39

    ld a, [$dea6]
    or a
    ret


jr_006_5b39:
    ld [hl], $00
    ld b, $08
    call Call_006_473e
    ret


    ld b, l
    ld e, e
    ld d, l
    ld e, e
    db $f4
    inc c
    ld bc, $f00a
    db $fc
    ld b, d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    add b
    db $f4
    inc c
    ld bc, $f00a
    db $fc
    ld b, d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $08
    add b
    ld b, c
    ld e, e
    inc b
    nop
    ld bc, $00ff
    ld [bc], a
    nop
    nop
    rst $08
    ld a, $21
    ld l, e
    ld e, e
    call Call_006_4f70
    ld a, $1d
    add c
    ld l, a
    ld [hl], $00
    call Call_006_4df7
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0

Call_006_5b86:
    ld de, $5c7c
    jp Jump_006_4dff


    dec b
    ret nz

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_006_5b9f

    ld de, $5b9d
    jp Jump_006_49df


    sbc h
    ld e, h

jr_006_5b9f:
    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_006_5bbf

    dec a
    jr z, jr_006_5bf7

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret z

    call Call_006_5b86
    call Call_006_4b33
    jr z, jr_006_5bbe

    call Call_006_4eff
    xor a
    inc a

Jump_006_5bbe:
jr_006_5bbe:
    ret


jr_006_5bbf:
    ld a, $1d
    add c
    ld l, a
    inc [hl]
    ld a, $0a
    add c
    ld l, a
    ld a, $01
    call Call_000_01b9
    call Call_006_4df7
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$d72f]
    cp b
    ld b, $02
    jr c, jr_006_5be2

    ld b, $10

jr_006_5be2:
    ld a, $15
    add c
    ld l, a
    ld a, b
    call Call_006_4be4
    ld a, b
    ld de, $03a0
    call Call_006_4ca9
    ld a, $18
    add c
    ld l, a
    ld [hl], $00

jr_006_5bf7:
    ld de, $5c86
    call Call_006_4dff
    ld a, [$de9e]
    or a
    jr z, jr_006_5c4e

    ld a, $18
    add c
    ld l, a
    ld a, [hl+]
    or a
    jr nz, jr_006_5c1a

    call Call_006_4ba6
    bit 7, d
    jr nz, jr_006_5c4e

    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    jr jr_006_5c4e

jr_006_5c1a:
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $28
    cp $f0
    jr nc, jr_006_5c78

    ld e, a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $38
    cp $f0
    jr nc, jr_006_5c78

    ld d, a
    ld a, [$d722]
    add $28
    ldh [$ff8a], a
    ld a, [$d725]
    add $38
    ldh [$ff8b], a
    ld l, c
    push hl
    call Call_000_0252
    pop hl
    ld c, l
    ld a, b
    ld de, $0040
    call Call_006_4cc7

jr_006_5c4e:
    call Call_006_4b19
    call Call_006_4b7a
    jp nz, Jump_006_5bbe

    ld a, [$de9e]
    cp $98
    jr nc, jr_006_5c78

    push hl
    ld a, $02
    ld [$d4bb], a
    ld a, $9e
    ld [$d4b9], a
    ld a, $de
    ld [$d4ba], a
    ld hl, $deaf
    set 1, [hl]
    xor a
    ld [$d4b8], a
    pop hl

jr_006_5c78:
    xor a
    jp Jump_006_5bbe


    adc h
    ld e, h
    ld [bc], a
    nop
    ld bc, $0002
    ld bc, $ff03
    adc h
    ld e, h
    inc b
    inc b
    dec b
    rst $38
    sbc b
    ld e, h
    and c
    ld e, h
    or [hl]
    ld e, h
    bit 3, h
    ldh [$ff5c], a
    jp hl


    ld e, h
    db $fc
    inc bc
    ei
    inc b
    db $fc
    db $fc
    nop
    db $10
    add b
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp-$08
    ld bc, $0010
    rlca
    ld bc, $0730
    ld sp, hl
    ld bc, $0050
    rlca
    ld bc, $8070
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp-$08
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, jr_006_5cca

    ld sp, hl
    ld [bc], a
    ld d, b
    nop
    rlca
    ld [bc], a
    ld [hl], b

jr_006_5cca:
    add b
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp-$08
    inc bc
    stop
    rlca
    inc bc
    jr nc, jr_006_5cdf

    ld sp, hl
    inc bc
    ld d, b
    nop
    rlca
    inc bc
    ld [hl], b

jr_006_5cdf:
    add b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc b
    db $10
    add b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    dec b
    db $10
    add b
    ld a, [$fa06]
    ld b, $f8
    ld [$08f8], sp
    rst $08
    ld b, b
    call Call_006_5016
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    ld a, $0b
    add c
    ld l, a
    ld [hl], $20
    ld de, $ff00
    call Call_006_4fa2
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    call Call_006_4df7
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $15
    add c
    ld l, a
    ld [hl], $00
    ld de, $5f19
    jp Jump_006_4dff


    dec b
    ret nz

    call Call_006_4b0f
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    cp $03
    jp z, Jump_006_5e59

    ld a, $0b
    add c
    ld l, a
    ld d, [hl]
    bit 7, d
    jr z, jr_006_5d4e

    ld de, $5d4c
    jp Jump_006_49e1


    sbc [hl]
    ld e, a

jr_006_5d4e:
    ld a, [hl]
    cp $20
    jp nz, Jump_006_5e4b

    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_006_5dde

    dec a
    jp z, Jump_006_5e0a

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_006_5d7d

    ld de, $5f19
    call Call_006_4dff
    ldh a, [$ff8f]
    or a
    jr z, jr_006_5d83

    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    call Call_006_4df7

jr_006_5d7d:
    ld de, $5f20
    call Call_006_4dff

jr_006_5d83:
    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    inc a
    cp $30
    jr c, jr_006_5d8e

    xor a

jr_006_5d8e:
    ld [hl], a
    ld b, a
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld a, b
    jr z, jr_006_5d9c

    ld a, $2f
    sub b

jr_006_5d9c:
    add $e9
    ld e, a
    ld a, $5e
    adc $00
    ld d, a
    ld a, $1b
    add c
    ld l, a
    ld a, [de]
    ld b, a
    sub [hl]
    ld [hl], b
    ld d, a
    ld e, $00
    call Call_006_4f89
    call Call_006_5e1c
    bit 0, a
    jr z, jr_006_5dcd

    ld a, $03
    add c
    ld l, a
    ld e, [hl]
    add $09
    ld l, a
    xor a
    bit 7, e
    jr nz, jr_006_5dc7

    inc a

jr_006_5dc7:
    ld [hl], a
    call Call_006_5e38
    jr jr_006_5dd4

jr_006_5dcd:
    bit 1, a
    jr z, jr_006_5dd4

    call Call_006_5e22

jr_006_5dd4:
    call Call_006_4eff

Jump_006_5dd7:
    call Call_006_4b4e
    ret z

    xor a
    inc a
    ret


Jump_006_5dde:
    ld de, $5f28
    call Call_006_4dff
    call Call_006_5e1c
    bit 0, a
    jr z, jr_006_5dfe

    ld a, $15
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $01
    jp nc, Jump_006_5e4b

    call Call_006_4b04
    call Call_006_5e22
    jr jr_006_5dd4

jr_006_5dfe:
    bit 1, a
    jr nz, jr_006_5dd4

    call Call_006_5e38
    call Call_006_4b04
    jr jr_006_5dd4

Jump_006_5e0a:
    ld de, $5f30
    call Call_006_4dff
    call Call_006_5e1c
    bit 1, a
    jr z, jr_006_5e1a

    jp Jump_006_5e4b


jr_006_5e1a:
    jr jr_006_5dd4

Call_006_5e1c:
    ld de, $5cf2
    jp Jump_006_4abf


Call_006_5e22:
    ld a, $1c
    add c
    ld l, a
    ld [hl], $01
    ld de, $ff00
    call Call_006_4f94
    ld de, $ff00
    call Call_006_4fa2
    call Call_006_4df7
    ret


Call_006_5e38:
    ld a, $1c
    add c
    ld l, a
    ld [hl], $02
    call Call_006_4f86
    ld de, $ff00
    call Call_006_4fa2
    call Call_006_4df7
    ret


Jump_006_5e4b:
    ld a, $1c
    add c
    ld l, a
    ld [hl], $03
    ld b, $18
    call Call_000_01f8
    jp Jump_006_5dd7


Jump_006_5e59:
    ld a, $1f
    add c
    ld l, a
    set 2, [hl]

jr_006_5e5f:
    ld de, $5ec4
    ld b, $18
    call Call_000_01fb
    or a
    jr z, jr_006_5eb7

    ldh a, [$ff8f]
    or a
    jr nz, jr_006_5ec0

    ld a, b
    add a
    ld de, $5ed7
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $04
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld b, a
    inc de
    ld a, $08
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld d, a
    ld e, b
    push de
    ld l, c
    push hl
    call Call_000_02fa
    rst $08
    rra
    pop hl
    ld c, l
    pop de
    push de
    ld a, $0b
    add c
    ld l, a
    ld [hl], $06
    ld b, $01
    call Call_006_4938
    ld de, $5ec2
    ld l, c
    push hl
    xor a
    call Call_006_4eaf
    pop hl
    ld c, l
    pop de
    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_006_5e5f

    jr jr_006_5ebd

jr_006_5eb7:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $00

jr_006_5ebd:
    xor a
    inc a
    ret


jr_006_5ec0:
    xor a
    ret


    or $5c
    nop
    nop
    nop
    ld bc, $0501
    nop
    ld [bc], a
    ld bc, $0006
    inc bc
    ld bc, $0007
    inc b
    ld bc, $ff08
    nop
    nop
    nop
    ldh a, [$ff0b]
    push af
    stop
    dec bc
    dec bc
    nop
    db $10
    push af
    dec bc
    ldh a, [rP1]
    push af
    push af
    nop
    db $fd
    ld a, [$f4f7]
    pop af
    rst $28
    db $ed
    db $eb
    ld [$e8e9], a

Jump_006_5ef5:
    add sp, -$18
    jp hl


    ld [$edeb], a
    rst $28
    pop af
    db $f4
    rst $30
    ld a, [$00fd]
    inc bc
    ld b, $09
    inc c
    rrca
    ld de, $1513
    ld d, $17
    jr jr_006_5f26

    jr jr_006_5f27

    ld d, $15
    inc de
    ld de, $0c0f
    add hl, bc
    ld b, $03
    ld b, b
    ld e, a
    inc d
    nop
    ld bc, $ff02
    ld b, b
    ld e, a
    ld [$0302], sp
    ld [bc], a

jr_006_5f26:
    inc b

jr_006_5f27:
    rst $38
    ld b, b
    ld e, a
    ld [$0502], sp
    ld b, $05
    rst $38
    ld b, b
    ld e, a
    ld [$0702], sp
    ld [$ff07], sp
    ld b, b
    ld e, a
    ld [$0902], sp
    ld a, [bc]
    add hl, bc
    rst $38
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld [hl], b
    ld e, a
    add l
    ld e, a
    sbc d
    ld e, a
    xor a
    ld e, a
    call nz, $d55f
    ld e, a
    ld [$fb5f], a
    ld e, a
    db $10
    ld h, b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $10
    add b
    ei
    inc b
    db $fc
    inc b
    ei
    ei
    ld bc, $0010
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp-$08
    inc b
    stop
    ld [$1005], sp
    ld [$06f8], sp
    stop
    ld [$1007], sp
    add b
    ld hl, sp+$08
    ld hl, sp+$07
    ld hl, sp-$08
    ld [$0010], sp
    ld [$1009], sp
    ld [$0af8], sp
    stop
    ld [$100b], sp
    add b
    rst $30
    dec b
    ld hl, sp+$07
    ld hl, sp-$09
    inc c
    stop
    ld [$100d], sp
    ld [$0ef8], sp
    stop
    ld [$100f], sp
    add b
    ld sp, hl
    ld b, $f9
    inc b
    ld hl, sp-$08
    db $10
    stop
    ld [$1011], sp
    rlca
    ld hl, sp+$12
    stop
    ld [$1013], sp
    add b
    ei
    inc bc
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ei
    ld bc, $0010
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    rst $30
    db $10
    stop
    ld [$1011], sp
    rlca
    ld hl, sp+$12
    stop
    ld [$1013], sp
    add b
    ld sp, hl
    nop
    ei
    inc b
    ei
    ld hl, sp+$01
    stop
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    ei
    ld b, $f9
    inc b
    ld sp, hl
    ld sp, hl
    db $10
    stop
    ld [$1011], sp
    rlca
    ld hl, sp+$12
    stop
    ld [$1013], sp
    add b
    rst $38
    ld b, $fb
    inc b
    ei
    cp $01
    stop
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    rst $08
    dec c
    ld a, $10
    ld [$c201], a
    call Call_006_4f83
    ld a, $15
    add c
    ld l, a
    ld [hl], $3c
    call Call_006_4df7
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    ld de, $60a6
    jp Jump_006_4dff


    dec b
    ret nz

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret z

    bit 7, a
    jr z, @+$0a

    ld de, $6053
    jp Jump_006_49df


    jp nz, $3e60

    dec d
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_606a

    xor a
    ld [$c235], a
    ld de, $60a6
    call Call_006_4dff
    jr jr_006_609c

jr_006_606a:
    or a
    jr z, jr_006_6072

    call Call_006_4df7
    rst $08
    dec a

jr_006_6072:
    ld a, $01
    ld [$c235], a
    ld a, $0b
    add c
    ld l, a
    ld [hl], $04
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld de, $0040
    jr nz, jr_006_608b

    ld de, $ffc0

jr_006_608b:
    ld a, $00
    ldh [$ff8b], a
    ld a, $08
    ldh [$ff8c], a
    call Call_006_4dbe
    ld de, $60ad
    call Call_006_4dff

jr_006_609c:
    call Call_006_4b33
    ret z

    call Call_006_4eff
    xor a
    inc a
    ret


    or h
    ld h, b
    ld [bc], a
    nop
    ld bc, $ff02
    or h
    ld h, b
    inc b
    ld [bc], a
    inc bc
    inc b
    rst $38
    cp [hl]
    ld h, b
    bit 4, b
    call c, $ed60
    ld h, b
    ld a, [bc]
    ld h, c
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$00
    stop
    ld [$1001], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$02
    stop
    ld [$1003], sp
    nop
    ld [$1006], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$04
    stop
    ld [$1005], sp
    nop
    ld [$1007], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$00
    stop
    ld [$1001], sp
    db $fc
    ld [$1008], sp
    ld [$0900], sp
    db $10
    db $fc
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$02
    stop
    ld [$1003], sp
    db $fd
    ld [$5009], sp
    ld [$0800], sp
    ld d, b
    ei
    ld [$100b], sp
    add b
    ld a, [$f905]
    ld b, $f8
    ld [$06f9], sp
    ld a, [$f905]
    ld b, $fc
    inc bc
    db $fc
    inc bc
    rst $08
    dec c
    call Call_006_5016
    ld a, $15
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_006_61f4
    call Call_006_4df7
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    ld de, $624a
    jp Jump_006_4dff


    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_006_63fa

    dec b
    ret nz

    call Call_006_4b0f
    ld a, $16
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_006_61d2

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret z

    bit 7, a
    jr z, jr_006_617c

    ld de, $617a
    jp Jump_006_49df


    adc c
    ld h, d

jr_006_617c:
    call Call_006_4a3d
    call Call_006_4ba6
    ld de, $6123
    call Call_006_4abf
    or a
    jr z, jr_006_619a

    bit 0, a
    jr nz, jr_006_61a4

    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_006_61bb

    call Call_006_4f9f

jr_006_619a:
    call Call_006_4b4e
    ret z

    call Call_006_4eff
    xor a
    inc a
    ret


jr_006_61a4:
    ld de, $6127
    ld a, $03
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_006_61b4

    call Call_006_4a8d
    jr jr_006_61b7

jr_006_61b4:
    call Call_006_4a74

jr_006_61b7:
    ld e, $02
    jr jr_006_61c3

jr_006_61bb:
    ld de, $612b
    call Call_006_4aa6
    ld e, $04

jr_006_61c3:
    ld a, $16
    add c
    ld l, a
    ld [hl], e
    call $634d
    call Call_006_4df7
    rst $08
    ccf
    jr jr_006_619a

jr_006_61d2:
    call Call_006_4a6a
    ld a, $16
    add c
    ld l, a
    ld a, [hl]
    cp $04
    ld de, $624f
    jr z, jr_006_61e4

    ld de, $6257

jr_006_61e4:
    call Call_006_4dff
    jp Jump_006_6447


    ld b, b
    cp $c0
    db $fd
    add b
    cp $20
    db $fd
    ld h, b
    db $fc

Call_006_61f4:
    ld b, $00
    ld a, [$d741]
    and $30
    jr z, jr_006_61fe

    inc b

jr_006_61fe:
    ld a, b
    ld de, $61ea
    call Call_000_0171
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    call nz, Call_000_016b
    ld a, [$d728]
    ld b, a
    ld a, [$d727]
    add e
    ld e, a
    ld a, b
    adc d
    ld d, a
    call Call_006_4f89
    ld b, $00
    ld a, [$d741]
    bit 6, a
    jr z, jr_006_6227

    inc b

jr_006_6227:
    bit 7, a
    jr nz, jr_006_622c

    inc b

jr_006_622c:
    ld a, b
    ld de, $61ee
    call Call_000_0171
    ld a, [$d72a]
    ld b, a
    ld a, [$d729]
    sra b
    rr a
    sra b
    rr a
    add e
    ld e, a
    ld a, b
    adc d
    ld d, a
    jp Jump_006_4fa2


    ld l, l
    ld h, d
    ldh a, [rP1]
    rst $38
    ld l, l
    ld h, d
    ld b, $01
    ld [bc], a
    inc bc
    dec bc
    rst $38
    ld l, l
    ld h, d
    ld b, $04
    dec b
    ld b, $0b
    rst $38
    ld l, l
    ld h, d
    ldh a, [rTAC]
    rst $38
    ld l, l
    ld h, d
    inc b
    ld [$0907], sp
    ld a, [bc]
    dec bc
    rst $38
    add l
    ld h, d
    sbc d
    ld h, d
    xor e
    ld h, d
    call nz, $d562
    ld h, d
    and $62
    rst $38
    ld h, d
    inc c
    ld h, e
    dec d
    ld h, e
    ld e, $63
    daa
    ld h, e
    jr nc, jr_006_62e8

    ld a, [$f905]
    ld b, $f8
    ld hl, sp+$01
    jr nc, jr_006_628e

jr_006_628e:
    ld [$1001], sp
    ld [$01f8], sp
    ld [hl], b
    nop
    ld [$1002], sp
    add b
    db $f4
    dec bc
    nop
    rlca
    nop
    db $f4
    inc bc
    stop
    ld [$1004], sp
    nop
    ld [$3003], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$0c
    dec b
    stop
    ld [$1006], sp
    ld [$07f8], sp
    stop
    ld [$1008], sp
    nop
    ld [$3007], sp
    add b
    db $f4
    dec bc
    nop
    rlca
    nop
    db $f4
    add hl, bc
    stop
    ld [$100a], sp
    nop
    ld [$3009], sp
    add b
    ld hl, sp+$00
    db $f4
    dec bc
    db $f4
    ld hl, sp+$0b
    db $10
    ld [$0c00], sp
    db $10
    ld [$0b00], sp
    ld d, b
    add b
    ld hl, sp+$07

jr_006_62e8:
    ld hl, sp+$07
    db $f4
    ld hl, sp+$0d
    stop
    ld [$100e], sp
    ld [$0ff8], sp
    stop
    ld [$1010], sp
    ld [$0df8], sp
    ld d, b
    add b
    ld hl, sp+$00
    db $fc
    dec bc
    db $fc
    ld hl, sp+$11
    db $10
    ld [$1200], sp
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    inc de
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    inc d
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    dec d
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $10
    add b
    nop
    nop
    nop
    nop
    add b
    ret nz

    rst $38
    nop
    db $fc

jr_006_6339:
    nop
    rst $38
    jr nz, jr_006_6339

    ld b, b
    cp $80
    db $fc
    and b
    rst $38
    nop
    db $fd
    add b
    cp $c0
    db $fd
    ret nz

    db $fd
    add b
    cp $3e
    inc c
    add c
    ld l, a
    ld a, [hl]
    ld [$c239], a
    ld a, e
    cp $04
    jp nz, Jump_006_6381

    ld l, c
    push hl
    call Call_006_63af
    jr c, jr_006_637e

    ld de, $6335
    call Call_006_4fad
    call Call_006_63af
    jr c, jr_006_637e

    ld de, $6339
    call Call_006_4fad
    call Call_006_63af
    jr c, jr_006_637e

    ld de, $633d
    call Call_006_4fad

jr_006_637e:
    pop hl
    ld c, l
    ret


Jump_006_6381:
    ld a, [$c239]
    xor $01
    ld [$c239], a
    ld l, c
    push hl
    call Call_006_63af
    jr c, jr_006_63ac

    ld de, $6341
    call Call_006_4fad
    call Call_006_63af
    jr c, jr_006_63ac

    ld de, $6345
    call Call_006_4fad
    call Call_006_63af
    jr c, jr_006_63ac

    ld de, $6349
    call Call_006_4fad

jr_006_63ac:
    pop hl
    ld c, l
    ret


Call_006_63af:
    call Call_006_4886
    ret c

    ld a, c
    ld [$c2bf], a
    ld a, h
    ld [$c2c0], a
    call Call_006_4714
    ld l, c
    push hl
    ld e, c
    ld d, h
    ld hl, $c2bd
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $000a
    call Call_000_0180
    pop hl
    ld c, l
    ld a, $0a
    add c
    ld l, a
    ld a, $01
    call Call_000_01b9
    ld a, $0c
    add c
    ld l, a
    ld a, [$c239]
    ld [hl], a
    ld a, $15
    add c
    ld l, a
    ld [hl], $01
    inc l
    ld [hl], $00
    call Call_006_4df7
    ld de, $625f
    call Call_006_4e5e
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    ret


Jump_006_63fa:
    dec b
    ret nz

    call Call_006_4b0f
    ld a, $16
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_006_643e

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret z

    bit 7, a
    jr z, jr_006_641a

    ld de, $6418
    jp Jump_006_49df


    inc c
    ld h, e

jr_006_641a:
    call Call_006_4a3d
    call Call_006_4ba6
    ld de, $612f
    call Call_006_4abf
    or a
    jr nz, jr_006_6433

jr_006_6429:
    call Call_006_4b4e
    ret z

    call Call_006_4f32
    xor a
    inc a
    ret


jr_006_6433:
    ld a, $16
    add c
    ld l, a
    ld [hl], $01
    call Call_006_4df7
    jr jr_006_6429

jr_006_643e:
    call Call_006_4a6a
    ld de, $6264
    call Call_006_4e5e

Jump_006_6447:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $0b
    ret


    rst $08
    ld c, l
    call Call_006_6481
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld a, [$d703]
    or a
    ld b, $01
    jr z, jr_006_6465

    ld b, $00

jr_006_6465:
    ld a, $00
    ld [$c2d5], a
    ld a, b
    ld [$c2d6], a
    xor a
    ld [$c2e5], a
    ld a, $1f
    add c
    ld l, a
    ld [hl], $e0
    add $ed
    ld l, a
    ld [hl], $00
    call Call_006_4df7
    ret


Call_006_6481:
Jump_006_6481:
    ld a, $15
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $04
    ret


jr_006_648b:
    xor a
    ld [$c2f5], a
    ret


    dec b
    ret nz

    ld a, $00
    add c
    ld l, a
    bit 6, [hl]
    call nz, Call_006_4a31
    ld a, $0b
    add c
    ld l, a
    ld [hl], $03
    call Call_006_4b0f
    call Call_006_6883
    ld a, $15
    add c
    ld l, a
    ld a, [hl+]
    dec a
    jr z, jr_006_64fe

    dec a
    jp z, Jump_006_6549

    call Call_000_01e9
    jr z, jr_006_64dd

    cp $03
    jr nz, jr_006_64d5

    ld a, $01
    ld [$c2f5], a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld [$c2d1], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld [$c2d2], a

jr_006_64d5:
    call Call_006_4b4e
    jr z, jr_006_648b

Jump_006_64da:
    xor a
    inc a
    ret


jr_006_64dd:
    xor a
    ld [$c2f5], a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $06
    jr nc, jr_006_648b

    ld a, $15
    add c
    ld l, a
    ld [hl], $01
    inc l
    ld [hl], $07
    ld a, $19
    add c
    ld l, a
    ld [hl], $09
    call Call_006_655a
    jr jr_006_64d5

jr_006_64fe:
    call Call_000_01e9
    jr nz, jr_006_6543

    ld a, $19
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_6516

    ld a, [$c2e5]
    set 3, a
    ld [$c2e5], a
    jr jr_006_6543

jr_006_6516:
    ld a, $15
    add c
    ld l, a
    ld [hl], $02
    ld a, [$c2e5]
    set 1, a
    res 2, a
    ld [$c2e5], a
    ld a, $04
    add c
    ld l, a
    ld a, [$c2d1]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$c2d2]
    ld [hl], a
    call Call_006_4df7
    ld a, [$c2e5]
    res 3, a
    ld [$c2e5], a
    jr jr_006_6549

jr_006_6543:
    call Call_006_6641
    jp Jump_006_64da


Jump_006_6549:
jr_006_6549:
    call Call_006_6641
    ld a, $25
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_006_6557

    jp Jump_006_64da


jr_006_6557:
    jp Jump_006_6481


Call_006_655a:
    ld l, c
    push hl
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    inc [hl]
    or a
    jr z, jr_006_65a6

    ld a, [$c2f6]
    cp $ff
    jr nz, jr_006_6582

    ld hl, $d730
    ld a, [hl]
    cp $20
    ld a, $ec
    jr nc, jr_006_6578

    ld a, $25

jr_006_6578:
    add [hl]
    ld [$c2d4], a
    ld a, [$d72f]
    ld [$c2d3], a

jr_006_6582:
    ld a, [$c2d3]
    ldh [$ff8a], a
    ld a, [$c2d4]
    ldh [$ff8b], a
    ld a, [$c2d1]
    ld e, a
    ld a, [$c2d2]
    ld d, a
    call Call_000_0252
    dec a
    ld de, $6898
    call Call_000_0171
    ld a, e
    ld [$c2d5], a
    ld a, d
    ld [$c2d6], a

jr_006_65a6:
    ld a, [$c2d5]
    ld hl, $68b8
    call Call_000_016e
    ld de, $c2d7
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_006_6626
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_006_6626
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_006_6626
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld l, c
    ld h, b
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [$c2e3], a
    ld a, b
    ld [$c2e4], a
    call Call_006_683d
    pop hl
    ld c, l
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d1], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d2], a
    ld a, $21
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $25
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$c2e5], a
    ld a, $01
    ldh [$ff8a], a
    call Call_006_6693
    ld a, $05
    ld [$c2e5], a
    ret


Call_006_6626:
    dec de
    dec de
    ld a, [$c2d6]
    bit 0, a
    jr z, jr_006_6633

    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_006_6633:
    inc de
    ld a, [$c2d6]
    bit 1, a
    jr z, jr_006_663f

    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_006_663f:
    inc de
    ret


Call_006_6641:
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld [hl], a
    ld [$c2d1], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d2], a
    ld a, $21
    add c
    ld l, a
    ld a, [$c2d7]
    add [hl]
    ld [hl+], a
    ld a, [$c2d8]
    adc [hl]
    ld [hl], a
    or a
    jr z, jr_006_66b9

    ld [hl], $00
    ldh [$ff8a], a
    ld e, a
    ld a, $25
    add c
    ld l, a
    ld a, [$c2e5]
    bit 1, a
    jr nz, jr_006_6683

    ld a, [$c2d9]
    ld b, a
    ld a, [hl]
    add e
    cp b
    jr c, jr_006_667d

    ld a, b

jr_006_667d:
    ld [hl], a
    call Call_006_66ba
    jr jr_006_668c

jr_006_6683:
    ld a, [hl]
    sub e
    jr nc, jr_006_6688

    xor a

jr_006_6688:
    ld [hl], a
    call Call_006_66ba

jr_006_668c:
    ld a, [$c2e5]
    bit 2, a
    jr z, jr_006_66b9

Call_006_6693:
    push hl
    ldh a, [$ff8a]
    ld b, a
    ld hl, $c2d1
    ld de, $c2df

jr_006_669d:
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    dec b
    jr nz, jr_006_669d

    pop hl
    ld a, $04
    add c
    ld l, a
    ld a, [$c2d1]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$c2d2]
    ld [hl], a

jr_006_66b9:
    ret


Call_006_66ba:
    ld a, [$c2da]
    ld b, a
    ld a, [hl+]
    ld e, $00

jr_006_66c1:
    sub b
    jr c, jr_006_66c7

    inc e
    jr jr_006_66c1

jr_006_66c7:
    add b
    ld b, a
    ld [hl], b
    inc l
    ld [hl], e
    ret


Jump_006_66cd:
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    call Call_000_019e
    ldh a, [$ff92]
    cp $fe
    ret z

    ld a, $26
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff90], a
    ld a, [hl+]
    ldh [$ff91], a
    ld a, $0b
    add c
    ldh [$ff8a], a
    ld a, [$c2e5]
    bit 3, a
    jr nz, jr_006_6714

    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add $6a
    ld d, a
    ldh a, [$ff92]
    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff9c]
    add $0c
    ld [hl+], a
    ldh a, [$ff9b]
    add $04
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ldh a, [$ffab]
    ld [hl+], a

jr_006_6714:
    ld a, [$c2e5]
    bit 0, a
    ret z

    ld a, [$c2d6]
    rrca
    rrca
    rrca
    and $60
    ld b, a
    ld de, $ffab
    ld a, [de]
    and $90
    or b
    ld [de], a
    ld hl, $c2db
    ld a, [$c2d6]
    ld b, a
    bit 0, b
    ld a, [$c2d1]
    jr z, jr_006_673b

    sub $07

jr_006_673b:
    add [hl]
    ldh [$ff9b], a
    inc hl
    bit 1, b
    ld a, [$c2d2]
    jr z, jr_006_6748

    sub $07

jr_006_6748:
    add [hl]
    ldh [$ff9c], a
    ldh a, [$ff90]
    or a
    jp z, Jump_006_67d4

    ld hl, $c2e1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff90]
    dec a
    call Call_000_016e
    call Call_006_6856
    ld a, e
    ld [$c21a], a
    ld a, d
    ld [$c219], a
    ld a, c
    ld [$c21c], a
    ld a, b
    ld [$c21b], a
    ld a, $03
    ld [$c217], a
    ld c, l
    ld b, h
    ld a, [$c216]
    ld l, a
    ld h, $c2
    ldh a, [$ff8a]
    ld [hl+], a
    ldh a, [$ff9b]
    ld [hl+], a
    ldh a, [$ff9c]
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    ld [$c216], a
    ldh a, [$ff92]
    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff9c]
    ld d, a
    ld a, [$c2d6]
    bit 1, a
    ld a, [bc]
    jr z, jr_006_67a6

    cpl
    inc a

jr_006_67a6:
    add d
    ldh [$ff9c], a
    add $10
    ld [hl+], a
    ldh a, [$ff9b]
    ld e, a
    inc bc
    ld a, [$c2d6]
    bit 0, a
    ld a, [bc]
    jr z, jr_006_67ba

    cpl
    inc a

jr_006_67ba:
    add e
    ldh [$ff9b], a
    add $08
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    ldh a, [$ffab]
    ld [hl+], a
    ld hl, $c2dd
    ldh a, [$ff9b]
    add [hl]
    ldh [$ff9b], a
    inc hl
    ldh a, [$ff9c]
    add [hl]
    ldh [$ff9c], a

Jump_006_67d4:
    ldh a, [$ff91]
    or a
    ret z

    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a

Jump_006_67de:
    ld a, [$c202]
    ld l, a
    ld h, $c2
    ldh a, [$ff8a]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    ld [$c202], a
    ld a, [$c2e3]
    ld c, a
    ld a, [$c2e4]
    ld b, a
    ldh a, [$ff92]
    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld a, [$c2d6]
    bit 1, a
    ld a, [bc]
    jr z, jr_006_6810

    cpl
    inc a

jr_006_6810:
    add d
    ld d, a
    add $10
    ld [hl+], a
    inc bc
    ld a, [$c2d6]
    bit 0, a
    ld a, [bc]
    jr z, jr_006_6820

    cpl
    inc a

jr_006_6820:
    add e
    ld e, a
    add $08
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    ldh a, [$ffab]
    ld [hl+], a
    ld hl, $c2dd
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    add d
    ld d, a
    ldh a, [$ff91]
    dec a
    ldh [$ff91], a
    jp nz, Jump_006_67de

    ret


Call_006_683d:
    call Call_006_6856
    ld a, e
    ld [$c206], a
    ld a, d
    ld [$c205], a
    ld a, c
    ld [$c208], a
    ld a, b
    ld [$c207], a
    ld a, $03
    ld [$c203], a
    ret


Call_006_6856:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [$c2d6]
    push hl
    ld h, a
    bit 0, h
    jr z, jr_006_6872

    ld a, e
    cpl
    add $07
    ld l, a
    ld a, d
    cpl
    add $07
    ld e, a
    ld d, l

jr_006_6872:
    bit 1, h
    jr z, jr_006_6881

    ld a, c
    cpl
    add $07
    ld l, a
    ld a, b
    cpl
    add $07
    ld c, a
    ld b, l

jr_006_6881:
    pop hl
    ret


Call_006_6883:
    ld a, $10
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $04
    jr nc, jr_006_6890

    dec l
    ld a, [hl]
    ret


jr_006_6890:
    ld [hl], $00
    dec l
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    ld bc, $0102
    ld bc, $0001
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    jp nz, $d068

    ld l, b
    sbc $68
    db $ec
    ld l, b
    ld a, [$0068]
    ld [bc], a
    inc c
    inc b
    nop
    rst $38
    rst $38
    inc bc
    ld [bc], a
    nop
    sbc e
    ld l, c
    add hl, sp
    ld l, c
    xor d
    ld bc, $030a
    nop
    nop
    ld bc, $0202
    ld bc, $69a3
    ld c, [hl]
    ld l, c
    ld d, l
    ld bc, $0308
    nop
    nop
    ld bc, $0201
    ld [bc], a
    xor c
    ld l, c
    ld h, e
    ld l, c
    xor d
    ld bc, $030a
    nop
    nop
    ld [bc], a
    ld bc, $0201
    xor a
    ld l, c
    ld a, b
    ld l, c
    nop
    ld [bc], a
    inc c
    inc b
    rst $38
    nop
    inc bc
    rst $38
    nop
    ld [bc], a
    or l
    ld l, c
    sub h
    ld l, c
    ld c, $69
    inc b
    nop
    ld bc, $12ff
    ld l, c
    dec de
    ld l, c
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    dec b
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld b, $10
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rst $38
    ld l, h
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    db $fd
    ld l, l
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    ei
    ld l, [hl]
    ld sp, hl
    nop
    rst $38
    ld [bc], a
    db $fd
    ld sp, hl
    ld l, a
    db $fd
    nop
    db $fd
    nop
    db $fd
    db $fd
    ld [hl], b
    ei
    nop
    db $fc
    nop
    db $fc
    ei
    ld [hl], b
    ld sp, hl
    nop
    ei
    nop
    ei
    ld sp, hl
    ld [hl], d
    db $fd
    nop
    db $fd
    nop
    db $fd
    db $fd
    ld [hl], e
    ei
    nop
    ei
    nop
    ei
    ei
    ld [hl], h
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    ld sp, hl
    ld [hl], l
    db $fd
    nop
    db $fd
    nop
    db $fd
    db $fd
    halt
    db $fc
    nop
    ei
    nop
    ei
    db $fc
    ld [hl], a
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    ei
    ld a, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $fd
    ld a, c
    rst $38
    ld [bc], a
    db $fd
    nop
    db $fd
    db $fd
    ld a, d
    rst $38
    ld [bc], a
    ei
    nop
    ei
    db $fd
    ld a, e
    rst $38
    ld [bc], a
    ld sp, hl
    nop
    ld sp, hl
    db $fd
    ld a, h
    inc h
    ld l, c
    dec hl
    ld l, c
    ld [hl-], a
    ld l, c
    add hl, sp
    ld l, c
    ld b, b
    ld l, c
    ld b, a
    ld l, c
    ld c, [hl]
    ld l, c
    ld d, l
    ld l, c
    ld e, h
    ld l, c
    ld h, e
    ld l, c
    ld l, d
    ld l, c
    ld [hl], c
    ld l, c
    ld a, b
    ld l, c
    ld a, a
    ld l, c
    add [hl]
    ld l, c
    adc l
    ld l, c
    sub h
    ld l, c

Jump_006_69bd:
    ld a, [$cc94]
    bit 0, a
    jr nz, jr_006_69d9

    ld a, [$dea4]
    or a
    jr z, jr_006_69d9

    ld a, [$c2cd]
    or a
    jr nz, jr_006_69d9

    ld a, [wBusterChargeCounter]
    cp $1e
    jr nc, jr_006_69e7

    jr jr_006_69dd

jr_006_69d9:
    xor a
    ld [wBusterChargeCounter], a

jr_006_69dd:
    ld hl, wBusterChargeFlashTimer
    xor a
    ld [hl+], a
    ld [hl+], a
    ld d, $1c
    jr jr_006_6a00

jr_006_69e7:
    ld hl, wBusterChargeFlashTimer
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_006_69f4

    xor a
    ld [hl+], a
    inc [hl]
    dec hl

jr_006_69f4:
    inc hl
    ld a, [hl]
    and $01
    ld e, a
    ld hl, $6a0a
    ld d, $00
    add hl, de
    ld d, [hl]

jr_006_6a00:
    ld a, [$cca6]
    or a
    jr nz, jr_006_6a09

    ld a, d
    ldh [rOBP0], a

jr_006_6a09:
    ret


    inc e
    ret nc

    xor a
    ld [wBusterChargeCounter], a
    ld a, $00
    add c
    ld l, a
    res 3, [hl]
    ld a, [$c2ce]
    ld d, a
    xor a
    ld [$c2ce], a
    ld a, d
    or a
    jr nz, jr_006_6a27

    ld a, $04
    jp Jump_006_52f2


jr_006_6a27:
    ld a, $00
    add c
    ld l, a
    set 3, [hl]
    rst $08
    add hl, sp
    ld e, $f9
    ld d, $06
    ldh a, [$ffaa]
    push af
    xor a
    ldh [$ffaa], a
    call Call_006_6ccb
    pop af
    ldh [$ffaa], a
    ld a, $1b
    add c
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    ld [hl], $f0
    add $02
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    xor a
    ld [$c2d4], a
    ld [$c2d5], a
    ld [$c2d1], a
    ret


    ld a, $00
    add c
    ld l, a
    bit 3, [hl]
    jp z, Jump_006_5345

    dec b
    jp nz, Jump_006_6b68

    ld a, $02
    add c
    ld l, a
    ld a, [$c2d4]
    add [hl]
    ld [hl+], a
    inc l
    ld a, [$c2d5]
    adc [hl]
    ld [hl+], a
    xor a
    ld [$c2d4], a
    ld [$c2d5], a
    ld a, $08
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ld [$c2d3], a
    call Call_006_4d34
    call Call_006_6bb5
    ld a, $1b
    add c
    ld l, a
    ld a, [hl]
    ld [$c2d1], a
    or a
    jr z, jr_006_6aa6

    dec a
    jr z, jr_006_6ac7

    dec a
    jr z, jr_006_6b14

    dec a
    jr z, jr_006_6b20

jr_006_6aa6:
    call Call_006_6d6f
    jp c, Jump_006_6b68

    cp $02
    jp nz, Jump_006_6b65

    call Call_006_6d4a
    xor a
    ld de, $6fd3
    call Call_006_4ea8
    call Call_006_6ded
    jp z, Jump_006_6ca1

Jump_006_6ac1:
    call Call_006_6cc1
    jp Jump_006_6b60


jr_006_6ac7:
    ld a, $19
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_006_6af2

    ld [hl], $0a
    call Call_006_6d56
    jr z, jr_006_6af2

    ld l, c
    push hl
    ld a, $04
    add c
    ld l, a
    call Call_000_0168
    and $07
    add $fc
    add [hl]
    ld e, a
    ld a, $08
    add c
    ld l, a
    ld d, [hl]
    ld a, $03
    call Call_000_01cb
    pop hl
    ld c, l

jr_006_6af2:
    call Call_006_6df7
    jr nz, jr_006_6b11

    ld d, $0b
    call Call_006_6df9
    jr z, jr_006_6b11

    xor a
    ld de, $6fd3
    call Call_006_4ea8
    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_006_6b60

    jp Jump_006_6b89


jr_006_6b11:
    jp Jump_006_6ac1


jr_006_6b14:
    call Call_006_6e31
    cp $02
    jr nz, jr_006_6b60

    call Call_006_6d4a
    jr jr_006_6b68

jr_006_6b20:
    call Call_006_6d56
    ld l, c
    push hl
    call $7047
    pop hl
    ld c, l
    call Call_006_6c6e
    call Call_006_6b6d
    call Call_006_6e80
    call Call_006_6c8b
    jp z, Jump_006_6ac1

    ld a, $0b
    add c
    ld l, a
    ld [hl], $01
    add $f8
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_006_6b49

    cpl
    inc a

jr_006_6b49:
    ld de, $6fbe
    cp $01
    jr c, jr_006_6b5a

    ld de, $6fc5
    cp $02
    jr c, jr_006_6b5a

    ld de, $6fcc

jr_006_6b5a:
    call Call_006_4e5e
    call Call_006_4f32

Jump_006_6b60:
jr_006_6b60:
    call Call_006_6c42
    jr z, jr_006_6b68

Jump_006_6b65:
    xor a
    inc a
    ret


Jump_006_6b68:
jr_006_6b68:
    xor a
    ld [$c2cd], a
    ret


Call_006_6b6d:
    ldh a, [$ffac]
    bit 2, a
    jr z, jr_006_6b77

    ld a, $80
    jr jr_006_6b7a

jr_006_6b77:
    ld a, [$cc0d]

jr_006_6b7a:
    ld e, a
    ldh a, [$ff92]
    cp e
    ld d, $00
    jr nc, jr_006_6b83

    inc d

jr_006_6b83:
    ld a, $0c
    add c
    ld l, a
    ld [hl], d
    ret


Jump_006_6b89:
    ld a, $0a
    add c
    ld l, a
    ld a, $04
    call Call_000_01b9
    call Call_006_4df7
    ld a, $1b
    add c
    ld l, a
    ld [hl], $03
    add $f7
    ld l, a
    ld [hl], $00
    ld a, $01
    add c
    ld l, a
    xor a
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld a, $19
    add c
    ld l, a
    ld [hl], $00
    jp Jump_006_6b60


Call_006_6bb5:
    ld b, $00
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add $30
    ldh [$ff92], a
    ld e, a
    cp $40
    jr c, jr_006_6bc9

    cp $c0
    jr c, jr_006_6bd1

jr_006_6bc9:
    set 2, b
    ld a, $18
    add c
    ld l, a
    set 0, [hl]

jr_006_6bd1:
    ld a, $1a
    add c
    ld l, a
    ld d, [hl]
    ld a, [$d72f]
    sub e
    push af
    rla
    ld [hl+], a
    xor d
    and $01
    jr z, jr_006_6be8

    ld a, $18
    add c
    ld l, a
    res 0, [hl]

jr_006_6be8:
    pop af
    jr nc, jr_006_6bed

    cpl
    inc a

jr_006_6bed:
    ld [$cc1d], a
    cp $40
    jr c, jr_006_6bf6

    set 0, b

jr_006_6bf6:
    ld a, $18
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_006_6c1b

    ld a, [$c3f1]
    or a
    jr z, jr_006_6c1b

    ld a, $08
    add c
    ld l, a
    ld a, [$c3f2]
    sub [hl]
    jr nc, jr_006_6c14

    cp $e8
    jr nc, jr_006_6c14

    set 3, b

jr_006_6c14:
    ld a, [$c3f2]
    add $30
    jr jr_006_6c1e

jr_006_6c1b:
    ld a, [$d72f]

jr_006_6c1e:
    ld e, a
    ld [$cc0d], a
    ldh a, [$ff92]
    sub e
    push af
    ld d, $00
    jr nc, jr_006_6c2b

    inc d

jr_006_6c2b:
    ld a, $0c
    add c
    ld l, a
    ld [hl], d
    pop af
    jr nc, jr_006_6c35

    cpl
    inc a

jr_006_6c35:
    ld [$cc1e], a
    cp $40
    jr c, jr_006_6c3e

    set 1, b

jr_006_6c3e:
    ld a, b
    ldh [$ffac], a
    ret


Call_006_6c42:
    ld b, $00
    ld h, $c2
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    ld a, e
    cp $e0
    jr nc, jr_006_6c5c

    cp $c0
    jr c, jr_006_6c5c

    set 0, b
    jr jr_006_6c6c

jr_006_6c5c:
    ld a, d
    cp $e0
    jr nc, jr_006_6c69

    cp $90
    jr c, jr_006_6c69

    set 1, b
    jr jr_006_6c6c

jr_006_6c69:
    xor a
    inc a
    ret


jr_006_6c6c:
    xor a
    ret


Call_006_6c6e:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_006_6c85

    cp $88
    ret c

    call Call_000_0168
    cp $08
    ret nc

    ld de, $fa00
    jr jr_006_6c88

jr_006_6c85:
    ld de, $0000

jr_006_6c88:
    jp Jump_006_4fa2


Call_006_6c8b:
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    cp $3c
    jr nc, jr_006_6c99

    ld a, [$dea4]
    or a
    ret


jr_006_6c99:
    ld [hl], $00
    ld b, $08
    call Call_006_473e
    ret


Jump_006_6ca1:
    call Call_006_4df7
    ld a, $1b
    add c
    ld l, a
    ld [hl], $01
    add $fb
    ld l, a
    ld [hl], $1e
    ld a, $0a
    add c
    ld l, a
    ld a, $09
    call Call_000_01b9
    ld a, $1f
    add c
    ld l, a
    ld [hl], $43
    xor a
    inc a
    ret


Call_006_6cc1:
    ld a, $1b
    add c
    ld l, a
    ld [hl], $02
    call Call_006_6e00
    ret


Call_006_6ccb:
    xor a
    ld [wPlayerShotAnimType], a
    inc a
    ld [$c2cd], a
    ld a, $0c
    add c
    ld l, a
    bit 0, [hl]
    ld b, e
    jr z, jr_006_6cdd

    ld b, d

jr_006_6cdd:
    add $f8
    ld l, a
    ld a, [hl]
    add b
    ld [hl], a
    ld a, $0a
    add c
    ld l, a
    ld a, $0a
    call Call_000_01b9
    ld a, $1e
    add c
    ld l, a
    ld [hl], $5a
    add $01
    ld l, a
    set 4, [hl]
    add $fd
    ld l, a
    ld [hl], $00
    add $ec
    ld l, a
    ld a, [hl]
    add $fc
    cp $d0
    jr c, jr_006_6d07

    xor a

jr_006_6d07:
    add $0a
    ld e, a

jr_006_6d0a:
    ld d, a
    push de
    ld e, $f9
    ld b, $07
    call Call_006_4d22
    pop de
    jr z, jr_006_6d34

    ld a, $f8
    add d
    cp $f0
    jr c, jr_006_6d0a

    ld d, e
    jr jr_006_6d2c

jr_006_6d20:
    ld d, a
    push de
    ld e, $f9
    ld b, $07
    call Call_006_4d22
    pop de
    jr z, jr_006_6d34

jr_006_6d2c:
    ld a, $08
    add d
    cp $80
    jr c, jr_006_6d20

    ld d, e

jr_006_6d34:
    ld a, d
    sub $0a
    ld d, a
    ld a, $1d
    add c
    ld l, a
    ld [hl], d
    ld a, $08
    add c
    ld l, a
    ld [hl], $f8
    call Call_006_4be9
    ld [$cc70], a
    ret


Call_006_6d4a:
    ld a, $1e
    add c
    ld l, a
    ld [hl], $6a
    add $01
    ld l, a
    res 4, [hl]
    ret


Call_006_6d56:
    push hl
    push bc
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    ld hl, $cc70
    call Call_000_0267
    pop bc
    pop hl
    ld a, [$cc70]
    and $01
    ret


Call_006_6d6f:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    cp $d0
    jr nc, jr_006_6d7e

    cp $96
    jr c, jr_006_6d7e

    scf
    ret


jr_006_6d7e:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_006_6d99

    ld de, $595e
    call Call_006_4e5e
    ldh a, [$ff8f]
    or a
    jr z, jr_006_6de6

    ld a, $1c
    add c
    ld l, a
    ld [hl], $02
    jr jr_006_6de6

jr_006_6d99:
    ld a, $1d
    add c
    ld l, a
    ld b, [hl]
    add $eb
    ld l, a
    ld a, [hl]
    cp $d0
    jr nc, jr_006_6dd5

    cp b
    jr c, jr_006_6dd5

    ld a, [$de9b]
    cp $08
    jr z, jr_006_6dcd

    ld a, [hl]
    cp $80
    jr nc, jr_006_6dd5

    call Call_006_6df7
    jr z, jr_006_6dd5

    ld b, $04

jr_006_6dbc:
    ld a, $08
    add c
    ld l, a
    dec [hl]
    push bc
    call Call_006_6df7
    pop bc
    jr z, jr_006_6dcd

    dec b
    jr z, jr_006_6dcd

    jr jr_006_6dbc

jr_006_6dcd:
    ld a, $1c
    add c
    ld l, a
    ld [hl], $01
    jr jr_006_6de6

jr_006_6dd5:
    call Call_006_6d56
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $04
    ld [hl], a
    ld de, $5959
    call Call_006_4e5e

jr_006_6de6:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    or a
    ret


Call_006_6ded:
    ld d, $02
    call Call_006_6df9
    ret nz

    call Call_006_6df7
    ret


Call_006_6df7:
    ld d, $0a

Call_006_6df9:
    ld e, $f9
    ld b, $07
    jp $4d09


Call_006_6e00:
    ld a, $0a
    add c
    ld l, a
    ld a, $0a
    call Call_000_01b9
    ld a, $1e
    add c
    ld l, a
    ld [hl], $5a
    add $01
    ld l, a
    ld [hl], $10
    add $ec
    ld l, a
    ld [hl], $00
    call Call_006_4df7
    ld de, $5965
    call Call_006_4e5e
    ld a, $1c
    add c
    ld l, a
    ld [hl], $01
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $fc
    ld [hl], a
    ret


Call_006_6e31:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr nz, jr_006_6e54

    ld de, $5965
    call Call_006_4e5e
    ldh a, [$ff8f]
    or a
    jr z, jr_006_6e79

    ld a, $1c
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_006_6e79

jr_006_6e54:
    ld a, $00
    ldh [$ff8b], a
    ld a, $04
    ldh [$ff8c], a
    ld de, $ffa0
    call Call_006_4dc4
    cp $90
    jr c, jr_006_6e70

    cp $f8
    jr nc, jr_006_6e70

    ld a, $1c
    add c
    ld l, a
    ld [hl], $02

jr_006_6e70:
    call Call_006_6d56
    ld de, $5959
    call Call_006_4e5e

jr_006_6e79:
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    or a
    ret


Call_006_6e80:
    xor a
    ld [$d74d], a
    call Call_006_70d1
    ld de, $7043
    call Call_006_4abf
    bit 0, a
    jr z, jr_006_6eac

    ld a, $03
    add c
    ld l, a
    ld e, [hl]
    add $09
    ld l, a
    rlc e
    ld a, [hl]
    xor e
    and $01
    jr z, jr_006_6ea9

    ld de, $0000
    call Call_006_4f89
    jr jr_006_6eac

jr_006_6ea9:
    call Call_006_4fd6

jr_006_6eac:
    ldh a, [$ffa9]
    bit 1, a
    jr nz, jr_006_6ec3

    ldh a, [$ffac]
    bit 2, a
    ld de, $0001
    jr z, jr_006_6ebe

    ld de, $0020

jr_006_6ebe:
    call Call_006_6f8d
    jr jr_006_6f0c

jr_006_6ec3:
    ld de, $00b0
    call Call_006_6f8d
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_006_6f04

    push hl
    call Call_006_6f1c
    pop hl
    jr nz, jr_006_6f0c

    ld a, [hl-]
    dec l
    ld d, a
    ld a, [hl]
    sub $80
    ld a, d
    sbc $01
    jr nc, jr_006_6eee

    ld a, [hl]
    add $80
    ld [hl+], a
    inc l
    ld a, [hl]
    adc $fd
    ld [hl], a
    jr jr_006_6f0c

jr_006_6eee:
    call Call_006_4fe8
    ld b, d
    ld e, a
    sra d
    rr e
    sra d
    rr e
    sub e
    ld e, a
    ld a, b
    sbc d
    ld [hl-], a
    dec l
    ld [hl], e
    jr jr_006_6f0c

jr_006_6f04:
    ld a, $05
    add c
    ld l, a
    xor a
    ld [hl+], a
    inc l
    ld [hl], a

jr_006_6f0c:
    ld a, [$d740]
    and $41
    ret z

    ld a, $19
    add c
    ld l, a
    ld a, [$d741]
    or [hl]
    ld [hl], a
    ret


Call_006_6f1c:
    ld a, [$d74d]
    cp $08
    jr nz, jr_006_6f3f

    ld a, $15
    add c
    ld l, a
    ld [hl], $1e
    ld a, $1e
    add c
    ld l, a
    ld a, [hl-]
    ld e, [hl]
    sra a
    rr e
    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    jr nz, jr_006_6f3b

    inc d

jr_006_6f3b:
    ld [hl+], a
    ld [hl], d
    jr jr_006_6f84

jr_006_6f3f:
    ld a, [$d741]
    and $81
    cp $80
    jr z, jr_006_6f62

    ld a, $19
    add c
    ld l, a
    ld b, [hl]
    ld [hl], $00
    ld a, b
    and $81
    cp $01
    jr z, jr_006_6f7d

    ldh a, [$ffac]
    bit 1, a
    jr nz, jr_006_6f62

    bit 3, a
    jr nz, jr_006_6f84

    jr jr_006_6f6c

jr_006_6f62:
    ld a, $05
    add c
    ld l, a
    xor a
    ld [hl+], a
    inc l
    ld [hl+], a
    inc a
    ret


jr_006_6f6c:
    call Call_000_0168
    cp $08
    jr c, jr_006_6f78

    cp $e0
    ret c

    xor a
    ret


jr_006_6f78:
    ld de, $fc40
    jr jr_006_6f87

jr_006_6f7d:
    bit 6, b
    ld de, $fc80
    jr z, jr_006_6f87

jr_006_6f84:
    ld de, $fb40

jr_006_6f87:
    call Call_006_4fa2
    xor a
    inc a
    ret


Call_006_6f8d:
    ld a, $15
    add c
    ld l, a
    call Call_000_01e9
    ret nz

    ld a, $40
    ldh [$ff8b], a
    ld a, $02
    ldh [$ff8c], a
    ld a, $0c
    add c
    ld l, a
    ld b, [hl]
    add $f5
    ld l, a
    bit 0, b
    call z, Call_000_016b
    ld a, [hl+]
    add e
    ld e, a
    inc l
    ld a, [hl]
    adc d
    ld d, a
    call Call_000_0213
    ld [hl], d
    dec l
    dec l
    ld [hl], e
    ret


    db $d3
    ld l, a
    inc b
    nop
    rst $38
    db $d3
    ld l, a
    ld bc, $0201
    inc bc
    rst $38
    db $d3
    ld l, a
    ld bc, $0201
    inc bc
    rst $38
    db $d3
    ld l, a
    ld bc, $0201
    inc bc
    rst $38
    db $db
    ld l, a
    inc b
    ld [hl], b
    add hl, de
    ld [hl], b
    ld l, $70
    ld a, [$fa06]
    ld b, $f4
    or $6a
    stop
    ld [$106b], sp
    ld [$6cf8], sp
    stop
    ld [$106d], sp
    nop
    ld [$106e], sp
    ld [$6ff0], sp
    stop
    ld [$1070], sp
    nop
    ld [$1071], sp
    nop
    ld [$1072], sp
    add b
    ld a, [$fb05]
    rlca
    ld a, [$73f8]
    stop
    ld [$1074], sp
    ld [$74f8], sp
    ld [hl], b
    nop
    ld [$7073], sp
    add b
    ld a, [$fb05]
    rlca
    ld a, [$75f8]
    stop
    ld [$1076], sp
    ld [$76f8], sp
    ld [hl], b
    nop
    ld [$7075], sp
    add b
    ld a, [$fb05]
    rlca
    ld a, [$77f8]
    stop
    ld [$1078], sp
    ld [$78f8], sp
    ld [hl], b
    nop
    ld [$7077], sp
    add b
    ld a, [$fb05]
    ld b, $fa
    ld [hl], b
    call z, $47cb
    jr nz, jr_006_7088

    ld a, [$ccbb]
    or a
    jr z, jr_006_7083

    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld e, a
    ld d, $00
    cp $d0
    jr c, jr_006_7061

    dec d

jr_006_7061:
    ld a, [$d711]
    add e
    ldh [$ff8a], a
    ld a, [$d712]
    adc d
    ldh [$ff8b], a
    ld l, c
    push hl
    call Call_000_02ca
    pop hl
    ld c, l
    ld a, [$cc98]
    or a
    jr z, jr_006_7083

    push af
    call Call_006_7083
    pop af
    ld [$df70], a
    ret


Call_006_7083:
jr_006_7083:
    ld hl, $713f
    jr jr_006_708b

jr_006_7088:
    ld hl, $714b

jr_006_708b:
    ld de, $df70
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, l
    ld [$df76], a
    ld a, h
    ld [$df77], a
    ret


Call_006_70a8:
    bit 7, a
    push af
    jr z, jr_006_70ae

    cpl

jr_006_70ae:
    ld b, a
    ld hl, $df76
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    or a
    jr z, jr_006_70c0

    inc hl
    inc hl
    dec a
    jr z, jr_006_70c0

    inc hl
    inc hl

jr_006_70c0:
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop af
    jr nz, jr_006_70d0

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_006_70d0

    inc d

jr_006_70d0:
    ret


Call_006_70d1:
    ld a, $05
    add c
    ld l, a
    push hl
    ld a, [$df70]
    add [hl]
    ld e, a
    inc l
    inc l
    ld a, [$df71]
    adc [hl]
    ld d, a
    push de
    call Call_006_70a8
    pop hl
    ld b, h
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, d
    xor b
    bit 7, a
    jr z, jr_006_70f7

    ld de, $0000
    jr jr_006_7104

jr_006_70f7:
    ld a, [$df74]
    ldh [$ff8b], a
    ld a, [$df75]
    ldh [$ff8c], a
    call Call_000_0213

jr_006_7104:
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ld a, $01
    add c
    ld l, a
    push hl
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    ld a, d
    push de
    call Call_006_70a8
    pop hl
    ld b, h
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, d
    xor b
    bit 7, a
    jr z, jr_006_7127

    ld de, $0000
    jr jr_006_713a

jr_006_7127:
    ldh a, [$ffac]
    bit 2, a
    jr nz, jr_006_713a

    ld a, [$df72]
    ldh [$ff8b], a
    ld a, [$df73]
    ldh [$ff8c], a
    call Call_000_0213

jr_006_713a:
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ret


    inc [hl]
    nop
    ld b, b
    ld [bc], a
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld bc, $0100
    ld bc, $0400
    nop
    add hl, bc
    nop
    ld a, $15
    add c
    ld l, a
    ld [hl], $3c
    call Call_006_4df7
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    xor a
    ld [$c2d1], a
    ld a, $1c
    add c
    ld l, a
    ld [hl], $0f
    rst $08
    dec sp

Call_006_7172:
    ld de, $71e0
    jp Jump_006_4dff


    dec b
    jr nz, jr_006_71d9

    ld a, [$d163]
    or a
    jr nz, jr_006_71d9

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_006_718d

    bit 7, a
    jr z, jr_006_7194

jr_006_718d:
    ld a, $01
    ld [$c2d1], a
    xor a
    ret


jr_006_7194:
    ld a, [$d706]
    or a
    jr nz, jr_006_718d

    ld a, [$d739]
    or a
    jr nz, jr_006_71d9

    ld a, [$d73a]
    or a
    cp $5a
    jr nc, jr_006_71d9

    ld a, $15
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_006_71d9

    ld a, $1e
    ld [$c2d0], a
    push hl
    call Call_006_46d8
    pop hl
    ld a, $04
    add c
    ld l, a
    ld a, [$d76b]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$d76c]
    ld [hl], a
    call Call_006_7172
    call Call_006_4eff
    ld a, $10
    ld [$c201], a
    xor a
    inc a
    ret


jr_006_71d9:
    ld a, $02
    ld [$c201], a
    xor a
    ret


    ldh a, [$ff71]
    inc bc
    nop
    ld bc, $0302
    inc b
    dec b
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    rst $38
    ld a, [bc]
    ld [hl], d
    dec hl
    ld [hl], d
    ld c, h
    ld [hl], d
    ld [hl], c
    ld [hl], d
    sub d
    ld [hl], d
    or e
    ld [hl], d
    ret c

    ld [hl], d
    db $dd
    ld [hl], d
    cp $72
    rra
    ld [hl], e
    ld b, h
    ld [hl], e
    ld h, l
    ld [hl], e
    add [hl]
    ld [hl], e
    pop hl
    nop
    ld hl, sp+$07
    ld hl, sp-$1f
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    db $fc
    ld [$1003], sp
    add b
    pop hl
    nop
    ld hl, sp+$07
    ld hl, sp-$17
    ld [$0010], sp
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0bf0], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    db $fc
    add sp, $07
    db $10
    add b
    pop hl
    nop
    ld hl, sp+$07
    ld hl, sp-$17
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    db $fc
    add sp, $0e
    db $10
    inc c
    rrca
    dec d
    db $10
    add b
    pop hl
    nop
    ld hl, sp+$07
    rst $30
    jp hl


    ld b, $70
    nop
    ld [$7005], sp
    nop

jr_006_727e:
    ld [$7004], sp
    ld [$02f0], sp
    ld [hl], b
    nop
    ld [$7001], sp
    nop
    ld [$7000], sp
    db $fc
    add sp, $03
    ld [hl], b
    add b
    pop hl
    nop
    ld hl, sp+$07
    rst $30
    pop hl
    dec c
    ld [hl], b
    nop
    ld [$700c], sp
    nop
    ld [$700b], sp
    ld [$0af0], sp
    ld [hl], b
    nop
    ld [$7009], sp
    nop
    ld [$7008], sp
    db $fc
    ld [$7007], sp
    add b
    pop hl
    nop
    ld hl, sp+$07
    rst $30
    pop hl
    inc d
    ld [hl], b
    nop
    ld [$7013], sp
    nop
    ld [$7012], sp
    ld [$11f0], sp
    ld [hl], b
    nop
    ld [$7010], sp
    nop
    ld [$700f], sp
    db $fc
    ld [$700e], sp
    db $f4
    pop af
    dec d
    ld [hl], b
    add b
    nop
    nop
    nop
    nop
    add b
    pop hl
    nop
    ld hl, sp+$07
    ld hl, sp-$17
    ld [bc], a
    jr nc, jr_006_72e6

jr_006_72e6:
    ld [$3001], sp
    nop
    ld [$3000], sp
    ld [$06f0], sp
    jr nc, jr_006_72f2

jr_006_72f2:
    ld [$3005], sp
    nop
    ld [$3004], sp
    db $fc
    add sp, $03
    jr nc, jr_006_727e

    pop hl
    nop
    ld hl, sp+$07
    ld hl, sp-$1f
    ld a, [bc]
    jr nc, jr_006_7307

jr_006_7307:
    ld [$3009], sp
    nop
    ld [$3008], sp
    ld [$0df0], sp
    jr nc, jr_006_7313

jr_006_7313:
    ld [$300c], sp
    nop
    ld [$300b], sp
    db $fc
    ld [$3007], sp
    add b
    pop hl
    nop
    ld hl, sp+$07
    ld hl, sp-$1f
    ld de, $0030
    ld [$3010], sp
    nop
    ld [$300f], sp
    ld [$14f0], sp
    jr nc, jr_006_7334

jr_006_7334:
    ld [$3013], sp
    nop
    ld [$3012], sp
    db $fc
    ld [$300e], sp
    inc c
    pop af
    dec d
    jr nc, @-$7e

    pop hl
    nop
    ld hl, sp+$07
    rst $30
    pop hl
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$00f0], sp
    ld d, b
    nop
    ld [$5001], sp
    nop
    ld [$5002], sp
    db $fc
    ld [$5003], sp
    add b
    pop hl
    nop
    ld hl, sp+$07
    rst $30
    jp hl


    dec bc
    ld d, b
    nop
    ld [$500c], sp
    nop
    ld [$500d], sp
    ld [$08f0], sp
    ld d, b
    nop
    ld [$5009], sp
    nop
    ld [$500a], sp
    db $fc
    add sp, $07
    ld d, b
    add b
    pop hl
    nop
    ld hl, sp+$07
    rst $30
    jp hl


    ld [de], a
    ld d, b
    nop
    ld [$5013], sp
    nop
    ld [$5014], sp
    ld [$0ff0], sp
    ld d, b
    nop
    ld [$5010], sp
    nop
    ld [$5011], sp
    db $fc
    add sp, $0e
    ld d, b
    db $f4
    rrca
    dec d
    ld d, b
    add b
    ld a, [$c200]
    dec a
    jp nz, Jump_006_752f

    ld a, $04
    add c
    ld l, a
    ld a, [$d722]
    ld [hl], a
    ld [$d76b], a
    push hl
    ld e, a
    ld d, $00
    ld hl, $d711
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c2d3], a
    ld a, h
    ld [$c2d4], a
    pop hl
    ld a, $08
    add c
    ld l, a
    ld a, [$d725]
    add $e8
    ld [hl], a
    ld [$d76c], a
    ld [$c2d2], a
    call Call_006_4b4e
    jr nz, jr_006_73f8

    ld a, $17
    add c
    ld l, a
    ld [hl], $ff
    ld a, [$c2d8]
    ld [$dea8], a
    xor a
    ld [$c201], a
    jr jr_006_741c

jr_006_73f8:
    call Call_006_78e4
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    add $f8
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_006_4df7
    call Call_006_741d
    rst $08
    ld c, [hl]
    ld a, $1c
    add c
    ld l, a
    ld [hl], $00

jr_006_741c:
    ret


Call_006_741d:
    ld de, $7679
    jp Jump_006_4dff


Call_006_7423:
    ld de, $7685
    jp Jump_006_4e5e


Call_006_7429:
Jump_006_7429:
jr_006_7429:
    ld a, [$deaf]
    res 2, a
    ld [$deaf], a
    xor a
    ld [$c2f7], a
    ld a, [$c2f9]
    bit 1, a
    jr nz, jr_006_7444

    ld a, $1b
    ld [$de96], a
    ld [$d1f3], a

jr_006_7444:
    xor a
    ret


    dec b
    jr nz, jr_006_7429

    ld a, $00
    add c
    ld l, a
    bit 6, [hl]
    jr nz, jr_006_7429

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_006_756d

    ld a, $04
    add c
    ld l, a
    ld a, [$d7c3]
    add [hl]
    ld [hl], a
    ld [$d76b], a
    ld a, $19
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_006_74cc

    ld a, $1c
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_006_747b

    ld [hl], $08
    rst $08
    ld c, [hl]

jr_006_747b:
    ld a, [$deaf]
    set 2, a
    ld [$deaf], a
    ld a, $01
    ld [$c2f7], a
    call Call_006_7516
    call Call_006_741d
    call Call_006_4b4e
    jr z, jr_006_749c

    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $06
    jr nz, jr_006_74c0

jr_006_749c:
    ld a, [$c2f8]
    or a
    jr nz, jr_006_74c0

    ld a, $19
    add c
    ld l, a
    ld [hl], $01
    xor a
    ld [$c2d6], a
    ld [$c2d7], a
    ld l, c
    push hl
    call Call_006_46be
    call Call_006_46be
    rst $08
    ld c, a
    pop hl
    ld c, l
    call Call_006_7429
    jr jr_006_74c9

jr_006_74c0:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $06
    call Call_006_4eff

jr_006_74c9:
    xor a
    inc a
    ret


jr_006_74cc:
    call Call_006_4d34
    call Call_006_4b4e
    jr z, jr_006_750f

    ld a, $19
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_006_74ee

    call Call_006_741d
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $06
    jr nz, jr_006_74ee

    ld a, $19
    add c
    ld l, a
    set 7, [hl]

jr_006_74ee:
    ld a, [$c200]
    cp $02
    jr c, jr_006_750f

    push hl
    ld hl, $c2d5
    ld a, [hl]
    add $80
    ld [hl+], a
    ld a, [hl]
    add $01
    jr c, jr_006_7503

    ld [hl], a

jr_006_7503:
    pop hl
    ld a, [$c2d7]
    inc a
    inc a
    ld [$c2d7], a
    xor a
    inc a
    ret


jr_006_750f:
    ld a, $ff
    ld [$c2d6], a
    xor a
    ret


Call_006_7516:
    ld a, $1a
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    and $06
    ld d, $d1
    jr z, jr_006_7524

    ld d, $1b

jr_006_7524:
    ld a, [$c2f9]
    bit 1, a
    ret nz

    ld a, d
    ld [$de96], a
    ret


Jump_006_752f:
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    ld a, $0b
    add c
    ld l, a
    ld a, $06
    ld [$c217], a
    ld [hl], a
    call Call_006_4df7
    call Call_006_7423
    ld a, $15
    add c
    ld l, a
    ld a, [$c200]
    bit 0, a
    ld a, $10
    jr z, jr_006_7554

    ld a, $30

jr_006_7554:
    ld [hl+], a
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c2
    add $eb
    ld l, a
    ld a, $04
    call Call_000_01b9
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    call Call_006_7596
    ret


Jump_006_756d:
    cp $01
    jp nz, Jump_006_7429

    ld a, [$c2d6]
    cp $ff
    ret z

    ld a, [$c2d7]
    and $3f
    jr nz, jr_006_7588

    ld a, $18
    add c
    ld l, a
    bit 0, [hl]
    ret z

    res 0, [hl]

jr_006_7588:
    call Call_006_7596
    jr nz, jr_006_7593

    call Call_006_7423
    call Call_006_4f32

jr_006_7593:
    xor a
    inc a
    ret


Call_006_7596:
    xor a
    ldh [$ff91], a
    ld l, c
    push hl
    ld a, $15
    add c
    ld l, a
    ld a, [$c2d7]
    add [hl]
    ld b, a
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    ld e, a
    ld d, $d1
    ld a, [de]
    ld e, a
    dec d
    ld a, $1d
    add c
    ld l, a
    inc e
    ld a, [de]
    cp $fe
    jr z, jr_006_75ba

    inc [hl]

jr_006_75ba:
    bit 0, [hl]
    ld a, b
    jr z, jr_006_75c1

    add $10

jr_006_75c1:
    and $3f
    inc a
    ld b, a
    ld a, [$c2d6]
    ld d, a
    ld e, $00
    srl d
    rr e
    ld hl, $ff8a
    ld a, b
    call Call_006_42b0
    push de
    ld l, c
    ld h, b
    call Call_006_7644
    ld a, [$c2d3]
    ld c, a
    ld a, [$c2d4]
    ld b, a
    add hl, bc
    call Call_006_7654
    jr c, jr_006_75ee

    ld a, $01
    ldh [$ff91], a

jr_006_75ee:
    pop hl
    call Call_006_7644
    ld a, [$c2d2]
    ld e, a
    ld d, $00
    bit 7, e
    jr z, jr_006_75fd

    dec d

jr_006_75fd:
    add hl, de
    ld a, h
    or a
    ld a, l
    ldh [$ff9c], a
    jr nz, jr_006_760b

    cp $84
    jr nc, jr_006_7618

    jr jr_006_7612

jr_006_760b:
    inc h
    jr nz, jr_006_7618

    cp $fc
    jr c, jr_006_7618

jr_006_7612:
    ldh a, [$ff91]
    set 1, a
    ldh [$ff91], a

jr_006_7618:
    pop hl
    ld c, l
    ldh a, [$ff91]
    cp $03
    jr z, jr_006_7629

    ld a, $1f
    add c
    ld l, a
    set 2, [hl]
    xor a
    inc a
    ret


jr_006_7629:
    ld a, $04
    add c
    ld l, a
    ldh a, [$ff9b]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ldh a, [$ff9c]
    ld [hl], a
    ld a, $18
    add c
    ld l, a
    set 0, [hl]
    add $07
    ld l, a
    res 2, [hl]
    xor a
    ret


Call_006_7644:
    bit 7, h
    jr nz, jr_006_764e

    rl h
    ld l, h
    ld h, $00
    ret


jr_006_764e:
    rl h
    ld l, h
    ld h, $ff
    ret


Call_006_7654:
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc d
    jr nz, jr_006_766a

    ld a, e
    cp $a4
    jr nc, jr_006_7677

    jr jr_006_7672

jr_006_766a:
    inc a
    jr nz, jr_006_7677

    ld a, e
    cp $fc
    jr c, jr_006_7677

jr_006_7672:
    ld a, e
    ldh [$ff9b], a
    xor a
    ret


jr_006_7677:
    scf
    ret


    adc l
    halt
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    rst $38
    adc l
    halt
    ld b, $07
    ld [$0809], sp
    rst $38
    and c
    halt
    jp z, $f376

    halt
    ld [$1d77], sp
    ld [hl], a
    ld l, $77
    scf
    ld [hl], a
    inc a
    ld [hl], a
    ld d, c
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$3000], sp
    ld [$02f0], sp
    stop
    ld [$1003], sp
    nop
    ld [$3002], sp
    ld [$00f0], sp
    ld d, b
    nop
    ld [$5001], sp
    nop
    ld [$7000], sp
    add b
    or $09
    or $09
    db $f4
    db $f4
    inc b
    stop
    ld [$1005], sp
    nop
    ld [$3004], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$3006], sp
    ld [$04f0], sp
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$7004], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld [$0010], sp
    ld [$3008], sp
    ld [$08f8], sp
    ld d, b
    nop
    ld [$7008], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    add hl, bc
    stop
    ld [$3009], sp
    ld [$09f8], sp
    ld d, b
    nop
    ld [$7009], sp
    add b
    ei
    inc b
    ei
    inc b
    ei
    ei
    ld a, [bc]
    stop
    ld [$100b], sp
    ld [$0cf8], sp
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    dec c
    db $10
    add b
    nop
    nop
    nop
    nop
    add b
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp-$08
    ld c, $10
    nop
    rlca
    ld c, $30
    rlca
    ld sp, hl
    ld c, $50
    nop
    rlca
    ld c, $70
    add b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp-$08
    rrca
    stop
    rlca
    rrca
    jr nc, jr_006_7765

    ld sp, hl
    rrca
    ld d, b
    nop
    rlca
    rrca
    ld [hl], b

jr_006_7765:
    add b
    ld a, [$fa04]
    inc b
    ld hl, sp-$08
    db $10
    stop
    rlca
    db $10
    jr nc, jr_006_777a

    ld sp, hl
    db $10
    ld d, b
    nop
    rlca
    db $10
    ld [hl], b

jr_006_777a:
    add b

Jump_006_777b:
    call Call_006_78e4
    ld a, [$deaf]
    and $fb
    jp nz, Jump_006_780a

    ld a, $01
    add c
    ld l, a
    ld a, [hl]
    ld [$c22a], a
    ld a, [$d76b]
    add $30
    ld e, a
    ld a, [$d76c]
    add $30
    ld d, a
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $fc
    ld l, a
    ld a, [hl]
    add $30
    ld l, a
    ld a, b
    add $30
    ld h, a
    ld c, $02
    call Call_006_4208
    ld a, [$cde2]
    ld c, a
    ld a, [$cde3]
    ld h, a
    ld a, [$d87d]
    cp $08
    jr nc, jr_006_77ca

    ld a, [$d87f]
    cp $08
    jr nc, jr_006_77ca

    rst $08
    dec d
    ld b, $00
    ret


jr_006_77ca:
    ld a, $0c
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_006_77d6

    set 7, [hl]
    jr jr_006_77dc

jr_006_77d6:
    ld a, [$c22a]
    ld [$d878], a

jr_006_77dc:
    ld a, [$d879]
    ld e, a
    ld a, [$d87a]
    ld d, a
    call Call_006_424a
    call Call_006_424a
    ld a, [$cde2]
    ld c, a
    ld a, [$cde3]
    ld h, a
    ld a, $01
    add c
    ld l, a
    ld a, [$d878]
    ld [hl], a
    ld a, $04
    add c
    ld l, a
    ld a, e
    sub $30
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, d
    sub $30
    ld [hl], a

Jump_006_780a:
    ld b, $01
    ret


Jump_006_780d:
    ld a, b
    cp $02
    jp z, Jump_006_777b

    ld a, [$cc47]
    and $fc
    ld [$cc47], a
    call Call_006_78bf
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    jp z, Jump_006_78bc

    call Call_006_78e4
    ld a, [$deaf]
    and $fb
    jp nz, Jump_006_78bc

    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    ld [$c22a], a
    ld a, [$d76b]
    add $30
    ld e, a
    ld a, [$d76c]
    add $30
    ld d, a
    ld a, $0f
    add c
    ld l, a
    ld b, [hl]
    add $fe
    ld l, a
    ld a, [hl]
    add $30
    ld l, a
    ld a, b
    add $30
    ld h, a
    ld c, $01
    call Call_006_4208
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, [$d87d]
    cp $08
    jr nc, jr_006_7876

    ld a, [$d87f]
    cp $08
    jr nc, jr_006_7876

    ld b, $00
    ret


jr_006_7876:
    ld a, $14
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_006_7882

    set 7, [hl]
    jr jr_006_7888

jr_006_7882:
    ld a, [$c22a]
    ld [$d878], a

jr_006_7888:
    ld a, [$d879]
    ld e, a
    ld a, [$d87a]
    ld d, a
    call Call_006_424a
    call Call_006_424a
    call Call_006_424a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $0c
    add c
    ld l, a
    ld a, [$d878]
    ld [hl], a
    ld a, $0d
    add c
    ld l, a
    ld a, e
    sub $30
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld a, d
    sub $30
    ld [hl], a
    call Call_000_025e

Jump_006_78bc:
    ld b, $01
    ret


Call_006_78bf:
    ld a, [$cc4a]
    cp $80
    jr nc, jr_006_78cf

    cp $54
    jr nc, jr_006_78da

    ld hl, $78ef
    jr jr_006_78dd

jr_006_78cf:
    sub $80
    cp $0b
    jr nc, jr_006_78da

    ld hl, $7943
    jr jr_006_78dd

jr_006_78da:
    xor a
    jr jr_006_78e3

jr_006_78dd:
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    or a

jr_006_78e3:
    ret


Call_006_78e4:
    ld a, $01
    ld [$c2f8], a
    ld a, $0a
    ld [$de2a], a
    ret


    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    ld a, [bc]
    ld [$1014], sp
    jr z, jr_006_7993

    dec d
    add c
    ld l, a
    ld [hl], $00
    xor a
    ld [$c201], a
    ret


    ld a, $19
    add c
    ld l, a
    ld [hl], $01
    inc l
    ld [hl], $01
    ld a, [$d740]
    bit 1, a
    jp nz, Jump_006_531c

    ld a, $19
    add c
    ld l, a
    ld [hl], $00
    ld a, $01
    ld [$c236], a
    ld a, [$dea9]
    or a
    jr z, @-$2b

    call Call_006_7b38
    jr c, @-$30

    ld [$dea9], a
    ld a, $15
    add c
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $0c
    add c

jr_006_7993:
    ld l, a
    ld a, [$d703]
    ld [hl], a
    ld a, $16
    add c
    ld l, a
    ld [hl], $04
    add $01
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $00
    ld a, $81
    ld [$d779], a
    ld [$d708], a
    ld a, $03
    ld [$d709], a
    xor a
    ld [wBusterChargeCounter], a
    rst $08
    ld a, [hl-]
    ld a, $3c
    ld [$d77a], a
    ret


Jump_006_79c6:
jr_006_79c6:
    xor a
    ld [$d779], a
    ld [$d77d], a
    ld [$c201], a
    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_006_79ee

    ld a, [$d788]
    or a
    jr nz, jr_006_79ee

    ld a, $3c
    ld [$d77a], a
    ld b, a
    ld a, [$d73a]
    cp b
    jr nc, jr_006_79ee

    ld a, b
    ld [$d73a], a

jr_006_79ee:
    xor a
    ret


    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_006_533b

    dec b
    jr nz, jr_006_79c6

    ld a, [$d779]
    or a
    jr z, jr_006_79c6

    ld a, $3c
    ld [$d77a], a
    ld a, [$d74b]
    cp $01
    jr nz, jr_006_79c6

    ld a, [$d163]
    or a
    jr nz, jr_006_79c6

    ld a, $0b
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_006_79c6

    ld a, [$d741]
    bit 5, a
    ld b, $00
    jr nz, jr_006_7a2a

    inc b
    bit 4, a
    jr z, jr_006_7a30

jr_006_7a2a:
    ld a, [$d703]
    xor b
    jr nz, jr_006_79c6

jr_006_7a30:
    ld a, $18
    add c
    ld l, a
    ld a, [$d70d]
    cp [hl]
    ld [hl], a
    jr z, jr_006_79c6

    ld a, $10
    ld [$c201], a
    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_006_7a53

    ld a, $01
    ld [$d779], a
    ld a, $0c
    ld [$c201], a

jr_006_7a53:
    dec l
    call Call_000_01e9
    jp z, Jump_006_79c6

    xor a
    ld [wBusterChargeCounter], a
    ld a, $01
    ld [$d77d], a
    ld a, $1f
    add c
    ld l, a
    ld [hl], $c4
    ld a, $17
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    and $07
    jr nz, jr_006_7a75

    rst $08
    ld a, [hl-]

jr_006_7a75:
    ld a, [$d703]
    bit 0, a
    ld de, $fe00
    jr z, jr_006_7a82

    ld de, $0200

jr_006_7a82:
    ld a, e
    ld [$d72b], a
    ld a, d
    ld [$d72c], a
    ld a, $04
    add c
    ld l, a
    ld a, [$d722]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$d725]
    ld [hl], a
    ld a, $0c
    add c
    ld l, a
    ld a, [$d703]
    cp [hl]
    ld [hl], a
    jp nz, Jump_006_79c6

    ld a, $0b
    add c
    ld l, a
    ld [hl], $04
    ld de, $7ab9
    xor a
    call Call_006_4ea8
    call Call_006_4f32
    xor a
    inc a
    ret


    cp e
    ld a, d
    or $04
    db $f4
    inc c
    add b

Jump_006_7ac0:
    xor a
    ldh [$ff8a], a
    ld a, [$dea9]
    or a
    jr z, jr_006_7b22

    ld a, [$d779]
    or a
    jr nz, jr_006_7b22

    call Call_006_7b38
    jr c, jr_006_7b22

    ld a, b
    ldh [$ff8a], a
    ld b, $18
    ld c, $0a
    ld hl, wBusterChargeFlashTimer
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_006_7ae8

    xor a
    ld [hl+], a
    inc [hl]
    dec hl

jr_006_7ae8:
    inc hl
    ld a, [hl]
    and $03
    ld e, a
    ldh a, [$ff8a]
    dec a
    ld hl, $7b2c
    jr z, jr_006_7aff

    dec a
    ld hl, $7b30
    jr z, jr_006_7aff

    ld hl, $7b34
    ld b, c

jr_006_7aff:
    ld d, $00
    add hl, de
    ld d, [hl]

jr_006_7b03:
    ld a, [$cca6]
    or a
    jr nz, jr_006_7b0c

    ld a, d
    ldh [rOBP0], a

jr_006_7b0c:
    ld hl, wBusterChargePaletteSfxTimer
    ldh a, [$ff8a]
    or a
    jr z, jr_006_7b1f

    inc [hl]
    ld a, [hl]
    cp $01
    jr nz, jr_006_7b1d

    rst $08
    db $10
    ld a, [hl]

jr_006_7b1d:
    cp b
    ret c

jr_006_7b1f:
    ld [hl], $00
    ret


jr_006_7b22:
    xor a
    ld [wBusterChargePaletteSfxTimer], a
    ld b, $00
    ld d, $1c
    jr jr_006_7b03

    db $10
    inc e
    inc d
    inc e
    db $10
    inc d
    jr jr_006_7b50

    inc e
    ld h, b
    or h
    ret z

Call_006_7b38:
    ld b, $00
    ld a, [wBusterChargeCounter]
    cp $10
    jr c, jr_006_7b4c

    inc b
    cp $1e
    jr c, jr_006_7b4c

    inc b
    cp $3c
    jr c, jr_006_7b4c

    inc b

jr_006_7b4c:
    ld a, b
    or a
    jr z, jr_006_7b77

jr_006_7b50:
    dec a
    add a
    add $4e
    ld e, a
    ld a, $79
    adc $00
    ld d, a
    ld a, [wPowerGeneratorUnlocked]
    or a
    ld a, [de]
    jr z, jr_006_7b63

    srl a

jr_006_7b63:
    ld l, a
    ld a, [$dea9]
    add $07
    sub l
    jr nc, jr_006_7b6f

    dec b
    jr jr_006_7b4c

jr_006_7b6f:
    ld a, [$dea9]
    sub l
    jr nc, jr_006_7b76

    xor a

jr_006_7b76:
    ret


jr_006_7b77:
    scf
    ret


    nop
    dec c
    ei
    rst $28
    dec b
    rst $28
    nop
    db $f4
    nop
    db $f4
    ei
    rst $38
    ld [bc], a
    db $10
    ld [bc], a
    db $fd
    inc b
    jr nz, @+$04

    inc bc
    ld b, $40
    db $fc
    inc b
    ld [$0580], sp
    rst $38
    db $10
    db $10
    cp $fd
    ld c, $20
    cp $03
    inc c
    ld b, b
    inc bc
    inc b
    ld a, [bc]
    add b
    ld a, $15
    add c
    ld l, a
    ld [hl], $01
    ld a, [$c2f4]
    cp $02
    jp z, Jump_006_531c

    ld a, [$deaa]
    or a
    jp z, Jump_006_531c

    ld b, $10
    call Call_006_473e
    ld a, $15
    add c
    ld l, a
    ld [hl], $02
    inc l
    ld [hl], $06
    add $0a
    ld l, a
    ld [hl], $c4
    add $f9
    ld l, a
    ld [hl], $00
    ld a, $04
    ld [$c201], a
    xor a
    ld de, $7e7a
    call Call_006_4ea8
    ld a, $01
    ld [$c2f3], a
    ret


    nop
    inc b
    nop
    nop

jr_006_7be6:
    ld a, [$d789]
    or a
    jr nz, jr_006_7bf7

    ld a, [$d81c]
    or a
    jr nz, jr_006_7bf7

    ld a, [$d788]
    or a
    ret z

jr_006_7bf7:
    xor a
    ld [$d77e], a
    ld [$cccd], a
    ld [$c2f3], a
    ret


Jump_006_7c02:
    call Call_006_7ef0
    xor a
    ret


    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    cp $01
    jp z, Jump_006_533b

    dec b
    jr nz, jr_006_7be6

    and $f0
    jp nz, Jump_006_7dee

    ld a, [hl]
    cp $03
    jr z, jr_006_7c6a

    cp $04
    jp z, Jump_006_7cd5

    ld a, $5c
    ld [$d70a], a
    xor a
    ld [$d739], a
    ld a, $01
    ld [$d77e], a
    ld [$c2f3], a
    ld a, $03
    ld [$cccd], a
    ld a, [$deaf]
    or a
    jr nz, jr_006_7c67

    ld a, $16
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_006_7c67

    call Call_006_7e26
    ld a, $15
    add c
    ld l, a
    ld [hl], $03
    add $fa
    ld l, a
    ld [hl], $00
    add $fe
    ld l, a
    ld [hl], $82
    inc l
    ld [hl], $7e
    xor a
    ld [$d77e], a
    ld [$c201], a
    jr jr_006_7ca7

Jump_006_7c67:
jr_006_7c67:
    xor a
    inc a
    ret


jr_006_7c6a:
    push hl
    ld hl, $cccd
    ld a, [hl]
    or a
    jr z, jr_006_7c73

    dec [hl]

jr_006_7c73:
    pop hl
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $00
    or a
    jr nz, jr_006_7cae

    ld a, $1f
    add c
    ld l, a
    ld [hl], $c0
    ld a, [$deaf]
    or a
    jr nz, jr_006_7ca7

    ld a, [$d163]
    or a
    jr nz, jr_006_7ca7

    ld a, [$d740]
    bit 1, a
    jr z, jr_006_7ca7

    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    ld a, $10
    ld [$c201], a
    ld a, $02
    ld [wPlayerShotAnimType], a

jr_006_7ca7:
    ld a, $02
    ld [$c2f3], a
    jr jr_006_7c67

jr_006_7cae:
    ld l, c
    push hl
    ld hl, $7be2
    call Call_006_4f70
    call Call_006_46d8
    pop hl
    ld c, l
    ld a, $04
    add c
    ld l, a
    ld a, [$d76b]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [$d76c]
    ld [hl], a
    ld a, $15
    add c
    ld l, a
    ld [hl], $04
    rst $08
    dec c
    jr jr_006_7c67

Jump_006_7cd5:
    ld a, $f0
    ld [$c2f3], a
    ld a, $0b
    add c
    ld l, a
    ld d, [hl]
    bit 7, d
    jr z, jr_006_7cef

    xor a
    ld [$c2f3], a
    ld de, $7ced
    jp Jump_006_49e1


    add d
    ld a, [hl]

jr_006_7cef:
    ld a, d
    cp $04
    jr nz, jr_006_7d13

    call Call_006_4b0f
    ld de, $7e7e
    call Call_006_4abf
    bit 0, a
    jr nz, jr_006_7d13

    call Call_006_4b4e
    jr nz, jr_006_7d0d

    xor a
    ld [$c2f3], a
    jp Jump_006_7c02


jr_006_7d0d:
    call Call_006_4f32
    jp Jump_006_7c67


jr_006_7d13:
    xor a
    ld [$c2f3], a
    ld a, $01
    ld de, $7e7a
    call Call_006_4ea8
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    ld [$c239], a
    or a
    ld de, $7b83
    jr z, jr_006_7d3e

    ld de, $7b93

jr_006_7d3e:
    ld a, e
    ld [$c3c0], a
    ld a, d
    ld [$c3c1], a
    call Call_006_7d55
    call Call_006_7d55
    call Call_006_7d55
    call Call_006_7d59
    xor a
    inc a
    ret


Call_006_7d55:
    call Call_006_4886
    ret c

Call_006_7d59:
    ld a, c
    ld [$c2bf], a
    ld a, h
    ld [$c2c0], a
    call Call_006_4714
    ld a, $15
    add c
    ld l, a
    ld [hl], $80
    add $eb
    ld l, a
    ld [hl], $01
    add $09
    ld l, a
    ld [hl], $80
    add $01
    ld l, a
    ld a, $01
    call Call_000_01b9
    ld a, $0c
    add c
    ld l, a
    ld a, [$c239]
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $01
    add $fe
    ld l, a
    ld [hl], $97
    inc l
    ld [hl], $7e
    add $12
    ld l, a
    ld [hl], $c0
    add $e2
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $05
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c3c0]
    ld e, a
    ld a, [$c3c1]
    ld d, a
    ld a, $04
    add c
    ld l, a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$ff9b]
    add b
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$ff9c]
    add b
    ld [hl], a
    ld a, [de]
    inc de
    ld b, a
    ld a, $15
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, [$c2f3]
    or [hl]
    ld [$c2f3], a
    ld a, e
    ld [$c3c0], a
    ld a, d
    ld [$c3c1], a
    ld a, b
    ld de, $0380
    call Call_006_4ca9
    call Call_006_4b19
    ld a, [$c2bd]
    ld c, a
    ld a, [$c2be]
    ld h, a
    ret


Jump_006_7dee:
    call Call_006_4b33
    jr z, jr_006_7dff

    ld a, $0b
    add c
    ld l, a
    ld [hl], $04
    call Call_006_4f32
    xor a
    inc a
    ret


jr_006_7dff:
    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $00
    cpl
    ld b, a
    ld a, [$c2f3]
    and b
    ld [$c2f3], a
    xor a
    ret


Jump_006_7e11:
    ld a, [$c2bd]
    ld c, a
    ld a, [$c2be]
    ld h, a
    ld a, $15
    add c
    ld l, a
    ld a, [hl]
    cp $03
    call z, Call_006_7e4f
    jp Jump_006_4c1b


Call_006_7e26:
    ld l, c
    push hl
    ld a, [$d70d]
    ld e, a
    ld a, [$d70e]
    srl a
    rr e
    srl a
    rr e
    srl a
    rr e
    srl a
    rr e
    ld a, [$c2d5]
    ld d, a
    ld bc, $0101
    ld hl, $cc9c
    call Call_000_0246
    pop hl
    ld c, l
    ret


Call_006_7e4f:
    ld a, $0c
    add c
    ld l, a
    ld a, [$d703]
    ld [hl], a
    ld b, a
    ld a, [$d163]
    or a
    ld hl, $7b7b
    jr z, jr_006_7e64

    ld hl, $7b7f

jr_006_7e64:
    ld a, b
    or a
    jr z, jr_006_7e6a

    inc hl
    inc hl

jr_006_7e6a:
    ld a, [$d722]
    add [hl]
    inc hl
    ldh [$ff9b], a
    ld a, [$d725]
    add [hl]
    ldh [$ff9c], a
    ld h, $c2
    ret


    ld a, [hl]
    ld a, [hl]
    sub e
    ld a, [hl]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    inc d
    stop
    ld [$3014], sp
    ld [$14f8], sp
    ld d, b
    nop
    ld [$7014], sp
    add b
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    db $fc
    dec d
    db $10
    add b

Jump_006_7e9c:
    ld a, [$c2f3]
    or a
    jr nz, jr_006_7ef0

    ld a, [$d77e]
    or a
    jr nz, jr_006_7ef0

    ld a, [$d74b]
    cp $01
    jr nz, jr_006_7ed7

    ld a, [$deaa]
    or a
    jr z, jr_006_7ed7

    ld hl, $7b79
    call Call_006_4028
    ld a, [$d74e]
    cp $09
    jr nz, jr_006_7ed7

    call Call_006_7efc
    ld a, [$d740]
    bit 1, a
    ret z

    ld a, [$c2d3]
    swap a
    ld [$c2d5], a
    ld a, $01
    jr jr_006_7ee7

jr_006_7ed7:
    ld a, [$d740]
    bit 1, a
    jr z, jr_006_7ef0

    ld a, [$c200]
    cp $03
    jr nc, jr_006_7ef0

    ld a, $02

jr_006_7ee7:
    ld [$c2f4], a
    call Call_006_7ef0
    jp Jump_006_4684


Call_006_7ef0:
jr_006_7ef0:
    ld hl, $c2d1
    ld a, [hl]
    cp $40
    ret nc

    ld [hl], $40
    jp Jump_000_01a7


Call_006_7efc:
    ld a, $10
    ldh [$ffab], a
    xor a
    ld [$d3ea], a
    ld a, $6a
    ldh [$ffac], a
    ld a, [$c2d1]
    cp $40
    jr c, jr_006_7f17

    ld a, $04
    call Call_000_01a4
    ld [$c2d1], a

jr_006_7f17:
    ld a, [$d711]
    ld e, a
    ld a, [$d74f]
    add e
    and $f0
    ld [$c2d2], a
    add $07
    sub e
    ldh [$ff9b], a
    ld a, [$d18d]
    ld b, a
    ld a, [$d750]
    add b
    and $f0
    ld [$c2d3], a
    add $07
    ldh [$ff9c], a
    ld bc, $7e82
    ld a, [$c2d1]
    jp Jump_000_0210


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
