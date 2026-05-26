; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    jp Jump_00b_4b3c


    jp Jump_00b_4dca


    jp Jump_00b_5eb2


Call_00b_4009:
    ld [$db0b], a
    ld [$db0c], a
    ret


    ld b, $00
    ld e, b
    ld d, b
    ld c, $01

Call_00b_4016:
    call Call_00b_4094
    call Call_00b_40ae

Call_00b_401c:
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


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00b_404d:
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
    jr jr_00b_404d

Call_00b_4073:
Jump_00b_4073:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_00b_4077:
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
    jr nz, jr_00b_4077

    ret


Call_00b_4094:
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


Call_00b_40ae:
jr_00b_40ae:
    ld a, [$cca8]
    and $07
    jr nz, jr_00b_40ae

jr_00b_40b5:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_00b_40b5

    ret


Call_00b_40be:
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00b_40c2:
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
    jr z, jr_00b_40d7

    dec [hl]
    xor a
    sub $01
    ret


jr_00b_40d7:
    inc l

jr_00b_40d8:
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
    jr nz, jr_00b_40eb

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_00b_40eb:
    cp $ff
    jr nz, jr_00b_40fb

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_00b_40d8

jr_00b_40fb:
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


Call_00b_410d:
    ld a, $01
    ld [$d77e], a
    ld a, $0f
    call Call_000_01cb
    ret


Call_00b_4118:
    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


Call_00b_411f:
    push de
    ret


Call_00b_4121:
jr_00b_4121:
    ld a, [$cca8]
    and $07
    jp z, Jump_000_01c5

    call Call_000_01c5
    jr jr_00b_4121

Call_00b_412e:
    call Call_00b_40c2
    jr z, jr_00b_4141

    jr c, jr_00b_413f

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_00b_4143

jr_00b_413f:
    or a
    ret


jr_00b_4141:
    scf
    ret


Call_00b_4143:
    jp hl


Call_00b_4144:
    inc hl
    ld a, $fe
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_00b_414b:
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
    jr c, jr_00b_416a

    dec hl
    ld b, [hl]
    jr jr_00b_41b8

jr_00b_416a:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_00b_4173:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_00b_4199

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
    call Call_00b_411f
    pop bc
    pop hl

jr_00b_4191:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_00b_4173

jr_00b_4199:
    cp $fe
    jr c, jr_00b_41b1

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_00b_41a7

    ld [hl], $00
    jr jr_00b_4191

jr_00b_41a7:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_00b_41b9

jr_00b_41b1:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_00b_41b8:
    or a

jr_00b_41b9:
    ld [hl], b
    ret


Call_00b_41bb:
    ld a, [$ce53]
    ld e, a
    ld a, [$ce54]
    ld d, a
    ld a, b
    jp Jump_000_0171


    call Call_000_019e

Call_00b_41ca:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00b_41d4:
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
    jr jr_00b_41d4

    nop
    rst $38
    nop
    db $fc
    nop
    di
    inc bc
    rst $28
    rlca
    rst $08
    ld c, $df
    rra
    cp a
    dec e
    cp a
    nop
    rrca
    nop
    ldh a, [c]
    ldh [$fff8], a
    sbc b
    db $fd
    dec a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $18
    ret nz

    rst $28
    add b
    rst $00
    ret nz

    ei
    ldh a, [$fffd]
    ld hl, sp-$03
    dec bc
    cp a
    inc bc
    cp a
    ld bc, $01df
    db $db
    nop
    rst $20
    nop
    di
    nop
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $00

jr_00b_424f:
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    jr jr_00b_424f

    cp $78
    cp $b0
    db $fc
    add b
    db $fd
    nop
    or c
    nop
    jp $0f00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    rst $00
    ld b, $af
    rrca
    ld a, a
    rra
    ld a, a
    nop
    jp Jump_000_3c00


    inc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    and a
    or b
    ei
    ld a, h
    db $fd
    db $fc
    cp $fc
    cp $1f
    ld a, a
    rra
    ld a, a
    ld a, [bc]
    ccf
    rlca
    xor a
    ld bc, $00cf
    rst $20
    nop
    di
    nop
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rlca
    rst $38
    adc h
    rst $38
    nop
    rst $18
    nop
    adc a
    nop
    jr nc, jr_00b_4333

    cp $b8
    cp $80
    db $fd
    nop
    ld sp, hl
    nop
    db $e3
    nop
    rst $30
    nop
    adc a
    nop
    ld a, a
    nop
    nop
    inc b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$0000], sp
    add b
    nop
    nop
    nop
    nop
    jr z, jr_00b_42ea

    ld [hl], h
    jr @+$5a

    inc l
    ld h, h
    jr jr_00b_4319

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_42ea:
    ld bc, $0000
    nop
    nop
    ld c, b
    add b
    ld h, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    stop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
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
    nop
    nop

jr_00b_4319:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00b_4348

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_00b_4333:
    db $10
    ld b, $07
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    db $10

jr_00b_4348:
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    dec bc
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    stop
    ld bc, $0201
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    ld b, $07
    ld bc, $1008
    db $10
    db $10
    db $10
    inc bc
    dec b
    nop
    ld bc, $0201
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    inc b
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld [$1010], sp
    db $10
    db $10
    ld b, $07
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld bc, $1008
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    dec bc
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    inc b
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld bc, $1008
    db $10
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    inc b
    dec bc
    db $10
    stop
    ld [bc], a
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    ld b, $07
    ld bc, $1008
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    inc b
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    ld b, $07
    ld bc, $1008
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    inc b
    dec bc
    db $10
    db $10
    stop
    ld [bc], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    ld bc, $0201
    db $10
    db $10
    db $10
    stop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld bc, $1008
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    inc b
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    ld de, $1111
    ld c, $11
    ld de, $0e11
    ld de, $1111
    ld de, $110e
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    ld c, $11
    ld de, $1111
    ld c, $11
    ld de, $1111
    inc c
    ld de, $1111
    ld c, $11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    inc c
    ld de, $1111
    ld c, $11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $0d11
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $1111
    ld de, $110d
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    ld de, $0e11
    ld de, $110c
    ld de, $110f
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $110c
    ld de, $110f
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $110e
    ld de, $0f11
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $0c11
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $0c11
    ld de, $1111
    inc c
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $0c11
    ld de, $110e
    ld de, $0f11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $110f
    ld de, $1111
    ld de, $0c11
    dec c
    ld de, $0c11
    ld de, $1111
    ld c, $0f
    ld de, $1111
    ld de, $1111
    inc c
    dec c
    ld de, $0c11
    ld de, $1111
    ld c, $11
    ld de, $0e11
    ld de, $0c11
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $110c
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $0f0c
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld c, $11
    inc c
    ld de, $1111
    ld de, $1111
    ld de, $110c
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0c11
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld de, $110e
    ld de, $0f11
    ld de, $0f11
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    rrca
    rrca
    ld de, $1111
    inc c
    ld de, $1111
    ld de, $110f
    ld de, $110c
    ld de, $0f11
    ld de, $1111
    inc c
    ld de, $1111
    ld de, $110f
    ld de, $110c
    ld de, $1111
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $110e
    ld de, $0f11
    ld de, $1111
    ld de, $110e
    ld de, $0e11
    ld de, $1111
    ld de, $110e
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    ld c, $11
    ld de, $1111
    ld c, $11
    ld de, $1111
    inc c
    ld de, $1111
    ld c, $11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    inc c
    ld de, $1111
    ld c, $11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $0d11
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $1111
    ld de, $110d
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    ld de, $0e11
    ld de, $110c
    ld de, $110f
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $110c
    ld de, $110f
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $110e
    ld de, $0f11
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $0c11
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $0c11
    ld de, $1111
    inc c
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $0c11
    ld de, $110e
    ld de, $0f11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $110f
    ld de, $1111
    ld de, $0c11
    dec c
    ld de, $0c11
    ld de, $1111
    ld c, $0f
    ld de, $1111
    ld de, $1111
    inc c
    dec c
    ld de, $0c11
    ld de, $1111
    ld c, $11
    ld de, $0e11
    ld de, $0c11
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $110c
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $0f0c
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld c, $11
    inc c
    ld de, $1111
    ld de, $1111
    ld de, $110c
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0c11
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld de, $110e
    ld de, $0f11
    ld de, $0f11
    ld de, $1111
    ld de, $1111
    ld de, $0e11
    ld de, $1111
    rrca
    rrca
    ld de, $1111
    inc c
    ld de, $1111
    ld de, $110f
    ld de, $110c
    ld de, $0f11
    ld de, $1111
    inc c
    ld de, $1111
    ld de, $110f
    ld de, $110c
    ld de, $1111
    ld de, $110f
    ld de, $1111
    ld de, $1111
    ld c, $11
    ld de, $0f11
    ld de, $1111
    rrca
    ld de, $1111
    ld de, $1111
    ld de, $110e
    ld de, $0f11
    ld de, $0200
    nop
    nop
    nop
    ld bc, $0000
    ld b, b
    nop
    nop
    nop
    jr nz, jr_00b_4b38

jr_00b_4b38:
    ldh [rIE], a
    ret nz

    db $fc

Jump_00b_4b3c:
    ld bc, $0004
    ld de, $0000
    call Call_00b_4094
    call Call_00b_40ae
    call Call_00b_401c
    call Call_000_0288
    ld hl, $ca00
    ld bc, $0016
    xor a
    call Call_000_0174
    ld a, $8e
    ld de, $8800
    call Call_000_020d
    ld hl, $4206
    ld de, $9000
    ld bc, $0120
    call Call_000_0183
    ld hl, $4326
    ld de, $9800
    call Call_00b_4073
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    call Call_00b_4d4f
    ld b, $3c
    call Call_000_023a
    ld hl, $4b2a
    ld de, $ca04
    ld bc, $0004
    call Call_000_0180
    ld bc, $1b1e
    call Call_00b_4cbf
    ld b, $78
    call Call_00b_4cdd
    ld hl, $4b2e
    ld de, $ca0c
    ld bc, $0004
    call Call_000_0180

jr_00b_4ba7:
    call Call_00b_4ce8
    call Call_00b_4d11
    ld a, [$ca09]
    cp $e0
    jr nc, jr_00b_4ba7

    cp $46
    jr c, jr_00b_4ba7

    ld hl, $4b32
    ld de, $ca0c
    ld bc, $0004
    call Call_000_0180

jr_00b_4bc4:
    call Call_00b_4ce8
    call Call_00b_4d11
    ld a, [$ca09]
    cp $e0
    jr nc, jr_00b_4bc4

    cp $4c
    jr c, jr_00b_4bc4

    ld b, $3c
    call Call_00b_4cdd
    ld b, $5a
    call Call_00b_4cdd

jr_00b_4bdf:
    call Call_00b_4ce8
    ld hl, $ca06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fffc
    add hl, de
    ld a, l
    ld [$ca06], a
    ld a, h
    ld [$ca07], a
    ld a, [$ca06]
    ld e, a
    ld a, [$ca07]
    ld d, a
    call Call_000_016b
    ld hl, $ca04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_00b_4118
    jr nc, jr_00b_4bdf

    ld b, $3c
    call Call_00b_4cdd
    ld bc, $003c
    call Call_00b_4cbf
    ld a, $55
    ld [$de96], a
    ld b, $78
    call Call_00b_4cdd
    ld bc, $ff78
    call Call_00b_4cbf
    ld hl, $4728
    ld de, $9800
    call Call_00b_4073
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld hl, $4b36
    ld de, $ca04
    ld bc, $0004
    call Call_000_0180
    ld hl, $ca00
    ld bc, $0004
    xor a
    call Call_000_0174
    ld a, $ff
    ld [$ca02], a
    ld b, $3c
    call Call_00b_4cdd
    ld bc, $1b3c
    call Call_00b_4cbf
    ld b, $78
    call Call_00b_4cdd
    ld hl, $ca0c
    ld bc, $0004
    xor a
    call Call_000_0174
    ld a, $ff
    ld [$ca0a], a

jr_00b_4c6f:
    call Call_00b_4ce8
    ld de, $0008
    ld hl, $ca0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$ca0c], a
    ld a, h
    ld [$ca0d], a
    ld de, $fffc
    ld hl, $ca0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$ca0e], a
    ld a, h
    ld [$ca0f], a
    call Call_00b_4d36
    ld a, [$ca0b]
    cp $e0
    jr nc, jr_00b_4c6f

    cp $80
    jr c, jr_00b_4c6f

    ld b, $3c
    call Call_00b_4cdd
    ld bc, $000f
    ld de, $0000
    call Call_00b_4cc2
    ld a, $07
    call Call_00b_4009
    ld b, $1e
    call Call_00b_4cdd
    jp Jump_000_02bb


Call_00b_4cbf:
    ld de, $d01c

Call_00b_4cc2:
    call Call_00b_4094

jr_00b_4cc5:
    call Call_00b_4ce8
    ld a, [$cca8]
    and $07
    jr nz, jr_00b_4cc5

    jr jr_00b_4cd4

jr_00b_4cd1:
    call Call_00b_4ce8

jr_00b_4cd4:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_00b_4cd1

    ret


Call_00b_4cdd:
jr_00b_4cdd:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_00b_4ce8
    pop bc
    jr jr_00b_4cdd

Call_00b_4ce8:
    call Call_000_01c5
    call Call_000_01d1
    call Call_00b_4d8b
    call Call_00b_4cf5
    ret


Call_00b_4cf5:
    ld hl, $ca00
    ld de, $ca04
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ld [$d7d1], a
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    adc [hl]
    ld [hl+], a
    ld [$d7d2], a
    ret


Call_00b_4d11:
    ld hl, $4b2e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca0c]
    ld e, a
    ld a, [$ca0d]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, [$4b2a]
    ld e, a
    ld a, [$4b2b]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca04], a
    ld a, h
    ld [$ca05], a

Call_00b_4d36:
    ld hl, $ca08
    ld de, $ca0c
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
    adc [hl]
    ld [hl+], a
    call Call_00b_4d7a
    ret


Call_00b_4d4f:
    ld a, $1e
    call Call_000_01a4
    ld [$ca14], a
    ld a, $e0
    ld [$ca09], a
    ld a, $48
    ld [$ca0b], a
    call Call_00b_4d7a
    xor a
    ld [$d724], a
    ld [$d70a], a
    ld a, $01
    ld [$d703], a
    ld c, $05
    call Call_00b_4dbc
    xor a
    ld [$ca15], a
    ret


Call_00b_4d7a:
    ld a, [$ca09]
    add $00
    ld [$d722], a
    ld a, [$ca0b]
    add $f3
    ld [$d725], a
    ret


Call_00b_4d8b:
Jump_00b_4d8b:
    ld a, [$ca15]
    or a
    jr z, jr_00b_4d99

    call Call_00b_410d
    ld a, $01
    ld [$cca6], a

