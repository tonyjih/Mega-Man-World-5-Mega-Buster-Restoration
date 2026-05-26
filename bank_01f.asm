; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

Call_01f_4000:
    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_01f_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01f_403f

    ld b, [hl]
    db $20, $ee
    ld c, b
    sub d
    ld d, b
    ld [hl], e
    ld h, d
    jp Jump_01f_710c


    jp Jump_01f_716f


Jump_01f_401c:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_01f_4030:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_01f_4043

    ld hl, $d775
    ld a, [hl]

jr_01f_403f:
    or a
    jr z, jr_01f_4049

    dec [hl]

jr_01f_4043:
    ld a, [$d773]
    ld d, a
    jr jr_01f_407f

jr_01f_4049:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01f_404f:
    ld a, [hl+]
    or a
    jr nz, jr_01f_405a

    ld d, $00
    call Call_01f_407f
    scf
    ret


jr_01f_405a:
    cp $fe
    jr nz, jr_01f_4071

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    call Call_01f_41bb
    pop hl
    ld a, l
    ld [$d776], a

jr_01f_406b:
    ld a, h
    ld [$d777], a
    jr jr_01f_404f

jr_01f_4071:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_01f_407f:
jr_01f_407f:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Call_01f_408c:
    ld a, e
    ldh [$ffa4], a
    ld a, d
    ldh [$ffa6], a
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [$cc46], a
    ld a, [hl+]
    ld [$cc47], a
    ld a, [hl+]
    ld [$c3e0], a
    ld a, [hl+]
    ld [$c3e2], a
    ld a, [hl+]
    ld [$d3ea], a
    ld a, [hl+]
    ld [$cc4a], a
    pop de
    jp Jump_000_021f


Call_01f_40b5:
    ld hl, $d711
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    jr nz, jr_01f_40c9

    ld a, e
    cp $c0
    jr nc, jr_01f_40d5

    jr jr_01f_40d1

jr_01f_40c9:
    inc a
    jr nz, jr_01f_40d5

    ld a, e
    cp $e0
    jr c, jr_01f_40d5

jr_01f_40d1:
    ldh [$ff9b], a
    xor a
    ret


jr_01f_40d5:
    scf
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


Jump_01f_40e6:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_01f_40ea:
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
    jr nz, jr_01f_40ea

    ret


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_01f_410f:
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
    jr nz, jr_01f_410f

    ret


Call_01f_4124:
    ld d, a

jr_01f_4125:
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
    jr nz, jr_01f_4125

    ret


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_01f_4146:
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
    jr jr_01f_4146

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


Call_01f_4192:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_01f_419b:
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
    jr nc, jr_01f_41af

    add hl, bc
    jr jr_01f_41b0

jr_01f_41af:
    inc de

jr_01f_41b0:
    pop af
    dec a
    jr nz, jr_01f_419b

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


Call_01f_41bb:
    push de
    ret


    push hl
    ld b, $00
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ffa4]
    sub e
    jr nc, jr_01f_41cc

    cpl
    inc a
    set 0, b

jr_01f_41cc:
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ldh a, [$ffa6]
    sub d
    jr nc, jr_01f_41d9

    cpl
    inc a
    set 1, b

jr_01f_41d9:
    ld d, a
    cp e
    jr nc, jr_01f_41e1

    ld d, e
    ld e, a
    set 2, b

jr_01f_41e1:
    ld a, b
    ldh [$ffa9], a
    ld h, e
    ld l, $00
    ld e, d
    ld d, $00
    call Call_01f_4192
    ld e, l
    ld d, h
    ld bc, $0100
    ldh a, [$ffa9]
    bit 2, a
    jr z, jr_01f_41fd

    ld c, l
    ld b, h
    ld de, $0100

jr_01f_41fd:
    pop hl
    ldh a, [$ffa9]
    bit 0, a
    jr z, jr_01f_420e

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_01f_420e

    inc d

jr_01f_420e:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ldh a, [$ffa9]
    bit 1, a
    jr z, jr_01f_4222

    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_01f_4222

    inc b

jr_01f_4222:
    ld [hl], c
    inc hl
    ld [hl], b
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
    jr z, jr_01f_423f

    dec [hl]
    xor a
    sub $01
    ret


jr_01f_423f:
    inc l

jr_01f_4240:
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
    jr nz, jr_01f_4255

    ldh [$ff8c], a
    ld l, b
    ld [hl], $01
    xor a
    ret


jr_01f_4255:
    cp $ff
    jr nz, jr_01f_4265

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_01f_4240

jr_01f_4265:
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


    ld a, $01
    ld [$de29], a
    xor a
    ld [$d775], a
    ld [$d776], a
    ld [$d774], a
    ld de, $00c0
    ld a, $20
    ld [$d771], a
    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_01f_429c

    dec [hl]
    ld a, [$d773]
    ld d, a
    jr jr_01f_42b9

jr_01f_429c:
    inc hl
    ld a, [hl]
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    or a
    jr nz, jr_01f_42b2

    ld d, $00
    call Call_01f_42b9
    scf
    ret


jr_01f_42b2:
    inc [hl]
    dec hl
    dec a
    ld [hl], a
    inc de
    ld a, [de]
    ld d, a

Call_01f_42b9:
jr_01f_42b9:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Call_01f_42c6:
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
    inc c
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


jr_01f_42df:
    ld a, [$cca8]
    and $07
    jr nz, jr_01f_42df

    ret


Call_01f_42e7:
    ld a, [$d7d1]
    add e
    ld e, a
    ld a, [$d7d2]
    add d
    ld d, a
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


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    jp Jump_000_0246


    call Call_01f_43fe
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
    call Call_01f_44b7
    pop de
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_01f_4357

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
    jr nz, jr_01f_434d

    inc a

jr_01f_434d:
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


Jump_01f_4357:
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


    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01f_4394

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_01f_438a

    inc a

jr_01f_438a:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_01f_4394:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


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
    jr jr_01f_43b2

    ld a, $1f
    add c
    ld l, a

jr_01f_43b2:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_01f_43bc

    inc d

jr_01f_43bc:
    ld [hl], d
    dec l
    ld [hl], e
    ret


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


Call_01f_43fe:
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
    jr nz, jr_01f_4419

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_01f_4419

    ld de, $0350

jr_01f_4419:
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
    jr nz, jr_01f_4453

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_01f_443e

    xor a

jr_01f_443e:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_01f_4453

    ld a, [de]
    add b
    cp $d0
    jr c, jr_01f_444c

    xor a

jr_01f_444c:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_01f_4453:
    or a
    ret


    push de
    call Call_01f_43fe
    pop de
    call Call_01f_446e
    ret z

    bit 0, a
    jr z, jr_01f_4466

    ld a, $1d
    jr jr_01f_4468

jr_01f_4466:
    ld a, $1f

jr_01f_4468:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01f_446e:
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


Call_01f_44b7:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_01f_44c8

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_01f_44c9

jr_01f_44c8:
    inc d

jr_01f_44c9:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_01f_44df

    cp $90
    jr nc, jr_01f_44f4

jr_01f_44df:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_01f_44ec

    cp $c0
    jr nc, jr_01f_44f4

jr_01f_44ec:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_01f_44f4:
    xor a
    ld b, a
    ret


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
    jr nc, jr_01f_45a2

    cpl
    inc a
    scf

jr_01f_45a2:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_01f_4192
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


    xor a
    ld [$ccc2], a
    ld [$dd01], a
    ld [$dd00], a
    ld a, $ff
    ld [$d74a], a
    ld [$de34], a
    ret


    ld a, [$dd00]
    or a
    ret z

    dec a
    jr z, jr_01f_462a

    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    sla a
    sla a
    sla a
    ld [$dd01], a
    ret


jr_01f_462a:
    ld a, [$dd01]
    cp $98
    jr nc, jr_01f_463c

    add $02
    ld [$dd01], a
    and $07
    ret nz

    rst $08
    rla
    ret


jr_01f_463c:
    ld a, $02
    ld [$dd00], a
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ret


    ret


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


Call_01f_4663:
    push de
    ld a, [hl]
    ld [$cc66], a
    ld de, $cc53
    call Call_000_0180
    ld a, $01
    ld [$cc52], a
    ld a, $06
    call Call_000_020a
    ld [$cc63], a
    pop de
    ld hl, $cc67
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [$de2c], a
    ld a, e
    ld [$cc6b], a
    ld a, $40
    ld [$cc6c], a
    ld a, $1b
    ld [$cc6f], a
    ld a, $01
    ld [$cc6d], a
    ret


    ld a, [$d81c]
    or a
    ret nz

    ld a, [$deaf]
    or a
    and $fb
    ret nz

    ld a, [$cc67]
    or a
    ret z

    call Call_01f_4746
    ld a, [$cc67]
    ld b, a
    ld hl, $cc68
    ld a, [$cc6c]
    ld e, a
    ld d, $00
    ld a, [hl+]
    or a
    jr z, jr_01f_46c7

    ld a, e
    cpl
    inc a
    ld e, a
    dec d

jr_01f_46c7:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld e, a
    adc d
    ld [hl], a
    cp b
    jr c, jr_01f_46db

    ld [hl], e
    ld hl, $cc68
    ld a, [hl]
    xor $01
    and $01
    ld [hl], a

jr_01f_46db:
    call Call_01f_472e
    call Call_01f_46e2
    ret


Call_01f_46e2:
    ld a, [$d74b]
    cp $01
    ret nz

    call Call_01f_46ff
    jr nc, jr_01f_46f2

    ld hl, $d725
    dec [hl]
    ret


jr_01f_46f2:
    ld hl, $d725
    inc [hl]
    call Call_01f_46ff
    ret nc

    ld hl, $d725
    dec [hl]
    ret


Call_01f_46ff:
    ld a, [$d163]
    or a
    jr nz, jr_01f_4713

    ld e, $fa
    ld d, $0c
    call Call_01f_4721
    ret c

    ld e, $06
    ld d, $0c
    jr jr_01f_4721

jr_01f_4713:
    ld e, $f8
    ld d, $0c
    call Call_01f_4721
    ret c

    ld e, $08
    ld d, $0c
    jr jr_01f_4721

Call_01f_4721:
jr_01f_4721:
    ld a, [$d722]
    add e
    ld e, a
    ld a, [$d725]
    add d
    ld d, a
    jp Jump_000_0165


Call_01f_472e:
    ld a, $08
    ld [$de2c], a
    ld a, [$cc6a]
    ld b, a
    ld a, [$d7d2]
    sub b
    ld [$d8ac], a
    ld a, [$cc6b]
    dec a
    ld [$d8ad], a
    ret


Call_01f_4746:
    ld hl, $cc6d
    bit 0, [hl]
    jr nz, jr_01f_4762

    inc hl
    ld a, [$d7d1]
    ld b, [hl]
    ld [hl], a
    xor b
    and $04
    ret z

    ld e, $f8
    call Call_01f_4778
    ld e, $a8
    call Call_01f_4778
    ret


jr_01f_4762:
    ld [hl], $02
    ld a, [$d7d1]
    ld [$cc6e], a
    ld e, $f8

jr_01f_476c:
    call Call_01f_4778
    ld a, e
    add $08
    ld e, a
    cp $a8
    jr c, jr_01f_476c

    ret


Call_01f_4778:
    ld a, [$cc67]
    add $07
    srl a
    srl a
    srl a
    ld c, a
    ld d, $00
    push de
    call Call_01f_42e7
    call Call_01f_47a0
    pop de
    ld b, a

jr_01f_478f:
    ld a, d
    sub $08
    ld d, a
    push de
    call Call_01f_42e7
    ld a, b
    call Call_000_0189
    pop de
    dec c
    jr nz, jr_01f_478f

    ret


Call_01f_47a0:
    ldh a, [rLCDC]
    and $80
    jr z, jr_01f_47b3

    di

jr_01f_47a7:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_47a7

jr_01f_47ad:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_47ad

jr_01f_47b3:
    ld a, [hl]
    ei
    ret


Call_01f_47b6:
Jump_01f_47b6:
    ld hl, $cc00
    call Call_01f_47c3
    ld hl, $c3e5
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_01f_47c3:
    push hl
    call Call_01f_47f2
    pop hl
    ld c, l
    jp Jump_01f_481b


Call_01f_47cc:
    ld a, [$de8f]
    ld b, a

jr_01f_47d0:
    ld a, [hl+]
    or a
    jr z, jr_01f_47d9

    cp b
    jr nz, jr_01f_47d0

    ld a, $01

jr_01f_47d9:
    ld [$d161], a
    ret


Call_01f_47dd:
    ld a, [$d161]
    or a
    ret z

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    or c
    jr nz, jr_01f_480a

    push de
    call Call_000_0219
    pop de

Call_01f_47f2:
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

jr_01f_480a:
    ld a, [$deaf]
    and $ff
    jp nz, Jump_01f_4870

    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_01f_4870

Jump_01f_481b:
jr_01f_481b:
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
    jr z, jr_01f_4872

    cp $ff
    jr nz, jr_01f_4843

    ld [hl], $00
    jr jr_01f_481b

jr_01f_4843:
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
    jr z, jr_01f_481b

Jump_01f_4870:
jr_01f_4870:
    xor a
    ret


jr_01f_4872:
    scf
    ret


Call_01f_4874:
    ld a, e
    ld [$de75], a
    ld a, d
    ld [$de76], a
    ld a, $a8
    ld [$de73], a
    ld a, $48
    ld [$de74], a
    ret


Call_01f_4887:
    ld a, [$de74]
    or a
    jr z, jr_01f_48a4

    xor a
    ldh [$ffab], a
    ld a, [$d70d]
    ldh [$ff8a], a
    ld a, [$d70e]
    ldh [$ff8b], a
    ld a, [$d725]
    ldh [$ff8c], a
    call Call_01f_48a8
    ldh a, [$ffab]

jr_01f_48a4:
    ld [$d70b], a
    ret


Call_01f_48a8:
    ldh a, [$ff8c]
    ld b, a
    cp $f0
    jr c, jr_01f_48b1

    ld b, $00

jr_01f_48b1:
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    bit 7, d
    jr z, jr_01f_48be

    ld d, $00
    ld e, d

jr_01f_48be:
    ld hl, $de75
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01f_48c4:
    ld a, [hl+]
    ld c, a
    and [hl]
    inc a
    ret z

    ld a, e
    sub c
    ld a, d
    sbc [hl]
    jr c, jr_01f_48e7

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_01f_48e9

    inc hl
    ld a, b
    cp [hl]
    jr c, jr_01f_48ea

    inc hl
    cp [hl]
    jr nc, jr_01f_48eb

    ldh a, [$ffab]
    set 7, a
    ldh [$ffab], a
    ret


jr_01f_48e7:
    inc hl
    inc hl

jr_01f_48e9:
    inc hl

jr_01f_48ea:
    inc hl

