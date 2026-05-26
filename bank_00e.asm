; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    jp Jump_00e_4e19


    jp Jump_00e_4ed0


    jp Jump_00e_51ae


    jp Jump_00e_52bf


    jp Jump_00e_5c67


    jp Jump_00e_6332


    jp Jump_00e_6dcf


    jp Jump_00e_7cd9


Call_00e_4018:
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


Call_00e_4030:
Jump_00e_4030:
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


Call_00e_404a:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_00e_405e:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_00e_4071

    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_00e_4077

    dec [hl]

jr_00e_4071:
    ld a, [$d773]
    ld d, a
    jr jr_00e_40b8

jr_00e_4077:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00e_407d:
    ld a, [hl+]
    or a
    jr nz, jr_00e_4088

    ld d, $00
    call Call_00e_40b8
    scf
    ret


jr_00e_4088:
    cp $fe
    jr nz, jr_00e_40aa

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $d778
    res 0, [hl]
    push hl
    call Call_00e_419e
    pop hl
    bit 0, [hl]
    pop hl
    jr nz, jr_00e_4071

    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a
    jr jr_00e_407d

jr_00e_40aa:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_00e_40b8:
jr_00e_40b8:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Call_00e_40c5:
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
    call Call_00e_4165
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
    push de
    ld a, [$df01]
    ld b, a
    ld c, $04
    ld de, $ff8a
    call Call_000_02b8
    pop de
    ld hl, $ff8a
    ld a, [hl+]
    ld [$d8a7], a
    ld a, [hl+]
    ld [$d8a9], a
    ld a, [hl+]
    ld [$d8a8], a
    ld a, [hl+]
    ld [$d8aa], a
    call Call_00e_414e
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


Call_00e_414e:
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


Call_00e_4165:
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


Call_00e_4173:
    ld hl, $d722
    ld a, [hl]
    add e
    cp $09
    jr c, jr_00e_4191

    cp $97
    jr nc, jr_00e_4191

    ld [hl], a
    ld d, $00
    bit 7, e
    jr z, jr_00e_4188

    dec d

jr_00e_4188:
    ld hl, $d70d
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a

jr_00e_4191:
    ret


Call_00e_4192:
    ld hl, $d834
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_00e_419e:
    push de
    ret


Call_00e_41a0:
    jp hl


Call_00e_41a1:
    ld a, [hl]
    ld [hl], $40
    jp Jump_000_01a7


Jump_00e_41a7:
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_00e_41b0:
    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a
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
    jr nc, jr_00e_41d4

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_00e_41d4:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $02
    add c
    ld l, a

jr_00e_41de:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_00e_41fd

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
    call Call_00e_419e
    pop bc
    pop hl
    jr jr_00e_421d

jr_00e_41fd:
    cp $ff
    jr nz, jr_00e_4209

    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a
    jr jr_00e_421d

jr_00e_4209:
    cp $fe
    jr nz, jr_00e_4225

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
    jr jr_00e_4226

jr_00e_421d:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_00e_41de

jr_00e_4225:
    or a

jr_00e_4226:
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


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    jp Jump_000_0246


Call_00e_423f:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

Call_00e_4243:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_00e_4247:
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
    jr nz, jr_00e_4247

    ret


Call_00e_425c:
Jump_00e_425c:
    ld d, a

jr_00e_425d:
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
    jr nz, jr_00e_425d

    ret


    sla e
    sla e
    sla e
    sla d
    sla d
    sla d
    ld a, d
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, e
    srl a
    srl a
    srl a
    or l
    ld l, a
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ret


Call_00e_4295:
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00e_4299:
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
    jr z, jr_00e_42ae

    dec [hl]
    xor a
    sub $01
    ret


jr_00e_42ae:
    inc l

jr_00e_42af:
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
    jr nz, jr_00e_42c2

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00e_42c2:
    cp $ff
    jr nz, jr_00e_42d2

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00e_42af

jr_00e_42d2:
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
    jr z, jr_00e_42fc

    dec [hl]
    xor a
    sub $01
    ret


jr_00e_42fc:
    inc l

jr_00e_42fd:
    push hl
    push de
    ld e, [hl]
    ldh a, [$ff8a]
    call Call_00e_4494
    pop de
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    cp $fe
    jr nz, jr_00e_4314

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00e_4314:
    cp $ff
    jr nz, jr_00e_4324

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00e_42fd

jr_00e_4324:
    inc [hl]
    dec l
    ld [hl], a
    ld a, $01
    ldh [$ff8d], a
    inc de
    xor a
    inc a
    ret


Call_00e_432f:
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00e_4333:
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
    jr z, jr_00e_434b

    dec [hl]
    xor a
    sub $01
    ret


jr_00e_434b:
    inc l

jr_00e_434c:
    ld a, [hl]
    add a
    add [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_00e_4385
    cp $fe
    jr nz, jr_00e_4361

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00e_4361:
    cp $ff
    jr nz, jr_00e_4371

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00e_434c

jr_00e_4371:
    inc [hl]
    dec l
    ld [hl], a
    ld a, $01
    ldh [$ff8d], a
    call Call_00e_4385
    ldh [$ff8a], a
    call Call_00e_4385
    ldh [$ff8b], a
    xor a
    inc a
    ret


Call_00e_4385:
    push bc
    ldh a, [$ff91]
    ld b, a
    call Call_00e_438e
    pop bc
    ret


Call_00e_438e:
    push hl
    ld l, e
    ld h, d
    call Call_000_028e
    inc de
    pop hl
    ret


    ld hl, $c204
    call Call_00e_43a1
    ret c

    ld hl, $c218

Call_00e_43a1:
    ld a, [hl+]
    or a
    ret z

    ldh a, [$ff8a]
    sub [hl]
    cp $e0
    jr c, jr_00e_43ac

    xor a

jr_00e_43ac:
    ld c, a
    inc l
    ldh a, [$ff8b]
    sub [hl]
    cp $e0
    jr c, jr_00e_43b6

    xor a

jr_00e_43b6:
    ld e, a
    inc l
    ldh a, [$ff8c]
    sub [hl]
    cp $e0
    jr c, jr_00e_43c0

    xor a

jr_00e_43c0:
    ld b, a
    inc l
    ldh a, [$ff8d]
    sub [hl]
    ld d, a
    inc l

jr_00e_43c7:
    ld a, [hl+]
    or a
    ret z

    ld [$c22a], a
    ld a, [hl+]
    cp c
    jr c, jr_00e_43dd

    cp e
    jr nc, jr_00e_43dd

    ld a, [hl+]
    cp b
    jr c, jr_00e_43c7

    cp d
    jr c, jr_00e_43e0

    jr jr_00e_43c7

jr_00e_43dd:
    inc l
    jr jr_00e_43c7

jr_00e_43e0:
    ld a, [$c22a]
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $1f
    ldh [$ffa9], a
    ld a, $fe
    add l
    ld l, a
    ld a, [hl]
    ld [$c2c2], a
    scf
    ret


    call Call_000_019e

Call_00e_43f8:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00e_4402:
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
    jr jr_00e_4402

Call_00e_4428:
    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00e_4435:
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
    jr jr_00e_4435

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ldh [$ff8a], a
    jr nz, jr_00e_446b

    inc d

jr_00e_446b:
    ld a, d
    ldh [$ff8b], a
    ld de, $0000
    ld a, $18

jr_00e_4473:
    push af
    sla l
    rl h
    rl c
    rl e
    rl d
    ldh a, [$ff8a]
    add e
    ld b, a
    ldh a, [$ff8b]
    adc d
    bit 7, a
    jr nz, jr_00e_448f

    ld e, b
    ld d, a
    inc l
    jr nz, jr_00e_448f

    inc h

jr_00e_448f:
    pop af
    dec a
    jr nz, jr_00e_4473

    ret


Call_00e_4494:
    ld hl, $0000
    ld d, h
    rla
    jr nc, jr_00e_449c

    add hl, de

jr_00e_449c:
    add hl, hl
    rla
    jr nc, jr_00e_44a1

    add hl, de

jr_00e_44a1:
    add hl, hl
    rla
    jr nc, jr_00e_44a6

    add hl, de

jr_00e_44a6:
    add hl, hl
    rla
    jr nc, jr_00e_44ab

    add hl, de

jr_00e_44ab:
    add hl, hl
    rla
    jr nc, jr_00e_44b0

    add hl, de

jr_00e_44b0:
    add hl, hl
    rla
    jr nc, jr_00e_44b5

    add hl, de

jr_00e_44b5:
    add hl, hl
    rla
    jr nc, jr_00e_44ba

    add hl, de

jr_00e_44ba:
    add hl, hl
    rla
    jr nc, jr_00e_44bf

    add hl, de

jr_00e_44bf:
    ret


    ld a, [hl]
    add e
    ld [hl], a
    xor e
    bit 7, a
    ret nz

    ld a, [hl]
    bit 7, a
    jr z, jr_00e_44ce

    cpl
    inc a

jr_00e_44ce:
    cp d
    ccf
    ret


    call Call_00e_45bc
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
    call Call_00e_4675
    pop de

Call_00e_44f3:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_00e_4515

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
    jr nz, jr_00e_450b

    inc a

jr_00e_450b:
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


Call_00e_4515:
Jump_00e_4515:
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
    jr z, jr_00e_4552

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_00e_4548

    inc a

jr_00e_4548:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_00e_4552:
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


Call_00e_4566:
    ld a, $1d
    add c
    ld l, a
    jr jr_00e_4570

Call_00e_456c:
    ld a, $1f
    add c
    ld l, a

jr_00e_4570:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_00e_457a

    inc d

jr_00e_457a:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_00e_457e:
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


Call_00e_4590:
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


Call_00e_45a2:
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


Call_00e_45bc:
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
    jr nz, jr_00e_45d7

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_00e_45d7

    ld de, $0350

jr_00e_45d7:
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
    jr nz, jr_00e_4611

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_00e_45fc

    xor a

jr_00e_45fc:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_00e_4611

    ld a, [de]
    add b
    cp $d0
    jr c, jr_00e_460a

    xor a

jr_00e_460a:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_00e_4611:
    or a
    ret


    push de
    call Call_00e_45bc
    pop de
    call Call_00e_462c
    ret z

    bit 0, a
    jr z, jr_00e_4624

    ld a, $1d
    jr jr_00e_4626

jr_00e_4624:
    ld a, $1f

jr_00e_4626:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00e_462c:
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


Call_00e_4675:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_00e_4686

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_00e_4687

jr_00e_4686:
    inc d

jr_00e_4687:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Jump_00e_468d:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_00e_469d

    cp $90
    jr nc, jr_00e_46b2

jr_00e_469d:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_00e_46aa

    cp $c0
    jr nc, jr_00e_46b2

jr_00e_46aa:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_00e_46b2:
    xor a
    ld b, a
    ret


Call_00e_46b5:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $fc
    ret nc

    cp $e0
    jr c, jr_00e_46c5

    ld b, $00
    scf
    ret


jr_00e_46c5:
    ld b, $01
    cp $a4
    ccf
    ret


    ld e, b
    push de
    call Call_00e_46b5
    pop de
    ret nc

    ld a, e
    xor b
    and $01
    ret nz

    scf
    ret


Call_00e_46d9:
    call Call_00e_4d91
    ld a, $01
    ld [$ca03], a
    ld [$c2c4], a
    rst $08
    nop
    rst $08
    ld d, $69
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    ld a, $01
    ld b, $0c
    call Call_000_01cb
    pop hl
    ld c, l
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    cp [hl]
    ld a, $00
    jr nc, jr_00e_4709

    inc a

jr_00e_4709:
    ld [$d703], a
    ld a, $01
    ld [$d74a], a
    ld [$de29], a
    ld [$d76e], a
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    ld a, $01
    ld [$c3e9], a
    ret


Call_00e_4723:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ret


    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    ret z

    jp Jump_000_016b


    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    ret nz

    jp Jump_000_016b


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
    jr jr_00e_475d

    ld a, $1e
    add c
    ld l, a

jr_00e_475d:
    ld a, [hl-]
    bit 7, a
    jr nz, jr_00e_476b

    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret c

    ld [hl], d
    dec l
    ld [hl], e
    ret


jr_00e_476b:
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_00e_4775

    inc d

jr_00e_4775:
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret nc

    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_00e_477e:
    xor a
    jr jr_00e_4783

Call_00e_4781:
    ld a, $01

jr_00e_4783:
    ld l, $00
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
    jr nz, jr_00e_47a2

    inc de

jr_00e_47a2:
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


Call_00e_47b5:
    push de
    call Call_00e_4781
    pop de
    jr c, jr_00e_47ca

jr_00e_47bc:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_00e_4781
    pop de
    jr nc, jr_00e_47bc

    or a
    ret


jr_00e_47ca:
    push de
    call Call_00e_477e
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_00e_47ca

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

jr_00e_47ef:
    push de
    call Call_00e_462c
    pop de
    ret z

    ld a, $20
    add c
    ld l, a
    dec [hl]
    ret z

    jr jr_00e_47ef

Call_00e_47fd:
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


Call_00e_4839:
    push bc
    call Call_000_0201
    pop bc

Call_00e_483e:
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


    ld a, $06
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_00e_48d6

    ld d, $08
    call Call_00e_48e7
    call Call_000_025e

jr_00e_48d6:
    ld a, $06
    add c
    ld l, a
    bit 0, [hl]
    ret z

    ld d, $08
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_00e_48e7:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


    ld a, $17
    add c
    ld l, a
    ld b, [hl]

jr_00e_48f4:
    ld a, [de]
    cp $ff
    jr z, jr_00e_48ff

    cp b
    jr z, jr_00e_4907

    inc de
    jr jr_00e_48f4

jr_00e_48ff:
    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    scf
    ret


jr_00e_4907:
    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    or a
    ret


Call_00e_490f:
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
    jr c, jr_00e_4947

    cp $97
    jr nc, jr_00e_4947

    ld [hl], a
    ld d, $00
    bit 7, e
    jr z, jr_00e_493e

    dec d

jr_00e_493e:
    ld hl, $d70d
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a

jr_00e_4947:
    ld h, b
    ret


    call Call_00e_4964
    ret nc

    push af
    call Call_00e_490f
    pop af
    ret


Call_00e_4953:
    push hl
    call Call_00e_496f
    pop hl
    ret nc

    ret z

    push af
    ldh a, [$ff9b]
    ld e, a
    ld d, l
    call Call_000_026d
    pop af
    ret


Call_00e_4964:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a

Call_00e_496f:
    ldh a, [$ff9b]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d747]
    cp b
    jr c, jr_00e_49af

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_00e_49af

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_00e_499f

    inc a
    cp b
    jr nz, jr_00e_49af

    xor a
    scf
    ret


jr_00e_499f:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_00e_49af

    xor a
    inc a
    scf
    ret


jr_00e_49af:
    or a
    ret


    push bc
    call Call_00e_49bf
    pop bc
    ld a, $00
    adc a
    ld e, a
    ld a, c
    add b
    ld l, a
    ld [hl], e
    ret


Call_00e_49bf:
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
    jr nz, jr_00e_4a00

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_00e_49eb

    xor a

jr_00e_49eb:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_00e_4a00

    ld a, [de]
    add b
    cp $d0
    jr c, jr_00e_49f9

    xor a

jr_00e_49f9:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_00e_4a00:
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
    ld a, [$d745]
    ld d, a
    call Call_00e_4a7e
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d745]
    ld d, a
    call Call_00e_4a7e
    ret c

    ld a, [$d742]
    ld e, a
    ld a, [$d744]
    ld d, a
    call Call_00e_4a7e
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d744]
    ld d, a

Call_00e_4a7e:
    ldh a, [$ff8a]
    add e
    ld e, a
    ldh a, [$ff8b]
    add d
    ld d, a
    jp Jump_000_0165


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


Call_00e_4a98:
    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ret


    ld a, $0a
    add c
    ld l, a
    push hl
    add $02
    ld e, a
    add $11
    ld l, a
    ld b, [hl]
    inc l
    ld d, [hl]
    ld l, e
    ld a, [hl]
    add b
    ld [hl], a
    pop hl
    ld a, [hl]
    adc d
    ld [hl+], a
    bit 7, d
    ld d, $00
    jr z, jr_00e_4abf

    dec d

jr_00e_4abf:
    ld a, [hl]
    adc d
    ld [hl], a
    ret


    ld a, e
    ldh [$ff8a], a
    ld a, d
    ldh [$ff8b], a
    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00e_4ad2

    inc de

jr_00e_4ad2:
    ld a, [de]
    ld e, a
    ld d, $00
    bit 7, a
    jr z, jr_00e_4adb

    dec d

jr_00e_4adb:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $0a
    add c
    ld l, a
    push hl
    add $02
    ld e, a
    add $11
    ld l, a
    ld b, [hl]
    inc l
    ld d, [hl]
    ld l, e
    ld a, [hl]
    add b
    ld [hl], a
    pop hl
    ld a, [hl+]
    adc d
    ldh [$ff8e], a
    ld e, a
    bit 7, d
    ld d, $00
    jr z, jr_00e_4b00

    dec d

jr_00e_4b00:
    ld a, [hl]
    adc d
    ldh [$ff8f], a
    ld d, a
    ldh a, [$ff8c]
    add e
    ld e, a
    ldh [$ffa3], a
    ldh a, [$ff8d]
    adc d
    ld d, a
    ldh [$ffa4], a
    inc de
    ld a, [$d7d7]
    sub e
    ld a, [$d7d8]
    sbc d
    jr nc, jr_00e_4b20

    ld a, $01
    jr jr_00e_4b57

jr_00e_4b20:
    ld a, $0f
    add c
    ld l, a
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    inc de
    inc de
    ld a, [de]
    add [hl]
    ldh [$ffa6], a
    inc de
    ld a, [de]
    add [hl]
    ldh [$ffa5], a

jr_00e_4b35:
    ld l, c
    push hl
    call Call_00e_4b5a
    pop hl
    ld c, l
    ld a, $01
    jr c, jr_00e_4b57

    ldh a, [$ffa5]
    ld b, a
    ldh a, [$ffa6]
    add $08
    ldh [$ffa6], a
    cp b
    jr c, jr_00e_4b35

    ld a, $0a
    add c
    ld l, a
    ldh a, [$ff8e]
    ld [hl+], a
    ldh a, [$ff8f]
    ld [hl+], a
    xor a

jr_00e_4b57:
    ldh [$ffa9], a
    ret


Call_00e_4b5a:
    call Call_000_0273
    ld b, a
    ld [$d74e], a
    ld a, $00
    add b
    ld l, a
    ld a, $da
    adc $00
    ld h, a
    ld a, [hl]
    and $03
    jr z, jr_00e_4b81

    cp $03
    jr z, jr_00e_4b7f

    cp $02
    ldh a, [$ffa6]
    jr nz, jr_00e_4b7b

    xor $08

jr_00e_4b7b:
    and $08
    jr z, jr_00e_4b81

jr_00e_4b7f:
    scf
    ret


jr_00e_4b81:
    or a
    ret


    ld l, c
    push hl
    push de
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
    ldh [$ff8a], a
    ld a, $17
    add c
    ld l, a
    ld b, [hl]
    add $0d
    ld l, a
    ld e, [hl]
    ld l, b
    ld h, $00
    ld d, h
    add hl, hl
    add hl, de
    add hl, hl
    pop de
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ldh a, [$ff8a]
    call Call_00e_4428
    pop hl
    ld c, l
    ret


    ld l, c
    push hl
    push de
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
    ldh [$ff8a], a
    ld a, $17
    add c
    ld l, a
    ld b, [hl]
    add $0d
    ld l, a
    ld e, [hl]
    ld l, b
    ld h, $00
    ld d, h
    add hl, hl
    add hl, de
    add hl, hl
    pop de
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    ldh a, [$ff8a]
    call Call_00e_4428
    pop hl
    ld c, l
    ret


