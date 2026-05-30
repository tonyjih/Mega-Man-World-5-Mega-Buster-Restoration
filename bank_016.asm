; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_016_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_016_403f

    ld [hl], $20
    inc sp
    ld h, d
    inc sp
    ld h, d
    jp Jump_016_697c


    jp Jump_016_75f1


    call Call_016_4105
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
    call Call_016_41be
    pop de
    ld a, $24
    add c

jr_016_403f:
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_016_405e

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
    jr nz, jr_016_4054

    inc a

jr_016_4054:
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


Jump_016_405e:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a

jr_016_406b:
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
    jr z, jr_016_409b

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_016_4091

    inc a

jr_016_4091:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_016_409b:
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
    jr jr_016_40b9

    ld a, $1f
    add c
    ld l, a

jr_016_40b9:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_016_40c3

    inc d

jr_016_40c3:
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


Call_016_4105:
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
    jr nz, jr_016_4120

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_016_4120

    ld de, $0350

jr_016_4120:
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
    jr nz, jr_016_415a

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_016_4145

    xor a

jr_016_4145:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_016_415a

    ld a, [de]
    add b
    cp $d0
    jr c, jr_016_4153

    xor a

jr_016_4153:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_016_415a:
    or a
    ret


    push de
    call Call_016_4105
    pop de
    call Call_016_4175
    ret z

    bit 0, a
    jr z, jr_016_416d

    ld a, $1d
    jr jr_016_416f

jr_016_416d:
    ld a, $1f

jr_016_416f:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_016_4175:
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


Call_016_41be:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_016_41cf

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_016_41d0

jr_016_41cf:
    inc d

jr_016_41d0:
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
    jr nc, jr_016_41e6

    cp $90
    jr nc, jr_016_41fb

jr_016_41e6:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_016_41f3

    cp $c0
    jr nc, jr_016_41fb

jr_016_41f3:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_016_41fb:
    xor a
    ld b, a
    ret


Call_016_41fe:
jr_016_41fe:
    call Call_016_420a
    inc hl
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_016_41fe

    ret


Call_016_420a:
    ldh a, [rLCDC]
    and $80
    jr z, jr_016_421d

    di

jr_016_4211:
    ldh a, [rSTAT]
    and $03
    jr z, jr_016_4211

jr_016_4217:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_016_4217

jr_016_421d:
    ld a, [hl]
    ei
    ret


Call_016_4220:
    push de
    ret


Call_016_4222:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_016_4236:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_016_4249

    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_016_424f

    dec [hl]

jr_016_4249:
    ld a, [$d773]
    ld d, a
    jr jr_016_4290

jr_016_424f:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_016_4255:
    ld a, [hl+]
    or a
    jr nz, jr_016_4260

    ld d, $00
    call Call_016_4290
    scf
    ret


jr_016_4260:
    cp $fe
    jr nz, jr_016_4282

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $d778
    res 0, [hl]
    push hl
    call Call_016_4220
    pop hl
    bit 0, [hl]
    pop hl
    jr nz, jr_016_4249

    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a
    jr jr_016_4255

jr_016_4282:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_016_4290:
jr_016_4290:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


    ld hl, $d778
    set 0, [hl]
    ret


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

Jump_016_42a7:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_016_42ab:
    push bc
    push de
    push bc
    ld de, $d29d
    ld a, [$d29c]
    ld b, a

jr_016_42b5:
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    dec c
    jr nz, jr_016_42b5

    pop bc
    pop de
    push hl
    push de
    ld b, $00
    ld hl, $d29d
    call Call_000_0183
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec b
    jr nz, jr_016_42ab

    ret


Jump_016_42d5:
jr_016_42d5:
    push bc
    push af
    push hl
    ld b, $00
    call Call_000_0186
    pop hl
    ld bc, $0020
    add hl, bc
    pop af
    pop bc
    dec b
    jr nz, jr_016_42d5

    ret


Call_016_42e8:
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


Call_016_4302:
jr_016_4302:
    ld a, [$cca8]
    and $07
    jr nz, jr_016_4302

jr_016_4309:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_016_4309

    ret


Call_016_4312:
    ld a, l
    sub e
    ld a, h
    sbc d
    ret


Call_016_4317:
    ld c, a
    xor a
    ld [$d8af], a
    ld [$d8b0], a
    ld a, e
    ld [$d8b4], a
    ld a, d
    ld [$d8b5], a
    ld a, b
    or a
    jr z, jr_016_433c

    ld a, h
    and $80
    jr z, jr_016_433c

    ld a, $2d
    ld [$d8b0], a
    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc hl

jr_016_433c:
    ld e, l
    ld d, h
    ld b, c
    ld a, c
    add a
    ld hl, $43a9
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_016_434a:
    push bc
    dec hl
    dec hl
    ld c, $ff

jr_016_434f:
    inc c
    ld a, e
    or a
    sbc [hl]
    inc hl
    ld e, a
    ld a, d
    sbc [hl]
    dec hl
    ld d, a
    jr nc, jr_016_434f

    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    ld a, c
    or a
    jr z, jr_016_437e

    ld a, [$d8af]
    inc a
    ld [$d8af], a
    cp $01
    jr nz, jr_016_437e

    ld a, [$d8b0]
    cp $2d
    jr nz, jr_016_437e

    push bc
    ld c, $2d
    call Call_016_4394
    pop bc

jr_016_437e:
    pop af
    ld b, a
    cp $01
    jr nz, jr_016_438b

    ld a, [$d8af]
    inc a
    ld [$d8af], a

jr_016_438b:
    push bc
    call Call_016_4394
    pop bc
    dec b
    jr nz, jr_016_434a

    ret


Call_016_4394:
    push hl
    push de
    ld a, [$d8af]
    ld b, a
    call Call_016_43a0
    pop de
    pop hl
    ret


Call_016_43a0:
    ld a, [$d8b4]
    ld l, a
    ld a, [$d8b5]
    ld h, a
    jp hl


    ld bc, $0a00
    nop
    ld h, h
    nop
    add sp, $03
    db $10
    daa

Jump_016_43b3:
    sla e
    sla e
    sla e
    ld a, [$d7d1]
    add e
    ld e, a
    sla d
    sla d
    sla d
    ld a, [$d7d2]
    add d
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
    ld a, [$cf82]
    ld e, a
    ld a, [$cf83]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ret


    call Call_000_019e

Jump_016_43e7:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_016_43f1:
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
    or [hl]
    pop hl
    inc bc
    ld [hl], a
    jr jr_016_43f1

    rlca
    nop
    rra
    rlca
    inc a
    rra
    ld a, a
    inc a
    ld a, l
    ld h, $e4
    ld e, a
    db $e4
    ld e, e
    rst $28
    ld d, h
    ldh [rP1], a
    ldh a, [$ffe0]
    ld hl, sp-$10
    adc b
    ld [hl], b
    call c, Call_000_0420
    ld hl, sp+$04
    ld hl, sp-$24
    jr nz, jr_016_444d

    dec b
    rlca
    ld bc, $0205
    dec bc
    ld b, $0f
    rlca
    rrca
    rlca
    dec bc
    rlca
    dec b
    inc bc

jr_016_444d:
    ldh [$ffdf], a
    rst $38
    ldh [rIE], a
    rst $38
    rst $38

jr_016_4454:
    call z, $51ee
    ldh [$ff9f], a
    pop af
    xor $f3
    db $ec
    ld b, b
    add b
    ldh [$ffc0], a
    ldh [$ffc0], a
    ldh a, [$ffc0]
    ldh a, [rLCDC]
    ret c

    jr nc, @-$06

    jr nc, jr_016_4454

    ret nc

    ld b, $01
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    inc bc
    rlca
    nop
    ld c, $01
    dec de
    inc c
    rra
    nop
    rst $38
    pop hl
    rst $38
    dec e
    rst $38
    db $fc
    db $fd
    ld a, [$07f8]
    ld b, h
    add e
    rst $28
    nop
    rst $28
    nop
    ldh a, [$ffc0]
    ldh [$ffc0], a
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    nop
    ldh [rP1], a
    or b
    ld h, b
    ldh a, [rP1]

Call_016_449d:
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
Bank16TextPointers:
    dw $c937, Bank16Text_01, Bank16Text_02, Bank16Text_03, Bank16Text_04, Bank16Text_05, Bank16Text_06, Bank16Text_07
    dw Bank16Text_08, Bank16Text_09, Bank16Text_0a, Bank16Text_0b, Bank16Text_0c, Bank16Text_0d, Bank16Text_0e, Bank16Text_0f
    dw Bank16Text_10, Bank16Text_11, Bank16Text_12, Bank16Text_13, Bank16Text_14, Bank16Text_15, Bank16Text_16, Bank16Text_17
    dw Bank16Text_18, Bank16Text_19, Bank16Text_1a, Bank16Text_1b, Bank16Text_1c, Bank16Text_1d, Bank16Text_1e, Bank16Text_1f
    dw Bank16Text_20, Bank16Text_21, Bank16Text_22, Bank16Text_23, Bank16Text_24, Bank16Text_25, Bank16Text_26, Bank16Text_27
    dw Bank16Text_28, Bank16Text_29, Bank16Text_2a, Bank16Text_2b, Bank16Text_2c, Bank16Text_2d, Bank16Text_2e, Bank16Text_2f
    dw Bank16Text_30, Bank16Text_31, Bank16Text_32, Bank16Text_33, Bank16Text_34, Bank16Text_35, Bank16Text_36, Bank16Text_37
    dw Bank16Text_38, Bank16Text_39, Bank16Text_3a, Bank16Text_3b, Bank16Text_3c

Bank16Text_01:
    ; Message(s): $01
    ; MEGAMAN,<FB><3C> OUR
    ; WORLD IS ONCE<WAIT>
    ;
    ; AGAIN IN CHAOS.
    ; <FB><3C>THE ALIEN ROBOTS<WAIT>
    ;
    ; CALL THEMSELVES
    ; "STARDROIDS" AND<WAIT>
    ;
    ; HAVE CONQUERED
    ; MOST OUR MAJOR<WAIT>
    ;
    ; CITIES.
    ; <FB><3C>THEY ARE<WAIT>
    ;
    ; CONSTRUCTED OF
    ; ALIEN MATERIAL<WAIT>
    ;
    ; WHICH RENDER OUR
    ; WEAPONS USELESS.<WAIT>
    db $18, $10, $12, $0c, $18, $0c, $19, $27, $fb, $3c, $01, $1a, $20, $1d, $fe, $22
    db $1a, $1d, $17, $0f, $01, $14, $1e, $01, $1a, $19, $0e, $10, $f7, $fd, $0c, $12
    db $0c, $14, $19, $01, $14, $19, $01, $0e, $13, $0c, $1a, $1e, $26, $fe, $fb, $3c
    db $1f, $13, $10, $01, $0c, $17, $14, $10, $19, $01, $1d, $1a, $0d, $1a, $1f, $1e
    db $f7, $fd, $0e, $0c, $17, $17, $01, $1f, $13, $10, $18, $1e, $10, $17, $21, $10
    db $1e, $fe, $2e, $1e, $1f, $0c, $1d, $0f, $1d, $1a, $14, $0f, $1e, $2e, $01, $0c
    db $19, $0f, $f7, $fd, $13, $0c, $21, $10, $01, $0e, $1a, $19, $1c, $20, $10, $1d
    db $10, $0f, $fe, $18, $1a, $1e, $1f, $01, $1a, $20, $1d, $01, $18, $0c, $15, $1a
    db $1d, $f7, $fd, $0e, $14, $1f, $14, $10, $1e, $26, $fe, $fb, $3c, $1f, $13, $10
    db $24, $01, $0c, $1d, $10, $f7, $fd, $0e, $1a, $19, $1e, $1f, $1d, $20, $0e, $1f
    db $10, $0f, $01, $1a, $11, $fe, $0c, $17, $14, $10, $19, $01, $18, $0c, $1f, $10
    db $1d, $14, $0c, $17, $f7, $fd, $22, $13, $14, $0e, $13, $01, $1d, $10, $19, $0f
    db $10, $1d, $01, $1a, $20, $1d, $fe, $22, $10, $0c, $1b, $1a, $19, $1e, $01, $20
    db $1e, $10, $17, $10, $1e, $1e, $26, $f7, $00

Bank16Text_02:
    ; Message(s): $02
    ; BUT, I HAVE DONE
    ; SOME ANALYSIS<WAIT>
    ;
    ; AND CONSTRUCTED
    ; A NEW WEAPON FOR<WAIT>
    ;
    ; YOU.  <FB><3C>IT WILL
    ; REPLACE YOUR<WAIT>
    ;
    ; SUPER MEGA
    ; BUSTER.<WAIT>
    db $0d, $20, $1f, $27, $01, $14, $01, $13, $0c, $21, $10, $01, $0f, $1a, $19, $10
    db $fe, $1e, $1a, $18, $10, $01, $0c, $19, $0c, $17, $24, $1e, $14, $1e, $f7, $fd
    db $0c, $19, $0f, $01, $0e, $1a, $19, $1e, $1f, $1d, $20, $0e, $1f, $10, $0f, $fe
    db $0c, $01, $19, $10, $22, $01, $22, $10, $0c, $1b, $1a, $19, $01, $11, $1a, $1d
    db $f7, $fd, $24, $1a, $20, $26, $01, $01, $fb, $3c, $14, $1f, $01, $22, $14, $17
    db $17, $fe, $1d, $10, $1b, $17, $0c, $0e, $10, $01, $24, $1a, $20, $1d, $f7, $fd
    db $1e, $20, $1b, $10, $1d, $01, $18, $10, $12, $0c, $fe, $0d, $20, $1e, $1f, $10
    db $1d, $26, $f7, $00

Bank16Text_03:
    ; Message(s): $03
    ; OH, MEGAMAN!
    ; <FB><3C>DID YOU BRING<WAIT>
    ;
    ; BACK THE
    ; P CHIPS?<WAIT>
    db $1a, $13, $27, $01, $18, $10, $12, $0c, $18, $0c, $19, $29, $fe, $fb, $3c, $0f
    db $14, $0f, $01, $24, $1a, $20, $01, $0d, $1d, $14, $19, $12, $f7, $fd, $0d, $0c
    db $0e, $16, $01, $1f, $13, $10, $fe, $1b, $01, $0e, $13, $14, $1b, $1e, $2a, $f7
    db $00

Bank16Text_04:
    ; Message(s): $04
    ; SELECT THE ITEM
    ; YOU WANT.<F4>COLLECT <06> OF
    ; THESE AND YOU<WAIT>
    ;
    ; WILL EARN A
    ; E TANK.<WAIT>
    db $1e, $10, $17, $10, $0e, $1f, $01, $1f, $13, $10, $01, $14, $1f, $10, $18, $fe
    db $24, $1a, $20, $01, $22, $0c, $19, $1f, $26, $f4

Bank16Text_05:
    ; Message(s): $05
    ; COLLECT <06> OF
    ; THESE AND YOU<WAIT>
    ;
    ; WILL EARN A
    ; E TANK.<WAIT>
    db $0e, $1a, $17, $17, $10, $0e, $1f, $01, $06, $01, $1a, $11, $fe, $1f, $13, $10
    db $1e, $10, $01, $0c, $19, $0f, $01, $24, $1a, $20, $f7, $fd, $22, $14, $17, $17
    db $01, $10, $0c, $1d, $19, $01, $0c, $fe, $10, $01, $1f, $0c, $19, $16, $26, $f7
    db $00

Bank16Text_06:
    ; Message(s): $06
    ; YOU CAN TOTALLY
    ; RECHARGE ONE OF<WAIT>
    ;
    ; YOUR WEAPONS
    ; WITH THIS ITEM.<WAIT>
    db $24, $1a, $20, $01, $0e, $0c, $19, $01, $1f, $1a, $1f, $0c, $17, $17, $24, $fe
    db $1d, $10, $0e, $13, $0c, $1d, $12, $10, $01, $1a, $19, $10, $01, $1a, $11, $f7
    db $fd, $24, $1a, $20, $1d, $01, $22, $10, $0c, $1b, $1a, $19, $1e, $fe, $22, $14
    db $1f, $13, $01, $1f, $13, $14, $1e, $01, $14, $1f, $10, $18, $26, $f7, $00

Bank16Text_07:
    ; Message(s): $07
    ; YOU CAN TOTALLY
    ; RECHARGE YOUR<WAIT>
    ;
    ; ENERGY LEVEL
    ; WITH THIS ITEM.<WAIT>
    db $24, $1a, $20, $01, $0e, $0c, $19, $01, $1f, $1a, $1f, $0c, $17, $17, $24, $fe
    db $1d, $10, $0e, $13, $0c, $1d, $12, $10, $01, $24, $1a, $20, $1d, $f7, $fd, $10
    db $19, $10, $1d, $12, $24, $01, $17, $10, $21, $10, $17, $fe, $22, $14, $1f, $13
    db $01, $1f, $13, $14, $1e, $01, $14, $1f, $10, $18, $26, $f7, $00

Bank16Text_08:
    ; Message(s): $08
    ; YOU CAN TOTALLY
    ; RECHARGE YOUR<WAIT>
    ;
    ; ENERGY LEVEL AND
    ; ALL OF YOUR<WAIT>
    ;
    ; WEAPONS WITH
    ; THIS ITEM.<WAIT>
    db $24, $1a, $20, $01, $0e, $0c, $19, $01, $1f, $1a, $1f, $0c, $17, $17, $24, $fe
    db $1d, $10, $0e, $13, $0c, $1d, $12, $10, $01, $24, $1a, $20, $1d, $f7, $fd, $10
    db $19, $10, $1d, $12, $24, $01, $17, $10, $21, $10, $17, $01, $0c, $19, $0f, $fe
    db $0c, $17, $17, $01, $1a, $11, $01, $24, $1a, $20, $1d, $f7, $fd, $22, $10, $0c
    db $1b, $1a, $19, $1e, $01, $22, $14, $1f, $13, $fe, $1f, $13, $14, $1e, $01, $14
    db $1f, $10, $18, $26, $f7, $00

Bank16Text_09:
    ; Message(s): $09
    ; EXTRA LIFE.<WAIT>
    db $10, $23, $1f, $1d, $0c, $01, $17, $14, $11, $10, $26, $f7, $00

Bank16Text_0a:
    ; Message(s): $0a
    ; WITH THIS ITEM,
    ; THE WEAPON WITH<WAIT>
    ;
    ; THE LEAST AMOUNT
    ; OF ENERGY WILL<WAIT>
    ;
    ; BE REFILLED
    ; AUTOMATICALLY<WAIT>
    ;
    ; WHEN YOU PICK UP
    ; AN WEAPON<WAIT>
    ;
    ; CAPSULE.<WAIT>
    db $22, $14, $1f, $13, $01, $1f, $13, $14, $1e, $01, $14, $1f, $10, $18, $27, $fe
    db $1f, $13, $10, $01, $22, $10, $0c, $1b, $1a, $19, $01, $22, $14, $1f, $13, $f7
    db $fd, $1f, $13, $10, $01, $17, $10, $0c, $1e, $1f, $01, $0c, $18, $1a, $20, $19
    db $1f, $fe, $1a, $11, $01, $10, $19, $10, $1d, $12, $24, $01, $22, $14, $17, $17
    db $f7, $fd, $0d, $10, $01, $1d, $10, $11, $14, $17, $17, $10, $0f, $fe, $0c, $20
    db $1f, $1a, $18, $0c, $1f, $14, $0e, $0c, $17, $17, $24, $f7, $fd, $22, $13, $10
    db $19, $01, $24, $1a, $20, $01, $1b, $14, $0e, $16, $01, $20, $1b, $fe, $0c, $19
    db $01, $22, $10, $0c, $1b, $1a, $19, $f7, $fd, $0e, $0c, $1b, $1e, $20, $17, $10
    db $26, $f7, $00

