; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    jp Jump_00f_4c86


    jp Jump_00f_4aa1


    cp b
    ld b, [hl]
    dec a
    ld c, b
    jp Jump_00f_5074


    jp Jump_00f_6053


    jp Jump_00f_6050


    jp Jump_00f_4fb7


    ret


Call_00f_4017:
    push de
    ret


    bit 7, d
    push af
    jr z, jr_00f_4028

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_00f_4028

    inc d

jr_00f_4028:
    call Call_00f_4037
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


Call_00f_4037:
    call Call_000_0285
    ld d, c
    ld e, h
    ret


Call_00f_403d:
    ld a, $01
    ld [$c2c4], a
    ld c, $3b

jr_00f_4044:
    ld h, $c2
    ld a, c
    ld [$c2bd], a
    ld a, h
    ld [$c2be], a
    ld l, c
    ld a, [hl]
    or a
    jr z, jr_00f_406a

    ld a, $98
    ldh [$ff9c], a
    ld a, $0a
    add c
    ld l, a
    push hl
    ld a, [hl]
    ld bc, $4075
    call Call_000_0210
    pop hl
    ld a, [hl]
    ld [hl], $40
    call Call_000_01a7

jr_00f_406a:
    ld a, [$c2bd]
    add $20
    ld c, a
    cp $bb
    jr c, jr_00f_4044

    ret


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
    add b
    inc hl
    ld a, $fe
    ld [hl+], a
    xor a
    ld [hl], a
    ret


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
    jr c, jr_00f_40bc

    dec hl
    ld b, [hl]
    jr jr_00f_410a

jr_00f_40bc:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_00f_40c5:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_00f_40eb

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
    call Call_00f_4017
    pop bc
    pop hl

jr_00f_40e3:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_00f_40c5

jr_00f_40eb:
    cp $fe
    jr c, jr_00f_4103

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_00f_40f9

    ld [hl], $00
    jr jr_00f_40e3

jr_00f_40f9:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_00f_410b

jr_00f_4103:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_00f_410a:
    or a

jr_00f_410b:
    ld [hl], b
    ret


    ld a, [$ce53]
    ld e, a
    ld a, [$ce54]
    ld d, a
    ld a, b
    jp Jump_000_0171


    call Call_000_019e

Jump_00f_411c:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00f_4126:
    ldh a, [$ff92]

Call_00f_4128:
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
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_00f_4126

    ld a, [hl+]
    or [hl]
    ret z

    dec l
    ld a, [hl]
    sub $01
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    or [hl]
    ret nz

    scf
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


Call_00f_4170:
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


    di
    ld hl, $cca8
    set 0, [hl]
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
    set 1, [hl]
    set 2, [hl]
    inc hl
    inc hl
    inc hl
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


Call_00f_41ad:
jr_00f_41ad:
    ld a, [$cca8]
    and $07
    jr nz, jr_00f_41ad

    ret


jr_00f_41b5:
    ld a, [$cca8]
    and $07
    jp z, Jump_000_01c5

    call Call_000_01c5
    jr jr_00f_41b5

    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_00f_41c6:
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
    jr nz, jr_00f_41c6

    ret


    call Call_00f_4274
    jr z, jr_00f_41f6

    jr c, jr_00f_41f4

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_00f_41f8

jr_00f_41f4:
    or a
    ret


jr_00f_41f6:
    scf
    ret


Call_00f_41f8:
    jp hl


    call Call_000_01c8
    ld hl, $de94
    ld a, [$de91]
    cp [hl]
    ld [hl], a
    jr z, jr_00f_4212

    ld a, [$de92]
    ld [$de95], a
    ld a, $10
    ld [$de93], a
    ret


jr_00f_4212:
    ld hl, $de93
    ld a, [hl]
    or a
    jr nz, jr_00f_4220

    ld [hl], $08
    ld a, [$de91]
    jr jr_00f_4222

Call_00f_4220:
jr_00f_4220:
    dec [hl]
    xor a

jr_00f_4222:
    ld [$de95], a
    ret


    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_00f_4170
    call Call_00f_41ad
    call Call_000_01d1
    xor a
    ld [$de42], a
    ld [$d7d1], a
    ld [$d7d2], a
    ld [$de2c], a
    ld a, $a0
    ldh [rWY], a
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f4], a
    ld a, $e3
    ld [$de87], a
    jp Jump_000_01c5


    ld a, $83
    ld [$de87], a
    ld b, a
    ldh a, [rLCDC]
    and $80
    jr z, jr_00f_426c

jr_00f_4262:
    ldh a, [rLY]
    cp $91
    jr c, jr_00f_4262

    cp $97
    jr nc, jr_00f_4262

jr_00f_426c:
    ld a, b
    ldh [rLCDC], a
    ret


    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00f_4274:
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
    jr z, jr_00f_4289

    dec [hl]
    xor a
    sub $01
    ret


jr_00f_4289:
    inc l

jr_00f_428a:
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
    jr nz, jr_00f_429d

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00f_429d:
    cp $ff
    jr nz, jr_00f_42ad

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00f_428a

jr_00f_42ad:
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


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00f_42cc:
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
    push hl
    ld a, [bc]
    inc bc
    ld hl, $ffab
    or [hl]
    pop hl
    ld [hl], a
    jr jr_00f_42cc

    ld e, $00
    ld d, $08
    ld c, $0a
    ld b, $01
    ld hl, $49b0
    call Call_000_0246
    ld de, $8d00
    call Call_000_025b
    xor a
    ld [$d141], a
    ld [$d148], a
    ld a, $1e
    ld [$d149], a
    ld hl, $de9e
    ld de, $d170
    ld bc, $0010
    call Call_000_0180
    ld a, $01
    ld [$df0b], a
    xor a
    ld [$de42], a
    ret


    ret


jr_00f_4335:
    ld hl, $d149
    call Call_000_01e9
    jr nz, jr_00f_43a1

    ld a, [$df0d]
    or a
    jr z, jr_00f_4350

    ld [$de9b], a
    xor a
    ld [$df0d], a
    ld [$deaf], a
    jp Jump_00f_43c7


jr_00f_4350:
    xor a
    ld [$de2c], a
    ld [$ded4], a
    ld a, $e3
    ld [$de87], a
    ld d, $ff
    call Call_000_02f1
    ld hl, $d170
    ld de, $de9e
    ld bc, $0010
    call Call_000_0180
    jp Jump_000_0228


    ld a, [$deaf]
    bit 0, a
    jr nz, jr_00f_43a1

    ld hl, $d141
    ld a, [hl]
    or a
    jr nz, jr_00f_4391

    dec [hl]
    ld a, $10
    ldh [rLYC], a
    ld a, $09
    ld [$de2c], a
    ld a, $01
    ld [$d703], a
    ld a, $a0
    ldh [rWY], a

jr_00f_4391:
    ld a, [$d148]
    or a
    jr z, jr_00f_43a2

    dec a
    jr z, jr_00f_43f0

    dec a
    jp z, Jump_00f_442d

    dec a
    jr z, jr_00f_4335

Jump_00f_43a1:
jr_00f_43a1:
    ret


jr_00f_43a2:
    ld a, [$d74b]
    cp $01
    jr nz, jr_00f_43eb

    ld hl, $d149
    call Call_000_01e9
    jr nz, jr_00f_43eb

    ld a, [$d722]
    cp $20
    jr nc, jr_00f_43e1

    ld a, $00
    ldh [rOBP1], a
    ld a, $01
    ld [$d140], a
    ld a, [$df0c]
    ld [$de9b], a

Jump_00f_43c7:
    call Call_00f_403d
    call Call_000_01c5
    ld hl, $86a0
    ld bc, $0160
    xor a
    call Call_000_0186
    call Call_000_027c
    ld a, $01
    ld [$d148], a
    jr jr_00f_43eb

jr_00f_43e1:
    ld a, $00
    ld [$d731], a
    ld a, $ff
    ld [$d732], a

jr_00f_43eb:
    call Call_00f_4a47
    jr jr_00f_43a1

jr_00f_43f0:
    ld a, [$de9b]
    ld de, $454e
    call Call_000_0171
    call Call_00f_4a59
    jr nc, jr_00f_442a

    ld hl, $deaf
    set 4, [hl]
    ld a, $02
    ld [$d148], a
    xor a
    ld [$d142], a
    call Call_00f_4568
    ld a, $20
    ld [$d143], a
    ld hl, $99c2
    ld bc, $0010
    ld a, $03
    call Call_000_0186
    ld hl, $99e2
    ld bc, $0010
    ld a, $03
    call Call_000_0186

jr_00f_442a:
    jp Jump_00f_43a1


Jump_00f_442d:
    xor a
    ld [$d774], a
    ld [$d773], a
    call Call_00f_45a6
    jr nc, jr_00f_4443

    ld a, $03
    ld [$d148], a
    ld a, $b4
    ld [$d149], a

jr_00f_4443:
    jp Jump_00f_43a1


    dec e
    nop
    ld bc, $3c02
    nop
    inc b
    db $10
    dec b
    ld de, $0102
    ld bc, $1e02
    nop
    nop
    ld e, d
    nop
    inc bc
    ld bc, $0001
    ld h, h
    ld [bc], a
    ld bc, $0300
    ld bc, $0001
    inc hl
    ld [bc], a
    ld bc, $0300
    ld bc, $0001
    inc d
    ld [bc], a
    jr z, jr_00f_4471

jr_00f_4471:
    inc d
    nop
    ld [$0102], sp
    nop
    ld [$0102], sp
    nop
    rlca
    ld [bc], a
    dec b
    nop
    nop
    ld e, d
    nop
    inc d
    db $10
    inc d
    nop
    ld e, d
    ld [bc], a
    inc d
    nop
    ld d, l
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    ld e, d
    nop
    inc bc
    ld bc, $0278
    inc d
    nop
    inc bc
    ld bc, $021e
    ld a, [bc]
    nop
    inc b
    ld bc, $024b
    nop
    ld e, d
    nop
    ld bc, $3202
    nop
    ld [hl+], a
    db $10
    inc d
    nop
    ld a, [de]
    ld bc, $0201
    ld e, d
    nop
    ld bc, $1402
    nop
    ld d, $10
    ld bc, $1a00
    ld bc, $0228
    dec e
    jr nz, jr_00f_44c2

    db $10

jr_00f_44c2:
    ld bc, $0000
    ld bc, $0000
    ld e, d
    nop
    inc bc
    ld bc, $0202
    ld [hl-], a
    nop
    inc a
    db $10
    inc c
    nop
    nop
    ld bc, $1e10
    nop
    ld bc, $2802
    nop
    dec b
    ld de, $0105
    ld e, $00
    ld [$0802], sp
    nop
    ld bc, $0a02
    nop
    nop
    ld e, d
    nop
    inc [hl]
    db $10
    ld [bc], a
    nop
    ld a, b
    ld [bc], a
    ld e, $00
    inc c
    ld bc, $030c
    ld bc, $0000
    ld e, d
    nop
    ld e, $10
    inc d
    nop
    ld bc, $8702
    nop
    nop
    ld e, d
    nop
    inc d
    db $10
    ld [bc], a
    nop
    inc bc
    ld bc, $0201
    inc d
    nop
    inc bc
    ld bc, $0201
    ld [bc], a
    nop
    inc bc
    ld bc, $02b4
    jr z, jr_00f_4520

jr_00f_4520:
    ld bc, $0120
    nop
    ld h, h
    ld [bc], a
    ld a, [de]
    nop
    nop
    ld e, d
    nop
    inc e
    db $10
    ld e, d
    nop
    ld [bc], a
    ld [bc], a
    ld e, $00
    jr @+$13

    ld a, [bc]
    ld [bc], a
    jr z, jr_00f_4539

jr_00f_4539:
    ld de, $1420
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $1e00
    jr nz, jr_00f_455c

    ld hl, $1002
    inc a
    nop
    ld [$0201], sp
    ld [bc], a
    ld e, $00
    nop
    ld b, [hl]
    ld b, h
    ld d, a
    ld b, h
    add b
    ld b, h
    adc a
    ld b, h
    and d
    ld b, h
    push bc
    ld b, h

jr_00f_455c:
    ret z

    ld b, h
    push de
    ld b, h
    db $ec
    ld b, h
    db $fd
    ld b, h
    ld [$2945], sp
    ld b, l

Call_00f_4568:
    ld hl, $d142
    ld a, [hl]
    cp $02
    ccf
    ret c

    inc [hl]
    or a
    jr nz, jr_00f_4587

    ld hl, $45fa
    ld a, [$de9b]
    cp $01
    jr z, jr_00f_4585

    cp $08
    jr z, jr_00f_4585

    ld hl, $45f0

jr_00f_4585:
    jr jr_00f_4591

jr_00f_4587:
    ld a, [$de9b]
    dec a
    ld hl, $46a0
    call Call_000_016e

jr_00f_4591:
    ld a, [hl+]
    ld [$d146], a
    ld a, [hl+]
    ld [$d147], a
    ld a, l
    ld [$d144], a
    ld a, h
    ld [$d145], a
    xor a
    ld [$d143], a
    ret


Call_00f_45a6:
    ld hl, $d143
    ld a, [hl]
    or a
    jr z, jr_00f_45af

    dec [hl]
    ret


jr_00f_45af:
    ld [hl], $04
    rst $08
    inc h
    ld hl, $d144
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    or a
    jr nz, jr_00f_45c7

    call Call_00f_4568
    ret c

    ld a, $20
    ld [$d143], a
    ret


