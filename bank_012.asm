; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_012_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_012_403f

    ld [hl-], a
    db $20, $c3
    ld e, b
    ld c, e
    jp Jump_012_518a


    jp Jump_012_56f3


    jp Jump_012_597b


    jp Jump_012_5bea


    jp Jump_012_5f66


    jp Jump_012_64b9


    jp Jump_012_6761


    jp Jump_012_6912


    jp Jump_012_6d25


    jp Jump_012_7011


    push af
    push bc
    call Call_000_0201
    pop bc
    pop af
    ld [$cc2d], a
    ld a, $05
    add c
    ld l, a

jr_012_403f:
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

jr_012_406b:
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
    ld [hl], $d4
    inc l
    ld [hl], $40
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
    call Call_012_415b
    ld a, $2f
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 2, a
    jr z, jr_012_40b7

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

jr_012_40b7:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    push af
    push hl
    call Call_012_4105
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
    jr z, jr_012_40dd

    dec b
    jr nz, jr_012_4102

jr_012_40da:
    ld b, $00
    ret


jr_012_40dd:
    ld a, [$ccc2]
    or a
    jr nz, jr_012_40da

    ld a, $32
    add c
    ld l, a
    ld a, [$deaf]
    and [hl]
    jr nz, jr_012_4102

    ld a, $2f
    add c
    ld l, a
    bit 1, [hl]
    push hl
    call nz, Call_012_4224
    pop hl
    bit 0, [hl]
    call nz, Call_012_420a
    call Call_012_4105
    jr c, jr_012_40da

jr_012_4102:
    jp Jump_012_42f5


Call_012_4105:
    ld a, $2b
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [hl]
    or a
    jr nz, jr_012_4116

    call Call_000_015f
    or a
    ret


jr_012_4116:
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


    call Call_012_4224
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
    call Call_012_42dd
    pop de

Call_012_415b:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_012_417d

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
    jr nz, jr_012_4173

    inc a

jr_012_4173:
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


Jump_012_417d:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_418e:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_4196:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_419e:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_012_41ba

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_012_41b0

    inc a

jr_012_41b0:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_012_41ba:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_012_41c4:
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
    jr jr_012_41d8

    ld a, $1f
    add c
    ld l, a

jr_012_41d8:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_012_41e2

    inc d

jr_012_41e2:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_012_41e6:
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


Call_012_41f8:
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


Call_012_420a:
Jump_012_420a:
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


Call_012_4224:
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
    jr nz, jr_012_423f

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_012_423f

    ld de, $0350

jr_012_423f:
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
    jr nz, jr_012_4279

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_012_4264

    xor a

jr_012_4264:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_012_4279

    ld a, [de]
    add b
    cp $d0
    jr c, jr_012_4272

    xor a

jr_012_4272:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_012_4279:
    or a
    ret


    push de
    call Call_012_4224
    pop de
    call Call_012_4294
    ret z

    bit 0, a
    jr z, jr_012_428c

    ld a, $1d
    jr jr_012_428e

jr_012_428c:
    ld a, $1f

jr_012_428e:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_4294:
Jump_012_4294:
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


Call_012_42dd:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_012_42ee

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_012_42ef

jr_012_42ee:
    inc d

jr_012_42ef:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_012_42f5:
Jump_012_42f5:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_012_4305

    cp $90
    jr nc, jr_012_431a

jr_012_4305:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_012_4312

    cp $c0
    jr nc, jr_012_431a

jr_012_4312:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_012_431a:
    xor a
    ld b, a
    ret


Call_012_431d:
    ld a, [$ccbb]
    or a
    jr z, jr_012_433b

    ld a, $0a
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8b], a
    ld l, c
    push hl
    call Call_000_02ca
    pop hl
    ld c, l
    ld a, [$cc98]
    or a
    ld e, a
    jr nz, jr_012_433d

jr_012_433b:
    ld e, $30

jr_012_433d:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ret


    ld a, [$c3ef]
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    cp b
    jr nc, jr_012_4363

    ldh a, [$ff8b]
    ld l, a
    ld a, b
    add d
    ld e, a
    cp l
    jr c, jr_012_4375

    ld e, l
    jr jr_012_4375

jr_012_4363:
    ldh a, [$ff8a]
    ld l, a
    ld a, b
    sub d
    ld e, a
    bit 7, a
    jr z, jr_012_4371

    ld e, $00
    jr jr_012_4375

jr_012_4371:
    cp l
    jr nc, jr_012_4375

    ld e, l

jr_012_4375:
    ld a, e
    sub $30
    ret


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


Call_012_43a2:
    push bc
    call Call_000_0201
    pop bc
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


    ld b, $24
    ld a, $0d
    add c
    ld l, a
    ld e, $01
    ld a, [hl]
    cp $50
    jr c, jr_012_4418

    cp $e8
    jr nc, jr_012_4418

    dec e

jr_012_4418:
    ld a, b
    add c
    ld l, a
    ld a, e
    ld [hl], a
    or a
    ret


Call_012_441f:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $fc
    ret nc

    cp $e0
    jr c, jr_012_442f

    ld b, $00
    scf
    ret


jr_012_442f:
    ld b, $01
    cp $a4
    ccf
    ret


Call_012_4435:
    ld e, b
    push de
    call Call_012_441f
    pop de
    ret nc

    ld a, e
    xor b
    and $01
    ret nz

    scf
    ret


Call_012_4443:
    ld a, [$d88c]
    cp $0a
    jp nz, Jump_012_4294

    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_012_4457

    ld b, $01
    jr jr_012_4459

jr_012_4457:
    ld b, $00

jr_012_4459:
    push de
    call Call_012_4435
    pop de
    jp nc, Jump_012_4294

    ld a, $01
    ldh [$ffa9], a
    or a
    scf
    ret


    push bc
    call Call_012_4476
    pop bc
    ld a, $00
    adc a
    ld e, a
    ld a, c
    add b
    ld l, a
    ld [hl], e
    ret


Call_012_4476:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc l
    ld a, [hl]
    ldh [$ff8b], a
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
    jr nz, jr_012_44b7

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_012_44a2

    xor a

jr_012_44a2:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_012_44b7

    ld a, [de]
    add b
    cp $d0
    jr c, jr_012_44b0

    xor a

jr_012_44b0:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_012_44b7:
    or a
    ret


    ld a, c
    add b
    ld l, a
    bit 0, [hl]
    ret z

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
    ld hl, $d732
    ld a, [hl]
    add e
    ld [hl], a
    ld h, b
    ret


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
    ret


    ld a, $0d
    add c
    ld l, a
    ld a, [$c3e7]
    ld [hl+], a
    inc l
    ld a, [$c3e8]
    ld [hl], a
    ret


    ld a, e
    ldh [$ff8a], a
    ld a, d
    ldh [$ff8b], a
    ld a, [$d742]
    ld e, a
    ld a, [$d744]
    ld d, a
    call Call_012_4535
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d744]
    ld d, a
    call Call_012_4535
    ret c

    ld a, [$d742]
    ld e, a
    ld a, [$d745]
    ld d, a
    call Call_012_4535
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d745]
    ld d, a

Call_012_4535:
    ldh a, [$ff8a]
    add e
    ld e, a
    ldh a, [$ff8b]
    add d
    ld d, a
    jp Jump_000_0165


Call_012_4540:
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


Call_012_4551:
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


Call_012_458b:
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


Call_012_45a5:
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


jr_012_45b2:
    push de
    call Call_012_497c
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
    jr z, jr_012_45b2

    ret


    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_012_45e2

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_012_45e2

    ld b, $20

jr_012_45e2:
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
    jr nc, jr_012_4644

    cpl
    inc a
    scf

jr_012_4644:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_012_466b
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


Call_012_466b:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_012_4674:
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
    jr nc, jr_012_4688

    add hl, bc
    jr jr_012_4689

jr_012_4688:
    inc de

jr_012_4689:
    pop af
    dec a
    jr nz, jr_012_4674

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


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


    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ret


    ld l, $00
    jr jr_012_46b3

Call_012_46b1:
    ld l, $01

jr_012_46b3:
    xor a
    ldh [$ff8c], a
    ld a, l
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
    jr nz, jr_012_46d4

    inc de

jr_012_46d4:
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
    jr z, jr_012_46e3

    ld e, b

jr_012_46e3:
    ld a, d
    call Call_000_0165
    pop hl
    ld c, l
    ret


Call_012_46ea:
    xor a
    jr jr_012_46ef

Call_012_46ed:
    ld a, $ff

jr_012_46ef:
    ld l, $01
    jr jr_012_46fa

Call_012_46f3:
    xor a
    jr jr_012_46f8

Call_012_46f6:
    ld a, $01

jr_012_46f8:
    ld l, $00

jr_012_46fa:
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
    jr nz, jr_012_4717

    inc de

jr_012_4717:
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


Call_012_472a:
    push de
    call Call_012_46f6
    pop de
    jr c, jr_012_473f

jr_012_4731:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_012_46f6
    pop de
    jr nc, jr_012_4731

    or a
    ret


jr_012_473f:
    push de
    call Call_012_46f3
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_012_473f

    push de
    call Call_012_46ed
    pop de
    jr c, jr_012_4761

jr_012_4753:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_012_46ed
    pop de
    jr nc, jr_012_4753

    or a
    ret


jr_012_4761:
    push de
    call Call_012_46ea
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_012_4761

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    ret nz

    ld a, [hl-]
    or a
    ret z

    ld b, $00
    ld [hl], b
    ld a, $0e
    add c
    ld l, a
    ld [hl], b
    add $0f
    ld l, a
    ld [hl], b
    inc l
    ld [hl], b

jr_012_4786:
    push de
    call Call_012_4294
    pop de
    ret z

    ld a, $20
    add c
    ld l, a
    dec [hl]
    ret z

    jr jr_012_4786

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $a0
    ccf
    ret nc

    add $30
    ld l, a
    ld a, [de]
    add l
    push af
    inc de
    ld a, [de]
    add l
    ld b, a
    pop af
    xor b
    and $80
    ret z

    scf
    ret


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

    ld a, $07
    add c
    ld l, a
    ld [hl], $80
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
    ld a, [de]
    ld b, $10
    call Call_000_01b0
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
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
    jr c, jr_012_4858

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_012_4858

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_012_4848

    inc a
    cp b
    jr nz, jr_012_4858

    xor a
    scf
    ret


jr_012_4848:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_012_4858

    xor a
    inc a
    scf
    ret


jr_012_4858:
    or a
    ret


    ld a, $06
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_012_486a

    ld d, $08
    call Call_012_487b
    call Call_000_025e

jr_012_486a:
    ld a, $06
    add c
    ld l, a
    bit 0, [hl]
    ret z

    ld d, $08

Call_012_4873:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_012_487b:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_012_4883:
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    ld b, [hl]
    add b
    ld b, a
    inc l
    inc l
    inc de
    ld a, [de]
    ld e, [hl]
    add e
    ld d, a
    ld e, b
    ld l, c
    push hl
    call Call_000_0165
    pop hl
    ld c, l
    ret


Call_012_489b:
    ld hl, $d29b
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_012_48a7:
    push de
    ret


Call_012_48a9:
    ld a, $39
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    and $08
    jr z, jr_012_48bc

    xor a
    ld [$cca6], a
    ld a, $1c
    ldh [rOBP0], a
    ret


jr_012_48bc:
    ld a, $01
    ld [$cca6], a
    ld a, $7c
    ldh [rOBP0], a
    ret


Call_012_48c6:
    xor a
    ld [$cca6], a
    ld a, $1c
    ldh [rOBP0], a
    ret


    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    push hl
    call Call_000_0213
    pop hl
    ld [hl], d
    dec hl
    ld [hl], e
    ret


    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld e, a
    adc d
    ld [hl], a
    xor e
    and $80
    ret


    ld a, $20
    add c
    ld l, a
    jr jr_012_48f7

    ld a, $1e
    add c
    ld l, a

jr_012_48f7:
    ld a, [hl-]
    bit 7, a
    jr nz, jr_012_4905

    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret c

    ld [hl], d
    dec l
    ld [hl], e
    ret


jr_012_4905:
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_012_490f

    inc d

jr_012_490f:
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret nc

    ld [hl], d
    dec l
    ld [hl], e
    ret


    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_012_491c:
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
    jr nz, jr_012_491c

    ret


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_012_4946:
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
    jr jr_012_4946

    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_012_497c:
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
    jr z, jr_012_4991

    dec [hl]
    xor a
    sub $01
    ret


jr_012_4991:
    inc l

jr_012_4992:
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
    jr nz, jr_012_49a7

    ldh [$ff8c], a
    ld l, b
    ld [hl], $01
    xor a
    ret


jr_012_49a7:
    cp $ff
    jr nz, jr_012_49b7

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_012_4992

jr_012_49b7:
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


    call Call_012_497c
    jr z, jr_012_49dc

    jr c, jr_012_49da

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_012_49de

jr_012_49da:
    or a
    ret


jr_012_49dc:
    scf
    ret


Call_012_49de:
    jp hl


Call_012_49df:
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


Call_012_49f7:
jr_012_49f7:
    ld a, [$cca8]
    and $07
    jr nz, jr_012_49f7

    ret


jr_012_49ff:
    ld a, [$cca8]
    and $07
    jp z, Jump_000_01c5

    call Call_000_01c5
    jr jr_012_49ff

    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_012_49df
    call Call_012_49f7
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
    jr c, jr_012_4a62

    dec hl
    ld b, [hl]
    jr jr_012_4ab0

