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
    scf
    ret


    cpl
    ld b, l
    ld [$7c46], sp
    ld b, [hl]
    xor l
    ld b, [hl]
    rst $00
    ld b, [hl]
    ld hl, sp+$46
    scf
    ld b, a
    ld [hl], h
    ld b, a
    jp z, $d747

    ld b, a
    ld e, d
    ld c, b
    adc [hl]
    ld c, b
    or a
    ld c, b
    rst $18
    ld c, b
    inc bc
    ld c, c
    ld [hl], $49
    ld d, [hl]
    ld c, c
    ld [hl], b
    ld c, c
    sbc l
    ld c, c
    or d
    ld c, c
    dec d
    ld c, d
    ld e, l
    ld c, d
    ld a, [de]
    ld c, e
    ld e, l
    ld c, e
    inc bc
    ld c, h
    ld d, [hl]
    ld c, h
    adc h
    ld c, h
    reti


    ld c, h
    ld [$584c], a
    ld c, l
    add c
    ld c, l
    push hl
    ld c, l
    ld d, [hl]
    ld c, [hl]
    dec [hl]
    ld c, a
    ld e, l
    ld c, a
    ld e, $51
    ld c, h
    ld d, c
    dec h
    ld d, d
    ld a, $53
    add $53
    ld l, b
    ld d, h
    sub [hl]
    ld d, h
    or l
    ld d, h
    db $e4
    ld d, h
    inc bc
    ld d, l
    dec e
    ld d, l
    ld b, c
    ld d, l
    inc d
    ld d, [hl]
    ld h, h
    ld d, a
    xor [hl]
    ld d, a
    inc c
    ld e, b
    call $ee53
    ld d, h
    ld b, e
    ld e, b
    ld [hl], c
    ld e, b
    ld b, c
    ld e, c
    and [hl]
    ld e, c
    push bc
    ld e, c
    rlca
    ld e, d
    add b
    ld d, a
    jr jr_016_4541

    ld [de], a
    inc c
    jr jr_016_4541

    add hl, de
    daa
    ei
    inc a
    ld bc, $201a
    dec e
    cp $22
    ld a, [de]
    dec e

jr_016_4541:
    rla
    rrca
    ld bc, $1e14
    ld bc, $191a
    ld c, $10
    rst $30
    db $fd
    inc c
    ld [de], a
    inc c
    inc d
    add hl, de
    ld bc, $1914
    ld bc, $130e
    inc c
    ld a, [de]
    ld e, $26
    cp $fb
    inc a
    rra
    inc de
    db $10
    ld bc, $170c
    inc d
    db $10
    add hl, de
    ld bc, $1a1d
    dec c
    ld a, [de]
    rra
    ld e, $f7
    db $fd
    ld c, $0c
    rla
    rla
    ld bc, $131f
    db $10
    jr @+$20

    db $10
    rla
    ld hl, $1e10
    cp $2e
    ld e, $1f
    inc c
    dec e
    rrca
    dec e
    ld a, [de]
    inc d
    rrca
    ld e, $2e
    ld bc, $190c
    rrca
    rst $30
    db $fd
    inc de
    inc c
    ld hl, $0110
    ld c, $1a
    add hl, de
    inc e
    jr nz, jr_016_45ae

    dec e
    db $10
    rrca
    cp $18
    ld a, [de]
    ld e, $1f
    ld bc, $201a
    dec e
    ld bc, $0c18
    dec d

jr_016_45ae:
    ld a, [de]
    dec e
    rst $30
    db $fd
    ld c, $14
    rra
    inc d
    db $10
    ld e, $26
    cp $fb
    inc a
    rra
    inc de
    db $10
    inc h
    ld bc, $1d0c
    db $10
    rst $30
    db $fd
    ld c, $1a
    add hl, de
    ld e, $1f
    dec e
    jr nz, @+$10

    rra
    db $10
    rrca
    ld bc, $111a
    cp $0c
    rla
    inc d
    db $10
    add hl, de
    ld bc, $0c18
    rra
    db $10
    dec e
    inc d
    inc c
    rla
    rst $30
    db $fd
    ld [hl+], a
    inc de
    inc d
    ld c, $13
    ld bc, $101d
    add hl, de
    rrca
    db $10
    dec e
    ld bc, $201a
    dec e
    cp $22
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld e, $01
    jr nz, @+$20

    db $10
    rla
    db $10
    ld e, $1e
    ld h, $f7
    nop
    dec c
    jr nz, jr_016_462a

    daa
    ld bc, $0114
    inc de
    inc c
    ld hl, $0110
    rrca
    ld a, [de]
    add hl, de
    db $10
    cp $1e
    ld a, [de]
    jr @+$12

    ld bc, $190c
    inc c
    rla
    inc h
    ld e, $14
    ld e, $f7
    db $fd
    inc c
    add hl, de

jr_016_462a:
    rrca
    ld bc, $1a0e
    add hl, de
    ld e, $1f
    dec e
    jr nz, jr_016_4642

    rra
    db $10
    rrca
    cp $0c
    ld bc, $1019
    ld [hl+], a
    ld bc, $1022
    inc c
    dec de

jr_016_4642:
    ld a, [de]
    add hl, de
    ld bc, $1a11
    dec e
    rst $30
    db $fd
    inc h
    ld a, [de]
    jr nz, jr_016_4674

    ld bc, $fb01
    inc a
    inc d
    rra
    ld bc, $1422
    rla
    rla
    cp $1d
    db $10
    dec de
    rla
    inc c
    ld c, $10
    ld bc, $1a24
    jr nz, jr_016_4683

    rst $30
    db $fd
    ld e, $20
    dec de
    db $10
    dec e
    ld bc, $1018
    ld [de], a
    inc c
    cp $0d

jr_016_4674:
    jr nz, jr_016_4694

    rra
    db $10
    dec e
    ld h, $f7
    nop
    ld a, [de]
    inc de
    daa
    ld bc, $1018
    ld [de], a

jr_016_4683:
    inc c
    jr @+$0e

    add hl, de
    add hl, hl
    cp $fb
    inc a
    rrca
    inc d
    rrca
    ld bc, $1a24
    jr nz, jr_016_4694

    dec c

jr_016_4694:
    dec e
    inc d
    add hl, de
    ld [de], a
    rst $30
    db $fd
    dec c
    inc c
    ld c, $16
    ld bc, $131f
    db $10
    cp $1b
    ld bc, $130e
    inc d
    dec de
    ld e, $2a
    rst $30
    nop
    ld e, $10
    rla
    db $10
    ld c, $1f
    ld bc, $131f
    db $10
    ld bc, $1f14
    db $10

jr_016_46bb:
    jr jr_016_46bb

    inc h
    ld a, [de]
    jr nz, jr_016_46c2

    ld [hl+], a

jr_016_46c2:
    inc c
    add hl, de
    rra
    ld h, $f4
    ld c, $1a
    rla
    rla
    db $10
    ld c, $1f
    ld bc, $0106
    ld a, [de]
    ld de, $1ffe
    inc de
    db $10
    ld e, $10

jr_016_46d9:
    ld bc, $190c
    rrca
    ld bc, $1a24
    jr nz, jr_016_46d9

    db $fd
    ld [hl+], a
    inc d
    rla
    rla
    ld bc, $0c10
    dec e
    add hl, de
    ld bc, $fe0c
    db $10
    ld bc, $0c1f
    add hl, de
    ld d, $26
    rst $30
    nop
    inc h
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    ld bc, $1a1f
    rra
    inc c
    rla
    rla
    inc h
    cp $1d
    db $10
    ld c, $13
    inc c
    dec e
    ld [de], a
    db $10
    ld bc, $191a
    db $10
    ld bc, $111a
    rst $30
    db $fd
    inc h
    ld a, [de]
    jr nz, @+$1f

    ld bc, $1022
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld e, $fe
    ld [hl+], a
    inc d
    rra
    inc de
    ld bc, $131f
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr jr_016_475b

    rst $30
    nop
    inc h
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    ld bc, $1a1f
    rra
    inc c
    rla
    rla
    inc h
    cp $1d
    db $10
    ld c, $13
    inc c
    dec e
    ld [de], a
    db $10
    ld bc, $1a24
    jr nz, @+$1f

    rst $30
    db $fd
    db $10
    add hl, de
    db $10
    dec e
    ld [de], a

jr_016_475b:
    inc h
    ld bc, $1017
    ld hl, $1710
    cp $22
    inc d
    rra
    inc de
    ld bc, $131f
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr jr_016_4798

    rst $30
    nop
    inc h
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    ld bc, $1a1f
    rra
    inc c
    rla
    rla
    inc h
    cp $1d
    db $10
    ld c, $13
    inc c
    dec e
    ld [de], a
    db $10
    ld bc, $1a24
    jr nz, @+$1f

    rst $30
    db $fd
    db $10
    add hl, de
    db $10
    dec e
    ld [de], a