Bank16Text_0b:
    ; Message(s): $0b
    ; ALL OF YOUR
    ; WEAPONS WILL BE<WAIT>
    ;
    ; IMMEDIATELY
    ; REFILLED.<WAIT>
    db $0c, $17, $17, $01, $1a, $11, $01, $24, $1a, $20, $1d, $fe, $22, $10, $0c, $1b
    db $1a, $19, $1e, $01, $22, $14, $17, $17, $01, $0d, $10, $f7, $fd, $14, $18, $18
    db $10, $0f, $14, $0c, $1f, $10, $17, $24, $fe, $1d, $10, $11, $14, $17, $17, $10
    db $0f, $26, $f7, $00

Bank16Text_0c:
    ; Message(s): $0c
    ; YOU CAN'T CARRY
    ; ANY MORE OF THAT<WAIT>
    ;
    ; ITEM.<WAIT>
    db $24, $1a, $20, $01, $0e, $0c, $19, $28, $1f, $01, $0e, $0c, $1d, $1d, $24, $fe
    db $0c, $19, $24, $01, $18, $1a, $1d, $10, $01, $1a, $11, $01, $1f, $13, $0c, $1f
    db $f7, $fd, $14, $1f, $10, $18, $26, $f7, $00

Bank16Text_0d:
    ; Message(s): $0d
    ; ALL OF YOUR
    ; WEAPONS ARE<WAIT>
    ;
    ; ALREADY FULL.<WAIT>
    db $0c, $17, $17, $01, $1a, $11, $01, $24, $1a, $20, $1d, $fe, $22, $10, $0c, $1b
    db $1a, $19, $1e, $01, $0c, $1d, $10, $f7, $fd, $0c, $17, $1d, $10, $0c, $0f, $24
    db $01, $11, $20, $17, $17, $26, $f7, $00

Bank16Text_0e:
    ; Message(s): $0e
    ; YOU NEED <F5>
    ; P CHIPS FOR THIS<WAIT>
    ;
    ; ITEM.<WAIT>
    db $24, $1a, $20, $01, $19, $10, $10, $0f, $01, $f5, $fe, $1b, $01, $0e, $13, $14
    db $1b, $1e, $01, $11, $1a, $1d, $01, $1f, $13, $14, $1e, $f7, $fd, $14, $1f, $10
    db $18, $26, $f7, $00

Bank16Text_0f:
    ; Message(s): $0f
    ; DO YOU WANT
    ; THIS ITEM?<WAIT>
    ;
    ; THIS ITEM?
    ;    B<30>NO  A<30>YES<F6>
    db $0f, $1a, $01, $24, $1a, $20, $01, $22, $0c, $19, $1f, $fe, $1f, $13, $14, $1e
    db $01, $14, $1f, $10, $18, $2a, $f7, $fd, $1f, $13, $14, $1e, $01, $14, $1f, $10
    db $18, $2a, $fe, $01, $01, $01, $0d, $30, $19, $1a, $01, $01, $0c, $30, $24, $10
    db $1e, $f6, $00

Bank16Text_10:
    ; Message(s): $10
    ; YOU DON'T HAVE
    ; ENOUGH P CHIPS.<WAIT>
    db $24, $1a, $20, $01, $0f, $1a, $19, $28, $1f, $01, $13, $0c, $21, $10, $fe, $10
    db $19, $1a, $20, $12, $13, $01, $1b, $01, $0e, $13, $14, $1b, $1e, $26, $f7, $00

Bank16Text_11:
    ; Message(s): $11
    ; SELECT THE ITEM
    ; YOU WANT.<F4>ARE YOU
    ; FINISHED?<WAIT>
    ;
    ; FINISHED?
    ;    B<30>NO  A<30>YES<F6>
    db $1e, $10, $17, $10, $0e, $1f, $01, $1f, $13, $10, $01, $14, $1f, $10, $18, $fe
    db $24, $1a, $20, $01, $22, $0c, $19, $1f, $26, $f4

Bank16Text_12:
    ; Message(s): $12
    ; ARE YOU
    ; FINISHED?<WAIT>
    ;
    ; FINISHED?
    ;    B<30>NO  A<30>YES<F6>
    db $0c, $1d, $10, $01, $24, $1a, $20, $fe, $11, $14, $19, $14, $1e, $13, $10, $0f
    db $2a, $f7, $fd, $11, $14, $19, $14, $1e, $13, $10, $0f, $2a, $fe, $01, $01, $01
    db $0d, $30, $19, $1a, $01, $01, $0c, $30, $24, $10, $1e, $f6, $00

Bank16Text_13:
    ; Message(s): $13
    ; GOOD LUCK,
    ; MEGAMAN!<WAIT>
    db $12, $1a, $1a, $0f, $01, $17, $20, $0e, $16, $27, $fe, $18, $10, $12, $0c, $18
    db $0c, $19, $29, $f7, $00

Bank16Text_14:
    ; Message(s): $14
    ; IT IS CALLED THE
    ; "MEGA ARM" AND<WAIT>
    ;
    ; IT ALLOWS YOU TO
    ; CHARGE ENERGY IN<WAIT>
    ;
    ; YOUR FIST BEFORE
    ; YOU FIRE IT.<WAIT>
    db $14, $1f, $01, $14, $1e, $01, $0e, $0c, $17, $17, $10, $0f, $01, $1f, $13, $10
    db $fe, $2e, $18, $10, $12, $0c, $01, $0c, $1d, $18, $2e, $01, $0c, $19, $0f, $f7
    db $fd, $14, $1f, $01, $0c, $17, $17, $1a, $22, $1e, $01, $24, $1a, $20, $01, $1f
    db $1a, $fe, $0e, $13, $0c, $1d, $12, $10, $01, $10, $19, $10, $1d, $12, $24, $01
    db $14, $19, $f7, $fd, $24, $1a, $20, $1d, $01, $11, $14, $1e, $1f, $01, $0d, $10
    db $11, $1a, $1d, $10, $fe, $24, $1a, $20, $01, $11, $14, $1d, $10, $01, $14, $1f
    db $26, $f7, $00

Bank16Text_15:
    ; Message(s): $15
    ; I HAVE ALSO
    ; CREATED A NEW<WAIT>
    ;
    ; ASSISTANT FOR
    ; YOU.  <FB><3C>HIS NAME<WAIT>
    ;
    ; IS "TANGO".<WAIT>
    db $14, $01, $13, $0c, $21, $10, $01, $0c, $17, $1e, $1a, $fe, $0e, $1d, $10, $0c
    db $1f, $10, $0f, $01, $0c, $01, $19, $10, $22, $f7, $fd, $0c, $1e, $1e, $14, $1e
    db $1f, $0c, $19, $1f, $01, $11, $1a, $1d, $fe, $24, $1a, $20, $26, $01, $01, $fb
    db $3c, $13, $14, $1e, $01, $19, $0c, $18, $10, $f7, $fd, $14, $1e, $01, $2e, $1f
    db $0c, $19, $12, $1a, $2e, $26, $f7, $00

Bank16Text_16:
    ; Message(s): $16
    ; I'LL ENHANCE
    ; THIS ITEM<WAIT>
    ;
    ; REPLICATOR TO
    ; MAKE POWERFUL<WAIT>
    ;
    ; ITEMS FOR YOU.
    ; <FB><3C>COLLECT AS MANY<WAIT>
    ;
    ; P CHIPS AS
    ; POSSIBLE AND<WAIT>
    ;
    ; RETURN TO MY LAB
    ; TO EXCHANGE THEM<WAIT>
    ;
    ; FOR POWER-UP
    ; ITEMS.<WAIT>
    ;
    ; GOOD LUCK,
    ; MEGAMAN.<WAIT>
    db $14, $28, $17, $17, $01, $10, $19, $13, $0c, $19, $0e, $10, $fe, $1f, $13, $14
    db $1e, $01, $14, $1f, $10, $18, $f7, $fd, $1d, $10, $1b, $17, $14, $0e, $0c, $1f
    db $1a, $1d, $01, $1f, $1a, $fe, $18, $0c, $16, $10, $01, $1b, $1a, $22, $10, $1d
    db $11, $20, $17, $f7, $fd, $14, $1f, $10, $18, $1e, $01, $11, $1a, $1d, $01, $24
    db $1a, $20, $26, $fe, $fb, $3c, $0e, $1a, $17, $17, $10, $0e, $1f, $01, $0c, $1e
    db $01, $18, $0c, $19, $24, $f7, $fd, $1b, $01, $0e, $13, $14, $1b, $1e, $01, $0c
    db $1e, $fe, $1b, $1a, $1e, $1e, $14, $0d, $17, $10, $01, $0c, $19, $0f, $f7, $fd
    db $1d, $10, $1f, $20, $1d, $19, $01, $1f, $1a, $01, $18, $24, $01, $17, $0c, $0d
    db $fe, $1f, $1a, $01, $10, $23, $0e, $13, $0c, $19, $12, $10, $01, $1f, $13, $10
    db $18, $f7, $fd, $11, $1a, $1d, $01, $1b, $1a, $22, $10, $1d, $2f, $20, $1b, $fe
    db $14, $1f, $10, $18, $1e, $26, $f7, $fd, $12, $1a, $1a, $0f, $01, $17, $20, $0e
    db $16, $27, $fe, $18, $10, $12, $0c, $18, $0c, $19, $26, $f7, $00

Bank16Text_17:
    ; Message(s): $17
    ; <F9><78>IN THE YEAR <04><02>XX
    ; AD, THE WORLD IS
    ;
    ; AT PEACE THANKS
    ; TO MEGAMAN.<FB><F0><F4>
    db $f9, $78, $14, $19, $01, $1f, $13, $10, $01, $24, $10, $0c, $1d, $01, $04, $02
    db $23, $23, $fe, $0c, $0f, $27, $01, $1f, $13, $10, $01, $22, $1a, $1d, $17, $0f
    db $01, $14, $1e, $fd, $0c, $1f, $01, $1b, $10, $0c, $0e, $10, $01, $1f, $13, $0c
    db $19, $16, $1e, $fe, $1f, $1a, $01, $18, $10, $12, $0c, $18, $0c, $19, $26, $fb
    db $f0, $f4, $00

Bank16Text_18:
    ; Message(s): $18
    ; <F9><5A>
    ;
    ; DR. WILY'S
    ; FOURTH ATTEMPT
    ;
    ; AT WORLD
    ; DOMINATION HAS
    ;
    ; FAILED AND HIS
    ; NAME HAS ONCE
    ;
    ; AGAIN FADED FROM
    ; THE MINDS OF THE
    ;
    ; CITIZENS OF THE
    ; WORLD.<FB><3C>
    ;
    ; A FEW MONTHS
    ; LATER...<FB>D<F4>
    db $f9, $5a, $fd, $0f, $1d, $26, $01, $22, $14, $17, $24, $28, $1e, $fe, $11, $1a
    db $20, $1d, $1f, $13, $01, $0c, $1f, $1f, $10, $18, $1b, $1f, $fd, $0c, $1f, $01
    db $22, $1a, $1d, $17, $0f, $fe, $0f, $1a, $18, $14, $19, $0c, $1f, $14, $1a, $19
    db $01, $13, $0c, $1e, $fd, $11, $0c, $14, $17, $10, $0f, $01, $0c, $19, $0f, $01
    db $13, $14, $1e, $fe, $19, $0c, $18, $10, $01, $13, $0c, $1e, $01, $1a, $19, $0e
    db $10, $fd, $0c, $12, $0c, $14, $19, $01, $11, $0c, $0f, $10, $0f, $01, $11, $1d
    db $1a, $18, $fe, $1f, $13, $10, $01, $18, $14, $19, $0f, $1e, $01, $1a, $11, $01
    db $1f, $13, $10, $fd, $0e, $14, $1f, $14, $25, $10, $19, $1e, $01, $1a, $11, $01
    db $1f, $13, $10, $fe, $22, $1a, $1d, $17, $0f, $26, $fb, $3c, $fd, $0c, $01, $11
    db $10, $22, $01, $18, $1a, $19, $1f, $13, $1e, $fe, $17, $0c, $1f, $10, $1d, $26
    db $26, $26, $fb, $0f, $f4, $00

Bank16Text_19:
    ; Message(s): $19
    ; <F9><78>SO, YOU ARE THE
    ; FAMOUS MEGAMAN!<FB><78>
    ;
    ; I AM TERRA - AND
    ; YOU WILL SOON BE
    ;
    ; MY SLAVE!<FB><78><F4>
    db $f9, $78, $1e, $1a, $27, $01, $24, $1a, $20, $01, $0c, $1d, $10, $01, $1f, $13
    db $10, $fe, $11, $0c, $18, $1a, $20, $1e, $01, $18, $10, $12, $0c, $18, $0c, $19
    db $29, $fb, $78, $fd, $14, $01, $0c, $18, $01, $1f, $10, $1d, $1d, $0c, $01, $2f
    db $01, $0c, $19, $0f, $fe, $24, $1a, $20, $01, $22, $14, $17, $17, $01, $1e, $1a
    db $1a, $19, $01, $0d, $10, $fd, $18, $24, $01, $1e, $17, $0c, $21, $10, $29, $fb
    db $78, $f4, $00

Bank16Text_1a:
    ; Message(s): $1a
    ; <F9><78>WHAT?!  <FB><3C>MY MEGA
    ; BUSTER HAS NO
    ;
    ; EFFECT ON HIM...<FB><78><F4>
    db $f9, $78, $22, $13, $0c, $1f, $2a, $29, $01, $01, $fb, $3c, $18, $24, $01, $18
    db $10, $12, $0c, $fe, $0d, $20, $1e, $1f, $10, $1d, $01, $13, $0c, $1e, $01, $19
    db $1a, $fd, $10, $11, $11, $10, $0e, $1f, $01, $1a, $19, $01, $13, $14, $18, $26
    db $26, $26, $fb, $78, $f4, $00

Bank16Text_1b:
    ; Message(s): $1b
    ; <F9><78>A FEW HOURS
    ; LATER, THE WORLD
    ;
    ; WAS ATTACKED BY
    ; WARRIOR ROBOTS
    ;
    ; FROM SPACE.<FB><B4><F4>
    db $f9, $78, $0c, $01, $11, $10, $22, $01, $13, $1a, $20, $1d, $1e, $fe, $17, $0c
    db $1f, $10, $1d, $27, $01, $1f, $13, $10, $01, $22, $1a, $1d, $17, $0f, $fd, $22
    db $0c, $1e, $01, $0c, $1f, $1f, $0c, $0e, $16, $10, $0f, $01, $0d, $24, $fe, $22
    db $0c, $1d, $1d, $14, $1a, $1d, $01, $1d, $1a, $0d, $1a, $1f, $1e, $fd, $11, $1d
    db $1a, $18, $01, $1e, $1b, $0c, $0e, $10, $26, $fb, $b4, $f4, $00

Bank16Text_1c:
    ; Message(s): $1c
    ; <F9><78>WHERE AM I?<FB><78><F4>
    db $f9, $78, $22, $13, $10, $1d, $10, $01, $0c, $18, $01, $14, $2a, $fb, $78, $f4
    db $00

Bank16Text_1d:
    ; Message(s): $1d
    ; <F9><78>DR. LIGHT FOUND
    ; MEGAMAN AND
    ;
    ; EQUIPPED HIM
    ; WITH THE NEW
    ;
    ; "MEGA ARM".
    ; THE MOST
    ;
    ; POWERFUL WEAPON
    ; EVER DEVISED.<FB><78><F4>
    db $f9, $78, $0f, $1d, $26, $01, $17, $14, $12, $13, $1f, $01, $11, $1a, $20, $19
    db $0f, $fe, $18, $10, $12, $0c, $18, $0c, $19, $01, $0c, $19, $0f, $fd, $10, $1c
    db $20, $14, $1b, $1b, $10, $0f, $01, $13, $14, $18, $fe, $22, $14, $1f, $13, $01
    db $1f, $13, $10, $01, $19, $10, $22, $fd, $2e, $18, $10, $12, $0c, $01, $0c, $1d
    db $18, $2e, $26, $fe, $1f, $13, $10, $01, $18, $1a, $1e, $1f, $fd, $1b, $1a, $22
    db $10, $1d, $11, $20, $17, $01, $22, $10, $0c, $1b, $1a, $19, $fe, $10, $21, $10
    db $1d, $01, $0f, $10, $21, $14, $1e, $10, $0f, $26, $fb, $78, $f4, $00

Bank16Text_1e:
    ; Message(s): $1e
    ; <F9><78>WHY HAVE THE
    ; STARDROIDS COME
    ;
    ; HERE!?<FB><78><F4>
    db $f9, $78, $22, $13, $24, $01, $13, $0c, $21, $10, $01, $1f, $13, $10, $fe, $1e
    db $1f, $0c, $1d, $0f, $1d, $1a, $14, $0f, $1e, $01, $0e, $1a, $18, $10, $fd, $13
    db $10, $1d, $10, $29, $2a, $fb, $78, $f4, $00

Bank16Text_1f:
    ; Message(s): $1f
    ; THIS IS A
    ; POWER-UP ITEM<WAIT>
    ;
    ; FOR THE
    ; "MEGA ARM".<WAIT>
    ;
    ; ONCE INSTALLED,
    ; YOU CAN GRAB AN<WAIT>
    ;
    ; ITEM FROM FAR
    ; AWAY.<WAIT>
    db $1f, $13, $14, $1e, $01, $14, $1e, $01, $0c, $fe, $1b, $1a, $22, $10, $1d, $2f
    db $20, $1b, $01, $14, $1f, $10, $18, $f7, $fd, $11, $1a, $1d, $01, $1f, $13, $10
    db $fe, $2e, $18, $10, $12, $0c, $01, $0c, $1d, $18, $2e, $26, $f7, $fd, $1a, $19
    db $0e, $10, $01, $14, $19, $1e, $1f, $0c, $17, $17, $10, $0f, $27, $fe, $24, $1a
    db $20, $01, $0e, $0c, $19, $01, $12, $1d, $0c, $0d, $01, $0c, $19, $f7, $fd, $14
    db $1f, $10, $18, $01, $11, $1d, $1a, $18, $01, $11, $0c, $1d, $fe, $0c, $22, $0c
    db $24, $26, $f7, $00

Bank16Text_20:
    ; Message(s): $20
    ; THIS IS A
    ; POWER-UP ITEM<WAIT>
    ;
    ; FOR THE
    ; "MEGA ARM".<WAIT>
    ;
    ; ONCE INSTALLED,
    ; YOU CAN GRAB AND<WAIT>
    ;
    ; ATTACK THE ENEMY
    ; OVER AND OVER.<WAIT>
    db $1f, $13, $14, $1e, $01, $14, $1e, $01, $0c, $fe, $1b, $1a, $22, $10, $1d, $2f
    db $20, $1b, $01, $14, $1f, $10, $18, $f7, $fd, $11, $1a, $1d, $01, $1f, $13, $10
    db $fe, $2e, $18, $10, $12, $0c, $01, $0c, $1d, $18, $2e, $26, $f7, $fd, $1a, $19
    db $0e, $10, $01, $14, $19, $1e, $1f, $0c, $17, $17, $10, $0f, $27, $fe, $24, $1a
    db $20, $01, $0e, $0c, $19, $01, $12, $1d, $0c, $0d, $01, $0c, $19, $0f, $f7, $fd
    db $0c, $1f, $1f, $0c, $0e, $16, $01, $1f, $13, $10, $01, $10, $19, $10, $18, $24
    db $fe, $1a, $21, $10, $1d, $01, $0c, $19, $0f, $01, $1a, $21, $10, $1d, $26, $f7
    db $00

