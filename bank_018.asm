; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, @+$64

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$33

    jr c, jr_018_4030

    sub e
    ld b, d
    add l
    ld [hl], a
    rst $18
    ld a, a

Call_018_4016:
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


Call_018_4030:
jr_018_4030:
    push de
    ret


Call_018_4032:
    ld a, [$d163]
    or a
    jr z, jr_018_4045

    ld a, [$d725]
    ld [$cc9a], a
    ld a, $01
    ld [$cc9b], a
    jr jr_018_406d

jr_018_4045:
    ld a, [$cc9b]
    or a
    jr z, jr_018_4066

    ld a, [$d74b]
    or a
    jr nz, jr_018_4066

    ld hl, $cc9a
    ld a, [$d725]
    cp [hl]

Call_018_4058:
    jr c, jr_018_4066

    sub $04
    cp [hl]
    jr nc, jr_018_4066

    ld a, $01
    ld [$cc99], a
    jr jr_018_406d

jr_018_4066:
    xor a
    ld [$cc99], a
    ld [$cc9b], a

jr_018_406d:
    ret


Call_018_406e:
    ld hl, $d722
    ld a, [hl]
    add e
    cp $09
    jr c, jr_018_408c

    cp $97
    jr nc, jr_018_408c

    ld [hl], a
    ld d, $00
    bit 7, e
    jr z, jr_018_4083

    dec d

jr_018_4083:
    ld hl, $d70d
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a

jr_018_408c:
    ret


Call_018_408d:
    ld hl, $d29b
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_018_4099:
    ld hl, $d834
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_018_40a5:
    ld hl, $d838
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    ret


Call_018_40b1:
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
    call Call_018_4140
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
    call Call_018_4129
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


Call_018_4129:
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


Call_018_4140:
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


Call_018_414e:
    ld b, $00

jr_018_4150:
    ld a, [hl]
    cp d
    ret z

    cp e
    jr z, jr_018_4159

    add hl, bc
    jr jr_018_4150

jr_018_4159:
    scf
    ret


Call_018_415b:
    ld a, e
    ld [$de75], a
    ld a, d
    ld [$de76], a
    ld a, $8f
    ld [$de73], a
    ld a, $41
    ld [$de74], a
    ret


Call_018_416e:
    ld a, [$de74]
    or a
    jr z, jr_018_418b

    xor a
    ldh [$ffab], a
    ld a, [$d70d]
    ldh [$ff8a], a
    ld a, [$d70e]
    ldh [$ff8b], a
    ld a, [$d725]
    ldh [$ff8c], a
    call Call_018_418f
    ldh a, [$ffab]

jr_018_418b:
    ld [$d70b], a
    ret


Call_018_418f:
    ldh a, [$ff8c]
    ld b, a
    cp $f0
    jr c, jr_018_4198

    ld b, $00

jr_018_4198:
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    bit 7, d
    jr z, jr_018_41a5

    ld d, $00
    ld e, d

jr_018_41a5:
    ld hl, $de75
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_018_41ab:
    ld a, [hl+]
    ld c, a
    and [hl]
    inc a
    ret z

    ld a, e
    sub c
    ld a, d
    sbc [hl]
    jr c, jr_018_41ce

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_018_41d0

    inc hl
    ld a, b
    cp [hl]
    jr c, jr_018_41d1

    inc hl
    cp [hl]
    jr nc, jr_018_41d2

    ldh a, [$ffab]
    set 7, a
    ldh [$ffab], a
    ret


jr_018_41ce:
    inc hl
    inc hl

jr_018_41d0:
    inc hl

jr_018_41d1:
    inc hl

jr_018_41d2:
    inc hl
    jr jr_018_41ab

Call_018_41d5:
Jump_018_41d5:
    ld hl, $cc00
    call Call_018_41e2
    ld hl, $c3e5
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_018_41e2:
    push hl
    call Call_018_4211
    pop hl
    ld c, l
    jp Jump_018_423a


Call_018_41eb:
    ld a, [$de8f]
    ld b, a

jr_018_41ef:
    ld a, [hl+]
    or a
    jr z, jr_018_41f8

    cp b
    jr nz, jr_018_41ef

    ld a, $01

jr_018_41f8:
    ld [$d161], a
    ret


Call_018_41fc:
    ld a, [$d161]
    or a
    ret z

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    or c
    jr nz, jr_018_4229

    push de
    call Call_000_0219
    pop de

Call_018_4211:
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

jr_018_4229:
    ld a, [$deaf]
    and $ff
    jp nz, Jump_018_428f

    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_018_428f

Jump_018_423a:
jr_018_423a:
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
    jr z, jr_018_4291

    cp $ff
    jr nz, jr_018_4262

    ld [hl], $00
    jr jr_018_423a

jr_018_4262:
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
    jr z, jr_018_423a

Jump_018_428f:
jr_018_428f:
    xor a
    ret


jr_018_4291:
    scf
    ret


    sub a
    ld b, d
    or l
    ld b, d
    jp nz, $d042

    ld b, d
    sbc $42
    db $ec
    ld b, d
    ld a, [$0842]
    ld b, e
    ld d, $43
    db $e4
    ld l, a
    ldh a, [c]
    ld l, a
    nop
    ld [hl], b
    ld c, $70
    inc e
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    jr c, jr_018_4323

    ld b, [hl]
    ld [hl], b
    rlca
    ld bc, $010e
    rla
    ld bc, $011e
    ld h, $05
    inc l
    add hl, bc
    rst $38
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    inc e
    ld c, c
    dec sp
    ld c, d
    ld b, b
    nop
    ld d, e
    inc h
    ld b, e
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld [hl+], a
    ld c, c
    dec sp
    ld c, d
    rla
    nop
    ld h, e
    db $fc
    ld b, e
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld [hl+], a
    ld c, c
    dec sp
    ld c, d

jr_018_42e7:
    rla
    nop
    ld h, e
    cp h
    ld b, h
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld [hl+], a
    ld c, c
    dec sp
    ld c, d
    rla
    nop
    ld h, e
    add $45
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld [hl+], a
    ld c, c
    dec sp
    ld c, d
    rla
    nop
    ld h, e
    ld h, d
    ld b, [hl]
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld d, h
    ld [hl], b
    and [hl]
    ld [hl], b
    ld b, a
    nop
    ld b, e
    jr nz, jr_018_435d

    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    inc e
    ld c, c
    dec sp
    ld c, d
    ld b, a
    nop
    ld h, e
    and b

jr_018_4323:
    ld b, a
    add c
    inc hl
    ld c, d
    ld e, b
    ld c, d
    nop
    nop
    daa
    ld l, $02
    ld b, d
    ld b, e
    inc hl
    ld sp, $5601
    ld c, b
    ld [hl+], a
    inc d
    ld sp, $1200
    jr nz, @+$42

    nop
    ld [hl+], a
    inc l
    ld b, c
    nop
    nop
    ld [bc], a
    ld h, $4a
    ld [$804b], a
    ld [bc], a
    jr nz, @+$08

    add b
    inc h
    ld b, e
    rla
    ld bc, $5802
    ld b, e
    ld b, $01
    ld d, b
    nop
    nop
    add e
    ld h, $4a
    inc a
    ld c, h

jr_018_435d:
    add b
    ld [bc], a
    db $10
    ld bc, $4280
    ld b, e
    db $10
    jr nc, jr_018_42e7

    ld a, d
    ld b, e
    ld l, $08
    jr nz, jr_018_436d

jr_018_436d:
    ld [bc], a
    dec d
    jr nz, jr_018_4375

    ld l, $22
    stop

jr_018_4375:
    dec l
    cpl
    jr nc, jr_018_4379

jr_018_4379:
    nop
    inc b
    ld h, $4a
    adc $4d
    nop
    dec b
    rla
    ld [$5802], sp
    ld b, e
    db $10
    ld bc, $9080
    ld b, e
    ld [hl+], a
    ld bc, $0041
    nop
    add l
    add h
    ld c, c
    jr nz, jr_018_43e3

    nop
    dec b
    rla
    ld bc, $7a02
    ld b, e
    ld [hl-], a
    jr nc, @+$03

    call c, Call_000_3c43
    inc c
    jr nc, jr_018_43a6

    inc a

jr_018_43a6:
    ld d, $30
    ld bc, $2202
    jr nc, jr_018_43ae

    ld [bc], a

jr_018_43ae:
    inc hl
    jr nc, @+$03

    ld h, $27
    ld h, b
    nop
    nop
    add l
    ld e, l
    ld c, c
    jr nz, jr_018_4409

    nop
    dec b
    rla
    ld bc, $7a02
    ld b, e
    ld [hl-], a
    jr nc, @+$03

    call c, Call_000_3c43
    inc c
    jr nc, jr_018_43cc

    inc a

jr_018_43cc:
    ld d, $30
    ld bc, $2202
    jr nc, jr_018_43d4

    ld [bc], a

jr_018_43d4:
    inc hl
    jr nc, @+$03

    ld h, $27
    ld h, b
    nop
    nop
    ld b, $ce
    ld c, c
    or d
    ld c, a
    jr nz, @+$0a

jr_018_43e3:
    nop
    dec h
    ld [$ee01], sp
    ld b, e
    ld d, e
    ld [$0060], sp
    nop
    rlca
    pop bc
    ld c, c
    inc b
    ld d, b
    ret nz

    ld [$6700], sp
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, h
    nop
    rlca
    ld h, $4a
    inc b
    ld d, b
    ret nz

    ld [$6700], sp
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, h

jr_018_4409:
    nop
    adc b
    ld h, $4a
    ld d, [hl]
    ld d, b
    ret nz

    ld [$0922], sp
    ld bc, $486c
    ld h, a
    ld [bc], a
    ld [bc], a
    ld l, $44
    nop
    adc b
    inc sp
    ld c, c
    ld d, [hl]
    ld d, b
    ret nz

    ld [$0922], sp
    ld bc, $486c
    ld h, a
    ld [bc], a
    ld [bc], a
    ld l, $44
    nop
    add hl, bc
    ld h, $4a
    xor b
    ld d, b
    ret nz

    ld [$0260], sp
    add b
    ld a, [bc]
    ld b, h
    ld h, a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, h
    nop
    adc d
    ld h, $4a
    ld a, [$c050]
    ld [$0016], sp
    inc bc
    ld a, [hl]
    ld c, b
    ld h, a
    ld [bc], a
    ld [bc], a
    ld h, h
    ld b, h
    nop
    adc d
    ld b, a
    ld c, c
    ld a, [$c050]
    ld [$0016], sp
    inc bc
    ld a, [hl]
    ld c, b
    ld h, a
    ld [bc], a
    ld [bc], a
    ld h, h
    ld b, h
    nop
    dec bc
    ld h, $4a
    ld c, h
    ld d, c
    ret nz

    ld [$0260], sp
    add b
    ld b, b
    ld b, h
    daa
    ld [bc], a
    ld [bc], a
    halt
    ld b, h
    nop
    adc h
    sub c
    ld c, c
    sbc [hl]
    ld d, c
    ret nz

    ld [$0220], sp
    add b
    ld h, h
    ld b, h
    inc [hl]
    jr nc, jr_018_4486

    sbc h

jr_018_4486:
    ld b, h
    ld [bc], a
    rlca
    ld d, b
    inc b
    ld [bc], a
    dec bc
    ld d, b
    inc b
    ld [hl+], a
    rrca
    ld sp, $2200
    ld e, $41
    nop
    ld [hl+], a
    ld a, [hl+]
    ld hl, $0000
    dec c
    push hl
    ld c, c
    jr nc, jr_018_44f4

    ldh [$ff0b], a
    nop
    dec h
    ld [$ae01], sp
    ld b, h
    jr nc, jr_018_44b3

    ld h, b
    nop
    nop
    ld c, $c1
    ld c, c
    inc b
    ld d, b

jr_018_44b3:
    add b
    inc c

jr_018_44b5:
    nop
    ld h, a
    ld [bc], a
    ld [bc], a
    jp z, Jump_000_0044

    ld c, $26
    ld c, d
    inc b
    ld d, b
    add b
    inc c
    nop
    ld h, a
    ld [bc], a
    ld [bc], a
    jp z, Jump_000_0044

    rrca
    ld h, $4a
    xor b
    ld d, b
    add b
    inc c
    ld h, b
    ld [bc], a
    add b
    xor [hl]
    ld b, h
    ld h, a
    ld [bc], a
    ld [bc], a
    call c, Call_000_0044
    db $10
    ld h, $4a
    ld c, h
    ld d, c
    add b
    inc c
    ld h, b
    ld [bc], a
    add b
    jp z, Jump_000_2744

    ld [bc], a
    ld [bc], a
    xor $44
    nop
    sub c
    ld h, $4a
    add d
    ld d, e
    add b

jr_018_44f4:
    inc c
    inc hl
    ld sp, $9401
    ld c, b
    daa
    cpl
    ld [bc], a
    db $10
    ld b, l
    ld d, $0c
    stop
    ld d, $1d
    stop
    ld d, $22
    stop
    add hl, de
    ld h, $40
    nop
    nop
    ld [de], a
    ld h, $4a
    inc d
    ld d, l
    nop
    rrca
    jr nz, jr_018_4520

    add b
    xor $44
    rla
    ld bc, $2602

jr_018_4520:
    ld b, l
    inc a
    ld [bc], a
    jr nc, jr_018_4525

jr_018_4525:
    nop
    inc de
    ld h, $4a
    ld h, [hl]
    ld d, l
    nop
    rrca
    db $10
    ld bc, $1080
    ld b, l
    db $10
    jr nc, jr_018_44b5

    ld d, h
    ld b, l
    ld e, $08
    ld b, b
    nop
    ld e, $12
    stop
    ld [bc], a
    ld d, $30
    inc bc
    ld e, $1e
    stop
    ld [bc], a
    ld [hl+], a
    jr nc, jr_018_454d

    ld [bc], a
    daa

jr_018_454d:
    jr nc, jr_018_4555

    ld e, $2e
    ld h, b
    nop
    nop
    inc d

jr_018_4555:
    ld h, $4a
    ld hl, sp+$56
    add b
    ld de, $0817
    ld [bc], a
    ld h, $45
    db $10
    ld bc, $6a80
    ld b, l
    ld h, $02
    ld h, b
    nop
    nop
    sub l
    and c
    ld c, c
    ld c, d
    ld d, a
    add b
    ld de, $0117
    ld [bc], a
    ld d, h
    ld b, l
    ld [hl-], a
    jr nc, jr_018_457a

    and [hl]

jr_018_457a:
    ld b, l
    ld l, $0e
    stop
    ld l, $17
    stop
    ld l, $20
    nop
    nop
    nop
    sub l
    ld l, a
    ld c, c
    ld c, d
    ld d, a
    add b
    ld de, $0117
    ld [bc], a
    ld d, h
    ld b, l
    ld [hl-], a
    jr nc, jr_018_4598

    and [hl]

jr_018_4598:
    ld b, l
    ld l, $0e
    stop
    ld l, $17
    stop
    ld l, $20
    nop
    nop
    nop
    ld d, $ce
    ld c, c
    or d
    ld c, a
    and b
    inc d
    nop
    dec h
    ld [$b801], sp
    ld b, l
    ld [hl-], a
    ld [$0060], sp
    nop
    rla
    pop bc
    ld c, c
    inc b
    ld d, b
    ld b, b
    dec d
    nop
    ld h, a
    ld [bc], a
    ld [bc], a
    call nc, Call_000_0045
    rla
    ld h, $4a
    inc b
    ld d, b
    ld b, b
    dec d
    nop
    ld h, a
    ld [bc], a
    ld [bc], a
    call nc, Call_000_0045
    jr jr_018_45fc

    ld c, d
    call c, Call_018_4058
    dec d
    ld h, b
    ld [bc], a
    add b
    cp b
    ld b, l
    ld h, a
    ld [bc], a
    ld [bc], a
    and $45
    nop
    add hl, de
    ld h, $4a
    ld l, $59
    ld b, b
    dec d
    ld h, b
    ld [bc], a
    add b
    call nc, Call_018_6745
    ld [bc], a
    ld [bc], a
    ld hl, sp+$45
    nop
    ld a, [de]
    ld h, $4a
    add b

jr_018_45fc:
    ld e, c
    ld b, b
    dec d
    ld h, b
    ld [bc], a
    add b
    and $45
    ld h, a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, [hl]
    nop
    dec de
    ld h, $4a
    ld c, h
    ld d, c
    ld b, b
    dec d
    ld h, b
    ld [bc], a
    add b
    ld hl, sp+$45
    ld h, a
    ld [bc], a
    ld [bc], a
    inc e
    ld b, [hl]
    nop
    inc e
    or c
    ld c, c
    jp nc, $4059

    dec d
    jr nz, jr_018_4627

    add b
    ld a, [bc]

jr_018_4627:
    ld b, [hl]
    inc [hl]
    jr nc, jr_018_462c

    ld b, d

jr_018_462c:
    ld b, [hl]
    inc c
    ld [$0044], sp
    inc c
    ld de, $0024
    dec bc
    inc e
    ld b, d
    nop
    inc c
    ld h, $64
    nop
    dec bc
    cpl
    ld h, b
    nop
    nop
    dec e
    push hl
    ld c, c
    jr nc, jr_018_469a

    ld h, b
    jr jr_018_464a

jr_018_464a:
    dec h
    ld [$5401], sp
    ld b, [hl]
    ld sp, $6008
    nop
    nop
    ld e, $c1
    ld c, c
    inc b
    ld d, b
    nop
    add hl, de
    nop
    ld h, a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld b, [hl]
    nop
    ld e, $26
    ld c, d
    inc b
    ld d, b
    nop
    add hl, de
    nop
    ld h, a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld b, [hl]
    nop
    sbc a
    ld h, $4a
    ld d, [hl]
    ld d, b
    nop
    add hl, de
    ld [hl+], a
    add hl, bc
    ld bc, $48ba
    ld h, a
    ld [bc], a
    ld [bc], a
    sub h
    ld b, [hl]
    nop
    sbc a
    inc sp
    ld c, c
    ld d, [hl]
    ld d, b
    nop
    add hl, de
    ld [hl+], a
    add hl, bc
    ld bc, $48ba
    ld h, a
    ld [bc], a
    ld [bc], a
    sub h
    ld b, [hl]
    nop
    jr nz, @+$28

    ld c, d
    xor b
    ld d, b
    nop

jr_018_469a:
    add hl, de
    ld h, b
    ld [bc], a
    add b
    ld [hl], b
    ld b, [hl]
    ld h, a
    ld [bc], a
    ld [bc], a
    and [hl]
    ld b, [hl]
    nop
    and c
    ld h, $4a
    ld a, [$0050]
    add hl, de
    ld d, $00
    inc bc
    ret nc

    ld c, b
    ld h, a
    ld [bc], a
    ld [bc], a
    jp z, Jump_000_0046

    and c
    ld b, a
    ld c, c
    ld a, [$0050]
    add hl, de
    ld d, $00
    inc bc
    ret nc

    ld c, b
    ld h, a
    ld [bc], a
    ld [bc], a

Jump_018_46c7:
    jp z, Jump_000_0046

    ld [hl+], a
    ld h, $4a
    add b
    ld e, c
    nop
    add hl, de
    ld h, b
    ld [bc], a
    add b
    and [hl]
    ld b, [hl]
    ld h, a
    ld [bc], a
    ld [bc], a
    call c, Call_000_0046
    and e
    ld h, $4a
    ld d, [hl]
    ld d, b
    nop
    add hl, de
    ld [hl+], a
    add hl, bc
    ld bc, $48e6
    ld h, a
    ld [bc], a
    ld [bc], a
    nop
    ld b, a
    nop
    and e
    inc sp
    ld c, c
    ld d, [hl]
    ld d, b
    nop
    add hl, de
    ld [hl+], a
    add hl, bc
    ld bc, $48e6
    ld h, a
    ld [bc], a
    ld [bc], a
    nop
    ld b, a
    nop
    inc h
    ld h, $4a
    ld c, h
    ld d, c
    nop
    add hl, de
    ld h, b
    ld [bc], a
    add b
    call c, Call_000_2746
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    nop
    dec h
    ld d, $4a
    ld h, h
    ld e, e
    nop
    add hl, de
    jr nz, jr_018_471d

    add b
    nop