jr_016_4798:
    inc h
    ld bc, $1017
    ld hl, $1710
    ld bc, $190c
    rrca
    cp $0c
    rla
    rla
    ld bc, $111a
    ld bc, $1a24
    jr nz, jr_016_47cc

    rst $30
    db $fd
    ld [hl+], a
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld e, $01
    ld [hl+], a
    inc d
    rra
    inc de
    cp $1f
    inc de
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr jr_016_47ee

    rst $30
    nop
    db $10
    inc hl

jr_016_47cc:
    rra
    dec e
    inc c
    ld bc, $1417
    ld de, $2610
    rst $30
    nop
    ld [hl+], a
    inc d
    rra
    inc de
    ld bc, $131f
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr jr_016_480d

    cp $1f
    inc de
    db $10
    ld bc, $1022
    inc c

jr_016_47ee:
    dec de
    ld a, [de]
    add hl, de
    ld bc, $1422
    rra
    inc de
    rst $30
    db $fd
    rra
    inc de
    db $10
    ld bc, $1017
    inc c
    ld e, $1f
    ld bc, $180c
    ld a, [de]
    jr nz, @+$1b

    rra
    cp $1a
    ld de, $1001

jr_016_480d:
    add hl, de
    db $10
    dec e
    ld [de], a
    inc h
    ld bc, $1422
    rla
    rla
    rst $30
    db $fd
    dec c
    db $10
    ld bc, $101d
    ld de, $1714
    rla
    db $10
    rrca
    cp $0c
    jr nz, jr_016_4847

    ld a, [de]
    jr jr_016_4837

    rra
    inc d
    ld c, $0c
    rla
    rla
    inc h
    rst $30
    db $fd
    ld [hl+], a
    inc de
    db $10

jr_016_4837:
    add hl, de
    ld bc, $1a24
    jr nz, jr_016_483e

    dec de

jr_016_483e:
    inc d
    ld c, $16
    ld bc, $1b20
    cp $0c
    add hl, de

jr_016_4847:
    ld bc, $1022
    inc c
    dec de
    ld a, [de]
    add hl, de
    rst $30
    db $fd
    ld c, $0c
    dec de
    ld e, $20
    rla
    db $10
    ld h, $f7
    nop
    inc c
    rla
    rla
    ld bc, $111a
    ld bc, $1a24
    jr nz, jr_016_4882

    cp $22
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld e, $01
    ld [hl+], a
    inc d
    rla
    rla
    ld bc, $100d
    rst $30
    db $fd
    inc d
    jr jr_016_4892

    db $10
    rrca
    inc d
    inc c
    rra
    db $10
    rla
    inc h

jr_016_4882:
    cp $1d
    db $10
    ld de, $1714
    rla
    db $10
    rrca
    ld h, $f7
    nop
    inc h
    ld a, [de]
    jr nz, @+$03

jr_016_4892:
    ld c, $0c
    add hl, de
    jr z, jr_016_48b6

    ld bc, $0c0e
    dec e
    dec e
    inc h
    cp $0c
    add hl, de
    inc h
    ld bc, $1a18
    dec e
    db $10
    ld bc, $111a
    ld bc, $131f
    inc c
    rra
    rst $30
    db $fd
    inc d
    rra
    db $10
    jr jr_016_48db

    rst $30

jr_016_48b6:
    nop
    inc c
    rla
    rla
    ld bc, $111a
    ld bc, $1a24
    jr nz, jr_016_48df

    cp $22
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld e, $01
    inc c
    dec e
    db $10
    rst $30
    db $fd
    inc c
    rla
    dec e
    db $10
    inc c
    rrca
    inc h
    ld bc, $2011
    rla

jr_016_48db:
    rla
    ld h, $f7
    nop

jr_016_48df:
    inc h
    ld a, [de]
    jr nz, jr_016_48e4

    add hl, de

jr_016_48e4:
    db $10
    db $10
    rrca
    ld bc, $fef5
    dec de
    ld bc, $130e
    inc d
    dec de
    ld e, $01
    ld de, $1d1a
    ld bc, $131f
    inc d
    ld e, $f7
    db $fd
    inc d
    rra
    db $10
    jr jr_016_4927

    rst $30
    nop
    rrca
    ld a, [de]
    ld bc, $1a24
    jr nz, jr_016_490b

    ld [hl+], a

jr_016_490b:
    inc c
    add hl, de
    rra
    cp $1f
    inc de
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr @+$2c

    rst $30
    db $fd
    rra
    inc de
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr @+$2c

    cp $01

jr_016_4927:
    ld bc, $0d01
    jr nc, jr_016_4945

    ld a, [de]
    ld bc, $0c01
    jr nc, jr_016_4956

    db $10
    ld e, $f6
    nop
    inc h
    ld a, [de]
    jr nz, jr_016_493b

    rrca

jr_016_493b:
    ld a, [de]
    add hl, de
    jr z, @+$21

    ld bc, $0c13
    ld hl, $fe10

jr_016_4945:
    db $10
    add hl, de
    ld a, [de]
    jr nz, jr_016_495c

    inc de
    ld bc, $011b
    ld c, $13
    inc d
    dec de
    ld e, $26
    rst $30
    nop

jr_016_4956:
    ld e, $10
    rla
    db $10
    ld c, $1f

jr_016_495c:
    ld bc, $131f
    db $10
    ld bc, $1f14
    db $10

jr_016_4964:
    jr jr_016_4964

    inc h
    ld a, [de]
    jr nz, jr_016_496b

    ld [hl+], a

jr_016_496b:
    inc c
    add hl, de
    rra
    ld h, $f4
    inc c
    dec e
    db $10
    ld bc, $1a24

jr_016_4976:
    jr nz, jr_016_4976

    ld de, $1914
    inc d
    ld e, $13
    db $10
    rrca
    ld a, [hl+]
    rst $30
    db $fd
    ld de, $1914
    inc d
    ld e, $13
    db $10
    rrca
    ld a, [hl+]
    cp $01
    ld bc, $0d01
    jr nc, jr_016_49ac

    ld a, [de]
    ld bc, $0c01
    jr nc, jr_016_49bd

    db $10
    ld e, $f6
    nop
    ld [de], a
    ld a, [de]
    ld a, [de]
    rrca
    ld bc, $2017
    ld c, $16
    daa
    cp $18
    db $10
    ld [de], a
    inc c

jr_016_49ac:
    jr jr_016_49ba

    add hl, de
    add hl, hl
    rst $30
    nop
    inc d
    rra
    ld bc, $1e14
    ld bc, $0c0e

jr_016_49ba:
    rla
    rla
    db $10

jr_016_49bd:
    rrca
    ld bc, $131f
    db $10
    cp $2e
    jr @+$12

    ld [de], a
    inc c
    ld bc, $1d0c
    jr @+$30

    ld bc, $190c
    rrca
    rst $30
    db $fd
    inc d
    rra
    ld bc, $170c
    rla
    ld a, [de]
    ld [hl+], a
    ld e, $01
    inc h
    ld a, [de]
    jr nz, jr_016_49e2

    rra

jr_016_49e2:
    ld a, [de]
    cp $0e
    inc de
    inc c
    dec e
    ld [de], a
    db $10
    ld bc, $1910
    db $10
    dec e
    ld [de], a
    inc h
    ld bc, $1914
    rst $30
    db $fd
    inc h
    ld a, [de]
    jr nz, @+$1f

    ld bc, $1411
    ld e, $1f
    ld bc, $100d
    ld de, $1d1a
    db $10
    cp $24
    ld a, [de]
    jr nz, @+$03

    ld de, $1d14
    db $10
    ld bc, $1f14
    ld h, $f7
    nop
    inc d
    ld bc, $0c13
    ld hl, $0110
    inc c
    rla
    ld e, $1a
    cp $0e
    dec e
    db $10
    inc c
    rra
    db $10
    rrca
    ld bc, $010c
    add hl, de
    db $10
    ld [hl+], a
    rst $30
    db $fd
    inc c
    ld e, $1e
    inc d
    ld e, $1f
    inc c
    add hl, de
    rra
    ld bc, $1a11
    dec e
    cp $24
    ld a, [de]
    jr nz, @+$28

    ld bc, $fb01
    inc a
    inc de
    inc d
    ld e, $01
    add hl, de
    inc c
    jr jr_016_4a5e

    rst $30
    db $fd
    inc d
    ld e, $01
    ld l, $1f
    inc c
    add hl, de
    ld [de], a
    ld a, [de]
    ld l, $26
    rst $30
    nop
    inc d

jr_016_4a5e:
    jr z, jr_016_4a77

    rla
    ld bc, $1910
    inc de
    inc c
    add hl, de
    ld c, $10
    cp $1f

jr_016_4a6b:
    inc de
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr jr_016_4a6b

    db $fd
    dec e
    db $10