Call_00e_4bff:
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
    ld [hl], $a2
    inc l
    ld [hl], $4c
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
    call Call_00e_44f3
    ld a, $2f
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 2, a
    jr z, jr_00e_4c85

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

jr_00e_4c85:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    push af
    push hl
    call Call_00e_4cd3
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
    jr z, jr_00e_4cab

    dec b
    jr nz, jr_00e_4cd0

jr_00e_4ca8:
    ld b, $00
    ret


jr_00e_4cab:
    ld a, [$ccc2]
    or a
    jr nz, jr_00e_4ca8

    ld a, $32
    add c
    ld l, a
    ld a, [$deaf]
    and [hl]
    jr nz, jr_00e_4cd0

    ld a, $2f
    add c
    ld l, a
    bit 1, [hl]
    push hl
    call nz, Call_00e_45bc
    pop hl
    bit 0, [hl]
    call nz, Call_00e_45a2
    call Call_00e_4cd3
    jr c, jr_00e_4ca8

jr_00e_4cd0:
    jp Jump_00e_468d


Call_00e_4cd3:
    ld a, $2b
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [hl]
    or a
    jr nz, jr_00e_4ce4

    call Call_000_015f
    or a
    ret


jr_00e_4ce4:
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


Call_00e_4d07:
    ld a, $26
    add c
    ld l, a
    inc de
    inc de
    inc de
    inc de
    ld a, e
    add [hl]
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    cp $ff
    ret


Call_00e_4d1a:
    xor a
    ld [$ccc2], a
    ld [$ccc3], a
    ld [$dd00], a
    ld [$dd01], a
    ld [$ccc1], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
    add $0f
    ld l, a
    ld [hl], $01
    add $f5
    ld l, a
    ld [hl], $80
    add $02
    ld l, a
    ld e, [hl]
    ld [hl], $b0
    add $2c
    ld l, a
    ld [hl], e
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, [$d1e0]
    or a
    call nz, Call_000_0222
    ld a, $ff
    ld [$d74a], a
    ld [$de34], a
    ld de, $4d65
    call Call_00e_44f3
    ld a, $01
    ld [$d703], a
    ret


    nop
    nop
    nop
    inc bc

Call_00e_4d69:
    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_00e_4d85

    add $02
    ld [$dd01], a
    and $07
    ret nz

    ld a, [$deea]
    or a
    ret nz

    rst $08
    rla
    ret


jr_00e_4d85:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $02
    ld [$dd00], a
    ret


Call_00e_4d91:
    ld a, [$dd00]
    cp $02
    ret nz

    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    sla a
    sla a
    sla a
    ld [$dd01], a
    ret


Call_00e_4da6:
    ld a, [$ccc1]
    or a
    jr nz, jr_00e_4db9

    ld a, $01
    ld [$ccc1], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $0a
    xor a
    ret


jr_00e_4db9:
    call Call_00e_462c
    and $02
    ret


Call_00e_4dbf:
    push hl
    push bc
    call Call_00e_4da6
    pop bc
    pop hl
    or a
    jr z, jr_00e_4de0

    ld a, $17
    add c
    ld l, a
    ld [hl], b
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_00e_4de6

jr_00e_4de0:
    ld b, l
    ld a, $17
    add c
    ld l, a
    ld [hl], b

jr_00e_4de6:
    call Call_000_025e
    ld b, $01
    ret


Call_00e_4dec:
    push de
    call Call_00e_47fd
    pop de
    call Call_00e_4d07
    jr nz, jr_00e_4de6

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_00e_4e14

    ld a, $01
    ld [$dee9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$d74a], a
    call Call_000_015c
    jr jr_00e_4de6

jr_00e_4e14:
    call Call_00e_4d69
    jr jr_00e_4de6

Jump_00e_4e19:
    ret


    ld hl, sp+$18
    db $fd
    dec de
    ld h, h
    ld bc, $c800
    nop
    nop
    ld a, [$0002]
    and b
    nop
    nop
    or h
    ld bc, $ff00
    ret nz

    cp $b0
    db $fc
    ld [hl], b
    cp $00
    cp $30
    cp $00
    rst $38
    ld l, $4e
    ld [hl-], a
    ld c, [hl]
    ld [hl], $4e
    xor $10
    ld a, [$fa05]
    dec b
    ld d, l
    ld [$3336], sp
    ld d, l
    ld e, [hl]
    ld [hl], $89
    ld d, l
    or h
    ld [hl], $df
    rlca
    nop
    inc bc
    inc b
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
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
    cp $c0
    ld [$0907], sp
    ld bc, $1821
    nop

Jump_00e_4ed0:
    ld a, b
    dec b
    jp z, Jump_00e_4f62

    dec b
    jr z, jr_00e_4ee1

    dec b
    jp z, Jump_00e_4f84

    dec b
    ret z

    or a
    jr z, jr_00e_4f14

jr_00e_4ee1:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc hl
    ld a, [hl+]
    ldh [$ff8b], a
    ld de, $4e62
    ld b, $0e
    call Call_000_02d6
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
    res 0, [hl]
    ld a, $01
    ld [$c3e9], a
    ld [$cc95], a
    ret


jr_00e_4f14:
    xor a
    ld [$cc95], a
    ld b, $34
    ld a, $0c
    call Call_000_01b0
    ld a, $0d
    add c
    ld l, a
    ld [hl], $84
    add $02
    ld l, a
    ld [hl], $15
    call Call_000_025e
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    ld a, $2c
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $1e
    inc l
    ld [hl], $00
    ld a, $35
    add c
    ld l, a
    call Call_00e_432f
    ld a, $08
    add c
    ld l, a
    ld e, [hl]
    add $2d
    ld l, a
    ld [hl], e
    ld a, $14
    add c
    ld l, a
    set 1, [hl]
    add $03
    ld l, a
    ld [hl], $06
    ld de, $511f
    jp Jump_000_01dd


Jump_00e_4f62:
    ld a, [$deaf]
    or a
    jp nz, Jump_00e_4f84

    call Call_00e_4f99
    ld a, $2b
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00e_4f79

    call Call_00e_5079
    jr jr_00e_4f84

jr_00e_4f79:
    call Call_000_01e6
    jr nz, jr_00e_4f84

    or a
    jr z, jr_00e_4f84

    call nz, Call_00e_5066

Jump_00e_4f84:
jr_00e_4f84:
    call Call_00e_4ff6
    ld a, $21
    add c
    ld l, a
    bit 1, [hl]
    ld a, $1b
    jr z, jr_00e_4f93

    ld a, $06

jr_00e_4f93:
    ld [$de96], a
    ld b, $01
    ret


Call_00e_4f99:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00e_4fa3

    dec [hl]
    ret


jr_00e_4fa3:
    ld a, $2c
    add c
    ld l, a
    ld de, $0050
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld b, a
    adc d
    ld [hl], a
    ld a, b
    sub [hl]
    cpl
    inc a
    ld e, a
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    cp $98
    jr nc, jr_00e_4fc1

    add e
    ld [hl], a

jr_00e_4fc1:
    ld a, [$d74b]
    cp $01
    jr nz, jr_00e_4fe1

    ld a, [$d722]
    cp $28
    jr c, jr_00e_4fe1

    cp $69
    jr nc, jr_00e_4fe1

    ld a, [$c2cc]
    bit 7, a
    jr nz, jr_00e_4fe1

    ld a, [$d725]
    add e
    ld [$d725], a

jr_00e_4fe1:
    ld a, $2e
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00e_4ff5

    ld [hl], $06
    inc l
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_00e_4ff5

    ld [hl], $00

jr_00e_4ff5:
    ret


Call_00e_4ff6:
    ld a, $00
    ldh [$ffab], a
    ld [$d3ea], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    call Call_000_019e
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    ld de, $5111
    call Call_000_0171
    ld a, e
    ld [$ce53], a
    ld a, d
    ld [$ce54], a
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    add $00
    ld e, a
    ld a, $2d
    add c
    ld l, a
    ld c, [hl]
    ld hl, $4e46
    ld b, $06

jr_00e_5031:
    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl+]
    add c
    ldh [$ff9c], a
    add $08
    cp e
    jr nc, jr_00e_505a

    push hl
    push de
    push bc
    ldh a, [$ff9b]
    ld c, a
    ldh a, [$ff9c]
    ld b, a
    ld hl, $512d
    call Call_000_01bc
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    call Call_00e_43f8
    pop bc
    pop de
    pop hl

jr_00e_505a:
    dec b
    jr nz, jr_00e_5031

    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ret


Call_00e_5066:
    ld l, c
    push hl
    ld hl, $4e52
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    pop hl
    ld c, l
    ret


Call_00e_5079:
    ld a, $35
    add c
    ld l, a
    ld de, $4e1e
    ld b, $0e
    call Call_00e_4333
    ret c

    ldh a, [$ff8a]
    ld [$cc2b], a
    ld l, c
    push hl
    call Call_00e_50a0
    pop hl
    ld c, l
    ret


    ret


    ld d, b
    ld b, a
    dec b
    nop
    rra
    ld d, c
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld c, $c4

Call_00e_50a0:
    ld de, $4e40
    ld a, $93
    ld [$cc00], a
    ld a, $50
    ld [$cc01], a
    call Call_00e_4839
    ret c

    ld a, [$cc2b]
    ld de, $4e3a
    call Call_000_0171
    call Call_00e_4515
    ld a, $2a
    add c
    ld l, a
    ld [hl], $08
    ld de, $511f
    jp Jump_000_01dd


    dec b
    jr z, jr_00e_50d0

    dec b
    jr nz, jr_00e_510e

    ret


jr_00e_50d0:
    ld a, [$deaf]
    or a
    jr nz, jr_00e_510e

    ld a, [$cc95]
    or a
    jr z, jr_00e_50e3

    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    ret


jr_00e_50e3:
    ld de, $5117
    call Call_000_015f
    call Call_00e_4723
    call Call_000_01e6
    jr z, jr_00e_50f6

    call Call_00e_45a2
    jr jr_00e_510e

jr_00e_50f6:
    ld de, $4e42
    call Call_00e_462c
    jr z, jr_00e_510e

    bit 0, a
    jr z, jr_00e_5107

    call Call_00e_4566
    ldh a, [$ffa9]

jr_00e_5107:
    bit 1, a
    jr z, jr_00e_510e

    call Call_00e_456c

jr_00e_510e:
    jp Jump_00e_468d


    ld sp, $4251
    ld d, c
    ld d, e
    ld d, c
    rra
    ld d, c
    ld [$0403], sp
    inc bc
    dec b
    rst $38
    dec l
    ld d, c
    ld a, $51
    ld c, a
    ld d, c
    ld h, b
    ld d, c
    ld [hl], l
    ld d, c
    adc d
    ld d, c
    ld a, [de]
    ld c, [hl]
    db $f4
    dec bc
    db $fc
    inc bc
    db $fc
    db $f4
    cp e
    stop
    ld [$10bc], sp
    nop
    ld [$10bd], sp
    add b
    db $f4
    dec bc
    db $fc
    inc bc
    db $fc
    db $f4
    cp l
    jr nc, jr_00e_5147

jr_00e_5147:
    ld [$30bc], sp
    nop
    ld [$30bb], sp
    add b
    db $f4
    dec bc
    db $fc
    inc bc
    db $fc
    db $f4
    cp [hl]
    stop
    ld [$10bf], sp
    nop
    ld [$30be], sp
    add b
    ld sp, hl
    ld b, $f9
    ld b, $f8
    ld hl, sp+$05
    stop
    ld [$1006], sp
    ld [$07f8], sp
    stop
    ld [$1008], sp
    add b
    ld a, [$f705]
    ld b, $f7
    ld hl, sp+$09
    stop
    ld [$100a], sp
    ld [$0bf8], sp
    stop
    ld [$100c], sp
    add b
    ld hl, sp+$07
    ei
    ld b, $f9
    ld hl, sp+$0d
    stop
    ld [$100e], sp
    ld [$0ff8], sp
    stop
    ld [$1010], sp
    add b
    add hl, bc
    ld bc, $0301
    db $10
    rrca
    rrca
    nop
    ld [$0107], sp
    nop
    ld [hl+], a
    ld b, a
    ld b, d

Jump_00e_51ae:
    ld a, b
    dec b
    jr z, jr_00e_520d

    dec b
    jr z, jr_00e_51be

    dec b
    jp z, Jump_00e_5221

    dec b
    ret z

    or a
    jr z, jr_00e_51ee

jr_00e_51be:
    ld d, $18
    call Call_00e_51e2
    ld d, $28
    call Call_00e_51e2
    ld d, $38
    call Call_00e_51e2
    ld l, c
    push hl
    ld hl, $519f
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    pop hl
    ld c, l
    ld b, $00
    ret


Call_00e_51e2:
    ld l, c
    push hl
    ld e, $98
    ld a, $04
    call Call_000_01cb
    pop hl
    ld c, l
    ret


jr_00e_51ee:
    ld a, $14
    add c
    ld l, a
    set 1, [hl]
    add $f9
    ld l, a
    ld [hl], $98
    add $02
    ld l, a
    ld [hl], $28
    call Call_000_025e
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld de, $5224
    jp Jump_000_01dd


jr_00e_520d:
    ld a, [$deaf]
    or a
    jp nz, Jump_00e_5221

    ld a, [$d141]
    cp $80
    jr nz, jr_00e_5221

    ld a, $19
    add c
    ld l, a
    res 1, [hl]

Jump_00e_5221:
jr_00e_5221:
    ld b, $01
    ret


    ld h, $52
    ld hl, sp+$07
    add sp, $18
    nop
    nop
    nop
    nop
    sub b
    nop
    jr nz, jr_00e_5232

jr_00e_5232:
    nop
    ld [$0800], sp
    ld [$5adb], sp
    rst $30
    ld e, d
    inc d
    ld e, e
    sbc c
    ld e, e
    or l
    ld e, e
    jp nc, $805b

    db $fd
    nop
    nop
    nop
    nop
    ld b, b
    rst $38
    inc bc
    inc bc
    and a
    ld e, c
    inc b
    inc bc
    call Call_00e_58a5
    rst $38
    ld [hl-], a
    dec d
    ld [$1532], sp
    ld a, [bc]
    ld [hl-], a
    dec d
    inc c
    ld [hl-], a
    rla
    inc b
    ld [hl-], a
    rla
    ld b, $32
    rla
    ld a, [bc]
    ld [hl-], a
    add hl, de
    ld b, $32
    rla
    ld [$1932], sp
    inc b
    ld [hl-], a
    rla
    inc c
    ld [hl-], a
    add hl, de
    ld [$1b32], sp
    ld b, $32
    dec de
    inc b
    ld [hl-], a
    add hl, de
    ld a, [bc]
    ld [hl-], a
    dec de
    ld [$1b32], sp
    ld a, [bc]
    cp $32
    ld b, $08
    ld [hl-], a
    ld b, $0a
    ld [hl-], a
    ld b, $0c
    ld [hl-], a
    inc b
    inc b
    ld [hl-], a
    inc b
    ld b, $32
    inc b
    ld a, [bc]
    ld [hl-], a
    ld [bc], a
    ld b, $32
    inc b
    ld [$0232], sp
    inc b
    ld [hl-], a
    inc b
    inc c
    ld [hl-], a
    ld [bc], a
    ld [$0032], sp
    ld b, $32
    nop
    inc b
    ld [hl-], a
    ld [bc], a
    ld a, [bc]
    ld [hl-], a
    nop
    ld [$0032], sp
    ld a, [bc]
    cp $c4
    ld [$1307], sp
    ld [$5861], sp
    nop

Jump_00e_52bf:
    ld a, b
    dec b
    jp z, Jump_00e_53bd

    dec b
    jr z, jr_00e_52d1

    dec b
    jp z, Jump_00e_5404

    dec b
    ret z

    or a
    jp z, Jump_00e_5357

jr_00e_52d1:
    call Call_00e_4d91
    ld a, $01
    ld [$cb09], a
    ld [$ccc2], a
    ld [$c2c4], a
    rst $08
    nop
    rst $08
    ld d, $69
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    ld a, $01
    ld b, $0c
    call Call_000_01cb
    pop hl
    ld c, l
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    cp [hl]
    ld a, $00
    jr nc, jr_00e_5304

    inc a

jr_00e_5304:
    ld [$d703], a
    ld a, $01
    ld [$d74a], a
    ld [$de29], a
    ld [$d76e], a
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld de, $5bf9
    jr z, jr_00e_5320

    ld de, $5c2a

jr_00e_5320:
    call Call_00e_56e7
    ld a, $35
    add c
    ld l, a
    ld [hl], $f0
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    ld a, $01
    ld [$c3e9], a
    ret


Jump_00e_5335:
    xor a
    ld [$d756], a
    ld a, $01
    ld [$cc49], a
    ld [$ccc2], a
    ld a, $02
    ld [$ded7], a
    ld l, c
    push hl
    ld a, $0e
    call Call_000_01cb
    pop hl
    ld c, l
    ld a, $02
    ld [$de30], a
    ld b, $00
    ret


Jump_00e_5357:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $0a
    ret


Call_00e_535e:
    ld a, $01
    ld [$dd31], a
    ld a, [$def0]
    set 0, a
    ld [$def0], a
    ld l, c
    push hl
    xor a
    ld [$c3c6], a
    ld a, [$c3b5]
    ld [$c3b4], a
    ld a, $05
    call Call_000_020a
    ld a, $73
    call Call_000_020a
    ldh [$ff8a], a
    ld hl, $cb00
    ld bc, $000a
    xor a
    call Call_000_0174
    pop hl
    ld c, l
    ld a, $05
    add c
    ld l, a
    ldh a, [$ff8a]
    ld [hl], a
    ld a, [$d703]
    push af
    call Call_00e_4d1a
    pop af
    ld [$d703], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $80
    ld a, $24
    add c
    ld l, a
    ld [hl], $01
    add $f3
    ld l, a
    ld [hl], $00
    ld a, $b0
    ld [$cb00], a
    ld de, $59a7
    jp Jump_000_01dd


Jump_00e_53bd:
    ld a, $01
    ld [$dd31], a
    ld a, [$deaf]
    or a
    jr z, jr_00e_53d5

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jp c, Jump_00e_5490

    jp Jump_00e_5404


jr_00e_53d5:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_00e_53f6

    or a
    jp z, Jump_00e_5499

    dec a
    jp z, Jump_00e_54a8

    dec a
    jp z, Jump_00e_54d8

    dec a
    jp z, Jump_00e_5534

    dec a
    jp z, Jump_00e_5574

    dec a
    jp z, Jump_00e_5634

jr_00e_53f6:
    ld a, [$d140]
    cp $03
    jp nz, Jump_00e_5490

    call Call_00e_535e
    jp Jump_00e_5490


Jump_00e_5404:
    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9f]
    cpl
    inc a
    add $40
    ld [hl], a
    ld a, $0d
    add c
    ld e, a
    add $17
    ld l, a
    bit 0, [hl]
    ld l, e
    ld b, $cc
    jr z, jr_00e_5420

    ld b, $1c

jr_00e_5420:
    ld a, [$cb00]
    ld e, a
    add b
    ld [hl], a
    ld b, a
    ld a, e
    cpl
    inc a
    ld [$cb01], a
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $04
    jr z, jr_00e_543a

    cp $05
    jr nz, jr_00e_544e