jr_00b_4d99:
    ld a, [$ca14]
    call Call_000_019e
    ld a, [$ca09]
    ldh [$ff9b], a
    ld a, [$ca0b]
    ldh [$ff9c], a
    ld a, $80
    ldh [$ffac], a
    ld hl, $ca10
    ld a, [$ca13]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_01cb
    ret


Call_00b_4dbc:
    ld a, c
    ld [$ca13], a
    ld hl, $ca10
    ld b, $00
    ld a, $10
    jp Jump_000_01cb


Jump_00b_4dca:
    ld a, $01
    ld [$def4], a
    ld hl, $def0
    bit 4, [hl]
    jr nz, jr_00b_4e24

    call Call_000_0288
    ld hl, $c600
    ld bc, $0600
    xor a
    ld [$cccc], a
    call Call_000_0174
    call Call_000_01d1
    di
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ei
    ld b, $ff
    ld e, $ff
    ld d, $ff
    ld c, $06
    call Call_00b_4016
    ld a, $e3
    ld [$de87], a
    ld a, $60
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    call Call_000_01c5
    call Call_00b_4fb5
    call Call_00b_4e29
    ld a, $c9
    ld [$c0f4], a
    xor a
    ld [$de2c], a
    call Call_000_01c5
    ld hl, $def0
    set 4, [hl]

jr_00b_4e24:
    ld a, $0c
    jp Jump_000_0297


Call_00b_4e29:
    call Call_000_019b
    ld a, $0e
    call Call_000_01a4
    ld [$ca14], a
    ld a, $10
    call Call_000_01a4
    ld [$c600], a
    ld hl, $c601
    call Call_00b_40be
    call Call_00b_4f4d
    ld b, $01
    call Call_00b_4f8a
    call Call_00b_50d7
    ld a, $28
    ld [$c604], a
    ld [$c603], a
    xor a
    ld [$d7d2], a
    ld [$c606], a
    ld [$c60a], a
    inc a
    ld [$c607], a
    ld a, $20
    ld [$d722], a
    ld a, $42
    ld [$d725], a
    xor a
    ld [$d70a], a
    ld [$dece], a
    ld [$decf], a
    inc a
    ld [$d703], a
    call Call_00b_4eb4
    ld a, $01
    ld [$cca6], a

jr_00b_4e83:
    call Call_00b_4f95
    call Call_000_01d1
    call Call_00b_4eb4
    ld hl, $c601
    ld de, $5e07
    call Call_00b_412e
    jr c, jr_00b_4ea8

    call Call_00b_4ff3
    ld a, [$c600]
    call Call_000_019e
    call Call_00b_50e3
    call Call_00b_51f0
    jr jr_00b_4e83

jr_00b_4ea8:
    call Call_00b_509d
    call Call_00b_4121
    ld b, $3c
    call Call_00b_4f8a
    ret


Call_00b_4eb4:
    ld a, [$c607]
    or a
    ret z

    ld a, [$ca15]
    or a
    jr nz, jr_00b_4ed2

    ld a, [$dece]
    or a
    jr z, jr_00b_4eca

    call Call_00b_5160
    jr jr_00b_4eca

jr_00b_4eca:
    ld a, $00
    ldh [$ffac], a
    call Call_00b_410d
    ret


jr_00b_4ed2:
    ld a, [$c609]
    or a
    jr z, jr_00b_4ef5

    dec a
    jr nz, jr_00b_4ee7

    ld a, [$ca09]
    inc a
    cp $50
    jr c, jr_00b_4ef2

    ld a, $50
    jr jr_00b_4ef2

jr_00b_4ee7:
    ld a, [$ca09]
    inc a
    inc a
    cp $b4
    jr c, jr_00b_4ef2

    ld a, $b4

jr_00b_4ef2:
    ld [$ca09], a

jr_00b_4ef5:
    jp Jump_00b_4d8b


    ld a, $00
    ld [$ca09], a
    ld a, $28
    ld [$ca0b], a
    call Call_00b_4d7a
    xor a
    ld [$d724], a
    ld [$d70a], a
    ld a, $01
    ld [$d703], a
    ld c, $05
    call Call_00b_4dbc
    ld a, $01
    ld [$ca15], a
    ld [$c607], a
    ld [$c609], a
    ret


    ld a, $50
    ld [$ca09], a
    ld a, $28
    ld [$ca0b], a
    call Call_00b_4d7a
    xor a
    ld [$d724], a
    ld [$d70a], a
    ld a, $01
    ld [$d703], a
    ld c, $05
    call Call_00b_4dbc
    ld a, $01
    ld [$ca15], a
    ld [$c607], a
    inc a
    ld [$c609], a
    ret


Call_00b_4f4d:
    ld hl, $5363
    ld bc, $0790
    ld de, $9000
    call Call_000_0183
    ld hl, $9800
    ld bc, $0800
    xor a
    call Call_000_0186
    ld hl, $5af3
    ld de, $9800
    call Call_00b_4073
    ld hl, $5cad
    ld de, $9c00
    call Call_00b_4073
    ld a, $8e
    ld de, $8800
    call Call_000_020d
    ld hl, $5d27
    ld bc, $00b0
    ld de, $8be0
    call Call_000_0183
    ret


Call_00b_4f8a:
jr_00b_4f8a:
    ld a, b
    or a
    ret z

    push bc
    call Call_00b_4f95
    pop bc
    dec b
    jr jr_00b_4f8a

Call_00b_4f95:
    call Call_000_01c5
    jp Jump_000_01c8


jr_00b_4f9b:
    ldh a, [rLY]
    cp $4f
    jr c, jr_00b_4f9b

jr_00b_4fa1:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00b_4fa1

jr_00b_4fa7:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00b_4fa7

    ld a, $50
    ldh [rSCY], a
    xor a
    ldh [rSCX], a
    ret


Call_00b_4fb5:
    ld a, $c9
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0fb
    ld [hl], $0b
    dec hl
    ld [hl], $4f
    dec hl
    ld [hl], $9b
    dec hl
    ld [hl], $c3
    ld a, $c3
    ldh [rSTAT], a
    ld a, $4e
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    ret


    ld a, $28
    jr jr_00b_4fe7

    ld a, $14
    jr jr_00b_4fe7

    ld a, $0f
    jr jr_00b_4fe7

    ld a, $0a

jr_00b_4fe7:
    ld [$c603], a
    ld [$c604], a
    ld a, $01
    ld [$c605], a
    ret


Call_00b_4ff3:
    ld a, [$c605]
    or a
    ret z

    ld a, [$c603]
    dec a
    jr nz, jr_00b_500f

    ld hl, $d7d2
    ld a, [hl]
    cp $50
    jr nc, jr_00b_5009

    inc a
    jr jr_00b_500b

jr_00b_5009:
    ld a, $50

jr_00b_500b:
    ld [hl], a
    ld a, [$c604]

jr_00b_500f:
    ld [$c603], a
    ret


    call Call_00b_504d
    ld d, $28
    jp Jump_00b_5056


    call Call_00b_504d
    ld d, $29
    jp Jump_00b_5056


    rst $08
    ld a, d
    call Call_00b_504d
    ld d, $2a
    jp Jump_00b_5056


    call Call_00b_504d
    ld d, $2b
    jp Jump_00b_5056


    call Call_00b_504d
    ld d, $34
    jp Jump_00b_5056


    call Call_00b_504d
    ld d, $2c
    jp Jump_00b_5056


    call Call_00b_504d
    ld d, $2d
    jp Jump_00b_5056


Call_00b_504d:
    ld hl, $5cad
    ld de, $9c00
    jp Jump_00b_4073


Jump_00b_5056:
    xor a
    ld [$cf7d], a
    ld a, $00
    ld [$cf7e], a
    ld a, d
    inc a
    ld [$cf7b], a
    ld a, $02
    ld [$cf7c], a
    ld de, $5142
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $0b
    jp Jump_000_02d3


    xor a
    ld [$c605], a
    ld hl, $c606
    inc [hl]
    ld hl, $c640
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld c, l
    ld a, $01
    ld [hl+], a
    ld a, $74
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    ld a, $03
    add c
    ld l, a
    call Call_00b_4144
    ret


Call_00b_509d:
    rst $28
    ld l, $06
    nop
    ld e, $00
    ld d, $00
    ld c, $06
    call Call_00b_4094
    ret


    rst $08
    ld h, e
    xor a
    ld [$c605], a
    ld [$c606], a
    ld [$de2c], a
    ld hl, $9800
    ld bc, $0400
    xor a
    call Call_000_0186
    ld hl, $5dd7
    ld bc, $0030
    ld de, $8be0
    call Call_000_0183
    call Call_00b_519c
    call Call_00b_504d
    call Call_00b_5360
    ret


Call_00b_50d7:
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $06
    call Call_00b_4094
    ret


Call_00b_50e3:
    ld a, [$c606]
    or a
    ret z

    dec a
    jr nz, jr_00b_50eb

jr_00b_50eb:
    xor a
    ldh [$ffab], a
    ld hl, $c640
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld c, l
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $be
    ldh [$ffac], a
    ld a, [$c606]
    ld b, a
    ld de, $522f
    dec b
    jr z, jr_00b_5121

    ld de, $523a
    dec b
    jr z, jr_00b_5121

    ld de, $5245
    dec b
    jr z, jr_00b_5121

    ld de, $5250

jr_00b_5121:
    ld a, $03
    add c
    ld l, a
    call Call_00b_414b
    jr nc, jr_00b_5131

    ld a, [$c606]
    cp $04
    jr z, jr_00b_5131

jr_00b_5131:
    ld l, c
    push hl
    call Call_00b_41bb
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    call Call_00b_41ca
    pop hl
    ld c, l
    ret


    call Call_000_01d1
    call Call_00b_4eb4
    ld a, [$c600]
    call Call_000_019e
    call Call_00b_50e3
    call Call_00b_51f0
    call Call_00b_4ff3
    ret


    rst $08
    dec de
    ld a, $01
    ld [$dece], a
    ret


Call_00b_5160:
    call Call_00b_5181
    jr nc, jr_00b_517c

    ld hl, $d725
    ld a, [hl]
    sub $08
    ld [hl], a
    cp $90
    jr c, jr_00b_517c

    cp $f0
    jr nc, jr_00b_517c

    ld a, $00
    ld [$dece], a
    ld [$c607], a

jr_00b_517c:
    ld a, e
    ld [$d70a], a
    ret


Call_00b_5181:
    ld hl, $decf
    inc [hl]
    ld a, [hl]
    ld e, $2e
    cp $04
    jr c, jr_00b_519a

    ld e, $30
    cp $08
    jr c, jr_00b_519a

    ld e, $2c
    cp $0c
    jr c, jr_00b_519a

    scf
    ret


jr_00b_519a:
    or a
    ret


Call_00b_519c:
    ld hl, $51b0
    ld de, $c680
    ld b, $40

jr_00b_51a4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_51a4

    ld a, $01
    ld [$c60a], a
    ret


    ld [bc], a
    ld bc, $004f
    nop
    inc b
    jr nc, jr_00b_51b8

jr_00b_51b8:
    ld [bc], a
    ld a, [bc]
    ld [$0000], sp
    inc de
    jr jr_00b_51c0

jr_00b_51c0:
    ld [bc], a
    ld d, $09
    nop
    nop
    rra
    inc h
    nop
    ld [bc], a
    ld hl, $0002
    ld [bc], a
    jr z, @+$20

    nop
    ld bc, $2728
    nop
    ld [bc], a
    ld a, $43
    nop
    nop
    ld b, d
    inc c
    nop
    nop
    ld b, e
    ld [hl], $00
    ld [bc], a
    adc c
    ccf
    nop
    ld bc, $1d93
    nop
    nop
    sbc d
    dec l
    nop
    ld bc, $3e99
    nop

Call_00b_51f0:
    ld a, [$c60a]
    or a
    ret z

    ld a, $00
    ldh [$ffab], a
    ld a, $be
    ldh [$ffac], a
    ld hl, $c680
    ld b, $10

Jump_00b_5202:
    push bc
    ld b, [hl]
    inc hl
    ld a, [hl]
    dec a
    sub b
    cp $a0
    jr c, jr_00b_520e

    ld a, $9f

jr_00b_520e:
    ld [hl+], a
    ldh [$ff9b], a
    ld a, [hl+]
    ldh [$ff9c], a
    push hl
    ld a, b
    ld de, $5229
    call Call_000_0171
    ld c, e
    ld b, d
    call Call_00b_41ca
    pop hl
    inc hl
    pop bc
    dec b
    jp nz, Jump_00b_5202

    ret


    ld b, [hl]
    ld d, e
    ld c, e
    ld d, e
    ld d, b
    ld d, e
    add h
    ld d, d
    inc b
    call Call_00b_5355
    dec b
    inc b
    inc bc
    inc b
    rst $38
    add h
    ld d, d
    ld [bc], a
    call Call_00b_5355
    dec b
    inc b
    inc bc
    inc b
    rst $38
    add h
    ld d, d
    ld bc, $55cd
    ld d, e
    dec b
    inc b
    inc bc
    inc b
    rst $38
    add h
    ld d, d
    inc bc
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $90ff
    ld d, d
    push de
    ld d, d
    ld a, [bc]
    ld d, e
    rra
    ld d, e
    inc [hl]
    ld d, e
    dec a
    ld d, e
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    nop
    stop
    ld [$1001], sp
    nop
    ld [$3001], sp
    nop
    ld [$3000], sp
    ld [$02e8], sp
    stop
    ld [$1003], sp
    nop
    ld [$3003], sp
    nop
    ld [$3002], sp
    ld [$02e8], sp
    ld d, b
    nop
    ld [$5003], sp
    nop
    ld [$7003], sp
    nop
    ld [$7002], sp
    ld [$00e8], sp
    ld d, b
    nop
    ld [$5001], sp
    nop
    ld [$7001], sp
    nop
    ld [$7000], sp
    add b
    nop
    nop
    nop
    nop
    ldh a, [$fff8]
    inc b
    stop
    ld [$3004], sp
    ld [$05f0], sp
    stop
    ld [$1006], sp
    nop
    ld [$3006], sp
    nop
    ld [$3005], sp
    ld [$05e8], sp
    ld d, b
    nop
    ld [$5006], sp
    nop
    ld [$7006], sp
    nop
    ld [$7005], sp
    ld [$04f0], sp
    ld d, b
    nop
    ld [$7004], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    stop
    ld [$3007], sp
    ld [$07f8], sp
    ld d, b
    nop
    ld [$7007], sp
    add b
    nop

jr_00b_5320:
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$0010], sp
    ld [$3008], sp
    ld [$08f8], sp
    ld d, b
    nop
    ld [$7008], sp
    add b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add hl, bc
    db $10
    add b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    db $10
    add b
    db $fc
    db $fc
    nop
    db $10
    add b
    db $fc
    db $fc
    ld bc, $8010
    db $fc
    db $fc
    ld [bc], a
    db $10
    add b

Call_00b_5355:
    rst $08
    dec [hl]
    ret


    ld a, $01
    ld [$cccc], a
    rst $28
    dec d
    ret