jr_00f_45c7:
    ld d, a
    ld a, l
    ld [$d144], a
    ld a, h
    ld [$d145], a
    ld a, d
    cp $20
    jr nz, jr_00f_45d9

    ld d, $03
    jr jr_00f_45dc

jr_00f_45d9:
    add $8f
    ld d, a

jr_00f_45dc:
    ld hl, $d146
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, d
    call Call_000_0189
    inc hl
    ld a, l
    ld [$d146], a
    ld a, h
    ld [$d147], a
    ret


    jp nz, Jump_00f_5999

    ld c, a
    ld d, l
    jr nz, jr_00f_463e

    ld c, a
    ld d, h
    nop
    ret z

    sbc c
    ld b, c
    ld c, [hl]
    ld b, h
    nop
    db $e4
    sbc c
    ld d, d
    ld d, l
    ld d, e
    ld c, b
    jr nz, jr_00f_464b

    ld c, a
    ld c, c
    ld c, h
    nop
    db $e4
    sbc c
    ld b, a
    ld d, d
    ld b, c
    ld b, d
    jr nz, jr_00f_4656

    ld d, l
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    nop
    db $e4
    sbc c
    ld b, d
    ld d, l
    ld b, d
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_00f_4666

    ld c, a
    ld c, l
    ld b, d
    nop
    db $e4
    sbc c
    ld d, b
    ld c, b
    ld c, a
    ld d, h
    ld c, a
    ld c, [hl]
    jr nz, jr_00f_467f

    ld c, c
    ld d, e
    ld d, e
    ld c, c
    ld c, h
    ld b, l
    nop
    db $e4
    sbc c
    ld d, e
    ld b, c
    ld c, h

jr_00f_463e:
    ld d, h
    jr nz, jr_00f_4698

    ld b, c
    ld d, h
    ld b, l
    ld d, d
    nop
    jp z, $4299

    ld b, l
    ld b, c

jr_00f_464b:
    ld d, h
    nop
    db $e3
    sbc c
    ld d, e
    ld d, b
    ld b, c
    ld d, d
    ld c, e
    jr nz, @+$45

jr_00f_4656:
    ld c, b
    ld b, c
    ld d, e
    ld b, l
    ld d, d
    nop
    push hl
    sbc c
    ld d, d
    ld d, l
    ld d, e
    ld c, b
    jr nz, jr_00f_46ae

    ld b, l
    ld d, h

jr_00f_4666:
    nop
    db $e4
    sbc c
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    ld d, d
    ld c, c
    ld b, e
    jr nz, @+$55

    ld c, b
    ld c, a
    ld b, e
    ld c, e
    nop
    db $e4
    sbc c
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e

jr_00f_467f:
    jr nz, jr_00f_46c9

    ld c, a
    ld c, h
    ld b, l
    nop
    db $e4
    sbc c
    ld b, d
    ld d, d
    ld b, l
    ld b, c
    ld c, e
    jr nz, jr_00f_46d2

    ld b, c
    ld d, e
    ld c, b
    nop
    db $e4
    sbc c
    ld b, h
    ld b, l
    ld b, l
    ld d, b

jr_00f_4698:
    jr nz, jr_00f_46de

    ld c, c
    ld b, a
    ld b, a
    ld b, l
    ld d, d
    nop
    nop
    ld b, [hl]
    inc c
    ld b, [hl]
    ld a, [de]
    ld b, [hl]
    jr z, jr_00f_46ee

    add hl, sp
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, l
    ld b, [hl]

jr_00f_46ae:
    ld e, h
    ld b, [hl]
    ld h, a
    ld b, [hl]
    ld a, b
    ld b, [hl]
    add l
    ld b, [hl]
    sub d
    ld b, [hl]
    jr jr_00f_46c9

    cp l
    ld b, [hl]
    nop
    inc a
    nop
    ld e, d
    inc a
    add c
    ld b, d
    db $d3
    ld e, d
    bit 2, d
    add c
    ld b, d

jr_00f_46c9:
    ld e, d
    inc a
    inc a
    nop
    ld b, b
    rst $38
    ld e, l
    rst $38
    db $10

jr_00f_46d2:
    rst $38
    ld d, a
    rst $38
    ld b, h
    rst $38
    push de
    rst $38
    ld de, $75ff
    rst $38
    ld b, h

jr_00f_46de:
    rst $38
    push de
    rst $38
    ld de, $75ff
    rst $38
    inc b
    rst $38
    db $dd
    rst $38
    ld bc, $77ff
    rst $38
    inc b

jr_00f_46ee:
    rst $38
    db $dd
    rst $38
    ld bc, $77ff
    rst $38
    ld b, b
    rst $38
    ld e, l
    rst $38
    db $10
    rst $38
    ld d, a
    rst $38
    ld b, b
    rst $38
    ld e, l
    rst $38
    db $10
    rst $38

jr_00f_4703:
    ld d, a
    rst $38
    ld b, h
    rst $38
    push de
    rst $38
    ld de, $75ff
    rst $38
    xor c
    ld [hl], b
    ld d, d
    ld hl, $70a9
    ld d, d
    ld hl, $70a9
    ld d, d
    ld hl, $70a9
    ld d, d
    ld hl, $e010
    and $f8
    jr jr_00f_4703

    and $f8
    db $10
    ldh [$ffe6], a
    ld hl, sp+$10
    ldh [$ffe6], a
    ld hl, sp+$22
    inc e
    ld e, h
    ccf
    inc hl
    inc e
    ld e, h
    ccf
    ld [hl+], a
    inc e
    ld e, h
    ccf
    ld [hl+], a
    inc e
    ld e, h
    ccf
    dec d
    ld c, $ca
    inc b
    dec d
    ld c, $ca
    inc b
    dec d
    ld c, $ca
    inc b
    dec d
    ld c, $ca
    inc b
    nop
    nop
    xor d
    nop
    ld d, l
    xor d
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    xor d
    nop
    xor d
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    ld d, l
    ld d, l
    rst $38
    xor d
    ld d, l
    ld d, l
    nop
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    xor d
    nop
    xor d
    nop
    nop
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
    jr jr_00f_47e5

    inc l
    ld e, $00
    nop
    ld a, [hl-]
    nop

jr_00f_47e5:
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

Call_00f_4814:
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
    jr z, jr_00f_487c

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
    ld b, c
    ld c, b
    ld d, l
    ld c, b
    ld d, [hl]
    ld c, b
    ld [hl], d
    ld c, b
    adc [hl]
    ld c, b
    xor d
    ld c, b
    add $48
    ldh [c], a
    ld c, b
    ld [bc], a
    ld c, c
    ld e, $49
    ld a, $49
    ld a, $49
    rst $38
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    ld h, h
    ld c, b
    ld bc, $4334
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a

jr_00f_487c:
    nop
    inc sp
    add b
    ld c, b

Jump_00f_4880:
    ld [bc], a
    inc [hl]
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc d
    rlca
    stop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    sbc h
    ld c, b
    inc bc
    inc [hl]
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    cp b
    ld c, b
    inc b
    inc [hl]
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    call nc, Call_000_0548
    inc [hl]
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    ldh a, [rOBP0]
    ld b, $34
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    inc d
    rlca
    stop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    db $10
    ld c, c
    rlca
    inc [hl]
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    inc l
    ld c, c
    ld [$4334], sp
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    inc d
    rlca
    stop
    nop
    nop
    cp d
    ld c, c
    rra
    ld c, d
    cp $42
    ld [hl], b
    ld b, e
    ld c, a
    nop
    inc sp
    ld c, h
    ld c, c
    add hl, bc
    inc [hl]
    ld b, e
    ld e, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    inc de
    rlca
    ld b, b
    nop
    inc d
    rlca
    stop
    nop
    ld a, [bc]
    ld [$1716], sp
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    jr jr_00f_497e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d

jr_00f_497e:
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    dec d
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec d
    dec d
    dec d
    ld a, [bc]
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
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    db $10
    ld de, $1111
    ld de, $1111
    ld de, $1211
    add hl, de
    db $10
    ld [de], a
    ld de, $0113
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2523
    inc h
    ld h, $1d
    rra
    dec de
    inc bc
    dec de
    inc bc
    dec de
    inc bc
    dec de
    inc bc
    ld e, $20
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jr nz, jr_00f_4a1b

    rra
    ld hl, $1c03
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    jr nz, jr_00f_4a29

    inc d
    inc d
    dec d
    dec d
    ld d, $16
    rla
    rla
    jr jr_00f_4a2a

    jr jr_00f_4a2c

    ld a, [de]
    inc d
    ld a, [de]
    dec d
    ld a, [de]
    ld bc, $011a

jr_00f_4a1b:
    ld a, [de]
    ld d, $1a
    rla
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

jr_00f_4a29:
    inc bc

jr_00f_4a2a:
    inc bc
    inc bc

jr_00f_4a2c:
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
    inc bc
    ld hl, $c028
    ld de, $0004
    ld bc, $1ea0

jr_00f_4a41:
    ld [hl], c
    add hl, de
    dec b
    jr nz, jr_00f_4a41

    ret


Call_00f_4a47:
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d775], a
    ld [$d776], a
    ld [$d774], a
    ld de, $00c0

Call_00f_4a59:
    ld a, $20
    ld [$d771], a
    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_00f_4a6c

    dec [hl]
    ld a, [$d773]
    ld d, a
    jr jr_00f_4a87

jr_00f_4a6c:
    inc hl
    ld a, [hl]
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00f_4a80

    ld d, $00
    call Call_00f_4a87
    scf
    ret


jr_00f_4a80:
    inc [hl]
    dec hl
    dec a
    ld [hl], a
    inc de
    ld a, [de]
    ld d, a

Call_00f_4a87:
jr_00f_4a87:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


    ld [bc], a
    ld c, e
    rlca
    add h
    nop
    ld c, b
    ld c, h
    nop
    ld bc, $0000
    rrca
    inc b

Jump_00f_4aa1:
    ld a, $94
    ld [$cc00], a
    ld a, $4a
    ld [$cc01], a
    call Call_00f_4ab2
    ret c

    jp Jump_00f_4afc


Call_00f_4ab2:
    ld e, $50
    ld d, $3c
    call Call_000_01e3
    ret c

    ld a, $05
    add c
    ld l, a
    ld [hl], $63
    add $1f
    ld l, a
    ld [hl], $00
    ld a, [$cc00]
    ld e, a
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
    ld b, $10
    call Call_000_01b0
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


Jump_00f_4af9:
    ld b, $00
    ret


Jump_00f_4afc:
    ld de, $4c48
    jp Jump_000_01dd


    ld a, [$deaf]
    and $e7
    jp nz, Jump_00f_4b59

    ld a, $08
    add c
    ld l, a
    ld a, [$d0a2]
    add [hl]
    and $3f
    add a
    add $c8
    ld e, a
    ld a, $00
    adc $4b
    ld d, a
    ld a, [de]
    ld b, a
    push de
    ld a, $2f
    add c
    ld l, a
    ld a, [$d722]
    add $50
    ld e, a
    ld d, $00
    call Call_00f_4b8c
    pop de
    inc de
    ld a, [de]
    ld b, a
    ld a, $31
    add c
    ld l, a
    ld a, [$d725]
    ld e, a
    ld d, $00
    call Call_00f_4b8c
    ld de, $4c72
    call Call_000_015f
    ld a, [$d0a1]
    or a
    jr nz, jr_00f_4b59

    ld a, [$d0a0]
    cp $10
    jr nc, jr_00f_4b59

    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_00f_4b59:
jr_00f_4b59:
    ld a, $0d
    add c
    ld e, a
    add $22
    ld l, a
    ld a, [hl]
    sub $50
    ld l, e
    ld [hl], a
    ld a, $0f
    add c
    ld e, a
    add $22
    ld l, a
    ld a, [hl]
    ld l, e
    ld [hl], a
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    add $e1
    ld l, a
    ld [hl], $63
    ld a, [$d0a0]
    ld b, a
    ld a, [$d0a1]
    or b
    jp z, Jump_00f_4af9

    ld a, $01
    ld [$cc44], a
    ld b, a
    ret


Call_00f_4b8c:
    push bc
    push hl
    push de
    ld a, b
    ld b, $00
    bit 7, a
    jr z, jr_00f_4b99

    dec b
    cpl
    inc a

jr_00f_4b99:
    ld c, a
    ld a, b
    push af
    ld b, $00
    ld a, [$d0a0]
    ld e, a
    ld a, [$d0a1]
    ld d, a
    call Call_000_0285
    ld b, h
    pop af
    or a
    jr z, jr_00f_4bb7

    ld a, b
    cpl
    ld b, a
    ld a, l
    cpl
    inc a
    jr nz, jr_00f_4bb7

    inc b

jr_00f_4bb7:
    pop de
    pop hl
    ld c, $00
    bit 7, b
    jr z, jr_00f_4bc0

    dec c