jr_00e_543a:
    ld a, b
    cp $f8
    jr nc, jr_00e_5443

    cp $a8
    jr nc, jr_00e_544e

jr_00e_5443:
    ld a, $13
    add c
    ld l, a
    set 2, [hl]
    call Call_00e_5685
    jr jr_00e_5459

jr_00e_544e:
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    add $0e
    ld l, a
    ld [hl], $00

jr_00e_5459:
    ld a, $19
    add c
    ld e, a
    add $fe
    ld l, a
    ld a, [hl]
    or a
    ld l, e
    jr nz, jr_00e_5469

    set 1, [hl]
    jr jr_00e_546b

jr_00e_5469:
    res 1, [hl]

jr_00e_546b:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_00e_5478

    ld a, $16
    jr jr_00e_5484

jr_00e_5478:
    ld a, $21
    add c
    ld l, a
    bit 1, [hl]
    ld a, $06
    jr nz, jr_00e_5484

    ld a, $1b

jr_00e_5484:
    ld [$de96], a
    call Call_000_025e
    call Call_00e_4d91
    ld b, $01
    ret


Jump_00e_5490:
jr_00e_5490:
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    ld b, $01
    ret


Jump_00e_5499:
    ld b, $00
    ld l, b
    ld de, $54a4
    call Call_00e_4dbf
    jr jr_00e_5490

    ld hl, sp+$08
    db $fc
    inc bc

Jump_00e_54a8:
    ld de, $54d1
    call Call_00e_4dec
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_00e_54ce

    ld a, $0f
    add c
    ld l, a
    ld [hl], $40
    xor a
    ld [$cb03], a
    call Call_00e_56d9
    ld l, c
    push hl
    call Call_00e_5722
    call Call_00e_5922
    pop hl
    ld c, l

jr_00e_54ce:
    jp Jump_00e_5490


    and a
    ld e, c
    stop
    ld bc, $ff02

Jump_00e_54d8:
jr_00e_54d8:
    ld a, $37
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $35
    add c
    ld l, a
    call Call_00e_4299
    jr z, jr_00e_552c

    jr c, jr_00e_5522

    ldh a, [$ff8a]
    ld [$cc31], a
    ldh a, [$ff8b]
    ld [$cc32], a
    ld a, [$cb03]
    or a
    jr z, jr_00e_5502

    ldh a, [$ff8b]
    cp $08
    ld a, $01
    jr c, jr_00e_5503

jr_00e_5502:
    xor a

jr_00e_5503:
    ld [$cc2d], a
    ld a, [$ccc2]
    or a
    jr z, jr_00e_550c

jr_00e_550c:
    ld l, c
    push hl
    call Call_00e_5745
    pop hl
    ld c, l
    ld a, [$cb05]
    inc a
    ld [$cb05], a
    ld a, $35
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00e_54d8

jr_00e_5522:
    ld a, [$cb09]
    or a
    jp nz, Jump_00e_5490

    jp Jump_00e_5404


jr_00e_552c:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    jr jr_00e_5522

Jump_00e_5534:
    ld a, [$cb05]
    dec a
    ld b, a
    ld a, [$cb06]
    cp b
    jr nz, jr_00e_556a

    ld a, [$cb09]
    or a
    jp nz, Jump_00e_5335

    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    add $02
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    bit 0, a
    ld e, $b0
    jr nz, jr_00e_5560

    ld e, $08

jr_00e_5560:
    ld a, e
    ld [$cb00], a
    ld a, $2b
    add c
    ld l, a
    res 0, [hl]

jr_00e_556a:
    ld a, [$cb09]
    or a
    jp nz, Jump_00e_5490

    jp Jump_00e_5404


Jump_00e_5574:
    ld a, $2b
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_559d

    set 0, [hl]
    ld l, c
    push hl
    call Call_00e_570a
    pop hl
    ld c, l
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    xor a
    ld [$cb02], a
    ld [$cb04], a
    ld a, [$cb03]
    inc a
    jr z, jr_00e_559b

    ld [$cb03], a

jr_00e_559b:
    jr jr_00e_55b6

jr_00e_559d:
    call Call_00e_55b9
    ld a, [$cb04]
    cp $50
    jr c, jr_00e_55b6

    ld a, [$cb02]
    or a
    jr nz, jr_00e_55b6

    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    call Call_000_015c

jr_00e_55b6:
    jp Jump_00e_5404


Call_00e_55b9:
    ld a, $2c
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00e_5633

    ld a, [$cb02]
    inc a
    cp $03
    jr c, jr_00e_55cb

    xor a

jr_00e_55cb:
    ld [$cb02], a
    ld b, a
    add a
    add b
    ld de, $522e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    ldh [$ff8a], a
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld [hl], a
    ldh a, [$ff8a]
    bit 7, a
    jr z, jr_00e_55eb

    rst $08
    ld a, [hl+]

jr_00e_55eb:
    ldh a, [$ff8a]
    and $7f
    ld e, a
    ld d, b
    ld a, [$cb04]
    add e
    ld [$cb04], a
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_5604

    ld a, e
    cpl
    inc a
    ld e, a

jr_00e_5604:
    ld a, [$cb00]
    add e
    ld [$cb00], a
    ld a, $01
    ld [$cca2], a
    ld a, d
    ld [$cca0], a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld hl, $5237
    jr z, jr_00e_5624

    ld hl, $523d

jr_00e_5624:
    ld a, [$cb02]
    call Call_000_016e
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    call Call_00e_4243
    pop hl
    ld c, l

jr_00e_5633:
    ret


Jump_00e_5634:
    ld de, $5947
    call Call_00e_47fd
    jr nc, jr_00e_563f

    call Call_00e_56d9

jr_00e_563f:
    jp Jump_00e_5404


Call_00e_5642:
    ld b, h
    push hl
    ld hl, $ff8b
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    ld d, c
    push de
    ld h, b
    call Call_000_024f
    push bc
    ld de, $522a
    call Call_000_0201
    pop bc
    ld a, $a0
    ld [$cddb], a
    ld a, $02
    ld [$cddc], a
    ld a, b
    dec a
    ld b, $15
    ld l, $02
    call Call_000_0159
    ld hl, $ff8f
    pop de
    ld c, d
    ld [hl], e
    dec hl
    pop de
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    pop de
    ld [hl], d
    dec hl
    ld [hl], e
    pop hl
    ret


Call_00e_5685:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_56a2

    ld a, [$cb00]
    add $b4
    cp $a0
    ret nc

    ld e, a
    ld a, [$d722]
    cp e
    ret c

    ld de, $fc00
    ld b, $a0
    jr jr_00e_56b5

jr_00e_56a2:
    ld a, [$cb00]
    add $3c
    cp $a0
    ret nc

    ld e, a
    ld a, [$d722]
    cp e
    ret nc

    ld de, $0400
    ld b, $00

jr_00e_56b5:
    ld a, [$d73a]
    or a
    jr nz, jr_00e_56c0

    push de
    call Call_00e_56c9
    pop de

jr_00e_56c0:
    ld a, e
    ld [$d735], a
    ld a, d
    ld [$d736], a
    ret


Call_00e_56c9:
    ld a, [$cb09]
    or a
    ret nz

    ld e, b
    ld l, c
    push hl
    ld d, $08
    call Call_000_026d
    pop hl
    ld c, l
    ret


Call_00e_56d9:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld de, $5255
    jr z, jr_00e_56e7

    ld de, $5286

Call_00e_56e7:
jr_00e_56e7:
    ld a, $37
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ld a, $35
    add c
    ld l, a
    call Call_00e_4295
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $e9
    ld l, a
    res 2, [hl]
    ld a, $01
    ld [$cb05], a
    xor a
    ld [$cb06], a
    ret


Call_00e_570a:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_5717

    ld hl, $5a7d
    jr jr_00e_571a

jr_00e_5717:
    ld hl, $5b3b

jr_00e_571a:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    call Call_00e_4243
    ret


Call_00e_5722:
    ld hl, $9814
    ld bc, $0e0c
    ld a, $03
    call Call_00e_425c
    ld hl, $9be0
    ld bc, $0120
    ld a, $03
    jp Jump_00e_425c


    jp nc, Jump_000_0757

    dec b
    nop
    and a
    ld e, c
    inc bc
    ld bc, $0202
    ld c, $c4

Call_00e_5745:
    ld a, $38
    ld [$cc00], a
    ld a, $57
    ld [$cc01], a
    call Call_00e_483e
    ret c

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    ld a, [$cb03]
    or a
    jr nz, jr_00e_5765

    ld a, $13
    add c
    ld l, a
    res 2, [hl]

jr_00e_5765:
    ld a, [$cb00]
    ld b, a
    ld a, $0d
    add c
    ld e, a
    add $24
    ld l, a
    ld a, [$cc31]
    ld [hl], a
    add a
    add a
    add a
    add $07
    add b
    ld l, e
    ld [hl], a
    ld a, $0f
    add c
    ld e, a
    add $23
    ld l, a
    ld a, [$cc32]
    ld [hl], a
    add a
    add a
    add a
    add $07
    ld l, e
    ld [hl], a
    call Call_000_025e
    ld a, $70
    ld [$cb07], a
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    ld [hl], a
    ld a, $2f
    add c
    ld l, a
    ld a, [$cb05]
    ld [hl], a
    inc l
    ld [hl], $00
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    ld a, [$cb09]
    or a
    ld de, $5243
    jr z, jr_00e_57c9

    ld a, $2d
    add c
    ld l, a
    ld [hl], $01
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    res 0, [hl]
    ld de, $5247

jr_00e_57c9:
    call Call_00e_44f3
    ld de, $59a7
    jp Jump_000_01dd


    dec b
    jr z, jr_00e_57d9

    dec b
    jr nz, jr_00e_5800

    ret


jr_00e_57d9:
    ld a, [$deaf]
    or a
    jr nz, jr_00e_5800

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00e_5806

    ld a, [$cb09]
    or a
    ld de, $5980
    jr z, jr_00e_57f3

    ld de, $524d

jr_00e_57f3:
    call Call_00e_47fd
    jr nc, jr_00e_5800

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_000_015c

Jump_00e_5800:
jr_00e_5800:
    call Call_000_025e
    ld b, $01
    ret


jr_00e_5806:
    ld a, [$cb09]
    or a
    jr nz, jr_00e_5832

    ld a, [$cb03]
    or a
    jr nz, jr_00e_5821

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $f8
    jr c, jr_00e_5821

    ld a, $13
    add c
    ld l, a
    set 2, [hl]

jr_00e_5821:
    ld de, $599f
    call Call_000_015f
    call Call_00e_457e
    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00e_5856

jr_00e_5832:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    call Call_00e_4590
    ld e, a
    ld a, [$cb09]
    or a
    jr nz, jr_00e_5858

    ld a, e
    ld b, $68
    cp b
    jr c, jr_00e_5856

    ld a, $0f
    add c
    ld l, a
    ld [hl], b
    call Call_00e_456c

jr_00e_5856:
    jr jr_00e_5863

jr_00e_5858:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $88
    jr nc, jr_00e_5898

    jr jr_00e_58a2

jr_00e_5863:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $23
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_587c

    ld b, l
    ld a, e
    cp $4c
    jr c, jr_00e_58a2

    cp $54
    jr nc, jr_00e_58a2

    ld l, b
    set 0, [hl]

jr_00e_587c:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_588f

    ld a, e
    cp $f8
    jr nc, jr_00e_58a2

    cp $f0
    jr c, jr_00e_58a2

    jr jr_00e_5898

jr_00e_588f:
    ld a, e
    cp $a8
    jr c, jr_00e_58a2

    cp $b0
    jr nc, jr_00e_58a2

jr_00e_5898:
    ld a, [$cb06]
    inc a
    ld [$cb06], a
    ld b, $00
    ret


jr_00e_58a2:
    jp Jump_00e_5800


Call_00e_58a5:
    ld a, [$cb03]
    or a
    ret z

    ld l, c
    push hl
    ld a, $32
    add c
    ld l, a
    ld a, [hl-]
    ld e, [hl]
    swap a
    ld l, a
    ld h, $00
    add hl, hl
    ld d, $98
    add hl, de
    ld e, l
    ld d, h
    push de
    call Call_00e_58ce
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    call Call_00e_58ce
    pop hl
    ld c, l
    ret


Call_00e_58ce:
    ld hl, $524b
    ld bc, $0002
    jp Jump_000_0183


    ld a, [$cb01]
    ldh [rSCX], a
    ld a, [$cc9f]
    ldh [rSCY], a
    ld [$cb08], a
    cpl
    inc a
    add $70
    ld [$cb07], a
    sub $03
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    push bc
    ld a, [$cb07]
    dec a
    ld b, a

jr_00e_58fb:
    ldh a, [rLY]
    cp b
    jr c, jr_00e_58fb

jr_00e_5900:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00e_5900

jr_00e_5906:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00e_5906

    xor a
    ldh [rSCX], a
    ld a, [$cb08]
    ldh [rSCY], a
    ld a, $1b
    ldh [rBGP], a
    ld a, $7f
    ldh [rLYC], a
    xor a
    ld [$de2c], a
    pop bc
    ret


Call_00e_5922:
    ld a, $c9
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $0e
    dec hl
    ld [hl], $58
    dec hl
    ld [hl], $d7
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $0e
    dec hl
    ld [hl], $58
    dec hl
    ld [hl], $f5
    dec hl
    ld [hl], $c3
    ret


    and a
    ld e, c
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    call Call_00e_5642
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    call Call_00e_5642
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    call Call_00e_5642
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    rst $38
    and a
    ld e, c
    inc bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    call Call_00e_58a5
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    and a
    ld e, c
    inc b
    dec b
    inc b
    inc bc
    inc b
    rst $38
    cp e
    ld e, c
    ret nc

    ld e, c
    push hl
    ld e, c
    ld a, [$0f59]
    ld e, d
    inc h
    ld e, d
    add hl, sp
    ld e, d
    ld c, [hl]
    ld e, d
    ld h, e
    ld e, d
    ld a, b
    ld e, d
    ld sp, hl
    rlca
    ld hl, sp+$06
    ld hl, sp-$07
    ld bc, $0030
    ld [$3000], sp
    ld [$03f8], sp
    jr nc, jr_00e_59cc

jr_00e_59cc:
    ld [$3002], sp
    add b
    ld sp, hl
    rlca
    ld hl, sp+$06
    ld hl, sp-$07
    dec b
    jr nc, jr_00e_59d9

jr_00e_59d9:
    ld [$3004], sp
    ld [$07f8], sp
    jr nc, jr_00e_59e1

jr_00e_59e1:
    ld [$3006], sp
    add b
    ld sp, hl
    rlca
    ld hl, sp+$06
    ld hl, sp-$07
    add hl, bc
    jr nc, jr_00e_59ee

jr_00e_59ee:
    ld [$3008], sp
    ld [$0bf8], sp
    jr nc, jr_00e_59f6

jr_00e_59f6:
    ld [$300a], sp
    add b
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld sp, hl
    inc c
    stop
    ld [$300c], sp
    ld [$0cf8], sp
    ld d, b
    nop
    ld [$700c], sp
    add b
    ld a, [$fa07]
    rlca
    ld sp, hl
    ld sp, hl
    dec c
    stop
    ld [$300d], sp
    ld [$0df8], sp
    ld d, b
    nop
    ld [$700d], sp
    add b
    ei
    ld b, $fb
    ld b, $f9
    ld sp, hl
    ld c, $10
    nop
    ld [$300e], sp
    ld [$0ef8], sp
    ld d, b
    nop
    ld [$700e], sp
    add b
    db $fc
    dec b
    db $fc
    dec b
    ld sp, hl
    ld sp, hl
    rrca
    stop
    ld [$300f], sp
    ld [$0ff8], sp
    ld d, b
    nop
    ld [$700f], sp
    add b
    db $fd
    inc b
    db $fd
    inc b
    ld sp, hl
    ld sp, hl
    db $10
    stop
    ld [$3010], sp
    ld [$10f8], sp
    ld d, b
    nop
    ld [$7010], sp
    add b
    cp $03
    cp $03
    ld sp, hl
    ld sp, hl
    ld de, $0010
    ld [$3011], sp
    ld [$11f8], sp
    ld d, b
    nop
    ld [$7011], sp
    add b
    nop
    nop
    nop
    nop
    add b
    sub h
    sbc b
    add hl, bc
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc bc
    inc bc
    inc bc
    ld l, l
    add b
    add c
    ld [bc], a
    ld [bc], a
    add d
    inc bc
    inc bc
    inc bc
    add e
    add h
    ld [bc], a
    ld [bc], a
    add h
    add l
    inc bc
    inc bc
    inc bc
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld [bc], a
    inc bc
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld [bc], a
    inc bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    inc bc
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    inc bc
    inc bc
    inc bc
    and d
    and e
    ld a, $3f
    ld b, b
    ld b, c
    inc bc
    inc bc
    inc bc
    and h
    and l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    and [hl]
    and a
    xor b
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, h
    sbc c
    ld b, $04
    inc bc
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    inc bc
    inc bc
    inc bc
    and d
    and e
    ld a, $03
    inc bc
    inc bc
    and h
    and l
    inc bc
    inc bc
    inc bc
    and [hl]
    and a
    xor b
    inc bc
    ld [hl], $99
    dec b
    dec b
    xor c
    xor d
    xor e
    xor h
    sub a
    xor l
    xor [hl]
    xor a
    or b
    sbc a
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc [hl]
    sbc c
    rlca
    dec b
    inc bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    inc bc
    sbc d
    sbc e
    cp c
    cp d
    sbc [hl]
    sbc a
    inc bc
    inc bc
    cp e
    cp h
    cp l
    cp [hl]
    ccf
    inc bc
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_03c3

    and [hl]
    call nz, $c6c5
    inc bc
    inc bc
    inc bc
    add b
    sbc b
    add hl, bc
    ld a, [bc]
    dec d
    ld d, $17
    jr jr_00e_5b5d

    ld a, [de]
    inc bc
    inc bc
    inc bc
    dec de
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    ld e, $03
    inc bc
    inc bc
    rra
    jr nz, @+$04

    ld [bc], a
    jr nz, @+$23

    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [hl+], a
    inc hl

jr_00e_5b5d:
    inc h
    dec h
    ld h, $03
    inc bc
    inc bc
    ld [bc], a
    daa
    jr z, jr_00e_5b90

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc bc
    ld l, $2f
    jr nc, jr_00e_5ba1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc bc
    ld [hl], $37
    jr c, jr_00e_5bb2

    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc bc
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, h
    ld b, l
    inc bc
    inc bc
    inc bc

jr_00e_5b90:
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    inc bc
    ld b, e
    sbc c
    ld b, $04
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a

jr_00e_5ba1:
    dec a
    inc bc
    ld b, c
    ld b, d
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, h
    ld b, l
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, [hl]
    ld b, a

jr_00e_5bb2:
    ld c, b
    inc bc
    inc bc
    ld [hl+], a
    sbc c
    dec b
    dec b
    jr nc, jr_00e_5c04

    ld c, d
    ld c, e
    ld c, h
    jr c, jr_00e_5c0d

    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    inc bc
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl+], a
    sbc c
    rlca
    dec b
    jr nc, jr_00e_5c09

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc bc
    jr c, jr_00e_5c18

    ld e, c
    ld e, d
    inc a
    dec a
    inc bc
    ld b, b
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    inc bc
    inc bc
    inc bc
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld c, b
    inc a
    dec d
    ld [$153c], sp
    ld a, [bc]
    inc b
    dec d
    inc c
    inc b
    rla