Call_00b_5360:
    rst $28
    dec [hl]
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
    ld bc, $1f00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    ld [$1029], sp
    or d

jr_00b_5390:
    ld [$18a1], sp
    nop

jr_00b_5394:
    nop
    nop
    nop
    jr jr_00b_5399

jr_00b_5399:
    and l
    nop
    nop
    nop
    jr jr_00b_5320

    inc h
    nop
    nop
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b

jr_00b_53aa:
    nop
    ld c, h
    db $10
    sub h
    ld [$104c], sp
    add h
    jr jr_00b_53b4

jr_00b_53b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    inc bc
    nop
    ld b, $01
    add hl, de
    rlca
    cpl
    rra
    cp l
    ld a, h
    ld b, e
    jr c, @+$01

    rst $38
    halt
    adc a
    add b
    ld a, a
    jr @+$01

    and $ff
    ei
    rst $38
    cp l
    ld a, a
    inc bc
    db $fc
    cp $ff
    and d
    sbc b
    jr z, jr_00b_5390

    and d
    sbc b
    jr z, jr_00b_5394

    ld a, [hl+]
    sbc b
    jr z, @-$65

    ld a, [hl+]
    jr jr_00b_53aa

    sbc c
    nop
    nop
    add c
    sbc c
    jr @+$26

    and l
    and l
    nop
    nop
    add c
    sbc c
    jr jr_00b_5435

    and l
    and l
    ld b, l
    jr jr_00b_542b

    sbc c
    ld b, l
    jr @+$17

    sbc b
    ld d, l
    jr jr_00b_5433

    sbc b
    ld d, h
    jr jr_00b_5437

    sbc b
    jr nc, jr_00b_5425

jr_00b_5425:
    ld c, b
    add h
    or $00
    ld e, c
    ldh [c], a

jr_00b_542b:
    call z, $9400
    jr nz, jr_00b_5430

jr_00b_5430:
    nop
    db $fd
    nop

jr_00b_5433:
    nop
    nop

jr_00b_5435:
    ld b, b
    nop

jr_00b_5437:
    nop
    nop
    ld [$0020], sp
    nop
    ld [bc], a
    ld [$00e0], sp
    ld e, b
    ldh [rP1], a
    nop
    nop
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
    dec b
    inc bc
    dec bc
    rlca
    ld d, $0f
    dec hl
    rra
    rra
    ccf
    ld l, a
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    sub [hl]
    rst $38
    rst $38
    rst $38
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00b_5473:
    ld [hl+], a
    rst $38
    cp $ff
    add d
    rst $38
    cp $ff
    ld b, h
    rst $38

jr_00b_547d:
    cp $ff
    cp $ff
    db $fc
    rst $38
    xor d
    sbc b
    xor b
    sbc b
    add hl, hl
    sbc e
    and e
    sub a
    and a
    adc a
    xor a
    add e
    adc [hl]
    sbc l
    add e
    and a
    nop
    nop
    ld [hl], c
    cp $fc
    rst $38
    cp $ff
    add e
    cp e
    add e
    xor e
    add e
    adc e
    scf
    db $f4
    ld d, l
    jr jr_00b_54bb

    jr jr_00b_547d

    jr jr_00b_550f

    adc b
    dec [hl]
    ret nz

    dec h
    ret nz

    or c
    jr c, jr_00b_5473

    db $e4
    ld l, b
    sbc h
    cp [hl]
    ld b, b
    ld e, d
    and [hl]
    cpl
    ret nc

jr_00b_54bb:
    cpl
    ret nc

    rla
    add sp, $17
    add sp, -$2e
    ld l, l
    ld [hl], h
    jr c, jr_00b_54e0

    inc c
    xor l
    ld b, [hl]
    ld d, $23
    dec bc
    ld de, $08a5
    jp nc, $a904

    jp nz, RST_00

    nop
    nop
    ld [$8020], sp
    nop
    ld b, h
    add b
    and b
    ret nz

    ret nc

jr_00b_54e0:
    ld h, b
    ld [hl], b
    jr nz, jr_00b_54e5

    nop

jr_00b_54e5:
    inc bc
    nop
    ld [bc], a
    ld bc, $0106
    inc b
    inc bc
    ld [bc], a
    dec b
    dec c
    inc bc
    dec c
    inc bc
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    xor l
    rst $38
    ld a, a
    rst $38
    ld [hl], d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00b_550b:
    rst $38
    rst $38
    inc b
    rst $38

jr_00b_550f:
    rst $38
    rst $38
    rla
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld b, b
    rst $38
    ldh a, [c]
    rst $38
    and $ff
    ld c, h
    rst $38
    sbc b
    rst $38
    inc sp
    rst $38
    and b
    and c
    nop
    ld b, b
    ld c, h
    ld b, e
    ld b, b
    ld b, b
    ld [$a047], sp
    and b
    ld [de], a
    or c
    ld [$df98], sp
    ei
    inc a
    ld a, [hl]
    sbc c
    jr jr_00b_5552

    jr jr_00b_5596

    sbc c
    jr jr_00b_5557

    sbc c
    inc a
    inc h
    ld h, [hl]
    dec b
    add h
    nop
    ld [bc], a
    ld [hl-], a
    jp nz, $0200

    ld [de], a
    ldh [rSB], a
    inc b
    ld b, l
    adc b
    add hl, bc

jr_00b_5552:
    db $10
    dec bc
    db $f4
    adc e
    ld [hl], h

jr_00b_5557:
    adc c
    halt
    adc l
    ld [hl], d
    add l
    ld a, d
    ld h, l
    ld a, [$fa05]
    dec b
    ld a, [$01f4]
    ret z

    jr nc, @-$02

    nop
    cp $00
    rst $38
    nop
    ld e, e
    or h
    cp $01
    rst $20
    nop
    xor b
    ld sp, $9038
    adc b
    db $10
    stop
    nop
    nop
    or b
    inc b
    sub b
    and b
    ret c

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00b_550b

    nop
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d

jr_00b_5596:
    ld c, $00
    nop
    dec d
    ld c, $08
    nop
    ld [de], a
    inc b
    dec b
    inc c
    ld a, [bc]
    inc bc
    ld [$0807], sp
    rlca
    ld [$1207], sp
    rrca
    jr jr_00b_55b4

jr_00b_55ad:
    ld c, c
    rla
    inc e
    ld b, e
    ld d, l
    ld c, e
    cp a

jr_00b_55b4:
    rst $38
    db $dd
    rst $38
    ld h, a
    rst $38
    jr c, @+$01

    rrca
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    xor c
    rst $38
    db $fc
    rst $38
    ld sp, $87ff
    rst $38
    inc a
    rst $38
    ldh [rIE], a
    dec b
    rst $38
    nop
    rst $38
    xor [hl]
    rst $38
    ld h, b
    rst $38
    jp nz, Jump_000_05fc

    ld hl, sp+$13
    pop hl
    daa
    jp $87d2


    inc l
    sub a
    and c
    ld e, $83
    rlca
    ld d, c
    jr nz, jr_00b_565a

    ld sp, hl
    ret


    di
    jr nc, jr_00b_55ad

    ld b, c
    add e
    add b
    nop
    db $10
    ld [$c3da], sp
    jp $ffc3


    rst $38
    rst $38
    cp l
    nop
    nop
    sbc c
    cp l
    nop
    nop
    sbc c
    nop
    ld h, b
    add b
    adc d
    inc b
    ld c, [hl]
    sbc a
    sub e
    rst $08
    inc c
    inc bc
    add e
    ret nz

    ld bc, $0800
    db $10
    add l
    ld a, d
    dec l
    ld a, [de]
    sub l
    ld a, [bc]
    ld b, l
    add d
    and e
    ret nz

    ld c, b
    pop hl
    or l
    ld l, b
    push bc
    jr c, @-$2b

    jr jr_00b_5670

    db $d3
    db $e3
    inc b
    rst $38
    nop
    di
    nop
    ld b, h
    xor c
    di
    nop
    ld e, a
    nop
    ret c

    nop
    sub b
    ld e, b
    ld c, b
    sub b
    ret c

jr_00b_563a:
    nop
    db $ec
    nop
    inc h
    ret z

    db $ec
    nop
    db $ec
    nop
    nop
    nop
    nop
    nop
    db $10
    ld b, b
    nop
    nop
    jr z, jr_00b_564d

jr_00b_564d:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0000
    nop
    nop

jr_00b_565a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]

jr_00b_5664:
    ld b, c
    ld b, b
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld e, d
    ld bc, $0952
    ld d, d

jr_00b_5670:
    add hl, bc
    ld d, d
    add hl, bc
    nop
    rst $38
    nop
    nop
    and l
    inc de
    nop
    nop
    and l
    jr jr_00b_56a7

    sbc h
    add hl, hl
    sbc h
    add hl, hl
    sbc h
    nop
    rst $38
    nop
    nop
    ld d, d
    add hl, sp
    nop
    nop
    inc d
    db $e3
    ld h, l
    di
    ld h, l
    di
    ld h, l

jr_00b_5692:
    di
    or e
    inc c
    ld e, $00
    add b
    ret nz

    nop
    nop
    jr z, jr_00b_5664

    set 4, a
    set 4, a
    set 4, a
    jr z, jr_00b_56bd

    jr z, jr_00b_56bf

jr_00b_56a7:
    xor b
    jr jr_00b_56aa

jr_00b_56aa:
    nop
    inc d
    ldh [$ffe4], a
    pop af
    db $e4
    ldh a, [$ffe5]
    ldh a, [$ff34]

jr_00b_56b4:
    sbc c
    and l
    sbc c
    jr jr_00b_563a

    nop
    ld b, d
    nop
    nop

jr_00b_56bd:
    sbc c
    cp l

jr_00b_56bf:
    nop
    nop
    ld a, [hl]
    db $db
    inc d
    jr @+$16

    jr jr_00b_56dd

    jr jr_00b_56ca

jr_00b_56ca:
    nop
    jr z, jr_00b_56d4

    daa
    adc a
    daa
    rrca
    and a
    rrca
    ld l, h

jr_00b_56d4:
    ld de, $0038
    ld [bc], a
    ld bc, $0000
    inc d
    db $e3

jr_00b_56dd:
    db $d3
    rst $20
    db $d3
    rst $20
    db $d3
    rst $20
    ld a, [bc]
    ld e, l
    nop
    nop
    ld d, d
    adc h
    nop
    nop
    jr z, jr_00b_56b4

    and [hl]
    rst $08
    and [hl]
    rst $08
    and [hl]
    rst $08
    and h
    ret


    nop
    nop
    and b
    ld b, b
    nop
    nop

jr_00b_56fb:
    and l
    jr jr_00b_5692

    add hl, sp
    sub h
    add hl, sp
    sub h
    add hl, sp
    adc b
    jr nz, jr_00b_5706

jr_00b_5706:
    nop
    nop
    nop
    nop
    nop
    ld e, d
    add b
    ld c, d
    sub b
    ld c, d
    sub b
    ld c, d
    sub b
    ld d, d
    add hl, bc
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld a, [bc]
    dec d
    rrca
    nop
    ld hl, $9c9c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    xor h
    rst $18
    ret nc

    cpl
    inc b
    di
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    or e
    rst $38
    nop
    rst $38
    ld [$e7e7], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    set 7, a
    nop
    rst $38
    inc b
    ldh a, [c]
    rst $30
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0890
    ld a, [hl+]
    sbc c
    jr z, jr_00b_56fb

    add c

jr_00b_5764:
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    sbc c
    and l
    add c
    and l
    add c
    sub c
    sbc c
    jr nz, jr_00b_57c4

    rst $08
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ld [$5410], sp
    sbc b
    inc d
    jr @+$12

    rst $20
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld h, l
    ei
    rst $38
    nop
    jr nz, jr_00b_5764

    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_00b_579f:
    ld e, [hl]
    cp e
    cp $00

jr_00b_57a3:
    add h
    add hl, sp
    add hl, sp
    nop

jr_00b_57a7:
    nop
    nop
    nop
    nop

jr_00b_57ab:
    nop
    nop
    ld h, b
    nop
    ld d, b
    add hl, hl
    ret nz

    nop
    ld c, d
    sub b
    sub d
    nop
    nop

jr_00b_57b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00b_57c1

jr_00b_57c1:
    nop
    nop
    nop

jr_00b_57c4:
    nop
    rrca
    nop
    dec b
    inc bc
    rlca
    nop
    dec b
    ld a, [bc]
    inc bc
    nop
    inc bc
    nop
    ld bc, $1700
    nop
    add sp, $17
    push af
    ld c, e
    ld a, [$dd05]
    ld h, [hl]
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld l, e
    rst $38
    ret nz

    ccf
    jr c, jr_00b_57b8

    rst $00
    jr c, @+$01

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld a, [hl+]
    add hl, de
    jr z, jr_00b_579f

    ld a, [hl+]
    sbc c
    jr z, jr_00b_57a3

    ld a, [hl+]
    sbc c
    jr z, jr_00b_57a7

    ld a, [hl+]
    sbc c
    jr z, jr_00b_57ab

    ld b, d
    jp $7ebd


    ld b, d
    inc a
    nop
    nop
    nop
    add c
    sub c
    sbc c
    and l
    add c
    and l
    add c
    ld d, h
    sbc b
    inc d
    jr jr_00b_587c

    sbc b
    inc d
    jr jr_00b_5880

    sbc b
    inc d
    jr jr_00b_5884

    sbc b
    inc d
    jr jr_00b_5834

jr_00b_5834:
    nop
    rst $38
    nop
    ld b, e
    ldh [$ffc1], a
    ld [$18cd], sp
    ret


    nop
    db $e3
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    cp d
    call nc, Call_000_00fd
    ld l, l
    ret nc

    ei
    nop

jr_00b_584f:
    or $00
    db $ec
    nop
    nop
    nop
    ret nz

    nop
    sub d
    jr nz, @-$7e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop

jr_00b_586a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0400
    nop
    ld bc, $0000
    nop
    nop

jr_00b_587c:
    nop
    nop
    nop
    nop

jr_00b_5880:
    nop
    nop
    nop
    rst $38

jr_00b_5884:
    nop
    or l
    ld l, [hl]
    ld a, a
    nop
    xor [hl]
    add hl, de
    ld e, a
    nop
    xor l
    ld b, $13
    nop
    inc c
    nop
    ld hl, sp+$07
    xor a
    ld [hl], b
    rst $38
    nop
    or a

jr_00b_589a:
    call c, Call_000_00ff
    ld e, a
    ldh a, [rIE]
    nop
    rst $38
    nop
    ccf
    ret nz

    srl a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    push af
    dec bc
    rst $38

jr_00b_58b0:
    nop
    rst $38
    nop
    xor d

jr_00b_58b4:
    add hl, de
    jr z, jr_00b_584f

    xor d
    add hl, de
    xor b
    sbc b
    xor e
    jr jr_00b_58e6

    sbc b
    xor e
    jr jr_00b_586a

    jr jr_00b_58d4

    sbc c
    add c
    ld b, d
    ld b, d
    inc a
    nop
    nop
    db $10
    sbc c
    and l
    add c
    and l
    add c
    db $10
    sbc c
    ld d, h