jr_01f_48eb:
    inc hl
    jr jr_01f_48c4

    ldh a, [c]
    ld c, b
    ld hl, sp+$48
    ld sp, hl
    ld c, b
    and c
    ld d, b
    cp l
    ld d, b
    rst $38
    nop
    xor a
    ld c, h
    inc b
    ld c, [hl]
    ld [hl], c
    ld c, c
    add c
    ld c, c
    ld b, a
    nop
    ld d, e
    rlca
    ld c, c
    ld bc, $4978
    add l
    ld c, c
    nop
    nop
    ld [hl], b
    dec e
    ld bc, $4921
    nop
    inc c
    dec bc
    ld d, b
    nop
    inc c
    db $10
    ld d, b
    nop
    dec bc
    inc e
    ld b, b
    nop
    nop
    ld [bc], a
    ld [hl], l
    ld c, c
    ld [hl], a
    ld c, d
    ldh [rSB], a
    ld [hl], b
    add hl, bc
    ld bc, $4933
    nop
    dec c
    add hl, bc
    stop
    nop
    inc bc
    ld a, b
    ld c, c
    ret


    ld c, d
    add b
    ld [bc], a
    ld [hl], b
    dec e
    ld bc, $494d
    nop
    inc c
    add hl, bc
    ld b, b
    nop
    inc c
    inc d
    ld d, b
    nop
    dec bc
    inc e
    ld d, b
    nop
    nop
    inc b
    ld [hl], l
    ld c, c
    cp e
    ld c, e
    ld h, b
    inc b
    ld [hl], b
    add hl, bc
    ld bc, $495f
    nop
    dec c
    add hl, bc
    stop
    nop
    dec b
    ld a, b
    ld c, c
    dec c
    ld c, h
    nop
    dec b
    nop
    nop
    inc c
    dec bc
    ld b, b
    nop
    dec bc
    db $10
    ld b, b
    nop
    nop
    call Call_01f_4e5e
    ret


    call Call_01f_4e59
    call Call_01f_4ea0
    ld a, $60
    ld [$d821], a
    ret


    call Call_01f_4ee0
    ret


    ld e, $08
    ld a, [bc]
    dec bc
    inc hl
    inc hl
    ld c, $0f
    ld d, h
    inc c
    db $10
    inc hl
    rla
    dec c
    inc c
    db $10
    ld de, $2023
    ld hl, $1918
    ld a, [de]
    ld [hl+], a
    ld a, [bc]
    dec bc
    inc hl
    inc hl
    ld c, $0f
    ld d, h
    ld d, h
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $54
    ld d, h
    ld d, h
    jr jr_01f_49cd

    rra
    ld d, h
    ld d, h
    jr jr_01f_49cd

    ld a, [de]
    ld [hl+], a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $54
    ld d, h
    ld d, h
    ld d, h
    dec de
    inc e
    dec e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h

jr_01f_49cd:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    dec de
    inc e
    dec e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    jr z, jr_01f_4a5b

    ld a, [hl+]
    dec hl
    inc h
    dec hl
    inc h
    dec hl
    inc h
    dec hl
    inc h
    jr nc, @+$33

    jr nc, jr_01f_4a70

    jr nc, jr_01f_4a72

    jr nc, jr_01f_4a74

    jr nc, jr_01f_4a76

    jr nc, jr_01f_4a78

    jr nc, @+$33

    jr nc, jr_01f_4a7c

    jr nc, jr_01f_4a7e

    jr nc, jr_01f_4a80

    jr nc, jr_01f_4a82

    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    jr c, jr_01f_4a94

jr_01f_4a5b:
    jr c, jr_01f_4a96

    jr c, jr_01f_4a98

    jr c, jr_01f_4a9a

    jr c, jr_01f_4a9c

    jr c, jr_01f_4a9e

    jr c, jr_01f_4aa0

    jr c, jr_01f_4aa2

    jr c, jr_01f_4aa4

    jr c, jr_01f_4aa6

    jr c, jr_01f_4aa8

    ld a, [hl-]

jr_01f_4a70:
    dec sp
    ld a, [hl-]

jr_01f_4a72:
    dec sp
    ld a, [hl-]

jr_01f_4a74:
    dec sp
    ld a, [hl-]

jr_01f_4a76:
    dec sp
    ld a, [bc]

jr_01f_4a78:
    ld [$5454], sp
    ld d, h

jr_01f_4a7c:
    ld d, h
    ld d, h

jr_01f_4a7e:
    ld d, h
    ld b, d

jr_01f_4a80:
    ld b, e
    ld b, h

jr_01f_4a82:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld c, b
    ld c, c
    ld c, d
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld c, [hl]

jr_01f_4a94:
    ld c, a
    ld d, b

jr_01f_4a96:
    ld d, h
    ld d, h

jr_01f_4a98:
    ld d, h
    ld d, h

jr_01f_4a9a:
    ld d, h
    ld d, h

jr_01f_4a9c:
    ld d, h
    ld d, h

jr_01f_4a9e:
    ld d, h
    ld d, h

jr_01f_4aa0:
    ld d, h
    ld d, h

jr_01f_4aa2:
    ld d, h
    ld d, h

jr_01f_4aa4:
    ld d, h
    ld d, h

jr_01f_4aa6:
    ld d, h
    ld d, h

jr_01f_4aa8:
    ld d, h
    ld d, h
    ld d, h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld e, $08
    ld a, [bc]
    dec bc
    inc hl
    inc hl
    ld c, $0f
    ld d, h
    inc c
    db $10
    inc hl
    rla
    dec c
    inc c
    db $10
    ld de, $2023
    ld hl, $1918
    ld a, [de]
    ld [hl+], a
    ld a, [bc]
    dec bc
    inc hl
    inc hl
    ld c, $0f
    ld d, h
    ld d, h
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $54
    ld d, h
    ld d, h
    jr jr_01f_4b11

    rra
    ld d, h
    ld d, h
    jr jr_01f_4b11

    ld a, [de]
    ld [hl+], a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $54
    ld d, h
    ld d, h
    ld d, h
    dec de
    inc e
    dec e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h

jr_01f_4b11:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    dec de
    inc e
    dec e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    dec h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    jr nc, jr_01f_4bbc

    jr nc, @+$33

    jr nc, jr_01f_4bc0

    jr nc, jr_01f_4bc2

    jr nc, jr_01f_4bc4

    jr nc, jr_01f_4bc6

    jr nc, jr_01f_4bc8

    jr nc, jr_01f_4bca

    jr nc, jr_01f_4bcc

    jr nc, jr_01f_4bce

    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    jr c, jr_01f_4be2

    jr c, jr_01f_4be4

    jr c, jr_01f_4be6

    jr c, jr_01f_4be8

    jr c, jr_01f_4bea

    jr c, jr_01f_4bec

    jr c, jr_01f_4bee

    jr c, jr_01f_4bf0

    jr c, jr_01f_4bf2

    jr c, jr_01f_4bf4

    ld a, [bc]

jr_01f_4bbc:
    ld [$5454], sp
    ld d, h

jr_01f_4bc0:
    ld d, h
    ld d, h

jr_01f_4bc2:
    ld d, h
    ld b, d

jr_01f_4bc4:
    ld b, e
    ld b, h

jr_01f_4bc6:
    ld d, h
    ld d, h

jr_01f_4bc8:
    ld d, h
    ld d, h

jr_01f_4bca:
    ld d, h
    ld d, h

jr_01f_4bcc:
    ld d, h
    ld c, b

jr_01f_4bce:
    ld c, c
    ld c, d
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h

jr_01f_4be2:
    ld d, h
    ld d, h

jr_01f_4be4:
    ld d, h
    ld d, h

jr_01f_4be6:
    ld d, h
    ld d, h

jr_01f_4be8:
    ld d, h
    ld d, h

jr_01f_4bea:
    ld d, h
    ld d, h

jr_01f_4bec:
    ld d, h
    ld d, h

jr_01f_4bee:
    ld d, h
    ld d, h

jr_01f_4bf0:
    ld d, h
    ld d, h

jr_01f_4bf2:
    ld d, h
    ld d, h

jr_01f_4bf4:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc d
    ld [$0b0a], sp
    inc hl
    inc hl
    ld c, $0f
    inc c
    db $10
    ld de, $2023
    ld hl, $1312
    inc d
    dec d
    ld d, $0a
    dec bc
    inc hl
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $54
    ld d, h
    jr jr_01f_4c45

    ld a, [de]
    ld [hl+], a
    ld d, h
    ld d, h
    dec de
    inc e
    dec e
    ld d, h
    ld [de], a
    inc de
    inc d
    ld d, h
    dec de
    inc e
    dec e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h

jr_01f_4c45:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    dec de
    inc e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    jr z, jr_01f_4ca7

    ld a, [hl+]
    dec hl
    inc h
    ld h, $27
    inc l
    dec l
    ld [hl], $37
    jr nc, jr_01f_4cba

    jr nc, @+$33

    jr nc, jr_01f_4cbe

    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld b, b
    ld b, c
    inc [hl]
    dec [hl]
    ld a, $3f
    jr c, jr_01f_4cd6

    jr c, jr_01f_4cd8

    jr c, jr_01f_4cda

    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp

jr_01f_4ca7:
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, l
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101

jr_01f_4cba:
    ld bc, $0d01
    dec c

jr_01f_4cbe:
    ld c, $0e
    ld bc, $0401
    rlca
    dec b
    ld [$0906], sp
    ld bc, $0a01
    ld bc, $010b
    inc c
    ld bc, $0101
    ld bc, $0d01
    dec c

jr_01f_4cd6:
    ld c, $0e

jr_01f_4cd8:
    inc bc
    ld [de], a

jr_01f_4cda:
    inc bc
    inc de
    inc bc
    inc d
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    db $10
    inc e
    ld de, $0302
    inc bc
    rrca
    dec d
    db $10
    ld d, $11
    ld [bc], a
    inc de
    rla
    inc d
    jr jr_01f_4cf8

    inc bc
    inc bc
    add hl, de

jr_01f_4cf8:
    ld [bc], a
    ld [bc], a
    rla
    ld [bc], a
    jr jr_01f_4d1b

    inc bc
    ld e, $19
    rra
    inc bc
    jr nz, jr_01f_4d08

    ld hl, $221a

jr_01f_4d08:
    dec de
    ld [bc], a
    inc e
    ld [bc], a
    inc bc
    ld a, [de]
    rrca
    dec de
    ld [bc], a
    ld [bc], a
    dec e
    ld [bc], a
    ld e, $23
    rra
    inc h
    jr nz, jr_01f_4d3f

    inc bc

jr_01f_4d1b:
    dec de
    ld [bc], a
    ld [bc], a
    inc hl
    ld [bc], a
    inc h
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld e, $02
    inc bc
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rrca
    ld a, [de]
    db $10
    dec de
    ld de, $021c
    dec d
    inc e
    ld d, $02
    inc bc
    inc bc
    inc bc

jr_01f_4d3f:
    inc bc
    ld a, [hl+]
    ld sp, $322b
    ld a, [hl+]
    ld sp, $332c
    ld a, [hl+]
    ld sp, $334f
    ld d, b
    ld d, [hl]
    ld d, c
    ld d, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    daa
    ld [bc], a
    dec l
    daa
    ld l, $28
    cpl
    add hl, hl
    jr nc, jr_01f_4d87

    ld sp, $312a
    ld d, d
    ld e, b
    ld d, e
    ld e, c
    ld d, h
    ld e, d
    ld d, l
    ld e, e
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    inc [hl]
    inc a
    dec [hl]
    dec a
    ld [hl], $3e
    scf
    ccf
    jr c, jr_01f_4dba

    add hl, sp
    ld b, c
    ld a, [hl-]
    ld b, d
    dec sp
    ld b, e
    ld e, [hl]
    ld h, [hl]
    ld e, a
    ld h, a
    ld e, a
    ld h, a
    ld h, b

jr_01f_4d87:
    ld l, b
    ld [bc], a
    ld h, c
    ld [bc], a
    ld h, d
    ld [bc], a
    ld h, e
    ld [bc], a
    ld h, h
    ld b, h
    ld c, h
    ld b, l
    ld c, l
    ld b, [hl]
    ld c, h
    ld b, a
    ld c, [hl]
    ld c, b
    ld c, h
    ld c, c
    ld c, l
    ld c, d
    ld c, h
    ld c, e
    ld c, [hl]
    ld b, h
    ld c, h
    ld b, l
    ld c, l
    ld l, h
    ld c, h
    ld l, l
    ld l, l
    ld l, c
    ld l, c
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, e
    ld l, e
    inc [hl]
    inc a
    dec [hl]
    dec a
    ld e, h
    ld a, $5d
    ld h, l
    ld [bc], a
    adc a

jr_01f_4dba:
    ld [bc], a
    sub b
    adc l
    sub c
    adc [hl]
    sub d
    ld [bc], a
    sub e
    ld [bc], a
    sub h
    ld [bc], a
    xor [hl]
    ld [bc], a
    xor a
    xor h
    or b
    xor l
    or c
    ld [bc], a
    or d
    ld [bc], a
    or e
    sub l
    sbc e
    sub [hl]
    sbc h
    sub a
    sbc l
    sbc b
    sbc [hl]
    sbc c
    sbc a
    sbc d
    and b
    or h
    cp d
    or l
    cp e
    or [hl]
    cp h
    or a
    cp l
    cp b
    cp [hl]
    cp c
    cp a
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
    and [hl]
    ld [bc], a
    ret nz

    ld [bc], a
    pop bc
    add $c2
    rst $00
    jp $c4c8


    ret


    push bc
    jp z, $0202

    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01f_4e59:
    ld a, $1a
    jp Jump_000_020a


Call_01f_4e5e:
    call Call_01f_505c
    ld a, $1b
    ld [$d142], a
    ld [$d148], a
    ld a, [$d7d1]
    ld [$d140], a
    ld a, [$d7d2]
    ld [$d141], a
    ld [$d147], a
    xor a
    ld [$d149], a
    ld [$d14a], a
    call Call_01f_4f76
    ld a, $02
    ld [$cca2], a
    ld a, $0a
    call Call_000_01cb
    ld a, $0a
    call Call_000_01cb
    call Call_01f_5086
    call Call_01f_5050
    call Call_01f_4f98
    ld a, $03
    ld [$d185], a
    ret


Call_01f_4ea0:
    xor a
    ld [$d185], a
    ld a, [$de8f]
    cp $01
    ret z

    cp $06
    jr c, jr_01f_4ec2

    xor a
    ld [$cc9e], a
    ld [$cc9f], a
    ld [$cca0], a
    ld [$cca2], a
    ld [$cca3], a
    ld [$d186], a
    ret


jr_01f_4ec2:
    cp $02
    jr z, jr_01f_4eca

    cp $04
    jr nz, jr_01f_4eda

jr_01f_4eca:
    ld a, $78
    ld [$d14e], a
    ld a, $05
    ld [$d14f], a
    xor a
    ld [$d150], a
    jr jr_01f_4eda

jr_01f_4eda:
    ld a, $03
    ld [$d185], a
    ret


Call_01f_4ee0:
    ld a, [$de8f]
    cp $06
    ret nc

    cp $02
    jr z, jr_01f_4eee

    cp $04
    jr nz, jr_01f_4f18

jr_01f_4eee:
    ld a, [$d81c]
    or a
    jr nz, jr_01f_4f00

    ld hl, $d150
    ld a, [hl]
    or a
    jr nz, jr_01f_4f00

    ld [hl], $01
    call Call_01f_5067

Jump_01f_4f00:
jr_01f_4f00:
    ld hl, $d14e
    ld a, [$d7d1]
    add $78
    sub [hl]
    ld [$d140], a
    inc hl
    ld a, [$d7d2]
    add $05
    sub [hl]
    ld [$d141], a
    jr jr_01f_4f2c

jr_01f_4f18:
    ld a, [$d7d1]
    ld [$d140], a
    ld a, [$d7d2]
    ld [$d141], a
    ld a, [$de8f]
    cp $05
    call z, Call_01f_4f30

jr_01f_4f2c:
    call Call_01f_4f76
    ret


Call_01f_4f30:
    ld a, [$d725]
    ld e, $8a
    cp e
    ret c

    cp $e0
    ret nc

    ld a, e
    ld [$d725], a
    ld hl, $d150
    bit 7, [hl]
    jr nz, jr_01f_4f58

    set 7, [hl]
    ld a, $01
    ld [$cca6], a
    ld b, $00
    ld e, $00
    ld d, $00
    ld c, $01
    call Call_01f_42c6
    ret