jr_016_4a77:
    dec de
    rla
    inc d
    ld c, $0c
    rra
    ld a, [de]
    dec e
    ld bc, $1a1f
    cp $18
    inc c
    ld d, $10
    ld bc, $1a1b
    ld [hl+], a
    db $10
    dec e
    ld de, $1720
    rst $30
    db $fd
    inc d
    rra
    db $10
    jr jr_016_4ab5

    ld bc, $1a11
    dec e
    ld bc, $1a24
    jr nz, jr_016_4ac6

    cp $fb
    inc a
    ld c, $1a
    rla
    rla
    db $10
    ld c, $1f
    ld bc, $1e0c
    ld bc, $0c18
    add hl, de
    inc h
    rst $30
    db $fd
    dec de

jr_016_4ab5:
    ld bc, $130e
    inc d
    dec de
    ld e, $01
    inc c
    ld e, $fe
    dec de
    ld a, [de]
    ld e, $1e
    inc d
    dec c
    rla

jr_016_4ac6:
    db $10
    ld bc, $190c
    rrca
    rst $30
    db $fd
    dec e
    db $10
    rra
    jr nz, jr_016_4aef

    add hl, de
    ld bc, $1a1f
    ld bc, $2418
    ld bc, $0c17
    dec c
    cp $1f
    ld a, [de]
    ld bc, $2310
    ld c, $13
    inc c

jr_016_4ae6:
    add hl, de
    ld [de], a
    db $10
    ld bc, $131f
    db $10
    jr jr_016_4ae6

jr_016_4aef:
    db $fd
    ld de, $1d1a
    ld bc, $1a1b
    ld [hl+], a
    db $10
    dec e
    cpl
    jr nz, jr_016_4b17

    cp $14
    rra
    db $10
    jr @+$20

    ld h, $f7
    db $fd
    ld [de], a
    ld a, [de]
    ld a, [de]
    rrca
    ld bc, $2017
    ld c, $16
    daa
    cp $18
    db $10
    ld [de], a
    inc c
    jr jr_016_4b22

    add hl, de

jr_016_4b17:
    ld h, $f7
    nop
    ld sp, hl
    ld a, b
    inc d
    add hl, de
    ld bc, $131f
    db $10

jr_016_4b22:
    ld bc, $1024
    inc c
    dec e
    ld bc, $0204
    inc hl
    inc hl
    cp $0c
    rrca
    daa
    ld bc, $131f
    db $10
    ld bc, $1a22
    dec e
    rla
    rrca
    ld bc, $1e14
    db $fd
    inc c
    rra
    ld bc, $101b
    inc c
    ld c, $10
    ld bc, $131f
    inc c
    add hl, de
    ld d, $1e
    cp $1f
    ld a, [de]
    ld bc, $1018
    ld [de], a
    inc c
    jr @+$0e

    add hl, de
    ld h, $fb
    ldh a, [$fff4]
    nop
    ld sp, hl
    ld e, d
    db $fd
    rrca
    dec e
    ld h, $01
    ld [hl+], a
    inc d
    rla
    inc h
    jr z, jr_016_4b88

    cp $11
    ld a, [de]
    jr nz, jr_016_4b8c

    rra
    inc de
    ld bc, $1f0c
    rra
    db $10
    jr @+$1d

    rra
    db $fd
    inc c
    rra
    ld bc, $1a22
    dec e
    rla
    rrca
    cp $0f
    ld a, [de]
    jr jr_016_4b9b

    add hl, de

jr_016_4b88:
    inc c
    rra
    inc d
    ld a, [de]

jr_016_4b8c:
    add hl, de
    ld bc, $0c13
    ld e, $fd
    ld de, $140c
    rla
    db $10
    rrca
    ld bc, $190c

jr_016_4b9b:
    rrca
    ld bc, $1413
    ld e, $fe
    add hl, de
    inc c
    jr @+$12

    ld bc, $0c13
    ld e, $01
    ld a, [de]
    add hl, de
    ld c, $10
    db $fd
    inc c
    ld [de], a
    inc c
    inc d
    add hl, de
    ld bc, $0c11
    rrca
    db $10
    rrca
    ld bc, $1d11
    ld a, [de]

jr_016_4bbe:
    jr jr_016_4bbe

    rra
    inc de
    db $10
    ld bc, $1418
    add hl, de
    rrca
    ld e, $01
    ld a, [de]
    ld de, $1f01
    inc de
    db $10
    db $fd
    ld c, $14
    rra
    inc d
    dec h
    db $10
    add hl, de
    ld e, $01
    ld a, [de]
    ld de, $1f01
    inc de
    db $10
    cp $22
    ld a, [de]
    dec e
    rla
    rrca
    ld h, $fb
    inc a
    db $fd
    inc c
    ld bc, $1011
    ld [hl+], a
    ld bc, $1a18
    add hl, de
    rra
    inc de
    ld e, $fe
    rla
    inc c
    rra
    db $10
    dec e
    ld h, $26
    ld h, $fb
    rrca
    db $f4
    nop
    ld sp, hl
    ld a, b
    ld e, $1a
    daa
    ld bc, $1a24
    jr nz, jr_016_4c0e

    inc c

jr_016_4c0e:
    dec e
    db $10
    ld bc, $131f
    db $10
    cp $11
    inc c
    jr @+$1c

    jr nz, jr_016_4c39

    ld bc, $1018
    ld [de], a
    inc c
    jr jr_016_4c2e

    add hl, de
    add hl, hl
    ei
    ld a, b
    db $fd
    inc d
    ld bc, $180c
    ld bc, $101f

jr_016_4c2e:
    dec e
    dec e
    inc c
    ld bc, $012f
    inc c
    add hl, de
    rrca
    cp $24

jr_016_4c39:
    ld a, [de]
    jr nz, jr_016_4c3d

    ld [hl+], a

jr_016_4c3d:
    inc d
    rla
    rla
    ld bc, $1a1e
    ld a, [de]
    add hl, de
    ld bc, $100d
    db $fd
    jr jr_016_4c6f

    ld bc, $171e
    inc c
    ld hl, $2910
    ei
    ld a, b
    db $f4
    nop
    ld sp, hl
    ld a, b
    ld [hl+], a
    inc de
    inc c
    rra
    ld a, [hl+]
    add hl, hl
    ld bc, $fb01
    inc a
    jr jr_016_4c88

    ld bc, $1018
    ld [de], a
    inc c
    cp $0d
    jr nz, jr_016_4c8b

    rra
    db $10

jr_016_4c6f:
    dec e
    ld bc, $0c13
    ld e, $01
    add hl, de
    ld a, [de]
    db $fd
    db $10
    ld de, $1011
    ld c, $1f
    ld bc, $191a
    ld bc, $1413
    jr jr_016_4cac

    ld h, $26

jr_016_4c88:
    ei
    ld a, b
    db $f4

jr_016_4c8b:
    nop
    ld sp, hl
    ld a, b
    inc c
    ld bc, $1011
    ld [hl+], a
    ld bc, $1a13
    jr nz, jr_016_4cb5

    ld e, $fe
    rla
    inc c
    rra
    db $10
    dec e
    daa
    ld bc, $131f
    db $10
    ld bc, $1a22
    dec e
    rla
    rrca
    db $fd
    ld [hl+], a

jr_016_4cac:
    inc c
    ld e, $01
    inc c
    rra
    rra
    inc c
    ld c, $16

jr_016_4cb5:
    db $10
    rrca
    ld bc, $240d
    cp $22
    inc c
    dec e
    dec e
    inc d
    ld a, [de]
    dec e
    ld bc, $1a1d
    dec c
    ld a, [de]
    rra
    ld e, $fd
    ld de, $1a1d
    jr @+$03

    ld e, $1b
    inc c
    ld c, $10
    ld h, $fb
    or h
    db $f4
    nop
    ld sp, hl
    ld a, b
    ld [hl+], a
    inc de
    db $10
    dec e
    db $10
    ld bc, $180c
    ld bc, $2a14
    ei
    ld a, b
    db $f4
    nop
    ld sp, hl
    ld a, b
    rrca
    dec e
    ld h, $01
    rla
    inc d
    ld [de], a
    inc de
    rra
    ld bc, $1a11
    jr nz, jr_016_4d13

    rrca
    cp $18
    db $10
    ld [de], a
    inc c
    jr jr_016_4d0e

    add hl, de
    ld bc, $190c
    rrca
    db $fd
    db $10
    inc e
    jr nz, jr_016_4d20

    dec de
    dec de

jr_016_4d0e:
    db $10
    rrca
    ld bc, $1413

jr_016_4d13:
    jr jr_016_4d13

    ld [hl+], a
    inc d
    rra
    inc de
    ld bc, $131f
    db $10
    ld bc, $1019