jr_00b_58d4:
    sbc b
    inc d
    jr jr_00b_592c

    sbc b
    inc d
    jr jr_00b_58b0

    jr @+$16

    jr jr_00b_58b4

    jr jr_00b_58f6

    jr jr_00b_589a

    ld a, e

jr_00b_58e5:
    rst $38

jr_00b_58e6:
    nop
    db $eb
    inc e
    ld e, [hl]
    ldh [$fff9], a
    nop
    rst $00
    nop
    inc a
    nop
    ldh [rP1], a
    adc c
    ld d, b
    or b

jr_00b_58f6:
    nop
    ld l, b
    inc b
    ret nz

    nop
    add b
    nop
    nop

jr_00b_58fe:
    nop
    ld d, $08
    nop

jr_00b_5902:
    nop
    ld b, h
    adc b
    nop
    nop
    ld c, b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    inc h
    nop
    nop
    and b
    nop
    nop
    nop
    ld b, b
    nop
    nop
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
    stop
    nop
    nop
    dec b

jr_00b_592c:
    nop
    nop
    nop
    ld bc, $0000
    nop
    rra
    nop
    pop hl
    nop
    ld e, $00
    ld bc, $0000
    nop
    nop
    nop
    ld c, b
    stop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_00b_594c:
    nop
    nop
    nop
    nop

jr_00b_5950:
    nop
    nop
    nop
    xor e

jr_00b_5954:
    jr jr_00b_58fe

    jr @+$2d

    jr jr_00b_5902

    jr jr_00b_5987

    jr jr_00b_5986

    jr jr_00b_598b

    jr jr_00b_598a

    jr jr_00b_58e5

    ld b, d
    ld b, d
    inc a
    nop
    nop
    db $10
    sbc c
    inc h
    add c
    db $10
    sbc c
    add c
    ld b, d
    ld b, d
    inc a
    call nc, Call_000_1418
    jr jr_00b_594c

    jr @+$16

    jr jr_00b_5950

    jr jr_00b_5992

    jr jr_00b_5954

    jr @+$16

    jr jr_00b_5984

jr_00b_5984:
    nop
    inc bc

jr_00b_5986:
    nop

jr_00b_5987:
    nop
    nop
    nop

jr_00b_598a:
    nop

jr_00b_598b:
    nop
    nop
    ld bc, $0000
    nop
    nop

jr_00b_5992:
    nop
    nop
    nop
    jr z, jr_00b_5997

jr_00b_5997:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
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
    jr z, jr_00b_5a22

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
    add h
    inc bc
    add hl, hl
    db $10
    ld [hl], h
    jr c, @+$4b

    jr nc, jr_00b_5a1e

    ld bc, $008d
    ld d, d
    inc l
    xor c
    db $10
    and b
    ld b, b
    ld c, d
    add h
    dec d
    ld a, [bc]
    adc [hl]
    nop
    pop bc
    nop
    add hl, hl
    db $10
    ld b, h
    jr c, jr_00b_5a3a

    nop
    and c
    nop
    ld [de], a
    inc c
    ld d, l
    ld a, [hl-]
    add sp, $7f
    ld [hl-], a
    db $fd
    and l
    ld e, d
    db $d3
    inc l
    ld l, [hl]
    db $10
    ld b, b
    add c
    ld d, h
    ld [$142a], sp
    or [hl]
    ld [$009c], sp
    add b

jr_00b_5a1e:
    nop
    ld sp, $2a00

jr_00b_5a22:
    ld de, $8045
    xor d
    db $10
    ld e, c
    jr nc, jr_00b_5a5c

    nop
    add l
    ld [bc], a
    ld c, d
    add l
    and a
    ld b, b
    db $10
    ld [$8f54], sp
    add hl, hl
    ld e, $34
    adc e
    rra

jr_00b_5a3a:
    nop
    ret nz

    nop
    adc l
    inc bc
    ld b, [hl]
    ld hl, $0088
    cp b
    nop
    ld b, d
    add b
    push bc
    ld [$0c9a], sp
    inc c
    nop
    ld b, c
    add b
    adc d
    inc b
    ld sp, $4108
    nop
    or h
    ld [$804a], sp
    or c
    ld b, d
    ld h, d

jr_00b_5a5c:
    dec b
    sbc l
    ld [bc], a
    ld [hl-], a
    add hl, bc
    ld c, b
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    jr jr_00b_5adb

    inc l
    ld e, $00
    nop
    ld a, [hl-]
    nop

jr_00b_5adb:
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
    inc d
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00b_5c1d

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_00b_5c2d

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_00b_5c45

    ld a, [hl+]

jr_00b_5c1d:
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_00b_5c5d

    ld [hl-], a

