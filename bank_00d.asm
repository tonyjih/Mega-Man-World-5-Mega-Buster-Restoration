; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    jp Jump_00d_7879


    jp Jump_00d_5470


    jp Jump_00d_573b


    jp Jump_00d_515a


    jp $5215


    jp Jump_00d_52b3


    jp Jump_00d_4fe2


    jp $4c59


    jp Jump_00d_4bdf


    jp Jump_00d_7f45


    jp Jump_00d_581b


    jp Jump_00d_58ba


    jp Jump_00d_5c7e


    jp Jump_00d_60ff


    jp Jump_00d_66d0


    jp Jump_00d_690d


    jp Jump_00d_6b50


    jp Jump_00d_6e37


    jp Jump_00d_6ec7


    jp Jump_00d_6f44


    jp Jump_00d_72a2


    jp Jump_00d_75c1


    jp Jump_00d_79de


    jp Jump_00d_7b56


    jp Jump_00d_7db4


    jp Jump_00d_4e8e


    ld [hl], h
    ld e, b
    call Call_00d_413b
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
    call Call_00d_41f4
    pop de

Call_00d_4072:
Jump_00d_4072:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_00d_4094

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
    jr nz, jr_00d_408a

    inc a

jr_00d_408a:
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


Jump_00d_4094:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_00d_409b:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00d_40a5:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00d_40ad:
Jump_00d_40ad:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00d_40b5:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00d_40d1

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_00d_40c7

    inc a

jr_00d_40c7:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_00d_40d1:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_00d_40db:
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
    jr jr_00d_40ef

    ld a, $1f
    add c
    ld l, a

jr_00d_40ef:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_00d_40f9

    inc d

jr_00d_40f9:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_00d_40fd:
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


Call_00d_410f:
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


Call_00d_4121:
Jump_00d_4121:
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


Call_00d_413b:
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
    jr nz, jr_00d_4156

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_00d_4156

    ld de, $0350

jr_00d_4156:
    ld [hl], d
    dec l
    ld [hl], e
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
    jr nz, jr_00d_4190

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_00d_417b

    xor a

jr_00d_417b:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_00d_4190

    ld a, [de]
    add b
    cp $d0
    jr c, jr_00d_4189

    xor a

jr_00d_4189:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_00d_4190:
    or a
    ret


Call_00d_4192:
    push de
    call Call_00d_413b
    pop de
    call Call_00d_41ab
    ret z

    bit 0, a
    jr z, jr_00d_41a3

    ld a, $1d
    jr jr_00d_41a5

jr_00d_41a3:
    ld a, $1f

jr_00d_41a5:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00d_41ab:
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


Call_00d_41f4:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_00d_4205

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_00d_4206

jr_00d_4205:
    inc d

jr_00d_4206:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_00d_420c:
Jump_00d_420c:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_00d_421c

    cp $90
    jr nc, jr_00d_4231

jr_00d_421c:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_00d_4229

    cp $c0
    jr nc, jr_00d_4231

jr_00d_4229:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_00d_4231:
    xor a
    ld b, a
    ret


Jump_00d_4234:
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff95]
    ldh [$ff8a], a
    ldh a, [$ff96]
    ldh [$ff8b], a
    ldh a, [$ff94]
    ld d, a
    add $30
    ld l, a

jr_00d_4245:
    push hl
    push de
    call Call_00d_425e
    pop de
    pop hl
    ret c

    ld a, e
    cp d
    jr z, jr_00d_425c

    add $10
    ld e, a
    add $30
    cp l
    jr c, jr_00d_4245

    ld e, d
    jr jr_00d_4245

jr_00d_425c:
    or a
    ret


Call_00d_425e:
    push bc
    ldh a, [$ff8a]
    ld d, a
    ldh a, [$ff8b]
    ld b, $d0
    cp b
    jr nc, jr_00d_426d

    ld a, d
    cp b
    jr nc, jr_00d_4289

jr_00d_426d:
    push de
    ld a, d
    call Call_000_0165
    pop de
    jr c, jr_00d_42aa

    ldh a, [$ff8b]
    ld b, a
    ld a, d
    cp b
    jr nc, jr_00d_42aa

    add $08
    jr nc, jr_00d_4282

    ld a, $ff

jr_00d_4282:
    ld d, a
    cp b
    jr c, jr_00d_426d

    ld d, b
    jr jr_00d_426d

jr_00d_4289:
    push de
    ld a, d
    call Call_000_0165
    pop de
    jr c, jr_00d_42aa

    ldh a, [$ff8b]
    ld b, a
    ld a, d
    cp $d0
    jr nc, jr_00d_42a5

    cp b
    jr nc, jr_00d_42aa

    add $08
    ld d, a
    cp b
    jr c, jr_00d_4289

    ld d, b
    jr jr_00d_4289

jr_00d_42a5:
    add $08
    ld d, a
    jr jr_00d_4289

jr_00d_42aa:
    pop bc
    ret


Call_00d_42ac:
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


jr_00d_42c3:
    ld a, [$cca8]
    and $07
    jr nz, jr_00d_42c3

    ret


Call_00d_42cb:
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
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl], a
    ret


Call_00d_42e5:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    inc [hl]
    ld a, e
    or a
    jr z, jr_00d_42f3

    dec a
    cp [hl]
    jr nc, jr_00d_4326

jr_00d_42f3:
    ld [hl], $00
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
    jr nz, jr_00d_430d

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_00d_4326

jr_00d_430d:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_00d_4326

    dec a
    ld e, $01
    jr z, jr_00d_4320

    ld e, $ff

jr_00d_4320:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_00d_4326:
    pop bc
    pop hl
    ld a, [hl]
    ret


    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00d_432e:
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
    jr z, jr_00d_4343

    dec [hl]
    xor a
    sub $01
    ret


jr_00d_4343:
    inc l

jr_00d_4344:
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
    jr nz, jr_00d_4357

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00d_4357:
    cp $ff
    jr nz, jr_00d_4367

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00d_4344

jr_00d_4367:
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


    ld a, b
    ldh [$ff8a], a
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
    jr z, jr_00d_4391

    dec [hl]
    xor a
    sub $01
    ret


jr_00d_4391:
    inc l

jr_00d_4392:
    push hl
    push de
    ld e, [hl]
    ldh a, [$ff8a]
    call Call_00d_442c
    pop de
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    cp $fe
    jr nz, jr_00d_43a9

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00d_43a9:
    cp $ff
    jr nz, jr_00d_43b9

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00d_4392

jr_00d_43b9:
    inc [hl]
    dec l
    ld [hl], a
    ld a, $01
    ldh [$ff8d], a
    inc de
    xor a
    inc a
    ret


Jump_00d_43c4:
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00d_43c8:
    ld a, b
    ldh [$ff91], a
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
    jr z, jr_00d_43e0

    dec [hl]
    xor a
    sub $01
    ret


jr_00d_43e0:
    inc l

jr_00d_43e1:
    ld a, [hl]
    add a
    add [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_00d_441a
    cp $fe
    jr nz, jr_00d_43f6

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00d_43f6:
    cp $ff
    jr nz, jr_00d_4406

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00d_43e1

jr_00d_4406:
    inc [hl]
    dec l
    ld [hl], a
    ld a, $01
    ldh [$ff8d], a
    call Call_00d_441a
    ldh [$ff8a], a
    call Call_00d_441a
    ldh [$ff8b], a
    xor a
    inc a
    ret


Call_00d_441a:
    push bc
    ldh a, [$ff91]
    ld b, a
    call Call_00d_4423
    pop bc
    ret


Call_00d_4423:
    push hl
    ld l, e
    ld h, d
    call Call_000_028e
    inc de
    pop hl
    ret


Call_00d_442c:
    ld hl, $0000
    ld d, h
    rla
    jr nc, jr_00d_4434

    add hl, de

jr_00d_4434:
    add hl, hl
    rla
    jr nc, jr_00d_4439

    add hl, de

jr_00d_4439:
    add hl, hl
    rla
    jr nc, jr_00d_443e

    add hl, de

jr_00d_443e:
    add hl, hl
    rla
    jr nc, jr_00d_4443

    add hl, de

jr_00d_4443:
    add hl, hl
    rla
    jr nc, jr_00d_4448

    add hl, de

jr_00d_4448:
    add hl, hl
    rla
    jr nc, jr_00d_444d

    add hl, de

jr_00d_444d:
    add hl, hl
    rla
    jr nc, jr_00d_4452

    add hl, de

jr_00d_4452:
    add hl, hl
    rla
    jr nc, jr_00d_4457

    add hl, de

jr_00d_4457:
    ret


Jump_00d_4458:
    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00d_4465:
    ldh a, [$ff92]
    cp $fe
    ret z

    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld a, [bc]
    cp $80
    ret z

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
    jr jr_00d_4465

    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00d_4497:
    ldh a, [$ff92]
    cp $fe
    ret z

    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld a, [bc]
    cp $80
    ret z

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
    push hl
    ld hl, $ffac
    add [hl]
    pop hl
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_00d_4497

Call_00d_44c2:
    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

Call_00d_44cd:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_00d_44d1:
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
    jr nz, jr_00d_44d1

    ret


Call_00d_44e6:
    ld d, a

jr_00d_44e7:
    push bc
    push hl
    push de
    ld b, $00
    ld a, d
    call Call_000_0186
    pop de
    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00d_44e7

    ret


Call_00d_44fb:
    ld l, c
    push hl
    ld a, $10
    add c
    ld l, a
    ld b, [hl]
    push bc
    add $fd
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $00
    ldh [$ffab], a
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld a, $20
    jr nz, jr_00d_451c

    xor a

jr_00d_451c:
    ld [$d3ea], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld de, $7971
    call Call_000_0171
    ld c, e
    ld b, d
    inc bc
    inc bc
    inc bc
    inc bc
    pop af
    call Call_000_0210
    pop hl
    ld c, l
    ret


Call_00d_453e:
    ld a, [$c3ef]
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    cp b
    jr nc, jr_00d_4558

    ldh a, [$ff8b]
    ld l, a
    ld a, b
    add d
    ld e, a
    cp l
    jr c, jr_00d_4568

    ld e, l
    jr jr_00d_4568

jr_00d_4558:
    ldh a, [$ff8a]
    ld l, a
    ld a, b
    sub d
    ld e, a
    jr nc, jr_00d_4564

    ld e, $30
    jr jr_00d_4568

jr_00d_4564:
    cp l
    jr nc, jr_00d_4568

    ld e, l

jr_00d_4568:
    ld a, e
    sub $30
    ret


Call_00d_456c:
    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    ld a, $04
    call Call_000_01cb
    pop hl
    ld c, l
    ret


Call_00d_457e:
    ld a, $0f
    add c
    ld l, a
    ld a, [$c3f0]
    ld b, a
    ld a, [hl]
    add $30
    cp b
    ret


    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ret z

    jp Jump_000_016b


    push bc
    call Call_000_0201
    pop bc

Call_00d_459a:
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ld [$cc05], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld [$cc24], a

Call_00d_45aa:
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


Call_00d_45f9:
    ld b, $24
    ld a, $0d
    add c
    ld l, a
    ld e, $01
    ld a, [hl]
    cp $50
    jr c, jr_00d_460b

    cp $e8
    jr nc, jr_00d_460b

    dec e

jr_00d_460b:
    ld a, b
    add c
    ld l, a
    ld a, e
    ld [hl], a
    or a
    ret


Call_00d_4612:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $fc
    ret nc

    cp $e0
    jr c, jr_00d_4622

    ld b, $00
    scf
    ret


jr_00d_4622:
    ld b, $01
    cp $a4
    ccf
    ret


Call_00d_4628:
    ld e, b
    push de
    call Call_00d_4612
    pop de
    ret nc

    ld a, e
    xor b
    and $01
    ret nz

    scf
    ret


Call_00d_4636:
    call Call_00d_467a
    ret nc

    push af
    call Call_00d_4640
    pop af
    ret


Call_00d_4640:
    ld a, [$c3e7]
    ld e, a
    ld a, [$c3e8]
    ld d, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    sub e
    ld e, a
    inc l
    ld a, [hl]
    sub d
    ld d, a
    ld b, h
    ld hl, $d725
    ld a, [hl]
    add d
    ld [hl], a
    ld hl, $d722
    ld a, [hl]
    add e
    cp $09
    jr c, jr_00d_4678

    cp $97
    jr nc, jr_00d_4678

    ld [hl], a
    ld d, $00
    bit 7, e
    jr z, jr_00d_466f

    dec d

jr_00d_466f:
    ld hl, $d70d
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a

jr_00d_4678:
    ld h, b
    ret


Call_00d_467a:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    ldh a, [$ff9b]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d747]
    cp b
    jr c, jr_00d_46c5

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_00d_46c5

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_00d_46b5

    inc a
    cp b
    jr nz, jr_00d_46c5

    xor a
    scf
    ret


jr_00d_46b5:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_00d_46c5

    xor a
    inc a
    scf
    ret


jr_00d_46c5:
    or a
    ret


Call_00d_46c7:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$d72f]
    sub b
    ret nc

    cpl
    inc a
    scf
    ret


    push af
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ffa4], a
    inc l
    ld a, [hl]
    ldh [$ffa6], a
    pop af
    add c
    ld l, a

Jump_00d_46e7:
    ld a, [hl]
    ld [$cc46], a
    push hl
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e2], a
    call Call_000_021f
    ld a, [$c3e2]
    ld [hl], a
    pop hl
    ld a, [$cc46]
    ld [hl], a
    ret


Call_00d_4701:
Jump_00d_4701:
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


    ld l, c
    push hl
    ld a, $1d
    add c
    ld l, a
    ld a, b
    call Call_000_024c
    pop hl
    ld c, l
    ret


jr_00d_4728:
    push de
    call Call_00d_432e
    pop de
    ret z

    ret c

    push hl
    push bc
    push de
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld a, $04
    call Call_000_01cb
    pop de
    pop bc
    pop hl
    ld a, [hl]
    or a
    jr z, jr_00d_4728

    ret


Call_00d_4745:
    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_00d_4758

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_00d_4758

    ld b, $20

jr_00d_4758:
    ld a, b
    ld [$d3ea], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ffa4], a
    inc l
    ld a, [hl]
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


    ldh [$ff8a], a
    ld a, [$c3ef]
    ldh [$ff8c], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ldh [$ff8b], a
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
    jr nc, jr_00d_47ba

    cpl
    inc a
    scf

jr_00d_47ba:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_00d_47e1
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


Call_00d_47e1:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_00d_47ea:
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
    jr nc, jr_00d_47fe

    add hl, bc
    jr jr_00d_47ff

jr_00d_47fe:
    inc de

jr_00d_47ff:
    pop af
    dec a
    jr nz, jr_00d_47ea

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


Call_00d_480a:
    ld a, [$cc9e]
    ld e, a
    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9f]
    add [hl]
    sub e
    ld [hl], a
    ret


Call_00d_4819:
    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ret


Call_00d_4823:
    ld a, [$df0a]
    cp $01
    ret nz

    ld a, [$d161]
    cp $02
    ret nz

    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld b, a
    inc de
    ld a, [de]
    add [hl]
    ldh [$ff94], a
    inc de
    inc de
    ld a, $0f
    add c
    ld l, a
    ld a, [de]
    add [hl]
    inc a
    ld d, a
    ldh [$ff96], a
    ld e, b
    call Call_00d_4874
    jr z, jr_00d_4857

    ldh a, [$ff94]
    ld e, a
    ldh a, [$ff96]
    ld d, a
    call Call_00d_4874
    ret nz

jr_00d_4857:
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    xor a
    ret


Call_00d_4863:
    ld a, [$df7e]
    call Call_00d_487f
    jr z, jr_00d_4857

    ld a, [$df7f]
    call Call_00d_487f
    jr z, jr_00d_4857

    ret


Call_00d_4874:
    ld a, d
    ld l, c
    push hl
    call Call_000_0165
    pop hl
    ld c, l
    ld a, [$d74e]

Call_00d_487f:
    cp $26
    jr z, jr_00d_4888

    cp $25
    jr z, jr_00d_4888

    ret


jr_00d_4888:
    ld a, [$d140]
    bit 0, a
    ld de, $ff80
    jr nz, jr_00d_4895

    ld de, $0080

jr_00d_4895:
    xor a
    ret


    ld a, e
    ldh [$ffa7], a
    ld a, d
    ldh [$ffa8], a
    ld l, c
    push hl
    ld de, $ffa3
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


    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$c3c4], a
    inc l
    ld a, [hl]
    ld [$c3c5], a
    push de
    call Call_00d_41ab
    pop de
    jr nz, jr_00d_48fb

    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    ld b, $00
    jr nz, jr_00d_48f6

    inc b

jr_00d_48f6:
    call Call_00d_49b6
    ccf
    ret nc

jr_00d_48fb:
    ld a, $0d
    add c
    ld l, a
    ld a, [$c3c4]
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$c3c5]
    ld [hl], a
    scf
    ret


    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$c3c4], a
    push de
    call Call_00d_40fd
    ld e, a
    ld a, [$c3c4]
    cp e
    pop de
    ret z

    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    ld b, $00
    jr nz, jr_00d_492b

    inc b

jr_00d_492b:
    push bc
    push de
    call Call_00d_49a5
    pop de
    pop bc
    jr c, jr_00d_4939

    call Call_00d_49a9
    ccf
    ret nc

jr_00d_4939:
    ld a, $0d
    add c
    ld l, a
    ld a, [$c3c4]
    ld [hl], a
    scf
    ret


Call_00d_4943:
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00d_4948:
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
    call Call_00d_42e5
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
    jp Jump_00d_4121


Call_00d_4979:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Jump_00d_4981:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_00d_4989:
    ld a, $06
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_00d_4999

    ld d, $08
    call Call_00d_4979
    call Call_000_025e

jr_00d_4999:
    ld a, $06
    add c
    ld l, a
    bit 0, [hl]
    ret z

    ld d, $08
    jp Jump_00d_4981


Call_00d_49a5:
    ld l, $00
    jr jr_00d_49ab

Call_00d_49a9:
    ld l, $ff

jr_00d_49ab:
    ld a, $01
    ldh [$ff8c], a
    ld a, l
    jr jr_00d_49bc

    ld l, $00
    jr jr_00d_49b8

Call_00d_49b6:
    ld l, $01

jr_00d_49b8:
    xor a
    ldh [$ff8c], a
    ld a, l

jr_00d_49bc:
    ldh [$ff8a], a
    ld a, b
    ldh [$ff8b], a
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
    jr nz, jr_00d_49d9

    inc de

jr_00d_49d9:
    inc de
    ld a, [de]
    add [hl]
    ld d, a
    ldh a, [$ff8a]
    add d
    ld d, a
    ld e, c
    ldh a, [$ff8b]
    or a
    jr z, jr_00d_49e8

    ld e, b