jr_01f_4f58:
    ld a, [$de96]
    ld [$d142], a
    ld a, [$cca8]
    and $05
    ret nz

    ld hl, $de56
    ld [hl], $01
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    ld a, $01
    jp Jump_000_029a


Call_01f_4f76:
    ld a, $02
    ld [$cca2], a
    ld a, [$deaf]
    and $27
    jr nz, jr_01f_4f97

    ld hl, $d149
    ld a, [hl]
    or a
    jr z, jr_01f_4f8c

    dec [hl]
    jr jr_01f_4f97

jr_01f_4f8c:
    ld [hl], $06
    inc hl
    ld a, [hl]
    inc a
    cp $30
    jr c, jr_01f_4f96

    xor a

jr_01f_4f96:
    ld [hl], a

jr_01f_4f97:
    ret


Call_01f_4f98:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $1f
    dec hl
    ld [hl], $4f
    dec hl
    ld [hl], $c9
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $1f
    dec hl
    ld [hl], $4f
    dec hl
    ld [hl], $de
    dec hl
    ld [hl], $c3
    ld a, $48
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    ld a, [$d141]
    ldh [rSCY], a
    ld a, [$d140]
    ldh [rSCX], a
    ld a, [$d142]
    ldh [rBGP], a
    ld a, $0d
    ld [$de2c], a
    ret


    ldh a, [rLYC]
    cp $48
    jr nz, jr_01f_4ffc

jr_01f_4fe4:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_4fe4

jr_01f_4fea:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_4fea

    ld a, $50
    ldh [rSCY], a
    ld a, [$d14d]
    sub $03
    ldh [rLYC], a
    ret


jr_01f_4ffc:
    cp $7e
    jr z, jr_01f_5034

    push bc
    ld a, [$d14d]
    dec a
    dec a
    ld b, a

jr_01f_5007:
    ldh a, [rLY]
    cp b
    jr c, jr_01f_5007

    ld a, [$d147]
    ld b, a
    ld a, [$d7d1]
    ld c, a

jr_01f_5014:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_5014

jr_01f_501a:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_501a

    ld a, b
    ldh [rSCY], a
    ld a, c
    ldh [rSCX], a
    ld a, [$de96]
    ldh [rBGP], a
    call Call_01f_5050
    ld a, $7e
    ldh [rLYC], a
    pop bc
    ret


jr_01f_5034:
    ld a, [$de42]
    or a
    jr z, jr_01f_504b

jr_01f_503a:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_503a

jr_01f_5040:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_5040

    ld a, [$de97]
    ldh [rLCDC], a

jr_01f_504b:
    ld a, $48
    ldh [rLYC], a
    ret


Call_01f_5050:
    ld a, [$d14b]
    ld b, a
    ld a, [$d7d2]
    sub b
    ld [$d147], a
    ret


Call_01f_505c:
    ld hl, $9a60
    ld a, $00
    ld bc, $0100
    jp Jump_000_0186


Call_01f_5067:
    ld a, [$de8f]
    cp $02
    jr nz, jr_01f_507b

    ld hl, $9810
    ld bc, $0a0e
    ld a, $02
    call Call_01f_4124
    jr jr_01f_5086

jr_01f_507b:
    ld hl, $9800
    ld bc, $0c0c
    ld a, $02
    call Call_01f_4124

Call_01f_5086:
jr_01f_5086:
    ld hl, $9a00
    ld bc, $1020
    ld a, $02
    call Call_01f_4124
    ret


    sub [hl]
    ld d, b
    sbc h
    ld d, b
    and c
    ld d, b
    and c
    ld d, b
    cp l
    ld d, b
    ld bc, $0a02
    ld bc, $00ff
    ld e, $5b
    ld [hl], e
    ld e, h
    ld d, a
    ld d, d
    dec bc
    ld d, e
    rla
    nop
    ld h, e
    bit 2, b
    nop
    ld e, $5b
    ld [hl], e
    ld e, h
    ld d, a
    ld d, d
    dec bc
    ld d, e
    rla
    nop
    ld h, e
    inc de
    ld d, c
    nop
    ld e, $5b
    ld [hl], e
    ld e, h
    ld e, [hl]
    ld d, d
    dec bc
    ld d, e
    ld b, a
    nop
    ld d, e
    dec d
    ld d, d
    add c
    rst $30
    ld d, d
    jr nc, jr_01f_5123

    nop
    nop
    daa
    add hl, sp
    ld [bc], a
    ld sp, hl
    ld d, b
    nop
    ld [bc], a
    inc b
    ld h, b
    inc bc
    ld [bc], a
    ld [$0350], sp
    db $10
    ld [$0020], sp
    db $10
    db $10
    stop
    ld [bc], a
    dec de
    ld h, b
    ld [bc], a
    inc c
    ld e, $52
    nop
    db $10
    ld l, $20
    nop
    dec bc
    scf
    ld b, b
    nop
    nop
    ld [bc], a
    rst $38
    ld d, d
    ld [de], a
    ld d, l
    jr nz, jr_01f_5103

    jr nz, jr_01f_5109

    add b

jr_01f_5103:
    bit 2, b
    daa
    ld bc, $1302

jr_01f_5109:
    ld d, c
    ld c, $00
    ld c, b
    nop
    inc c
    inc bc
    ld b, b
    nop
    nop
    inc bc
    rst $38
    ld d, d
    ld h, h
    ld d, l
    jr nz, jr_01f_511d

    jr nz, jr_01f_511d

    add b

jr_01f_511d:
    ld sp, hl
    ld d, b
    daa
    dec de
    ld [bc], a
    ld b, c

jr_01f_5123:
    ld d, c
    rrca
    inc bc
    ld [hl], h
    nop
    db $10
    ld [$0030], sp
    ld c, $0e
    ld h, h
    nop
    db $10
    ld [de], a
    jr nz, jr_01f_5134

jr_01f_5134:
    rrca
    inc de
    ld b, h
    nop
    db $10
    inc e
    jr nz, jr_01f_513c

jr_01f_513c:
    ld c, $1d
    ld hl, $0000
    inc b
    rst $38
    ld d, d
    ld d, [hl]
    ld d, [hl]
    ld h, b
    inc b
    jr nz, jr_01f_5151

    add b
    inc de
    ld d, c
    daa
    ld bc, $5b02

jr_01f_5151:
    ld d, c
    rrca
    inc bc
    ld [hl], h
    nop
    ld c, $07
    ld d, h
    nop
    nop
    dec b
    ld l, a
    ld d, d
    xor b
    ld d, [hl]
    ld h, b
    inc b
    jr nz, jr_01f_5165

    add b

jr_01f_5165:
    ld b, c
    ld d, c
    jr nc, jr_01f_5183

    add b
    adc c
    ld d, c
    ld [bc], a
    inc b
    ld h, b
    add hl, bc
    ld de, $4008
    nop
    ld [bc], a
    add hl, bc
    ld h, b
    add hl, bc
    ld de, $400d
    nop
    ld [bc], a
    ld c, $50
    add hl, bc
    inc c
    jr jr_01f_51c3

jr_01f_5183:
    nop
    ld c, $19
    ld l, h
    nop
    nop
    ld b, $ff
    ld d, d
    sbc d
    ld d, a
    and b
    dec b
    jr nc, jr_01f_5198

    add b
    xor e
    ld d, c
    scf
    ld b, $02

jr_01f_5198:
    ld e, e
    ld d, c
    ld [bc], a
    dec b
    jr nc, jr_01f_519f

    ld [bc], a

jr_01f_519f:
    dec b
    ld h, b
    ld [bc], a
    ld c, $09
    inc h
    nop
    ld c, $09
    ld d, h
    nop
    nop
    rlca
    rst $38
    ld d, d
    db $ec
    ld d, a
    and b
    dec b
    jr nc, jr_01f_51ba

    add b
    push bc
    ld d, c
    scf
    ld b, $02

jr_01f_51ba:
    adc c
    ld d, c
    ld c, $09
    inc d
    nop
    ld c, $09
    ld b, h

jr_01f_51c3:
    nop
    nop
    ld [$52ff], sp
    ld a, $58
    and b
    dec b
    jr nz, jr_01f_51cf

    add b

jr_01f_51cf:
    db $e3
    ld d, c
    scf
    ld b, $02
    xor e
    ld d, c
    db $10
    inc bc
    jr nz, jr_01f_51da

jr_01f_51da:
    rrca
    inc bc
    ld d, h
    nop
    rrca
    dec b
    ld d, h
    nop
    nop
    add hl, bc
    adc d
    ld d, d
    sub b
    ld e, b
    and b
    dec b
    daa
    ld bc, $c502
    ld d, c
    ld sp, $013a
    dec d
    ld d, d
    ld [bc], a
    ld c, $60
    add hl, bc
    ld de, $300f
    ld bc, $1402
    ld h, b
    add hl, bc
    ld de, $2018
    ld bc, $2d10
    jr nz, jr_01f_5208

jr_01f_5208:
    rrca
    dec l
    ld [hl], h
    nop
    rrca
    dec [hl]
    ld d, b
    nop
    inc c
    jr c, jr_01f_5253

    nop
    nop
    ld a, [bc]
    or b
    ld d, d
    ld [hl], d
    ld e, d
    ld h, b
    add hl, bc
    ld sp, $0108
    ld sp, $0052
    nop
    ld a, [bc]
    xor [hl]
    ld d, d
    ld [hl], d
    ld e, d
    ld h, b
    add hl, bc
    ld sp, $0108
    ld sp, $0052
    nop
    set 0, [hl]
    ld d, d
    call nz, Call_000_005a
    ld a, [bc]
    nop
    nop
    ld [hl], $09
    ld h, b
    nop
    nop
    inc bc
    dec sp
    ld bc, $364b
    dec [hl]
    inc bc
    nop
    ld bc, $0303
    inc bc
    inc bc
    add hl, bc
    ld bc, $4d4f
    ld c, l
    inc bc
    nop

jr_01f_5253:
    ld bc, $0303
    inc bc
    ld de, $5cd2
    jp Jump_01f_47b6


    ret


    ld de, $5cd2
    call Call_01f_47b6
    ld a, $45
    ld [$d85c], a
    ld a, $52
    ld [$d85d], a
    ret


    ld hl, $5284
    ld bc, $0006
    ld de, $0000
    call Call_01f_4663
    ld de, $5320
    jp Jump_01f_5301


    jp Jump_01f_5304


    ld h, $10
    nop
    nop
    ld bc, $3eff
    ccf
    ld [$d858], a
    ld a, $52
    ld [$d859], a
    ld hl, $52a8
    ld bc, $0006
    ld de, $0000
    call Call_01f_4663
    ld de, $5328
    jp Jump_01f_5301


    jr jr_01f_5304

    ld d, $50
    nop
    ret nc

    ld bc, $18ff
    ld a, [bc]
    ld a, $45
    ld [$d85a], a
    ld a, $52
    ld [$d85b], a
    ld a, $4b
    ld [$d858], a
    ld a, $52
    ld [$d859], a
    jr jr_01f_5304

    ld a, $51
    ld [$d85a], a
    ld a, $52
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
    jr jr_01f_5304

    jr jr_01f_5304

    call Call_01f_6067
    ld de, $5318
    jr jr_01f_5301

    jr jr_01f_5304

Jump_01f_5301:
jr_01f_5301:
    call Call_01f_4874

Jump_01f_5304:
jr_01f_5304:
    ld hl, $5cc8
    call Call_01f_47cc
    ret


    call Call_01f_5fb2
    ld de, $5ce8
    call Call_01f_47dd
    call Call_01f_4887
    ret


    ret nc

    nop
    ldh a, [rSC]
    nop
    add b
    rst $38
    rst $38
    nop
    nop
    ld d, b
    ld bc, $8000
    rst $38
    rst $38
    jr nc, jr_01f_532a

jr_01f_532a:
    ld d, b
    ld [bc], a
    nop
    add b
    rst $38
    rst $38
    inc a
    ld [$2d0f], sp
    ld [hl], $20
    ld hl, $1114
    ld [de], a
    dec h
    inc d
    ld de, $1c12
    dec e
    ld [hl+], a
    inc hl
    ld de, $120b
    ld a, $11
    jr nz, jr_01f_536a

    ld [de], a
    inc e
    dec e
    ld de, $1225
    inc d
    ld de, $2120
    ld [de], a
    ld a, $11
    add hl, hl
    ld a, [hl+]
    ld [de], a
    jr nz, jr_01f_537c

    inc e
    dec e
    ld de, $2a29
    dec c
    inc de
    jr c, jr_01f_539d

    ld c, h
    dec l
    ld [hl], $4c
    nop
    nop

jr_01f_536a:
    ld c, h
    inc e
    dec e
    ld de, $2b0e
    dec [hl]
    ld c, [hl]
    ld c, c
    ld c, e
    ld c, [hl]
    ld c, c
    ld c, e
    ld c, [hl]
    nop
    nop
    nop
    nop

jr_01f_537c:
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    rrca

jr_01f_539d:
    inc d
    dec l
    ld [hl], $4c
    dec hl
    dec [hl]
    ld c, h
    nop
    nop
    ld c, h
    ld c, c
    ld c, e
    inc h
    ld [de], a
    jr c, jr_01f_53e6

    ld c, h
    jr c, @+$3b

    ld c, h
    jr c, @+$3b

    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    rrca
    ld c, $2b
    dec [hl]
    ld c, h
    dec l
    ld [hl], $4c
    nop
    nop
    ld c, h
    dec l
    ld [hl], $25

jr_01f_53e6:
    inc h
    dec l
    ld [hl], $4c
    dec l
    ld [hl], $4c
    dec l
    ld [hl], $4c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    nop

Call_01f_5400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $3812
    add hl, sp
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld d, h
    dec h
    dec hl
    dec [hl]
    ld c, h
    dec hl
    dec [hl]
    ld c, h
    dec hl
    dec [hl]
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ccf
    ld b, c
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    dec l
    ld [hl], $4c
    dec hl
    dec [hl]
    ld c, h
    nop
    nop
    ld c, h
    dec hl
    dec [hl]
    db $10
    dec c
    jr c, @+$3b

    ld c, h
    jr c, @+$3b

    ld c, h
    jr c, jr_01f_54a0

    ld b, h
    ld d, h
    dec bc
    dec c
    nop
    nop
    nop
    ld b, d
    ld b, b
    ld d, d
    inc de
    inc de
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
    ld d, h
    dec c
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    ld d, h
    dec bc
    dec c
    nop
    nop
    ld c, h
    jr c, jr_01f_54b7

    ld d, h
    add hl, hl
    ld a, [hl+]
    dec c
    jr c, jr_01f_54d2

    ld de, $2d10
    ld [hl], $4c
    dec l
    inc h

jr_01f_54a0:
    ld d, h
    dec bc
    dec c
    ld a, [de]
    dec de
    inc de
    stop
    ld b, d
    ld b, b
    ld d, d
    ld a, [de]
    dec de
    inc d
    inc d
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_01f_54b7:
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    db $10
    ld d, e
    ld b, c
    ld b, c
    ld b, c
    ld b, e
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc d
    rrca
    ld b, h
    rrca
    dec hl
    dec [hl]
    ld a, [de]
    dec de
    dec h
    dec de
    inc de
    ld a, [de]

jr_01f_54d2:
    dec de
    dec l
    ld [hl], $24
    rrca
    ld e, $1f
    ld a, [de]
    dec de
    dec h
    dec de
    inc de
    db $10
    inc e
    dec e
    inc d
    rrca
    nop
    ld a, $13
    inc de
    inc e
    dec e
    ld e, $1f
    ld a, $00
    ld e, $1f
    ld d, h
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_01f_5510

    dec e
    inc e
    dec e
    rrca
    ld e, $1f
    ld a, [de]
    dec de
    ld a, $00
    ld d, h
    add hl, hl