jr_00b_5c2d:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00b_5c6d

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_00b_5c45:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_00b_5c5d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_00b_5c6d:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    nop
    ld h, d
    ld h, e
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc d
    ld b, $73
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    halt
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    halt
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    halt
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    halt
    ld [hl], a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld a, b
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
    jr jr_00b_5d47

    rrca
    jr nc, @+$41

    rst $00
    ld hl, sp+$1f
    ldh [$ff7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00b_5d47:
    daa
    jr c, @+$31

    jr nc, jr_00b_5d9b

    ld [hl], b
    ld e, a
    ld h, b
    sbc a
    ldh [$ffbf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

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
    rlca
    rlca
    jr jr_00b_5d92

    ld h, e
    ld a, h
    sbc a
    ldh [rSB], a
    ld bc, $0302
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $09
    ld c, $0b
    inc c
    dec bc
    inc c
    ld a, a
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

jr_00b_5d92:
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    rlca
    jr jr_00b_5dba

jr_00b_5d9b:
    inc hl
    inc a
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    sbc a
    ldh [$ffbf], a
    ret nz

    cp a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    inc de
    inc e
    rla
    jr jr_00b_5de3

    jr nc, @+$31

    jr nc, @+$3e

    inc a
    ld b, d

jr_00b_5dba:
    ld a, [hl]
    sbc c
    rst $20
    cp l
    jp $c3bd


    sbc c
    rst $20
    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    jr @+$1a

    inc h
    inc a
    inc h
    inc a
    jr jr_00b_5deb

    nop
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_00b_5e13

    ld a, h
    ld l, h
    cp d
    add $7c
    ld l, h
    jr z, @+$3a

jr_00b_5de3:
    db $10
    stop
    nop
    jr c, jr_00b_5e21

    ld d, h
    ld l, h

jr_00b_5deb:
    cp d
    add $fe
    add d
    cp d
    add $54
    ld l, h
    jr c, jr_00b_5e2d

    nop
    nop
    nop
    nop
    jr c, jr_00b_5e33

    ld b, h
    ld a, h
    ld d, h
    ld l, h
    ld b, h
    ld a, h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    jr nc, jr_00b_5e64

    ld d, e
    ld bc, $5013
    ldh a, [$ffd9]
    ld c, a

jr_00b_5e13:
    ld bc, $501b
    and b
    db $dd
    ld c, a
    ld bc, $5023
    ld a, b
    pop hl
    ld c, a
    or h
    dec l

jr_00b_5e21:
    ld d, b
    ld bc, $5035
    and b
    nop
    nop
    ld a, b
    ld a, b
    ld d, b
    ld a, b
    ld a, b

jr_00b_5e2d:
    ld d, b
    ld bc, $5078
    ld b, $3d

jr_00b_5e33:
    ld d, b
    ld bc, $5158
    ld d, b
    ld a, b
    ld d, b
    ld e, $9d
    ld d, b
    ld e, $ab
    ld d, b
    ld bc, $519c
    inc a
    rst $10
    ld d, b
    ld a, b
    nop
    nop
    ld d, b
    ld hl, sp+$4e
    ld a, b
    ld b, l
    ld d, b
    ld d, b
    ld [hl+], a
    ld c, a
    or h
    nop
    nop
    cp $78
    db $fc
    db $10
    db $fd
    cp $fd
    db $e4
    cp $40
    rst $38
    ld a, b
    db $fc
    ret c

    rst $38

jr_00b_5e64:
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop
    ld bc, $0002
    inc bc
    ld [bc], a
    nop
    inc bc
    ld bc, $fe00
    add b
    db $fc
    sbc h
    rst $38
    ret nc

    ei
    nop
    cp $80
    db $fc
    and b
    rst $38
    ret c

    ei
    sub b
    rst $38
    nop
    nop
    jr nz, @+$01

    ret nz

    ei
    ld hl, sp+$08
    ld hl, sp+$08
    ld [$0200], sp
    ld a, [bc]
    ld b, b
    ld [bc], a
    inc c
    ld h, b
    ld [bc], a
    inc a
    inc c
    inc c
    inc c
    ld e, d
    ld b, h
    adc h
    ld a, [bc]
    ld e, b
    ret nz

    db $fd
    nop
    nop
    nop
    nop
    ret nz

    ld [$1307], sp
    ld b, $67
    rst $18
    ld b, [hl]

Jump_00b_5eb2:
    ld a, b
    dec b
    jp z, Jump_00b_617f

    dec b
    jr z, jr_00b_5ec5

    dec b
    jp z, Jump_00b_6291

    dec b
    jr z, jr_00b_5efa

    or a
    jp z, Jump_00b_6047

Jump_00b_5ec5:
jr_00b_5ec5:
    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    ld a, $1b
    ld [$de96], a
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    xor a
    ld [$de2c], a
    ld [$ccbb], a
    ld [$cc97], a
    ld [$cc98], a
    ld [$cca2], a
    ld [$de29], a
    ld [$d76e], a
    dec a
    ld [$df80], a
    ld [$de56], a
    ld a, $16
    jp Jump_000_0297


jr_00b_5efa:
    ld l, c
    push hl
    ld hl, $ca00
    ld bc, $0040
    xor a
    call Call_000_0174
    pop hl
    ld c, l
    ld a, $40
    call Call_000_020a
    ld a, [$c3b4]
    ld [$ca01], a
    ld a, $04
    call Call_00b_6b2f
    ret


    inc d
    ld b, $a6
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld [$a606], sp
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    xor l
    xor [hl]
    xor b
    xor c
    xor l
    xor [hl]
    xor b
    xor c
    and [hl]
    and a
    ld h, c
    ld h, d
    and [hl]
    and a
    ld h, c
    ld h, d
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld [$6310], sp
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    and e
    and e
    and e
    and e
    and e
    and e
    and h
    and l
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor e
    xor h

Jump_00b_6047:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $06
    ld l, a
    ld [hl], b
    add $dd
    ld l, a
    ld [hl], $80
    inc l
    inc l
    ld [hl], $28
    call Call_000_025e
    ld a, [$d1e0]
    push af
    xor a
    ld [$d1e0], a
    call Call_00b_7ec8
    pop af
    ld [$d1e0], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $13
    ld [$ca14], a
    call Call_000_015c
    ld l, c
    push hl
    call Call_00b_60a3
    ld hl, $5f19
    ld de, $9b40
    call Call_00b_4073
    ld hl, $5f93
    ld de, $9b58
    call Call_00b_4073
    ld hl, $5fc5
    ld de, $9818
    call Call_00b_4073
    pop hl
    ld c, l
    ld de, $687b
    jp Jump_000_01dd


Call_00b_60a3:
    ld a, $c9
    ld [$c0f8], a
    ld hl, $c0f3
    ld [hl], $0b
    dec hl
    ld [hl], $60
    dec hl
    ld [hl], $c3
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $0b
    ld hl, $c0f8
    ld [hl], $c3
    jp Jump_00b_6134


    ld a, [$d18d]
    ld b, a
    ld a, [$ca0a]
    add b
    ldh [rSCY], a
    ld a, [$ca19]
    or a
    jr nz, jr_00b_60d8

    ld a, [$ca16]
    ldh [rBGP], a

jr_00b_60d8:
    ld a, [$ca20]
    or a
    jr nz, jr_00b_60f2

    ld a, [$ca17]
    or a
    jr z, jr_00b_6134

    push hl
    push bc
    ld hl, $c0fa
    ld [hl], $61
    dec hl
    ld [hl], $0a
    ld a, $3e
    jr jr_00b_6100

jr_00b_60f2:
    push hl
    push bc
    ld hl, $c0fa
    ld [hl], $61
    dec hl
    ld [hl], $12
    ld a, $0e
    jr jr_00b_6100

jr_00b_6100:
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    pop bc
    pop hl
    ret


jr_00b_610a:
    ldh a, [rLY]
    cp $3f
    jr c, jr_00b_610a

    jr jr_00b_6118

jr_00b_6112:
    ldh a, [rLY]
    cp $0f
    jr c, jr_00b_6112

jr_00b_6118:
    push de
    ld a, [$ca0a]
    ld d, a
    ld a, [$ca0b]
    ld e, a

jr_00b_6121:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00b_6121

jr_00b_6127:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00b_6127

    ld a, d
    ldh [rSCY], a
    ld a, e
    ldh [rSCX], a
    pop de

Jump_00b_6134:
jr_00b_6134:
    push hl
    push bc
    ld hl, $c0fa
    ld [hl], $61
    dec hl
    ld [hl], $47
    ld a, [$d18d]
    ld b, a
    ld a, $6e
    sub b
    jr jr_00b_6100

    push bc
    ld a, [$d18d]
    ld b, a
    ld a, $6f
    sub b
    ld b, a

jr_00b_6150:
    ldh a, [rLY]
    cp b
    jr c, jr_00b_6150

    ld a, [$d18d]
    ld b, a

jr_00b_6159:
    ldh a, [rSTAT]
    and $03
    jr z, jr_00b_6159

jr_00b_615f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_00b_615f

    ld a, b
    ldh [rSCY], a
    xor a
    ldh [rSCX], a
    ld a, [$ca19]
    or a
    jr nz, jr_00b_6175

    ld a, $1b
    ldh [rBGP], a

jr_00b_6175:
    ld a, $7f
    ldh [rLYC], a
    xor a
    ld [$de2c], a
    pop bc
    ret


Jump_00b_617f:
    ld a, [$deaf]
    and $27
    jp nz, Jump_00b_6291

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jp z, Jump_00b_6314

    dec a
    jp z, Jump_00b_633c

    dec a
    jp z, Jump_00b_638d

    dec a
    jp z, Jump_00b_63be

    dec a
    jp z, Jump_00b_63f3

    dec a
    jp z, Jump_00b_6642

    dec a
    jp z, Jump_00b_66c7

    dec a
    jp z, Jump_00b_676c

    ld a, b
    or a
    jp z, Jump_00b_62d9

    dec a
    jp z, Jump_00b_630e

Jump_00b_61b7:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$ca12], a
    inc l
    ld a, [hl]
    ld [$ca13], a
    ld a, $21
    add c
    ld l, a
    bit 1, [hl]
    ld a, $1b
    jr z, jr_00b_61d0

    ld a, $c2

jr_00b_61d0:
    ld [$ca16], a
    ld a, [$ca0d]
    bit 7, a
    jr z, jr_00b_6208

    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    ld a, [$ca0e]
    add b
    ld b, a
    ld a, [$d722]
    cp b
    jr c, jr_00b_6208

    ld a, b
    ld [$d722], a
    ld de, $fc00
    ld b, $a0
    ld a, [$d73a]
    or a
    jr nz, jr_00b_6200

    push de
    ld d, $06
    call Call_00b_62d0
    pop de

jr_00b_6200:
    ld a, e
    ld [$d735], a
    ld a, d
    ld [$d736], a

jr_00b_6208:
    ld a, [$ca0d]
    bit 6, a
    jr z, jr_00b_6238

    ld a, $0f
    add c
    ld l, a
    ld b, [hl]
    ld a, [$ca0f]
    add b
    ld b, a
    ld a, [$d725]
    cp b
    jr nc, jr_00b_6238

    ld a, b
    ld [$d725], a
    ld a, $01
    ld [$ca06], a
    ld a, [$d73a]
    or a
    jr nz, jr_00b_6238

    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    ld d, $02
    call Call_00b_62d0

jr_00b_6238:
    ld a, [$ca08]
    or a
    jr z, jr_00b_628e

    xor a
    ld [$ca08], a
    ld a, [$ca07]
    cp $50
    jr c, jr_00b_628e

    ld a, $04
    ld [$ca1f], a
    ld a, $12
    ld [$ca20], a
    ld a, $21
    add c
    ld l, a
    ld [hl], $1f
    add $f7
    ld l, a
    ld a, [hl]
    sub $04
    ld [hl], a
    bit 7, [hl]
    jr nz, jr_00b_6267

    or a
    jr nz, jr_00b_628e

jr_00b_6267:
    ld [hl], $00
    call Call_00b_7f3f
    rst $08
    nop
    ld a, $01
    ld [$ccc2], a
    ld [$c3e9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    add $06
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $00
    add $e6
    ld l, a
    ld [hl], $13
    ld b, $01
    ret


jr_00b_628e:
    call Call_000_025e

Jump_00b_6291:
    ld a, [$ca20]
    or a
    jr z, jr_00b_62c1

    ld a, [$ca1f]
    dec a
    ld [$ca1f], a
    jr nz, jr_00b_62b0

    ld a, [$ca20]
    sub $01
    ld [$ca20], a
    or a
    jr z, jr_00b_62b0

    ld a, $04
    ld [$ca1f], a

jr_00b_62b0:
    ld b, $00
    ld a, [$ca20]
    bit 0, a
    jr z, jr_00b_62bc

    srl a
    ld b, a

jr_00b_62bc:
    xor a
    sub b
    ld [$ca0b], a

jr_00b_62c1:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $06
    jr nc, jr_00b_62cd

    call Call_00b_7f3f

jr_00b_62cd:
    ld b, $01
    ret


Call_00b_62d0:
    ld e, b
    ld l, c
    push hl
    call Call_000_026d
    pop hl
    ld c, l
    ret


Jump_00b_62d9:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_62f4

    ld a, [$def0]
    bit 2, a
    jp z, Jump_00b_61b7

    rst $08
    ld h, b
    ld a, $31
    add c
    ld l, a
    ld [hl], $5a
    jp Jump_00b_6357


jr_00b_62f4:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    add $ff
    ld l, a
    dec [hl]
    add $fa
    ld l, a
    inc [hl]
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp Jump_00b_61b7


Jump_00b_630e:
    ld de, $6871
    jp Jump_00b_7f9a


Jump_00b_6314:
    ld a, $0f
    add c
    ld l, a
    ld [hl], $28
    ld a, $c0
    ld [$ca0d], a
    ld a, $e0
    ld [$ca0e], a
    ld a, $e5
    ld [$ca0f], a
    ld de, $6871
    call Call_000_015f

Jump_00b_632f:
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    add $06
    ld l, a
    ld [hl], $00
    jp Jump_00b_61b7


Jump_00b_633c:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_635f

    dec a
    jr z, jr_00b_637b

    ld a, $1f
    call Call_00b_6843
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $1e

Jump_00b_6357:
    ld a, $30
    add c
    ld l, a
    inc [hl]
    jp Jump_00b_61b7


jr_00b_635f:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld [hl], $0a
    call $689a
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    cp $03
    jp c, Jump_00b_61b7

    ld [hl], $1e
    jp Jump_00b_6357


jr_00b_637b:
    ld a, [$ca00]
    or a
    jp nz, Jump_00b_61b7

    ld a, $32
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    jp Jump_00b_632f


Jump_00b_638d:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_63a0

    dec a
    jr z, jr_00b_63ac

    ld a, $45
    call Call_00b_6843
    jp Jump_00b_6357


jr_00b_63a0:
    call $69c5
    ld a, $31
    add c
    ld l, a
    ld [hl], $1e
    jp Jump_00b_6357


jr_00b_63ac:
    ld a, [$ca00]
    or a
    jp nz, Jump_00b_61b7

    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    jp Jump_00b_632f


Jump_00b_63be:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_63d1

    dec a
    jr z, jr_00b_63d7

    ld a, $46
    call Call_00b_6843
    jp Jump_00b_6357


jr_00b_63d1:
    call Call_00b_6bf9
    jp Jump_00b_6357


jr_00b_63d7:
    ld a, [$ca00]
    or a
    jp nz, Jump_00b_61b7

    ld a, [$ca20]
    or a
    jp nz, Jump_00b_61b7

    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $06
    ld l, a
    ld [hl], $00
    jp Jump_00b_61b7


Jump_00b_63f3:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_6435

    dec a
    jp z, Jump_00b_6484

    dec a
    jp z, Jump_00b_64c4

    dec a
    jp z, Jump_00b_6510

    dec a
    jp z, Jump_00b_652b

    dec a
    jp z, Jump_00b_657a

    dec a
    jp z, Jump_00b_65df

    dec a
    jp z, Jump_00b_65f2

    dec a
    jp z, Jump_00b_6612

    ld l, c
    push hl
    ld a, $44
    call Call_00b_6843
    ld a, $47
    call Call_000_020a
    ld [$ca02], a
    pop hl
    ld c, l
    ld a, $31
    add c
    ld l, a
    ld [hl], $5a
    jp Jump_00b_6357


jr_00b_6435:
    xor a
    ld [$ccc2], a
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add $00
    ldh [$ff8a], a
    inc l
    ld a, [hl+]
    add $28
    ldh [$ff8b], a
    inc l
    ld de, $78ff
    ld b, $0b
    call Call_000_02d6
    rst $08
    nop
    rst $08
    dec h
    ld a, $ff
    ld [$d74a], a
    inc a
    ld [$d75c], a
    ld [$ca1c], a
    ld [$d163], a
    inc a
    ld [$de29], a
    ld [$d76e], a
    ld [$d703], a
    ld [$c2c4], a
    ld a, $31
    add c
    ld l, a
    ld a, [$5e9b]
    ld [hl], a
    jp Jump_00b_6357


Jump_00b_6484:
    ld a, [$ca1c]
    or a
    jp nz, Jump_00b_6491

    ld a, $21
    add c
    ld l, a
    set 3, [hl]

Jump_00b_6491:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld [hl], $04
    ld a, [$ca1c]
    ld b, a
    ld a, $06
    sub b
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ld e, $68
    ld b, $04

jr_00b_64ad:
    push bc
    push de
    push hl
    ld a, $04
    call Call_000_01cb
    pop hl
    pop de
    pop bc
    ld a, $10
    add e
    ld e, a
    dec b
    jr nz, jr_00b_64ad

    rst $08
    dec hl
    jp Jump_00b_6357


Jump_00b_64c4:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld l, c
    push hl
    ld a, [$ca1c]
    add a
    add a
    add $67
    ld e, a
    ld a, $78
    adc $00
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    call Call_00b_4073
    ld hl, $ca1c
    inc [hl]
    ld a, [hl]
    pop hl
    ld c, l
    add $9b
    ld e, a
    ld a, $5e
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $31
    add c
    ld l, a
    ld [hl], b
    ld a, [$ca1c]
    cp $04
    jp z, Jump_00b_6357

    ld a, $30
    add c
    ld l, a
    dec [hl]
    jp Jump_00b_61b7


Jump_00b_6510:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    add $de
    ld l, a
    ld a, [hl]
    ld [$ca1b], a
    ld a, [$ca0a]
    ld [$ca1a], a
    call Call_00b_79c0
    jp Jump_00b_6357


Jump_00b_652b:
    call Call_00b_7a98
    call Call_00b_7a34
    ld a, [$ca1b]
    ld b, a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    sub b
    cp $30
    jr nc, jr_00b_654a

    ld b, a
    ld a, [$ca1a]
    sub b
    ld [$ca0a], a
    jp Jump_00b_61b7


jr_00b_654a:
    ld a, $0f
    add c
    ld l, a
    ld a, [$ca1b]
    add $30
    ld [hl], a
    ld a, [$ca1a]
    sub $30
    ld [$ca0a], a
    ld a, $31
    add c
    ld l, a
    ld [hl], $04
    add $02
    ld l, a
    ld [hl], $18
    add $e4
    ld l, a
    ld [hl], $01
    add $f8
    ld l, a
    ld a, [hl]
    ld [$ca0c], a
    rst $08
    nop
    rst $08
    ld a, [hl+]
    jp Jump_00b_6357


Jump_00b_657a:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jr nz, jr_00b_6589

    ld [hl], $04
    add $02
    ld l, a
    dec [hl]
    jr z, jr_00b_659d

jr_00b_6589:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    srl a
    srl a
    bit 0, [hl]
    jr nz, jr_00b_6597

    cpl

jr_00b_6597:
    call Call_00b_6830
    jp Jump_00b_61b7


jr_00b_659d:
    xor a
    ld [$cca2], a
    ld [$de29], a
    call Call_00b_6830
    ld l, c
    push hl
    ld b, $3c
    call Call_000_023a
    ld hl, $7877
    ld de, $984c
    call Call_00b_4073
    pop hl
    ld c, l
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add $00
    ldh [$ff8a], a
    inc l
    ld a, [hl+]
    add $fc
    ldh [$ff8b], a
    inc l
    ld de, $78ff
    ld b, $0b
    call Call_000_02d6
    rst $08
    dec h
    call Call_00b_6ff4
    ld a, $31
    add c
    ld l, a
    ld [hl], $5a
    jp Jump_00b_6357


Jump_00b_65df:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld [hl], $5a
    ld a, [$d1e0]
    call Call_000_0222
    jp Jump_00b_6357


Jump_00b_65f2:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    xor a
    ld [$ccc2], a
    ld [$dd01], a
    ld [$ccc1], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
    add $0f
    ld l, a
    ld [hl], $01
    jp Jump_00b_6357


Jump_00b_6612:
    ld a, $31
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_00b_663c

    xor a
    ld [$d74a], a
    ld [$d76e], a
    inc a
    ld [$dee9], a
    call Call_000_015c
    push hl
    push bc
    ld hl, $c100
    ld bc, $0030
    ld a, $10
    call Call_000_0174
    pop bc
    pop hl
    jp Jump_00b_632f


jr_00b_663c:
    call Call_00b_7f17
    jp Jump_00b_61b7


Jump_00b_6642:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_665d

    ld a, $01
    ld [$ca11], a
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $3c
    jp Jump_00b_6357


jr_00b_665d:
    ld a, $21
    add c
    ld l, a
    ld a, [$ca15]
    ld [hl], a
    ld a, $18
    add c
    ld l, a
    ld a, [$ca14]
    ld [hl], a
    push hl
    push af
    call Call_00b_7f3f
    pop de
    pop hl
    ld [hl], $01
    ld a, d
    or a
    jp z, Jump_00b_66a4

    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    call $711e
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    inc a
    cp $04
    jr c, jr_00b_6691

    xor a

jr_00b_6691:
    ld [hl], a
    add $a0
    ld e, a
    ld a, $5e
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $31
    add c
    ld l, a
    ld [hl], b
    jp Jump_00b_61b7


Jump_00b_66a4:
    ld a, $01
    ld [$ccc2], a
    ld [$d703], a
    ld [$c2c4], a
    ld [$de29], a
    ld [$d76e], a
    dec a
    ld [$d75c], a
    ld [$d163], a
    dec a
    ld [$d74a], a
    rst $08
    nop
    rst $08
    ld d, $c3
    cpl
    ld h, e

Jump_00b_66c7:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_66e5

    dec a
    jr z, jr_00b_6725

    dec a
    jr z, jr_00b_6734

    dec a
    jr z, jr_00b_6746

    ld a, $31
    add c
    ld l, a
    ld [hl], $b4
    xor a
    ld [$ccc2], a
    jp Jump_00b_6357


jr_00b_66e5:
    ld a, $21
    add c
    ld l, a
    set 3, [hl]
    add $10
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld [hl], $3c
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add $00
    ldh [$ff8a], a
    inc l
    ld a, [hl+]
    add $10
    ldh [$ff8b], a
    inc l
    ld de, $78ff
    ld b, $0b
    call Call_000_02d6
    rst $08
    nop
    rst $08
    dec h
    ld l, c
    push hl
    ld hl, $78bd
    ld de, $984c
    call Call_00b_4073
    pop hl
    ld c, l
    ld a, $01
    ld [$ca17], a
    jp Jump_00b_6357


jr_00b_6725:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld [hl], $3c
    rst $08
    ld hl, $57c3
    ld h, e

jr_00b_6734:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld [hl], $3c
    ld a, $01
    ld [$ca1d], a
    jp Jump_00b_6357


jr_00b_6746:
    ld a, $31
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_00b_61b7

    ld a, [$ca0b]
    cp $c0
    jp z, Jump_00b_6764

    dec a
    ld [$ca0b], a
    ld a, $0d
    add c
    ld l, a
    inc [hl]
    jp Jump_00b_61b7


Jump_00b_6764:
    ld a, $01
    ld [$ca18], a
    jp Jump_00b_632f


Jump_00b_676c:
    ld a, $20
    ld [$d771], a
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_67a5

    dec a
    jr z, jr_00b_67d9

    dec a
    jr z, jr_00b_67f6

    dec a
    jp z, Jump_00b_6818

    xor a
    ld [$d773], a
    ld [$d774], a
    ld a, [$d74c]
    set 0, a
    ld [$d74c], a
    ld a, $10
    call Call_00b_6822
    ld a, $31
    add c
    ld l, a
    ld [hl], $5a
    add $04
    ld l, a
    ld [hl], $1e
    jp Jump_00b_6357


jr_00b_67a5:
    xor a
    ld [$d773], a
    ld [$d774], a
    ld a, $35
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00b_67bc

    jr nc, jr_00b_67bc

    ld a, $04
    call Call_00b_4009

jr_00b_67bc:
    ld a, $31
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_00b_67d6

    cp $1e
    jp nz, Jump_00b_61b7

    rst $08
    nop
    rst $08
    ld h, e
    ld a, $01
    ld [$de56], a
    jp Jump_00b_61b7


jr_00b_67d6:
    jp Jump_00b_6357


jr_00b_67d9:
    ld a, $10
    call Call_00b_6822
    ld a, [$d722]
    cp $a8
    jp c, Jump_00b_61b7

    xor a
    ld [$d773], a
    ld [$d774], a
    ld a, $31
    add c
    ld l, a
    ld [hl], $3c
    jp Jump_00b_6357


jr_00b_67f6:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_61b7

    ld l, c
    push hl
    rst $28
    ld l, $3e
    ld bc, $a6ea
    call z, $19ea

jr_00b_6809:
    jp z, Jump_000_0801

    rst $38
    ld de, $ffff
    call Call_00b_4094
    pop hl
    ld c, l
    jp Jump_00b_6357


Jump_00b_6818:
    ld a, [$cca8]
    or a
    jp nz, Jump_00b_61b7

    jp Jump_00b_5ec5


Call_00b_6822:
    ld d, a
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Call_00b_6830:
    ld [$cca0], a
    ld b, a
    ld a, $03
    ld [$cca2], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$ca0c]
    add b
    ld [hl], a
    ret


Call_00b_6843:
    ld l, c
    push hl
    ld de, $c3c6
    ld [$ca04], a
    ld a, [$ca03]
    ld b, a

jr_00b_684f:
    ld a, [de]
    or a
    jr z, jr_00b_685f

    cp b
    jr z, jr_00b_685a

    inc de
    inc de
    jr jr_00b_684f

jr_00b_685a:
    xor a
    ld [de], a
    inc de
    ld [de], a
    dec de

jr_00b_685f:
    ld a, [$ca01]
    ld [$c3b4], a
    ld a, [$ca04]
    ld [$ca03], a
    call Call_000_020a
    pop hl
    ld c, l
    ret


    ld a, e
    ld l, b
    stop
    rst $38
    ld a, e
    ld l, b
    db $10
    ld bc, $7fff
    ld l, b
    add h
    ld l, b
    add sp, $18
    add sp, $48
    add b
    add sp, $18
    nop
    jr jr_00b_6809

    nop
    sbc a
    nop
    dec l
    call z, Call_000_2768
    dec h
    nop
    rst $38
    ld [hl], c
    nop
    ld bc, $0240
    dec bc
    jp nz, $e569

    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    inc [hl]
    ld de, $5ea6
    ld a, $8d
    ld [$cc00], a
    ld a, $68
    ld [$cc01], a
    call Call_00b_7bc4
    jr c, jr_00b_68c8

    call Call_00b_68f2

Jump_00b_68b7:
    ld a, $07
    add c
    ld l, a
    ld [hl], $81

Jump_00b_68bd:
    ld a, [$ca00]
    inc a
    ld [$ca00], a
    xor a
    pop hl
    ld c, l
    ret


Jump_00b_68c8:
jr_00b_68c8:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_00b_6926

    dec b
    jp nz, Jump_00b_69a1

Jump_00b_68d4:
    xor a
    ld [$ccbb], a
    ld [$cc97], a
    ld [$cc98], a
    ld [$ca06], a
    ld [$ca05], a
    ld a, $04
    call Call_00b_6b2f

Jump_00b_68e9:
jr_00b_68e9:
    push hl
    ld hl, $ca00
    dec [hl]
    pop hl
    ld b, $00
    ret


Call_00b_68f2:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $e3
    ld l, a
    ld [hl], $70
    inc l
    inc l
    ld [hl], $3c
    call Call_000_025e
    ld a, $05
    add c
    ld l, a
    ld a, [$ca01]
    ld [hl], a
    ld de, $5e56
    call Call_00b_7a00
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add a
    add $58
    ld e, a
    ld a, $5e
    adc $00
    ld d, a
    call Call_00b_79f6
    jp Jump_000_015c


jr_00b_6926:
    ld a, [$ccc2]
    or a
    jr nz, jr_00b_68e9

    ld a, [$deaf]
    or a
    jp nz, Jump_00b_69a1

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_6963

    dec a
    jr z, jr_00b_6992

    call Call_00b_7a98
    call Call_00b_7a46
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00b_699b

    add $ef
    ld l, a
    ld a, [hl]
    cp $28
    jp c, Jump_00b_699b

    ld a, $31
    add c
    ld l, a
    ld [hl], $44
    add $f9
    ld l, a
    ld [hl], $01
    jp Jump_00b_699b


jr_00b_6963:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_00b_699b

    call Call_000_024f
    dec b
    ld a, $2f
    add c
    ld l, a
    ld [hl], b
    inc b
    add $ee
    ld l, a
    ld a, b
    ld de, $0240
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    call Call_000_015c
    call Call_00b_69a8
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    jp Jump_00b_69a1


jr_00b_6992:
    call Call_00b_7a46
    call Call_00b_69a8
    jp Jump_00b_69a1


Jump_00b_699b:
jr_00b_699b:
    ld de, $71eb
    call Call_000_015f

Jump_00b_69a1:
    call Call_00b_7b19
    ret nz

    jp Jump_00b_68e9


Call_00b_69a8:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    srl a
    ld de, $71ab
    call Call_000_0171
    jp Jump_000_015f


    ldh [c], a
    ld l, c
    ld h, a
    dec h
    nop
    ld h, b
    ld [hl], a
    nop
    ld [$0240], sp
    dec bc
    call z, $e569
    ld b, $00
    ld de, $5ea6
    ld a, $b8
    ld [$cc00], a
    ld a, $69
    ld [$cc01], a
    call Call_00b_7bc4
    jp c, Jump_00b_68c8

    call Call_00b_69ed
    jp Jump_00b_68b7


    ld a, b
    dec b
    jr z, jr_00b_6a21

    dec b
    jp nz, Jump_00b_6b28

    jp Jump_00b_68d4


Call_00b_69ed:
    ld b, $00
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    add $06
    ld l, a
    ld [hl], b
    add $06
    ld l, a
    ld [hl], b
    add $d5
    ld l, a
    ld a, [$ca01]
    ld [hl], a
    ld de, $5e5e
    call Call_00b_79a1
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    ld [$ca10], a
    ld a, $0d
    add c
    ld l, a
    ld [hl], $70
    inc l
    inc l
    ld [hl], $43
    call Call_000_025e
    jp Jump_000_015c


jr_00b_6a21:
    ld a, [$ccc2]
    or a
    jp nz, Jump_00b_68d4

    ld a, [$deaf]
    or a
    jp nz, Jump_00b_6b28

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_6a69

    dec a
    jr z, jr_00b_6a9c

    ld de, $7753
    call Call_000_015f
    call Call_00b_7a98
    call Call_00b_7a46
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_00b_6b14

    add $ef
    ld l, a
    ld a, [hl]
    cp $30
    jp c, Jump_00b_6b14

    call Call_000_015c
    ld a, $31
    add c
    ld l, a
    ld [hl], $28
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_00b_6b14


Jump_00b_6a69:
jr_00b_6a69:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1a
    ld l, a
    dec [hl]
    jp nz, Jump_00b_6b14

    ld a, $ff
    ld [$ccbb], a
    inc a
    ld [$cc98], a
    ld [$cc97], a
    ld [$ca06], a
    inc a
    ld [$ca05], a
    ld a, $31
    add c
    ld l, a
    ld [hl], $06
    add $f9
    ld l, a
    inc [hl]

Jump_00b_6a93:
    ld de, $5e62
    call Call_00b_797f
    jp Jump_00b_6b14


jr_00b_6a9c:
    ld a, [$ca06]
    or a
    jr z, jr_00b_6abc

    ld a, $04
    call Call_00b_6b2f
    xor a
    ld [$ca06], a
    ld [$ca05], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    add $07
    ld l, a
    ld [hl], $28
    jp Jump_00b_6a69


jr_00b_6abc:
    ld a, $31
    add c
    ld l, a
    dec [hl]
    jr nz, jr_00b_6ad0

    ld [hl], $06
    add $ff
    ld l, a
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    call Call_00b_6b2f

jr_00b_6ad0:
    ld de, $7758
    call Call_000_015f
    call Call_00b_7a46
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    add $17
    ld l, a
    ld a, b
    bit 0, [hl]
    jr nz, jr_00b_6aec

    cp $10
    jr nc, jr_00b_6afb

    jr jr_00b_6af0

jr_00b_6aec:
    cp $60
    jr c, jr_00b_6afb

jr_00b_6af0:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_00b_6a93


jr_00b_6afb:
    ld a, [$ca05]
    or a
    jr z, jr_00b_6b28

    push hl
    ld d, $ff
    ld e, $00
    call Call_00b_7e2f
    xor a
    ld [$d74b], a
    ld [$d729], a
    ld [$d72a], a
    pop hl

Jump_00b_6b14:
    ld a, [$ca10]
    ld b, a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp b
    jr z, jr_00b_6b28

    ld [$ca10], a
    ld a, $01
    ld [$ca06], a

Jump_00b_6b28:
jr_00b_6b28:
    call Call_00b_7b19
    ret nz

    jp Jump_00b_68d4


Call_00b_6b2f:
    ld l, c
    push hl
    add a
    add a
    add a
    add a
    add a
    add $4c
    ld e, a
    ld a, $6b
    adc $00
    ld d, a
    ld l, e
    ld h, d
    ld bc, $0020
    ld de, $8af0
    call Call_000_0183
    pop hl
    ld c, l
    ret


    rst $38
    nop
    rst $38
    nop
    ei
    nop
    pop af
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ei
    nop
    pop af
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    pop af
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    pop af
    nop
    ldh [rP1], a
    ret nz

    nop
    ccf
    nop
    rra
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
    ld d, $6c
    daa
    dec h
    nop
    jp Jump_000_0073


    ld [bc], a
    ld b, [hl]
    nop
    dec bc
    ret


Call_00b_6bf9:
    ld l, c
    push hl
    ld b, $00
    ld de, $5ea6
    ld a, $ec
    ld [$cc00], a
    ld a, $6b
    ld [$cc01], a
    call Call_00b_7bc4
    jp c, Jump_00b_68c8

    call Call_00b_6c21
    jp Jump_00b_68b7


    ld a, b
    dec b
    jr z, jr_00b_6c93

    dec b
    jp nz, Jump_00b_6da7

    jp Jump_00b_68e9


Call_00b_6c21:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $fa
    ld l, a
    ld [hl], $00
    add $0c
    ld l, a
    ld [hl], $03
    add $dd
    ld e, a
    add $f8
    ld l, a
    ld a, [$ca01]
    ld [hl], a
    ld l, e
    ld [hl], $6c
    inc l
    inc l
    ld [hl], $3c
    call Call_000_025e
    ld a, [$ca1e]
    inc a
    and $0f
    ld [$ca1e], a
    add $66
    ld e, a
    ld a, $5e
    adc $00
    ld d, a
    ld a, [de]
    push af
    add $88
    ld e, a
    ld a, $6c
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $32
    add c
    ld l, a
    ld [hl], b
    ld a, b
    add $8c
    ld e, a
    ld a, $6c
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $17
    add c
    ld l, a
    ld [hl], b
    pop af
    add a
    add a
    add $76
    ld e, a
    ld a, $5e
    adc $00
    ld d, a
    call Call_00b_79a1
    jp Jump_000_015c


    ld b, $04
    ld [bc], a
    nop
    ld [de], a
    rrca
    inc c
    add hl, bc
    ld b, $03
    nop

jr_00b_6c93:
    ld a, [$deaf]
    or a
    jp nz, Jump_00b_6da7

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_6cfa

    dec a
    jp z, Jump_00b_6d5f

    call Call_00b_6f83
    call Call_00b_7a98
    call Call_00b_7a46
    call Call_00b_6e13
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jp nz, Jump_00b_6da7

    add $ef
    ld l, a
    ld a, [hl]
    cp $67
    jp c, Jump_00b_6da7

    ld [hl], $67
    ld a, $30
    add c
    ld l, a
    dec [hl]
    jr z, jr_00b_6cdd

    add $f0
    ld l, a
    ld a, [hl]
    xor $ff
    inc a
    sra a
    ld [hl], a
    dec hl
    ld [hl], $00
    jp Jump_00b_6da7


jr_00b_6cdd:
    call Call_000_015c
    call Call_00b_79c0
    ld b, $00
    ld a, $31
    add c
    ld l, a
    ld [hl], b
    add $fd
    ld l, a
    ld [hl], b
    add $06
    ld l, a
    ld [hl], b

Jump_00b_6cf2:
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_00b_6da7


jr_00b_6cfa:
    ld a, $2e
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00b_6d26

    ld a, $13
    add c
    ld l, a
    ld [hl], $25
    add $06
    ld l, a
    ld [hl], $46
    call Call_00b_6e33
    push af
    ld a, $13
    add c
    ld l, a
    ld [hl], $a4
    add $06
    ld l, a
    ld [hl], $44
    pop af
    jr nc, jr_00b_6d26

    ld a, [$ca09]
    or a
    jr z, jr_00b_6d4a

jr_00b_6d26:
    call Call_00b_6dae
    call Call_00b_6f91
    jp nc, Jump_00b_6da7

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    dec [hl]
    ld a, [hl]
    bit 7, a
    jr nz, jr_00b_6d4a

    bit 0, a
    jp z, Jump_00b_6da7

    ld a, $36
    add c
    ld l, a
    ld [hl], $01
    jp Jump_00b_6da7


jr_00b_6d4a:
    ld b, $2b
    call Call_000_01f8
    ld a, $01
    ld [$ca08], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$ca07], a
    jp Jump_00b_6cf2