jr_00d_49e8:
    ld a, d
    call Call_000_0165
    pop hl
    ld c, l
    ret


Call_00d_49ef:
    xor a
    jr jr_00d_49f4

Call_00d_49f2:
    ld a, $ff

jr_00d_49f4:
    ld l, $01
    jr jr_00d_49ff

Call_00d_49f8:
    xor a
    jr jr_00d_49fd

Call_00d_49fb:
Jump_00d_49fb:
    ld a, $01

jr_00d_49fd:
    ld l, $00

jr_00d_49ff:
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
    jr nz, jr_00d_4a1c

    inc de

jr_00d_4a1c:
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


Call_00d_4a2f:
Jump_00d_4a2f:
    push de
    call Call_00d_49fb
    pop de
    jr c, jr_00d_4a4b

jr_00d_4a36:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $80
    jr nc, jr_00d_4a49

    push de
    call Call_00d_49fb
    pop de
    jr nc, jr_00d_4a36

    or a
    ret


jr_00d_4a49:
    scf
    ret


jr_00d_4a4b:
    push de
    call Call_00d_49f8
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_00d_4a4b

    push de
    call Call_00d_49f2
    pop de
    jr c, jr_00d_4a6d

jr_00d_4a5f:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_00d_49f2
    pop de
    jr nc, jr_00d_4a5f

    or a
    ret


jr_00d_4a6d:
    push de
    call Call_00d_49ef
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_00d_4a6d

Call_00d_4a7a:
    push af
    push bc
    call Call_000_0201
    pop bc
    pop af
    ld [$cc2d], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ld [$cc05], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld [$cc24], a
    call Call_000_01e3
    ret c

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
    ld a, [$cc01]
    ld d, a
    ld a, $2b
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld b, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $00
    add c
    ld l, a
    ld [hl], $1d
    inc l
    ld [hl], $4b
    inc l
    inc l
    ld a, [de]
    inc de
    ld [hl+], a
    inc l
    inc l
    inc l
    ld a, [de]
    inc de
    ld [hl], a
    ld a, $13
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $18
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    call Call_000_017a
    call Call_00d_4072
    ld a, $2f
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 2, a
    jr z, jr_00d_4b00

    ld l, c
    push hl
    call Call_000_024f
    ld b, a
    ld a, $1e
    add c
    ld l, a
    ld d, [hl]
    dec l
    ld e, [hl]
    ld a, b
    call Call_000_024c
    pop hl
    ld c, l

jr_00d_4b00:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    push af
    push hl
    call Call_00d_4b4e
    pop hl
    pop af
    ld [hl], a
    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $ff
    or a
    ret


    dec b
    jr z, jr_00d_4b26

    dec b
    jr nz, jr_00d_4b4b

jr_00d_4b23:
    ld b, $00
    ret


jr_00d_4b26:
    ld a, [$ccc2]
    or a
    jr nz, jr_00d_4b23

    ld a, $32
    add c
    ld l, a
    ld a, [$deaf]
    and [hl]
    jr nz, jr_00d_4b4b

    ld a, $2f
    add c
    ld l, a
    bit 1, [hl]
    push hl
    call nz, Call_00d_413b
    pop hl
    bit 0, [hl]
    call nz, Call_00d_4121
    call Call_00d_4b4e
    jr c, jr_00d_4b23

jr_00d_4b4b:
    jp Jump_00d_420c


Call_00d_4b4e:
    ld a, $2b
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [hl]
    or a
    jr nz, jr_00d_4b5f

    call Call_000_015f
    or a
    ret


jr_00d_4b5f:
    ld a, $26
    add c
    ld l, a
    ld b, [hl]
    push hl
    push bc
    call Call_000_015f
    pop bc
    pop hl
    ldh a, [$ff8b]
    or a
    ret z

    push hl
    ld a, $2d
    add c
    ld l, a
    or a
    dec [hl]
    pop hl
    ret nz

    ld [hl], b
    ld a, $17
    add c
    ld l, a
    ldh a, [$ff8e]
    ld [hl], a
    scf
    ret


    adc a
    ld c, e
    nop
    add l
    nop
    inc h
    ld c, h
    ld b, $01
    add h
    ld b, $0d
    inc b
    ld a, b
    dec b
    jr z, jr_00d_4b9e

    dec b
    jr z, jr_00d_4b9b

    dec b
    jp z, Jump_00d_4bbd

    dec b

Jump_00d_4b9b:
jr_00d_4b9b:
    ld b, $00
    ret


jr_00d_4b9e:
    ld a, [$deaf]
    and $f3
    jp nz, Jump_00d_4bbd

    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    ld de, $4c0b
    jr z, jr_00d_4bb4

    ld de, $4c16

jr_00d_4bb4:
    call Call_000_015f
    ldh a, [$ff8b]
    or a
    jp nz, Jump_00d_4b9b

Jump_00d_4bbd:
    ld a, $13
    add c
    ld l, a
    ld a, [hl]
    ld e, l
    and $fa
    ld b, a
    ld a, $25
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_4bd0

    set 2, b

jr_00d_4bd0:
    add $f2
    ld l, a
    ld a, [hl]
    cp $01
    jr nz, jr_00d_4bda

    set 0, b

jr_00d_4bda:
    ld l, e
    ld [hl], b
    jp Jump_00d_420c


Jump_00d_4bdf:
    ld a, $82
    ld [$cc00], a
    ld a, $4b
    ld [$cc01], a
    call Call_00d_45aa
    ret c

    ld a, [$d3f1]
    or a
    jr z, jr_00d_4bfd

    xor a
    ld [$d3f1], a
    ld a, $1a
    add c
    ld l, a
    ld [hl], $00

jr_00d_4bfd:
    ld a, $05
    add c
    ld l, a
    ld [hl], $63
    rst $08
    rra
    ld de, $4c24
    jp Jump_000_01dd


    inc h
    ld c, h
    inc bc
    nop
    ld bc, $0302
    ld [bc], a
    ld bc, $ff00
    inc h
    ld c, h
    inc bc
    nop
    ld bc, $0302
    ld bc, $0302
    ld [bc], a
    ld bc, $ff00
    inc l
    ld c, h
    dec [hl]
    ld c, h
    ld b, c
    ld c, h
    ld c, l
    ld c, h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    ld de, $8003
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
    jp nz, Jump_00d_7880

    dec b
    jr z, jr_00d_4cad

    dec b
    jr z, jr_00d_4c69

    dec b
    jp z, Jump_00d_4cfa

    dec b
    dec b
    jp z, Jump_00d_4c6f

Jump_00d_4c69:
jr_00d_4c69:
    call Call_00d_4d76
    ld b, $00
    ret


Jump_00d_4c6f:
    ld a, $3e
    ld [$cc00], a
    ld a, $4d
    ld [$cc01], a
    call Call_00d_45aa
    ret c

    ld a, $2f
    add c
    ld l, a
    ld a, [$d3f0]
    ld [hl], a
    xor a
    ld [$d3f0], a
    ld b, $2b
    call Call_000_01f8
    ld l, c
    push hl
    call Call_000_0219
    push hl
    ld b, $08

jr_00d_4c96:
    ld [hl], $40
    ld de, $0005
    add hl, de
    dec b
    jr nz, jr_00d_4c96

    pop de
    pop hl
    ld c, l
    ld a, $30
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $00
    ret


jr_00d_4cad:
    ld a, [$deaf]
    and $f3
    jp nz, Jump_00d_4cfa

jr_00d_4cb5:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_00d_4cfa

    ld de, $4d15
    ld b, $2b
    call Call_000_01fb
    ldh a, [$ff8f]
    or a
    jr z, jr_00d_4cd2

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    jr jr_00d_4cfa

jr_00d_4cd2:
    ldh a, [$ff8e]
    or a
    jr z, jr_00d_4cfa

    ld a, b
    add a
    add b
    ld de, $4d26
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    ld b, a
    push bc
    call Call_000_0204
    pop bc
    ld l, c
    push hl
    call Call_00d_4d4b
    pop hl
    ld c, l
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_4cb5

Jump_00d_4cfa:
jr_00d_4cfa:
    ld l, c
    push hl
    call Call_00d_4de5
    pop hl
    ld c, l
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_4d0d

    ld a, b
    or a
    jr z, jr_00d_4d12

jr_00d_4d0d:
    call Call_00d_420c
    dec a
    ret z

jr_00d_4d12:
    jp Jump_00d_4c69


    ld bc, $0100
    inc b
    ld bc, $0101
    dec b
    ld bc, $0102
    ld b, $01
    inc bc
    ld bc, $fe07
    nop
    nop
    ldh a, [rP1]
    dec bc
    push af
    nop
    stop
    nop
    dec bc
    dec bc
    nop
    nop
    stop
    push af
    dec bc
    nop
    ldh a, [rP1]
    nop
    push af
    push af
    ld e, c
    ld c, h
    nop
    and c
    db $10
    ld c, e
    ld c, l
    nop
    ld bc, $0084
    dec c
    nop

Call_00d_4d4b:
    rst $08
    rra
    push de
    ld a, $30
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $08
    ld de, $0005

jr_00d_4d5a:
    ld a, [hl]
    cp $40
    jr z, jr_00d_4d66

    add hl, de
    dec b
    jr nz, jr_00d_4d5a

    pop de
    scf
    ret


jr_00d_4d66:
    push hl
    ld a, $04
    call Call_000_01a4
    pop hl
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_4d76:
    ld l, c
    push hl
    ld a, $30
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld b, $08

jr_00d_4d82:
    ld a, [hl]
    ld [hl], $40
    push hl
    push bc
    call Call_000_01a7
    pop bc
    pop hl
    ld de, $0005
    add hl, de
    dec b
    jr nz, jr_00d_4d82

    pop hl
    call Call_000_029d
    pop hl
    ld c, l
    ret


    and l
    ld c, l
    inc bc
    nop
    ld bc, $0302
    ld [bc], a
    ld bc, $ff00
    xor l
    ld c, l
    or d
    ld c, l
    jp $d44d


    ld c, l
    db $fc
    db $fc
    ld h, [hl]
    db $10
    add b
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

Call_00d_4de5:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    or a
    ld a, $06
    jr z, jr_00d_4df0

    xor a

jr_00d_4df0:
    ld [$c3e0], a
    ld a, $30
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $08
    ld b, $00

jr_00d_4dfe:
    ld a, [hl]
    cp $40
    jr z, jr_00d_4e0b

    push hl
    push bc
    call Call_00d_4e13
    pop bc
    pop hl
    inc b

jr_00d_4e0b:
    ld de, $0005
    add hl, de
    dec c
    jr nz, jr_00d_4dfe

    ret


Call_00d_4e13:
    ldh [$ff8a], a
    ld c, l
    ld a, [$deaf]
    and $f3
    jr nz, jr_00d_4e2a

    inc l
    ld a, [hl]
    or a
    jr z, jr_00d_4e25

    dec [hl]
    jr jr_00d_4e2a

jr_00d_4e25:
    ld a, [$4d9c]
    ld [hl+], a
    inc [hl]

jr_00d_4e2a:
    ld l, c
    inc l
    inc l
    ld a, [hl+]
    ld b, a
    ld a, [$d7c3]
    add [hl]
    ld [hl+], a
    ldh [$ff9b], a
    ld a, [hl+]
    ldh [$ff9c], a
    ld a, b
    cp $03
    jr nz, jr_00d_4e4b

    ld a, [$c3e0]
    or a
    jr z, jr_00d_4e4b

    push hl
    push bc
    call Call_00d_4e74
    pop bc
    pop hl

jr_00d_4e4b:
    ld a, $9d
    add b
    ld e, a
    ld a, $4d
    adc $00
    ld d, a
    ld a, [de]
    cp $ff
    jr nz, jr_00d_4e60

    ld l, c
    ld a, [hl]
    ld [hl], $40
    jp Jump_000_01a7


jr_00d_4e60:
    ld hl, $4da5
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ldh a, [$ff8a]
    jp Jump_00d_4458


    db $fc
    inc b
    db $fc
    inc b

Call_00d_4e74:
    ldh a, [$ff9b]
    ldh [$ffa4], a
    ldh a, [$ff9c]
    ldh [$ffa6], a
    ld de, $4e70
    ld b, $a9
    ld a, $02
    ld [$cc47], a
    ld hl, $cc36
    ld [hl], $01
    jp Jump_00d_46e7


Call_00d_4e8e:
Jump_00d_4e8e:
    ld l, c
    push hl
    push de
    push bc
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld a, $ae
    ld [$cc00], a
    ld a, $4e
    ld [$cc01], a
    call Call_00d_459a
    pop de
    ld b, d
    pop de
    call nc, Call_00d_4ebb
    pop hl
    ld c, l
    ret


    ret c

    ld c, [hl]
    rlca
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec c
    nop

Call_00d_4ebb:
    call Call_00d_4f68
    ld a, $2f
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], b
    inc l
    jp Jump_00d_43c4


Call_00d_4ecb:
    ld a, $2f
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld b, [hl]
    inc l
    jp Jump_00d_43c4


    dec b
    jr z, jr_00d_4ee1

    dec b
    jr nz, jr_00d_4f49

Jump_00d_4ede:
    ld b, $00
    ret


jr_00d_4ee1:
    ld a, $2c
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00d_4ef6

    inc l
    ld e, [hl]
    inc hl
    ld d, [hl]
    add $e1
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    inc l
    ld a, [de]
    ld [hl], a

jr_00d_4ef6:
    ld a, [$deaf]
    or a
    jr nz, jr_00d_4f49

    ld a, $2c
    add c
    ld l, a
    bit 3, [hl]
    call nz, Call_00d_4f59

jr_00d_4f05:
    ld a, $2f
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld b, [hl]
    inc l
    call Call_00d_43c8
    jr z, jr_00d_4f4c

    jr c, jr_00d_4f49

    push hl
    push bc
    ld a, $0d
    add c
    ld l, a
    ldh a, [$ff8a]
    add [hl]
    ld e, a
    inc l
    inc l
    ldh a, [$ff8b]
    add [hl]
    ld d, a
    ld a, $2c
    add c
    ld l, a
    bit 1, [hl]
    jr nz, jr_00d_4f35

    ld a, $04
    call Call_000_01cb
    jr jr_00d_4f3a

jr_00d_4f35:
    ld b, $00
    call Call_000_01f5

jr_00d_4f3a:
    pop bc
    pop hl
    ld a, [hl]
    or a
    jr z, jr_00d_4f05

    ld a, $2c
    add c
    ld l, a
    bit 2, [hl]
    call nz, Call_00d_4f59

jr_00d_4f49:
    jp Jump_00d_420c


jr_00d_4f4c:
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp z, Jump_00d_4ede

    call Call_00d_4ecb
    jr jr_00d_4f49

Call_00d_4f59:
    ld a, $35
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_4f49

    inc hl
    ld a, [hl-]
    ld [hl], a
    rst $08
    rra
    ret


Call_00d_4f68:
    ld a, $2c
    add c
    ld l, a
    ld [hl], $00
    add $08
    ld l, a
    ld [hl], $01

jr_00d_4f73:
    call Call_00d_4423
    cp $80
    ret z

    cp $01
    jr z, jr_00d_4f8a

    cp $02
    jr z, jr_00d_4fa6

    cp $03
    jr z, jr_00d_4fae

    cp $04
    jr z, jr_00d_4fb8

    ret


jr_00d_4f8a:
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    call Call_00d_4423
    ldh [$ff8a], a
    call Call_00d_4423
    ldh [$ff8b], a
    ld a, $2d
    add c
    ld l, a
    ldh a, [$ff8a]
    ld [hl+], a
    ldh a, [$ff8b]
    ld [hl], a
    jr jr_00d_4f73

jr_00d_4fa6:
    ld a, $2c
    add c
    ld l, a
    set 1, [hl]
    jr jr_00d_4f73

jr_00d_4fae:
    ld a, $34
    add c
    ld l, a
    call Call_00d_4423
    ld [hl], a
    jr jr_00d_4f73

jr_00d_4fb8:
    ld a, $35
    add c
    ld l, a
    ld [hl], $00
    inc l
    call Call_00d_4423
    push af
    and $7f
    ld [hl], a
    ld a, $2c
    add c
    ld l, a
    pop af
    or a
    jr z, jr_00d_4fd8

    bit 7, a
    jr nz, jr_00d_4fd6

    set 2, [hl]
    jr jr_00d_4fd8

jr_00d_4fd6:
    set 3, [hl]

jr_00d_4fd8:
    jr jr_00d_4f73

    ld [$0708], sp
    ld bc, $a400
    ld b, a
    nop

Jump_00d_4fe2:
    ld a, b
    dec b
    jr z, jr_00d_500a

    dec b
    jr z, jr_00d_4ff2

    dec b
    jp z, Jump_00d_50c9

    dec b
    ret z

    or a
    jr z, jr_00d_4ff5

Jump_00d_4ff2:
jr_00d_4ff2:
    ld b, $00
    ret


jr_00d_4ff5:
    call Call_00d_41f4
    call Call_00d_409b
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    ld de, $50f8
    jp Jump_000_01dd


jr_00d_500a:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_00d_5018

    ld a, [$d4f3]
    or a
    jr nz, jr_00d_4ff2

jr_00d_5018:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_50c9

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_502e

    dec a
    jr z, jr_00d_5068

    dec a
    jp z, Jump_00d_50b7

jr_00d_502e:
    call Call_00d_50cc
    jr c, jr_00d_503b

    ld de, $50da
    call Call_00d_4192
    jr jr_00d_5065

jr_00d_503b:
    ld de, $50de
    call Call_000_015f
    ld de, $50d2
    call Call_00d_4072
    ld de, $50da
    call Call_00d_41ab
    call Call_00d_46c7
    cp $20
    jr nc, jr_00d_5065

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    call Call_00d_41f4
    ld a, $02
    call Call_000_01e0

jr_00d_5065:
    jp Jump_00d_50c9


jr_00d_5068:
    ld de, $50e6
    call Call_00d_4701
    jr c, jr_00d_50a2

    ldh a, [$ff8f]
    or a
    jr z, jr_00d_50a0

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp $0c
    jr nz, jr_00d_50a0

    ld a, $2c
    add c
    ld l, a
    ld [hl], $01
    ld de, $50d6
    call Call_000_0201
    ld a, e
    ld [$d3eb], a
    ld a, d
    ld [$d3ec], a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, $05
    call Call_000_01cb
    pop hl
    ld c, l

jr_00d_50a0:
    jr jr_00d_50c9

jr_00d_50a2:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $ff
    ld l, a
    ld [hl], $3c
    ld a, $0a
    call Call_000_01b6
    call Call_000_015c
    jr jr_00d_50c9

Jump_00d_50b7:
    call Call_000_01e6
    jr nz, jr_00d_50c7

    jr nc, jr_00d_50c1

    call Call_00d_7921