Call_01f_5500:
    ld h, $29
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    inc e
    dec e
    inc e
    dec e
    inc d
    inc e
    dec e
    dec hl

jr_01f_5510:
    dec [hl]
    dec h
    ld a, [bc]
    ld [$0a1a], sp
    inc c
    daa
    daa
    ld a, [bc]
    inc c
    dec l
    ld [hl], $54
    rra
    ld c, c
    ld c, e
    ld c, c
    ld c, e
    ld c, c
    ld c, e
    dec hl
    dec [hl]
    rrca
    ld hl, $3938
    jr c, jr_01f_5566

    jr c, jr_01f_5568

    jr c, jr_01f_556a

    ld de, $2d0d
    ld [hl], $2d
    ld [hl], $2d
    ld [hl], $2d
    ld [hl], $24
    rrca
    dec hl
    dec [hl]
    dec hl
    dec [hl]
    dec hl
    dec [hl]
    dec hl
    dec [hl]
    dec h
    ld [de], a
    jr c, @+$3b

    ld b, h
    ld d, h
    inc c
    daa
    ld a, [bc]
    dec c
    inc de
    inc de
    dec l
    ld [hl], $1a
    dec de
    ld [hl+], a
    inc hl
    ld a, [de]
    dec de
    inc d
    inc d
    dec hl
    dec [hl]
    inc e
    dec e
    add hl, hl
    jr z, @+$1e

    dec e
    daa
    ld e, $08

jr_01f_5566:
    dec de
    dec l

jr_01f_5568:
    ld [hl], $13

jr_01f_556a:
    ld d, h
    dec bc
    inc c
    ld [de], a
    rla
    rla
    dec l
    ld [hl], $4d
    nop
    nop
    ld c, l
    dec l
    ld [hl], $4d
    nop
    nop
    dec l
    ld de, $0c0b
    ld [de], a
    rla
    jr nz, @+$23

    rla
    dec e
    dec hl
    dec [hl]
    rla
    db $10
    ld c, e
    ld c, a
    nop
    nop
    ld c, [hl]
    nop
    nop
    ld c, l
    nop
    nop
    ld c, l
    nop
    nop
    ld c, l
    dec hl
    dec [hl]
    dec hl
    ld c, e
    ld c, [hl]
    nop
    nop
    ld c, a
    ld c, c
    ld c, e
    ld d, h
    rra
    jr c, jr_01f_55de

    ld a, [de]
    dec de
    add hl, sp
    ld c, l
    nop
    nop
    ld c, h
    nop
    nop
    ld c, l
    nop
    nop
    ld c, l
    nop
    nop
    ld c, l
    jr c, jr_01f_55f0

    jr c, jr_01f_55f2

    ld c, h
    nop
    nop
    ld c, l
    jr c, jr_01f_55f8

    ld c, $21
    dec l
    ld [hl], $1c
    ld c, $36
    ld c, l
    nop
    nop
    ld c, h
    nop
    nop
    ld c, l
    nop
    nop
    ld c, l
    nop
    nop
    ld c, l
    dec l
    ld [hl], $2d
    ld [hl], $4c
    nop
    nop
    ld c, l
    dec l
    ld [hl], $0f

jr_01f_55de:
    dec c
    nop
    nop
    ld de, $3512
    ld c, l
    dec hl
    dec [hl]
    ld c, h
    dec hl
    dec [hl]
    ld c, l
    nop
    nop
    ld c, l
    nop
    nop

jr_01f_55f0:
    ld d, h
    dec c

jr_01f_55f2:
    dec [hl]
    nop
    nop
    ld c, h
    dec hl
    ld d, h

jr_01f_55f8:
    dec c
    dec hl
    dec [hl]
    rrca
    rrca
    nop
    nop
    ld c, a
    ld c, c
    add hl, sp
    ld c, l
    jr c, @+$56

    dec c
    jr c, jr_01f_5641

    ld c, l
    nop
    nop
    ld c, l
    ld b, h
    ld a, [de]
    dec de
    ld c, $39
    nop
    nop
    ld c, h
    jr c, jr_01f_5630

    ld c, $38
    add hl, sp
    ld de, $001b
    nop
    ld c, l
    dec l
    ld [hl], $4d
    dec l
    db $10
    rrca
    dec l
    ld [hl], $4d
    nop
    ld d, h
    add hl, hl
    inc e
    inc e
    dec e
    rrca
    ld [hl], $00

jr_01f_5630:
    nop
    ld d, h
    ld a, [bc]
    inc e
    dec de
    dec l
    ld [hl], $13
    dec e
    ld d, h
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec c
    ld a, [de]
    dec de
    ld a, [de]

jr_01f_5641:
    dec de
    ld a, [de]
    dec de
    inc de
    ld a, [de]
    dec de
    ld e, $1f
    inc de
    inc de
    ld c, $24
    inc de
    ld a, [de]
    dec de
    inc h
    inc e
    dec e
    dec hl
    dec [hl]
    rla
    ld a, [bc]
    ld [$181f], sp
    ld a, [de]
    dec de
    jr @+$24

    inc hl
    dec l
    ld [hl], $54
    ld hl, $0e19
    dec e
    add hl, de
    ld c, c
    ld c, e
    nop
    nop
    ld c, $0d
    ld a, [de]
    db $10
    ld c, c
    ld c, e
    jr c, jr_01f_56ac

    dec hl
    dec [hl]
    ld de, $1c0f
    dec e
    jr c, jr_01f_56b4

    dec l
    ld [hl], $38
    add hl, sp
    jr jr_01f_568f

    nop
    nop
    dec l
    ld [hl], $2b
    dec [hl]
    ld d, h
    dec c
    add hl, de
    ld [de], a
    nop
    nop
    dec hl
    dec [hl]

jr_01f_568f:
    jr c, jr_01f_56ca

    db $10
    inc h
    jr jr_01f_56a8

    nop
    nop
    jr c, jr_01f_56d2

    ld d, h
    ld a, [bc]
    ld a, [de]
    dec h
    add hl, de
    inc d
    nop
    nop
    ld a, [bc]
    add hl, hl
    inc e
    dec e
    inc e
    dec e
    daa

jr_01f_56a8:
    ld e, $08
    dec de
    nop

jr_01f_56ac:
    nop
    jr @+$1a

    ld a, [de]
    dec de
    jr jr_01f_56cd

    dec de

jr_01f_56b4:
    jr jr_01f_56d0

    dec de
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld de, $2229
    inc hl
    ld a, [hl+]
    dec c
    ld [hl], $2d
    ld bc, $1d18
    nop

jr_01f_56ca:
    nop
    add hl, de
    add hl, de

jr_01f_56cd:
    inc e
    dec e
    add hl, de

jr_01f_56d0:
    inc e
    dec e

jr_01f_56d2:
    add hl, de
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld c, a
    ld c, c
    ld c, e
    rrca
    dec [hl]
    dec hl
    ld bc, $1f19
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    jr jr_01f_5710

    ld a, $3e
    nop
    nop
    ld c, l
    dec l
    ld [hl], $0e
    add hl, sp
    dec l
    ld bc, $2154
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a

jr_01f_5710:
    dec a
    dec a
    dec a
    dec a
    add hl, de
    add hl, de
    ld a, $3e
    nop
    nop
    ld c, l
    nop
    nop
    db $10
    ld [hl], $00
    ld bc, $0d10
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    jr @+$20

    rra
    ld a, $3e
    nop
    nop
    ld c, l
    dec hl
    dec [hl]
    nop
    nop
    dec hl
    ld bc, $0f0f
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    add hl, de
    jr nz, jr_01f_5773

    ld a, $3e
    nop
    nop
    ld c, l
    jr jr_01f_5773

    dec de
    dec [hl]
    jr c, jr_01f_5796

    rrca
    dec de
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld d, h
    add hl, hl
    dec e
    ld c, $18
    ld a, $3e
    nop

jr_01f_5773:
    nop
    ld c, l
    add hl, de
    inc e
    ld c, $36
    dec l
    ld [hl], $0e
    dec e
    ld d, h
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec c
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    jr @+$1d

    ld d, h
    ld a, [bc]
    ld [de], a
    add hl, de
    ld a, $3e
    ld d, h
    dec c
    ld a, [de]
    dec de
    ld a, [de]
    rrca

jr_01f_5796:
    jr @+$1a

    ld a, [de]
    dec de
    ld a, [bc]
    ld [$181b], sp
    dec de
    inc de
    ld a, [de]
    dec de
    ld [hl], $2d
    ld bc, $1d54
    add hl, de
    dec e
    ld d, $1c
    dec e
    dec [hl]
    nop
    ld bc, $1a0f
    inc de
    ld a, [de]
    add hl, de
    jr jr_01f_57ff

    add hl, sp
    nop
    ld bc, $1c0e
    ld d, c
    inc e
    inc de
    add hl, de
    dec l
    ld [hl], $00
    ld bc, $180f
    ld d, $13
    ld d, $22
    inc hl
    nop
    dec hl
    ld bc, $190f
    add hl, de
    rla
    add hl, de
    inc de
    nop
    nop
    jr c, @+$03

    ld de, $1b1a
    jr @+$1d

    rla
    nop
    nop
    dec l
    ld bc, $1c13
    dec e
    add hl, de
    dec e
    ld [hl+], a
    inc hl
    dec [hl]
    dec hl
    ld bc, $0a17
    ld [$1b13], sp
    ld a, [de]
    dec de
    jr jr_01f_5807

    ld [hl], $2d
    ld bc, $1654
    dec e
    inc e
    inc de
    add hl, de
    inc d
    dec [hl]

jr_01f_57ff:
    dec hl
    ld bc, $500f
    inc de
    ld a, [de]
    ld d, c
    ld a, [de]

jr_01f_5807:
    dec de
    add hl, sp
    jr c, @+$03

    ld c, $19
    ld d, c
    inc e
    inc de
    inc e
    dec e
    ld [hl], $2d
    ld bc, $1b0f
    ld d, $13
    ld d, $22
    inc hl
    dec [hl]
    dec hl
    ld bc, $1d0f
    ld d, b
    rla
    add hl, de
    ld a, [de]
    dec de
    add hl, sp
    jr c, @+$03

    ld de, $191b
    jr jr_01f_5848

    inc e
    dec e
    ld [hl], $2d
    ld bc, $1d13
    dec e
    add hl, de
    inc e
    ld [hl+], a
    inc hl
    dec [hl]
    dec hl
    ld bc, $0a17
    ld [$0118], sp
    nop
    ld a, [bc]
    inc c
    inc e
    dec e
    ld a, [bc]

jr_01f_5848:
    dec bc
    dec c
    add hl, de
    ld bc, $4935
    ld c, e
    ld c, c
    ld c, e
    ld c, c
    ld c, e
    inc e
    ld b, h
    ld bc, $3839
    add hl, sp
    jr c, jr_01f_5894

    jr c, jr_01f_5896

    jr @+$15

    ld bc, $2d36
    ld [hl], $2d
    ld [hl], $2d
    ld [hl], $19
    rla
    dec hl
    dec [hl]
    dec hl
    dec [hl]
    dec hl
    dec [hl]
    dec hl
    dec [hl]
    ld e, $1a
    dec de
    jr jr_01f_58ca

    dec bc
    dec c
    add hl, sp
    jr c, jr_01f_587d

    jr nz, jr_01f_5899

jr_01f_587d:
    ld c, $19
    dec de
    ld a, [de]
    ld c, $36
    dec l
    ld bc, $2313
    ld de, $1d1c
    inc e
    ld [de], a
    dec [hl]
    dec hl
    ld bc, $3c14
    ld [$000d], sp

jr_01f_5894:
    nop
    nop

jr_01f_5896:
    nop
    nop
    nop

jr_01f_5899:
    nop
    inc c
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
    inc e
    dec e
    ld d, h
    ld a, [bc]
    add hl, hl
    inc e
    dec e
    ld a, [hl+]
    inc c
    ld [de], a
    jr nz, jr_01f_58dc

    ld de, $1c29
    dec e
    ld a, [hl+]
    inc c
    ld [de], a
    dec h
    ld de, $120c
    rla
    ld de, $2029

jr_01f_58ca:
    ld hl, $0c2a
    ld [de], a
    stop
    nop
    ld d, h
    dec c
    inc a
    inc a
    inc a
    inc h
    jr jr_01f_5915

    inc a
    inc a
    inc a

jr_01f_58dc:
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, [de]
    dec c
    jr jr_01f_58ef

jr_01f_58ef:
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, c
    ld c, e
    ld c, c
    ld c, e
    ld c, [hl]
    ld c, c
    ld c, d
    ld c, e
    ld c, c
    ld c, e
    ld c, [hl]
    ld c, c
    ld c, e
    ld c, c
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, c
    ld c, e
    ld c, c
    inc bc
    ld [de], a
    nop
    nop
    jr jr_01f_591e

    dec a
    dec a
    dec a
    dec h
    ld d, b
    dec a

jr_01f_5915:
    dec a
    dec a
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a

jr_01f_591e:
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    dec a
    inc e
    jr jr_01f_5943

    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    dec l
    ld [hl], $2d
    ld [hl], $4c
    dec l
    dec sp
    ld [hl], $2d
    ld [hl], $4c
    dec l
    ld [hl], $2d
    dec sp
    ld [hl], $4c
    dec l

jr_01f_5943:
    ld [hl], $2d
    inc bc
    rra
    ld [bc], a
    nop
    add hl, de
    db $10
    dec a
    dec a
    dec a
    jr jr_01f_59a0

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    dec a
    inc h
    add hl, de
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ld c, h
    dec hl
    ld a, [hl-]
    dec [hl]
    nop
    nop
    nop
    nop
    dec hl
    ld a, [hl-]
    dec [hl]
    ld c, h
    dec hl
    ld a, [hl-]
    jr nc, jr_01f_59ad

    inc l
    ld c, h
    dec hl
    ld a, [hl-]
    ld a, [hl-]
    inc bc
    ld hl, $0001
    ld a, [de]
    dec de
    dec a
    dec a
    dec a
    add hl, de
    add hl, de
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec h

jr_01f_59a0:
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    ld c, h
    dec l
    dec sp
    ld [hl], $00

jr_01f_59ad:
    nop
    nop
    nop
    dec l
    dec sp
    ld [hl], $4c
    dec l
    dec sp
    ld [hl-], a
    inc sp
    cpl
    ld c, h
    dec l
    dec sp
    inc b
    dec b
    dec c
    ld bc, $1800
    dec e
    dec a
    dec a
    dec a
    ld [$3d08], sp
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    ld b, c
    ld b, c
    ld b, e
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    nop
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    dec hl
    dec [hl]
    dec hl
    ld d, h
    ld a, [bc]
    dec c
    ld a, [de]
    dec de
    ld b, $07
    db $10
    ld bc, $1900
    dec de
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    dec a
    dec a
    dec a
    ld [$3d3d], sp
    inc de
    jr @+$1c

    dec c
    ld d, e
    ld b, c
    ld b, c
    ld b, e
    nop
    nop
    ld c, h
    ld e, $1f
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    dec c
    dec de
    db $10
    ld b, h
    dec de
    ld e, $1f
    ld a, [de]
    dec de
    ld [de], a
    ld bc, $1c00
    dec e
    add hl, hl
    ld a, [hl+]
    ld [hl+], a
    inc hl
    add hl, hl
    ld a, [hl+]
    ld a, [de]
    dec de
    ld e, $1f
    add hl, hl
    ld a, [hl+]
    ld a, [de]
    dec de
    inc de
    jr @+$2b

    ld a, [hl+]
    ld e, $1f
    jr jr_01f_5a59

    ld [$1916], sp
    inc e
    jr jr_01f_5a71

    dec de
    inc de