Jump_00b_6d5f:
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    res 2, [hl]

Jump_00b_6d67:
    ld de, $6f9f
    ld b, $2b
    call Call_000_01fb
    or a
    jr z, jr_00b_6d9e

    ldh a, [$ff8f]
    or a
    jp nz, Jump_00b_68e9

    ld a, b
    add a
    add $b2
    ld e, a
    ld a, $6f
    adc $00
    ld d, a
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld b, a
    inc de
    inc l
    inc l
    ld a, [de]
    add [hl]
    ld d, a
    ld e, b
    call Call_00b_6fc4
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_00b_6d67

    jr jr_00b_6da4

jr_00b_6d9e:
    ld a, $1a
    add c
    ld l, a
    ld [hl], $00

jr_00b_6da4:
    ld b, $01
    ret


Jump_00b_6da7:
    call Call_00b_7b19
    ret nz

    jp Jump_00b_68e9


Call_00b_6dae:
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00b_6db9

    dec [hl]
    jr jr_00b_6dcf

jr_00b_6db9:
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00b_6dc6

    dec a
    jr z, jr_00b_6dd5

    jr jr_00b_6def

jr_00b_6dc6:
    ld de, $5e86
    call Call_00b_797a
    jp Jump_00b_6dcf


Jump_00b_6dcf:
jr_00b_6dcf:
    call Call_00b_7a22
    jp Jump_00b_6e13


jr_00b_6dd5:
    ld a, $32
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_00b_6de4

    add $04
    ld l, a
    ld [hl], $00
    jr jr_00b_6dcf