jr_00d_50c1:
    call Call_00d_7930
    jp c, Jump_00d_4ff2

jr_00d_50c7:
    jr jr_00d_50c9

Jump_00d_50c9:
jr_00d_50c9:
    jp Jump_00d_420c


Call_00d_50cc:
    ld de, $50da
    jp Jump_00d_49fb


    add b
    rst $38
    nop
    nop
    db $fc
    ld hl, sp+$04
    ld hl, sp-$08
    ld [$08f4], sp
    ld hl, sp+$50
    ld [$0100], sp
    ld [bc], a
    ld bc, $f8ff
    ld d, b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0504
    dec b
    ld bc, $04ff
    ld d, c
    ld [de], a
    ld d, c
    jr nz, @+$53

    ld l, $51
    inc a
    ld d, c
    ld c, d
    ld d, c
    ld hl, sp+$08
    db $f4
    ld [$f4f8], sp
    inc hl
    nop
    ld bc, $0302
    ld b, $07
    add b
    ld hl, sp+$08
    db $f4
    ld [$f4f8], sp
    inc hl
    nop
    ld bc, $0302
    inc b
    dec b
    add b
    ld hl, sp+$08
    db $f4
    ld [$f4f8], sp
    inc hl
    nop
    ld bc, $0302
    ld [$8009], sp
    ld hl, sp+$08
    db $f4
    ld [$f4f8], sp
    inc hl
    nop
    ld bc, $0b0a
    inc b
    dec b
    add b
    ld hl, sp+$08
    db $f4
    ld [$f5f8], sp
    inc hl
    nop
    ld bc, $0302
    inc c
    dec c
    add b
    ld hl, sp+$08
    db $f4
    ld [$ecf8], sp
    inc h
    ld c, $0f
    db $10
    ld de, $0302
    inc b
    dec b
    add b

Jump_00d_515a:
    push hl
    push bc
    call Call_00d_516f
    pop bc
    pop hl
    ret


    add b
    ld d, c
    rlca
    and h
    db $10
    call nc, Call_000_0051
    ld bc, $0000
    dec c
    inc bc

Call_00d_516f:
jr_00d_516f:
    ld a, $62
    ld [$cc00], a
    ld a, $51
    ld [$cc01], a
    call Call_00d_45aa
    ret c

    jp Jump_00d_5193


    ld a, b
    dec b
    jr z, jr_00d_51a6

    dec b
    jr z, jr_00d_5190

    dec b
    jp z, Jump_00d_51b9

    dec b
    ret z

    or a
    jr z, jr_00d_5193

jr_00d_5190:
    ld b, $00
    ret


Jump_00d_5193:
jr_00d_5193:
    ld a, $2b
    add c
    ld l, a
    ld a, [$cc6a]
    ld [hl], a
    ld a, $05
    add c
    ld l, a
    ld a, [$cc63]
    ld [hl], a
    rst $08
    jr nz, jr_00d_516f

jr_00d_51a6:
    ld a, [$deaf]
    and $fb
    jp nz, Jump_00d_51b9

    ld de, $51cc
    call Call_000_015f
    ldh a, [$ff8b]
    or a
    jr nz, jr_00d_5190

Jump_00d_51b9:
    ld a, $0f
    add c
    ld e, a
    add $1c
    ld l, a
    ld a, [$cc6a]
    ld d, [hl]
    ld [hl], a
    sub d
    ld l, e
    add [hl]
    ld [hl], a
    jp Jump_00d_420c


    call nc, Call_000_0851
    nop
    ld bc, $0302
    rst $38
    call c, $e751
    ld d, c
    ldh a, [c]
    ld d, c
    db $fd
    ld d, c
    nop
    nop
    nop
    nop
    db $f4
    rst $30
    ld sp, $0100
    add b
    add b
    nop
    nop
    nop
    nop
    db $f4
    rst $30
    ld sp, $0302
    add d
    add b
    nop
    nop
    nop
    nop
    db $f4
    rst $30
    ld sp, $0504
    add h
    add b
    nop
    nop
    nop
    nop
    db $f4
    rst $30
    ld sp, $0706
    add [hl]
    add b
    inc l
    ld d, d
    rlca
    and h
    db $10
    add [hl]
    ld d, d
    nop
    ld bc, $0000
    dec c
    ld bc, $e569
    ld a, $08
    ld [$cc00], a
    ld a, $52
    ld [$cc01], a
    call Call_00d_45aa
    jr c, jr_00d_5229

    call Call_00d_523f

jr_00d_5229:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_00d_524c

    dec b
    jr z, jr_00d_523c

    dec b
    jp z, Jump_00d_527d

    dec b
    ret z

    or a
    jr z, jr_00d_523f

jr_00d_523c:
    ld b, $00
    ret


Call_00d_523f:
jr_00d_523f:
    ld a, $05
    add c
    ld l, a
    ld a, [$cc63]
    add $08
    ld [hl], a
    jp Jump_000_015c


jr_00d_524c:
    ld a, [$deaf]
    and $fb
    jp nz, Jump_00d_527d

    ld de, $5280
    call Call_000_015f
    ld a, $0e
    add c
    ld l, a
    ld a, [hl]
    add $80
    ld [hl+], a
    jr nc, jr_00d_5265

    dec [hl]

jr_00d_5265:
    ld d, [hl]
    dec l
    dec l
    ld e, [hl]
    push hl
    push bc
    push de
    ld a, d
    call Call_000_0165
    pop de
    pop bc
    pop hl
    jr c, jr_00d_523c

    call Call_000_0264
    ld a, b
    and $01
    jr z, jr_00d_523c

Jump_00d_527d:
    jp Jump_00d_420c


    add [hl]
    ld d, d
    ld [$0100], sp
    rst $38
    adc d
    ld d, d
    sub e
    ld d, d
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld de, $8000
    nop
    nop
    nop
    nop
    db $fd
    db $fc
    ld de, $8000
    ld l, c
    push hl
    ld a, $1f
    call Call_000_020a
    pop hl
    ld c, l
    ret


    db $ed
    ld d, d
    daa
    dec b
    nop
    add h
    ld d, e
    nop
    ld bc, $0240
    dec c
    ld [bc], a

Call_00d_52b3:
Jump_00d_52b3:
    ld a, l
    ldh [$ff97], a
    ld a, $a6
    ld [$cc00], a
    ld a, $52
    ld [$cc01], a
    call Call_00d_459a
    ret c

    ld a, $1a
    add c
    ld l, a
    res 7, [hl]
    ld a, $2c
    add c
    ld l, a
    ldh a, [$ff97]
    call Call_00d_4943
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $1f
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ldh a, [$ff97]
    or a
    jr nz, jr_00d_532d

    ld de, $0000
    ld b, $00
    jr jr_00d_5326

    ld a, b
    dec b
    jr z, jr_00d_52fd

    dec b
    jr z, jr_00d_52fa

    dec b
    cp $03
    jp z, Jump_00d_5330

jr_00d_52fa:
    ld b, $00
    ret


jr_00d_52fd:
    ld a, $1a
    add c
    ld l, a
    bit 7, [hl]
    res 7, [hl]
    jr nz, jr_00d_530e

    ld a, [$cc96]
    bit 7, a
    jr z, jr_00d_5316

jr_00d_530e:
    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    jr jr_00d_5330

jr_00d_5316:
    inc a
    ld [$cc96], a
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_5330

    ld de, $0100
    ld b, $0a

jr_00d_5326:
    ld a, $2c
    add c
    ld l, a
    call Call_00d_4948

jr_00d_532d:
    call Call_00d_5333

Jump_00d_5330:
jr_00d_5330:
    jp Jump_00d_420c


Call_00d_5333:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    srl a
    ld de, $5344
    call Call_000_0171
    jp Jump_000_015f


    ld d, h
    ld d, e
    ld e, d
    ld d, e
    ld h, b
    ld d, e
    ld h, [hl]
    ld d, e
    ld l, h
    ld d, e
    ld [hl], d
    ld d, e
    ld a, b
    ld d, e
    ld a, [hl]
    ld d, e
    add h
    ld d, e
    inc b
    nop
    ld [$84ff], sp
    ld d, e
    inc b
    ld bc, $ff09
    add h
    ld d, e
    inc b
    ld [bc], a
    ld a, [bc]
    rst $38
    add h
    ld d, e
    inc b
    inc bc
    dec bc
    rst $38
    add h
    ld d, e
    inc b
    inc b
    inc c
    rst $38
    add h
    ld d, e
    inc b
    dec b
    dec c
    rst $38
    add h
    ld d, e
    inc b
    ld b, $0e
    rst $38
    add h
    ld d, e
    inc b
    rlca
    rrca
    rst $38
    and h
    ld d, e
    cp h
    ld d, e
    call nc, $ec53
    ld d, e
    inc b
    ld d, h
    inc e
    ld d, h
    inc [hl]
    ld d, h
    ld c, h
    ld d, h
    or b
    ld d, e
    ret z

    ld d, e
    ldh [rHDMA3], a
    ld hl, sp+$53
    db $10
    ld d, h
    jr z, @+$56

    ld b, b
    ld d, h
    ld e, b
    ld d, h
    ld a, [$fa05]
    dec b
    db $fc
    ld hl, sp+$11
    ld b, d
    nop
    rlca
    inc bc
    add b
    ld a, [$fa05]
    dec b
    db $fc
    ld hl, sp+$11
    ld b, d
    nop
    ld b, $04
    add b
    ld a, [$fa05]
    dec b
    cp $fa
    ld de, $fbc1
    dec b
    inc bc
    add b
    ld a, [$fa05]
    dec b
    cp $fa
    ld de, $fcc1
    inc b
    inc b
    add b
    ld a, [$fa05]
    dec b
    nop
    db $fc
    ld de, $f980
    nop
    inc bc
    add b
    ld a, [$fa05]
    dec b
    nop
    db $fc
    ld de, $fa80
    nop
    inc b
    add b
    ld a, [$fa05]
    dec b
    cp $fe
    ld de, $fb81
    ei
    inc bc
    add b
    ld a, [$fa05]
    dec b
    cp $fe
    ld de, $fc81
    db $fc
    inc b
    add b
    ld a, [$fa05]
    dec b
    db $fc
    nop
    ld de, $0002
    ld sp, hl
    inc bc
    add b
    ld a, [$fa05]
    dec b
    db $fc
    nop
    ld de, $0002
    ld a, [$8004]
    ld a, [$fa05]
    dec b
    ld a, [$11fe]
    ld bc, $fb05
    inc bc
    add b
    ld a, [$fa05]
    dec b
    ld a, [$11fe]
    ld bc, $fc04
    inc b
    add b
    ld a, [$fa05]
    dec b
    ld hl, sp-$04
    ld de, $0700
    nop
    inc bc
    add b
    ld a, [$fa05]
    dec b
    ld hl, sp-$04
    ld de, $0600
    nop
    inc b
    add b
    ld a, [$fa05]
    dec b
    ld a, [$11fa]
    ld b, c
    dec b
    dec b
    inc bc
    add b
    ld a, [$fa05]
    dec b
    ld a, [$11fa]
    ld b, c
    inc b
    inc b
    inc b
    add b
    db $fc
    ld hl, sp+$04
    ld hl, sp+$09
    ld [$0607], sp
    rlca
    add h
    ld b, a
    nop

Jump_00d_5470:
    ld a, b
    dec b
    jr z, jr_00d_54b0

    dec b
    jr z, jr_00d_5480

    dec b
    jp z, Jump_00d_5519

    dec b
    ret z

    or a
    jr z, jr_00d_5483

jr_00d_5480:
    ld b, $00
    ret


jr_00d_5483:
    call Call_00d_4989
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $0c
    jp nz, Jump_00d_5663

Call_00d_5496:
    call Call_00d_41f4
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld a, $3a
    add c
    ld l, a
    ld [hl], $00
    ld de, $55ad
    jp Jump_000_01dd


jr_00d_54b0:
    ld a, $3a
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_54c4

    set 0, [hl]
    ld a, $08
    add c
    ld l, a
    ld a, [$de54]
    and [hl]
    jr nz, jr_00d_5480

jr_00d_54c4:
    ld a, [$deaf]
    and $f3
    jp nz, Jump_00d_5519

    ld a, $2b
    add c
    ld l, a
    ld a, [hl+]
    dec a
    jr z, jr_00d_551f

    dec a
    jp z, Jump_00d_5551

    dec a
    jp z, Jump_00d_55e7

    dec a
    jp z, Jump_00d_5698

    call Call_00d_5567
    jp nc, Jump_00d_5513

    call Call_00d_46c7
    cp $64
    jr nc, jr_00d_5513

    call Call_00d_558a
    ld a, $08
    add c
    ld l, a
    ld a, [$de54]
    or [hl]
    ld [$de54], a
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $0c
    jp nz, $55d3

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld [hl], $3c
    call Call_000_015c

Jump_00d_5513:
jr_00d_5513:
    ld de, $55a7
    call Call_000_015f

Jump_00d_5519:
jr_00d_5519:
    call Call_000_025e
    ld b, $01
    ret


jr_00d_551f:
    call Call_000_01e6
    jr nz, jr_00d_5513

    jr nc, jr_00d_5529

    call Call_00d_7921

jr_00d_5529:
    ld a, $39
    add c
    ld l, a
    ld b, [hl]
    push hl
    push bc
    call Call_00d_7930
    pop bc
    pop hl
    jr c, jr_00d_553f

    ld a, [hl]
    cp b
    jr z, jr_00d_554f

    rst $08
    inc e
    jr jr_00d_554f

jr_00d_553f:
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    add $1c
    ld l, a
    ld [hl], $5a
    add $fc
    ld l, a
    ld [hl], $02

jr_00d_554f:
    jr jr_00d_5519

Jump_00d_5551:
    ld a, $2f
    add c
    ld l, a
    call Call_000_01e9
    dec a
    jr nz, jr_00d_5565

    ld a, [$de58]
    call Call_000_0222
    xor a
    ld [$d1ec], a

jr_00d_5565:
    jr jr_00d_5519

Call_00d_5567:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_00d_5588

    inc a
    ld [hl], a
    cp $1e
    jr nz, jr_00d_557a

    rst $08
    dec l
    jr jr_00d_5586

jr_00d_557a:
    cp $01
    jr nz, jr_00d_5586

    ld a, [$de58]
    ld [$d1ec], a
    rst $08
    nop

jr_00d_5586:
    or a
    ret


jr_00d_5588:
    scf
    ret


Call_00d_558a:
    ld de, $5464
    call Call_000_0201
    ld a, e
    ld [$d3eb], a
    ld a, d
    ld [$d3ec], a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, $07
    call Call_000_01cb
    pop hl
    ld c, l
    ret


    xor l
    ld d, l
    ld [$0100], sp
    rst $38
    or c
    ld d, l
    jp nz, $f855

    rlca
    ldh a, [c]
    add hl, bc
    db $f4
    ldh a, [c]
    inc sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$f880], sp
    rlca
    ldh a, [c]
    add hl, bc
    db $f4
    ldh a, [c]
    inc sp
    nop
    ld bc, $0309
    inc b
    ld a, [bc]
    ld b, $07
    ld [$3e80], sp
    dec hl
    add c
    ld l, a
    ld [hl], $03
    add $ff
    ld l, a
    ld [hl], $78
    add $07
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    jp Jump_00d_5513


Jump_00d_55e7:
    ld a, [$ccc8]
    or a
    jr z, jr_00d_564e

    call Call_000_01e6
    jr nz, jr_00d_564e

    call Call_00d_56f6
    ld a, [de]
    ldh [$ff8a], a
    inc de
    inc de
    ld a, $31
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_564e

    ldh a, [$ff8a]
    ld [hl], a
    inc l
    ld a, [hl]
    inc [hl]
    ld b, a
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $ff
    jr z, jr_00d_5651

    inc de
    ldh [$ff9b], a
    ld a, [de]
    inc de
    ldh [$ff9c], a
    ld a, [de]
    inc de
    ldh [$ff8b], a
    ld l, c
    push hl
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ld bc, $0101
    ld hl, $ff8b
    call Call_000_0246
    ldh a, [$ff9b]
    add a
    add a
    add a
    add a
    add $08
    ld e, a
    ldh a, [$ff9c]
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    ld c, l

jr_00d_564e:
    jp Jump_00d_5513


jr_00d_5651:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    ld a, $2a
    add c
    ld l, a
    ld [hl], $5a
    xor a
    ld [$ccc9], a
    jr jr_00d_564e

Jump_00d_5663:
    cp $04
    jr nz, jr_00d_566d

    ld b, $2d
    ld d, $28
    jr jr_00d_5671

jr_00d_566d:
    ld b, $2e
    ld d, $50

jr_00d_5671:
    ld a, $0a
    add c
    ld l, a
    ld [hl], b
    add $03
    ld l, a
    ld [hl], b
    ld e, $01
    call $788a
    ld a, $2b
    add c
    ld l, a
    ld [hl], $04
    add $ff
    ld l, a
    ld [hl], $3c
    add $03
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $3c
    ld a, $01
    ld [$ccc9], a
    ret


Jump_00d_5698:
    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_56c6

    call Call_00d_56f6
    inc de
    ld a, [de]
    ld b, a
    ld a, [$d722]
    cp b
    jr nz, jr_00d_56f3

    ld a, $20
    ld [$d771], a
    xor a
    ld [$d163], a
    ld [$d773], a
    ld [$d774], a
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    ld a, $00
    ld [$d703], a

jr_00d_56c6:
    call Call_000_01e6
    jr nz, jr_00d_56f3

    call Call_00d_5567
    jr nc, jr_00d_56f3

    ld a, $2e
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_56f3

    ld de, $572f
    call Call_00d_78cb
    jr nc, jr_00d_56f3

    call Call_00d_5496
    ld a, $1c
    add c
    ld l, a
    ld [hl], $09
    add $17
    ld l, a
    ld [hl], $96
    xor a
    ld [$d771], a

jr_00d_56f3:
    jp Jump_00d_5519


Call_00d_56f6:
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $0c
    cp $04
    ld de, $5707
    ret z

    ld de, $5716
    ret


    inc b
    ld l, e
    ld bc, $1804
    ld bc, $1205
    ld bc, $1206
    ld bc, $1207
    rst $38
    inc b
    ld [hl], b
    nop
    dec b
    ld l, a
    ld bc, $7005
    nop
    ld b, $6d
    ld bc, $6e06
    nop
    rlca
    ld l, e
    ld bc, $6c07
    rst $38
    ldh a, [c]
    add hl, bc
    db $f4
    ldh a, [c]
    ld hl, sp+$07
    ldh a, [c]
    add hl, bc
    jp nz, Jump_000_0708

    ld bc, $a700
    ld b, a
    ld b, b