jr_01f_5a59:
    ld a, $00
    ld a, [de]
    dec de
    jr nz, jr_01f_5a80

    ld e, $1f
    nop
    nop
    ld d, h
    ld a, [de]
    dec de
    jr jr_01f_5a88

    ld hl, $1d1c
    ld e, $1f
    inc e
    jr nz, jr_01f_5a91

    inc e

jr_01f_5a71:
    dec e
    ld a, [bc]
    ld [$0a11], sp
    dec bc
    add hl, hl
    inc e
    dec e
    ld a, [hl+]
    ld [de], a
    jr nz, jr_01f_5a9f

    ld c, a
    ld c, c

jr_01f_5a80:
    ld c, e
    ld c, a
    nop
    nop
    ld c, a
    ld c, c
    ld c, e
    inc bc

jr_01f_5a88:
    ld c, l
    jr c, jr_01f_5ac4

    ld c, l
    nop
    nop
    ld c, l
    jr c, jr_01f_5aca

jr_01f_5a91:
    inc bc
    ld c, l
    jr c, jr_01f_5ace

    ld c, l
    nop
    nop
    ld c, l
    jr c, jr_01f_5ad4

    inc bc
    ld a, [de]
    dec de
    add hl, sp

jr_01f_5a9f:
    ld c, l
    nop
    nop
    ld c, l
    jr c, jr_01f_5abf

    dec de
    inc e
    ld a, [de]
    dec de
    ld c, l
    nop
    nop
    ld c, l
    ld a, [de]
    dec de
    dec e
    inc de
    inc e
    dec e
    ld a, [de]
    dec de
    ld a, [de]
    ld d, h
    ld [de], a
    dec e
    jr jr_01f_5ad2

    inc a
    inc a
    ld c, $1d

jr_01f_5abf:
    inc e
    dec e
    inc a
    inc a
    add hl, de

jr_01f_5ac4:
    dec bc
    ld [$4510], sp
    ld b, [hl]
    ld b, l

jr_01f_5aca:
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l

jr_01f_5ace:
    ld b, [hl]
    ld b, l
    ld d, h
    ld c, c

jr_01f_5ad2:
    dec [hl]
    ld c, l

jr_01f_5ad4:
    nop
    dec hl
    dec [hl]
    dec hl
    jr nc, jr_01f_5b0b

    inc l
    ld c, $2d
    ld [hl], $4d
    nop
    dec l
    ld [hl], $2d
    ld l, $33
    cpl
    ld de, $2b00
    dec [hl]
    dec hl
    jr nc, jr_01f_5b1e

    inc l
    nop
    ld c, l
    dec hl
    inc de
    inc de
    dec l
    ld [hl], $2d
    cpl
    inc sp
    ld l, $00
    ld c, l
    dec l
    inc d
    inc d
    inc l
    ld c, l
    nop
    dec hl
    jr nc, @+$33

    inc l
    ld c, l
    nop
    ld e, $0e
    cpl
    ld c, l

jr_01f_5b0b:
    nop
    dec l
    ld l, $33
    cpl
    ld c, l
    nop
    jr nz, @+$1c

    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld d, h

jr_01f_5b1e:
    ld d, l
    nop
    nop
    nop
    nop
    inc d
    inc d
    dec d
    dec d
    inc d
    inc d
    dec d
    dec d
    dec c
    dec c
    ld c, $0e
    ld b, b
    ld d, b
    inc b
    rlca
    dec b
    ld [$0906], sp
    ld b, h
    ld d, h
    ld a, [bc]
    ld d, l
    dec bc
    ld d, [hl]
    inc c
    ld d, a
    db $10
    ld [de], a
    ld de, $6e13
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl+], a
    ld [hl-], a
    inc hl
    inc sp
    inc hl
    inc sp
    inc hl
    inc sp
    inc hl
    inc sp
    ld [hl+], a
    ld [hl-], a
    inc h
    inc [hl]
    dec h
    dec [hl]
    ld h, $36
    daa
    scf
    ld [hl], $36
    scf
    scf
    ld [hl], $26
    scf
    daa
    jr z, jr_01f_5b9d

    add hl, hl
    add hl, sp
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    dec sp
    ld a, $2c
    ccf
    dec l
    inc l
    ld a, $2d
    ccf
    inc l
    ld h, h
    dec l
    ld h, l
    ld h, h
    inc a
    ld h, l
    dec a
    ld h, h
    ld a, $65
    ccf
    ld a, $64
    ccf
    ld h, l
    inc a
    ld a, $3d
    ccf
    ld b, b
    ld d, b
    ld b, c
    ld d, c
    ld b, d
    ld d, d
    ld b, e
    ld d, e
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld b, a
    ld d, a
    ld c, b
    ld e, b
    ld c, c
    ld e, c
    ld c, c
    ld e, c

jr_01f_5b9d:
    ld c, d
    ld e, d
    ld e, b
    ld c, e
    ld e, c
    ld c, h
    ld e, c
    ld c, h
    ld e, d
    ld c, l
    ld c, b
    ld c, e
    ld c, c
    ld c, h
    ld c, c
    ld c, h
    ld c, d
    ld c, l
    ld c, b
    ld e, b
    ld c, d
    ld e, d
    ld e, b
    ld c, e
    ld e, d
    ld c, l
    ld e, a
    ld h, c
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, a
    ld h, c
    ld [hl+], a
    ld [hl-], a
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld [hl+], a
    ld [hl-], a
    ld d, $1b
    rla
    dec e
    rla
    inc e
    ld a, [de]
    rra
    dec de
    ld e, e
    dec e
    ld e, h
    ld c, [hl]
    ld e, h
    rra
    ld e, l
    ld c, a
    ld e, h
    rra
    ld e, l
    rla
    inc e
    rla
    jr jr_01f_5bfe

    ld e, l
    ld d, $1b
    ld c, [hl]
    ld e, h
    rra
    ld e, l
    ld d, $5b
    add hl, de
    ld e, h
    ld c, [hl]
    ld e, h
    rra
    ld e, l
    rla
    dec e
    ld a, [de]
    rra
    dec e
    ld e, h
    rra
    ld e, l
    dec e
    dec e
    dec e

jr_01f_5bfe:
    dec e
    dec de

Jump_01f_5c00:
    dec de
    dec e
    dec e
    dec e
    dec e
    rra
    rra
    rla
    dec e
    rla
    dec e
    dec e
    ld e, h
    dec e
    ld e, h
    ld h, d
    nop
    ld h, e
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    ld l, l
    ld l, h
    ld l, d
    ld l, e
    ld l, e
    ld l, d
    ld l, h
    ld l, l
    ld l, l
    ld l, h
    ld h, [hl]
    ld l, b
    ld l, e
    ld l, c
    ld l, h
    ld l, b
    ld h, a
    ld l, c
    ld c, b
    ld c, e
    ld c, d
    ld c, l
    ld d, h
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    ld d, $40
    rla
    ld b, c
    rla
    ld b, d
    ld a, [de]
    ld b, e
    nop
    dec de
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    rra
    ld l, $2f
    ld l, $2f
    rrca
    rrca
    rrca
    rrca
    nop
    cpl
    nop
    cpl
    nop
    rrca
    nop
    rrca
    inc a
    inc a
    dec a
    dec a
    inc l
    inc l
    dec l
    dec l
    ld l, d
    ld l, e
    ld l, l

jr_01f_5c6a:
    ld l, h
    ld l, d
    ld l, e
    ld l, l
    ld l, h
    jr nz, jr_01f_5ca1

    ld hl, $0031
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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

jr_01f_5c95:
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

jr_01f_5ca1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01f_5caa:
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop

jr_01f_5cbf:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld bc, $0403
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    jr nz, jr_01f_5c6a

jr_01f_5cd4:
    ld b, b
    nop
    ld h, a
    ld e, l
    nop
    ld h, b
    sub [hl]
    ld b, b
    nop
    and a
    ld e, l
    nop
    and b
    sub [hl]
    ld b, b
    nop
    rst $20
    ld e, l
    ld bc, $20ff

jr_01f_5ce9:
    sub [hl]
    ld b, b
    nop
    ld h, a
    ld e, l
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    and a
    ld e, l
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    rst $20
    ld e, l
    inc bc
    jr nz, jr_01f_5c95

    ld b, b
    nop
    ld h, a
    ld e, l
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, a
    ld e, [hl]
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    and a
    ld e, [hl]
    inc bc
    jr nz, jr_01f_5caa

    ld b, b
    nop
    daa
    ld e, [hl]
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    daa
    ld e, a
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    ld h, a
    ld e, a
    inc bc
    jr nz, jr_01f_5cbf

    ld b, b
    nop
    daa
    ld e, [hl]
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    and a
    ld e, l
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    rst $20
    ld e, l
    inc bc
    jr nz, jr_01f_5cd4

    ld b, b
    nop
    rst $20
    ld e, [hl]
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld h, a
    ld e, [hl]
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    and a
    ld e, [hl]
    inc bc
    jr nz, jr_01f_5ce9

    ld b, b
    nop
    rst $20
    ld e, [hl]
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    daa
    ld e, a
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    ld h, a
    ld e, a
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc e
    rlca
    ld h, a
    db $10
    sub b
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

    nop
    jr c, jr_01f_5d82

jr_01f_5d82:
    ld b, $00
    ld bc, $0000
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $27
    ld b, $26
    ld b, $27
    add b
    sub h
    adc b
    add h
    add b
    and h
    adc b
    add h
    adc b
    sub h
    adc b
    or h
    adc b
    db $f4
    adc b
    db $f4
    nop
    ld bc, $0b00
    nop
    ld a, [hl+]
    nop
    ld c, h
    nop
    ld e, l
    nop
    rst $30
    nop
    ld [hl], a
    nop
    dec sp
    nop
    add b
    nop
    ret nc

    nop
    ld d, h
    nop
    ld [hl-], a
    nop
    cp d
    nop
    rst $28
    nop
    xor $00
    call c, $f500
    nop
    rst $10
    nop
    ld h, a
    nop
    ld [hl+], a
    nop
    jr nz, jr_01f_5dd2

jr_01f_5dd2:
    adc b
    nop
    db $dd
    nop
    rst $30
    nop
    or $00
    ld e, [hl]
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
    jp nc, Jump_01f_4f00

    nop
    add e
    nop
    ld l, c
    nop
    inc d
    nop
    add h
    nop
    ld c, a
    nop
    add e
    nop
    ld b, c
    nop
    ld c, a
    nop
    and b
    nop
    ld e, d
    nop
    dec [hl]
    nop
    ld c, $00
    ld b, a
    nop
    and e
    nop
    ld b, c
    nop
    ldh a, [c]
    nop
    dec b
    nop
    ld e, d
    nop
    xor h
    nop
    ld [hl], b
    nop
    ldh [c], a
    nop
    push bc
    nop
    add d
    nop
    ldh a, [c]
    nop
    pop bc
    nop

jr_01f_5e1c:
    sub [hl]
    nop
    jr z, jr_01f_5e20

jr_01f_5e20:
    ld hl, $f200
    nop
    pop bc
    nop
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
    add b
    nop
    ld h, c
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_01f_5e1c

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, $26
    ld b, $26
    ld b, $26
    ld b, $26
    ld d, $26
    ld b, $2e
    ld d, $26
    ld d, $2e
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    sub h
    adc b
    add h
    add b
    and h
    adc b
    db $f4
    nop
    dec c
    nop
    rla
    nop
    scf
    nop
    dec sp
    nop
    ld a, [hl+]
    nop
    ld c, h
    nop
    ld e, l
    nop
    rst $30
    nop
    or b
    nop
    add sp, $00
    db $ec
    nop
    call c, Call_01f_5400
    nop
    ld [hl-], a
    nop
    cp d
    nop
    rst $28
    nop
    ld [$8800], sp
    nop
    push de
    nop
    rst $38
    nop
    sub $00
    ld h, a
    nop
    ld h, d
    nop
    jr nz, jr_01f_5e98

jr_01f_5e98:
    add c
    nop
    pop bc
    nop
    ldh [c], a
    nop
    or $00
    jp c, Jump_01f_5c00

    nop
    sbc h
    nop
    ret


    nop
    inc [hl]
    nop
    sbc d
    nop
    rst $00
    nop
    ld [hl], c
    nop
    jr z, jr_01f_5eb2

jr_01f_5eb2:
    inc e
    nop
    ld a, [bc]
    nop
    dec b
    nop
    inc a
    nop
    add e
    nop
    ld b, c
    nop
    add sp, $00
    ld [hl], h
    nop
    ld a, [de]
    nop
    inc c
    nop
    ld b, $00
    inc a
    nop
    pop bc
    nop
    add d
    nop
    rla
    nop
    ld l, $00
    ld e, b
    nop
    jr nc, jr_01f_5ed6

jr_01f_5ed6:
    ld h, b
    nop
    inc l
    nop
    ld e, c
    nop
    db $e3
    nop
    adc [hl]
    nop
    inc d
    nop
    jr c, jr_01f_5ee4

jr_01f_5ee4:
    ld d, b
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    add [hl]
    ld [hl], b
    ld [hl], c
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
    ld bc, $0e00
    nop
    ldh a, [rP1]
    nop
    ld d, $26
    ld b, $26
    ld d, $2e
    ld d, $26
    ld d, $2e
    ld d, $2e
    ld d, $2f
    ld d, $2f
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
    db $e4
    nop
    ld [bc], a
    nop
    inc c
    nop
    dec e
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    dec sp
    nop
    xor d
    nop
    call z, Call_01f_4000
    nop
    jr nc, jr_01f_5f3c

jr_01f_5f3c:
    cp b
    nop
    xor $00
    xor $00
    call c, Call_01f_5500
    nop
    inc sp
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
    adc b
    nop
    pop bc
    nop
    and e
    nop
    or $00
    ld l, [hl]
    nop
    ld e, d
    nop
    and c
    nop
    db $f4
    nop
    ld a, d
    nop
    rra
    nop
    inc bc
    nop
    and b
    nop
    ret nc

    nop
    add sp, $00
    pop bc
    nop
    inc d
    nop
    ld a, [bc]
    nop
    ld b, e
    nop
    pop hl
    nop
    pop de
    nop
    ld [hl], b
    nop
    jr z, jr_01f_5f88

jr_01f_5f88:
    add e
    nop
    jr z, jr_01f_5f8c

jr_01f_5f8c:
    ld d, b
    nop
    jp nz, $8700

    nop
    adc e
    nop
    ld c, $00
    inc d
    nop
    add l
    nop
    cpl
    nop
    ld e, [hl]
    nop
    ld hl, sp+$00
    ret nz

    nop
    dec b
    nop
    dec bc
    nop
    rla
    ld b, b
    ld b, d
    ld d, d
    nop
    ld b, c
    ld b, e
    ld d, e
    nop
    ld a, $3f
    nop

Call_01f_5fb2:
    ld a, [$de8f]
    cp $01
    call z, Call_01f_607b
    ld a, [$d161]
    or a
    ret z

    ld a, [$deaf]
    and $07
    ret nz

    ld a, [$d760]
    or a
    ret nz

    xor a
    ld [$d154], a
    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    ld d, a
    call Call_000_027f
    ld [$d74e], a
    call Call_01f_5fec
    ld a, [$d154]
    bit 1, a
    ret nz

    ld hl, $d151
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_01f_5fec:
    ld b, a
    ld a, [$d74b]
    or a
    jr nz, jr_01f_600f

    ld hl, $5faf
    call Call_01f_605f
    jr nc, jr_01f_600f

    ld hl, $d153
    ld a, [hl]
    add $80
    ld [hl], a
    ld hl, $d725
    ld a, [hl]
    adc $01
    ld [hl], a
    ld hl, $d154
    set 0, [hl]
    ret