jr_00b_6de4:
    ld de, $5e8a
    call Call_00b_797f
    ld a, $36
    add c
    ld l, a
    inc [hl]

jr_00b_6def:
    call Call_00b_79a8
    call Call_00b_7a98
    ld de, $73ed
    call Call_00b_7ad0
    bit 1, a
    jr z, jr_00b_6e13

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_00b_6e13

    ld de, $5e86
    call Call_00b_797f
    ld a, $36
    add c
    ld l, a
    ld [hl], $00

Call_00b_6e13:
Jump_00b_6e13:
jr_00b_6e13:
    ld b, $58
    ld a, $0d
    add c
    ld e, a
    add $1d
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_00b_6e22

    ld b, $ff

jr_00b_6e22:
    ld l, e
    ld a, [hl]
    cp $10
    jr nc, jr_00b_6e2c

    ld a, $10
    jr jr_00b_6e31

jr_00b_6e2c:
    cp b
    jr c, jr_00b_6e32

    ld a, $58

jr_00b_6e31:
    ld [hl], a

jr_00b_6e32:
    ret


Call_00b_6e33:
    ld l, c
    push hl
    xor a
    ld [$ca09], a
    ld a, $ed
    ld [$ce53], a
    ld a, $73
    ld [$ce54], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld e, a
    inc l
    ld a, [hl]
    ld d, a
    xor a
    ld [$d3ea], a
    ld a, $00
    ldh [$ffa9], a
    call Call_000_0276
    call Call_000_0279
    pop hl
    ld c, l
    ret c

    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00b_6e67

    or a
    ret


jr_00b_6e67:
    ld a, $01
    ld [$ca09], a
    ld l, c
    push hl
    call Call_00b_7e3e
    pop hl
    ld c, l
    push af
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    or a
    pop de
    ret nz

    push de
    pop af
    ret nc

    push hl
    push bc
    call Call_00b_6ed4
    pop bc
    pop hl
    ret z

    rst $08
    dec d
    ld b, h
    ld a, [$c22a]
    ld l, a
    ld h, $c2
    ld [hl], $00
    ld h, b
    ld a, $24
    add c
    ld l, a
    ldh a, [$ff8b]
    xor $01
    ld [hl], a
    ldh a, [$ff8a]
    ld de, $5e92
    dec a
    jr z, jr_00b_6ead

    ld de, $5e95
    dec a
    jr z, jr_00b_6ead

    ld de, $5e98

jr_00b_6ead:
    ld a, $34
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    ld d, a
    ld e, l
    ldh a, [$ff8b]
    bit 0, a
    call z, Call_000_016b
    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld de, $0600
    jp Jump_00b_7ea3


Call_00b_6ed4:
    ld a, $2e
    add c
    ld l, a
    ld [hl], $08
    ld l, c
    push hl
    ld a, [$c22a]
    ld l, a
    ld h, $c2
    ld d, [hl]
    ld a, $08
    call Call_000_01cb
    ld a, d
    ldh [$ff8a], a
    pop hl
    ld c, l
    ld a, [$de9b]
    ld de, $6f55
    call Call_000_01c2
    ldh a, [$ff8a]
    or a
    ret


Call_00b_6efa:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ldh a, [$ff9b]

jr_00b_6f04:
    add $30
    cp b
    ld a, $00
    jr nc, jr_00b_6f0c

    inc a

jr_00b_6f0c:
    ldh [$ff8b], a
    ret


Call_00b_6f0f:
jr_00b_6f0f:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld d, $08
    ld a, [$d703]
    or a
    jr z, jr_00b_6f21

    ld d, $f8

jr_00b_6f21:
    ld a, [$d722]
    add d
    jr jr_00b_6f04

    ld b, h
    ld a, [$c22a]
    add $f6
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ldh [$ff9f], a
    ld e, a
    inc l
    ld a, [hl]
    ldh [$ffa0], a
    ld d, a
    bit 7, a
    call nz, Call_000_016b
    ld a, e
    ldh [$ff97], a
    or d
    jr nz, jr_00b_6f47

    ld h, b
    jr jr_00b_6f0f

jr_00b_6f47:
    ld a, d
    ldh [$ff98], a
    ldh a, [$ffa0]
    rlca
    xor $01
    and $01
    ldh [$ff8b], a
    ld h, b
    ret


    daa
    ld l, a
    daa
    ld l, a
    daa
    ld l, a
    ld a, [$276e]
    ld l, a
    daa
    ld l, a
    daa
    ld l, a
    ld l, a
    ld l, a
    daa
    ld l, a
    ld a, c
    ld l, a
    daa
    ld l, a
    daa
    ld l, a
    daa
    ld l, a
    call Call_00b_6f0f
    ld a, $2e
    add c
    ld l, a
    ld [hl], $1e
    ret


    call Call_00b_6efa
    ld a, $2e
    add c
    ld l, a
    ld [hl], $1e
    ret


Call_00b_6f83:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    ld de, $737d
    call Call_000_0171
    jp Jump_000_015f


Call_00b_6f91:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    ld de, $737d
    call Call_000_0171
    jp Jump_00b_7c96


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

Call_00b_6fc4:
    push bc
    push de
    push hl
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    pop de
    pop bc
    ld a, $1a
    add c
    ld l, a
    ld [hl], $06
    call Call_00b_7de4
    ld a, $00
    ld [$c3e2], a
    ld b, $25
    ld de, $5e8e
    jp Jump_000_021f


    rla
    ld [hl], b
    ld e, a
    dec h
    nop
    ccf
    ld [hl], e
    nop
    inc de
    ld b, h
    ld [$c60b], sp

Call_00b_6ff4:
    ld l, c
    push hl
    ld b, $00
    ld de, $5ea6
    ld a, $e7
    ld [$cc00], a
    ld a, $6f
    ld [$cc01], a
    call Call_00b_7bc4
    jp c, Jump_00b_68c8

    call Call_00b_7040
    ld a, $07
    add c
    ld l, a
    ld [hl], $84
    jp Jump_00b_68bd


    ld a, b
    dec b
    jr z, jr_00b_7072

    dec b
    jp nz, Jump_00b_70ee

    jp Jump_00b_7022


Jump_00b_7022:
    xor a
    ld [$ca14], a
    inc a
    ld [$c3e9], a
    ld b, a
    ld a, $18
    add c
    ld l, a
    ld [hl], b
    inc b
    add $12
    ld l, a
    ld [hl], b
    add $e9
    ld l, a
    ld [hl], $a4
    dec b
    xor a
    ld [$ca0d], a
    ret


Call_00b_7040:
    ld a, $0d
    add c
    ld l, a
    ld a, [$ca12]
    add $00
    ld [hl+], a
    inc l
    ld a, [$ca13]
    add $f7
    ld [hl], a
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $ed
    ld l, a
    ld [hl], b
    add $0d
    ld l, a
    ld [hl], b
    add $f5
    ld l, a
    ld [hl], $46
    add $ec
    ld l, a
    ld a, [$ca01]
    ld [hl], a
    call Call_000_025e
    jp Jump_000_015c


jr_00b_7072:
    ld a, $14
    add c
    ld l, a
    set 2, [hl]
    ld a, [$deaf]
    or a
    jp nz, Jump_00b_70ee

    ld a, $0d
    add c
    ld l, a
    ld a, [$ca12]
    add $00
    ld [hl+], a
    inc l
    ld a, [$ca13]
    add $f7
    ld [hl], a
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_70b4

    dec a
    jp z, Jump_00b_70ca

    ld a, [$ca11]
    or a
    jr z, jr_00b_70ee

    xor a
    ld [$ca11], a
    ld a, $19
    add c
    ld l, a
    ld [hl], $44
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_00b_70e8


jr_00b_70b4:
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_00b_70e8

    ld [$ca15], a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    ld [$ca14], a
    jp Jump_00b_70e8


Jump_00b_70ca:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $0d
    ld l, a
    ld a, [$ca1d]
    ld [hl], a
    ld a, [$ca17]
    or a
    call nz, Call_00b_70f5
    ld a, [$ca18]
    or a
    jp nz, Jump_00b_68e9

    jp Jump_00b_70ee


Jump_00b_70e8:
jr_00b_70e8:
    ld de, $7339
    call Call_000_015f

Jump_00b_70ee:
jr_00b_70ee:
    call Call_00b_7b19
    ret nz

    jp Jump_00b_7022


Call_00b_70f5:
    ld a, $31
    add c
    ld l, a
    ld de, $78ef
    inc [hl]
    bit 2, [hl]
    jr z, jr_00b_7104

    ld de, $78f7

jr_00b_7104:
    ld l, c
    push hl
    push de
    pop hl
    ld de, $98ad
    call Call_00b_4073
    pop hl
    ld c, l
    ret


    dec sp
    ld [hl], c
    ld b, a
    dec h
    nop
    ld sp, hl
    ld [hl], d
    nop
    ld bc, $0245
    dec bc
    jp $e569


    ld b, $00
    ld de, $5ea6
    ld a, $11
    ld [$cc00], a
    ld a, $71
    ld [$cc01], a
    call Call_00b_7bc4
    jp c, Jump_00b_68c8

    call Call_00b_7146
    jp Jump_00b_68b7


    ld a, b
    dec b
    jr z, jr_00b_7177

    dec b
    jp nz, Jump_00b_71a4

    jp Jump_00b_68e9


Call_00b_7146:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $ed
    ld l, a
    ld [hl], b
    add $0d
    ld l, a
    ld [hl], b
    add $0d
    ld l, a
    ld [hl], $1e
    add $dc
    ld l, a
    ld [hl], $68
    add $02
    ld l, a
    ld [hl], $66
    add $f6
    ld l, a
    ld a, [$ca02]
    ld [hl], a
    ld de, $5ea4
    call Call_00b_79da
    call Call_000_025e
    jp Jump_000_015c


jr_00b_7177:
    ld a, [$ccc2]
    or a
    jp nz, Jump_00b_68e9

    ld a, [$deaf]
    or a
    jp nz, Jump_00b_71a4

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_00b_719b

    ld a, $31
    add c
    ld l, a
    dec [hl]
    jr nz, jr_00b_719e

    add $f9
    ld l, a
    inc [hl]
    jp Jump_00b_719e


jr_00b_719b:
    call Call_00b_7a22

Jump_00b_719e:
jr_00b_719e:
    ld de, $72ef
    call Call_000_015f

Jump_00b_71a4:
    call Call_00b_7b19
    ret nz

    jp Jump_00b_68e9


    cp e
    ld [hl], c
    pop bc
    ld [hl], c
    rst $00
    ld [hl], c
    call $d371
    ld [hl], c
    reti


    ld [hl], c
    rst $18
    ld [hl], c
    push hl
    ld [hl], c
    rst $38
    ld [hl], c
    inc b
    nop
    ld [$ffff], sp
    ld [hl], c
    inc b
    ld bc, $ff09
    rst $38
    ld [hl], c
    inc b
    ld [bc], a
    ld a, [bc]
    rst $38
    rst $38
    ld [hl], c
    inc b
    inc bc
    dec bc
    rst $38
    rst $38
    ld [hl], c
    inc b
    inc b
    inc c
    rst $38
    rst $38
    ld [hl], c
    inc b
    dec b
    dec c
    rst $38
    rst $38
    ld [hl], c
    inc b
    ld b, $0e
    rst $38
    rst $38
    ld [hl], c
    inc b
    rlca
    rrca
    rst $38
    rst $38
    ld [hl], c
    ld [bc], a
    nop
    ld [$0901], sp
    ld [bc], a
    ld a, [bc]
    inc bc
    dec bc
    inc b
    inc c
    dec b
    dec c
    ld b, $0e
    rlca
    rrca
    rst $38
    rra
    ld [hl], d
    add hl, sp
    ld [hl], d
    ld d, e
    ld [hl], d
    ld l, l
    ld [hl], d
    add a
    ld [hl], d
    and c
    ld [hl], d
    cp e
    ld [hl], d
    push de
    ld [hl], d
    inc l
    ld [hl], d
    ld b, [hl]
    ld [hl], d
    ld h, b
    ld [hl], d
    ld a, d
    ld [hl], d
    sub h
    ld [hl], d
    xor [hl]
    ld [hl], d
    ret z

    ld [hl], d
    ldh [c], a
    ld [hl], d
    ld a, [$fa05]
    dec b
    ld hl, sp-$04
    ld [bc], a
    ld d, b
    rlca
    nop
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    ld hl, sp-$04
    ld [bc], a
    ld d, b
    ld b, $00
    inc b
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    cp $fa
    inc bc
    db $10
    ei
    dec b
    ld bc, $ff70
    ld a, [$fa05]
    dec b
    cp $fa
    inc b
    db $10
    db $fc
    inc b
    ld bc, $ff70
    ld a, [$fa05]
    dec b
    db $fc
    nop
    nop
    jr nc, jr_00b_725c

jr_00b_725c:
    ld sp, hl
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    db $fc
    nop
    nop
    jr nc, jr_00b_7269