Jump_00d_573b:
    ld a, b
    dec b
    jr z, jr_00d_577d

    dec b
    jr z, jr_00d_574b

    dec b
    jp z, Jump_00d_579d

    dec b
    ret z

    or a
    jr z, jr_00d_575d

Jump_00d_574b:
jr_00d_574b:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld a, [hl]
    add $0a
    ld d, a
    call Call_000_01f2
    ld b, $00
    ret


jr_00d_575d:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add $0a
    ld e, a
    ld a, $2a
    add c
    ld l, a
    ld [hl], e
    add $01
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    add $ec
    ld l, a
    ld [hl], $00
    ld de, $57d7
    jp Jump_000_01dd


jr_00d_577d:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_579d

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_57a1

    ld de, $57df
    call Call_00d_467a
    jr nc, jr_00d_579d

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01

Jump_00d_579d:
jr_00d_579d:
    call Call_00d_420c
    ret


jr_00d_57a1:
    call Call_000_01e6
    jp z, Jump_00d_574b

    ld de, $57d0
    cp $28
    jr c, jr_00d_57b8

    ld de, $57c9
    cp $50
    jr c, jr_00d_57b8

    ld de, $57c2

jr_00d_57b8:
    call Call_000_015f
    jr jr_00d_579d

    rst $10
    ld d, a
    inc b
    nop
    rst $38
    rst $10
    ld d, a
    ld [$0201], sp
    inc bc
    rst $38
    rst $10
    ld d, a
    inc b
    ld bc, $0302
    rst $38
    rst $10
    ld d, a
    ld [bc], a
    ld bc, $0302
    rst $38
    rst $18
    ld d, a
    db $ec
    ld d, a
    ld sp, hl
    ld d, a
    ld b, $58
    ld hl, sp+$07
    add hl, bc
    db $10
    add hl, bc
    ld hl, sp+$00
    stop
    ld [$3000], sp
    add b
    ld hl, sp+$07
    ld a, [bc]
    db $10
    add hl, bc
    ld hl, sp+$01
    stop
    ld [$3001], sp
    add b
    ld hl, sp+$07
    ld a, [bc]
    db $10
    add hl, bc
    ld hl, sp+$02
    stop
    ld [$3002], sp
    add b
    ld hl, sp+$07
    ld a, [bc]
    db $10
    add hl, bc
    ld hl, sp+$03
    stop
    ld [$3003], sp
    add b
    jp nz, Jump_000_0708

    inc bc
    ld bc, $4725
    nop

Jump_00d_581b:
    ld a, b
    dec b
    jr z, jr_00d_583d

    dec b
    jr z, jr_00d_582b

    dec b
    jp z, Jump_00d_584d

    dec b
    ret z

    or a
    jr z, jr_00d_582e

jr_00d_582b:
    ld b, $00
    ret


jr_00d_582e:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    call Call_00d_45f9
    ld de, $5856
    jp Jump_000_01dd


jr_00d_583d:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_584d

    call Call_00d_41f4
    ld de, $5850
    call Call_000_015f

Jump_00d_584d:
    jp Jump_00d_420c


    ld d, [hl]
    ld e, b
    ld b, $00
    ld bc, $5aff
    ld e, b
    ld h, a
    ld e, b
    ld a, [$fc05]
    inc bc
    db $fc
    ld hl, sp+$00
    stop
    ld [$3000], sp
    add b
    ld a, [$fc05]
    inc bc
    db $fc
    ld hl, sp+$01
    stop
    ld [$3001], sp
    add b
    ld [bc], a
    ld [hl], a
    ld e, b
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld a, $22
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld a, a
    ld b, c
    ld a, a
    ld e, l
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc e

jr_00d_5897:
    nop
    rst $38
    jr nz, jr_00d_5897

    or $08
    and $0a
    db $f4
    inc b
    inc c
    inc b
    or b
    ld e, d
    ld b, a
    nop
    dec b
    inc bc
    ld [bc], a
    inc b
    dec c
    pop bc
    add b
    cp $00
    nop
    ld bc, $08ce
    dec b
    inc bc
    ld b, $25
    ld b, a
    ld [bc], a

Jump_00d_58ba:
    ld a, b
    dec b
    jr z, jr_00d_58f1

    dec b
    jr z, jr_00d_58ca

    dec b
    jp z, Jump_00d_592f

    dec b
    ret z

    or a
    jr z, jr_00d_58d1

jr_00d_58ca:
    xor a
    ld [$cca3], a
    ld b, $00
    ret


jr_00d_58d1:
    push hl
    ld hl, $cca2
    ld a, [hl]
    or a
    jr nz, jr_00d_58db

    ld [hl], $01

jr_00d_58db:
    pop hl
    call Call_00d_4989
    call Call_00d_480a
    call Call_00d_5a50
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    ld de, $5ac2
    jp Jump_000_01dd


jr_00d_58f1:
    ld a, [$deaf]
    and $27
    jp nz, Jump_00d_592f

    call Call_00d_5c43
    call Call_00d_41f4
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_594d

    dec a
    jp z, Jump_00d_59bb

    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    call Call_000_01e6
    jr nz, jr_00d_592f

    ld a, $2f
    add c
    ld l, a
    bit 0, [hl]
    res 0, [hl]
    jr nz, jr_00d_592c

    call Call_00d_46c7
    cp $34
    jr c, jr_00d_592c

    call Call_00d_5938
    jr jr_00d_592f

jr_00d_592c:
    call Call_00d_59ae

Jump_00d_592f:
jr_00d_592f:
    call Call_00d_4819

Jump_00d_5932:
    call Call_00d_5a5c
    jp Jump_00d_420c


Call_00d_5938:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $78
    call Call_000_015c
    ret


jr_00d_594d:
    call Call_00d_46c7
    cp $34
    jr nc, jr_00d_595a

    call Call_00d_59ae
    jp Jump_00d_59ac


jr_00d_595a:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_5972

    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    call Call_000_01e6
    jr nz, jr_00d_59ac

    call Call_00d_5a50
    jr jr_00d_59ac

jr_00d_5972:
    ld de, $5a9e
    call Call_00d_4701
    jr nc, jr_00d_5982

    ld a, $2d
    add c
    ld l, a
    ld [hl], $01
    jr jr_00d_59ac

jr_00d_5982:
    ldh a, [$ff8f]
    or a
    jr z, jr_00d_59ac

    ld a, b
    cp $03
    jr nz, jr_00d_59ac

    ld a, $2c
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_59ac

    set 0, [hl]
    ld l, c
    push hl
    ld de, $589f
    ld a, $a3
    ld [$cc00], a
    ld a, $58
    ld [$cc01], a
    ld a, $00
    call Call_00d_4a7a
    pop hl
    ld c, l

Jump_00d_59ac:
jr_00d_59ac:
    jr jr_00d_592f

Call_00d_59ae:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    inc l
    ld [hl], $00
    call Call_000_015c
    ret


Jump_00d_59bb:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_59dc

    dec a
    jr z, jr_00d_5a12

    ld de, $5ab5
    call Call_00d_4701
    jr nc, jr_00d_59d9

    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld de, $5897
    call Call_00d_4072

jr_00d_59d9:
    jp Jump_00d_592f


jr_00d_59dc:
    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    call Call_00d_5a34
    bit 0, a
    jr z, jr_00d_59f4

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00d_59f4

    call Call_00d_40a5

jr_00d_59f4:
    ldh a, [$ffa9]
    bit 1, a
    jr z, jr_00d_59d9

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_00d_5a08

    xor a
    ld [hl-], a
    ld [hl], a
    jp Jump_00d_5932


jr_00d_5a08:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    jr jr_00d_59d9

jr_00d_5a12:
    ld de, $5abb
    call Call_00d_4701
    jr c, jr_00d_5a2f

    ldh a, [$ff8f]
    or a
    jr z, jr_00d_59d9

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp $01
    jr nz, jr_00d_59d9

    call Call_00d_5c2f
    rst $08
    ld a, [hl+]
    jr jr_00d_59d9

jr_00d_5a2f:
    call Call_00d_5a50
    jr jr_00d_59d9

Call_00d_5a34:
    call Call_00d_413b
    ld de, $589b
    push de
    call Call_00d_41ab
    pop de
    ret z

    push af
    bit 1, a
    jr z, jr_00d_5a4e

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    call z, Call_00d_4a2f

jr_00d_5a4e:
    pop af
    ret


Call_00d_5a50:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $1e
    ret


Call_00d_5a5c:
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_00d_5a98

    ld de, $5c13
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    call Call_000_0171
    ld a, e
    or d
    jr z, jr_00d_5a97

    push de
    call Call_00d_4745
    xor a
    ld [$cc47], a
    ld b, $04
    pop de
    call Call_000_021f
    ld a, $18
    add c
    ld l, a
    ld a, [$cc46]
    ld [hl], a
    ld a, $21
    add c
    ld l, a
    ld a, [$c3e2]
    ld [hl], a
    ld a, [$c238]
    and $07
    jr nz, jr_00d_5a98

jr_00d_5a97:
    ret


jr_00d_5a98:
    ret


    jp nz, Jump_000_3c5a

    ld [bc], a
    rst $38
    jp nz, Jump_000_085a

    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff02
    jp nz, $045a

    ld b, $ff
    jp nz, $045a

    nop
    inc b
    rst $38
    jp nz, $045a

    inc b
    nop
    nop
    rst $38
    ret nc

    ld e, d
    ld bc, $325b
    ld e, e
    ld h, e
    ld e, e
    sub h
    ld e, e
    call $0a5b
    ld e, h
    ld hl, sp+$08
    or $0a
    db $f4
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ec], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    add b
    ld hl, sp+$08
    or $0a
    db $f4
    db $f4
    dec bc
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$0eec], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    add b
    ld hl, sp+$08
    or $08
    db $f4
    db $f4
    ld de, $0010
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$14ec], sp
    stop
    ld [$1015], sp
    nop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    add b
    ld hl, sp+$08
    or $08
    db $f4
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$18ec], sp
    stop
    ld [$1019], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$1ae8], sp
    stop
    ld [$101b], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    add b
    ld hl, sp+$08
    xor $08
    db $ec
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ec], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$1df0], sp
    stop
    ld [$301d], sp
    add b
    ld hl, sp+$08
    and $08
    db $e4
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ec], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$1cf4], sp
    db $10
    ld [$1dfc], sp
    stop
    ld [$301d], sp
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld e, $10
    add b
    rra
    ld e, h
    nop
    nop
    nop
    nop
    inc hl
    ld e, h
    daa
    ld e, h
    dec hl
    ld e, h
    db $f4
    inc c
    db $f4
    ld a, [bc]
    db $f4
    inc c
    db $f4
    ld a, [bc]
    db $f4
    inc c
    db $eb
    ld [bc], a
    db $f4
    inc c
    db $e3
    ei

Call_00d_5c2f:
    ld a, [$cca2]
    cp $01
    jr nz, jr_00d_5c3c

    ld a, $10
    ld [$cca0], a
    ret


jr_00d_5c3c:
    ld a, $32
    add c
    ld l, a
    ld [hl], $10
    ret


Call_00d_5c43:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_5c62

    dec [hl]
    cp $08
    ld b, $01
    jr c, jr_00d_5c58

    inc b
    cp $10
    jr c, jr_00d_5c58

    inc b

jr_00d_5c58:
    ld a, [$d76d]
    bit 1, a
    ld a, b
    jr z, jr_00d_5c62

    cpl
    inc a

jr_00d_5c62:
    ld [$cca3], a
    ret


    call $09fe
    ld bc, $0309
    ld a, [bc]
    inc b
    ld a, [bc]
    ld b, $09
    rlca
    ld sp, hl
    add hl, bc
    push af
    ld [$08c9], sp
    rlca
    ld bc, $2503
    ld b, a
    ld [bc], a

Jump_00d_5c7e:
    ld a, b
    dec b
    jr z, jr_00d_5ccd

    dec b
    jr z, jr_00d_5c8f

    dec b
    jp z, Jump_00d_5d18

    dec b
    jr z, jr_00d_5c92

    or a
    jr z, jr_00d_5ca1

jr_00d_5c8f:
    ld b, $00
    ret


jr_00d_5c92:
    ld a, [$c3c3]
    bit 2, a
    ld a, $18
    jr z, jr_00d_5c9d

    ld a, $19

jr_00d_5c9d:
    call Call_000_020a
    ret


jr_00d_5ca1:
    ld a, $06
    add c
    ld l, a
    bit 2, [hl]
    jr z, jr_00d_5caf

    ld a, $1a
    add c
    ld l, a
    ld [hl], $03

jr_00d_5caf:
    call Call_00d_480a
    call Call_00d_4989
    call Call_00d_5e3d
    call Call_00d_41f4
    call Call_00d_5e97
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    call Call_00d_409b
    ld de, $5fac
    jp Jump_000_01dd


jr_00d_5ccd:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_5d18

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_5d32

    call Call_00d_4819
    call Call_00d_5df9
    call Call_00d_5edc
    push af
    pop de
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    cp $8c
    jr nc, jr_00d_5d03

    call Call_00d_46c7
    cp $34
    jr c, jr_00d_5d15

    ld a, $2f
    add c
    ld l, a
    inc [hl]
    call Call_000_01e6
    jr z, jr_00d_5d15

    jr jr_00d_5d10

jr_00d_5d03:
    push de
    pop af
    jr c, jr_00d_5d10

    ld a, $2f
    add c
    ld l, a
    ld [hl], $00
    call Call_00d_5f21

jr_00d_5d10:
    call Call_00d_5eb4
    jr jr_00d_5d18

jr_00d_5d15:
    call Call_00d_5de4

Jump_00d_5d18:
jr_00d_5d18:
    ld a, $17
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld a, e
    cp $05
    jr c, jr_00d_5d2d

    cp $09
    jr nc, jr_00d_5d2d

    res 1, [hl]
    jr jr_00d_5d2f

jr_00d_5d2d:
    set 1, [hl]

jr_00d_5d2f:
    jp Jump_00d_420c


jr_00d_5d32:
    call Call_00d_5df9
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_5d7a

    dec a
    jp z, Jump_00d_5dad

    dec a
    jp z, Jump_00d_5dd8

    call Call_00d_5f83
    jr c, jr_00d_5d5d

    ldh a, [$ff8f]
    or a
    jr z, jr_00d_5d77

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp $03
    jr nz, jr_00d_5d77

    call Call_00d_5e72
    jr jr_00d_5d77

Jump_00d_5d5d:
jr_00d_5d5d:
    ld a, $30
    add c
    ld l, a
    ld [hl], $01
    inc l
    ld [hl], $00
    add $fa
    ld l, a
    ld [hl], $00
    call Call_000_015c
    call Call_00d_5e72
    ld de, $5c66
    call Call_00d_40b5

Jump_00d_5d77:
jr_00d_5d77:
    jp Jump_00d_5d18


jr_00d_5d7a:
    call Call_00d_5f8f
    ld a, $32
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_5d9d

    ld a, $0d
    add c
    ld l, a
    ld a, [$c3e7]
    sub [hl]
    jr nc, jr_00d_5d91

    cpl
    inc a

jr_00d_5d91:
    ld e, a
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    cp $40
    jr c, jr_00d_5d77

jr_00d_5d9d:
    ld a, $30
    add c
    ld l, a
    ld [hl], $02
    add $fa
    ld l, a
    ld [hl], $1e
    call Call_00d_40a5
    jr jr_00d_5d77

Jump_00d_5dad:
    ld a, $17
    add c
    ld l, a
    ld [hl], $06
    call Call_00d_5e72
    ld a, $32
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_5dcc

    call Call_000_01e6
    jp z, Jump_00d_5d5d

    call Call_00d_46c7
    cp $34
    jp c, Jump_00d_5d77

jr_00d_5dcc:
    ld a, $30
    add c
    ld l, a
    ld [hl], $03
    call Call_000_015c
    jp Jump_00d_5d77


Jump_00d_5dd8:
    call Call_00d_5f89
    jp nc, Jump_00d_5d77

    call Call_00d_5de4
    jp Jump_00d_5d77


Call_00d_5de4:
    ld a, $32
    add c
    ld l, a
    bit 0, [hl]
    res 0, [hl]
    jr nz, jr_00d_5df6

    call Call_00d_46c7
    cp $34
    jp c, Jump_00d_5f68

jr_00d_5df6:
    jp Jump_00d_5e9f


Call_00d_5df9:
    call Call_00d_413b
    ld de, $5c72
    call Call_00d_41ab
    bit 0, a
    jr nz, jr_00d_5e13

    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_5e1c

    call Call_00d_5e43
    jr jr_00d_5e1c

jr_00d_5e13:
    call Call_00d_40a5
    ld a, $32
    add c
    ld l, a
    set 0, [hl]

jr_00d_5e1c:
    ldh a, [$ffa9]
    bit 1, a
    ret z

    ld a, $0f
    add c
    ld l, a
    ld b, [hl]
    push hl
    push bc
    call Call_00d_5e3d
    pop bc
    pop hl
    jr c, jr_00d_5e39

    ld a, [hl]
    sub b
    jr nc, jr_00d_5e35

    cpl
    inc a

jr_00d_5e35:
    cp $08
    jr c, jr_00d_5e3a

jr_00d_5e39:
    ld [hl], b

jr_00d_5e3a:
    jp Jump_00d_40ad


Call_00d_5e3d:
    ld de, $5c72
    jp Jump_00d_4a2f


Call_00d_5e43:
    ld a, $1d
    add c
    ld l, a
    ld a, [hl+]
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
    sub e
    ld e, a
    ld a, b
    sbc d
    ld [hl-], a
    ld [hl], e
    ret


Call_00d_5e66:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld b, $0d
    ret z

    ld b, $05
    ret


Call_00d_5e72:
    call Call_00d_41f4
    ld a, $24
    add c
    ld l, a
    ld e, [hl]
    add $08
    ld l, a
    ld a, [hl]
    bit 0, e
    jr nz, jr_00d_5e88

    cp $09
    jr nc, jr_00d_5e96

    jr jr_00d_5e8c

jr_00d_5e88:
    cp $09
    jr c, jr_00d_5e96

jr_00d_5e8c:
    ld a, $12
    sub [hl]
    cp $11
    jr c, jr_00d_5e95

    sub $10

jr_00d_5e95:
    ld [hl], a

jr_00d_5e96:
    ret


Call_00d_5e97:
    call Call_00d_5e66
    ld a, $2c
    add c
    ld l, a
    ld [hl], b

Jump_00d_5e9f:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    inc l
    ld [hl+], a
    ld [hl], a
    ld a, $2f
    add c
    ld l, a
    ld [hl], $50
    add $fb
    ld l, a
    ld [hl], $b4
    ret


Call_00d_5eb4:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    and $0f
    ld de, $5ecc
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $17
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    ret


    nop
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000