jr_01f_600f:
    ld a, b
    cp $3f
    jr nz, jr_01f_6025

    ld a, [$d70d]
    and $0f
    cp $08
    ld de, $fff0
    jr c, jr_01f_603a

    ld de, $0010
    jr jr_01f_603a

jr_01f_6025:
    ld hl, $5fa7
    call Call_01f_605f
    ld de, $fff0
    jr c, jr_01f_603a

    ld hl, $5fab
    call Call_01f_605f
    ret nc

    ld de, $0010

jr_01f_603a:
    ld hl, $d151
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    ld a, $00
    ldh [$ff8b], a
    ld a, $01
    ldh [$ff8c], a
    call Call_000_0213
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, e
    ld [$d731], a
    ld a, d
    ld [$d732], a
    ld hl, $d154
    set 1, [hl]
    ret


Call_01f_605f:
jr_01f_605f:
    ld a, [hl+]
    or a
    ret z

    cp b
    jr nz, jr_01f_605f

    scf
    ret


Call_01f_6067:
    ld a, $40
    ld hl, $d14c
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, $21
    call Call_000_020a
    ld [$d150], a
    ret


Call_01f_607b:
    ld a, [$d150]
    ldh [$ffac], a
    ld a, $00
    ldh [$ffab], a
    ld c, $00

jr_01f_6086:
    call Call_01f_6092
    inc c
    ld a, c
    cp $02
    jr c, jr_01f_6086

    jp Jump_01f_61ae


Call_01f_6092:
    call Call_01f_60f0
    ret c

    ld hl, $d14e
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_01f_60c8

    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    push bc
    push de
    ld hl, $60e5
    call Call_01f_408c
    pop de
    ld a, e
    ldh [$ff9b], a
    ld a, d
    ldh [$ff9c], a
    pop bc
    ldh a, [$ffa7]
    bit 1, a
    jr z, jr_01f_60c8

    ld a, c
    inc a
    ld [$d140], a
    ld b, $00
    ld hl, $d14e
    add hl, bc
    ld [hl], $02

jr_01f_60c8:
    push bc
    ld b, $00
    ld hl, $d14e
    add hl, bc
    ld a, [hl]
    dec a
    ld de, $6129
    call Call_000_0171
    push de
    ld b, $00
    ld hl, $d14c
    add hl, bc
    ld a, [hl]
    pop bc
    call Call_000_0210
    pop bc
    ret


    ld hl, sp+$07
    ld hl, sp+$07
    nop
    ld a, [bc]
    ld b, b
    nop
    nop
    nop
    nop

Call_01f_60f0:
    ld hl, $613b
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ldh [$ff9c], a
    call Call_01f_40b5
    jr c, jr_01f_6119

    ld hl, $d14c
    add hl, bc
    ld a, [hl]
    cp $40
    jr c, jr_01f_6117

    push hl
    ld hl, $d14e
    add hl, bc
    ld a, [hl]
    pop hl
    call Call_000_01b9

jr_01f_6117:
    xor a
    ret


jr_01f_6119:
    ld hl, $d14c
    add hl, bc
    ld a, [hl]
    cp $40
    jr nc, jr_01f_6127

    ld [hl], $40
    call Call_000_01a7

jr_01f_6127:
    scf
    ret


    ld [hl], $61
    dec l
    ld h, c
    db $fc
    ld sp, hl
    nop
    stop
    ld [$1001], sp
    add b
    db $fc
    ld sp, hl
    ld bc, $8010
    ld [$5802], sp
    add sp, $02
    jr c, @-$01

    inc b
    cp $05
    rra
    ld b, b
    ld e, $40
    dec e
    ld b, b
    inc e
    ld b, d
    cp $06
    inc e
    ld d, d
    dec de
    ld b, b
    ld a, [de]
    ld b, b
    add hl, de
    ld b, b
    jr @+$42

    rla
    ld b, b
    ld d, $42
    cp $07
    ld d, $3e
    rst $38
    db $fd
    inc b
    cp $03
    dec l
    ld b, d
    cp $04
    dec l
    ld d, d
    inc l
    ld b, b
    dec hl
    ld b, d
    cp $05
    dec hl
    ld d, d
    ld a, [hl+]
    ld b, b
    add hl, hl
    ld b, d
    cp $06
    add hl, hl
    ld d, d
    jr z, jr_01f_61be

    daa
    ld b, d
    cp $07
    daa
    ld a, $ff
    ld b, c
    ld h, c
    ld h, d
    ld h, c

Call_01f_6189:
    ld hl, $d140
    ld a, [hl]
    set 7, [hl]
    dec a
    ld hl, $6185
    call Call_000_016e
    ld a, l
    ld [$d141], a
    ld a, h
    ld [$d142], a
    ld a, $3c
    ld [$d143], a
    xor a
    ld [$d144], a
    ld [$d145], a
    ld [$d146], a
    ret


Jump_01f_61ae:
    ld a, [$d140]
    or a
    ret z

    bit 7, a
    call z, Call_01f_6189
    ld a, [$deaf]
    and $07
    ret nz

jr_01f_61be:
    ld hl, $d144
    call Call_000_01e9
    ret nz

    ld a, [$d143]
    ld [hl], a

jr_01f_61c9:
    ld hl, $d141
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $f0
    jr nc, jr_01f_61f6

    ld [$d145], a
    ld a, [hl+]
    ld [$d147], a
    ld a, l
    ld [$d141], a
    ld a, h
    ld [$d142], a
    call Call_01f_622c
    ld hl, $d144
    ld a, [hl]
    or a
    jr z, jr_01f_61c9

    ret


    dec bc
    ld h, d
    ld de, $1662
    ld h, d
    ld e, $62

jr_01f_61f6:
    cpl
    cp $04
    jr nc, jr_01f_6201

    ld de, $61ee
    call Call_000_01c2

jr_01f_6201:
    ld a, l
    ld [$d141], a
    ld a, h
    ld [$d142], a
    jr jr_01f_61c9

    xor a
    ld [$d140], a
    pop hl
    ret


    ld a, [hl+]
    ld [$d146], a
    ret


    ld a, [hl+]
    ld [$d143], a
    ld [$d144], a
    ret


    ld a, [hl+]
    ld [$d144], a
    ld a, l
    ld [$d141], a
    ld a, h
    ld [$d142], a
    pop hl
    ret


Call_01f_622c:
    ld a, [$d145]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $0008
    add hl, de
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc d
    jr nz, jr_01f_6250

    ld a, e
    cp $c0
    jr nc, jr_01f_6264

    jr jr_01f_6258

jr_01f_6250:
    inc a
    jr nz, jr_01f_6264

    ld a, e
    cp $e0
    jr c, jr_01f_6264

jr_01f_6258:
    ld a, [$d146]
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ld a, $04

jr_01f_6264:
    ld hl, $d145
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d147]
    call Call_000_0243
    rst $08
    rra
    ret


    ld [hl], a
    ld h, d
    ld a, l
    ld h, d
    add b
    ld h, d
    adc [hl]
    ld h, d
    adc [hl]
    ld h, d
    inc bc
    ld bc, $00ff
    inc sp
    ld h, l
    adc h
    ld h, [hl]
    cp $62
    ld b, c
    ld h, e
    ld b, a
    nop
    inc sp
    xor d
    ld h, d
    inc b
    inc sp
    ld h, l
    adc h
    ld h, [hl]
    rlca
    ld h, e
    ld b, c
    ld h, e
    ld [hl], a
    nop
    ld h, e
    ldh [$ff62], a
    nop
    inc sp
    ld h, l
    adc h
    ld h, [hl]
    cp $62
    ld b, c
    ld h, e
    ld b, a
    nop
    inc sp
    jp z, Jump_000_0162

    ld h, $63
    ld c, e
    ld h, e
    nop
    nop
    ld sp, $0109
    cp h
    ld h, d
    nop
    ld d, b
    add hl, bc
    jr nz, jr_01f_62bb

jr_01f_62bb:
    nop
    ld [bc], a
    dec bc
    ld h, e
    sbc l
    ld h, e
    and b
    nop
    ld sp, $011c
    jp z, $0062

    nop
    inc bc
    jr z, @+$65

    adc a
    ld h, h
    add b
    ld [bc], a
    nop
    nop
    cp $00
    rst $38
    add b
    ld c, a
    ld [bc], a
    nop
    nop
    ld d, c
    nop
    nop
    nop
    nop
    inc b
    ld b, b
    ld h, e
    pop hl
    ld h, h
    nop
    dec b
    nop
    nop
    cp $00
    rst $38
    add b
    ld d, c
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0303
    inc bc
    inc bc
    dec e
    ld bc, $0f10
    rrca
    call Call_01f_6dbe
    ld de, $66e5
    jp Jump_01f_47b6


    call Call_01f_6dbe
    ret


    ld a, $f2
    ld [$d85a], a
    ld a, $62
    ld [$d85b], a
    ld a, $f8
    ld [$d858], a
    ld a, $62
    ld [$d859], a
    ld a, $80
    ld [$d821], a
    jr jr_01f_6339

    jr jr_01f_6339

    ld a, $40
    ld [$d768], a
    ld a, $fa
    ld [$d769], a
    ld a, $28
    ld [$d76a], a
    jr jr_01f_6339

jr_01f_6339:
    ld hl, $66e2
    call Call_01f_47cc
    ret


    ret


    call Call_01f_6dd4
    ld de, $66ed
    call Call_01f_47dd
    ret


    ld a, [bc]
    ld [$1414], sp
    inc d
    inc d
    inc d
    inc d
    inc d
    jr nc, jr_01f_6387

    ld c, $1d
    ld e, $2e
    add hl, hl
    ld a, [hl+]
    dec e
    ld e, $00
    nop
    dec d
    rra
    jr nz, jr_01f_6393

    daa
    jr z, jr_01f_6386

    jr nz, jr_01f_6369

jr_01f_6369:
    nop
    dec d
    dec hl
    inc l
    dec l
    dec h
    ld h, $21
    ld [hl+], a
    inc hl
    inc h
    dec d
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01f_6386:
    nop

jr_01f_6387:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01f_6393:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $08
    dec c
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    ld c, $11
    ld [de], a
    db $10
    ld de, $1212
    inc de
    db $10
    ld de, $1012
    ld de, $1212
    inc de
    db $10
    ld de, $1012
    ld de, $1212
    inc de
    db $10
    ld de, $1212
    ld [de], a
    db $10
    inc bc
    ld [hl-], a
    inc sp
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    rrca
    ld [hl-], a
    inc sp
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    rrca
    ld [hl-], a
    inc sp
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    rrca
    inc bc
    ld [hl-], a
    inc sp
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    rrca
    ld [hl-], a
    inc sp
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    rrca
    ld [hl-], a
    inc sp
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    rrca
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    rrca
    inc bc
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec bc
    ld d, [hl]
    inc bc
    inc bc
    inc bc
    inc bc
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
    rrca
    ld [de], a
    db $10
    inc de
    ld de, $0f14
    ld [de], a
    db $10
    inc de
    ld de, $1514
    rla
    ld d, $18
    add hl, de
    dec de
    ld a, [de]
    inc e
    dec e
    dec e
    ld e, $1e
    ld [bc], a
    dec e
    ld [bc], a
    ld e, $1f
    ld hl, $2202
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    jr nz, jr_01f_65a7

    inc h
    dec h
    inc h
    dec h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld c, h
    inc bc
    ld c, h
    inc bc
    ld c, h
    inc bc
    ld c, a
    ld d, c
    ld d, b
    ld d, b
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, c
    ld d, c
    ld d, b
    ld d, d
    inc bc
    ld c, l
    inc bc
    ld c, l
    inc bc
    ld c, l
    inc bc
    ld c, l
    ld d, c

jr_01f_65a7:
    ld d, e
    inc bc
    add hl, hl
    ld h, $2a
    daa
    dec hl
    jr z, jr_01f_65dc

    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec hl
    ld l, $2e
    ld [hl], $3b
    ld a, [hl+]
    ld a, [hl+]
    dec l
    cpl
    ld l, $30
    inc a
    ld b, b
    dec a
    ld b, c
    ld a, $42
    ccf
    ld b, e
    ld [hl-], a
    scf
    inc sp
    jr c, jr_01f_6601

    add hl, sp
    dec [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec hl
    ld l, $2e
    inc bc
    ld sp, $2a26
    daa
    dec hl

jr_01f_65dc:
    jr z, jr_01f_660a

    inc bc
    inc bc
    ld [hl], $3b
    ld [hl-], a
    scf
    inc sp
    jr c, @+$36

    add hl, sp
    dec [hl]
    ld a, [hl-]
    ld [hl], $3b
    inc bc
    inc bc
    inc bc
    add hl, hl
    inc bc
    ld sp, $2929
    ld b, h
    ld c, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, a
    ld c, e
    ld hl, $2221
    ld [hl+], a
    ld [hl+], a

jr_01f_6601:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    nop
    nop

jr_01f_660a:
    nop
    nop
    dec d
    dec de
    ld d, $02
    rla
    ld [bc], a
    jr jr_01f_6630

    add hl, de
    dec e
    ld a, [de]
    ld e, $1f
    ld [bc], a
    jr nz, jr_01f_663e

    ld [bc], a
    inc hl
    ld [bc], a
    inc h
    jr nz, jr_01f_6647

    ld hl, $0226
    ld l, $27
    cpl
    jr z, jr_01f_665a

    add hl, hl
    ld sp, $322a
    dec hl
    inc sp

jr_01f_6630:
    inc l
    inc [hl]
    dec l
    dec [hl]
    ld [hl], $3e
    scf
    ccf
    jr c, jr_01f_667a

    add hl, sp
    ld b, c
    ld a, [hl-]
    ld b, d

jr_01f_663e:
    dec sp
    ld b, e
    inc a
    inc bc
    dec a
    inc bc
    ld b, h
    ld b, [hl]
    ld b, l

jr_01f_6647:
    ld b, a
    inc bc
    ld c, b
    inc bc
    inc bc
    ld h, a
    ld l, l
    ld l, b
    add b
    ld l, c
    add c
    ld l, d
    ld [bc], a
    ld l, e
    ld [bc], a
    ld l, h
    add d
    add e
    add [hl]

jr_01f_665a:
    add h
    add a
    ld [bc], a
    adc b
    ld [bc], a
    adc c
    add h
    adc d
    ld [bc], a
    ld [bc], a
    adc e
    sub d
    adc h
    sub e
    adc l
    sub h
    adc [hl]
    sub l
    adc a
    sub [hl]
    sub b
    sub a
    sub c
    sbc b
    ld [bc], a
    sbc c
    sbc d
    inc bc
    sbc e
    inc bc
    sbc h
    and d

jr_01f_667a:
    sbc l
    and e
    sbc [hl]
    ld a, $9f
    ccf
    and b
    ld b, b
    and c
    ld b, c
    inc bc
    inc bc
    inc bc
    and [hl]
    and h
    and a
    and l
    xor b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    add b
    sub h
    stop
    ld de, $0167
    rst $38
    add b
    sub h
    stop
    ld de, $0467
    add b
    sub h
    stop
    ld hl, $0567
    add b
    sub h
    stop
    ld sp, $0667
    add b
    sub h
    stop
    ld b, c
    ld h, a
    ld [$9480], sp
    stop
    ld d, c
    ld h, a
    inc c
    rst $38
    ld e, a
    ccf
    ld b, a
    ccf
    jr jr_01f_671e

jr_01f_6717:
    inc hl
    ret nz

    inc c

jr_01f_671a:
    db $fc
    ld c, $fd
    rst $28

jr_01f_671e:
    db $fd
    inc b
    ei
    ld e, a
    ccf
    ld b, a
    ccf
    jr jr_01f_672e

    inc hl
    ret nz

    jr jr_01f_6717

    jr jr_01f_671a

    push af

jr_01f_672e:
    jp hl


    ld [$5ff3], sp
    ccf
    ld b, a
    ccf
    jr jr_01f_673e

    inc hl
    ret nz

    inc b
    add sp, $04
    jp hl


    jp hl


jr_01f_673e:
    pop hl
    nop
    di
    ld e, a
    ccf
    ld b, a
    ccf
    jr jr_01f_674e

    inc hl
    ret nz

    ld [$08e0], sp
    pop hl
    pop hl

jr_01f_674e:
    pop hl
    nop
    di
    ld e, a
    ccf
    ld b, a
    ccf
    jr jr_01f_675e

    inc hl
    ret nz

    nop
    ldh [rP1], a
    pop hl
    pop hl

jr_01f_675e:
    pop hl
    nop
    di

Call_01f_6761:
    ld hl, $676d
    ld bc, $0590
    ld de, $9150
    jp Jump_000_0183


    rrca
    rrca
    rlca
    rst $00
    inc bc
    ld h, e
    ld l, b
    ld h, b
    ld h, l
    ld l, b
    ld c, c
    ld d, h
    push bc
    ret c

    inc de
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$ffe0], a
    rra
    nop
    cp $01
    ldh [$ff1f], a
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    add b
    nop
    db $fc
    nop
    rlca
    ld hl, sp-$40
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$e208], sp
    ld de, $3c44
    adc b
    rra
    rst $20
    rlca
    dec de
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    sbc a
    rst $08
    rst $28
    ld h, a
    ld [hl], a
    scf
    or a
    add e
    db $db
    ld a, [hl+]
    cp c
    or d
    cp c
    halt
    ld [hl], c
    db $e4
    di
    ld c, h
    db $e3
    sbc b
    ld b, a
    or b
    rrca
    ld h, b
    rra
    rrca
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
    push bc
    ld sp, hl
    ldh a, [c]
    db $fc
    dec a
    cp $0e
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff

jr_01f_67fc:
    rst $38
    set 4, e
    jp Jump_000_23e3


    ld [hl], e
    add a
    scf
    dec de
    and e
    db $db
    add e
    sub e
    jp $c3e3


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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld b, $ed
    ld [$12e5], sp
    pop hl
    inc c
    di
    jp $47e3


    rst $20
    ld d, a
    rst $20
    rlca
    rst $30
    rlca
    rst $30
    daa
    rst $30
    dec sp
    di
    inc sp
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10fe
    ldh [rNR50], a
    adc $4c
    sbc l
    ld e, e
    sbc e
    ld [bc], a
    db $fc
    db $10
    ldh [rOBP0], a
    add l
    jr nz, jr_01f_6870

    sbc b
    ld a, e
    ld [hl], b
    rst $30
    jr nc, jr_01f_68d2

    ld sp, $0077
    ld bc, $7c00
    nop
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38

jr_01f_6869:
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_01f_6870:
    ld a, a
    nop
    rra
    jr nz, jr_01f_67fc

    nop
    and e
    ld [$18dd], sp
    jp c, $d696

    inc de
    ei
    inc de
    ei
    dec b
    ld sp, hl
    ld bc, $01fd
    db $fd

jr_01f_6887:
    ld bc, $01fd
    db $fd
    ld bc, $46fd
    sub a
    inc h
    adc $10
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    inc c
    di
    ld b, $ed
    jr nc, @+$72

    ld [hl], c
    rst $30
    sbc b
    ld a, e
    jr nz, jr_01f_68c0

    ret z

    dec b
    jr nc, jr_01f_6869

    ld c, $f0
    ld bc, $00fe
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
    ld a, h
    ld bc, $fe00
    ld bc, $0e0c
    adc c

jr_01f_68c0:
    call c, $a102
    inc h
    add e
    jr jr_01f_68ce

    ld h, b
    rra
    adc h
    ld [hl], e
    ld b, $ed
    dec d

jr_01f_68ce:
    ld sp, hl
    dec d
    ld sp, hl
    inc de

jr_01f_68d2:
    ei
    ld [de], a
    ld a, [$f23a]
    add hl, hl
    ldh a, [rNR50]
    push af
    ld [hl], h
    push hl
    rst $00
    rst $00
    cp e
    add e
    ld b, h
    jr c, jr_01f_6887

    ld [hl], b
    ld c, h
    db $e3
    ret c

    rst $00
    sbc b
    rst $00
    db $10
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rrca
    rst $10
    rst $20
    inc sp
    ei
    add hl, de
    db $fd
    inc c
    cp $00
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld a, h
    rst $38
    rrca
    rst $38
    ldh [$ff1f], a
    rra
    nop
    ld [$12e5], sp
    pop hl
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    jp Jump_000_3efc


    ret nz

    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld l, b
    add a
    sub b
    rrca
    jr nz, jr_01f_694a

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [bc], a
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [$12e5], sp
    pop hl
    dec c
    di
    ld e, $ff
    add c
    ld a, [hl]
    ld a, $00
    add b

jr_01f_694a:
    ld bc, $844a
    ld d, e
    ldh [$ffc9], a
    add sp, -$60
    ret nz

    ld b, h
    add b
    adc h
    nop
    add hl, de
    inc b
    ld [hl-], a
    inc c
    jr nz, jr_01f_697b

    ld c, a
    add b
    sbc a
    nop
    ld e, $01
    ld e, $01
    sbc h
    inc bc
    call c, $9c03
    ld b, e
    xor [hl]
    ld b, c
    call z, $043e
    cp $06
    db $fc
    ld [bc], a
    db $fc
    add hl, bc
    db $fd
    dec c
    ld sp, hl
    inc de
    ei

jr_01f_697b:
    dec de
    di
    jr nz, @-$3e

    pop af
    ld c, $00
    nop
    rst $38
    nop
    ret nz

    ccf
    rrca
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    inc hl
    ld b, b
    ld e, $01
    pop af
    rrca
    add a
    ld a, a
    ld a, h
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
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
    ld bc, $03fe
    db $fc
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [hl], b
    add b
    ld a, b
    add b
    ldh a, [rP1]
    ret nz

    nop
    ld [$6008], sp
    add b
    db $e4
    ld hl, sp+$1d
    cp $61
    ld e, $40
    ccf
    ret nz

    ccf
    pop bc
    ld a, $e7
    jr jr_01f_6a57

    nop
    inc e
    nop
    add e
    inc bc
    ld b, $60
    ld d, b
    ld hl, $1fa0
    or $0f
    ldh [rP1], a
    sbc a
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    daa
    ld [hl], a
    rla
    daa
    cpl
    rst $08
    sbc a
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $30
    ld a, [bc]
    pop af
    inc b
    ld hl, sp+$0e
    ldh a, [$ff3e]
    ret nz

    ld hl, sp+$00
    ldh [rP1], a
    rlca
    rlca
    nop
    rst $38
    nop
    rst $38
    ldh [$ff1f], a
    ccf
    nop
    nop
    nop
    rlca
    rlca
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$04
    nop
    nop
    nop
    ldh [$ffe0], a
    cp $fe
    rst $38
    rst $38
    nop
    rst $28
    ld d, b
    adc a
    jr nz, jr_01f_6a52

    ld [hl], b
    rrca
    ld a, h
    inc bc
    rra
    nop
    rlca
    nop
    ldh [$ffe0], a
    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, [$6401]
    inc bc
    rst $18
    rra
    xor a
    rst $08
    rst $10

jr_01f_6a52:
    rst $20
    ld [hl], a
    rst $20
    dec hl
    di

jr_01f_6a57:
    dec bc
    di
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    add hl, bc
    rlca
    dec de
    rlca
    sub a
    adc a
    or [hl]
    adc a
    xor [hl]
    sbc a
    xor [hl]
    sbc a
    xor [hl]
    sbc a
    adc $df
    dec b
    ld sp, hl
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc

jr_01f_6a73:
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    sub $cf
    rst $20
    rst $28
    db $eb
    rst $20
    reti


    rst $00
    or e
    adc a
    or a
    adc a
    or e
    adc a
    ret c

    add a
    ld b, $f8
    dec c
    pop af
    jr jr_01f_6a73

    add e
    db $fc
    ret nz

    rst $38
    add b
    rst $38
    ld hl, sp-$01
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rrca
    ld [hl], e
    add e
    add hl, sp
    pop bc
    ld a, [hl]
    add b
    cp $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [bc], a
    db $fc
    ld bc, $00fe
    db $fc
    inc bc
    ld hl, sp+$08
    push hl
    ld [de], a
    pop hl
    dec c
    di
    jr @-$06

    add a
    ld b, b
    dec sp
    rlca
    rst $18
    ccf
    ld a, b
    rst $38
    ld d, e
    ldh [$ffc9], a
    add sp, -$60

jr_01f_6ad2:
    ret nz

    inc b
    nop
    ldh a, [rP1]
    push hl
    ld hl, sp-$7e
    db $fc
    ld bc, $4ffe
    add b
    sbc a
    nop
    ld e, $01
    ld e, $01
    sbc h
    inc bc
    call c, $9c03
    ld b, e
    ld l, $41
    dec b
    di
    ld d, $ef
    jr z, jr_01f_6ad2

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
    nop
    rst $38
    ld bc, $05fe
    ld hl, sp+$0a
    pop af
    dec d
    db $e3
    add hl, hl
    rst $00
    rlc a
    nop
    rst $38
    nop
    rst $38
    and b
    ld a, a
    ld b, b
    rst $38
    pop bc
    cp $81
    cp $83
    db $fc
    rlca
    ld hl, sp+$06
    ld h, b
    sub b
    ld hl, $1fa0
    or [hl]
    rrca
    and b
    nop
    sbc a
    rra
    cp a
    ccf
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$04
    nop

jr_01f_6b35:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    db $ec
    ld l, a
    add b
    inc e
    nop
    ld bc, $3f01
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    rrca
    inc de
    rrca
    inc de
    rrca
    cp c
    add a
    or e
    adc a
    and a
    sbc a
    xor [hl]
    sbc a
    ld c, b
    ccf
    inc c
    ldh a, [$ff39]
    ret nz

    nop
    rst $38
    ld hl, sp-$01
    pop hl
    cp $8e
    ldh a, [$ff30]
    ret nz

    ret nz

    nop
    rra
    rra
    db $e3
    inc bc
    ld a, h
    add b
    jr nc, jr_01f_6b35

    ret nz

    nop
    ld bc, $0101
    ld bc, $0303
    ld d, e
    inc a
    ld c, h
    jr nc, @+$52

    jr nz, jr_01f_6be4

    nop
    ld b, b
    nop
    add b
    add b
    add b
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
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld a, a
    ld a, a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
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
    ld [hl], b
    add b
    ld a, b
    add b
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    ld a, b
    add b
    adc a
    ldh a, [$ff3c]
    rst $38
    ld h, c
    ld e, $40
    ccf
    ret nz

    ccf
    pop bc

jr_01f_6bc4:
    ld a, $e7
    jr jr_01f_6c47

    nop
    inc e
    nop
    db $e3
    inc bc
    nop
    rst $28
    ld d, b
    adc a
    jr nz, jr_01f_6bf2

    ld [hl], b
    rrca
    ld a, b
    rlca
    ld a, $01
    rrca
    nop
    ret nz

    ret nz

    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01f_6be4:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    cp $01
    sbc l
    pop hl
    and $f8
    dec sp

jr_01f_6bf2:
    db $fc
    dec c
    cp $02
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_01f_6bc4

    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rrca
    ld [hl], a
    add a
    dec de
    db $e3
    dec b
    ld sp, hl
    ld [bc], a
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    add b
    add b
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    rrca
    inc hl
    rra
    daa
    rra
    scf
    rrca
    inc sp
    rrca
    sbc c
    add a
    call z, $e3c3
    ldh [rSB], a
    cp $00
    rst $38
    nop
    rst $38

jr_01f_6c43:
    add b
    rst $38
    ret nz

    rst $38

jr_01f_6c47:
    ldh [rIE], a
    ldh a, [rIE]
    jr c, @+$01

    ld a, a
    ld a, a
    cp a
    ccf
    rst $18
    rra
    ld c, a
    adc a
    ld l, a
    adc a
    daa
    rst $00
    scf
    rst $00
    inc sp
    jp $f8f9


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
    adc $3f
    ld a, l
    inc bc
    adc e
    add a
    reti


    rst $00
    or e
    adc a
    or a
    adc a
    or e
    adc a
    ret c

    add a
    dec de
    db $e3
    add hl, de
    pop hl
    jr nc, jr_01f_6c43

    add e
    db $fc
    ret nz

    rst $38
    add b
    rst $38
    ld hl, sp-$01
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    cp $fe
    ld sp, hl
    ld sp, hl
    di
    rst $30
    and $ee
    db $ec
    db $ed
    pop bc
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    db $10
    ld b, a
    adc b
    ld [hl+], a
    inc a
    ld de, $e7f8
    ldh [$ffd8], a
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld bc, $3f00
    nop
    ldh [$ff1f], a
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld hl, sp+$00
    ld a, a
    add b
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    ldh a, [$fff0]
    ldh [$ffe3], a
    ret nz

    add $16
    ld b, $a6
    ld d, $92
    ld a, [hl+]
    and e
    dec de
    ret z

    dec de
    db $d3
    rst $00
    jp $c4c7


    adc $e1
    db $ec
    ret c

    push bc
    db $db
    pop bc
    ret


    jp $c3c7


    ld e, $00
    ld bc, $1e20
    nop
    ld bc, $3c10
    nop
    ld b, b
    db $10
    ld e, $00
    ld e, $10
    inc a
    nop
    dec l
    and c
    ld bc, $1e10
    nop
    db $10
    db $10
    ld e, $00
    inc a
    ld [bc], a
    cp $5b
    ld l, [hl]
    inc a
    ld [bc], a
    inc a
    nop
    ld bc, $1020
    nop
    ld bc, $1e10
    nop
    ld b, [hl]
    db $10
    ld h, b
    db $10
    stop
    ld bc, $0420
    nop
    ld bc, $0410
    nop
    ld bc, $5a20
    nop
    ld bc, $3c10
    nop
    xor d
    db $10
    ld [$0100], sp
    jr nz, jr_01f_6d65

    nop
    ld bc, $3c10
    nop
    call c, Call_000_1e10
    nop
    ld bc, $1e20
    nop
    ld bc, $3c10
    nop
    cp $69
    ld l, [hl]
    ld a, [hl-]
    db $10
    ld bc, $1e20
    nop
    ld bc, $0210
    nop

jr_01f_6d65:
    ld l, [hl]
    db $10
    inc a
    nop
    ld b, [hl]
    db $10
    ld bc, $1e20
    nop
    ld bc, $1e10
    nop
    inc h
    db $10
    cp $61
    ld l, [hl]
    ld e, $10
    ld bc, $0220
    nop
    ld bc, $1c01
    nop
    ld a, b
    nop
    nop
    ld e, $00
    ld bc, $1020
    nop
    ld bc, $1e10
    nop
    ld e, $02
    ld [$0412], sp
    inc de
    ld h, $12
    cp $5b
    ld l, [hl]
    ld a, [bc]
    db $10
    adc b
    db $10
    sbc [hl]
    db $10
    ld [bc], a
    ld de, $10dc
    add hl, sp
    db $10
    stop
    ld l, [hl]
    db $10
    inc d
    nop
    inc a
    db $10
    ld [bc], a
    ld de, $1028
    inc bc
    ld de, $61fe
    ld l, [hl]
    ld e, $10
    ld bc, $9420
    nop
    nop