jr_00b_7269:
    ld a, [$1004]
    rst $38
    ld a, [$fa05]
    dec b
    cp $fe
    ld bc, $fb30
    ei
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    cp $fe
    ld bc, $fc30
    db $fc
    inc b
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    nop
    db $fc
    ld [bc], a
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    nop
    db $fc
    ld [bc], a
    db $10
    ld a, [$0400]
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    cp $fa
    ld bc, $fb10
    dec b
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    cp $fa
    ld bc, $fc10
    inc b
    inc b
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    db $fc
    ld hl, sp+$00
    stop
    rlca
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    db $fc
    ld hl, sp+$00
    stop
    ld b, $04
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    ld a, [$01fa]
    ld d, b
    dec b
    dec b
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    ld a, [$01fa]
    ld d, b
    inc b
    inc b
    inc b
    db $10
    rst $38
    ld sp, hl
    ld [hl], d
    inc b
    nop
    ld bc, $0002
    ld bc, $ff03
    ld bc, $0a73
    ld [hl], e
    rla
    ld [hl], e
    jr z, @+$75

    db $fc
    ld [bc], a
    inc b
    ld [$fc02], sp
    nop
    db $10
    add b
    ld hl, sp+$06
    inc b
    ld [$f802], sp
    ld bc, $0010
    rlca
    ld bc, $8030
    ld a, [$fe08]
    ld [$fbfa], sp
    ld [bc], a
    db $10
    ld [$03ff], sp
    stop
    ld [$1004], sp
    add b
    ld a, [$fe08]
    ld [$01fa], sp
    dec b
    db $10
    ld [$06f9], sp
    stop
    ld [$1007], sp
    add b
    ccf
    ld [hl], e
    inc c
    nop
    ld bc, $43ff
    ld [hl], e
    ld h, b
    ld [hl], e
    db $f4
    dec bc
    ld sp, hl
    rlca
    ld sp, hl
    db $f4
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
    di
    ld a, [bc]
    ld sp, hl
    rlca
    ld sp, hl
    di
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
    cp e
    ld [hl], e
    or e
    ld [hl], e
    xor e
    ld [hl], e
    and e
    ld [hl], e
    sbc e
    ld [hl], e
    sub e
    ld [hl], e
    adc e
    ld [hl], e
    jp $0f73


    nop
    ld bc, $0200
    rst $38
    jp $0f73


    inc bc
    inc b
    inc bc
    dec b
    rst $38
    jp $0f73


    ld b, $07
    ld b, $08
    rst $38
    jp $0f73


    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    rst $38
    jp $0f73


    inc c
    dec c
    inc c
    ld c, $ff
    jp $0f73


    rrca
    db $10
    rrca
    ld de, $c3ff
    ld [hl], e
    rrca
    ld [de], a
    inc de
    ld [de], a
    inc d
    rst $38
    db $ed
    ld [hl], e
    ld d, $74
    ccf
    ld [hl], h
    ld l, b
    ld [hl], h
    sub c
    ld [hl], h
    cp d
    ld [hl], h
    db $e3
    ld [hl], h
    inc c
    ld [hl], l
    dec [hl]
    ld [hl], l
    ld e, [hl]
    ld [hl], l
    add a
    ld [hl], l
    or b
    ld [hl], l
    reti


    ld [hl], l
    ld [bc], a
    halt
    dec hl
    halt
    ld d, h
    halt
    ld a, l
    halt
    and [hl]
    halt
    rst $08
    halt
    ld hl, sp+$76
    ld hl, $f677
    dec bc
    push af
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
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
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
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
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
    ld [$0cf0], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    or $0b
    push af
    ld [$f4f3], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$100f], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1010], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$100f], sp
    nop
    ld [$1005], sp
    ld [$09f0], sp
    stop
    ld [$1011], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$100f], sp
    nop
    ld [$1005], sp
    ld [$0cf0], sp
    stop
    ld [$1012], sp
    nop
    ld [$100e], sp
    add b
    or $0b
    push af
    ld [$f4f3], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1014], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$1005], sp
    ld [$09f0], sp
    stop
    ld [$1015], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$1005], sp
    ld [$0cf0], sp
    stop
    ld [$1016], sp
    nop
    ld [$100e], sp
    add b
    or $0b
    push af
    ld [$f4f3], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1017], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1017], sp
    nop
    ld [$1005], sp
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1017], sp
    nop
    ld [$1005], sp
    ld [$0cf0], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    or $0b
    push af
    ld [$f4f3], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1014], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1005], sp
    ld [$09f0], sp
    stop
    ld [$1015], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1005], sp
    ld [$0cf0], sp
    stop
    ld [$1016], sp
    nop
    ld [$100e], sp
    add b
    or $0b
    push af
    ld [$f4f3], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$101a], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$1005], sp
    ld [$09f0], sp
    stop
    ld [$101b], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$1005], sp
    ld [$0cf0], sp
    stop
    ld [$101c], sp
    nop
    ld [$100e], sp
    add b
    or $0b
    push af
    ld [$f4f3], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$101d], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$101d], sp
    nop
    ld [$1005], sp
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    or $0b
    db $f4
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$101d], sp
    nop
    ld [$1005], sp
    ld [$0cf0], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    ld h, b
    ld [hl], a
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    rst $38
    ld h, b
    ld [hl], a
    ld [$ff00], sp
    ld h, b
    ld [hl], a
    inc bc
    ld [bc], a
    inc b
    inc bc
    ld bc, $6aff
    ld [hl], a
    sub a
    ld [hl], a
    ret z

    ld [hl], a
    db $fd
    ld [hl], a
    ld [hl-], a
    ld a, b
    db $f4
    dec bc
    ldh a, [c]
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$04e8], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    add b
    db $f4
    dec bc
    db $ec
    ld [$f4ea], sp
    ld a, [bc]
    stop
    rrca
    ld a, [bc]
    db $10
    ld [$0bf1], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$0ef0], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    add b
    db $f4
    dec bc
    db $ec
    ld [$f4ea], sp
    ld a, [bc]
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$0bf0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$0ef0], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    add b
    db $f4
    dec bc
    db $ec
    ld [$f4ea], sp
    jr jr_00b_7815

    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    ld [$1bf0], sp
    stop
    ld [$101c], sp

jr_00b_7815:
    nop
    ld [$101d], sp
    ld [$1ef0], sp
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
    db $f4
    dec bc
    db $ec
    ld [$f4ea], sp
    inc h
    stop
    ld [$1025], sp
    nop
    ld [$1026], sp
    ld [$27f0], sp
    stop
    ld [$1028], sp
    nop
    ld [$1029], sp
    ld [$2af0], sp
    stop
    ld [$102b], sp
    nop
    ld [$102c], sp
    ld [$2df0], sp
    stop
    ld [$102e], sp
    nop
    ld [$102f], sp
    add b
    xor e
    ld a, b
    adc h
    sbc c
    xor e
    ld a, b
    ld c, h
    sbc c
    xor e
    ld a, b
    inc c
    sbc c
    sbc c
    ld a, b
    call z, Call_000_0898
    inc b
    ld bc, $0f01
    db $10
    ld de, $0112
    ld bc, $1701
    jr jr_00b_7888

    inc bc
    add hl, de
    ld a, [de]

jr_00b_7888:
    ld bc, $2101
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl+], a
    ld bc, $2a01
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $0208
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00b_78dd

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld [$0102], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [$0106], sp
    ld bc, $100f
    ld de, $0112
    ld bc, $1701
    jr jr_00b_78ce

    inc bc
    add hl, de
    ld a, [de]

jr_00b_78ce:
    ld bc, $2101
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl+], a
    ld bc, $b101
    or d
    or e
    or h
    or l

jr_00b_78dd:
    or [hl]
    ld bc, $8d01
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    or c
    or d
    or e
    or h
    or l
    or [hl]
    ld b, $01
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
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
    jr jr_00b_793a

    dec d
    inc c
    nop
    inc e

jr_00b_793a:
    ldh a, [rP1]
    nop
    ldh [rP1], a
    db $e4
    ldh a, [rP1]
    db $e4
    stop
    nop
    jr nz, jr_00b_794c

    inc e
    stop
    inc hl

jr_00b_794c:
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
    jr z, jr_00b_795b

    inc hl

jr_00b_795b:
    inc d
    cp $cd
    sbc b
    ld a, d
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


Call_00b_797a:
    push de
    call Call_00b_79a8
    pop de

Call_00b_797f:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_00b_79a1

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
    jr nz, jr_00b_7997

    inc a

jr_00b_7997:
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


Call_00b_79a1:
Jump_00b_79a1:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_00b_79a8:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_00b_79b9

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_00b_79ba

jr_00b_79b9:
    inc d

jr_00b_79ba:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_00b_79c0:
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


Call_00b_79da:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_00b_79f6

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_00b_79ec

    inc a

jr_00b_79ec:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00b_79f6:
jr_00b_79f6:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_00b_7a00:
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
    jr jr_00b_7a14

    ld a, $1f
    add c
    ld l, a

jr_00b_7a14:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_00b_7a1e

    inc d

jr_00b_7a1e:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_00b_7a22:
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


Call_00b_7a34:
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


Call_00b_7a46:
Jump_00b_7a46:
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
    jr nz, jr_00b_7a96

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_00b_7a81

    xor a

jr_00b_7a81:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_00b_7a96

    ld a, [de]
    add b
    cp $d0
    jr c, jr_00b_7a8f

    xor a

jr_00b_7a8f:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_00b_7a96:
    or a
    ret


Call_00b_7a98:
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
    jr nz, jr_00b_7ab3

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_00b_7ab3

    ld de, $0350

jr_00b_7ab3:
    ld [hl], d
    dec l
    ld [hl], e
    ret


    push de
    call Call_00b_7a98
    pop de
    call Call_00b_7ad0
    ret z

    bit 0, a
    jr z, jr_00b_7ac8

    ld a, $1d
    jr jr_00b_7aca

jr_00b_7ac8:
    ld a, $1f

jr_00b_7aca:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_00b_7ad0:
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


Call_00b_7b19:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_00b_7b29

    cp $90
    jr nc, jr_00b_7b3e

jr_00b_7b29:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_00b_7b36

    cp $c0
    jr nc, jr_00b_7b3e

jr_00b_7b36:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_00b_7b3e:
    xor a
    ld b, a
    ret


    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


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
    call Call_00b_7b77
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
    jp Jump_00b_7a46


Call_00b_7b77:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    ld a, [hl]
    or a
    jr z, jr_00b_7b83

    dec [hl]
    jr jr_00b_7bb5

jr_00b_7b83:
    ld [hl], e
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
    jr nz, jr_00b_7b9c

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_00b_7bb5

jr_00b_7b9c:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_00b_7bb5

    dec a
    ld e, $01
    jr z, jr_00b_7baf

    ld e, $ff

jr_00b_7baf:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_00b_7bb5:
    pop bc
    pop hl
    ld a, [hl]
    ret


    xor a
    ld [$d771], a
    ld [$d76e], a
    ld [$de29], a
    ret


Call_00b_7bc4:
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
    jr nc, jr_00b_7c6f

    cpl
    inc a
    scf

jr_00b_7c6f:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_00b_7d4f
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


Call_00b_7c96:
Jump_00b_7c96:
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


Call_00b_7cb0:
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


Call_00b_7cc3:
    xor a
    jr jr_00b_7cc8

Call_00b_7cc6:
    ld a, $ff

jr_00b_7cc8:
    ld l, $01
    jr jr_00b_7cd3

Call_00b_7ccc:
    xor a
    jr jr_00b_7cd1

Call_00b_7ccf:
    ld a, $01

jr_00b_7cd1:
    ld l, $00

jr_00b_7cd3:
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
    jr nz, jr_00b_7cf0

    inc de

jr_00b_7cf0:
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


    push de
    call Call_00b_7ccf
    pop de
    jr c, jr_00b_7d18

jr_00b_7d0a:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_00b_7ccf
    pop de
    jr nc, jr_00b_7d0a

    or a
    ret


jr_00b_7d18:
    push de
    call Call_00b_7ccc
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_00b_7d18

    push de
    call Call_00b_7cc6
    pop de
    jr c, jr_00b_7d3a

jr_00b_7d2c:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_00b_7cc6
    pop de
    jr nc, jr_00b_7d2c

    or a
    ret


jr_00b_7d3a:
    push de
    call Call_00b_7cc3
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_00b_7d3a

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_00b_7d4f:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_00b_7d58:
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
    jr nc, jr_00b_7d6c

    add hl, bc
    jr jr_00b_7d6d

jr_00b_7d6c:
    inc de

jr_00b_7d6d:
    pop af
    dec a
    jr nz, jr_00b_7d58

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
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


    xor a
    ld [$de2c], a
    ld [$cc6c], a
    ld a, $80
    ld [$cc6b], a
    ld a, [$de96]
    ld [$cc6f], a
    ld a, $01
    ld [$cc6d], a
    ret


    ld a, [$cc6a]
    ld b, a
    ld a, [$d7d2]
    sub b
    ld [$d8ac], a
    ld a, $7f
    ld [$d8ad], a
    ld a, $08
    ld [$de2c], a
    ret


    xor a
    ld [$cc81], a
    xor a
    ld [$cc6a], a
    ld a, [$d7d2]
    ld [$d8ac], a
    ret


    ld a, [$c3ef]
    ld e, a
    ld a, [$c3f0]
    ld d, a
    jr jr_00b_7dd5

    ld a, [$d72f]
    ld e, a
    ld a, [$d730]
    ld d, a

jr_00b_7dd5:
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


Call_00b_7de4:
    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_00b_7df7

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_00b_7df7

    ld b, $20

jr_00b_7df7:
    ld a, b
    ld [$d3ea], a
    ld a, e
    ldh [$ffa4], a
    ld a, d
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


Call_00b_7e2f:
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


Call_00b_7e3e:
    ld hl, $c204
    call Call_00b_7e48
    ret c

    ld hl, $c218

Call_00b_7e48:
    ld a, [hl+]
    or a
    ret z

    ldh a, [$ff8a]
    sub [hl]
    cp $e0
    jr c, jr_00b_7e53

    xor a

jr_00b_7e53:
    ld c, a
    inc l
    ldh a, [$ff8b]
    sub [hl]
    cp $e0
    jr c, jr_00b_7e5d

    xor a

jr_00b_7e5d:
    ld e, a
    inc l
    ldh a, [$ff8c]
    sub [hl]
    cp $e0
    jr c, jr_00b_7e67

    xor a

jr_00b_7e67:
    ld b, a
    inc l
    ldh a, [$ff8d]
    sub [hl]
    ld d, a
    inc l

jr_00b_7e6e:
    ld a, [hl+]
    or a
    ret z

    ld [$c22a], a
    ld a, [hl+]
    cp c
    jr c, jr_00b_7e84

    cp e
    jr nc, jr_00b_7e84

    ld a, [hl+]
    cp b
    jr c, jr_00b_7e6e

    cp d
    jr c, jr_00b_7e87

    jr jr_00b_7e6e

jr_00b_7e84:
    inc l
    jr jr_00b_7e6e

jr_00b_7e87:
    dec l
    ld a, [hl-]
    ldh [$ff9c], a
    ld a, [hl]
    ldh [$ff9b], a
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


Jump_00b_7ea3:
    ld a, $1e
    add c
    ld l, a
    ld a, [hl-]
    bit 7, a
    jr nz, jr_00b_7eb5

    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret c

    ld [hl], d
    dec l
    ld [hl], e
    ret


jr_00b_7eb5:
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_00b_7ebf

    inc d

jr_00b_7ebf:
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret nc

    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_00b_7ec8:
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
    ld de, $7f13
    call Call_00b_797f
    ld a, $01
    ld [$d703], a
    ret


    nop
    nop
    nop
    inc bc

Call_00b_7f17:
    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_00b_7f33

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


jr_00b_7f33:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $02
    ld [$dd00], a
    ret


Call_00b_7f3f:
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


Call_00b_7f54:
    ld a, [$ccc1]
    or a
    jr nz, jr_00b_7f67

    ld a, $01
    ld [$ccc1], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $0a
    xor a
    ret


jr_00b_7f67:
    call Call_00b_7ad0
    and $02
    ret


    push hl
    push bc
    call Call_00b_7f54
    pop bc
    pop hl
    or a
    jr z, jr_00b_7f8e

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
    jr jr_00b_7f94

jr_00b_7f8e:
    ld b, l
    ld a, $17
    add c
    ld l, a
    ld [hl], b

jr_00b_7f94:
    call Call_000_025e
    ld b, $01
    ret


Jump_00b_7f9a:
    push de
    call Call_00b_7c96
    pop de
    call Call_00b_7cb0
    jr nz, jr_00b_7f94

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_00b_7fc2

    ld a, $01
    ld [$dee9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$d74a], a
    call Call_000_015c
    jr jr_00b_7f94

jr_00b_7fc2:
    call Call_00b_7f17
    jr jr_00b_7f94

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