Bank16Text_21:
    ; Message(s): $21
    ; THIS POWER
    ; GENERATOR WAS<WAIT>
    ;
    ; MADE FROM THE <06>
    ; CRYSTALS YOU<WAIT>
    ;
    ; BROUGHT BACK.
    ; <FB><3C>THE POWER<WAIT>
    ;
    ; GENERATOR WILL
    ; REDUCE THE<WAIT>
    ;
    ; AMOUNT OF ENERGY
    ; YOUR SPECIAL<WAIT>
    ;
    ; WEAPONS USE BY
    ; HALF.<WAIT>
    ;
    ; NO P CHIPS ARE
    ; REQUIRED FOR<WAIT>
    ;
    ; THIS ITEM, ONLY
    ; THE CRYSTALS.<WAIT>
    db $1f, $13, $14, $1e, $01, $1b, $1a, $22, $10, $1d, $fe, $12, $10, $19, $10, $1d
    db $0c, $1f, $1a, $1d, $01, $22, $0c, $1e, $f7, $fd, $18, $0c, $0f, $10, $01, $11
    db $1d, $1a, $18, $01, $1f, $13, $10, $01, $06, $fe, $0e, $1d, $24, $1e, $1f, $0c
    db $17, $1e, $01, $24, $1a, $20, $f7, $fd, $0d, $1d, $1a, $20, $12, $13, $1f, $01
    db $0d, $0c, $0e, $16, $26, $fe, $fb, $3c, $1f, $13, $10, $01, $1b, $1a, $22, $10
    db $1d, $f7, $fd, $12, $10, $19, $10, $1d, $0c, $1f, $1a, $1d, $01, $22, $14, $17
    db $17, $fe, $1d, $10, $0f, $20, $0e, $10, $01, $1f, $13, $10, $f7, $fd, $0c, $18
    db $1a, $20, $19, $1f, $01, $1a, $11, $01, $10, $19, $10, $1d, $12, $24, $fe, $24
    db $1a, $20, $1d, $01, $1e, $1b, $10, $0e, $14, $0c, $17, $f7, $fd, $22, $10, $0c
    db $1b, $1a, $19, $1e, $01, $20, $1e, $10, $01, $0d, $24, $fe, $13, $0c, $17, $11
    db $26, $f7, $fd, $19, $1a, $01, $1b, $01, $0e, $13, $14, $1b, $1e, $01, $0c, $1d
    db $10, $fe, $1d, $10, $1c, $20, $14, $1d, $10, $0f, $01, $11, $1a, $1d, $f7, $fd
    db $1f, $13, $14, $1e, $01, $14, $1f, $10, $18, $27, $01, $1a, $19, $17, $24, $fe
    db $1f, $13, $10, $01, $0e, $1d, $24, $1e, $1f, $0c, $17, $1e, $26, $f7, $00

Bank16Text_22:
    ; Message(s): $22
    ; YOU CAN'T MAKE
    ; ANY MORE OF THIS<WAIT>
    ;
    ; ITEM.<WAIT>
    db $24, $1a, $20, $01, $0e, $0c, $19, $28, $1f, $01, $18, $0c, $16, $10, $fe, $0c
    db $19, $24, $01, $18, $1a, $1d, $10, $01, $1a, $11, $01, $1f, $13, $14, $1e, $f7
    db $fd, $14, $1f, $10, $18, $26, $f7, $00

Bank16Text_23:
    ; Message(s): $23
    ; DR. LIGHT!!
    ; <FB><3C>I FOUND THIS<WAIT>
    ;
    ; CRYSTAL ON THE
    ; PLANET!<WAIT>
    ;
    ; YOU BETTER
    ; ANALYZE IT.<WAIT>
    ;
    ; LET ME SEE...<FB><78><WAIT>
    ;
    ; WELL, THIS
    ; CRYSTAL SEEMS TO<WAIT>
    ;
    ; BE THE ENERGY
    ; SOURCE USED BY<WAIT>
    ;
    ; THAT PLANET'S
    ; ANCIENT<WAIT>
    ;
    ; CIVILIZATION.
    ; <FB><3C>WITH <06> OF THESE,<WAIT>
    ;
    ; I CAN MAKE AN
    ; ITEM THAT WILL<WAIT>
    ;
    ; REDUCE THE
    ; ENERGY<WAIT>
    ;
    ; CONSUMPTION OF
    ; YOUR SPECIAL<WAIT>
    ;
    ; WEAPONS BY HALF.
    ; <FB><3C>I ASSUME THERE<WAIT>
    ;
    ; ARE SIMILAR
    ; CRYSTALS LIKE<WAIT>
    ;
    ; THIS ON OTH
    db $0f, $1d, $26, $01, $17, $14, $12, $13, $1f, $29, $29, $fe, $fb, $3c, $14, $01
    db $11, $1a, $20, $19, $0f, $01, $1f, $13, $14, $1e, $f7, $fd, $0e, $1d, $24, $1e
    db $1f, $0c, $17, $01, $1a, $19, $01, $1f, $13, $10, $fe, $1b, $17, $0c, $19, $10
    db $1f, $29, $f7, $fd, $24, $1a, $20, $01, $0d, $10, $1f, $1f, $10, $1d, $fe, $0c
    db $19, $0c, $17, $24, $25, $10, $01, $14, $1f, $26, $f7, $fd, $17, $10, $1f, $01
    db $18, $10, $01, $1e, $10, $10, $26, $26, $26, $fb, $78, $f7, $fd, $22, $10, $17
    db $17, $27, $01, $1f, $13, $14, $1e, $fe, $0e, $1d, $24, $1e, $1f, $0c, $17, $01
    db $1e, $10, $10, $18, $1e, $01, $1f, $1a, $f7, $fd, $0d, $10, $01, $1f, $13, $10
    db $01, $10, $19, $10, $1d, $12, $24, $fe, $1e, $1a, $20, $1d, $0e, $10, $01, $20
    db $1e, $10, $0f, $01, $0d, $24, $f7, $fd, $1f, $13, $0c, $1f, $01, $1b, $17, $0c
    db $19, $10, $1f, $28, $1e, $fe, $0c, $19, $0e, $14, $10, $19, $1f, $f7, $fd, $0e
    db $14, $21, $14, $17, $14, $25, $0c, $1f, $14, $1a, $19, $26, $fe, $fb, $3c, $22
    db $14, $1f, $13, $01, $06, $01, $1a, $11, $01, $1f, $13, $10, $1e, $10, $27, $f7
    db $fd, $14, $01, $0e, $0c, $19, $01, $18, $0c, $16, $10, $01, $0c, $19, $fe, $14
    db $1f, $10, $18, $01, $1f, $13, $0c, $1f, $01, $22, $14, $17, $17, $f7, $fd, $1d
    db $10, $0f, $20, $0e, $10, $01, $1f, $13, $10, $fe, $10, $19, $10, $1d, $12, $24
    db $f7, $fd, $0e, $1a, $19, $1e, $20, $18, $1b, $1f, $14, $1a, $19, $01, $1a, $11
    db $fe, $24, $1a, $20, $1d, $01, $1e, $1b, $10, $0e, $14, $0c, $17, $f7, $fd, $22
    db $10, $0c, $1b, $1a, $19, $1e, $01, $0d, $24, $01, $13, $0c, $17, $11, $26, $fe
    db $fb, $3c, $14, $01, $0c, $1e, $1e, $20, $18, $10, $01, $1f, $13, $10, $1d, $10
    db $f7, $fd, $0c, $1d, $10, $01, $1e, $14, $18, $14, $17, $0c, $1d, $fe, $0e, $1d
    db $24, $1e, $1f, $0c, $17, $1e, $01, $17, $14, $16, $10, $f7, $fd, $1f, $13, $14
    db $1e, $01, $1a, $19, $01, $1a, $1f, $13, $10, $1d, $fe, $1b, $17, $0c, $19, $10
    db $1f, $1e, $01, $1f, $1a, $1a, $26, $f7, $fd, $0e, $1a, $17, $17, $10, $0e, $1f
    db $01, $0c, $17, $17, $01, $11, $1a, $20, $1d, $fe, $0e, $1d, $24, $1e, $1f, $0c
    db $17, $1e, $01, $0c, $19, $0f, $f7, $fd, $0d, $1d, $14, $19, $12, $01, $1f, $13
    db $10, $18, $01, $0d, $0c, $0e, $16, $fe, $1f, $1a, $01, $1f, $13, $10, $01, $17
    db $0c, $0d, $26, $f7, $fd, $12, $1a, $1a, $0f, $01, $17, $20, $0e, $16, $29, $f7
    db $00

Bank16Text_24:
    ; Message(s): $24
    ; <F9><78>THAT'S STRANGE..
    ; <FB><3C>THERE'S NOTHING
    ;
    ; HERE.<FB><78><F4>
    db $f9, $78, $1f, $13, $0c, $1f, $28, $1e, $01, $1e, $1f, $1d, $0c, $19, $12, $10
    db $26, $26, $fe, $fb, $3c, $1f, $13, $10, $1d, $10, $28, $1e, $01, $19, $1a, $1f
    db $13, $14, $19, $12, $fd, $13, $10, $1d, $10, $26, $fb, $78, $f4, $00

Bank16Text_25:
    ; Message(s): $25
    ; IT'S BEEN A LONG
    ; TIME, <FB><3C>MEGAMAN!<WAIT>
    ;
    ; I DIDN'T EXPECT
    ; TO SEE YOU IN<WAIT>
    ;
    ; ONE PIECE AGAIN.
    ; <FB><3C>BUT THAT IS OF<WAIT>
    ;
    ; LITTLE
    ; CONSEQUENCE NOW.<WAIT>
    ;
    ; I WILL DESTROY
    ; YOU AS I DID<WAIT>
    ;
    ; BEFORE AND
    ; AVENGE MY FALLEN<WAIT>
    ;
    ; COMRADES.<WAIT>
    ;
    ; DARK MOON,
    ; <FB><3C>ATTACK!<WAIT>
    db $14, $1f, $28, $1e, $01, $0d, $10, $10, $19, $01, $0c, $01, $17, $1a, $19, $12
    db $fe, $1f, $14, $18, $10, $27, $01, $fb, $3c, $18, $10, $12, $0c, $18, $0c, $19
    db $29, $f7, $fd, $14, $01, $0f, $14, $0f, $19, $28, $1f, $01, $10, $23, $1b, $10
    db $0e, $1f, $fe, $1f, $1a, $01, $1e, $10, $10, $01, $24, $1a, $20, $01, $14, $19
    db $f7, $fd, $1a, $19, $10, $01, $1b, $14, $10, $0e, $10, $01, $0c, $12, $0c, $14
    db $19, $26, $fe, $fb, $3c, $0d, $20, $1f, $01, $1f, $13, $0c, $1f, $01, $14, $1e
    db $01, $1a, $11, $f7, $fd, $17, $14, $1f, $1f, $17, $10, $fe, $0e, $1a, $19, $1e
    db $10, $1c, $20, $10, $19, $0e, $10, $01, $19, $1a, $22, $26, $f7, $fd, $14, $01
    db $22, $14, $17, $17, $01, $0f, $10, $1e, $1f, $1d, $1a, $24, $fe, $24, $1a, $20
    db $01, $0c, $1e, $01, $14, $01, $0f, $14, $0f, $f7, $fd, $0d, $10, $11, $1a, $1d
    db $10, $01, $0c, $19, $0f, $fe, $0c, $21, $10, $19, $12, $10, $01, $18, $24, $01
    db $11, $0c, $17, $17, $10, $19, $f7, $fd, $0e, $1a, $18, $1d, $0c, $0f, $10, $1e
    db $26, $f7, $fd, $0f, $0c, $1d, $16, $01, $18, $1a, $1a, $19, $27, $fe, $fb, $3c
    db $0c, $1f, $1f, $0c, $0e, $16, $29, $f7, $00

Bank16Text_26:
    ; Message(s): $26
    ; WELCOME BACK,
    ; <FB>SMEGAMAN! <FB><3C> I'VE<WAIT>
    ;
    ; JUST DISCOVERED
    ; SOME SHOCKING<WAIT>
    ;
    ; NEWS.<WAIT>
    ;
    ; THE STARDROIDS
    ; HAVE BEEN USING<WAIT>
    ;
    ; THE RESOURCES
    ; FROM EARTH TO<WAIT>
    ;
    ; CREATE AN EVEN
    ; MORE POWERFUL<WAIT>
    ;
    ; GENERATION OF
    ; ROBOTS.  <FB><3C>IF THEY<WAIT>
    ;
    ; LAUNCH AN
    ; ALL-OUT ATTACK<WAIT>
    ;
    ; NOW, WE'LL BE
    ; EASILY DEFEATED.<WAIT>
    ;
    ; I'M NOT SURE
    ; WHAT TO DO.<WAIT>
    db $22, $10, $17, $0e, $1a, $18, $10, $01, $0d, $0c, $0e, $16, $27, $fe, $fb, $1e
    db $18, $10, $12, $0c, $18, $0c, $19, $29, $01, $fb, $3c, $01, $14, $28, $21, $10
    db $f7, $fd, $15, $20, $1e, $1f, $01, $0f, $14, $1e, $0e, $1a, $21, $10, $1d, $10
    db $0f, $fe, $1e, $1a, $18, $10, $01, $1e, $13, $1a, $0e, $16, $14, $19, $12, $f7
    db $fd, $19, $10, $22, $1e, $26, $f7, $fd, $1f, $13, $10, $01, $1e, $1f, $0c, $1d
    db $0f, $1d, $1a, $14, $0f, $1e, $fe, $13, $0c, $21, $10, $01, $0d, $10, $10, $19
    db $01, $20, $1e, $14, $19, $12, $f7, $fd, $1f, $13, $10, $01, $1d, $10, $1e, $1a
    db $20, $1d, $0e, $10, $1e, $fe, $11, $1d, $1a, $18, $01, $10, $0c, $1d, $1f, $13
    db $01, $1f, $1a, $f7, $fd, $0e, $1d, $10, $0c, $1f, $10, $01, $0c, $19, $01, $10
    db $21, $10, $19, $fe, $18, $1a, $1d, $10, $01, $1b, $1a, $22, $10, $1d, $11, $20
    db $17, $f7, $fd, $12, $10, $19, $10, $1d, $0c, $1f, $14, $1a, $19, $01, $1a, $11
    db $fe, $1d, $1a, $0d, $1a, $1f, $1e, $26, $01, $01, $fb, $3c, $14, $11, $01, $1f
    db $13, $10, $24, $f7, $fd, $17, $0c, $20, $19, $0e, $13, $01, $0c, $19, $fe, $0c
    db $17, $17, $2f, $1a, $20, $1f, $01, $0c, $1f, $1f, $0c, $0e, $16, $f7, $fd, $19
    db $1a, $22, $27, $01, $22, $10, $28, $17, $17, $01, $0d, $10, $fe, $10, $0c, $1e
    db $14, $17, $24, $01, $0f, $10, $11, $10, $0c, $1f, $10, $0f, $26, $f7, $fd, $14
    db $28, $18, $01, $19, $1a, $1f, $01, $1e, $20, $1d, $10, $fe, $22, $13, $0c, $1f
    db $01, $1f, $1a, $01, $0f, $1a, $26, $f7, $00

Bank16Text_27:
    ; Message(s): $27
    ; DR. LIGHT, <FB><3C>WE
    ; NEED TO STRIKE<WAIT>
    ;
    ; NOW!  <FB><3C>IF YOU CAN
    ; TRANSFORM RUSH<WAIT>
    ;
    ; FOR SPACE
    ; TRAVEL, WE CAN<WAIT>
    ;
    ; TRY A SURPRISE
    ; ATTACK AND WIPE<WAIT>
    ;
    ; THEM OUT.<WAIT>
    db $0f, $1d, $26, $01, $17, $14, $12, $13, $1f, $27, $01, $fb, $3c, $22, $10, $fe
    db $19, $10, $10, $0f, $01, $1f, $1a, $01, $1e, $1f, $1d, $14, $16, $10, $f7, $fd
    db $19, $1a, $22, $29, $01, $01, $fb, $3c, $14, $11, $01, $24, $1a, $20, $01, $0e
    db $0c, $19, $fe, $1f, $1d, $0c, $19, $1e, $11, $1a, $1d, $18, $01, $1d, $20, $1e
    db $13, $f7, $fd, $11, $1a, $1d, $01, $1e, $1b, $0c, $0e, $10, $fe, $1f, $1d, $0c
    db $21, $10, $17, $27, $01, $22, $10, $01, $0e, $0c, $19, $f7, $fd, $1f, $1d, $24
    db $01, $0c, $01, $1e, $20, $1d, $1b, $1d, $14, $1e, $10, $fe, $0c, $1f, $1f, $0c
    db $0e, $16, $01, $0c, $19, $0f, $01, $22, $14, $1b, $10, $f7, $fd, $1f, $13, $10
    db $18, $01, $1a, $20, $1f, $26, $f7, $00

Bank16Text_28:
    ; Message(s): $28
    ; <31><31><31><31><31>
    ;
    db $31, $31, $31, $31, $31, $fe, $00

Bank16Text_34:
    ; Message(s): $34
    ; OK.  <FB><3C>I'LL START
    ; MODIFYING RUSH<WAIT>
    ;
    ; AND GIVE HIM
    ; SOME EXTRA<WAIT>
    ;
    ; FIREPOWER.  <FB><3C>THIS
    ; MAY TAKE SOME<WAIT>
    ;
    ; TIME, SO WHY
    ; DON'T YOU GO<WAIT>
    ;
    ; EXCHANGE YOUR
    ; P CHIPS FOR<WAIT>
    ;
    ; ITEMS.<WAIT>
    db $1a, $16, $26, $01, $01, $fb, $3c, $14, $28, $17, $17, $01, $1e, $1f, $0c, $1d
    db $1f, $fe, $18, $1a, $0f, $14, $11, $24, $14, $19, $12, $01, $1d, $20, $1e, $13
    db $f7, $fd, $0c, $19, $0f, $01, $12, $14, $21, $10, $01, $13, $14, $18, $fe, $1e
    db $1a, $18, $10, $01, $10, $23, $1f, $1d, $0c, $f7, $fd, $11, $14, $1d, $10, $1b
    db $1a, $22, $10, $1d, $26, $01, $01, $fb, $3c, $1f, $13, $14, $1e, $fe, $18, $0c
    db $24, $01, $1f, $0c, $16, $10, $01, $1e, $1a, $18, $10, $f7, $fd, $1f, $14, $18
    db $10, $27, $01, $1e, $1a, $01, $22, $13, $24, $fe, $0f, $1a, $19, $28, $1f, $01
    db $24, $1a, $20, $01, $12, $1a, $f7, $fd, $10, $23, $0e, $13, $0c, $19, $12, $10
    db $01, $24, $1a, $20, $1d, $fe, $1b, $01, $0e, $13, $14, $1b, $1e, $01, $11, $1a
    db $1d, $f7, $fd, $14, $1f, $10, $18, $1e, $26, $f7, $00

Bank16Text_29:
    ; Message(s): $29
    ; <F9><78>I SHOULD HAVE
    ; DEFEATED ALL THE
    ;
    ; STARDROIDS.<F4>
    db $f9, $78, $14, $01, $1e, $13, $1a, $20, $17, $0f, $01, $13, $0c, $21, $10, $fe
    db $0f, $10, $11, $10, $0c, $1f, $10, $0f, $01, $0c, $17, $17, $01, $1f, $13, $10
    db $fd, $1e, $1f, $0c, $1d, $0f, $1d, $1a, $14, $0f, $1e, $26, $f4, $00

Bank16Text_2a:
    ; Message(s): $2a
    ; WHAT?  <FB><3C>WHAT'S
    ; THAT STAR?...<F4>
    db $22, $13, $0c, $1f, $2a, $01, $01, $fb, $3c, $22, $13, $0c, $1f, $28, $1e, $fe
    db $1f, $13, $0c, $1f, $01, $1e, $1f, $0c, $1d, $2a, $26, $26, $26, $f4, $00

Bank16Text_2b:
    ; Message(s): $2b
    ; <F9><78>WAIT...
    ; <FB><78>IT'S MOVING...
    ;
    ; NO!
    ; <FB><78>IT CAN'T BE!<F4>
    db $f9, $78, $22, $0c, $14, $1f, $26, $26, $26, $fe, $fb, $78, $14, $1f, $28, $1e
    db $01, $18, $1a, $21, $14, $19, $12, $26, $26, $26, $fd, $19, $1a, $29, $fe, $fb
    db $78, $14, $1f, $01, $0e, $0c, $19, $28, $1f, $01, $0d, $10, $29, $f4, $00