jr_012_4a62:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_012_4a6b:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_012_4a91

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
    call Call_012_48a7
    pop bc
    pop hl

jr_012_4a89:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_012_4a6b

jr_012_4a91:
    cp $fe
    jr c, jr_012_4aa9

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_012_4a9f

    ld [hl], $00
    jr jr_012_4a89

jr_012_4a9f:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_012_4ab1

jr_012_4aa9:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_012_4ab0:
    or a

jr_012_4ab1:
    ld [hl], b
    ret


    ld a, [$ce53]
    ld e, a
    ld a, [$ce54]
    ld d, a
    ld a, b
    jp Jump_000_0171


Call_012_4abf:
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_4ac4:
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
    call Call_012_4af5
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
    jp Jump_012_420a


Call_012_4af5:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    inc [hl]
    ld a, e
    or a
    jr z, jr_012_4b03

    dec a
    cp [hl]
    jr nc, jr_012_4b36

jr_012_4b03:
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
    jr nz, jr_012_4b1d

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_012_4b36

jr_012_4b1d:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_012_4b36

    dec a
    ld e, $01
    jr z, jr_012_4b30

    ld e, $ff

jr_012_4b30:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_012_4b36:
    pop bc
    pop hl
    ld a, [hl]
    ret


    ld b, b
    rst $38
    ret nz

    db $fc
    nop
    rst $38
    nop
    nop
    nop
    cp $f6
    ld a, [bc]
    ld hl, sp+$08
    ld sp, hl
    rlca
    ld hl, sp+$08
    rst $30
    nop
    add hl, bc
    nop
    ret


    ld [$0407], sp
    inc bc
    dec b
    ld b, a
    nop
    ld a, b
    dec b
    jr z, jr_012_4b8a

    dec b
    jr z, jr_012_4b68

    dec b
    jp z, Jump_012_4c60

    dec b
    ret z

    or a
    jr z, jr_012_4b6b

jr_012_4b68:
    ld b, $00
    ret


jr_012_4b6b:
    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    add $12
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $4b44
    call Call_012_472a
    ld de, $4d98
    jp Jump_000_01dd


jr_012_4b8a:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_4c60

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_012_4c63

    dec a
    jp z, Jump_012_4cc2

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_4bf3

    dec a
    jp z, Jump_012_4c2e

    dec a
    jp z, Jump_012_4c38

    ld de, $4d51
    call Call_012_458b
    jr c, jr_012_4bcf

    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $0c
    jp z, Jump_012_4c60

    inc [hl]
    cp $0b
    jp nz, Jump_012_4c60

    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    jp Jump_012_4c60


jr_012_4bcf:
    call Call_012_42dd
    call Call_012_4540
    cp $38
    jr nc, jr_012_4be0

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    jr jr_012_4c56

jr_012_4be0:
    ld de, $4b3a
    call Call_012_415b

jr_012_4be6:
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    inc l
    ld [hl], $00
    jr jr_012_4c60

jr_012_4bf3:
    ld de, $4d59
    call Call_012_458b
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $13
    jr z, jr_012_4c05

    inc [hl]
    jr jr_012_4c60

jr_012_4c05:
    call Call_012_4224
    ld de, $4b44
    call Call_012_4294
    bit 0, a
    jr z, jr_012_4c17

    call Call_012_418e
    jr jr_012_4c60

jr_012_4c17:
    bit 1, a
    jr z, jr_012_4c26

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_012_4be6

    xor a
    ld [hl-], a
    ld [hl], a

jr_012_4c26:
    ld de, $4b3a
    call Call_012_419e
    jr jr_012_4c60

Jump_012_4c2e:
    ld de, $4d60
    call Call_012_458b
    jr nc, jr_012_4c60

    jr jr_012_4be6

Jump_012_4c38:
    ld de, $4d66
    call Call_012_458b
    jr c, jr_012_4c56

    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $0c
    jr z, jr_012_4c60

    inc [hl]
    cp $0b
    jr nz, jr_012_4c60

    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    jr jr_012_4c60

jr_012_4c56:
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a

Jump_012_4c60:
jr_012_4c60:
    jp Jump_012_42f5


Jump_012_4c63:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_012_4c8e

    ld de, $4d6e
    call Call_012_458b
    jr nc, jr_012_4c82

    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    inc l
    ld [hl], $00
    jr jr_012_4c60

jr_012_4c82:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    inc [hl]
    cp $35
    jr nz, jr_012_4c60

    jr jr_012_4cb9

jr_012_4c8e:
    ld de, $4d7c
    call Call_012_458b
    jr nc, jr_012_4caf

    call Call_000_015c
    call Call_012_42dd
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc l
    res 0, [hl]
    inc l
    ld [hl], $00
    ld de, $4b3e
    call Call_012_415b
    jr jr_012_4c60

jr_012_4caf:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    inc [hl]
    cp $23
    jr nz, jr_012_4c60

jr_012_4cb9:
    ld l, c
    push hl
    call $4d1c
    pop hl
    ld c, l
    jr jr_012_4c60

Jump_012_4cc2:
    ld de, $4d8b
    call Call_000_015f
    ld de, $4b48
    push de
    call Call_012_46f6
    pop de
    jr nc, jr_012_4ce2

    call Call_012_4294
    jr z, jr_012_4cf2

    bit 0, a
    call nz, Call_012_418e
    call Call_012_4cfe
    jp Jump_012_4c60


jr_012_4ce2:
    call Call_012_4294
    bit 1, a
    jr nz, jr_012_4cf2

    call Call_012_418e
    call Call_012_4224
    jp Jump_012_4c60


jr_012_4cf2:
    call Call_012_4cfe
    ld de, $4b3e
    call Call_012_415b
    jp Jump_012_4c60


Call_012_4cfe:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $3c
    jr z, jr_012_4d09

    inc [hl]
    ret


jr_012_4d09:
    xor a
    ld [hl], a
    call Call_012_42dd
    ret


    ld [hl], $4d
    ld b, a
    add l
    nop
    sbc b
    ld c, l
    dec d
    ld bc, $0400
    ld [de], a
    jp nz, $4c11

    ld c, e
    ld a, $0f
    ld [$cc00], a
    ld a, $4d
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld de, $4b42
    call Call_012_419e
    jp Jump_000_015c


    dec b
    jr z, jr_012_4d3f

    dec b
    jr nz, jr_012_4d4e

    ld b, $00
    ret


jr_012_4d3f:
    ld a, [$deaf]
    or a
    jr nz, jr_012_4d4e

    ld de, $4d93
    call Call_000_015f
    call Call_012_41e6

jr_012_4d4e:
    jp Jump_012_42f5


    sbc b
    ld c, l
    ld b, $00
    nop
    ld bc, $ff02
    sbc b
    ld c, l
    ld a, [bc]
    ld [bc], a
    inc bc
    inc b
    rst $38
    sbc b
    ld c, l
    inc c
    inc bc
    ld [bc], a
    rst $38
    sbc b
    ld c, l
    ld b, $02
    ld bc, $0000
    rst $38
    sbc b
    ld c, l
    ld b, $02
    add hl, bc
    ld d, $17
    jr jr_012_4d80

    add hl, de
    dec b
    ld b, $07
    rst $38
    sbc b
    ld c, l
    ld b, $07

jr_012_4d80:
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $98ff
    ld c, l
    inc b
    ld [de], a
    inc de
    ld [de], a
    inc d
    rst $38
    sbc b
    ld c, l
    ld a, [bc]
    dec d
    rst $38
    call z, $f54d
    ld c, l
    ld e, $4e
    ld b, a
    ld c, [hl]
    ld [hl], b
    ld c, [hl]
    sub l
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    rst $20
    ld c, [hl]
    inc c
    ld c, a
    ld sp, $524f
    ld c, a
    ld [hl], a
    ld c, a
    sbc h
    ld c, a
    pop bc
    ld c, a
    ldh [c], a
    ld c, a
    inc bc
    ld d, b
    inc h
    ld d, b
    ld b, l
    ld d, b
    ld h, [hl]
    ld d, b
    add a
    ld d, b
    xor b
    ld d, b
    ret


    ld d, b
    sub $50
    rst $38
    ld d, b
    jr z, @+$53

    ld d, c
    ld d, c
    push af
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$02f2], sp
    stop
    ld b, $0a
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06ec], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    push af
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$02f2], sp
    stop
    ld b, $09
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06ec], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    push af
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$02f2], sp
    stop
    ld b, $16
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06ec], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    push af
    ld a, [bc]
    ld sp, hl
    ld [$f8f7], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f2], sp
    stop
    ld b, $16
    stop
    ld [$100b], sp
    nop
    ld [$1005], sp
    ld [$0cec], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    push af
    ld a, [bc]
    di
    ld [$f8f1], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f2], sp
    stop
    ld b, $16
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$0ff0], sp
    stop
    ld [$1010], sp
    add b
    di
    inc c
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$13f1], sp
    stop
    rlca
    inc d
    stop
    ld [$1003], sp
    nop
    rlca
    inc de
    jr nc, jr_012_4eba

    db $ed
    ld b, $10
    nop
    ld [$1007], sp
    nop

jr_012_4eba:
    ld [$1008], sp
    add b
    db $f4
    inc c
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$15f1], sp
    stop
    rlca
    inc d
    stop
    ld [$1003], sp
    nop
    rlca
    inc de
    jr nc, jr_012_4ee3

    db $ed
    ld b, $10
    nop
    ld [$1007], sp
    nop

jr_012_4ee3:
    ld [$1008], sp
    add b
    rst $30
    inc c
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$14f8], sp
    stop
    ld [$1003], sp
    nop
    rlca
    inc de
    jr nc, jr_012_4f08

    db $ed
    ld b, $10
    nop
    ld [$1007], sp
    nop

jr_012_4f08:
    ld [$1008], sp
    add b
    rst $30
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$16f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06ec], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$17f8], sp
    stop
    ld [$3017], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    push af
    add hl, bc
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$05f0], sp
    jr nc, jr_012_4f63

jr_012_4f63:
    ld [$1018], sp
    nop
    ld [$1019], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    add hl, bc
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$13f1], sp
    stop
    rlca
    ld a, [de]
    stop
    ld [$301a], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    add hl, bc
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$15f1], sp
    stop
    rlca
    ld a, [de]
    stop
    ld [$301a], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$1af8], sp
    stop
    ld [$301a], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    dec de
    stop
    ld [$101c], sp
    ld [$1df8], sp
    stop
    ld [$1019], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$1ef8], sp
    stop
    ld [$301e], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    dec de
    stop
    ld [$101c], sp
    ld [$16f8], sp
    stop
    ld [$101f], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$14f8], sp
    stop
    ld [$1003], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    rst $30
    add hl, bc
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$16f8], sp
    stop
    ld [$101f], sp
    ld [$06f4], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    ld hl, sp+$09
    rst $30
    ld [$f8f5], sp
    nop
    stop
    ld [$1001], sp
    ld [$16f8], sp
    stop
    ld [$101f], sp
    rlca
    db $f4
    jr nz, jr_012_50af

    nop
    ld [$1021], sp
    nop
    ld [$1022], sp
    add b
    or $08
    rst $30
    ld [$f8f5], sp
    nop

jr_012_50af:
    stop
    ld [$1001], sp
    ld [$16f8], sp
    stop
    ld [$101f], sp
    rlca
    db $f4
    inc hl
    stop
    ld [$1024], sp
    nop
    ld [$1025], sp
    add b
    db $fd
    ld b, $fe
    dec b
    cp $f8
    dec b
    jr nc, jr_012_50d2

jr_012_50d2:
    ld [$1026], sp
    add b
    push af
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$05f0], sp
    jr nc, jr_012_50e7

jr_012_50e7:
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld b, $02
    jr nc, jr_012_50fb

    xor $06
    stop
    ld [$1007], sp
    nop

jr_012_50fb:
    ld [$1008], sp
    add b
    di
    inc c
    ld hl, sp+$08
    or $f8
    ld de, $0010
    ld [$1012], sp
    ld [$13f1], sp
    stop
    rlca
    ld a, [de]
    stop
    ld [$301a], sp
    nop
    rlca
    inc de
    jr nc, jr_012_5124

    db $ed
    ld b, $10
    nop
    ld [$1007], sp
    nop

jr_012_5124:
    ld [$1008], sp
    add b
    push af
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$02f2], sp
    stop
    ld b, $19
    jr nc, jr_012_513d

jr_012_513d:
    ld [$3018], sp
    nop
    ld [$1005], sp
    ld [$06ec], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    push af
    ld a, [bc]
    ld hl, sp+$08
    or $f8
    nop
    stop
    ld [$1001], sp
    ld [$05f0], sp
    jr nc, jr_012_5162

jr_012_5162:
    ld [$3004], sp
    nop
    ld [$3016], sp
    nop
    ld b, $02
    jr nc, jr_012_5176

    xor $06
    stop
    ld [$1007], sp
    nop

jr_012_5176:
    ld [$1008], sp
    add b
    nop
    rst $38
    nop
    nop
    ld hl, sp+$07
    db $f4
    dec bc
    rst $00
    ld [$0305], sp
    inc b
    dec h
    ld b, a
    nop

Jump_012_518a:
    ld a, b
    dec b
    jr z, jr_012_51af

    dec b
    jr z, jr_012_519a

    dec b
    jp z, Jump_012_51e8

    dec b
    ret z

    or a
    jr z, jr_012_519d