jr_018_471d:
    ld b, a
    nop
    nop
    ld h, $5d
    ld [hl], b
    ld b, $5c
    ld b, b
    ld a, [de]
    nop
    nop
    nop
    daa
    ld l, l
    ld [hl], c
    ld h, b
    ld e, h
    add b
    dec de
    nop
    nop
    rla
    add hl, bc
    ld h, b
    nop
    nop
    daa
    ld l, l
    ld [hl], c
    ld h, b
    ld e, h
    add b
    dec de
    nop
    nop
    scf
    add hl, bc
    ld h, b
    nop
    nop
    daa
    ld l, l
    ld [hl], c
    ld h, b
    ld e, h
    add b
    dec de
    nop
    nop
    ld [hl], $09
    ld h, b
    nop
    nop
    daa
    ld l, l
    ld [hl], c
    ld h, b
    ld e, h
    add b
    dec de
    nop
    nop
    rst $38
    add d
    ld a, $09
    ld h, b
    nop
    nop
    jr z, @+$6f

    ld [hl], c
    cp d
    ld e, h
    add b
    dec de
    nop
    nop
    ld a, [hl-]
    add hl, bc
    ld h, b
    nop
    nop
    add hl, hl
    ld l, d
    ld [hl], c
    inc d
    ld e, l
    add b
    dec de
    nop
    nop
    rst $38
    add d
    dec a
    add hl, bc
    ld h, b
    ld bc, $2a00
    ld l, l
    ld [hl], c
    ld l, [hl]
    ld e, l
    add b
    dec de
    nop
    nop
    rst $38
    add d
    ccf
    add hl, bc
    ld h, b
    nop
    nop
    dec hl
    ld l, l
    ld [hl], c
    ret z

    ld e, l
    add b
    dec de
    nop
    nop
    ld b, b
    ld [$0130], sp
    nop
    inc l
    ld h, $4a
    ld [hl+], a
    ld e, [hl]
    ret nz

    inc e
    nop
    scf
    inc h
    ld [bc], a
    ld [$0247], a
    ld b, $60
    dec b
    ld [bc], a
    ld [$0560], sp
    ld [bc], a
    ld a, [bc]
    ld h, b
    dec b
    ld [bc], a
    inc c
    ld d, b
    dec b
    ld [bc], a
    ld c, $50
    ld b, $02
    db $10
    ld d, b
    inc b
    ld [bc], a
    ld [de], a
    ld b, b
    dec b
    ld [bc], a
    inc d
    ld b, b
    inc b
    ld [bc], a
    ld d, $40
    inc b
    ld [bc], a
    jr jr_018_4804

    dec b
    ld [bc], a
    ld a, [de]
    jr nc, jr_018_47db

    ld [bc], a
    inc e

jr_018_47db:
    jr nc, jr_018_47e2

    ld [bc], a
    ld e, $20
    dec b
    ld [bc], a

jr_018_47e2:
    jr nz, jr_018_4804

    inc bc
    ld [bc], a
    ld [hl+], a
    jr nz, jr_018_47ef

    nop
    dec l
    ld h, $4a
    ld h, h
    ld e, a

jr_018_47ef:
    and b
    ld e, $30
    ld b, $80
    and b
    ld b, a
    scf
    ld b, $02
    db $fc
    ld b, a
    nop
    ld l, $26
    ld c, d
    ld h, h
    ld e, a
    and b
    ld e, $30

jr_018_4804:
    ld b, $80
    ld [$3747], a
    ld b, $02
    ld c, $48
    nop
    cpl
    ld h, $4a
    ld h, h
    ld e, a
    and b
    ld e, $30
    ld b, $80
    db $fc
    ld b, a
    scf
    ld b, $02
    jr nz, jr_018_4867

    nop
    jr nc, jr_018_4848

    ld c, d
    ld h, h
    ld e, a
    and b
    ld e, $30
    ld b, $80
    ld c, $48
    scf
    ld b, $02
    ld [hl-], a
    ld c, b
    nop
    ld sp, $4a26
    ld h, h
    ld e, a
    and b
    ld e, $30
    ld b, $80
    jr nz, jr_018_4886

    scf
    ld b, $02
    ld b, h
    ld c, b
    nop
    ld [hl-], a
    dec de
    ld c, d
    or [hl]

jr_018_4848:
    ld e, a
    and b
    ld e, $00
    jr nc, jr_018_4854

    add b
    ld [hl-], a
    ld c, b
    ld b, c
    ld [bc], a
    ld l, b

jr_018_4854:
    nop
    nop
    inc sp
    ld c, $4a
    ld [$2060], sp
    inc bc
    nop
    ld b, d
    dec e
    ld bc, $43b6
    inc c
    ld [$0044], sp

jr_018_4867:
    inc c
    db $10
    ld b, h
    nop
    nop
    inc [hl]
    ld c, $4a
    ld a, [$6060]
    add hl, bc
    nop
    ld [hl+], a
    nop
    inc bc
    inc e
    ld b, h
    ld b, c
    ld [$0160], sp
    nop
    dec [hl]
    db $fc
    ld c, c
    ld c, h
    ld h, c
    jr nz, @+$0a

    nop

jr_018_4886:
    ld d, $09
    ld bc, $4452
    ld [bc], a
    ld bc, $0130
    ld [hl+], a
    inc bc
    ld b, c
    nop
    nop
    ld [hl], $0e
    ld c, d
    sbc [hl]
    ld h, c
    and b
    rrca
    nop
    ld [hl-], a
    dec e
    ld bc, $4588
    ld [bc], a
    ld [$0610], sp
    ld b, l
    add hl, bc
    ld [hl], d
    nop
    db $10
    dec bc
    jr nz, jr_018_48ad

jr_018_48ad:
    ld [bc], a
    ld c, $10
    ld [bc], a
    ld b, l
    rrca
    ld [hl], c
    nop
    db $10
    add hl, de
    jr nz, jr_018_48b9

jr_018_48b9:
    nop
    scf
    ld c, $4a
    ld a, [$a060]
    add hl, de
    nop
    ld [hl+], a
    nop
    inc bc
    add d
    ld b, [hl]
    dec l
    rlca
    ld h, b
    nop
    ld [bc], a
    ld [$0260], sp
    nop
    jr c, @-$02

    ld c, c
    ld c, h
    ld h, c
    ld h, b
    jr jr_018_48d8

jr_018_48d8:
    ld d, $09
    ld bc, $46b8
    ld [bc], a
    ld bc, $0230
    inc e
    inc bc
    ld b, b
    nop
    nop
    add hl, sp
    ld c, $4a
    ld a, [$a060]
    add hl, de
    nop
    ld [hl+], a
    nop
    inc bc
    xor $46
    ld b, c
    ld [$0260], sp
    nop
    inc bc
    ld sp, $3f02
    daa
    daa
    inc bc
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    inc b
    ccf
    daa
    daa
    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld sp, $3f04
    daa
    daa
    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    ld de, $6555
    jp Jump_018_41d5


    ld de, $6555
    call Call_018_41d5
    ld a, $0a
    ld [$d85c], a
    ld a, $49
    ld [$d85d], a
    ret


    ld a, $fe
    ld [$d820], a
    ld a, $90
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    ld hl, $4a30
    jr jr_018_494f

    ld a, $50
    ld [$d821], a
    ld hl, $4a36

jr_018_494f:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    jp Jump_018_4a26


    ld a, $f8
    ld [$d858], a
    ld a, $48
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jp Jump_018_4a26


    call Call_018_6824
    ld a, $f8
    ld [$d858], a
    ld a, $48
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jp Jump_018_4a26


    ld a, $f8
    ld [$d858], a
    ld a, $48
    ld [$d859], a
    jp Jump_018_4a26


    ld a, $10
    ld [$d858], a
    ld a, $49
    ld [$d859], a
    call Call_018_681c
    jp Jump_018_4a26


    ld a, $f8
    ld [$d858], a
    ld a, $48
    ld [$d859], a
    call Call_018_6824
    jp Jump_018_4a26


    ld a, $10
    ld [$d858], a
    ld a, $49
    ld [$d859], a
    call Call_018_682c
    jp Jump_018_4a26


    ld a, $0a
    ld [$d85a], a
    ld a, $49
    ld [$d85b], a
    jp Jump_018_4a26


    ld a, $fe
    ld [$d85a], a
    ld a, $48
    ld [$d85b], a
    ld a, $04
    ld [$d858], a
    ld a, $49
    ld [$d859], a
    jp Jump_018_4a26


    ld a, $16
    ld [$d85a], a
    ld a, $49
    ld [$d85b], a
    ld a, $04
    ld [$d858], a
    ld a, $49
    ld [$d859], a
    jp Jump_018_4a26


    ld a, $fe
    ld [$d820], a
    ld a, $98
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    jp Jump_018_4a26


    ld a, $50
    ld [$d821], a
    jp Jump_018_4a26


    ld de, $4a48
    jr jr_018_4a1e

    ld de, $4a50

jr_018_4a1e:
    call Call_018_415b
    jr jr_018_4a26

    call Call_018_6814

Jump_018_4a26:
jr_018_4a26:
    ld hl, $651b
    call Call_018_41eb
    call Call_018_6d3a
    ret


    add hl, bc
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0106
    ld bc, $1100
    ld l, e
    ld h, l
    call Call_018_41fc
    call Call_018_416e
    call Call_018_6d5d
    ret


    db $10
    ld bc, $0140
    db $10
    jr nc, @+$01

    rst $38
    nop
    nop
    inc hl
    nop
    ld d, b
    ld [hl], b
    rst $38
    rst $38
    ld [hl-], a
    ld [$0c0b], sp
    dec c
    ld c, $20
    ld hl, $2718
    dec hl
    ld [hl-], a
    ld [hl], $37
    ld [hl], $37
    ld l, $27
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    dec hl
    daa
    dec hl
    ld e, b
    dec hl
    daa
    daa
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    ld c, e
    ld c, l
    rla
    jr @+$4d

    ld c, l
    ld [hl], $37
    rla
    jr jr_018_4ac3

    scf
    ld [hl], $37
    ld d, h
    inc hl
    ld [hl], $37
    inc [hl]
    inc sp
    ld b, d
    ld b, e
    ccf
    ld b, l
    ld l, $27
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    dec hl
    daa
    dec hl
    ld e, b
    dec hl
    daa
    daa
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    ld b, e
    ccf
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ccf
    ccf
    ld sp, $433f
    ld b, d
    ld b, d
    ld b, d

jr_018_4ac3:
    ld b, d
    ld b, e
    ccf
    ld b, e
    ld b, d
    ld e, b
    dec hl
    daa
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    dec hl
    daa
    dec hl
    ld e, b
    dec hl
    daa
    daa
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $2e
    ld l, $27
    daa
    inc [hl]
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    dec hl
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    cpl
    cpl
    cpl
    daa
    cpl
    cpl
    cpl
    daa
    daa
    ld l, $2e
    ld l, $2e
    daa
    dec hl
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $2e
    ld l, $27
    add hl, bc
    ld a, [bc]
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    cpl
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $20
    ld d, e
    ld l, $27
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $2e
    daa
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $2e
    ld l, $27
    add hl, bc
    ld a, [bc]
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $2e
    daa
    ld l, $2e
    daa
    daa
    ld l, $20
    ld d, e
    ld [hl+], a
    inc hl
    ld l, $27
    ld l, $2e
    ld l, $27
    ld l, $20
    ld hl, $1a19
    jr jr_018_4ba5

    ld l, $2e
    daa
    ld l, $2e
    ld l, $27
    ld l, $2e
    rla
    jr jr_018_4bb1

    daa
    jr nz, jr_018_4bd9

    jr nz, jr_018_4ba9

    add hl, de
    ld a, [de]
    jr jr_018_4bbd

    rla
    jr @+$0f

    ld c, $31
    jr nz, jr_018_4bb4

    ld a, [de]
    jr @+$33

    dec bc
    ld c, $22
    inc hl
    inc e
    ld sp, $2c2c
    jr nz, jr_018_4bc1

    add hl, de
    ld a, [de]
    jr jr_018_4bc6

    inc hl

jr_018_4ba5:
    ld [hl], $37
    inc [hl]
    inc l

jr_018_4ba9:
    inc l
    ld sp, $2c31
    inc l
    ld sp, $1731

jr_018_4bb1:
    jr jr_018_4bc2

    db $10

jr_018_4bb4:
    ld l, $27
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    dec bc
    ld c, $31

jr_018_4bbd:
    ld [hl-], a
    ld b, e
    ccf
    ld c, a

jr_018_4bc1:
    ld d, b

jr_018_4bc2:
    ld [hl-], a
    ld [hl+], a
    inc hl
    dec c

jr_018_4bc6:
    ld c, $32
    ld c, a
    ld d, b
    ld d, l
    ld d, a
    dec de
    ld [hl-], a
    ld [$2208], sp
    inc hl
    dec bc
    inc c
    ld sp, $5755
    ccf
    ccf

jr_018_4bd9:
    ld [hl-], a
    ld [$3308], sp
    inc sp
    ld [$3308], sp
    inc sp
    ld [hl], $38
    add hl, sp
    scf
    ld l, $27
    inc e
    inc hl
    ld a, [bc]
    ld [$2120], sp
    add hl, de
    jr @+$22

    ld d, e
    ld l, $27
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld c, a
    ld d, b
    ld d, h
    inc hl
    ld l, $27
    ld d, h
    inc hl
    inc e
    ccf
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld l, $27
    ccf
    rrca
    dec de
    daa
    ld l, $2e
    ld l, $2e
    ld l, $27
    daa
    dec bc
    ld d, l
    daa
    ld l, $2e
    ld l, $2e
    ld l, $27
    daa
    rrca
    inc e
    daa
    ld l, $2e
    ld l, $2e
    ld l, $17
    jr jr_018_4c33

    ld sp, $3602
    jr c, @+$39

    dec bc
    ld c, $0f
    db $10
    rrca
    inc [hl]

jr_018_4c33:
    ld bc, $3653
    scf
    ld d, e
    ld [hl], $38
    scf
    ld [hl], $32
    ld [$0131], sp
    ld [hl], $37
    rla
    jr @+$38

    jr c, jr_018_4c7e

    inc [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld e, h
    ld c, [hl]
    ld c, [hl]
    ld l, $2e
    ld c, [hl]
    ld c, [hl]
    ld l, $08
    ld [$0808], sp
    ld [$272e], sp
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    rrca
    db $10
    jr nz, jr_018_4c8b

    ld a, [de]
    jr jr_018_4ca3

    scf
    ld bc, $3334
    ld bc, $3f45
    ld b, d
    ld b, d
    ld b, d
    ccf
    ccf
    ld b, l
    ld l, $2e
    ld l, $27

jr_018_4c7e:
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $45
    ccf
    ccf
    ld b, l
    ld b, l

jr_018_4c8b:
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    dec bc
    ld c, $54
    inc hl
    ccf
    ld b, l
    ld b, l
    ccf
    ld bc, $3431

jr_018_4ca3:
    ld bc, $272e
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    ld [hl], $37
    ld b, l
    ld b, l
    daa
    ld a, [hl+]
    ld a, [hl+]
    daa
    daa
    ld [hl-], a
    ld [hl-], a
    ld l, $2e
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld e, b
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    ld l, $2e
    ld e, d
    ld e, h
    ld l, $2e
    ld e, d
    ld e, h
    daa
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ccf
    ld b, l
    ld l, $2e
    daa
    ld e, b
    ld e, b
    daa
    daa
    inc sp
    inc sp
    ld l, $2e
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    cpl
    cpl
    cpl
    daa
    inc [hl]
    dec bc
    ld c, $34
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld l, $2e
    ld l, $27
    cpl
    cpl
    rla
    jr jr_018_4d69

    jr nz, jr_018_4d5b

    add hl, de
    jr jr_018_4d95

    ld e, b
    ld e, b
    daa
    daa
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld l, $2e
    inc [hl]
    inc [hl]
    inc sp
    rrca
    db $10
    ld [hl-], a
    ld e, b
    ld e, b

jr_018_4d5b:
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    daa
    daa
    ld l, $2e
    ld l, $17
    jr @+$36

    rrca
    db $10

jr_018_4d69:
    inc sp
    dec c
    ld c, $0f
    db $10
    inc l
    inc l
    inc l
    daa
    daa
    inc l
    inc l
    inc l
    jr nz, jr_018_4d99

    add hl, de
    jr jr_018_4dac

    jr nz, jr_018_4dd0

    inc l
    inc l
    inc [hl]
    dec bc
    ld c, $34
    dec bc
    ld c, $32
    ld [hl-], a
    ld [hl-], a
    ld c, a
    ld d, b
    ld [hl-], a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    daa
    jr nz, jr_018_4db5

    ld a, [de]

jr_018_4d95:
    jr jr_018_4db7

    ld d, e
    inc sp

jr_018_4d99:
    dec bc
    ld c, $34
    rrca
    db $10
    dec bc
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$2322], sp
    rrca
    db $10

jr_018_4dac:
    ld [hl-], a
    ld [hl+], a
    inc hl
    ld [$3208], sp
    ld c, a
    ld d, b
    ld [hl-], a

jr_018_4db5:
    rrca
    db $10

jr_018_4db7:
    inc sp
    ld sp, $0f32
    db $10
    ld sp, $0808
    ld [$0808], sp
    ld [$2208], sp
    inc hl
    jr nz, jr_018_4e1b

    ld [hl+], a
    inc hl
    ld sp, $100f
    ld sp, $080a

jr_018_4dd0:
    inc [hl]
    ld bc, $2120
    add hl, de
    jr jr_018_4dee

    add hl, de
    ld a, [de]
    jr jr_018_4e0c

    ld bc, $2354
    ld c, e
    ld c, h
    ld c, l
    rla
    jr jr_018_4e15

    ld [hl-], a
    ld bc, $4545
    ccf
    ld b, d
    ld b, d
    ld b, d
    ccf
    inc sp

jr_018_4dee:
    inc sp
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    inc [hl]
    inc [hl]
    cpl
    cpl
    cpl
    daa
    cpl
    cpl
    cpl
    daa
    ld sp, $0c0b
    dec c
    ld c, $27
    ld l, $2e
    ld l, $27
    ld [hl-], a

jr_018_4e0c:
    dec bc
    ld c, $0f
    db $10
    dec bc
    ld c, $2e
    ld l, $27

jr_018_4e15:
    inc sp
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, c

