; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_01b_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$33

    ld b, d
    db $20, $c3
    ld a, e
    ld b, e
    ld [$c34f], sp
    ld b, [hl]
    ld h, c
    sub [hl]
    ld [hl], d
    cpl
    ld [hl], e
    jp Jump_01b_62e0


Call_01b_401f:
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


Jump_01b_4037:
    ld a, [$d722]
    add $08
    ld e, a
    ld a, [$d725]
    add $10
    ld d, a
    ld hl, $c000
    ld a, [$d703]
    or a
    jp nz, Jump_01b_407f

    xor a
    ldh [$ffab], a

jr_01b_4050:
    ld a, [bc]
    cp $80
    jr z, jr_01b_4071

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

jr_01b_406b:
    cp $28
    jr c, jr_01b_4050

    jr jr_01b_407e

jr_01b_4071:
    ld de, $0004

jr_01b_4074:
    ld a, l
    cp $28
    jr nc, jr_01b_407e

    ld [hl], $c0
    add hl, de
    jr jr_01b_4074

jr_01b_407e:
    ret


Jump_01b_407f:
    ld a, $20
    ldh [$ffab], a
    ld a, e
    sub $07
    ld e, a

jr_01b_4087:
    ld a, [bc]
    cp $80
    jr z, jr_01b_4071

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
    jr c, jr_01b_4087

    jr jr_01b_407e

Jump_01b_40aa:
    ld [$d703], a
    ld hl, $d72b
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ld hl, $d725
    ld a, [hl]
    add b
    ld [hl], a
    ld a, [$d74b]
    cp $01
    ret nz

    xor a
    ld [$d74b], a
    ld hl, $d729
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    adc [hl]
    ld [hl+], a
    ret


    ld hl, $c028
    ld de, $0004
    ld b, $1e

jr_01b_40db:
    ld [hl], $00
    add hl, de
    dec b
    jr nz, jr_01b_40db

    ret


Call_01b_40e2:
    jp Jump_01b_40fb


Call_01b_40e5:
    call Call_01b_40ff
    jr z, jr_01b_40f8

    jr c, jr_01b_40f6

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_01b_40fa

jr_01b_40f6:
    or a
    ret


jr_01b_40f8:
    scf
    ret


Call_01b_40fa:
    jp hl


Call_01b_40fb:
Jump_01b_40fb:
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_01b_40ff:
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
    jr z, jr_01b_4114

    dec [hl]
    xor a
    sub $01
    ret


jr_01b_4114:
    inc l

jr_01b_4115:
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
    jr nz, jr_01b_412a

    ldh [$ff8c], a
    ld l, b
    ld [hl], $01
    xor a
    ret


jr_01b_412a:
    cp $ff
    jr nz, jr_01b_413a

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_01b_4115

jr_01b_413a:
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


Jump_01b_414c:
    ld [$db0b], a
    ld [$db0c], a
    ret


Call_01b_4153:
    ld hl, $dc80
    ld a, [hl]
    and $88
    or b
    ld [hl], a
    ret


Call_01b_415c:
    push de
    ret


Call_01b_415e:
    call Call_000_01c8
    ld hl, $de94
    ld a, [$de91]
    cp [hl]
    ld [hl], a
    jr z, jr_01b_4177

    ld a, [$de92]
    ld [$de95], a
    ld a, $10
    ld [$de93], a
    ret


jr_01b_4177:
    ld hl, $de93
    ld a, [hl]
    or a
    jr nz, jr_01b_4185

    ld [hl], $08
    ld a, [$de91]
    jr jr_01b_4187

jr_01b_4185:
    dec [hl]
    xor a

jr_01b_4187:
    ld [$de95], a
    ret


    ld b, $00
    ld e, b
    ld d, b
    ld c, $01

Call_01b_4191:
    call Call_01b_41bb
    call Call_01b_41d5

Call_01b_4197:
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


Call_01b_41bb:
Jump_01b_41bb:
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


Call_01b_41d5:
Jump_01b_41d5:
jr_01b_41d5:
    ld a, [$cca8]
    and $07
    jr nz, jr_01b_41d5

jr_01b_41dc:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_01b_41dc

    ret


Call_01b_41e5:
Jump_01b_41e5:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_01b_41ed:
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
    jr nz, jr_01b_41ed

    ret


Call_01b_4202:
Jump_01b_4202:
    inc hl
    ld a, $fe
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_01b_4209:
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
    jr c, jr_01b_4228

    dec hl
    ld b, [hl]
    jr jr_01b_4276

jr_01b_4228:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_01b_4231:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_01b_4257

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
    call Call_01b_415c
    pop bc
    pop hl

jr_01b_424f:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_01b_4231

jr_01b_4257:
    cp $fe
    jr c, jr_01b_426f

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_01b_4265

    ld [hl], $00
    jr jr_01b_424f

jr_01b_4265:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_01b_4277

jr_01b_426f:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_01b_4276:
    or a

jr_01b_4277:
    ld [hl], b
    ret


    ld a, [$ce53]
    ld e, a
    ld a, [$ce54]
    ld d, a
    ld a, b
    jp Jump_000_0171


Call_01b_4285:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_01b_4299:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_01b_42ac

    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_01b_42b2

    dec [hl]

jr_01b_42ac:
    ld a, [$d773]
    ld d, a
    jr jr_01b_42f3

jr_01b_42b2:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01b_42b8:
    ld a, [hl+]
    or a
    jr nz, jr_01b_42c3

    ld d, $00
    call Call_01b_42f3
    scf
    ret


jr_01b_42c3:
    cp $fe
    jr nz, jr_01b_42e5

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $d778
    res 0, [hl]
    push hl
    call Call_01b_415c
    pop hl
    bit 0, [hl]
    pop hl
    jr nz, jr_01b_42ac

    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a
    jr jr_01b_42b8

jr_01b_42e5:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_01b_42f3:
jr_01b_42f3:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Jump_01b_4300:
    ld hl, $d778
    set 0, [hl]
    ret


    jp Jump_01b_437b


    jp $6146


Call_01b_430c:
    call Call_01b_4312
    jp Jump_01b_41d5


Call_01b_4312:
    ld b, $ff
    ld e, b
    ld d, b
    ld c, $04
    jp Jump_01b_41bb


Call_01b_431b:
    call Call_01b_4321
    jp Jump_01b_41d5


Call_01b_4321:
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $04
    jp Jump_01b_41bb


    call Call_01b_430c
    call Call_01b_4197
    call Call_01b_431b

jr_01b_4335:
    call Call_000_01c5
    call Call_01b_415e
    jr jr_01b_4335

    ld a, b
    nop
    cp $65
    ld b, h
    or h
    nop
    cp $73
    ld b, h
    ld a, b
    nop
    cp $78
    ld b, h
    ld e, $00
    cp $81
    ld b, h
    inc b
    nop
    cp $c1
    ld b, h
    ld [hl-], a
    nop
    cp $f9
    ld b, h
    ld a, b
    nop
    cp $07
    ld b, l
    or h
    nop
    cp $40
    ld b, l
    ld a, b
    nop
    cp $48
    ld b, l
    ldh a, [rP1]
    ldh a, [rP1]
    cp $4d
    ld b, l
    inc h
    nop
    cp $58
    ld b, l
    jr jr_01b_4378

jr_01b_4378:
    ldh a, [rP1]
    nop

Jump_01b_437b:
    call Call_01b_430c
    call Call_01b_41d5
    call Call_01b_4197
    call Call_000_019b
    ld hl, $ca00
    ld bc, $0025
    xor a
    call Call_000_0174
    ld hl, $46a9
    ld bc, $0160
    ld de, $9000
    call Call_000_0183
    ld hl, $4809
    call Call_01b_41e5
    ld hl, $4ae1
    ld bc, $0290
    ld de, $8000
    call Call_000_0183
    call Call_01b_43fc
    call Call_01b_455b
    ld a, $28
    call Call_000_01a4
    ld [$ca02], a
    ld de, $433d
    call Call_01b_4285

jr_01b_43c3:
    call Call_01b_4299
    jr c, jr_01b_43df

    call Call_000_01c5
    call Call_000_01d1
    call Call_01b_4632
    ld a, [$ca02]
    call Call_000_019e
    call Call_01b_4419
    call Call_01b_4579
    jr jr_01b_43c3

jr_01b_43df:
    call Call_000_01d1
    ld b, $02
    call Call_000_023a
    ld a, $ff
    ld [$df80], a
    ld a, $1e
    jp Jump_000_0297


Call_01b_43f1:
    call Call_01b_4692
    ld b, $33
    call Call_01b_4153
    rst $08
    scf
    ret


Call_01b_43fc:
    ld a, $71
    ld [$ca17], a
    ld a, $4d
    ld [$ca18], a
    ld a, $08
    ld [$ca1d], a
    ld a, $00
    ld [$ca1e], a
    ld hl, $ca1a
    ld [hl], $00
    call Call_01b_4202
    ret


Call_01b_4419:
    ld a, $81
    ld [$ca21], a
    ld a, [$ca17]
    ld e, a
    ld a, [$ca18]
    ld d, a
    ld hl, $ca1a
    call Call_01b_4209
    ld a, [$ca21]
    ldh [$ff9c], a
    ld a, $10
    ldh [$ff9b], a
    xor a
    ld [$d3ea], a
    ld a, $00
    ldh [$ffab], a
    ld a, $00
    ldh [$ffac], a
    ld a, [$ca1a]
    ld hl, $4d91
    call Call_000_016e
    ld c, l
    ld b, h
    jp Jump_000_02be


    ld [bc], a
    nop
    ld bc, $8280
    ld c, l
    inc b
    nop
    ld bc, $8780
    ld c, l
    ld [bc], a
    nop
    ld bc, $8c80
    ld c, l
    ld bc, $01ff
    add b
    call Call_01b_43f1
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $0f
    jp Jump_01b_41bb


    ld hl, $4453
    jr jr_01b_4484

    xor a
    ld [$ca0b], a
    ld hl, $4459
    jr jr_01b_4484

    ld hl, $445f

jr_01b_4484:
    ld de, $ca15
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$ca05], a
    ld a, l
    ld [$ca07], a
    ld a, h
    ld [$ca08], a
    xor a
    ld [$ca09], a
    ld [$ca06], a
    ld hl, $ca12
    call Call_01b_4202
    ld a, $01
    ld [$ca04], a
    ret


Call_01b_44ab:
    ld a, [hl+]
    ld [$ca0c], a
    ld a, l
    ld [$ca0e], a
    ld a, h
    ld [$ca0f], a
    xor a
    ld [$ca10], a
    ld a, $01
    ld [$ca0b], a
    ret


    ld b, $77
    call Call_01b_4153
    rst $08
    nop
    rst $08
    ld b, d
    ld a, $00
    call Call_01b_4664
    call Call_000_01c5
    ld hl, $4975
    call Call_01b_41e5
    call Call_01b_461a
    ld b, $1b
    ld e, $1c
    ld d, $ff
    ld c, $04
    call Call_01b_41bb
    ld a, $18
    ld [$ccaf], a
    ld [$ccb0], a
    ld a, $77
    ld [$ca17], a
    ld a, $4d
    ld [$ca18], a
    ret


    call Call_000_01c5
    ld b, $00
    ld e, $ff
    ld d, b
    ld c, $0c
    call Call_01b_41bb
    ret


    ld a, $00
    call Call_01b_4664
    call Call_000_01c5
    xor a
    ld [$ca03], a
    ld [$de2c], a
    ld a, $71
    ld [$ca17], a
    ld a, $4d
    ld [$ca18], a
    ld hl, $4809
    call Call_01b_41e5
    ld b, $1b
    ld e, $1c
    ld d, $ff
    ld c, $3c
    call Call_01b_41bb
    ld a, $38
    ld [$cca9], a
    ld [$ccac], a
    ld [$ccaf], a
    ld [$ccb0], a
    ret


    ld b, $33
    call Call_01b_4153
    rst $08
    scf
    ret


    rst $08
    nop
    rst $08
    ld a, l
    ret


    ld b, $ff
    ld e, $ff
    ld d, $ff
    ld c, $0c
    jp Jump_01b_41bb


    rst $28
    ld l, $c9

Call_01b_455b:
    ld a, $7d
    ld [$ca15], a
    ld a, $4d
    ld [$ca16], a
    ld hl, $ca12
    ld [hl], $02
    call Call_01b_4202
    ld hl, $444f
    call Call_01b_44ab
    ld a, $01
    ld [$ca03], a
    ret


Call_01b_4579:
    ld a, [$ca04]
    or a
    jr z, jr_01b_45a9

    ld hl, $ca06
    call Call_000_01e9
    jr nz, jr_01b_458f

    ld a, [$ca05]
    ld [hl], a
    ld hl, $ca09
    inc [hl]

jr_01b_458f:
    ld hl, $ca07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca09]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $80
    jr nz, jr_01b_45a9

    xor a
    ld [$ca09], a
    jr jr_01b_458f