jr_00f_4bc0:
    ld a, b
    add e
    ld [hl+], a
    ld a, c
    adc d
    ld [hl+], a
    pop bc
    ret


    nop
    call nz, $c406
    inc c
    push bc
    ld de, $17c7
    ret


    inc e
    sla c
    adc $26
    jp nc, $d62a

    ld l, $da
    ld [hl-], a
    rst $18
    dec [hl]
    db $e4
    scf
    jp hl


    add hl, sp
    rst $28
    dec sp
    db $f4
    inc a
    ld a, [$003c]
    inc a
    ld b, $3b
    inc c
    add hl, sp
    ld de, $1737
    dec [hl]
    inc e
    ld [hl-], a
    ld hl, $262e
    ld a, [hl+]
    ld a, [hl+]
    ld h, $2e
    ld hl, $1c32
    dec [hl]
    rla
    scf
    ld de, $0c39
    dec sp
    ld b, $3c
    nop
    inc a
    ld a, [$f43c]
    dec sp
    rst $28
    add hl, sp
    jp hl


    scf
    db $e4
    dec [hl]
    rst $18
    ld [hl-], a
    jp c, $d62e

    ld a, [hl+]
    jp nc, $ce26

    ld hl, $1ccb
    ret


    rla
    rst $00
    ld de, $0cc5
    call nz, $c406
    nop
    call nz, $c5fa
    db $f4
    rst $00
    rst $28
    ret


    jp hl


    set 4, h
    adc $df
    jp nc, $d6da

    sub $da
    jp nc, $cedf

    db $e4
    set 5, c
    ret


    rst $28
    rst $00
    db $f4
    push bc
    ld a, [$4ec4]
    ld c, h
    ld e, d
    ld c, h
    ld h, [hl]
    ld c, h
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp-$08
    ld [hl+], a
    nop
    add b
    ld b, b
    ret nz

    add b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp-$08
    ld [hl+], a
    ld bc, $4181
    pop bc
    add b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp-$08
    ld [hl+], a
    ld [bc], a
    add d
    ld b, d
    jp nz, Jump_00f_4880

    ld c, h
    ld [bc], a
    nop
    ld bc, $ff02
    ldh [$ff4c], a
    rlca
    add b
    nop
    rst $00
    ld c, l
    nop
    ld bc, $0000
    rrca
    nop

Jump_00f_4c86:
    ld a, $79
    ld [$cc00], a
    ld a, $4c
    ld [$cc01], a
    call Call_00f_4c97
    ret c

    jp Jump_00f_4cd7


Call_00f_4c97:
    ld e, $50
    ld d, $3c
    call Call_000_01e3
    ret c

    ld a, [$cc00]
    ld e, a
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


Jump_00f_4cce:
    ld a, [$cbc0]
    call Call_000_01a7
    ld b, $00
    ret


Jump_00f_4cd7:
    ld a, $10
    call Call_000_01a4
    ld [$cbc0], a
    ret


    ld a, [$deaf]
    and $01
    jr nz, jr_00f_4ced

    ld de, $4dc0
    call Call_000_015f

jr_00f_4ced:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld [$cbc1], a
    ld a, [$d0a1]
    or a
    jr nz, jr_00f_4d06

    ld a, [$d0a0]
    cp $10
    jr nc, jr_00f_4d06

    xor a
    ld [$cbc1], a

jr_00f_4d06:
    ld a, [$cbc0]
    call Call_000_019e
    ld l, $08
    call Call_00f_4d3a
    ld l, $18
    call Call_00f_4d3a
    ld l, $28
    call Call_00f_4d3a
    ld l, $38
    call Call_00f_4d3a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, [$d0a0]
    ld b, a
    ld a, [$d0a1]
    or b
    jp z, Jump_00f_4cce

    ld a, $01
    ld [$cc44], a
    ld b, a
    ret


Call_00f_4d3a:
    ld a, [$d0a2]
    add l
    and $3f
    add a
    add $c8
    ld e, a
    ld a, $00
    adc $4b
    ld d, a
    ld a, [de]
    ld b, a
    push de
    ld hl, $cbc2
    ld a, [$d722]
    add $50
    ld e, a
    ld d, $00
    call Call_00f_4d84
    pop de
    inc de
    ld a, [de]
    ld b, a
    ld hl, $cbc4
    ld a, [$d725]
    ld e, a
    ld d, $00
    call Call_00f_4d84
    ld a, [$cbc2]
    sub $50
    ldh [$ff9b], a
    ld a, [$cbc4]
    ldh [$ff9c], a
    ld a, [$cbc1]
    ld de, $4dc7
    call Call_000_0171
    ld c, e
    ld b, d
    jp Jump_00f_411c


Call_00f_4d84:
    push bc
    push hl
    push de
    ld a, b
    ld b, $00
    bit 7, a
    jr z, jr_00f_4d91

    dec b
    cpl
    inc a

jr_00f_4d91:
    ld c, a
    ld a, b
    push af
    ld b, $00
    ld a, [$d0a0]
    ld e, a
    ld a, [$d0a1]
    ld d, a
    call Call_000_0285
    ld b, h
    pop af
    or a
    jr z, jr_00f_4daf

    ld a, b
    cpl
    ld b, a
    ld a, l
    cpl
    inc a
    jr nz, jr_00f_4daf

    inc b

jr_00f_4daf:
    pop de
    pop hl
    ld c, $00
    bit 7, b
    jr z, jr_00f_4db8

    dec c

jr_00f_4db8:
    ld a, b
    add e
    ld [hl+], a
    ld a, c
    adc d
    ld [hl+], a
    pop bc
    ret


    rst $00
    ld c, l
    ld [bc], a
    nop
    ld bc, $ff02
    call $de4d
    ld c, l
    rst $28
    ld c, l
    ld hl, sp-$08
    ld h, e
    stop
    ld [$3063], sp
    ld [$63f8], sp
    ld d, b
    nop
    ld [$7063], sp
    add b
    ld hl, sp-$08
    ld h, h
    stop
    ld [$3064], sp
    ld [$64f8], sp
    ld d, b
    nop
    ld [$7064], sp
    add b
    ld hl, sp-$08
    ld h, l
    stop
    ld [$3065], sp
    ld [$65f8], sp
    ld d, b
    nop
    ld [$7065], sp
    add b

Call_00f_4e00:
jr_00f_4e00:
    ld de, $06d6

jr_00f_4e03:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_00f_4e03

    dec bc
    ld a, b
    or c
    jr nz, jr_00f_4e00

    ret


Call_00f_4e11:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00

jr_00f_4e18:
    di
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

jr_00f_4e22:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_00f_4e26:
    bit 0, d
    ld a, $10
    jr nz, jr_00f_4e2e

    ld a, $20

jr_00f_4e2e:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, jr_00f_4e26

    dec b
    jr nz, jr_00f_4e22

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    ret z

    call Call_00f_4e48
    jr jr_00f_4e18

Call_00f_4e48:
    ldh a, [rIE]
    bit 0, a
    jr z, jr_00f_4e6d

    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_00f_4e6d

    push hl
    push bc
    ld hl, $dfad
    ld a, [hl]
    push af
    ld [hl], $ff
    ei
    ld b, $04
    call Call_000_023a
    pop af
    ld [$dfad], a
    pop bc
    pop hl
    xor a
    ld d, a
    ld e, a
    ret


Call_00f_4e6d:
jr_00f_4e6d:
    ld de, $1b58

jr_00f_4e70:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_00f_4e70

    ret


Call_00f_4e79:
    ld hl, $4ede
    call Call_00f_4e11
    call Call_00f_4e6d
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_00f_4ec3

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_00f_4ec3

    ld hl, $4ece
    call Call_00f_4e11
    call Call_00f_4e6d
    sub a
    ret


jr_00f_4ec3:
    ld hl, $4ece
    call Call_00f_4e11
    call Call_00f_4e6d
    scf
    ret


    adc c
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
    adc c
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
    nop
    nop
    nop

Call_00f_4eee:
    di
    ld a, $ff
    ld [$dfad], a
    call Call_00f_4e11
    call Call_00f_4e48
    xor a
    ld [$dfad], a
    ei
    ret


Call_00f_4f00:
Jump_00f_4f00:
    push bc
    push de
    ld a, $c9
    ld [$c0f0], a
    call Call_000_01c5
    pop de
    pop bc
    ld a, $ff
    ld [$dfad], a
    ld hl, $c0f3
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    call Call_000_01c5
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$dfad], a
    ret


    di
    push de
    call Call_000_0270
    ld a, $e4
    ldh [rBGP], a
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_00f_4f3c:
    ld b, $14

jr_00f_4f3e:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_00f_4f3e

    add hl, de
    dec c
    jr nz, jr_00f_4f3c

    ld a, $81
    ldh [rLCDC], a
    ld bc, $0005
    call Call_00f_4e00
    pop hl
    call Call_00f_4eee
    ld bc, $0006
    call Call_00f_4e00
    ret


Call_00f_4f5c:
    ld hl, $9800
    ld a, $80
    ld c, $0d

jr_00f_4f63:
    ld b, $14

jr_00f_4f65:
    push af
    push hl
    push bc
    call Call_000_0189
    pop bc
    pop hl
    pop af
    inc hl
    inc a
    dec b
    jr nz, jr_00f_4f65

    ld de, $000c
    add hl, de
    dec c
    jr nz, jr_00f_4f63

    ret


jr_00f_4f7b:
    push bc
    ld bc, $0010
    call Call_000_0183
    push hl
    push de
    ld l, e
    ld h, d
    ld a, $ff
    ld bc, $0010
    call Call_000_0186
    pop de
    ld hl, $0010
    add hl, de
    ld e, l
    ld d, h
    pop hl
    pop bc
    push hl
    ld hl, $fff0
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld a, b
    or c
    jr nz, jr_00f_4f7b

    ret


jr_00f_4fa4:
    call Call_000_01c5
    call Call_000_01c8
    ld a, [$de92]
    or a
    jr z, jr_00f_4fa4

    ret


Jump_00f_4fb1:
    call Call_00f_4fce
    ret


    ld a, [hl]
    ld h, c

Jump_00f_4fb7:
    ld a, e
    or a
    jp z, Jump_00f_4fb1

    ld a, [$df83]
    or a
    ret z

    ld a, e
    dec a
    cp $01
    ret nc

    ld de, $4fb5
    call Call_000_0171
    push de
    ret


Call_00f_4fce:
    di
    call Call_00f_4e79
    ei
    jr c, jr_00f_4fd8

    xor a
    jr jr_00f_4fda

jr_00f_4fd8:
    ld a, $01

jr_00f_4fda:
    ld [$df83], a
    ret


    add b
    nop
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld bc, $010d
    ld c, $01
    rrca
    inc bc
    db $10
    inc bc
    ld de, $1200
    nop
    inc de
    nop
    inc d
    ld bc, $0115
    ld d, $02
    rla
    inc bc
    jr jr_00f_5013

    add hl, de
    nop
    ld a, [de]

jr_00f_5013:
    nop
    dec de
    ld [bc], a
    inc e
    ld bc, $021d
    ld e, $01
    rra
    ld bc, $0220
    ld hl, $2201
    ld bc, $0223
    inc h
    ld bc, $0125
    ld h, $03
    daa
    nop
    jr z, jr_00f_5030

jr_00f_5030:
    add hl, hl
    ld bc, $002a
    dec hl
    inc bc
    inc l
    nop
    dec l
    inc bc
    ld l, $00
    cpl
    nop
    jr nc, jr_00f_5042

    add b
    nop

jr_00f_5042:
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld bc, $0105
    ld b, $01
    rlca
    ld [bc], a
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    inc c
    inc bc
    dec c
    ld [bc], a
    ld c, $03
    rrca
    inc bc
    db $10
    ld bc, $0011
    ld [de], a
    ld bc, $0213
    inc d
    nop
    dec d
    inc bc
    ld d, $02
    rla
    nop
    jr jr_00f_5072

jr_00f_5072:
    add hl, de
    nop

Jump_00f_5074:
    ld a, [$df83]
    or a
    ret z

    push hl
    push de
    push bc
    ld a, d
    cp $f0
    jp nc, Jump_00f_50ea

    bit 7, d
    jr nz, jr_00f_50b0

    ld a, e
    cp $31
    jr nc, jr_00f_50df

    ld a, [$df8b]
    and $f0
    ld b, a
    ld a, d
    add a
    add a
    and $0c
    or b
    ld d, a
    push de
    call Call_00f_5122
    pop de
    ld hl, $4fde
    ld c, e
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$df89], a
    ld a, [hl+]
    or d
    ld [$df8b], a
    jr jr_00f_50dc

jr_00f_50b0:
    ld a, e
    cp $1a
    jr nc, jr_00f_50df

    ld a, [$df8b]
    and $0f
    ld b, a
    ld a, d
    rrc a
    rrc a
    and $c0
    or b
    ld d, a
    push de
    call Call_00f_5122
    pop de
    ld hl, $4fde
    ld c, e
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$df8a], a
    ld a, [hl+]
    swap a
    or d
    ld [$df8b], a

jr_00f_50dc:
    call Call_00f_50e3

Jump_00f_50df:
jr_00f_50df:
    pop bc
    pop de
    pop hl
    ret


Call_00f_50e3:
    ld hl, $df88
    call Call_00f_4eee
    ret


Jump_00f_50ea:
    ld a, d
    inc a
    jr z, jr_00f_5104

    inc a
    jr z, jr_00f_510c

jr_00f_50f1:
    jp Jump_00f_50df


    ld b, c
    add b
    add b
    ld [hl+], a
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

jr_00f_5104:
    ld hl, $50f4
    call Call_00f_4eee
    jr jr_00f_50f1

jr_00f_510c:
    ld a, [$df8b]
    push af
    call Call_00f_5122
    pop af
    or $0c
    ld [$df8b], a
    call Call_00f_50e3
    xor a
    ld [$df8b], a
    jr jr_00f_50f1