jr_00e_5c04:
    inc b
    inc b
    rla
    ld b, $04

jr_00e_5c09:
    rla
    ld a, [bc]
    inc b
    add hl, de

jr_00e_5c0d:
    ld b, $04
    rla
    ld [$1904], sp
    inc b
    inc b
    rla
    inc c
    inc b

jr_00e_5c18:
    add hl, de
    ld [$1b04], sp
    ld b, $04
    dec de
    inc b
    inc b
    add hl, de
    ld a, [bc]
    inc b
    dec de
    ld [$1b3c], sp
    ld a, [bc]
    cp $3c
    ld b, $08
    inc a
    ld b, $0a
    inc b
    ld b, $0c
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    ld a, [bc]
    inc b
    ld [bc], a
    ld b, $04
    inc b
    ld [$0204], sp
    inc b
    inc b
    inc b
    inc c
    inc b
    ld [bc], a
    ld [$0004], sp
    ld b, $04
    nop
    inc b
    inc b
    ld [bc], a
    ld a, [bc]
    inc b
    nop
    ld [$003c], sp
    ld a, [bc]
    cp $fc
    inc bc
    db $f4
    dec bc
    stop
    rlca
    inc d
    inc bc
    ld h, l
    add hl, de
    nop

Jump_00e_5c67:
    ld a, b
    or a
    jr z, jr_00e_5c81

    dec a
    jr z, jr_00e_5c94

    dec a
    jp z, Jump_00e_5c77

    dec a
    jp z, Jump_00e_5c7e

    ret


Jump_00e_5c77:
    ld a, $d0
    ldh [rOBP1], a
    ld b, $00
    ret


Jump_00e_5c7e:
    ld b, $01
    ret


jr_00e_5c81:
    ld a, $0f
    ld [$de2e], a
    ld a, $01
    ld [$de2f], a
    call Call_00e_4d1a
    ld de, $6005
    jp Jump_000_01dd


jr_00e_5c94:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jr nz, jr_00e_5cb5

    ld a, $35
    add c
    ld l, a
    ld d, [hl]
    ld a, $18
    add c
    ld l, a
    ld a, d
    sub [hl]
    ld d, a
    or a
    jr z, jr_00e_5cae

    rst $08
    dec d

jr_00e_5cae:
    ld a, $37
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a

jr_00e_5cb5:
    call Call_00e_5cdd
    ld a, $18
    add c
    ld l, a
    ld d, [hl]
    ld a, $35
    add c
    ld l, a
    ld [hl], d
    ld a, $19
    add c
    ld e, a
    add $11
    ld l, a
    ld d, [hl]
    ld l, e
    ld a, d
    cp $05
    jr nz, jr_00e_5cd6

    res 0, [hl]
    res 1, [hl]
    jr jr_00e_5cda

jr_00e_5cd6:
    res 0, [hl]
    set 1, [hl]

jr_00e_5cda:
    ld b, $01
    ret


Call_00e_5cdd:
    ld a, [$deaf]
    or a
    jp nz, Jump_00e_5c7e

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00e_5d07

    dec a
    jr z, jr_00e_5d24

    ld b, a
    call Call_00e_4d91
    ld a, b
    dec a
    jp z, Jump_00e_5d96

    dec a
    jp z, Jump_00e_5dd1

    dec a
    jp z, Jump_00e_5e0a

    dec a
    jp z, Jump_00e_5eb9

    jp Jump_00e_5f43


jr_00e_5d07:
    ld de, $5c5b
    call Call_00e_4da6
    or a
    jr z, jr_00e_5d21

    ld a, $2a
    add c
    ld l, a
    inc [hl]
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    ld a, $24
    add c
    ld l, a
    ld [hl], $00

jr_00e_5d21:
    ld b, $01
    ret


jr_00e_5d24:
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $3c
    jp z, Jump_00e_5d67

    jr c, jr_00e_5d6d

    cp $8c
    jr z, jr_00e_5d70

    jr c, jr_00e_5d3d

    cp $b4
    jr z, jr_00e_5d7d

    jr jr_00e_5d6d

jr_00e_5d3d:
    call Call_00e_4d69

Jump_00e_5d40:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    and $03
    jr nz, jr_00e_5d6d

    ld [hl+], a
    inc [hl]
    ld a, [hl]
    dec a
    jr z, jr_00e_5d5b

    dec a
    jr z, jr_00e_5d61

    ld a, $18
    ldh [rOBP1], a
    ld [hl], $00
    jr jr_00e_5d6d

jr_00e_5d5b:
    ld a, $60
    ldh [rOBP1], a
    jr jr_00e_5d6d

jr_00e_5d61:
    ld a, $84
    ldh [rOBP1], a
    jr jr_00e_5d6d

Jump_00e_5d67:
    ld a, $17
    add c
    ld l, a
    ld [hl], $04

jr_00e_5d6d:
    ld b, $01
    ret


jr_00e_5d70:
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    ld a, $d0
    ldh [rOBP1], a
    ld b, $01
    ret


jr_00e_5d7d:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    ld a, $2e
    add c
    ld l, a
    ld [hl], $03
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    xor a
    ld [$d74a], a
    ld b, $01
    ret


Jump_00e_5d96:
    push hl
    call Call_000_0168
    pop hl
    and $03
    cp $01
    jr nz, jr_00e_5da3

    ld a, $00

jr_00e_5da3:
    ld b, a
    ld a, $36
    add c
    ld l, a
    ld [hl], b
    ld a, b
    or a
    jr z, jr_00e_5dba

    dec a
    jr z, jr_00e_5dbe

    dec a
    jr z, jr_00e_5dbe

    call Call_00e_5fd1
    ld e, $04
    jr jr_00e_5dc9

jr_00e_5dba:
    ld e, $03
    jr jr_00e_5dc9

jr_00e_5dbe:
    ld a, $2c
    add c
    ld l, a
    ld [hl], $00
    call Call_00e_5fc4
    ld e, $04

jr_00e_5dc9:
    ld a, $2a
    add c
    ld l, a
    ld [hl], e
    ld b, $01
    ret


Jump_00e_5dd1:
    ld a, $0f
    add c
    ld l, a
    ld [hl], $61
    ld a, $1e
    add c
    ld l, a
    ld [hl], $02
    call Call_00e_6238
    ld a, d
    or a
    jr nz, jr_00e_5de9

    call Call_00e_61fb
    jr jr_00e_5df4

jr_00e_5de9:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_00e_5dfd

jr_00e_5df4:
    call Call_00e_5fde
    call Call_000_025e
    ld b, $01
    ret


Call_00e_5dfd:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    ld a, $37
    add c
    ld l, a
    ld [hl], $00
    ret


Jump_00e_5e0a:
    call Call_00e_6215
    call Call_00e_6238
    ld a, d
    or a
    jr nz, jr_00e_5e17

    call Call_00e_61fb

jr_00e_5e17:
    call Call_00e_622b
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    sub $68
    jr c, jr_00e_5e61

    ld [hl], $65
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00e_5e3d

    dec a
    jr z, jr_00e_5e45

    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_00e_5dfd
    jr jr_00e_5e61

jr_00e_5e3d:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    jr jr_00e_5e61

jr_00e_5e45:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_00e_5e54

    inc a
    ld [hl], a
    call Call_00e_5fc4
    jr jr_00e_5e61

jr_00e_5e54:
    xor a
    ld [hl], a
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_00e_5dfd

jr_00e_5e61:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    cp [hl]
    jr c, jr_00e_5e6e

    inc d

jr_00e_5e6e:
    ld a, $17
    add c
    ld l, a
    ld a, d
    ld [hl], a
    call Call_000_025e
    ld b, $01
    ret


Call_00e_5e7a:
    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld a, [hl]
    sub $16
    ld d, a
    ld c, $3b

jr_00e_5e89:
    ld h, $c2
    ld l, c
    ld a, [hl]
    or a
    jr z, jr_00e_5eae

    ld a, $04
    add c
    ld l, a
    ld a, e
    sub [hl]
    ld b, $01
    jr nc, jr_00e_5e9c

    ld b, $ff

jr_00e_5e9c:
    ld a, [hl]
    add b
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, d
    sub [hl]
    ld b, $01
    jr nc, jr_00e_5eab

    ld b, $ff

jr_00e_5eab:
    ld a, [hl]
    add b
    ld [hl], a

jr_00e_5eae:
    ld a, $20
    add c
    ld c, a
    cp $bb
    jr c, jr_00e_5e89

    pop hl
    ld c, l
    ret


Jump_00e_5eb9:
    call Call_00e_5e7a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $65
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $50
    jr nc, jr_00e_5ece

    inc d

jr_00e_5ece:
    ld a, $17
    add c
    ld l, a
    ld a, $04
    add d
    ld [hl], a
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $c8
    jp nc, Jump_00e_5f11

    call Call_00e_5f31
    ld a, b
    or a
    jr z, jr_00e_5f2e

    dec a
    jr c, jr_00e_5eef

    dec a
    jp z, Jump_00e_5d40

jr_00e_5eef:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $06
    jr c, jr_00e_5f00

    ld [hl], $00
    ld a, $38
    add c
    ld l, a
    inc [hl]

jr_00e_5f00:
    ld a, $38
    add c
    ld l, a
    ld a, [hl]
    and $01
    ld a, $c4
    jr z, jr_00e_5f0d

    ld a, $70

jr_00e_5f0d:
    ldh [rOBP1], a
    jr jr_00e_5f2e

Jump_00e_5f11:
    ld [hl], $00
    call Call_00e_5f7e
    ld a, $17
    add c
    ld l, a
    ld a, $02
    add d
    ld [hl], a
    ld a, $d0
    ldh [rOBP1], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    ld a, $30
    add c
    ld l, a
    ld [hl], $00

jr_00e_5f2e:
    ld b, $01
    ret


Call_00e_5f31:
    ld a, $37
    add c
    ld l, a
    ld a, [hl]
    cp $01
    ld b, $00
    jr c, jr_00e_5f42

    inc b
    cp $04
    jr c, jr_00e_5f42

    inc b

jr_00e_5f42:
    ret


Jump_00e_5f43:
    ld a, $30
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $06
    jr c, jr_00e_5f5e

    jr z, jr_00e_5f6a

    ld a, [$c398]
    cp $02
    jr nc, jr_00e_5f70

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    jr jr_00e_5f7b

jr_00e_5f5e:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    and $01
    add $02
    ld [hl], a
    jr jr_00e_5f7b

jr_00e_5f6a:
    call Call_00e_5f31
    call Call_00e_5f8b

jr_00e_5f70:
    call Call_00e_5f7e
    ld a, $17
    add c
    ld l, a
    ld a, d
    add $06
    ld [hl], a

jr_00e_5f7b:
    ld b, $01
    ret


Call_00e_5f7e:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $50
    jr nc, jr_00e_5f8a

    inc d

jr_00e_5f8a:
    ret


Call_00e_5f8b:
    ld a, $17
    add c
    ld l, a
    ld d, [hl]
    add $0d
    ld l, a
    ld a, d
    and $01
    ld [hl], a
    ld l, c
    push hl
    ld a, b
    ld de, $619b
    or a
    jr z, jr_00e_5fa9

    dec b
    ld de, $61aa
    jr z, jr_00e_5fa9

    ld de, $61b9

jr_00e_5fa9:
    ld a, e
    ld [$cc00], a
    ld a, d
    ld [$cc01], a
    ld de, $6197
    ld a, $00
    call Call_00e_4bff
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    add $3f
    ld [hl], a
    pop hl
    ld c, l
    ret


Call_00e_5fc4:
    ld a, $31
    add c
    ld l, a
    ld [hl], $11
    inc l
    ld [hl], $4e
    inc l
    ld [hl], $03
    ret


Call_00e_5fd1:
    ld a, $31
    add c
    ld l, a
    ld [hl], $22
    inc l
    ld [hl], $4e
    inc l
    ld [hl], $03
    ret


Call_00e_5fde:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    and $03
    ld [hl], a
    ld e, a
    ld d, $00
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00e_5ffb

    ld d, $04

jr_00e_5ffb:
    ld a, $17
    add c
    ld l, a
    ld a, $08
    add e
    add d
    ld [hl], a
    ret


    dec h
    ld h, b
    sbc $60
    ccf
    ld h, b
    ld hl, sp+$60
    ld d, [hl]
    ld h, b
    rrca
    ld h, c
    ld [hl], e
    ld h, b
    inc l
    ld h, c
    sub [hl]
    ld h, b
    xor [hl]
    ld h, b
    add $60
    xor [hl]
    ld h, b
    ld c, a
    ld h, c
    ld h, a
    ld h, c
    ld a, a
    ld h, c
    ld h, a
    ld h, c
    db $fc
    inc bc
    db $f4
    dec bc
    db $f4
    db $f4
    inc [hl]
    ld bc, $0302
    inc b
    dec b
    ld b, $08
    add hl, bc
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    ld [$00f8], sp
    ld hl, sp+$10
    rlca
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    db $f4
    db $f4
    inc sp
    ld bc, $0302
    dec bc
    inc c
    dec c
    rrca
    db $10
    ld de, $f808
    nop
    ld hl, sp+$10
    ld c, $80
    ld hl, sp-$01
    call nc, $f40b
    db $ec
    inc [hl]
    rra
    jr nz, @+$01

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    nop
    add sp, $1c
    nop
    ldh a, [rNR33]
    nop
    ld hl, sp+$1e
    add b
    call z, $f400
    dec bc
    add sp, -$0c
    inc sp
    ld bc, $1202
    rla
    inc c
    dec c
    jr @+$1b

    ld a, [de]
    ld [$00f8], sp
    ldh [$ff08], a
    inc de
    add sp, $08
    inc d
    ldh a, [$ff08]
    dec d
    ld hl, sp+$08
    ld d, $18
    db $10
    dec de
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [$fff0]
    ld b, h
    rst $38
    ld a, [hl+]
    dec hl
    rst $38
    inc l
    dec l
    ld l, $2f
    jr nc, jr_00e_60d8

    ld [hl-], a
    inc sp
    rst $38
    inc [hl]
    dec [hl]
    ld [hl], $80
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [$fff0]
    ld b, h
    rst $38
    ld a, [hl+]
    dec hl
    rst $38
    inc l
    dec l
    ld l, $2f
    jr nc, jr_00e_60f6

    jr c, jr_00e_60f4

    rst $38
    add hl, sp
    ld a, [hl-]
    rst $38
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [$fff0]
    ld b, h
    rst $38
    ld a, [hl+]
    dec hl
    rst $38
    inc l
    dec l
    ld l, $2f
    jr nc, @+$3d

    inc a

jr_00e_60d8:
    inc sp
    rst $38
    dec a
    ld a, $ff
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    db $f4
    db $f4
    inc [hl]
    add e
    add d
    add c
    add [hl]
    add l
    add h
    rst $38
    adc c
    adc b
    rst $38
    adc d
    rst $38
    ld [$80f8], sp

jr_00e_60f4:
    jr jr_00e_6106

jr_00e_60f6:
    add a
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    db $f4
    db $f4
    inc sp
    add e
    add d
    add c
    adc l
    adc h
    adc e
    sub c

jr_00e_6106:
    sub b
    adc a
    ld [$80f8], sp
    jr jr_00e_611d

    adc [hl]
    add b
    nop
    rlca
    call nc, $f40b
    db $ec
    inc [hl]
    rst $38
    and b
    sbc a
    and e
    and d
    and c
    and [hl]

jr_00e_611d:
    and l
    and h
    xor c
    xor b
    and a
    db $10
    add sp, -$64
    db $10
    ldh a, [$ff9d]
    db $10
    ld hl, sp-$62
    add b
    nop
    inc sp
    db $f4
    dec bc
    nop
    db $f4
    inc sp
    sub d
    add d
    add c
    adc l
    adc h
    sub a
    sbc d
    sbc c
    sbc b
    ld [$80f8], sp
    jr @+$0a

    sub [hl]
    jr nz, @+$0a

    sub l
    jr z, jr_00e_614f

    sub h
    jr nc, jr_00e_6152

    sub e
    ld hl, sp+$10
    sbc e
    add b

jr_00e_614f:
    db $fc
    inc bc
    db $f4

jr_00e_6152:
    dec bc
    ldh a, [$fff0]
    ld b, h
    rst $38
    xor e
    xor d
    rst $38
    xor a
    xor [hl]
    xor l
    xor h
    or e
    or d
    or c
    or b
    or [hl]
    or l
    or h
    rst $38
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [$fff0]
    ld b, h
    rst $38
    xor e
    xor d
    rst $38
    xor a
    xor [hl]
    xor l
    xor h
    or e
    cp b
    or a
    or b
    rst $38
    cp d
    cp c
    rst $38
    add b
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [$fff0]
    ld b, h
    rst $38
    xor e
    xor d
    rst $38
    xor a
    xor [hl]
    xor l
    xor h
    or e
    cp h
    cp e
    or b
    rst $38
    cp [hl]
    cp l
    rst $38
    add b
    db $f4
    nop
    inc c
    nop
    ret z

    ld h, c
    ld b, a
    add e
    dec b
    inc bc
    ld [bc], a
    ld bc, $010e
    add b
    cp $00
    nop
    ld bc, $61cd
    ld b, a
    add e
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    ld c, $02
    nop
    cp $00
    nop
    ld bc, $61d2
    ld b, a
    add e
    dec b
    inc bc
    ld [bc], a
    inc b
    ld c, $03
    nop
    cp $00
    nop
    ld bc, $61d7
    ldh a, [rP1]
    rst $38
    rst $10
    ld h, c
    ldh a, [rSB]
    rst $38
    rst $10
    ld h, c
    ldh a, [rSC]
    rst $38
    db $dd
    ld h, c
    and $61
    ldh a, [$ff61]
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld de, $8000
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    ld hl, sp+$12
    ld bc, $8041
    db $fc
    inc bc
    db $f4
    dec bc
    db $fc
    db $f4
    inc de
    ld [bc], a
    inc bc
    ld b, d
    add b

Call_00e_61fb:
    ld a, $1e
    add c
    ld l, a
    ld b, [hl]
    ld a, $2f
    add c
    ld l, a
    ld d, [hl]
    ld a, $0d
    add c
    ld l, a
    ld a, d
    or a
    jr z, jr_00e_6211

    ld a, [hl]
    add b
    ld [hl], a
    ret


jr_00e_6211:
    ld a, [hl]
    sub b
    ld [hl], a
    ret


Call_00e_6215:
    ld a, $31
    add c
    ld l, a
    ld e, [hl]
    call Call_00e_6255
    ld a, $33
    add c
    ld l, a
    ld d, [hl]
    dec l
    ld a, [hl]
    sub d
    ld e, a
    ld [hl], e
    call Call_00e_6263
    ret


Call_00e_622b:
    ld a, $20
    add c
    ld l, a
    ld b, [hl]
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [hl], a
    ret


Call_00e_6238:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    ld d, $01
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00e_624e

    ld a, e
    cp $86
    ret nc

    ld d, $00
    ret


jr_00e_624e:
    ld a, e
    cp $1c
    ret c

    ld d, $00
    ret


Call_00e_6255:
    ld a, $1d
    add c
    ld l, a
    call Call_00e_6281
    ld e, a
    ld a, $1e
    add c
    ld l, a
    ld [hl], e
    ret


Call_00e_6263:
    ld a, $1f
    add c
    ld l, a
    ld a, e
    bit 7, a
    jr z, jr_00e_6274

    xor a
    sub e
    ld e, a
    call Call_00e_6281
    jr jr_00e_627a