jr_01b_45a9:
    add $70
    ld [$ca0a], a
    ld a, [$ca0b]
    or a
    jr z, jr_01b_45de

    ld hl, $ca0d
    call Call_000_01e9
    jr nz, jr_01b_45c4

    ld a, [$ca0c]
    ld [hl], a
    ld hl, $ca10
    inc [hl]

jr_01b_45c4:
    ld hl, $ca0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca10]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $80
    jr nz, jr_01b_45de

    xor a
    ld [$ca10], a
    jr jr_01b_45c4

jr_01b_45de:
    add $48
    ld [$ca11], a
    ld a, [$ca15]
    ld e, a
    ld a, [$ca16]
    ld d, a
    ld hl, $ca12
    call Call_01b_4209
    ld a, [$ca03]
    or a
    ret z

    ld a, [$ca11]
    ldh [$ff9c], a
    ld a, [$ca0a]
    ldh [$ff9b], a
    xor a
    ld [$d3ea], a
    ld a, $00
    ldh [$ffab], a
    ld a, $00
    ldh [$ffac], a
    ld a, [$ca12]
    ld hl, $4d91
    call Call_000_016e
    ld c, l
    ld b, h
    jp Jump_000_02be


Call_01b_461a:
    ld c, $00
    ld b, $1b
    ld hl, $462a
    call Call_000_023d
    ld a, $01
    ld [$ca22], a
    ret


    jr @+$7a

    ld c, b
    ld c, b
    jr jr_01b_46a8

    nop
    dec de

Call_01b_4632:
    ld a, [$ca22]
    or a
    ret z

    ld hl, $ca01
    call Call_000_01e9
    jr nz, jr_01b_4662

    ld [hl], $02
    ld hl, $df15
    ld a, [hl]
    add $01
    ld [hl], a
    ld hl, $df14
    ld a, [hl]
    sub $01
    ld [hl], a
    cp $18
    push af
    ld c, $01
    call Call_000_023d
    pop af
    jr z, jr_01b_465c

    jr nc, jr_01b_4662

jr_01b_465c:
    xor a
    ld [$ca22], a
    scf
    ret


jr_01b_4662:
    or a
    ret


Call_01b_4664:
    ld [$ca24], a
    ld a, $01
    ld [$ca23], a
    ret


    ld hl, $ca23
    ld a, [hl]
    or a
    jr z, jr_01b_467d

    ld [hl], $00
    inc hl
    ld a, [hl]
    ld [$de96], a
    ldh [rBGP], a

jr_01b_467d:
    ldh a, [rBGP]
    ld [$df11], a
    and $c0
    ld c, a
    rr a
    rr a
    or c
    ld c, a
    swap a
    or c
    ld [$df10], a
    ret


Call_01b_4692:
    ld a, $c9
    ld [$c0f0], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $1b
    dec hl
    ld [hl], $46
    dec hl
    ld [hl], $6d
    dec hl
    ld [hl], $c3

jr_01b_46a8:
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
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    rrca
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$fff0]
    cp $fe
    rst $38
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
    ret nz

    ret nz

    ldh a, [$fff0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
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

    ldh [$ffe0], a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rst $38
    rst $38
    ld hl, sp-$08
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
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
    ld bc, $fe01
    cp $fe
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
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
    ld a, a
    ld a, a
    rrca
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
    rst $38
    rst $38
    cp $fe
    ldh a, [$fff0]
    nop
    nop
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$fff0]
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
    jr nz, jr_01b_480d

    ld h, b
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    ld bc, $0000
    nop
    nop
    inc d
    ld [$182e], sp
    ld a, [de]
    inc [hl]
    ld h, $18
    inc e
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
    nop
    nop
    ld [de], a
    ld bc, $0206
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld [$0000], sp
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    inc d
    ld [de], a

jr_01b_480d:
    dec d
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    inc d
    inc de
    ld [de], a
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    dec d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    dec d
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    dec d
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    dec d
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    inc d
    nop
    nop
    ld [de], a
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    dec d
    nop
    nop
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
    nop
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
    nop
    nop
    inc de
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    dec d
    nop
    dec d
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    ld [de], a
    nop
    dec d
    dec d
    ld [de], a
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    dec d
    nop
    nop
    inc de
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    dec d
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    ld [de], a
    nop
    inc d
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    sbc b
    inc d
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
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
    dec bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    inc bc
    inc bc
    inc bc
    inc bc
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4ac6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $0f
    rrca
    ld e, $0e
    dec l
    ld b, $21
    inc [hl]
    ld [hl], e
    nop
    ccf
    rra
    rst $38
    dec a
    jp Jump_000_3cc3


    ld h, b
    rst $38
    ldh [rIE], a
    adc $f1
    ld de, $00ee
    ret nz

    add b
    jr c, jr_01b_4ac6

    add [hl]
    ldh [rSTAT], a
    ld h, b
    add b
    ldh a, [$ff60]
    sub b
    ld h, b
    ld [hl], b
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
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_01b_4b58

    ld [hl], c
    dec b
    ld b, e
    rlca
    add d
    rlca
    add d
    rlca
    add d
    inc bc
    add c
    ld bc, $0000
    nop
    ld l, $d9
    ccf
    sub $bf
    sub $bf
    sub $bf
    rst $10
    cpl
    db $db
    sub a
    ld l, a
    db $ec
    inc de
    or b
    ld b, b
    ld d, b
    and b
    or b
    ldh [$fff8], a
    ret nc

    ld hl, sp-$10
    add sp, -$10
    sub b
    ldh [$ff60], a
    add b
    nop
    jr nz, jr_01b_4b54

jr_01b_4b54:
    jr nz, jr_01b_4b56

jr_01b_4b56:
    stop

jr_01b_4b58:
    stop
    stop
    stop
    ld [$0800], sp
    ld bc, $0200
    ld bc, $0305
    rrca
    ld bc, $0e11
    ld [hl+], a
    dec e
    cpl
    db $10
    ld a, h
    rrca
    ld e, a
    and b
    pop hl
    sbc $bf
    pop hl
    ld a, a
    cp a
    rst $38
    nop
    cp $fb
    rst $38
    halt
    ld a, a
    xor [hl]
    ret nc

    ld h, b
    add sp, -$10
    ld hl, sp-$10
    db $f4
    jr c, jr_01b_4bc9

    ret c

    sbc h
    ld l, e
    adc [hl]
    ld [hl], c
    adc l
    ld [hl], d
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    ld a, $00
    call Call_000_2b36
    rst $10
    rra
    rst $20
    nop
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
    ret nz

    add b
    ldh [$ffc0], a
    ei
    inc a
    db $f4
    ld a, e
    jp hl


    or $d1
    xor $d1
    xor $e1
    ld e, $c0
    ccf
    and b
    rst $18
    db $fd
    ld c, $bb
    ld e, h
    ld l, a
    ret nc

    ld a, [hl]
    pop bc

jr_01b_4bc9:
    ld a, b
    rst $00
    add hl, hl
    or $97
    ld l, b
    ld h, l
    sbc d
    adc a
    ld [hl], d
    dec de
    and $f7
    inc c
    ld l, e
    sbc h
    sbc $39
    or [hl]
    ld a, c
    ld l, h
    di
    ld sp, hl
    rlca
    rra
    db $e3
    cpl
    db $f4
    cpl
    or $2c
    rst $30
    ld a, c
    rst $20
    ld e, d
    rst $20
    push af
    adc $bb
    call z, $c0e0
    sub b
    ldh [$ff30], a
    ldh [$ffd0], a
    ld h, b
    sub b
    ld h, b
    or b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    nop
    rrca
    nop
    rra
    rlca
    ccf
    rla
    ld a, a
    ccf
    ld b, c
    call Call_000_2b36
    rst $10
    rra
    rst $20
    nop
    ldh [rP1], a
    ld hl, sp-$80
    db $fc
    ldh [$fffe], a
    ldh a, [$fffe]
    ld hl, sp+$7f
    ld hl, sp-$41
    db $fc
    rst $18
    db $fc
    rst $18
    sbc h
    rst $28
    inc a
    rst $28
    ret c

    ld l, a
    sbc b
    ld l, [hl]
    or b
    ld c, h
    ldh [rNR23], a
    ldh [rP1], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rrca
    ld c, $1d
    dec de
    ld [hl], $3d
    ld e, e
    ld a, [hl]
    dec a
    cpl
    rrca
    rrca
    ld a, d
    ld [hl], a
    push de
    rst $28
    db $eb
    rst $38
    push af
    ld a, e
    ld sp, hl
    or [hl]
    ld a, d
    db $dd
    cp h
    rst $38
    ld hl, sp-$08
    ld e, a
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ei
    cp $34
    rst $18
    push bc
    dec sp
    db $eb
    rla
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ldh a, [$ffe8]
    ld hl, sp-$2c
    db $fc
    xor h
    ld a, h
    sbc $be
    ccf
    scf
    ld l, [hl]
    ld a, e
    ld d, a
    ld l, l
    ld a, e
    ld c, a
    or l
    db $db
    xor h
    di
    jp z, $a5f5

    jp c, $de67

    rst $30
    adc a
    db $db
    cpl
    ld a, l
    adc a
    scf
    ld sp, hl
    sbc $f5
    db $ed
    ld [hl], e
    ld a, [hl-]
    rst $38
    halt
    adc l
    rst $28
    cp $db
    or a
    db $fd
    ld a, e
    db $ed
    rst $18
    rst $30
    rst $28
    or a
    rst $38
    sbc $bf
    sbc $fe
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    or a
    rst $38
    ld a, e
    rst $30
    rst $20
    rst $18
    ldh a, [c]
    xor l
    add l
    ld a, [$ec93]
    and a
    reti


    rst $08
    or b
    ld b, [hl]
    ld a, l
    ld d, l
    ld l, e
    ld c, e
    ld [hl], a
    cp a
    ld l, a
    db $fd
    ld e, [hl]
    sbc $77
    or a
    ld a, e
    ld a, c
    rst $18
    sbc $ef
    rst $20
    ld a, a
    ld a, a
    cp [hl]
    push af
    rst $38
    xor a
    ei
    rst $30
    db $ed
    db $eb
    sbc $7d
    ei
    ld a, [$7fb7]
    sbc $be
    db $ed
    db $db
    xor a
    rst $30
    ld e, a
    ld c, a
    rst $38
    cp $bf
    push de
    ld a, a
    rst $38
    xor a
    ld a, a
    rst $18
    cp l
    rst $28
    rst $30
    db $ed
    xor l
    cp $5a
    ld a, a
    dec [hl]
    ccf
    dec bc
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    sbc a
    db $fd
    cp $fb
    ld a, a
    db $f4
    db $fc
    db $eb
    reti


    or $a2
    db $fd
    call nc, Call_01b_78fb
    ld a, a
    ld e, a
    or a
    rst $28
    dec de
    scf
    call $be43
    rla
    db $ed
    dec hl
    rst $10
    sub a
    ld a, a
    ld e, a
    rst $38
    rst $10
    cp a
    xor [hl]
    ld a, [hl]
    xor $fe
    sbc $fe
    ld a, h
    db $fc
    cp b
    ld hl, sp-$10
    ldh a, [$ff80]
    add b
    ld b, c
    ld b, c
    dec bc
    dec bc
    daa
    daa
    nop
    nop
    sbc a
    sbc a
    rlca
    rlca
    ld bc, $1001
    stop
    nop
    inc bc
    inc bc
    rlca
    rlca
    cp a
    cp a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, Call_000_09d4
    add hl, bc
    jr nz, jr_01b_4d7b

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, a
    ld a, a
    call $10cd
    db $10
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    sub c
    ld c, l
    inc b
    nop
    ld bc, $91ff
    ld c, l
    ld [bc], a
    nop