Call_00d_5edc:
    ld a, $2e
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_5f1d

    ld [hl], $04
    call Call_00d_5e72
    call Call_000_024f
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp b
    jr z, jr_00d_5f1f

    cp $09
    jr nc, jr_00d_5f0c

    cp b
    jr nc, jr_00d_5f04

    cp $07
    jr z, jr_00d_5f1f

    inc a
    ld [hl], a
    jr jr_00d_5f1d

jr_00d_5f04:
    cp $03
    jr z, jr_00d_5f1f

    dec a
    ld [hl], a
    jr jr_00d_5f1d

jr_00d_5f0c:
    cp b
    jr c, jr_00d_5f17

    cp $0b
    jr z, jr_00d_5f1f

    dec a
    ld [hl], a
    jr jr_00d_5f1d

jr_00d_5f17:
    cp $0f
    jr z, jr_00d_5f1f

    inc a
    ld [hl], a

jr_00d_5f1d:
    scf
    ret


jr_00d_5f1f:
    xor a
    ret


Call_00d_5f21:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $09
    push af
    jr c, jr_00d_5f2e

    ld a, $12
    sub [hl]

jr_00d_5f2e:
    sub $03
    ld de, $5c68
    call Call_000_0171
    pop af
    jr c, jr_00d_5f3d

    ld a, e
    cpl
    inc a
    ld e, a

jr_00d_5f3d:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    inc l
    ld a, [hl]
    add d
    ld d, a
    ld a, $33
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    ld b, $15
    ld l, $02
    call Call_000_0159
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ret


Jump_00d_5f68:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    call Call_00d_5e66
    ld a, $2c
    add c
    ld l, a
    ld [hl], b
    inc l
    inc l
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ret


Call_00d_5f83:
    ld de, $5f95
    jp Jump_00d_4701


Call_00d_5f89:
    ld de, $5f9d
    jp Jump_00d_4701


Call_00d_5f8f:
    ld de, $5fa4
    jp Jump_000_015f


    xor h
    ld e, a
    ld [$0502], sp
    ld b, $06
    rst $38
    xor h
    ld e, a
    ld [$0506], sp
    ld [bc], a
    rst $38
    xor h
    ld e, a
    ld [$0608], sp
    rlca
    ld b, $ff
    cp [hl]
    ld e, a
    db $db
    ld e, a
    ld hl, sp+$5f
    dec d
    ld h, b
    ld [hl-], a
    ld h, b
    ld c, a
    ld h, b
    ld a, b
    ld h, b
    and c
    ld h, b
    jp z, $f960

    add hl, bc
    db $fc
    ld [$f4fa], sp
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
    ld sp, hl
    add hl, bc
    db $fc
    ld [$f4fa], sp
    ld b, $10
    nop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    add b
    ld sp, hl
    add hl, bc
    db $fc
    ld [$f4fa], sp
    add hl, bc
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0af0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    add b
    ld sp, hl
    add hl, bc
    db $fc
    ld [$f4fa], sp
    dec bc
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0cf0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    add b
    ld sp, hl
    add hl, bc
    db $fc
    ld [$f4fa], sp
    dec c
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0ef0], sp
    stop
    ld [$100f], sp
    nop
    ld [$1005], sp
    add b
    ld sp, hl
    add hl, bc
    ld sp, hl
    ld [$f4f7], sp
    add hl, bc
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0af0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    ld [$10f0], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    add b
    ld sp, hl
    add hl, bc
    push af
    ld [$f4f3], sp
    add hl, bc
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0af0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    ld [$13f0], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    add b
    ld sp, hl
    add hl, bc
    push af
    ld [$f4f2], sp
    add hl, bc
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0af0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    ld [$16f0], sp
    stop
    ld [$1017], sp
    nop
    ld [$1018], sp
    add b
    ld sp, hl
    add hl, bc
    push af
    ld [$f4f2], sp
    add hl, bc
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0af0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1005], sp
    ld [$19f0], sp
    stop
    ld [$101a], sp
    nop
    ld [$101b], sp
    add b
    di
    inc h
    dec c
    inc h
    add $08
    ld b, $09
    ld b, $25
    ld a, b
    nop

Jump_00d_60ff:
    ld a, b
    dec b
    jp z, Jump_00d_6186

    dec b
    jr z, jr_00d_6110

    dec b
    jp z, Jump_00d_6211

    dec b
    ret z

    or a
    jr z, jr_00d_6145

jr_00d_6110:
    ld a, $80
    ld [$cc96], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc hl
    ld a, [hl+]
    add $18
    ldh [$ff8b], a
    ld de, $65ac
    ld b, $0d
    call Call_00d_4e8e
    ld a, $01
    ld [$c3e9], a
    ld a, $2b
    add c
    ld l, a
    set 7, [hl]
    add $ff
    ld l, a
    ld [hl], $0a
    add $ee
    ld l, a
    ld [hl], $01
    add $fb
    ld l, a
    set 7, [hl]
    ret


jr_00d_6145:
    ld l, c
    push hl
    ld a, $1f
    call Call_000_020a
    pop hl
    ld c, l
    ld a, $01
    ld [$de34], a
    ld a, $0d
    add c
    ld l, a
    ld e, $78
    ld d, $05
    ld [hl], e
    add $02
    ld l, a
    ld [hl], d
    call $6503
    call Call_000_025e
    call Call_00d_41f4
    call Call_00d_6522
    call Call_00d_409b
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $0b
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_000_015c
    ld de, $6612
    jp Jump_000_01dd


Jump_00d_6186:
    ld a, [$deaf]
    and $23
    jp nz, Jump_00d_6211

    ld a, $2b
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_00d_61ab

    call Call_000_01e6
    jr nz, jr_00d_6211

    or a
    jr z, jr_00d_61a4

    call Call_00d_653b
    ld b, $01
    ret


Jump_00d_61a4:
jr_00d_61a4:
    xor a
    ld [$de34], a
    ld b, $00
    ret


jr_00d_61ab:
    call $63f1
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    push hl
    push bc
    call Call_00d_41f4
    pop bc
    pop hl
    ld a, [hl]
    xor b
    call nz, Call_00d_6522
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_00d_6249

    dec a
    jp z, Jump_00d_6291

    call Call_000_01e6
    jr nz, jr_00d_61fc

    call Call_00d_623d
    jr jr_00d_61fc

Jump_00d_61d6:
    ld a, $36
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $f0
    jr c, jr_00d_61e4

    ld [hl], $00
    jr jr_00d_61fc

jr_00d_61e4:
    cp $3d
    jr z, jr_00d_61f9

    cp $44
    jr z, jr_00d_61f9

    cp $4c
    jr z, jr_00d_61f9

    cp $96
    jr nz, jr_00d_61fc

    call Call_00d_66a0
    jr jr_00d_61fc

jr_00d_61f9:
    call Call_00d_63ff

jr_00d_61fc:
    call Call_00d_642d
    call Call_00d_6472
    call Call_00d_6367
    call Call_00d_669c
    call Call_000_015f
    call Call_00d_4121
    call Call_00d_6335

Jump_00d_6211:
jr_00d_6211:
    ld a, $21
    add c
    ld l, a
    bit 1, [hl]
    ld a, $1b
    jr z, jr_00d_621d

    ld a, $d4

jr_00d_621d:
    ld [$d142], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$d14e], a
    inc hl
    ld a, [hl]
    ld [$d14f], a
    xor a
    ld [$cc96], a
    call Call_00d_420c
    ld a, b
    or a
    ret nz

    call Call_00d_653b
    jp Jump_00d_61a4


Call_00d_623d:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $07
    ld l, a
    ld [hl], $3c
    ret


Jump_00d_6249:
    ld a, $32
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_6278

    or a
    jr z, jr_00d_6270

    ld a, $50
    ldh [$ff8a], a
    ld a, $b0
    ldh [$ff8b], a
    ld d, $18
    call Call_00d_453e
    ld e, a
    ld d, $04
    call $6503
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    jr jr_00d_6278

jr_00d_6270:
    call Call_00d_630b
    jr nz, jr_00d_6278

    call Call_00d_627b

jr_00d_6278:
    jp Jump_00d_61d6


Call_00d_627b:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $09
    ld l, a
    ld [hl], $00
    add $fe
    ld l, a
    ld [hl], $1e
    add $03
    ld l, a
    ld [hl], $00
    ret


Jump_00d_6291:
    ld a, $35
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_62ca

    ld a, $32
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_62c7

    or a
    jr z, jr_00d_62b7

    ld a, $2c
    add c
    ld l, a
    ld e, [hl]
    ld d, $18
    call $6503
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    jr jr_00d_62c7

jr_00d_62b7:
    call Call_00d_630b
    jr nz, jr_00d_62c7

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    add $03
    ld l, a
    ld [hl], $01

jr_00d_62c7:
    jp Jump_00d_61d6


jr_00d_62ca:
    ld a, $32
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_6308

    or a
    jr z, jr_00d_62e8

    ld a, $2c
    add c
    ld l, a
    ld e, [hl]
    ld d, $04
    call $6503
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    jr jr_00d_6308

jr_00d_62e8:
    call Call_00d_630b
    jr nz, jr_00d_6308

    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_00d_62fc

    call Call_00d_623d
    jr jr_00d_6308

jr_00d_62fc:
    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    ld a, $35
    add c
    ld l, a
    ld [hl], $00

jr_00d_6308:
    jp Jump_00d_61d6


Call_00d_630b:
    ld a, $2c
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    add $07
    ld l, a
    ld a, [$c3e7]
    sub e
    jr nc, jr_00d_631d

    cpl
    inc a

jr_00d_631d:
    cp $02
    jr nc, jr_00d_6323

    set 0, [hl]

jr_00d_6323:
    ld a, [$c3e8]
    sub d
    jr nc, jr_00d_632b

    cpl
    inc a

jr_00d_632b:
    cp $02
    jr nc, jr_00d_6331

    set 1, [hl]

jr_00d_6331:
    ld a, [hl]
    cp $03
    ret


Call_00d_6335:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    ld d, $01
    jr nc, jr_00d_6346

    cp $50
    ld d, $50
    jr c, jr_00d_634e

jr_00d_6346:
    ld [hl], d
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a

jr_00d_634e:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    ld e, $00
    jr nc, jr_00d_635e

    ld e, $b8
    cp e
    jr c, jr_00d_6366

jr_00d_635e:
    ld [hl], e
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a

jr_00d_6366:
    ret


Call_00d_6367:
    call Call_00d_6385
    ld a, $1d
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    push hl
    ld a, $80
    ldh [$ff8b], a
    ld a, $01
    ldh [$ff8c], a
    call Call_000_0213
    pop hl
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_6385:
    ld a, $39
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_00d_6392

    ld de, $0000
    ret


jr_00d_6392:
    ld [hl], $04
    ld a, $2c
    add c
    ld l, a
    ld b, [hl]
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    sub b
    push af
    jr nc, jr_00d_63a4

    cpl
    inc a

jr_00d_63a4:
    ld b, a
    push hl
    ld hl, $63e5

jr_00d_63a9:
    ld a, b
    cp [hl]
    jr c, jr_00d_63b2

    inc hl
    inc hl
    inc hl
    jr jr_00d_63a9

jr_00d_63b2:
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    pop af
    call nc, Call_000_016b
    push hl
    ld a, $1d
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, d
    jr nz, jr_00d_63d2

    bit 7, h
    jr nz, jr_00d_63e0

    call Call_00d_44c2
    jr c, jr_00d_63e0

    jr jr_00d_63db

jr_00d_63d2:
    bit 7, h
    jr z, jr_00d_63db

    call Call_00d_44c2
    jr c, jr_00d_63e0

jr_00d_63db:
    pop hl
    ld de, $ffe0
    ret


jr_00d_63e0:
    pop hl
    ld de, $0020
    ret


    ld [bc], a
    nop
    nop
    ld b, $20
    nop
    ld [de], a
    add b
    nop
    rst $38
    add b
    ld bc, $373e
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    ld [hl], $00
    rst $08
    daa
    ret


Call_00d_63ff:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld a, $0a
    jr z, jr_00d_640b

    ld a, $06

jr_00d_640b:
    push af
    ld de, $60f3
    call Call_000_0201
    ld a, $66
    ld [$cddb], a
    ld a, $02
    ld [$cddc], a
    ld b, $15
    ld l, $01
    pop af
    call Call_000_0159
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ret


Call_00d_642d:
    call Call_000_01e6
    jr nz, jr_00d_6446

    ld [hl], $02
    call Call_00d_64a9
    ld de, $fff8
    jr nz, jr_00d_643f

    ld de, $0008

jr_00d_643f:
    ld a, $30
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d

jr_00d_6446:
    ld a, $30
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $2e
    add c
    ld l, a
    push hl
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    ld hl, $fff0
    or a
    jr z, jr_00d_646b

    call Call_00d_44c2
    jr c, jr_00d_646b

    ld hl, $ffd0
    call Call_00d_44c2
    jr c, jr_00d_646d

jr_00d_646b:
    ld e, l
    ld d, h

jr_00d_646d:
    pop hl
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_6472:
    ld a, $2e
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    push hl
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    push hl
    bit 7, d
    jr nz, jr_00d_649a

    ld hl, $0200
    call Call_00d_44c2
    jr c, jr_00d_64a2

    jr jr_00d_64a4

jr_00d_649a:
    ld hl, $ff00
    call Call_00d_44c2
    jr c, jr_00d_64a4

jr_00d_64a2:
    ld e, l
    ld d, h

jr_00d_64a4:
    pop hl
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_64a9:
    ld a, $2d
    add c
    ld l, a
    ld b, [hl]
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    sub b
    push af
    jr nc, jr_00d_64b9

    cpl
    inc a

jr_00d_64b9:
    ld b, a
    push hl
    ld hl, $64f7

jr_00d_64be:
    ld a, b
    cp [hl]
    jr c, jr_00d_64c7

    inc hl
    inc hl
    inc hl
    jr jr_00d_64be

jr_00d_64c7:
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    pop af
    call nc, Call_000_016b
    push hl
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, d
    jr nz, jr_00d_64e7

    bit 7, h
    jr nz, jr_00d_64f4

    call Call_00d_44c2
    jr c, jr_00d_64f4

    jr jr_00d_64f0

jr_00d_64e7:
    bit 7, h
    jr z, jr_00d_64f0

    call Call_00d_44c2
    jr c, jr_00d_64f4

jr_00d_64f0:
    pop hl
    xor a
    inc a
    ret


jr_00d_64f4:
    pop hl
    xor a
    ret


    inc b
    ld b, b
    nop
    ld b, $80
    nop
    ld [de], a
    nop
    ld bc, $80ff
    ld bc, $2c3e
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


    ld [de], a
    ld h, [hl]
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38

Call_00d_6515:
    ld a, [$de8f]
    cp $02
    ld de, $9808
    ret z

    ld de, $9818
    ret


Call_00d_6522:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld hl, $6560
    jr z, jr_00d_6532

    ld hl, $6586

jr_00d_6532:
    call Call_00d_6515
    call Call_00d_44cd
    pop hl
    ld c, l
    ret


Call_00d_653b:
    ld l, c
    push hl
    call Call_00d_6515
    ld l, e
    ld h, d
    ld bc, $0a0e
    ld a, $02
    call Call_00d_44e6
    pop hl
    ld c, l
    ld a, $0d
    add c
    ld l, a
    ld a, $78
    ld [hl], a
    ld [$d14e], a
    add $02
    ld l, a
    ld a, $05
    ld [hl], a
    ld [$d14f], a
    ret


    ld b, $06
    ld [bc], a
    ld [bc], a
    adc l
    adc [hl]
    ld [bc], a
    ld [bc], a
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ret


    jp z, $0202

    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $02c3

    call nz, $c6c5
    rst $00
    ret z

    inc bc
    ld bc, HeaderLogo
    add b
    ld bc, $f000
    ld bc, $f4f4
    ld bc, $00f0
    ld bc, $0cf4
    ld bc, $1000
    ld bc, $0c0c
    ld bc, $0010
    ld bc, $f40c
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $f8f8
    nop
    ld [$01f8], sp
    ld hl, sp+$08
    nop
    ld [$0108], sp
    pop af
    pop af
    nop
    rrca
    pop af
    ld bc, $0ff1
    nop
    rrca
    rrca
    ld bc, $ebeb
    nop
    dec d
    db $eb
    ld bc, $15eb
    nop
    dec d
    dec d
    ld bc, $e7e7
    nop
    add hl, de
    rst $20
    ld bc, $19e7
    nop
    add hl, de
    add hl, de
    ld bc, $e5e5
    nop
    dec de
    push hl
    ld bc, $1be5
    nop
    dec de
    dec de
    cp $1e
    ld h, [hl]
    dec sp
    ld h, [hl]
    ld d, h
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], d
    ld h, [hl]
    add e
    ld h, [hl]
    pop af

jr_00d_661f:
    stop
    jr z, jr_00d_661f

    add sp, $3e
    stop
    ld [$103f], sp
    nop
    ld [$1040], sp
    nop
    ld [$3040], sp
    nop
    ld [$303f], sp
    nop
    ld [$303e], sp
    add b
    pop af

jr_00d_663c:
    stop
    jr z, jr_00d_663c

    add sp, $41
    stop
    ld [$1042], sp
    nop
    ld [$1043], sp
    nop
    ld [$1044], sp
    nop
    ld [$1045], sp
    add b
    pop af

jr_00d_6655:
    stop
    jr z, jr_00d_6655

    ldh a, [rDMA]
    stop
    ld [$1047], sp
    nop
    ld [$1048], sp
    add b
    pop af

jr_00d_6666:
    stop
    jr z, jr_00d_6666

    ld hl, sp+$46
    stop
    ld [$3046], sp
    add b
    pop af

jr_00d_6673:
    stop
    jr z, jr_00d_6673

    ld hl, sp+$48
    jr nc, jr_00d_667b

jr_00d_667b:
    ld [$3047], sp
    nop
    ld [$3046], sp
    add b
    pop af

jr_00d_6684:
    stop
    jr z, jr_00d_6684

    ldh a, [rLYC]
    jr nc, jr_00d_668c

jr_00d_668c:
    ld [$3044], sp
    nop
    ld [$3043], sp
    nop
    ld [$3042], sp
    nop
    ld [$3041], sp
    add b

Call_00d_669c:
    ld de, $650b
    ret


Call_00d_66a0:
    ld a, [$cc96]
    or a
    ret nz

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld a, $0b
    jr z, jr_00d_66b1

    ld a, $07

jr_00d_66b1:
    push hl
    push bc
    push af
    ld de, $60f3
    call Call_000_0201
    pop af
    ld l, a
    call Call_00d_52b3
    ld a, $07
    add c
    ld l, a
    ld [hl], $82
    pop bc
    pop hl
    ret


    jp nz, Jump_000_0708

    inc d
    inc b
    inc h
    ld b, a
    ld b, b