jr_012_519a:
    ld b, $00
    ret


jr_012_519d:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e
    call Call_000_015c
    call Call_012_42dd
    ld de, $54de
    jp Jump_000_01dd


jr_012_51af:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_51e8

    call Call_000_01e6
    call z, Call_012_51eb
    ld de, $54aa
    call Call_000_015f
    ld de, $517a
    call Call_012_415b
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_012_51e5

    ld de, $517e
    call Call_012_4294
    jr z, jr_012_51e8

    bit 0, a
    jr z, jr_012_51e8

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_012_51e8

jr_012_51e5:
    call Call_012_41e6

Jump_012_51e8:
jr_012_51e8:
    jp Jump_012_42f5


Call_012_51eb:
    ld a, [$ccb7]
    cp $03
    jr nc, jr_012_51f9

    ld l, c
    push hl
    call Call_012_525f
    pop hl
    ld c, l

jr_012_51f9:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    ret


    nop
    ld [bc], a
    nop
    cp $00
    ld [bc], a
    ld sp, hl
    ld [$0bfc], sp
    db $fc
    inc b
    ld hl, sp+$06
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    ld [hl+], a
    ld d, d
    jr z, @+$54

    ld l, $52
    inc [hl]
    ld d, d
    ld a, [hl-]
    ld d, d
    ld b, b
    ld d, d
    ld b, [hl]
    ld d, d
    ld c, h
    ld d, d
    ld sp, hl
    dec c
    ld [$050d], sp
    ld [bc], a
    ld [$f90d], sp
    dec c
    inc b
    inc bc
    rst $30
    db $fc
    rst $30
    dec bc
    nop
    rlca
    ld a, [bc]
    db $fc
    ld a, [bc]
    dec bc
    ld bc, $f706
    dec bc
    rst $30
    db $fc
    ld b, $01
    ld a, [bc]
    dec bc
    ld a, [bc]
    db $fc
    rlca
    nop
    ld sp, hl
    ld a, [$fa08]
    inc bc
    inc b
    ld [$f9fa], sp
    ld a, [$0502]
    adc e
    ld d, d
    ld b, a
    and l
    nop
    sbc $54
    inc b
    ld bc, $0200
    ld [de], a
    push bc

Call_012_525f:
    ld de, $520e
    ld a, $52
    ld [$cc00], a
    ld a, $52
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$ccb7]
    inc a
    ld [$ccb7], a
    ld de, $5200
    call Call_012_41c4
    call Call_012_418e
    jp Jump_000_015c


    dec b
    jr z, jr_012_5294

    dec b
    jr nz, jr_012_52ea

    ld b, $00
    ret


jr_012_5294:
    ld a, [$deaf]
    or a
    jr nz, jr_012_52ea

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_012_52f8

    ld de, $54b2
    call Call_000_015f
    ld de, $520a
    call Call_012_4294
    bit 1, a
    jr z, jr_012_52dc

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    call Call_012_42dd
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    push af
    ld a, $2c
    add c
    ld l, a
    pop af
    ld [hl], a
    ld de, $54ba
    call Call_000_015f
    call Call_012_5491
    call Call_012_41e6
    ld de, $5206
    call Call_012_472a

Jump_012_52dc:
jr_012_52dc:
    ld a, $1a
    add c
    ld l, a
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_012_52ea

Jump_012_52e6:
jr_012_52e6:
    ld b, $00
    jr jr_012_52f0

jr_012_52ea:
    call Call_012_42f5
    ld a, b
    or a
    ret nz

jr_012_52f0:
    ld a, [$ccb7]
    dec a
    ld [$ccb7], a
    ret


Jump_012_52f8:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_5316

    dec a
    jr z, jr_012_5360

    dec a
    jr z, jr_012_5360

    dec a
    jp z, Jump_012_53ac

    dec a
    jp z, Jump_012_53ac

    dec a
    jp z, Jump_012_53f8

    dec a
    jp z, Jump_012_53f8

jr_012_5316:
    call Call_012_5444
    jr c, jr_012_533a

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_012_52e6

    ld de, $54cc
    call Call_000_015f
    call Call_012_545b
    call Call_012_54a0
    call Call_012_41f8
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jr jr_012_52dc

jr_012_533a:
    ld de, $54ba
    call Call_000_015f
    call Call_012_5491
    ld a, $2d
    add c
    ld l, a
    res 0, [hl]
    ld de, $5206
    call Call_012_4294
    jp z, Jump_012_52dc

    bit 0, a
    call nz, Call_012_5469
    ld de, $54d2
    call Call_000_015f
    jp Jump_012_52dc


jr_012_5360:
    call Call_012_5444
    jr c, jr_012_5386

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jp nz, Jump_012_52e6

    ld de, $54ba
    call Call_000_015f
    call Call_012_545b
    call Call_012_5491
    call Call_012_41e6
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jp Jump_012_52dc


jr_012_5386:
    ld de, $54d2
    call Call_000_015f
    call Call_012_549b
    ld a, $2d
    add c
    ld l, a
    res 0, [hl]
    ld de, $5206
    call Call_012_4294
    jp z, Jump_012_52dc

    bit 1, a
    call nz, Call_012_5469
    ld de, $54d8
    call Call_000_015f
    jp Jump_012_52dc


Jump_012_53ac:
    call Call_012_5444
    jr c, jr_012_53d2

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jp nz, Jump_012_52e6

    ld de, $54d8
    call Call_000_015f
    call Call_012_545b
    call Call_012_5491
    call Call_012_41e6
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jp Jump_012_52dc


jr_012_53d2:
    ld de, $54cc
    call Call_000_015f
    call Call_012_54a0
    ld a, $2d
    add c
    ld l, a
    res 0, [hl]
    ld de, $5206
    call Call_012_4294
    jp z, Jump_012_52dc

    bit 1, a
    call nz, Call_012_5469
    ld de, $54ba
    call Call_000_015f
    jp Jump_012_52dc


Jump_012_53f8:
    call Call_012_5444
    jr c, jr_012_541e

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jp nz, Jump_012_52e6

    ld de, $54d2
    call Call_000_015f
    call Call_012_545b
    call Call_012_549b
    call Call_012_41f8
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jp Jump_012_52dc


jr_012_541e:
    ld de, $54d8
    call Call_000_015f
    call Call_012_5491
    ld a, $2d
    add c
    ld l, a
    res 0, [hl]
    ld de, $5206
    call Call_012_4294
    jp z, Jump_012_52dc

    bit 0, a
    call nz, Call_012_5469
    ld de, $54cc
    call Call_000_015f
    jp Jump_012_52dc


Call_012_5444:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    ld de, $5212
    call Call_000_0171
    push de
    call Call_012_4883
    pop de
    ret c

    inc de
    inc de
    call Call_012_4883
    ret


Call_012_545b:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    push hl
    ld de, $5212
    call Call_000_0171
    jr jr_012_5476

Call_012_5469:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    push hl
    ld de, $5212
    call Call_000_0171
    inc de

jr_012_5476:
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    pop hl
    ld [hl], a
    call Call_012_5481
    ret


Call_012_5481:
    push af
    ld a, $24
    add c
    ld l, a
    pop af
    bit 0, a
    jr z, jr_012_548e

    ld [hl], $01
    ret


jr_012_548e:
    ld [hl], $00
    ret


Call_012_5491:
    ld de, $5202
    call Call_012_419e
    call Call_012_4196
    ret


Call_012_549b:
    ld de, $5202
    jr jr_012_54a3

Call_012_54a0:
    ld de, $5204

jr_012_54a3:
    call Call_012_41c4
    call Call_012_418e
    ret


    sbc $54
    ld [$0100], sp
    ld [bc], a
    inc bc
    rst $38
    sbc $54
    ld [$0504], sp
    ld b, $05
    rst $38
    sbc $54
    ld [$0807], sp
    rst $38
    sbc $54
    ld [$0a09], sp
    rst $38
    sbc $54
    ld [$0c0b], sp
    rst $38
    sbc $54
    ld [$0e0d], sp
    rst $38
    sbc $54
    ld [$100f], sp
    rst $38
    sbc $54
    ld [$1211], sp
    rst $38
    inc b
    ld d, l
    dec e
    ld d, l
    ld [hl], $55
    ld c, a
    ld d, l
    ld [hl], b
    ld d, l
    add l
    ld d, l
    sbc d
    ld d, l
    xor a
    ld d, l
    ret z

    ld d, l
    pop hl
    ld d, l
    ld a, [$1355]
    ld d, [hl]
    inc l
    ld d, [hl]
    ld b, l
    ld d, [hl]
    ld e, [hl]
    ld d, [hl]
    ld [hl], a
    ld d, [hl]
    sub b
    ld d, [hl]
    xor c
    ld d, [hl]
    jp nz, $f856

    rlca
    db $f4
    ld b, $f4
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0300], sp
    stop
    ld hl, sp+$02
    db $10
    ld [$0403], sp
    db $10
    add b
    ld hl, sp+$07
    db $f4
    ld b, $f4
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0600], sp
    stop
    ld hl, sp+$05
    db $10
    ld [$0403], sp
    db $10
    add b
    ld hl, sp+$07
    db $f4
    ld b, $f4
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0800], sp
    stop
    ld hl, sp+$07
    db $10
    ld [$0c03], sp
    db $10
    add b
    ld hl, sp+$07
    db $f4
    ld b, $f4
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0908], sp
    jr nc, jr_012_5560

jr_012_5560:
    ld hl, sp+$0b
    stop
    ld hl, sp+$0a
    stop
    ld hl, sp+$09
    db $10
    ld [$0c0b], sp
    db $10
    add b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp-$08
    dec c
    stop
    rlca
    dec c
    jr nc, jr_012_5584

    nop
    dec c
    ld [hl], b
    nop
    ld sp, hl
    dec c
    ld d, b

jr_012_5584:
    add b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp-$08
    ld c, $10
    nop
    rlca
    ld c, $30
    rlca
    nop
    ld c, $70
    nop
    ld sp, hl
    ld c, $50
    add b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp-$08
    rrca
    stop
    rlca
    rrca
    jr nc, jr_012_55ae

    nop
    rrca
    ld [hl], b
    nop
    ld sp, hl
    rrca
    ld d, b

jr_012_55ae:
    add b
    ld hl, sp+$06
    ld bc, $fc0b
    ld hl, sp+$10
    stop
    ld [$1011], sp
    ld [$1408], sp
    stop
    ld hl, sp+$13
    stop
    ld hl, sp+$12
    db $10
    add b
    ld hl, sp+$06
    ld bc, $fc0b
    ld hl, sp+$15
    stop
    ld [$1016], sp
    ld [bc], a
    ld [$1017], sp
    ld b, $f8
    add hl, de
    stop
    ld hl, sp+$18
    db $10
    add b
    db $fd
    rlca
    db $fc
    dec bc
    db $f4
    nop
    ld a, [de]
    db $10
    ld [$1c00], sp
    stop
    ld hl, sp+$1b
    db $10
    ld [$1d00], sp
    stop
    ld [$101e], sp
    add b
    db $fd
    rlca
    db $fc
    dec bc
    db $f4
    ld a, [$101f]
    ld [$2106], sp
    stop
    ld hl, sp+$20
    db $10
    ld [$2200], sp
    stop
    ld [$1023], sp
    add b
    db $fd
    rlca
    db $f4
    inc bc
    db $f4
    ld hl, sp+$1d
    ld d, b
    nop
    ld [$501e], sp
    ld [$1c00], sp
    ld d, b
    nop
    ld hl, sp+$1b
    ld d, b
    ld [$1a08], sp
    ld d, b
    add b
    db $fd
    rlca
    db $f4
    inc bc
    db $f4
    ld hl, sp+$22
    ld d, b
    nop
    ld [$5023], sp
    ld [$2100], sp
    ld d, b
    nop
    ld hl, sp+$20
    ld d, b
    ld [$1f02], sp
    ld d, b
    add b
    ld hl, sp+$02
    db $fc
    dec bc
    db $f4
    ld hl, sp+$1a
    jr nc, @+$0a

    nop
    inc e
    jr nc, jr_012_5652

jr_012_5652:
    ld [$301b], sp
    ld [$1d00], sp
    jr nc, jr_012_565a

jr_012_565a:
    ld hl, sp+$1e
    jr nc, @-$7e

    ld hl, sp+$02
    db $fc
    dec bc
    db $f4
    cp $1f
    jr nc, @+$0a

    ld a, [$3021]
    nop
    ld [$3020], sp
    ld [$2200], sp
    jr nc, jr_012_5673