Bank16Text_2c:
    ; Message(s): $2c
    ; WILY?!<FB><78><F4>
    db $22, $14, $17, $24, $2a, $29, $fb, $78, $f4, $00

Bank16Text_35:
    ; Message(s): $35
    ; IS HE BEHIND
    ; THIS?!<F4>
    db $14, $1e, $01, $13, $10, $01, $0d, $10, $13, $14, $19, $0f, $fe, $1f, $13, $14
    db $1e, $2a, $29, $f4, $00

Bank16Text_2d:
    ; Message(s): $2d
    ; OOPS!  <FB><78>THAT WAS
    ; CLOSE!<F4>
    db $1a, $1a, $1b, $1e, $29, $01, $01, $fb, $78, $1f, $13, $0c, $1f, $01, $22, $0c
    db $1e, $fe, $0e, $17, $1a, $1e, $10, $29, $f4, $00

Bank16Text_2e:
    ; Message(s): $2e
    ; <F9><78>HIT THE JETS,
    ; RUSH!  <FB><3C>LET'S GO!<F4>
    db $f9, $78, $13, $14, $1f, $01, $1f, $13, $10, $01, $15, $10, $1f, $1e, $27, $fe
    db $1d, $20, $1e, $13, $29, $01, $01, $fb, $3c, $17, $10, $1f, $28, $1e, $01, $12
    db $1a, $29, $f4, $00

Bank16Text_2f:
    ; Message(s): $2f
    ; ARE YOU OK?
    ; <FB><78>HERE, GRAB MY<WAIT>
    ;
    ; SHOULDER.  <FB><3C>I'M
    ; SURE YOU CAN BE<WAIT>
    ;
    ; FIXED AT
    ; DR. LIGHT'S LAB.<WAIT>
    ;
    ; MEGAMAN...  <FB><32>WHY?<FB><5A><WAIT>
    ;
    ; WHY ARE YOU
    ; HELPING ME?<WAIT>
    ;
    ; BECAUSE WE ARE
    ; BOTH ROBOTS.<WAIT>
    ;
    ; YES.  <FB><3C>AND WE
    ; WERE BOTH<WAIT>
    ;
    ; CREATED TO
    ; FIGHT!<WAIT>
    db $0c, $1d, $10, $01, $24, $1a, $20, $01, $1a, $16, $2a, $fe, $fb, $78, $13, $10
    db $1d, $10, $27, $01, $12, $1d, $0c, $0d, $01, $18, $24, $f7, $fd, $1e, $13, $1a
    db $20, $17, $0f, $10, $1d, $26, $01, $01, $fb, $3c, $14, $28, $18, $fe, $1e, $20
    db $1d, $10, $01, $24, $1a, $20, $01, $0e, $0c, $19, $01, $0d, $10, $f7, $fd, $11
    db $14, $23, $10, $0f, $01, $0c, $1f, $fe, $0f, $1d, $26, $01, $17, $14, $12, $13
    db $1f, $28, $1e, $01, $17, $0c, $0d, $26, $f7, $fd, $18, $10, $12, $0c, $18, $0c
    db $19, $26, $26, $26, $01, $01, $fb, $32, $22, $13, $24, $2a, $fb, $5a, $f7, $fd
    db $22, $13, $24, $01, $0c, $1d, $10, $01, $24, $1a, $20, $fe, $13, $10, $17, $1b
    db $14, $19, $12, $01, $18, $10, $2a, $f7, $fd, $0d, $10, $0e, $0c, $20, $1e, $10
    db $01, $22, $10, $01, $0c, $1d, $10, $fe, $0d, $1a, $1f, $13, $01, $1d, $1a, $0d
    db $1a, $1f, $1e, $26, $f7, $fd, $24, $10, $1e, $26, $01, $01, $fb, $3c, $0c, $19
    db $0f, $01, $22, $10, $fe, $22, $10, $1d, $10, $01, $0d, $1a, $1f, $13, $f7, $fd
    db $0e, $1d, $10, $0c, $1f, $10, $0f, $01, $1f, $1a, $fe, $11, $14, $12, $13, $1f
    db $29, $f7, $00

Bank16Text_30:
    ; Message(s): $30
    ; NO, <FB><3C>YOU'RE
    ; WRONG!  <FB><3C>I ONLY<WAIT>
    ;
    ; FIGHT WHEN I AM
    ; FORCED TO<WAIT>
    ;
    ; PROTECT THE
    ; WORLD FROM THOSE<WAIT>
    ;
    ; WHO WOULD PIT
    ; MACHINES AGAINST<WAIT>
    ;
    ; MAN.  <FB><3C>I BELIEVE
    ; HUMANS AND<WAIT>
    ;
    ; ROBOTS CAN LIVE
    ; IN PEACE!<WAIT>
    ;
    ; MAYBE... <FB><3C>BUT I
    ; WILL NEVER KNOW.<WAIT>
    ;
    ; MY FUSION
    ; REACTOR IS GOING<WAIT>
    ;
    ; CRITICAL AND
    ; WHEN IT DOES, IT<WAIT>
    ;
    ; WILL DESTROY
    ; THIS ENTIRE<WAIT>
    ;
    ; FORTRESS.<WAIT>
    ;
    ; SUNSTAR...<FB><3C><WAIT>
    ;
    ; LEAVE NOW!<FB><3C><WAIT>
    db $19, $1a, $27, $01, $fb, $3c, $24, $1a, $20, $28, $1d, $10, $fe, $22, $1d, $1a
    db $19, $12, $29, $01, $01, $fb, $3c, $14, $01, $1a, $19, $17, $24, $f7, $fd, $11
    db $14, $12, $13, $1f, $01, $22, $13, $10, $19, $01, $14, $01, $0c, $18, $fe, $11
    db $1a, $1d, $0e, $10, $0f, $01, $1f, $1a, $f7, $fd, $1b, $1d, $1a, $1f, $10, $0e
    db $1f, $01, $1f, $13, $10, $fe, $22, $1a, $1d, $17, $0f, $01, $11, $1d, $1a, $18
    db $01, $1f, $13, $1a, $1e, $10, $f7, $fd, $22, $13, $1a, $01, $22, $1a, $20, $17
    db $0f, $01, $1b, $14, $1f, $fe, $18, $0c, $0e, $13, $14, $19, $10, $1e, $01, $0c
    db $12, $0c, $14, $19, $1e, $1f, $f7, $fd, $18, $0c, $19, $26, $01, $01, $fb, $3c
    db $14, $01, $0d, $10, $17, $14, $10, $21, $10, $fe, $13, $20, $18, $0c, $19, $1e
    db $01, $0c, $19, $0f, $f7, $fd, $1d, $1a, $0d, $1a, $1f, $1e, $01, $0e, $0c, $19
    db $01, $17, $14, $21, $10, $fe, $14, $19, $01, $1b, $10, $0c, $0e, $10, $29, $f7
    db $fd, $18, $0c, $24, $0d, $10, $26, $26, $26, $01, $fb, $3c, $0d, $20, $1f, $01
    db $14, $fe, $22, $14, $17, $17, $01, $19, $10, $21, $10, $1d, $01, $16, $19, $1a
    db $22, $26, $f7, $fd, $18, $24, $01, $11, $20, $1e, $14, $1a, $19, $fe, $1d, $10
    db $0c, $0e, $1f, $1a, $1d, $01, $14, $1e, $01, $12, $1a, $14, $19, $12, $f7, $fd
    db $0e, $1d, $14, $1f, $14, $0e, $0c, $17, $01, $0c, $19, $0f, $fe, $22, $13, $10
    db $19, $01, $14, $1f, $01, $0f, $1a, $10, $1e, $27, $01, $14, $1f, $f7, $fd, $22
    db $14, $17, $17, $01, $0f, $10, $1e, $1f, $1d, $1a, $24, $fe, $1f, $13, $14, $1e
    db $01, $10, $19, $1f, $14, $1d, $10, $f7, $fd, $11, $1a, $1d, $1f, $1d, $10, $1e
    db $1e, $26, $f7, $fd, $1e, $20, $19, $1e, $1f, $0c, $1d, $26, $26, $26, $fb, $3c
    db $f7, $fd, $17, $10, $0c, $21, $10, $01, $19, $1a, $22, $29, $fb, $3c, $f7, $00

Bank16Text_31:
    ; Message(s): $31
    ; <F9><78>WILY!
    ; <FB><78>YOU SURVIVED?!<FB><78><F4>
    db $f9, $78, $22, $14, $17, $24, $29, $fe, $fb, $78, $24, $1a, $20, $01, $1e, $20
    db $1d, $21, $14, $21, $10, $0f, $2a, $29, $fb, $78, $f4, $00

Bank16Text_3c:
    ; Message(s): $3c
    ; <F9><78>CURSE YOU,
    ; <FB><78>MEGAMAN!
    ;
    ; THIS WAR
    ; ENDS NOW!<FB><78><F4>
    db $f9, $78, $0e, $20, $1d, $1e, $10, $01, $24, $1a, $20, $27, $fe, $fb, $78, $18
    db $10, $12, $0c, $18, $0c, $19, $29, $fd, $1f, $13, $14, $1e, $01, $22, $0c, $1d
    db $fe, $10, $19, $0f, $1e, $01, $19, $1a, $22, $29, $fb, $78, $f4, $00

Bank16Text_32:
    ; Message(s): $32
    ; MEGAMAN,
    ; <FB><3C>WELCOME HOME!<WAIT>
    ;
    ; I HAVE JUST
    ; COMPLETED<WAIT>
    ;
    ; THE TURBO
    ; ACCELERATOR FOR<WAIT>
    ;
    ; YOUR "MEGA ARM".<WAIT>
    db $18, $10, $12, $0c, $18, $0c, $19, $27, $fe, $fb, $3c, $22, $10, $17, $0e, $1a
    db $18, $10, $01, $13, $1a, $18, $10, $29, $f7, $fd, $14, $01, $13, $0c, $21, $10
    db $01, $15, $20, $1e, $1f, $fe, $0e, $1a, $18, $1b, $17, $10, $1f, $10, $0f, $f7
    db $fd, $1f, $13, $10, $01, $1f, $20, $1d, $0d, $1a, $fe, $0c, $0e, $0e, $10, $17
    db $10, $1d, $0c, $1f, $1a, $1d, $01, $11, $1a, $1d, $f7, $fd, $24, $1a, $20, $1d
    db $01, $2e, $18, $10, $12, $0c, $01, $0c, $1d, $18, $2e, $26, $f7, $00

Bank16Text_33:
    ; Message(s): $33
    ; OK.<WAIT>
    ;
    ; IT'S FUNCTIONING
    ; PERFECTLY.<WAIT>
    ;
    ; GOOD LUCK,
    ; MEGAMAN!<WAIT>
    db $1a, $16, $26, $f7, $fd, $14, $1f, $28, $1e, $01, $11, $20, $19, $0e, $1f, $14
    db $1a, $19, $14, $19, $12, $fe, $1b, $10, $1d, $11, $10, $0e, $1f, $17, $24, $26
    db $f7, $fd, $12, $1a, $1a, $0f, $01, $17, $20, $0e, $16, $27, $fe, $18, $10, $12
    db $0c, $18, $0c, $19, $29, $f7, $00

Bank16Text_36:
    ; Message(s): $36
    ; I FINALLY
    ; DESTROYED ALL<WAIT>
    ;
    ; THE SPACE
    ; STATIONS!<WAIT>
    db $14, $01, $11, $14, $19, $0c, $17, $17, $24, $fe, $0f, $10, $1e, $1f, $1d, $1a
    db $24, $10, $0f, $01, $0c, $17, $17, $f7, $fd, $1f, $13, $10, $01, $1e, $1b, $0c
    db $0e, $10, $fe, $1e, $1f, $0c, $1f, $14, $1a, $19, $1e, $29, $f7, $00

Bank16Text_37:
    ; Message(s): $37
    ; YOU FOOL
    ; MEGAMAN!<WAIT>
    ;
    ; YOU HAVE METTLED
    ; WITH MY PLAN FOR<WAIT>
    ;
    ; THE LAST TIME.<WAIT>
    ;
    ; WE COULD HAVE
    ; CREATED A NEW<WAIT>
    ;
    ; WORLD FOR ALL
    ; ROBOTS!  <FB><3C>HOW CAN<WAIT>
    ;
    ; I FACE MY MASTER
    ; NOW?  <FB><3C>I MUST<WAIT>
    ;
    ; REDEEM MYSELF BY
    ; BLOWING YOU TO<WAIT>
    ;
    ; PIECES!<WAIT>
    db $24, $1a, $20, $01, $11, $1a, $1a, $17, $fe, $18, $10, $12, $0c, $18, $0c, $19
    db $29, $f7, $fd, $24, $1a, $20, $01, $13, $0c, $21, $10, $01, $18, $10, $1f, $1f
    db $17, $10, $0f, $fe, $22, $14, $1f, $13, $01, $18, $24, $01, $1b, $17, $0c, $19
    db $01, $11, $1a, $1d, $f7, $fd, $1f, $13, $10, $01, $17, $0c, $1e, $1f, $01, $1f
    db $14, $18, $10, $26, $f7, $fd, $22, $10, $01, $0e, $1a, $20, $17, $0f, $01, $13
    db $0c, $21, $10, $fe, $0e, $1d, $10, $0c, $1f, $10, $0f, $01, $0c, $01, $19, $10
    db $22, $f7, $fd, $22, $1a, $1d, $17, $0f, $01, $11, $1a, $1d, $01, $0c, $17, $17
    db $fe, $1d, $1a, $0d, $1a, $1f, $1e, $29, $01, $01, $fb, $3c, $13, $1a, $22, $01
    db $0e, $0c, $19, $f7, $fd, $14, $01, $11, $0c, $0e, $10, $01, $18, $24, $01, $18
    db $0c, $1e, $1f, $10, $1d, $fe, $19, $1a, $22, $2a, $01, $01, $fb, $3c, $14, $01
    db $18, $20, $1e, $1f, $f7, $fd, $1d, $10, $0f, $10, $10, $18, $01, $18, $24, $1e
    db $10, $17, $11, $01, $0d, $24, $fe, $0d, $17, $1a, $22, $14, $19, $12, $01, $24
    db $1a, $20, $01, $1f, $1a, $f7, $fd, $1b, $14, $10, $0e, $10, $1e, $29, $f7, $00

Bank16Text_38:
    ; Message(s): $38
    ; <F9><78>BEHOLD MEGAMAN,
    ; <FB><3C>I HAVE AWAKENED
    ;
    ; THE ANCIENT
    ; WEAPON SUNSTAR!
    ;
    ; ITS NOVA WEAPON
    ; WILL DESTROY
    ;
    ; YOU!<FB><78><F4>
    db $f9, $78, $0d, $10, $13, $1a, $17, $0f, $01, $18, $10, $12, $0c, $18, $0c, $19
    db $27, $fe, $fb, $3c, $14, $01, $13, $0c, $21, $10, $01, $0c, $22, $0c, $16, $10
    db $19, $10, $0f, $fd, $1f, $13, $10, $01, $0c, $19, $0e, $14, $10, $19, $1f, $fe
    db $22, $10, $0c, $1b, $1a, $19, $01, $1e, $20, $19, $1e, $1f, $0c, $1d, $29, $fd
    db $14, $1f, $1e, $01, $19, $1a, $21, $0c, $01, $22, $10, $0c, $1b, $1a, $19, $fe
    db $22, $14, $17, $17, $01, $0f, $10, $1e, $1f, $1d, $1a, $24, $fd, $24, $1a, $20
    db $29, $fb, $78, $f4, $00

Bank16Text_39:
    ; Message(s): $39
    ; SUNSTAR, <FB><3C>DESTROY
    ; MEGAMAN!<FB><78><F4>
    db $1e, $20, $19, $1e, $1f, $0c, $1d, $27, $01, $fb, $3c, $0f, $10, $1e, $1f, $1d
    db $1a, $24, $fe, $18, $10, $12, $0c, $18, $0c, $19, $29, $fb, $78, $f4, $00

Bank16Text_3a:
    ; Message(s): $3a
    ; <F9><78>WHAT?!?
    ; <FB><5A>YOU FOOL!
    ;
    ; HOW DARE YOU
    ; ATTACK THE
    ;
    ; MIGHTY DR. WILY!<FB><78><F4>
    db $f9, $78, $22, $13, $0c, $1f, $2a, $29, $2a, $fe, $fb, $5a, $24, $1a, $20, $01
    db $11, $1a, $1a, $17, $29, $fd, $13, $1a, $22, $01, $0f, $0c, $1d, $10, $01, $24
    db $1a, $20, $fe, $0c, $1f, $1f, $0c, $0e, $16, $01, $1f, $13, $10, $fd, $18, $14
    db $12, $13, $1f, $24, $01, $0f, $1d, $26, $01, $22, $14, $17, $24, $29, $fb, $78
    db $f4, $00

Bank16Text_3b:
    ; Message(s): $3b
    ; <F9><78>YOU ARE...
    ; <FB><5A>MEGAMAN...
    ;
    ; I AM SUNSTAR...
    ;
    ; THE DOOMSDAY
    ; WEAPON...
    ;
    ; I MUST DESTROY
    ; ALL INFERIOR
    ;
    ; LIFE FORMS!<FB><78><F4>
    db $f9, $78, $24, $1a, $20, $01, $0c, $1d, $10, $26, $26, $26, $fe, $fb, $5a, $18
    db $10, $12, $0c, $18, $0c, $19, $26, $26, $26, $fd, $14, $01, $0c, $18, $01, $1e
    db $20, $19, $1e, $1f, $0c, $1d, $26, $26, $26, $fd, $1f, $13, $10, $01, $0f, $1a
    db $1a, $18, $1e, $0f, $0c, $24, $fe, $22, $10, $0c, $1b, $1a, $19, $26, $26, $26
    db $fd, $14, $01, $18, $20, $1e, $1f, $01, $0f, $10, $1e, $1f, $1d, $1a, $24, $fe
    db $0c, $17, $17, $01, $14, $19, $11, $10, $1d, $14, $1a, $1d, $fd, $17, $14, $11
    db $10, $01, $11, $1a, $1d, $18, $1e, $29, $fb, $78, $f4, $00
    ld a, [$c995]
    call Call_016_5a7c
    jp Jump_016_619a


Call_016_5a7c:
    or a
    ret z

    ldh [$ff8a], a
    ld l, a
    xor a
    ldh [$ff8b], a
    ld a, l
    cp $c0
    jr c, jr_016_5a8f

    call Call_016_5ac3

jr_016_5a8c:
    ld l, a
    ldh [$ff8a], a

jr_016_5a8f:
    call Call_016_5d58
    ld a, [$c990]
    swap a
    and $f0
    ld e, a
    ld a, [$c991]
    and $03
    add $8e
    ld d, a
    ld hl, $c9d0
    ld bc, $0010
    call Call_000_0183
    ldh a, [$ff8b]
    or a
    ret z

    ld hl, $c985
    ld a, [$c990]
    add [hl]
    ld e, a
    inc hl
    ld a, [$c991]
    add a
    add [hl]
    ld d, a
    ldh a, [$ff8b]
    jp Jump_016_5d16


Call_016_5ac3:
    ldh a, [$ff8a]
    cp $d4
    jr c, jr_016_5ad5

    cp $d9
    jr c, jr_016_5ad1

    cp $ed
    jr c, jr_016_5ad5

jr_016_5ad1:
    ld a, $de
    jr jr_016_5ad7

jr_016_5ad5:
    ld a, $dd

jr_016_5ad7:
    ldh [$ff8b], a
    ldh a, [$ff8a]
    sub $c0
    ld e, a
    ld b, $00
    sub $19
    jr c, jr_016_5ae7

    ld e, a
    ld b, $40