jr_01b_4d7b:
    ld bc, $91ff
    ld c, l
    ldh a, [rSC]
    rst $38
    sub c
    ld c, l
    ldh a, [rSC]
    rst $38
    sub c
    ld c, l
    ldh a, [$ff03]
    rst $38
    sub c
    ld c, l
    ldh a, [rDIV]
    rst $38
    sbc e
    ld c, l
    db $e4
    ld c, l
    dec l
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    or a
    ld c, [hl]
    ldh a, [$fff0]
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    nop
    ld [$0003], sp
    ld [$04e8], sp
    nop
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e8], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000c], sp
    ld [$0de0], sp
    nop
    nop
    ld [$000e], sp
    nop
    ld [$000f], sp
    nop
    ld [$0010], sp
    nop
    ld [$0011], sp
    add b
    pop af
    ldh a, [rP1]
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    nop
    ld [$0003], sp
    ld [$04e8], sp
    nop
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e8], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$0012], sp
    nop
    ld [$0013], sp
    ld [$0de0], sp
    nop
    nop
    ld [$000e], sp
    nop
    ld [$000f], sp
    nop
    ld [$0010], sp
    nop
    ld [$0014], sp
    add b
    ldh a, [$fff0]
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$19e8], sp
    stop
    ld [$101a], sp
    nop
    ld [$101b], sp
    nop
    ld [$101c], sp
    ld [$1de8], sp
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$21e8], sp
    stop
    ld [$1022], sp
    nop
    ld [$1023], sp
    nop
    ld [$1024], sp
    add b
    ldh a, [$fff0]
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$19e8], sp
    stop
    ld [$101a], sp
    nop
    ld [$101b], sp
    nop
    ld [$101c], sp
    ld [$1de8], sp
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$21e8], sp
    stop
    ld [$1022], sp
    nop
    ld [$1023], sp
    nop
    ld [$1024], sp
    push af
    ldh [rNR51], a
    stop
    jr z, @+$27

    jr nc, @-$7e

    xor $f0
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$26e0], sp
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    nop
    ld [$3028], sp
    nop
    ld [$3027], sp
    nop
    ld [$3026], sp
    inc c
    ret c

    ld h, $50
    nop
    ld [$5027], sp
    nop
    ld [$5028], sp
    nop
    ld [$7028], sp
    nop
    ld [$7027], sp
    nop
    ld [$7026], sp
    ld [$21e0], sp
    stop
    ld [$1022], sp
    nop
    ld [$1023], sp
    nop
    ld [$1024], sp
    add b
    inc c
    ld c, a
    ld [de], a
    ld c, a
    inc de
    ld c, a
    inc de
    ld c, a
    inc de
    ld c, a
    rst $38
    inc de
    sub c
    ld c, a
    ld a, [hl+]
    ld d, b
    dec l
    ld c, a
    ld [hl-], a
    ld c, a
    daa
    nop
    ld b, e
    ld hl, $014f
    ld l, $4f
    dec [hl]
    ld c, a
    nop
    nop
    nop
    nop
    rst $38
    add b
    nop
    ret


    call Call_01b_5133
    ret


    jp Jump_01b_5154


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
    jr jr_01b_4f98

    jr jr_01b_4f9a

    jr jr_01b_4f9c

    jr jr_01b_4f9e

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

jr_01b_4f98:
    ld c, $0e

jr_01b_4f9a:
    dec c
    dec c

jr_01b_4f9c:
    ld c, $0e

jr_01b_4f9e:
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
    jr jr_01b_4ffa

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

jr_01b_4ffa:
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
    jr z, jr_01b_500f

    add hl, hl
    inc bc
    ld a, [hl+]

jr_01b_500f:
    dec l
    nop
    ld l, $2f
    inc sp
    jr nc, jr_01b_504a

    inc bc
    dec [hl]
    inc bc
    ld [hl], $31
    scf
    ld [hl-], a
    jr c, jr_01b_5058

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

jr_01b_504a:
    nop
    nop
    nop
    nop
    nop
    nop
    cp $e7
    ld d, e
    or h
    nop
    cp $9e
    ld d, c

jr_01b_5058:
    or h
    nop
    ldh a, [rP1]
    ld d, b
    nop
    cp $a9
    ld d, c
    call $fe00
    sub h
    ld d, l
    ld a, b
    nop
    cp $51
    ld d, [hl]
    ldh a, [rP1]
    ld a, b
    nop
    cp $01
    ld d, h
    ld a, b
    nop
    cp $97
    ld d, a
    cp $4d
    ld d, h
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    or h
    nop
    cp $4f
    ld e, c
    jr z, jr_01b_5087

jr_01b_5087:
    cp $2a
    ld d, h
    cp $3b
    ld d, h
    inc a
    nop
    cp $c5
    ld d, a
    cp $e0
    ld d, a
    ld e, $00
    ld e, $00
    cp $1e
    ld e, b
    inc a
    nop
    cp $f5
    ld d, a
    inc a
    nop
    cp $0f
    ld e, b
    cp $1e
    ld e, b
    ld a, b
    nop
    cp $2a
    ld e, b
    inc a
    nop
    cp $43
    ld e, b
    ld e, $00
    inc a
    nop
    cp $2a
    ld e, b
    ld a, b
    nop
    cp $b4
    ld e, c
    inc a
    nop
    cp $2b
    ld e, d
    ld e, $00
    cp $24
    ld e, b
    inc a
    nop
    cp $2a
    ld e, b
    ld e, $00
    cp $af
    ld e, c
    ld e, $00
    cp $26
    ld e, d
    ld a, [bc]
    nop
    cp $1e
    ld e, b
    ld a, [bc]
    nop
    cp $24
    ld e, b
    ld a, b
    nop
    ld e, d
    nop
    cp $30
    ld e, b
    ld a, [bc]
    nop
    cp $58
    ld e, b
    jr z, jr_01b_50f0

jr_01b_50f0:
    ld e, $00
    cp $48
    ld e, b
    cp $5b
    ld e, b
    cp $74
    ld e, b
    ld e, $00
    ld e, d
    nop
    cp $af
    ld e, b
    or h
    nop
    cp $9d
    ld e, b
    ldh a, [rP1]
    cp $a3
    ld e, b
    ldh a, [rP1]
    ld a, b
    nop
    cp $a9
    ld e, b
    ldh a, [rP1]
    ld a, b
    nop
    cp $ba
    ld e, b
    ld e, d
    nop
    cp $c0
    ld e, b
    ld e, d
    nop
    cp $c6
    ld e, b
    cp $d5
    ld e, b
    ld e, $00
    and b
    jr nz, @+$5c

    nop
    cp $ee
    ld e, b
    ld l, [hl]
    nop
    nop

Call_01b_5133:
    ld hl, $c600
    ld bc, $0500
    xor a
    call Call_000_0174
    call Call_01b_5348
    ld a, $e3
    ld [$c80d], a
    call Call_01b_5255
    call Call_01b_5320
    ld a, $ff
    ld [$de9a], a
    ld [$de99], a
    ret


Jump_01b_5154:
    ld hl, $c800
    bit 0, [hl]
    jr nz, jr_01b_518f

    ld [hl], $ff
    ld hl, $5381
    call Call_01b_41e5
    call Call_01b_5193
    ld a, $a0
    ldh [rWY], a
    ld a, $e3
    ld [$de97], a
    xor a
    ld [$de42], a
    ld [$df09], a
    ld [$cca8], a
    ld a, $ff
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$cca6], a
    ld a, $1e
    call Call_000_01a4
    ld [$c801], a
    ld a, $01
    ld [$d74c], a

jr_01b_518f:
    call Call_01b_535a
    ret


Call_01b_5193:
    ld hl, $9980
    ld bc, $00c0
    ld a, $03
    jp Jump_000_0186


    ld b, $ff
    ld e, $1c
    ld d, $ff
    ld c, $06
    jp Jump_01b_41bb


    ld a, $1b
    ld [$c80b], a
    ld a, $1b
    ld [$c804], a
    ld a, $00
    ld [$c806], a
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $14
    jp Jump_01b_41bb


    ld a, $0c
    jp Jump_01b_414c


    xor a
    jp Jump_01b_414c


Jump_01b_51cc:
    call Call_01b_51d7
    ld a, $ff
    ld [$df80], a
    jp $6146


Call_01b_51d7:
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ld [wPrimaryWeaponModeFlags], a
    ret


Call_01b_51e4:
Jump_01b_51e4:
    ld [$cf7b], a
    ld a, $77
    ld [$cf86], a
    ld a, $3c
    ld [$de88], a
    ld a, $02
    ld [$cf7c], a
    xor a
    ld [$cf7d], a
    ld [$cf7e], a
    ld de, $5211
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $1b
    call Call_000_02d3
    xor a
    ld [$de88], a
    ret


    ld a, [$c801]
    call Call_000_019e
    ld a, [$cb4b]
    ld e, a
    ld a, [$cb4c]
    ld d, a
    ld hl, $cb4d
    call Call_01b_4209
    call Call_01b_590b
    ret


Call_01b_5229:
    ld hl, $c803
    call Call_000_01e9
    ret nz

    ld a, [$c802]
    ld [hl], a
    ld a, [$c805]
    ld d, a
    ld a, [$c80c]
    cp d
    jr z, jr_01b_5244

    call Call_000_022b
    ld [$c80c], a

jr_01b_5244:
    ld a, [$c804]
    ld d, a
    ld a, [$c80b]
    cp d
    jr z, jr_01b_5254

    call Call_000_022b
    ld [$c80b], a

jr_01b_5254:
    ret


Call_01b_5255:
    push bc
    ld a, [$cb48]
    ld b, a
    ld a, $e0
    sub b
    ld [$c807], a
    xor a
    ld [$c808], a
    ld a, [$cb0d]
    ld [$c809], a
    ld a, [$cb0b]
    ld [$c80a], a
    pop bc
    ret


    ld a, [$c807]
    ldh [rSCX], a
    ld a, $d0
    ldh [rOBP1], a
    ld a, $25
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    ldh a, [rLYC]
    cp $45
    jr z, jr_01b_52b0

    cp $4d
    jr z, jr_01b_52cd

    cp $5d
    jr z, jr_01b_52ea

jr_01b_5293:
    ldh a, [rLY]
    cp $27
    jr c, jr_01b_5293

jr_01b_5299:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01b_5299

jr_01b_529f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01b_529f

    ld a, [$c808]
    ldh [rSCX], a
    ld a, $45
    ldh [rLYC], a
    jr jr_01b_531f

jr_01b_52b0:
    ldh a, [rLY]
    cp $47
    jr c, jr_01b_52b0

jr_01b_52b6:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01b_52b6

jr_01b_52bc:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01b_52bc

    ld a, [$c809]
    ldh [rSCX], a
    ld a, $4d
    ldh [rLYC], a
    jr jr_01b_531f

jr_01b_52cd:
    ldh a, [rLY]
    cp $4f
    jr c, jr_01b_52cd

jr_01b_52d3:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01b_52d3

jr_01b_52d9:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01b_52d9

    ld a, [$c80a]
    ldh [rSCX], a
    ld a, $5d
    ldh [rLYC], a
    jr jr_01b_531f

jr_01b_52ea:
    push bc
    ld a, [$c806]
    or a
    ld a, [$de96]
    jr z, jr_01b_52f7

    ld a, [$c80b]

jr_01b_52f7:
    ld b, a

jr_01b_52f8:
    ldh a, [rLY]
    cp $5f
    jr c, jr_01b_52f8

jr_01b_52fe:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01b_52fe

jr_01b_5304:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01b_5304

    ld a, [$c80d]
    ldh [rLCDC], a
    ld a, b
    ldh [rBGP], a
    ld a, [$c80c]
    ldh [rOBP1], a
    xor a
    ld [$de2c], a
    call Call_01b_5255
    pop bc

jr_01b_531f:
    ret


Call_01b_5320:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $1b
    dec hl
    ld [hl], $52
    dec hl
    ld [hl], $72
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $1b
    dec hl
    ld [hl], $52
    dec hl
    ld [hl], $85
    dec hl
    ld [hl], $c3
    ret


Call_01b_5348:
    ld de, $5050
    call Call_01b_4285
    call Call_01b_53ad
    ld a, $98
    ld [$de9e], a
    call Call_01b_5726
    ret


Call_01b_535a:
    ld a, $01
    ld [$de29], a
    ld a, [$deaf]
    or a
    jr nz, jr_01b_5371

    call Call_01b_4299
    jp c, Jump_01b_51cc

    call Call_01b_53c3
    call Call_01b_573a

jr_01b_5371:
    ld a, [$c801]
    call Call_000_019e
    call Call_01b_5675
    call Call_01b_590b
    call Call_01b_5229
    ret


    inc [hl]
    sbc c
    inc c
    inc bc
    ld hl, $2122
    ld [hl+], a
    ld hl, $2122
    ld [hl+], a
    ld hl, $2122
    ld [hl+], a
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    dec h
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $00
    ld [bc], a
    ld b, b
    db $fc

Call_01b_53ad:
    ld hl, $54f1
    ld bc, $0070
    ld de, $8700
    call Call_000_0183
    call Call_01b_54aa
    ld de, $5561
    call Call_01b_53d9
    ret


Call_01b_53c3:
    ld a, [$cb00]
    dec a
    jp z, Jump_01b_5463

Jump_01b_53ca:
    ld a, [$cb03]
    ld e, a
    ld a, [$cb04]
    ld d, a
    ld hl, $cb05
    call Call_01b_4209
    ret


Call_01b_53d9:
    ld a, e
    ld [$cb03], a
    ld a, d
    ld [$cb04], a
    ld hl, $cb05
    jp Jump_01b_4202


    ld a, $78
    ld [$cb02], a
    ld a, $43
    ld [$cb01], a
    ld de, $5561
    call Call_01b_53d9
    ld a, $01
    ld [$cb08], a
    dec a
    ld [$cb09], a
    ret


    xor a
    ld [$cb08], a
    ld b, $01
    ld a, $0d
    call Call_000_01cb
    ld a, [$cb02]
    add $02
    ld e, a
    ld a, [$cb01]
    add $00
    ld d, a
    call Call_01b_401f
    ld a, $00
    ld [$d70a], a
    ld a, $01
    ld [$d74b], a
    xor a
    ld [$d785], a
    ret


    xor a
    ld [$cb00], a
    ld [$d77e], a
    ld a, $00
    ld b, $ff
    ld de, $53a9
    jp Jump_01b_40aa


    ld a, [$d74b]
    or a
    ret nz

    ld a, $00
    ld [$d72b], a
    ld a, $02
    ld [$d72c], a
    jp Jump_01b_4300


    ld a, $01
    ld [$cb00], a
    ld de, $5566
    call Call_01b_53d9
    ld a, $08
    ld [$cb05], a
    ld a, $01
    ld [$d77e], a
    ret