jr_016_4d20:
    ld [hl+], a
    db $fd
    ld l, $18
    db $10
    ld [de], a
    inc c
    ld bc, $1d0c
    jr jr_016_4d5a

    ld h, $fe
    rra
    inc de
    db $10
    ld bc, $1a18
    ld e, $1f
    db $fd
    dec de
    ld a, [de]
    ld [hl+], a
    db $10
    dec e
    ld de, $1720
    ld bc, $1022
    inc c
    dec de
    ld a, [de]
    add hl, de
    cp $10
    ld hl, $1d10
    ld bc, $100f
    ld hl, $1e14
    db $10
    rrca
    ld h, $fb
    ld a, b
    db $f4
    nop
    ld sp, hl
    ld a, b

jr_016_4d5a:
    ld [hl+], a
    inc de
    inc h
    ld bc, $0c13
    ld hl, $0110
    rra
    inc de
    db $10
    cp $1e
    rra
    inc c
    dec e
    rrca
    dec e
    ld a, [de]
    inc d
    rrca
    ld e, $01
    ld c, $1a
    jr jr_016_4d86

    db $fd
    inc de
    db $10
    dec e
    db $10
    add hl, hl
    ld a, [hl+]
    ei
    ld a, b
    db $f4
    nop
    rra
    inc de
    inc d
    ld e, $01

jr_016_4d86:
    inc d
    ld e, $01
    inc c
    cp $1b
    ld a, [de]
    ld [hl+], a
    db $10
    dec e

jr_016_4d90:
    cpl
    jr nz, jr_016_4dae

    ld bc, $1f14
    db $10
    jr jr_016_4d90

    db $fd
    ld de, $1d1a
    ld bc, $131f
    db $10
    cp $2e
    jr @+$12

    ld [de], a
    inc c
    ld bc, $1d0c
    jr jr_016_4dda

    ld h, $f7

jr_016_4dae:
    db $fd
    ld a, [de]
    add hl, de
    ld c, $10
    ld bc, $1914
    ld e, $1f
    inc c
    rla
    rla
    db $10
    rrca
    daa
    cp $24
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    ld bc, $1d12
    inc c
    dec c
    ld bc, $190c
    rst $30
    db $fd
    inc d
    rra
    db $10
    jr @+$03

    ld de, $1a1d
    jr @+$03

jr_016_4dda:
    ld de, $1d0c
    cp $0c
    ld [hl+], a
    inc c
    inc h
    ld h, $f7
    nop
    rra
    inc de
    inc d
    ld e, $01
    inc d
    ld e, $01
    inc c
    cp $1b
    ld a, [de]
    ld [hl+], a
    db $10
    dec e

jr_016_4df4:
    cpl
    jr nz, jr_016_4e12

    ld bc, $1f14
    db $10
    jr jr_016_4df4

    db $fd
    ld de, $1d1a
    ld bc, $131f
    db $10
    cp $2e
    jr @+$12

    ld [de], a
    inc c
    ld bc, $1d0c
    jr jr_016_4e3e

    ld h, $f7

jr_016_4e12:
    db $fd
    ld a, [de]
    add hl, de
    ld c, $10
    ld bc, $1914
    ld e, $1f
    inc c
    rla
    rla
    db $10
    rrca
    daa
    cp $24
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    ld bc, $1d12
    inc c
    dec c
    ld bc, $190c
    rrca
    rst $30
    db $fd
    inc c
    rra
    rra
    inc c
    ld c, $16
    ld bc, $131f

jr_016_4e3e:
    db $10
    ld bc, $1910
    db $10
    jr jr_016_4e69

    cp $1a
    ld hl, $1d10
    ld bc, $190c
    rrca
    ld bc, $211a
    db $10
    dec e
    ld h, $f7
    nop
    rra
    inc de
    inc d
    ld e, $01
    dec de
    ld a, [de]
    ld [hl+], a
    db $10
    dec e
    cp $12
    db $10
    add hl, de
    db $10
    dec e
    inc c
    rra
    ld a, [de]

jr_016_4e69:
    dec e
    ld bc, $0c22
    ld e, $f7
    db $fd
    jr @+$0e

    rrca
    db $10
    ld bc, $1d11
    ld a, [de]
    jr jr_016_4e7b

    rra

jr_016_4e7b:
    inc de
    db $10
    ld bc, $fe06
    ld c, $1d
    inc h
    ld e, $1f
    inc c
    rla
    ld e, $01
    inc h
    ld a, [de]
    jr nz, @-$07

    db $fd
    dec c
    dec e
    ld a, [de]
    jr nz, jr_016_4ea5

    inc de
    rra
    ld bc, $0c0d
    ld c, $16
    ld h, $fe
    ei
    inc a
    rra
    inc de
    db $10
    ld bc, $1a1b
    ld [hl+], a

jr_016_4ea5:
    db $10
    dec e
    rst $30
    db $fd
    ld [de], a
    db $10
    add hl, de
    db $10
    dec e
    inc c
    rra
    ld a, [de]
    dec e
    ld bc, $1422
    rla
    rla
    cp $1d
    db $10
    rrca
    jr nz, @+$10

    db $10
    ld bc, $131f
    db $10
    rst $30
    db $fd
    inc c
    jr jr_016_4ee1

    jr nz, jr_016_4ee2

    rra
    ld bc, $111a
    ld bc, $1910
    db $10
    dec e
    ld [de], a
    inc h
    cp $24
    ld a, [de]
    jr nz, @+$1f

    ld bc, $1b1e
    db $10
    ld c, $14
    inc c
    rla

jr_016_4ee1:
    rst $30

jr_016_4ee2:
    db $fd
    ld [hl+], a
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld e, $01
    jr nz, jr_016_4f0b

    db $10
    ld bc, $240d
    cp $13
    inc c
    rla
    ld de, $f726
    db $fd
    add hl, de
    ld a, [de]
    ld bc, $011b
    ld c, $13
    inc d
    dec de
    ld e, $01
    inc c
    dec e
    db $10
    cp $1d
    db $10
    inc e

jr_016_4f0b:
    jr nz, @+$16

    dec e
    db $10
    rrca
    ld bc, $1a11
    dec e
    rst $30
    db $fd
    rra
    inc de
    inc d
    ld e, $01
    inc d
    rra
    db $10
    jr jr_016_4f47

    ld bc, $191a
    rla
    inc h
    cp $1f
    inc de
    db $10
    ld bc, $1d0e
    inc h
    ld e, $1f
    inc c
    rla
    ld e, $26
    rst $30
    nop
    inc h
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    jr z, jr_016_4f5d

    ld bc, $0c18
    ld d, $10
    cp $0c
    add hl, de
    inc h

jr_016_4f47:
    ld bc, $1a18
    dec e
    db $10
    ld bc, $111a
    ld bc, $131f
    inc d
    ld e, $f7
    db $fd
    inc d
    rra
    db $10
    jr @+$28

    rst $30
    nop

jr_016_4f5d:
    rrca
    dec e
    ld h, $01
    rla
    inc d
    ld [de], a
    inc de
    rra
    add hl, hl
    add hl, hl
    cp $fb
    inc a
    inc d
    ld bc, $1a11
    jr nz, jr_016_4f8a

    rrca
    ld bc, $131f
    inc d
    ld e, $f7
    db $fd
    ld c, $1d
    inc h
    ld e, $1f
    inc c
    rla
    ld bc, $191a
    ld bc, $131f
    db $10
    cp $1b
    rla

jr_016_4f8a:
    inc c
    add hl, de
    db $10
    rra
    add hl, hl
    rst $30
    db $fd
    inc h
    ld a, [de]
    jr nz, jr_016_4f96

    dec c

jr_016_4f96:
    db $10
    rra
    rra
    db $10
    dec e
    cp $0c
    add hl, de
    inc c
    rla
    inc h
    dec h
    db $10
    ld bc, $1f14
    ld h, $f7
    db $fd
    rla
    db $10
    rra
    ld bc, $1018
    ld bc, $101e
    db $10
    ld h, $26
    ld h, $fb
    ld a, b
    rst $30
    db $fd
    ld [hl+], a
    db $10
    rla
    rla
    daa
    ld bc, $131f
    inc d
    ld e, $fe
    ld c, $1d
    inc h
    ld e, $1f
    inc c
    rla
    ld bc, $101e
    db $10
    jr jr_016_4ff0

    ld bc, $1a1f
    rst $30
    db $fd
    dec c
    db $10
    ld bc, $131f
    db $10
    ld bc, $1910
    db $10
    dec e
    ld [de], a
    inc h
    cp $1e
    ld a, [de]
    jr nz, @+$1f

    ld c, $10
    ld bc, $1e20
    db $10
    rrca

jr_016_4ff0:
    ld bc, $240d
    rst $30
    db $fd
    rra
    inc de
    inc c
    rra
    ld bc, $171b
    inc c
    add hl, de
    db $10
    rra
    jr z, jr_016_5020

    cp $0c
    add hl, de
    ld c, $14
    db $10
    add hl, de
    rra
    rst $30
    db $fd
    ld c, $14
    ld hl, $1714
    inc d
    dec h
    inc c
    rra
    inc d
    ld a, [de]
    add hl, de
    ld h, $fe
    ei
    inc a
    ld [hl+], a
    inc d
    rra
    inc de