Jump_00d_66d0:
    ld a, b
    dec b
    jr z, jr_00d_6731

    dec b
    jr z, jr_00d_66e0

    dec b
    jp z, Jump_00d_6786

    dec b
    ret z

    or a
    jr z, jr_00d_66ec

jr_00d_66e0:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $01
    ld [$c3e9], a
    ret


jr_00d_66ec:
    call Call_00d_4989
    ld a, $06
    add c
    ld l, a
    ld b, [hl]
    bit 2, b
    jr z, jr_00d_6706

    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    add $00
    ld l, a
    set 0, [hl]
    call Call_00d_6729

jr_00d_6706:
    ld a, $06
    add c
    ld l, a
    bit 3, [hl]
    ld e, $00
    jr z, jr_00d_671b

    push hl
    ld a, $0d
    add c
    ld l, a
    ld a, $ff
    add [hl]
    ld [hl], a
    pop hl
    inc e

jr_00d_671b:
    ld a, $24
    add c
    ld l, a
    ld [hl], e
    call Call_000_025e
    ld de, $67d8
    jp Jump_000_01dd


Call_00d_6729:
    ld a, $08
    call Call_000_01b6
    jp Jump_000_015c


jr_00d_6731:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_6786

    ld a, $13
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00d_6766

    ld a, $17
    add c
    ld l, a
    ld [hl], $0a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $14
    jr nc, jr_00d_6786

    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    add $00
    ld l, a
    set 0, [hl]
    set 2, [hl]
    call Call_00d_6729
    rst $08
    rra
    call Call_00d_456c
    jr jr_00d_6786

jr_00d_6766:
    ld de, $678e
    call Call_00d_4701
    jr c, jr_00d_6783

    ldh a, [$ff8f]
    or a
    jr z, jr_00d_6786

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp $2e
    jr nz, jr_00d_6786

    ld a, $02
    call Call_000_01b6
    jr jr_00d_6786

jr_00d_6783:
    call Call_00d_6729

Jump_00d_6786:
jr_00d_6786:
    jp Jump_00d_420c


    ret c

    ld h, a
    inc b
    ld a, [bc]
    rst $38
    ret c

    ld h, a
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    rlca
    rlca
    ld [$0908], sp
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    xor $67
    inc bc
    ld l, b
    jr jr_00d_6846

    ld sp, $5668
    ld l, b
    ld [hl], a
    ld l, b
    sbc b
    ld l, b
    or l
    ld l, b
    jp nc, $ef68

    ld l, b
    db $fc
    ld l, b
    nop
    nop
    nop
    nop
    ld hl, sp-$0f
    ld bc, $0810
    nop
    nop
    db $10
    db $fc
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    rst $28
    ld hl, sp-$04
    inc bc
    db $fc
    jp hl


    ld [bc], a
    stop
    ld [$1003], sp
    nop
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    db $e4
    ld hl, sp-$04
    inc bc
    db $fc
    pop hl
    inc b
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    nop
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    db $dd
    ld hl, sp-$06
    dec b
    ld hl, sp-$27
    ld [$0010], sp
    ld [$100a], sp
    ld [$07f8], sp
    stop
    ld [$1009], sp
    db $fc

jr_00d_6846:
    ld [$100b], sp
    nop
    ld [$100c], sp
    nop
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    reti


    db $ed
    ld a, [$f805]
    reti


    ld c, $10
    nop
    ld [$1010], sp
    ld [$0df8], sp
    stop
    ld [$100f], sp
    db $fc
    ld [$1011], sp
    nop
    db $10
    inc e
    stop
    ld [$101d], sp
    add b
    call c, $fcf8
    inc bc
    db $fc
    push de
    ld [bc], a
    stop
    ld [$1003], sp
    nop
    inc b
    inc b
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    nop
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    rst $18
    ld hl, sp-$04
    inc bc
    db $fc
    reti


    ld [de], a
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$27
    rla
    stop
    ld [$5018], sp
    ld [$16f8], sp
    stop
    ld [$1018], sp
    db $fc
    jr jr_00d_68e8

    stop
    ld [$101d], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$28
    ld a, [de]
    stop
    ld [$501b], sp
    ld [$19f8], sp
    stop
    ld [$101b], sp
    db $fc
    add hl, de

jr_00d_68e8:
    inc e
    stop
    ld [$101d], sp
    add b
    nop
    nop
    nop
    nop
    db $fc
    ld sp, hl
    inc e
    stop
    ld [$101d], sp
    add b
    rst $30
    nop
    db $fd
    inc bc
    db $fc
    ld sp, hl
    dec e
    db $10
    add b
    jp nz, Jump_000_0708

    inc d
    inc b
    inc h
    ld b, a
    ld b, b

Jump_00d_690d:
    ld a, b
    dec b
    jr z, jr_00d_6951

    dec b
    jr z, jr_00d_691d

    dec b
    jp z, Jump_00d_69a6

    dec b
    ret z

    or a
    jr z, jr_00d_6929

jr_00d_691d:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $01
    ld [$c3e9], a
    ret


jr_00d_6929:
    call Call_00d_4989
    ld a, $06
    add c
    ld l, a
    ld b, [hl]
    bit 2, b
    jr z, jr_00d_6943

    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    add $00
    ld l, a
    set 0, [hl]
    call Call_00d_6949

jr_00d_6943:
    ld de, $69f7
    jp Jump_000_01dd


Call_00d_6949:
    ld a, $08
    call Call_000_01b6
    jp Jump_000_015c


jr_00d_6951:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_69a6

    ld a, $13
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00d_6986

    ld a, $17
    add c
    ld l, a
    ld [hl], $0a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $14
    jr nc, jr_00d_69a6

    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    add $00
    ld l, a
    set 0, [hl]
    set 2, [hl]
    call Call_00d_6949
    rst $08
    rra
    call Call_00d_456c
    jr jr_00d_69a6

jr_00d_6986:
    ld de, $69ae
    call Call_00d_4701
    jr c, jr_00d_69a3

    ldh a, [$ff8f]
    or a
    jr z, jr_00d_69a6

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp $2d
    jr nz, jr_00d_69a6

    ld a, $02
    call Call_000_01b6
    jr jr_00d_69a6

jr_00d_69a3:
    call Call_00d_6949

Jump_00d_69a6:
jr_00d_69a6:
    jp Jump_00d_420c


    rst $30
    ld l, c
    inc b
    ld a, [bc]
    rst $38
    rst $30
    ld l, c
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    dec b
    ld b, $03
    inc b
    rlca
    rlca
    ld [$0908], sp
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    dec c
    ld l, d
    ld [hl+], a
    ld l, d
    scf
    ld l, d
    ld d, b
    ld l, d
    ld [hl], l
    ld l, d
    sub [hl]
    ld l, d
    or a
    ld l, d
    call nc, $f16a
    ld l, d
    ld c, $6b
    dec de
    ld l, e
    nop
    nop
    nop
    nop
    push af
    ld hl, sp+$00
    stop
    ld [$1001], sp
    rlca
    db $fc
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    db $fc
    inc bc
    di
    db $fc
    db $ed
    db $fc
    ld [bc], a
    db $10
    ld [$0300], sp
    db $10
    rlca
    nop
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    db $fc
    inc bc
    jp hl


    db $fc
    push hl
    db $fc
    inc b
    db $10
    ld [$0500], sp
    db $10
    ld [$0600], sp
    db $10
    rlca
    nop
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    db $fc
    inc b
    ldh [$fffc], a
    db $dd
    ld hl, sp+$07
    stop
    ld [$1008], sp
    ld [$09f8], sp
    stop
    ld [$100a], sp
    ld [$0bfc], sp
    db $10
    ld [$0c00], sp
    db $10
    rlca
    nop
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    ld hl, sp+$07
    rst $18
    db $f4
    db $dd
    ld hl, sp+$0d
    stop
    ld [$100e], sp
    ld [$0ff8], sp
    stop
    ld [$1010], sp
    ld [$11fc], sp
    db $10
    rrca
    nop
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    db $fc
    inc bc
    ldh [$fffc], a
    reti


    db $fc
    ld [bc], a
    db $10
    ld [$0300], sp
    db $10
    inc b
    nop
    inc b
    db $10
    ld [$0500], sp
    db $10
    ld [$0600], sp
    db $10
    rlca
    nop
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    db $fc
    inc bc
    db $e3
    db $fc
    db $dd
    db $fc
    ld [de], a
    db $10
    ld [$1300], sp
    db $10
    ld [$1400], sp
    db $10
    ld [$1500], sp
    db $10
    rlca
    nop
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    nop
    nop
    nop
    nop
    db $dd
    ld hl, sp+$16
    stop
    ld [$1017], sp
    ld [$18f8], sp
    stop
    ld [$3018], sp
    rla
    db $fc
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    nop
    nop
    nop
    nop
    sbc $f8
    add hl, de
    stop
    ld [$101a], sp
    ld [$1bf8], sp
    stop
    ld [$301b], sp
    ld d, $fc
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc e
    db $10
    ld [$1d00], sp
    db $10
    add b
    db $fd
    inc bc
    ld hl, sp+$00
    db $fc
    db $fc
    dec e
    db $10
    add b
    nop
    rst $38
    nop
    nop
    ld [bc], a
    nop
    ld hl, sp-$01
    ldh a, [rIE]
    ret nc

    rst $38
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ret nz

    rst $38
    inc a
    ld l, e
    ld b, d
    ld l, e
    rla
    nop
    and $00
    ld [hl], $60
    and a
    nop
    add $01
    ld h, $60
    call z, Call_000_0708
    ld [bc], a
    inc bc
    dec h
    ld b, a
    nop

Jump_00d_6b50:
    ld a, b
    dec b
    jr z, jr_00d_6b95

    dec b
    jr z, jr_00d_6b60

    dec b
    jp z, Jump_00d_6bb9

    dec b
    ret z

    or a
    jr z, jr_00d_6b63

jr_00d_6b60:
    ld b, $00
    ret


jr_00d_6b63:
    call Call_00d_41f4
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    ld de, $6b24
    call Call_00d_4072
    ld a, $2c
    add c
    ld l, a
    ld [hl], $00
    add $0b
    ld l, a
    ld [hl], $00
    ld a, $08
    add c
    ld l, a
    ld de, $6b38
    ld a, [hl]
    call Call_000_0171
    ld a, $31
    add c
    ld l, a
    call Call_00d_42cb
    ld de, $6ccc
    jp Jump_000_01dd


jr_00d_6b95:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_6bb9

    ld de, $6cb3
    call Call_00d_4701
    jr nc, jr_00d_6bb3

    ld a, $37
    add c
    ld l, a
    ld a, [hl]
    and $03
    jr nz, jr_00d_6bb0

    call Call_000_015c

jr_00d_6bb0:
    call Call_00d_41f4

jr_00d_6bb3:
    call Call_00d_6bbc
    call Call_00d_6c27

Jump_00d_6bb9:
    jp Jump_00d_420c


Call_00d_6bbc:
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    add $e6
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    bit 0, b
    jr nz, jr_00d_6be0

    ld a, $31
    add c
    ld l, a
    ld a, e
    sub [hl]
    inc l
    ld a, d
    sbc [hl]
    jr nc, jr_00d_6bf5

    call Call_00d_40a5
    ld a, $37
    add c
    ld l, a
    ld [hl], $01
    ret


jr_00d_6be0:
    ld a, $33
    add c
    ld l, a
    ld a, e
    sub [hl]
    inc l
    ld a, d
    sbc [hl]
    jr c, jr_00d_6bf5

    call Call_00d_40a5
    ld a, $37
    add c
    ld l, a
    ld [hl], $02
    ret


jr_00d_6bf5:
    ld a, $37
    add c
    ld l, a
    ld [hl], $00
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld de, $6b28
    call Call_000_0171
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    call nz, Call_000_016b
    ld a, $00
    ldh [$ff8b], a
    ld a, $03
    ldh [$ff8c], a
    ld a, $1d
    add c
    ld l, a
    push hl
    call Call_00d_6c6d
    pop hl
    call Call_00d_6c7a
    call Call_00d_40fd
    ret


Call_00d_6c27:
    ld a, $35
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, [$c3e8]
    cp e
    jr nc, jr_00d_6c39

    ld de, $0030
    jr jr_00d_6c5a

jr_00d_6c39:
    cp d
    jr c, jr_00d_6c44

    call Call_00d_40ad
    ld de, $ff00
    jr jr_00d_6c5a

jr_00d_6c44:
    ld a, $2c
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00d_6c69

    ld [hl], $04
    call Call_00d_457e
    ld de, $0008
    jr c, jr_00d_6c5a

    ld de, $fff8

jr_00d_6c5a:
    ld a, $80
    ldh [$ff8b], a
    ld a, $00
    ldh [$ff8c], a
    ld a, $1f
    add c
    ld l, a
    call Call_00d_6c6d

jr_00d_6c69:
    call Call_00d_410f
    ret


Call_00d_6c6d:
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    call Call_000_0213
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_6c7a:
    ld e, [hl]
    inc l
    ld d, [hl]
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
    dec l
    ld a, [hl]
    sub e
    ld e, a
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld d, a
    ld [hl-], a
    bit 7, a
    jr z, jr_00d_6ca7

    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    jr nz, jr_00d_6ca7

    inc d

jr_00d_6ca7:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $10
    ret nc

    xor a
    ld [hl+], a
    ld [hl], a
    scf
    ret


    call z, Call_000_066c
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $00
    ld bc, $0302
    rlca
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
    rst $38
    call c, Call_000_096c
    ld l, l
    ld a, $6d
    ld [hl], e
    ld l, l
    xor b
    ld l, l
    push de
    ld l, l
    ld [bc], a
    ld l, [hl]
    xor b
    ld l, l
    ldh a, [c]
    rlca
    db $f4
    dec bc
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ldh a, [$fff0]
    inc b
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    jr @-$0e

    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    add b
    db $f4
    rlca
    db $ec
    inc de
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    add sp, -$0c
    rlca
    stop
    ld [$1008], sp
    ld [$09fa], sp
    stop
    ld [$100a], sp
    jr @-$06

    add hl, bc
    ld d, b
    nop
    ld [$500a], sp
    ld [$07f6], sp
    ld d, b
    nop
    ld [$5008], sp
    add b
    ld hl, sp+$07
    add sp, $17
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    add sp, -$08
    dec bc
    stop
    ld [$100c], sp
    ld [$0df8], sp
    stop
    ld [$100e], sp
    jr @-$06

    dec c
    ld d, b
    nop
    ld [$500e], sp
    ld [$0bf8], sp
    ld d, b
    nop
    ld [$500c], sp
    add b
    ld hl, sp+$0d
    db $ec
    inc de
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    add sp, -$02
    rrca
    stop
    ld [$1010], sp
    ld [$11f5], sp
    stop
    ld [$1012], sp
    jr @-$06

    ld de, $0050
    ld [$5012], sp
    ld [$0ffb], sp
    ld d, b
    nop
    ld [$5010], sp
    add b
    ld hl, sp+$0f
    db $f4
    dec bc
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ldh a, [$fffa]
    inc b
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    jr @-$0e

    inc b
    ld d, b
    nop
    ld [$5013], sp
    nop
    ld [$5014], sp
    add b
    ld hl, sp+$0b
    db $f4
    dec bc
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ldh a, [$fff7]
    inc b
    stop
    ld [$1015], sp
    nop
    ld [$1014], sp
    jr @-$0e

    inc b
    ld d, b
    nop
    ld [$5015], sp
    nop
    ld [$5014], sp
    add b
    db $f4
    add hl, bc
    db $f4
    dec bc
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ldh a, [$fff4]
    inc b
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    jr @-$0e

    inc b
    ld d, b
    nop
    ld [$5016], sp
    nop
    ld [$5017], sp
    add b
    adc $08
    ld b, $06
    ld b, $25
    ld b, a
    ld b, b

Jump_00d_6e37:
    ld a, b
    dec b
    jr z, jr_00d_6e71

    dec b
    jr z, jr_00d_6e47

    dec b
    jp z, Jump_00d_6e85

    dec b
    ret z

    or a
    jr z, jr_00d_6e50

jr_00d_6e47:
    ld a, $19
    add c
    ld l, a
    set 6, [hl]
    ld b, $00
    ret


jr_00d_6e50:
    ld a, [$de8a]
    or a
    jr nz, jr_00d_6e5c

    ld a, $19
    add c
    ld l, a
    res 6, [hl]

jr_00d_6e5c:
    call Call_00d_4989
    call Call_00d_41f4
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e
    ld de, $5ac2
    jp Jump_000_01dd


jr_00d_6e71:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_6e85

    ld de, $6eba
    call Call_000_015f
    ld a, [$d140]
    or a
    call nz, Call_000_01e6

Jump_00d_6e85:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_00d_6eb1

    ld a, [$d140]
    or a
    jr z, jr_00d_6eb1

    dec a
    jr nz, jr_00d_6ea9

    ld a, $02
    ld [$d140], a
    ld e, $1c
    ld d, $d0
    ld c, $04
    call Call_00d_42ac
    ld a, $04
    ld [$ccaf], a

jr_00d_6ea9:
    ld a, $13
    add c
    ld l, a
    set 2, [hl]
    jr jr_00d_6eb7

jr_00d_6eb1:
    ld a, $13
    add c
    ld l, a
    res 2, [hl]

jr_00d_6eb7:
    jp Jump_00d_420c


    jp nz, $785a

    nop
    rst $38
    ret z

    ld [$0207], sp
    inc b
    dec h
    ld b, a
    ld b, b

Jump_00d_6ec7:
    ld a, b
    dec b
    jr z, jr_00d_6eec

    dec b
    jr z, jr_00d_6ed7

    dec b
    jp z, Jump_00d_6f00

    dec b
    ret z

    or a
    jr z, jr_00d_6edd

jr_00d_6ed7:
    call Call_00d_6f03
    ld b, $00
    ret


jr_00d_6edd:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $24
    call Call_00d_41f4
    ld de, $7cca
    jp Jump_000_01dd


jr_00d_6eec:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_6f00

    ld de, $7cac
    call Call_000_015f
    ld a, [$d140]
    or a
    call nz, Call_000_01e6

Jump_00d_6f00:
    jp Jump_00d_6e85


Call_00d_6f03:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_000_01f2
    ld b, $00
    ret


    ld [hl], b
    rst $38
    nop
    nop
    ldh a, [rTAC]
    db $f4
    ld a, [bc]
    ld hl, sp+$0f
    db $f4
    ld a, [bc]
    ld hl, sp+$07
    db $f4
    ld a, [bc]
    ld hl, sp+$07
    db $f4
    ld a, [bc]
    or $0a
    dec bc
    or $0b
    ld a, [bc]
    dec bc
    add b
    rst $38
    ld h, b
    ei
    add b
    nop
    ld h, b
    ei
    ldh a, [$fffe]
    ldh [$fffc], a
    db $10
    ld bc, $fce0
    rst $00
    ld [$0405], sp
    inc b
    dec h
    ld b, a
    nop