Jump_01b_5463:
    ld a, [$cb05]
    ld [$d70a], a
    ld hl, $cb0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fff0
    add hl, de
    ld a, l
    ld [$cb0c], a
    ld a, h
    ld [$cb0d], a
    ld hl, $cb0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff80
    add hl, de
    ld a, l
    ld [$cb0a], a
    ld a, h

jr_01b_548a:
    ld [$cb0b], a
    ld hl, $d721
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fff8
    add hl, de
    ld a, l
    ld [$d721], a
    ld a, h
    ld [$d722], a
    ld e, h
    ld a, [$d725]
    ld d, a
    call Call_01b_401f
    jp Jump_01b_53ca


Call_01b_54aa:
    ld hl, $d785
    ld [hl], $1b
    inc hl
    ld [hl], $bb
    inc hl
    ld [hl], $54
    ld a, $01
    ld [$d77e], a
    ret


    ld a, [$cb08]
    or a
    ret z

    ld a, [$cb05]
    ld hl, $556e
    call Call_000_016e
    ld c, l
    ld b, h
    ld a, [$cb02]
    ld [$d722], a
    ld a, [$cb01]
    ld [$d725], a
    ld a, [$cb09]
    ld [$d703], a
    jp Jump_01b_4037


jr_01b_54e0:
    ld a, b
    or a
    ret z

    push bc
    call Call_01b_54eb
    pop bc
    dec b
    jr jr_01b_54e0

Call_01b_54eb:
    call Call_000_01c5
    jp Jump_000_01c8


    nop
    nop
    ld bc, $0300
    nop
    rlca
    inc bc
    dec bc
    inc b
    rrca
    ld [bc], a
    ld c, $05
    ld c, $05
    ldh a, [rP1]
    ret c

    ldh [$ffe4], a
    jr jr_01b_548a

    ld a, h
    ldh [c], a
    inc e
    ld [hl], c
    xor $f9
    ld [hl], $fb
    ld [hl], $16
    rrca
    inc de
    inc c
    ld [$0407], sp
    inc bc
    rlca
    nop
    rrca
    ld b, $0e
    dec b
    inc d
    dec bc
    rst $28
    or $86
    ld a, h
    inc c
    ldh a, [rNR14]
    add sp, -$06
    inc e
    cp [hl]
    ld l, h
    ld a, [hl]
    sbc h
    ld c, $fc
    ld h, h
    dec de
    add [hl]
    ld a, c
    ld l, e
    inc d
    ld e, $05
    ld c, $05
    inc d
    dec bc
    jr jr_01b_5546

    jr jr_01b_5548

    inc c
    ld hl, sp+$1c
    ldh [$fff4], a

jr_01b_5546:
    jr jr_01b_556c

jr_01b_5548:
    ld hl, sp+$28
    ret nc

    jr nc, @-$3e

    jr nz, @-$3e

    ld b, b
    add b
    ld c, a
    jr nc, @-$7c

    ld a, h
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld d, l
    ldh a, [rP1]
    rst $38
    ld l, [hl]
    ld d, l
    ld [$0806], sp
    ld a, [bc]

jr_01b_556c:
    ld [$70ff], sp
    ld d, l
    ei
    rst $30
    ld [hl], b
    nop
    nop
    ld [$0071], sp
    ld [$72f8], sp
    nop
    nop
    ld [$0073], sp
    ld [$74f8], sp
    nop
    nop
    ld [$0075], sp
    ld [$76f9], sp
    nop
    add b
    sbc h
    xor e
    ld d, l
    ld c, d
    sub d
    ld d, [hl]
    cp $11
    nop
    sub l
    call Call_000_025b
    ld a, $01
    ld [$cb81], a
    ld hl, $cb84
    call Call_01b_40e2
    ld a, $01
    ld [$c806], a
    ret


    ld a, [$cb81]
    dec a
    ld b, a
    add a
    add b
    add $a4
    ld l, a
    ld a, $56
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$cb82], a
    ld a, [hl+]
    ld [$cb83], a
    ld a, [hl+]
    ld de, $8800
    call Call_000_020d
    ld a, [$cb81]
    cp $0a
    jr nz, jr_01b_55e0

    ld a, $3b
    ld de, $8ac0
    call Call_000_020d
    ld a, $3e
    ld de, $8e40
    call Call_000_020d

jr_01b_55e0:
    ld a, [$cb81]
    ld b, a
    ld a, [$cb83]
    call Call_000_01cb
    ld hl, $0004
    add hl, de
    ld de, $cbc0
    ld a, [$cb82]
    ld b, a

jr_01b_55f5:
    call Call_000_028e
    ld [de], a
    cp $80
    jr z, jr_01b_560a

    inc de
    ld c, $03

jr_01b_5600:
    call Call_000_028e
    ld [de], a
    inc de
    dec c
    jr nz, jr_01b_5600

    jr jr_01b_55f5

jr_01b_560a:
    ld a, [$cb81]
    ld hl, $56c2
    ld bc, $0008
    ld de, $99e1

jr_01b_5616:
    dec a
    jr z, jr_01b_561c

    add hl, bc
    jr jr_01b_5616

jr_01b_561c:
    ld a, [hl+]
    cp $20
    jr nz, jr_01b_5625

    ld a, $03
    jr jr_01b_5627

jr_01b_5625:
    add $0f

jr_01b_5627:
    push hl
    ld l, e
    ld h, d
    call Call_000_0189
    inc de
    pop hl
    dec c
    jr nz, jr_01b_561c

    ld a, $06
    ld [$c802], a
    ld a, $02
    ld [$c803], a
    ld a, $06
    ld [$c802], a
    ld a, $d0
    ld [$c805], a
    ld a, $1b
    ld [$c804], a
    ld a, $01
    ld [$cb80], a
    ret


    ld de, $558d
    ld hl, $cb84
    call Call_01b_40e5
    jr c, jr_01b_565f

jr_01b_565c:
    jp Jump_01b_4300


jr_01b_565f:
    ld hl, $cb81
    inc [hl]
    ld a, [hl]
    cp $0b
    jr nc, jr_01b_5670

    ld hl, $cb84
    call Call_01b_40e2
    jr jr_01b_565c

jr_01b_5670:
    xor a
    ld [$cb80], a
    ret


Call_01b_5675:
    ld a, [$cb80]
    or a
    ret z

    ld a, $80
    ldh [$ff9b], a
    ld a, $80
    ldh [$ff9c], a
    xor a
    ldh [$ffab], a
    ld [$d3ea], a
    ld a, $80
    ldh [$ffac], a
    ld bc, $cbc0
    jp Jump_000_02be


    xor a
    ld [$c803], a
    ld a, $06
    ld [$c802], a
    ld a, $00
    ld [$c805], a
    ld [$c804], a
    ret


    inc bc
    inc d
    dec e
    inc bc
    inc d
    dec hl
    inc bc
    inc d
    dec l
    inc bc
    inc d
    ld a, [hl+]
    inc bc
    inc d
    dec [hl]
    add hl, bc
    dec d
    scf
    add hl, bc
    dec d
    ld b, c
    add hl, bc
    dec d
    jr c, jr_01b_56c6

    dec d
    add hl, sp
    ld e, $16
    ld a, [hl-]
    jr nz, jr_01b_5711

    ld b, l
    ld d, d

jr_01b_56c6:
    ld b, e
    ld d, l
    ld d, d
    ld e, c
    jr nz, jr_01b_5722

    ld b, l
    ld c, [hl]
    ld d, l
    ld d, e
    jr nz, @+$22

    jr nz, jr_01b_5721

    ld b, c
    ld d, d
    ld d, e
    jr nz, @+$22

    jr nz, @+$22

    ld c, [hl]
    ld b, l
    ld d, b
    ld d, h
    ld d, l
    ld c, [hl]
    ld b, l
    jr nz, @+$4c

    ld d, l
    ld d, b
    ld c, c
    ld d, h
    ld b, l
    ld d, d
    jr nz, @+$55

    ld b, c
    ld d, h
    ld d, l
    ld d, d
    ld c, [hl]
    jr nz, jr_01b_5713

    ld d, b
    ld c, h
    ld d, l
    ld d, h
    ld c, a
    jr nz, jr_01b_571a

    jr nz, jr_01b_5751

    ld d, d
    ld b, c
    ld c, [hl]
    ld d, l
    ld d, e
    jr nz, jr_01b_5723

    ld d, h
    ld b, l
    ld d, d
    ld d, d
    ld b, c
    jr nz, @+$22

    jr nz, @+$55

    ld d, l
    ld c, [hl]
    ld d, e
    ld d, h
    ld b, c

jr_01b_5711:
    ld d, d
    nop

jr_01b_5713:
    nop
    nop
    cp $80
    rst $38
    nop
    db $fd

jr_01b_571a:
    nop
    rst $38
    nop
    db $fd
    add b
    nop
    nop

jr_01b_5721:
    db $fd

jr_01b_5722:
    nop

jr_01b_5723:
    ld bc, $fd00

Call_01b_5726:
    ld a, $e0
    ld [$cb48], a
    ld a, $10
    ld [$cb4a], a
    ld de, $5e9c
    call Call_01b_58fd
    ld [$cb50], a
    ret


Call_01b_573a:
    call Call_01b_5961
    call Call_01b_59de
    call Call_01b_5a55
    ld a, [$cb40]
    or a
    jr z, jr_01b_5796

    ld a, [$cb41]
    ld e, a
    ld a, [$cb42]
    ld d, a

jr_01b_5751:
    ld hl, $cb45
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$cb45], a
    ld a, h
    ld [$cb46], a
    ld a, [$cb49]
    ld e, a
    ld a, [$cb4a]
    ld d, a
    add hl, de
    ld a, l
    ld [$cb49], a
    ld a, h
    ld [$cb4a], a
    ld a, [$cb43]
    ld e, a
    ld a, [$cb44]
    ld d, a
    ld hl, $cb47
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$cb47], a
    ld a, h
    ld [$cb48], a
    ld a, [$cb4b]
    ld e, a
    ld a, [$cb4c]
    ld d, a
    ld hl, $cb4d
    call Call_01b_4209

jr_01b_5796:
    ret


    ld a, [$c801]
    call Call_000_01a7
    ld a, $0f
    call Call_000_01a4
    ld [$c801], a
    ld a, $e1
    ld [$c80d], a
    ld hl, $6067
    call Call_01b_41e5
    ld a, $44
    ld de, $8800
    call Call_000_020d
    ld hl, $5ac5
    ld bc, $03c0
    ld de, $88b0
    call Call_000_0183
    ret


    ld a, $01
    ld [$cb50], a
    ld [$d161], a
    ld a, $80
    ld [$cb43], a
    ld a, $00
    ld [$cb44], a
    ld a, $01
    ld [$cb40], a
    ld [$cb51], a
    ret


    ld a, [$cb48]
    cp $d8
    jr nc, jr_01b_57f2

    cp $30
    jr c, jr_01b_57f2

    ld hl, $cb43
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


jr_01b_57f2:
    jp Jump_01b_4300


    ld a, $80
    call Call_01b_51e4
    ld a, $60
    ldh [rWY], a
    ld a, $1b
    ld [$c80b], a
    ld [$c804], a
    ld a, $31
    call Call_01b_51e4
    xor a
    jp Jump_01b_51e4


    ld de, $5e8f
    call Call_01b_58fd
    ld a, $3c
    call Call_01b_51e4
    xor a
    jp Jump_01b_51e4


    ld de, $5e85
    jp Jump_01b_58fd


    ld de, $5e8a
    jp Jump_01b_58fd


    ld de, $5ea2
    jp Jump_01b_58fd


    ld de, $60c9

jr_01b_5833:
    ld a, [$cb48]
    ldh [$ff8a], a
    ld a, [$cb4a]
    ldh [$ff8b], a
    ld b, $1b
    call Call_000_02d6
    ret


    ld de, $6127
    jr jr_01b_5833

jr_01b_5848:
    cp $60
    jr c, jr_01b_5848

    ldh a, [rLY]
    cp $78
    jr nc, jr_01b_5848

    ld hl, $60a7
    jp Jump_01b_41e5


    rst $08
    dec h
    ret


    ld a, $34
    ld [$cb41], a
    ld a, $00
    ld [$cb42], a
    ld hl, $cb43
    ld de, $5712
    call Call_000_017a
    ld de, $5ea8
    jp Jump_01b_58fd


    ld a, [$cb4a]
    cp $47
    jr nc, jr_01b_587e

    jp Jump_01b_4300