jr_016_5020:
    ld bc, $0106
    ld a, [de]
    ld de, $1f01
    inc de
    db $10
    ld e, $10
    daa
    rst $30
    db $fd
    inc d
    ld bc, $0c0e
    add hl, de
    ld bc, $0c18
    ld d, $10
    ld bc, $190c
    cp $14
    rra
    db $10
    jr jr_016_5042

    rra

jr_016_5042:
    inc de
    inc c
    rra
    ld bc, $1422
    rla
    rla
    rst $30
    db $fd
    dec e
    db $10
    rrca
    jr nz, jr_016_505f

    db $10
    ld bc, $131f
    db $10
    cp $10
    add hl, de
    db $10
    dec e
    ld [de], a
    inc h
    rst $30
    db $fd

jr_016_505f:
    ld c, $1a
    add hl, de
    ld e, $20
    jr jr_016_5081

    rra
    inc d
    ld a, [de]
    add hl, de
    ld bc, $111a
    cp $24
    ld a, [de]
    jr nz, jr_016_508f

    ld bc, $1b1e
    db $10
    ld c, $14
    inc c
    rla
    rst $30
    db $fd
    ld [hl+], a
    db $10
    inc c
    dec de
    ld a, [de]

jr_016_5081:
    add hl, de
    ld e, $01
    dec c
    inc h
    ld bc, $0c13
    rla
    ld de, $fe26
    ei
    inc a

jr_016_508f:
    inc d
    ld bc, $1e0c
    ld e, $20
    jr jr_016_50a7

    ld bc, $131f
    db $10
    dec e
    db $10
    rst $30
    db $fd
    inc c
    dec e
    db $10
    ld bc, $141e
    jr jr_016_50bb

jr_016_50a7:
    rla
    inc c
    dec e
    cp $0e
    dec e
    inc h
    ld e, $1f
    inc c
    rla
    ld e, $01
    rla
    inc d
    ld d, $10
    rst $30
    db $fd
    rra

jr_016_50bb:
    inc de
    inc d
    ld e, $01
    ld a, [de]
    add hl, de
    ld bc, $1f1a
    inc de
    db $10
    dec e
    cp $1b
    rla
    inc c
    add hl, de
    db $10
    rra
    ld e, $01
    rra
    ld a, [de]
    ld a, [de]
    ld h, $f7
    db $fd
    ld c, $1a
    rla
    rla
    db $10
    ld c, $1f
    ld bc, $170c
    rla
    ld bc, $1a11
    jr nz, @+$1f

    cp $0e
    dec e
    inc h
    ld e, $1f
    inc c
    rla
    ld e, $01
    inc c
    add hl, de
    rrca
    rst $30
    db $fd
    dec c
    dec e
    inc d
    add hl, de
    ld [de], a
    ld bc, $131f
    db $10
    jr jr_016_5101

    dec c

jr_016_5101:
    inc c
    ld c, $16
    cp $1f
    ld a, [de]
    ld bc, $131f
    db $10
    ld bc, $0c17
    dec c
    ld h, $f7
    db $fd
    ld [de], a
    ld a, [de]
    ld a, [de]
    rrca
    ld bc, $2017
    ld c, $16
    add hl, hl
    rst $30
    nop
    ld sp, hl
    ld a, b
    rra
    inc de
    inc c
    rra
    jr z, jr_016_5144

    ld bc, $1f1e
    dec e
    inc c
    add hl, de
    ld [de], a
    db $10
    ld h, $26
    cp $fb
    inc a
    rra
    inc de
    db $10
    dec e
    db $10
    jr z, jr_016_5158

    ld bc, $1a19
    rra
    inc de
    inc d
    add hl, de
    ld [de], a
    db $fd
    inc de

jr_016_5144:
    db $10
    dec e
    db $10
    ld h, $fb
    ld a, b
    db $f4
    nop
    inc d
    rra
    jr z, jr_016_516e

    ld bc, $100d
    db $10
    add hl, de
    ld bc, $010c

jr_016_5158:
    rla
    ld a, [de]
    add hl, de
    ld [de], a
    cp $1f
    inc d
    jr @+$12

    daa
    ld bc, $3cfb
    jr jr_016_5177

    ld [de], a
    inc c
    jr jr_016_5177

    add hl, de
    add hl, hl
    rst $30

jr_016_516e:
    db $fd
    inc d
    ld bc, $140f
    rrca
    add hl, de
    jr z, @+$21

jr_016_5177:
    ld bc, $2310
    dec de
    db $10
    ld c, $1f
    cp $1f
    ld a, [de]
    ld bc, $101e
    db $10
    ld bc, $1a24
    jr nz, jr_016_518b

    inc d

jr_016_518b:
    add hl, de
    rst $30
    db $fd
    ld a, [de]
    add hl, de
    db $10
    ld bc, $141b
    db $10
    ld c, $10
    ld bc, $120c
    inc c
    inc d
    add hl, de
    ld h, $fe
    ei
    inc a
    dec c
    jr nz, jr_016_51c3

    ld bc, $131f
    inc c
    rra
    ld bc, $1e14
    ld bc, $111a
    rst $30
    db $fd
    rla
    inc d
    rra
    rra
    rla
    db $10
    cp $0e
    ld a, [de]
    add hl, de
    ld e, $10
    inc e
    jr nz, jr_016_51d0

    add hl, de
    ld c, $10

jr_016_51c3:
    ld bc, $1a19
    ld [hl+], a
    ld h, $f7
    db $fd
    inc d
    ld bc, $1422
    rla
    rla

jr_016_51d0:
    ld bc, $100f
    ld e, $1f
    dec e
    ld a, [de]
    inc h
    cp $24
    ld a, [de]
    jr nz, jr_016_51de

    inc c

jr_016_51de:
    ld e, $01
    inc d
    ld bc, $140f
    rrca
    rst $30
    db $fd
    dec c
    db $10
    ld de, $1d1a
    db $10
    ld bc, $190c
    rrca
    cp $0c
    ld hl, $1910
    ld [de], a
    db $10
    ld bc, $2418
    ld bc, $0c11
    rla
    rla
    db $10
    add hl, de
    rst $30
    db $fd
    ld c, $1a
    jr jr_016_5225

    inc c
    rrca
    db $10
    ld e, $26
    rst $30
    db $fd
    rrca
    inc c
    dec e
    ld d, $01
    jr @+$1c

    ld a, [de]
    add hl, de
    daa
    cp $fb
    inc a
    inc c
    rra
    rra
    inc c
    ld c, $16
    add hl, hl
    rst $30
    nop

jr_016_5225:
    ld [hl+], a
    db $10
    rla
    ld c, $1a
    jr jr_016_523c

    ld bc, $0c0d
    ld c, $16
    daa
    cp $fb
    ld e, $18
    db $10
    ld [de], a
    inc c
    jr jr_016_5247

    add hl, de

jr_016_523c:
    add hl, hl
    ld bc, $3cfb
    ld bc, $2814
    ld hl, $f710
    db $fd

jr_016_5247:
    dec d
    jr nz, jr_016_5268

    rra
    ld bc, $140f
    ld e, $0e
    ld a, [de]
    ld hl, $1d10
    db $10
    rrca
    cp $1e
    ld a, [de]
    jr jr_016_526b

    ld bc, $131e
    ld a, [de]
    ld c, $16
    inc d
    add hl, de
    ld [de], a
    rst $30
    db $fd
    add hl, de
    db $10

jr_016_5268:
    ld [hl+], a
    ld e, $26

jr_016_526b:
    rst $30
    db $fd
    rra
    inc de
    db $10
    ld bc, $1f1e
    inc c
    dec e
    rrca
    dec e
    ld a, [de]
    inc d
    rrca
    ld e, $fe
    inc de
    inc c
    ld hl, $0110
    dec c
    db $10
    db $10
    add hl, de
    ld bc, $1e20
    inc d
    add hl, de
    ld [de], a
    rst $30
    db $fd
    rra
    inc de
    db $10
    ld bc, $101d
    ld e, $1a
    jr nz, @+$1f

    ld c, $10
    ld e, $fe
    ld de, $1a1d
    jr jr_016_52a1

    db $10