Jump_00d_6f44:
    ld a, b
    dec b
    jr z, jr_00d_6f94

    dec b
    jr z, jr_00d_6f54

    dec b
    jp z, Jump_00d_6fad

    dec b
    ret z

    or a
    jr z, jr_00d_6f55

jr_00d_6f54:
    ret


jr_00d_6f55:
    ld a, $08
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_00d_6f65

    ld d, $08
    call Call_00d_4979
    call Call_000_025e

jr_00d_6f65:
    call Call_00d_7153
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_6f75

    ld de, $6f15
    jr jr_00d_6f78

jr_00d_6f75:
    ld de, $6f19

jr_00d_6f78:
    call Call_00d_4a2f
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], $00
    add $fd
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    ld de, $71bc
    jp Jump_000_01dd


jr_00d_6f94:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_6fad

    ld de, $6f1d
    call Call_00d_4823
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_00d_7056

    call Call_00d_6fb0

Jump_00d_6fad:
    jp Jump_00d_420c


Call_00d_6fb0:
    call Call_000_01e6
    jp nz, Jump_00d_7036

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_7029

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_6fcb

    ld de, $6f15
    jr jr_00d_6fce

jr_00d_6fcb:
    ld de, $6f19

jr_00d_6fce:
    call Call_00d_49fb
    jr nc, jr_00d_7023

    call Call_00d_46c7
    cp $38
    jr nc, jr_00d_6fdf

    call Call_00d_70a3
    jr c, jr_00d_7042

jr_00d_6fdf:
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    or a
    ld de, $7185
    call z, Call_000_015f
    ld a, $30
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    and $7f
    call z, Call_00d_7153
    call Call_00d_7164
    bit 0, a
    jr z, jr_00d_7021

    ld a, $2e
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $10
    jr c, jr_00d_7041

    ld [hl], $00
    ld a, $30
    add c
    ld l, a
    ld [hl], $e0
    add $fa
    ld l, a
    ld [hl], $10
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_00d_7156
    jr jr_00d_7041

jr_00d_7021:
    jr jr_00d_7041

jr_00d_7023:
    ld a, $2c
    add c
    ld l, a
    ld [hl], $00

jr_00d_7029:
    call Call_00d_715c
    bit 1, a
    jr z, jr_00d_7036

    ld a, $2c
    add c
    ld l, a
    ld [hl], $01

Jump_00d_7036:
jr_00d_7036:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $0f
    ld l, a
    ld [hl], $00

jr_00d_7041:
    ret


jr_00d_7042:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld [hl], $3c
    add $ed
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ret


Jump_00d_7056:
    call Call_000_01e6
    jr z, jr_00d_7063

    cp $36
    call z, Call_00d_7153
    jp Jump_00d_6fad


jr_00d_7063:
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    add $db
    ld l, a
    bit 0, [hl]
    ld de, $718d
    jr z, jr_00d_7076

    ld de, $719a

jr_00d_7076:
    call Call_00d_4701
    jr c, jr_00d_708d

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00d_708a

    ld l, c
    push hl
    call Call_00d_70d4
    pop hl
    ld c, l

jr_00d_708a:
    jp Jump_00d_6fad


jr_00d_708d:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $05
    ld l, a
    ld [hl], $ff
    add $fe
    ld l, a
    ld [hl], $00
    call Call_000_015c
    jp Jump_00d_6fad


Call_00d_70a3:
    ld de, $6f25
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    add $17
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_70b6

    ld a, [de]
    inc de
    jr jr_00d_70b8

jr_00d_70b6:
    inc de
    ld a, [de]

jr_00d_70b8:
    add b
    ld b, a
    inc de
    ld a, $0f
    add c
    ld l, a
    ld a, [de]
    add $03
    add [hl]
    ld d, a
    ld e, b
    ld l, c
    push hl
    call Call_000_0165
    pop hl
    ld c, l
    ret


Call_00d_70cd:
    ld a, $2d
    add c
    ld l, a
    ld [hl], $01
    ret


Call_00d_70d4:
    ld de, $6f28
    call Call_000_0201
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    add $1e
    ld b, a
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld l, $02
    ld a, $2c
    ld [$cc00], a
    ld a, $6f
    ld [$cc01], a
    call Call_00d_7123
    ld a, $30
    ld [$cc00], a
    ld a, $6f
    ld [$cc01], a
    call Call_00d_7123
    ld a, $34
    ld [$cc00], a
    ld a, $6f
    ld [$cc01], a
    call Call_00d_7123
    ld a, $38
    ld [$cc00], a
    ld a, $6f
    ld [$cc01], a
    call Call_00d_7123
    ret


Call_00d_7123:
    ld a, $80
    ld [$cde1], a
    push hl
    push de
    push bc
    xor a
    call Call_000_0159
    ld a, [$cc00]
    ld e, a
    ld a, [$cc01]
    ld d, a
    ld a, [$cde2]
    ld c, a
    ld h, $cd
    ld a, $01
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    pop bc
    pop de
    pop hl
    ret


Call_00d_7153:
    call Call_00d_41f4

Call_00d_7156:
    ld de, $6f11
    jp Jump_00d_4072


Call_00d_715c:
    call Call_00d_413b
    ld de, $6f21
    jr jr_00d_7174

Call_00d_7164:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00d_7171

    ld de, $6f15
    jr jr_00d_7174

jr_00d_7171:
    ld de, $6f19

jr_00d_7174:
    push de
    call Call_00d_41ab
    pop de
    bit 1, a
    ret z

    push af
    call Call_00d_40ad
    call Call_00d_4a2f
    pop af
    ret


    cp h
    ld [hl], c
    ld [$0100], sp
    nop
    ld [bc], a
    rst $38
    cp h
    ld [hl], c
    ld [$0303], sp
    inc b
    call Call_00d_70cd
    dec b
    inc b
    inc bc
    rst $38
    cp h
    ld [hl], c
    ld [$0303], sp
    inc b
    inc bc
    inc bc
    inc b
    call Call_00d_70cd
    dec b
    inc b
    inc bc
    rst $38
    cp h
    ld [hl], c
    ld [$ff06], sp
    cp h
    ld [hl], c
    ld [$0100], sp
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    inc bc
    rst $38
    jp z, $e771

    ld [hl], c
    inc b
    ld [hl], d
    ld hl, $4272
    ld [hl], d
    ld h, e
    ld [hl], d
    add b
    ld [hl], d
    ld hl, sp+$07
    db $f4
    dec bc
    db $f4
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0300], sp
    stop
    ld hl, sp+$02
    db $10
    ld [$0400], sp
    stop
    ld [$1005], sp
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    db $f4
    ld hl, sp+$07
    stop
    ld [$1008], sp
    ld [$0a00], sp
    stop
    ld hl, sp+$09
    db $10
    ld [$0b00], sp
    stop
    ld [$100c], sp
    add b
    rst $30
    rlca
    db $f4
    dec bc
    db $f4
    rst $30
    nop
    stop
    ld [$100d], sp
    ld [$0f01], sp
    stop
    ld hl, sp+$0e
    db $10
    ld [$1000], sp
    stop
    ld [$1011], sp
    add b
    ld hl, sp+$07
    ldh a, [$ff0b]
    ldh a, [$fff8]
    nop
    stop
    ld [$100d], sp
    inc b
    db $fc
    ld b, $10
    ld [$02fc], sp
    stop
    ld [$1003], sp
    ld [$0500], sp
    stop
    ld hl, sp+$04
    db $10
    add b
    ldh a, [c]
    rlca
    db $f4
    dec bc
    db $f4
    ldh a, [rNR22]
    stop
    ld [$1018], sp
    ld [$1b08], sp
    stop
    ld hl, sp+$1a
    stop
    ld hl, sp+$19
    db $10
    ld [$1c08], sp
    stop
    ld [$101d], sp
    add b
    di
    rlca
    db $fc
    dec bc
    db $fc
    ldh a, [rNR12]
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$1600], sp
    stop
    ld hl, sp+$15
    stop
    ld hl, sp+$12
    ld d, b
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld e, $10
    add b
    add b
    cp $00
    ld [bc], a
    db $fc
    nop
    inc b
    nop
    inc b
    db $fc
    inc b
    db $fc
    nop
    or $09
    add hl, bc
    dec bc
    rrc b
    dec b
    ld b, $04
    dec h
    ld b, a
    nop

Jump_00d_72a2:
    ld a, b
    dec b
    jr z, jr_00d_72d2

    dec b
    jr z, jr_00d_72b2

    dec b
    jp z, Jump_00d_7311

    dec b
    ret z

    or a
    jr z, jr_00d_72b5

Jump_00d_72b2:
jr_00d_72b2:
    ld b, $00
    ret


jr_00d_72b5:
    call Call_00d_41f4
    ld de, $7296
    call Call_00d_4a2f
    call Call_00d_7418
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e
    add $05
    ld l, a
    ld [hl], $00
    ld de, $74bb
    jp Jump_000_01dd


jr_00d_72d2:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_7311

    ld de, $7296
    call Call_00d_4823
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_7314

    dec a
    jr z, jr_00d_732b

    dec a
    jr z, jr_00d_7338

    dec a
    jr z, jr_00d_735a

    dec a
    jr z, jr_00d_736a

    ld a, $2f
    add c
    ld l, a
    call Call_000_01e9
    ld e, $00
    jr z, jr_00d_7304

    ld a, $17
    add c
    ld l, a
    ld e, $02

jr_00d_7304:
    ld a, $17
    add c
    ld l, a
    ld [hl], e
    call Call_000_01e6
    jr nz, jr_00d_7311

    call Call_00d_73fa

Jump_00d_7311:
jr_00d_7311:
    jp Jump_00d_420c


jr_00d_7314:
    ld de, $749f
    call Call_000_015f
    call Call_00d_410f
    ld b, a
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp b
    jr c, jr_00d_7311

    call Call_00d_73e6
    jr jr_00d_7311

jr_00d_732b:
    ld de, $74a5
    call Call_00d_4701
    jr nc, jr_00d_7336

    call Call_00d_73da

jr_00d_7336:
    jr jr_00d_7311

jr_00d_7338:
    call Call_000_01e6
    jr z, jr_00d_7352

    cp $02
    call z, Call_00d_7424
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    ld [hl], a

jr_00d_7350:
    jr jr_00d_7311

jr_00d_7352:
    call Call_00d_73b3
    jp c, Jump_00d_72b2

    jr jr_00d_7350

jr_00d_735a:
    call Call_00d_41f4
    ld de, $74ad
    call Call_00d_4701
    jr nc, jr_00d_7368

    call Call_00d_7392

jr_00d_7368:
    jr jr_00d_7311

jr_00d_736a:
    call Call_000_01e6
    jr z, jr_00d_7377

    ld de, $749f
    call Call_000_015f
    jr jr_00d_738f

jr_00d_7377:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    call Call_00d_413b
    ld de, $7296
    push de
    call Call_00d_41ab
    pop de
    bit 1, a
    jr z, jr_00d_738f

    call Call_00d_7418

jr_00d_738f:
    jp Jump_00d_7311


Call_00d_7392:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $05
    add $04
    ld l, a
    ld [hl], $06
    add $fb
    ld l, a
    ld [hl], $0a
    add $e9
    ld l, a
    res 7, [hl]
    set 0, [hl]
    ld de, $728b
    call Call_00d_40db
    call Call_000_015c
    ret


Call_00d_73b3:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl+]
    cp $c0
    scf
    ret z

    ld e, a
    ld d, [hl]
    ld a, $0d
    add c
    ld l, a
    ld [hl], e
    add $02
    ld l, a
    ld [hl], d
    ld a, $2b
    add c
    ld l, a
    ld [hl], $04
    add $e8
    ld l, a
    set 2, [hl]
    call Call_00d_41f4
    call Call_000_015c
    or a
    ret


Call_00d_73da:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    add $ff
    ld l, a
    ld [hl], $1e
    ret


Call_00d_73e6:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $e8
    ld l, a
    set 7, [hl]
    res 0, [hl]
    call Call_00d_41f4
    call Call_000_015c
    ret


Call_00d_73fa:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $e4
    ld l, a
    ld e, [hl]
    add $1d
    ld l, a
    ld a, e
    add $f0
    ld [hl], a
    ld de, $7289
    call Call_00d_40db
    call Call_00d_41f4
    call Call_000_015c
    ret


Call_00d_7418:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $1e
    ret


Call_00d_7424:
    ld e, $00
    call Call_000_0168
    cp $55
    jr c, jr_00d_7433

    inc e
    cp $aa
    jr c, jr_00d_7433

    inc e

jr_00d_7433:
    ld a, e
    ld de, $7499
    call Call_000_0171
    call Call_00d_745d
    jr nc, jr_00d_744d

    call Call_00d_745d
    jr nc, jr_00d_744d

    call Call_00d_745d
    jr nc, jr_00d_744d

    ld e, $c0
    jr jr_00d_7455

jr_00d_744d:
    ld a, [$c3c0]
    ld e, a
    ld a, [$c3c2]
    ld d, a

jr_00d_7455:
    ld a, $2d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_745d:
    push de
    call Call_00d_7464
    pop de
    inc de
    ret


Call_00d_7464:
    ld a, [de]
    ld b, a
    push hl
    ld hl, $7296
    ld a, [$d722]
    add b
    ld [$c3c0], a
    ld b, a
    ld a, [hl+]
    add b
    ldh [$ff93], a
    ld a, [hl+]
    add b
    ldh [$ff94], a
    ld a, [$d725]
    add $d0
    ld b, $08
    cp $90
    jr nc, jr_00d_7488

    cp b
    jr nc, jr_00d_7489

jr_00d_7488:
    ld a, b

jr_00d_7489:
    ld [$c3c2], a
    ld b, a
    ld a, [hl+]
    add b
    ldh [$ff95], a
    ld a, [hl+]
    add b
    ldh [$ff96], a
    pop hl
    jp Jump_00d_4234


    adc l
    ld [hl], d
    sub b
    ld [hl], d
    sub e
    ld [hl], d
    cp e
    ld [hl], h
    ld [$0100], sp
    rst $38
    cp e
    ld [hl], h
    ld [$0300], sp
    inc b
    dec b
    rst $38
    cp e
    ld [hl], h
    ld [$0405], sp
    inc bc
    nop
    rst $38
    cp e
    ld [hl], h
    ld [$0200], sp
    rst $38
    rst $00
    ld [hl], h
    ldh a, [$ff74]
    add hl, de
    ld [hl], l
    ld c, d
    ld [hl], l
    ld l, a
    ld [hl], l
    sub b
    ld [hl], l
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    rst $30
    nop
    stop
    dec b
    ld bc, $0010
    ld [$1000], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    add b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    rst $30
    nop
    stop
    dec b
    ld [$0010], sp
    ld [$1000], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0900], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    rst $30
    nop
    stop
    dec b
    ld bc, $0010
    ld [$1000], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0cf8], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$100d], sp
    add b
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp-$10
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$1500], sp
    stop
    ld hl, sp+$14
    stop
    ld hl, sp+$13
    stop
    ld hl, sp+$12
    db $10
    add b
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [$fffb]
    ld d, $10
    ld [$1805], sp
    stop
    ld hl, sp+$17
    db $10
    ld [$1900], sp
    stop
    ld [$101a], sp
    ld [$1c00], sp
    stop
    ld hl, sp+$1b
    db $10
    add b
    db $fd
    ld [bc], a
    ldh a, [c]
    dec c
    ldh a, [$fff8]
    dec e
    stop
    ld [$101e], sp
    ld [$2000], sp
    stop
    ld hl, sp+$1f
    db $10
    ld [$2000], sp
    ld [hl], b
    nop
    ld [$701f], sp
    ld [$1d00], sp
    ld [hl], b
    nop
    ld hl, sp+$1e
    ld [hl], b
    add b
    ld a, [$fa06]
    ld [$08c9], sp
    rlca
    ld bc, $2501
    ld b, a
    nop

Jump_00d_75c1:
    ld a, b
    dec b
    jr z, jr_00d_7602

    dec b
    jr z, jr_00d_75d1

    dec b
    jr z, jr_00d_7635

    dec b
    jr z, jr_00d_75d4

    or a
    jr z, jr_00d_75d5

Jump_00d_75d1:
jr_00d_75d1:
    ld b, $00
    ret


jr_00d_75d4:
    ret


jr_00d_75d5:
    ld a, c
    ld [$d144], a
    ld a, h
    ld [$d145], a
    ld a, $7f
    ld [$d146], a
    ld a, $76
    ld [$d147], a
    ld a, $0d
    ld [$d148], a
    ld a, $0a
    add c
    ld l, a
    ld [hl], $48
    add $21
    ld l, a
    ld [hl], $00
    add $f9
    ld l, a
    ld [hl], $01
    ld de, $76f1
    jp Jump_000_01dd


jr_00d_7602:
    ld a, [$deaf]
    or a
    jr nz, jr_00d_7635

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_7638

    dec a
    jr z, jr_00d_7653

    dec a
    jr z, jr_00d_766b

    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    ld a, [$d143]
    cp $01
    jr nz, jr_00d_7635

    ld a, $13
    add c
    ld l, a
    set 2, [hl]
    ld d, $3c
    ld e, $01
    call $788a
    ld a, $2b
    add c
    ld l, a
    inc [hl]

jr_00d_7635:
    jp Jump_00d_420c


jr_00d_7638:
    ld de, $75b5
    call Call_00d_78cb
    jr nc, jr_00d_7651

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld de, $76f1
    call Call_000_01dd

jr_00d_7651:
    jr jr_00d_7635

jr_00d_7653:
    ld de, $76ce
    call Call_000_015f
    ld a, [$d143]
    cp $02
    jr nz, jr_00d_7669

    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    call Call_00d_7921

jr_00d_7669:
    jr jr_00d_7635

jr_00d_766b:
    call Call_00d_7930
    jp c, Jump_00d_75d1

    jr jr_00d_7635