jr_012_5673:
    ld hl, sp+$23
    jr nc, @-$7e

    ld hl, sp+$02
    db $f4
    inc bc
    db $f4
    nop
    dec e
    ld [hl], b
    nop
    ld hl, sp+$1e
    ld [hl], b
    ld [$1c00], sp
    ld [hl], b
    nop
    ld [$701b], sp
    ld [$1af8], sp
    ld [hl], b
    add b
    ld hl, sp+$02
    db $f4
    inc bc
    db $f4
    nop
    ld [hl+], a
    ld [hl], b
    nop
    ld hl, sp+$23
    ld [hl], b
    ld [$2100], sp
    ld [hl], b
    nop
    ld [$7020], sp
    ld [$1ffe], sp
    ld [hl], b
    add b
    ld hl, sp+$07
    ei
    dec b
    ei
    ld hl, sp+$12
    ld d, b
    nop
    ld [$5013], sp
    nop
    ld [$5014], sp
    ld [$11f8], sp
    ld d, b
    nop
    ld hl, sp+$10
    ld d, b
    add b
    ld hl, sp+$07
    ei
    dec b
    ei
    ld hl, sp+$18
    ld d, b
    nop
    ld [$5019], sp
    ld b, $08
    rla
    ld d, b
    ld [bc], a
    ld hl, sp+$16
    ld d, b
    nop
    ld hl, sp+$15
    ld d, b
    add b
    ld h, b
    rst $38
    add b
    db $fd
    ld h, b
    rst $38
    nop
    db $fd
    add b
    rst $38
    nop
    db $fd
    ld hl, sp+$06
    ldh a, [$ff09]
    jp z, Jump_000_0708

    dec b
    inc b
    dec b
    ld b, a
    nop

Jump_012_56f3:
    ld a, b
    dec b
    jr z, jr_012_5720

    dec b
    jr z, jr_012_5703

    dec b
    jp z, Jump_012_57e9

    dec b
    ret z

    or a
    jr z, jr_012_5706

jr_012_5703:
    ld b, $00
    ret


jr_012_5706:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $56e7
    call Call_012_472a
    ld de, $5887
    jp Jump_000_01dd


jr_012_5720:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_57e9

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_012_57ec

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_576c

    dec a
    jp z, Jump_012_57cb

    dec a
    jp z, Jump_012_57d5

    ld de, $585a
    call Call_012_458b
    jp nc, Jump_012_57e9

    call Call_012_42dd
    ld de, $56db
    call Call_012_415b
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr z, jr_012_5761

    ld de, $56df
    call Call_012_415b

Jump_012_5761:
jr_012_5761:
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    jp Jump_012_57e9


Jump_012_576c:
jr_012_576c:
    ld de, $5861
    call Call_012_458b
    jr c, jr_012_5761

Jump_012_5774:
jr_012_5774:
    call Call_012_431d
    ld de, $56e7
    call Call_012_4294
    bit 0, a
    jr z, jr_012_578c

    call Call_012_418e
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jr jr_012_57e9

jr_012_578c:
    bit 1, a
    jr z, jr_012_57a6

    call Call_000_015c
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_012_57b4

    xor a
    ld [hl-], a
    ld [hl], a
    ld a, $2c
    add c
    ld l, a
    ld [hl], $03
    jr jr_012_57e9

jr_012_57a6:
    ld de, $56db
    call Call_012_419e
    ld a, $2d
    add c
    ld l, a
    res 0, [hl]
    jr jr_012_57e9

jr_012_57b4:
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    inc l
    or a
    jr nz, jr_012_57c1

    ld [hl], $00
    jr jr_012_57dd

jr_012_57c1:
    ld [hl], $04
    ld a, $26
    add c
    ld l, a
    ld [hl], $01
    jr jr_012_57e9

Jump_012_57cb:
jr_012_57cb:
    ld de, $5866
    call Call_012_458b
    jr c, jr_012_5761

    jr jr_012_5774

Jump_012_57d5:
    ld de, $586b
    call Call_012_458b
    jr jr_012_5774

jr_012_57dd:
    call Call_012_4540
    cp $30
    jr nc, jr_012_57e9

    ld a, $2b
    add c
    ld l, a
    inc [hl]

Jump_012_57e9:
jr_012_57e9:
    jp Jump_012_42f5


Jump_012_57ec:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_5814

    dec a
    jr z, jr_012_5817

    dec a
    jr z, jr_012_5819

    dec a
    jr z, jr_012_5828

    dec a
    jr z, jr_012_5841

    ld de, $5870
    call Call_012_458b
    jr nc, jr_012_57e9

    call Call_012_42dd
    ld de, $56e3
    call Call_012_415b
    jp Jump_012_5761


jr_012_5814:
    jp Jump_012_576c


jr_012_5817:
    jr jr_012_57cb

jr_012_5819:
    ld de, $5877
    call Call_012_458b
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    jp Jump_012_5774


jr_012_5828:
    ld de, $5877
    call Call_012_458b
    jr nc, jr_012_57e9

    call Call_012_42dd
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e
    add $ef
    ld l, a
    res 1, [hl]
    jp Jump_012_5761


jr_012_5841:
    ld de, $5881
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_57e9

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jp Jump_012_57e9


    add a
    ld e, b
    ld [$0302], sp
    ld [bc], a
    rst $38
    add a
    ld e, b
    ld a, [bc]
    inc b
    rst $38
    add a
    ld e, b
    inc b
    inc bc
    rst $38
    add a
    ld e, b
    ld a, [bc]
    dec b
    rst $38
    add a
    ld e, b
    ld a, [bc]
    nop
    ld [bc], a
    nop
    rst $38
    add a
    ld e, b
    ld a, [bc]
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $87ff
    ld e, b
    ld a, [bc]
    ld bc, $ff00
    sub e
    ld e, b
    or b
    ld e, b
    call $f258
    ld e, b
    rla
    ld e, c
    ld b, h
    ld e, c
    ld hl, sp+$06
    rst $30
    ld [$f8f7], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    inc bc
    ld hl, sp+$04
    stop
    ld [$1005], sp
    add b
    ld hl, sp+$06
    ld sp, hl
    ld [$f8f9], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    inc bc
    ld hl, sp+$06
    stop
    ld [$1007], sp
    add b
    ld hl, sp+$06
    ldh a, [$ff09]
    ldh a, [$fff8]
    nop
    stop
    ld [$1001], sp
    ld [$08f8], sp
    stop
    ld [$1009], sp
    ld [$0af8], sp
    stop
    rlca
    ld a, [bc]
    jr nc, jr_012_58ec

    ld sp, hl
    inc b

jr_012_58ec:
    stop
    ld [$1005], sp
    add b
    ld hl, sp+$06
    ld [$ea08], a
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0bf8], sp
    stop
    ld [$100c], sp
    ld [$0df8], sp
    stop
    rlca
    dec c
    jr nc, jr_012_5917

    ld sp, hl
    inc b
    stop
    ld [$1005], sp
    add b

jr_012_5917:
    ldh a, [$ff03]
    db $eb
    ld [$f4e9], sp
    ld c, $10
    nop
    ld [$100f], sp
    ld [$10f3], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13ee], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$16f5], sp
    stop
    ld [$1017], sp
    add b
    ld a, [$eb0d]
    ld [$fae9], sp
    rrca
    jr nc, jr_012_594d

jr_012_594d:
    ld [$3018], sp
    ld [$1af5], sp
    jr nc, jr_012_5955

jr_012_5955:
    ld [$3019], sp
    nop
    ld [$3010], sp
    ld [$1bf2], sp
    jr nc, jr_012_5961

jr_012_5961:
    ld [$3014], sp
    nop
    ld [$3013], sp
    ld [$1df3], sp
    jr nc, jr_012_596d

jr_012_596d:
    ld [$301c], sp
    add b
    and b
    rst $38
    jp z, Jump_000_0508

    ld [bc], a
    ld [bc], a
    dec h
    ld b, a
    nop

Jump_012_597b:
    ld a, b
    dec b
    jr z, jr_012_59d6

    dec b
    jr z, jr_012_598b

    dec b
    jp z, Jump_012_5a4c

    dec b
    ret z

    or a
    jr z, jr_012_599a

Jump_012_598b:
jr_012_598b:
    xor a
    ld [$ccb8], a
    call Call_012_48c6
    ld a, $1b
    ld [$de96], a
    ld b, $00
    ret


jr_012_599a:
    ld a, [$ccca]
    and $0f
    ld [$ccca], a
    ld a, $01
    ld [$dd31], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $28
    add $02
    ld l, a
    ld [hl], $3c
    inc l
    ld [hl], $14
    inc l
    xor a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld l, c
    push hl
    ld b, $12
    ld de, $5a7b
    call Call_012_489b
    pop hl
    ld c, l
    ld de, $5971
    call Call_012_419e
    ld de, $5a91
    jp Jump_000_01dd


jr_012_59d6:
    ld a, [$deaf]
    or a
    jr nz, jr_012_5a4c

    ld a, $2c
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_012_5a35

    call c, Call_012_5a78
    inc l
    call Call_000_01e9
    jr nz, jr_012_5a1e

    ld a, $13
    add c
    ld l, a
    res 3, [hl]
    ld a, [$ccb8]
    or $03
    ld [$ccb8], a
    call Call_012_48a9
    push hl
    ld hl, $ccca
    call Call_000_01e9
    jr nz, jr_012_5a1b

    ld [hl], $0a
    ld a, [$de96]
    cp $1b
    ld a, $06

Call_012_5a11:
    ld [$de96], a
    jr z, jr_012_5a1b

    ld a, $1b
    ld [$de96], a

jr_012_5a1b:
    pop hl
    jr jr_012_5a35

jr_012_5a1e:
    ld a, $2e
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_012_5a35

    ld [hl], $04
    ld a, $13
    add c
    ld l, a
    bit 3, [hl]
    set 3, [hl]
    jr z, jr_012_5a35

    res 3, [hl]

jr_012_5a35:
    ld de, $5a85
    call Call_000_015f
    call Call_012_41e6
    call Call_000_01e6
    jr nz, jr_012_5a4c

    call Call_012_5a55
    ld a, $2a
    add c
    ld l, a
    ld [hl], $28

Jump_012_5a4c:
jr_012_5a4c:
    call Call_012_42f5
    ld a, b
    or a
    ret nz

    jp Jump_012_598b


Call_012_5a55:
    ld l, c
    push hl
    ld a, $80
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld b, $15
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld a, [hl]
    add $04
    ld d, a
    ld l, $02
    ld a, $08
    call Call_000_0159
    pop hl
    ld c, l
    ret


Call_012_5a78:
    rst $08
    ld b, h
    ret


    ld a, $1b
    ld [$de96], a
    xor a
    ld [$d298], a
    ret


    sub c
    ld e, d
    ld [$0100], sp
    ld [bc], a
    inc bc
    nop
    inc b
    dec b
    ld b, $ff
    sbc a
    ld e, d
    ret z

    ld e, d
    pop af
    ld e, d
    ld e, $5b
    ld b, a
    ld e, e
    ld [hl], b
    ld e, e
    sbc l
    ld e, e
    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff7]
    nop
    stop
    ld [$1001], sp
    ld [$0405], sp
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
    ld [$08f8], sp
    db $10
    add b
    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff8]
    add hl, bc
    stop
    ld [$100a], sp
    ld [$0404], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0b00], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$0ef3], sp
    db $10

jr_012_5af0:
    add b
    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff4]
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1012], sp
    nop
    ld [$1007], sp
    rlca
    ldh a, [c]
    inc de
    db $10

jr_012_5b1d:
    add b
    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff7]
    inc d
    stop
    ld [$1015], sp
    ld [$0405], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0b00], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$0ef3], sp
    db $10

jr_012_5b46:
    add b
    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff8]
    add hl, bc
    stop
    ld [$100a], sp
    ld [$0404], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0b00], sp
    stop
    ld [$1016], sp
    nop
    ld [$100d], sp
    ld [$0efc], sp
    jr nc, jr_012_5af0

    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff4]
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1017], sp
    nop
    ld [$1007], sp
    rlca
    db $fd
    inc de
    jr nc, jr_012_5b1d

    rst $30
    rlca
    ldh a, [rDIV]
    ldh a, [$fff7]
    inc d
    stop
    ld [$1015], sp
    ld [$0405], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0b00], sp
    stop
    ld [$1016], sp
    nop
    ld [$100d], sp
    ld [$0efc], sp
    jr nc, jr_012_5b46

    nop
    cp $80
    db $fd
    add b
    cp $00
    nop
    nop
    db $fd
    add b
    db $fd
    nop
    inc bc
    add b
    db $fd
    rst $30
    dec bc
    xor $08
    or $f7
    ld a, [bc]
    rst $30
    add hl, bc
    rst $30
    rst $30
    rst $30
    call Call_000_0708
    inc bc
    inc b
    dec h
    ld b, a
    nop

Jump_012_5bea:
    ld a, b
    dec b
    jr z, jr_012_5c1d

    dec b
    jr z, jr_012_5bfa

    dec b
    jp z, Jump_012_5cae

    dec b
    ret z

    or a
    jr z, jr_012_5bfd

jr_012_5bfa:
    ld b, $00
    ret


jr_012_5bfd:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $5bd6
    call Call_012_472a
    ld de, $5e47
    jp Jump_000_01dd


jr_012_5c1d:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_5cae

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_012_5cb1

    ld de, $5e24
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr z, jr_012_5c3c

    ld de, $5e42

jr_012_5c3c:
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_5c4d

    call Call_012_5d73
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c

jr_012_5c4d:
    ld de, $5bd6
    push de
    call Call_012_46f6
    pop de
    jr nc, jr_012_5c81

    ld de, $5bca
    call Call_012_415b
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_012_5c72

    ld de, $5bd6
    call Call_012_4443
    jr z, jr_012_5c90

    bit 0, a
    jr nz, jr_012_5c77

    jr jr_012_5c90

jr_012_5c72:
    call Call_012_41e6
    jr jr_012_5c90

jr_012_5c77:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_012_5c90

jr_012_5c81:
    call Call_012_4294
    bit 1, a
    jr nz, jr_012_5c90

    call Call_012_418e
    call Call_012_4224
    jr jr_012_5cae