jr_00e_6274:
    call Call_00e_6281
    ld e, a
    xor a
    sub e

jr_00e_627a:
    ld e, a
    ld a, $20
    add c
    ld l, a
    ld [hl], e
    ret


Call_00e_6281:
    ld a, e
    add [hl]
    ld e, a
    and $0f
    ld [hl], a
    ld a, e
    swap a
    and $0f
    ret


    nop
    ld b, $ff
    nop
    ld bc, $ff06
    ld [hl], a
    ld hl, sp+$14
    db $f4
    ld a, [bc]
    ld [bc], a
    inc e
    ldh [$ff2c], a
    rlca
    ld bc, $0202
    ld h, e
    ld h, h
    ld h, [hl]
    ld h, a
    rlca
    ld bc, $0202
    ld [hl], d
    ld [hl], e
    ld h, [hl]
    ld a, l
    inc b
    inc b
    rlca
    nop
    inc bc
    rlca
    inc b
    dec b
    rlca
    nop
    ld [bc], a
    rlca
    inc b
    ld b, $07
    nop
    ld bc, $0407
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    ld [$0407], sp
    add hl, bc
    rlca
    cp $77
    ld a, [bc]
    ld b, $02
    ld [bc], a
    ld [hl], a
    ld [hl], a
    ld [$0e08], sp
    ld b, $02
    ld [bc], a
    ld [hl], a
    ld [hl], a
    ld [$7408], sp
    ld [hl], l
    rst $20
    ld h, d
    xor $62
    push af
    ld h, d
    db $fc
    ld h, d
    inc bc
    ld bc, $0205
    inc bc
    inc b
    rst $38
    inc bc
    ld bc, $0205
    inc bc
    inc b
    rst $38
    inc bc
    dec b
    inc bc
    ld bc, $0204
    rst $38
    inc bc
    dec b
    inc bc
    ld bc, $0204
    rst $38
    ld hl, sp+$07
    ld hl, sp+$08
    rst $30
    rlca
    ld hl, sp+$08
    db $fc
    ld l, e
    ld [$0201], sp
    inc bc
    inc b
    nop
    cp $fc
    ld l, e
    ldh a, [rP1]
    rst $38
    db $fc
    ld l, e
    ld [$0605], sp
    rlca
    ld b, $05
    ld b, $07
    nop
    cp $fc
    ld l, e
    ldh a, [rP1]
    rst $38
    jp nz, Jump_000_0708

    rrca
    ld bc, $5820
    nop

Jump_00e_6332:
    ld a, b
    dec b
    jr z, jr_00e_63a7

    dec b
    jr z, jr_00e_6343

    dec b
    jp z, Jump_00e_6446

    dec b
    jr z, jr_00e_6362

    or a
    jr z, jr_00e_6363

jr_00e_6343:
    call Call_00e_6ae0
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    add $05
    ld l, a
    ld [hl], $01
    ld a, $01
    ld [$c3e9], a
    ret


Jump_00e_635f:
    ld b, $00
    ret


jr_00e_6362:
    ret


jr_00e_6363:
    ld a, $01
    ld [$dd31], a
    ld hl, $ca00
    ld bc, $0034
    xor a
    call Call_000_0174
    call Call_00e_648b
    call Call_00e_6669
    call Call_00e_6950
    ld a, $ff
    ld [$d74a], a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $14
    add c
    ld l, a
    set 1, [hl]
    add $03
    ld l, a
    ld [hl], $08
    ld a, $0d
    add c
    ld l, a
    ld [hl], $7f
    add $02
    ld l, a
    ld [hl], $21
    call Call_000_025e
    ld de, $6bfc
    jp Jump_000_01dd


jr_00e_63a7:
    ld hl, $ca01
    ld a, [hl]
    cp $04
    jr nc, jr_00e_640e

    cp $03
    jr z, jr_00e_6401

    cp $02
    jr z, jr_00e_63e6

    cp $01
    jr z, jr_00e_63cc

    ld a, [$d74b]
    or a
    jp z, Jump_00e_6446

    ld [hl], $01
    ld a, $1e
    ld [$ca02], a
    jp Jump_00e_6446


jr_00e_63cc:
    ld hl, $ca02
    call Call_000_01e9
    jr nz, jr_00e_63ff

    ld hl, $629d
    call Call_00e_67f4
    ld a, $5a
    ld [$ca02], a
    ld a, $02
    ld [$ca01], a
    jr jr_00e_6446

jr_00e_63e6:
    ld hl, $ca02
    call Call_000_01e9
    jr nz, jr_00e_63ff

    call Call_00e_6b97
    xor a
    ld [$d74a], a
    ld a, $3c
    ld [$ca02], a
    ld a, $03
    ld [$ca01], a

jr_00e_63ff:
    jr jr_00e_6446

jr_00e_6401:
    ld hl, $ca02
    call Call_000_01e9
    jr nz, jr_00e_6446

    ld a, $04
    ld [$ca01], a

jr_00e_640e:
    ld a, [$deaf]
    or a
    jr nz, jr_00e_6446

    ld a, [$ca00]
    or a
    jp nz, Jump_00e_6b2d

    call Call_00e_649f
    ld hl, $de00
    ld a, [hl]
    ld [$ca2b], a
    ld [hl], $01
    xor a
    ld [$ca2a], a
    call Call_00e_669b
    call Call_00e_695f
    ld a, [$ca2a]
    or a
    call nz, Call_00e_689d
    ld a, [$ca2b]
    ld [$de00], a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a

Jump_00e_6446:
jr_00e_6446:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $21
    add c
    ld l, a
    bit 1, [hl]
    ld a, $1b
    jr z, jr_00e_645a

    ld a, $06

jr_00e_645a:
    ld [$de96], a
    ld a, [$d76d]
    and $01
    call nz, Call_00e_6be3
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    xor a
    ldh [$ffab], a
    ld [$d3ea], a
    call Call_00e_663f
    call Call_00e_6a07
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld b, $01
    ret


Call_00e_648b:
    ld a, $01
    ld [$ca0c], a
    ld a, $3c
    ld [$ca07], a
    ld a, $40
    ld [$ca19], a
    xor a
    ld [$ca06], a
    ret


Call_00e_649f:
    ld hl, $ca0c
    ld a, [hl]
    or a
    call nz, Call_00e_6610
    ld a, [$ca06]
    dec a
    jr z, jr_00e_64c6

    dec a
    jr z, jr_00e_650a

    dec a
    jp z, Jump_00e_6586

    dec a
    jp z, Jump_00e_65b3

    ld hl, $ca07
    call Call_000_01e9
    jr nz, jr_00e_64c5

    ld a, $01
    ld [$ca06], a

Jump_00e_64c5:
jr_00e_64c5:
    ret


jr_00e_64c6:
    ld hl, $ca0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_00e_64d6

    call Call_00e_6610
    jr jr_00e_64c6

jr_00e_64d6:
    ld [$ca10], a
    ld a, l
    ld [$ca0e], a
    ld a, h
    ld [$ca0f], a
    ld a, $18
    ld [$ca08], a
    xor a
    ld [$ca07], a
    call Call_00e_6501
    ld a, l
    ld [$ca09], a
    ld a, h
    ld [$ca0a], a
    ld a, $ff
    ld [$ca0b], a
    ld a, $02
    ld [$ca06], a
    jr jr_00e_64c5

Call_00e_6501:
    ld a, [$ca0d]
    ld hl, $62df
    jp Jump_000_016e


jr_00e_650a:
    ld hl, $ca07
    call Call_000_01e9
    jp nz, Jump_00e_6583

    ld [hl], $04
    call Call_00e_65fe
    ld hl, $ca09
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00e_651e:
    ld a, [hl+]
    cp $ff
    jr nz, jr_00e_6528

    call Call_00e_6501
    jr jr_00e_651e

jr_00e_6528:
    ld [$ca0b], a
    ld e, a
    ld a, l
    ld [$ca09], a
    ld a, h
    ld [$ca0a], a
    ld d, $01
    ld hl, $62de
    ld bc, $0101
    call Call_000_0246
    ld hl, $ca08
    call Call_000_01e9
    jr nz, jr_00e_6583

    ld a, [$ca0e]
    ld hl, $ca09
    cp [hl]
    jr nz, jr_00e_6583

    ld a, [$ca10]
    add a
    add a
    add a
    add a
    add $08
    ld [$ca11], a
    ld a, $08
    ld [$ca13], a
    xor a
    ld [$ca12], a
    ld [$ca14], a
    ld [$ca15], a
    ld a, $18
    ld [$ca07], a
    ld de, $630b
    call Call_00e_6633
    ld a, $01
    ld [$ca1a], a
    ld [$ca1c], a
    ld a, $03
    ld [$ca06], a

Jump_00e_6583:
jr_00e_6583:
    jp Jump_00e_64c5


Jump_00e_6586:
    ld hl, $ca07
    call Call_000_01e9
    jr nz, jr_00e_65b0

    jr nc, jr_00e_6598

    ld a, $04
    call Call_000_01a4
    ld [$ca19], a

jr_00e_6598:
    ld de, $630b
    call Call_00e_6639
    jr nc, jr_00e_65b0

    ld a, $08
    ld [$ca07], a
    ld de, $6314
    call Call_00e_6633
    ld a, $04
    ld [$ca06], a

jr_00e_65b0:
    jp Jump_00e_64c5


Jump_00e_65b3:
    ld hl, $ca07
    call Call_000_01e9
    jr nz, jr_00e_65fb

    ld de, $6314
    call Call_00e_6639
    ld de, $0030
    ld hl, $ca14
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$ca14], a
    ld a, h
    ld [$ca15], a
    ld a, [$ca12]
    ld e, a
    ld a, [$ca13]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca12], a
    ld a, h
    ld [$ca13], a
    ld a, h
    cp $88
    jr c, jr_00e_65fb

    ld hl, $ca19
    call Call_00e_41a1
    ld a, $3c
    ld [$ca07], a
    xor a
    ld [$ca1a], a
    ld [$ca06], a

jr_00e_65fb:
    jp Jump_00e_64c5


Call_00e_65fe:
    ld a, [$ca0b]
    cp $ff
    ret z

    ld e, a
    ld d, $01
    ld hl, $62dd
    ld bc, $0101
    jp Jump_000_0246


Call_00e_6610:
    xor a
    ld [$ca0c], a
    call Call_000_0168
    and $03
    ld b, a
    ld a, [$ca0d]
    cp b
    jr nz, jr_00e_6621

    inc b

jr_00e_6621:
    ld a, b
    and $03
    ld [$ca0d], a
    call Call_00e_6501
    ld a, l
    ld [$ca0e], a
    ld a, h
    ld [$ca0f], a
    ret


Call_00e_6633:
    ld hl, $ca16
    jp Jump_00e_41a7


Call_00e_6639:
    ld hl, $ca16
    jp Jump_00e_41b0


Call_00e_663f:
    ld a, [$ca19]
    cp $40
    ret nc

    ld a, [$ca11]
    ldh [$ff9b], a
    ld a, [$ca13]
    ldh [$ff9c], a
    ld a, [$ca16]
    ld de, $6bfc
    call Call_000_0171
    push de
    ld l, $03
    call Call_00e_4953
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [$ca19]
    jp Jump_000_0210


Call_00e_6669:
    ld a, [$d7d1]
    ld [$ca26], a
    ld a, $80
    ld [$ca24], a
    ld a, $01
    ld [$ca1b], a
    ld a, $80
    ld [$ca1f], a
    ld a, $00
    ld [$ca20], a
    ld hl, $62cd
    call Call_00e_67f4
    ld hl, $62d5
    call Call_00e_67f4
    ld b, $0e
    ld de, $677e
    call Call_00e_4192
    call Call_00e_67cc
    ret


Call_00e_669b:
    ld hl, $ca1c
    call Call_000_01e9
    jr nz, jr_00e_66e2

    ld [hl], $0a
    ld a, [$ca1a]
    or a
    jr z, jr_00e_66ce

    ld a, [$ca11]
    ld hl, $d722
    cp [hl]
    ld de, $fffc
    jr c, jr_00e_66da

    ld de, $0004
    jr jr_00e_66da

Call_00e_66bc:
    ld a, $80
    cp $80
    ld hl, $ca24
    cp [hl]
    ld de, $fffc
    jr c, jr_00e_66da

    ld de, $0004
    jr jr_00e_66da

jr_00e_66ce:
    ld a, [$ca1b]
    dec a
    ld de, $fffc
    jr z, jr_00e_66da

    ld de, $0004

jr_00e_66da:
    ld a, e
    ld [$ca1d], a
    ld a, d
    ld [$ca1e], a

jr_00e_66e2:
    ld a, [$ca1f]
    ldh [$ff8b], a
    ld a, [$ca20]
    ldh [$ff8c], a
    ld a, [$ca1d]
    ld e, a
    ld a, [$ca1e]
    ld d, a
    ld hl, $ca21
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$ca21], a
    ld a, d
    ld [$ca22], a
    ld hl, $ca23
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$ca25], a
    ld a, [$ca1e]
    bit 7, a
    jr nz, jr_00e_6727

    add hl, de
    ld a, h
    cp $60
    jr c, jr_00e_675b

    cp $a0
    ld a, $01
    jr nc, jr_00e_673d

    jr jr_00e_6733

jr_00e_6727:
    add hl, de
    ld a, h
    cp $a0
    jr nc, jr_00e_675b

    cp $60
    ld a, $02
    jr c, jr_00e_673d

jr_00e_6733:
    ld a, l
    ld [$ca23], a
    ld a, h
    ld [$ca24], a
    jr jr_00e_675b

jr_00e_673d:
    ld [$ca1b], a
    dec a
    ld de, $fffc
    jr z, jr_00e_6749

    ld de, $0004

jr_00e_6749:
    ld a, e
    ld [$ca1d], a
    ld a, d
    ld [$ca1e], a
    ld a, $00
    ld [$ca21], a
    ld a, $00
    ld [$ca22], a

jr_00e_675b:
    ld a, [$ca24]
    sub $80
    ld b, a
    ld a, [$d7d1]
    sub b
    ld [$ca26], a
    ld a, [$ca24]
    ld hl, $ca25
    sub [hl]
    ld [$ca28], a
    or a
    jr z, jr_00e_677d

    ld a, $60
    call Call_00e_6813
    call Call_00e_687e

jr_00e_677d:
    ret


    ld a, e
    cp $a0
    jr nc, jr_00e_6799

    ld a, d
    cp $60
    jr c, jr_00e_6799

    ld a, [$ca27]
    push de
    add e
    ld e, a
    ld a, [$d7d2]
    add d
    ld d, a
    call Call_00e_4165
    ld b, [hl]
    pop de
    ret


jr_00e_6799:
    ld b, $ff
    ret


    ld a, [$ca26]
    ld [$ca27], a
    ld a, $0d
    ld [$de2c], a
    ld a, $5d
    ldh [rLYC], a
    ret


jr_00e_67ac:
    ldh a, [rLY]
    cp $5f
    jr c, jr_00e_67ac

jr_00e_67b2:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00e_67b2

jr_00e_67b8:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00e_67b8

    ld a, [$ca27]
    ldh [rSCX], a
    ld a, $7f
    ldh [rLYC], a
    xor a
    ld [$de2c], a
    ret


Call_00e_67cc:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $0e
    dec hl
    ld [hl], $67
    dec hl
    ld [hl], $9c
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $0e
    dec hl
    ld [hl], $67
    dec hl
    ld [hl], $ac
    dec hl
    ld [hl], $c3
    ret


Call_00e_67f4:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_00e_67fc:
    push bc
    push de

jr_00e_67fe:
    push bc
    push de
    ld a, [hl+]
    push hl
    call Call_00e_40c5
    pop hl
    pop de
    pop bc
    inc e
    dec c
    jr nz, jr_00e_67fe

    pop de
    pop bc
    inc d
    dec b
    jr nz, jr_00e_67fc

    ret


Call_00e_6813:
    ldh [$ff9c], a
    ld a, [$d74b]
    cp $01
    jr nz, jr_00e_6836

    ld a, [$c2cc]
    bit 7, a
    jr nz, jr_00e_6836

    ld a, [$d725]
    add $0d
    ld hl, $ff9c
    cp [hl]
    jr c, jr_00e_6836

    ld a, [$ca28]
    ld hl, $d732
    add [hl]
    ld [hl], a

jr_00e_6836:
    ld a, [$de9b]
    cp $01
    jr nz, jr_00e_685d

    ld a, [$c2d1]
    cp $01
    jr z, jr_00e_6848

    cp $03
    jr nz, jr_00e_685b

jr_00e_6848:
    ld a, [$c2d3]
    add $0b
    ld hl, $ff9c
    cp [hl]
    jr c, jr_00e_685b

    ld a, [$ca28]
    ld hl, $c2d5
    add [hl]
    ld [hl], a

jr_00e_685b:
    jr jr_00e_687d

jr_00e_685d:
    ld a, [$c2cd]
    or a
    jr z, jr_00e_687d

    ld a, [$c2d1]
    cp $01
    jr nz, jr_00e_687d

    ld a, [$c2d3]
    add $0b
    ld hl, $ff9c
    cp [hl]
    jr c, jr_00e_687d

    ld a, [$ca28]
    ld hl, $c2d5
    add [hl]
    ld [hl], a

jr_00e_687d:
    ret


Call_00e_687e:
    ld a, [$ca28]
    bit 7, a
    jr nz, jr_00e_688a

    call Call_00e_68b2
    jr jr_00e_688d

jr_00e_688a:
    call Call_00e_68ca

jr_00e_688d:
    ret nc

    ld hl, $ca2a
    inc [hl]
    ld a, [$ca28]
    ld [$ca29], a
    ld e, a
    call Call_00e_4173
    ret


Call_00e_689d:
    call Call_00e_691c
    jr c, jr_00e_68a7

    call Call_00e_6936
    jr nc, jr_00e_68b1

jr_00e_68a7:
    xor a
    ld [$d73a], a
    ld a, $14
    ld [$d739], a
    ret


jr_00e_68b1:
    ret


Call_00e_68b2:
    ld a, [$d163]
    or a
    jr nz, jr_00e_68c1

    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jr jr_00e_68d7

jr_00e_68c1:
    ld a, [$d722]
    add $f8
    ldh [$ff98], a
    jr jr_00e_690c

Call_00e_68ca:
    ld a, [$d163]
    or a
    jr nz, jr_00e_6905

    ld a, [$d722]
    add $07
    ldh [$ff98], a

Jump_00e_68d7:
jr_00e_68d7:
    ld a, [$cc99]
    or a
    jr nz, jr_00e_68e3

    ld d, $f8
    call Call_00e_68f1
    ret c

jr_00e_68e3:
    ld d, $fd
    call Call_00e_68f1
    ret c

    ld d, $05
    call Call_00e_68f1
    ret c

    ld d, $0c

Call_00e_68f1:
jr_00e_68f1:
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


jr_00e_6905:
    ld a, [$d722]
    add $08
    ldh [$ff98], a

Jump_00e_690c:
jr_00e_690c:
    ld d, $fe
    call Call_00e_68f1
    ret c

    ld d, $05
    call Call_00e_68f1
    ret c

    ld d, $0c
    jr jr_00e_68f1

Call_00e_691c:
    ld a, [$d163]
    or a
    jr nz, jr_00e_692c

    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jp Jump_00e_68d7


jr_00e_692c:
    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jp Jump_00e_690c


Call_00e_6936:
    ld a, [$d163]
    or a
    jr nz, jr_00e_6946

    ld a, [$d722]
    add $07
    ldh [$ff98], a
    jp Jump_00e_68d7