jr_018_4e1b:
    ld d, d
    ld c, e
    ld c, l
    ld [bc], a
    inc [hl]
    ld [hl-], a
    ld [$0b32], sp
    ld c, $32
    inc sp
    ld c, a
    ld d, b
    inc sp
    daa
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $32
    inc sp
    ld [hl], $37
    inc sp
    rla
    jr @+$35

    inc b
    dec b
    inc sp
    ld c, a
    ld d, b
    inc sp
    ccf
    ld b, l
    ld b, l
    ld b, l
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $33
    ld b, l
    ld b, l
    ld b, l
    ccf
    ld b, l
    ld b, l
    ld b, l
    ld b, $07
    ccf
    ld b, l
    ld b, l
    ld b, l
    daa
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    ld sp, $3736
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld sp, $2a2a
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $3f
    inc bc
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld l, $27
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $27
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    inc sp
    ld b, d
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld [bc], a
    ld de, $1112
    ld [de], a
    ld l, $2e
    daa
    inc bc
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    ld l, $0b
    inc c
    dec c
    ld c, $0b
    ld c, $27
    ld l, $11
    ld [de], a
    ld de, $1112
    ld [de], a
    daa
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $27
    ld e, d
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    ld bc, $1413
    inc de
    inc d
    ld l, $2e
    daa
    inc bc
    daa
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $0b
    ld c, $20
    ld d, e
    dec bc
    inc c
    dec c
    ld c, $27
    ld l, $13
    inc d
    inc de
    inc d
    inc de
    inc d
    rla
    jr jr_018_4f65

    ld l, $27
    ld l, $2e
    ld l, $27
    ld e, b
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld l, $27
    ld bc, $1615
    dec d
    ld d, $11
    ld [de], a
    ld de, $3412
    ld [bc], a
    jr nz, jr_018_4fa5

    inc l
    inc l
    jr nz, jr_018_4f77

    add hl, de
    jr jr_018_4f7b

    ld hl, $1a19
    add hl, de
    jr jr_018_4f8b

    inc l
    dec d
    ld d, $15
    ld d, $15

jr_018_4f65:
    ld d, $17
    jr jr_018_4f97

    ld l, $27
    ld l, $2e
    ld l, $27
    cpl
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $27

jr_018_4f77:
    cpl
    ld de, $1112

jr_018_4f7b:
    ld [de], a
    inc de
    inc d
    inc de
    inc d
    inc sp
    ld bc, $2354
    ld [$5408], sp
    inc hl
    ld c, a
    ld d, b
    ld d, l

jr_018_4f8b:
    ld c, b
    rrca
    db $10
    ld c, a
    ld d, b
    ld [$1108], sp
    ld [de], a
    ld de, $1112

jr_018_4f97:
    ld [de], a
    db $10
    ld c, b
    rla
    add hl, de
    ld a, [de]
    jr jr_018_4fd5

    scf
    ld c, e
    ld c, l
    ld [hl], $38
    add hl, sp

jr_018_4fa5:
    scf
    ld c, e
    ld c, l
    rla
    jr jr_018_4fba

    db $10
    rrca
    db $10
    dec d
    ld d, $15
    ld d, $0a
    ld [$5a31], sp
    ld e, e
    ld e, h
    ld e, d
    ld e, h

jr_018_4fba:
    ld e, d
    ld e, e
    ld e, h
    ld sp, $2e33
    ld l, $27
    ld l, $2e
    daa
    ld l, $2e
    ld [hl-], a
    ccf
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    daa
    ld a, [hl+]
    ld a, [hl+]
    inc sp
    daa
    ld e, b
    ld e, b

jr_018_4fd5:
    daa
    ld l, $2e
    daa
    ld e, b
    ld e, b
    inc [hl]
    daa
    ld e, b
    ld e, b
    daa
    ld l, $2e
    daa
    ld e, b
    ld e, b
    inc bc
    ld sp, $5858
    daa
    ld l, $2e
    daa
    ld e, b
    ld e, b
    inc bc
    inc sp
    cpl
    cpl
    daa
    ld l, $2e
    daa
    cpl
    cpl
    inc bc
    dec bc
    ld c, $11
    ld [de], a
    dec bc
    ld c, $11
    ld [de], a
    dec bc
    ld c, $0a
    ld [$2120], sp
    jr @+$38

    jr c, @+$39

    jr nz, jr_018_5061

    ld sp, $5431
    inc hl
    inc [hl]
    ccf
    ld b, l
    ld b, l
    ld d, h
    inc hl
    ld [hl-], a
    ld [hl-], a
    ld sp, $4545
    daa
    ld l, $2e
    ccf
    ld b, l
    inc sp
    inc sp
    inc sp
    ld l, $2e
    daa
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $20
    ld hl, $2e3f
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $54
    inc hl
    daa
    ld l, $2e
    daa
    ld e, b
    ld e, b
    daa
    ld l, $31
    ld sp, $2e27
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $32
    ld [hl-], a
    inc [hl]
    inc [hl]
    ld l, $27
    cpl
    cpl
    daa
    ld l, $33
    inc sp
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $31

jr_018_5061:
    ld sp, $3232
    ld l, $27
    ld l, $2e
    daa
    ld l, $33
    inc sp
    inc sp
    inc sp
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $45
    ld a, [bc]
    jr nz, @+$55

    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld a, [bc]
    ld d, h
    inc hl
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld e, d
    ld sp, $3131
    ld sp, $272e
    ld e, b
    ld e, b
    daa
    ld l, $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld l, $27
    cpl
    cpl
    daa
    ld l, $32
    ld [hl-], a
    inc sp
    inc sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $33
    inc sp
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $31
    ld sp, $3232
    ld l, $27
    ld l, $2e
    daa
    ld l, $32
    ld [hl-], a
    inc sp
    inc sp
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $33
    inc sp
    jr nz, @+$55

    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $20
    ld hl, $2354
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $54
    inc hl
    ld sp, $2e31
    daa
    ld e, b
    ld e, b
    daa
    ld l, $31
    ld sp, $3232
    ld l, $27
    cpl
    cpl
    daa
    ld l, $32
    ld [hl-], a
    inc sp
    inc sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $33
    inc sp
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $31
    ld sp, $3232
    ld l, $27
    ld l, $2e
    daa
    ld l, $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $33
    inc sp
    ld [hl-], a
    inc sp
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $20
    ld hl, $4532
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $54
    inc hl
    inc sp
    ld l, $2e
    daa
    ld e, b
    ld e, b
    daa
    ld l, $31
    ld sp, $0945
    ld l, $27
    cpl
    cpl
    daa
    ld l, $32
    ld [hl-], a
    inc [hl]
    inc [hl]
    ld e, h
    daa
    ld l, $2e
    daa
    ld l, $33
    inc sp
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $34
    ld sp, $3232
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $1b
    ld [hl-], a
    inc sp
    inc sp
    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $1c
    inc sp
    jr nz, jr_018_51c1

    ld l, $27
    ld e, b
    ld e, b
    daa
    ld l, $20
    ld hl, $2322
    ld l, $27
    cpl
    cpl
    daa
    ld l, $54
    inc hl
    inc e
    ld sp, $272e
    rla
    jr jr_018_51b3

    inc l
    ld sp, $3131
    ld [hl-], a
    ld l, $27
    dec bc
    ld c, $00
    nop
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld l, $27
    ld c, a
    ld d, b
    ld [$3308], sp
    inc sp
    ld [hl-], a
    ld [$3131], sp
    ld l, $2e
    ld e, d
    ld e, h
    ld e, d
    ld e, h
    ld e, d
    ld e, h
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e

jr_018_51b3:
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa

jr_018_51c1:
    ld l, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $4b
    ld c, l
    jr nz, jr_018_51f2

    jr @+$35

    inc [hl]
    ld l, $2e
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27

jr_018_51f2:
    daa
    ld l, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $45
    ld b, l
    ld [hl+], a
    inc hl
    inc hl
    dec bc
    ld c, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $1c
    inc b
    dec b
    ld c, a
    ld d, b
    ld l, $2e
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    ld l, $2e
    ld l, $27
    daa
    ld l, $20
    ld hl, $1819
    ld de, $2012
    ld hl, $1819
    ld l, $2e
    ld l, $34
    ld b, $07
    ld de, $2e12
    ld l, $27
    dec hl
    cpl
    cpl
    cpl
    cpl
    dec hl
    daa
    jr nz, jr_018_5297

    add hl, de
    ld a, [de]
    jr jr_018_52a6

    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld [hl+], a
    inc hl
    ld de, $1312
    inc d
    ld [hl+], a
    inc hl
    ld de, $2e12
    ld l, $2e

jr_018_5297:
    ccf
    ccf
    inc bc
    inc de
    inc d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, $09
    add hl, bc
    add hl, bc
    daa

jr_018_52a6:
    ld [hl+], a
    inc hl
    ld b, l
    ld de, $0912
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
    ld de, $1112
    ld [de], a
    ld de, $1312
    inc d
    dec d
    ld d, $11
    ld [de], a
    inc de
    inc d
    ld l, $2e
    ld l, $27
    daa
    inc bc
    dec d
    ld d, $20
    ld hl, $1a19
    jr jr_018_52f4

    ld hl, $1a19
    jr jr_018_52f5

    ld d, a
    ld l, $13
    inc d
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    inc de
    inc d
    inc de
    inc d
    dec bc
    ld c, $15
    ld d, $11
    ld [de], a

jr_018_52f4:
    dec bc

jr_018_52f5:
    ld c, $15
    ld d, $2e
    ld l, $2e
    daa
    daa
    inc bc
    ld de, $2212
    inc hl
    dec bc
    jr nz, @+$23

    add hl, de
    ld a, [de]
    jr @+$10

    ld sp, $1921
    jr @+$17

    ld d, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec d
    ld d, $15
    ld d, $0f
    db $10
    ld de, $0f12
    jr nz, jr_018_5348

    jr jr_018_533a

    ld [de], a
    rla
    jr @+$19

    jr @+$19

    jr jr_018_533b

    ld [$5a33], sp
    ld e, e
    ld e, h
    ld e, d
    ld e, h
    ld e, d
    ld e, e

jr_018_533a:
    ld e, h

jr_018_533b:
    inc sp
    ld sp, $2e2e
    daa
    ld l, $2e
    daa
    ld l, $2e
    ld sp, $2e32