jr_012_5c90:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_012_5cae

    call Call_012_4540
    cp $20
    jr nc, jr_012_5cae

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld de, $5bc6
    call Call_012_415b

Jump_012_5cae:
jr_012_5cae:
    jp Jump_012_42f5


Jump_012_5cb1:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_5cdd

    dec a
    jr z, jr_012_5d29

    dec a
    jr z, jr_012_5d33

    dec a
    jr z, jr_012_5d41

    dec a
    jp z, Jump_012_5d55

    ld de, $5e29
    call Call_012_458b
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    inc [hl]
    cp $07
    jr nz, jr_012_5cae

    ld a, $2d
    add c
    ld l, a
    inc [hl]
    jr jr_012_5cae

jr_012_5cdd:
    ld de, $5e29
    call Call_012_458b
    jr nc, jr_012_5ced

jr_012_5ce5:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    inc [hl]

jr_012_5ced:
    call Call_012_4224
    ld de, $5bd6
    call Call_012_4294
    bit 0, a
    jr z, jr_012_5cff

    call Call_012_418e
    jr jr_012_5cae

jr_012_5cff:
    bit 1, a
    jr z, jr_012_5d19

    call Call_000_015c
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_012_5d21

    xor a
    ld [hl-], a
    ld [hl], a
    ld a, $2d
    add c
    ld l, a
    ld [hl], $03
    jr jr_012_5cae

jr_012_5d19:
    ld de, $5bc6
    call Call_012_419e
    jr jr_012_5cae

jr_012_5d21:
    ld a, $2d
    add c
    ld l, a
    ld [hl], $04
    jr jr_012_5cae

jr_012_5d29:
    ld de, $5e30
    call Call_012_458b
    jr c, jr_012_5ce5

    jr jr_012_5ced

jr_012_5d33:
    ld de, $5e35
    call Call_012_458b
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    jr jr_012_5ced

jr_012_5d41:
    ld de, $5e35
    call Call_012_458b
    jp nc, Jump_012_5cae

    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    inc [hl]
    jp Jump_012_5cae


Jump_012_5d55:
    ld de, $5e3b
    call Call_012_458b
    jp nc, Jump_012_5cae

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    set 0, [hl]
    inc l
    ld [hl], $00
    inc l
    ld [hl], $00
    jp Jump_012_5cae


Call_012_5d73:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_012_5d80

    call Call_012_5d84
    ret


jr_012_5d80:
    call Call_012_5dbc
    ret


Call_012_5d84:
    ld l, c
    push hl
    ld de, $5bda
    call Call_000_0201
    ld a, $ce
    ld [$cc00], a
    ld a, $5b
    ld [$cc01], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_012_5da8

    ld a, $d2
    ld [$cc00], a
    ld a, $5b
    ld [$cc01], a

jr_012_5da8:
    ld b, $15
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld l, $02
    call Call_012_5df4
    pop hl
    ld c, l
    ret


Call_012_5dbc:
    ld l, c
    push hl
    ld de, $5bde
    call Call_000_0201
    ld a, $d2
    ld [$cc00], a
    ld a, $5b
    ld [$cc01], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_012_5de0

    ld a, $ce
    ld [$cc00], a
    ld a, $5b
    ld [$cc01], a

jr_012_5de0:
    ld b, $15
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld l, $02
    call Call_012_5df4
    pop hl
    ld c, l
    ret


Call_012_5df4:
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


    ld b, a
    ld e, [hl]
    ld [$ff00], sp
    ld b, a
    ld e, [hl]
    ld [$0100], sp
    ld [bc], a
    rst $38
    ld b, a
    ld e, [hl]
    inc b
    ld [bc], a
    rst $38
    ld b, a
    ld e, [hl]
    ld [$0100], sp
    rst $38
    ld b, a
    ld e, [hl]
    ld [$0400], sp
    inc bc
    rst $38
    ld b, a
    ld e, [hl]
    ld [$ff03], sp
    ld d, c
    ld e, [hl]
    add d
    ld e, [hl]
    or e
    ld e, [hl]
    add sp, $5e
    add hl, de
    ld e, a
    ldh a, [$ff0b]
    xor $09
    xor $f0
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0504], sp
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
    db $10
    ld [$0604], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    ld [$0af9], sp
    stop
    ld hl, sp+$09
    db $10
    add b
    ldh a, [$ff0b]
    ld [$ea09], a
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0504], sp
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
    db $10
    ld [$1404], sp
    stop
    ld [$1015], sp
    nop
    ld [$1008], sp
    ld [$17f9], sp
    stop
    ld hl, sp+$16
    db $10
    add b
    ldh a, [$ff0b]
    ldh [c], a
    add hl, bc
    ldh [c], a
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0504], sp
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
    db $10
    ld [$1404], sp
    stop
    ld [$1015], sp
    nop
    ld [$1008], sp
    ld [$0bf8], sp
    db $10
    ld [$16f9], sp
    stop
    ld [$1017], sp
    add b
    ld a, [$ee15]
    add hl, bc
    xor $fe
    ld [bc], a
    jr nc, jr_012_5ef1

jr_012_5ef1:
    ld [$3001], sp
    nop
    ld [$3000], sp
    ld [$0efb], sp
    stop
    ld hl, sp+$0d
    stop
    ld hl, sp+$0c
    db $10
    ld [$06ff], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    ld [$0af9], sp
    stop
    ld hl, sp+$09
    db $10
    add b
    ld a, [$e60b]
    add hl, bc
    and $f8
    rrca
    stop
    ld a, [bc]
    rrca
    db $10
    ld [$1000], sp
    stop
    or $10
    db $10
    ld [$1100], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$0800], sp
    stop
    ld hl, sp+$07
    stop
    ld hl, sp+$06
    db $10
    ld [$0901], sp
    stop
    ld [$100a], sp
    add b
    and b
    rst $38
    nop
    nop
    jr nc, @+$01

    and b
    rst $38
    push af
    ld b, $f7
    ld [$f800], sp
    nop
    ld hl, sp-$37
    ld [$0307], sp
    inc b
    dec b
    ld b, a
    nop

Jump_012_5f66:
    ld a, b
    dec b
    jp z, Jump_012_5fad

    dec b
    jr z, jr_012_5f76

    dec b
    jr z, jr_012_5fe1

    dec b
    ret z

    or a
    jr z, jr_012_5f7e

jr_012_5f76:
    ld a, $00
    ld [$cc96], a
    ld b, $00
    ret


jr_012_5f7e:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e
    add $05
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    call Call_012_4abf
    call Call_000_015c
    call Call_012_42dd
    ld de, $5f4e
    call Call_012_415b
    ld de, $5f56
    call Call_012_472a
    ld de, $61c2
    jp Jump_000_01dd


Jump_012_5fad:
    ld a, [$deaf]
    or a
    jr nz, jr_012_5fe1

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_012_5fe4

    dec a
    jp z, Jump_012_6023

    ld de, $6154
    call Call_000_015f
    call Call_012_41e6
    call Call_000_01e6
    jr nz, jr_012_5fe1

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $28
    ld de, $5f52
    call Call_012_415b

jr_012_5fe1:
    jp Jump_012_42f5


Jump_012_5fe4:
    ld de, $615c
    call Call_000_015f
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_012_5ffd

    call Call_012_420a
    call Call_000_01e6
    jr nz, jr_012_5fe1

    jr jr_012_6014

jr_012_5ffd:
    ld de, $00b0
    ld a, $2c
    add c
    ld l, a
    ld b, $0b
    call Call_012_4ac4
    call Call_012_6070
    jr c, jr_012_601e

    ld a, [$cc96]
    or a
    jr nz, jr_012_601e

jr_012_6014:
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $96

jr_012_601e:
    call Call_012_42dd
    jr jr_012_5fe1

Jump_012_6023:
    ld de, $615c
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_603b

    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $04
    ld l, a
    set 0, [hl]
    inc l
    ld [hl], $00

jr_012_603b:
    call Call_012_6070
    jr c, jr_012_601e

    ld a, [$cc96]
    cp $01
    jr nc, jr_012_601e

    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    cp $28
    jr nz, jr_012_606d

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld a, $0f
    jr z, jr_012_605c

    ld a, $03

jr_012_605c:
    ldh [$ff97], a
    ld l, c
    push hl
    call $6091
    pop hl
    ld c, l
    ld a, $30
    add c
    ld l, a
    ld [hl], $00
    jr jr_012_601e

jr_012_606d:
    inc [hl]
    jr jr_012_601e

Call_012_6070:
    call Call_012_4540
    cp $20
    jr nc, jr_012_607d

    call Call_012_4551
    cp $20
    ret c

jr_012_607d:
    ld de, $5f5a
    call Call_012_4883
    ret


    jp nc, $0760

    dec b
    nop
    jp nz, $0561

    ld bc, $0600
    ld [de], a
    call nz, Call_012_5a11
    ld e, a
    ld a, $84
    ld [$cc00], a
    ld a, $60
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, $2c
    add c
    ld l, a
    ldh a, [$ff97]
    call Call_012_4abf
    ld a, [$cc96]
    inc a
    ld [$cc96], a
    call Call_000_024f
    ld a, $2c
    add c
    ld l, a
    ld [hl], b
    ld a, $1d
    add c
    ld l, a
    ld a, b
    ld de, $0100
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    call Call_000_015c
    ld de, $61c2
    jp Jump_000_01dd


    dec b
    jr z, jr_012_60de

    dec b
    jr nz, jr_012_60fa

    call Call_012_6108
    ld b, $00
    ret


jr_012_60de:
    ld a, [$deaf]
    or a
    jr nz, jr_012_60fa

    ld a, [$cc96]
    or a
    jr z, jr_012_610f

    call Call_012_420a
    call Call_012_6125
    ld a, $1a
    add c
    ld l, a
    bit 7, [hl]
    res 7, [hl]
    jr nz, jr_012_6108

jr_012_60fa:
    call Call_012_42f5
    ld a, b
    or a
    ret nz

    ld a, [$cc96]
    dec a
    ld [$cc96], a
    ret


Call_012_6108:
jr_012_6108:
    ld a, [$cc96]
    dec a
    ld [$cc96], a

jr_012_610f:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    ld l, c
    push hl
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    ld c, l
    ld b, $00
    ret


Call_012_6125:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    ld de, $6134
    call Call_000_0171
    jp Jump_000_015f


    ld a, d
    ld h, c
    sbc b
    ld h, c
    ld l, b
    ld h, c
    or b
    ld h, c
    adc h
    ld h, c
    or [hl]
    ld h, c
    ld l, [hl]
    ld h, c
    sbc [hl]
    ld h, c
    add b
    ld h, c
    and h
    ld h, c
    ld [hl], h
    ld h, c
    cp h
    ld h, c
    add [hl]
    ld h, c
    xor d
    ld h, c
    ld h, d
    ld h, c
    sub d
    ld h, c
    jp nz, Jump_000_0861

    ld bc, $0100
    ld [bc], a
    rst $38
    jp nz, Jump_000_0861

    inc bc
    inc b
    rst $38
    jp nz, Jump_000_0861

    dec b
    ld b, $ff
    jp nz, Jump_000_0861

    rlca
    ld [$c2ff], sp
    ld h, c
    ld [$0a09], sp
    rst $38
    jp nz, Jump_000_0861

    dec bc
    inc c
    rst $38
    jp nz, Jump_000_0861

    dec c
    ld c, $ff
    jp nz, Jump_000_0861

    rrca
    db $10
    rst $38
    jp nz, Jump_000_0861

    ld de, $ff12
    jp nz, Jump_000_0861

    inc de
    inc d
    rst $38
    jp nz, Jump_000_0861

    dec d
    ld d, $ff
    jp nz, Jump_000_0861

    rla
    jr @+$01

    jp nz, Jump_000_0861

    add hl, de
    ld a, [de]
    rst $38
    jp nz, Jump_000_0861

    dec de
    inc e
    rst $38
    jp nz, Jump_000_0861

    dec e
    ld e, $ff
    jp nz, Jump_000_0861

    rra
    jr nz, @+$01

    jp nz, Jump_000_0861

    ld hl, $ff22
    jp nz, Jump_000_0861

    inc hl
    inc h
    rst $38
    inc c
    ld h, d
    ld sp, $5662
    ld h, d
    ld a, e
    ld h, d
    and h
    ld h, d
    call $e262
    ld h, d
    rst $30
    ld h, d
    inc c
    ld h, e
    ld hl, $3663
    ld h, e
    ld c, e
    ld h, e
    ld h, b
    ld h, e
    ld [hl], l
    ld h, e
    add d
    ld h, e
    adc a
    ld h, e
    sbc h
    ld h, e
    xor c
    ld h, e
    or [hl]
    ld h, e
    jp $d063


    ld h, e
    db $dd
    ld h, e
    ld [$f763], a
    ld h, e
    inc b
    ld h, h
    ld de, $1e64
    ld h, h
    dec hl
    ld h, h
    jr c, @+$66

    ld b, l
    ld h, h
    ld d, d
    ld h, h
    ld e, a
    ld h, h
    ld l, h
    ld h, h
    ld a, c
    ld h, h
    add [hl]
    ld h, h
    sub e
    ld h, h
    and b
    ld h, h
    push af
    ld b, $f7
    add hl, bc
    ldh a, [c]
    db $f4
    jr jr_012_6224

    nop
    ld [$1019], sp
    ld [$1c08], sp
    stop
    ld hl, sp+$1b
    stop
    ld hl, sp+$1a
    db $10