Call_00f_5122:
    ld hl, $df88
    ld [hl], $41
    inc hl
    ld bc, $000f
    xor a
    jp Jump_000_0174


    ld a, [$df83]
    or a
    jr nz, jr_00f_5138

    rst $08
    ld [hl+], a
    ret


jr_00f_5138:
    call Call_00f_50e3
    ret


    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld e, d
    ld l, e
    ld a, e
    ld l, a
    or l
    ld d, [hl]
    ld l, e
    dec l
    nop
    nop
    ld a, e
    ld l, a
    or l
    ld d, [hl]
    ld l, e
    dec l
    nop
    nop
    ld a, e
    ld l, a
    or l
    ld d, [hl]
    ld l, e
    dec l
    nop
    nop
    ld a, e
    ld l, a
    or l
    ld d, [hl]
    ld l, e
    dec l
    nop
    nop
    ld e, d
    ld l, e
    inc sp
    ld [hl], d
    dec b
    ld d, c
    nop
    nop
    ld e, d
    ld l, e
    ld d, b
    ld [de], a
    ld b, $11
    ld h, c
    ld [$6b5a], sp
    ld a, [$cc45]
    stop
    nop
    ld e, d
    ld l, e
    ld d, d
    ld a, e
    ld h, $2d
    nop
    nop
    ld e, d
    ld l, e
    db $fc
    inc a
    inc h
    dec d
    nop
    nop
    ld e, d
    ld l, e
    inc e
    ld d, e
    and [hl]
    ld l, l
    nop
    nop
    ld e, d
    ld l, e
    ld a, [de]
    ld de, $1149
    ld c, d
    inc c
    ld e, d
    ld l, e
    ld c, h
    ld h, [hl]
    ld h, [hl]
    ld b, l
    and d
    jr nc, jr_00f_5217

    ld l, e
    db $fc
    inc a
    inc h
    dec d
    nop
    nop
    ld e, d
    ld l, e
    inc e
    ld d, e
    and [hl]
    ld l, l
    nop
    nop
    ld e, d
    ld l, e
    ld a, [de]
    ld de, $1149
    ld c, d
    inc c
    ld e, d
    ld l, e
    ld c, h
    ld h, [hl]
    ld h, [hl]
    ld b, l
    and d
    jr nc, jr_00f_51dd

jr_00f_51dd:
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
    nop
    nop
    nop
    nop

jr_00f_5211:
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_5217:
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
    ld e, d
    ld l, e
    inc e
    ld d, e
    and [hl]
    ld l, l
    nop
    nop
    ld e, d
    ld l, e
    sub [hl]
    dec [hl]
    ld h, a
    dec d
    add d
    inc b
    ld e, d
    ld l, e
    ld c, [hl]
    ld e, d
    dec bc
    dec a
    ld b, d
    jr jr_00f_52af

    ld l, e
    ld c, d
    ld b, [hl]
    ld c, h
    add hl, de
    and e
    ld [$6b5a], sp
    adc [hl]
    ld [hl], d
    xor b
    ld c, c
    add c
    jr jr_00f_52bf

    ld l, e
    ld c, e
    ld d, [hl]
    ld b, h
    dec l
    add c
    ld [$6b5a], sp
    ld [hl], h
    ld l, $a8
    dec d
    ld h, d
    jr jr_00f_5211

    ld [hl], e
    call nc, $8a22
    add hl, bc
    and e
    nop
    sbc h
    ld [hl], e
    xor [hl]
    ld e, l
    dec c
    dec h
    ld b, e
    db $10
    ld e, d
    ld l, e
    inc [hl]
    ld l, $0b
    ld de, $0842
    ld e, d
    ld l, e
    ld l, [hl]
    ld a, [de]
    db $ed
    inc c
    ld b, d
    ld [$6b5a], sp
    di
    ld a, l
    and e
    dec d
    nop
    nop
    ld e, d
    ld l, e
    ld [hl], d
    ld [de], a
    ld c, c
    ld de, $0000
    ld e, d
    ld l, e
    ld d, d
    ld a, e
    ld h, $2d
    nop
    nop
    ld e, d
    ld l, e
    inc [hl]

jr_00f_52af:
    ld [hl], $2e
    ld hl, $0000
    ld e, d
    ld l, e
    inc l
    ld h, d
    db $10
    ld de, $10c2
    ld e, d
    ld l, e
    ld c, h

jr_00f_52bf:
    ld h, d
    inc c
    add hl, de
    nop
    nop
    ld e, d
    ld l, e
    inc c
    ld d, d
    call nz, Call_00f_4128
    ld [$6b5a], sp
    ld [hl], d
    ld [de], a
    ld c, c
    ld de, $0000
    ld e, d
    ld l, e
    inc c
    ld d, d
    dec l
    dec d
    ld b, c
    ld [$6b5a], sp
    add [hl]
    ld b, c
    inc c
    ld de, $0841
    ld e, d
    ld l, e
    inc d
    ld l, $68
    add hl, de
    add d
    inc b
    ld e, d
    ld l, e
    ld [hl], d
    ld [de], a
    ld c, c
    ld de, $0000
    ld e, d
    ld l, e
    sub b
    ld h, d
    ld b, $31
    ld h, d
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld l, e
    ld d, $22
    ld b, [hl]
    ld de, $0861
    ld e, d
    ld l, e
    dec l
    ld h, [hl]
    ld h, $51
    add d
    jr jr_00f_536f

    ld l, e
    ld l, [hl]
    ld a, [de]
    dec l
    dec c
    ld b, d
    ld [$6b5a], sp
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    inc [hl]
    ld [hl], $2e
    ld hl, $0842
    sbc h
    ld [hl], e
    pop de
    ld l, l
    ld b, e
    ld de, $0000
    sbc h
    ld [hl], e
    db $dd
    ld c, d
    ld l, d
    add hl, hl
    nop
    nop
    sbc h
    ld [hl], e
    ld [hl], d
    ld [de], a
    ld c, c
    ld de, $0000
    sbc h
    ld [hl], e
    rra
    nop
    ld l, [hl]
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
    ld e, d
    ld l, e
    rst $08
    ld l, d
    ld a, [bc]
    ld h, $c3
    inc b
    ld e, d
    ld l, e
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld e, c
    ld c, $f4
    inc b
    nop
    nop
    ld e, d
    ld l, e
    push de

jr_00f_536f:
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld c, [hl]
    ld [hl], d
    ld b, $59
    ld h, c
    inc h
    ld e, d
    ld l, e
    sub d
    ld h, $6a
    dec d
    ld b, c
    inc b
    ld e, d
    ld l, e
    call nc, Call_00f_4814
    db $10
    ld b, h
    inc b
    ld e, d
    ld l, e
    ld l, e
    ld b, d
    ld b, [hl]
    ld sp, $0861
    ld e, d
    ld l, e
    ld c, [hl]
    ld [hl], d
    ld b, $59
    ld h, c
    inc h
    ld e, d
    ld l, e
    sub d
    ld h, $6a
    dec d
    ld b, c
    inc b
    ld e, d
    ld l, e
    rrca
    ld a, [hl]
    db $ec
    stop
    ld b, b
    ld e, d
    ld l, e
    ld [hl], e
    ld c, [hl]
    ld c, d
    add hl, hl
    nop
    nop
    ld e, d
    ld l, e
    rst $18
    inc d
    ret nc

    inc h
    nop
    nop
    ld e, d
    ld l, e
    ld d, d
    ld a, e
    add $21
    nop
    nop
    sbc h
    ld [hl], e
    pop de
    ld l, l
    ld b, e
    ld de, $0000
    sbc h
    ld [hl], e
    sbc $14
    adc l
    inc c
    nop
    nop
    sbc h
    ld [hl], e
    ld [hl], d
    ld [de], a
    ld c, c
    ld de, $0000
    sbc h
    ld [hl], e
    sbc a
    db $10
    ld [hl], b
    inc c
    nop
    nop
    ld e, d
    ld l, e
    ld [hl], $1d
    adc $39
    ld b, d
    ld [$6b5a], sp
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld l, h
    ld h, [hl]
    inc b
    dec l
    ld b, c
    inc c
    ld e, d
    ld l, e
    ld d, $19
    call nz, Call_00f_4220
    ld [$6b5a], sp
    inc e
    ld d, e
    and [hl]
    ld l, l
    ld b, d
    ld [$6b5a], sp
    ld [hl], $19
    ld l, [hl]
    dec d
    ld b, d
    ld [$6b5a], sp
    inc a
    ld b, e
    dec l
    ld de, $0000
    ld e, d
    ld l, e
    sub h
    ld hl, $212e
    ld b, d
    ld [$6b5a], sp
    sub h
    ld hl, $212e
    ld b, d
    ld [$6b5a], sp
    ld hl, sp+$15
    ret


    add hl, de
    nop
    nop
    ld e, d
    ld l, e
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld h, a
    ld [hl], d
    ld l, e
    dec l
    nop
    nop
    ld e, d
    ld l, e
    jp c, $0c3a

    ld de, $0c41
    ld e, d
    ld l, e
    ld [hl-], a
    ld h, [hl]
    push hl
    ld b, h
    ld b, c
    inc c
    ld e, d
    ld l, e
    ld [hl], $3a
    ld c, a
    ld bc, $0c41
    ld e, d
    ld l, e
    ld l, h
    ld l, [hl]
    dec b
    ld c, l
    ld b, c
    inc d
    ld e, d
    ld l, e
    ld d, $1a
    adc a
    inc c
    inc h
    ld [$6b5a], sp
    ld d, c
    ld a, [hl]
    adc h
    ld [$0817], sp
    ld e, d
    ld l, e
    rst $18
    ld d, [hl]
    and e
    add hl, bc
    nop
    nop
    ld e, d
    ld l, e
    ld sp, $2946
    dec h
    ld b, d
    ld [$6b5a], sp
    ld [hl], d
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld c, [hl]
    ld l, d
    ld h, $51
    ld b, c
    db $10
    ld e, d
    ld l, e
    ld [$8411], sp
    nop
    nop
    nop
    ld e, d
    ld l, e
    ld e, c
    ld b, d
    ld c, b
    dec d
    add d
    inc b
    ld e, d
    ld l, e
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    bit 3, c
    ld c, b
    dec d
    add d
    inc b
    ld e, d
    ld l, e
    rst $18
    ld d, [hl]
    push bc
    ld a, b
    nop
    nop
    ld e, d
    ld l, e
    ld c, [hl]
    ld l, d
    ld h, $51
    ld b, c
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
    ld e, d
    ld l, e
    dec bc
    ccf
    and h
    add hl, de
    add c
    ld [$6b5a], sp
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld l, a
    ld l, [hl]
    ld h, $51
    add d
    jr jr_00f_554f

    ld l, e
    dec bc
    ld e, d
    xor b
    ld b, l
    ld h, l
    add hl, hl
    ld e, d
    ld l, e
    inc sp
    ld l, d
    ld b, $49
    ld b, c
    db $10
    ld e, d
    ld l, e
    push de
    ld e, $6a
    ld de, $0000
    ld e, d
    ld l, e
    ld a, [$cc45]
    stop
    nop
    or l
    dec a
    xor d
    dec d
    nop
    nop
    ld [hl], l
    ld d, $2e
    dec c
    nop
    nop
    ld hl, sp+$1d
    db $10
    dec c
    nop
    nop
    inc c
    ld c, e
    ld h, a
    dec a
    nop
    nop
    ld [hl], l
    ld c, $c7
    dec d
    nop
    nop
    ld d, h
    ld a, [de]
    inc c
    dec d
    nop
    nop
    di
    ld h, l
    db $eb
    ld c, h
    nop
    nop
    ld [hl], l
    ld l, $cf
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
    nop
    nop
    nop

jr_00f_554f:
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
    ld d, l
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    ld bc, $4055
    nop
    nop
    ld bc, $4055
    nop
    nop
    ld bc, $4055
    nop
    nop
    ld bc, $4055
    nop
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    ld [bc], a
    xor d
    add b
    nop
    nop
    ld [bc], a
    xor d
    add b
    nop
    nop
    ld [bc], a
    xor d
    add b
    nop
    nop
    ld a, [bc]
    xor d
    and b
    nop
    nop
    ld a, [bc]
    xor d
    and b
    nop
    nop
    ld a, [bc]
    xor d
    and b
    nop
    nop
    ld [bc], a
    xor d
    add b
    nop
    nop
    ld a, [bc]
    xor d
    and b
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    dec b
    ld d, h
    nop
    dec d
    ld d, b
    nop
    nop
    nop
    dec d
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
    nop
    nop
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
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $08
    ldh a, [rP1]
    ccf
    rst $38
    rst $08
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    ccf
    rst $38
    rst $08
    ldh a, [rP1]
    ccf
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld [bc], a
    add b
    jr z, jr_00f_57ed

jr_00f_57ed:
    inc a
    ld [bc], a
    add b
    jr z, jr_00f_57f2

jr_00f_57f2:
    nop
    nop
    nop
    nop
    nop
    inc bc
    ldh a, [rIF]
    nop
    nop
    inc bc
    ldh a, [rIF]
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
    dec d
    ld d, l
    ld d, l
    ld b, b
    ld d, l
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    rra
    rst $38
    rst $38
    ld b, b
    ld d, l
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    rra
    rst $38
    rst $38
    ld b, b
    ld d, l
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    rra
    rst $38
    rst $38
    ld b, b
    ld d, l
    rra
    rst $38
    rst $38
    ld b, b
    ld l, c
    dec d
    ld d, l
    ld d, l
    ld b, b
    ld l, c
    nop
    nop
    nop
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    rst $38
    nop
    nop
    nop
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    xor d
    xor d
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    rrca
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    nop
    nop
    nop
    nop
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
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
    nop
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