jr_018_5348:
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld [hl-], a
    inc [hl]
    ld l, $2e
    daa
    ld e, b
    ld e, b
    daa
    ld l, $2e
    inc [hl]
    ccf
    ld l, $2e
    daa
    ld e, b
    ld e, b
    daa
    ld l, $2e
    inc bc
    daa
    ld l, $2e
    daa
    cpl
    cpl
    daa
    ld l, $2e
    inc bc
    daa
    ld l, $2e
    daa
    ld l, $2e
    daa
    ld l, $2e
    inc bc
    dec bc
    ld c, $11
    ld [de], a
    dec bc
    ld c, $11
    ld [de], a
    dec bc
    ld c, $32
    ld [$3131], sp
    ld l, $2e
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    ld sp, $3232
    ld l, $2e
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    ld [hl-], a
    inc sp
    inc sp
    ld l, $2e
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc [hl]
    jr nz, jr_018_546f

    ld l, $2e
    daa
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    inc h
    dec h
    ld h, $27
    dec hl
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl
    daa
    inc h
    dec h
    ld h, $27
    daa
    ld a, [bc]
    ld d, h
    inc hl
    ld l, $2e
    daa
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_018_546f:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    daa
    inc h
    dec h
    ld h, $27
    daa
    ld a, [bc]
    ld sp, $0e0b
    ld sp, $0b31
    ld c, $31
    ld c, [hl]
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    inc [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    inc [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    inc [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    inc [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    jr nz, jr_018_54c7

    add hl, de
    ld a, [de]
    add hl, de
    jr jr_018_54c2

    add hl, de
    jr jr_018_54b7

    add hl, bc
    ld sp, $0f32
    jr nz, jr_018_54d5

    add hl, de
    jr jr_018_54c7

jr_018_54b7:
    ld [hl-], a
    inc l
    inc l
    ld b, h
    inc l
    inc l
    ld b, h
    ld b, h
    inc l
    inc l
    ld b, h

jr_018_54c2:
    ld b, h
    inc l
    inc l
    inc l
    inc l

jr_018_54c7:
    inc l
    inc l
    ld b, h
    ld b, h
    inc l
    inc l
    ld b, h
    inc l
    ld b, h
    inc l
    inc l
    ld b, h
    ld b, h
    inc l

jr_018_54d5:
    inc l
    ld [hl+], a
    inc hl
    rla
    add hl, de
    ld a, [de]
    jr @+$34

    ld d, a
    ld [hl-], a
    add hl, bc
    add hl, bc
    ld [hl-], a
    inc sp
    ld c, a
    ld [hl+], a
    inc hl
    inc sp
    ld c, b
    ld d, b
    inc sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld d, l
    ld c, e
    ld c, l
    ld c, e
    ld c, h
    ld c, l
    ld [hl], $38
    scf
    add hl, bc
    add hl, bc
    inc [hl]
    ld a, [bc]
    ld [$1731], sp
    ld a, [de]
    add hl, de
    jr jr_018_5533

    jr jr_018_5545

    daa
    ld sp, $3f32
    ccf
    ld b, e
    inc a
    ld a, $43
    daa
    daa
    ld [hl-], a
    ld d, e
    daa
    daa
    dec hl
    inc h
    ld h, $2b
    daa
    daa

jr_018_5533:
    jr nz, @+$25

    daa
    daa
    dec hl
    inc h
    ld h, $2b
    daa
    daa
    ld d, h
    ld sp, $0b02
    ld c, $24
    ld h, $2b

jr_018_5545:
    rla
    add hl, de
    jr jr_018_557c

    ld bc, $0e0b
    inc l
    inc l
    inc l
    ld b, h
    ld b, h
    dec de
    ld sp, $4f01
    ld d, b
    ld [$0808], sp
    ld [$1c08], sp
    inc sp
    ld bc, $3836
    scf
    ld [hl], $37
    ld [hl], $38
    scf
    ld [hl-], a
    ld [HeaderTitle], sp
    inc [hl]
    ld [hl], $37
    inc [hl]
    inc [hl]
    ld [hl], $37
    inc [hl]
    jr z, jr_018_55a2

    ld l, $29
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_55aa

jr_018_557c:
    ld l, $29
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_55b2

    ld l, $29
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_55ba

    ld l, $29
    dec hl
    ld e, b
    jr nz, jr_018_55b3

    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    jr @+$1f

    ld bc, $570b
    ld bc, $4540
    ld b, l
    ld b, c
    ld b, e
    ld b, d

jr_018_55a2:
    ld b, d
    ld b, e
    jr z, jr_018_55d4

    ld l, $29
    dec hl
    ld e, b

jr_018_55aa:
    ld e, b
    dec hl
    jr z, jr_018_55dc

    ld l, $29
    dec hl
    ld e, b

jr_018_55b2:
    ld e, b

jr_018_55b3:
    dec hl
    jr z, jr_018_55e4

    ld l, $29
    dec hl
    ld e, b

jr_018_55ba:
    ld e, b
    dec hl
    jr z, jr_018_55ec

    ld l, $29
    dec hl
    ld e, b
    ld [hl+], a
    inc hl
    db $10
    ld sp, $0b45
    ld c, $1e
    ld bc, $570f
    ld bc, $2e28
    ld l, $29
    dec hl
    ld e, b

jr_018_55d4:
    ld e, b
    dec hl
    jr z, jr_018_5606

    inc [hl]
    inc [hl]
    dec sp
    dec sp

jr_018_55dc:
    dec sp
    dec sp
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    dec sp
    dec sp

jr_018_55e4:
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    inc [hl]
    inc [hl]

jr_018_55ec:
    dec sp
    dec sp
    dec sp
    dec sp
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    ld d, l
    ld c, a
    ld d, b
    ld [hl-], a
    ld l, $0f
    db $10
    dec e
    ld bc, $574f
    dec hl
    jr z, jr_018_5630

    ld l, $29
    dec hl
    ld e, b

jr_018_5606:
    ld e, b
    dec hl
    jr z, jr_018_5638

    inc sp
    inc sp
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld b, l
    ld b, c
    ld b, e
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld [hl-], a
    ld [hl-], a
    ld b, d
    ld b, e
    ld b, b
    ld b, l
    ld [hl-], a
    ld [hl-], a
    ld b, e
    ld b, d
    inc e
    rrca
    db $10
    inc sp
    ld l, $4f
    ld d, b
    ld e, $01
    dec de

jr_018_5630:
    inc [hl]
    dec hl
    jr z, @+$30

    ld l, $29
    dec hl
    ld e, b

jr_018_5638:
    ld e, b
    dec hl
    jr z, jr_018_566a

    ld [hl-], a
    ld [hl-], a
    dec sp
    dec sp
    dec sp
    dec sp
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld bc, $5755
    inc [hl]
    inc [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp

jr_018_566a:
    jr nz, @+$55

    rla
    jr @+$35

    inc sp
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ld b, d
    ld bc, $5755
    inc sp
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    inc hl
    db $10
    ld d, a
    ld sp, $2b31
    ld e, b
    ld e, b
    dec hl
    jr z, @+$30

    ld l, $29
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, @+$30

    ld l, $29
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, @+$30

    ld l, $29
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, @+$30

    ld l, $29
    dec hl
    ld e, b
    ld e, b
    inc e
    ld d, a
    ld [hl-], a
    ld [hl-], a
    ld [$0808], sp
    ld [$3308], sp
    rrca
    db $10
    inc sp
    ld sp, $0b31
    ld c, $17
    jr @+$0d

    ld c, $0b
    ld c, $17
    jr @+$0d

    ld c, $0b
    ld c, $17
    jr @+$0d

    ld c, $0b
    ld c, $17
    jr @+$0d

    ld c, $0b
    ld c, $17
    jr jr_018_56fc

    ld c, $0b
    ld c, $17
    jr jr_018_5702

    ld c, $0a
    ld [HeaderTitle], sp

jr_018_56fc:
    inc [hl]
    rla
    jr @+$38

    scf
    rla

jr_018_5702:
    jr jr_018_5738

    ld d, a
    ld bc, $4043
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ld b, d
    ld d, a
    ld d, a
    ld bc, $282b
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld d, a
    inc [hl]
    ld bc, $282b
    ld l, $2e
    add hl, hl
    inc [hl]
    ld [bc], a
    inc [hl]
    inc [hl]
    ld bc, $282b
    ld l, $2e
    add hl, hl
    ld d, a
    ld bc, $5734
    ld e, b
    dec hl
    jr z, jr_018_576b

    ld a, [hl-]
    add hl, hl
    ld d, a
    ld bc, $5757
    ld e, b

jr_018_5738:
    dec hl
    jr z, jr_018_5769

    ld l, $29
    ld d, a
    ld bc, $3457
    rla
    jr jr_018_577a

    scf
    rla
    jr jr_018_577c

    ld bc, $3234
    ld [$0f31], sp
    db $10
    ld sp, $5320
    ld sp, $100f
    ld sp, $3a28
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_579a

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_57a2

    ld a, [hl-]

jr_018_5769:
    add hl, hl
    dec hl

jr_018_576b:
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_57aa

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    inc de
    inc d
    ld d, a
    inc de
    inc d
    ld d, a

jr_018_577a:
    ld c, e
    ld c, l

jr_018_577c:
    inc b
    dec b
    inc sp
    ld [hl], $37
    inc sp
    ld d, h
    inc hl
    inc sp
    ld [hl], $37
    inc sp
    jr z, jr_018_57c4

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_57cc

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_57d4

jr_018_579a:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, @+$3c

jr_018_57a2:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    dec d
    ld d, $57
    dec d

jr_018_57aa:
    ld d, $57
    ld [hl], $37
    ld b, $07
    ld b, d
    ld b, e
    ld b, b
    ld a, l
    ld a, l
    ld b, c
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    jr z, jr_018_57f6

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_57fe

jr_018_57c4:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_5806

jr_018_57cc:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_580e

jr_018_57d4:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld de, $3412
    ld de, $3412
    ld b, e
    ld b, d
    ld b, d
    inc bc
    ld e, b
    dec hl
    jr z, jr_018_5820

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_5828

    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_5830

jr_018_57f6:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_5838

jr_018_57fe:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    dec hl
    jr z, jr_018_5840

jr_018_5806:
    ld a, [hl-]
    add hl, hl
    dec hl
    ld e, b
    ld b, d
    ld b, e
    ld b, b
    ld a, l

jr_018_580e:
    ld a, l
    ld b, c
    dec hl
    ld e, b
    ld e, b
    inc bc
    ld e, b
    dec hl
    jr z, @+$31

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_018_5820:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_018_5828:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_018_5830:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_018_5838:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_018_5840:
    cpl
    add hl, hl
    dec hl
    ld e, b
    ld e, b
    inc bc
    ld sp, $2002
    ld hl, $1a19
    add hl, de
    ld a, [de]
    add hl, de
    jr jr_018_589f

    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    rla
    jr jr_018_58a5

    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    rla
    jr jr_018_58ab

    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    rla
    jr jr_018_58b1

    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    rla
    jr jr_018_58b7

    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld de, $3412
    ld de, $3412
    ld de, $3412
    ld de, $3412
    ld [hl-], a
    ld bc, $2322
    db $10
    rrca
    ld d, a
    ld d, a
    db $10
    ld [hl-], a
    inc l
    inc l
    inc l
    inc l
    ld b, h
    ld b, h
    inc l
    inc l
    inc l
    inc l
    ld b, h
    ld b, h
    inc l
    inc l
    inc l
    inc l
    ld b, h
    ld b, h
    inc l
    inc l
    inc l
    inc l
    ld b, h
    ld b, h
    inc l
    inc l
    inc l
    inc l
    inc de

jr_018_589f:
    inc d
    ld d, a
    inc de
    inc d
    ld d, a
    inc de

jr_018_58a5:
    inc d
    ld d, a
    inc de
    inc d
    ld d, a
    inc sp

jr_018_58ab:
    ld bc, $0f1c
    db $10
    jr nz, jr_018_58d2

jr_018_58b1:
    jr jr_018_58c3

    ld [hl-], a
    ld [$0808], sp

jr_018_58b7:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_018_58c3:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1615], sp

jr_018_58d2:
    ld d, a
    dec d
    ld d, $57
    dec d
    ld d, $57
    dec d
    ld d, $57
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $31
    ld sp, $3232
    ld l, $27
    ld l, $2e
    daa
    ld l, $32
    ld [hl-], a
    inc sp
    inc sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc [hl]
    inc [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    ld e, b
    ld e, b
    inc [hl]
    inc [hl]
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc [hl]
    inc [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc [hl]
    inc [hl]
    inc h
    ld h, $24
    ld h, $24
    ld h, $34
    inc [hl]
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $31
    ld sp, $3232
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc [hl]
    inc [hl]
    ld l, $08
    ld [$2e2e], sp
    ld l, $2e
    ld l, $2e
    ld l, $34
    inc [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    rla
    jr jr_018_599e

    ld sp, $2e2e
    ld l, $2e
    ld l, $2e
    ld c, a
    ld d, b
    inc sp
    inc sp
    inc h
    dec h
    ld h, $24
    dec h
    ld h, $34
    inc [hl]
    ld a, [bc]
    ld [$3131], sp
    ld l, $27
    ld l, $2e
    daa
    ld l, $31
    ld sp, $3232
    ld l, $27
    ld l, $2e
    daa
    ld l, $32
    ld [hl-], a
    inc sp
    inc sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]

jr_018_599e:
    inc sp
    inc sp
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    inc [hl]
    inc [hl]
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc [hl]
    inc [hl]
    ld [$5808], sp
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc [hl]
    inc [hl]
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    ld h, $24
    ld h, $24
    ld h, $34
    inc [hl]
    ld [hl-], a
    ld [$1211], sp
    inc h
    dec h
    inc [hl]
    ld [hl], $37
    rla
    jr jr_018_5a14

    scf
    inc [hl]
    dec h
    ld h, $29
    dec hl
    dec hl
    jr z, jr_018_5a0b

    dec h
    dec h
    ld h, $29
    dec hl
    dec hl
    jr z, jr_018_5a13

    dec h
    dec h
    ld h, $29
    dec hl
    dec hl
    jr z, jr_018_5a1b

    dec h
    dec h
    ld h, $29
    dec hl
    ld d, a
    inc de
    inc d
    ld d, a
    inc de
    inc d
    jr nz, jr_018_5a25

    add hl, de
    jr jr_018_5a1a

    inc d
    ld a, [hl-]
    ld a, [hl-]
    ld a, l

jr_018_5a0b:
    ld a, l
    ld b, c
    ld b, e
    ld b, e
    ld b, b
    ld a, l
    ld a, l
    ld a, [hl-]

jr_018_5a13:
    ld a, [hl-]

jr_018_5a14:
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5a53

    ld a, [hl-]

jr_018_5a1a:
    ld a, [hl-]

jr_018_5a1b:
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5a5b

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl

jr_018_5a25:
    dec hl
    dec hl
    jr z, @+$3c

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    ld sp, $1615
    ld sp, $1615
    ld [hl+], a
    inc hl
    rrca
    db $10
    dec d
    ld d, $3a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5a7d

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5a85

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5a8d

jr_018_5a53:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5a95

jr_018_5a5b:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    inc sp
    ld de, $3312
    ld de, $1c12
    inc [hl]
    inc b
    dec b
    ld de, $3a12
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5aaf

    ld a, [hl-]
    inc [hl]
    ld de, $3412
    ld [hl], $37
    inc [hl]

jr_018_5a7d:
    ld de, $3412
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5abf

jr_018_5a85:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    inc [hl]
    inc [hl]
    dec hl
    jr z, jr_018_5ac7

jr_018_5a8d:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    ld b, e
    ld b, b
    ld a, l

jr_018_5a95:
    ld a, l
    ld a, l
    ld a, l
    ld b, c
    ld b, e
    ld b, $07
    rrca
    db $10
    inc h
    dec h
    dec h
    ld h, $29
    dec hl
    dec hl
    jr z, jr_018_5ab8

    ld [de], a
    ld d, a
    inc de
    inc d
    ld d, a
    dec bc
    ld c, $57

jr_018_5aaf:
    inc de
    inc d
    ld d, a
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5adb

    dec h

jr_018_5ab8:
    dec h
    ld h, $33
    ld d, a
    dec hl
    jr z, @+$26

jr_018_5abf:
    dec h
    dec h
    ld h, $29
    dec hl
    dec hl
    jr z, jr_018_5aeb

jr_018_5ac7:
    dec h
    dec h
    ld h, $29
    dec hl
    ld b, e
    inc bc
    ld de, $3a12
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    rla
    jr jr_018_5aec

    inc d
    ld d, a

jr_018_5adb:
    dec d
    ld d, $57
    rrca
    db $10
    ld d, a
    dec d
    ld d, $57
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5b23

    ld a, [hl-]
    inc [hl]

jr_018_5aeb:
    inc [hl]

jr_018_5aec:
    ld sp, $2b57
    jr z, jr_018_5b2b

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5b33

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    inc bc
    inc de
    inc d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    inc [hl]
    inc [hl]
    dec bc
    ld c, $15
    ld d, $57
    ld de, $5712
    ld de, $5712
    ld de, $5712
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5b55

    ld a, [hl-]
    inc sp
    ld d, a
    ld [hl-], a
    ld d, a
    dec hl
    jr z, jr_018_5b5d

jr_018_5b23:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    jr z, jr_018_5b65

jr_018_5b2b:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, hl
    dec hl
    dec hl
    inc bc
    dec d

jr_018_5b33:
    ld d, $36
    scf
    rla
    jr jr_018_5b90

    ld d, a
    rrca
    db $10
    ld de, $5712
    jr nz, jr_018_5b62

    jr jr_018_5b63

    ld hl, $2018
    ld hl, $0b18
    ld c, $36
    scf
    dec bc
    ld c, $31
    ld d, a
    ld [hl-], a
    ld d, a
    ld [hl], $37
    rla

jr_018_5b55:
    jr jr_018_5b8d

    scf
    rla
    jr @+$0d

    inc c
    dec c

jr_018_5b5d:
    ld c, $11
    ld [de], a
    jr nz, jr_018_5b83

jr_018_5b62:
    add hl, de

jr_018_5b63:
    jr @+$16

jr_018_5b65:
    ld [$3434], sp
    cpl
    cpl
    inc [hl]
    rla
    jr jr_018_5ba2

    inc [hl]
    ld [hl], $37
    rla
    jr jr_018_5ba8

    inc [hl]
    ld [hl], $37
    rla
    jr jr_018_5bae

    inc sp
    inc sp
    ld a, [hl+]
    ld a, [hl+]
    ld b, d
    ccf
    ld b, e
    ld b, d
    ld b, d

jr_018_5b83:
    ld b, e
    ccf
    ld b, a
    ld b, a
    ld b, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, l

jr_018_5b8d:
    ld h, [hl]
    ld d, a
    ld d, a

jr_018_5b90:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    daa
    dec hl
    ld e, b
    ld e, b
    dec hl
    daa
    dec [hl]
    dec [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, e
    ld h, h

jr_018_5ba2:
    ld d, a
    ld d, a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    daa

jr_018_5ba8:
    dec hl
    ld e, b
    ld e, b
    dec hl
    daa
    dec [hl]

jr_018_5bae:
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, b
    ld [hl], $37
    ld h, c
    ld h, d
    inc [hl]
    inc [hl]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    daa
    dec hl
    ld e, b
    ld e, b
    dec hl
    daa
    dec [hl]
    ld [hl], $37
    rla
    jr @+$11

    ld d, a
    ld d, a
    db $10
    ld [hl-], a
    ld [hl-], a
    cpl
    cpl
    cpl
    daa
    dec hl
    ld e, b
    ld [hl], $37
    rla
    jr @+$11

    ld d, a
    ld d, a
    db $10
    rrca
    ld d, a
    ld d, a
    db $10
    ld [hl-], a
    ld [hl-], a
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], $37
    rla
    jr jr_018_5bf6

    ld d, a
    ld d, a
    jr nz, jr_018_5c0c

    add hl, de
    ld a, [de]
    jr jr_018_5bfe

    ld d, a
    ld d, a
    db $10
    inc sp
    inc sp
    ld [hl], $37

jr_018_5bf6:
    rrca
    ld d, a
    ld d, a
    db $10
    rrca
    ld d, a
    ld d, a
    ld [hl+], a

jr_018_5bfe:
    inc hl
    ld d, a
    jr nz, jr_018_5c23

    add hl, de
    jr jr_018_5c5c

    db $10
    dec bc
    ld [$6665], sp
    ld h, b
    dec [hl]

jr_018_5c0c:
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, b
    ld l, a
    ld [hl], b
    ld h, e
    ld h, h
    ld h, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, b
    ld l, l
    ld l, [hl]
    ld l, c
    ld l, d
    ld h, b
    dec [hl]
    dec [hl]

jr_018_5c23:
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, b
    ld [hl], e
    ld [hl], h
    ld h, e
    ld h, h
    ld h, b
    ld a, d
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, d
    ld h, b
    ld l, l
    ld l, [hl]
    ld h, a
    ld l, b
    ld h, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, b
    ld [hl], c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld h, b
    ld h, b
    ld l, a
    ld a, c
    ld h, [hl]
    ld h, b
    ld h, b
    ld l, a
    ld [hl], b
    ld h, e
    ld h, h
    ld h, b
    ld h, b
    ld l, l
    ld a, b
    ld h, h
    ld h, b
    ld h, b
    ld l, l
    ld l, [hl]
    ld h, c
    ld h, d
    rla
    jr jr_018_5ccf

    halt
    ld [hl], a

jr_018_5c5c:
    rla
    jr jr_018_5cca

    ld l, h
    dec bc
    ld [$5a10], sp
    ld e, e
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    rrca
    ld c, $30
    jr nc, jr_018_5c98

    ld l, $2e
    ld l, $27
    jr nc, jr_018_5ca7

    dec bc
    db $10
    ld e, b
    ld e, b
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld e, b
    ld e, b
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b

jr_018_5c98:
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    cpl
    cpl
    cpl
    daa
    ld e, b
    ld e, b
    rrca
    ld c, $2f
    cpl

jr_018_5ca7:
    daa
    ld l, $2e
    ld l, $27
    cpl
    cpl
    dec bc
    db $10
    ld a, e
    ld a, h
    ld e, c
    ld a, e
    ld a, h
    ld e, c
    ld a, e
    ld a, h
    ld e, c
    rrca
    dec bc
    ld [$4f10], sp
    ld d, b
    ld c, a
    ld d, b
    inc sp
    ld c, a
    ld d, b
    ld c, a
    ld d, b
    rrca
    db $10
    ld b, a
    ld b, a

jr_018_5cca:
    ld b, a
    rra
    rra
    rra
    ld b, a

jr_018_5ccf:
    ld b, a
    ld b, a
    rrca
    ld c, $35
    dec [hl]
    dec [hl]
    rra
    rra
    rra
    dec [hl]
    dec [hl]
    dec [hl]
    dec bc
    db $10
    dec [hl]
    dec [hl]
    dec [hl]
    rra
    rra
    rra
    dec [hl]
    dec [hl]
    dec [hl]
    rrca
    db $10
    dec [hl]
    dec [hl]
    dec [hl]
    rra
    rra
    rra
    dec [hl]
    dec [hl]
    dec [hl]
    rrca
    db $10
    dec [hl]
    dec [hl]
    rra
    rra
    rra
    rra
    rra
    dec [hl]
    dec [hl]
    rrca
    ld c, $35
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec [hl]
    dec bc
    db $10
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, l
    ld e, [hl]
    ld e, a
    rrca
    dec bc
    ld [$4f10], sp
    ld d, b
    ld c, a
    ld d, b
    inc sp
    ld c, a
    ld d, b
    ld c, a
    ld d, b
    rrca
    db $10
    ld b, l
    ld b, l
    ccf
    ld b, l
    ld b, l
    ld b, l
    ccf
    ld b, l
    ld b, l
    rrca
    ld c, $30
    jr nc, jr_018_5d57

    ld l, $2e
    ld l, $27
    jr nc, jr_018_5d66

    dec bc
    db $10
    ld e, b
    ld e, b
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld e, b
    ld e, b
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    rrca
    ld c, $58
    ld e, b
    daa
    cpl
    cpl
    cpl
    daa
    ld e, b
    ld e, b

jr_018_5d57:
    dec bc
    db $10
    cpl
    cpl
    daa
    ld l, $2e
    ld l, $27
    cpl
    cpl
    rrca
    ld sp, $0e0b

jr_018_5d66:
    dec bc
    ld c, $31
    dec bc
    ld c, $0b
    ld c, $31
    dec bc
    ld [$5a10], sp
    ld e, e
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld e, e
    ld e, h
    rrca
    ld c, $30
    jr nc, jr_018_5da6

    ld l, $2e
    ld l, $27
    jr nc, jr_018_5db5

    dec bc
    db $10
    ld e, b
    ld e, b
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld e, b
    ld e, b
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b
    ld e, b
    daa
    ld e, b
    ld e, b

jr_018_5da6:
    rrca
    db $10
    ld e, b
    ld e, b
    daa
    cpl
    cpl
    cpl
    daa
    ld e, b
    ld e, b
    rrca
    ld c, $2f
    cpl

jr_018_5db5:
    daa
    ld l, $2e
    ld l, $27
    cpl
    cpl
    dec bc
    db $10
    dec bc
    ld c, $0b
    ld c, $31
    dec bc
    ld c, $0b
    ld c, $0f
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
    jr z, jr_018_5e2c

    inc sp
    ld [hl], $37
    ld c, a
    ld d, b
    ld [hl], $37
    inc sp

jr_018_5e2c:
    inc sp
    ld [hl], $37
    ld c, a
    ld d, b
    ld [hl], $37
    inc sp
    inc sp
    ld [hl], $37
    ld c, a
    ld d, b
    ld [hl], $37
    inc sp
    inc sp
    ld [hl], $37
    ld c, a
    ld d, b
    ld [hl], $37
    inc sp
    inc sp
    ld [hl], $37
    ld c, a
    ld d, b
    ld [hl], $37
    ld sp, $433f
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ccf
    ccf
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ccf
    ccf
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ccf
    ccf
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    ccf
    ccf
    ld b, e
    ld b, b
    ld b, l
    ld b, l
    ld b, c
    ld b, e
    inc sp
    daa
    dec hl
    jr z, jr_018_5ea6

    ld l, $29
    dec hl
    daa
    daa
    dec hl
    jr z, jr_018_5eae

    ld l, $29
    dec hl
    daa
    daa
    dec hl
    jr z, jr_018_5eb6

    ld l, $29
    dec hl
    daa
    daa
    dec hl
    jr z, jr_018_5ebe

    ld l, $29
    dec hl
    daa
    daa
    dec hl
    jr z, jr_018_5ec6

    ld l, $29
    dec hl
    inc [hl]
    daa
    dec hl
    jr z, jr_018_5ece

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5ea6:
    jr z, jr_018_5ed6

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5eae:
    jr z, @+$30

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5eb6:
    jr z, jr_018_5ee6

    ld l, $29
    ld sp, $1817
    rla

jr_018_5ebe:
    jr @+$13

    ld [de], a
    add hl, hl
    dec hl
    ld d, a
    daa
    dec hl

jr_018_5ec6:
    jr z, jr_018_5ef6

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5ece:
    jr z, jr_018_5efe

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5ed6:
    jr z, jr_018_5f06

    ld l, $29
    dec hl
    daa
    ld sp, $1817
    rla
    jr jr_018_5f13

    inc sp
    dec bc
    ld c, $43

jr_018_5ee6:
    ld b, b
    dec bc
    ld c, $29
    dec hl
    ld d, a
    daa
    dec hl
    jr z, jr_018_5f1e

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5ef6:
    jr z, jr_018_5f26

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5efe:
    ld sp, $1817
    rla
    jr jr_018_5f35

    ld [hl-], a
    dec bc

jr_018_5f06:
    ld c, $45
    ld b, l
    inc sp
    ld b, e
    rrca
    jr nz, @+$23

    jr @+$11

    db $10
    add hl, hl
    dec hl

jr_018_5f13:
    inc [hl]
    daa
    dec hl
    jr z, jr_018_5f46

    ld l, $29
    dec hl
    daa
    daa
    dec hl

jr_018_5f1e:
    jr z, jr_018_5f4e

    ld sp, $1817
    rla
    jr jr_018_5f57

jr_018_5f26:
    ld [hl-], a
    ld b, l
    ld b, l
    rrca
    db $10
    inc sp
    ld [hl-], a
    rrca
    jr nz, jr_018_5f51

    ld a, [de]
    add hl, de
    jr @+$11

    ld [hl+], a

jr_018_5f35:
    inc hl
    db $10
    dec bc
    ld c, $29
    dec hl
    ld [hl-], a
    dec bc
    inc c
    dec c
    ld c, $31
    rla
    jr jr_018_5f75

    dec bc
    inc c

jr_018_5f46:
    dec c
    ld c, $32
    ld b, c
    ld b, e
    rrca
    db $10
    inc sp

jr_018_5f4e:
    ld [hl-], a
    ld l, $20

jr_018_5f51:
    ld hl, $191a
    jr jr_018_5f65

    ld [hl+], a

jr_018_5f57:
    inc hl
    db $10
    ld sp, $4f33
    inc e
    ld c, a
    ld d, b
    rrca
    db $10
    add hl, hl
    dec hl
    inc sp
    ld a, [bc]

jr_018_5f65:
    ld [$0b34], sp
    ld c, $17
    jr jr_018_5f77

    ld c, $29
    dec hl
    ld sp, $0f57
    db $10
    ld b, l
    ld b, l

jr_018_5f75:
    rrca
    db $10

jr_018_5f77:
    add hl, hl
    dec hl
    inc sp
    inc [hl]
    jr nz, jr_018_5f9e

    add hl, de
    jr jr_018_5f8f

    db $10
    add hl, hl
    dec hl
    inc [hl]
    ld h, b
    ld [hl+], a
    inc hl
    ld d, a
    db $10
    rrca
    db $10
    add hl, hl
    dec hl
    ld d, a
    ld h, b

jr_018_5f8f:
    ld d, l
    ccf
    jr nz, jr_018_5fb4

    dec bc
    ld c, $29
    dec hl
    ld d, a
    inc [hl]
    inc e
    daa
    ld d, h
    inc hl
    rrca

jr_018_5f9e:
    db $10
    add hl, hl
    dec hl
    inc [hl]
    ld d, a
    dec bc
    ld c, $45
    ld b, l
    rrca
    db $10
    add hl, hl
    dec hl
    ld sp, $4f34
    ld d, b
    ld [hl], $37
    rrca
    db $10
    add hl, hl

jr_018_5fb4:
    dec hl
    inc sp
    ld a, [bc]
    ld [$1817], sp
    dec bc
    ld c, $34
    dec bc
    ld c, $29
    dec hl
    ld sp, $3736
    rrca
    db $10
    inc sp
    rrca
    db $10
    add hl, hl
    dec hl
    inc sp
    jr nz, jr_018_5fef

    add hl, de
    add hl, de
    jr jr_018_5fdd

    ld c, $29
    dec hl
    inc [hl]
    ld d, h
    inc hl
    ld h, b
    ld h, b
    ccf
    ld [hl], $37

jr_018_5fdd:
    add hl, hl
    dec hl
    ld d, a
    ld [hl], $37
    ld h, b
    ld h, b
    daa
    ld b, l
    ld b, l
    add hl, hl
    dec hl
    inc [hl]
    rla
    jr @+$62

    ld h, b
    daa

jr_018_5fef:
    ld l, $2e
    add hl, hl
    dec hl
    ld [hl-], a
    rla
    jr jr_018_6057

    ld h, b
    daa
    ld l, $2e
    add hl, hl
    dec hl
    inc [hl]
    rla
    jr jr_018_600c

    ld c, $17
    jr jr_018_6010

    ld c, $17
    jr jr_018_6027

    ld [$3131], sp

jr_018_600c:
    ld [$3608], sp
    scf

jr_018_6010:
    ld [$3608], sp
    scf
    ld [$3608], sp
    scf
    ld [$3608], sp
    scf
    ld [$3108], sp
    ld l, $2e
    ld sp, $100f
    ld sp, $2e2e

jr_018_6027:
    ld sp, $3332
    ld b, l
    ld b, l
    ld [$4508], sp
    ccf
    ld [$4508], sp
    ld b, l
    ld [$4508], sp
    ccf
    ld [$4508], sp
    ld b, l
    inc sp
    ld [hl], $37
    inc sp
    ld c, a
    ld d, b
    inc sp
    ld [hl], $37
    inc sp
    inc [hl]
    inc [hl]
    ld l, $2e
    ld b, l
    ld b, l
    ld l, $27
    ccf
    ld b, l
    ld l, $2e
    ld b, l
    ld b, l
    ld l, $27
    ccf

jr_018_6057:
    ld b, l
    ld l, $2e
    ld b, l
    ld b, l
    ld b, l
    ccf
    ccf
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ccf
    ld b, l
    ld l, $2e
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $27
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $2e
    daa
    daa
    ld l, $2e
    ld l, $2e
    ld l, $17
    jr jr_018_60c3

    ld hl, $1819
    rla
    jr jr_018_60c9

    ld hl, $1819
    inc [hl]
    rla
    jr jr_018_60c7

    jr jr_018_60e6

    ld l, $2e
    ld l, $2e
    ld l, $27
    daa
    ld l, $2e
    ld l, $2e
    ld l, $0b
    ld c, $22
    inc hl
    ld b, l

jr_018_60c3:
    ld b, l
    dec bc
    ld c, $54

jr_018_60c7:
    inc hl
    ld b, l

jr_018_60c9:
    ld b, l
    ld [hl-], a
    rrca
    db $10
    ld [hl], $37
    inc sp
    dec bc
    ld c, $31
    rla
    jr jr_018_6107

    dec bc
    ld c, $31
    rla
    jr jr_018_610d

    rrca
    db $10
    inc e
    ld b, l
    ld l, $20
    ld hl, $1819
    ld b, l

jr_018_60e6:
    ld l, $36
    scf
    ld [hl], $37
    ccf
    ccf
    ld [hl-], a
    rrca
    db $10
    ld [hl-], a
    ld b, l
    ld b, l
    ld [hl-], a
    rrca
    db $10
    ld [hl-], a
    ld b, l
    ld b, l
    ld [hl-], a
    ld a, [bc]
    ld [$4f31], sp
    ld d, b
    inc [hl]
    ld c, a
    ld d, b
    inc [hl]
    ld c, a
    ld d, b
    inc [hl]
    inc sp

jr_018_6107:
    nop
    nop
    ccf
    ld b, l
    ld b, l
    ccf

jr_018_610d:
    nop
    nop
    dec de
    ccf
    nop
    nop
    daa
    ld l, $2e
    daa
    nop
    nop
    inc e
    daa
    nop
    nop
    daa
    ld l, $2e
    daa
    nop
    nop
    inc [hl]
    rla
    jr jr_018_6127

jr_018_6127:
    daa
    ld l, $2e
    daa
    nop
    nop
    dec de
    rrca
    ld sp, $0e0b
    ld l, $2e
    daa
    nop
    nop
    inc e
    rrca
    ld [hl-], a
    inc [hl]
    db $10
    ld [hl], $37
    daa
    nop
    nop
    inc [hl]
    ld c, a
    inc [hl]
    inc sp
    ld d, b
    ld c, a
    ld d, b
    rla
    jr jr_018_6162

    jr jr_018_6157

    ld [$3634], sp
    scf
    inc [hl]
    ld c, a
    ld d, b
    inc [hl]
    ld [hl], $37

jr_018_6157:
    inc [hl]
    dec e
    ld b, l
    ld b, l
    ccf
    ld b, l
    ld b, l
    ccf
    ld b, l
    ld b, l
    dec de

jr_018_6162:
    ld e, $2e
    ld l, $27
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld l, $2e
    ld d, l
    inc [hl]
    ld l, $2e
    daa
    ld e, b
    ld e, b
    daa
    ld l, $2e
    ld d, l
    dec e
    dec bc
    ld c, $27
    ld e, b
    ld e, b
    daa
    ld l, $2e
    inc e
    ld e, $36
    scf
    dec bc
    ld c, $58
    daa
    ld l, $2e
    inc [hl]
    inc [hl]
    ld c, a
    ld d, b
    ld c, a
    ld d, b
    ld sp, $2e31
    ld l, $45
    ld [hl-], a
    rla
    jr @+$19

    jr jr_018_61cc

    ld [hl-], a
    rla
    jr jr_018_61d2

    ld e, $08
    dec bc
    ld c, $0b
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [hl], $37
    jr nz, jr_018_6211

    jr nz, jr_018_61e1

    ld a, [de]
    jr jr_018_6223

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_018_61cc:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_018_61d2:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ccf
    ld d, h
    inc hl
    ld d, h
    inc hl
    ld c, a
    ld d, b
    ld h, b

jr_018_61e1:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    daa
    ld b, l
    ld b, l
    ccf
    ld b, l
    ccf
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_018_6211:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    daa
    ld l, $2e
    daa
    ld l, $27
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_018_6223:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    daa
    ld l, $2e
    jr nz, jr_018_6259

    ld a, [de]
    jr jr_018_629b

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    daa
    dec bc
    ld c, $54
    inc hl
    rrca
    db $10
    ld h, b

jr_018_6259:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_018_6291

    add hl, de
    jr jr_018_62c2

    ld d, b
    ld c, a
    ld d, b
    jr nz, @+$23

    jr jr_018_6291

    jr jr_018_62ad

    jr nz, jr_018_629f

    jr jr_018_6297

    jr jr_018_62b3

    jr nz, jr_018_62a5

    jr @+$19

    jr @+$22

    ld hl, $1718
    jr jr_018_62af

    inc hl
    ld c, a
    ld d, b
    add d

jr_018_6291:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $10
    db $10

jr_018_6297:
    ld de, $1011
    db $10

jr_018_629b:
    ld de, $0d11
    dec c

jr_018_629f:
    ld c, $0e
    ld [de], a
    dec d
    inc b
    rlca

jr_018_62a5:
    dec b
    ld [$0906], sp
    dec d
    ld [de], a
    ld a, [bc]
    inc de

jr_018_62ad:
    dec bc
    inc de

jr_018_62af:
    inc c
    ld [de], a
    ld c, h
    ld c, [hl]

jr_018_62b3:
    ld c, l
    ld c, a
    ld d, b
    ld d, d
    ld d, c
    ld d, e
    ld a, $40
    ccf
    ld b, c
    ld [de], a
    inc d
    inc de
    dec d
    inc de

jr_018_62c2:
    ld d, $13
    rla
    inc de
    inc d
    inc de
    dec d
    inc de
    ld d, $12
    rla
    inc d
    inc d
    dec d
    dec d
    ld d, $16
    rla
    rla
    dec e
    ld hl, $221e
    rra
    inc hl
    jr nz, jr_018_6301

    ld d, [hl]
    ld e, d
    ld d, a
    ld e, e
    ld e, b
    ld e, h
    ld e, c
    ld e, l
    ld e, [hl]
    ld h, d
    ld e, a
    ld h, e
    ld h, b
    ld h, h
    ld h, c
    ld h, l
    dec h
    ld [de], a
    ld l, h
    inc de
    ld l, h
    inc de
    ld h, $12
    ld l, h
    inc de
    ld l, h
    inc de
    ld l, h
    ld [de], a
    ld l, h
    inc de
    daa
    ld l, l
    dec d
    dec d

jr_018_6301:
    ld l, l
    jr z, jr_018_6319

    dec d
    dec d
    dec d
    daa
    ld l, l
    dec d
    dec d
    ld l, l
    jr z, jr_018_630e

jr_018_630e:
    nop
    nop
    nop
    add hl, hl
    dec hl
    ld a, [hl+]
    ld l, c
    dec h
    inc l
    ld l, h
    dec l

jr_018_6319:
    daa
    ld l, l
    ld l, $30
    cpl
    daa
    dec h
    ld l, c
    ld sp, $3234
    dec [hl]
    ld [hl-], a
    dec [hl]
    ld [hl-], a
    dec [hl]
    ld [hl-], a
    dec [hl]
    inc sp
    ld [hl], $37
    scf
    scf
    scf
    inc bc
    inc bc
    scf
    scf
    scf
    scf
    inc bc
    inc bc
    jr c, jr_018_633e

    jr c, jr_018_6340

    add hl, sp

jr_018_633e:
    add hl, sp
    ld a, [hl-]

jr_018_6340:
    ld a, [hl-]
    jr c, jr_018_637e

    jr c, jr_018_6380

    inc a
    jr c, jr_018_6384

    jr c, jr_018_6387

    dec a
    dec a
    dec a
    jr c, jr_018_638c

    jr c, jr_018_638e

    dec a
    jr c, jr_018_6391

    jr c, jr_018_6398

    ld b, [hl]
    ld b, e
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, h
    ld b, a
    ld b, l
    ld b, d
    ld b, h
    ld b, e
    ld b, l
    ld c, b
    ld c, d
    ld c, c
    ld c, e
    ld [de], a
    dec h
    inc de
    ld l, h
    inc de
    ld l, h
    ld [de], a
    ld h, $13
    ld l, h
    inc de
    ld l, h
    ld [de], a
    ld l, h
    inc de
    ld l, h
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, d

jr_018_637e:
    ld l, e
    ld l, d

jr_018_6380:
    ld l, e
    ld [bc], a
    inc [hl]
    ld [bc], a

jr_018_6384:
    dec [hl]
    ld [bc], a
    dec [hl]

jr_018_6387:
    ld [bc], a
    dec [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a

jr_018_638c:
    ld [hl], $02

jr_018_638e:
    scf
    ld [bc], a
    scf

jr_018_6391:
    ld [bc], a
    inc bc
    ld [bc], a
    scf
    ld [bc], a
    scf
    ld [bc], a

jr_018_6398:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    dec sp
    ld [bc], a
    dec sp
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    jr c, jr_018_63ae

    jr c, jr_018_63ae

jr_018_63ae:
    ld c, d
    nop
    ld c, e
    daa
    ld l, l
    daa
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    jr z, jr_018_6429

    jr z, @+$27

    dec h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld h, $26
    ld d, h
    dec a
    ld d, l
    dec a
    inc d
    ld [de], a
    dec d
    inc de
    ld d, $13
    rla
    ld [de], a
    inc d
    inc de
    dec d
    inc de
    ld d, $12
    rla
    inc de
    dec h
    inc l
    ld h, $2d
    daa
    jr z, jr_018_6412

    jr nc, jr_018_6453

    ld l, l
    dec d
    dec d
    dec d
    dec d
    ld l, l
    ld l, l
    dec d
    dec d
    ld d, $16
    inc bc
    inc bc
    inc bc
    inc bc
    jr c, jr_018_640a

    jr c, jr_018_640b

    ld [de], a
    ld [bc], a
    inc de
    ld [bc], a
    inc de
    ld [bc], a
    inc de
    ld [bc], a
    inc de
    ld [bc], a
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    nop
    inc de
    nop

jr_018_640a:
    inc de

jr_018_640b:
    nop
    inc de
    nop
    inc de
    nop
    ld [de], a
    nop

jr_018_6412:
    nop
    nop
    nop
    dec h
    dec h
    jr jr_018_6485

    add hl, de
    ld l, h
    ld a, [de]
    ld h, $00
    nop
    dec de
    dec de
    nop
    nop
    inc e
    inc e
    nop
    nop
    jr @+$1d

jr_018_6429:
    add hl, de
    nop
    ld a, [de]
    inc e
    nop
    nop
    dec de
    jr jr_018_6432

jr_018_6432:
    add hl, de
    inc e
    ld a, [de]
    nop
    nop
    jr jr_018_6451

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    jr jr_018_6464

    add hl, de
    ld l, h
    ld a, [de]
    ld l, h
    ld h, $26
    dec de
    dec de
    nop
    nop
    inc e
    inc e
    nop
    nop
    jr jr_018_646a

    add hl, de
    nop

jr_018_6451:
    ld a, [de]
    inc e

jr_018_6453:
    nop
    nop
    dec de
    jr jr_018_6458

jr_018_6458:
    add hl, de
    inc e
    ld a, [de]
    nop
    nop
    jr jr_018_6477

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    nop

jr_018_6464:
    nop
    jr jr_018_648c

    add hl, de
    ld l, h
    ld a, [de]

jr_018_646a:
    ld l, h
    jr jr_018_64d9

    add hl, de
    ld l, h
    ld a, [de]
    ld h, $1c
    inc e
    dec de
    dec de
    ld a, [de]
    inc e

jr_018_6477:
    jr jr_018_6494

    ld [de], a
    nop
    ld [de], a
    nop
    jr c, jr_018_6491

    jr c, jr_018_6494

    jr c, jr_018_6496

    jr c, jr_018_6498

jr_018_6485:
    ld [bc], a
    ld l, b
    ld [bc], a
    ld l, b
    ld h, [hl]
    ld l, b
    ld h, a

jr_018_648c:
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, l

jr_018_6491:
    ld l, b
    ld h, [hl]
    ld l, c

jr_018_6494:
    ld h, a
    ld l, h

jr_018_6496:
    ld l, d
    ld l, l

jr_018_6498:
    ld l, e
    nop
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
    nop
    nop
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

jr_018_64d9:
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
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_018_654d

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_018_655d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_018_656d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_018_657d

    ld [hl-], a

jr_018_654d:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_018_658d

    nop
    add b
    sub [hl]
    jr nz, jr_018_6559

jr_018_6559:
    inc d
    ld h, [hl]
    nop
    and b

jr_018_655d:
    sub [hl]
    jr nz, jr_018_6560

jr_018_6560:
    inc d
    ld h, a
    nop
    ret nz

    sub [hl]
    jr nz, jr_018_6567

jr_018_6567:
    sub h
    ld h, a
    ld bc, $80ff
    sub [hl]

jr_018_656d:
    jr nz, jr_018_656f

jr_018_656f:
    inc d
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_6576

jr_018_6576:
    ld [hl], h
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_657d

jr_018_657d:
    sub h
    ld h, a
    ld [bc], a
    add b
    sub [hl]
    jr nz, jr_018_6584

jr_018_6584:
    inc [hl]
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_658b

jr_018_658b:
    ld d, h
    ld h, a

jr_018_658d:
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_6592

jr_018_6592:
    or h
    ld h, a
    ld [bc], a
    add b
    sub [hl]
    jr nz, jr_018_6599

jr_018_6599:
    ld d, h
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_65a0

jr_018_65a0:
    inc [hl]
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_65a7

jr_018_65a7:
    call nc, Call_000_0267
    add b
    sub [hl]
    jr nz, jr_018_65ae

jr_018_65ae:
    ld [hl], h
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_65b5

jr_018_65b5:
    inc d
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_65bc

jr_018_65bc:
    db $f4
    ld h, a
    ld [bc], a
    add b
    sub [hl]
    jr nz, jr_018_65c3

jr_018_65c3:
    sub h
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_65ca

jr_018_65ca:
    ld [hl], h
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_65d1

jr_018_65d1:
    or h
    ld h, a
    ld [bc], a
    add b
    sub [hl]
    jr nz, jr_018_65d8

jr_018_65d8:
    or h
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_65df

jr_018_65df:
    ld d, h
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_65e6

jr_018_65e6:
    db $f4
    ld h, a
    ld [bc], a
    add b
    sub [hl]
    jr nz, jr_018_65ed

jr_018_65ed:
    call nc, $0266
    and b
    sub [hl]
    jr nz, jr_018_65f4

jr_018_65f4:
    inc [hl]
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_65fb

jr_018_65fb:
    or h
    ld h, a
    ld [bc], a
    add b
    sub [hl]
    jr nz, jr_018_6602

jr_018_6602:
    db $f4
    ld h, [hl]
    ld [bc], a
    and b
    sub [hl]
    jr nz, jr_018_6609

jr_018_6609:
    inc d
    ld h, a
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_018_6610

jr_018_6610:
    db $f4
    ld h, a
    ld [bc], a
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
    ld b, l
    ld bc, $4482
    ld b, h
    add $44
    add $00
    add $82
    ld b, h
    ld b, l
    ld bc, $8382
    nop
    rst $38
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
    ld b, l
    ld de, $54ba
    ld d, h
    cp $54
    cp $10
    cp $ba
    ld d, h
    ld b, l
    ld de, $8382
    nop
    rst $38
    ld h, b
    rst $38
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
    ld b, l
    ld bc, $4492
    ld l, h
    sub $7c
    sub $28
    sub $92
    ld b, h
    ld b, l
    ld bc, $8382
    nop
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, l
    ld bc, $4482
    ld d, h
    add $44
    sub $10
    add $82
    ld b, h
    ld b, l
    ld bc, $8382
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld b, l
    ld bc, $4482
    ld b, h
    add $44
    add $00
    add $82
    ld b, h
    ld b, l
    ld bc, $8382
    nop
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld a, c
    ld bc, $7080
    ld h, b
    ldh [c], a
    ld b, h
    add $00
    adc [hl]
    ld [bc], a
    inc e
    dec a
    ld bc, $8382
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld c, $ff
    ld e, $ff
    ld a, $ff
    nop
    rst $38
    ld a, l
    ld bc, $7c82
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld a, h
    ld a, l
    ld bc, $8382
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
    ld [bc], a
    rst $38
    ld b, $ff
    nop
    rst $38
    dec a
    ld bc, $1c02
    inc c
    adc [hl]
    ld b, h
    add $00
    ldh [c], a
    add b
    ld [hl], b
    ld a, c
    ld bc, $8382
    inc a
    nop
    add d
    nop
    inc a
    cp $c2
    cp [hl]
    add d
    add d
    jp nz, $bebe

    cp $3c
    cp $be
    cp $40
    cp [hl]
    nop
    add d
    inc a
    cp $c2
    inc a
    add d
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ld b, b
    cp [hl]
    inc a
    add d
    add d
    add d
    jp nz, $bebe

    cp $be
    cp $40

Call_018_6745:
    cp [hl]
    add d
    add d
    inc a
    cp $40
    cp [hl]
    add d
    nop
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, Jump_000_3c3c

    add d
    add d
    add d
    jp nz, $bebe

    cp $c2
    cp [hl]
    nop
    add d
    jp nz, Jump_000_3cbe

    cp $40
    cp [hl]
    nop
    add d
    jp nz, $be3c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    add d
    add d
    add d
    cp [hl]
    cp $c2
    cp [hl]
    add d
    add d
    ld b, b
    cp [hl]
    cp [hl]
    cp $3c
    cp $40
    cp [hl]
    nop
    add d
    ld b, b
    cp [hl]
    cp [hl]
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
    rst $38
    jr nz, jr_018_67ba

    ld d, c
    ld d, c
    adc d
    adc d
    inc b
    inc b
    rst $38
    nop
    nop
    nop
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_018_67ba:
    call nz, $3bc4
    dec sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    ld c, b
    ld a, [bc]
    ld c, b
    ld [de], a
    ld d, b
    ld a, [bc]
    ld c, b
    ld a, [bc]
    ld c, b
    ld a, [bc]
    ld c, b
    ld [de], a
    ld d, b
    ld [de], a
    ld d, b
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
    ld [de], a
    ld d, b
    ld a, [bc]
    ld c, b
    ld b, $44
    ld a, [bc]
    ld c, b
    ld [de], a
    ld d, b
    ld [hl+], a
    ld h, b
    ld [de], a
    ld d, b
    ld a, [bc]
    ld c, b
    nop
    nop
    nop
    rst $38
    nop
    nop
    sbc d
    sbc d
    ld h, l
    ld h, l
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    ld c, b
    ld [de], a
    ld d, b
    ld a, [bc]
    ld c, b
    ld [de], a
    ld d, b
    ld [de], a
    ld d, b
    ld a, [bc]
    ld c, b
    ld a, [bc]
    ld c, b
    ld [de], a
    ld d, b

Call_018_6814:
    ld hl, $6838
    ld bc, $0100
    jr jr_018_6832

Call_018_681c:
    ld hl, $6938
    ld bc, $0100
    jr jr_018_6832

Call_018_6824:
    ld hl, $6a38
    ld bc, $0100
    jr jr_018_6832

Call_018_682c:
    ld hl, $6b38
    ld bc, $0100

jr_018_6832:
    ld de, $9560
    jp Jump_000_0183


    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    pop af
    ld hl, sp-$0f
    ld hl, sp-$0d
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ldh [rP1], a
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    db $f4
    ei
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $30
    ld hl, sp-$09
    ld a, [$6090]
    ld hl, sp-$80
    db $fc
    ld hl, sp-$01
    ret c

    ei
    xor h
    ldh a, [$ff6f]
    ei
    ld l, h
    rst $38
    ld e, e
    ld a, [bc]
    db $10
    ld a, [hl+]
    db $10
    ld [$4a10], a
    sub b
    adc d
    db $10
    ld l, d
    sub b
    adc d
    db $10
    ld [$a010], a
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a2
    ldh a, [rIE]
    ldh a, [rIE]
    rst $30
    ld hl, sp-$0c
    ei
    rst $30
    db $fc
    rst $30
    rst $38
    rst $30
    ld hl, sp-$09
    ld hl, sp+$7f
    or a
    ld a, a
    and a
    rst $38
    ld d, $fe
    ld a, c
    cp $f9
    db $fd
    ldh [$fffc], a
    nop
    rst $38
    nop
    adc d
    ld [hl], b
    adc $30
    ld l, $d0
    ld c, $f0
    ld c, $f0
    ld a, [bc]
    ldh a, [$ffea]
    db $10
    ld a, [bc]
    db $10
    and h
    inc de
    xor b
    rla
    and d
    dec e
    xor h
    ld de, $11e2
    xor $11
    and b
    rra
    xor [hl]
    ld de, $f8f7
    rst $30
    ld hl, sp-$0c
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$04
    inc bc
    jr jr_018_6923

    inc e
    rrca
    rra
    ld c, $3f
    ld e, $3e

jr_018_6923:
    dec e
    ld e, h
    dec hl
    ld a, a
    nop
    adc d
    db $10
    adc d
    db $10
    adc d
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    jp z, $2a10

    ret nc

    ld [$a010], a
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    ldh a, [$fff8]
    di
    ld hl, sp-$0b
    ei
    di
    cp $f7
    ld sp, hl
    or $ff
    db $f4
    rst $38
    rst $30
    ld hl, sp+$30
    nop
    ldh a, [rNR41]
    ret nc

    ld h, b
    sbc b
    ldh [rNR50], a
    ret c

    ld b, h
    cp b
    add h
    ld a, b
    xor $14
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a2
    and d
    ld de, $11a2
    rst $30
    ld hl, sp-$0d
    db $fc
    ldh a, [rIE]
    rst $30
    ld hl, sp-$10
    rst $38
    rst $30
    ld hl, sp-$10
    rst $38
    push af
    rst $38
    xor $94
    ld [$2c94], a
    ret nc

    ld a, $cc
    ld a, c
    cp [hl]
    ldh a, [$ff6f]
    rst $38
    db $e3
    ld hl, sp-$19
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    adc d
    db $10
    adc d
    db $10
    adc d
    db $10
    and d
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a2
    and h
    inc de
    and [hl]
    ld de, $fff0
    ldh a, [rIE]
    db $f4
    rst $38
    rst $30
    cp $f6
    db $fc
    db $f4
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp+$18
    rst $20
    scf
    ldh [$ff78], a
    ldh a, [$ffe4]
    ld hl, sp-$39
    ld a, b
    ld b, e
    ccf
    ld b, b
    ccf
    ld a, a
    nop
    adc d
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    adc d
    db $10
    ld c, d
    sub b
    jp z, $a010

    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    ldh a, [c]
    ld hl, sp-$0a
    ld hl, sp-$0a
    db $fc
    rst $30
    db $fc
    rst $30
    db $fd
    rst $30
    db $fd
    rst $30
    rst $38
    rst $30
    cp $00
    nop
    ld b, b
    nop
    ret nz

    nop
    ldh a, [$ff80]
    ldh a, [$ffa0]
    ld hl, sp-$20
    ld hl, sp+$30
    db $fd
    ret nc

    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    adc d
    db $10
    ld c, d
    sub b
    xor d
    ld de, $1ba4
    xor [hl]
    dec de
    xor [hl]
    rla
    and [hl]
    rra
    xor h
    inc de
    and [hl]
    dec e
    xor h
    inc de
    rst $30
    db $fd
    rst $30
    ei
    or $ff
    push af
    cp $f7
    ld hl, sp-$0d
    db $fc
    push af
    ei
    rst $30
    ld hl, sp-$41
    ldh [$ff15], a
    ld [$8b7f], a
    rst $28
    ld d, a
    rst $30
    rst $08
    xor l
    db $d3
    rst $30
    inc l
    db $fd
    di
    ld [$ce90], a
    or b
    xor $70
    ld [$eef4], a
    ldh a, [$ffca]
    db $f4
    xor $10
    adc $f0
    and [hl]
    add hl, de
    xor [hl]
    ld de, $1fae
    xor [hl]
    dec e
    xor [hl]
    rra
    xor [hl]
    rra
    and h
    rra
    xor [hl]
    ld de, $fff7
    rst $30
    rst $38
    ldh a, [rIE]
    rst $30
    ld hl, sp-$10
    rst $38
    rst $30
    ld hl, sp-$09
    rst $38
    rst $30
    ld hl, sp-$1d
    db $fc
    add d
    db $fc
    ld [bc], a
    db $fc
    add l
    ld a, b
    ld b, l
    cp b
    add sp, $10
    ldh a, [$ffc0]
    ei
    nop
    xor $10
    ld l, d
    inc d
    ld [$ee74], a
    or b
    xor $70
    xor $70
    xor d
    ld [hl], b
    ld l, d
    db $10
    and b
    ld de, $11a0
    and b
    ld de, $11a4
    and [hl]
    ld de, $11a6
    and d
    ld de, $11a0
    rst $30
    ld hl, sp-$0c
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp-$0a
    db $fc
    or $f8
    rst $38
    ld [bc], a
    ld a, e
    inc b
    ld d, $0b
    add hl, bc
    rlca
    ld [$0707], sp
    nop
    rlca
    ld [bc], a
    rlca
    nop
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    adc d
    db $10
    ld c, d
    sub b
    ld [$ea10], a
    ld [hl], b
    ld a, [bc]
    ldh a, [$ffea]
    db $10
    and b
    ld de, $11ae
    and [hl]
    inc de
    and d
    ld de, $11a0
    and b
    ld de, $11a2

jr_018_6b46:
    and [hl]
    inc de
    rst $30
    ld hl, sp-$0a
    rst $38
    push af
    cp $f3
    db $fc
    di
    db $fd
    ldh a, [c]
    db $fd
    rst $30
    ld hl, sp-$09
    ld sp, hl
    ret nz

    nop
    and e
    ld b, b
    ld e, $e3
    ei
    inc e
    call z, $38f0
    ret nz

    rst $18
    jr nc, jr_018_6b46

    or a
    ld a, [bc]
    db $10
    jp z, $8a10

    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    jp z, $aa10

    ret nc

    xor [hl]
    dec d
    xor h
    inc de
    xor h
    inc de
    xor [hl]
    dec d
    xor [hl]
    inc de
    xor [hl]
    ld de, $1da2
    xor $19
    rst $30
    ld sp, hl
    rst $30
    cp $f1
    cp $f2
    db $fd
    rst $30
    ld hl, sp-$09
    rst $38
    rst $30
    db $fd
    ldh a, [rIE]
    cp a
    ld d, e
    inc sp
    call $8d73
    rst $38
    ld d, e
    cp $ef
    ret z

    rst $30
    adc a
    ld [hl], b
    add hl, sp
    ret nz

    ld a, [bc]
    ldh a, [rOCPS]
    sub b
    ld a, [bc]
    ldh a, [$ff2a]
    ldh a, [rOCPS]
    ret nc

    xor $90
    ld [$cf14], a
    inc [hl]
    xor $17
    xor $1f
    xor $1f
    xor $1f
    xor [hl]

jr_018_6bc1:
    rla
    xor [hl]
    ld de, $11a0
    and b
    ld de, $f8f7
    rst $30
    rst $38
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0a
    ld hl, sp-$0a
    ld hl, sp-$0e
    db $fc
    di
    ld bc, $e297
    rst $30
    ld bc, $01fb
    ld sp, hl
    nop
    db $ec

jr_018_6be3:
    jr jr_018_6bc1

    jr c, @-$60

    ld a, h
    rst $28
    call nc, $f0ef
    rst $28
    ldh a, [$ffef]
    ldh a, [$ffee]
    call nc, $10ee
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    and b
    ld de, $11a0
    and b
    ld de, $11a0
    and d
    ld de, $13a6
    xor [hl]
    rla
    xor [hl]
    ld de, $f8f6
    ldh a, [c]
    db $fc
    ldh a, [c]
    db $fc
    ldh a, [c]
    db $fc
    ldh a, [c]
    db $fc
    push af

jr_018_6c13:
    ld a, [$faf5]
    rst $30
    ld hl, sp-$06
    inc c
    cp a
    ld [hl], b
    cp a
    ld a, [hl]
    cp a
    ld a, b
    cp b
    ld [hl], a
    ld d, e
    xor a
    ld d, a
    xor a
    rst $38
    nop
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    adc d
    db $10
    jp z, $ea90

    ret nc

    ld [$2110], a
    ld b, h
    ld l, h
    ld bc, $0080
    ld de, $9660
    jp Jump_000_0183


    ei
    ld sp, hl
    add $c3
    xor h
    sbc [hl]
    ld e, h
    jr c, jr_018_6be3

    adc a
    call $92c0
    and d
    rrca
    ld c, a
    rrca
    adc a
    ld d, a
    daa
    dec bc
    inc de
    sub a
    ld h, a
    adc a
    rrca
    ld d, c
    pop hl
    ld a, [hl+]
    inc e
    jp nz, Jump_018_46c7

    ld b, $a1
    sbc b
    set 0, a
    ld a, [hl+]
    inc e
    xor c
    ld [hl], c
    ld a, [hl+]
    inc e
    jp z, $f5c7

    di
    dec d
    ld c, $68
    ldh a, [rSCX]
    add e
    add hl, bc
    ld de, $e9e5
    adc e
    sub e
    ld d, a
    daa
    ld c, a
    adc a
    ld b, e
    db $e3
    ld d, h
    jr c, jr_018_6c13

    add a
    pop af
    ldh a, [$ffe9]
    and $d0
    ret z

    ld [$f0e4], a
    pop af
    ldh a, [$fff2]
    ld c, c
    ld b, l
    or e
    inc bc
    ld l, c
    pop af
    ld a, [hl-]
    inc e
    dec [hl]
    ld a, c
    ld h, e
    jp $9fdf


    ldh a, [c]
    pop af
    ld [$d1e4], a
    ret


    and a

jr_018_6cab:
    sub a
    ret nc

    ret z

    ldh [c], a
    pop hl
    ld d, $0f
    xor b
    ld [hl], b
    xor a
    rst $08
    ld d, e
    db $e3
    ld d, h
    jr c, @-$69

    adc [hl]
    ld d, h
    jr c, @-$2b

    db $e3
    add l
    add hl, de
    ld [bc], a
    ld h, b
    ld bc, $0805
    ld de, $231f
    nop
    ld a, [bc]
    nop
    nop
    jr jr_018_6cab

    ld l, h
    add hl, de
    ld bc, $1a6d
    inc d
    ld l, l
    ld [hl+], a
    inc d
    ld l, l
    nop
    pop hl
    ld l, h
    ldh a, [$ff6c]
    nop
    nop
    jr nz, jr_018_6ce4

    inc b

jr_018_6ce4:
    ld a, [bc]
    ld bc, $5b5a
    ld e, h
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    ld e, b
    ld e, b
    ret nz

    cp $06
    inc c
    ld bc, $2e2e
    ld l, $2e
    ld l, $08
    ld [$2e2e], sp
    ld l, $2e
    ld l, $05
    ld l, l
    nop
    nop
    ld b, b
    ld bc, $0a04
    ld bc, $082e
    ld [$2e2e], sp
    ld l, $2e
    ld l, $2e
    ld l, $1a
    ld l, l
    add hl, hl
    ld l, l
    nop
    nop
    or b
    rst $38
    inc bc
    ld a, [bc]
    ld bc, $5858
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    nop
    ld bc, $0a05
    ld bc, $0808
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc de
    nop

Call_018_6d3a:
    ld hl, $7654
    call Call_018_73f5
    ld hl, $6cc4
    call Call_018_77f4
    ld hl, $6cce
    call Call_018_7996
    ld hl, $6d38
    call Call_018_7f2a
    xor a
    ld [$d16d], a
    call Call_018_6f37
    call Call_018_6d85
    ret


Call_018_6d5d:
    ld a, [$d81c]
    or a
    ret nz

    ld a, [$d140]
    or a
    call nz, Call_018_744d
    ld a, [$cca4]
    or a
    ld de, $6ccb
    call nz, Call_018_7806
    call Call_018_7a53
    ld a, [$d165]
    or a
    call nz, Call_018_7f58
    ld a, [$d16d]
    or a
    call nz, Call_018_6f5f
    ret


Call_018_6d85:
    ld a, [$de8a]
    ld d, $00
    cp $05
    jr c, jr_018_6d96

    cp $06
    ld d, $06
    jr z, jr_018_6d96

    ld d, $05

jr_018_6d96:
    ld a, d
    ld [$def2], a
    ld a, $02
    ld [$def4], a
    ld a, $04
    ld [$def1], a
    ret


Call_018_6da5:
Jump_018_6da5:
    ld [$d170], a
    or a
    ld a, $40
    jr z, jr_018_6dbb

    push bc
    ld a, $56
    call Call_000_020a
    pop bc
    ld [$d173], a
    ld a, b
    call Call_000_01a4

jr_018_6dbb:
    ld [$d172], a
    xor a
    ld [$d174], a
    ld a, $3c
    ld [$d177], a
    xor a
    ld [$d16e], a
    ret


Call_018_6dcc:
    ld b, [hl]
    ld a, [$d170]
    or a
    push de
    push hl
    push bc
    call nz, Call_018_6e8f
    pop bc
    pop hl
    pop de
    ld a, [$deaf]
    or a
    ret nz

    ld hl, $d16e
    ld a, [hl]
    or a
    jr nz, jr_018_6e50

    ld a, [$d74b]
    cp $01
    ret nz

    ld a, [$d163]
    or a
    ret nz

    ld l, e
    ld h, d
    ld c, $00

jr_018_6df5:
    inc c
    ld a, [hl+]
    cp $ff
    ret z

    ld e, a
    ld a, [hl+]
    ld d, a
    rrc b
    jr c, jr_018_6e21

    ld a, [$d70d]
    sub e
    ld e, a
    ld a, [$d70e]
    sbc d
    ld d, a
    call c, Call_000_016b
    ld a, d
    or a
    jr nz, jr_018_6e21

    ld a, e
    cp $02
    jr nc, jr_018_6e21

    ld a, [hl]
    sub $0d
    ld d, a
    ld a, [$d725]
    cp d
    jr z, jr_018_6e25

jr_018_6e21:
    inc hl
    inc hl
    jr jr_018_6df5

jr_018_6e25:
    inc hl
    ld a, [hl]
    ld [$df32], a
    ld a, c
    ld [$d174], a
    ld a, $1c
    ldh [rOBP0], a
    ld a, $01
    ld [$d16e], a
    ld [$d74a], a
    ld [$de29], a
    ld [$d76e], a
    ld [$c2c4], a
    xor a
    ld [$d16f], a
    ld [$c201], a
    ld hl, $d72b
    ld [hl+], a
    ld [hl+], a
    ret


jr_018_6e50:
    ld a, [$dece]
    or a
    jr z, jr_018_6e6c

    cp $ff
    jr nz, jr_018_6e69

    ld hl, $d177
    ld a, [hl]
    or a
    jr z, jr_018_6e63

    dec [hl]
    ret


jr_018_6e63:
    ld a, $ff
    ld [$d16e], a
    ret


jr_018_6e69:
    ld [hl], $03
    ret


jr_018_6e6c:
    ld [hl], $02
    ld hl, $d16f
    ld a, [hl]
    cp $1e
    jr nc, jr_018_6e78

    inc [hl]
    ret


jr_018_6e78:
    ld a, $03
    ld [$dece], a
    xor a
    ld [$decf], a
    ld [$d77e], a
    ld [$decd], a
    ld a, $3c
    ld [$decc], a
    rst $08
    inc e
    ret


Call_018_6e8f:
    ld a, [$deaf]
    or a
    ld hl, $d171
    ld a, [hl]
    jr nz, jr_018_6ea0

    inc a
    cp $10
    jr c, jr_018_6e9f

    xor a

jr_018_6e9f:
    ld [hl], a

jr_018_6ea0:
    push bc
    push de
    ld a, [$d172]
    call Call_000_019e
    ld a, $10
    ldh [$ff91], a
    ld a, [$d173]
    ldh [$ff90], a
    pop hl
    pop bc
    ld c, $00

jr_018_6eb5:
    inc c
    ld a, [hl+]
    ld e, a
    cp $ff
    jr z, jr_018_6f1a

    ld a, [hl+]
    ld d, a
    rrc b
    jr nc, jr_018_6ec6

jr_018_6ec2:
    inc hl
    inc hl
    jr jr_018_6eb5

jr_018_6ec6:
    push hl
    ld hl, $d711
    ld a, e
    sub [hl]
    ld e, a
    ld a, d
    inc hl
    sbc [hl]
    pop hl
    jr z, jr_018_6edd

    inc a
    jr nz, jr_018_6ec2

    ld a, e
    cp $f8
    jr nc, jr_018_6ee1

    jr jr_018_6ec2

jr_018_6edd:
    cp $a8
    jr nc, jr_018_6ec2

jr_018_6ee1:
    ld a, e
    add $05
    ldh [$ff8f], a
    ld a, [hl+]
    add $f0
    ldh [$ff8e], a
    inc hl
    push hl
    push bc
    ld a, [$d174]
    cp c
    jr nz, jr_018_6efd

    ld a, [$d76d]
    and $02
    jr z, jr_018_6f16

    jr jr_018_6f04

jr_018_6efd:
    ld a, [$d171]
    cp $08
    jr nc, jr_018_6f16

jr_018_6f04:
    ld a, [$ccc9]
    or a
    jr nz, jr_018_6f16

    call Call_000_01a1
    ldh a, [$ff8e]
    add $20
    ldh [$ff8e], a
    call Call_000_01a1

jr_018_6f16:
    pop bc
    pop hl
    jr jr_018_6eb5

jr_018_6f1a:
    ret


    db $fc
    db $ec
    dec d
    nop
    rst $38
    rst $38
    rst $38
    nop
    add b
    dec h
    dec hl
    ld l, a
    ld [hl-], a
    ld sp, $ff6f
    ld bc, $0133
    jr nc, jr_018_6eb5

    rst $38
    ld bc, $000b
    ld [hl], b
    ld c, $ff

Call_018_6f37:
    ld a, [$de8f]
    ld d, a
    ld hl, $6f24
    ld c, $03
    ld e, $ff
    call Call_018_414e
    ret c

    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    inc de
    add a
    ld b, a
    ld a, e
    ld [$d17b], a
    ld a, d
    ld [$d17c], a
    ld a, $01
    ld [$d16d], a
    jp Jump_018_6da5


Call_018_6f5f:
    ld a, [$d81c]
    or a
    ret nz

    ld hl, $00c0
    ld a, [$d17b]
    ld e, a
    ld a, [$d17c]
    ld d, a
    call Call_018_6dcc
    ld a, [$d16e]
    cp $01
    jr nz, jr_018_6f7c

    rst $08
    nop
    ret


jr_018_6f7c:
    cp $ff
    ret nz

    xor a
    ld [$de45], a
    ld [$de44], a
    ld a, [$df32]
    bit 7, a
    jr nz, jr_018_6f95

    ld hl, $def2
    ld [hl], $00
    jp Jump_000_0297


jr_018_6f95:
    and $7f
    jp Jump_018_7154


    db $ed
    ld l, a
    ei
    ld l, a
    add hl, bc
    ld [hl], b
    rla
    ld [hl], b
    dec h
    ld [hl], b
    inc sp
    ld [hl], b
    ld b, c
    ld [hl], b
    ld c, a
    ld [hl], b
    ld h, $00
    ld [$2600], sp
    nop
    nop
    ld [hl], b
    adc c
    nop
    or b
    nop
    nop
    ld [hl], b
    jr nz, jr_018_6fba

jr_018_6fba:
    add b
    nop
    ld e, c
    ld [hl], b
    rst $38
    rst $38
    inc de
    nop
    jr nz, jr_018_6fcc

    inc de
    nop
    ld c, b
    inc c
    inc de
    nop
    ld [hl], b
    dec bc

jr_018_6fcc:
    ld c, e
    nop
    ld [hl], b
    ld a, [bc]
    ld h, e
    nop
    ld [hl], b
    add hl, bc
    sbc e
    nop
    jr nz, jr_018_6fe6

    sbc e
    nop
    ld c, b
    rlca
    sbc e
    nop
    ld [hl], b
    dec c
    rst $38
    ld d, l
    nop
    ld d, b
    nop
    sub b

jr_018_6fe6:
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_6fef

jr_018_6fef:
    ld l, e
    ld a, [hl+]
    ld b, a
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_6ffd

jr_018_6ffd:
    ld l, e
    jr c, jr_018_7047

    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_700b

jr_018_700b:
    ld l, e
    ld b, [hl]
    ld b, a
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_7019

jr_018_7019:
    ld l, e
    ld d, h
    ld b, a
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_7027

jr_018_7027:
    ld l, e
    ld h, h
    ld b, a
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_7035

jr_018_7035:
    ld h, e
    ld [hl], d
    ld b, a
    nop
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_7043

jr_018_7043:
    ld h, e
    add d
    ld b, a
    nop

jr_018_7047:
    sub b
    ld h, d
    sbc c
    ld h, h
    ld h, [hl]
    ld [hl], c
    xor l
    ld [hl], c
    jr nz, jr_018_7051

jr_018_7051:
    ld d, e
    sub d
    ld b, a
    ld de, $6555
    call Call_018_41d5
    jp Jump_018_713c


    ld hl, $6faa
    call Call_018_41eb
    ld de, $6fac
    call Call_018_415b
    ld a, $01
    ld b, $10
    call Call_018_6da5
    ld a, [$de45]
    or a
    ld hl, $6fe1
    jr z, jr_018_7083

    dec a
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $6fc0
    add hl, de

Jump_018_7083:
jr_018_7083:
    ld a, [hl+]
    ld [$d178], a
    ld a, [hl+]
    ld [$d179], a
    ld a, [hl+]
    ld [$d17a], a
    xor a
    ld [$de2b], a
    ld a, $ff
    ld [$df80], a
    call Call_018_6d85
    ld a, $01
    ld [$def3], a
    ld hl, $deaf
    set 5, [hl]
    ret


    ld de, $656b
    call Call_018_41fc
    call Call_018_416e
    ldh a, [rBGP]
    cp $1b
    call z, Call_018_711c

Jump_018_70b6:
    ld hl, $d175
    call Call_000_01e9
    jr z, jr_018_70ca

    cp $0a
    jr nc, jr_018_7107

    cp $09
    jr nz, jr_018_711b

    rst $28
    ld [hl], $18
    ld d, c

jr_018_70ca:
    jr nc, jr_018_711b

    ld a, [$d178]
    or a
    jr z, jr_018_70df

    ld [$d70d], a
    ld hl, $d711
    sub [hl]
    ld [$d722], a
    ld [$d71d], a

jr_018_70df:
    ld a, [$d17a]
    sub $0d
    ld [$d725], a
    push de
    ld a, $ff
    ld [$de96], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $07
    call Call_018_4016
    ld a, $0a
    ld [$de2a], a
    pop de
    ld hl, $deaf
    res 5, [hl]

jr_018_7107:
    ld a, $58
    ld [$d15a], a
    ld a, $00
    ld [$d15b], a
    ld a, $5a
    ld [$d713], a
    ld a, $d1
    ld [$d714], a

jr_018_711b:
    ret


Call_018_711c:
    ld hl, $de44
    ld de, $6fc0
    call Call_018_6dcc
    ld a, [$d16e]
    cp $ff
    ret nz

    ld hl, $de56
    ld [hl], $01
    ld a, [$d174]
    ld [$de45], a
    ld a, [$df32]
    jp Jump_018_7154


Call_018_713c:
Jump_018_713c:
    ld a, [$df0a]
    cp $17
    ret z

    ld a, $01
    ld [$de9a], a
    ld a, $ff
    ld [$de99], a
    ld a, $1e
    ld [$d175], a
    rst $28
    ld l, $c9

Jump_018_7154:
    push af
    rst $28
    inc a
    ld a, $ff
    ld [$de96], a
    ld [$df80], a
    call Call_000_01c5
    pop af
    jp Jump_000_029a


    call Call_018_713c
    ret


    call $6c38
    xor a
    ld [$d15c], a
    ld a, $0f
    ld [$de2e], a
    ld a, [$de44]
    ld c, a
    xor a
    ld b, $08

jr_018_717d:
    rrc c
    adc $00
    dec b
    jr nz, jr_018_717d

    cp $07
    ld a, $01
    jr nz, jr_018_718c

    ld a, $02

jr_018_718c:
    ld [$de2f], a
    xor a
    call Call_018_6da5
    xor a
    ld [$d159], a
    ld a, $3c
    ld [$d176], a
    ld hl, $6f9a
    ld a, [$de8a]
    sub $07
    call Call_000_016e
    jp Jump_018_7083


    nop
    nop
    ld l, e
    ld hl, $d159
    bit 0, [hl]
    jr nz, jr_018_71bb

    ld [hl], $01
    ld a, $50
    ld [$d70f], a

jr_018_71bb:
    ld a, [$de9e]
    or a
    jr nz, jr_018_71d0

    ld a, $05
    ld [$de8a], a
    xor a
    ld [$de45], a
    ld a, $02
    ld [$de2f], a
    ret


jr_018_71d0:
    ld a, [$de8a]
    cp $0e
    jr nz, jr_018_71fe

    ld a, $35
    ld [$cc9c], a
    ld a, [$ccc2]
    or a
    jr z, jr_018_71fe

    xor a
    ldh [$ff9b], a
    ldh [$ff9c], a
    ld hl, $d15c
    ld a, $17
    call Call_000_01cb
    ld a, $02
    ld [$ccc2], a
    ld a, $58
    ld [$decc], a
    ld a, $02
    ld [$decd], a

jr_018_71fe:
    ldh a, [rBGP]
    cp $1b
    call z, Call_018_7208
    jp Jump_018_70b6


Call_018_7208:
    ld a, [$ccc2]
    or a
    ret z

    ld a, [$ded7]
    cp $ff
    ret nz

    ld hl, $d176
    call Call_000_01e9
    ret nz

    ld hl, $d900
    ld e, l
    ld d, h
    ld a, [$d70d]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$d725]
    add $0d
    ld [hl+], a
    ld [hl], $00
    ld hl, $00c0
    call Call_018_6dcc
    ld a, [$d16e]
    cp $ff
    ret nz

    ld a, [$d74b]
    cp $01
    ret nz

    ld a, [$de45]
    ld hl, $0060
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $de44
    or [hl]
    ld [hl], a
    cp $ff
    jr z, jr_018_725f

    ld hl, $de56
    ld [hl], $01
    ld a, $05
    jp Jump_018_7154


jr_018_725f:
    ld a, $06
    ld [$def1], a
    rst $28
    ld l, $af
    ld [$ded4], a
    ld [$df80], a
    ld a, $17
    jp Jump_000_0297


Call_018_7272:
    ld a, $00
    add c
    ld l, a
    ld a, [$d711]
    ld e, a
    ld a, [hl]
    sub e
    ldh [$ff9b], a
    ld a, [$deaf]
    or a
    jp nz, Jump_018_731d

    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_018_72b7

    ld a, $13
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_018_731d

    or a
    jr z, jr_018_729f

    call $7528
    jr jr_018_731d

jr_018_729f:
    ld a, $0a
    add c
    ld l, a
    call Call_018_7553
    jr nc, jr_018_731d

    ld a, $1d
    add c
    ld l, a
    ld [hl], $01
    ld a, $0c
    add c
    ld l, a
    call Call_018_7548
    jr jr_018_731d

jr_018_72b7:
    ld a, $0c
    add c
    ld l, a
    call Call_018_7553
    xor a
    ld [$c933], a
    ld a, [$d74b]
    or a
    jr z, jr_018_72ea

    ld a, $1c
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_018_72ea

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $18
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    call Call_018_7612
    jr nc, jr_018_72ea

    jr nz, jr_018_72ea

    ld a, $01
    ld [$c933], a

jr_018_72ea:
    ld a, $1c
    add c
    ld l, a
    set 0, [hl]
    ld de, $0030
    ld a, $14
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld e, a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld d, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld b, a
    adc d
    ld [hl], a
    cp $90
    jr nc, jr_018_7348

    sub b
    ld d, a
    cp $02
    jr nc, jr_018_731d

    ld a, [$c933]
    or a
    jr z, jr_018_731d

    ld a, [$d725]
    add d
    ld [$d725], a

Jump_018_731d:
jr_018_731d:
    ld a, $1c
    add c
    ld l, a
    bit 2, [hl]
    jr z, jr_018_7346

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    call Call_018_73cd
    xor a
    ld [$d3ea], a
    ldh [$ffab], a
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    push af
    ld a, $1a
    add c
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    call Call_000_0210

jr_018_7346:
    or a
    ret


jr_018_7348:
    ld l, c
    push hl
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_01a7
    pop hl
    ld c, l
    scf
    ret


Call_018_7358:
    ld a, $05
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $09
    add c
    ld l, a
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
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ld a, $17
    add c
    ld l, a
    ld [hl], d
    ld a, $14
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $12
    add c
    ld l, a
    push hl
    push bc
    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    call Call_000_01a4
    pop bc
    pop hl
    ld [hl], a
    ld a, [$d730]
    ld d, a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    add $30
    cp d
    ld b, $86
    ld e, $14
    jr nc, jr_018_73b5

    ld b, $85
    ld e, $04

jr_018_73b5:
    ld a, $1c
    add c
    ld l, a
    ld [hl], b
    ld a, $13
    add c
    ld l, a
    ld [hl], e
    ld a, $1d
    add c
    ld l, a
    ld [hl], $00
    ld a, $0a
    add c
    ld l, a
    call Call_018_7548
    ret


Call_018_73cd:
    ld l, c
    push hl
    ld a, $18
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $1c
    add c
    ld l, a
    ld b, [hl]
    ldh a, [$ff9b]
    ldh [$ffa4], a
    ldh a, [$ff9c]
    ldh [$ffa6], a
    ld a, $0e
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e0], a
    xor a
    ld [$d3ea], a
    call Call_000_021f
    pop hl
    ld c, l
    ret


Call_018_73f5:
    xor a
    ld [$d140], a

jr_018_73f9:
    ld a, [hl]
    or a
    ret z

    ld a, [$de8f]
    cp [hl]
    jr z, jr_018_7407

    inc hl
    inc hl
    inc hl
    jr jr_018_73f9

jr_018_7407:
    push hl
    ld hl, $c900
    ld bc, $0034
    xor a
    call Call_000_0174
    pop hl
    inc hl
    ld de, $c928
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $01
    ld [$d140], a
    ld hl, $c928
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld [$c92e], a
    ld a, $08
    cp [hl]
    jr c, jr_018_7432

    ld a, [hl]

jr_018_7432:
    dec a
    ld [$c92f], a
    inc hl
    ld a, [hl+]
    ld [$c92a], a
    ld a, l
    ld [$c92b], a
    ld a, h
    ld [$c92c], a
    ld a, [$c92a]
    call Call_000_020a
    ld [$c932], a
    ret


Call_018_744d:
    ld a, [$deaf]
    or a
    call z, Call_018_748d
    ld a, $10
    ldh [$ffab], a
    ld a, [$c932]
    ldh [$ffac], a
    ld b, $00
    ld hl, $c900

jr_018_7462:
    ld a, [hl]
    or a
    jr z, jr_018_7484

    push bc
    push hl
    call Call_018_7511
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld c, l
    call Call_018_7272
    pop hl
    pop bc
    jr nc, jr_018_7484

    ld [hl], $00
    ld a, [$c92d]
    dec a
    ld [$c92d], a

jr_018_7484:
    inc hl
    inc b
    ld a, [$c92f]
    cp b
    jr nc, jr_018_7462

    ret


Call_018_748d:
    ld de, $c908
    ld hl, $c92b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d70d]
    ld c, a
    ld a, [$d70e]
    ld b, a

jr_018_749e:
    push de
    push hl
    ld a, [de]
    or a
    jr nz, jr_018_74d5

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    inc a
    jr z, jr_018_74de

    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    bit 7, a
    jr z, jr_018_74bf

    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    jr nz, jr_018_74bf

    inc d

jr_018_74bf:
    ld a, d
    or a
    jr nz, jr_018_74d5

    ld a, e
    cp [hl]
    jr nc, jr_018_74d5

    dec hl
    dec hl
    push bc
    call Call_018_74e1
    pop bc
    pop hl
    pop de
    ld a, $01
    ld [de], a
    push de
    push hl

jr_018_74d5:
    pop hl
    ld de, $0009
    add hl, de
    pop de
    inc de
    jr jr_018_749e

jr_018_74de:
    pop hl
    pop de
    ret


Call_018_74e1:
    push hl
    ld b, $08
    ld hl, $c900

jr_018_74e7:
    ld a, [hl+]
    or a
    jr z, jr_018_74ee

    dec b
    jr nz, jr_018_74e7

jr_018_74ee:
    dec hl
    ld [hl], $01
    ld b, l
    call Call_018_7511
    ld e, l
    ld d, h
    ld a, e
    ld [$c930], a
    ld a, d
    ld [$c931], a
    ld hl, $c92d
    inc [hl]
    pop hl
    push de
    ld bc, $0009
    call Call_000_0180
    pop hl
    ld c, l
    call Call_018_7358
    ret


Call_018_7511:
    ld a, b
    ld hl, $7518
    jp Jump_000_016e


    ld [hl], b
    jp z, $caa0

    ret nc

    jp z, $cb00

    jr nc, @-$33

    ld h, b
    res 2, b
    set 0, b
    bit 5, c
    push hl
    ld a, $03
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $07
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    add d
    ld d, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    pop hl
    ld c, l
    ret


Call_018_7548:
    push hl
    ld a, $0f
    add c
    ld l, a
    ld [hl], $00
    call Call_018_7588
    pop hl

Call_018_7553:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    push hl
    push de
    inc de
    inc de
    ld a, $0f
    add c
    ld l, a
    call Call_018_759a
    pop de
    pop hl
    ld c, l
    ld l, a
    push af
    ldh a, [$ff8f]
    or a
    jr z, jr_018_7586

    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    ld a, l
    call Call_000_0171
    ld a, $18
    add c
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $04
    add e
    ld [hl+], a
    ld a, $00
    adc d
    ld [hl], a

jr_018_7586:
    pop af
    ret


Call_018_7588:
    inc hl
    ld a, $fe
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ret


    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a

Call_018_759a:
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
    jr nc, jr_018_75b3

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_018_75b3:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $02
    add c
    ld l, a

jr_018_75bd:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_018_75dc

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
    call Call_018_4030
    pop bc
    pop hl
    jr jr_018_75fc

jr_018_75dc:
    cp $ff
    jr nz, jr_018_75e8

    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a
    jr jr_018_75fc

jr_018_75e8:
    cp $fe
    jr nz, jr_018_7604

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
    jr jr_018_7605

jr_018_75fc:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_018_75bd

jr_018_7604:
    or a

jr_018_7605:
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
    ret


Call_018_7612:
    ldh a, [$ff9b]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d747]
    cp b
    jr c, jr_018_7652

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_018_7652

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_018_7642

    inc a
    cp b
    jr nz, jr_018_7652

    xor a
    scf
    ret


jr_018_7642:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_018_7652

    xor a
    inc a
    scf
    ret


jr_018_7652:
    or a
    ret


    inc bc
    ld e, a
    halt
    ld de, $7675
    dec d
    xor $76
    nop
    nop
    ld [bc], a
    halt
    nop
    ld bc, $0f28
    nop
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ld b, b
    ld bc, $1318
    nop
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    rst $38
    rst $38
    dec c
    halt
    sub b
    nop
    jr @+$0a

    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ret nz

    nop
    jr jr_018_768f

    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    nop
    ld bc, $0f10
    dec b
    ld d, d

jr_018_768f:
    ld [hl], a
    ld a, a
    ld [hl], a
    jr c, @+$03

    ld [$0513], sp
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    ld c, b
    ld bc, $1408
    dec b
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    ld e, b
    ld bc, $150c
    dec b
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    ld l, b
    ld bc, $160c
    dec b
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    ld a, b
    ld bc, $170e
    dec b
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    adc b
    ld bc, $1810
    dec b
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    ret nz

    ld bc, $1b20
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    add sp, $01
    ld [$051e], sp
    ld c, h
    ld [hl], a
    ld a, d
    ld [hl], a
    db $10
    ld [bc], a
    jr nz, jr_018_76fe

    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ld d, b
    ld [bc], a
    jr nc, jr_018_770b

    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    rst $38
    rst $38
    ld a, [bc]
    halt
    or b
    nop
    ld b, $0a
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ret nc

    nop
    ld [$050c], sp

jr_018_76fe:
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    db $10
    ld bc, $100a
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a

jr_018_770b:
    jr nc, jr_018_770e

    inc c

jr_018_770e:
    ld [de], a
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ld [hl], b
    ld bc, $160e
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    sub b
    ld bc, $1810
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ret nc

    ld bc, $1c12
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ldh a, [rSB]
    inc d
    ld e, $05
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    jr nc, jr_018_773c

    ld d, $22

jr_018_773c:
    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    ld d, b
    ld [bc], a
    jr jr_018_7769

    dec b
    ld d, d
    ld [hl], a
    ld a, a
    ld [hl], a
    rst $38
    rst $38
    ld [bc], a
    ld e, b
    ld [hl], a
    ld h, h
    ld [hl], a
    ld [bc], a
    inc b
    ld l, c
    ld [hl], a
    ld [hl], l
    ld [hl], a
    inc bc
    xor b
    ld [hl], a
    inc b
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    cp $a8
    ld [hl], a
    or h
    nop
    rst $38

jr_018_7769:
    xor b
    ld [hl], a
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    cp $a8
    ld [hl], a
    or h
    ld [bc], a
    rst $38
    nop
    nop
    ld bc, $2e01
    nop
    nop
    ld [bc], a
    ld bc, $2e2e
    ld [bc], a
    adc b
    ld [hl], a
    rst $38
    rst $38
    and b
    rst $38
    rst $38
    and b
    rst $38
    and a
    xor b
    rst $38
    xor a
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
    or b
    ld [hl], a
    cp l
    ld [hl], a
    jp z, $df77

    ld [hl], a
    ld hl, sp+$07
    ld hl, sp+$00
    ld hl, sp-$08
    nop
    stop
    ld [$3000], sp
    add b
    ld sp, hl
    ld [$00f8], sp
    ld hl, sp-$07
    nop
    stop
    ld [$3000], sp
    add b
    ldh a, [rIF]
    ld hl, sp+$00
    ld hl, sp-$10
    nop
    stop
    ld [$3000], sp
    nop
    ld [$1000], sp
    nop
    ld [$3000], sp
    add b
    pop af
    db $10
    ld hl, sp+$00
    ld hl, sp-$0f
    nop
    stop
    ld [$3000], sp
    nop
    ld [$1000], sp
    nop
    ld [$3000], sp
    add b

Call_018_77f4:
    xor a
    ld [$cca4], a
    ld a, [$de8f]
    ld c, a

jr_018_77fc:
    ld a, [hl+]
    or a
    ret z

    cp c
    jr nz, jr_018_77fc

    ld [$cca4], a
    ret


Call_018_7806:
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
    jr z, jr_018_7821

    ld e, $08

jr_018_7821:
    ld d, $00
    push de
    call Call_018_782a
    pop de
    ld d, $f8

Call_018_782a:
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

jr_018_7844:
    ld a, [hl+]
    or a
    ret z

    cp b
    jr z, jr_018_784d

    inc hl
    jr jr_018_7844

jr_018_784d:
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


Call_018_78ac:
    ld hl, $cb80
    ld bc, $0038
    xor a
    call Call_000_0174
    ld hl, $cb81
    ld [hl], $01
    ret


    ld a, $02
    ld [$cb81], a
    call Call_018_795c
    ret


Call_018_78c5:
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
    call Call_018_4030
    ret


Call_018_7928:
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


Call_018_795c:
    ld a, [$cb80]
    or a
    ret z

    ld hl, $cb88

jr_018_7964:
    ld a, l
    ld [$cb86], a
    ld a, h
    ld [$cb87], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    or e
    jr z, jr_018_7995

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
    call Call_018_4030
    ld a, b
    or a
    jr nz, jr_018_7992

    call Call_018_7928

jr_018_7992:
    pop hl
    jr jr_018_7964

jr_018_7995:
    ret


Call_018_7996:
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
    call Call_018_414e
    ret c

    push hl
    call Call_018_78ac
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

jr_018_79ce:
    ld a, [hl+]
    or [hl]
    jr z, jr_018_79f0

    dec hl
    push hl
    ld a, [hl+]
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8b], a
    ld de, $7b66
    call Call_018_78c5
    ld hl, $cc9d
    set 0, [hl]
    ld hl, $d141
    inc [hl]
    pop hl
    ld de, $0002
    add hl, de
    jr jr_018_79ce

jr_018_79f0:
    ld hl, $d154
    ld a, [$d144]
    ld [hl+], a
    ld a, [$d146]
    ld [hl+], a
    ld a, [$d145]
    ld [hl+], a
    ld a, [$d147]
    ld [hl+], a
    ld b, $18
    ld de, $7a20
    call Call_018_4099
    ld b, $18
    ld de, $7a14
    call Call_018_408d
    ret


    xor a
    ld [$d298], a
    ld a, $c9
    ld [$c0f0], a
    jp Jump_000_01c5


    ld a, e
    cp $a0
    jr nc, jr_018_7a3a

    ld b, d
    inc b
    ld hl, $d154
    ld a, [hl+]
    cp b
    jr nc, jr_018_7a3a

    ld a, [hl+]
    cp b
    jr nc, jr_018_7a3d

    ld a, [hl+]
    cp b
    jr nc, jr_018_7a3a

    ld a, [hl+]
    cp b
    jr nc, jr_018_7a42

jr_018_7a3a:
    ld b, $ff
    ret


jr_018_7a3d:
    ld a, [$d14c]
    jr jr_018_7a45

jr_018_7a42:
    ld a, [$d14d]

jr_018_7a45:
    push de
    add e
    ld e, a
    ld a, [$d7d2]
    add d
    ld d, a
    call Call_018_4140
    ld b, [hl]
    pop de
    ret


Call_018_7a53:
    ld a, [$d81c]
    or a
    jr nz, jr_018_7a8d

    ld a, [$d141]
    or a
    jr z, jr_018_7a8d

    ld hl, $d142
    bit 0, [hl]
    jr nz, jr_018_7a6d

    set 0, [hl]
    call Call_018_7e8f
    jr jr_018_7a8d

jr_018_7a6d:
    ld hl, $de00
    ld a, [hl]
    ld [$d158], a
    ld [hl], $01
    xor a
    ld [$d153], a
    call Call_018_795c
    call Call_018_4032
    ld a, [$d153]
    or a
    call nz, Call_018_7c8d
    ld a, [$d158]
    ld [$de00], a

jr_018_7a8d:
    ret


Jump_018_7a8e:
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
    jr nz, jr_018_7b4c

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
    jr jr_018_7b58

jr_018_7b4c:
    ld a, $0b
    add c
    ld l, a
    ld [hl], $00
    ld a, $0c
    add c
    ld l, a
    ld [hl], $0a

jr_018_7b58:
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
    jr z, jr_018_7b74

    dec b
    jr z, jr_018_7b71

    inc b
    inc b
    jp z, Jump_018_7a8e

jr_018_7b71:
    ld b, $00
    ret


jr_018_7b74:
    ld a, [$deaf]
    or a
    jr nz, jr_018_7be4

    ld a, $01
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_018_7b8d

    set 0, [hl]
    call Call_018_7ca2
    ld a, $0d
    add c
    ld l, a
    ld [hl], $00

jr_018_7b8d:
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
    jr z, jr_018_7ba9

    cpl
    inc a

jr_018_7ba9:
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [hl], a
    cp $10
    jr c, jr_018_7bbb

    sub $10
    ld [hl], a
    call Call_018_7ca2

jr_018_7bbb:
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
    jr z, jr_018_7be4

    ld l, c
    push hl
    call Call_018_7c42
    pop hl
    ld c, l

jr_018_7be4:
    ld a, [$de9b]
    cp $01
    jr nz, jr_018_7c15

    ld a, [$c2d1]
    cp $01
    jr z, jr_018_7bf6

    cp $03
    jr nz, jr_018_7c13

jr_018_7bf6:
    ld a, $03
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    ld a, [$c2d3]
    add $0b
    cp [hl]
    jr c, jr_018_7c13

    cp b
    jr nc, jr_018_7c13

    ld a, [$d151]
    ld b, a
    ld de, $c2d5
    ld a, [de]
    add b
    ld [de], a

jr_018_7c13:
    jr jr_018_7c3f

jr_018_7c15:
    ld a, [$c2cd]
    or a
    jr z, jr_018_7c3f

    ld a, [$c2d1]
    cp $01
    jr nz, jr_018_7c3f

    ld a, $03
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    ld a, [$c2d3]
    add $0b
    cp [hl]
    jr c, jr_018_7c3f

    cp b
    jr nc, jr_018_7c3f

    ld a, [$d151]
    ld b, a
    ld de, $c2d5
    ld a, [de]
    add b
    ld [de], a

jr_018_7c3f:
    ld b, $01
    ret


Call_018_7c42:
    ld a, [$d74b]
    cp $01
    jr nz, jr_018_7c6d

    ld a, [$c2cc]
    bit 7, a
    jr nz, jr_018_7c6d

    ld a, $03
    add c
    ld l, a
    ld b, [hl]
    add $ff
    ld l, a
    ld a, [$d725]
    add $0d
    cp [hl]
    jr c, jr_018_7c6d

    cp b
    jr nc, jr_018_7c6d

    ld a, [$d151]
    ld b, a
    ld de, $d732
    ld a, [de]
    add b
    ld [de], a

jr_018_7c6d:
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_018_7c7a

    call Call_018_7d20
    jr jr_018_7c7d

jr_018_7c7a:
    call Call_018_7d38

jr_018_7c7d:
    ret nc

    ld hl, $d153
    inc [hl]
    ld a, [$d151]
    ld [$d152], a
    ld e, a
    call Call_018_406e
    ret


Call_018_7c8d:
    call Call_018_7d8a
    jr c, jr_018_7c97

    call Call_018_7da4
    jr nc, jr_018_7ca1

jr_018_7c97:
    xor a
    ld [$d73a], a
    ld a, $14
    ld [$d739], a
    ret


jr_018_7ca1:
    ret


Call_018_7ca2:
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

jr_018_7cd0:
    push de
    push bc
    push hl
    ld a, [hl]
    call Call_018_40b1
    pop hl
    ld a, [$d150]
    ld e, a
    ld d, $00
    add hl, de
    pop bc
    pop de
    inc d
    dec b
    jr nz, jr_018_7cd0

    pop hl
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_018_7d07

    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    sub $01
    jr nc, jr_018_7cfb

    ld a, [$d150]
    dec a

jr_018_7cfb:
    ld [hl], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    dec a
    and $0f
    ld [hl], a
    jr jr_018_7d1f

jr_018_7d07:
    ld a, [$d150]
    ld b, a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    inc a
    cp b
    jr c, jr_018_7d15

    xor a

jr_018_7d15:
    ld [hl], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    inc a
    and $0f
    ld [hl], a

jr_018_7d1f:
    ret


Call_018_7d20:
    ld a, [$d163]
    or a
    jr nz, jr_018_7d2f

    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jr jr_018_7d45

jr_018_7d2f:
    ld a, [$d722]
    add $f8
    ldh [$ff98], a
    jr jr_018_7d7a

Call_018_7d38:
    ld a, [$d163]
    or a
    jr nz, jr_018_7d73

    ld a, [$d722]
    add $06
    ldh [$ff98], a

Jump_018_7d45:
jr_018_7d45:
    ld a, [$cc99]
    or a
    jr nz, jr_018_7d51

    ld d, $f8
    call Call_018_7d5f
    ret c

jr_018_7d51:
    ld d, $fd
    call Call_018_7d5f
    ret c

    ld d, $05
    call Call_018_7d5f
    ret c

    ld d, $0c

Call_018_7d5f:
jr_018_7d5f:
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


jr_018_7d73:
    ld a, [$d722]
    add $08
    ldh [$ff98], a

Jump_018_7d7a:
jr_018_7d7a:
    ld d, $fe
    call Call_018_7d5f
    ret c

    ld d, $05
    call Call_018_7d5f
    ret c

    ld d, $0c
    jr jr_018_7d5f

Call_018_7d8a:
    ld a, [$d163]
    or a
    jr nz, jr_018_7d9a

    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jp Jump_018_7d45


jr_018_7d9a:
    ld a, [$d722]
    add $fa
    ldh [$ff98], a
    jp Jump_018_7d7a


Call_018_7da4:
    ld a, [$d163]
    or a
    jr nz, jr_018_7db4

    ld a, [$d722]
    add $06
    ldh [$ff98], a
    jp Jump_018_7d45


jr_018_7db4:
    ld a, [$d722]
    add $07
    ldh [$ff98], a
    jp Jump_018_7d7a


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
    jr z, jr_018_7df9

    ld a, [$d149]
    cp b
    jr z, jr_018_7e48

    ld a, [$d14a]
    cp b
    jr z, jr_018_7e22

    ld a, [$d14b]
    cp b
    jr z, jr_018_7e6a

    jp Jump_018_7e8d


jr_018_7df9:
    ld a, [$d144]
    dec a
    ld b, a

jr_018_7dfe:
    ldh a, [rLY]
    cp b
    jr c, jr_018_7dfe

jr_018_7e03:
    ldh a, [rSTAT]
    and $03
    jr z, jr_018_7e03

jr_018_7e09:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_018_7e09

    ld a, [$d14e]
    ldh [rSCX], a
    ld a, [$d149]
    ld b, a
    ld a, [$d14a]
    cp b
    jr z, jr_018_7e3d

    ldh [rLYC], a
    jr jr_018_7e8d

jr_018_7e22:
    ld a, [$d146]
    dec a
    ld b, a

jr_018_7e27:
    ldh a, [rLY]
    cp b
    jr c, jr_018_7e27

jr_018_7e2c:
    ldh a, [rSTAT]
    and $03
    jr z, jr_018_7e2c

jr_018_7e32:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_018_7e32

    ld a, [$d7d1]
    ldh [rSCX], a

jr_018_7e3d:
    ld a, [$d149]
    cp $c8
    jr nc, jr_018_7e85

    ldh [rLYC], a
    jr jr_018_7e8d

jr_018_7e48:
    ld a, [$d145]
    dec a
    ld b, a

jr_018_7e4d:
    ldh a, [rLY]
    cp b
    jr c, jr_018_7e4d

jr_018_7e52:
    ldh a, [rSTAT]
    and $03
    jr z, jr_018_7e52

jr_018_7e58:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_018_7e58

    ld a, [$d14f]
    ldh [rSCX], a
    ld a, [$d14b]
    ldh [rLYC], a
    jr jr_018_7e8d

jr_018_7e6a:
    ld a, [$d147]
    dec a
    ld b, a

jr_018_7e6f:
    ldh a, [rLY]
    cp b
    jr c, jr_018_7e6f

jr_018_7e74:
    ldh a, [rSTAT]
    and $03
    jr z, jr_018_7e74

jr_018_7e7a:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_018_7e7a

    ld a, [$d7d1]
    ldh [rSCX], a

jr_018_7e85:
    ld a, $7f
    ldh [rLYC], a
    xor a
    ld [$de2c], a

Jump_018_7e8d:
jr_018_7e8d:
    pop bc
    ret


Call_018_7e8f:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $18
    dec hl
    ld [hl], $7d
    dec hl
    ld [hl], $be
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $18
    dec hl
    ld [hl], $7d
    dec hl
    ld [hl], $da
    dec hl
    ld [hl], $c3
    ret


    nop
    ld bc, $0603
    ld a, [$d74e]
    cp $3b
    ld c, $00
    ret nz

    ldh a, [$ffaa]
    dec a
    jr nz, jr_018_7ef3

    ld a, $01
    ld [$d16c], a
    ld hl, $d16f
    ld a, [hl]
    inc [hl]
    or a
    jr nz, jr_018_7ef3

    ld a, [$d16d]
    or a
    jr nz, jr_018_7ef3

    ld hl, $d167
    ld a, [hl]
    ld [hl], $00
    ld hl, $d169
    add [hl]
    ld [hl], a
    call Call_018_7fc1
    ld hl, $d166
    ld [hl], $1e
    ld hl, $d16e
    ld [hl], $01

jr_018_7ef3:
    ld d, $05
    ldh a, [$ffaa]
    or a
    jr z, jr_018_7f02

    ld a, [$d16e]
    or a
    jr z, jr_018_7f02

    ld d, $10

jr_018_7f02:
    ldh a, [$ffaa]
    or a
    ld a, [$d168]
    jr nz, jr_018_7f0f

    jr jr_018_7f0f

    ld a, [$d16a]

jr_018_7f0f:
    ld b, a
    add d
    ld e, a
    ld a, [$d751]
    and $0f
    cp b
    jr c, jr_018_7f21

    cp e
    jr nc, jr_018_7f21

    ld b, $03
    jr jr_018_7f23

jr_018_7f21:
    ld b, $00

jr_018_7f23:
    ld a, b
    ld [$d74e], a
    ld c, $01
    ret


Call_018_7f2a:
    push hl
    ld hl, $d165
    ld bc, $000b
    xor a
    call Call_000_0174
    pop hl

jr_018_7f36:
    ld a, [hl]
    or a
    ret z

    ld a, [$de8f]
    cp [hl]
    jr z, jr_018_7f42

    inc hl
    jr jr_018_7f36

jr_018_7f42:
    ld a, $01
    ld [$d165], a
    ld b, $18
    ld de, $7ebb
    call Call_018_40a5
    call Call_018_7fc1
    ld hl, $d16e
    ld [hl], $02
    ret


Call_018_7f58:
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
    jr z, jr_018_7f6d

    dec [hl]

jr_018_7f6d:
    xor a
    ld [$d16b], a
    ld hl, $d894
    ld a, $03
    cp [hl]
    jr z, jr_018_7f81

    inc hl
    cp [hl]
    jr z, jr_018_7f81

    inc hl
    cp [hl]
    jr nz, jr_018_7f86

jr_018_7f81:
    ld a, $01
    ld [$d16b], a

jr_018_7f86:
    ld hl, $d894
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$deaf]
    or a
    jr nz, jr_018_7fde

    ld hl, $d166
    call Call_000_01e9
    jr nz, jr_018_7fde

    ld [hl], $1e
    ld hl, $d167
    ld a, [hl]
    inc a
    cp $04
    jr c, jr_018_7fa7

    xor a

jr_018_7fa7:
    ld [hl], a
    jr z, jr_018_7fc1

    ld e, a
    ld a, [$d16b]
    or a
    jr z, jr_018_7fc1

    ld d, $00
    ld hl, $7eb7
    add hl, de
    ld a, [hl]
    ld hl, $d168
    sub [hl]
    ld hl, $d725
    add [hl]
    ld [hl], a

Call_018_7fc1:
jr_018_7fc1:
    ld hl, $d167
    ld e, [hl]
    ld d, $00
    ld hl, $7eb7
    add hl, de
    ld a, [hl]
    ld [$d168], a
    ld a, [$d169]
    add e
    and $03
    ld e, a
    ld hl, $7eb7
    add hl, de
    ld a, [hl]
    ld [$d16a], a

jr_018_7fde:
    ret


    db $e3
    ld a, a
    or l
    ld b, d
    ld d, $43
    ld d, $43
    ld d, $43
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