jr_012_6224:
    ld [$1d00], sp
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    add b
    db $f4
    rlca
    rst $30
    add hl, bc
    ldh a, [c]
    db $f4
    jr nz, jr_012_6249

    nop
    ld [$1021], sp
    ld [$2408], sp
    stop
    ld hl, sp+$23
    stop
    ld hl, sp+$22
    db $10

jr_012_6249:
    ld [$2500], sp
    stop
    ld [$1026], sp
    nop
    ld [$1027], sp
    add b
    push af
    ld [$09f7], sp
    ldh a, [c]
    push af
    jr nz, jr_012_626e

    nop
    ld [$1021], sp
    ld [$2408], sp
    stop
    ld hl, sp+$23
    stop
    ld hl, sp+$22
    db $10

jr_012_626e:
    ld [$2800], sp
    stop
    ld [$1029], sp
    nop
    ld [$102a], sp
    add b
    push af
    ld [$08f5], sp
    db $f4
    db $f4
    ld a, [bc]
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ld [$0f00], sp
    stop
    ld hl, sp+$0e
    stop
    ld hl, sp+$0d
    db $10
    ld [$1000], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    add b
    push af
    ld [$08f5], sp
    db $f4
    db $f4
    ld a, [bc]
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ld [$1400], sp
    stop
    ld hl, sp+$0e
    stop
    ld hl, sp+$13
    db $10
    ld [$1500], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    add b
    ld a, [$fa03]
    inc bc
    ld hl, sp-$08
    nop
    stop
    ld [$7001], sp
    ld [$0200], sp
    stop
    ld hl, sp+$01
    db $10
    add b
    ld a, [$fa03]
    inc bc
    ld hl, sp-$08
    nop
    stop
    ld [$7001], sp
    ld [$0300], sp
    stop
    ld hl, sp+$01
    db $10
    add b
    db $fc
    dec b
    ld a, [$f803]
    ld hl, sp+$01
    ld d, b
    nop
    ld [$3000], sp
    ld [$0100], sp
    jr nc, jr_012_6308

jr_012_6308:
    ld hl, sp+$02
    jr nc, @-$7e

    db $fc
    dec b
    ld a, [$f803]
    ld hl, sp+$01
    ld d, b
    nop
    ld [$3000], sp
    ld [$0100], sp
    jr nc, jr_012_631d

jr_012_631d:
    ld hl, sp+$03
    jr nc, @-$7e

    db $fc
    dec b
    db $fc
    inc b
    ld hl, sp-$08
    ld [bc], a
    ld [hl], b
    nop
    ld [$7001], sp
    ld [$0000], sp
    ld [hl], b
    nop
    ld hl, sp+$01
    db $10
    add b
    db $fc
    dec b
    db $fc
    inc b
    ld hl, sp-$08
    inc bc
    ld [hl], b
    nop
    ld [$7001], sp
    ld [$0000], sp
    ld [hl], b
    nop
    ld hl, sp+$01
    db $10
    add b
    ld a, [$fc03]
    dec b
    ld hl, sp-$08
    ld bc, $0050
    ld [$5002], sp
    ld [$0100], sp
    jr nc, jr_012_635c

jr_012_635c:
    ld hl, sp+$00
    ld d, b
    add b
    ld a, [$fc03]
    dec b
    ld hl, sp-$08
    ld bc, $0050
    ld [$5003], sp
    ld [$0100], sp
    jr nc, jr_012_6371

jr_012_6371:
    ld hl, sp+$00
    ld d, b
    add b
    db $fd
    ld bc, $03f8
    ld hl, sp-$04
    inc b
    db $10
    ld [$0500], sp
    db $10
    add b
    db $fd
    ld bc, $03f8
    ld hl, sp-$04
    inc b
    db $10
    ld [$0600], sp
    db $10
    add b
    db $fd
    ld bc, $07fc
    ld hl, sp-$04
    dec b
    ld d, b
    ld [$0400], sp
    ld d, b
    add b
    db $fd
    ld bc, $07fc
    ld hl, sp-$04
    ld b, $50
    ld [$0400], sp
    ld d, b
    add b
    ld hl, sp+$03
    cp $02
    db $fc
    ld hl, sp+$07
    stop
    ld [$1008], sp
    add b
    ld hl, sp+$03
    cp $02
    db $fc
    ld hl, sp+$07
    stop
    ld [$1009], sp
    add b
    db $fc
    rlca
    cp $02
    db $fc
    ld hl, sp+$08
    jr nc, jr_012_63cc

jr_012_63cc:
    ld [$3007], sp
    add b
    db $fc
    rlca
    cp $02
    db $fc
    ld hl, sp+$09
    jr nc, jr_012_63d9

jr_012_63d9:
    ld [$3007], sp
    add b
    db $fc
    ld [bc], a
    ld sp, hl
    inc b
    ld hl, sp-$04
    dec hl
    db $10
    ld [$2c00], sp
    db $10
    add b
    db $fc
    ld [bc], a
    ld sp, hl
    inc b
    ld hl, sp-$04
    dec hl
    db $10
    ld [$2d00], sp
    db $10
    add b
    db $fd
    inc bc
    ld sp, hl
    inc b
    ld hl, sp-$04
    dec hl
    jr nc, jr_012_6408

    nop
    inc l
    jr nc, @-$7e

    db $fd
    inc bc
    ld sp, hl
    inc b

jr_012_6408:
    ld hl, sp-$04
    dec hl
    jr nc, @+$0a

    nop
    dec l
    jr nc, @-$7e

    db $fd
    inc bc
    ei
    ld b, $f8
    db $fc
    inc l
    ld [hl], b
    ld [$2b00], sp
    ld [hl], b
    add b
    db $fd
    inc bc
    ei
    ld b, $f8
    db $fc
    dec l
    ld [hl], b
    ld [$2b00], sp
    ld [hl], b
    add b
    db $fc
    inc bc
    ei
    ld b, $f8
    db $fc
    inc l
    ld d, b
    ld [$2b00], sp
    ld d, b
    add b
    db $fc
    inc bc
    ei
    ld b, $f8
    db $fc
    dec l
    ld d, b
    ld [$2b00], sp
    ld d, b
    add b
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld hl, sp+$2e
    stop
    ld [$102f], sp
    add b
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld hl, sp+$2e
    stop
    ld [$1030], sp
    add b
    ei
    ld b, $fc
    ld [bc], a
    db $fc
    ld hl, sp+$2f
    jr nc, jr_012_6468

jr_012_6468:
    ld [$302e], sp
    add b
    ei
    ld b, $fc
    ld [bc], a
    db $fc
    ld hl, sp+$30
    jr nc, jr_012_6475

jr_012_6475:
    ld [$302e], sp
    add b
    ei
    ld b, $fd
    inc bc
    db $fc
    ld hl, sp+$2f
    ld [hl], b
    nop
    ld [$702e], sp
    add b
    ei
    ld b, $fd
    inc bc
    db $fc
    ld hl, sp+$30
    ld [hl], b
    nop
    ld [$702e], sp
    add b
    ld sp, hl
    inc b
    db $fd
    inc bc
    db $fc
    ld hl, sp+$2e
    ld d, b
    nop
    ld [$502f], sp
    add b
    ld sp, hl
    inc b
    db $fd
    inc bc
    db $fc
    ld hl, sp+$2e
    ld d, b
    nop
    ld [$5030], sp
    add b
    di
    rlca
    ldh a, [c]
    ld [$08ce], sp
    rlca
    dec b
    inc bc
    dec b
    ld b, a
    nop

Jump_012_64b9:
    ld a, b
    dec b
    jr z, jr_012_64e8

    dec b
    jr z, jr_012_64c8

    dec b
    jr z, jr_012_651e

    dec b
    ret z

    or a
    jr z, jr_012_64cb

jr_012_64c8:
    ld b, $00
    ret


jr_012_64cb:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $3c
    call Call_000_015c
    call Call_012_42dd
    ld de, $64ad
    call Call_012_472a
    ld de, $65b8
    jp Jump_000_01dd


jr_012_64e8:
    ld a, [$deaf]
    or a
    jr nz, jr_012_651e

    ld a, [$c3e7]
    add $08
    cp $b0
    jp nc, Jump_012_654c

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_6521

    dec a
    jr z, jr_012_653e

    ld de, $65a3
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_651b

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $78

jr_012_651b:
    call Call_012_42dd

jr_012_651e:
    jp Jump_012_42f5


jr_012_6521:
    ld de, $65a8
    call Call_000_015f
    call Call_012_6561
    call Call_000_01e6
    jr nz, jr_012_651b

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $78
    jr jr_012_651b

jr_012_653e:
    ld de, $65af
    call Call_000_015f
    call Call_012_6585
    call Call_000_01e6
    jr nz, jr_012_651b

Jump_012_654c:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $3c
    add $ed
    ld l, a
    ld [hl], $00
    jr jr_012_651b

Call_012_6561:
    call Call_012_4540
    cp $10
    ret c

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_012_657a

    ld a, $00
    ld [$d732], a
    ld a, $8c
    ld [$d731], a
    ret


jr_012_657a:
    ld a, $ff
    ld [$d732], a
    ld a, $74
    ld [$d731], a
    ret


Call_012_6585:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_012_6598

    ld a, $ff
    ld [$d732], a
    ld a, $74
    ld [$d731], a
    ret