jr_00e_6946:
    ld a, [$d722]
    add $07
    ldh [$ff98], a
    jp Jump_00e_690c


Call_00e_6950:
    ld a, $1e
    ld [$ca2d], a
    ld a, $40
    ld [$ca33], a
    xor a
    ld [$ca2c], a
    ret


Call_00e_695f:
    ld a, [$ca2c]
    dec a
    jr z, jr_00e_697a

    dec a
    jr z, jr_00e_699b

    dec a
    jp z, Jump_00e_69b5

    ld hl, $ca2d
    call Call_000_01e9
    jr nz, jr_00e_6979

    ld a, $01
    ld [$ca2c], a

Jump_00e_6979:
jr_00e_6979:
    ret


jr_00e_697a:
    ld a, $7f
    ld [$ca2f], a
    ld de, $6319
    call Call_00e_69fb
    ld a, [$ca33]
    cp $40
    jr c, jr_00e_6994

    ld a, $04
    call Call_000_01a4
    ld [$ca33], a

jr_00e_6994:
    ld a, $02
    ld [$ca2c], a
    jr jr_00e_6979

jr_00e_699b:
    ld de, $6319
    call Call_00e_6a01
    jr nc, jr_00e_69b3

    ld a, $1e
    ld [$ca2d], a
    ld de, $6314
    call Call_00e_69fb
    ld a, $03
    ld [$ca2c], a

jr_00e_69b3:
    jr jr_00e_6979

Jump_00e_69b5:
    ld hl, $ca2d
    call Call_000_01e9
    jr nz, jr_00e_69f8

    ld a, [$ca2e]
    ld e, a
    ld a, [$ca2f]
    ld d, a
    ld hl, $fea0
    add hl, de
    ld a, l
    ld [$ca2e], a
    ld a, h
    ld [$ca2f], a
    ld a, h
    sub d
    ld [$ca28], a
    jr z, jr_00e_69de

    call Call_00e_6a38
    call Call_00e_6a9b

jr_00e_69de:
    ld a, [$ca2f]
    cp $f8
    jr nc, jr_00e_69f8

    cp $f0
    jr c, jr_00e_69f8

    ld hl, $ca33
    call Call_00e_41a1
    ld a, $5a
    ld [$ca2d], a
    xor a
    ld [$ca2c], a

jr_00e_69f8:
    jp Jump_00e_6979


Call_00e_69fb:
    ld hl, $ca30
    jp Jump_00e_41a7


Call_00e_6a01:
    ld hl, $ca30
    jp Jump_00e_41b0


Call_00e_6a07:
    ld a, [$ca33]
    cp $40
    ret nc

    ld a, [$ca2f]
    ld c, a
    ld a, $48
    ld b, a
    ld hl, $6303
    call Call_000_01bc
    ld a, [$ca2f]
    ldh [$ff9b], a
    ld a, $48
    ldh [$ff9c], a
    ld a, [$ca30]
    ld de, $6bfc
    call Call_000_0171
    push de
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [$ca33]
    jp Jump_000_0210


Call_00e_6a38:
    ld a, [$d74b]
    cp $01
    jr nz, jr_00e_6a57

    ld a, [$c2cc]
    bit 7, a
    jr nz, jr_00e_6a57

    ld a, [$d725]
    add $0d
    cp $40
    jr nz, jr_00e_6a57

    ld a, [$ca28]
    ld hl, $d732
    add [hl]
    ld [hl], a

jr_00e_6a57:
    ld a, [$de9b]
    cp $01
    jr nz, jr_00e_6a7c

    ld a, [$c2d1]
    cp $01
    jr z, jr_00e_6a69

    cp $03
    jr nz, jr_00e_6a7a

jr_00e_6a69:
    ld a, [$c2d3]
    add $0b
    cp $40
    jr nz, jr_00e_6a7a

    ld a, [$ca28]
    ld hl, $c2d5
    add [hl]
    ld [hl], a

jr_00e_6a7a:
    jr jr_00e_6a9a

jr_00e_6a7c:
    ld a, [$c2cd]
    or a
    jr z, jr_00e_6a9a

    ld a, [$c2d1]
    cp $01
    jr nz, jr_00e_6a9a

    ld a, [$c2d3]
    add $0b
    cp $40
    jr nz, jr_00e_6a9a

    ld a, [$ca28]
    ld hl, $c2d5
    add [hl]
    ld [hl], a

jr_00e_6a9a:
    ret


Call_00e_6a9b:
    ld a, [$ca2f]
    add $30
    ld e, a
    ld a, $48
    add $30
    ld d, a
    ld hl, $6307
    ld a, [hl+]
    add e
    ldh [$ff93], a
    ld a, [hl+]
    add e
    ldh [$ff94], a
    ld a, [hl+]
    add d
    ldh [$ff95], a
    ld a, [hl+]
    add d
    ldh [$ff96], a
    call Call_000_0279
    ret nc

    ld hl, $ca2a
    inc [hl]
    ld a, [$ca28]
    ld [$ca29], a
    ld e, a
    ld a, [$d722]
    push af
    call Call_00e_4173
    pop de
    ld a, [$d722]
    cp d
    jr nz, jr_00e_6adf

    ld a, [$ca2f]
    ld e, a
    ld d, $03
    call Call_000_026d

jr_00e_6adf:
    ret


Call_00e_6ae0:
    ld a, $01
    ld [$ca00], a
    ld a, $14
    add c
    ld l, a
    res 1, [hl]
    ld a, $1b
    ld [$de96], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc l
    ld a, [hl+]
    ldh [$ff8b], a
    inc l
    ld de, $6ca6
    ld b, $0e
    call Call_000_02d6
    rst $08
    dec h
    ld hl, $62a5
    call Call_00e_67f4
    call Call_00e_65fe
    ld a, $00
    ld [$ca21], a
    ld a, $00
    ld [$ca22], a
    ld a, $40
    ld [$ca1f], a
    ld a, $00
    ld [$ca20], a
    ld a, $02
    ld [$ca02], a
    xor a
    ld [$ca03], a
    ret


Jump_00e_6b2d:
    ld a, [$ca03]
    dec a
    jr z, jr_00e_6b60

    ld hl, $ca02
    call Call_000_01e9
    jr nz, jr_00e_6b55

    call Call_00e_66bc
    ld a, [$ca24]
    cp $80
    jr nz, jr_00e_6b55

    ld hl, $ca04
    call Call_00e_4295
    ld a, $3c
    ld [$ca02], a
    ld a, $01
    ld [$ca03], a

jr_00e_6b55:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld b, $01
    ret


jr_00e_6b60:
    ld hl, $ca02
    call Call_000_01e9
    jr nz, jr_00e_6b95

    jr nc, jr_00e_6b75

    rst $08
    dec h
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a

jr_00e_6b75:
    ld de, $62ad
    ld hl, $ca04
    call Call_00e_4299
    jp z, Jump_00e_635f

    jr c, jr_00e_6b95

    push hl
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld hl, $62cc
    call Call_00e_6bc0
    pop hl
    ld a, [hl]
    or a
    jr z, jr_00e_6b75

jr_00e_6b95:
    jr jr_00e_6b55

Call_00e_6b97:
    rst $08
    dec h
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    ld hl, $628d
    jr z, jr_00e_6baf

    ld hl, $6290

jr_00e_6baf:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld e, a
    ld d, $06
    ld hl, $6294
    call Call_00e_6bc0
    pop hl
    jr jr_00e_6baf

Call_00e_6bc0:
jr_00e_6bc0:
    ldh a, [rLY]
    cp $5a
    jr nc, jr_00e_6bc0

    ld bc, $0101
    push de
    call Call_000_0246
    pop de
    ld a, e
    add a
    add a
    add a
    add a
    add $08
    ld e, a
    ld a, d
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ld a, $04
    jp Jump_000_01cb


Call_00e_6be3:
    ld a, $7f
    ldh [$ffa4], a
    ld a, $21
    ldh [$ffa6], a
    xor a
    ld [$d3ea], a
    ld a, $02
    ld [$cc47], a
    ld b, $00
    ld de, $6299
    jp Jump_000_021f


    ld c, $6c
    inc hl
    ld l, h
    jr c, jr_00e_6c6e

    ld c, l
    ld l, h
    ld h, d
    ld l, h
    ld [hl], a
    ld l, h
    add h
    ld l, h
    sub c
    ld l, h
    sub l
    ld h, d
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
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
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc c
    stop
    ld [$100d], sp
    ld [$0ef8], sp
    stop
    ld [$100f], sp
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
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc b
    stop
    ld [$1005], sp

jr_00e_6c6e:
    ld [$06f8], sp
    stop
    ld [$1007], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    inc d
    db $10
    ld [$1500], sp
    db $10
    add b
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    db $10
    ld [$0200], sp
    db $10
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc d
    stop
    ld [$1016], sp
    ld [$15f8], sp
    stop
    ld [$1017], sp
    add b
    inc b
    rst $38
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
    jr jr_00e_6ce1

    dec d
    inc c
    nop
    inc e

jr_00e_6ce1:
    ldh a, [rP1]
    nop
    ldh [rP1], a
    db $e4
    ldh a, [rP1]
    db $e4
    stop
    nop
    jr nz, jr_00e_6cf3

    inc e
    stop
    inc hl

jr_00e_6cf3:
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
    jr z, jr_00e_6d02

    inc hl

jr_00e_6d02:
    inc d
    cp $ea
    stop
    jr nc, jr_00e_6d59

    ld [bc], a
    jr z, @+$06

    inc b
    inc b
    ld [$0002], sp
    inc b
    inc b
    inc b
    ld [$0002], sp
    inc b
    inc b
    inc b
    ld [$0002], sp
    inc b
    inc b
    inc b
    ld [$0002], sp
    inc b
    inc b
    inc b
    ld [$0002], sp
    inc b
    inc b
    inc b
    ld [$0002], sp
    inc b
    inc b
    inc b
    ld [$0002], sp
    cp $fe
    or c
    ld [hl], c
    cp $bc
    ld [hl], c
    inc a

jr_00e_6d3d:
    nop
    cp $d0
    ld [hl], c
    ld d, b
    nop
    cp $e0
    ld [hl], c
    inc a
    nop
    ld a, b
    nop
    cp $f2
    ld [hl], c
    ld e, $00
    ld bc, $0820
    nop
    ld bc, $4610
    nop
    cp $ed

jr_00e_6d59:
    ld [hl], c
    cp $f2
    ld [hl], c
    inc d
    nop
    ld bc, $1420
    nop
    jr z, jr_00e_6d65

jr_00e_6d65:
    cp $f2
    ld [hl], c
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld [bc], a
    db $10
    rrca
    nop
    ld [bc], a
    jr nz, jr_00e_6dc8

    nop
    cp $1c
    ld [hl], d
    inc a
    nop
    cp $1c
    ld [hl], d
    inc a
    nop
    cp $03
    ld [hl], d
    ld bc, $fe10
    ld a, [$0271]
    jr nz, jr_00e_6d3d

    nop
    cp $0e
    ld [hl], d
    inc a
    nop
    nop
    ld bc, $ca15
    inc bc
    ld [bc], a
    add b
    nop
    db $fc
    ld hl, $f002
    inc l
    ld [bc], a
    db $f4
    inc d
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    db $ed
    jr nz, @+$04

    db $fc
    ld hl, $0402
    ld hl, $0e02
    jr nz, jr_00e_6db1

    ld [bc], a
    ld [de], a

jr_00e_6db1:
    ld [bc], a
    ldh a, [$ff2c]
    ld [bc], a
    rst $30
    ld l, $02
    cp $30
    nop
    inc bc
    cpl
    ld [bc], a
    ld [$022f], sp
    ld [$0214], sp
    di
    ld hl, $c4fe

jr_00e_6dc8:
    ld [$1307], sp
    ld [$5861], sp
    nop

Jump_00e_6dcf:
    ld a, b
    dec b
    jp z, Jump_00e_6e77

    dec b
    jr z, jr_00e_6de1

    dec b
    jp z, Jump_00e_6eac

    dec b
    ret z

    or a
    jp z, Jump_00e_6de8

jr_00e_6de1:
    call Call_00e_46d9
    call Call_00e_7145
    ret


Jump_00e_6de8:
    ld a, [$de8f]
    cp $02
    jp z, Jump_00e_7661

    xor a
    ld [$d1e0], a
    call Call_00e_6e3c
    call Call_00e_6e72
    ld a, $78
    ld [$ca06], a
    ld a, $08
    ld [$ca08], a
    ld a, $39
    add c
    ld l, a
    ld [hl], $00
    ld a, [$de8a]
    or a
    jr nz, jr_00e_6e29

    ld a, $c0
    ld [$ca06], a
    ld a, $32
    add c
    ld l, a
    ld [hl], $2c
    inc l
    ld [hl], $01
    ld a, $38
    add c
    ld l, a
    ld [hl], $00
    ld a, $01
    ld [$d76e], a

jr_00e_6e29:
    ld l, c
    push hl
    call Call_00e_72e0
    call Call_00e_7337
    call Call_00e_7435
    pop hl
    ld c, l
    ld de, $7477
    jp Jump_000_01dd


Call_00e_6e3c:
    ld l, c
    push hl
    ld hl, $ca00
    ld bc, $0021
    xor a
    call Call_000_0174
    ld hl, $cb00
    ld bc, $0013
    xor a
    call Call_000_0174
    call Call_00e_745a
    ld hl, $6d04
    ld de, $ca0e
    ld bc, $0004
    call Call_000_0180
    pop hl
    ld c, l
    call Call_00e_4d1a
    ld a, $05
    add c
    ld l, a
    ld [hl], $9e
    ld a, $1b
    ld [$cb0f], a
    ret


Call_00e_6e72:
    xor a
    ld [$ca19], a
    ret


Jump_00e_6e77:
    ld a, [$deaf]
    or a
    jr z, jr_00e_6e8f

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jp c, Jump_00e_6f06

    cp $05
    jp z, Jump_00e_6f06

    jp Jump_00e_6eac


jr_00e_6e8f:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_00e_6f10

    dec a
    jp z, Jump_00e_6f69

    dec a
    jp z, Jump_00e_6f98

    dec a
    jp z, Jump_00e_6fe9

    dec a
    jp z, Jump_00e_7054

    dec a
    jp z, Jump_00e_7179

Jump_00e_6eac:
    call Call_00e_7224
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, [$ca04]
    or a
    jr z, jr_00e_6ec5

    ld a, $13
    add c
    ld l, a
    set 2, [hl]
    jr jr_00e_6ed0

jr_00e_6ec5:
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    add $0e
    ld l, a
    ld [hl], $00

jr_00e_6ed0:
    ld a, $21
    add c
    ld l, a
    bit 1, [hl]
    ld a, $06
    ld d, $02
    jr nz, jr_00e_6ee2

    ld a, [$ca19]
    ld d, a
    ld a, $1b

jr_00e_6ee2:
    ld [$cb0f], a
    ld a, $17
    add c
    ld l, a
    ld [hl], d
    call Call_00e_4d91

Jump_00e_6eed:
    ld a, [$ca06]
    ld b, a
    ld a, $0a
    add c
    ld l, a
    ld [hl], b
    add $03
    ld l, a
    ld [hl], b
    add $02
    ld l, a
    ld a, [$ca08]
    ld b, a
    ld a, [$ca00]
    add b
    ld [hl], a

Jump_00e_6f06:
jr_00e_6f06:
    push hl
    ld hl, $c2f9
    set 1, [hl]
    pop hl
    ld b, $01
    ret


Jump_00e_6f10:
    ld a, $38
    add c
    ld l, a
    ld a, [hl]
    inc a
    jr z, jr_00e_6f29

    ld [hl], a
    cp $78
    jr nz, jr_00e_6f29

    ld a, $04
    ld [$cca2], a
    ld a, $0c
    ld [$cca0], a
    rst $08
    ld a, [hl+]

jr_00e_6f29:
    ld a, $32
    add c
    ld l, a
    call Call_000_01ec
    jr nz, jr_00e_6f63

    ld l, c
    push hl
    ld hl, $ca05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff80
    add hl, de
    ld a, l
    ld [$ca05], a
    ld a, h
    ld [$ca06], a
    ld a, h
    pop hl
    ld c, l
    cp $79
    jr nc, jr_00e_6f63

    ld a, $78
    ld [$ca06], a
    rst $08
    ld h, b
    xor a
    ld [$d76e], a
    ld a, $39
    add c
    ld l, a
    ld [hl], $3c
    add $f1
    ld l, a
    ld [hl], $01

jr_00e_6f63:
    jr jr_00e_6f06

    ld hl, sp+$08
    db $fc
    inc bc

Jump_00e_6f69:
    ld a, $39
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_00e_6f06

    ld de, $6f93
    call Call_00e_4dec
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_00e_6f90

    ld a, $01
    ld [$de8a], a
    call Call_00e_70d8
    ld a, $2b
    add c
    ld l, a
    ld [hl], $3c

jr_00e_6f90:
    jp Jump_00e_6eac


    ld [hl], a
    ld [hl], h
    jr nc, jr_00e_6f97

jr_00e_6f97:
    rst $38

Jump_00e_6f98:
    call Call_00e_72d6
    jr nz, jr_00e_6fd9

    ld a, $2c
    add c
    ld l, a
    call Call_000_01ec
    jr z, jr_00e_6fdc

    ld a, [hl]
    and $07
    call z, Call_00e_4675
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld de, $0010
    jr nz, jr_00e_6fba

    ld de, $fff0

jr_00e_6fba:
    ld a, $00
    ldh [$ff8b], a
    ld a, $01
    ldh [$ff8c], a
    ld hl, $ca09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$ca09], a
    ld a, d
    ld [$ca0a], a
    call Call_00e_729e

jr_00e_6fd9:
    jp Jump_00e_6eac


jr_00e_6fdc:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_00e_70f5
    jr jr_00e_6fd9

Jump_00e_6fe9:
    call Call_00e_72d6
    jr nz, jr_00e_7051

    ld a, $00
    ldh [$ff8b], a
    ld a, $04
    ldh [$ff8c], a
    ld hl, $ca0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0030
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$ca0b], a
    ld a, d
    ld [$ca0c], a
    ld hl, $ca07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$ca07], a
    ld a, h
    ld [$ca08], a
    ld a, h
    cp $42
    jr c, jr_00e_7051

    rst $08
    ld a, [hl+]
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_00e_7116
    ld a, $01
    ld [$ca0d], a
    ld a, $04
    ld [$ca00], a
    ld a, $04
    ld [$cca2], a
    ld a, $01
    ld [$ca01], a
    ld hl, $ca13
    call Call_00e_4295
    ld hl, $ca13
    ld de, $6d08
    call Call_00e_756b

jr_00e_7051:
    jp Jump_00e_6eac


Jump_00e_7054:
    ld a, [$ca0d]
    or a
    jr z, jr_00e_7064

    ld l, c
    push hl
    ld de, $6d08
    call Call_00e_756b
    pop hl
    ld c, l

jr_00e_7064:
    call Call_00e_4675
    call Call_00e_72d6
    jr nz, jr_00e_7073

    jr nc, jr_00e_7073

    ld a, $01
    ld [$ca04], a

jr_00e_7073:
    ld a, $2c
    add c
    ld l, a
    call Call_000_01ec
    jr nz, jr_00e_70ba

    ld a, $2e
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00e_70a5

    set 0, [hl]
    xor a
    ld [$ca0d], a
    ld [$ca00], a
    ld [$ca01], a
    ld a, $08
    ld [$cca0], a
    ld a, $02
    ld [$cca1], a
    ld a, $00
    ld [$ca04], a
    ld a, $21
    add c
    ld l, a
    ld [hl], $00