jr_01b_587e:
    ld a, $47
    ld [$cb4a], a
    ld a, $00
    ld [$cb45], a
    ld a, $00
    ld [$cb46], a
    ld a, $00
    ld [$cb41], a
    ld a, $00
    ld [$cb42], a
    ld de, $5ead
    jp Jump_01b_58fd


    ld de, $5eb2
    jp Jump_01b_58fd


    ld de, $5eb7
    jp Jump_01b_58fd


    ld de, $5ebd
    jp Jump_01b_58fd


    ld de, $5ec2
    jp Jump_01b_58fd


    xor a
    ld [$cb50], a
    ret


    ld de, $5ed5
    jp Jump_01b_58fd


    ld de, $5eda
    jp Jump_01b_58fd


    xor a
    ld [$cb50], a
    ld a, $40
    ld [$cb43], a
    ld a, $ff
    ld [$cb44], a
    ret


    ld a, [$cb48]
    cp $e0
    jr nc, jr_01b_58eb

    cp $d8
    jr c, jr_01b_58eb

    ld a, $00
    ld [$cb43], a
    ld a, $00
    ld [$cb44], a
    ret


jr_01b_58eb:
    jp Jump_01b_4300


    xor a
    ld [$c806], a
    ld b, $ff
    ld e, $ff
    ld d, $ff
    ld c, $0c
    jp Jump_01b_41bb


Call_01b_58fd:
Jump_01b_58fd:
    ld a, e
    ld [$cb4b], a
    ld a, d
    ld [$cb4c], a
    ld hl, $cb4d
    jp Jump_01b_4202


Call_01b_590b:
    ld a, [$cb52]
    or a
    call nz, Call_01b_5993
    ld a, [$cb5b]
    or a
    call nz, Call_01b_5a9d
    ld a, [$cb64]
    or a
    call nz, Call_01b_5aa9
    ld a, [$cb40]
    or a
    ret z

    ld a, [$cb48]
    ldh [$ff9b], a
    ld a, [$cb4a]
    ldh [$ff9c], a
    xor a
    ldh [$ffab], a
    ld a, [$cb50]
    or a
    jr z, jr_01b_593a

    ld a, $20

jr_01b_593a:
    ld [$d3ea], a
    ld a, $80
    ldh [$ffac], a
    ld a, [$cb4d]
    ld hl, $5eea
    call Call_000_016e
    ld c, l
    ld b, h
    jp Jump_000_02be


    ld a, $f0
    ld [$cb58], a
    ld a, $34
    ld [$cb5a], a
    ld a, $01
    ld [$cb52], a
    rst $08
    ld d, c
    ret


Call_01b_5961:
    ld a, [$cb52]
    or a
    ret z

    ld hl, $cb57
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0200
    add hl, de
    ld a, l
    ld [$cb57], a
    ld a, h
    ld [$cb58], a
    ld hl, $cb59
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, l
    ld [$cb59], a
    ld a, h
    ld [$cb5a], a
    ld a, h
    cp $70
    ret c

    xor a
    ld [$cb52], a
    ret


Call_01b_5993:
    ld a, [$cb58]
    ldh [$ff9b], a
    ld a, [$cb5a]
    ldh [$ff9c], a
    xor a
    ldh [$ffab], a
    ld a, $00
    ld [$d3ea], a
    ld a, $80
    ldh [$ffac], a
    ld bc, $6024
    jp Jump_000_02be


    ld de, $571a
    jr jr_01b_59b7

    ld de, $5716

jr_01b_59b7:
    ld hl, $cb5c
    call Call_000_017a
    ld a, $f6
    ld hl, $cb48
    add [hl]
    ld [$cb61], a
    ld e, a
    ld a, $10
    ld hl, $cb4a
    add [hl]
    ld [$cb63], a
    ld d, a
    ld a, $01
    ld [$cb5b], a
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    ret


Call_01b_59de:
    ld a, [$cb5b]
    or a
    ret z

    ld hl, $cb60
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cb5c]
    ld e, a
    ld a, [$cb5d]
    ld d, a
    add hl, de
    ld a, l
    ld [$cb60], a
    ld a, h
    ld [$cb61], a
    ld hl, $cb5e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0034
    add hl, de
    ld a, l
    ld [$cb5e], a
    ld a, h
    ld [$cb5f], a
    ld a, [$cb62]
    ld e, a
    ld a, [$cb63]
    ld d, a
    add hl, de
    ld a, l
    ld [$cb62], a
    ld a, h
    ld [$cb63], a
    ld a, h
    cp $70
    ret c

    xor a
    ld [$cb5b], a
    ret


    ld de, $5722
    jr jr_01b_5a2e

    ld de, $571e

jr_01b_5a2e:
    ld hl, $cb65
    call Call_000_017a
    ld a, $0a
    ld hl, $cb48
    add [hl]
    ld [$cb6a], a
    ld e, a
    ld a, $10
    ld hl, $cb4a
    add [hl]
    ld [$cb6c], a
    ld d, a
    ld a, $01
    ld [$cb64], a
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    ret


Call_01b_5a55:
    ld a, [$cb64]
    or a
    ret z

    ld hl, $cb69
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cb65]
    ld e, a
    ld a, [$cb66]
    ld d, a
    add hl, de
    ld a, l
    ld [$cb69], a
    ld a, h
    ld [$cb6a], a
    ld hl, $cb67
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0034
    add hl, de
    ld a, l
    ld [$cb67], a
    ld a, h
    ld [$cb68], a
    ld a, [$cb6b]
    ld e, a
    ld a, [$cb6c]
    ld d, a
    add hl, de
    ld a, l
    ld [$cb6b], a
    ld a, h
    ld [$cb6c], a
    ld a, h
    cp $70
    ret c

    xor a
    ld [$cb64], a
    ret


Call_01b_5a9d:
    ld a, [$cb61]
    ldh [$ff9b], a
    ld a, [$cb63]
    ldh [$ff9c], a
    jr jr_01b_5ab3

Call_01b_5aa9:
    ld a, [$cb6a]
    ldh [$ff9b], a
    ld a, [$cb6c]
    ldh [$ff9c], a

jr_01b_5ab3:
    xor a
    ldh [$ffab], a
    ld a, $00
    ld [$d3ea], a
    ld a, $80
    ldh [$ffac], a
    ld bc, $602d
    jp Jump_000_02be


    nop
    nop
    nop
    nop
    ld bc, $1e01
    dec de
    inc a
    daa
    ld a, b
    ld b, a
    ld a, b
    ld h, a
    ldh a, [$ff8f]
    ld bc, $0601
    rlca
    rst $38
    rst $38
    rrca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    or $f8
    ld hl, sp+$76
    adc [hl]
    db $fd
    inc bc
    cp $c1
    cp $21
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    stop
    nop
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

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, l
    ld c, a
    ld hl, sp-$71
    ld [hl], d
    ld e, a
    ccf
    inc l
    rra
    jr jr_01b_5b2f

    rla
    inc c
    rrca
    rlca
    rlca
    call $e1f7
    rst $38
    ld bc, $c7ff
    ld a, [hl]
    rst $20
    inc a
    xor $b9
    ld e, c
    rst $38
    rst $38
    rst $38
    cp $21
    cp $c1
    db $fc
    inc sp
    cp $1f
    ei
    rrca

jr_01b_5b2f:
    ld sp, hl
    rrca
    ld [$ffff], sp
    rst $38
    ld h, b
    ldh [$ff78], a
    ld hl, sp+$6c
    db $fc
    db $e4
    db $fc
    ldh [c], a
    cp $7a
    or $66
    cp $fc
    db $fc
    ld [hl], l
    ld c, a
    ld hl, sp-$71
    ld [hl], d
    ld e, a
    ccf
    inc l
    rra
    jr jr_01b_5b6f

    rla
    inc c
    rrca
    rlca
    rlca
    dec c
    rst $30
    pop hl
    rst $38
    ld bc, $c7ff
    ld a, [hl]
    rst $20
    inc a
    xor $b9
    ld e, c
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    ld [bc], a
    rrca
    dec c
    ld e, $15
    inc e
    inc de

jr_01b_5b6f:
    inc a
    inc hl
    inc e
    inc de
    inc a
    inc hl
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, l
    add a
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    or $0d
    rst $30
    add b
    add b
    ret nz

    ld b, b
    ldh a, [rSVBK]
    db $ec
    inc a
    ei
    daa
    db $fc
    ld b, e
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    nop
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
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    inc e
    inc de
    ld e, $13
    ld c, $09
    ld b, $07
    inc bc
    inc bc
    rrca

jr_01b_5bb0:
    inc c
    db $10

jr_01b_5bb2:
    rra
    ld hl, $053f
    ei
    add c
    rst $38
    pop bc
    rst $38
    or e
    rst $38
    rst $30
    rrca
    rst $38
    sbc h
    pop hl
    cp $c3
    cp $cf
    ld hl, sp-$19
    sbc h
    rst $30
    adc h
    rst $30
    adc h
    rst $38
    ld [$18ef], sp
    sbc [hl]
    ld a, c
    ld a, b
    rst $28
    sub b
    ld [hl], b
    ret nc

    jr nc, jr_01b_5bb2

    jr c, jr_01b_5bb0

    inc a
    jp nc, $913e

    ld a, a
    dec h
    ei
    db $fd
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
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
    nop
    nop
    ret nz

    ret nz

    rlca
    ld b, $0f
    add hl, bc
    ld e, $11
    ld e, $19
    dec a
    inc hl
    rra
    inc de
    ld a, $23
    inc e
    rla
    add e
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc hl
    db $fd
    ld [hl], e
    db $fd
    jr c, @+$01

    add b
    rst $38
    ldh a, [$ff30]
    ld hl, sp+$08
    cp $06
    db $fd
    rrca
    cp $85

jr_01b_5c2f:
    ld a, a
    ret z

    ld a, a
    ld hl, sp+$6f
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    and b
    ld h, b
    rrca
    dec bc
    rlca
    ld b, $03
    inc bc
    ld [bc], a
    inc bc

jr_01b_5c4d:
    rlca
    dec b
    rrca
    ld [$1f10], sp
    ld hl, $f13f
    rra
    ld sp, hl
    rrca
    ei
    rst $28
    rst $30
    rst $38
    rrca
    db $fc
    rst $38
    ld hl, sp-$5f
    cp [hl]
    ld b, e
    ld a, a
    rst $30
    call z, $ccf7
    rst $30
    adc h
    rst $28
    jr jr_01b_5c4d

    jr nc, jr_01b_5c2f

    ld [hl], b
    sub $f9
    ld [$00ff], sp
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ccf
    dec [hl]
    ld a, a
    ld d, c
    ld a, h
    ld b, a
    ld hl, sp-$71
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rst $28
    db $ec
    rra
    ldh a, [rIF]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nc

    ld d, b
    add sp, $78
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld a, [bc]
    rrca
    ld [$0c0f], sp
    rrca
    dec b
    rlca
    inc bc
    ld [bc], a
    ld bc, $f001
    rst $08
    ld hl, sp-$71
    ld sp, hl
    sbc a
    ei
    rst $18
    pop af
    rst $18
    db $e4
    ld a, a
    rst $38
    jr c, @+$01

    db $10
    rra
    ldh [$ffdf], a
    ldh [$ff9f], a
    db $ec
    adc e
    cp $c3
    cp $03
    rst $38
    adc a
    rst $38
    rst $08
    ld a, [hl]
    call c, $d27c
    ld a, [hl]
    ret


    ld a, a
    pop bc
    rst $38
    ldh [c], a
    cp $fc
    sbc h
    ld hl, sp+$08
    ldh a, [rNR10]
    rst $38
    sbc a
    ld [hl], a
    ld e, a
    scf
    ccf
    jr z, jr_01b_5d2c

    ccf
    cpl
    dec a
    ld l, $5f
    ld l, h
    ld a, e
    ld c, h
    db $db
    ld a, h
    sub a
    ld hl, sp+$3e
    pop hl
    ld a, a
    pop bc
    rst $38
    add c
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ldh [rNR41], a
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
    nop
    nop
    nop
    nop
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld e, l
    ld l, [hl]
    ccf
    ccf
    dec de
    rra
    ld [de], a
    rra
    rra
    rra
    nop
    nop
    cp $02
    ld sp, hl
    rlca
    adc $3e
    db $fc

jr_01b_5d2c:
    db $fc
    inc c
    db $fc
    call nz, $fc3c
    db $fc
    nop
    nop
    rrca
    add hl, bc
    rlca
    dec b
    inc bc
    inc bc
    rlca
    ld b, $1b
    inc e
    cpl
    inc sp
    ccf
    ccf
    ld e, a
    ld h, a
    db $fd
    rst $30
    ld a, c
    rst $38
    ld [hl], e
    cp $87
    db $fc
    ld a, a
    ld hl, sp-$21
    ldh [rIE], a
    ldh [$ffef], a
    ldh a, [$ffbe]
    jp nz, $847c

    add sp, $18
    ldh a, [rNR10]
    ret c

    jr c, @-$02

    inc b
    db $f4
    inc c
    db $fc
    inc c
    ld [hl], e
    ld a, a
    add hl, sp
    ccf
    dec e
    rra
    dec c
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [$ff8b]
    adc h
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
    jp c, $723e

    cp $e4
    db $fc
    db $e4
    sbc h
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    nop
    jr c, jr_01b_5dcf

    ld [hl], a
    ld c, a
    ld e, [hl]
    ld h, c
    dec sp
    inc a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01b_5ddf

    ld [hl], h
    ld c, h
    db $fc
    sbc h
    or h
    db $ec
    xor d
    or $77
    ld a, a
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld c, $0f
    rrca
    ld c, $1c
    rra
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
    add b
    add b