jr_012_6598:
    ld a, $00
    ld [$d732], a
    ld a, $8c
    ld [$d731], a
    ret


    cp b
    ld h, l
    ld [$ff00], sp
    cp b
    ld h, l
    ld [$0504], sp
    ld b, $ff
    cp b
    ld h, l
    inc b
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $c6ff
    ld h, l
    rst $30
    ld h, l
    inc [hl]
    ld h, [hl]
    ld [hl], c
    ld h, [hl]
    xor [hl]
    ld h, [hl]
    rst $20
    ld h, [hl]
    jr nz, @+$69

    di
    rlca
    ldh a, [c]
    ld [$f0f2], sp
    rra
    stop
    ld [$1001], sp
    nop
    ld [$1020], sp
    ld [$2300], sp
    stop
    ld hl, sp+$22
    stop
    ld hl, sp+$21
    db $10
    ld [$2400], sp
    stop
    ld [$1025], sp
    nop
    ld [$1026], sp
    ld [$0dff], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    ldh a, [c]
    add hl, bc
    ldh a, [c]
    ld [$f0f2], sp
    ld d, $10
    nop
    ld [$1001], sp
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$1b00], sp
    stop
    ld hl, sp+$1a
    stop
    ld hl, sp+$05
    stop
    ld hl, sp+$19
    db $10
    ld [$1c00], sp
    stop
    ld [$1009], sp
    nop
    ld [$101d], sp
    nop
    ld [$101e], sp
    ld [$0df7], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    pop af
    dec bc
    ldh a, [c]
    ld [$f0f2], sp
    ld c, $10
    nop
    ld [$1001], sp
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$1200], sp
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$05
    stop
    ld hl, sp+$11
    db $10
    ld [$1300], sp
    stop
    ld [$1009], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$0df7], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    ldh a, [$ff0d]
    ldh a, [c]
    ld [$f0f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$05
    stop
    ld hl, sp+$04
    db $10
    ld [$0800], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    nop
    ld [$100b], sp
    ld [$0df7], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    di
    rlca
    ldh a, [c]
    ld [$f0f2], sp
    rra
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    ld [$2300], sp
    stop
    ld hl, sp+$22
    stop
    ld hl, sp+$21
    stop
    ld hl, sp+$2d
    db $10
    ld [$2d00], sp
    ld d, b
    nop
    ld [$1024], sp
    nop
    ld [$1009], sp
    nop
    ld [$1026], sp
    ld [$0dff], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    di
    rlca
    ldh a, [c]
    ld [$f0f2], sp
    rra
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    ld [$2300], sp
    stop
    ld hl, sp+$29
    stop
    ld hl, sp+$21
    stop
    ld hl, sp+$2e
    db $10
    ld [$2e00], sp
    ld d, b
    nop
    ld [$1024], sp
    nop
    ld [$102a], sp
    nop
    ld [$1026], sp
    ld [$0dff], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    di
    rlca
    ldh a, [c]
    ld [$f0f2], sp
    rra
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    ld [$2300], sp
    stop
    ld hl, sp+$2b
    stop
    ld hl, sp+$21
    stop
    ld hl, sp+$2f
    db $10
    ld [$2f00], sp
    ld d, b
    nop
    ld [$1024], sp
    nop
    ld [$102c], sp
    nop
    ld [$1026], sp
    ld [$0dff], sp
    stop
    ld hl, sp+$0c
    db $10
    add b
    rst $00
    ld [$0207], sp
    inc b
    dec h
    ld b, a
    nop

Jump_012_6761:
    ld a, b
    dec b
    jr z, jr_012_6796

    dec b
    jr z, jr_012_6771

    dec b
    jp z, Jump_012_67cb

    dec b
    ret z

    or a
    jr z, jr_012_677b

Jump_012_6771:
jr_012_6771:
    xor a
    ld [$ccb8], a
    call Call_012_48c6
    ld b, $00
    ret


jr_012_677b:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $6873
    jp Jump_000_01dd


jr_012_6796:
    ld a, [$deaf]
    or a
    jr nz, jr_012_67cb

    call Call_012_681e
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_67d4

    ld de, $6863
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_67c8

    call Call_000_015c
    call Call_000_024f
    ld de, $0180
    call Call_012_45a5
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $3c

jr_012_67c8:
    call Call_012_42dd

Jump_012_67cb:
jr_012_67cb:
    call Call_012_42f5
    ld a, b
    or a
    ret nz

    jp Jump_012_6771


jr_012_67d4:
    ld de, $686b
    call Call_000_015f
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_012_67ff

    call Call_000_01e6
    jr nz, jr_012_6819

    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    add $f3
    ld l, a
    ld de, $fe80
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_012_418e
    call Call_012_42dd
    jr jr_012_6819

jr_012_67ff:
    ld a, [$c3e8]
    cp $09
    jr nc, jr_012_6819

    call Call_000_015c
    call Call_012_42dd
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $01
    ld l, a
    dec [hl]
    inc l
    res 0, [hl]

jr_012_6819:
    call Call_012_420a
    jr jr_012_67cb

Call_012_681e:
    ld a, $1a
    add c
    ld l, a
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_012_6840

    ld a, [$ccb8]
    or $01
    ld [$ccb8], a
    ld a, $2d
    add c
    ld l, a
    ld [hl], $68
    inc l
    ld [hl], $01
    inc l
    set 0, [hl]
    call Call_012_48a9
    ret


jr_012_6840:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    ret z

    ld a, $2d
    add c
    ld l, a
    call Call_000_01ec
    jr z, jr_012_6855

    call Call_012_48a9
    ret


jr_012_6855:
    ld a, $2f
    add c
    ld l, a
    res 0, [hl]
    xor a
    ld [$ccb8], a
    call Call_012_48c6
    ret


    ld [hl], e
    ld l, b
    inc b
    nop
    ld [bc], a
    ld bc, $ff02
    ld [hl], e
    ld l, b
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $ff02
    ld a, c
    ld l, b
    sbc d
    ld l, b
    or a
    ld l, b
    db $fc
    rlca
    ld a, [$f00e]
    ld hl, sp+$00
    db $10
    ld [$0100], sp
    stop
    ld [$1002], sp
    ld [$04f8], sp
    stop
    ld [$1005], sp
    ld [$0600], sp
    db $10
    db $ed
    ld [$1003], sp
    add b
    db $fc
    rlca
    ld hl, sp+$0c
    or $f8
    rlca
    stop
    ld [$1008], sp
    ld [$0af8], sp
    stop
    ld [$1005], sp
    ld [$0600], sp
    db $10
    push af
    ld [$1009], sp
    add b
    db $fc
    rlca
    ld sp, hl
    dec c
    rst $30
    ld hl, sp+$0b
    stop
    ld [$100c], sp
    ld [$04f8], sp
    stop
    ld [$1005], sp
    ld [$0600], sp
    db $10
    ldh a, [$ff08]
    dec c
    db $10
    add b
    jp c, $e268

    ld l, b
    ld [$f468], a
    db $ed
    db $f4
    ld b, $0b
    db $ed
    dec bc
    ld b, $f8
    or $f8
    ld b, $07
    or $07
    ld b, $fa
    cp $fa
    ld b, $05
    cp $05
    ld b, $f8
    ld l, b
    db $fc
    ld l, b
    nop
    ld l, c
    nop
    db $eb
    nop
    ld [$f400], sp
    nop
    ld [$fc00], sp
    nop
    ld [$0000], sp
    nop
    nop
    or b
    rst $38
    call z, Call_000_0708
    inc bc
    inc bc
    dec b
    ld b, a
    ld b, b

Jump_012_6912:
    ld a, b
    dec b
    jr z, jr_012_6949

    dec b
    jr z, jr_012_6922

    dec b
    jp z, Jump_012_6975

    dec b
    ret z

    or a
    jr z, jr_012_6933

jr_012_6922:
    ld l, c
    push hl
    call $6a2e
    pop hl
    ld c, l
    ld l, c
    push hl
    call Call_012_6a5b
    pop hl
    ld c, l
    ld b, $00
    ret


jr_012_6933:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $6b7b
    jp Jump_000_01dd


jr_012_6949:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_6975

    ld de, $6b63
    call Call_000_015f

Jump_012_6956:
    call Call_012_699b
    call Call_012_69ac
    call Call_012_41f8
    ld de, $6908
    call Call_012_419e
    call Call_012_41e6
    call Call_012_6978
    jr nc, jr_012_6975

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

Jump_012_6975:
jr_012_6975:
    jp Jump_012_42f5


Call_012_6978:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    ld de, $68d4
    call Call_000_0171
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_012_698f

    inc de
    inc de
    inc de
    inc de

jr_012_698f:
    push de
    call Call_012_4883
    pop de
    ret c

    inc de
    inc de
    call Call_012_4883
    ret


Call_012_699b:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $3c
    jr z, jr_012_69a6

    inc [hl]
    ret


jr_012_69a6:
    xor a
    ld [hl], a
    call Call_012_42dd
    ret


Call_012_69ac:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $1e
    jr z, jr_012_69b8

    inc [hl]
    jr jr_012_69c2

jr_012_69b8:
    ld [hl], $00
    call Call_012_6a15
    cp $02
    call z, Call_012_4196

jr_012_69c2:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    ld de, $68f2
    call Call_000_0171
    push de
    call Call_012_4883
    pop de
    jr nc, jr_012_69d8

    ld d, $01
    jr jr_012_69e1

jr_012_69d8:
    inc de
    inc de
    call Call_012_4883
    jr nc, jr_012_69f0

    ld d, $ff

jr_012_69e1:
    call Call_012_4873
    call Call_012_4196
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    call Call_012_6a15

jr_012_69f0:
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_6a08

    dec a
    jr z, jr_012_6a08

    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add $f8
    ld [hl+], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ret


jr_012_6a08:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ret


Call_012_6a15:
    ld a, $2e
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $04
    ret nz

    ld [hl], $00
    ret


    adc b
    ld l, d
    ld b, a
    dec b
    nop
    sbc b
    ld c, l
    inc b
    ld [bc], a
    ld b, c
    ld [bc], a
    ld [de], a
    add $11
    inc b
    ld l, c
    ld a, $21
    ld [$cc00], a
    ld a, $6a
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $0c
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $01
    inc l
    ld [hl], $00
    call Call_012_4196
    call Call_012_42dd
    jp Jump_000_015c


Call_012_6a5b:
    ld de, $6904
    ld a, $21
    ld [$cc00], a
    ld a, $6a
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $0c
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $01
    inc l
    ld [hl], $01
    call Call_012_4196
    call Call_012_42dd
    jp Jump_000_015c


    dec b
    jr z, jr_012_6aa0

    dec b
    jp nz, Jump_012_6975

    ld l, c
    push hl
    call Call_012_6ac7
    pop hl
    ld c, l
    ld l, c
    push hl
    call Call_012_6af4
    pop hl
    ld c, l
    ld b, $00
    ret


jr_012_6aa0:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_6975

    ld de, $6b6b
    call Call_000_015f
    call Call_012_6b45
    or a
    jp z, Jump_012_6956

    call Call_012_6b53
    jp Jump_012_6975


    ld hl, $476b
    dec b
    nop
    sbc b
    ld c, l
    ld [$0101], sp
    ld bc, $c312

Call_012_6ac7:
    ld de, $6904
    ld a, $ba
    ld [$cc00], a
    ld a, $6a
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $08
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $02
    inc l
    ld [hl], $00
    call Call_012_4196
    call Call_012_42dd
    jp Jump_000_015c


Call_012_6af4:
    ld de, $6904
    ld a, $ba
    ld [$cc00], a
    ld a, $6a
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $08
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $02
    inc l
    ld [hl], $01
    call Call_012_4196
    call Call_012_42dd
    jp Jump_000_015c


    dec b
    jr z, jr_012_6b2b

    dec b
    jp nz, Jump_012_6975

    ld b, $00
    ret


jr_012_6b2b:
    ld a, [$deaf]
    or a
    jp nz, Jump_012_6975

    ld de, $6b73
    call Call_000_015f
    call Call_012_6b45
    or a
    jp z, Jump_012_6956

    call Call_012_6b53
    jp Jump_012_6975


Call_012_6b45:
    call Call_000_01e6

jr_012_6b48:
    ret nz

    ret nc

    push af
    ld a, $19
    add c
    ld l, a
    res 0, [hl]
    pop af
    ret


Call_012_6b53:
    ld a, $30
    add c
    ld l, a
    ld d, $01
    ld a, [hl]
    or a
    jr nz, jr_012_6b5f

    ld d, $ff

jr_012_6b5f:
    call Call_012_487b
    ret


    ld a, e
    ld l, e
    ld b, $00
    ld bc, $0302
    rst $38
    ld a, e
    ld l, e
    ld b, $04
    dec b
    ld b, $07
    rst $38
    ld a, e
    ld l, e
    ld b, $08
    add hl, bc
    ld a, [bc]
    dec bc
    rst $38
    sub e
    ld l, e
    ret z

    ld l, e
    ld sp, hl
    ld l, e
    ld a, [hl+]
    ld l, h
    ld e, e
    ld l, h
    ld a, b
    ld l, h
    sub l
    ld l, h
    or d
    ld l, h
    rst $08
    ld l, h
    ldh [$ff6c], a
    pop af
    ld l, h
    ld [bc], a
    ld l, l
    db $f4
    dec bc
    db $eb
    ld [$f4eb], sp
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
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    rlca
    add hl, bc
    jr nc, jr_012_6b48

    db $f4
    dec bc
    db $eb
    ld [$f4eb], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$100c], sp
    ld [$0df0], sp
    stop
    ld [$1004], sp
    nop
    ld [$100e], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    ld [$0ff4], sp
    stop
    ld [$1010], sp
    add b
    db $f4
    dec bc
    db $eb
    ld [$f4eb], sp
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
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    ld [$0bf4], sp
    stop
    rlca
    dec bc
    jr nc, @-$7e

    db $f4
    dec bc
    db $eb
    ld [$f4eb], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$11f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1012], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1013], sp
    ld [$10f3], sp
    jr nc, jr_012_6c57

jr_012_6c57:
    ld [$300f], sp
    add b
    ld hl, sp+$07
    db $f4
    ld [$f8f2], sp
    inc d
    stop
    ld [$1015], sp
    ld [$16f8], sp
    stop
    ld [$1017], sp
    ld [$18f8], sp
    stop
    ld [$3018], sp
    add b
    ld hl, sp+$07
    db $f4
    ld [$f8f2], sp
    inc d
    stop
    ld [$101a], sp
    ld [$1bf8], sp
    stop
    ld [$101c], sp
    ld [$1df8], sp
    stop
    ld [$101e], sp
    add b
    ld hl, sp+$07
    db $f4
    ld [$f8f2], sp
    inc d
    stop
    ld [$1015], sp
    ld [$16f8], sp
    stop
    ld [$1017], sp
    ld [$19f8], sp
    stop
    ld [$3019], sp
    add b
    ld hl, sp+$07
    db $f4
    ld [$f8f2], sp
    rra
    stop
    ld [$1015], sp
    ld [$20f8], sp
    stop
    ld [$1021], sp
    ld [$1ef8], sp
    jr nc, jr_012_6ccb

jr_012_6ccb:
    ld [$301d], sp
    add b
    ld a, [$fc05]
    ld [$f8fc], sp
    ld [hl+], a
    stop
    ld [$1023], sp
    ld [$28fc], sp
    db $10
    add b
    ld a, [$fc05]
    ld [$f8fc], sp
    inc h
    stop
    ld [$1025], sp
    ld [$29fc], sp
    db $10
    add b
    ld a, [$fc05]
    ld [$f8fc], sp
    ld [hl+], a
    stop
    ld [$1023], sp
    ld [$2afc], sp
    db $10
    add b
    ld a, [$fc05]
    ld [$f8fc], sp
    ld h, $10
    nop
    ld [$1027], sp
    ld [$2bfc], sp
    db $10
    add b
    add b
    ei
    cp $02
    inc b
    ld [$fef0], sp
    db $10
    cp $cc
    ld [$0407], sp
    inc b
    dec b
    ld b, a
    nop

Jump_012_6d25:
    ld a, b
    dec b
    jr z, jr_012_6d51

    dec b
    jr z, jr_012_6d35

    dec b
    jp z, Jump_012_6d8c

    dec b
    ret z

    or a
    jr z, jr_012_6d38

jr_012_6d35:
    ld b, $00
    ret


jr_012_6d38:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $6eca
    jp Jump_000_01dd


jr_012_6d51:
    ld a, [$deaf]
    or a
    jr nz, jr_012_6d8c

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_6d8f

    dec a
    jr z, jr_012_6ddb

    dec a
    jp z, Jump_012_6e06

    ld de, $6eae
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_6d7a

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01

jr_012_6d7a:
    call Call_012_6e36
    jr nz, jr_012_6d86

    call Call_012_4540
    cp $34
    jr nc, jr_012_6d89

jr_012_6d86:
    call Call_012_6e4a

Jump_012_6d89:
jr_012_6d89:
    call Call_012_42dd

Jump_012_6d8c:
jr_012_6d8c:
    jp Jump_012_42f5


jr_012_6d8f:
    ld de, $6eb4
    call Call_012_458b
    jr nc, jr_012_6db6

Jump_012_6d97:
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    add $01
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    inc l
    ld a, [hl]
    or a
    jr z, jr_012_6d89

    push hl
    call Call_012_6e4a
    pop hl
    ld [hl], $00
    jr jr_012_6d89