Call_00d_7673:
    ld a, [$d149]
    or a
    ret nz

    inc a
    ld [$d149], a
    rst $08
    add hl, sp
    ret


    ld a, [$d144]
    ld c, a
    ld a, [$d145]
    ld h, a
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    cp $02
    ret nz

    ld de, $76ce
    call Call_000_015f
    ld a, $00
    ldh [$ffab], a
    ld a, $20
    ld [$d3ea], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    push af
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld de, $76f1
    call Call_000_0171
    ld c, e
    ld b, d
    inc bc
    inc bc
    inc bc
    inc bc
    pop af
    jp Jump_000_0210


    pop af
    halt
    inc c
    inc b
    nop
    dec b
    ld b, $04
    nop
    dec b
    ld b, $07
    nop
    ld [$0406], sp
    nop
    dec b
    ld b, $0a
    call Call_00d_7673
    dec bc
    inc c
    add hl, bc
    rlca
    nop
    ld [$0406], sp
    nop
    dec b
    ld b, $ff
    dec bc
    ld [hl], a
    dec bc
    ld [hl], a
    dec bc
    ld [hl], a
    dec bc
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld e, c
    ld [hl], a
    ld a, d
    ld [hl], a
    sbc a
    ld [hl], a
    call nz, $e577
    ld [hl], a
    ld a, [bc]
    ld a, b
    cpl
    ld a, b
    ld e, b
    ld a, b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$05f0], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$1011], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$1012], sp
    nop
    ld [$1013], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $14
    stop
    ld [$1015], sp
    ld [$16f8], sp
    stop
    ld [$1017], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $18
    stop
    ld [$1019], sp
    ld [$1af8], sp
    stop
    ld [$101b], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$1011], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$1cf8], sp
    stop
    ld [$1003], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$1012], sp
    nop
    ld [$1013], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$1cf8], sp
    stop
    ld [$1003], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$1cf8], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$05f0], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    ld a, [$fa06]
    ld b, $f2
    or $00
    stop
    ld [$1001], sp
    ld [$1cf8], sp
    stop
    ld [$1003], sp
    ld [$05f8], sp
    stop
    ld [$1006], sp
    nop
    ld [$1011], sp
    add b

Jump_00d_7879:
    dec b
    jr z, jr_00d_78cb

    dec b
    jp z, Jump_00d_7921

Jump_00d_7880:
    dec b
    jp z, Jump_00d_7930

    jr @+$06

    nop
    ld [bc], a
    nop
    cp $3e
    ld [hl], $81
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    add $d9
    ld l, a
    ld [hl], $f0
    ld de, $7886
    call Call_00d_40db
    call Call_00d_40a5
    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_00d_78a5:
    ld a, $1c
    add c
    ld l, a
    set 7, [hl]
    set 6, [hl]
    ld a, $39
    add c
    ld l, a
    ld [hl], $00
    add $cc
    ld l, a
    ld e, [hl]
    push hl
    add $33
    ld l, a
    ld [hl], e
    push bc
    ld a, $52
    call Call_000_020a
    pop bc
    pop hl
    ld [hl], a
    ld de, $7971
    jp Jump_000_01dd


Call_00d_78cb:
jr_00d_78cb:
    ld a, $39
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_790c

    ld a, $37
    add c
    ld l, a
    ld b, [hl]
    add $d8
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_00d_78e3

    cp b
    jr nc, jr_00d_78e8

jr_00d_78e3:
    call Call_00d_410f
    jr jr_00d_7900

jr_00d_78e8:
    ld a, $36
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00d_78fa

    push de
    call Call_00d_41ab
    pop de
    jr z, jr_00d_7900

    call Call_00d_4a2f

jr_00d_78fa:
    ld a, $39
    add c
    ld l, a
    ld [hl], $01

jr_00d_7900:
    ld a, $36
    add c
    ld l, a
    bit 1, [hl]
    call nz, Call_00d_44fb
    xor a
    ld b, a
    ret


jr_00d_790c:
    ld de, $796a
    call Call_00d_4701
    jr nc, jr_00d_7900

Jump_00d_7914:
    ld a, $38
    add c
    ld l, a
    ld e, [hl]
    add $cd
    ld l, a
    ld [hl], e
    ld b, $01
    scf
    ret


Call_00d_7921:
Jump_00d_7921:
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    ld de, $7888
    call Call_00d_40db
    jp Jump_00d_78a5


Call_00d_7930:
Jump_00d_7930:
    ld a, $39
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_7952

    ld de, $796a
    call Call_00d_4701
    jr nc, jr_00d_7946

    ld a, $39
    add c
    ld l, a
    ld [hl], $01

jr_00d_7946:
    ld a, $36
    add c
    ld l, a
    bit 1, [hl]
    call nz, Call_00d_44fb
    xor a
    ld b, a
    ret


jr_00d_7952:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_00d_7965

    cp $e0
    jp nc, Jump_00d_7914

jr_00d_7965:
    call Call_00d_410f
    jr jr_00d_7946

    ld [hl], c
    ld a, c
    inc b
    ld [bc], a
    nop
    ld bc, $77ff
    ld a, c
    adc h
    ld a, c
    cp c
    ld a, c
    or $08
    or $08
    ld [$00fc], a
    db $10
    ld [$0000], sp
    db $10
    ld [$0000], sp
    db $10
    ld [$0000], sp
    db $10
    add b
    or $08
    or $08
    ldh a, [c]
    db $f4
    ld bc, $0010
    ld [$1002], sp
    nop
    ld [$3001], sp
    ld [$01f0], sp
    stop
    ld [$1002], sp
    nop
    ld [$3001], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$3003], sp
    add sp, -$08
    ld [bc], a
    db $10
    add b
    or $08
    or $08
    ld [bc], a
    db $f4
    inc bc
    stop
    ld [$1004], sp
    nop
    ld [$3003], sp
    ld hl, sp-$08
    ld [bc], a
    db $10
    add b
    ld hl, sp+$07
    ld a, [$fa09]
    dec b
    ld a, [$c409]
    stop
    inc bc
    inc bc
    daa
    ld b, a
    nop

Jump_00d_79de:
    ld a, b
    dec b
    jr z, jr_00d_7a2a

    dec b
    jr z, jr_00d_79ee

    dec b
    jp z, Jump_00d_7a44

    dec b
    ret z

    or a
    jr z, jr_00d_7a0b

jr_00d_79ee:
    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    ld c, l
    call Call_00d_7af9
    ld a, $01
    ld [$c3e9], a
    ret


jr_00d_7a0b:
    call Call_00d_41f4
    ld a, $0a
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld b, [hl]
    add $05
    ld l, a
    ld d, [hl]
    add $1f
    ld l, a
    ld [hl], e
    inc l
    ld [hl], b
    inc l
    ld [hl], d
    call Call_00d_7af9
    ld de, $7b33
    jp Jump_000_01dd


jr_00d_7a2a:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_7a44

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_7a6a

    dec a
    jr z, jr_00d_7a93

    call Call_000_01e6
    jr nz, jr_00d_7a44

    call Call_00d_7adc

Jump_00d_7a44:
jr_00d_7a44:
    call Call_00d_420c
    ld a, $32
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00d_7a5a

    ld a, $0d
    add c
    ld l, a
    ld a, [$c3e7]
    sub [hl]
    ld [$cc50], a

jr_00d_7a5a:
    ld a, b
    or a
    ret nz

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret z

    call Call_00d_7af9
    ld b, $01
    ret


jr_00d_7a6a:
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00d_7a7b

    dec [hl]
    jr nz, jr_00d_7a7b

    ld a, $13
    add c
    ld l, a
    res 4, [hl]

jr_00d_7a7b:
    call Call_00d_413b
    call Call_00d_410f
    ld de, $79ce
    push de
    call Call_00d_49fb
    pop de
    jr nc, jr_00d_7a91

    call Call_00d_4a2f
    call Call_00d_7ace

jr_00d_7a91:
    jr jr_00d_7a44

jr_00d_7a93:
    ld de, $79ce
    call Call_00d_49fb
    jr nc, jr_00d_7ac9

    call Call_00d_4863
    jr nz, jr_00d_7ab6

    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    ld de, $79d2
    call Call_00d_4636
    jr nc, jr_00d_7ac6

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    jr jr_00d_7ac6

jr_00d_7ab6:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $3c
    jr c, jr_00d_7ac6

    ld a, $18
    add c
    ld l, a
    ld [hl], $00

jr_00d_7ac6:
    jp Jump_00d_7a44


jr_00d_7ac9:
    call Call_00d_7adc
    jr jr_00d_7ac6

Call_00d_7ace:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $e8
    ld l, a
    res 0, [hl]
    set 1, [hl]
    ret


Call_00d_7adc:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $f9
    ld l, a
    ld [hl], $00
    add $f3
    ld l, a
    ld [hl], $00
    add $fc
    ld l, a
    set 2, [hl]
    res 1, [hl]
    set 0, [hl]
    call Call_00d_409b
    ret


Call_00d_7af9:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    add $fe
    ld l, a
    ld [hl], $32
    add $e9
    ld l, a
    res 2, [hl]
    set 4, [hl]
    add $1e
    ld l, a
    ld [hl], $08
    ld a, $2e
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld b, [hl]
    inc l
    ld d, [hl]
    add $dc
    ld l, a
    ld [hl], e
    inc l
    ld [hl], b
    add $05
    ld l, a
    ld [hl], d
    add $09
    ld l, a
    ld [hl], $03
    ret


    inc sp
    ld a, e
    ld [$ff00], sp
    dec [hl]
    ld a, e
    ld hl, sp+$07
    ld a, [$fa09]
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0300], sp
    stop
    ld hl, sp+$02
    db $10
    add b
    nop
    rst $38
    nop
    nop
    ret z

    ld [$0207], sp
    inc b
    dec h
    ld b, a
    nop

Jump_00d_7b56:
    ld a, b
    dec b
    jr z, jr_00d_7b8a

    dec b
    jr z, jr_00d_7b66

    dec b
    jp z, Jump_00d_7bc1

    dec b
    ret z

    or a
    jr z, jr_00d_7b6c

jr_00d_7b66:
    call Call_00d_7bc4
    ld b, $00
    ret


jr_00d_7b6c:
    call Call_00d_41f4
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    ld de, $7b4a
    call Call_00d_4072
    ld a, $33
    add c
    ld l, a
    ld [hl], $58
    inc l
    ld [hl], $02
    ld de, $7cca
    jp Jump_000_01dd


jr_00d_7b8a:
    ld a, [$deaf]
    or a
    jp nz, Jump_00d_7bc1

    ld a, $33
    add c
    ld l, a
    call Call_000_01ec
    jr z, jr_00d_7bc4

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00d_7bd2

    dec a
    jr z, jr_00d_7c15

    ld de, $7cb6
    call Call_000_015f
    ld b, $46
    call Call_000_021c
    jr nc, jr_00d_7bbe

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c

Jump_00d_7bbe:
jr_00d_7bbe:
    call Call_00d_4121

Jump_00d_7bc1:
    jp Jump_00d_420c


Call_00d_7bc4:
jr_00d_7bc4:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_000_01f2
    ld b, $00
    ret


jr_00d_7bd2:
    ld de, $7cac
    call Call_000_015f
    call Call_000_01e6
    jr z, jr_00d_7bed

    ld a, $1d
    add c
    ld l, a
    call Call_00d_7c77
    ld a, $1f
    add c
    ld l, a
    call Call_00d_7c77

jr_00d_7beb:
    jr jr_00d_7bbe

jr_00d_7bed:
    call Call_00d_41f4
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    call Call_000_024f
    ld a, $2f
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    ld de, $0020
    call Call_000_024c
    pop bc
    pop hl
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $0b
    ld l, a
    ld [hl], $00
    jr jr_00d_7beb

jr_00d_7c15:
    ld de, $7cc0
    call Call_000_015f
    ld a, $35
    add c
    ld l, a
    ld a, [hl]
    cp $0a
    jr c, jr_00d_7c31

    inc [hl]
    call Call_00d_4628
    jr c, jr_00d_7c5c

    ld a, [$c3e8]
    cp $68
    jr nc, jr_00d_7c5c

jr_00d_7c31:
    call Call_000_01e6
    jr z, jr_00d_7c5c

    ld a, $2f
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    push de
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $00
    ldh [$ff8b], a
    ld a, $01
    ldh [$ff8c], a
    ld a, $1f
    add c
    ld l, a
    call Call_00d_7c6a
    pop de
    ld a, $1d
    add c
    ld l, a
    call Call_00d_7c6a

jr_00d_7c59:
    jp Jump_00d_7bbe


jr_00d_7c5c:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    jr jr_00d_7c59

Call_00d_7c6a:
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    call Call_000_0213
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00d_7c77:
    ld e, [hl]
    inc l
    ld d, [hl]
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    dec l
    ld a, [hl]
    sub e
    ld e, a
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld d, a
    ld [hl-], a
    bit 7, a
    jr z, jr_00d_7ca0

    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    jr nz, jr_00d_7ca0

    inc d

jr_00d_7ca0:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $10
    ret nc

    xor a
    ld [hl+], a
    ld [hl], a
    scf
    ret


    jp z, Jump_000_067c

    nop
    ld bc, $0302
    inc b
    dec b
    rst $38
    jp z, Jump_000_047c

    nop
    ld bc, $0302
    inc b
    dec b
    rst $38
    jp z, Jump_000_027c

    nop
    ld bc, $0302
    inc b
    dec b
    rst $38
    sub $7c
    ei
    ld a, h
    jr nz, @+$7f

    ld b, l
    ld a, l
    ld l, d
    ld a, l
    adc a
    ld a, l
    ld hl, sp+$07
    db $f4
    dec bc
    db $f4
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    nop
    ld [$3000], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    ld [$0efc], sp
    stop
    ld [$100f], sp
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    push af
    ldh a, [rTIMA]
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$3005], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    ld [$0efc], sp
    stop
    ld [$100f], sp
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    xor $f2
    ld [$0010], sp
    inc d
    ld [$0830], sp
    ldh a, [c]
    add hl, bc
    stop
    ld [$100a], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    ld [$0efc], sp
    stop
    ld [$100f], sp
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    rst $28
    ld hl, sp+$0b
    stop
    ld [$300b], sp
    ld [$0cf8], sp
    stop
    ld [$100d], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    ld [$10fc], sp
    stop
    ld [$1011], sp
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    xor $f2
    ld [$0010], sp
    inc d
    ld [$0830], sp
    ldh a, [c]
    add hl, bc
    stop
    ld [$100a], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    ld [$10fc], sp
    stop
    ld [$1011], sp
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    push af
    ldh a, [rTIMA]
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$3005], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    ld [$10fc], sp
    stop
    ld [$1011], sp
    add b

Jump_00d_7db4:
    ld a, [$cca2]
    cp $ff
    ret z

    or a
    jr nz, jr_00d_7dcb

    xor a
    ld [$d186], a
    ld [$d18d], a
    ld [$cc9e], a
    ld [$cc9f], a
    ret


jr_00d_7dcb:
    cp $01
    jp nz, Jump_00d_7e1a

    ld a, [$deaf]
    and $23
    jr z, jr_00d_7ddc

    ld a, [$cc9f]
    jr jr_00d_7dfd

jr_00d_7ddc:
    ld b, $00
    ld hl, $cca0
    ld a, [hl]
    or a
    jr z, jr_00d_7dfd

    dec [hl]
    cp $08
    inc b
    jr c, jr_00d_7df1

    inc b
    cp $10
    jr c, jr_00d_7df1

    inc b

jr_00d_7df1:
    ld hl, $cca1
    inc [hl]
    ld a, [hl]
    bit 1, a
    ld a, b
    jr z, jr_00d_7dfd

    cpl
    inc a

jr_00d_7dfd:
    ld hl, $cc9f
    ld b, [hl]
    ld [hl], a
    sub b
    ld [$cc9e], a
    ld a, [hl+]
    cpl
    inc a
    ld [$d18d], a
    xor a
    ld [$d186], a
    ld a, [$cc9f]
    ld d, $90
    ld b, a
    call Call_000_0294
    ret


Jump_00d_7e1a:
    cp $02
    jp nz, Jump_00d_7eaf

    xor a
    ld [$d186], a
    ld a, [$d14a]
    ld e, a
    ld d, $00
    ld hl, $7e7f
    add hl, de
    ld a, [$cca3]
    add [hl]
    ldh [$ff8a], a
    ld hl, $d14b
    ld e, [hl]
    ld [hl], a
    sub e
    ld [$d14c], a
    ld a, [hl]
    add $50
    ld [$d14d], a
    ld d, $50
    ld b, $00
    call Call_000_0294
    ldh a, [$ff8a]
    cpl
    inc a
    ld d, $90
    ld b, a
    call Call_000_0294
    ld a, [$d14c]
    ld hl, $cc9e
    ld [hl+], a
    ldh a, [$ff8a]
    ld [hl+], a
    ld a, [$deaf]
    and $23
    jr nz, jr_00d_7e7e

    ld a, [$d74b]
    cp $01
    jr nz, jr_00d_7e7e

    ld hl, $c2cc
    bit 7, [hl]
    jr nz, jr_00d_7e7e

    ld a, [$d14c]
    ld hl, $cca3
    sub [hl]
    ld hl, $d725
    add [hl]
    ld [hl], a

jr_00d_7e7e:
    ret


    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    rrca
    db $10
    db $10
    db $10
    db $10
    db $10
    rrca
    rrca
    ld c, $0e
    dec c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop

Jump_00d_7eaf:
    cp $03
    jp nz, Jump_00d_7ee2

    ld a, [$deaf]
    and $23
    jr z, jr_00d_7ec0

    ld a, [$cc9f]
    jr jr_00d_7ec3

jr_00d_7ec0:
    ld a, [$cca0]

jr_00d_7ec3:
    ld hl, $cc9f
    ld b, [hl]
    ld [hl], a
    sub b
    ld [$cc9e], a
    ld a, [hl+]
    cpl
    inc a
    ld [$d18d], a
    xor a
    ld [$d186], a
    ld a, [$cc9f]
    cpl
    inc a
    ld d, $90
    ld b, a
    call Call_000_0294
    ret


Jump_00d_7ee2:
    ld a, [$deaf]
    and $23
    jr z, jr_00d_7eee

    ld a, [$cc9f]
    jr jr_00d_7f20

jr_00d_7eee:
    ld b, $00
    ld hl, $cca0
    ld a, [hl]
    or a
    jr z, jr_00d_7f1f

    dec [hl]
    cp $08
    inc b
    jr c, jr_00d_7f08

    inc b
    cp $10
    jr c, jr_00d_7f08

    inc b
    cp $20
    jr c, jr_00d_7f08

    inc b

jr_00d_7f08:
    ld hl, $cca1
    inc [hl]
    ld a, [hl]
    bit 1, a
    jr z, jr_00d_7f1f

    ld a, [$ca01]
    or a
    jr z, jr_00d_7f1b

    ld b, $ff
    jr jr_00d_7f1f

jr_00d_7f1b:
    ld a, b
    cpl
    inc a
    ld b, a

jr_00d_7f1f:
    ld a, b

jr_00d_7f20:
    ld hl, $cc9f
    ld b, [hl]
    ld [hl], a
    sub b
    ld [$cc9e], a
    ld a, [$ca00]
    ld b, a
    ld a, [hl+]
    cpl
    inc a
    sub b
    ld [$d18d], a
    xor a
    ld [$d186], a
    ld a, [$cc9f]
    cpl
    inc a
    sub b
    ld d, $90
    ld b, a
    call Call_000_0294
    ret


Jump_00d_7f45:
    ld b, $00
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