jr_016_5ae7:
    ld d, $00
    ld hl, $5af0
    add hl, de
    ld a, [hl]
    add b
    ret


    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $63
    ld h, a
    ld l, e
    ld [hl], e
    ld h, e
    ld a, $18
    jr c, @+$1a

    jr jr_016_5b34

    jr jr_016_5b5a

    ld a, $63
    ld h, e
    ld c, $18
    jr nc, jr_016_5ba4

    ld a, $63
    inc bc
    ld e, $03
    ld h, e
    ld a, $06
    ld c, $16
    ld h, $7f
    ld b, $0f
    ld a, a

jr_016_5b34:
    ld h, b
    ld a, [hl]
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    ld h, e
    ld h, b
    ld a, [hl]
    ld h, e
    ld h, e
    ld a, $7f
    ld h, e
    ld h, [hl]
    inc c
    jr jr_016_5b5f

    jr @+$40

    ld h, e
    ld h, e
    ld a, $63
    ld h, e
    ld a, $3e
    ld h, e
    ld h, e
    ccf
    inc bc
    ld b, $3c
    inc e
    ld a, $63
    ld h, e

jr_016_5b5a:
    ld a, a
    ld h, e
    ld h, e
    ld a, [hl]
    ld h, e

jr_016_5b5f:
    ld h, e
    ld a, [hl]
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, $63
    ld h, e
    ld h, b
    ld h, e
    ld h, e
    ld a, $7e
    scf
    inc sp
    inc sp
    inc sp
    scf
    ld a, [hl]
    ld a, a
    inc sp
    dec [hl]
    inc a
    dec [hl]
    inc sp
    ld a, a
    ld a, a
    inc sp
    dec [hl]
    inc a
    inc [hl]
    jr nc, jr_016_5bf8

    ld a, $63
    ld h, b
    ld l, a
    ld h, e
    ld h, e
    ld a, $63
    ld h, e
    ld h, e
    ld a, a
    ld h, e
    ld h, e
    ld h, e
    ld e, $0c
    inc c
    inc c
    inc c
    inc c
    ld e, $0f
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    ld h, [hl]
    ld l, h
    ld a, b
    ld a, b
    ld a, h
    ld l, [hl]
    ld h, a
    ld a, h

jr_016_5ba4:
    jr nc, jr_016_5bd6

    jr nc, jr_016_5bd9

    inc sp
    ld a, a
    ld h, e
    ld [hl], a
    ld a, a
    ld a, a
    ld l, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld [hl], e
    ld a, e
    ld l, a
    ld h, a
    ld h, e
    ld a, $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $7e
    ld h, a
    ld h, a
    ld h, a
    ld a, [hl]
    ld h, b
    ld h, b
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld l, [hl]
    ccf
    ld a, [hl]
    ld h, a
    ld h, a
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld h, a
    ld a, $73

jr_016_5bd6:
    ld [hl], b
    ld a, $07

jr_016_5bd9:
    ld h, a
    ld a, $7f
    ld e, e
    ld e, c
    jr jr_016_5bf8

    jr @+$3e

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    scf
    ld e, $63
    ld h, e
    ld h, e
    ld [hl], a
    ld a, $1c
    ld [$4343], sp
    ld d, e
    ld a, e
    ld a, a
    ld h, a
    ld b, e
    ld h, e

jr_016_5bf8:
    ld h, a
    ld a, $1c
    inc a
    ld [hl], a
    ld h, e
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    jr jr_016_5c1c

    jr @+$81

    ld h, a
    ld c, $1c
    jr c, jr_016_5c7e

    ld a, a
    nop
    nop
    nop
    nop
    nop
    jr jr_016_5c2b

    nop
    nop
    nop
    nop
    jr jr_016_5c31

    ld [$0c00], sp

jr_016_5c1c:
    inc c
    ld [$0000], sp
    nop
    jr @+$1a

    jr jr_016_5c35

    nop
    jr @+$1a

    ld e, $33
    inc sp

jr_016_5c2b:
    ld b, $0c
    nop
    inc c
    jr @+$26

jr_016_5c31:
    inc [hl]
    ld a, [de]
    inc a
    ld c, [hl]

jr_016_5c35:
    ld a, e
    inc b
    ld [$1818], sp
    jr @+$0a

    inc b
    db $10
    ld [$0c0c], sp
    inc c
    ld [$0010], sp
    ld [hl], $36
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld a, $00
    nop
    nop
    nop
    nop
    jr @+$1a

    nop
    nop
    nop
    nop
    ld a, $66
    ld h, [hl]
    ld h, [hl]
    dec sp
    ld h, b
    ld h, b
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld e, h
    nop
    nop
    inc a
    ld h, [hl]
    ld h, b
    ld h, [hl]
    inc a
    ld b, $06
    ld a, $66
    ld h, [hl]
    ld h, [hl]
    dec sp
    nop
    nop

jr_016_5c7e:
    inc a
    ld h, [hl]
    ld a, [hl]
    ld h, b
    ld a, $0e
    jr jr_016_5d04

    jr jr_016_5ca0

    jr jr_016_5ca2

    nop
    ld a, $66
    ld h, [hl]
    ccf
    ld b, [hl]
    inc a
    ld h, b
    ld h, b
    ld l, h
    ld a, [hl]
    halt
    ld h, [hl]
    ld h, [hl]
    jr jr_016_5c9a

jr_016_5c9a:
    jr jr_016_5cb4

    jr jr_016_5cb6

    jr jr_016_5cac

jr_016_5ca0:
    nop
    inc c

jr_016_5ca2:
    inc c
    ld l, h
    ld l, h
    jr c, jr_016_5d07

    ld h, b
    ld h, h
    ld l, b
    ld a, b
    ld a, h

jr_016_5cac:
    ld l, [hl]
    jr jr_016_5cc7

    jr jr_016_5cc9

    jr jr_016_5ccb

    inc e

jr_016_5cb4:
    nop
    nop

jr_016_5cb6:
    ld a, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    nop
    nop
    ld e, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    inc a
    ld h, [hl]
    ld h, [hl]

jr_016_5cc7:
    ld h, [hl]
    inc a

jr_016_5cc9:
    nop
    nop

jr_016_5ccb:
    ld e, h
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld h, b
    nop
    nop
    ld a, [hl-]
    ld h, [hl]
    ld h, [hl]
    ld a, $06
    nop
    nop
    ld e, h
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    nop
    nop
    inc a
    ld [hl], d
    inc a
    ld c, [hl]
    inc a
    jr nc, jr_016_5d17

    ld a, [hl]
    jr nc, jr_016_5d20

    ld [hl], $1c
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld [hl], $00
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    inc l
    jr jr_016_5cfb

jr_016_5cfb:
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld a, [hl]
    inc l
    nop
    nop
    ld h, [hl]

jr_016_5d04:
    inc a
    jr @+$3e

jr_016_5d07:
    ld h, [hl]
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld [hl], $1c
    ld a, b
    nop
    nop
    ld a, [hl]
    ld l, h
    jr jr_016_5d4b

    ld a, [hl]

Jump_016_5d16:
    push af

jr_016_5d17:
    call Call_016_6773
    pop af
    jp Jump_000_0189


jr_016_5d1e:
    ld a, [hl+]
    or a

jr_016_5d20:
    ret z

    push hl
    push de
    sub $41
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $5b56
    add hl, bc
    ld de, $c9d0
    ld b, $08

jr_016_5d35:
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec b
    jr nz, jr_016_5d35

    pop de
    ld hl, $c9d0
    ld bc, $0010
    call Call_000_0183
    pop hl
    jr jr_016_5d1e

    push de

jr_016_5d4b:
    call Call_016_5d58
    pop de
    ld hl, $c9d0
    ld bc, $0010
    jp Jump_000_0183


Call_016_5d58:
    call Call_016_5d6f
    ld hl, $c9d0
    ld b, $07

jr_016_5d60:
    ld a, [de]
    inc de
    cpl
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_016_5d60

    ld a, $ff
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ret


Call_016_5d6f:
    ld a, l
    sub $40
    ld de, $5b02
    jr c, jr_016_5d88

    ld l, a
    sub $40
    ld de, $5c60
    jr c, jr_016_5d88

    ld l, a
    sub $40
    ld de, $5d16
    jr c, jr_016_5d88

    ld l, a

jr_016_5d88:
    ld a, l
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, a
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc $00
    ld d, a
    ret


    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    jp $99ff


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp $e7ff


    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $e3ff


    rst $38
    ret


    rst $38
    ret


    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $d3
    rst $38
    or e
    rst $38
    or e
    rst $38
    add c
    rst $38
    di
    rst $38
    di
    rst $38
    pop bc
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    jp $f9ff


    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    call $cfff
    rst $38
    jp $c9ff


    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    ret


    rst $38
    ret


    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fafa]
    ld a, [$fafa]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, [$fdfa]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    pop bc
    pop bc
    db $e3
    db $e3
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_016_5ea8:
Jump_016_5ea8:
    ld hl, Bank16TextPointersExpanded
    ld a, [$cf7b]
    call Call_000_016e
    call Call_016_5ec4
    call Call_016_5f3f
    jr nz, jr_016_5ec3

    ld a, [$c99f]
    and $05
    jr nz, jr_016_5ec3

    call Call_016_5f9d

jr_016_5ec3:
    ret


Call_016_5ec4:
    xor a
    ld [$c9a2], a
    ld [$cf89], a
    ld a, l
    ld [$c98c], a
    ld a, h
    ld [$c98d], a

jr_016_5ed3:
    call Call_016_5f5e
    or a
    ret z

    cp $f2
    jr c, jr_016_5ee6

    call Call_016_5f70
    ld hl, $c99f
    set 0, [hl]
    jr jr_016_5f27

jr_016_5ee6:
    ld [$c995], a
    xor a
    ld [$c9a7], a
    ld hl, $c9a0
    bit 0, [hl]
    jr z, jr_016_5efc

    inc hl
    inc [hl]
    bit 0, [hl]
    jr z, jr_016_5efc

    rst $08
    inc h

jr_016_5efc:
    ld hl, $c99f
    res 0, [hl]
    res 2, [hl]
    res 3, [hl]
    ld a, [$c995]
    call Call_016_5a7c
    call Call_016_619a
    call Call_016_60bd
    ld a, [$c9a3]
    or a
    jr nz, jr_016_5f27

    ld a, [$c984]
    ld b, a
    or a
    jr z, jr_016_5f27

    ld a, [$c9a2]
    or a
    jr nz, jr_016_5f27

    call Call_016_6062

jr_016_5f27:
    call Call_016_5f3f
    ret nz

    jr jr_016_5ed3

Call_016_5f2d:
    ld a, [$c9a4]
    or a
    ret nz

    ld a, [$de92]
    and $f1
    ret z

    ld a, $01
    ld [$c9a2], a
    scf
    ret


Call_016_5f3f:
    ld a, [$c993]
    or a
    jr z, jr_016_5f47

    xor a
    ret


jr_016_5f47:
    ld a, [$c992]
    ld b, a
    ld a, [$de91]
    or b
    bit 1, a
    ret z

    ld [$cf89], a
    ret


Call_016_5f56:
    ld hl, $c98c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ret


Call_016_5f5e:
    ld hl, $c98c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, [hl]
    inc hl
    ld a, l
    ld [$c98c], a
    ld a, h
    ld [$c98d], a
    ld a, b
    ret


Call_016_5f70:
    cpl
    add a
    ld e, a
    ld d, $00
    ld hl, $5f7d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sbc l
    ld e, a
    nop
    ld h, b
    inc hl
    ld h, b
    rla
    ld h, b
    ld c, a
    ld h, b
    or b
    ld h, b
    xor c
    ld h, b
    or h
    ld h, b
    add hl, hl
    ld h, c
    ld [hl], $61
    ld b, e
    ld h, c
    adc h
    ld h, c
    sub e
    ld h, c

Call_016_5f97:
    call Call_016_611f
    jp Jump_016_61ad


Call_016_5f9d:
Jump_016_5f9d:
    xor a
    ld [$c9a2], a
    ld a, [$c997]
    cp $03
    call nz, Call_016_5f97
    xor a
    ld [$c98e], a
    ld [$c98f], a
    ld hl, $c99f
    bit 3, [hl]
    ret nz

    set 3, [hl]

jr_016_5fb8:
    call Call_016_5fd5
    call Call_016_6087
    ld a, [$c9a9]
    ld b, a
    ld a, [$de92]
    and b
    jr z, jr_016_5fb8

    ld [$c992], a
    ld [$c9c1], a
    xor a
    call Call_016_61ae
    jp Jump_016_5ff7


Call_016_5fd5:
    ld hl, $c98e
    ld a, [hl]
    dec [hl]
    or a
    ret nz

    inc hl
    inc [hl]
    bit 0, [hl]
    jr z, jr_016_5ff7

    ld hl, $c98e
    ld [hl], $0c
    ld a, [$c989]
    ld b, a

jr_016_5feb:
    ld a, [$c98a]
    ld e, a
    ld a, [$c98b]
    ld d, a
    ld a, b
    jp Jump_016_5d16


Jump_016_5ff7:
jr_016_5ff7:
    ld hl, $c98e
    ld [hl], $06
    ld b, $dc
    jr jr_016_5feb

    ld hl, $c990
    ld a, [hl]
    or a
    ret z

Jump_016_6006:
    ld hl, $c990
    ld [hl], $00
    inc hl
    inc [hl]
    ld a, [$c988]
    ld b, a
    ld a, [hl]
    cp b
    ret c

    jp Jump_016_6023


    call Call_016_5f5e

jr_016_601a:
    push bc
    call Call_016_619a
    pop bc
    dec b
    jr nz, jr_016_601a

    ret


Jump_016_6023:
    xor a
    ld [$c9a2], a
    ld a, [$c9a7]
    or a
    ret nz

    ld a, [$c9a6]
    or a
    jr nz, jr_016_6037

    call Call_016_5f9d
    jr jr_016_603b

jr_016_6037:
    ld b, a
    call Call_016_6062

jr_016_603b:
    ld hl, $c99f
    set 2, [hl]
    call $6723
    xor a
    ld [$c990], a
    ld [$c991], a
    inc a
    ld [$c9a7], a
    ret


    call Call_016_5f97
    call Call_016_5f5e
    or a
    ret z

    dec a
    ret z

    ld b, a
    ld a, [$c9a3]
    or a
    ret nz

    jp Jump_016_6062


Call_016_6062:
Jump_016_6062:
    ld a, [$c9a2]
    or a
    jr z, jr_016_606d

    ld b, $04
    jp Jump_016_607c


jr_016_606d:
    ld a, b
    or a
    ret z

    push bc
    call Call_016_6087
    call Call_016_5f2d
    pop bc
    ret c

    dec b
    jr jr_016_606d

Jump_016_607c:
jr_016_607c:
    ld a, b
    or a
    ret z

    push bc
    call Call_016_6087
    pop bc
    dec b
    jr jr_016_607c

Call_016_6087:
    ld [$c900], sp
    ld sp, $c980
    ld hl, $cf7f
    ld a, [hl+]
    ld e, a
    or [hl]
    jr z, jr_016_609b

    ld d, [hl]
    inc hl
    ld b, [hl]
    call Call_000_02cd

jr_016_609b:
    call Call_000_01c5
    call Call_000_01c8
    ld hl, $c900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ret


    call Call_016_5f5e
    ld [$c9a6], a
    ret


    call Call_016_5f5e
    ret


    call Call_016_5f5e
    and $03
    ld [$c997], a
    ret


Call_016_60bd:
    ld hl, $c999
    ld a, [$c997]
    or a
    ret z

    dec a
    jr z, jr_016_60cd

    dec a
    jr z, jr_016_610f

    jr jr_016_610b

jr_016_60cd:
    ld a, [$c995]
    cp $02
    jr c, jr_016_6113

    cp $26
    jr c, jr_016_60f0

    cp $28
    jr c, jr_016_610f

    cp $2c
    jr c, jr_016_610b

    cp $40
    jr c, jr_016_6113

    cp $77
    jr c, jr_016_60f0

    cp $80
    jr c, jr_016_610f

    cp $f2
    jr nc, jr_016_610f

jr_016_60f0:
    ld a, [$c998]
    inc a
    ld [$c998], a
    cp $03
    jr c, jr_016_611c

    xor a
    ld [$c998], a
    bit 0, [hl]
    jr nz, jr_016_6107

    ld [hl], $01
    jr jr_016_611c

jr_016_6107:
    ld [hl], $00
    jr jr_016_611c

jr_016_610b:
    ld [hl], $01
    jr jr_016_6115

jr_016_610f:
    ld [hl], $00
    jr jr_016_6115

jr_016_6113:
    ld [hl], $00

jr_016_6115:
    ld a, $64
    ld [$c998], a
    jr jr_016_611c

jr_016_611c:
    jp Jump_016_61ad


Call_016_611f:
    xor a
    ld [$c999], a
    ld a, $64
    ld [$c998], a
    ret


    ld a, $0e
    call Call_016_61ae
    ld a, $df
    ld [$c989], a
    jp Jump_016_5f9d


    ld a, $fc
    call Call_016_61ae
    ld a, $df
    ld [$c989], a
    jp Jump_016_5f9d


    ld a, $f0
    ldh [$ff8a], a
    ld a, $c9
    ldh [$ff8b], a
    ld hl, $dd2e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    ld a, $03
    ld de, $6178
    call Call_016_4317
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld hl, $c98c
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_016_6167:
    ld a, [hl+]
    ld [de], a
    inc de
    or a
    jr nz, jr_016_6167

    ld a, $f0
    ld [$c98c], a
    ld a, $c9
    ld [$c98d], a
    ret


    ld a, b
    or c
    ret z

    ld hl, $ff8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add $02
    ld [hl+], a
    ld a, l
    ldh [$ff8a], a
    ld a, h
    ldh [$ff8b], a
    ret


    ld hl, $c99f
    set 3, [hl]
    pop hl
    ret


    call Call_016_5f5e
    ld [$c984], a
    ret


Call_016_619a:
Jump_016_619a:
    call Call_016_5f56
    or a
    ret z

    ld a, [$c987]
    ld b, a
    ld hl, $c990
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    jp Jump_016_6006


Jump_016_61ad:
    ret


Call_016_61ae:
    ld [$c9a8], a
    cpl
    ld [$c9a9], a
    ret


ShopItemETankPiece:
    dw wETankAndPieceCount
    db $10
    dw $0014
    db $05, $0c
    dw $68c4

ShopItemWTank:
    dw wWTankCount
    db $04
    dw $001e
    db $06, $0c
    dw $68c9

ShopItemETank:
    dw $df39
    db $04
    dw $003c
    db $07, $0c
    dw $68da

ShopItemWeaponRefill:
    dw $0000
    db $00
    dw $0046
    db $0b, $0d
    dw $6926

ShopItemExtraLife:
    dw $df34
    db $0a
    dw $0032
    db $09, $0c
    dw $68eb

ShopItemEnergyBalancer:
    dw wEnergyBalancerUnlocked
    db $01
    dw $008c
    db $0a, $0c
    dw $68fc

ShopItemSTank:
    dw wSTankCount
    db $01
    dw $0078
    db $08, $0c
    dw $6915

ShopItemMegaArmUpgradeMH:
    dw wMegaArmUpgradeMHUnlocked
    db $01
    dw $005a
    db $1f, $22
    dw $6937

ShopItemMegaArmUpgradeCL:
    dw wMegaArmUpgradeCLUnlocked
    db $01
    dw $0064
    db $20, $22
    dw $6948

ShopItemPowerGenerator:
    dw wPowerGeneratorUnlocked
    db $01
    dw $0000
    db $21, $22
    dw $6959

ShopItemTableOriginal:
    dw ShopItemETankPiece, ShopItemWTank, ShopItemETank, ShopItemWeaponRefill
    dw ShopItemExtraLife, ShopItemEnergyBalancer, ShopItemSTank
    dw ShopItemMegaArmUpgradeMH, ShopItemMegaArmUpgradeCL, ShopItemPowerGenerator

Call_016_6224:
    ld a, [$c9c4]

jr_016_6227:
    dec a