jr_012_6db6:
    call Call_012_6e36
    jr nz, jr_012_6dc2

    call Call_012_4540
    cp $34
    jr nc, jr_012_6dc8

jr_012_6dc2:
    ld a, $2d
    add c
    ld l, a
    ld [hl], $01

jr_012_6dc8:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0c
    jr nz, jr_012_6d8c

    ld l, c
    push hl
    call $6e76
    pop hl
    ld c, l
    jr jr_012_6d8c

jr_012_6ddb:
    ld de, $6eba
    call Call_000_015f
    call Call_000_01e6
    jr z, jr_012_6df6

    call Call_012_6e5d
    jr z, jr_012_6d89

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    jr jr_012_6d89

jr_012_6df6:
    call Call_000_015c
    call Call_012_6e5d
    jr nz, jr_012_6e13

    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    jr jr_012_6d89

Jump_012_6e06:
    ld de, $6ebf
    call Call_012_458b
    jr c, jr_012_6e1c

    call Call_012_6e5d
    jr z, jr_012_6dc8

jr_012_6e13:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    jp Jump_012_6d8c


jr_012_6e1c:
    call Call_012_6e5d
    jp nz, Jump_012_6d97

    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    add $01
    ld l, a
    ld [hl], $02
    inc l
    ld [hl], $00
    jp Jump_012_6d89


Call_012_6e36:
    call Call_012_4540
    ld a, [$d703]
    jr c, jr_012_6e43

    or a
    jr z, jr_012_6e45

    xor a
    ret


jr_012_6e43:
    or a
    ret z

jr_012_6e45:
    ld a, [$d783]
    or a
    ret


Call_012_6e4a:
    ld de, $6d13
    call Call_012_41c4
    call Call_012_418e
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    ret


Call_012_6e5d:
    call Call_012_4224
    ld de, $6d15
    call Call_012_4294
    bit 1, a
    ret


    sub e
    ld l, [hl]
    ld b, a
    dec b
    nop
    jp z, Jump_000_066e

    ld bc, $0200
    ld [de], a
    jp nz, $1911

    ld l, l
    ld a, $69
    ld [$cc00], a
    ld a, $6e
    ld [$cc01], a
    call Call_012_43a2
    ret c

    call Call_000_024f
    ld de, $0220
    call Call_012_45a5
    jp Jump_000_015c


    dec b
    jr z, jr_012_6e9c

    dec b
    jr nz, jr_012_6eab

    ld b, $00
    ret


jr_012_6e9c:
    ld a, [$deaf]
    or a
    jr nz, jr_012_6eab

    ld de, $6ec5
    call Call_000_015f
    call Call_012_420a

jr_012_6eab:
    jp Jump_012_42f5


    jp z, Jump_000_106e

    inc b
    dec b
    rst $38
    jp z, $0c6e

    nop
    ld bc, $caff
    ld l, [hl]
    inc c
    ld [bc], a
    rst $38
    jp z, $0c6e

    ld [bc], a
    inc bc
    rst $38
    jp z, $f06e

    ld b, $ff
    ret c

    ld l, [hl]
    add hl, bc
    ld l, a
    ld [hl], $6f
    ld l, e
    ld l, a
    sbc h
    ld l, a
    push bc
    ld l, a
    xor $6f
    ld a, [$f109]
    ld [$f6ea], sp
    inc c
    stop
    ld [$100d], sp
    ld [$0ef8], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$14f0], sp
    stop
    ld [$1015], sp
    nop
    ld [$1016], sp
    add b
    rst $30
    ld b, $f1
    ld [$f3f2], sp
    rla
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    ld [$1bf0], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    ld [$1ef0], sp
    stop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld a, [$1ae8]
    db $10
    add b
    ld a, [$f109]
    ld [$f6ea], sp
    inc c
    stop
    ld [$100d], sp
    ld [$0ef8], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$21f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$22f0], sp
    stop
    ld [$1023], sp
    nop
    ld [$1024], sp
    ld [$25ff], sp
    db $10
    add b
    rst $30
    ld b, $f1
    ld [$f3f2], sp
    rla
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    ld [$1bf0], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    ld [$26f0], sp
    stop
    ld [$1027], sp
    nop
    ld [$1028], sp
    ld a, [$1ae8]
    db $10
    ld c, $09
    dec h
    db $10
    add b
    ld hl, sp+$07
    ldh a, [c]
    ld [$f4f2], sp
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
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    ld hl, sp+$07
    di
    ld [$f4f3], sp
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
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    db $fd
    inc bc
    ei
    ld bc, $f8fa
    add hl, hl
    stop
    ld [$102a], sp
    add b
    add b
    rst $38
    add b
    db $fd
    nop
    cp $fa
    ldh a, [c]
    ld b, $f2
    di
    ld c, $f2
    ld [$08ca], sp
    rlca
    add hl, bc
    inc bc
    dec b
    ld b, a
    nop

Jump_012_7011:
    ld a, b
    dec b
    jr z, jr_012_7043

    dec b
    jr z, jr_012_7021

    dec b
    jp z, Jump_012_7094

    dec b
    ret z

    or a
    jr z, jr_012_7029

jr_012_7021:
    ld a, $00
    ld [$ccc5], a
    ld b, $00
    ret


jr_012_7029:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_012_42dd
    ld de, $72e6
    jp Jump_000_01dd


jr_012_7043:
    ld a, [$deaf]
    or a
    jr nz, jr_012_7094

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_70a3

    dec a
    jp z, Jump_012_70eb

    ld de, $7284
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_012_7063

    ld de, $72cc

jr_012_7063:
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_7094

    ld a, $2e
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    call Call_012_42dd
    call Call_012_4540
    cp $30
    jr nc, jr_012_7088

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_012_4196
    jr jr_012_7094

jr_012_7088:
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e

Jump_012_7094:
jr_012_7094:
    call Call_012_42f5
    ld a, b
    or a
    ret nz

    ld a, [$ccc5]
    set 7, a
    ld [$ccc5], a
    ret


jr_012_70a3:
    ld de, $7289
    call Call_000_015f
    call Call_012_7186
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $7005
    call Call_012_46b1
    jr nc, jr_012_70ca

    ld de, $6ffb
    call Call_012_419e
    ld de, $7005
    call Call_012_4294
    bit 0, a
    jr z, jr_012_70d2

jr_012_70ca:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_012_70d2:
    call Call_012_4540
    cp $30
    jr c, jr_012_7094

    call Call_000_015c
    call Call_012_42dd
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $1e
    jr jr_012_7094

Jump_012_70eb:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_7111

    dec a
    jr z, jr_012_713d

    dec a
    jr z, jr_012_714b

    dec a
    jr z, jr_012_7156

    ld de, $7284
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_012_7094

jr_012_7107:
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    jr jr_012_7094

jr_012_7111:
    ld de, $7291
    call Call_012_458b
    jr c, jr_012_712b

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_012_7094

    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    jp Jump_012_7094


jr_012_712b:
    call Call_012_42dd
    ld l, c
    push hl
    call Call_012_71a4
    pop hl
    ld c, l
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    jr jr_012_7107

jr_012_713d:
    ld de, $7298
    call Call_000_015f
    call Call_000_01e6
    jp nz, Jump_012_7094

    jr jr_012_7107

jr_012_714b:
    ld de, $729d
    call Call_012_458b
    jp nc, Jump_012_7094

    jr jr_012_7107

jr_012_7156:
    ld de, $72c4
    call Call_012_458b
    jp c, Jump_012_7172

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jp z, Jump_012_7094

    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    jp Jump_012_7094


Jump_012_7172:
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $01
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    jp Jump_012_7094


Call_012_7186:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $30
    jr z, jr_012_7191

    inc [hl]
    ret


jr_012_7191:
    xor a
    ld [hl], a
    call Call_012_42dd
    ret


    bit 6, c
    ld b, a
    dec b
    nop
    and $72
    add hl, bc
    inc b
    ld b, d
    ld [bc], a
    ld [de], a
    pop bc

Call_012_71a4:
    ld de, $7001
    ld a, $97
    ld [$cc00], a
    ld a, $71
    ld [$cc01], a
    call Call_012_43a2
    ret c

    ld a, [$ccc5]
    inc a
    ld [$ccc5], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3e
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_000_015c


    dec b
    jr z, jr_012_71d4

    dec b
    jr nz, jr_012_7219

    ld b, $00
    ret


jr_012_71d4:
    ld a, [$deaf]
    or a
    jr nz, jr_012_7219

    ld a, [$ccc5]
    or a
    jr z, jr_012_7227

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_012_722f

    dec a
    jr z, jr_012_7268

    ld de, $72df
    call Call_012_458b
    call Call_000_01e6
    jr nz, jr_012_7206

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld d, $01
    call Call_012_4873
    call Call_012_727d

jr_012_7206:
    ld a, [$ccc5]
    bit 7, a
    res 7, a
    ld [$ccc5], a
    jr z, jr_012_7219

    dec a
    ld [$ccc5], a
    ld b, $00
    ret


jr_012_7219:
    call Call_012_42f5
    ld a, b
    or a
    ret nz

    ld a, [$ccc5]
    dec a
    ld [$ccc5], a
    ret


jr_012_7227:
    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    jr jr_012_7219

jr_012_722f:
    ld de, $72da
    call Call_000_015f
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $51
    jr nz, jr_012_7251

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld d, $01
    call Call_012_4873
    ld de, $6fff
    call Call_012_419e
    jr jr_012_7206

jr_012_7251:
    cp $1b
    jr z, jr_012_725b

    cp $36
    jr z, jr_012_725b

    jr jr_012_7260

jr_012_725b:
    call Call_012_727d
    jr jr_012_7206

jr_012_7260:
    call Call_012_4224
    call Call_012_41f8
    jr jr_012_7206

jr_012_7268:
    ld de, $72da
    call Call_000_015f
    call Call_012_41e6
    ld a, [$ccc5]
    bit 7, a
    res 7, a
    ld [$ccc5], a
    jr jr_012_7219

Call_012_727d:
    ld de, $6ffd
    call Call_012_41c4
    ret


    and $72
    rst $38
    nop
    rst $38
    and $72
    ld b, $00
    ld bc, $0302
    rst $38
    and $72
    ld b, $00
    inc b
    dec b
    rst $38
    and $72
    rst $38
    dec b
    rst $38
    and $72
    ld [bc], a
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rst $38
    and $72
    inc b
    dec b
    dec b
    rlca
    ld [$e6ff], sp
    ld [hl], d
    rst $38
    ld [$e6ff], sp
    ld [hl], d
    ld b, $08
    rlca
    ld b, $04
    nop
    rst $38
    and $72
    rst $38
    dec bc
    rst $38
    and $72
    ld b, $09
    ld a, [bc]
    dec bc
    rst $38
    cp $72
    daa
    ld [hl], e
    ld d, b
    ld [hl], e
    ld a, c
    ld [hl], e
    and d
    ld [hl], e
    rst $08
    ld [hl], e
    db $fc
    ld [hl], e
    add hl, hl
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    add e
    ld [hl], h
    adc h
    ld [hl], h
    sub l
    ld [hl], h
    di
    inc b
    di
    ld [$f3f3], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$05f1], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    inc b
    ldh a, [c]
    ld [$f3f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$09f1], sp
    stop
    ld [$100a], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    inc b
    di
    ld [$f3f3], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$0bf1], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    inc b
    ldh a, [c]
    ld [$f3f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$0cf1], sp
    stop
    ld [$100d], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    inc b
    di
    ld [$f3eb], sp
    ld c, $10
    ld [$0f00], sp
    stop
    ld [$1010], sp
    ld [$11f8], sp
    stop
    ld [$1012], sp
    nop
    ld [$1004], sp
    ld [$05f1], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    inc b
    ldh a, [c]
    ld [$f7eb], sp
    inc de
    db $10
    ld [$14fc], sp
    stop
    ld [$1015], sp
    ld [$16f8], sp
    stop
    ld [$1012], sp
    nop
    ld [$1004], sp
    ld [$05f1], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    di
    inc b
    di
    ld [$f7eb], sp
    ld c, $10
    ld [$17fc], sp
    stop
    ld [$1018], sp
    ld [$19f8], sp
    stop
    ld [$1012], sp
    nop
    ld [$1004], sp
    ld [$05f1], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    pop af
    add hl, bc
    db $f4
    ld [$ebf2], sp
    ld a, [de]
    stop
    ld [$101b], sp
    nop
    ld [$101c], sp
    nop
    ld [$101d], sp
    ld [$1eee], sp
    stop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$21f0], sp
    stop
    ld [$1022], sp
    nop
    ld [$1023], sp
    add b
    rst $28
    inc bc
    rst $28
    ld [$f3ea], sp
    inc h
    stop
    ld [$1025], sp
    ld [$26f8], sp
    stop
    ld [$1027], sp
    ld [$28f0], sp
    stop
    ld [$1029], sp
    nop
    ld [$102a], sp
    ld [$2bf2], sp
    stop
    ld [$102c], sp
    nop
    ld [$102d], sp
    add b
    cp $01
    db $fd
    nop
    ld sp, hl
    db $fc
    jr nc, jr_012_749b

    add b
    db $fd
    ld [bc], a
    ld a, [$f900]
    db $fc
    cpl
    db $10
    add b
    db $fc
    inc bc
    ld sp, hl
    nop
    ld sp, hl
    db $fc

jr_012_749b:
    ld l, $10
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