jr_01b_5dcf:
    add b
    add b
    adc [hl]
    adc [hl]
    rra
    rra
    nop
    nop
    ld bc, $0301

jr_01b_5dda:
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b

jr_01b_5ddf:
    rlca
    ld b, $07
    inc b
    rlca
    inc b
    ld d, c
    ld d, c
    ld a, [$ffab]
    adc a
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add $7f
    call z, $95ff
    rst $38
    ld a, [hl]
    xor e
    rst $38
    ld h, c
    rst $38

jr_01b_5dfc:
    add e
    ld a, a
    add c
    rst $38
    ld bc, $02ff
    rst $38
    ld h, d
    cp l
    cp a
    ld a, e
    db $fd
    ld [hl], $fa
    cp h
    ld a, h
    call c, $d83c
    jr c, jr_01b_5dda

    jr c, jr_01b_5dfc

    jr jr_01b_5e19

    ld [bc], a
    inc bc
    ld [bc], a

jr_01b_5e19:
    ld bc, $0101
    ld bc, $0607
    dec de
    inc e
    ld a, a
    ld a, b
    add [hl]
    db $fd
    call c, $8eff
    rst $38
    jr nz, @+$01

    db $fc
    rst $00
    cp $83
    cp $fb
    cp h
    rst $38
    or c
    rst $38
    ld e, a
    db $f4
    rra
    db $f4
    rra
    ld hl, sp+$6d
    ldh a, [c]
    ld e, d
    rst $20
    cp e
    rst $00
    db $f4
    adc h
    ld [hl], h
    adc h
    or h
    ld c, h
    call nz, $bc7c
    ld a, h
    ld h, b
    ldh [$ff80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    sbc d
    cp $74
    ld a, h
    jr jr_01b_5e75

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld a, a
    dec sp
    ld a, [hl-]
    rlca
    dec b
    rrca
    rrca
    ld [$060f], sp
    rlca
    ld bc, $0001
    nop

jr_01b_5e75:
    add sp, $18
    add sp, $78
    sub b
    ldh a, [$ff30]
    ldh a, [rOBP0]
    ld hl, sp+$28
    ld hl, sp+$30
    ldh a, [$ffc0]
    ret nz

    ld [$f05e], a
    nop
    rst $38
    ld [$f05e], a
    ld bc, $eaff
    ld e, [hl]
    inc a
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    rst $38
    ld [$0c5e], a
    nop
    ld bc, $eaff
    ld e, [hl]
    ld [$0100], sp
    rst $38
    ld [$f05e], a
    ld a, [bc]
    rst $38
    ld [$785e], a
    ld [bc], a
    rst $38
    ld [$785e], a
    inc b
    rst $38
    ld [$0c5e], a
    inc b
    dec b
    rst $38
    ld [$f05e], a
    inc b
    rst $38
    ld [$0c5e], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    ld [$785e], a
    ld b, $ff
    ld [$0c5e], a
    ld b, $07
    rst $38
    ld [$f05e], a
    ld [$eaff], sp
    ld e, [hl]
    ldh a, [$ff09]
    rst $38
    nop
    ld e, a
    add hl, de
    ld e, a
    ld [hl-], a
    ld e, a
    ld d, e
    ld e, a
    ld [hl], h
    ld e, a
    sub l
    ld e, a
    cp [hl]
    ld e, a
    rst $28
    ld e, a
    inc h
    ld h, b
    dec l
    ld h, b
    ld [hl-], a
    ld h, b
    ld hl, sp-$0c
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    add b
    ld hl, sp-$0d
    ld b, $10
    nop
    ld [$1007], sp
    nop
    ld [$1002], sp
    ld [$08f0], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    add b
    ld a, [$0bef]
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$0fe8], sp
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    add b
    ld a, [$0bef]
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$13e8], sp
    stop
    ld [$1014], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    add b
    ld sp, hl
    rst $28
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$19e8], sp
    stop
    ld [$101a], sp
    nop
    ld [$101b], sp
    nop
    ld [$101c], sp
    add b
    pop af
    rst $30
    dec e
    stop
    ld [$101e], sp
    ld [$1ff0], sp
    stop
    ld [$1020], sp
    nop
    ld [$1021], sp
    nop
    ld [$1022], sp
    ld [$23e8], sp
    stop
    ld [$1024], sp
    nop
    ld [$1025], sp
    nop
    ld [$101c], sp
    add b
    db $eb
    ld hl, sp+$26
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    ld [$29e8], sp
    stop
    ld [$102a], sp
    nop
    ld [$102b], sp
    nop
    ld [$102c], sp
    ld [$2df0], sp
    stop
    ld [$102e], sp
    nop
    ld [$102f], sp
    ld [$30f0], sp
    stop
    ld [$1031], sp
    add b
    jp hl


    ld hl, sp+$26
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    ld [$29e8], sp
    stop
    ld [$102a], sp
    nop
    ld [$102b], sp
    nop
    ld [$102c], sp
    ld [$32ec], sp
    stop
    ld [$1033], sp
    nop
    ld [$1034], sp
    ld [$35f0], sp
    stop
    ld [$1036], sp
    nop
    ld [$1037], sp
    add b
    or $f8
    jr c, @+$12

    rst $38
    ld [$7038], sp
    add b
    ld a, [$39fc]
    db $10
    add b
    db $eb
    ei
    ld a, [hl-]
    stop
    ld [$103b], sp
    ld [$3ce8], sp
    stop
    ld [$103d], sp
    nop
    ld [$103e], sp
    nop
    ld [$103f], sp
    ld [$40e8], sp
    stop
    ld [$1041], sp
    nop
    ld [$1042], sp
    nop
    ld [$1043], sp
    ld [$44e8], sp
    stop
    ld [$1045], sp
    nop
    ld [$1046], sp
    add b
    inc d
    sbc b
    inc c
    dec b
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    daa
    jr z, jr_01b_609d

    ld a, [hl+]
    ccf
    ccf
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    dec hl
    inc l
    inc bc
    inc bc
    dec l
    ld l, $40
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cpl
    jr nc, @+$05

    inc bc
    ld sp, $0232
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01b_609d

    ld [bc], a
    ld [bc], a

jr_01b_609d:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $02
    add hl, de
    sbc b
    ld b, $05
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
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
    jr jr_01b_6104

    dec d
    inc c
    nop
    inc e

jr_01b_6104:
    ldh a, [rP1]
    nop
    ldh [rP1], a
    db $e4
    ldh a, [rP1]
    db $e4
    stop
    nop
    jr nz, jr_01b_6116

    inc e
    stop
    inc hl

jr_01b_6116:
    db $ec
    nop
    nop
    ret c

    nop
    db $dd
    db $ec
    nop
    db $dd
    inc d
    nop
    nop
    jr z, @+$16

    inc hl
    inc d
    cp $04
    ld bc, $b880
    ld a, [bc]
    inc d
    or h
    or $14
    inc a
    ld [de], a
    db $10
    ld e, d
    db $ec
    ld a, [bc]
    ld [$1507], sp
    ld [$14f9], sp
    ld [$0e14], sp
    ld [$11f0], sp
    ld [$100e], sp
    cp $cd
    inc c
    ld b, e
    call Call_01b_4197
    ld de, $8e60
    call Call_000_025b
    ld a, $11
    call Call_000_01cb
    ld hl, $6174
    call Call_01b_41e5
    rst $28
    ld l, $06
    dec de
    ld e, $1c
    ld d, $d0
    ld c, $06
    call Call_01b_41bb
    call Call_01b_41d5
    rst $28
    rra

jr_01b_616f:
    call Call_000_01c5
    jr jr_01b_616f

    nop
    sbc b
    inc d
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld sp, hl
    db $ed
    and $f3
    ldh a, [rSC]
    cp $f4
    ld a, [$0202]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $eb
    db $f4
    rst $30
    ld [bc], a
    push af
    pop af
    and $fe
    xor $f3
    db $ec
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    ccf
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc a
    inc bc
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    ccf
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    dec sp
    dec [hl]
    inc bc
    inc bc
    ld b, b
    inc bc
    dec sp
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    inc a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    ld b, b
    ccf
    inc bc
    inc a
    inc bc
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    inc bc
    ccf
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    inc bc
    inc a
    inc bc
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    push af
    rst $30
    ld [$eaf8], a
    di
    ld sp, hl
    ld [$02e9], a
    rst $20
    cp $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add sp, -$1a
    push af
    add sp, -$0c
    ldh a, [c]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_01b_62e0:
    rst $28
    ld l, $06
    rst $38
    ld e, $ff
    ld d, $ff
    ld c, $06
    call Call_01b_4191
    rst $08
    nop
    rst $08
    ld [hl], d
    ld hl, $c900
    ld bc, $0011
    xor a
    call Call_000_0174
    call Call_000_019b
    ld a, $28
    call Call_000_01a4
    ld [$c900], a
    ld hl, $c901
    call Call_01b_40fb
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld a, $e7
    ld [$de87], a
    ld a, $98
    ld [$de9e], a
    ld hl, $66e7
    ld de, $9000
    ld bc, $0620
    call Call_000_0183
    ld hl, $6d07
    ld de, $9800
    call Call_01b_64c3
    ld hl, $6e71
    ld de, $8000
    ld bc, $0200
    call Call_000_0183
    call Call_01b_7071

jr_01b_6341:
    call Call_01b_635c
    jr c, jr_01b_6348

    jr jr_01b_6341

jr_01b_6348:
    ld b, $00
    ld e, $00
    ld d, $00
    ld c, $0c
    call Call_01b_41bb
    call Call_01b_64e4
    ld b, $04
    call Call_000_023a
    ret


Call_01b_635c:
    call Call_000_01c5
    call Call_000_01c8
    call Call_000_01d1
    ld a, [$c900]
    call Call_000_019e
    ld hl, $c901
    ld de, $6548
    call Call_01b_40e5
    ret c

    call Call_01b_63c6
    call Call_01b_70ba
    call Call_01b_63f2
    or a
    ret


    ld b, $ff
    ld e, $1c
    ld d, $d0
    ld c, $0c
    call Call_01b_41bb
    ret


    ld b, $5b
    ld e, $1c
    ld d, $d0
    ld c, $0c
    call Call_01b_41bb
    ret


    rst $28
    daa
    ret


    ld b, $00
    ld e, $00
    ld d, $00
    ld c, $0c
    call Call_01b_41bb
    ret


    ld a, $1b
    ld [$de96], a
    xor a
    ld [$c90f], a
    ld b, $00
    ld e, $d0
    ld d, $d0
    ld c, $10
    call Call_01b_41bb
    ret


    ld a, $01
    ld [$c90f], a
    xor a
    ld [$c910], a
    ret


Call_01b_63c6:
    ld a, [$c90f]
    or a
    ret z

    ld hl, $c910
    ld a, [hl]
    inc [hl]
    and $04
    ld a, $5b
    jr z, jr_01b_63d8

    ld a, $1b

jr_01b_63d8:
    ld [$de96], a
    ret


    ld a, $01
    ld [$c903], a
    ld hl, $c90c
    call Call_01b_4202
    ld a, $c0
    ld [$c904], a
    ld a, $01
    ld [$c905], a
    ret


Call_01b_63f2:
    ld a, [$c903]
    or a
    ret z

    cp $02
    jp z, Jump_01b_64aa

    ld hl, $c90c
    ld de, $65e1
    call Call_01b_4209
    ld a, [$c90c]
    ld hl, $660f
    call Call_000_016e
    ld a, l
    ld [$ce53], a
    ld a, h
    ld [$ce54], a
    ld de, $0050
    ld hl, $c90a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c90a], a
    ld a, h
    ld [$c90b], a
    ld hl, $c904
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fffc
    add hl, de
    bit 7, h
    jr z, jr_01b_6444

    ld hl, $c90c
    call Call_01b_4202
    ld a, $02
    ld [$c903], a
    ld hl, $0000

jr_01b_6444:
    ld a, l
    ld [$c904], a
    ld a, h
    ld [$c905], a
    ld hl, $c906
    inc [hl]
    ld a, [hl]
    cp $20
    jr c, jr_01b_6458

    sub $20
    ld [hl], a

jr_01b_6458:
    ld b, $04
    ld c, $00

jr_01b_645c:
    push bc
    ld a, [$c906]
    add c
    cp $20
    jr c, jr_01b_6467

    sub $20

jr_01b_6467:
    ld hl, $659a
    call Call_000_016e
    push hl
    ld a, l
    call Call_01b_6496
    ld a, e
    add $50
    ldh [$ff9b], a
    pop hl
    ld a, h
    call Call_01b_6496
    ld a, [$c90b]
    add e
    ldh [$ff9c], a
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    call Call_01b_64f4
    pop bc
    ld a, c
    add $08
    ld c, a
    dec b
    jr nz, jr_01b_645c

    ret