Jump_00f_5999:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld e, d
    xor d
    xor d
    xor d
    and l
    ld e, d
    xor d
    xor d
    xor d
    and l
    ld e, d
    xor d
    xor d
    xor d
    and l
    ld e, a
    rst $38
    rst $38
    rst $38
    push af
    ld e, d
    xor d
    xor d
    xor d
    and l
    ld e, d
    xor d
    xor d
    xor d
    and l
    ld e, d
    xor d
    xor d
    xor d
    and l
    ld e, a
    rst $38
    rst $38
    rst $38
    push af
    ld e, a
    rst $38
    rst $38
    rst $38
    push af
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
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
    nop
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d

Call_00f_5b01:
    xor d
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
    nop
    nop
    xor d
    xor d
    xor d
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    dec d
    ld d, l
    ld d, l
    ld d, l
    nop
    dec d
    ld d, l
    ld d, l
    ld d, l
    nop
    dec d
    ld d, l
    ld d, l
    ld d, l
    nop
    dec d
    ld d, l
    ld d, l
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
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    push de
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, a
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    and l
    ld d, l
    ld d, l
    xor d
    xor d
    xor c
    push de
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
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld d, l
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
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jp Jump_00f_5eec


    ld de, $0021
    call Call_00f_60ba
    ret


    ld de, $0022
    call Call_00f_60ba
    ret


    ld de, $0023
    call Call_00f_60ba
    ret


    ld de, $0024
    call Call_00f_60ba
    ret


    ld de, $0026
    call Call_00f_60ba
    ret


    ld de, $0027
    call Call_00f_60ba
    ret


    ld de, $0028
    call Call_00f_60ba
    ret


    ld de, $0029
    call Call_00f_60ba
    ret


    ld a, [$de8a]
    or a
    jr nz, jr_00f_5d47

    ld a, [$cccc]
    or a
    jr z, jr_00f_5d4c

jr_00f_5d47:
    call Call_00f_5f8d
    jr jr_00f_5d62

jr_00f_5d4c:
    ld hl, $5d54
    call Call_00f_60a2
    jr jr_00f_5d62

    ld e, d
    ld l, e
    ld [hl], d
    ld [de], a
    ld c, c
    ld de, $0000
    ld d, d
    ld a, e
    ld h, $2d
    nop
    nop

jr_00f_5d62:
    ld hl, $5d6a
    call Call_00f_608a
    jr jr_00f_5d78

    ld e, d
    ld l, e
    adc l
    ld a, $46
    ld b, c
    ld b, c
    db $10
    inc e
    ld d, e
    and [hl]
    ld l, l
    nop
    nop

jr_00f_5d78:
    ld a, $14
    call Call_00f_60a6
    ret


Jump_00f_5d7e:
    ld a, $01
    ld [$cccc], a
    ld hl, $5d8b
    call Call_00f_60a2
    jr jr_00f_5d99

    ld e, d
    ld l, e
    adc l
    ld a, $46
    ld b, c
    ld b, c
    db $10
    rst $38
    ld c, d
    ld h, [hl]
    ld a, l
    nop
    nop

jr_00f_5d99:
    ret


    ld de, $002a
    call Call_00f_60ba
    ret


    ld a, [$cccc]
    or a
    jr nz, jr_00f_5db2

    ld de, $002b
    call Call_00f_60c2
    ld [hl], $81
    jp Jump_00f_6083


jr_00f_5db2:
    ld a, $0d
    call Call_00f_60a6
    ret


    ld a, [$cccc]
    or a
    jp z, Jump_00f_5eec

    ld de, $002e
    call Call_00f_60ba
    ret


    ld a, [$de8a]
    cp $05
    jr nc, jr_00f_5dd4

    ld de, $002f
    call Call_00f_60ba
    ret


jr_00f_5dd4:
    cp $06
    jp z, Jump_00f_5e40

    ld a, [$cccc]
    or a
    jp nz, Jump_00f_5f81

    ld de, $0014
    ld a, $00
    call Call_00f_6149
    ret


    ld de, $0030
    call Call_00f_60ba
    ret


    ld de, $0031
    ld a, $8a
    call Call_00f_6149
    ret


    ld de, $0035
    call Call_00f_60c2
    ld [hl], $89
    jp Jump_00f_6083


    ld de, $0025
    call Call_00f_60ba
    ret


    ld de, $0039
    call Call_00f_60ba
    ret


    ret


    ld de, $003a
    ld a, $80
    call Call_00f_6149
    ret


    ld a, [$cccc]
    or a
    jr nz, jr_00f_5e25

    jp Jump_00f_5eec


jr_00f_5e25:
    ld de, $003b
    ld a, $91
    call Call_00f_6149
    ret


    ld a, [$de8a]
    or a
    jr nz, jr_00f_5e37

    jp Jump_00f_5eec


jr_00f_5e37:
    ld de, $003e
    ld a, $8e
    call Call_00f_6149
    ret


Jump_00f_5e40:
    ld de, $002f
    call Call_00f_60ba
    ret


    ret


    jp Jump_00f_5eec


Jump_00f_5e4b:
    ld de, $0043
    ld a, $82
    call Call_00f_6149
    ret


    ld de, $0045
    ld a, $82
    call Call_00f_6149
    ret


    ld de, $0058
    ld a, $81
    call Call_00f_6149
    ret


    ld de, $005a
    ld a, $80
    call Call_00f_6149
    ret


    ld de, $005c
    ld a, $92
    call Call_00f_6149
    ret


    ld de, $005e
    ld a, $82
    call Call_00f_6149
    ret


    ld de, $0060
    ld a, $93
    call Call_00f_6149
    ret


    ld de, $0064
    ld a, $83
    call Call_00f_6149
    ret


    ld de, $0068
    ld a, $82
    call Call_00f_6149
    ret


    ld de, $006c
    ld a, $95
    call Call_00f_6149
    ret


    ld de, $000c
    ld a, $86
    call Call_00f_6149
    ret


    ld de, $0010
    ld a, $87
    call Call_00f_6149
    ret


    ret


    ret


    ld de, $0070
    ld a, $80
    call Call_00f_6149
    ret


    ld de, $0074
    ld a, $82
    call Call_00f_6149
    ret


    ld de, $0076
    ld a, $84
    call Call_00f_6149
    ret


    ld de, $0078
    ld a, $82
    call Call_00f_6149
    ret


    ld de, $0004
    ld a, $00
    call Call_00f_6149
    ret


    ld a, $00
    call Call_00f_60a6
    ret


Jump_00f_5eec:
    ld de, $0004
    ld a, $80
    call Call_00f_6149
    ret


    ld de, $0047
    ld a, $88
    call Call_00f_6149
    ret


    ld de, $004b
    ld a, $8b
    call Call_00f_6149
    ret


    ld de, $004d
    ld a, $8c
    call Call_00f_6149
    ret


    ld de, $0051
    ld a, $00
    call Call_00f_6149
    ret


    ld de, $0008
    ld a, $8f
    call Call_00f_614f
    ld b, $0f
    ld de, $5f29
    jp Jump_00f_4f00


    ld a, $c9
    ld [$c0f0], a
    jp Jump_00f_6083


Jump_00f_5f31:
    ld b, $0f
    ld de, $5f39
    jp Jump_00f_4f00


    ld a, $c9
    ld [$c0f0], a
    jp Jump_00f_5eec


    call Call_00f_6079
    ld a, $09
    ld [$dfaf], a
    ld hl, $550c
    ld de, $dfb0
    ld bc, $0008
    call Call_000_0180
    ld a, [$df0a]
    dec a
    and $07
    add a
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $5514
    add hl, bc
    ld de, $dfb8
    ld bc, $0006
    call Call_000_0180
    call Call_00f_6083
    ld a, $10
    call Call_00f_60a6
    ret


    ld de, $0055
    ld a, $82
    call Call_00f_6149
    ret


Jump_00f_5f81:
    ld a, $01
    ld [$cccc], a
    ld de, $0057
    call Call_00f_60ba
    ret


Call_00f_5f8d:
    jp Jump_00f_5d7e


    call Call_00f_6079
    ld a, [$dff0]
    ld [$dfb0], a
    ld a, $b9
    ld [$dfaf], a
    jp Jump_00f_6083


    ld a, [$dff0]
    jp Jump_00f_60a6


    jp Jump_00f_5f31


    ld a, [$dff0]
    ld e, a
    ld d, $00
    ld a, $00
    jp Jump_00f_6149


    ld de, $0014
    ld a, $00
    call Call_00f_6149
    ret


    ld a, [$df80]
    cp $ff
    jp nz, Jump_00f_5eec

    ld de, $0014
    ld a, $80
    call Call_00f_6149
    ret


    jp Jump_00f_5e4b


    nop
    ld e, l
    inc bc
    ld e, l
    ld a, [bc]
    ld e, l
    ld de, $185d
    ld e, l
    rra
    ld e, l
    ld h, $5d
    dec l
    ld e, l
    inc [hl]
    ld e, l
    dec sp
    ld e, l
    sbc d
    ld e, l
    and c
    ld e, l
    cp b
    ld e, l
    add $5d
    jp hl


    ld e, l
    ldh a, [$ff5d]
    ld sp, hl
    ld e, l
    inc b
    ld e, [hl]
    dec bc
    ld e, [hl]
    ld [de], a
    ld e, [hl]
    inc de
    ld e, [hl]
    inc e
    ld e, [hl]
    ld l, $5e
    ld b, b
    ld e, [hl]
    ld b, a
    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld a, b
    ld e, [hl]
    add c
    ld e, [hl]
    adc d
    ld e, [hl]
    sub e
    ld e, [hl]
    sbc h
    ld e, [hl]
    and l
    ld e, [hl]
    xor [hl]
    ld e, [hl]
    or a
    ld e, [hl]
    cp b
    ld e, [hl]
    cp c
    ld e, [hl]
    jp nz, $cb5e

    ld e, [hl]
    call nc, $9f5e
    ld h, d
    db $dd
    ld e, [hl]
    and $5e
    db $ec
    ld e, [hl]
    push af
    ld e, [hl]
    cp $5e
    rlca
    ld e, a
    db $10
    ld e, a
    add hl, de
    ld e, a
    ld b, c
    ld e, a
    ld a, b
    ld e, a
    add c
    ld e, a
    adc l
    ld e, a
    sub b
    ld e, a
    and c
    ld e, a
    and a
    ld e, a
    xor d
    ld e, a
    or l
    ld e, a
    cp [hl]
    ld e, a
    rst $08
    ld e, a

Jump_00f_6050:
    ld a, [$df0a]

Jump_00f_6053:
    ld [$dfae], a
    ld a, [$df83]
    or a
    ret z

    ld a, d
    ld [$dff0], a
    ld a, [$dfae]
    cp $3f
    ret nc

    ld hl, $5fd2
    call Call_000_016e
    ld a, h
    and l
    cp $ff
    ret z

    ld a, h
    or l
    jr nz, jr_00f_6077

    ld hl, $5d00

jr_00f_6077:
    push hl
    ret


Call_00f_6079:
    ld hl, $dfaf
    ld bc, $0010
    xor a
    jp Jump_000_0174


Call_00f_6083:
Jump_00f_6083:
    ld hl, $dfaf
    call Call_00f_4eee
    ret


Call_00f_608a:
    ld a, $01

jr_00f_608c:
    push hl
    push af
    call Call_00f_6079
    pop af
    pop hl
    ld [$dfaf], a
    ld de, $dfb0
    ld bc, $000e
    call Call_000_0180
    jp Jump_00f_6083


Call_00f_60a2:
    ld a, $09
    jr jr_00f_608c

Call_00f_60a6:
Jump_00f_60a6:
    call Call_00f_60ac
    jp Jump_00f_6083


Call_00f_60ac:
    push af
    call Call_00f_6079
    pop af
    ld [$dfb0], a
    ld a, $b1
    ld [$dfaf], a
    ret


Call_00f_60ba:
    call Call_00f_60c2
    ld [hl], $81
    jp Jump_00f_6083


Call_00f_60c2:
    push de
    call Call_00f_6079
    pop de
    ld hl, $dfaf
    ld [hl], $51
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $20
    inc hl
    ld [hl], $00
    inc hl
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ret


Call_00f_60e2:
    ld hl, $5544
    ld de, $8800
    ld bc, $07bc
    call Call_000_0183
    call Call_00f_4f5c
    ld b, $0f
    ld de, $60fa
    call Call_00f_4f00
    ret


    ld a, $c9
    ld [$c0f0], a
    ld hl, $6106
    call Call_00f_4eee
    ret


    xor c
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

Call_00f_6116:
    ld hl, $513c
    ld de, $8800
    ld bc, $03d0
    call Call_000_0183
    call Call_00f_4f5c
    ld b, $0f
    ld de, $612d
    jp Jump_00f_4f00


    ld a, $c9
    ld [$c0f0], a
    ld hl, $6139
    call Call_00f_4eee
    ret


    ld e, c
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

Call_00f_6149:
Jump_00f_6149:
    call Call_00f_614f
    jp Jump_00f_6083