Call_016_6228:
    ld hl, ShopItemTableExpanded
    call Call_000_016e
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


    scf
    ld h, d
    ld b, c
    ld h, d
    ld b, d
    ld h, d
    ld b, d
    ld h, d
    ld d, b
    ld h, d
    ld b, d
    ld h, d
    ld b, d
    ld h, d
    rst $38
    nop
    db $e4
    ld h, d
    cp c
    ld h, e
    add d
    ld h, d
    sub c
    ld h, d
    sub a
    nop
    inc sp
    ld e, [hl]
    ld h, d
    rlca
    db $e4
    ld h, d
    cp c
    ld h, e
    add d
    ld h, d
    sub c
    ld h, d
    ld l, b
    nop
    ld b, e
    ld l, [hl]
    ld h, d
    ld bc, $6283
    sub d
    ld h, d
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld b, a
    ld bc, $0140
    nop
    ld bc, $6283
    sub d
    ld h, d
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld b, a
    ld bc, $0140
    ld [$8003], sp
    nop
    nop
    ret


    ld a, $5d
    call Call_000_020a
    ld a, [$de8a]
    ld [$deda], a
    ret


    ld bc, $c900
    ld a, [bc]
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld a, [bc]
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0f
    rrca
    rrca
    jr jr_016_62c3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0e
    ld c, $0e
    jr nz, jr_016_62d5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0a
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_62e7

    ld a, [hl+]
    dec hl
    inc l
    inc l
    dec l

jr_016_62c3:
    inc l
    inc l
    ld l, $17
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld [hl-], a
    rra
    jr nc, jr_016_6303

    jr nc, jr_016_6305

jr_016_62d5:
    jr nc, jr_016_6307

    jr nc, jr_016_6309

    inc sp
    daa
    ld sp, $3131
    ld sp, $3131
    ld sp, $3431
    dec [hl]
    nop
    nop

jr_016_62e7:
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
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c

jr_016_6303:
    ld c, $0e

jr_016_6305:
    dec c
    dec c

jr_016_6307:
    ld c, $0e

jr_016_6309:
    dec c
    dec c
    ld c, $0e
    dec d
    rra
    dec d
    rra
    ld b, d
    rra
    ld b, e
    ld c, [hl]
    ld b, h
    ld c, a
    ld b, l
    ld d, b
    ld b, [hl]
    ld d, c
    ld b, a
    rra
    ld bc, $0101
    ld bc, $0115
    dec d
    ld bc, $0115
    inc [hl]
    jr c, jr_016_635f

    add hl, sp
    dec d
    ld a, [hl-]
    dec d
    dec sp
    ld [hl], $3c
    scf
    dec a
    rrca
    rla
    db $10
    jr jr_016_6349

    add hl, de
    ld de, $121a
    dec de
    inc de
    inc e
    inc d
    dec e
    ld l, l
    add c
    ld l, e
    inc bc
    ld bc, $0101
    ld c, b

jr_016_6349:
    ld a, $49
    ccf
    ld c, d
    ld b, b
    ld c, e
    ld b, c
    ld c, h
    jr nz, jr_016_63a0

    ld hl, $2227
    jr z, jr_016_6358

jr_016_6358:
    add hl, hl
    nop
    ld a, [hl+]
    inc hl
    dec hl
    inc h
    inc l

jr_016_635f:
    dec h
    dec l
    add c
    add c
    inc bc
    inc bc
    ld d, d
    ld e, c
    ld d, e
    ld e, d
    ld d, h
    ld e, e
    ld d, l
    ld e, h
    ld d, [hl]
    ld e, l
    ld d, a
    ld e, [hl]
    ld e, b
    ld e, a
    ld l, $1e
    cpl
    rra
    jr nc, jr_016_6398

    jr nc, jr_016_639a

    ld sp, $321f
    rra
    inc sp
    rra
    add c
    add e
    inc bc
    ld l, h
    ld d, $16
    ld h, b
    ld h, [hl]
    ld h, c
    ld h, a
    ld h, d
    ld l, b
    ld h, e
    ld l, b
    ld h, h
    ld l, c
    ld h, l
    ld l, d
    ld d, $16
    ld bc, $0126

jr_016_6398:
    ld h, $16

jr_016_639a:
    ld d, $01
    ld h, $01
    ld h, $16

jr_016_63a0:
    ld d, $6b
    inc bc
    ld l, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, h
    inc bc
    ld l, h
    ld l, e
    inc bc
    add b
    add d
    inc bc
    inc bc
    add d
    add d
    inc bc
    ld l, h
    add d
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
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
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    sub b
    sub b
    sbc b
    and b
    xor b
    and b
    sbc b

Call_016_63f6:
    ret


Call_016_63f7:
    ld a, [wCrystalCollectedFlags]
    cp $0f
    ld a, $0b
    jr z, jr_016_6401

    dec a

jr_016_6401:
    ld [$ca1e], a
    xor a
    ld [$ca11], a
    ld [$ca13], a
    ld [$ca14], a
    ld [$ca17], a
    ld [$ca16], a
    ld a, [$63ee]
    ld [$ca15], a
    ld a, $c9
    ld [$c0f0], a
    ld hl, $c0f3
    ld [hl], $16
    dec hl
    ld [hl], $65
    dec hl
    ld [hl], $e9
    dec hl
    ld [hl], $c3
    ld a, $00
    ld [$ca19], a
    ld [$ca1a], a

Call_016_6435:
    ld a, [$ca10]
    ld b, a
    ld a, [$ca11]
    inc a
    ld c, a
    ld [$c9c4], a
    ret


Call_016_6442:
jr_016_6442:
    call Call_016_6b0a
    ld a, [$de91]
    or a
    jr nz, jr_016_6442

    xor a
    ld [$ca12], a

Jump_016_644f:
jr_016_644f:
    call Call_016_6b0a
    call Call_016_6435
    ld a, b
    or a
    jr nz, jr_016_647d

    xor a
    ld [$ca12], a
    ld a, [$de92]
    bit 3, a
    jr z, jr_016_646e

    call Call_016_663f
    ld a, $04
    call Call_016_6a19
    jr jr_016_644f

jr_016_646e:
    ld a, [$de92]
    and $03
    jr z, jr_016_647d

    ld a, [$de92]
    and $01
    ret nz

    scf
    ret


jr_016_647d:
    ld a, [$de91]
    bit 5, a
    ld e, $02
    jr nz, jr_016_648c

    bit 4, a
    ld e, $fe
    jr z, jr_016_6490

jr_016_648c:
    ld a, e
    ld [$ca12], a

jr_016_6490:
    ld hl, $ca10
    ld a, [$ca12]
    bit 7, a
    jr nz, jr_016_64aa

    add [hl]
    ld [hl], a
    cp $20
    jr c, jr_016_64b8

    sub $20
    ld [hl+], a
    ld a, [hl]
    call Call_016_6593
    ld [hl], a
    jr jr_016_64b8

jr_016_64aa:
    add [hl]
    ld [hl], a
    bit 7, a
    jr z, jr_016_64b8

    add $20
    ld [hl+], a
    ld a, [hl]
    call Call_016_658b
    ld [hl], a

jr_016_64b8:
    jp Jump_016_644f


Call_016_64bb:
    ld a, [$ca18]
    cp $40
    ret nc

    call Call_000_019e
    ld a, [$ca10]
    or a
    ld e, $40
    ld d, $68
    jr nz, jr_016_64d2

    ld e, $48
    ld d, $60

jr_016_64d2:
    ld a, e
    ld [$ca1f], a
    ld a, d
    ld [$ca20], a
    ld a, [$ca19]
    or a
    jp z, Jump_016_6574

    ld c, $00

Jump_016_64e3:
    push bc
    ld a, $10
    ldh [$ffab], a
    ld a, [$ca19]
    dec a
    jr z, jr_016_64fd

    dec a
    jr z, jr_016_64ff

    dec a
    jr z, jr_016_6501

    dec a
    jr z, jr_016_6511

    dec a
    jr z, jr_016_651a

    dec a
    jr z, jr_016_6523

jr_016_64fd:
    jr jr_016_6525

jr_016_64ff:
    jr jr_016_652b

jr_016_6501:
    ld a, [$c9c4]
    dec a
    cp c
    jr nz, jr_016_652b

    ld a, [$ca14]
    and $20
    jr nz, jr_016_656a

    jr jr_016_6525

jr_016_6511:
    ld a, [$c9c4]
    dec a
    cp c
    jr nz, jr_016_652b

    jr jr_016_6525

jr_016_651a:
    ld a, [$ca14]
    and $10
    jr nz, jr_016_656a

    jr jr_016_652b

jr_016_6523:
    jr jr_016_652b

jr_016_6525:
    ld a, $00
    ldh [$ffab], a
    jr jr_016_652f

jr_016_652b:
    ld a, $10
    ldh [$ffab], a

jr_016_652f:
    ld a, [$ca11]
    cp c
    ld e, $00
    jr z, jr_016_654c

    call Call_016_6593
    cp c
    ld e, $e0
    jr z, jr_016_654c

    ld a, [$ca11]
    call Call_016_658b
    cp c
    ld e, $20
    jr z, jr_016_654c

    jr jr_016_656a

jr_016_654c:
    ld a, [$ca10]
    add e
    add $50
    ldh [$ff9b], a
    ld a, $24
    ldh [$ff9c], a
    ld e, $07
    ld a, c
    call Call_016_6228
    ld c, [hl]
    inc hl
    ld b, [hl]
    ldh a, [$ffab]
    set 7, a
    ldh [$ffab], a
    call Call_016_65a1

jr_016_656a:
    pop bc
    inc c
    ld a, [$ca1e]
    dec a
    cp c
    jp nc, Jump_016_64e3

Jump_016_6574:
    call Call_016_68a4

jr_016_6577:
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
    ld [hl], $00
    jr jr_016_6577

Call_016_658b:
    sub $01
    ret nc

    ld a, [$ca1e]
    dec a
    ret


Call_016_6593:
    push af
    ld a, [$ca1e]
    ld b, a
    pop af
    inc a
    cp b
    ret c

    xor a
    ret


    call Call_000_019e

Call_016_65a1:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_016_65ab:
    ldh a, [$ff92]
    cp $fe
    ret z

    ld l, a
    ld a, [bc]
    cp $80
    ret z

    add d
    ld d, a
    inc bc
    ld a, [bc]
    inc bc
    add e
    ld e, a
    push hl
    ld hl, $ca1f
    cp [hl]
    jr c, jr_016_65c7

    inc hl
    cp [hl]
    jr c, jr_016_65cc

jr_016_65c7:
    pop hl
    inc bc
    inc bc
    jr jr_016_65ab

jr_016_65cc:
    pop hl
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    push hl
    ld a, [bc]
    ld hl, $ffab
    or [hl]
    pop hl
    inc bc
    ld [hl], a
    jr jr_016_65ab

    call Call_016_6634
    jr nz, jr_016_65f2

    ld hl, $ca14
    inc [hl]

jr_016_65f2:
    ld a, [$ca19]
    cp $02
    jr z, jr_016_6608

    ld hl, $ca16
    ld [hl], $00
    ld hl, $ca17
    ld [hl], $ff
    ld a, [$63ef]
    jr jr_016_6631

jr_016_6608:
    call Call_016_6634
    jr nz, jr_016_6626

    ld hl, $ca16
    call Call_000_01e6
    jr nz, jr_016_6626

    ld a, [$ca15]
    ld [hl], a
    ld hl, $ca17
    inc [hl]
    ld a, [hl]
    cp $06
    jr c, jr_016_6626

    xor a
    ld [$ca17], a

jr_016_6626:
    ld a, [$ca17]
    ld e, a
    ld hl, $63f0
    ld d, $00
    add hl, de
    ld a, [hl]

jr_016_6631:
    ldh [rOBP1], a
    ret


Call_016_6634:
    ld a, [$deaf]
    and $01
    ret nz

    ld a, [$ded6]
    or a
    ret


Call_016_663f:
    call Call_016_6654
    ld [$c900], sp
    ld sp, $c980
    call Call_000_02a6
    ld hl, $c900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    jr jr_016_666f

Call_016_6654:
    ld de, $9c10
    ld bc, $0204
    call Call_016_667c
    ld a, [$c985]
    ld e, a
    ld a, [$c986]
    ld d, a
    call Call_016_6773
    ld bc, $0410
    call Call_016_667c
    ret


Jump_016_666f:
jr_016_666f:
    call Call_016_66bb
    call Call_016_707b
    call Call_016_69c4
    call Call_016_64bb
    ret


Call_016_667c:
jr_016_667c:
    push bc
    push de
    ld b, $00
    ld hl, $6713
    call Call_016_66a7
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop bc
    dec b
    jr nz, jr_016_667c

    ret


Call_016_6692:
jr_016_6692:
    push bc
    push de
    ld b, $00
    call Call_016_66a7
    pop de
    push hl
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec b
    jr nz, jr_016_6692

    ret


Call_016_66a7:
Jump_016_66a7:
jr_016_66a7:
    ldh a, [rLY]
    cp $40
    jr nc, jr_016_66a7

    jp Jump_000_0183


Call_016_66b0:
    ld d, a

jr_016_66b1:
    ldh a, [rLY]
    cp $40
    jr nc, jr_016_66b1

    ld a, d
    jp Jump_000_0186


Call_016_66bb:
    ld hl, $5d98
    ld bc, $0100
    ld de, $8d00
    jp Jump_000_0183


Call_016_66c7:
    ld hl, $5d98
    ld bc, $0100
    ld de, $8d00
    jp Jump_016_66a7


    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $e569
    ld a, [$c985]
    ld e, a
    ld a, [$c986]
    ld d, a
    call Call_016_6773
    ld a, [$c987]
    ld c, a
    ld a, [$c988]
    ld b, a
    sla b
    push de
    push bc
    call Call_016_667c
    ld hl, $8e00
    ld bc, $0200
    ld a, $ff
    call Call_016_66b0
    pop bc
    pop de
    ld hl, $66d3
    call Call_016_6692
    pop hl
    ld c, l
    ret


Call_016_6755:
    ld a, e
    ld [$c985], a
    ld a, d
    ld [$c986], a
    ld a, c
    ld [$c987], a
    ld a, b
    ld [$c988], a
    call Call_016_66c7
    ld hl, $c98c
    ld bc, $001c
    xor a
    call Call_000_0174
    ret


Call_016_6773:
    ld a, [$c9a5]
    or a
    jp z, Jump_016_43b3

    sla e
    sla e
    sla e
    ld a, $00
    add e
    ld e, a
    sla d
    sla d
    sla d
    ld a, $00
    add d
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
    ld a, [$cf82]
    ld e, a
    ld a, [$cf83]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ret


Call_016_67a9:
    ld a, $14
    call Call_000_01a4
    ld [$ca18], a
    ld hl, $ca1b
    ld a, $ff
    ld [hl+], a
    call Call_016_6825

jr_016_67ba:
    ld hl, $ca1b
    inc [hl]
    ld a, [hl+]
    ld de, $67db
    call Call_016_682b
    jr c, jr_016_67d5

    ld a, $06
    jr z, jr_016_67cd

    ld a, $00

jr_016_67cd:
    ld [$ca19], a
    call Call_016_6b0a
    jr jr_016_67ba

jr_016_67d5:
    ld a, $06
    ld [$ca19], a
    ret


    ld [$0003], sp
    ld [$0001], sp
    ld [$ff01], sp
    ld [$ff03], sp
    ld [$ff07], sp
    nop

Call_016_67eb:
    ld hl, $ca1b
    ld a, $ff
    ld [hl+], a
    call Call_016_6825

jr_016_67f4:
    ld hl, $ca1b
    inc [hl]
    ld a, [hl+]
    ld de, $6815
    call Call_016_682b
    jr c, jr_016_680f

    ld a, $06
    jr z, jr_016_6807

    ld a, $00

jr_016_6807:
    ld [$ca19], a
    call Call_016_6b0a
    jr jr_016_67f4

jr_016_680f:
    ld a, $00
    ld [$ca19], a
    ret


    ld [$ff07], sp
    ld [$ff03], sp
    ld [$ff01], sp
    ld [$0001], sp
    ld [$0003], sp
    nop

Call_016_6825:
    ld [hl], $00
    inc l
    ld [hl], $fd
    ret


Call_016_682b:
    ld b, a
    ld c, l
    ld a, [hl+]
    or a
    jr nz, jr_016_6843

    ld a, [hl]
    add $03
    ld [hl], a
    push hl
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    ld a, [hl]
    pop hl
    or a
    scf
    ret z

    ld l, c
    ld [hl], a

jr_016_6843:
    ld l, c
    dec [hl]
    inc l
    ld a, [hl]
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    inc hl
    ld a, [hl+]
    and b
    bit 0, [hl]
    jr nz, jr_016_6856

    or a
    ret


jr_016_6856:
    or a
    jr nz, jr_016_685b

    inc a
    ret


jr_016_685b:
    xor a
    ret


Call_016_685d:
    ld hl, $ca1b
    ld a, $ff
    ld [hl+], a
    call Call_016_6825
    ld a, $80
    ld [$ca1a], a
    ret


Call_016_686c:
    ld a, [$ca1a]
    or a
    ret z

    cp $ff
    ret z

    ld hl, $ca1b
    inc [hl]
    ld a, [hl+]
    ld de, $6891
    call Call_016_682b
    jr c, jr_016_688b

    ld a, $80
    jr z, jr_016_6887

    ld a, $40

jr_016_6887:
    ld [$ca1a], a
    ret


jr_016_688b:
    ld a, $ff
    ld [$ca1a], a
    ret


    ld [$0007], sp
    ld [$0003], sp
    ld [$0001], sp
    ld [$ff01], sp
    ld [$ff03], sp
    ld [$ff07], sp
    nop

Call_016_68a4:
    ld a, [$ca1a]
    and $80
    ret z

    ld a, $78
    ldh [$ff9b], a
    ld a, $18
    ldh [$ff9c], a
    ld a, $10
    ldh [$ffab], a
    call Call_016_6435
    ld e, $07
    call Call_016_6224
    ld c, [hl]
    inc hl
    ld b, [hl]
    jp Jump_016_43e7


    db $fc
    db $fc
    xor e
    nop
    add b
    ld hl, sp-$08
    xor h
    nop
    nop
    ld [$20ac], sp
    ld [$adf8], sp
    nop
    nop
    ld [$20ad], sp
    add b
    ld hl, sp-$08
    xor [hl]
    nop
    nop
    ld [$00af], sp
    ld [$aef8], sp
    ld b, b
    nop
    ld [$40af], sp
    add b
    ld hl, sp-$08
    or b
    nop
    nop
    ld [$20b0], sp
    ld [$b1f8], sp
    nop
    nop
    ld [$20b1], sp
    add b
    ld hl, sp-$0c
    or d
    nop
    nop
    ld [$00b3], sp
    nop
    ld [$00b4], sp
    ld [$b5f0], sp
    nop
    nop
    ld [$00b6], sp
    nop
    ld [$00b7], sp
    add b
    ld hl, sp-$08
    cp b
    nop
    nop
    ld [$00b9], sp
    ld [$b9f8], sp
    ld h, b
    nop
    ld [$60b8], sp
    add b
    ld hl, sp-$08
    cp d
    nop
    nop
    ld [$00bb], sp
    ld [$bcf8], sp
    nop
    nop
    ld [$00bd], sp
    add b
    ld hl, sp-$08
    cp [hl]
    nop
    nop
    ld [$00bf], sp
    ld [$c0f8], sp
    nop
    nop
    ld [$00c1], sp
    add b
    ld hl, sp-$08
    jp nz, RST_00

    ld [$00c3], sp
    ld [$c4f8], sp
    nop
    nop
    ld [$00c5], sp
    add b
    ld hl, sp-$08
    add $00
    nop
    ld [$00c7], sp
    ld [$c8f8], sp
    nop
    nop
    ld [$00c9], sp
    add b
    ret z

    ld l, h
    ret z

    ld l, h
    jp c, Jump_000_1870

    ld [hl], e
    sub a
    ld [hl], h
    add hl, bc
    db $10
    rlca
    ld bc, $8800
    ld b, a
    nop