Call_01b_6496:
    ld e, a
    ld d, $00
    bit 7, e
    jr z, jr_01b_649e

    dec d

jr_01b_649e:
    ld a, [$c904]
    ld c, a
    ld a, [$c905]
    ld b, a
    call Call_01b_6524
    ret


Jump_01b_64aa:
    ld hl, $c90c
    ld de, $65f0
    call Call_01b_4209
    ret c

    ld a, [$c90c]
    ld hl, $660f
    call Call_000_016e
    ld c, l
    ld b, h
    call Call_01b_64f4
    ret


Call_01b_64c3:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_01b_64c7:
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
    jr nz, jr_01b_64c7

    ret


Call_01b_64e4:
jr_01b_64e4:
    ld a, [$cca8]
    and $07
    jp z, Jump_000_01c5

    call Call_000_01c5
    jr jr_01b_64e4

    call Call_000_019e

Call_01b_64f4:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_01b_64fe:
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
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_01b_64fe

Call_01b_6524:
    bit 7, d
    push af
    jr z, jr_01b_6533

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_01b_6533

    inc d

jr_01b_6533:
    call Call_01b_6542
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


Call_01b_6542:
    call Call_000_0285
    ld d, c
    ld e, h
    ret


    ld bc, $0000
    ld bc, $6398
    ldh a, [$ff80]
    ld h, e
    ld [$7273], sp
    ld a, b
    adc h
    ld h, e
    ld [$7279], sp
    inc a
    cp h
    ld h, e
    ld e, $e3
    ld [hl], c
    ld e, $53
    ld [hl], c
    ld bc, $70c4
    adc h
    call c, Call_000_3c63
    and a
    ld h, e
    ld e, $9b
    ld h, e
    cp $24
    jr z, @+$2c

    ld a, b
    sub [hl]
    inc a
    adc [hl]
    sbc h
    ld a, b
    jr nz, jr_01b_6583

    ld e, b
    adc b
    xor b
    jr jr_01b_65f0

    ld l, h
    ld b, d
    ld [hl], b

jr_01b_6583:
    ld [hl], h
    inc [hl]
    adc b
    inc e
    cp d
    add b
    rlca
    ldh [rTMA], a
    ld h, b
    ld b, $80
    ld [$07e0], sp
    ld h, b
    rlca
    add b
    ld a, [bc]
    ldh [$ff09], a
    ld h, b
    add hl, bc
    nop
    dec b
    ld [$0f05], sp
    inc b
    dec d
    inc b
    dec de
    inc bc
    ld e, $02
    jr nz, @+$04

    ld hl, $2001
    nop
    ld e, $ff
    dec de
    rst $38
    rla
    cp $13
    cp $0e
    db $fd
    add hl, bc
    db $fd
    dec b
    db $fd
    nop
    db $fd
    ei
    db $fd
    rst $30
    db $fd
    ldh a, [c]
    db $fd
    db $ed
    cp $e9
    cp $e5
    rst $38
    ldh [c], a
    rst $38
    ldh [rP1], a
    rst $18
    ld bc, $02e0
    ldh [c], a
    ld [bc], a
    push hl
    inc bc
    db $eb
    inc b
    pop af
    inc b
    ld hl, sp+$05
    rrca
    ld h, [hl]
    inc b
    nop
    ld bc, $ff02
    rrca
    ld h, [hl]
    inc b
    inc bc
    inc b
    dec b
    ld b, $03
    ld a, [bc]
    rlca
    add hl, bc
    ld [$0f03], sp
    rst $38

jr_01b_65f0:
    rrca
    ld h, [hl]
    inc b
    inc bc
    ld a, [bc]

jr_01b_65f5:
    rlca
    dec bc
    inc c
    rlca
    dec c
    ld c, $08
    dec bc
    inc c

jr_01b_65fe:
    rlca
    dec c
    ld c, $08
    dec bc
    inc c
    rlca
    dec c
    ld c, $08
    rlca
    add hl, bc
    ld [$030a], sp
    rrca
    cp $2f

jr_01b_6610:
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld d, c
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld h, e
    ld h, [hl]

jr_01b_6619:
    ld l, h
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    add a
    ld h, [hl]
    sub b

jr_01b_6622:
    ld h, [hl]
    sbc c
    ld h, [hl]
    and d
    ld h, [hl]
    or e
    ld h, [hl]
    call nz, $d566
    ld h, [hl]
    and $66
    ldh a, [$fff8]
    nop
    stop
    ld [$3000], sp
    db $10
    ld hl, sp+$00
    ld d, b
    nop
    ld [$7000], sp
    add b
    ldh a, [$fff8]
    ld [bc], a
    stop
    ld [$3002], sp
    db $10
    ld hl, sp+$02
    ld d, b
    nop
    ld [$7002], sp
    add b
    ldh a, [$fffc]
    inc b
    db $10
    stop
    inc b
    ld d, b
    add b
    ld hl, sp-$08
    ld b, $10
    nop
    rlca
    ld b, $30
    add b
    ld hl, sp-$08
    ld [$0010], sp
    rlca
    ld [$8030], sp
    ld hl, sp-$08
    ld a, [bc]
    stop
    rlca
    ld a, [bc]
    jr nc, jr_01b_65f5

    ld hl, sp-$08
    inc c
    stop
    rlca
    inc c
    jr nc, jr_01b_65fe

    ld hl, sp-$08
    ld c, $10
    nop
    rlca
    ld c, $30
    add b
    ld hl, sp-$08
    db $10
    stop
    rlca
    db $10
    jr nc, jr_01b_6610

    ld hl, sp-$08
    ld [de], a
    stop
    rlca
    ld [de], a
    jr nc, jr_01b_6619

    ld hl, sp-$08
    inc d
    stop
    rlca
    inc d
    jr nc, jr_01b_6622

    ldh a, [$fff8]
    ld d, $10
    nop

jr_01b_66a7:
    rlca
    ld d, $30
    rrca
    ld sp, hl
    ld d, $50
    nop
    rlca
    ld d, $70
    add b
    ld hl, sp-$10
    jr jr_01b_66c7

    nop
    ld [$101a], sp
    nop
    rlca
    ld a, [de]
    jr nc, jr_01b_66c0

jr_01b_66c0:
    ld [$3018], sp
    add b
    nop
    ldh a, [rNR32]

jr_01b_66c7:
    db $10
    ld hl, sp+$08
    ld e, $10
    rst $38
    rlca
    ld e, $70
    ld hl, sp+$08
    inc e
    ld [hl], b
    add b
    rst $28
    ldh a, [rNR32]
    ld d, b
    ld [$1e08], sp
    ld d, b
    ld bc, $1e07
    jr nc, jr_01b_66ea

    ld [$301c], sp
    add b
    add b
    nop
    rst $38
    nop

jr_01b_66ea:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fd
    ld a, [$faf8]
    ld hl, sp-$06
    ld hl, sp-$0f
    ldh a, [rIE]
    rst $38
    adc a
    adc a
    rla
    ld h, a
    dec bc
    inc de
    ld b, h
    jr jr_01b_66a7

    jr c, jr_01b_672e

    ld [hl], c
    call nc, $ff23
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_672e:
    rst $38
    ld a, a
    ld a, a
    sbc a
    rra
    ld l, a
    adc a
    rla
    rst $20
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
    ld hl, sp-$07
    db $f4
    pop af
    ret z

    ret nz

    cp d
    add b
    ld [hl], a
    nop
    ld h, a
    nop
    di
    nop
    add hl, de
    ldh [$ff0d], a
    ldh a, [rDIV]
    ld hl, sp-$38
    rlca
    jr nc, jr_01b_6769

    ret nz

    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    dec bc
    inc sp

jr_01b_6769:
    res 2, e
    dec b
    add hl, de
    ld h, l
    ld c, c
    ld [bc], a
    inc c
    ld [hl-], a
    and h
    ld [bc], a
    add h
    add hl, de
    jp nc, $ff00

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld [bc], a
    ld sp, hl
    ld b, $f1
    xor $e1
    jp nc, $a0cd

    sbc a
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$06f0], sp
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $80
    ld a, a
    ld b, b
    cp a
    ld h, b
    sbc a
    add b

jr_01b_67b8:
    ld a, a
    ld b, b
    ccf
    ld a, h
    inc bc
    nop
    nop
    ld de, $400e
    ccf
    add b
    ld a, a
    ld bc, $01fe

jr_01b_67c8:
    jp nz, $d219

    ld bc, $01e2
    cp $01

jr_01b_67d0:
    ld a, [hl]
    add c
    ld a, $83
    inc a
    add e
    inc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a

jr_01b_67e7:
    inc b
    di
    inc c
    db $e3
    ld [$08e7], sp
    rst $20
    jr jr_01b_67b8

    inc e
    jp $c11e


    rra
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    jr c, jr_01b_67d0

    ccf
    ret nz

    ld a, b
    add b
    db $fd
    nop
    ld hl, sp+$00
    rst $30
    nop
    ret z

    nop
    rlca
    ld [$c03f], sp
    ldh [rP1], a
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    rst $18
    nop
    daa
    nop
    pop bc
    jr nz, jr_01b_686f

    jr c, jr_01b_67c8

    ld h, b
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, [$e500]
    ld bc, $7f00
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
    rra
    ret nz

    rrca
    ldh [rIF], a
    ldh [$ff03], a
    ldh a, [rP1]
    db $f4
    ld [bc], a
    ld sp, hl
    nop
    db $fc
    nop
    cp $fe
    nop
    ld hl, sp+$00
    and $00
    add l
    db $10
    dec [hl]
    jr nc, jr_01b_67e7

    jr nc, jr_01b_6869

    db $10
    ld d, l
    add b
    nop
    inc bc

jr_01b_6869:
    adc b
    ld hl, $7104
    ld [hl], d
    ld [hl], b

jr_01b_686f:
    ld [hl], c
    ld [hl], d
    jr c, jr_01b_68e6

    sbc a
    ccf
    rst $20
    rra
    inc c
    add b
    ld [hl+], a
    db $10
    ld b, b
    inc l
    adc l
    ld e, h
    dec e
    sbc h
    add hl, sp
    sbc h
    ldh a, [c]
    ld hl, sp-$32
    ldh a, [$ff09]
    ld de, $6115
    adc c
    dec b
    ld l, c
    dec e
    ld a, c
    dec a
    dec [hl]
    ld a, c
    di
    ld a, e
    ld [hl], e
    ei
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [hl+]
    ld b, b
    sub d
    and b
    call nz, $e4d8
    xor $f2
    rst $30
    ld sp, hl
    ei
    db $fc
    db $fd
    cp $fe
    cp h
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ld a, a
    ld e, [hl]
    inc a
    cpl
    rra
    ld b, a
    adc a
    pop de
    jp $e048


    ld a, d
    db $fc
    ld sp, hl
    db $fc
    ld hl, sp-$43
    or e
    ld a, c
    jp hl


    di
    rst $00
    db $e3
    db $10
    add a
    add hl, hl

jr_01b_68e6:
    ld b, $eb
    di
    rst $20
    rst $30
    rst $10
    rst $20
    rst $08
    rst $28
    xor a
    rst $08
    ld e, a
    sbc a
    cp a
    ccf
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
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
    ret nz

    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and h
    ld [hl], e
    jr nc, jr_01b_69d3

    inc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld e, a
    ccf
    cpl
    rra
    ld d, h
    adc b
    ld hl, $011d
    db $fd
    pop hl
    db $fd
    pop hl
    db $fd
    push hl
    ld sp, hl
    push bc
    ld sp, hl
    add hl, bc
    pop af
    jr @+$01

    inc e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    db $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    ld a, a
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    cp $fe