Call_00f_614f:
    push af

jr_00f_6150:
    push de
    call Call_00f_6079
    pop de
    ld hl, $dfaf
    ld [hl], $51
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl], a
    ret


jr_00f_6171:
    call Call_000_01c5
    call Call_000_01c8
    ld a, [$de92]
    or a
    ret nz

    jr jr_00f_6171

    ld d, $01
    rst $28
    jr c, jr_00f_6150

    pop de
    ld bc, $eaaf
    pop de
    rst $10
    ld [$d7d2], a
    ld a, $e4
    ld [$de96], a
    call Call_000_01c5
    call Call_00f_61ee
    call Call_00f_62a0
    call Call_00f_60e2
    call Call_00f_6116
    ld hl, $8000
    ld bc, $2000
    xor a
    call Call_000_0186
    ld b, $5a
    call Call_000_023a
    rst $28
    ld l, $16
    nop
    rst $28
    jr c, @-$35

    ld a, $c9
    ld [$c0f0], a
    ld hl, $61ce
    call Call_00f_4eee
    ret


    ld a, $c9
    ld [$c0f0], a
    ld hl, $61de
    call Call_00f_4eee
    ret


    sbc c
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
    and c
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

Call_00f_61ee:
    ld hl, $621f
    call Call_00f_4eee
    ld hl, $622f
    call Call_00f_4eee
    ld hl, $623f
    call Call_00f_4eee
    ld hl, $624f
    call Call_00f_4eee
    ld hl, $625f
    call Call_00f_4eee
    ld hl, $626f
    call Call_00f_4eee
    ld hl, $627f
    call Call_00f_4eee
    ld hl, $628f
    call Call_00f_4eee
    ret


    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call $0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_00f_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_00f_79c9

    ld b, a
    ld [$0b00], sp
    call nz, Call_000_16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, jr_00f_62e9

    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$ff79], a
    ld e, l
    ld [$0400], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$c9ea], a

Call_00f_62a0:
    ld hl, $62d2
    ld de, $8800
    ld bc, $0e00
    call Call_000_0183
    call Call_00f_4f5c
    ld b, $0f
    ld de, $61b6
    call Call_00f_4f00
    call Call_00f_4e48
    ld hl, $70d2
    ld de, $8800
    ld bc, $0860
    call Call_000_0183
    call Call_00f_4f5c
    ld b, $0f
    ld de, $61c2
    call Call_00f_4f00
    ret


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

jr_00f_62e9:
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
    db $fd
    db $fd
    pop af
    pop af
    pop hl
    pop hl
    pop bc
    pop bc
    add c
    add c
    ld bc, $0101
    ld bc, $00fe
    cp $00
    or $08
    xor $10
    sbc $20
    cp [hl]
    ld b, b
    ld a, [hl]
    add b
    cp $00
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra

jr_00f_6318:
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_00f_6318

    db $10
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    cp $01
    add c
    add c
    ld b, c
    pop bc
    ld bc, $01e1
    pop af
    add hl, bc
    pop af
    dec b
    ld sp, hl
    ld bc, $01fd
    rst $38
    cp $00
    ld a, [hl]
    nop
    ld a, $00
    ld e, $00
    ld c, $00
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld bc, $0007
    ld a, [de]
    ld b, $34
    inc c
    ld h, h
    inc e
    call z, $c83c
    jr c, @-$4e

    ret z

    cp $ff
    ld hl, sp-$08
    rst $20
    ldh [$ffcf], a
    ret nz

    cp [hl]
    add c
    ld a, $01
    ld a, b
    rlca
    ld c, b
    add a
    add c
    ld bc, $01f1
    db $dd
    pop hl
    ld h, a
    ld a, c
    inc sp
    inc a
    add hl, sp
    ld a, $09
    ld c, $07
    ld [$fffe], sp
    ld c, $0f
    ldh a, [c]
    inc bc
    db $fc
    ld bc, $c03e
    ld a, $c0
    rrca
    ldh a, [$ff09]
    ldh a, [rSC]
    inc bc
    inc b
    rlca
    nop
    rrca
    nop
    rra
    jr nz, jr_00f_63bb

    ld b, b
    ccf
    nop
    ld a, a
    nop
    rst $38
    cp $00
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
    inc bc
    ld bc, $001f
    scf
    rrca
    ld a, b
    jr jr_00f_642c

jr_00f_63bb:
    ld sp, $73a3
    ret nz

    ld b, b
    ret nz

    ld b, b
    cp $ff
    ldh [$ffe0], a
    rst $08
    ret nz

    cp a
    add b
    or c
    adc [hl]
    ld h, e
    inc c
    ld b, b
    ccf
    ret nz

    ccf
    add c
    ld bc, $01f1
    dec e
    pop hl
    ld b, a
    ld a, c
    db $e3
    db $fc
    pop hl
    cp $f1
    adc $fe
    pop bc
    cp $ff
    ld c, $0f
    ldh a, [c]
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $08
    nop
    jp $8000


    nop
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ld a, a
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $28
    ld d, c
    rst $38
    xor a
    rst $30
    db $fd
    rst $28
    ld sp, hl
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    rra
    rra
    jr nz, @+$41

    ld b, b

jr_00f_642c:
    ld a, b
    add a
    ld [hl], b
    adc l
    ld [hl], b
    adc c
    nop
    nop
    nop
    rst $38
    add e
    rst $38
    jp $e37f


    rst $38
    and l
    rst $38
    ld b, a
    rst $38
    adc a
    ei
    rst $38
    nop
    nop
    nop
    nop
    add e
    add c
    ld b, d
    pop bc
    ld [hl+], a
    jp $8224


    ld b, l
    ld b, $89
    nop
    nop
    nop
    rst $38
    rst $20
    rst $38
    and l
    rst $38
    rst $20
    rst $38
    di
    rst $18
    db $d3
    ld a, a
    db $d3
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $20
    jp $c124


    ld h, $e1
    ld [de], a
    pop hl
    ld [de], a
    ld h, c
    sub d
    nop
    nop
    nop
    rst $38
    ld hl, sp-$01
    db $ec
    rst $30
    ei
    rst $38
    cp $ef
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc b
    db $fc
    inc bc
    sbc l
    ld h, d
    sbc l
    ld h, d
    cp c
    ld b, [hl]
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    rst $38
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    ld hl, sp-$11
    cp b
    rst $28
    db $fc
    or a
    ld e, a
    ei
    scf
    rst $28
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld a, b
    add h
    inc a
    ld b, e
    rra
    jr nz, jr_00f_64cd

jr_00f_64cd:
    rra
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    ld l, a
    rst $38
    or a
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
    ld b, $09
    rlca
    ld l, b
    ld c, h
    or e
    call z, $de33
    ld hl, $ff00
    nop
    nop
    nop
    nop
    ei
    rst $28
    db $eb
    rst $38
    ei
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
    ld [hl], c
    adc d
    pop af
    ld a, [bc]
    ld sp, $31ca
    adc $7b
    add h
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    ldh a, [c]
    rst $38
    db $e3
    cp $c1
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    rst $38
    nop
    pop af
    ld c, $c1
    ld [hl-], a
    add c
    ld h, d
    add b
    ld b, c
    ret nz

    jr nz, jr_00f_652d

jr_00f_652d:
    ldh [rP1], a
    nop
    nop
    nop
    ret nc

    rst $08
    rst $08
    or b
    rra
    ld h, b
    cp b
    ld b, a
    ld [hl], b
    adc b
    ld h, b
    sub e
    ld h, c
    sub [hl]
    ld h, e
    sub h
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $20
    nop
    rst $08
    rlca
    sbc b
    inc c
    or e
    ld [$08b7], sp
    or [hl]
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld [$08b6], sp
    or [hl]
    ld [$08b6], sp
    or [hl]
    ld [$08b6], sp
    or [hl]
    ld [$08b6], sp
    or [hl]
    nop
    nop
    nop
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    cp l
    ld b, a
    rst $38
    cp [hl]
    rst $18
    db $fd
    cp a
    rst $38
    cp a
    rst $38
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    nop
    db $e3
    inc e
    jp nz, $c03d

    ccf
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $28
    ld sp, hl
    rst $38
    rst $28
    cp a
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rra
    rra
    jr nz, jr_00f_660a

    ret nz

    ld [hl], b
    adc a
    ld h, b
    sbc a

jr_00f_65d0:
    ld h, b
    sbc a
    nop
    nop

jr_00f_65d4:
    nop
    rst $38
    sbc a
    rst $38
    db $dd
    ld a, a
    xor $ff
    ld a, a
    rst $18
    rst $38
    rst $38
    cp a
    cp $ff
    nop
    nop
    nop
    nop
    sbc a
    adc [hl]
    ld d, c
    rst $00
    jr z, jr_00f_65d4

    jr jr_00f_6656

    sbc b
    ld h, l
    sbc d
    nop
    nop
    nop
    rst $38
    ld a, $ff
    xor $ff
    call c, $3cff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $18
    rst $38
    nop
    nop
    nop
    nop
    ld a, $1c
    ldh [c], a

jr_00f_660a:
    jr c, jr_00f_65d0

    ld hl, sp+$04
    ld hl, sp+$04
    add sp, $14
    ld bc, $0100
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    nop
    nop
    rst $38
    cp a
    rst $38
    cp a
    cp $df
    ld a, a
    rst $28
    rst $18
    cp a
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

    ccf
    ret nz

    ccf
    pop hl
    ld e, $f3
    inc c
    ld a, a
    add b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    rst $38

jr_00f_6656:
    rst $28
    cp a
    ld sp, hl
    rst $38
    cp a
    rst $28
    sbc a
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ccf
    ret nz

    rra
    and b
    nop
    sbc a
    nop
    nop
    nop
    nop
    cp a
    or $f7
    rst $38
    ld a, a
    rst $18
    rst $38
    rst $38
    db $fd
    ld a, a
    cp a
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld l, l
    sub d
    ld l, h
    sub e
    db $ec
    inc de
    call z, $9e33
    ld h, c
    nop
    cp a
    nop
    nop
    nop
    nop
    cp $db
    ld a, [$feff]
    rst $38
    cp $ff
    cpl
    rst $38
    ccf
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $ec
    ld [de], a
    call z, $cc32
    ld [hl-], a
    inc c
    ldh a, [c]
    ld e, $21
    nop
    ccf
    nop
    nop
    nop
    nop
    ld bc, $01fe
    cp $01
    cp $01
    cp $01

jr_00f_66bb:
    cp $01
    cp $01
    cp $ff
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
    dec bc
    di
    di
    dec c
    ld hl, sp+$06
    dec e
    ldh [c], a
    ld c, $11
    ld b, $c9
    add [hl]
    ld l, c
    add $29
    nop
    rst $38
    nop
    rrca
    nop
    rst $20
    nop
    di
    ldh [rNR24], a
    jr nc, jr_00f_66bb

    db $10
    db $ed
    db $10
    ld l, l
    add $29
    add $29
    add $29
    add $29
    add $29
    add $29
    add $29
    add $29
    db $10
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, l
    ld h, e
    sub h
    ld h, c
    sub [hl]
    ld h, b
    sub e
    ld [hl], b
    adc b
    cp b
    ld b, a
    rra
    ld h, b
    rst $08
    or b
    ret nc

    rst $08
    ld [$08b6], sp
    or a
    inc c
    or e
    rlca
    sbc b
    nop
    rst $08
    nop
    rst $20
    nop
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38