Jump_016_697c:
    ld a, b
    dec b
    dec b
    dec b
    dec b
    jr z, jr_016_6988

    jr jr_016_69a4

jr_016_6985:
    jp Jump_016_6af7


jr_016_6988:
    call Call_016_6aaa
    ld hl, $dd38
    ld [hl], $01
    ld a, $98
    ld [$de9e], a
    ld a, [$deda]
    and $07
    ld de, $696a
    call Call_000_0171
    push de
    ld b, $04
    ret


jr_016_69a4:
    ld a, $40
    ld [$ca18], a
    call Call_016_6a75
    ld a, [$deda]
    and $07
    ld de, $696a
    call Call_000_0171
    ld a, $00
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    push de
    ld b, $00
    ret


    jr jr_016_6985

Call_016_69c4:
    ld a, [$d140]
    ld c, a
    ld a, [$d141]
    ld h, a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_016_69d8

    ld a, $20

jr_016_69d8:
    ld [$d3ea], a
    ld a, [$d142]
    ldh [$ffab], a
    ld [$ce56], a
    ld a, $17
    add c
    ld l, a
    ld b, [hl]
    ld a, $05
    add c
    ld l, a
    ld a, b
    cp $05
    ld a, [hl]
    jr nz, jr_016_69f4

    ld a, $6a

jr_016_69f4:
    ldh [$ffac], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $39
    add c
    ld l, a
    ld a, [hl]
    push af
    ld a, b
    ld hl, $6c4d
    call Call_000_016e
    pop af
    inc hl
    inc hl
    inc hl
    inc hl
    call Call_000_01aa
    pop hl
    ld c, l
    ret


Call_016_6a19:
    ld [$cf7b], a
    or a
    ret z

    call Call_016_69c4
    ld l, c
    push hl
    ld a, $00
    ld [$cf82], a
    ld a, $98
    ld [$cf83], a
    ld de, $0b02
    ld bc, $0210
    call Call_016_6755
    ld a, $01
    ld [$c993], a
    ld a, $03
    ld [$c984], a
    ld a, $df
    ld [$c989], a
    ld a, $12
    ld [$c98a], a
    ld a, $0e
    ld [$c98b], a
    ld a, $01
    ld [$c9a0], a
    xor a
    ld [$c9c1], a
    call $6723
    ld de, $6b21
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $16
    call Call_016_5ea8
    pop hl
    ld c, l
    ld a, [$c9c1]
    bit 1, a
    scf
    ret nz

    xor a
    ret


Call_016_6a75:
    ld a, c
    ld [$d140], a
    ld a, h
    ld [$d141], a
    xor a
    ld [$d142], a
    ld a, [$6974]
    ld b, $39
    call Call_000_01b0
    ld de, $6c4d
    call Call_000_01dd
    ld a, [$de8a]
    cp $02
    jr z, jr_016_6aa2

    call LoadShopItemGfxWithMegaBusterMkIIIcon
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_6aa2:
    ld l, c
    push hl
    call Call_016_6aaa
    pop hl
    ld c, l
    ret


Call_016_6aaa:
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
    jr z, jr_016_6acf

    dec [hl]
    ld a, [$d773]
    ld d, a
    jr jr_016_6aea

jr_016_6acf:
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
    jr nz, jr_016_6ae3

    ld d, $00
    call Call_016_6aea
    scf
    ret


jr_016_6ae3:
    inc [hl]
    dec hl
    dec a
    ld [hl], a
    inc de
    ld a, [de]
    ld d, a

Call_016_6aea:
jr_016_6aea:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Jump_016_6af7:
    ld b, $39
    call Call_000_01b3
    ld b, $00
    ret


Call_016_6aff:
jr_016_6aff:
    ld a, b
    or a
    ret z

    push bc
    call Call_016_6b0a
    pop bc
    dec b
    jr jr_016_6aff

Call_016_6b0a:
    ld [$c900], sp
    ld sp, $c980
    call Call_016_6b21
    call Call_000_01c5
    call Call_000_01c8
    ld hl, $c900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ret


Call_016_6b21:
    call Call_000_01d1
    call Call_016_72fa
    call Call_016_69c4
    call Call_016_64bb
    ld a, [$de8a]
    cp $02
    jr nz, jr_016_6b41

    ld hl, $d146
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or a
    call nz, Call_000_02cd

jr_016_6b41:
    jp Jump_000_02a3


    ld c, l
    ld l, h
    stop
    ld bc, $4dff
    ld l, h
    inc b
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    ld c, l
    ld l, h
    ld [$ff03], sp
    ld c, l
    ld l, h
    ld c, $03
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
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $ff01
    ld c, l
    ld l, h
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $ff01
    ld c, l
    ld l, h
    inc b
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    ld c, l
    ld l, h
    ld [$0403], sp
    rst $38
    ld c, l
    ld l, h
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    ld c, l
    ld l, h
    ld c, $03
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
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $ff01
    ld e, c
    ld l, h
    ld l, d
    ld l, h
    ld a, e
    ld l, h
    adc h
    ld l, h
    sbc l
    ld l, h
    or h
    ld l, h
    nop
    nop
    nop
    nop
    db $f4
    ldh a, [c]
    inc sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0080], sp
    nop
    nop
    nop
    db $f4
    ldh a, [c]
    inc sp
    add hl, bc
    ld bc, $0a02
    inc b
    dec bc
    inc c
    rlca
    ld [$0080], sp
    nop
    nop
    nop
    di
    ldh a, [c]
    inc sp
    add d
    add c
    adc c
    adc [hl]
    add h
    adc l
    sub b
    add a
    adc a
    add b
    nop
    nop
    nop
    nop
    db $f4
    ldh a, [c]
    inc sp
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_016_6cb5

    add b
    nop
    nop
    nop
    nop
    db $f4
    ld [$1a34], a
    dec de
    rst $38
    dec e
    ld e, $1f
    jr nz, jr_016_6ccd

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld hl, sp+$09
    inc e
    add b
    nop

jr_016_6cb5:
    nop
    nop
    nop
    di
    ld a, [$0232]
    inc bc
    inc b
    dec b
    ld b, $07
    inc bc
    ld hl, sp+$00
    dec bc
    ld hl, sp+$01
    add b
    ld a, b
    dec b
    jr z, jr_016_6d44

    dec b

jr_016_6ccd:
    jr z, jr_016_6cd9

    dec b
    jp z, Jump_016_6d67

    dec b
    jr z, jr_016_6cdc

    or a
    jr z, jr_016_6ce2

jr_016_6cd9:
    jp Jump_016_6af7


jr_016_6cdc:
    ld a, $94
    ld [$d70d], a
    ret


jr_016_6ce2:
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    ld [hl], $00
    add $df
    ld l, a
    ld [hl], $20
    xor a
    ld [$d703], a
    ld l, c
    push hl
    call Call_016_66bb
    call Call_016_707b
    pop hl
    ld c, l
    ld a, [$deda]
    or a
    jr nz, jr_016_6d0d

    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    ret


jr_016_6d0d:
    ld b, $0d
    call Call_016_6d3c
    ld l, c
    push hl
    ld hl, $441d
    ld bc, $0080
    ld de, $86a0
    call Call_000_0183
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $05
    ld a, $c9
    ld [$c0f4], a
    ld hl, $c0f7
    ld [hl], $16
    dec hl
    ld [hl], $6e
    dec hl
    ld [hl], $13
    dec hl
    ld [hl], $c3
    ret


Call_016_6d3c:
    ld a, $39
    add c
    ld l, a
    ld a, b
    jp Jump_000_01b9


jr_016_6d44:
    ld a, [$deaf]
    and $f3
    jp nz, Jump_016_6d67

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_016_6d70

    dec a
    jr z, jr_016_6d8c

    dec a
    jp z, Jump_016_6d98

    dec a
    jp z, Jump_016_6dd9

    dec a
    jp z, Jump_016_6df1

    dec a
    jp z, Jump_016_6e07

Jump_016_6d67:
jr_016_6d67:
    call Call_016_64bb

Jump_016_6d6a:
jr_016_6d6a:
    call Call_016_69c4
    ld b, $01
    ret


jr_016_6d70:
    call Call_000_01e6
    jr nz, jr_016_6d67

    ld l, c
    push hl
    call Call_016_6ed1
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    call $6723
    call Call_016_6e21
    jr jr_016_6d6a

jr_016_6d8c:
    ld de, $6b5d
    call Call_000_015f
    call Call_016_6e2b
    jp Jump_016_6d67


Jump_016_6d98:
    ld a, [$d722]
    cp $7a
    ld d, $00
    jr c, jr_016_6da3

    ld d, $20

jr_016_6da3:
    push de
    call Call_016_6aea
    ld de, $6b44
    call Call_000_015f
    pop af
    or a
    jr nz, jr_016_6dd6

    ld a, [$de92]
    and $ff
    jr z, jr_016_6dd6

    ld a, [$de92]
    and $10
    jr z, jr_016_6dce

    ld a, $2b
    add c
    ld l, a
    ld [hl], $06
    xor a
    ld [$c9e0], a
    ld [$c9e1], a
    jr jr_016_6dd6

jr_016_6dce:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]

jr_016_6dd6:
    jp Jump_016_6d67


Jump_016_6dd9:
    ld de, $6b4a
    call Call_016_449d
    jr nc, jr_016_6dee

jr_016_6de1:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    xor a
    ld [$d704], a

jr_016_6dee:
    jp Jump_016_6d67


Jump_016_6df1:
    ld a, [$d722]
    cp $7a
    ld d, $00
    jr c, jr_016_6dfc

    ld d, $20

jr_016_6dfc:
    push de
    call Call_016_6aea
    pop af
    or a
    jr z, jr_016_6de1

    jp Jump_016_6d6a


Jump_016_6e07:
    call Call_016_6e2b
    ld de, $6b44
    call Call_000_015f
    jp Jump_016_6d67


    ld a, [$d140]
    ld c, a
    ld a, [$d141]
    ld h, a
    ld de, $6be6
    jp Jump_000_015f


Call_016_6e21:
    ld a, $3c
    ld [$c9e0], a
    xor a
    ld [$c9e1], a
    ret


Call_016_6e2b:
    ld a, [$c9e1]
    or a
    ret nz

    ld l, c
    push hl
    ld hl, $c9e0
    call Call_000_01e9
    jr nz, jr_016_6e5b

    ld a, [$d722]
    cp $94
    jr nc, jr_016_6e48

    ld d, $10
    call Call_016_6aea
    jr jr_016_6e5b

jr_016_6e48:
    ld d, $00
    call Call_016_6aea
    ld a, $01
    ld [$c9e1], a
    ld a, $06
    call Call_000_01cb
    xor a
    ld [$de36], a

jr_016_6e5b:
    pop hl
    ld c, l
    ret


Call_016_6e5e:
    ld a, [$d140]
    ld c, a
    ld a, [$d141]
    ld h, a
    call Call_000_015c

jr_016_6e69:
    ld l, c
    push hl
    call Call_016_6b0a
    pop hl
    ld c, l
    ld de, $6bbf
    call Call_016_449d
    jr nc, jr_016_6e69

    ld l, c
    push hl
    call Call_016_685d
    pop hl
    ld c, l
    call Call_000_015c

jr_016_6e82:
    ld l, c
    push hl
    call Call_016_6b0a
    call Call_016_686c
    pop hl
    ld c, l
    ld de, $6bd2
    call Call_016_449d
    jr nc, jr_016_6e82

    ld b, $1e
    call Call_016_6aff
    ld b, $04

jr_016_6e9b:
    call Call_016_6ec4
    dec b
    jr nz, jr_016_6e9b

jr_016_6ea1:
    ld a, [$d72a]
    ld d, a
    push de
    call Call_016_6ec4
    pop de
    ld a, [$d72a]
    xor d
    bit 7, a
    jr z, jr_016_6eb8

    rst $08
    ld [de], a
    xor a
    ld [$ca1a], a

jr_016_6eb8:
    ld a, [$d74b]
    or a
    jr z, jr_016_6ea1

    ld d, $00
    call Call_016_6ec6
    ret


Call_016_6ec4:
    ld d, $01

Call_016_6ec6:
    push hl
    push bc
    call Call_016_6aea
    call Call_016_6b0a
    pop bc
    pop hl
    ret


Call_016_6ed1:
    call Call_016_63f7
    call Call_016_69c4
    call Call_016_707b
    ld a, [$deda]
    or a
    jr nz, jr_016_6ee7

    ld a, $03
    call Call_016_6a19
    jr jr_016_6f5c

jr_016_6ee7:
    ld a, $26
    call Call_016_6a19
    ld a, $c9
    ld [$c0f4], a
    ld a, [$d140]
    ld c, a
    ld a, [$d141]
    ld h, a
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    ld b, $1e
    call Call_016_6aff
    ld b, $04

jr_016_6f06:
    push bc
    ld d, $20
    call Call_016_6aea
    call Call_016_6b0a
    pop bc
    dec b
    jr nz, jr_016_6f06

    ld d, $00
    call Call_016_6aea
    ld b, $1e
    call Call_016_6aff
    ld a, $27
    call Call_016_6a19
    ld b, $28
    call Call_016_6aff
    ld a, [$d140]
    ld c, a
    ld a, [$d141]
    ld h, a
    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    ld a, $28
    call Call_016_6a19
    ld b, $b4
    call Call_016_6aff
    ld a, [$d140]
    ld c, a
    ld a, [$d141]
    ld h, a
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    ld b, $50
    call Call_016_6aff
    ld a, $34
    call Call_016_6a19
    ld b, $09
    call Call_016_6d3c

jr_016_6f5c:
    call Call_016_67a9
    ld a, [wETankAndPieceCount]
    srl a
    srl a
    ld [$df39], a

jr_016_6f69:
    ld a, $04
    call Call_016_6a19

Jump_016_6f6e:
    call Call_016_6442
    jr nc, jr_016_6f8c

    ld a, $12
    call Call_016_6a19
    jr c, jr_016_6f69

    call Call_016_67eb
    call Call_016_63f6
    ld a, $13
    call Call_016_6a19
    ld a, $c9
    ld [$c0f0], a
    scf
    ret


jr_016_6f8c:
    xor a
    ld [$ca14], a
    ld e, $05
    call Call_016_6224
    call Call_016_6a19
    call Call_016_702f
    jr nc, jr_016_6fa8

    ld e, $06
    call Call_016_6224
    call Call_016_6a19
    jp Jump_016_7026


jr_016_6fa8:
    ld e, $03
    call Call_016_6224
    ld [$dd2e], a
    ld b, a
    inc hl
    ld a, [hl]
    ld [$dd2f], a
    or b
    jr z, jr_016_6fd8

    ld a, $0e
    call Call_016_6a19
    ld hl, wPChipCountLow
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$dd2e]
    ld e, a
    ld a, [$dd2f]
    ld d, a
    call Call_016_4312
    jr nc, jr_016_6fd8

    ld a, $10
    call Call_016_6a19
    jr jr_016_7026

jr_016_6fd8:
    ld a, $0f
    call Call_016_6a19
    jr c, jr_016_7026

    ld a, [$dd2e]
    ld e, a
    ld a, [$dd2f]
    ld d, a
    ld hl, wPChipCountLow
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld [hl], a
    call Call_016_707b
    call Call_016_6e5e
    ld a, [$c9c4]
    cp $04
    jr nz, jr_016_7002

    call Call_016_7063
    jr jr_016_7026

jr_016_7002:
    cp $03
    jr nz, jr_016_701d

    ld a, [wETankAndPieceCount]
    add $04
    cp $10
    jr c, jr_016_7011

    ld a, $10

jr_016_7011:
    ld [wETankAndPieceCount], a
    srl a
    srl a
    ld [$df39], a
    jr jr_016_7026

jr_016_701d:
    ld e, $00
    call Call_016_6224
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc [hl]

Jump_016_7026:
jr_016_7026:
    ld a, $11
    call Call_016_6a19
    jp Jump_016_6f6e


    ret


Call_016_702f:
    ld a, [$c9c4]
    cp $04
    jr z, jr_016_7043

    ld e, $00
    call Call_016_6224
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    cp [hl]
    ccf
    ret


jr_016_7043:
    ld b, $0d
    ld hl, $de9e
    ld a, [$de9c]
    ld e, a
    ld a, [$de9d]
    ld d, a

jr_016_7050:
    srl d
    rr e
    jr nc, jr_016_705d

    ld a, [hl]
    cp $98
    jr nc, jr_016_705d

    or a
    ret


jr_016_705d:
    inc hl
    dec b
    jr nz, jr_016_7050

    scf
    ret


Call_016_7063:
    call Call_016_6654
    ld [$c900], sp
    ld sp, $c980
    call Call_000_02a9
    ld hl, $c900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    jp Jump_016_666f


    ret nc

    pop de

Call_016_707b:
    ld a, $01
    ld [$dd7d], a
    ld de, $9c10
    ld hl, $7079
    ld bc, $0002
    call Call_000_0183
    ld a, $30
    ldh [$ff8a], a
    ld a, $9c
    ldh [$ff8b], a
    ld hl, wPChipCountLow
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    ld a, $04
    ld de, $70a5
    call Call_016_4317
    ret


    ld hl, $ff8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    or c
    jr nz, jr_016_70b3

    ld a, $dc
    jr jr_016_70b6

jr_016_70b3:
    ld a, c
    add $d2

jr_016_70b6:
    call Call_000_0189
    inc hl
    ld a, l
    ldh [$ff8a], a
    ld a, h
    ldh [$ff8b], a
    ret


    ld l, c
    push hl
    ld hl, $cf7b
    ld [hl], $00

jr_016_70c8:
    ld hl, $cf7b
    ld a, [hl]
    cp $3c
    jr nc, jr_016_70d7

    inc [hl]
    ld a, [hl]
    call Call_016_6a19
    jr jr_016_70c8

jr_016_70d7:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_016_712d

    dec b
    jr z, jr_016_70eb

    dec b
    jp z, Jump_016_717f

    dec b
    jr z, jr_016_70ee

    or a
    jr z, jr_016_70f9

jr_016_70eb:
    jp Jump_016_6af7


jr_016_70ee:
    ld a, $01
    ld [$de9a], a
    ld a, $00
    ld [$de99], a
    ret


jr_016_70f9:
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    add $06
    ld l, a
    ld [hl], $10
    add $01
    ld l, a
    ld [hl], $00
    add $df
    ld l, a
    ld [hl], $20
    xor a
    ld [$d703], a
    ld a, $00
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$cca8], a
    ld a, $ff
    ld [$cca6], a
    ld l, c
    push hl
    ld a, $10
    ld [$d142], a
    call Call_016_72ca
    pop hl
    ld c, l
    ret


jr_016_712d:
    call Call_016_7300
    ld a, [$deaf]
    and $f3
    jp nz, Jump_016_717f

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_016_7185

    dec a
    jp z, Jump_016_71b5

    dec a
    jp z, Jump_016_71df

    dec a
    jp z, Jump_016_71f3

    dec a
    jp z, Jump_016_7287

    ld de, $7249
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_016_717f

    jr nc, jr_016_7168

    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $08
    call Call_016_42e8

jr_016_7168:
    ld a, [$cca8]
    and $07
    jr nz, jr_016_717f

    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    add $04
    ld l, a
    ld [hl], $78
    add $fb
    ld l, a
    ld [hl], $40

Jump_016_717f:
jr_016_717f:
    call Call_016_69c4
    ld b, $01
    ret


jr_016_7185:
    call Call_000_01e6
    jr nz, jr_016_717f

    ld l, c
    push hl
    ld a, $01
    call Call_016_6a19
    call $6723
    ld b, $3c
    call Call_000_023a
    ld a, $02
    call Call_016_6a19
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $05
    ld l, c
    push hl
    ld de, $725a
    call Call_016_4222
    pop hl
    ld c, l
    call $6723
    jr jr_016_717f