Call_01f_6dbe:
    xor a
    ld [$d140], a
    ld a, [$de8a]
    ld [$d142], a
    or a
    jr nz, jr_01f_6dd0

    call Call_01f_6de0
    jr jr_01f_6dd3

jr_01f_6dd0:
    call Call_01f_7102

jr_01f_6dd3:
    ret


Call_01f_6dd4:
    ld a, [$d140]
    dec a
    jp z, Jump_01f_6df8

    dec a
    jp z, Jump_01f_7000

    ret


Call_01f_6de0:
    ld a, $01
    ld [$d140], a
    call Call_01f_6ebd
    ld de, $6cfd
    ld hl, $def0
    bit 0, [hl]
    jr z, jr_01f_6df5

    ld de, $6d85

jr_01f_6df5:
    jp Jump_01f_401c


Jump_01f_6df8:
    ld a, [$deaf]
    or a
    ret nz

    ld a, [$d141]
    cp $02
    jr nz, jr_01f_6e0d

    call Call_01f_6e74
    ld a, $03
    ld [$d141], a
    ret


jr_01f_6e0d:
    call Call_01f_4030
    ret nc

    ld a, [$d141]
    cp $04
    ret nz

    ld hl, $def0
    set 0, [hl]
    call Call_01f_6fd0
    ret


jr_01f_6e20:
    ldh a, [rLY]
    cp $4f
    jr c, jr_01f_6e20

jr_01f_6e26:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_6e26

jr_01f_6e2c:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_6e2c

    ld a, $50
    ldh [rSCY], a
    xor a
    ldh [rSCX], a
    ret


Call_01f_6e3a:
    ld a, $c9
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0fb
    ld [hl], $1f
    dec hl
    ld [hl], $6e
    dec hl
    ld [hl], $20
    dec hl
    ld [hl], $c3
    ld a, $4e
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    ret


    ld a, $80
    ld [$d141], a
    ret


    ld a, $01
    ld [$d141], a
    rst $08
    ld [hl], a
    ret


    call Call_01f_6eaf
    ld d, $23
    call Call_01f_6e8d
    jp Jump_01f_6eb8


Call_01f_6e74:
    call Call_01f_6eaf
    ld d, $24
    call Call_01f_6e8d
    ld a, [$d1e0]
    or a
    call nz, Call_000_0222
    xor a
    ld [$d1e0], a
    call Call_01f_6eb8
    rst $28
    scf
    ret


Call_01f_6e8d:
    xor a
    ld [$cf7d], a
    ld a, $0a
    ld [$cf7e], a
    ld a, d
    inc a
    ld [$cf7b], a
    ld a, $01
    ld [$cf7c], a
    ld de, $6e5a
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $1f
    jp Jump_000_02d3


Call_01f_6eaf:
    ld d, $ff
    call Call_01f_6e8d
    call Call_01f_6e3a
    ret


Call_01f_6eb8:
Jump_01f_6eb8:
    xor a
    ld [$de2c], a
    ret


Call_01f_6ebd:
    ld hl, $6ec6
    ld de, $9a80
    jp Jump_01f_40e6


    inc d
    ld b, $4e
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, a
    ld d, b
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
    ld d, c
    ld d, b
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
    ld d, c
    ld d, b
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
    ld d, c
    ld d, b
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
    ld d, c
    ld d, d
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld d, e
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
    ld de, $100f
    ld de, $100f
    ld de, $100f
    ld de, $100f
    ld de, $100f
    ld de, $0f11
    db $10
    ld de, $1214
    inc de
    inc d
    ld [de], a
    inc de
    inc d
    ld [de], a
    inc de
    inc d
    ld [de], a
    inc de
    inc d
    ld [de], a
    inc de
    inc d
    inc d
    ld [de], a
    inc de
    inc d

Call_01f_6f7c:
    ld hl, $c108
    ld de, $c100
    ld b, $10

jr_01f_6f84:
    push bc
    push hl
    push de
    ld bc, $0008
    call Call_000_0180
    pop hl
    ld bc, $0010
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    add hl, bc
    pop bc
    dec b
    jr nz, jr_01f_6f84

    ld b, $10
    ld c, $00
    ld de, $9800

jr_01f_6fa1:
    push bc
    ld a, c
    cp $08
    ld hl, $6f54
    jr z, jr_01f_6fb4

    cp $09
    ld hl, $6f68
    jr z, jr_01f_6fb4

    ld hl, $6f40

jr_01f_6fb4:
    ld bc, $000c
    push de
    call Call_000_0183
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop bc
    inc c
    dec b
    jr nz, jr_01f_6fa1

    ret


    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    nop
    dec de

Call_01f_6fd0:
    call Call_01f_6f7c
    xor a
    ld [$d7d1], a
    ld hl, $6fc8
    ld c, $00
    ld b, $1f
    call Call_000_023d
    xor a
    ld [$de96], a
    ld [$d143], a
    ld [$d145], a
    ld a, $3c
    ld [$d144], a
    ld a, $1e
    ld [$d14b], a
    ld a, $02
    ld [$d140], a
    ret


    nop
    ld [bc], a
    nop
    rst $38
    inc bc

Jump_01f_7000:
    ld a, [$deaf]
    or a
    jr nz, jr_01f_705b

    ld hl, $d144
    call Call_000_01e9
    jr nz, jr_01f_7022

    ld [hl], $01
    ld hl, $d145
    ld a, $01
    add [hl]
    ld [hl], a
    ld b, $30
    cp b
    jr c, jr_01f_7022

    ld [hl], b
    ld a, $01
    ld [$d14a], a

jr_01f_7022:
    ld a, [$d14a]
    or a
    jr z, jr_01f_7038

    ld hl, $d14b
    call Call_000_01e9
    jr nz, jr_01f_7038

    ld a, $02
    ld [$d14a], a
    xor a
    jr jr_01f_704c

jr_01f_7038:
    ld hl, $d147
    call Call_000_01e9
    jr nz, jr_01f_705b

    ld [hl], $02
    ld hl, $d148
    ld a, [hl]
    inc a
    cp $05
    jr c, jr_01f_704c

    xor a

jr_01f_704c:
    ld hl, $d148
    ld [hl], a
    ld e, a
    ld d, $00
    ld hl, $6ffb
    add hl, de
    ld a, [hl]
    ld [$d149], a

jr_01f_705b:
    ld a, [$d149]
    ld e, a
    ld a, [$d145]
    add e
    ld d, a
    ld [$d146], a
    ld a, $40
    add d
    ld [$df14], a
    ld [$df12], a
    ld a, $50
    add d
    add e
    add e
    add e
    ld b, $80
    cp b
    jr c, jr_01f_707c

    ld a, b

jr_01f_707c:
    ld [$df15], a
    ld [$df13], a
    ld a, $ff
    ld [$cca2], a
    xor a
    ld [$d186], a
    ld d, $40
    ld b, $00
    call Call_000_0294
    ld a, [$d146]
    cpl
    inc a
    ld d, $90
    ld b, a
    call Call_000_0294
    ld c, $01
    call Call_000_023d
    ld a, [$d14a]
    cp $02
    ret c

    ld e, $00
    ld d, $07
    ld c, $0a
    ld b, $01
    ld hl, $6529
    call Call_000_0246
    ld a, $70
    ld [$df16], a
    ld a, $80
    ld [$df17], a
    ld c, $01
    call Call_000_023d
    ld e, $00
    ld d, $04
    ld c, $0a
    ld b, $01
    ld hl, $64e3
    call Call_000_0246
    ld hl, $9800
    ld bc, $0e20
    ld a, $03
    call Call_01f_4124
    ld a, $1b
    ld [$de96], a
    call Call_000_01c5
    xor a
    ld [$de2c], a
    ld [$d186], a
    ld [$cca2], a
    ld a, $7f
    ldh [rLYC], a
    ld [$de2d], a
    call Call_01f_7102
    xor a
    ld [$d771], a
    ld [$de29], a
    ret


Call_01f_7102:
    call Call_01f_6761
    ld a, $03
    ld [$d140], a
    ret


    ret


Jump_01f_710c:
    ld a, c
    dec a
    jr z, jr_01f_7146

    call Call_000_028e
    ld [$df12], a
    call Call_000_028e
    cp $90
    jr c, jr_01f_711f

    ld a, $90

jr_01f_711f:
    ld [$df13], a
    call Call_000_028e
    ld [$df14], a
    call Call_000_028e
    ld [$df15], a
    call Call_000_028e
    ld [$df16], a
    call Call_000_028e
    ld [$df17], a
    call Call_000_028e
    ld [$df10], a
    call Call_000_028e
    ld [$df11], a

jr_01f_7146:
    call Call_01f_724e
    call Call_01f_7166
    di
    ld a, [$de2d]
    ldh [rLYC], a
    ld a, $0a
    ld [$de2c], a
    ld a, $44
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    or $02
    ldh [rIE], a
    ei
    ret


Call_01f_7166:
    ld a, [$df12]
    sub $03
    ld [$de2d], a
    ret


Jump_01f_716f:
    push hl
    ld hl, $df0f
    ld a, [hl]
    or a
    jp nz, Jump_01f_724c

    dec [hl]
    push de
    push bc
    ld a, [$df21]
    ld e, a
    ld a, [$df22]
    ld d, a
    ld l, $00
    ld a, [$df18]
    ld h, a
    ld a, [$df19]
    or a
    jr nz, jr_01f_719b

    ld a, [$df14]
    dec a
    ld b, a

jr_01f_7194:
    ldh a, [rLY]
    cp b
    jr c, jr_01f_7194

    jr jr_01f_71cf

jr_01f_719b:
    ld a, [$df10]
    sub $01
    ld c, a
    ld a, [$df12]
    dec a
    ld b, a

jr_01f_71a6:
    ldh a, [rLY]
    cp b
    jr c, jr_01f_71a6

jr_01f_71ab:
    ldh a, [rLY]
    ld b, a

jr_01f_71ae:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_71ae

jr_01f_71b4:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_71b4

    ld a, c
    sub b
    ldh [rSCY], a
    ld a, [$df1d]
    dec a
    ld b, a
    ldh a, [rLY]
    cp b
    jr c, jr_01f_71ab

    ld a, [$df1f]
    cp $02
    jr z, jr_01f_7221

jr_01f_71cf:
    ld a, [$df1a]
    or a
    jr z, jr_01f_71f7

    ld b, a
    ld a, [$df11]
    ld c, a

jr_01f_71da:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_71da

jr_01f_71e0:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_71e0

    ld a, h
    ldh [rSCY], a
    ld a, c
    ldh [rBGP], a
    add hl, de
    dec b
    jr nz, jr_01f_71da

    ld a, [$df1f]
    cp $03
    jr z, jr_01f_7221

jr_01f_71f7:
    ld a, [$df1b]
    or a
    jr z, jr_01f_7221

    ld a, [$df10]
    sub $01
    ld c, a
    ld a, [$df13]
    dec a
    dec a
    ld d, a

jr_01f_7209:
    ldh a, [rLY]
    cp d
    jr nc, jr_01f_7221

    ld b, a

jr_01f_720f:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_720f

jr_01f_7215:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_7215

    ld a, c
    sub b
    ldh [rSCY], a
    jr jr_01f_7209

jr_01f_7221:
    ld a, [$d7d2]
    ld d, a
    ld a, [$df2f]
    dec a
    jr nz, jr_01f_722f

    ld a, [$df30]
    ld d, a

jr_01f_722f:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01f_722f

jr_01f_7235:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01f_7235

    ld a, [$de96]
    ldh [rBGP], a
    ld a, d
    ldh [rSCY], a
    call Call_01f_7166
    pop bc
    pop de
    xor a
    ld [$df0f], a

Jump_01f_724c:
    pop hl
    ret


Call_01f_724e:
    ld a, [$df13]
    ld hl, $df12
    sub [hl]
    ld [$df23], a
    ld a, [$df17]
    ld hl, $df16
    sub [hl]
    ld [$df24], a
    ld b, a
    ld a, [$df15]
    ld hl, $df14
    sub [hl]
    ld [$df25], a
    ld e, a
    ld d, $00
    ld l, d
    ld h, b
    call Call_01f_4192
    ld a, l
    ld [$df26], a
    ld a, h
    ld [$df27], a
    ld a, [$df25]
    ld l, $00
    ld h, a
    ld a, [$df24]
    ld e, a
    ld d, l
    call Call_01f_4192
    ld a, l
    ld [$df28], a
    ld a, h
    ld [$df29], a
    ld a, [$df16]
    ld hl, $df14
    sub [hl]
    ld [$df20], a
    ld a, [$df12]
    ld hl, $df14
    sub [hl]
    jr nc, jr_01f_72a7

    xor a

jr_01f_72a7:
    ld [$df2b], a
    ld a, [$df14]
    ld hl, $df12
    sub [hl]
    jr nc, jr_01f_72b4

    xor a

jr_01f_72b4:
    ld [$df2c], a
    ld a, [$df13]
    ld hl, $df15
    sub [hl]
    jr nc, jr_01f_72c1

    xor a

jr_01f_72c1:
    ld [$df2d], a
    ld a, [$df2b]
    or a
    jr z, jr_01f_72d9

    ld e, a
    ld d, $00
    ld a, [$df26]
    ld c, a
    ld a, [$df27]
    ld b, a
    call Call_000_0285
    ld a, h

jr_01f_72d9:
    ld [$df2a], a
    ld b, a
    ld a, [$df2b]
    sub b
    cpl
    inc a
    ld b, a
    ld a, [$df20]
    add b
    ld [$df18], a
    xor a
    ld [$df1f], a
    ld [$df2e], a
    ld a, [$df2c]
    ld b, $02
    call Call_01f_7365
    ld e, a
    ld a, [$df14]
    ld hl, $df12
    cp [hl]
    jr nc, jr_01f_7305

    ld a, [hl]

jr_01f_7305:
    ld b, a
    ld a, [$df15]
    ld hl, $df13
    cp [hl]
    jr c, jr_01f_7310

    ld a, [hl]

jr_01f_7310:
    sub b
    jr nc, jr_01f_7316

    xor a
    jr jr_01f_731b

jr_01f_7316:
    ld b, $03
    call Call_01f_7365

jr_01f_731b:
    ld d, a
    push de
    ld a, [$df2d]
    ld b, $04
    call Call_01f_7365
    di
    ld [$df1b], a
    pop de
    ld a, e
    ld [$df19], a
    ld a, d
    ld [$df1a], a
    ld a, [$df12]
    ld [$df1c], a
    ld e, a
    ld a, [$df19]
    add e
    ld [$df1d], a
    ld e, a
    ld a, [$df1a]
    add e
    ld [$df1e], a
    ld a, [$df1f]
    cp $02
    jr nz, jr_01f_7357

    ld a, [$df13]
    sub $01
    ld [$df1d], a

jr_01f_7357:
    ei
    ld hl, $df27
    ld a, [hl-]
    dec a
    ld [$df22], a
    ld a, [hl]
    ld [$df21], a
    ret


Call_01f_7365:
    ld c, a
    ld a, [$df23]
    ld d, a
    ld hl, $df2e
    ld a, c
    add [hl]
    jr c, jr_01f_7378

    cp d
    jr nc, jr_01f_7378

    ld [hl], a
    ld a, c
    or a
    ret


jr_01f_7378:
    ld a, d
    sub [hl]
    ld c, a
    ld [hl], d
    ld hl, $df1f
    ld a, [hl]
    or a
    jr nz, jr_01f_7384

    ld [hl], b

jr_01f_7384:
    ld a, c
    scf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