jr_016_52a1:
    inc c
    dec e
    rra
    inc de
    ld bc, $1a1f
    rst $30
    db $fd
    ld c, $1d
    db $10
    inc c
    rra
    db $10
    ld bc, $190c
    ld bc, $2110
    db $10
    add hl, de
    cp $18
    ld a, [de]
    dec e
    db $10
    ld bc, $1a1b
    ld [hl+], a
    db $10
    dec e
    ld de, $1720
    rst $30
    db $fd
    ld [de], a
    db $10
    add hl, de
    db $10
    dec e
    inc c
    rra
    inc d
    ld a, [de]
    add hl, de
    ld bc, $111a
    cp $1d
    ld a, [de]
    dec c
    ld a, [de]
    rra
    ld e, $26
    ld bc, $fb01
    inc a
    inc d
    ld de, $1f01
    inc de
    db $10
    inc h
    rst $30
    db $fd
    rla
    inc c
    jr nz, jr_016_5307

    ld c, $13
    ld bc, $190c
    cp $0c
    rla
    rla
    cpl
    ld a, [de]
    jr nz, @+$21

    ld bc, $1f0c
    rra
    inc c
    ld c, $16
    rst $30
    db $fd
    add hl, de
    ld a, [de]
    ld [hl+], a

jr_016_5307:
    daa
    ld bc, $1022
    jr z, jr_016_5324

    rla
    ld bc, $100d
    cp $10
    inc c
    ld e, $14
    rla
    inc h
    ld bc, $100f
    ld de, $0c10
    rra
    db $10
    rrca
    ld h, $f7
    db $fd

jr_016_5324:
    inc d
    jr z, jr_016_533f

    ld bc, $1a19
    rra
    ld bc, $201e
    dec e
    db $10
    cp $22
    inc de
    inc c
    rra
    ld bc, $1a1f
    ld bc, $1a0f
    ld h, $f7
    nop
    rrca

jr_016_533f:
    dec e
    ld h, $01
    rla
    inc d
    ld [de], a
    inc de
    rra
    daa
    ld bc, $3cfb
    ld [hl+], a
    db $10
    cp $19
    db $10
    db $10
    rrca
    ld bc, $1a1f
    ld bc, $1f1e
    dec e
    inc d
    ld d, $10
    rst $30
    db $fd
    add hl, de
    ld a, [de]
    ld [hl+], a
    add hl, hl
    ld bc, $fb01
    inc a
    inc d
    ld de, $2401
    ld a, [de]
    jr nz, @+$03

    ld c, $0c
    add hl, de
    cp $1f
    dec e
    inc c
    add hl, de
    ld e, $11
    ld a, [de]
    dec e
    jr jr_016_537c

    dec e

jr_016_537c:
    jr nz, jr_016_539c

    inc de
    rst $30
    db $fd
    ld de, $1d1a
    ld bc, $1b1e
    inc c
    ld c, $10
    cp $1f
    dec e
    inc c
    ld hl, $1710
    daa
    ld bc, $1022
    ld bc, $0c0e
    add hl, de
    rst $30
    db $fd
    rra

jr_016_539c:
    dec e
    inc h
    ld bc, $010c
    ld e, $20
    dec e
    dec de
    dec e
    inc d
    ld e, $10
    cp $0c
    rra
    rra
    inc c
    ld c, $16
    ld bc, $190c
    rrca
    ld bc, $1422
    dec de
    db $10
    rst $30
    db $fd
    rra
    inc de
    db $10
    jr jr_016_53c1

    ld a, [de]

jr_016_53c1:
    jr nz, jr_016_53e2

    ld h, $f7
    nop
    ld sp, $3131
    ld sp, $fe31
    nop
    ld a, [de]
    ld d, $26
    ld bc, $fb01
    inc a
    inc d
    jr z, jr_016_53ee

    rla
    ld bc, $1f1e
    inc c
    dec e
    rra
    cp $18
    ld a, [de]
    rrca

jr_016_53e2:
    inc d
    ld de, $1424
    add hl, de
    ld [de], a
    ld bc, $201d
    ld e, $13
    rst $30

jr_016_53ee:
    db $fd
    inc c
    add hl, de
    rrca
    ld bc, $1412
    ld hl, $0110
    inc de
    inc d

jr_016_53fa:
    jr jr_016_53fa

    ld e, $1a
    jr jr_016_5410

    ld bc, $2310
    rra
    dec e
    inc c
    rst $30
    db $fd
    ld de, $1d14
    db $10
    dec de
    ld a, [de]
    ld [hl+], a
    db $10

jr_016_5410:
    dec e
    ld h, $01
    ld bc, $3cfb
    rra
    inc de
    inc d
    ld e, $fe
    jr jr_016_5429

    inc h
    ld bc, $0c1f
    ld d, $10
    ld bc, $1a1e
    jr jr_016_5438

    rst $30

jr_016_5429:
    db $fd
    rra
    inc d
    jr @+$12

    daa
    ld bc, $1a1e
    ld bc, $1322
    inc h
    cp $0f

jr_016_5438:
    ld a, [de]
    add hl, de
    jr z, jr_016_545b

    ld bc, $1a24
    jr nz, jr_016_5442

    ld [de], a

jr_016_5442:
    ld a, [de]
    rst $30
    db $fd
    db $10
    inc hl
    ld c, $13
    inc c
    add hl, de
    ld [de], a
    db $10
    ld bc, $1a24
    jr nz, jr_016_546f

    cp $1b
    ld bc, $130e
    inc d
    dec de
    ld e, $01

jr_016_545b:
    ld de, $1d1a
    rst $30
    db $fd
    inc d
    rra
    db $10
    jr jr_016_5483

    ld h, $f7
    nop
    ld sp, hl
    ld a, b
    inc d
    ld bc, $131e
    ld a, [de]

jr_016_546f:
    jr nz, jr_016_5488

    rrca
    ld bc, $0c13
    ld hl, $fe10
    rrca
    db $10
    ld de, $0c10
    rra
    db $10
    rrca
    ld bc, $170c

jr_016_5483:
    rla
    ld bc, $131f
    db $10

jr_016_5488:
    db $fd
    ld e, $1f
    inc c
    dec e
    rrca
    dec e
    ld a, [de]
    inc d
    rrca
    ld e, $26
    db $f4
    nop
    ld [hl+], a
    inc de
    inc c
    rra
    ld a, [hl+]
    ld bc, $fb01
    inc a
    ld [hl+], a
    inc de
    inc c
    rra
    jr z, jr_016_54c3

    cp $1f
    inc de
    inc c
    rra
    ld bc, $1f1e
    inc c
    dec e
    ld a, [hl+]
    ld h, $26
    ld h, $f4
    nop
    ld sp, hl
    ld a, b
    ld [hl+], a
    inc c
    inc d
    rra
    ld h, $26
    ld h, $fe
    ei
    ld a, b
    inc d
    rra

jr_016_54c3:
    jr z, jr_016_54e3

    ld bc, $1a18
    ld hl, $1914
    ld [de], a
    ld h, $26
    ld h, $fd
    add hl, de
    ld a, [de]
    add hl, hl
    cp $fb
    ld a, b
    inc d
    rra
    ld bc, $0c0e
    add hl, de
    jr z, jr_016_54fd

    ld bc, $100d
    add hl, hl
    db $f4

jr_016_54e3:
    nop
    ld [hl+], a
    inc d
    rla
    inc h
    ld a, [hl+]
    add hl, hl
    ei
    ld a, b
    db $f4
    nop
    inc d
    ld e, $01
    inc de
    db $10
    ld bc, $100d
    inc de
    inc d
    add hl, de
    rrca
    cp $1f
    inc de

jr_016_54fd:
    inc d
    ld e, $2a
    add hl, hl
    db $f4
    nop
    ld a, [de]
    ld a, [de]
    dec de
    ld e, $29
    ld bc, $fb01
    ld a, b
    rra
    inc de
    inc c
    rra
    ld bc, $0c22
    ld e, $fe
    ld c, $17
    ld a, [de]
    ld e, $10
    add hl, hl
    db $f4
    nop
    ld sp, hl
    ld a, b
    inc de
    inc d
    rra
    ld bc, $131f
    db $10
    ld bc, $1015
    rra
    ld e, $27
    cp $1d
    jr nz, jr_016_554e

    inc de
    add hl, hl
    ld bc, $fb01
    inc a
    rla
    db $10
    rra
    jr z, jr_016_5559

    ld bc, $1a12
    add hl, hl
    db $f4
    nop
    inc c
    dec e
    db $10
    ld bc, $1a24
    jr nz, jr_016_554a

    ld a, [de]

jr_016_554a:
    ld d, $2a
    cp $fb

jr_016_554e:
    ld a, b
    inc de
    db $10
    dec e
    db $10
    daa
    ld bc, $1d12
    inc c
    dec c

jr_016_5559:
    ld bc, $2418
    rst $30
    db $fd
    ld e, $13
    ld a, [de]
    jr nz, jr_016_557a

    rrca
    db $10
    dec e
    ld h, $01
    ld bc, $3cfb
    inc d
    jr z, @+$1a

    cp $1e
    jr nz, jr_016_558f

    db $10
    ld bc, $1a24
    jr nz, @+$03

    ld c, $0c

jr_016_557a:
    add hl, de
    ld bc, $100d
    rst $30
    db $fd
    ld de, $2314
    db $10
    rrca
    ld bc, $1f0c
    cp $0f
    dec e
    ld h, $01
    rla
    inc d