Jump_016_71b5:
    call Call_016_7216
    ld de, $6b5d
    call Call_000_015f
    ld a, [$c9e1]
    or a
    jr z, jr_016_71dd

    dec a
    jr nz, jr_016_717f

    ld a, [$de35]
    cp $01
    jr nz, jr_016_717f

    ld a, $b4
    ld [$decc], a
    ld a, $00
    ld [$decd], a
    ld a, $02
    ld [$c9e1], a

jr_016_71dd:
    jr jr_016_717f

Jump_016_71df:
    ld de, $7249
    call Call_016_449d
    jp nc, Jump_016_717f

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    jp Jump_016_717f


Jump_016_71f3:
    ld de, $7253
    call Call_016_449d
    jp nc, Jump_016_717f

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    xor a
    ld [$d704], a
    jp Jump_016_717f


Call_016_720c:
    ld a, $3c
    ld [$c9e0], a
    xor a
    ld [$c9e1], a
    ret


Call_016_7216:
    ld a, [$c9e1]
    or a
    ret nz

    ld l, c
    push hl
    ld hl, $c9e0
    call Call_000_01e9
    jr nz, jr_016_7246

    ld a, [$d722]
    cp $8c
    jr nc, jr_016_7233

    ld d, $10
    call Call_016_6aea
    jr jr_016_7246

jr_016_7233:
    ld d, $00
    call Call_016_6aea
    ld a, $01
    ld [$c9e1], a
    ld a, $06
    call Call_000_01cb
    xor a
    ld [$de36], a

jr_016_7246:
    pop hl
    ld c, l
    ret


    ld c, l
    ld l, h
    ld [de], a
    ld bc, $0100
    nop
    ld bc, $ff00
    ld c, l
    ld l, h
    db $10
    ld bc, $0302
    rst $38
    inc a
    nop
    ld bc, $3c10
    nop
    inc a
    ld [bc], a
    inc a
    nop
    ld bc, $0620
    nop
    cp $a6
    ld [hl], d
    ld a, b
    nop
    cp $23
    ld h, a
    inc a
    nop
    cp $be
    ld [hl], d
    ld h, h
    nop
    cp $ac
    ld [hl], d
    ld e, d
    nop
    cp $c4
    ld [hl], d
    or h
    nop
    cp $b5
    ld [hl], d
    inc a
    nop
    nop

Jump_016_7287:
    xor a
    ld [$cca6], a
    ld l, c
    push hl
    call Call_016_4236
    pop hl
    ld c, l
    jp c, Jump_016_7298

jr_016_7295:
    jp Jump_016_717f


Jump_016_7298:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    call $6723
    call Call_016_720c
    jr jr_016_7295

    ld a, $14
    call Call_016_6a19
    ret


    ld a, $15
    call Call_016_6a19
    call $6723
    ret


    ld a, $16
    call Call_016_6a19
    call $6723
    ret


    ld a, $01
    ld [$d143], a
    ret


    ld a, $02
    ld [$d143], a
    ret


Call_016_72ca:
    ld hl, $8850
    ld b, $26

jr_016_72cf:
    push bc
    push hl
    ld de, $d29d
    ld bc, $0010
    call Call_016_41fe
    ld hl, $d29d
    ld b, $08

jr_016_72df:
    ld a, [hl+]
    xor [hl]
    ld [hl+], a
    dec b
    jr nz, jr_016_72df

    pop de
    push de
    ld hl, $d29d
    ld bc, $0010
    call Call_000_0183
    pop hl
    ld de, $0010
    add hl, de
    pop bc
    dec b
    jr nz, jr_016_72cf

    ret


Call_016_72fa:
    ld a, [$de8a]
    cp $02
    ret nz

Call_016_7300:
    ld a, [$de92]
    bit 3, a
    ret z

    ld sp, $fffe
    ld b, $00
    ld e, b
    ld d, b
    ld c, $04
    call Call_016_42e8
    call Call_016_4302
    jp Jump_000_02eb


    ld a, b
    dec b
    jr z, jr_016_7375

    dec b
    jr z, jr_016_7329

    dec b
    jp z, Jump_016_73d3

    dec b
    jr z, jr_016_732c

    or a
    jr z, jr_016_734f

jr_016_7329:
    jp Jump_016_6af7


jr_016_732c:
    ld a, $01
    ld [$de9a], a
    ld a, $00
    ld [$de99], a
    xor a
    ld [$dece], a
    ld a, [$d77b]
    add $10
    ld [$d725], a
    ld a, $58
    ld [$d70d], a
    ld a, $01
    ld [$d74b], a
    rst $08
    nop
    ret


jr_016_734f:
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    ld [hl], $00
    add $df
    ld l, a
    ld [hl], $20
    xor a
    ld [$d703], a
    ld a, $00
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $ff
    ld [$cca6], a
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    ret


jr_016_7375:
    ld a, [$deaf]
    and $f3
    jp nz, Jump_016_73d3

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_016_73d9

    dec a
    jp z, Jump_016_73f2

    dec a
    jp z, Jump_016_741c

    dec a
    jp z, Jump_016_741e

    dec a
    jp z, Jump_016_7437

    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_016_73ae

    ld [hl], $01
    ld l, c
    push hl
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $10
    call Call_016_42e8
    pop hl
    ld c, l

jr_016_73ae:
    ld de, $6b58
    call Call_000_015f
    jr jr_016_73bc

    ld de, $6b44
    call Call_000_015f

jr_016_73bc:
    ld a, [$cca8]
    and $07
    jr nz, jr_016_73d3

    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    add $04
    ld l, a
    ld [hl], $78
    add $fb
    ld l, a
    ld [hl], $78

Jump_016_73d3:
jr_016_73d3:
    call Call_016_69c4
    ld b, $01
    ret


jr_016_73d9:
    call Call_000_01e6
    jr nz, jr_016_73d3

    ld l, c
    push hl
    ld a, $32
    call Call_016_6a19
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $05
    call Call_000_015c
    jr jr_016_73d3

Jump_016_73f2:
    call Call_016_7464
    ld de, $6c1f
    call Call_000_015f
    ld a, [$c9e1]
    or a
    jr z, jr_016_741a

    dec a
    jr nz, jr_016_73d3

    ld a, [$de35]
    cp $01
    jr nz, jr_016_73d3

    ld a, $b4
    ld [$decc], a
    ld a, $00
    ld [$decd], a
    ld a, $02
    ld [$c9e1], a

jr_016_741a:
    jr jr_016_73d3

Jump_016_741c:
    jr jr_016_7427

Jump_016_741e:
    ld de, $6b4a
    call Call_016_449d
    jp nc, Jump_016_73d3

jr_016_7427:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    xor a
    ld [$d704], a
    jp Jump_016_73d3


Jump_016_7437:
    ld de, $6bec
    call Call_016_449d
    jr nc, jr_016_7457

    ld l, c
    push hl
    ld a, $33
    call Call_016_6a19
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    call $6723
    call Call_016_745a
    call Call_000_015c

jr_016_7457:
    jp Jump_016_73d3


Call_016_745a:
    ld a, $3c
    ld [$c9e0], a
    xor a
    ld [$c9e1], a
    ret


Call_016_7464:
    ld a, [$c9e1]
    or a
    ret nz

    ld l, c
    push hl
    ld hl, $c9e0
    call Call_000_01e9
    jr nz, jr_016_7494

    ld a, [$d722]
    cp $8c
    jr nc, jr_016_7481

    ld d, $10
    call Call_016_6aea
    jr jr_016_7494

jr_016_7481:
    ld d, $00
    call Call_016_6aea
    ld a, $01
    ld [$c9e1], a
    ld a, $06
    call Call_000_01cb
    xor a
    ld [$de36], a

jr_016_7494:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_016_74cb

    dec b
    jr z, jr_016_74a8

    dec b
    jp z, Jump_016_74fc

    dec b
    jr z, jr_016_74ab

    or a
    jr z, jr_016_74b1

jr_016_74a8:
    jp Jump_016_6af7


jr_016_74ab:
    ld a, $8c
    ld [$d70d], a
    ret


jr_016_74b1:
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    add $06
    ld l, a
    ld [hl], $10
    add $01
    ld l, a
    ld [hl], $00
    add $df
    ld l, a
    ld [hl], $20
    xor a
    ld [$d703], a
    ret


jr_016_74cb:
    ld a, [$deaf]
    and $f3
    jp nz, Jump_016_74fc

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_016_7502

    dec a
    jr z, jr_016_7522

    dec a
    jp z, Jump_016_7528

    dec a
    jp z, Jump_016_754c

    ld de, $6b44
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_016_74fc

    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    add $ff
    ld l, a
    ld [hl], $1e

Jump_016_74fc:
jr_016_74fc:
    call Call_016_69c4
    ld b, $01
    ret


jr_016_7502:
    call Call_000_01e6
    jr nz, jr_016_74fc

    ld l, c
    push hl
    ld hl, $def0
    set 1, [hl]
    ld a, $23
    call Call_016_6a19
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call $6723
    call Call_016_7564
    jr jr_016_74fc

jr_016_7522:
    call Call_016_756e
    jp Jump_016_74fc


Jump_016_7528:
    ld a, [$d722]
    cp $5a
    ld d, $00
    jr c, jr_016_7533

    ld d, $20

jr_016_7533:
    push de
    call Call_016_6aea
    ld de, $6b44
    call Call_000_015f
    pop af
    or a
    jr nz, jr_016_7549

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]

jr_016_7549:
    jp Jump_016_74fc


Jump_016_754c:
    ld de, $6b4a
    call Call_016_449d
    jr nc, jr_016_7561

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    xor a
    ld [$d704], a

jr_016_7561:
    jp Jump_016_74fc


Call_016_7564:
    ld a, $3c
    ld [$c9e0], a
    xor a
    ld [$c9e1], a
    ret


Call_016_756e:
    ld a, [$c9e1]
    or a
    ret nz

    ld l, c
    push hl
    ld hl, $c9e0
    call Call_000_01e9
    jr nz, jr_016_759e

    ld a, [$d722]
    cp $8c
    jr nc, jr_016_758b

    ld d, $10
    call Call_016_6aea
    jr jr_016_759e

jr_016_758b:
    ld d, $00
    call Call_016_6aea
    ld a, $01
    ld [$c9e1], a
    ld a, $06
    call Call_000_01cb
    xor a
    ld [$de36], a

jr_016_759e:
    pop hl
    ld c, l
    ret


    nop
    sbc b
    ld [bc], a
    dec bc
    db $10
    ld [bc], a
    ld bc, $df03
    ld [de], a
    ld c, $01
    ld bc, $0003
    sbc h
    ld [bc], a
    ld bc, $0210
    ld bc, $df03
    ld [de], a
    inc b
    ld bc, $0301
    nop
    sbc b
    ld [bc], a
    ld bc, $0210
    ld bc, $df03
    ld [de], a
    inc b
    ld bc, $0301
    nop
    sbc b
    ld [bc], a
    ld bc, $0210
    ld bc, $df03
    ld [de], a
    inc b
    ld bc, $0301
    nop
    sbc h
    ld [bc], a
    inc bc
    db $10
    ld [bc], a
    nop
    inc bc
    rst $18
    ld [de], a
    ld b, $01
    nop
    inc bc
    and c
    ld [hl], l
    xor a
    ld [hl], l
    cp l
    ld [hl], l
    bit 6, l
    reti


    ld [hl], l

Jump_016_75f1:
    ld hl, $75e5
    ld a, [$cf7c]
    call Call_000_016e
    ld a, [hl+]
    ld [$cf82], a
    ld a, [hl+]
    ld [$cf83], a
    ld a, [$cf7d]
    add [hl]
    ld e, a
    sub $02
    ld [$cf84], a
    inc hl
    ld a, [$cf7e]
    add [hl]
    ld d, a
    dec a
    ld [$cf85], a
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    call Call_016_77c0
    pop hl
    ld a, [hl+]
    ld [$c993], a
    ld a, [hl+]
    ld [$c984], a
    ld a, [hl+]
    ld [$c989], a
    ld a, [$cf7d]
    add [hl]
    ld [$c98a], a
    inc hl
    ld a, [$cf7e]
    add [hl]
    ld [$c98b], a
    inc hl
    ld a, [hl+]
    ld [$c9a0], a
    ld a, [hl+]
    ld [$c9a4], a
    ld a, [hl+]
    ld [$c9a5], a
    xor a
    ld [$c9c1], a
    call $6723
    ld a, $0e
    call Call_016_61ae
    ld a, [$cf7b]
    or a
    ret z

    cp $80
    jr z, jr_016_7660

    jp Jump_016_5ea8


jr_016_7660:
    ld a, [$cf85]
    add a
    add a
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$cf84]
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, $cf82
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$cf87], a
    ld a, h
    ld [$cf88], a
    ld hl, $8dc0
    ld bc, $0010
    ld a, $ff
    call Call_000_0186
    ld a, [$cf86]
    ld [$d29c], a
    cp $80
    ld de, $9000
    jr c, jr_016_769e

    ld de, $8000

jr_016_769e:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    ld hl, $7730
    ld bc, $0090
    call Call_000_0183
    ld hl, $76f0
    call Call_016_76de
    ld hl, $7708
    call Call_016_76de
    ld hl, $7720
    call Call_016_76de
    ld hl, $7728
    call Call_016_76de
    ld a, [$cf87]
    ld e, a
    ld a, [$cf88]
    ld d, a
    ld hl, $0021
    add hl, de
    ld c, $12
    ld b, $04
    ld a, $dc
    jp Jump_016_42d5


Call_016_76de:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $cf87
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    jp Jump_016_42a7


    nop
    nop
    inc d
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    nop
    inc d
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    jr nz, jr_016_7722

jr_016_7722:
    ld bc, $0404
    inc b
    inc b
    inc b
    inc sp
    nop
    ld bc, $0504
    dec b
    dec b
    dec b
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
    jr jr_016_7798

    inc l
    ld e, $00
    nop
    ld a, [hl-]
    nop

jr_016_7798:
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

Call_016_77c0:
    ld a, e
    ld [$c985], a
    ld a, d
    ld [$c986], a
    ld a, c
    ld [$c987], a
    ld a, b
    ld [$c988], a
    ld hl, $5e58
    ld bc, $0040
    ld de, $8dc0
    call Call_016_66a7
    ld hl, $c98c
    ld bc, $001c
    xor a
    call Call_000_0174
    ret


LoadShopItemGfxWithMegaBusterMkIIIcon:
    ld l, $38
    push hl
    push bc
    ld a, $5e
    call Call_000_020a
    pop bc
    pop hl
    ld [hl], a
    call LoadShopItemMegaBusterMkIIIconGfx
    ret

LoadShopItemMegaBusterMkIIIconGfx:
    push af
    push bc
    push de
    push hl
    ld hl, ShopItemMegaBusterMkIIIconGfx
    ld bc, $0040
    ld de, $8ca0
    call Call_016_66a7
    pop hl
    pop de
    pop bc
    pop af
    ret

ShopItemTableExpanded:
    dw ShopItemETankPiece, ShopItemWTank, ShopItemETank, ShopItemWeaponRefill
    dw ShopItemExtraLife, ShopItemEnergyBalancer, ShopItemSTank
    dw ShopItemMegaArmUpgradeMH, ShopItemMegaArmUpgradeCL, ShopItemMegaBusterMkII
    dw ShopItemPowerGenerator

ShopItemMegaBusterMkII:
    dw wMegaBusterMkIIUnlocked
    db $01
    dw $0078
    db $3d, $22
    dw ShopItemMegaBusterMkIIIconOAM

ShopItemMegaBusterMkIIIconOAM:
    db $f8, $f8, $ca, $00
    db $00, $08, $cb, $00
    db $08, $f8, $cc, $00
    db $00, $08, $cd, $00
    db $80
    db $f8, $f8, $ca, $00
    db $00, $08, $cb, $00
    db $08, $f8, $cc, $00
    db $00, $08, $cd, $00
    db $80
    db $f8, $f8, $ca, $00
    db $00, $08, $cb, $00
    db $08, $f8, $cc, $00
    db $00, $08, $cd, $00
    db $80

ShopItemMegaBusterMkIIIconGfx:
    INCBIN "gfx/mkii_icon_shop.2bpp"

Bank16TextPointersExpanded:
    dw $c937, Bank16Text_01, Bank16Text_02, Bank16Text_03, Bank16Text_04, Bank16Text_05, Bank16Text_06, Bank16Text_07
    dw Bank16Text_08, Bank16Text_09, Bank16Text_0a, Bank16Text_0b, Bank16Text_0c, Bank16Text_0d, Bank16Text_0e, Bank16Text_0f
    dw Bank16Text_10, Bank16Text_11, Bank16Text_12, Bank16Text_13, Bank16Text_14, Bank16Text_15, Bank16Text_16, Bank16Text_17
    dw Bank16Text_18, Bank16Text_19, Bank16Text_1a, Bank16Text_1b, Bank16Text_1c, Bank16Text_1d, Bank16Text_1e, Bank16Text_1f
    dw Bank16Text_20, Bank16Text_21, Bank16Text_22, Bank16Text_23, Bank16Text_24, Bank16Text_25, Bank16Text_26, Bank16Text_27
    dw Bank16Text_28, Bank16Text_29, Bank16Text_2a, Bank16Text_2b, Bank16Text_2c, Bank16Text_2d, Bank16Text_2e, Bank16Text_2f
    dw Bank16Text_30, Bank16Text_31, Bank16Text_32, Bank16Text_33, Bank16Text_34, Bank16Text_35, Bank16Text_36, Bank16Text_37
    dw Bank16Text_38, Bank16Text_39, Bank16Text_3a, Bank16Text_3b, Bank16Text_3c, Bank16Text_3d

Bank16Text_3d:
    ; Message(s): $3d
    ; THIS UPGRADE
    ; TURNS THE<WAIT>
    ;
    ; MEGA BUSTER
    ; INTO THE<WAIT>
    ;
    ; MEGA BUSTER
    ; MK-II.<WAIT>
    ;
    ; IT CAN NOW
    ; DAMAGE THE<WAIT>
    ;
    ; STARDROIDS.
    ; ONCE INSTALLED,<WAIT>
    ;
    ; PRESS SELECT
    ; ON THE PAUSE<WAIT>
    ;
    ; MENU TO SWITCH
    ; BETWEEN THE<WAIT>
    ;
    ; MK-II AND
    ; MEGA ARM.<WAIT>
    db $1f, $13, $14, $1e, $01, $20, $1b, $12, $1d, $0c, $0f, $10, $fe, $1f, $20, $1d
    db $19, $1e, $01, $1f, $13, $10, $f7, $fd, $18, $10, $12, $0c, $01, $0d, $20, $1e
    db $1f, $10, $1d, $fe, $14, $19, $1f, $1a, $01, $1f, $13, $10, $f7, $fd, $18, $10
    db $12, $0c, $01, $0d, $20, $1e, $1f, $10, $1d, $fe, $18, $16, $2f, $14, $14, $26
    db $f7, $fd, $14, $1f, $01, $0e, $0c, $19, $01, $19, $1a, $22, $fe, $0f, $0c, $18
    db $0c, $12, $10, $01, $1f, $13, $10, $f7, $fd, $1e, $1f, $0c, $1d, $0f, $1d, $1a
    db $14, $0f, $1e, $26, $fe, $1a, $19, $0e, $10, $01, $14, $19, $1e, $1f, $0c, $17
    db $17, $10, $0f, $27, $f7, $fd, $1b, $1d, $10, $1e, $1e, $01, $1e, $10, $17, $10
    db $0e, $1f, $fe, $1a, $19, $01, $1f, $13, $10, $01, $1b, $0c, $20, $1e, $10, $f7
    db $fd, $18, $10, $19, $20, $01, $1f, $1a, $01, $1e, $22, $14, $1f, $0e, $13, $fe
    db $0d, $10, $1f, $22, $10, $10, $19, $01, $1f, $13, $10, $f7, $fd, $18, $16, $2f
    db $14, $14, $01, $0c, $19, $0f, $fe, $18, $10, $12, $0c, $01, $0c, $1d, $18, $26
    db $f7, $00
    ds $8000 - @, $ff
IF 0 ; Padding consumed by expanded shop item/text data.
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

ENDC