jr_00e_70a5:
    call Call_00e_70bd
    jr nc, jr_00e_70ba

    ld a, $08
    ld [$ca08], a
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_00e_70d8

jr_00e_70ba:
    jp Jump_00e_6eac


Call_00e_70bd:
    ld hl, $ca07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca0b]
    ld e, a
    ld a, [$ca0c]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca07], a
    ld a, h
    ld [$ca08], a
    ld a, h
    cp $09
    ret


Call_00e_70d8:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $3c
    inc l
    ld [hl], $f0
    inc l
    ld [hl], $00
    ld a, $00
    ld [$ca09], a
    ld a, $00
    ld [$ca0a], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    ret


Call_00e_70f5:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $08
    ld a, $00
    ld [$ca0b], a
    ld a, $01
    ld [$ca0c], a
    ld a, $01
    ld [$ca12], a
    ld a, $00
    ld [$ca04], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    ret


Call_00e_7116:
    xor a
    ld [$ca12], a
    ld [$ca07], a
    ld a, $42
    ld [$ca08], a
    ld a, $2b
    add c
    ld l, a
    ld [hl], $46
    inc l
    ld [hl], $c8
    inc l
    ld [hl], $00
    ld a, $00
    ld [$ca0b], a
    ld a, $fe
    ld [$ca0c], a
    ld a, $2e
    add c
    ld l, a
    ld [hl], $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    ret


Call_00e_7145:
    ld l, c
    push hl
    call Call_00e_7116
    xor a
    ld [$ca00], a
    ld [$ca01], a
    ld [$cca0], a
    ld a, $80
    ld [$ca0b], a
    ld a, $ff
    ld [$ca0c], a
    ld de, $6d36
    call Call_00e_404a
    xor a
    ld [$ca17], a
    pop hl
    ld c, l
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    ret


    inc de
    ld [hl], d

Jump_00e_7179:
    ld a, [$ca17]
    or a
    jr z, jr_00e_7190

    ld hl, $7175
    call Call_000_016e
    call Call_00e_41a0
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a

jr_00e_7190:
    ld a, [$de96]
    ld [$cb0f], a
    ld a, [$ca06]
    ld [$ca15], a
    ld a, [$ca08]
    ld [$ca16], a
    ld l, c
    push hl
    call Call_00e_405e
    pop hl
    ld c, l
    jr nc, jr_00e_71ae

    call Call_00e_7778

jr_00e_71ae:
    jp Jump_00e_6eed


    ld a, [$d30c]
    or a
    ret z

Jump_00e_71b6:
    ld hl, $d778
    set 0, [hl]
    ret


    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_00e_70bd
    jp nc, Jump_00e_71b6

    ld a, $08
    ld [$ca08], a
    ret


    ld de, $6d90
    ld b, $0e
    call Call_000_02d6
    rst $08
    dec h
    ld a, $19
    ld [$cca0], a
    ret


    ld b, $00
    ldh a, [rOBP0]
    ld e, a
    ldh a, [rOBP1]
    ld d, a
    ld c, $04
    jp Jump_00e_4030


    xor a
    ld [$dd00], a
    ret


    ld a, $08
    ld [$cca0], a
    rst $08
    ld a, [hl+]
    ret


    ld a, [$d722]
    cp $94
    jp c, Jump_00e_71b6

    ret


    ld a, $01
    ld [$ca17], a
    ld a, $00
    ld [$ca18], a
    ret


    xor a
    ld [$ca17], a
    ret


    ld hl, $ca18
    call Call_000_01e9
    ret nz

    ld [hl], $3c
    ld a, $06
    ld [$cca0], a
    rst $08
    ld a, [hl+]
    ret


Call_00e_7224:
    ld a, [$ca08]
    cpl
    inc a
    ld [$ca10], a
    ld a, [$ca06]
    add $30
    ld e, a
    ld a, [$ca08]
    add $30
    ld d, a
    ld hl, $ca0e
    ld a, [hl+]
    add e
    ld b, a
    ld a, [hl+]
    add e
    ld e, a
    inc hl
    ld a, [hl+]
    add d
    ld d, a
    ld a, [$d747]
    cp b
    jr c, jr_00e_727c

    ld a, [$d746]
    cp e
    jr nc, jr_00e_727c

    ld a, [$d748]
    cp d
    jr nc, jr_00e_727c

    ld a, [$d73a]
    or a
    jr z, jr_00e_7262

    ld de, $0300
    jr jr_00e_7268

jr_00e_7262:
    call Call_00e_728b
    ld de, $0400

jr_00e_7268:
    ld a, [$ca06]
    ld b, a
    ld a, [$d722]
    cp b
    call c, Call_000_016b
    ld a, e
    ld [$d735], a
    ld a, d
    ld [$d736], a
    ret


jr_00e_727c:
    ld a, [$ca06]
    ld c, a
    ld a, [$ca08]
    ld b, a
    ld hl, $ca0e
    call Call_000_01bc
    ret


Call_00e_728b:
    ld a, [$ca03]
    or a
    ret nz

    ld a, [$ca12]
    or a
    ret z

    ld a, [$ca06]
    ld e, a
    ld d, $06
    jp Jump_000_026d


Call_00e_729e:
    ld a, [$ca09]
    ld e, a
    ld a, [$ca0a]
    ld d, a
    ld hl, $ca05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    bit 7, d
    ld a, h
    jr nz, jr_00e_72b9

    ld b, $90
    cp b
    jr c, jr_00e_72cc

    jr jr_00e_72be

jr_00e_72b9:
    ld b, $18
    cp b
    jr nc, jr_00e_72cc

jr_00e_72be:
    ld a, $00
    ld [$ca09], a
    ld a, $00
    ld [$ca0a], a
    ld h, b
    scf
    jr jr_00e_72cd

jr_00e_72cc:
    or a

jr_00e_72cd:
    ld a, l
    ld [$ca05], a
    ld a, h
    ld [$ca06], a
    ret


Call_00e_72d6:
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    or a
    ret z

    dec [hl]
    scf
    ret


Call_00e_72e0:
    ld a, [$ca06]
    ld b, a
    ld a, $20
    sub b
    ld [$cb00], a
    ld a, $88
    ld [$cb01], a
    ld a, [$ca00]
    ld l, a
    ld a, [$ca08]
    add l
    ld b, a
    ld a, [$ca0d]
    or a
    jr z, jr_00e_7303

    ld a, [$cc9f]
    add b
    ld b, a

jr_00e_7303:
    ld a, $d0
    sub b
    ld [$cb04], a
    ld a, $10
    ld [$cb03], a
    ld a, $10
    add b
    ld [$cb05], a
    ld a, $30
    add b
    add l
    ld [$cb06], a
    ld a, [$cc9f]
    ld d, a
    ld a, [$d7d2]
    sub d
    sub l
    ld [$cb07], a
    ld a, $70
    add d
    add l
    ld e, a
    ld a, [$cb06]
    cp e
    jr c, jr_00e_7336

    ld a, e
    ld [$cb06], a

jr_00e_7336:
    ret


Call_00e_7337:
    ld a, [$cb00]
    ld [$cb08], a
    ld a, [$cb01]
    ld [$cb09], a
    ld a, [$cb03]
    ld [$cb0a], a
    sub $03
    ld [$cb0b], a
    ld a, [$cb04]
    ld [$cb0c], a
    ld a, [$cb05]
    ld [$cb0d], a
    sub $03
    ld [$cb0e], a
    ld a, [$cb06]
    ld [$cb10], a
    sub $03
    ld [$cb11], a
    ld a, [$cb07]
    ld [$cb12], a
    ret


    ld a, [$cb08]
    ldh [rSCX], a
    ld a, [$cb09]
    ldh [rSCY], a
    ld a, [$cb0b]
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    push bc
    ldh a, [rLYC]
    ld b, a
    ld a, [$cb0b]
    cp b
    jr z, jr_00e_739e

    ld a, [$cb0e]
    cp b
    jr z, jr_00e_73c0

    ld a, [$cb11]
    cp b
    jr z, jr_00e_73e2

    jr jr_00e_740e

jr_00e_739e:
    ld a, [$cb0a]
    ld b, a
    dec b

jr_00e_73a3:
    ldh a, [rLY]
    cp b
    jr c, jr_00e_73a3

jr_00e_73a8:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00e_73a8

jr_00e_73ae:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00e_73ae

    ld a, [$cb0c]
    ldh [rSCY], a
    ld a, [$cb0e]
    ldh [rLYC], a
    jr jr_00e_7433

jr_00e_73c0:
    ld a, [$cb0d]
    ld b, a
    dec b

jr_00e_73c5:
    ldh a, [rLY]
    cp b
    jr c, jr_00e_73c5

jr_00e_73ca:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00e_73ca

jr_00e_73d0:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00e_73d0

    ld a, [$cb0f]
    ldh [rBGP], a
    ld a, [$cb11]
    ldh [rLYC], a
    jr jr_00e_7433

jr_00e_73e2:
    ld a, [$cb12]
    ld c, a
    ld a, [$cb10]
    ld b, a
    dec b

jr_00e_73eb:
    ldh a, [rLY]
    cp b
    jr c, jr_00e_73eb

jr_00e_73f0:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00e_73f0

jr_00e_73f6:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00e_73f6

    ld a, c
    ldh [rSCY], a
    ld a, [$d7d1]
    ldh [rSCX], a
    ld a, $1b
    ldh [rBGP], a
    ld a, $7d
    ldh [rLYC], a
    jr jr_00e_7433

jr_00e_740e:
    ldh a, [rLY]
    cp $7f
    jr c, jr_00e_740e

jr_00e_7414:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00e_7414

jr_00e_741a:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00e_741a

    ld a, [$de97]
    ldh [rLCDC], a
    push hl
    push de
    call Call_00e_72e0
    call Call_00e_7337
    pop de
    pop hl
    xor a
    ld [$de2c], a

jr_00e_7433:
    pop bc
    ret


Call_00e_7435:
    ld a, $c9
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $0e
    dec hl
    ld [hl], $73
    dec hl
    ld [hl], $71
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $0e
    dec hl
    ld [hl], $73
    dec hl
    ld [hl], $86
    dec hl
    ld [hl], $c3
    ret


Call_00e_745a:
    ld hl, $9a00
    ld bc, $0020
    ld a, $00
    call Call_000_0186
    ld hl, $9a20
    ld bc, $01e0
    ld a, $03
    call Call_000_0186
    ld hl, $74bc
    call Call_00e_423f
    ret


    ld a, l
    ld [hl], h
    sub d
    ld [hl], h
    and a
    ld [hl], h
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    ld [$3000], sp
    ld [$01f8], sp
    stop
    ld [$1002], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    dec b
    stop
    ld [$3005], sp
    ld [$01f8], sp
    stop
    ld [$1002], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    inc bc
    stop
    ld [$3003], sp
    ld [$04f8], sp
    stop
    ld [$3004], sp
    add b
    ld hl, $059a
    rrca
    inc bc
    rrca
    stop
    nop
    inc bc
    ld de, $1312
    inc d
    inc bc
    inc bc
    dec d
    ld d, $03
    inc bc
    inc bc
    dec d
    ld d, $03
    inc bc
    inc bc
    dec d
    ld d, $03
    inc bc
    inc bc
    dec d
    ld d, $03
    inc bc
    inc bc
    dec d
    ld d, $03
    inc bc
    inc bc
    rla
    jr jr_00e_74eb

    inc bc
    add hl, de
    ld a, [de]

jr_00e_74eb:
    dec de
    inc e
    inc bc
    dec e
    ld e, $1f
    jr nz, jr_00e_74f6

    ld hl, $2322

jr_00e_74f6:
    inc h
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00e_7539

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    add b
    sbc e
    rlca
    inc b
    inc bc
    inc bc
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc bc
    inc bc
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    inc bc
    inc bc
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc bc
    inc bc
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    add b
    sbc e
    rlca
    inc b
    inc bc
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_00e_7539:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    inc bc
    inc bc
    ld l, d
    ld l, e
    ld l, h
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add b
    sbc e
    rlca
    inc b
    inc bc
    inc bc
    ld l, l
    adc l
    adc [hl]
    adc a
    inc bc
    inc bc
    sub b
    sub c
    sub d
    sub e
    sub h
    inc bc
    inc bc
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    inc bc
    inc bc
    sbc d
    sbc e
    sbc h
    sbc l
    inc bc
    inc bc

Call_00e_756b:
    ld hl, $ca13
    call Call_00e_4299
    ret z

    ret c

jr_00e_7573:
    ldh a, [$ff8a]
    ld [$ca00], a
    ldh a, [$ff8b]
    ld [$cca0], a
    ld a, $02
    ld [$cca1], a
    ld a, $01
    or a
    ret


    ldh a, [c]
    jr jr_00e_7589

jr_00e_7589:
    jr nc, jr_00e_7573

    jr jr_00e_758d

jr_00e_758d:
    ld h, $50
    inc b
    ld [hl-], a
    inc b
    ld b, $04
    ld b, $04
    nop
    inc b
    ld b, $04
    ld b, $04
    nop
    inc b
    ld b, $04
    ld b, $04
    nop
    inc b
    ld b, $04
    ld b, $04
    nop
    inc b
    ld b, $04
    ld b, $04
    nop
    inc b
    ld b, $04
    ld b, $04
    nop
    cp $f4
    ld hl, sp+$0c
    ld hl, sp+$03
    ld bc, $0107
    rrca
    nop
    rrca
    nop
    dec bc
    nop
    inc bc
    ld bc, $10ec
    ld bc, $fe2c
    or c
    ld [hl], c
    ld e, $00
    cp $01
    ld a, c
    inc a
    nop
    cp $56
    ld a, h
    inc a
    nop
    cp $6a
    ld a, h
    inc a
    nop
    cp $e0
    ld [hl], c
    ld a, b
    nop
    cp $7f
    ld a, h
    inc a
    nop
    cp $99
    ld a, h
    inc a
    nop
    nop
    ld bc, $ca15
    inc bc
    ld [bc], a
    add b
    nop
    inc b
    ld hl, $1002
    inc l
    ld [bc], a
    cp $12
    ld [bc], a
    inc de
    jr nz, @+$04

    inc b
    ld hl, $f602
    jr nz, jr_00e_7609

    cp $12

jr_00e_7609:
    ld [bc], a
    add hl, bc
    ld l, $00
    db $fd
    cpl
    ld [bc], a
    ld hl, sp+$14
    ld [bc], a
    dec c
    ld hl, $78fe
    dec b
    jp z, Jump_00e_76a0

    dec b
    jr z, jr_00e_7628

    dec b
    jp z, Jump_00e_76e1

    dec b
    ret z

    or a
    jp z, Jump_00e_7661

jr_00e_7628:
    call Call_00e_46d9
    ld a, $80
    ld [$cc96], a
    call Call_00e_7bd8
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    ld a, $01
    ld [$c3e9], a
    ret


    xor a
    ld [$d756], a
    ld a, $01
    ld [$cc49], a
    ld [$ccc2], a
    ld a, $02
    ld [$ded7], a
    ld l, c
    push hl
    ld a, $0e
    call Call_000_01cb
    pop hl
    ld c, l
    ld a, $02
    ld [$de30], a
    ld b, $00
    ret


Jump_00e_7661:
    call Call_00e_6e3c
    call Call_00e_7689
    ld a, $28
    ld [$ca06], a
    ld a, $08
    ld [$ca08], a
    xor a
    ld [$d703], a
    ld a, $2f
    add c
    ld l, a
    ld [hl], $00
    ld l, c
    push hl
    call Call_00e_72e0
    call Call_00e_7337
    call Call_00e_7435
    pop hl
    ld c, l
    ret


Call_00e_7689:
    call Call_00e_7901
    ld a, $01
    ld [$ca02], a
    ld a, $01
    ld [$ca19], a
    ld a, $00
    add c
    ld l, a
    ld [hl], $16
    inc l
    ld [hl], $76
    ret


Jump_00e_76a0:
    ld a, [$deaf]
    or a
    jr z, jr_00e_76b8

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jp c, Jump_00e_76ee

    cp $08
    jp z, Jump_00e_76ee

    jp Jump_00e_76e1


jr_00e_76b8:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_00e_76f1

    dec a
    jp z, Jump_00e_7747

    dec a
    jp z, Jump_00e_7957

    dec a
    jp z, Jump_00e_79a8

    dec a
    jp z, Jump_00e_7a06

    dec a
    jp z, Jump_00e_7a88

    dec a
    jp z, Jump_00e_7ac1

    dec a
    jp z, Jump_00e_7b8a

    dec a
    jp z, Jump_00e_7c0f

Jump_00e_76e1:
jr_00e_76e1:
    call Call_00e_786e
    xor a
    ld [$cc96], a
    jp Jump_00e_6eac


    jp Jump_00e_6eed


Jump_00e_76ee:
    jp Jump_00e_6f06


Jump_00e_76f1:
    ld a, $24
    add c
    ld l, a
    ld [hl], $01
    xor a
    ld [$ca04], a
    ld l, c
    push hl
    ld hl, $ca05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0066
    add hl, de
    ld a, l
    ld [$ca05], a
    ld a, h
    ld [$ca06], a
    ld a, h
    pop hl
    ld c, l
    cp $0c
    jr nz, jr_00e_771a

    rst $08
    ld h, b
    jr jr_00e_7745

jr_00e_771a:
    cp $c4
    jr nc, jr_00e_7745

    cp $28
    jr c, jr_00e_7745

    ld a, $28
    ld [$ca06], a
    ld a, [$dece]
    or a
    jr nz, jr_00e_7745

    ld a, $39
    add c
    ld l, a
    ld [hl], $1e
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    xor a
    ld [$d76e], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    jr jr_00e_76e1

jr_00e_7745:
    jr jr_00e_76e1

Jump_00e_7747:
    ld a, $39
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_00e_76ee

    ld de, $7773
    call Call_00e_4dec
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_00e_7770

    call Call_00e_786e
    xor a
    ld [$ca1c], a
    call Call_00e_793a
    ld a, $2b
    add c
    ld l, a
    ld [hl], $1e

jr_00e_7770:
    jp Jump_00e_76ee


    ld [hl], a
    ld [hl], h
    jr nc, jr_00e_7778

    rst $38

Call_00e_7778:
jr_00e_7778:
    call Call_00e_7689
    xor a
    ld [$d1e0], a
    call Call_00e_4d1a
    xor a
    ld [$d703], a
    ld [$de29], a
    ld [$d771], a
    ld [$ca03], a
    ld a, $02
    ld [$de8a], a
    ld a, $d0
    ld [$ca06], a
    ld a, $08
    ld [$ca08], a
    ld a, $1b
    ld [$de96], a
    ld [$cb0f], a
    ret


Call_00e_77a7:
    ld a, $2f
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00e_77b5

    ld [hl], $06
    call Call_00e_4675

Call_00e_77b5:
jr_00e_77b5:
    ld a, [$de9e]
    or a
    ret z

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    call z, Call_000_016b
    ld l, c
    push hl
    ld hl, $ca09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$ca09], a
    ld a, d
    ld [$ca0a], a
    call Call_00e_77df
    pop hl
    ld c, l
    ret


Call_00e_77df:
    ld a, [$ca09]
    ld e, a
    ld a, [$ca0a]
    ld d, a
    ld hl, $ca05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    bit 7, d
    ld a, h
    jr nz, jr_00e_77fa

    ld b, $8c
    cp b
    jr c, jr_00e_780d

    jr jr_00e_77ff