jr_01b_69d3:
    cp $fe
    db $fc
    db $fd
    nop
    nop
    ld [hl], b
    rrca
    ld h, b
    rra
    jr nz, jr_01b_69fe

    ld d, b
    rrca
    ld [$84a7], sp
    db $d3
    set 4, b
    ld bc, $7d01
    add c
    dec a
    pop bc
    add hl, sp
    pop bc
    dec [hl]
    pop bc
    ld l, c
    add c
    ret nz

    ld d, $a6
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_69fe:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $ff
    cp $ff
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
    jr nc, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    add b
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
    nop
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ccf
    rst $38
    rra
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
    db $fc
    db $fd
    pop af
    pop af
    jp hl


    db $e3
    push bc
    reti


    add d
    cp h
    ld bc, $817e
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ret nz

    ldh a, [$ffdb]
    db $e3
    sub a
    rst $20
    scf
    rst $00
    cpl
    ld c, a
    ld l, a
    rrca
    sbc a
    rra
    sbc a
    rra
    rrca
    rra
    cp a
    adc a
    rst $10
    rst $08
    db $eb
    rst $20
    db $ed
    db $e3
    or $f0
    ld a, [$f9f8]
    ld hl, sp+$3f
    cp a
    adc a
    rst $08
    rst $10
    rst $00
    xor e
    sub e
    ld b, l
    add hl, sp
    add d
    ld a, h
    add c
    ld a, [hl]
    add b
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    ld hl, sp-$01
    ldh a, [rIE]
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    ld bc, $00ff
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
    rlca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f4f9]
    di
    ldh a, [$fff7]
    add sp, -$19
    ret nc

    rst $08
    ret nc

    rst $08
    and b
    sbc a
    and b
    sbc a
    sbc a
    rra
    ld e, a
    sbc a
    ld e, a
    sbc a
    ld e, a
    sbc a
    ld e, a
    sbc a
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
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
    cp $fe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld e, a
    sbc a
    cpl
    rst $08
    rrca
    rst $28
    rla
    rst $20
    dec bc
    di
    inc bc
    ei
    dec b
    ld sp, hl
    ld [bc], a
    db $fc
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    db $fc
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
    ret nz

    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fc
    db $fd
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp+$40
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add c
    nop
    ld b, [hl]
    jr c, @+$03

    cp $01
    cp $01
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff3f]
    ret nz

    ld a, a
    nop
    cp [hl]
    nop
    rst $18
    rra
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld h, b
    rra
    ld h, b
    rra
    ld [hl], b
    rrca
    cp b
    add a
    cp l
    add d
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $20
    ret nz

    sbc a
    nop
    ld bc, $ff7e
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    ccf
    cp a
    ccf
    rra
    rra
    rst $18
    rra
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rra
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
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
    db $f4
    di
    add sp, -$19
    ret nc

    rst $08
    ret nz

    rst $18
    and b
    sbc a
    or b
    adc a
    call c, $e0c3
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [rP1]
    nop
    ld a, [hl]
    add b
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, l
    add c
    di
    inc bc
    adc a
    rrca
    ld a, a
    ld a, a
    ret c

    rst $00
    ret nc

    rst $08
    ret nc

    rst $08
    ret c

    rst $00
    xor $e1
    di
    ldh a, [$fffc]
    db $fc
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
    ret nz

    ccf
    ld a, h
    inc bc
    add b
    add b
    ld l, a
    adc a
    rla
    rst $20
    dec bc
    di
    dec b
    ld sp, hl
    ld bc, $02fd
    db $fc
    ld b, $f8
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    inc d
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_01b_6dcd

    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01b_6deb

    nop
    nop
    nop

jr_01b_6dcd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01b_6dde

    add hl, hl

jr_01b_6dde:
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
    nop
    dec hl
    inc l

jr_01b_6deb:
    dec l
    ld bc, $2f2e
    jr nc, jr_01b_6e22

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_01b_6e01

    add hl, sp

jr_01b_6e01:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ccf
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld bc, $0046
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld bc, $4b01
    ld c, h
    nop
    nop
    nop
    nop

jr_01b_6e22:
    nop
    nop
    nop
    ld c, l
    ld bc, $4f4e
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld bc, $4156
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld bc, $5c01
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    add hl, bc
    ld c, $13
    inc e
    rla
    jr @+$29

    jr c, @+$31

    jr nc, @+$31

    jr nc, jr_01b_6ed1

    ld [hl], b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    sbc a
    ldh [$ffbf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $05
    ld b, $0b
    inc c
    dec bc
    inc c
    rla
    jr jr_01b_6ebb

    jr jr_01b_6ebd

    jr jr_01b_6ebf

    jr jr_01b_6ed9

    jr nc, jr_01b_6edb

    jr nc, @+$31

    jr nc, jr_01b_6edf

    jr nc, jr_01b_6eb2

jr_01b_6eb2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_6ed3

jr_01b_6ebb:
    inc h
    inc a

jr_01b_6ebd:
    inc h
    inc a

jr_01b_6ebf:
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    cp l
    jp $c3bd


    cp l
    jp $c3bd


    cp l
    jp $c3bd


jr_01b_6ed1:
    nop
    nop

jr_01b_6ed3:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6ed9:
    nop
    nop

jr_01b_6edb:
    ld bc, $0201
    inc bc

jr_01b_6edf:
    dec b
    ld b, $02
    inc bc
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
    inc c
    dec bc
    inc c
    inc b
    rlca
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
    rlca
    rlca
    jr jr_01b_6f38

    rla
    jr @+$31

    jr nc, jr_01b_6f4d

    jr nc, jr_01b_6f4f

    jr nc, jr_01b_6f51

    jr nc, @+$31

    jr nc, jr_01b_6f3d

    jr jr_01b_6f40

    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01b_6f54

    daa
    jr c, jr_01b_6f97

jr_01b_6f38:
    ld h, b
    ld e, a
    ld h, b
    cp a
    ret nz

jr_01b_6f3d:
    cp a
    ret nz

    cp a

jr_01b_6f40:
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld h, b
    daa
    jr c, jr_01b_6f64

    rra

jr_01b_6f4d:
    rlca
    rlca

jr_01b_6f4f:
    nop
    nop

jr_01b_6f51:
    ld bc, $0201

jr_01b_6f54:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $79
    ld a, [hl]
    cp a
    ret nz

    ld a, c
    ld a, [hl]
    dec b

jr_01b_6f64:
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld bc, $0201
    inc bc
    rlca
    ld b, $0b
    inc c
    rlca
    ld b, $02
    inc bc
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
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b

jr_01b_6f97:
    jr c, jr_01b_6fc1

    ld e, $16
    dec c
    dec bc
    ld a, [bc]
    dec c
    dec b
    ld b, $0a
    dec c
    dec c
    dec bc
    ld e, $16
    jr c, jr_01b_6fd1

    ld d, b
    ld [hl], b
    ld h, b
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
    inc c
    inc c
    ld a, [bc]
    ld c, $07
    dec b
    inc bc
    ld [bc], a

jr_01b_6fc1:
    rlca
    dec b
    ld a, [bc]
    ld c, $0c
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

jr_01b_6fd1:
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $05
    ld b, $7f
    ld a, h
    cp a
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
    nop
    nop
    nop
    ld a, a
    ld a, a
    cp a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    ld c, $f3
    db $fc
    rst $38
    nop
    di
    db $fc
    dec c
    ld c, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
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
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    ld c, $0a
    inc e
    inc d
    jr z, @+$3a

    jr nc, jr_01b_707b

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$ff50], a
    ld [hl], b
    jr c, @+$2a

    inc e
    inc d
    rrca
    dec bc
    ld b, $05
    dec b
    ld b, $0a
    dec c
    dec d
    dec de
    ld a, [de]
    ld d, $3c
    inc l
    ld [hl], b
    ld d, b
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    add b

Call_01b_7071:
    ld hl, $c940
    ld bc, $0013
    xor a
    call Call_000_0174

jr_01b_707b:
    xor a
    call Call_01b_727f
    call Call_000_016b
    ld a, e
    ld [$c943], a
    ld a, d
    ld [$c944], a
    ld a, $b0
    ld [$c942], a
    ld a, $01
    call Call_01b_727f
    call Call_000_016b
    ld a, e
    ld [$c949], a
    ld a, d
    ld [$c94a], a
    ld a, $b0
    ld [$c948], a
    ld a, $02
    call Call_01b_727f
    call Call_000_016b
    ld a, e
    ld [$c94f], a
    ld a, d
    ld [$c950], a
    ld a, $b0
    ld [$c94e], a
    ret


Call_01b_70ba:
    call Call_01b_70ca
    call Call_01b_7159
    call Call_01b_71e9
    ret


    ld a, $01
    ld [$c941], a
    ret


Call_01b_70ca:
    ld a, [$c941]
    cp $02
    ret nc

    ld a, $2f
    ld [$ce53], a
    ld a, $66
    ld [$ce54], a
    xor a
    call Call_01b_727f
    ld a, e
    ldh [$ff8b], a
    ld a, d
    ldh [$ff8c], a
    ld a, [$c943]
    ld e, a
    ld a, [$c944]
    ld d, a
    ld hl, $fff0
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$c943], a
    ld a, d
    ld [$c944], a
    ld hl, $c945
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    add hl, de
    sub h
    ld d, a
    ld a, [$c941]
    cp $01
    jr nz, jr_01b_7120

    ld a, [$c942]
    sub d
    ld [$c942], a
    jr nc, jr_01b_7120

    xor a
    ld [$c942], a
    ld a, $02
    ld [$c941], a

jr_01b_7120:
    ld a, l
    ld [$c945], a
    ld a, h
    ld [$c946], a
    ld b, h
    ld c, $04
    ld hl, $6570

jr_01b_712e:
    ld a, [$c942]
    ld d, a
    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl+]
    add b
    cp d
    jr c, jr_01b_713e

jr_01b_713a:
    dec c
    jr nz, jr_01b_712e

    ret


jr_01b_713e:
    sub $10
    ldh [$ff9c], a
    push hl
    push bc
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    call Call_01b_64f4
    pop bc
    pop hl
    jr jr_01b_713a

    ld a, $01
    ld [$c947], a
    ret


Call_01b_7159:
    ld a, [$c947]
    cp $02
    ret nc

    ld a, $40
    ld [$ce53], a
    ld a, $66
    ld [$ce54], a
    ld a, $01
    call Call_01b_727f
    ld a, e
    ldh [$ff8b], a
    ld a, d
    ldh [$ff8c], a
    ld a, [$c949]
    ld e, a
    ld a, [$c94a]
    ld d, a
    ld hl, $fff2
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$c949], a
    ld a, d
    ld [$c94a], a
    ld hl, $c94b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    add hl, de
    sub h
    ld d, a
    ld a, [$c947]
    cp $01
    jr nz, jr_01b_71b0

    ld a, [$c948]
    sub d
    ld [$c948], a
    jr nc, jr_01b_71b0

    xor a
    ld [$c948], a
    ld a, $02
    ld [$c947], a

jr_01b_71b0:
    ld a, l
    ld [$c94b], a
    ld a, h
    ld [$c94c], a
    ld b, h
    ld c, $04
    ld hl, $6578

jr_01b_71be:
    ld a, [$c948]
    ld d, a
    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl+]
    add b
    cp d
    jr c, jr_01b_71ce

jr_01b_71ca:
    dec c
    jr nz, jr_01b_71be

    ret


jr_01b_71ce:
    sub $10
    ldh [$ff9c], a
    push hl
    push bc
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    call Call_01b_64f4
    pop bc
    pop hl
    jr jr_01b_71ca

    ld a, $01
    ld [$c94d], a
    ret


Call_01b_71e9:
    ld a, [$c94d]
    cp $02
    ret nc

    ld a, $51
    ld [$ce53], a
    ld a, $66
    ld [$ce54], a
    ld a, $02
    call Call_01b_727f
    ld a, e
    ldh [$ff8b], a
    ld a, d
    ldh [$ff8c], a
    ld a, [$c94f]
    ld e, a
    ld a, [$c950]
    ld d, a
    ld hl, $fff4
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$c94f], a
    ld a, d
    ld [$c950], a
    ld hl, $c951
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    add hl, de
    sub h
    ld d, a
    ld a, [$c94d]
    cp $01
    jr nz, jr_01b_7240

    ld a, [$c94e]
    sub d
    ld [$c94e], a
    jr nc, jr_01b_7240

    xor a
    ld [$c94e], a
    ld a, $02
    ld [$c94d], a

jr_01b_7240:
    ld a, l
    ld [$c951], a
    ld a, h
    ld [$c952], a
    ld b, h
    ld c, $04
    ld hl, $6580

jr_01b_724e:
    ld a, [$c94e]
    ld d, a
    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl+]
    add b
    cp d
    jr c, jr_01b_725e

jr_01b_725a:
    dec c
    jr nz, jr_01b_724e

    ret


jr_01b_725e:
    sub $10
    ldh [$ff9c], a
    push hl
    push bc
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    call Call_01b_64f4
    pop bc
    pop hl
    jr jr_01b_725a

    ld a, $01
    ld [$c940], a
    ret


    ld a, $02
    ld [$c940], a
    ret


Call_01b_727f:
    push af
    ld a, [$c940]
    ld de, $6588
    or a
    jr z, jr_01b_7292

    ld de, $658e
    dec a
    jr z, jr_01b_7292

    ld de, $6594

jr_01b_7292:
    pop af
    jp Jump_000_0171


    sbc d
    ld [hl], d
    and b
    ld [hl], d
    and c
    ld [hl], d
    and c
    ld [hl], d
    and c
    ld [hl], d
    rst $38
    nop
    db $10
    ld [hl], e
    dec h
    ld [hl], e
    cp l
    ld [hl], d
    cp l
    ld [hl], d
    jr nz, jr_01b_72ac

jr_01b_72ac:
    ld h, e
    xor a
    ld [hl], d
    ld b, c
    cp l
    ld [hl], d
    cp [hl]
    ld [hl], d
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld h, b
    nop
    nop
    ret


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    rrca
    inc [hl]
    ld [hl], e
    nop
    nop
    nop
    ld l, $00
    ld d, c
    ld l, $2e
    ld a, a
    ld l, [hl]
    ld a, a
    ld d, c
    ld l, [hl]
    ld l, $7f
    ld d, c
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01b_78fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