jr_00f_6735:
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    add $29
    add [hl]
    ld l, c
    ld b, $c9
    ld c, $11
    dec e
    ldh [c], a
    ld hl, sp+$06
    di
    dec c
    dec bc
    di
    db $10
    ld l, l
    db $10
    db $ed
    jr nc, jr_00f_6735

    ldh [rNR24], a
    nop
    di
    nop
    rst $20
    nop
    rrca
    nop
    rst $38
    nop
    nop
    add b
    add b
    ldh [$ffc0], a
    ldh a, [$ffe0]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    db $fc
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0302
    ld c, $07
    ld e, $0f
    ld a, $1f
    ld a, [hl]
    ccf
    cp $7f
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    add b
    ld a, a
    ret nz

    ccf
    ldh [$ff1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ldh a, [$ffe0]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    nop
    rst $38
    add c
    ld bc, $81c1
    pop hl
    pop bc
    pop af
    pop hl
    ld sp, hl
    pop af
    db $fd
    ld sp, hl
    db $fd
    rst $38
    cp $ff
    cp $80
    ld a, [hl]
    ret nz

    ld a, $e0
    ld e, $f0
    ld c, $f8
    ld b, $fc
    ld [bc], a
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $feff
    db $fd
    db $fc
    ei
    ldh a, [$fff7]
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    nop
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    rra
    rst $18
    rrca
    rst $28
    rlca
    rst $30
    inc bc
    ei
    ld bc, $00fd
    cp $80
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $feff
    db $fd
    ld hl, sp-$05
    ldh a, [$fff7]
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    nop
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    ccf
    cp a
    rra
    rst $18
    rrca
    rst $28
    rlca
    rst $30
    inc bc
    ei
    ld bc, $00fd
    cp $ff
    add b
    ld a, a
    ret nz

    ccf
    ldh [$ff1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    db $fc
    db $fd
    ld hl, sp-$05
    ldh a, [$fff7]
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    ld a, a
    ld a, $bf
    ld e, $df
    ld c, $ef
    ld b, $f7
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0101
    add c
    ld bc, $01c1
    pop hl
    ld bc, $01f1
    ld sp, hl
    ld bc, $00fd
    rst $38
    cp $80
    ld a, [hl]
    ret nz

    ld a, $e0
    ld e, $f0
    ld c, $f8
    ld b, $fc
    ld [bc], a
    cp $00
    rst $38
    cp $ff
    db $fc
    db $fd
    cp $fb
    cp $f7
    cp $ef
    cp $df
    cp $bf
    cp $7f
    cp $01
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    cp $fc
    db $fd
    ld hl, sp-$05
    ldh a, [$fff7]
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    nop
    ld a, a
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld a, a
    cp a
    rra
    rst $18
    rrca
    rst $28
    rlca
    rst $30
    inc bc
    ei
    ld bc, $00fd
    cp $00
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
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
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    ld bc, $0300

jr_00f_6a78:
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    rst $38
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [$ff3f], a
    ret nz

    ld a, a
    nop
    rst $38
    ld a, $bf
    ld e, $df
    ld c, $ef
    ld b, $f7
    ld [bc], a
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    jr nz, jr_00f_6a78

    db $10
    ldh [$ff08], a
    ld [hl], b
    inc b
    jr c, @+$04

    inc e
    ld bc, $ff0e
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    adc a
    rrca
    rst $00
    rlca
    db $e3
    inc bc
    pop af
    ld bc, $0100
    nop
    inc bc
    ld [$1107], sp
    rrca
    ld hl, $411d
    add hl, sp
    add c
    ld [hl], c
    ld bc, $fee1
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [c], a
    ldh [$ffc6], a
    ret nz

    adc [hl]
    add b
    ld e, $00
    nop
    rlca
    inc b
    rlca
    nop
    rrca
    nop
    rra
    jr nz, jr_00f_6b1b

    ld b, b
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld hl, sp+$00
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
    nop
    nop
    nop
    add b
    jr nz, @-$3e

    db $10
    ldh [$ff08], a

jr_00f_6b1b:
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
    ld bc, $fffe
    rst $38
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
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0300
    ld [$1007], sp
    rrca
    jr nz, jr_00f_6b5b

    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld bc, $41c1
    pop bc
    ld bc, $01e1
    pop af
    add hl, bc

jr_00f_6b5b:
    pop af
    dec b
    ld sp, hl
    ld bc, $01fd
    rst $38
    ld a, $00
    ld a, [hl]
    nop
    ld a, $00
    ld e, $00
    ld c, $00
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    ld hl, sp-$01
    db $fc
    rst $38
    ldh a, [$fff1]
    pop hl
    pop hl
    pop bc
    pop bc
    add c
    add c
    ld bc, $0101
    ld bc, $00f8
    db $fc
    nop
    or $08
    xor $10
    sbc $20
    cp [hl]
    ld b, b
    ld a, [hl]
    add b
    cp $00
    rst $38
    ld a, a
    ld a, a
    cp a
    rra
    rst $18
    rrca
    rst $28
    rlca
    ld [hl], a
    inc bc
    dec sp
    ld bc, $001d
    ld c, $80
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_00f_6be7

    db $10
    rra
    adc b
    rrca
    call nz, $e207
    inc bc
    pop af
    ld bc, $fdfe
    db $fc
    ei
    ldh a, [$fff7]
    pop hl
    rst $28
    pop bc
    db $dd
    add c
    cp c
    ld bc, $0171
    pop hl
    ld [bc], a
    cp $04
    db $fc
    ld [$10f8], sp
    ldh a, [rNR43]
    ldh [rDMA], a
    ret nz

    adc [hl]
    add b
    ld e, $00
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rra

jr_00f_6bd8:
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    ccf
    nop
    ld a, a
    nop
    rst $18

jr_00f_6be7:
    jr nz, jr_00f_6bd8

    db $10
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    cp $01
    ld a, [hl]
    ld a, a
    ld a, $bf
    ld e, $df
    ld c, $ef
    ld b, $f7
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    ld a, a
    jr nz, @+$41

    db $10
    rra
    ld [$040f], sp
    rlca
    nop
    inc bc
    nop
    ld bc, $fdfc
    ld hl, sp-$05
    ldh a, [$fff7]
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    nop
    add b
    nop
    nop
    db $fc
    db $fd
    ld hl, sp-$05
    ldh a, [$fff7]
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
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
    nop
    ld a, [hl]
    ld a, a
    ld a, $bf
    ld e, $df
    ld c, $ef
    ld b, $f7
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
    ld bc, $0207
    rlca
    inc b
    rrca
    add hl, bc
    rra
    dec de
    ld a, [hl-]
    scf
    ld a, h
    ld [hl], h
    db $fc
    db $f4
    cp $ff
    db $fc
    cp $f8
    db $fc
    di
    ld hl, sp-$1d
    ld hl, sp-$3a
    ldh a, [$ff84]
    di
    inc c
    di
    add c
    ld bc, $00ff
    ld [hl], c
    cp $84
    add a
    ld e, $1f
    ld a, $3f
    rrca
    inc c
    rrca
    inc c
    cp $ff
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$ff3f], a
    ret nz

    inc c
    ldh a, [$ff0c]
    ldh a, [$ff03]
    ld bc, $0307
    rst $00
    rlca
    ld l, a
    adc a
    ccf
    rst $08
    rra
    rst $28
    rra
    rst $28
    rst $28
    rra
    cp $ff
    db $fc
    rst $38
    jr c, @+$41

    ret nc

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    jr nc, @+$11

    inc bc
    ld bc, $0307
    rlca
    inc b
    ld c, $09
    inc e
    inc de
    add hl, sp
    scf
    ld a, c
    ld [hl], a
    cp $f1
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$04
    di
    ld hl, sp-$19
    ldh a, [$ffc7]
    ldh a, [$ff8f]
    ldh a, [$ff09]
    ldh a, [$ff81]
    ld bc, $01ff
    xor e
    ld l, h
    ld b, [hl]
    rst $00
    add [hl]
    add a
    add a
    add a
    ld bc, $0001
    ld bc, $fffe
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $00
    jr c, @-$37

    jr c, @+$03

    cp $01
    cp $03
    ld bc, $0307
    add a
    rlca
    rst $08
    rrca
    ld a, a
    sbc a
    ccf
    rst $18
    ccf
    rst $08
    rst $38
    rrca
    cp $ff
    db $fc
    rst $38
    ld a, b
    ld a, a
    or b
    ccf
    ret nz

    rra
    ret nz

    rra
    ldh [rIF], a
    jr nz, jr_00f_6d61

    ldh a, [c]
    ld a, [bc]
    ld a, b
    ld [$0737], sp
    ccf
    db $10
    inc e
    inc hl
    dec sp
    inc b
    rla
    inc c
    inc de

jr_00f_6d61:
    ld [$e1ee], sp
    xor $e1
    rst $38
    ldh [$ffdc], a
    ret nz

    ldh [$ffc0], a
    ret nz

    ret nz

    ldh [$ffe0], a
    db $e4
    ldh [$ff3f], a
    inc a
    ld a, $3f
    rst $38
    rst $38
    cp $01
    inc bc
    db $fc
    ld sp, hl
    sbc [hl]
    ld h, e
    ld [bc], a
    ld h, c
    nop
    inc a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    sbc h
    nop
    sbc [hl]
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld l, a
    ldh a, [$fff7]
    jr jr_00f_6dd8

    call nz, $e05f
    sbc c
    ld h, b
    dec bc
    inc bc
    jp $f103


    ld bc, $01f9
    inc e
    nop

jr_00f_6dac:
    and $00
    pop af
    ld bc, $07e7
    cp $01
    ld a, [hl]
    ld bc, $033d
    ld [hl], $0f
    cpl
    jr jr_00f_6e0b

    ld sp, $265a
    ld a, b
    inc d
    pop hl
    ldh [$ffc1], a
    ret nz

    rst $00
    ret nz

    rst $18
    ret nz

    db $fc
    ret nz

    or b
    add b
    and c
    add b
    sub e
    add b
    add [hl]
    add a
    add [hl]
    add a
    rst $08
    rst $08

jr_00f_6dd8:
    ld a, h
    add e
    rst $30
    ld [$c97e], sp
    ld [hl], $00
    nop
    nop
    rst $00
    jr c, jr_00f_6dac

    jr c, @+$01

    nop
    rst $00
    nop
    nop
    nop
    nop
    nop
    ret


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$ffef], a
    jr nc, jr_00f_6e64

    sbc b
    or a
    ret z

    dec a
    ld d, b
    rrca
    rrca
    rrca
    rrca
    rst $00
    rlca
    rst $30
    rlca
    ld a, e

jr_00f_6e0b:
    inc bc
    dec de
    inc bc
    dec bc
    inc bc
    sub e
    inc bc
    jr jr_00f_6e14

jr_00f_6e14:
    jr c, jr_00f_6e1a

    ld a, l
    inc sp
    ld a, a
    ld [hl], b

jr_00f_6e1a:
    ld a, a
    jr c, @+$35

    inc c
    ld a, l
    ld [hl], d
    rst $38
    db $fc
    rst $30
    ldh [$ffc3], a
    ret nz

    or b
    add b
    ld hl, sp-$80
    cp h
    add b
    adc $c0
    add e
    ldh a, [rP1]
    db $fc
    inc bc
    ld [bc], a
    add a
    add h
    rst $38
    ld a, b
    db $fc
    inc bc
    ei
    add a
    ld a, h
    add h
    db $fd
    dec [hl]
    rst $38
    ldh a, [$fffc]
    nop
    ld a, b
    nop
    nop
    nop
    inc bc
    nop
    add a
    nop
    add a
    nop
    rlca
    jr nc, jr_00f_6e51

jr_00f_6e51:
    ldh a, [$fffb]
    ld bc, $03f7
    ld [hl], a
    add a
    rst $18
    rst $20
    ld l, a
    ld [hl], e
    rst $08
    di
    sbc a
    db $e3
    rst $38
    inc bc
    ld b, $07

jr_00f_6e64:
    inc c
    rrca
    add sp, $0f
    ldh a, [rTAC]
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    nop
    inc bc
    jr z, @+$16

    inc e
    ld [bc], a
    rra
    nop
    ld [hl], $0f
    ld l, c
    add hl, de
    ld l, c
    add hl, de
    ret nc

    jr nc, @+$01

    nop
    di
    ret nz

    pop hl
    ldh [$ffee], a
    ldh [$ffdf], a
    ret nz

    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    nop
    nop
    ld [$1c08], sp
    inc d
    rst $38
    ldh [c], a
    rst $30
    ld [$897e], sp
    ld a, l
    add e
    cp a
    jp $10ff


    rst $30
    nop
    db $e3
    nop
    nop
    nop
    add hl, bc
    nop
    adc e
    nop
    add e
    nop
    rst $00
    nop
    nop
    db $10
    dec hl
    ld d, c
    ld [hl], a
    add e
    rst $30
    rlca
    ld e, a
    rst $20
    xor a
    or e
    xor a
    or e
    rla
    add hl, de
    rst $38
    ld bc, $079e
    inc c
    rrca
    add sp, $0f
    ldh a, [rTAC]
    ld hl, sp+$03
    ld hl, sp+$03
    db $fc
    ld bc, $0100
    add c
    ld bc, $81c1
    pop bc
    ret nz

    db $e3
    ldh [$fff6], a
    pop af
    db $fc
    di
    db $fc
    di
    ei
    db $fc
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $fe
    inc e
    db $fc
    dec bc
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh a, [rDIV]
    ld hl, sp+$03
    ld bc, $007f
    xor l
    ld l, [hl]
    ld b, [hl]
    rst $00
    ld b, e
    jp $c3c3


    add b
    add b
    nop
    add b
    cp $ff
    add b
    add b
    ld a, a
    nop
    rst $38
    nop
    db $e3
    inc e
    db $e3
    inc e
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld bc, $81c1
    pop bc
    ld bc, $8161
    ld sp, $99c1
    jp hl


    sbc l
    db $ed
    ld a, a
    adc a
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $3f
    sbc $1f
    xor $0f
    and $0f
    ldh a, [c]
    rrca
    sub b
    rrca
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    rlca
    rst $30
    inc c
    and $19
    xor l
    inc de
    inc a
    ld a, [bc]
    ldh a, [$fff0]
    ldh [$ffe0], a
    db $e3
    ldh [$ffef], a
    ldh [$fffe], a
    ldh [$ffd8], a
    ret nz

    ret nc

    ret nz

    ret


    ret nz

    ld b, e
    jp $c343


    rst $20
    rst $20
    ld a, $c1
    jp Jump_00f_7e3c


    rst $38
    ld [hl], $00
    ld [hl], $00
    db $e3
    inc e
    db $e3
    inc e
    rst $38
    nop
    db $e3
    nop
    nop
    nop
    nop
    nop
    ret


    nop
    ret


    nop
    ld a, a
    add c
    ld a, l
    add c
    cp l
    pop bc
    ld l, l
    pop af
    push af
    add hl, de
    ld [hl], e
    adc l
    ld e, e
    ld h, l
    rra
    add hl, hl
    add [hl]
    rlca
    add d
    inc bc
    ldh [c], a
    inc bc
    ld a, [$3e03]
    inc bc
    inc c
    ld bc, $0184
    ret z

    ld bc, $0ab4
    sbc $81
    rst $08
    ret nz

    ei
    rst $20
    db $f4
    call z, $ccf4
    add sp, -$68
    rst $38
    nop
    reti


    ret nz

    ld h, b
    ldh [$ff37], a
    ldh a, [rIF]
    ldh [rIF], a
    ret nz

    rra
    ret nz

    ccf
    add b
    nop
    nop
    ld a, $08
    inc e
    inc d
    rst $38
    ld h, e
    ld [hl], a
    adc b
    cp [hl]
    ret


    cp [hl]
    pop bc
    ld e, l
    ld h, e
    rst $38
    ld [$00c1], sp
    db $e3
    nop
    nop
    nop
    adc b
    nop
    ret


    nop
    pop bc
    nop
    db $e3
    nop
    nop
    ld [$2911], sp
    dec a
    ld b, c
    ld sp, hl
    ld bc, $f16d
    sub a
    sbc c
    sub a
    sbc c
    dec bc
    inc c
    rst $38
    nop
    adc $07
    add d
    inc bc
    halt
    rlca
    ld a, [$fc03]
    ld bc, $01fc
    cp $00
    nop
    nop
    rst $38
    ld bc, $01fd
    ld sp, hl
    ld bc, $00f1
    db $e3
    nop
    add $01
    adc h
    inc bc
    inc c
    inc bc
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    db $fd
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    ld a, a
    nop
    ld a, a
    nop
    pop bc
    ld a, $0e
    rst $38
    jr nc, @-$0e

    ld a, [hl]
    cp $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    ld bc, $01fd
    ld sp, hl
    ld bc, $01f1
    pop hl
    ld bc, $c1a1
    ld [hl], c
    ld b, c
    ld de, $fe21
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    ld a, a
    cp [hl]
    ccf
    sbc $1f
    xor $0f
    ld l, [hl]
    adc a
    sbc b
    rlca
    ei
    add h
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    db $fc
    add e
    rst $20
    rra
    rst $38
    nop
    rst $28
    ldh [$ff5e], a
    ret nz

    db $10
    ret nz

    nop
    ret nz

    rlca
    add b
    rra
    add b
    ld a, a
    nop
    nop
    nop
    db $fc
    db $fc
    ldh a, [$ff30]
    ldh a, [$ff30]
    db $fc
    inc a
    inc c
    db $fc
    ld [hl], b
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    jr nc, jr_00f_7095

    jr nc, @+$11

    inc a
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld sp, $3921