jr_00e_77fa:
    ld b, $10
    cp b
    jr nc, jr_00e_780d

jr_00e_77ff:
    ld a, $00
    ld [$ca09], a
    ld a, $00
    ld [$ca0a], a
    ld h, b
    scf
    jr jr_00e_780e

jr_00e_780d:
    or a

jr_00e_780e:
    ld a, l
    ld [$ca05], a
    ld a, h
    ld [$ca06], a
    ret


Call_00e_7817:
    push hl
    ld hl, $ca0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    call Call_000_0213
    ld a, e
    ld [$ca0b], a
    ld a, d
    ld [$ca0c], a
    ld hl, $ca07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$ca07], a
    ld a, h
    ld [$ca08], a
    ld a, [$ca1e]
    ld b, a
    ld a, h
    pop hl
    cp b
    ret c

    ld a, b
    ld [$ca08], a
    ret


Call_00e_7848:
    push hl
    ld hl, $ca07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca0b]
    ld e, a
    ld a, [$ca0c]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca07], a
    ld a, h
    ld [$ca08], a
    ld a, [$ca1e]
    ld b, a
    ld a, h
    pop hl
    dec a
    cp b
    ret nc

    ld a, b
    ld [$ca08], a
    ret


Call_00e_786e:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $18
    add c
    ld l, a
    ld a, [$ca1a]
    cp [hl]
    ret z

    push hl
    ld a, [hl]
    ld hl, $ca1a
    ld [hl+], a
    ld b, $00

jr_00e_7887:
    sub $05
    jr c, jr_00e_788e

    inc b
    jr jr_00e_7887

jr_00e_788e:
    ld a, b
    cp [hl]
    jr z, jr_00e_7898

    ld [hl], b
    ld a, $01
    ld [$ca1c], a

jr_00e_7898:
    pop hl
    ret


Call_00e_789a:
    ld a, [$cc96]
    or a
    ret nz

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld de, $75ba
    jr z, jr_00e_78ad

    ld de, $75c0

jr_00e_78ad:
    push hl
    ld hl, $ca20
    ld a, [hl]
    inc a
    cp $03
    jr c, jr_00e_78b8

    xor a

jr_00e_78b8:
    ld [hl], a
    pop hl
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    or a
    ld de, $75b6
    jr z, jr_00e_78ce

    ld de, $75b8

jr_00e_78ce:
    push hl
    call Call_000_0204
    pop hl
    push hl
    push bc
    call Call_000_0291
    pop bc
    pop hl
    ret


Call_00e_78db:
    ld a, [$ca06]
    ld e, a
    ld a, [$ca08]
    ld d, a
    ld a, [$75c8]
    add e
    ld e, a
    ld a, [$75c9]
    add d
    ld d, a
    call Call_00e_4018
    push hl
    ld hl, $d727
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$d724], a
    ld [$d721], a
    pop hl
    ret


Call_00e_7901:
    ld l, c
    push hl
    ld hl, $750b
    call Call_00e_423f
    ld hl, $7586
    ld de, $ca0e
    ld bc, $0004
    call Call_000_0180
    pop hl
    ld c, l
    ret


Call_00e_7918:
    ld l, c
    push hl
    ld hl, $752b
    call Call_00e_423f
    ld hl, $758a
    ld de, $ca0e
    ld bc, $0004
    call Call_000_0180
    pop hl
    ld c, l
    ret


Call_00e_792f:
    ld l, c
    push hl
    ld hl, $754b
    call Call_00e_423f
    pop hl
    ld c, l
    ret


Call_00e_793a:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $3c
    inc l
    ld [hl], $c8
    inc l
    ld [hl], $00
    ld a, $00
    ld [$ca09], a
    ld a, $00
    ld [$ca0a], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    ret


Jump_00e_7957:
    call Call_00e_72d6
    jr nz, jr_00e_7973

    ld a, $2c
    add c
    ld l, a
    call Call_000_01ec
    jr z, jr_00e_7976

    ld a, $40
    ldh [$ff8b], a
    ld a, $01
    ldh [$ff8c], a
    ld de, $0030
    call Call_00e_77a7

jr_00e_7973:
    jp Jump_00e_76e1


jr_00e_7976:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_00e_7987
    xor a
    ld [$ca1f], a
    jr jr_00e_7973

Call_00e_7987:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $08
    ld a, $00
    ld [$ca0b], a
    ld a, $02
    ld [$ca0c], a
    ld a, $01
    ld [$ca12], a
    ld a, $00
    ld [$ca04], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    ret


Jump_00e_79a8:
    call Call_00e_72d6
    jr nz, jr_00e_79ea

    ld a, $42
    ld [$ca1e], a
    ld a, $00
    ldh [$ff8b], a
    ld a, $05
    ldh [$ff8c], a
    ld de, $0040
    call Call_00e_7817
    jr c, jr_00e_79ea

    rst $08
    ld a, [hl+]
    call Call_00e_79ed
    ld a, $01
    ld [$ca0d], a
    ld a, $04
    ld [$ca00], a
    ld a, $04
    ld [$cca2], a
    ld a, $01
    ld [$ca01], a
    ld hl, $ca13
    call Call_00e_4295
    ld hl, $ca13
    ld de, $758e
    call Call_00e_756b

jr_00e_79ea:
    jp Jump_00e_76e1


Call_00e_79ed:
    xor a
    ld [$ca12], a
    ld [$ca07], a
    ld a, $42
    ld [$ca08], a
    ld a, $30
    add c
    ld l, a
    ld [hl], $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    ret


Jump_00e_7a06:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    inc a
    jr z, jr_00e_7a31

    ld [hl], a
    cp $46
    jr z, jr_00e_7a19

    cp $82
    jr z, jr_00e_7a2b

    jr jr_00e_7a31

jr_00e_7a19:
    ld a, [$ca1f]
    or a
    jr z, jr_00e_7a24

    call Call_00e_7a53
    jr jr_00e_7a50

jr_00e_7a24:
    ld a, $01
    ld [$ca04], a
    jr jr_00e_7a31

jr_00e_7a2b:
    call Call_00e_7a9d
    call Call_00e_789a

jr_00e_7a31:
    ld a, [$d76d]
    and $07
    call z, Call_00e_4675
    ld l, c
    push hl
    ld de, $758e
    call Call_00e_756b
    pop hl
    ld c, l
    jr nz, jr_00e_7a50

    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_00e_7a53

jr_00e_7a50:
    jp Jump_00e_76e1


Call_00e_7a53:
    xor a
    ld [$ca0d], a
    ld [$ca00], a
    ld [$ca01], a
    ld a, $08
    ld [$cca0], a
    ld a, $02
    ld [$cca1], a
    ld a, $00
    ld [$ca04], a
    ld a, $21
    add c
    ld l, a
    ld [hl], $00
    add $0a
    ld l, a
    ld [hl], $00
    ld a, $00
    ld [$ca0b], a
    ld a, $fd
    ld [$ca0c], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    ret


Jump_00e_7a88:
    call Call_00e_72d6
    jr nz, jr_00e_7a9a

    ld a, $08
    ld [$ca1e], a
    call Call_00e_7848
    jr nc, jr_00e_7a9a

    call Call_00e_793a

jr_00e_7a9a:
    jp Jump_00e_76e1


Call_00e_7a9d:
    xor a
    ld [$ca1c], a
    call Call_00e_7a53
    ld a, $01
    ld [$ca04], a
    call Call_00e_4675
    ld a, $30
    ld [$ca1e], a
    ld a, $31
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $08
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    ret


Jump_00e_7ac1:
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00e_7adc

    dec a
    jr z, jr_00e_7af4

    call Call_00e_7848
    jr nc, jr_00e_7b46

    ld a, $31
    add c
    ld l, a
    ld [hl], $01
    dec l
    ld [hl], $00
    jr jr_00e_7b46

jr_00e_7adc:
    ld a, $30
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0f
    jr z, jr_00e_7aef

    cp $1e
    jr nz, jr_00e_7b46

    inc l
    ld [hl], $02
    jr jr_00e_7b46

jr_00e_7aef:
    call Call_00e_7918
    jr jr_00e_7b46

jr_00e_7af4:
    ld a, $80
    ldh [$ff8b], a
    ld a, $00
    ldh [$ff8c], a
    ld de, $0030
    call Call_00e_77b5
    jr nc, jr_00e_7b11

    ld a, $32
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_00e_7b49

    xor a
    ld [$ca04], a

jr_00e_7b11:
    push hl
    ld hl, $75c6
    ld a, [$ca06]
    ld b, a
    add [hl]
    ld e, a
    inc hl
    ld a, b
    add [hl]
    pop hl
    ld d, a
    ld a, [$d722]
    ld b, $00
    cp e
    jr c, jr_00e_7b3e

    inc b
    cp d
    jr nc, jr_00e_7b3e

    ld a, [$d163]
    or a
    jr nz, jr_00e_7b46

    ld a, [$d725]
    cp $38
    jr c, jr_00e_7b49

    call Call_00e_7b5b
    jr jr_00e_7b46

jr_00e_7b3e:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    cp b
    jr nz, jr_00e_7b49

jr_00e_7b46:
    jp Jump_00e_76e1


jr_00e_7b49:
    call Call_00e_7901
    call Call_00e_7a53
    ld a, $2b
    add c
    ld l, a
    ld [hl], $08
    xor a
    ld [$cca0], a
    jr jr_00e_7b46

Call_00e_7b5b:
    call Call_00e_792f
    ld l, c
    push hl
    call Call_00e_78db
    pop hl
    ld c, l
    ld a, $31
    add c
    ld l, a
    ld [hl], $00
    ld a, $00
    ld [$ca0b], a
    ld a, $ff
    ld [$ca0c], a
    ld a, $08
    ld [$ca1e], a
    ld a, $01
    ld [$ca1d], a
    xor a
    ld [$ca04], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $07
    ret


Jump_00e_7b8a:
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00e_7ba4

    call Call_00e_78db
    call Call_00e_7848
    jr nc, jr_00e_7bd5

    ld a, $31
    add c
    ld l, a
    inc [hl]
    dec l
    ld [hl], $00
    jr jr_00e_7bd5

jr_00e_7ba4:
    ld a, [$ca1d]
    or a
    call nz, Call_00e_78db
    ld a, $30
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $3c
    jr z, jr_00e_7bbf

    cp $46
    jr z, jr_00e_7bc8

    cp $50
    jr nc, jr_00e_7bcd

    jr jr_00e_7bd5

jr_00e_7bbf:
    call Call_00e_7918
    xor a
    ld [$ca1d], a
    jr jr_00e_7bd5

jr_00e_7bc8:
    call Call_00e_7901
    jr jr_00e_7bd5

jr_00e_7bcd:
    call Call_00e_7987
    ld a, $01
    ld [$ca1f], a

jr_00e_7bd5:
    jp Jump_00e_76e1


Call_00e_7bd8:
    ld l, c
    push hl
    call Call_00e_7a53
    xor a
    ld [$ca00], a
    ld [$ca01], a
    ld [$cca0], a
    ld a, $80
    ld [$ca0b], a
    ld a, $ff
    ld [$ca0c], a
    ld de, $75ca
    call Call_00e_404a
    xor a
    ld [$ca17], a
    pop hl
    ld c, l
    ld a, $13
    add c
    ld l, a
    res 2, [hl]
    ld a, $01
    ld [$d74c], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $08
    ret


Jump_00e_7c0f:
    ld a, [$ca17]
    or a
    jr z, jr_00e_7c26

    ld hl, $7175
    call Call_000_016e
    call Call_00e_41a0
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a

jr_00e_7c26:
    ld a, [$de96]
    ld [$cb0f], a
    ld a, [$ca06]
    ld [$ca15], a
    ld a, [$ca08]
    ld [$ca16], a
    ld l, c
    push hl
    call Call_00e_405e
    pop hl
    ld c, l
    jr nc, jr_00e_7c53

    ld a, [$def0]
    res 2, a
    ld [$def0], a
    ld a, $ff
    ld [$df80], a
    ld a, $12
    jp Jump_000_0297


jr_00e_7c53:
    jp Jump_00e_6eed


    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $08
    ld [$ca1e], a
    call Call_00e_7848
    jp nc, Jump_00e_71b6

    ret


    ld de, $75ee
    ld b, $0e
    call Call_000_02d6
    rst $08
    dec h
    ld a, $30
    ld [$cca0], a
    ld a, $01
    ld [$ca0d], a
    ret


    call Call_000_01c5
    ld a, $c9
    ld [$c0f0], a
    ld a, $1b
    ld [$de96], a
    ld b, $01
    call Call_000_023a
    rst $08
    ld h, e
    ld a, $01
    ld [$de56], a
    ret


    ld a, [$d722]
    cp $b2
    jr z, jr_00e_7ca9

    cp $cc
    jr c, jr_00e_7cb9

    xor a
    ld [$d771], a
    ret


jr_00e_7ca9:
    rst $28
    ld l, $3e
    ld bc, $a6ea
    call z, $ff06
    ld e, b
    ld d, b
    ld c, $04
    call Call_00e_4030

jr_00e_7cb9:
    ld d, $10
    call Call_00e_40b8
    jp Jump_00e_71b6


    nop
    rst $38
    nop
    nop
    db $f4
    dec bc
    db $f4
    ld a, [bc]
    ld hl, sp+$07
    ei
    ld b, $f8
    ld [bc], a
    ld [$ca02], sp
    db $10
    rlca
    add hl, bc
    inc bc
    dec h
    ld b, a
    nop

Jump_00e_7cd9:
    ld a, b
    dec b
    jr z, jr_00e_7d04

    dec b
    jr z, jr_00e_7ce9

    dec b
    jp z, Jump_00e_7d41

    dec b
    ret z

    or a
    jr z, jr_00e_7cec

jr_00e_7ce9:
    ld b, $00
    ret


jr_00e_7cec:
    call Call_00e_4675
    call Call_00e_7d6b
    ld a, $2c
    add c
    ld l, a
    ld [hl], $00
    ld de, $7cc5
    call Call_00e_47b5
    ld de, $7e3d
    jp Jump_000_01dd


jr_00e_7d04:
    call Call_00e_4a98
    ld a, [$deaf]
    or a
    jp nz, Jump_00e_7d41

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00e_7d44

    ld de, $7e13
    call Call_000_015f
    ld a, $2c
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00e_7d2b

    call Call_000_01e6
    jr nz, jr_00e_7d41

    jr jr_00e_7d38

jr_00e_7d2b:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $08
    jr c, jr_00e_7d41

    cp $98
    jr nc, jr_00e_7d41

jr_00e_7d38:
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    call Call_00e_7d7a

Jump_00e_7d41:
jr_00e_7d41:
    jp Jump_00e_468d


jr_00e_7d44:
    ld de, $7e19
    call Call_00e_47fd
    jr c, jr_00e_7d5f

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00e_7d5d

    res 0, [hl]
    ld l, c
    push hl
    call Call_00e_7d96
    pop hl
    ld c, l

jr_00e_7d5d:
    jr jr_00e_7d41

jr_00e_7d5f:
    call Call_00e_7d6b
    jr jr_00e_7d5d

Call_00e_7d64:
    ld a, $2d
    add c
    ld l, a
    ld [hl], $01
    ret


Call_00e_7d6b:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $78
    ret


Call_00e_7d7a:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $02
    ld l, a
    ld [hl], $00
    ret


    or b
    ld a, l
    ld b, a
    dec h
    nop
    dec a
    ld a, [hl]
    ld b, $02
    ld b, b
    inc b
    ld c, $c4

Call_00e_7d96:
    ld de, $7ccd
    ld a, $89
    ld [$cc00], a
    ld a, $7d
    ld [$cc01], a
    call Call_00e_4839
    ret c

    ld de, $7cc1
    call Call_00e_44f3
    jp Jump_000_015c


    dec b
    jr z, jr_00e_7db8

    dec b
    jr nz, jr_00e_7dd2

    jr jr_00e_7dd5

jr_00e_7db8:
    ld a, [$deaf]
    or a
    jr nz, jr_00e_7dd2

    ld a, [$d76d]
    bit 0, a
    jr nz, jr_00e_7dcf

    ld de, $7cc9
    call Call_00e_462c
    jr nz, jr_00e_7dd5

    jr jr_00e_7dd2

jr_00e_7dcf:
    call Call_00e_457e

jr_00e_7dd2:
    jp Jump_00e_468d


jr_00e_7dd5:
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    add $20
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld l, $02
    ld a, $02
    call Call_00e_7e09
    ld a, $06
    call Call_00e_7e09
    ld a, $0a
    call Call_00e_7e09
    ld a, $0e
    call Call_00e_7e09
    ld b, $00
    ret


Call_00e_7e09:
    push hl
    push de
    push bc
    call Call_000_0159
    pop bc
    pop de
    pop hl
    ret


    dec a
    ld a, [hl]
    ld [$0100], sp
    rst $38
    dec a
    ld a, [hl]
    ld [$0300], sp
    inc b
    dec b
    call Call_00e_7d64
    inc b
    inc bc
    nop
    rst $38
    dec a
    ld a, [hl]
    ld [$ff06], sp
    dec a
    ld a, [hl]
    ld [$ff07], sp
    dec a
    ld a, [hl]
    ld [$0100], sp
    nop
    inc bc
    inc b
    dec b
    inc b
    inc bc
    rst $38
    ld d, l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    and a
    ld a, [hl]
    ret nc

    ld a, [hl]
    ld sp, hl
    ld a, [hl]
    ld [hl+], a
    ld a, a
    ld c, e
    ld a, a
    ld h, b
    ld a, a
    ld l, c
    ld a, a
    sub [hl]
    ld a, a
    jp $f97f


    ld a, [hl]
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
    ld [$1002], sp
    ld [$0500], sp
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
    db $10
    ld [$0600], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    push af
    dec bc
    push af
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0500], sp
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
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
    db $f4
    inc c
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$0500], sp
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$0d
    db $10
    ld [$0600], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1002], sp
    ld [$0500], sp
    stop
    ld hl, sp+$11
    stop
    ld hl, sp+$10
    db $10
    ld [$1200], sp
    stop
    ld [$1013], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    db $f4
    inc d
    stop
    ld [$1015], sp
    nop
    ld [$1002], sp
    ld [$0500], sp
    stop
    ld hl, sp+$17
    stop
    ld hl, sp+$16
    db $10
    ld [$1800], sp
    stop
    ld [$1019], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    db $f4
    inc d
    stop
    ld [$1015], sp
    nop
    ld [$1002], sp
    ld [$0500], sp
    stop
    ld hl, sp+$17
    stop
    ld hl, sp+$1a
    db $10
    ld [$1b00], sp
    stop
    ld [$1019], sp
    nop
    ld [$1008], sp
    add b
    ld hl, sp+$07
    ei
    ld b, $f8
    ld hl, sp+$1c
    stop
    ld [$101d], sp
    ld [$1f00], sp
    stop
    ld hl, sp+$1e
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    jr nz, @+$12

    add b
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
    ld [$1002], sp
    db $fd
    ld [$1021], sp
    dec bc
    ld hl, sp+$05
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
    db $10
    ld [$0600], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    push af
    dec bc
    push af
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    db $fc
    ld [$1022], sp
    inc c
    ld hl, sp+$05
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
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
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    db $fd
    ld [$1023], sp
    dec bc
    ld hl, sp+$05
    stop
    ld hl, sp+$04
    stop
    ld hl, sp+$03
    db $10
    ld [$0600], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
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