jr_016_558f:
    ld [de], a
    inc de
    rra
    jr z, jr_016_55b2

    ld bc, $0c17
    dec c
    ld h, $f7
    db $fd
    jr jr_016_55ad

    ld [de], a
    inc c
    jr jr_016_55ad

    add hl, de
    ld h, $26
    ld h, $01
    ld bc, $32fb
    ld [hl+], a
    inc de
    inc h
    ld a, [hl+]

jr_016_55ad:
    ei
    ld e, d
    rst $30
    db $fd
    ld [hl+], a

jr_016_55b2:
    inc de
    inc h
    ld bc, $1d0c
    db $10
    ld bc, $1a24

jr_016_55bb:
    jr nz, jr_016_55bb

    inc de
    db $10
    rla
    dec de
    inc d
    add hl, de
    ld [de], a
    ld bc, $1018
    ld a, [hl+]
    rst $30
    db $fd
    dec c
    db $10
    ld c, $0c
    jr nz, jr_016_55ee

    db $10
    ld bc, $1022
    ld bc, $1d0c
    db $10
    cp $0d
    ld a, [de]
    rra
    inc de
    ld bc, $1a1d
    dec c
    ld a, [de]
    rra
    ld e, $26
    rst $30
    db $fd
    inc h
    db $10
    ld e, $26
    ld bc, $fb01

jr_016_55ee:
    inc a
    inc c
    add hl, de
    rrca
    ld bc, $1022
    cp $22
    db $10
    dec e
    db $10
    ld bc, $1a0d
    rra
    inc de
    rst $30
    db $fd
    ld c, $1d
    db $10
    inc c
    rra
    db $10
    rrca
    ld bc, $1a1f
    cp $11
    inc d
    ld [de], a
    inc de
    rra
    add hl, hl
    rst $30
    nop
    add hl, de
    ld a, [de]
    daa
    ld bc, $3cfb
    inc h
    ld a, [de]
    jr nz, jr_016_5646

    dec e
    db $10
    cp $22
    dec e
    ld a, [de]
    add hl, de
    ld [de], a
    add hl, hl
    ld bc, $fb01
    inc a
    inc d
    ld bc, $191a
    rla
    inc h
    rst $30
    db $fd
    ld de, $1214
    inc de
    rra
    ld bc, $1322
    db $10
    add hl, de
    ld bc, $0114
    inc c

jr_016_5641:
    jr jr_016_5641

    ld de, $1d1a

jr_016_5646:
    ld c, $10
    rrca
    ld bc, $1a1f
    rst $30
    db $fd
    dec de
    dec e
    ld a, [de]
    rra
    db $10
    ld c, $1f
    ld bc, $131f
    db $10
    cp $22
    ld a, [de]
    dec e
    rla
    rrca
    ld bc, $1d11
    ld a, [de]
    jr jr_016_5666

    rra

jr_016_5666:
    inc de
    ld a, [de]
    ld e, $10
    rst $30
    db $fd
    ld [hl+], a
    inc de
    ld a, [de]
    ld bc, $1a22
    jr nz, jr_016_568b

    rrca
    ld bc, $141b
    rra
    cp $18
    inc c
    ld c, $13
    inc d
    add hl, de
    db $10
    ld e, $01
    inc c
    ld [de], a
    inc c
    inc d
    add hl, de
    ld e, $1f
    rst $30

jr_016_568b:
    db $fd
    jr jr_016_569a

    add hl, de
    ld h, $01
    ld bc, $3cfb
    inc d
    ld bc, $100d
    rla
    inc d

jr_016_569a:
    db $10
    ld hl, $fe10
    inc de
    jr nz, @+$1a

    inc c
    add hl, de
    ld e, $01
    inc c
    add hl, de
    rrca
    rst $30
    db $fd
    dec e
    ld a, [de]
    dec c
    ld a, [de]
    rra
    ld e, $01
    ld c, $0c
    add hl, de
    ld bc, $1417
    ld hl, $fe10
    inc d
    add hl, de
    ld bc, $101b
    inc c
    ld c, $10
    add hl, hl
    rst $30
    db $fd
    jr jr_016_56d3

    inc h
    dec c
    db $10
    ld h, $26
    ld h, $01
    ei
    inc a
    dec c
    jr nz, @+$21

jr_016_56d3:
    ld bc, $fe14
    ld [hl+], a
    inc d
    rla
    rla
    ld bc, $1019
    ld hl, $1d10
    ld bc, $1916
    ld a, [de]
    ld [hl+], a
    ld h, $f7
    db $fd
    jr @+$26

    ld bc, $2011
    ld e, $14
    ld a, [de]
    add hl, de
    cp $1d
    db $10
    inc c
    ld c, $1f
    ld a, [de]
    dec e
    ld bc, $1e14
    ld bc, $1a12
    inc d
    add hl, de
    ld [de], a
    rst $30
    db $fd
    ld c, $1d
    inc d
    rra
    inc d
    ld c, $0c
    rla
    ld bc, $190c
    rrca
    cp $22
    inc de
    db $10
    add hl, de
    ld bc, $1f14
    ld bc, $1a0f
    db $10
    ld e, $27
    ld bc, $1f14
    rst $30
    db $fd
    ld [hl+], a
    inc d
    rla
    rla
    ld bc, $100f
    ld e, $1f
    dec e
    ld a, [de]
    inc h
    cp $1f
    inc de
    inc d
    ld e, $01
    db $10
    add hl, de
    rra
    inc d
    dec e
    db $10
    rst $30
    db $fd
    ld de, $1d1a
    rra
    dec e
    db $10
    ld e, $1e
    ld h, $f7
    db $fd
    ld e, $20
    add hl, de
    ld e, $1f
    inc c
    dec e
    ld h, $26
    ld h, $fb
    inc a
    rst $30
    db $fd
    rla
    db $10
    inc c
    ld hl, $0110
    add hl, de
    ld a, [de]
    ld [hl+], a
    add hl, hl
    ei
    inc a
    rst $30
    nop
    ld sp, hl
    ld a, b
    ld [hl+], a
    inc d
    rla
    inc h
    add hl, hl
    cp $fb
    ld a, b
    inc h
    ld a, [de]
    jr nz, @+$03

    ld e, $20
    dec e
    ld hl, $2114
    db $10
    rrca
    ld a, [hl+]
    add hl, hl
    ei
    ld a, b
    db $f4
    nop
    ld sp, hl
    ld a, b
    ld c, $20
    dec e
    ld e, $10
    ld bc, $1a24
    jr nz, @+$29

    cp $fb
    ld a, b
    jr @+$12

    ld [de], a
    inc c
    jr @+$0e

    add hl, de
    add hl, hl
    db $fd
    rra
    inc de
    inc d
    ld e, $01
    ld [hl+], a
    inc c
    dec e
    cp $10
    add hl, de
    rrca
    ld e, $01
    add hl, de
    ld a, [de]
    ld [hl+], a
    add hl, hl
    ei
    ld a, b
    db $f4
    nop
    jr jr_016_57c0

    ld [de], a
    inc c
    jr jr_016_57c0

    add hl, de
    daa
    cp $fb
    inc a
    ld [hl+], a
    db $10
    rla
    ld c, $1a
    jr jr_016_57d0

jr_016_57c0:
    ld bc, $1a13
    jr jr_016_57d5

    add hl, hl
    rst $30
    db $fd
    inc d
    ld bc, $0c13
    ld hl, $0110
    dec d

jr_016_57d0:
    jr nz, jr_016_57f0

    rra
    cp $0e

jr_016_57d5:
    ld a, [de]
    jr jr_016_57f3

    rla
    db $10
    rra
    db $10
    rrca
    rst $30
    db $fd
    rra
    inc de
    db $10
    ld bc, $201f
    dec e
    dec c
    ld a, [de]
    cp $0c
    ld c, $0e
    db $10
    rla
    db $10
    dec e

jr_016_57f0:
    inc c
    rra
    ld a, [de]

jr_016_57f3:
    dec e
    ld bc, $1a11
    dec e
    rst $30
    db $fd
    inc h
    ld a, [de]
    jr nz, jr_016_581b

    ld bc, $182e
    db $10
    ld [de], a
    inc c
    ld bc, $1d0c
    jr jr_016_5837

    ld h, $f7
    nop
    ld a, [de]
    ld d, $26
    rst $30
    db $fd
    inc d
    rra
    jr z, @+$20

    ld bc, $2011
    add hl, de
    ld c, $1f

jr_016_581b:
    inc d
    ld a, [de]
    add hl, de
    inc d
    add hl, de
    ld [de], a
    cp $1b
    db $10
    dec e
    ld de, $0e10
    rra
    rla
    inc h
    ld h, $f7
    db $fd
    ld [de], a
    ld a, [de]
    ld a, [de]
    rrca
    ld bc, $2017
    ld c, $16