jr_00f_7095:
    ld hl, $0119
    add hl, bc
    ld de, $1109
    rlca
    add hl, bc
    ei
    db $fd
    rst $38
    ld bc, $8f6e
    ld [hl], $c7
    ld [hl], $c7
    halt
    add a
    halt
    add a
    ld hl, sp+$01
    db $fc
    ld bc, $0100
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
    jr z, @+$16

    dec h
    inc d
    ld h, $14
    daa
    inc d
    jr z, @+$16

    dec h
    inc d
    ld h, $14
    daa
    inc d
    ld b, b
    inc d
    ld [bc], a
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $3f14
    inc d
    ld h, $14
    daa
    inc d
    jr z, jr_00f_711c

    dec h
    inc d
    ld h, $14
    daa
    inc d
    jr z, jr_00f_7124

    dec h
    inc d
    dec l
    inc d
    ld a, [hl+]
    inc d
    dec hl
    inc d
    inc l
    inc d
    dec l
    inc d

jr_00f_711c:
    ld a, [hl+]
    inc d
    dec hl
    inc d
    ld b, e
    inc d
    inc bc
    inc d

jr_00f_7124:
    ld b, $14
    ld h, b
    db $10
    ld h, c
    db $10
    ld h, d
    db $10
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld c, [hl]
    db $10
    ld c, a
    db $10
    ld d, b
    db $10
    inc bc
    inc d
    ld b, $14
    ld b, d
    inc d
    inc l
    inc d
    dec l
    inc d
    ld a, [hl+]
    inc d
    dec hl
    inc d
    inc l
    inc d
    dec l
    inc d
    ld a, [hl+]
    inc d
    dec l
    inc d
    cpl
    inc d
    jr nc, jr_00f_716c

    ld sp, $2d14
    inc d
    cpl
    inc d
    ld b, a
    inc d
    ld c, b
    inc d
    ld bc, $0214
    inc d
    ld h, e
    db $10
    ld h, h
    db $10
    ld h, l
    db $10

jr_00f_716c:
    ld [bc], a
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $5414
    db $10
    ld d, l
    db $10
    ld d, [hl]
    db $10
    ld bc, $0214
    inc d
    ld b, l
    inc d
    ld b, [hl]
    inc d
    dec l
    inc d
    cpl
    inc d
    jr nc, jr_00f_71a0

    ld sp, $2d14
    inc d
    cpl
    inc d
    ld c, l
    inc d
    ld c, e
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, l
    inc d
    ld c, d
    inc d
    ld b, h
    inc d

jr_00f_71a0:
    ld b, $14
    inc bc
    inc d
    ld b, $14
    ld h, [hl]
    db $10
    ld h, a
    db $10
    ld l, b
    db $10
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld e, d
    db $10
    ld e, e
    db $10
    ld e, h
    db $10
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, c
    inc d
    ld c, c
    inc d
    ld c, e
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, l
    inc d
    ld c, e
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $1314
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    inc d
    db $10
    jr nz, jr_00f_7218

    ld [bc], a
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d

jr_00f_7218:
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld l, $14
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    add hl, sp
    inc d
    ld [hl-], a
    inc d
    inc sp
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld a, [hl-]
    inc d
    dec sp
    inc d
    dec [hl]
    inc d
    dec [hl]
    inc d
    scf
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    dec a
    inc d
    dec [hl]
    inc d
    dec [hl]
    inc d
    ld h, $14
    daa
    inc d
    ld b, b
    inc d
    ld [bc], a
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $3f14
    inc d
    ld h, $14
    daa
    inc d
    dec hl
    inc d
    ld b, e
    inc d
    ld b, h
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, c
    inc d
    ld b, d
    inc d
    inc l
    inc d
    ld b, a
    inc d
    ld c, b
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld b, l
    inc d
    ld b, [hl]
    inc d
    ld b, h
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, c
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, e
    db $10
    inc bc
    inc d
    dec d
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
    ld hl, $0610
    inc d
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    ld bc, $5714
    db $10
    ld e, b
    db $10
    ld e, c
    db $10
    ld bc, $1514
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
    ld hl, $0210
    inc d
    ld l, c
    db $10
    ld l, d
    db $10
    ld l, e
    db $10
    ld [bc], a
    inc d
    inc bc
    inc d
    ld e, l
    db $10
    ld e, [hl]
    db $10
    ld e, a
    db $10
    inc bc
    inc d
    ld [hl+], a
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc h
    db $10
    ld b, $14
    ld l, h
    db $10
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld b, $14
    jr z, @+$16

    dec h
    inc d
    ld h, $14
    daa
    inc d
    jr z, @+$16

    add hl, hl
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    ld bc, $0214
    inc d
    jr c, jr_00f_771c

    dec h
    inc d
    ld h, $14
    daa
    inc d
    jr z, jr_00f_7724

    dec h
    inc d
    dec l
    inc d
    ld a, [hl+]
    inc d
    dec hl
    inc d
    inc l
    inc d
    dec l
    inc d

jr_00f_771c:
    ld a, [hl+]
    inc d
    ld l, $14
    ld b, $14
    inc bc
    inc d

jr_00f_7724:
    ld b, $14
    inc bc
    inc d
    add hl, bc
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld d, $10
    rla
    db $10
    jr jr_00f_7748

    add hl, de
    db $10
    ld a, [de]
    db $10
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    add hl, sp
    inc d
    dec l
    inc d

jr_00f_7748:
    ld a, [hl+]
    inc d
    dec hl
    inc d
    inc l
    inc d
    dec l
    inc d
    ld a, [hl+]
    inc d
    dec l
    inc d
    cpl
    inc d
    jr nc, jr_00f_776c

    ld sp, $2d14
    inc d
    cpl
    inc d
    ld [hl-], a
    inc d
    inc sp
    inc d
    ld bc, $0214
    inc d
    ld bc, $0e14
    db $10
    rrca
    db $10

jr_00f_776c:
    db $10
    db $10
    ld de, $1210
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    ld [bc], a
    inc d
    ld bc, $0214
    inc d
    ld a, [hl-]
    inc d
    dec sp
    inc d
    inc a
    inc d
    cpl
    inc d
    jr nc, jr_00f_77a0

    ld sp, $2d14
    inc d
    cpl
    inc d
    ld [hl], $14
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    inc [hl]
    inc d
    dec [hl]
    inc d

jr_00f_77a0:
    dec [hl]
    inc d
    scf
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    ld b, $14
    inc bc
    inc d
    dec a
    inc d
    dec [hl]
    inc d
    dec [hl]
    inc d
    ld a, $14
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    inc [hl]
    inc d
    ld l, a
    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr @+$71

    jr jr_00f_78d4

    jr jr_00f_78d6

    jr jr_00f_78d8

    jr jr_00f_78da

    jr jr_00f_78dc

    jr @+$71

    jr jr_00f_78e0

    jr jr_00f_78e2

jr_00f_7873:
    jr @+$71

    jr jr_00f_78e6

    jr jr_00f_78e8

    jr jr_00f_78ea

    jr jr_00f_78ec

    jr jr_00f_78ee

    jr jr_00f_78f0

    jr jr_00f_78f2

    jr jr_00f_78f4

    jr jr_00f_78f6

    jr jr_00f_78f8

    jr @+$71

    jr jr_00f_78fc

    jr jr_00f_78fe

    jr @+$71

    jr jr_00f_7902

    jr jr_00f_7904

    jr jr_00f_7906

    jr jr_00f_7908

    jr jr_00f_790a

    jr jr_00f_790c

    jr jr_00f_790e

    jr jr_00f_7910

    jr jr_00f_7912

    jr jr_00f_7914

    jr jr_00f_7916

    jr jr_00f_7918

    jr jr_00f_791a

    jr jr_00f_791c

    jr jr_00f_791e

    jr jr_00f_7920

    jr jr_00f_7922

    jr jr_00f_7924

    jr jr_00f_7926

    jr jr_00f_7928

    jr jr_00f_792a

    jr jr_00f_792c

jr_00f_78bd:
    jr jr_00f_792e

    jr jr_00f_7930

    jr jr_00f_7932

    jr jr_00f_7934

    jr jr_00f_7936

    jr jr_00f_7938

    jr jr_00f_793a

    jr jr_00f_793c

    jr jr_00f_793e

    jr jr_00f_7940

    jr jr_00f_7873

    ld a, d

jr_00f_78d4:
    and l
    inc d

jr_00f_78d6:
    db $10
    ld b, d

jr_00f_78d8:
    sub h
    ld d, d

jr_00f_78da:
    rst $38
    ld a, a

jr_00f_78dc:
    call nc, Call_00f_5b01
    ld [bc], a

jr_00f_78e0:
    rst $18
    inc bc

jr_00f_78e2:
    add b
    ld de, $2a60

jr_00f_78e6:
    jr nz, jr_00f_7913

jr_00f_78e8:
    add e
    inc h

jr_00f_78ea:
    ld [bc], a
    dec a

jr_00f_78ec:
    add c
    ld d, l

jr_00f_78ee:
    ld c, b
    ld h, d

jr_00f_78f0:
    rra
    nop

jr_00f_78f2:
    nop
    nop

jr_00f_78f4:
    inc b
    db $10

jr_00f_78f6:
    add e
    inc h

jr_00f_78f8:
    add b
    jr z, jr_00f_78bd

    inc [hl]

jr_00f_78fc:
    ldh [c], a
    inc a

jr_00f_78fe:
    ld hl, $4145
    ld c, l

jr_00f_7902:
    add c
    ld d, l

jr_00f_7904:
    and b
    ld e, l

jr_00f_7906:
    ld b, l
    ld d, c

jr_00f_7908:
    push bc
    ld e, c

jr_00f_790a:
    ld c, b
    ld h, d

jr_00f_790c:
    adc h
    ld h, d

jr_00f_790e:
    ret nc

    ld h, d

jr_00f_7910:
    rst $38
    ld a, a

jr_00f_7912:
    nop

jr_00f_7913:
    nop

jr_00f_7914:
    nop
    nop

jr_00f_7916:
    nop
    nop

jr_00f_7918:
    nop
    nop

jr_00f_791a:
    nop
    nop

jr_00f_791c:
    nop
    nop

jr_00f_791e:
    nop
    nop

jr_00f_7920:
    nop
    nop

jr_00f_7922:
    nop
    nop

jr_00f_7924:
    nop
    nop

jr_00f_7926:
    nop
    nop

jr_00f_7928:
    nop
    nop

jr_00f_792a:
    nop
    nop

jr_00f_792c:
    nop
    nop

jr_00f_792e:
    nop
    nop

jr_00f_7930:
    nop
    nop

jr_00f_7932:
    rst $38
    rst $38

jr_00f_7934:
    rst $38
    rst $38

jr_00f_7936:
    rst $38
    rst $38

jr_00f_7938:
    rst $38
    rst $38

jr_00f_793a:
    rst $38
    rst $38

jr_00f_793c:
    rst $38
    rst $38

jr_00f_793e:
    rst $38
    rst $38

jr_00f_7940:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00f_79c9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00f_7e3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00f_7ec9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