jr_016_5837:
    daa
    cp $18
    db $10
    ld [de], a
    inc c
    jr jr_016_584b

    add hl, de
    add hl, hl
    rst $30
    nop
    inc d
    ld bc, $1411
    add hl, de
    inc c
    rla
    rla

jr_016_584b:
    inc h
    cp $0f
    db $10
    ld e, $1f
    dec e
    ld a, [de]
    inc h
    db $10
    rrca
    ld bc, $170c
    rla
    rst $30
    db $fd
    rra
    inc de
    db $10
    ld bc, $1b1e
    inc c
    ld c, $10
    cp $1e
    rra
    inc c
    rra
    inc d
    ld a, [de]
    add hl, de
    ld e, $29
    rst $30
    nop
    inc h
    ld a, [de]
    jr nz, @+$03

    ld de, $1a1a
    rla
    cp $18
    db $10
    ld [de], a
    inc c
    jr @+$0e

    add hl, de
    add hl, hl
    rst $30
    db $fd
    inc h
    ld a, [de]
    jr nz, jr_016_5889

    inc de

jr_016_5889:
    inc c
    ld hl, $0110
    jr jr_016_589f

    rra
    rra
    rla
    db $10
    rrca
    cp $22
    inc d
    rra
    inc de
    ld bc, $2418
    ld bc, $171b

jr_016_589f:
    inc c
    add hl, de
    ld bc, $1a11
    dec e
    rst $30
    db $fd
    rra
    inc de
    db $10
    ld bc, $0c17
    ld e, $1f
    ld bc, $141f
    jr @+$12

    ld h, $f7
    db $fd
    ld [hl+], a
    db $10
    ld bc, $1a0e
    jr nz, jr_016_58d5

    rrca
    ld bc, $0c13
    ld hl, $fe10
    ld c, $1d
    db $10
    inc c
    rra
    db $10
    rrca
    ld bc, $010c
    add hl, de
    db $10
    ld [hl+], a
    rst $30
    db $fd
    ld [hl+], a

jr_016_58d5:
    ld a, [de]
    dec e
    rla
    rrca
    ld bc, $1a11
    dec e
    ld bc, $170c
    rla
    cp $1d
    ld a, [de]
    dec c
    ld a, [de]
    rra
    ld e, $29
    ld bc, $fb01
    inc a
    inc de
    ld a, [de]
    ld [hl+], a
    ld bc, $0c0e
    add hl, de
    rst $30
    db $fd
    inc d
    ld bc, $0c11
    ld c, $10
    ld bc, $2418
    ld bc, $0c18
    ld e, $1f
    db $10
    dec e
    cp $19
    ld a, [de]
    ld [hl+], a
    ld a, [hl+]
    ld bc, $fb01
    inc a
    inc d
    ld bc, $2018
    ld e, $1f
    rst $30
    db $fd
    dec e
    db $10
    rrca
    db $10
    db $10
    jr @+$03

    jr jr_016_5944

    ld e, $10
    rla
    ld de, $0d01
    inc h
    cp $0d
    rla
    ld a, [de]
    ld [hl+], a
    inc d
    add hl, de
    ld [de], a
    ld bc, $1a24
    jr nz, jr_016_5935

    rra

jr_016_5935:
    ld a, [de]
    rst $30
    db $fd
    dec de
    inc d
    db $10
    ld c, $10
    ld e, $29
    rst $30
    nop
    ld sp, hl
    ld a, b
    dec c

jr_016_5944:
    db $10
    inc de
    ld a, [de]
    rla
    rrca
    ld bc, $1018
    ld [de], a
    inc c
    jr jr_016_595c

    add hl, de
    daa
    cp $fb
    inc a
    inc d
    ld bc, $0c13
    ld hl, $0110

jr_016_595c:
    inc c
    ld [hl+], a
    inc c
    ld d, $10
    add hl, de
    db $10
    rrca
    db $fd
    rra
    inc de
    db $10
    ld bc, $190c
    ld c, $14
    db $10
    add hl, de
    rra
    cp $22
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld bc, $201e
    add hl, de
    ld e, $1f
    inc c
    dec e
    add hl, hl
    db $fd
    inc d
    rra
    ld e, $01
    add hl, de
    ld a, [de]
    ld hl, $010c
    ld [hl+], a
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    cp $22
    inc d
    rla
    rla
    ld bc, $100f
    ld e, $1f
    dec e
    ld a, [de]
    inc h
    db $fd
    inc h
    ld a, [de]
    jr nz, jr_016_59cb

    ei
    ld a, b
    db $f4
    nop
    ld e, $20
    add hl, de
    ld e, $1f
    inc c
    dec e
    daa
    ld bc, $3cfb
    rrca
    db $10
    ld e, $1f
    dec e
    ld a, [de]
    inc h
    cp $18
    db $10
    ld [de], a
    inc c
    jr jr_016_59cb

    add hl, de
    add hl, hl
    ei
    ld a, b
    db $f4
    nop
    ld sp, hl
    ld a, b
    ld [hl+], a
    inc de
    inc c
    rra

jr_016_59cb:
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    cp $fb
    ld e, d
    inc h
    ld a, [de]
    jr nz, @+$03

    ld de, $1a1a
    rla
    add hl, hl
    db $fd
    inc de
    ld a, [de]
    ld [hl+], a
    ld bc, $0c0f
    dec e
    db $10
    ld bc, $1a24

jr_016_59e6:
    jr nz, jr_016_59e6

    inc c
    rra
    rra
    inc c
    ld c, $16
    ld bc, $131f
    db $10
    db $fd
    jr jr_016_5a09

    ld [de], a
    inc de
    rra
    inc h
    ld bc, $1d0f
    ld h, $01
    ld [hl+], a
    inc d
    rla
    inc h
    add hl, hl
    ei
    ld a, b
    db $f4
    nop
    ld sp, hl
    ld a, b

jr_016_5a09:
    inc h
    ld a, [de]
    jr nz, jr_016_5a0e

    inc c

jr_016_5a0e:
    dec e
    db $10
    ld h, $26
    ld h, $fe
    ei
    ld e, d
    jr jr_016_5a28

    ld [de], a
    inc c
    jr jr_016_5a28

    add hl, de
    ld h, $26
    ld h, $fd
    inc d
    ld bc, $180c
    ld bc, $201e

jr_016_5a28:
    add hl, de
    ld e, $1f
    inc c
    dec e
    ld h, $26
    ld h, $fd
    rra
    inc de
    db $10
    ld bc, $1a0f
    ld a, [de]
    jr jr_016_5a58

    rrca
    inc c
    inc h
    cp $22
    db $10
    inc c
    dec de
    ld a, [de]
    add hl, de
    ld h, $26
    ld h, $fd
    inc d
    ld bc, $2018
    ld e, $1f
    ld bc, $100f
    ld e, $1f
    dec e
    ld a, [de]
    inc h
    cp $0c

jr_016_5a58:
    rla
    rla
    ld bc, $1914
    ld de, $1d10
    inc d
    ld a, [de]
    dec e
    db $fd
    rla
    inc d
    ld de, $0110
    ld de, $1d1a
    jr jr_016_5a8c

    add hl, hl
    ei
    ld a, b
    db $f4
    nop
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
    ld hl, $44b5
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


    jr c, @-$1f

    db $10
    inc d
    nop
    dec b
    inc c
    call nz, Call_000_3a68
    rst $18
    inc b
    ld e, $00
    ld b, $0c
    ret


    ld l, b
    add hl, sp
    rst $18
    inc b
    inc a
    nop
    rlca
    inc c
    jp c, Jump_000_0068

    nop
    nop
    ld b, [hl]
    nop
    dec bc
    dec c
    ld h, $69
    inc [hl]
    rst $18
    ld a, [bc]
    ld [hl-], a
    nop
    add hl, bc
    inc c
    db $eb
    ld l, b
    inc a
    rst $18
    ld bc, $008c
    ld a, [bc]
    inc c
    db $fc
    ld l, b
    dec sp
    rst $18
    ld bc, $0078
    ld [$150c], sp
    ld l, c
    ld a, d
    rst $18
    ld bc, $005a
    rra
    ld [hl+], a
    scf
    ld l, c
    ld a, e
    rst $18
    ld bc, $0064
    jr nz, jr_016_6227

    ld c, b
    ld l, c
    ld a, h
    rst $18
    ld bc, $0000
    ld hl, $5922
    ld l, c
    or [hl]
    ld h, c
    cp a
    ld h, c
    ret z

    ld h, c
    pop de
    ld h, c
    jp c, $e361

    ld h, c
    db $ec
    ld h, c
    push af
    ld h, c
    cp $61
    rlca
    ld h, d

Call_016_6224:
    ld a, [$c9c4]

jr_016_6227:
    dec a

Call_016_6228:
    ld hl, $6210
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
    ld a, $0a
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

    ld l, $38
    push hl
    push bc
    ld a, $5e
    call Call_000_020a
    pop bc
    pop hl
    ld [hl], a

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


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
