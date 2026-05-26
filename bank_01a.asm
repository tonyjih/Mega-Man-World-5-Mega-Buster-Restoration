; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_01a_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01a_403f

    ld b, c
    db $20, $c3
    or h
    ld b, b
    ld e, h
    ld b, l
    ld a, a
    ld c, c
    and d
    ld c, c
    push bc
    ld c, c
    ret z

    ld c, h
    cp e
    ld d, c
    cp [hl]
    ld d, [hl]
    ld bc, $1457
    ld d, a
    sub a
    ld e, c
    xor d
    ld e, e
    adc l
    ld e, h
    add b
    ld e, l
    db $e3
    ld h, h
    add $6b
    reti


    ld [hl], d
    xor h
    halt
    di
    ld hl, $cca8
    ld [hl], $01
    inc hl
    xor a
    ld [hl+], a
    ld [hl], c

jr_01a_403f:
    inc hl
    ld [hl], b
    ei
    ret


Call_01a_4043:
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


Call_01a_405b:
jr_01a_405b:
    ld a, [$cca8]
    and $07
    jr nz, jr_01a_405b

    ret


    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_01a_4067:
    push bc
    push de
    ld b, $00

jr_01a_406b:
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
    jr nz, jr_01a_4067

    ret


    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_01a_4043
    call Call_01a_405b
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
    ld a, $e7
    ld [$de87], a
    jp Jump_000_01c5


    ld a, [$c2c2]
    swap a
    and $03
    ld [$c2c1], a
    push bc
    push de
    push hl
    ld b, d
    ld a, [$cc4a]
    or a
    jp z, Jump_01a_416a

    cp $5c
    ld hl, $417e
    jr c, jr_01a_40dd

    sub $80
    jp c, Jump_01a_416a

    cp $06
    jp nc, Jump_01a_416a

    ld hl, $451a

jr_01a_40dd:
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld e, l
    ld d, h
    add hl, hl
    add hl, hl
    add hl, de
    ld d, $00
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    add hl, de
    ld c, $00
    ld a, [$c2c2]
    bit 7, a
    jr nz, jr_01a_4105

    ld a, [$c2c2]
    and $30
    cp $20
    jr nz, jr_01a_4117

    ld c, $01
    jr jr_01a_4117

jr_01a_4105:
    ld a, [$de9b]
    cp $01
    jr z, jr_01a_4117

    ld e, a
    dec e
    cp $08
    jr z, jr_01a_4117

    jr c, jr_01a_4119

    dec e
    jr jr_01a_4119

jr_01a_4117:
    ld e, $00

jr_01a_4119:
    ld d, $00
    add hl, de
    ld a, [$c238]
    or $09
    ld [$c238], a
    ld a, [hl]
    cp $ff
    jr nz, jr_01a_412d

    ld d, $02
    jr jr_01a_4133

jr_01a_412d:
    cp $fe
    jr nz, jr_01a_413e

jr_01a_4131:
    ld d, $04

jr_01a_4133:
    ld a, [$c238]
    or d
    ld [$c238], a
    ld b, $00
    jr jr_01a_416a

jr_01a_413e:
    cp $fd
    jr nz, jr_01a_414c

    ld a, [$c238]
    set 4, a
    ld [$c238], a
    jr jr_01a_416a

jr_01a_414c:
    and $f0
    cp $e0
    jr nz, jr_01a_415c

    bit 0, c
    jr z, jr_01a_4131

    ld a, [hl]
    and $0f
    ld b, a
    jr jr_01a_416a

jr_01a_415c:
    cp $d0
    jr nz, jr_01a_4166

    ld a, [hl]
    and $0f
    ld b, a
    jr jr_01a_4178

jr_01a_4166:
    ld a, [hl]
    and $1f
    ld b, a

Jump_01a_416a:
jr_01a_416a:
    ld a, [$c2c1]
    inc a
    ld e, a
    dec e
    jr z, jr_01a_4178

    ld a, b

jr_01a_4173:
    add b
    dec e
    jr nz, jr_01a_4173

    ld b, a

jr_01a_4178:
    pop hl
    pop de
    ld d, b
    pop bc
    ld a, [$0007]
    or a
    jr z, jr_01a_4184

    ld d, $14

jr_01a_4184:
    ld a, d
    ld [$cc4b], a
    ret


    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld bc, $fdfd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a

Jump_01a_41e3:
    ld bc, $0602
    ld b, $01
    ld b, $06
    inc b
    inc b
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $0302
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0303
    add hl, bc
    ld [bc], a
    add hl, bc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0402
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0602
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    ld b, $05
    db $fd
    ld bc, $0602
    inc b
    ld [bc], a
    db $fd
    db $fd
    db $fd
    ld b, $fd
    db $fd
    ld bc, $0302
    ld b, $02
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    cp $01
    ld bc, $0102
    ld bc, $0502
    ld bc, $0101
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
    ld bc, $0502
    inc bc
    dec b
    dec b
    inc bc
    dec b
    add hl, bc
    dec b
    add hl, bc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $0302
    ld [bc], a
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    inc bc
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc b
    ld [$0808], sp
    ld bc, $0302
    dec b
    inc bc
    inc bc
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    ld bc, $0402
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0302
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld bc, $0202
    ld [bc], a
    ld bc, $0102
    ld bc, $0204
    inc b
    ld bc, $fe02
    ld [bc], a
    inc bc
    ld [bc], a
    cp $fe
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $0602
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    ld b, $01
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0302
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0402
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0402
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld bc, $0404
    inc b
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $01fe
    inc bc
    ld bc, $0101
    ld bc, $01fe
    ld bc, $fe01
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $02fe
    ld bc, $fe01
    inc bc
    ld bc, HeaderLogo
    ld bc, $fe01
    ld bc, $0101
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    ld bc, $0404
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $01fe
    ld [bc], a
    cp $01
    inc bc
    ld bc, $01fe
    ld bc, $fe01
    cp $03
    ld bc, $0101
    ld bc, $02fe
    ld bc, $0201
    inc bc
    inc bc
    ld bc, $0102
    add hl, bc
    add hl, bc
    dec b
    add hl, bc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $01fe
    cp $03
    ld bc, $0201
    cp $01
    ld bc, $0201
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0102
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld b, $01
    cp $03
    ld bc, $0102
    ld bc, $fefe
    ld [bc], a
    ld bc, $fe01
    cp $02
    cp $fe
    cp $04
    cp $fe
    cp $01
    inc bc
    ld bc, $0101
    cp $01
    ld [bc], a
    cp $fe
    ld bc, $fed1
    cp $fe
    cp $fe
    ld bc, $fefe
    dec b
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $fefe
    ld bc, $0102
    cp $01
    cp $01
    inc b
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $0302
    dec b
    ld [bc], a
    cp $01
    inc bc
    ld [bc], a
    cp $fe
    ld bc, $0302
    dec b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    cp $fe
    ld bc, $fdfd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $03fe
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0602
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld b, $06
    inc bc
    ld b, $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $01fe
    inc bc
    ld bc, $0101
    inc bc
    cp $fe
    ld bc, $fed1
    ld bc, $0101
    ld bc, $0101
    cp $01
    ld bc, $fe01
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fd
    db $fd
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $fd01
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $fe02
    ld [bc], a
    ld [bc], a
    cp $02
    ld [bc], a
    cp $fe
    cp $e1
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld b, d
    ld e, a
    ld b, l
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr @-$0f

    ldh a, [$ffbf]
    xor $71
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ff90], a
    ld [hl], b
    srl e
    cp l
    ld a, a
    adc $fa
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    ld c, h
    ld [hl], e
    db $ec
    di
    ld [hl], c
    cp a
    rst $38
    rst $28
    cp a
    db $eb
    ld l, e
    or h

jr_01a_459b:
    ldh a, [$ff1f]
    ld l, c
    cp a
    inc b
    db $fc
    ld l, a
    rst $30
    xor $b5
    rst $28
    scf
    xor h

jr_01a_45a8:
    ld a, a
    ld e, e
    db $fc
    xor a
    ld hl, sp-$25
    db $ec
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

    jr nz, jr_01a_459b

    cp b
    ld a, b
    ld [hl], h
    db $fc
    rla
    rra
    cpl
    inc sp
    ld a, e
    ld [hl], a
    jp z, $b4fe

    call z, $9cf4
    ld a, b
    ld c, b
    jr nc, jr_01a_45ff

    or a
    rst $28
    ld hl, sp-$19
    cpl
    jr nc, jr_01a_45ed

    jr jr_01a_45e4

    rrca

jr_01a_45d9:
    dec de
    rra
    ld a, a
    ld a, h
    rst $38
    sbc a
    inc a
    rst $08
    rst $30
    rrca
    db $e4

jr_01a_45e4:
    inc e
    adc b
    ld a, b
    jr nc, jr_01a_45d9

    call c, $bffc
    ld a, a

jr_01a_45ed:
    cp $ff
    ld [$f6de], a
    adc [hl]
    cp [hl]
    add $5c
    ld l, h
    jr c, jr_01a_4631

    nop
    nop
    nop
    nop
    add b
    add b

jr_01a_45ff:
    ld bc, $0101
    ld bc, $0302
    dec b
    ld b, $0f
    inc c
    scf
    jr c, jr_01a_466b

    ld h, b
    ld a, a
    ld a, a
    ld c, a
    cp a
    add sp, -$08
    ldh a, [$ff30]
    ret nc

    jr nc, jr_01a_45a8

    ld [hl], b
    jr nc, @-$0e

    sub b
    ld [hl], b
    ldh [$ffe0], a
    ld hl, sp-$01
    rrca
    ld c, $0b
    dec c
    inc de
    inc e
    ld d, $19
    dec h
    dec sp
    cpl
    jr nc, jr_01a_464d

    rra
    ret nz

    ld b, b

jr_01a_4631:
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    and b
    ld h, b
    ldh [$ffe0], a
    inc c
    inc c
    rra
    dec de
    ld e, $1d
    inc de
    ld e, $0b
    ld c, $07
    ld b, $07
    dec b

jr_01a_464d:
    ld b, $06
    ld bc, $7801
    ld a, b
    add a
    rst $38
    ld a, a
    rst $00
    rst $30
    ld c, a
    rst $08
    rst $38
    ldh a, [$fff0]
    nop
    nop
    ld c, h
    ld [hl], e
    db $ec
    di
    ld [hl], c
    cp a
    rst $38
    rst $28
    cp a
    db $eb
    ld l, e
    or h

jr_01a_466b:
    or $1f
    ld l, a
    cp a
    or a
    rst $28
    ld a, b
    ld h, a
    cpl
    jr nc, jr_01a_468d

    jr jr_01a_4684

    rrca

jr_01a_4679:
    dec sp
    ccf
    ld a, a
    ld a, h
    cp a
    rst $38
    inc a
    rst $08
    rst $30
    rrca
    db $e4

jr_01a_4684:
    inc e

jr_01a_4685:
    adc b
    ld a, b
    jr nc, jr_01a_4679

    ret c

    ld hl, sp-$41
    ld a, a

jr_01a_468d:
    rst $38
    db $fc
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr jr_01a_4685

    ldh a, [$ffbf]
    xor $71
    ld a, a
    ld c, h
    ld [hl], e
    db $ec
    di
    add b
    add b
    ld h, b
    ldh [$ff90], a
    ld [hl], b
    srl e
    cp l
    ld a, a
    adc $fa
    inc b
    db $fc
    ld l, a
    rst $30
    rla
    dec de
    rrca
    ld c, $0b
    ld c, $16
    dec de
    rra
    ld de, $1b16
    dec sp
    ld a, $3f
    ld a, $1e
    ei
    cp $f3
    ld a, [$b5b7]
    ld c, a
    ld a, [bc]
    rst $38
    sbc l
    cp $73
    db $fc
    adc a
    ld [hl], b
    add sp, $58
    ld hl, sp+$78
    call nz, $b2fc
    adc $fa
    add [hl]
    or [hl]
    adc $ce
    cp $7d
    rst $38
    ld e, [hl]
    ld l, a
    ld d, l
    ld l, l
    ld [hl], h
    ld a, h
    call z, $b5fc
    call $9df5
    ld a, e
    ld c, e
    inc sp
    ld [hl-], a
    cp $01
    ld a, b
    add a
    jp $bdff


    rst $38
    ei
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld l, h
    ld e, e
    db $dd
    sub a
    sbc c
    rra
    dec e
    inc de
    rra
    dec l
    inc sp
    xor a
    cp c
    sbc [hl]
    sub d
    adc h
    adc h
    dec b
    ld b, $07
    rlca
    dec bc
    inc c
    dec de
    inc e
    ld [hl], $39
    ld l, [hl]
    ld [hl], c
    cp a
    ret nz

    rst $38
    rst $38
    add hl, hl
    xor $ab
    rst $28
    rst $28
    xor $45
    add $44
    rst $00
    add $c7
    ld b, l
    add $83
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    or $ce
    ld bc, $0e01
    rrca
    dec bc
    ld c, $07
    rlca
    inc b
    rlca
    ld c, $0f

jr_01a_474b:
    rla
    dec de
    rrca
    ld c, $79
    add a
    db $fc
    inc bc
    ei
    rst $20
    inc e
    rst $38
    ret nz

    ccf
    add $3f
    ld e, $fb
    cp $f3
    nop
    nop
    or b
    or b
    ret nc

    ldh a, [$ffe0]
    and b
    ld b, b
    ret nz

    ldh a, [rSVBK]
    add sp, $58
    ld hl, sp+$78
    dec bc
    ld c, $16
    dec de
    rra
    ld de, $1916
    add hl, bc
    ld c, $0b
    ld c, $16
    dec de
    rla
    dec de
    ld a, [$b5b7]
    ld c, a
    ld a, [bc]
    rst $38
    sbc l
    cp $73
    db $fc
    adc a
    ld [hl], b
    cp $01
    ld e, h
    and e
    ret z

    ld hl, sp-$58
    ret c

    db $f4
    adc h
    or h
    call z, $d6ea
    ld a, d
    sub $5a
    or $bd
    or e
    ld a, [hl+]
    ld [hl], $2f
    scf
    dec a
    scf
    ld a, [hl+]
    dec [hl]
    ld e, a
    ld h, b
    rst $30
    ld hl, sp-$42
    pop bc
    ld a, a
    ld a, a
    db $ed
    or e
    push af
    cp e
    ld a, [hl]
    cp e
    push hl
    cp d
    rst $08
    jr nc, jr_01a_474b

jr_01a_47ba:
    ld a, [hl]
    inc a
    rst $38
    rst $28
    rst $28
    dec a
    inc sp
    db $ed
    di
    ld a, [hl-]
    or $ec
    inc d
    ld a, [$ee06]
    ld e, $7a
    add [hl]
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr jr_01a_4809

    jr nc, jr_01a_4853

    ld l, [hl]
    ld sp, hl
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ff90], a
    ld [hl], b
    ret z

    jr c, @-$3f

    ld a, a
    call $06fb
    rlca
    ld b, $07
    dec c
    rrca
    dec d
    ld e, $0f
    ld c, $0a
    rrca
    rrca
    dec bc
    rra
    rla
    ld b, b
    cp a
    call nz, $9c3f
    ld a, a
    db $fc
    rst $30
    cp $b3

jr_01a_4809:
    or [hl]
    ld c, e
    sbc [hl]
    ld l, e
    xor a
    ld a, e
    ld h, b
    ldh [$ffe0], a
    ld h, b
    ldh a, [$ff50]
    ldh a, [rSVBK]
    ret z

    ld hl, sp-$58
    ret c

    sub h
    db $ec
    jp c, Jump_000_06e6

    rlca
    dec bc
    inc c
    rla
    jr jr_01a_4845

    db $10
    rla
    jr jr_01a_4845

    inc e
    ld c, $0f
    rlca
    rlca
    push de
    ccf
    xor $1d
    ei
    inc c
    di
    inc c
    rst $20
    jr jr_01a_47ba

    ld a, a
    inc bc
    rst $38
    rst $38
    rst $38
    xor l
    cp $c7
    ld a, [hl]
    sbc l
    ld a, [hl]

jr_01a_4845:
    ret


    ld a, $e3
    inc e
    ld bc, $c0fe
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_01a_4853:
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rla
    jr jr_01a_4895

    ld a, $27
    jr c, jr_01a_487f

    rra

jr_01a_4861:
    inc l
    inc sp
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    ld h, e
    ld a, h

jr_01a_486b:
    jr c, jr_01a_48ac

    rra
    rra
    cpl
    jr nc, jr_01a_4861

    ldh a, [$ffbf]
    ld [hl], b
    rst $20
    jr jr_01a_486b

    inc c
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_01a_487f:
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_01a_48db

    ld [hl], b
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_01a_4895:
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ldh [$ff9f], a
    ldh [$ff9f], a
    ldh [$ff8f], a
    ldh a, [$ffc3]
    db $fc
    ld [hl], b
    ld a, a
    inc a

jr_01a_48ac:
    ccf
    rrca
    rrca
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    inc de
    inc e
    rla
    jr jr_01a_48f3

    jr c, jr_01a_48f5

    jr c, @+$01

    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01a_48db:
    rst $38
    nop
    rst $38
    nop
    daa
    jr c, jr_01a_4909

    jr c, jr_01a_4907

    inc a
    ld hl, $103e
    rra
    jr jr_01a_490a

    ld c, $0f
    rlca
    rlca
    rst $38
    nop
    rst $38
    nop

jr_01a_48f3:
    rst $38
    nop

jr_01a_48f5:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_01a_4907:
    nop
    nop

jr_01a_4909:
    nop

jr_01a_490a:
    nop
    inc a
    inc a
    db $db
    rst $20
    rla
    jr jr_01a_4941

    jr nc, jr_01a_4963

    ld [hl], b
    ld e, a
    ld h, b
    sbc a
    ldh [$ff9f], a
    ldh [$ff9f], a
    ldh [$ff9f], a
    ldh [$ff9f], a
    ldh [$ff8f], a
    ldh a, [$ff8f]
    ldh a, [$ffc7]
    ld hl, sp+$40
    ld a, a
    ld h, b
    ld a, a
    jr c, jr_01a_496c

    rra
    rra
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_01a_49b5

    ld b, b
    cp a
    ret nz

    sbc a
    ldh [$ffc0], a
    rst $38
    ld a, a
    ld a, a
    nop
    nop

jr_01a_4941:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    db $db
    rst $20
    rla
    jr jr_01a_4981

    jr nc, jr_01a_4983

    jr nc, jr_01a_4985

    jr nc, jr_01a_497f

    jr c, jr_01a_498a

    ccf
    inc e
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop

jr_01a_4963:
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l

jr_01a_496c:
    jp $81ff


    rla
    jr jr_01a_4989

    jr jr_01a_498b

    jr jr_01a_4989

    inc e
    jr jr_01a_4998

    jr @+$21

    inc c
    rrca
    rlca
    rlca

jr_01a_497f:
    ld [bc], a
    add d

jr_01a_4981:
    ld c, c
    rst $38

jr_01a_4983:
    rst $38
    adc e

jr_01a_4985:
    db $f4
    ld a, a
    ld a, a
    ld d, a

jr_01a_4989:
    ld l, b

jr_01a_498a:
    ld d, a

jr_01a_498b:
    ld l, a
    ld e, a
    ld l, [hl]
    ld e, a

jr_01a_498f:
    ld l, [hl]
    ld d, a
    ld l, a
    rst $38
    rst $38
    pop de
    cpl
    cp $fe

jr_01a_4998:
    ld [$ea16], a
    or $fa
    halt
    ld a, [$ea36]
    sub [hl]
    ld [bc], a
    and l
    ld c, c
    rst $38
    rst $38
    adc e
    db $f4
    ld a, a
    ld a, a
    ld d, a
    ld l, b
    ld e, a
    ld a, b
    ld e, a
    ld a, b
    ld e, a
    ld a, c
    ld e, a
    ld a, e

jr_01a_49b5:
    ld e, a
    ld a, a
    ld e, a
    ld a, [hl]
    ld e, a
    ld a, h
    ld e, a
    ld a, b
    ld d, a
    ld l, b
    ld a, a
    ld a, a
    adc e
    db $f4
    rst $38
    rst $38
    jr nc, jr_01a_498f

    ld c, c
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    dec b
    rla
    dec d
    rla
    dec d
    rst $28
    db $fd
    db $eb
    cp h
    ld l, e
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b
    ld [hl], b
    ldh a, [$ff2b]
    ei
    cp a
    db $ed
    xor $da
    inc bc
    inc bc
    dec b
    rlca
    ld b, $07
    rrca
    dec c
    rra
    rra
    cpl
    ccf
    ld [hl], a
    ld e, e
    xor a
    pop af
    rst $00
    ld hl, sp-$59
    ld hl, sp-$4b
    ei
    rst $38
    rst $28
    rst $38
    dec hl
    db $eb
    db $f4
    ld l, [hl]
    rst $38
    jr nc, @+$01

    cp a
    ld l, a
    ld d, [hl]
    rst $38
    push hl
    cp a
    rst $38
    ld a, $9b
    ld h, a
    ccf
    cp $4d
    rst $38
    ret nc

    rst $38
    db $fd
    cp e
    sub $ee
    cp [hl]
    add $ea
    sub [hl]
    ld [$749e], a
    ld c, h
    add hl, sp
    add hl, sp
    inc bc
    inc bc
    ccf
    db $eb
    cp a
    ld a, [$7c67]
    rra
    rra
    dec sp
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    cp h
    ldh a, [$ffaf]
    ld [hl], c
    rst $28
    ld b, $fe
    ld hl, sp-$08
    call c, $ff3c
    rst $38
    rst $38
    rst $38
    ld a, [hl-]
    dec a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $0e
    dec c
    inc d
    dec de
    ccf
    ccf
    add sp, $18
    ld hl, sp-$08
    db $f4
    adc h
    call c, $f464
    ld l, h
    ld a, h
    cp h
    and h
    call c, $fcfc
    ld b, $07
    dec e
    rra
    dec l
    ccf
    scf
    ccf
    ccf
    add hl, hl
    rra
    rra
    dec sp
    ccf
    ld a, c
    ld a, a
    dec a
    jp $c73a


    xor a
    db $dd
    rst $38
    ld a, c
    db $fc
    ld e, e
    ld e, c
    and a
    ld [hl+], a
    rst $38
    and [hl]
    rst $38
    ldh [$ff60], a
    cp [hl]
    cp $35
    rst $38
    db $eb
    rst $38
    rst $18
    dec [hl]
    rst $38
    ei
    ld a, a
    rst $30
    sbc a
    rst $38
    ld a, l
    ld a, a
    ei
    rst $30
    cp $e3
    db $ed
    or $57
    ld a, h
    dec a
    ld l, $16
    dec de
    rrca
    rrca
    rst $38
    ld e, l
    rst $38
    rst $10
    cp $bb
    ld a, l
    sub d
    rst $38
    db $10
    rst $10
    jr c, jr_01a_4aed

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp [hl]
    sbc $fe
    adc [hl]
    ld l, [hl]
    sbc $d4
    ld a, h
    ld a, b
    add sp, -$30
    or b
    ldh [$ffe0], a
    ld bc, $0301
    inc bc
    ld b, $07
    dec b
    ld b, $07
    rlca
    dec bc
    ld c, $0f
    dec c
    rrca
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    ld a, [hl]
    db $db
    inc a
    rst $38
    rst $38
    db $db
    inc a
    ld a, [hl]
    sbc c
    db $db
    cp l
    add hl, de
    ld d, $22
    ccf
    ld a, a

jr_01a_4aed:
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
    rst $38
    rst $38
    sbc c
    ld a, [hl]
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
    rra
    rra
    rra
    rra
    ccf
    ccf
    dec hl
    scf
    ld e, l
    ld h, e
    ld a, a
    ld a, a
    ld e, l
    ld h, e
    or a
    ld sp, hl
    xor l
    ei
    rst $18
    rst $20
    db $fd
    jp $d6aa


    call z, $d4b4
    cp h
    xor b
    add sp, -$40
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_01a_4b6c

    jr c, jr_01a_4b5e

    cp l
    xor l
    nop
    nop
    nop
    nop
    ld b, $06
    dec e
    dec de
    ccf
    cpl
    ld d, e
    ld a, l
    ld a, a
    ld a, b
    add $fd
    ld [bc], a
    ld [bc], a
    dec c
    rrca
    ld a, l
    ld [hl], a
    xor l
    rst $38
    call c, $faff
    rst $28
    ei
    rst $18
    rst $38
    xor $ee
    cp [hl]
    push hl
    cp a
    ld [hl], a
    sbc l

jr_01a_4b5e:
    ld a, l
    sbc e
    ld a, e
    add [hl]
    ld [hl], l
    adc a
    ld e, [hl]
    cp e
    rst $38
    di
    nop
    nop
    ld h, b
    ld h, b

jr_01a_4b6c:
    cp $be
    push de
    ld a, a
    db $eb
    rst $38
    ld a, a
    rst $10
    ld a, a
    db $eb
    rst $38
    rst $10
    cp e
    rst $00
    cp [hl]
    jp z, $dcac

Call_01a_4b7e:
    ld d, h
    ld l, h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld d, d
    ld a, $3f
    ld d, $1f
    inc de
    rra
    dec bc
    ld c, $3f
    ccf
    ld a, [hl]
    ld a, a
    xor a
    rst $18
    ld sp, hl
    or [hl]
    or e
    ld c, a
    ld h, h
    rst $38
    ld l, l
    rst $38
    adc a
    ld a, [$bef7]
    ldh a, [$ffaf]
    pop bc
    rst $38
    cp [hl]
    ld l, d
    call c, $98f4
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$ff3c], a
    db $fc
    ld a, [hl]
    cp $f5
    ei
    rrca
    ld [$0f0f], sp
    dec bc
    ld c, $0f
    dec c
    rrca
    inc c
    inc e
    dec de
    add hl, hl
    scf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nc

    jr nc, jr_01a_4c3f

    sub b
    add sp, -$28
    ld hl, sp+$78
    ld b, h
    cp h
    db $fc
    db $fc
    ld bc, $0601
    rlca
    ld a, $3b
    ld d, [hl]
    ld a, a
    ld l, [hl]
    ld a, a
    ld e, l
    ld [hl], a
    ld a, l
    ld l, a
    rst $38
    rst $30
    ld [hl], a
    ld e, a
    ldh a, [c]
    rst $18
    cp e
    adc $be
    call $c33d
    ld a, [hl-]
    rst $00
    xor a
    db $dd
    rst $38
    ld a, c
    nop
    nop
    or b
    or b
    db $fc
    call c, $beea
    push af
    ld a, a
    cp a
    db $eb
    ccf
    push af
    rst $38
    ei
    ld [hl], e
    ld [hl], e
    db $fc
    xor a
    cp e
    or $dd
    ei
    ld l, a
    ld a, c
    ccf
    add hl, sp
    ld a, [de]
    ld d, $1c
    inc e
    rst $38
    jp hl


    ld a, a
    rst $38
    ei
    ccf
    xor c
    ld l, a
    ld b, l
    rst $00
    sbc a
    sbc a
    ccf
    ccf
    ld e, a
    ld a, a
    db $fc
    ld e, e
    db $ed
    or a
    or [hl]
    db $db
    db $db
    db $ed
    db $e3
    ld a, l
    pop hl
    rst $38
    ld [hl], a
    rst $08
    ld hl, sp-$01
    rst $38
    db $fd
    ld a, [hl]
    cp [hl]
    db $fc
    inc e
    db $fc

jr_01a_4c3f:
    inc d
    add sp, $38
    ld a, b
    ret c

    cp h
    db $fc
    rst $38
    rst $38
    ld c, $09
    ld c, $09
    rlca
    rlca
    rlca
    ld b, $03
    inc bc
    rlca
    ld b, $0a
    dec c
    rra
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    ld c, b
    cp b
    or h
    call z, Call_01a_76ea
    ld a, $de
    ld d, c
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca

jr_01a_4c6e:
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    cp b
    ret c

    halt
    xor [hl]
    rst $18
    ld h, l
    ld [hl], l
    adc $ab
    call c, $f99e
    ld h, l
    ld a, e
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld [hl], b
    or b
    jr z, jr_01a_4c6e

    db $fc
    db $fc
    db $fd
    add e
    db $fd
    add e
    cp d
    add $44
    ld a, h
    jr c, jr_01a_4cda

    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    jp $e799


    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, [hl]
    inc h
    inc a
    jr @+$1a

    inc h
    inc a
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    inc h
    inc a
    jr jr_01a_4ce0

    ld c, a
    bit 1, h
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0303
    rlca
    dec b
    dec b

jr_01a_4cda:
    ld b, $80
    add b
    ld b, b
    ret nz

    ld b, b

jr_01a_4ce0:
    ret nz

    sbc a
    sbc a
    ld h, [hl]
    ld sp, hl
    xor h
    db $d3
    ld a, b
    rst $00
    sub b
    rst $28
    ld h, b
    ld h, b
    ret nc

    or b
    sub b
    ldh a, [$ff60]
    ld h, b
    xor h
    db $ec
    jp c, $b676

    xor $6e
    cp [hl]
    ld [bc], a
    inc bc
    dec c
    rrca
    dec e
    rla
    add hl, sp
    cpl
    add hl, sp
    cpl
    dec hl
    dec a
    add hl, hl
    ld a, $18
    rra
    call nz, Call_01a_6dbb
    sub e
    rst $28
    sub $ff
    ld a, h
    ld a, [hl]
    db $ed

jr_01a_4d15:
    xor l
    db $d3
    rst $38
    rst $38
    ld e, l
    db $e3
    ld a, d
    sbc [hl]
    rst $30
    rst $08
    call Call_01a_4b7e
    db $fc
    rst $08
    ld hl, sp-$32
    cp c
    adc [hl]
    ld a, c
    ld a, [bc]
    db $fd
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    jr nz, jr_01a_4d15

    ld [hl], b
    ldh a, [$fff8]
    ld hl, sp-$04
    db $fc
    jr c, jr_01a_4d7c

    ld l, b
    ld a, a
    ld c, c
    ld a, a
    ld d, l
    ld l, a
    ld d, a
    ld l, a
    ccf
    ccf
    ld e, e
    ld h, a
    ld a, d
    ld c, [hl]
    rst $38
    rst $38
    cp a
    ret nz

    rst $38
    rst $38
    ld a, a
    sbc h
    rst $30
    db $eb
    ld a, a
    and d
    db $e3
    rst $38
    cp a
    rst $38
    add l
    rst $38
    ld b, e
    rst $38
    pop bc
    rst $38
    and a
    ld a, a
    db $eb
    db $fd
    xor h
    ld a, e
    db $fd
    cp $cb
    ld a, [$fefe]
    and e
    cp a
    ld e, c
    ld h, a
    ld e, c
    ld h, a
    ld e, c
    ld h, a
    rst $38
    rst $38
    db $eb
    push de
    and d
    cp [hl]
    dec [hl]

jr_01a_4d7c:
    dec l
    rra
    rra
    add hl, bc
    rrca
    rrca
    ld [$1c1f], sp
    ld a, [hl+]
    scf
    ld b, l
    ld a, e
    ld a, a
    ld a, a
    ret nz

    rst $38
    cp $f1
    ld a, [$6df5]
    db $eb
    and [hl]
    ld h, [hl]
    and b
    ld h, b
    ld h, b
    and b
    ret nz

    ret nz

    dec a
    db $fd
    rst $38
    rst $38
    db $fc
    rst $38
    add hl, sp
    ld a, $0b
    inc c
    rlca
    inc b
    ld b, $05
    inc bc
    inc bc
    inc e
    inc e
    add b
    add b
    ldh [$ff60], a
    ldh a, [$ff30]
    cp b
    ld a, b
    ld d, h
    db $ec
    and d
    sbc $fe

jr_01a_4dba:
    cp $03
    inc bc
    ld b, $05
    inc b
    rlca

jr_01a_4dc1:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld c, $0b
    dec bc
    dec c
    nop
    nop
    add c
    add c
    add c
    add c
    ld a, $3e
    call Call_01a_59f3
    and [hl]
    pop af
    adc a
    jr nz, jr_01a_4dba

    ret nz

    ret nz

    and b
    ld h, b
    jr nz, jr_01a_4dc1

    ret nz

    ret nz

    ld e, b
    ret c

    or h
    db $ec
    ld l, h
    call c, Call_01a_7cdc
    dec bc
    ld c, $35
    ld a, $77
    ld e, a
    rst $20
    cp l
    push hl
    cp a
    xor [hl]
    rst $30
    and a
    ei
    ld h, c
    ld a, a
    ld de, $b7ee
    ld c, a
    cp a
    ld e, c
    db $fd
    di
    ei
    or a
    or a
    ld c, [hl]
    cp $fd
    ld [hl], h
    adc a
    add sp, $78
    db $fc
    inc a
    ld a, d
    and $7d
    jp $9fe1


    db $dd
    cp a
    cp l
    rst $38
    rst $38
    rst $38
    ld h, e
    ld a, a
    ld [hl+], a
    ccf
    ld h, a
    ld a, a
    or l
    sbc $ff
    cp a
    db $fd
    xor [hl]
    ld e, a
    ld a, a
    ld a, $3f
    rst $38
    rst $38
    ei
    dec d
    db $ec
    rst $38
    db $fd
    ld l, [hl]
    db $ec
    cp a
    ei
    sub l
    adc a
    rst $38
    rst $38
    rst $38
    cp $fe
    ld e, $fe
    db $ec
    sbc h
    db $ec
    sbc h
    adc h
    db $fc
    ld [de], a
    cp $f6
    ld a, [$fa3e]
    rra
    rra
    inc de
    rra
    ld e, $11
    ccf
    jr c, jr_01a_4ea9

    ld l, [hl]
    adc d
    rst $30
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    cp $f1
    sbc d
    sub l
    ld c, l
    bit 0, [hl]
    add $c0
    ld b, b
    add b
    add b
    nop
    nop
    ccf
    rst $38
    cp $ff
    sbc h
    sbc a
    dec b
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ret nz

    ret nz

    ld [hl], b
    or b
    ld hl, sp+$18
    call c, $aa3c
    halt
    ld d, c
    rst $28
    rst $38
    rst $38
    nop
    nop
    rst $18
    cp a
    ld a, a
    ld a, a
    rra
    rra
    daa
    ccf
    ld b, e
    ld a, a
    ld a, c
    ld b, a
    ld a, l
    ld b, e
    ld h, [hl]
    ld e, c
    nop
    rst $38
    ei
    rst $00
    db $eb
    rst $10
    rst $30
    rst $28
    jr jr_01a_4ebd

    nop
    nop
    nop
    nop

jr_01a_4ea9:
    add b
    add b
    db $f4
    db $f4
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [c]
    cp $61
    ld a, a
    ld c, a
    ld [hl], c
    ld e, a
    ld h, c
    or e
    call Call_01a_7070

jr_01a_4ebd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    db $fd
    ld h, l
    ld a, a
    ld e, [hl]
    ld h, d
    ld [hl], h
    ld c, h
    ld c, b
    ld a, b
    jr nc, @+$32

    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    rra
    rra
    rra
    daa
    ccf
    ld b, e
    ld a, a
    ld a, c
    ld b, a
    ld a, l
    ld b, e
    ld h, [hl]
    ld e, c
    ld [bc], a
    inc bc
    dec c
    rrca
    dec e
    rla
    add hl, sp
    cpl
    add hl, sp
    cpl

jr_01a_4ef5:
    dec hl
    dec a
    add hl, hl
    ld a, $38
    ccf
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    jr nc, jr_01a_4ef5

    ld [hl], b
    ldh a, [$fff0]
    ldh a, [$fff8]
    ld hl, sp+$38
    ccf
    ld c, b
    ld a, a
    cp l
    rst $18
    or e
    rst $28
    db $fd
    rst $00
    rst $38
    jp Jump_01a_675b


    ld h, a
    ld a, a
    add l
    rst $38
    ld b, e
    rst $38
    pop bc
    rst $38
    and a
    ld a, [hl]
    ld [$afff], a
    ld a, d
    db $fd
    rst $38
    rst $08
    cp $fc
    db $fc
    adc h
    db $fc
    ld b, h
    cp h
    inc d
    db $ec
    call nz, $d8fc
    add sp, $50
    or b
    ldh [$ffe0], a
    rlca
    ld b, $0b
    inc c
    dec e
    ld e, $2a
    scf
    ld b, l
    ld a, e
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    cp $ff
    sbc a
    ld a, a
    sbc b
    ld a, b
    ldh [rNR41], a
    ld h, b
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $f7ff
    adc a
    call nc, Call_01a_68ac
    ld e, b
    jr nc, jr_01a_4f95

    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    cp $f3
    db $fc
    inc sp
    inc a
    ld c, $09
    dec c
    dec bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    dec b
    rlca
    dec c
    rrca
    add hl, bc
    rrca
    add hl, de
    rra
    dec de
    dec e

jr_01a_4f87:
    add hl, de
    ld e, $18
    rra
    ld a, d
    sbc [hl]
    pop af
    rst $08
    rst $00
    ld a, a
    ld c, l
    cp $cb
    db $fc

jr_01a_4f95:
    rst $08
    cp b
    adc [hl]
    ld a, c
    ld c, $f9
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

jr_01a_4fa2:
    ld b, b
    ldh [rNR41], a
    jr nz, jr_01a_4f87

    ld [hl], b
    ldh a, [$fff0]
    ldh a, [$ff08]
    rrca
    jr @+$21

    add hl, sp
    ccf
    dec h
    ccf
    cpl
    scf
    add hl, hl
    scf
    rra
    rra
    dec l
    inc sp
    adc d
    db $fd
    ld b, l
    rst $38
    jp $a7ff


    ld a, a
    db $eb
    db $fd
    xor l
    ld a, e
    db $fd
    rst $38
    set 7, e
    ld hl, sp-$08
    ld hl, sp-$08
    adc h
    db $fc
    ld h, h
    sbc h
    ld h, h
    sbc h
    ld h, h
    sbc h
    db $fc
    db $fc
    xor h
    ld d, h
    dec a
    daa
    ld a, [de]
    ld d, $0d

jr_01a_4fe0:
    dec c
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    ld a, [bc]
    dec c
    ret nz

    rst $38
    cp $f1
    ld a, [$edf5]
    db $eb
    halt
    or $d0
    jr nc, jr_01a_4fe0

    jr jr_01a_4fa2

    ret c

    add hl, sp
    ld sp, hl
    db $fc
    db $fc
    db $fc
    db $fc
    cp [hl]
    cp [hl]
    ld [hl], d
    ld a, [hl]
    ld e, [hl]
    ld h, d
    cp a
    rst $00
    xor d
    db $dd
    adc b
    ld hl, sp+$70
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
    adc d
    rst $30
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
    add $45
    add e
    add e
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld c, $0b
    dec bc
    dec c
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh [$ffe0], a
    ret nz

    ret nz

    ld e, b
    ret c

    or h
    db $ec
    ld l, h
    call c, Call_01a_7cdc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld c, $0b
    dec bc
    dec c
    ret nz

    ret nz

    ld h, b
    ldh [$ffe0], a
    ldh [$ffc0], a
    ret nz

    ld e, b
    ret c

    or h
    db $ec
    ld l, h
    call c, Call_01a_7cdc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld c, $0b
    dec bc
    dec c
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ret nz

    ld e, b
    ret c

    or h
    db $ec
    ld l, h
    call c, Call_01a_7cdc
    ld [bc], a
    inc bc
    dec c
    rrca
    dec e
    rla
    add hl, sp
    cpl
    add hl, sp
    cpl

jr_01a_50a5:
    dec hl
    dec a
    add hl, hl
    ld a, $78
    ld a, a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    jr nc, jr_01a_50a5

    ld a, b
    ld hl, sp-$04
    db $fc
    cp $fe
    ret c

    rst $38
    sbc b
    rst $38
    xor c
    rst $18
    and l
    rst $18
    ld a, a
    ld a, a
    or a
    rst $08
    push af
    sbc l
    ld l, c
    ld e, c
    add l
    rst $38
    ld b, e
    rst $38
    pop bc
    rst $38
    and a
    ld a, a
    db $eb
    db $fd
    xor h
    ld a, e
    db $fd
    cp $9f
    cp $e2
    cp $d9
    rst $20
    ld e, c
    ld h, a
    ld e, c
    ld h, a
    ld a, a
    ld a, a
    db $eb
    push de
    and d
    cp [hl]
    sbc h
    sbc h
    inc sp
    inc sp
    inc bc
    inc bc
    rlca
    rlca
    ld b, $05
    rrca
    ld [$0c0b], sp
    ld c, $0f
    dec d
    dec de
    adc $f1
    ld a, [$fdf5]
    ei
    halt
    or $20
    ldh [$ffa0], a
    ld h, b
    and b
    ld h, b
    ldh [$ffa0], a
    dec a
    rst $38
    ei
    db $fc
    rst $10
    reti


    ld d, $1b
    dec d
    ld e, $1b
    rra
    rrca
    rrca
    rlca
    rlca
    add b
    add b
    ret nz

    ld b, b
    ldh [$ffe0], a
    sub b
    ld [hl], b
    ldh a, [$fff0]
    ldh [$ffe0], a
    ret nz

    ret nz

    nop
    nop
    ld [hl+], a
    dec a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffa0], a
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
    nop
    nop
    ret c

    rst $38
    sbc b
    rst $38
    xor c
    rst $18
    and l
    rst $18
    ld a, a
    ld a, a
    or a
    rst $08
    push af
    sbc l
    ld l, a
    ld e, a
    rst $38
    rst $38
    cp a
    ret nz

    rst $38
    rst $38
    ld a, a
    sbc h
    rst $30
    db $eb
    ld a, a
    and d
    db $e3
    rst $38
    rst $18
    rst $38
    add l
    rst $38
    ld b, e
    rst $38
    pop bc
    rst $38
    and a
    ld a, a
    db $eb
    db $fd
    xor h
    ld a, e
    db $fd
    cp $cb
    ld a, [$3f39]
    ld e, $11
    ccf
    inc a
    ld c, e
    halt
    ld a, l
    ld a, e
    ld a, $3f
    rra
    rra
    rlca
    rlca
    db $fc
    db $e3
    push af
    db $eb
    ld e, e
    rst $10
    ld c, h
    call z, $c040
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    add hl, sp
    ld sp, hl
    db $fc
    db $fc
    cp $fe
    ld [hl], e
    ld a, l
    daa
    jr c, jr_01a_51d4

    ld sp, $372b
    dec a
    ld l, $80
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld d, b
    cp [hl]
    ld d, c
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_01a_51d4:
    and b
    ldh [$ffd0], a
    or b
    db $ec
    inc e
    ld a, a
    adc a
    xor d
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    adc e
    adc l
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
    dec b
    rlca
    ld c, $0b
    dec bc
    ld c, $7f
    ld [hl], d
    daa
    inc a
    ld e, c
    ld a, a
    ld h, d
    ld a, a
    db $fd
    cp [hl]
    or a
    ret z

    cp a
    rst $30
    rst $38
    sbc $55
    db $db
    cp d
    ld a, [hl]
    rst $08
    rst $38
    rlca
    db $fc
    rst $08
    scf
    rst $10
    rst $28
    rst $08
    halt
    sbc $6f
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$fff0], a
    ldh a, [rNR23]
    add sp, -$0c
    inc e
    inc [hl]
    call c, $161d
    rra
    inc d
    rra
    inc d
    rra
    inc d
    dec d
    ld e, $0a
    rrca
    ccf
    dec a
    rst $28
    cp $ff
    sub $d6
    jp hl


    rst $20
    ld a, a
    rst $20
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    add c
    add d
    rst $38
    ld e, a
    db $fc
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    db $f4
    rrca
    ei
    cp $6f
    sbc a
    push af
    ld a, a
    ldh [c], a
    ld a, $ea
    ld a, $ee
    ld a, $fe
    ld a, $7e
    cp [hl]
    rst $38
    ld a, a
    add a
    rst $38
    ld l, l

jr_01a_526d:
    sbc e
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    ld a, [hl]
    rst $08
    cp [hl]
    adc $bb
    sub l
    ld a, e
    db $ec
    di
    ld a, c
    ld b, a
    ld a, $3e
    nop
    nop
    sbc e
    xor $93
    cp $9a
    rst $28
    pop de
    rst $38
    ld a, a
    rst $38
    sub a
    sbc b
    ccf
    ccf
    rst $38
    rst $38
    adc l
    rst $38
    push af
    rst $38
    adc c
    rst $38
    rst $30
    rst $38
    db $fd
    db $fd
    sbc b
    ld a, b
    db $fc
    db $fc
    rst $38
    rst $38
    rst $30
    ld l, l
    rst $30
    ld l, l
    ld h, a
    sbc l
    adc l
    ei
    db $fd
    ld [hl], e
    ldh a, [c]
    adc [hl]
    ld a, h
    ld a, h
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    rlca
    add hl, bc
    ld c, $1f
    inc e
    ld h, $3b
    cpl
    dec [hl]
    inc a
    call c, $9868
    ret z

    jr c, jr_01a_526d

    ld a, b
    xor h
    db $f4
    sbc $6a
    ld e, [hl]
    ld [$f4ec], a
    sub a
    ld a, [hl]
    rst $08
    cp [hl]
    adc $bb
    sub l
    ld a, e
    db $ec
    di
    ld a, c
    ld b, a
    ccf
    ccf
    ld bc, $9b01
    xor $93
    cp $9a
    rst $28
    pop de
    rst $38
    ld a, a
    rst $38
    rst $30
    ld hl, sp-$01
    rst $38
    inc a
    call c, $ff8d
    push af
    rst $38
    adc c
    rst $38
    rst $30
    rst $38
    db $fd
    db $fd
    sbc [hl]
    ld a, [hl]
    rst $38
    rst $38
    inc a
    dec sp
    rst $30
    ld l, l
    rst $30
    ld l, l
    ld h, a
    sbc l
    adc l
    ei
    db $fd
    ld [hl], e
    ldh a, [c]
    adc [hl]
    db $fc
    db $fc
    add b
    add b
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    add hl, bc
    ld c, $1f
    inc e
    ld h, $3b
    cpl
    dec [hl]
    nop
    nop
    ld l, b
    sbc b
    ret z

    jr c, @-$66

    ld a, b
    xor h
    db $f4
    sbc $6a
    ld e, [hl]
    ld [$f4ec], a
    nop
    nop

jr_01a_533e:
    sub a
    ld a, [hl]
    rst $08
    cp [hl]
    adc $bb
    sub l
    ld a, e
    rst $28
    rst $30
    ld a, l
    ld c, [hl]
    add hl, sp
    ld a, $0f
    ld [$ee9b], sp
    sub e

jr_01a_5351:
    cp $9a
    rst $28
    pop de
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld hl, sp+$3f
    rst $38
    jr nz, jr_01a_533e

    adc l
    rst $38
    push af
    rst $38
    adc c
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    sbc [hl]
    ld a, a
    db $fc
    rst $38
    inc b
    rlca
    rst $30
    ld l, l
    rst $30
    ld l, l
    ld h, a
    sbc l
    adc l
    ei
    db $fd
    ld [hl], e
    ldh a, [c]
    adc [hl]
    db $fc
    ld a, h
    ldh a, [rNR10]
    rrca
    ld c, $13
    dec e
    ccf
    jr c, jr_01a_53d1

    ld [hl], a
    ld e, a
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @-$0e

    ld e, b
    add sp, -$44
    call nc, $d4bc
    ret c

    add sp, $00
    nop
    nop

jr_01a_539b:
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
    inc b
    rlca
    ld [$100f], sp
    rra
    nop
    sbc a
    adc h
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

    jr nz, jr_01a_539b

    nop
    ldh [rP1], a
    ld d, a
    jp c, Jump_01a_7ebb

    rst $08
    rst $38
    rlca
    db $fc
    rst $08
    scf
    rst $10
    rst $28
    rst $08
    halt
    sbc $6f
    ret nz

    jr nz, jr_01a_5351

jr_01a_53d1:
    ld b, b
    add b
    add b
    ld h, b
    ldh [$fff0], a
    ldh a, [rNR23]
    add sp, -$0c
    inc e
    inc [hl]
    call c, RST_00
    nop
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
    ld a, [bc]
    adc [hl]
    sbc l
    ld d, a
    jp c, Jump_01a_7fba

    rst $08
    rst $38
    rlca
    db $fc
    rst $08
    scf
    rst $10
    rst $28
    rst $08
    halt
    sbc $6f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    rst $20
    rst $38
    rrca
    ld c, $09
    ld c, $06
    rlca
    ld bc, $0301
    inc bc
    dec b
    rlca
    ld c, $0b
    dec bc
    ld c, $8c
    ld a, h
    db $eb
    rra
    ld a, [hl]
    sub e
    rst $30
    db $fc
    ld sp, hl
    rst $38
    ldh [c], a
    rst $38
    db $fd
    cp [hl]
    rst $30
    ret z

    ld b, $06
    ei
    db $fd
    ld [hl], l
    db $db
    cp e
    ld a, [hl]
    rst $08
    rst $38
    rlca
    rst $38
    rst $08
    ld [hl], $de
    rst $28
    rst $38
    rst $30
    rst $38
    sbc $ff
    ld [hl], a
    rst $30
    inc l
    rst $38
    jr @+$01

    nop
    rst $38
    add c
    add d
    rst $38
    rst $18
    ld a, h
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    db $f4
    rrca
    ei
    cp $6f
    sbc a
    push af
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0b
    rrca
    dec bc
    rrca
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    ccf
    jr nc, @+$01

    rst $38
    or $1f
    rst $38
    ld a, [bc]
    ei
    rrca
    ld d, $ff
    nop
    nop
    db $fc
    db $fc
    rst $38
    rlca
    ei
    db $fd
    push af
    ei
    cp e
    ld a, a
    rst $08
    cp $0e
    rst $38
    rra
    rla
    rra
    inc d
    rra
    inc d
    rra
    inc d
    dec d
    ld e, $0a
    rrca
    ccf
    dec a
    rst $28
    cp $fd
    cp $f7
    ret z

    rst $38
    ld [hl], a
    rst $38
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    add c
    add d
    rst $38
    rst $18
    inc a
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    db $f4
    rrca
    ei
    cp $6f
    sbc a
    push af
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    jr jr_01a_550d

    ld b, d
    ld a, [hl]
    add c
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
    rrca
    rrca
    ccf
    jr nc, @+$81

    rst $38
    or $1f
    cp a
    ld c, d
    cp e
    ld c, a
    sub [hl]
    ld a, a
    rst $38
    nop
    ld a, [hl]
    add c
    dec a
    ld b, d
    rlca
    inc e
    dec d
    ld e, $0a
    rrca
    ccf
    dec a
    rst $28
    cp $7d
    cp $f7
    ret z

    rst $38
    ld [hl], a
    rst $38
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    add c
    add d

jr_01a_550d:
    rst $38
    nop
    nop
    nop
    nop
    inc c
    ld [de], a
    ld e, $21
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld b, b
    nop
    nop
    rrca
    rrca
    ccf
    jr nc, @+$01

    rst $38
    halt
    sbc a
    rst $38
    ld a, [bc]
    ei
    rrca
    ld d, $ff
    ld e, $21
    dec c
    ld [de], a
    rra
    inc d
    rra
    inc d
    dec d
    ld e, $0a
    rrca
    ccf
    dec a
    rst $28
    cp $ff
    sub $d6
    jp hl


    rst $20
    ld a, a
    rst $20
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    add c
    add d
    rst $38
    ld e, a
    db $fc
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    db $f4
    rrca
    rst $38
    rst $38
    ld l, h
    or e
    or $79
    ldh [c], a
    ld a, $ea
    ld a, $ee
    ld a, $fe
    ld a, $7e
    cp $fe
    cp $bc
    call c, $ec5c
    ld h, l
    ld e, a
    di
    xor a
    di
    xor [hl]
    ld h, l
    ld e, [hl]
    dec sp
    inc a
    ld e, $11
    rrca
    rrca
    ld bc, $e601
    cp e
    db $e4
    cp a
    and [hl]
    ei
    ld [hl], h
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    xor a
    rst $18
    ldh a, [c]
    xor a
    ld sp, hl
    rst $10
    ld sp, hl
    rst $10
    ld [hl], d
    rst $28
    db $fd
    cp $eb
    inc e

jr_01a_559a:
    rst $38
    rst $38
    rrca
    rrca
    rst $08
    dec sp
    jp z, $c63e

    ld a, $c4
    inc a
    adc b
    ld a, b
    jr nc, jr_01a_559a

    ldh a, [$fff0]
    add sp, -$68
    ld [de], a
    dec e
    ld e, $11
    ld e, $1d
    ld h, $3b
    ld a, a
    ld [hl], c
    sbc c
    rst $28
    cp a
    rst $10
    nop
    nop
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$ffb0], a
    ret nc

    ld a, b
    xor b
    ld a, b
    xor b
    cp b
    ret c

    nop
    nop
    inc sp
    inc a
    ld de, $0e1e
    rrca
    dec c
    dec bc
    ld e, $15
    ld e, $15
    dec c
    dec bc
    nop
    nop
    ld b, b
    ret nz

    ldh [rNR41], a
    ld a, b
    cp b
    ld h, h
    call c, $8efe
    sbc c
    rst $30
    db $fd
    db $eb
    nop
    nop
    rra
    rla
    rra
    inc d
    rra
    inc d
    rra
    inc d
    dec d

Jump_01a_55f7:
    ld e, $0a
    rrca
    rrca
    dec c
    ccf
    ld a, $df
    inc a
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    db $f4
    rrca
    ei
    rst $38
    ld l, a
    sbc h
    cp $7f
    ldh [c], a
    ld a, $ea
    ld a, $ee
    ld a, $fe
    ld a, $7e
    cp [hl]
    cp $fe
    ld e, $fe
    add [hl]
    ld a, [hl]
    ld h, a
    ld e, [hl]
    rst $30
    xor [hl]
    ldh a, [c]
    xor a
    ld h, l
    ld e, a
    dec sp
    dec a
    rra
    ld de, $0f0f
    ld bc, $9b01
    xor $93
    cp $ea
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    ld l, a
    sbc a
    db $e4
    inc e
    sbc c
    rst $30
    db $fc
    db $eb
    cp h
    db $eb
    ld sp, hl
    rst $30
    cp $ff
    ld c, a
    db $fc
    rst $10
    ei
    ld a, a
    ld c, a
    ld b, d
    cp [hl]
    jp nz, $c2be

    cp [hl]
    ld b, d
    cp [hl]
    call nz, $983c
    ld a, b
    ldh [$ffe0], a
    nop
    nop
    ld e, $1d
    ld h, $3b
    ld a, a
    ld [hl], c
    sbc c
    rst $28
    cp a
    rst $10
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    rst $20
    cp c
    sbc $7f
    cp h
    ld h, [hl]
    cp e
    xor a
    push af
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld a, b
    xor h
    db $f4
    sbc $6a
    ld e, [hl]
    ld [$f4ec], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    cp [hl]
    jp nz, $c2be

    cp [hl]
    ld b, d
    cp [hl]
    call nz, $983c
    ld a, b
    ldh [$ffe0], a
    jr nc, jr_01a_56ce

    sbc a
    ld a, l
    xor [hl]
    ld a, [$76da]
    ld [hl], a
    rst $28
    pop hl
    sbc $00
    nop
    nop
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
    ldh [$ff60], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    pop bc
    ld d, [hl]
    rst $30
    ld hl, sp-$05
    db $fc
    rst $08
    rst $30
    sub a
    add sp, -$69
    add sp, -$69
    add sp, -$01

jr_01a_56ce:
    rst $38
    sub a
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    adc a
    rst $30
    adc e
    db $f4
    adc e
    db $f4
    rst $38
    rst $38
    adc e
    rst $30
    rst $38
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    sub a
    rst $28
    sub a
    add sp, -$69
    add sp, -$01
    rst $38
    sub a
    db $eb
    rst $38
    rst $38
    rst $38
    ldh a, [$ffdf]
    add sp, -$51
    rst $10
    xor a
    ret nc

    xor a
    ret nc

    rst $38
    rst $38
    xor a
    db $d3
    ld bc, $5704
    nop
    ld a, h
    ld l, b
    sub h
    nop
    db $fc
    nop
    ld a, h
    nop
    rra
    ld a, [de]
    dec h
    nop

jr_01a_5711:
    ccf
    nop
    rra
    jr z, @+$19

    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    ld b, $05
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, $3e
    rst $38
    pop bc
    pop bc
    ld a, $00
    jp RST_00


    nop
    jr c, jr_01a_5764

    ld c, b
    jr nz, jr_01a_5787

    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    jr nc, jr_01a_5711

    jr nc, jr_01a_5793

    jr jr_01a_57ad

    jr jr_01a_57af

    inc a
    ld a, [hl-]
    ld [hl], h
    ld b, d
    call nz, $c2b2
    and c
    call z, $d1a0
    adc h
    and d
    sub c
    ld a, a
    ld a, a
    nop
    ld h, b
    nop
    nop
    ld c, $00
    db $10
    ld c, $e0
    inc b
    db $10
    ldh [$ff09], a

jr_01a_5764:
    or d
    rst $38
    rst $38
    ld [$3c48], sp
    inc b
    ld b, [hl]
    ld a, [hl-]
    and e
    ld c, l
    and e
    ld c, l
    add e
    ld c, l
    ld b, [hl]
    ld a, [hl-]
    db $fc
    db $fc
    ccf
    ccf
    rst $38
    ret nz

    ret nz

    ccf
    nop
    ret nz

    nop
    jr c, jr_01a_57b2

    ld c, b
    jr nz, jr_01a_57d5

    nop
    ld h, b

jr_01a_5787:
    add b
    add b
    ldh [$ff60], a
    ld a, b
    sbc b
    inc e
    db $e4
    inc c
    ld [hl], h
    ld c, $72

jr_01a_5793:
    ld c, $32
    ld c, $32
    inc a
    ld a, [hl-]
    ld h, h
    ld d, d
    jp nz, $cca1

    add b
    pop de
    adc h
    sub c
    adc b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc

jr_01a_57ad:
    ld hl, sp+$02

jr_01a_57af:
    inc b
    ld hl, sp+$04

jr_01a_57b2:
    adc c
    rst $38
    rst $38
    nop
    nop
    inc bc
    ld h, e
    ld a, a
    nop
    pop af
    ld c, $b0
    ld b, e
    add b
    ld b, e
    ld b, c
    ld a, $ff
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop

jr_01a_57d5:
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
    rra
    jr jr_01a_581a

    daa
    ld h, b
    ld e, b
    ld h, b
    ld d, b
    jp $c6a4


    xor b
    call nz, $c0a8
    and h
    ret nz

    and b
    ld h, b
    ld b, b
    jr nz, jr_01a_5825

    ld a, h
    ld b, b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    ld b, $02
    inc b
    inc c
    inc a
    inc b
    ldh a, [c]
    adc h
    ldh a, [c]
    add h
    pop bc
    and d
    ld h, c
    ld d, d
    ld sp, $322a
    inc l
    ld h, h
    ld e, c
    rst $38
    rst $38
    ld b, [hl]
    ld a, [hl-]
    or e

jr_01a_581a:
    ld c, l
    or e
    ld b, l
    add e
    ld b, l
    add [hl]
    ld c, d
    ld b, [hl]
    ld a, [hl+]
    inc hl
    sbc l

jr_01a_5825:
    rst $38
    rst $38
    jp $c6a4


    xor b
    call nz, $c0a8
    and h
    ret nz

    and b
    ret nz

    and b
    ld h, b
    ld d, b
    ld h, c
    ld e, b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    ld [hl], e
    dec b
    adc d
    ld [hl], d
    ld h, [hl]

jr_01a_5846:
    adc d
    add hl, sp

jr_01a_5848:
    ld h, $27
    jr nz, jr_01a_58b5

    ld d, b
    rst $00
    xor e
    or $82
    or $8a
    ld a, h
    ld b, h
    jr c, jr_01a_588f

    ld h, [hl]
    adc d
    ld b, $8a
    ld b, $da
    adc h
    ld [hl], h
    ld hl, sp-$78
    ld [hl], b
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
    inc bc
    inc bc
    rlca
    inc b
    inc c
    dec bc
    inc c
    ld a, [bc]
    jr jr_01a_588b

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    ld h, b
    db $10
    add b
    ld b, b
    jr @+$16

    jr @+$12

jr_01a_588b:
    inc a
    jr nz, jr_01a_5908

    ld b, h

jr_01a_588f:
    ld a, d
    ld b, b
    ld h, e
    ld d, h
    ld [hl], h
    ld l, b
    ccf
    ccf
    ld c, $80
    ld de, $200e
    ld de, $112c
    inc l
    ld de, $4e11
    xor $00
    rst $38
    rst $38
    jr jr_01a_58d1

    jr @+$2a

    sbc b
    jr z, jr_01a_5846

    jr z, jr_01a_5848

    ld l, b
    jr nc, jr_01a_5903

    ldh [rNR41], a

jr_01a_58b5:
    ret nz

    ret nz

    ld a, $3e
    rst $38
    pop bc
    pop bc
    ld a, $00
    jp Jump_000_3838


    ld b, h
    ld a, h
    or d
    adc $fe
    cp $fa
    or [hl]
    ld [hl], h
    ld c, h
    ld a, $38
    db $10
    ld c, $e0
    inc b

jr_01a_58d1:
    db $10
    ldh [$ff09], a
    or d
    rst $38
    rst $38
    or d
    adc $44
    ld a, h
    ld a, $38
    db $10
    ld c, $e0
    inc b
    db $10
    ldh [$ff09], a
    or d
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    ret nz

    ret nz

    ccf
    nop
    ret nz

    jr c, @+$3a

    ld b, h
    ld a, h
    or d
    adc $fe
    cp $fa
    or [hl]
    ld [hl], a
    ld c, h
    inc a
    ld a, [hl-]
    ld hl, sp+$02
    inc b
    ld hl, sp+$02
    adc h

jr_01a_5903:
    rst $38
    rst $38
    nop
    nop
    nop

jr_01a_5908:
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    jr jr_01a_594a

    daa
    ld h, b
    ld e, b
    ld h, e
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ld hl, sp+$18
    inc e
    db $e4
    ld b, $1a
    add [hl]
    adc d
    call nz, $cba7
    xor h
    rst $08
    xor a
    rst $08
    xor e
    rst $00
    and h
    ld h, e
    ld b, e
    jr nz, @+$32

    ld a, h
    ld b, b
    ld b, e
    push bc
    inc hl
    push hl
    db $e3
    push hl
    and e
    ld h, l
    ld b, e
    push bc
    add [hl]
    add d
    inc b
    inc c
    inc a
    inc b
    jr jr_01a_595d

    add hl, de

jr_01a_594a:
    dec d
    add hl, de
    dec d
    add hl, de
    dec d
    jr @+$16

    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld b, $05
    adc b
    ld hl, sp+$64
    sbc h

jr_01a_595b:
    db $fc
    db $fc

jr_01a_595d:
    ld h, h
    sbc h
    adc b

jr_01a_5960:
    ld hl, sp+$71
    ld [hl], b
    ld [bc], a
    ld bc, $0102
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    jr nz, jr_01a_59ce

    jr nz, jr_01a_5960

    db $10
    jr jr_01a_595b

    call z, $cc14
    inc d
    ldh [$ffc0], a
    rra
    db $10
    dec a
    ld [hl+], a
    inc a
    ld hl, $2930
    jr nc, jr_01a_59b2

    rra
    db $10
    rrca
    rrca
    add e
    ld b, l
    add e
    ld [hl], l
    ld [hl], e
    dec c
    adc [hl]
    ld [bc], a
    sbc h
    inc l
    ld hl, sp+$48
    or b
    or b
    nop
    nop
    ld hl, $599a
    nop
    nop
    ld e, $1e
    ld hl, $5c3f
    ld h, e
    ld [hl], b
    ld c, a
    and b
    rst $18
    add e
    rst $38
    rst $28
    rst $38
    rra
    rra
    ld a, [hl+]
    scf
    ld [hl], l
    ld a, d
    rst $08
    rst $38

jr_01a_59b2:
    ld a, a
    call $e27f
    rst $38
    rst $38
    rst $30
    rst $38
    ldh [$ffe0], a
    sub b
    ld [hl], b
    ld [hl], e
    di
    adc l
    cp $eb
    sbc h
    call c, $ff3b
    rst $38
    ld a, a
    rst $38
    nop
    nop
    ldh a, [$fff0]

jr_01a_59ce:
    inc c
    db $fc
    jp nc, Jump_000_022e

    cp $01
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    cp $9f
    call c, Call_01a_63b3
    ld a, a
    ld a, $3f
    ld d, c
    ld l, a
    ld [hl], c
    ld a, a
    add sp, -$61
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    add b
    rst $38
    rlca
    cp d
    ld l, l
    ld l, a

Call_01a_59f3:
    rst $38
    sub a
    ld hl, sp-$01
    rst $38
    nop
    nop
    db $e4
    rst $38
    ld a, [$fd07]
    inc bc
    db $ed
    sbc e
    cp d
    rst $18
    ld b, h
    rst $38
    db $fc
    rst $38
    inc bc
    inc bc
    rst $38
    ld sp, hl
    ld l, l
    sbc e
    ld c, $fe
    db $fc
    db $fc
    inc [hl]
    call z, $fc1c
    ld l, $f2
    cp $fe
    ld e, a
    rst $38
    rst $38
    add b
    rst $38
    rlca
    cp a
    ld l, a
    ld l, a
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld e, a
    rst $38
    rst $38
    add b
    rst $38
    rlca
    cp a
    ld l, a
    ld l, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $e4
    rst $38
    ld a, [$fd07]
    inc bc
    db $ed
    sbc e
    cp d
    rst $18
    call nz, $fcff
    rst $38
    inc bc
    inc bc
    ld e, $1e
    ld hl, $5c3f
    ld h, e
    ld [hl], b
    ld c, a
    and e
    rst $18
    add a
    rst $38
    rst $28
    rst $38
    rst $38
    sbc a
    nop
    nop
    rra
    rra
    xor d
    or a
    ld [hl], l
    ld a, [$ffcf]
    rst $38
    call $e2ff
    rst $38
    rst $38
    nop
    nop
    ldh [$ffe0], a
    sub b
    ld [hl], b
    ld a, b
    ld hl, sp-$78
    ld hl, sp-$15
    sbc e
    rst $18
    inc a
    ld a, [$00fd]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    xor h
    ld e, h
    ld [bc], a
    cp $01
    rst $38
    rst $18
    or e
    ld h, b
    ld a, a
    ccf
    ccf
    ld l, $33
    ld d, c
    ld l, a
    ld [hl], c
    ld a, a
    add sp, -$61
    rst $38
    rst $38
    or a
    rst $38
    rst $18
    cp a
    rst $38
    nop
    rst $38
    rlca
    cp d
    ld l, l
    ld l, a
    rst $38
    sub a
    ld hl, sp-$01
    rst $38
    ld a, b
    rst $38
    db $ec
    rst $38
    rst $38
    rlca
    db $fd
    inc bc
    xor $9b
    cp h
    rst $18
    ld b, h
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    ld sp, hl
    db $ed
    db $db
    ld b, $fe
    db $fc
    db $fc
    inc e
    db $fc
    ld l, $f2
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    add hl, sp
    scf
    ld [hl], b
    ld c, a
    and b
    rst $18
    nop
    nop
    rra
    rra
    ld a, [hl+]
    scf
    ld [hl], l
    ld a, d
    ld c, a
    ld a, a
    rst $38
    call $e2ff
    ld a, a
    rst $38
    nop
    nop
    db $e3
    db $e3
    sub l
    halt
    ld a, e
    db $fc
    adc a
    rst $38
    rst $28
    sbc a
    rst $18
    ccf
    rst $38
    rst $38
    ldh a, [$fff0]
    inc c
    db $fc
    jp nc, Jump_000_022e

    cp $01
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    rst $38
    ld sp, hl
    ldh [rIE], a
    cp $9f
    rst $18
    or a
    ld h, c
    ld a, a
    ccf
    ccf
    ld [hl], c
    ld a, a
    add sp, -$61
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld e, a
    rst $38
    cp a
    ret nz

    ld a, a
    add a
    cp d
    ld l, l
    ld l, a
    rst $38
    sub a
    ld hl, sp-$01
    rst $38
    ld [hl], a
    rst $38
    ld [$fdf7], a
    inc bc
    db $fd
    inc bc
    ld [$bc9f], a
    rst $18
    ld b, h
    rst $38
    rst $38
    rst $38
    db $ed
    db $db
    ld b, $fe
    db $fc
    db $fc
    add sp, $18
    inc [hl]
    call z, $fc1c
    ld l, $f2
    cp $fe
    nop
    nop
    rra
    rra
    ld a, [hl+]
    scf
    ld [hl], l
    ld a, d
    ld c, a
    ld a, a
    rst $38
    call $e27f
    ccf
    rst $38
    nop
    nop
    ldh [$ffe0], a
    sub b
    ld [hl], b
    ld a, b
    ld hl, sp-$77
    ld sp, hl
    rst $28
    sbc [hl]
    sbc $39
    db $f4
    ei
    ld [hl], b
    ld a, a
    ld a, a
    ld c, a
    ld l, a
    ld e, e
    jr nc, jr_01a_5bb1

    ccf
    ccf
    ld [hl], c
    ld a, a

Jump_01a_5b76:
    add sp, -$61
    rst $38
    rst $38
    scf
    rst $38
    ccf
    rst $38
    rst $38
    ldh [$ffbf], a
    rst $00
    cp d
    ld l, l
    ld l, a
    rst $38
    sub a
    ld hl, sp-$01
    rst $38
    ld [hl], b
    rst $38
    jp hl


    rst $38
    rst $30
    rrca
    ld a, [$eb07]
    sbc a
    cp h
    rst $18
    ld b, h
    rst $38
    rst $38
    rst $38
    ld c, $fe
    cp $f2
    jp c, $0cb6

    db $fc
    db $fc
    db $fc
    inc e
    db $fc
    ld l, $f2
    cp $fe
    ld c, $ad
    ld e, e

jr_01a_5bad:
    inc a
    inc a
    ld b, d
    ld a, [hl]

jr_01a_5bb1:
    and e
    push de
    add e
    push hl
    add e
    push bc
    add a
    ret


    ld c, [hl]
    ld [hl], d
    inc a
    inc a
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr @+$21

    jr nz, jr_01a_5bff

    ld b, b
    ld l, h
    ld c, h
    ld [hl], d
    add b
    call z, RST_00
    nop
    nop
    ldh [$ffe0], a
    jr c, jr_01a_5bad

    inc c
    inc [hl]
    ld b, $1a
    ld b, $0a
    rlca
    add hl, bc
    add b
    ret nz

    ld b, b
    ld h, b
    ld b, b
    ld [hl], b
    jr nz, jr_01a_5c21

    jr @+$21

    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    ld b, $1a
    ld c, $32
    inc e
    db $e4
    ld hl, sp+$18
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5bff:
    inc bc
    inc bc
    inc c
    rrca
    db $10
    inc e
    jr nz, jr_01a_5c3d

    ld h, $39
    ld b, [hl]
    ld l, c
    ld b, b
    ld h, [hl]
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    or b
    jr jr_01a_5c7d

    inc c
    inc [hl]
    inc c
    inc d
    ld b, $1a
    ld b, $1a
    ld b, b
    ld h, b
    ld b, b
    ld h, b

jr_01a_5c21:
    jr nz, jr_01a_5c53

jr_01a_5c23:
    jr nz, jr_01a_5c5d

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    ld b, $1a
    ld c, $32
    inc c
    inc [hl]
    inc e
    ld h, h
    jr c, jr_01a_5bff

    ldh a, [$ff30]
    ret nz

    ret nz

    nop
    nop

jr_01a_5c3d:
    ld bc, $0601
    rlca
    ld [$100e], sp
    dec de
    inc de
    inc e
    inc hl
    inc [hl]
    jr nz, jr_01a_5c7e

    jr nz, jr_01a_5c7d

    add b
    add b
    ldh [$ff60], a
    jr nc, jr_01a_5c23

jr_01a_5c53:
    jr jr_01a_5cbd

    jr jr_01a_5bff

    inc c
    or h
    inc c
    inc [hl]
    inc c
    inc [hl]

jr_01a_5c5d:
    jr nz, jr_01a_5c8f

    jr nz, jr_01a_5c91

    jr nz, jr_01a_5c9b

    db $10
    jr @+$12

    inc e
    ld [$060f], sp
    rlca
    ld bc, $0c01
    inc [hl]
    inc c
    inc [hl]
    inc e
    ld h, h
    jr jr_01a_5cdd

    jr c, @-$36

    ld [hl], b
    sub b
    ldh [$ff60], a
    add b
    add b

jr_01a_5c7d:
    nop

jr_01a_5c7e:
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [$0008], sp
    jr nc, jr_01a_5ca7

    nop
    nop
    ld h, b
    ld b, b
    nop
    nop
    rrca
    sub b

jr_01a_5c8f:
    ld e, h
    nop

jr_01a_5c91:
    nop
    ld bc, $0700
    ld bc, $070e
    ld a, [de]
    inc c
    inc [hl]

jr_01a_5c9b:
    dec de
    ld a, [hl-]
    dec d
    ld h, b
    ld [hl], $7e
    nop
    rst $38
    ld a, [hl]
    add c
    rst $38
    rst $38

jr_01a_5ca7:
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    ld [hl], b
    ldh [$ffd8], a
    jr nc, jr_01a_5d27

    jr jr_01a_5cf9

jr_01a_5cbd:
    ld [$0c16], sp
    ld [hl], b
    jr nz, @-$2e

    ld h, b
    ret nc

    ld h, b
    ret nc

    ld h, b
    ret nc

    ld h, b
    ret nc

    ld h, b
    ret nc

    ld h, b
    ld a, b
    jr nz, jr_01a_5cd1

jr_01a_5cd1:
    nop
    inc bc
    nop
    rlca
    inc bc
    dec c
    ld b, $1a
    dec c
    dec e
    ld a, [bc]
    ld [hl-], a

jr_01a_5cdd:
    add hl, de
    jr c, jr_01a_5cf2

    rst $38
    inc a
    jp Jump_01a_7eff


    add c
    inc bc
    nop
    nop
    nop
    nop
    nop

Call_01a_5cec:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5cf2:
    ret nz

    nop
    ldh [$ffc0], a
    or b
    ld h, b
    ret c

jr_01a_5cf9:
    jr nc, jr_01a_5d73

    db $10
    inc l
    jr jr_01a_5d3b

    ld [$3068], sp
    ld l, b
    jr nc, jr_01a_5d6d

    jr nc, jr_01a_5d6f

    jr nc, jr_01a_5d71

    jr nc, jr_01a_5d73

    jr nc, jr_01a_5d75

    jr nc, jr_01a_5d77

    jr nc, jr_01a_5d11

jr_01a_5d11:
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    dec e
    ld c, $34
    jr jr_01a_5d87

    dec [hl]
    ld [hl], h
    ld a, [hl+]
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_01a_5d27:
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
    ret nz

    nop
    ldh a, [$ffc0]
    cp b
    ld [hl], b
    db $ec

jr_01a_5d3b:
    jr jr_01a_5d73

    inc c
    ld e, $04
    ret nz

    ld h, b
    ldh [rLCDC], a
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ldh a, [rLCDC]
    ret nc

    ld h, b
    nop
    nop
    ld bc, $0601
    inc b
    ld [$1000], sp
    db $10
    jr nz, jr_01a_5d5c

jr_01a_5d5c:
    jr nz, jr_01a_5d7e

    ld b, b
    nop
    ld a, [hl]
    ld d, h
    add c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5d6d:
    nop
    nop

jr_01a_5d6f:
    nop
    ld b, b

jr_01a_5d71:
    ld b, b
    add b

jr_01a_5d73:
    nop
    add b

jr_01a_5d75:
    add b
    add b

jr_01a_5d77:
    nop
    add b
    add b
    add b
    nop
    add b
    add b

jr_01a_5d7e:
    ld b, b
    nop
    halt
    add e
    ld e, l
    nop
    nop
    nop
    nop

jr_01a_5d87:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    scf
    add hl, sp
    db $10
    db $10
    jr c, jr_01a_5dbf

    cpl
    ccf
    ld e, [hl]
    ld [hl], c
    ld a, [hl]
    ld a, a
    ld b, a
    ld a, c
    sbc a
    ldh [$ff3e], a
    pop bc
    jr nz, jr_01a_5dc5

    ld [hl], b
    ld d, b
    ret nc

    or b
    db $10
    ldh a, [$ff30]
    ldh a, [$ff30]
    ldh a, [$ffb1]
    pop af
    or [hl]
    rst $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5dbf:
    ldh [$ffe0], a
    ret c

    jr c, jr_01a_5e23

    ld l, a

jr_01a_5dc5:
    xor a
    pop af
    cp a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    inc a
    inc a
    ld l, e
    ld a, a
    ld [hl], a
    adc a
    ld a, a
    cp $ff
    sub $d6
    ld l, c
    db $dd
    rst $38
    ld h, d
    ld a, a
    rst $18
    rst $38
    db $e3
    db $fc
    cp c
    rst $18
    or l
    sbc $b3
    rst $38
    xor e
    db $fc
    ld c, a
    rst $38
    xor a
    rst $18
    ld l, a
    sbc a
    rst $38
    ld e, a
    db $f4
    db $ec
    ld [$fa1e], a
    or $f4
    inc c
    ld hl, sp-$08
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ld e, l
    ld l, e
    ld a, h
    ld [hl], e
    ld e, d
    ld h, l
    ld hl, $113e
    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    rst $10
    ld hl, sp-$11
    ei
    sub $d9
    sbc a
    sbc a
    rla
    jr jr_01a_5e5d

    ccf
    ld a, a
    ld a, a
    db $fc
    cp h

jr_01a_5e23:
    sub $bf

jr_01a_5e25:
    or [hl]
    ld a, a
    db $fd
    db $fd
    push af
    db $ed
    jr c, jr_01a_5e25

    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $f4
    ret nc

    jr nc, jr_01a_5e9e

    sbc b
    inc a
    db $fc
    ld e, d
    xor $bd
    rst $00
    rst $38
    cp a
    and b
    ldh [$ffc0], a
    ret nz

    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rra
    ld e, $2b
    dec a
    ld d, a
    ld a, b
    ld a, a
    ld a, a
    or b
    ld [hl], b
    ld d, b
    ldh a, [$ff90]
    ldh a, [$ff91]
    ld [hl], c
    ld h, e
    db $e3

jr_01a_5e5d:
    ld h, e
    and d
    db $e3
    and d
    jp $dcc3


    db $e4
    xor h
    db $fc
    cp h
    call nc, $c43c
    ld a, h
    cp h
    ld l, d
    sbc $f5
    adc a
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
    ld c, $0e
    scf
    add hl, sp
    ld e, l
    ld l, [hl]
    xor a
    di
    db $10
    db $10
    jr c, @+$2a

    cpl
    ccf
    ld e, [hl]
    ld [hl], c
    ld a, [hl]
    ld a, a
    rst $00
    ld sp, hl
    sbc a
    ldh [$ff3e], a
    pop bc
    jr nz, jr_01a_5eb5

    ld [hl], b
    ld d, b
    ret nc

    or b
    db $10
    ldh a, [$ff30]
    ldh a, [$ff33]

jr_01a_5e9e:
    di
    or a
    or $bb
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ret c

    jr c, jr_01a_5f24

    db $ec
    ld [$bb9e], a
    db $dd

jr_01a_5eb5:
    ld e, a
    ld h, a
    scf
    add hl, sp
    rrca
    rrca
    ld a, b
    ld a, b
    push de
    db $fd
    cp e
    rst $10
    ld sp, hl
    rst $20
    ld [hl], a
    adc a
    ld a, a
    cp $ff
    sub $d6
    jp hl


    db $dd
    rst $38
    ldh [c], a
    rst $38
    rst $18
    rst $38
    db $e3
    db $fc
    or h
    rst $18
    or e
    rst $18
    cp b
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    xor a
    rst $18
    ld l, a
    sbc a
    db $fd
    ld e, l
    cp d
    halt
    db $f4
    call z, Call_000_38d8
    ldh [$ffe0], a
    ldh a, [$fff0]
    sbc b
    add sp, -$14
    db $f4
    call nc, $b5bc
    bit 0, e
    ld a, l
    inc hl
    ccf
    ld e, $1e
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    ld b, $07
    rst $10
    ld hl, sp-$51
    cp e
    ld d, $19
    rra
    rra
    rst $30
    ld hl, sp-$01
    rst $38
    ld a, a
    rst $38
    or c
    pop af
    push de
    cp l

jr_01a_5f15:
    or l
    ld a, l
    db $fd
    db $fd
    db $f4
    db $ec
    jr c, jr_01a_5f15

    ldh [$ffe0], a
    ldh a, [$fff0]
    ldh a, [$fff0]
    db $ec

jr_01a_5f24:
    inc e
    db $ec
    sbc h
    ld e, b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    rra
    ld c, $09
    ld c, $0f
    rra
    dec d
    ld a, $29
    dec a
    dec hl
    ld a, [hl+]
    ld a, $14
    inc d
    ld b, a
    rst $00
    inc hl
    db $e3
    ld h, d
    db $e3
    ld h, d
    and e
    ldh [c], a
    and e
    jp Jump_000_03c3


    ld [bc], a
    inc bc
    ld [bc], a
    ldh [$ffa0], a
    ld [hl], b
    sub b
    or b
    ldh a, [$ff50]
    ldh a, [rBCPS]
    sbc b
    ld l, b
    sbc b
    jr c, @-$06

    ld a, h
    call nc, $e5df
    cpl
    dec [hl]
    dec d
    rra
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $10
    ld hl, sp-$51
    cp e
    ld d, $19
    rra
    rra
    rst $30
    ld hl, sp-$01
    rst $38
    ld a, a
    rst $38
    or a
    ld sp, hl
    push de
    cp l
    or l
    ld a, l
    db $fd
    db $fd
    db $f4
    db $ec
    inc a
    db $fc
    ld a, [$fde6]
    di
    db $fd
    di
    ld e, a
    rst $20
    inc hl
    rst $38
    ld a, [hl]
    rst $38
    ld h, d
    and e
    ldh [c], a
    and e
    jp Jump_000_03c3


    ld [bc], a
    inc bc
    ld [bc], a
    db $f4
    xor h
    ld a, b
    sbc b
    or b
    ldh a, [$ff50]
    ldh a, [rBCPS]
    sbc b
    ld l, b
    sbc b
    jr c, @-$06

    ld a, h
    call nc, $bdd5
    or l
    ld a, l
    db $fd
    db $fd
    db $f4
    db $ec
    inc a
    db $fc
    ei
    rst $20
    db $fc
    di
    cp $f1
    db $ec
    inc e
    db $ec
    sbc h
    ld e, b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    inc d
    rra
    ld c, $09
    ld c, $0f
    rra
    dec d
    ld a, $29
    dec a
    dec hl
    dec hl
    ccf
    inc d
    inc d
    ld a, a
    rst $00
    ccf
    db $e3
    ld a, [hl]
    db $e3
    ld a, [hl]
    and e
    cp $a3
    rst $38
    jp $fe83


    ld a, a
    ld a, [hl]
    db $fd
    and e
    ld a, l
    sub e
    cp l
    di
    ld e, l
    di
    ld l, d
    sbc [hl]
    ld l, d
    sbc [hl]
    inc a
    db $fc
    ld a, h
    call nc, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_602d

    ld [hl], b
    ld d, b
    ld e, a
    ld a, a
    cp h
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh [$ffa0], a
    and b
    ld h, b
    jr nz, @-$1e

    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc

jr_01a_602d:
    ld [bc], a
    inc bc
    rrca
    rrca
    scf
    dec sp
    db $fc
    rst $38
    adc [hl]
    di
    ccf
    pop bc
    ld a, l
    add e
    rst $28
    rra
    rst $38
    db $fd
    rst $38
    xor l
    xor l
    db $d3
    ld h, e
    db $e3
    ld l, a
    db $ec
    ld a, l
    ei
    ld l, a
    or [hl]
    ld [hl], d
    cp l
    ld l, a
    cp a
    ld [hl], e
    db $fc
    ld e, a
    rst $38
    add e
    add e
    ld h, l
    rst $20
    db $db
    cp [hl]
    xor [hl]
    ld a, c
    rst $28
    reti


    rst $18
    dec a
    ld h, h
    rst $38
    rst $38
    rst $38
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    ld e, [hl]
    ld l, c
    cp a
    rst $20
    db $fc
    or e
    rst $38
    sbc a
    ld a, b
    ld b, a
    ccf
    ccf
    rrca
    rrca
    ld c, $0f
    cp d
    rst $38
    ld b, l
    rst $38
    cp $ff
    ld b, e
    db $fc
    jp hl


    cp $ff
    cp $1c
    rst $20
    ccf
    res 7, a
    rst $18
    ld a, b
    sbc b
    ret nc

    ld [hl], b
    ld [hl], b
    ldh a, [$ffb0]
    ldh a, [rSVBK]
    ldh a, [$fff8]
    ld hl, sp-$42
    cp $1e
    rla
    ld a, [de]
    rra
    dec d
    rra
    ld c, $09
    ld e, $1f
    dec hl
    dec a
    ld d, a
    ld a, b
    ld a, a
    ld a, a
    ccf
    sbc $3f
    rr h
    db $e4
    ld hl, sp-$08
    ld h, b
    ldh [$ff60], a
    and b
    ldh [$ffa0], a
    ldh [$ffe0], a
    ld a, a
    rst $38
    rst $38
    db $fc
    jr c, jr_01a_6108

    ld [$050f], sp
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $8001
    add b
    ld h, b
    ldh [$ffd0], a
    jr nc, jr_01a_6102

    ret c

    inc a
    db $fc
    ld l, d
    sbc $f5
    adc a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_01a_6113

    cpl
    scf
    inc hl
    inc a
    inc sp
    ccf
    inc [hl]
    ccf
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_01a_6123

    add sp, -$28
    adc b
    ld a, b
    sbc b
    ld hl, sp-$28

jr_01a_6102:
    ld a, b
    rlca
    rlca
    ld a, [de]
    dec e
    scf

jr_01a_6108:
    dec sp
    ld e, a
    ld l, h
    xor l
    di
    cp a
    sbc $5e
    ld h, c
    ccf
    ccf

jr_01a_6113:
    add hl, sp
    ld a, $f1
    cp $31
    cp $79
    xor $ed
    cp $df
    ld a, e
    rst $18
    ld a, [$edda]

jr_01a_6123:
    ld sp, hl
    add hl, sp
    cp $1f
    reti


    ccf
    cp l
    ld l, [hl]
    ld l, a
    rst $38
    rst $30
    cp h
    or $bf
    or a
    ld l, a
    db $f4
    rst $28
    db $eb
    rst $30
    rst $30
    ld hl, sp+$7d
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    dec sp
    ld a, $3f
    inc a
    ld e, a
    rst $28
    cp a
    rst $38
    rst $18
    ld l, a
    or [hl]
    adc $e6
    sbc [hl]
    call nz, $e47c
    inc a
    xor b
    ld a, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rla
    rra
    inc de
    dec d
    rra
    jr z, jr_01a_619e

    add hl, sp
    daa
    ld [hl], e
    ld c, a
    ld e, a
    rst $38

jr_01a_6165:
    ld [hl], a
    rst $38
    adc a
    rst $38
    ld [hl], a
    adc a
    halt
    xor a
    adc d
    ei
    ld [hl], c
    ld [hl], c
    ld bc, $8001
    add b
    ldh [$ffe0], a
    ldh a, [$ffd0]
    ldh a, [$ff90]
    ld d, b
    ldh a, [$ff28]
    ld hl, sp+$38
    ret z

    sbc h
    db $e4
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    inc d
    ld e, $15
    dec d
    rra
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    jr nc, jr_01a_6165

    or b
    ret nc

    ld h, b
    ldh [$ff80], a
    add b
    nop
    nop
    nop

jr_01a_619e:
    nop
    nop
    nop
    nop
    nop
    or l
    bit 0, e
    ld a, l
    inc hl
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $10
    ld hl, sp-$51
    cp e
    ld d, $19
    rra
    rra
    ld l, $31
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    cp l
    or l
    ld a, l
    db $fd
    db $fd
    db $f4
    db $ec
    ld a, b
    ld hl, sp-$20
    ldh [$ffe0], a
    ldh [$ffc0], a
    ret nz

    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $07
    ei
    db $fd
    rst $38
    and a
    ld d, a
    ld a, l
    ld a, [hl+]
    ccf
    rra
    rra
    rst $38
    rst $38
    ld a, a
    rst $30
    cp e
    rst $30
    dec [hl]
    rst $38
    ret c

    rst $28
    ldh [$ff3f], a
    or l
    rst $18
    ld d, [hl]
    ld a, [$e0e0]
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    dec de
    rra
    inc e
    inc d
    jr jr_01a_6221

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $f4
    ret c

    ld hl, sp-$20
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6221:
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    inc b
    rlca
    rlca
    ccf
    jr c, jr_01a_62a9

    ld b, a
    ccf
    cpl
    ld d, $19
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$ffe8]
    jr jr_01a_62ac

    ldh a, [$ffc0]
    ret nz

    nop
    nop
    add b
    add b
    dec b
    rlca
    rlca
    dec b
    dec b
    ld b, $07
    rlca
    ccf
    jr c, jr_01a_62c9

    ld b, a
    ccf
    cpl
    ld d, $19
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$ffe8]
    jr jr_01a_62cc

    ldh a, [$ffc0]
    ret nz

    nop
    nop
    add b
    add b
    rrca
    inc c
    rla
    add hl, de
    rrca
    inc c
    ccf
    ld a, $5c
    ld h, e
    ccf
    inc a
    rlca
    dec b
    dec b
    rlca
    ld b, b
    ret nz

    ldh [$ffe0], a
    ret nc

    jr nc, jr_01a_62aa

    ldh a, [$ffe0]
    ldh [$ffa0], a
    ld h, b
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
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec e
    dec e
    dec hl
    scf
    nop
    nop
    nop
    nop
    inc c
    inc c
    call nc, $bcdc
    ld [hl], h
    db $f4
    call z, $b878
    ldh [$ffa0], a
    dec a
    dec hl
    ld l, $35
    rla
    dec de

jr_01a_62a9:
    rra

jr_01a_62aa:
    dec e
    ld a, [hl-]

jr_01a_62ac:
    scf
    ld [hl], l
    ld c, [hl]
    cp e
    ei
    ret nz

    ret nz

Jump_01a_62b3:
    or b
    ret nc

    ld d, b
    ldh a, [$ffd0]
    jr nc, @-$1e

    ldh [$ff80], a
    add b
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
    db $10
    db $10

jr_01a_62c9:
    jr z, jr_01a_6303

    ld a, [hl-]

jr_01a_62cc:
    ld a, [hl+]
    dec a
    cpl
    rst $38
    db $ed
    ld l, a
    sbc b
    nop
    nop
    nop
    nop
    jr nz, jr_01a_62f9

    ld [hl], b
    ld d, b
    ldh a, [$ff90]
    ld [hl], b
    ret nc

    rst $18
    ld l, a
    ld a, [$ef6d]
    jp nc, Jump_01a_5b76

    ld d, a
    ld a, e
    ld a, [hl-]
    ld a, $0c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    db $eb
    xor d
    or [hl]
    inc a
    inc [hl]

jr_01a_62f9:
    inc e
    inc d
    inc d
    inc e
    ld [$0008], sp
    nop
    nop
    nop

jr_01a_6303:
    inc a
    inc [hl]
    ld d, h
    ld l, h
    ld hl, sp-$48
    ld d, h
    ld l, h
    ld a, [hl-]
    ld a, $34
    inc l
    ld l, b
    ld e, b
    inc a
    inc [hl]
    db $10
    db $10
    jr z, @+$3a

    ld a, h
    ld l, h
    cp d
    add $7c
    ld l, h
    jr z, jr_01a_6357

    db $10
    stop
    nop
    jr c, jr_01a_635d

    ld d, h
    ld l, h
    cp d
    add $fe
    add d
    cp d
    add $54
    ld l, h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    jr c, @+$3a

    ld b, h
    ld a, h
    ld d, h
    ld l, h
    ld b, h
    ld a, h
    jr c, jr_01a_6377

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_634d

jr_01a_634d:
    ld [hl], b
    jr nz, @+$81

    jr nz, @+$01

    ld e, a
    nop
    nop
    nop
    nop

jr_01a_6357:
    nop
    nop
    nop
    nop
    ld b, b
    nop

jr_01a_635d:
    ldh [rLCDC], a
    ldh [$ffc0], a
    ldh [$ffc0], a
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    inc bc
    ld bc, $000f
    ccf
    inc c
    rst $38
    inc bc
    rst $38
    ld a, l

jr_01a_6377:
    rst $38
    cp $ff
    cp $ff
    ldh a, [rIE]
    ld [bc], a
    rst $38
    ld d, d
    rst $38
    ld a, [hl]
    db $e3
    add b
    rst $28
    add e
    rst $38
    add [hl]
    rst $38
    reti


    rst $38
    rst $08
    rst $38
    ret nc

    rst $38
    adc a
    rst $38
    and b
    add e
    nop
    rst $20
    add d
    rst $38
    ld h, l
    rst $38
    rst $10
    rst $38
    ld [hl], $ff
    ldh [c], a
    rst $38
    sbc e
    rst $38
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    add b
    nop

Call_01a_63b3:
    ld a, a
    scf
    rst $38
    ld e, b
    rst $38
    ld c, a
    rst $38
    ld h, b
    ld a, a
    ccf
    ccf
    nop
    rrca
    nop
    rrca
    ld bc, $45ff
    rst $38
    cp d
    rst $38
    ld bc, $bfff
    rst $38
    rla
    rst $38
    ld bc, $fbff
    rst $38
    db $f4
    rst $38
    ld h, b
    ld hl, sp-$20
    ldh a, [$ffa0]
    ldh a, [$ff80]
    ldh a, [rLCDC]
    ldh a, [$ff80]
    ld hl, sp+$00
    cp $40
    rra
    add hl, bc
    rra
    dec b
    rra
    ld a, [bc]
    rrca
    rlca
    rra
    ld bc, $163f
    ld a, a
    cpl
    ld a, a
    nop
    rst $38
    pop hl
    rst $38
    db $f4
    db $fc
    ld hl, sp-$08
    nop
    ldh [$ff80], a
    ldh [$ffc0], a
    ldh [rLCDC], a
    ldh [rP1], a
    rst $38
    add b
    rst $38
    inc bc
    ccf
    rlca
    rrca
    rlca
    rlca
    ld [bc], a
    inc bc
    ld bc, $0103
    ld bc, $8000
    nop
    ldh [$ff80], a
    ldh a, [$ffe0]
    ld hl, sp-$10
    db $fc
    ret nz

    cp $b4
    rst $38
    ld a, d
    rst $38
    nop
    nop
    nop
    nop
    nop
    stop
    jr c, jr_01a_643b

    ccf
    jr jr_01a_646d

    rra
    ccf
    inc c
    ccf
    dec bc
    nop
    nop
    nop
    nop
    stop
    jr c, jr_01a_644b

jr_01a_643b:
    ld hl, sp+$30
    ld hl, sp-$10
    ld hl, sp+$60
    ld hl, sp-$60
    rlca
    nop
    rra
    rlca
    ccf
    inc c
    ld a, a
    inc sp

jr_01a_644b:
    rst $38
    ld e, [hl]
    rst $38
    ld h, c
    ld a, a
    ccf
    ccf
    nop
    ccf
    rlca
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    sub a
    rst $38

Call_01a_645c:
    inc de
    rst $38
    and h
    rst $38
    dec h
    rst $38
    scf
    ld sp, hl
    ret nz

    rst $38
    pop hl
    rst $38
    and $ff
    db $d3
    rst $38
    sub b

jr_01a_646d:
    rst $38
    ld c, e
    rst $38
    ld c, c
    rst $38
    ret c

    rst $38
    dec de
    rst $38
    inc e
    rst $38
    rrca
    ld a, a
    inc bc
    ld a, a
    nop
    ld a, a
    inc bc
    ccf
    dec b
    ccf
    inc bc
    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    or b
    cp $78
    cp $78
    db $fc
    cp b
    db $fc
    ret c

    ld hl, sp-$30
    inc bc
    nop
    rrca
    nop
    rra
    ld [$0c1f], sp
    rra
    ld a, [bc]
    ccf
    rla
    ccf
    ld e, $7f
    inc a
    rst $38
    and b
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    reti


    ei
    ld [hl], c
    ld [hl], c
    nop
    ld bc, $8000
    nop
    ldh [rP1], a
    ldh a, [rNR41]
    ldh a, [$ff60]
    ldh a, [$ffa0]
    ld hl, sp-$30
    ld hl, sp-$10
    db $fc
    ld a, b
    rlca
    nop
    rrca
    dec b
    rra
    dec bc
    rra
    dec bc
    rra
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ffe0]
    ldh a, [$ff60]
    ldh [$ff80], a
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
    ld l, [hl]
    and $64
    rrca
    rrca
    ccf
    jr nc, @+$71

    ld d, b
    cp a
    rst $18
    xor [hl]
    pop af
    xor $f1
    ld d, l
    ld a, e
    ld e, e
    ld l, [hl]
    ldh a, [$fff0]
    db $ec
    inc e
    ld [$c916], a
    scf
    pop af
    rst $28
    sbc d
    cp $86
    ld a, [hl]
    ld [bc], a
    cp $0d
    ld c, $36
    ccf
    ld d, a
    ld l, l
    ld [hl], a
    ld c, l
    cp a
    call z, $9ff4
    ld a, [$f29f]
    sbc a
    call z, $bcbf
    ld [hl], a
    db $fd
    rst $20
    db $fd
    ld l, [hl]
    ld a, c
    sub [hl]
    add hl, de
    or $19
    rst $30
    sbc e
    or $40
    ret nz

    add b
    add b
    add b
    add b
    sbc a
    sbc a
    pop hl
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    di
    sbc l
    or h
    db $db
    db $fd
    set 3, l
    db $eb
    cp l
    rst $20
    ld l, [hl]
    ld [hl], e
    ld d, a
    ld a, c
    dec hl
    inc a
    cp $fd
    ldh [c], a
    db $fd
    call nc, $d43b
    dec sp
    inc d
    ei
    rst $20
    ei
    db $fc
    rst $38
    add b
    rst $38
    rla
    rst $38
    ld a, [hl-]
    and $3d
    db $e3
    ld l, [hl]
    di
    db $f4
    rst $38
    ld l, h
    rst $38
    push hl
    rst $38
    xor [hl]
    rst $30
    db $ec
    db $ec
    ld a, d
    sub [hl]
    rst $30
    cpl
    db $ed
    ld e, e
    db $eb
    sub a
    db $fd
    inc bc
    xor $9e
    ld [hl], b
    ld [hl], b
    dec [hl]
    ld a, $2a
    ccf
    dec l
    ccf
    ld e, $1f
    ccf
    ccf
    ccf
    ccf
    ld a, $3f
    inc l
    inc sp
    rst $38
    ld a, a
    ld sp, hl
    scf
    ld a, a
    adc a
    rst $18
    ldh [$ff37], a
    ld hl, sp-$31
    rst $38
    ldh a, [rIE]
    xor a
    rst $28
    cp a
    rst $20
    ld [hl], h
    call z, $8cfc
    add sp, $18
    cp b
    ld a, b
    ret nc

    ldh a, [$ff60]
    ldh [$ffd0], a
    or b
    dec e
    inc de
    ld e, $1f
    rrca
    ld [$0f0f], sp
    ld [$1e0f], sp
    ld de, $1c13
    rrca
    rrca
    inc h
    rst $20
    inc d
    rst $30
    dec d
    rst $30
    sub d
    ld [hl], e
    jp nc, Jump_01a_62b3

    db $e3
    jp nz, $01c3

    ld bc, $18e8
    ld hl, sp-$08
    inc d
    db $ec
    inc e
    db $e4
    ld a, [hl-]
    add $3e
    jp nz, $8e7e

    ld [hl], c
    sbc a
    dec b
    ld b, $03
    ld [bc], a
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
    sbc [hl]
    ldh [c], a
    or c
    rst $08
    pop hl
    rst $18
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    rst $08
    ld c, d
    ld a, a
    dec sp
    ccf
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec bc
    inc c
    ld a, a
    sbc a
    cp [hl]
    call $e35f
    or a
    ld hl, sp-$33
    cp $f3
    rst $38
    cp h
    rst $38
    dec hl
    ei
    rst $28
    ld sp, hl
    ld e, l
    di
    rst $38
    db $e3

jr_01a_661c:
    ld a, [$ee06]
    ld e, $f4
    db $fc
    jr jr_01a_661c

    db $f4
    db $ec
    or a
    rst $18
    rst $30
    sbc h
    or $9d
    or $9d
    or [hl]
    db $dd
    ld a, e
    ld c, [hl]
    ld e, e
    ld l, [hl]
    dec a
    daa
    adc $f9
    rst $30
    inc a
    dec sp
    adc $cd
    rst $30
    db $ed
    or a
    halt
    db $db
    ld [hl], $fb
    add $3b
    ld l, $33
    rla
    add hl, de
    dec bc
    inc c
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    cp $c3
    ld a, $ff
    pop bc
    rst $38
    cp $3f
    ld a, [hl]
    add c
    db $dd
    db $e3
    cp a
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    scf
    jr c, jr_01a_66ca

    ld h, b
    cp a
    rst $08
    ld hl, sp-$61
    rst $30
    sbc a
    cp b
    ret z

    sbc $e6
    ret nz

    ret nz

    cp h
    ld a, h
    ei
    rlca
    rst $38
    ret nz

    ccf
    db $fc
    jp $3cff


    ccf
    inc bc

jr_01a_6685:
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ffd8], a
    jr c, jr_01a_6685

    adc h
    ld a, d
    and $9d
    di
    xor a
    pop af
    ld e, e
    ld a, h
    ld h, $3f
    add hl, de
    rra
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    db $fc
    inc a
    rst $38
    inc bc
    rst $18
    ldh [$ff3d], a
    cp $c3
    rst $38
    inc a
    ccf
    inc bc
    inc bc
    ld l, a
    ld a, c
    rra
    add hl, de
    db $fd
    di
    ei
    rlca
    db $ed
    rra
    ldh a, [c]
    cp $0c
    db $fc
    ldh a, [$fff0]
    dec b
    ld b, $06
    rlca

jr_01a_66ca:
    rlca
    dec b
    rrca
    dec c
    rla
    inc e
    inc h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    call z, $bcbf
    ld [hl], a
    db $fd
    rst $20
    db $fd
    ld l, [hl]
    ld a, c
    sub [hl]
    add hl, de
    rst $30
    dec de
    or $9e
    push af
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ldh a, [$fff0]
    adc h
    db $fc
    ld [bc], a
    cp $1d
    rst $38
    ccf
    rst $38
    dec d
    dec de
    rla
    ld a, [de]
    rrca
    ld a, [bc]
    ld b, $07
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld e, e
    ld h, a
    db $fc
    ei
    and h
    ld a, e
    xor c
    ld [hl], a
    dec hl
    rst $30
    rst $08
    rst $38
    cp $ff
    rst $38

jr_01a_6713:
    rst $38
    call nz, Call_01a_7eff
    cp $de
    cp $ac
    call c, $d828
    ld [hl], b
    sub b
    ret nc

    jr nc, jr_01a_6713

    or b
    ld a, a
    rst $38
    or e
    rst $08
    ld a, l
    ld a, a
    ld e, b
    ld h, a
    inc a
    inc hl
    ld a, $3d
    ld a, e
    ld b, a
    adc l
    di
    rst $38
    rst $38
    ret nc

    rst $38
    cp $e1
    rst $38
    ld hl, sp-$01
    call z, $d2ef
    rst $38
    ld d, c
    ld d, c
    rst $38
    cp $fe
    ld a, l
    di
    ld l, a
    ldh a, [c]
    ld h, l
    cp $e8
    rst $38
    sbc b
    sbc a
    ld [$050f], sp
    ld b, $03

jr_01a_6755:
    inc bc
    add b
    add b
    ld h, b
    ldh [$ffd0], a

Jump_01a_675b:
    jr nc, jr_01a_6755

    ld [$3cfc], sp
    sbc $62
    or c
    rst $08
    rst $38
    rst $38
    db $fd
    set 3, a
    ld [$e6bf], a
    ld l, [hl]
    ld [hl], e
    ld d, a
    ld a, c
    dec hl
    inc a
    dec [hl]
    ld a, $5a
    ld l, a
    db $fc
    ei
    and h
    ld a, e
    xor c
    ld [hl], a
    dec hl
    rst $30
    rst $08

Jump_01a_677f:
    rst $38
    cp $ff
    rst $38
    ld a, a
    db $e4
    ccf
    ld a, [hl]

jr_01a_6787:
    cp $de
    cp $ac
    call c, $d828
    ld a, b
    sbc b
    ret c

    jr c, jr_01a_6787

    cp h
    ld h, a
    rst $38
    cp d
    rst $08
    ld a, l
    ld a, a
    ld e, d
    ld h, a
    dec a
    inc hl
    ld a, $3d
    ld a, e
    ld b, a
    adc l
    di
    rst $38
    rst $38
    ldh a, [$ff3f]
    ld a, [hl]
    and c
    rst $38
    ld hl, sp+$7f
    call z, $d2ef
    rst $38
    ld d, c
    ld d, c
    rst $38
    rst $38
    rst $38
    ld e, l
    db $eb
    ld l, a
    jp c, $de7d

    ret c

    rst $38
    ld hl, sp-$01
    xor b
    rst $28
    push bc
    add $03
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
    jr c, jr_01a_680c

    ld h, [hl]
    ld a, [hl]
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca
    ld [$0e0b], sp
    inc b
    rlca
    inc bc
    inc bc
    jr c, @+$3a

    cp b
    cp b
    or $4e
    db $e3
    sbc a
    db $e4
    sbc a
    push hl
    sbc a
    and $9f
    ld a, h
    ld a, a
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld [de], a
    rra
    sbc e
    sbc l
    db $ed
    ei
    ld c, a
    or $7b
    db $fd
    ei
    xor h
    ei
    ld c, h
    db $10
    ldh a, [$ff08]
    ld hl, sp+$04
    db $fc

jr_01a_680c:
    ld [bc], a
    cp $82
    cp $c1
    ld a, a
    pop af
    cp a
    rst $18
    ld l, a
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $1d
    inc de
    ld d, $19
    ld a, [bc]
    dec c
    ld b, $05
    ld e, h
    ld h, h
    ld a, [$73e6]
    sbc a
    db $eb
    rra
    rst $00
    ccf
    rst $00
    cp a
    rst $08
    cp a
    sub e
    di
    add hl, bc
    rrca
    ld de, $131f
    dec e
    sub l
    sbc e
    ld sp, hl
    rst $30
    ldh a, [rIE]
    sub $ff
    xor a
    ld sp, hl
    cp b
    rst $18
    cp a
    rst $30
    rrca
    db $fc
    rrca
    ld sp, hl
    jp $cffe


    db $fd
    ld a, [hl]
    rst $38
    db $10
    rst $28
    ld h, d
    sbc $f4
    cp h
    sbc b
    ld hl, sp-$60
    ldh [$ffe0], a
    ldh [rNR10], a
    ldh a, [$ff08]
    ld hl, sp-$04
    db $fc
    inc bc
    inc bc
    ld a, a
    ld a, a
    or a
    adc $b3
    adc $f3
    adc [hl]
    ld h, [hl]
    ld e, l
    inc a
    dec sp
    rrca
    rrca
    ld hl, $f1e1
    pop af
    rst $08
    ld a, a
    rst $38
    daa
    ccf
    rst $20
    daa
    rst $38
    ld c, a
    rst $38
    ld hl, sp-$08
    ld l, l
    cp e
    ld h, [hl]
    cp a
    or c
    rst $18
    ret c

    rst $28
    rst $30
    rst $38
    cp $fe
    ldh a, [$fff0]
    nop
    nop
    daa
    rst $18
    ld e, a
    cp a
    ei
    db $fc
    scf
    ld hl, sp-$01
    ldh a, [rNR22]
    add hl, de
    ld [$070f], sp
    rlca
    or $fa
    rst $08
    add hl, sp
    rst $20
    sbc l

Call_01a_68ac:
    push hl
    ld e, a
    and $5e
    ld l, h
    call c, $b0f0
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

Call_01a_68bc:
    jr jr_01a_68d6

    ld l, $3e
    add hl, sp
    cpl
    dec a
    dec hl
    ccf
    daa
    ccf
    ld a, [hl-]
    ld e, a
    ld h, h
    ld a, $35
    ld c, $0d
    ld b, $05
    ld [bc], a
    inc bc
    ld bc, $0001
    nop

jr_01a_68d6:
    push hl
    ld h, $16
    rst $30
    rrca
    db $fd
    ld a, a
    db $fd
    rst $28
    cp h
    and h
    rst $38
    and d
    rst $38
    ld h, d
    ld a, a
    inc hl
    dec a
    dec d
    dec de
    rla
    ld a, [de]
    rrca
    ld a, [bc]
    ld b, $07
    inc bc
    inc bc
    ld bc, $0701
    rlca
    db $fc
    ei
    call nz, $a8fb
    ld [hl], a
    xor c
    ld [hl], a
    ld l, $f7
    rst $38
    db $fc
    xor a
    cp $fd
    rst $10
    ld a, [hl]
    cp $de
    cp $ac
    call c, $d8e8
    jr z, @-$06

    db $10
    ldh a, [$ff90]
    ld [hl], b

jr_01a_6914:
    ret nc

    jr nc, jr_01a_6936

    rra
    ccf
    ccf
    ld e, a
    ld a, a
    ld [hl], a
    ld c, a
    ld [hl], c
    ld c, a
    ld a, $3f
    inc l
    inc sp
    ld e, $11
    ld a, [hl]
    db $eb
    cp $e1
    cp [hl]
    pop bc
    db $ed
    di
    sbc a
    sbc a
    ld b, b
    ret nz

    jr nz, jr_01a_6914

    jr nz, @-$1e

jr_01a_6936:
    ldh [$ffa0], a
    ldh [$ffe0], a
    ld hl, sp-$08
    cp $e6
    db $db
    rst $20
    rst $00
    db $fc
    ld c, c
    ld a, [hl]
    jr z, jr_01a_6985

    add b
    add b
    ld h, b
    ldh [$ffd0], a

jr_01a_694b:
    jr nc, @-$16

    jr jr_01a_694b

    inc a
    sbc $62
    or c
    rst $08
    rst $38
    rst $38
    rrca
    ld c, $1d
    inc de
    ld [hl+], a
    dec a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh a, [$ff90]
    ld [hl], b
    ret nc

    or b
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_6997

    ld [$050f], sp
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6985:
    nop
    inc bc
    inc bc
    dec c
    rrca
    dec d
    dec de
    dec e
    inc de
    cpl
    inc sp
    dec a
    dec h
    ccf
    daa
    inc a
    daa
    ld [hl], e

jr_01a_6997:
    xor a
    xor a
    db $dd
    rst $38
    ld a, c
    rst $38
    ld e, e
    sbc $25
    halt
    db $fd
    halt
    db $fd
    add [hl]
    db $fd
    db $10
    ldh a, [rNR41]
    ldh [$ff7f], a
    rst $38
    ld [hl], c
    xor a
    ld h, e
    cp a
    ld h, e
    cp [hl]
    ld h, e
    sbc $c2
    cp a
    nop
    nop
    rrca
    rrca
    di
    db $fc
    daa
    ld sp, hl
    rst $20
    add hl, sp
    rst $20
    add hl, sp
    inc de
    db $fc
    rst $38
    rst $38
    inc e
    inc e
    ld a, [$eee6]
    sbc [hl]
    jp nc, $ac3e

    ld a, h
    cp h
    ld a, h
    ret c

    cp b
    ldh [$ffe0], a
    dec a
    ld h, $2d
    ld [hl], $3e
    inc sp
    ld [hl], $3b
    cpl
    add hl, sp
    ld e, e
    ld a, h
    or l
    sbc $fa
    adc a
    and a
    rst $38
    ld a, h
    rst $38
    cp d
    ld h, a
    cp d
    ld h, a
    and d
    ld a, a
    sbc h
    rst $38
    rst $38
    ld a, a
    ldh [$ff3f], a
    ld b, e
    cp a
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    cp [hl]
    ld c, [hl]
    cp [hl]
    ld e, l
    cp a
    ld a, c
    rst $38
    db $eb
    db $fd
    ld l, a
    ld sp, hl
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $0f
    rrca
    ld e, $11
    inc hl
    inc a
    ccf
    ccf
    cp l
    rst $00
    ld b, [hl]
    ld a, a
    dec sp
    dec sp
    rlca
    rlca
    rra
    add hl, de
    halt
    ld a, c
    cp b
    rst $08
    db $e4
    rra
    ld a, a
    sbc a
    cp h
    rst $08
    ld e, a
    db $e3
    or a
    ld hl, sp-$33
    cp $f3
    rst $38
    call z, $83cf
    add e
    rst $28
    ld sp, hl
    db $dd
    di
    rst $38
    db $e3
    ei
    rlca
    rst $28
    rra
    push af
    rst $38
    ld e, $fe
    ld a, [$e5e6]
    rra
    add $3e
    call nz, Call_01a_68bc
    ret c

    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc a
    call nz, $bc7c
    adc $72
    sub c
    rst $28
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, a
    ld h, a
    xor h
    rst $18
    rst $28
    sbc a
    cp l
    and $5b
    ld a, h
    ld [hl], a
    ld a, a
    rst $08
    ld hl, sp+$0b
    dec c
    call Call_000_3fce
    ei
    rst $08
    cp $b2
    ld a, a
    db $ed

jr_01a_6a91:
    rra
    ld a, [$fdc7]
    inc sp
    sbc b
    ld a, a
    ld a, c
    rst $28
    ei
    rst $08
    ei
    db $dd
    di
    dec l
    or d
    rst $28
    or [hl]
    db $ed
    ld a, h
    db $eb
    add b
    add b

jr_01a_6aa8:
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    jr jr_01a_6aa8

    inc b
    db $fc
    ld a, [hl-]
    cp $7e
    cp $b8
    rst $10
    ei
    sub a
    ei
    sub [hl]
    ei
    sub [hl]
    cp e
    sub $7d
    ld c, e
    ld e, l
    ld l, e
    ld a, $25
    ld a, $c9
    rst $08
    db $f4
    rst $30
    ld a, [hl-]
    dec sp
    call $ed5b
    xor l
    halt
    call $fd36
    add $b4
    ei
    ld e, b
    rst $30
    reti


    ld [hl], a
    xor a
    ld a, a
    xor $3f
    rst $10
    cp a
    db $f4
    sbc a
    or $9d
    ld a, h
    db $fc
    cp h
    db $fc
    ret c

    cp b
    ld d, b
    or b
    ret nc

    jr nc, jr_01a_6a91

    ld h, b
    and b
    ldh [$ff7c], a
    db $fc
    cpl
    ld [hl-], a
    rla
    add hl, de
    dec bc
    inc c
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    cp $c1
    ld a, $ff
    pop bc
    cp $3f
    ld a, [hl]
    add c
    db $dd
    db $e3
    cp a
    rst $38
    rst $38
    rst $38
    rst $10
    cp h
    cp a
    db $fc
    ld a, a
    jp c, $dbe7

    cp d
    and $d4
    db $ec
    ld hl, sp-$08
    add b
    add b
    ld a, e
    rst $20
    ld e, [hl]
    push hl
    set 7, h
    pop de
    cp $31
    ld a, $11
    ld e, $0b
    dec c
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ldh a, [rNR10]
    ld hl, sp+$78
    cp h
    call nz, $9e62
    cp $fe
    inc a
    inc a
    ld e, a
    ld h, a
    xor h
    rst $18
    rst $28
    sbc a
    cp l
    and $5b
    ld a, h
    ld [hl], a
    ld a, a
    rst $08
    rst $38
    dec bc
    dec c
    call Call_000_3fce
    ei
    rst $08
    cp $b2
    ld a, a
    db $ed
    rra
    ld a, [$fdc7]
    di
    cp a
    ret c

    db $fc
    sbc e
    db $fd
    sbc e
    db $fd
    sbc e
    cp l
    db $db
    ld a, [hl]
    ld c, l
    ld e, [hl]
    ld l, l
    ccf
    ld h, $fe
    add hl, sp
    ccf
    call z, $f6cf
    rst $30
    dec sp
    or a
    ld e, e
    db $db
    xor l
    ei
    call $fd3b
    cpl
    inc sp
    rla
    add hl, de
    dec bc
    inc c
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    jp $ff3d


    pop bc
    rst $38
    rst $38
    cp $3f
    ld a, [hl]
    add c
    db $dd
    db $e3
    cp a
    rst $38
    rst $38
    rst $38
    inc a
    inc a
    ld e, a
    ld h, a
    xor h
    rst $18
    rst $28
    sbc a
    cp l
    and $5b
    ld a, h
    ld [hl], a
    ld a, a
    ret z

    rst $38
    dec bc
    dec c
    call Call_000_3fce
    ei
    rst $08
    cp $b2
    ld a, a
    db $ed
    rra
    ld a, [$3dc7]
    di
    ld [hl], c
    ret


    ld l, e
    nop
    nop
    nop
    nop
    ld sp, $2e31
    ccf
    add hl, hl
    ld a, $33
    inc a
    ld b, a
    ld a, b
    ld e, a
    ld a, [hl]
    nop
    nop
    nop
    nop
    adc $ce
    jp c, $f656

    xor $f6
    ld l, $ac
    ld a, h
    xor h
    ld a, h
    dec b
    rlca
    ld b, $07
    rrca
    rrca
    dec bc
    ld c, $17
    ld a, [de]
    ld a, [de]
    rra
    dec [hl]
    dec sp
    ld a, [hl]
    ld a, l
    or l
    ld l, a
    xor $dd
    or a
    ld a, a
    cp $f5
    cp $b5
    or l
    ld c, a
    ld a, [bc]
    rst $38
    sbc a
    db $fc
    add b
    add b
    add b
    add b
    ldh [$ffe0], a
    and b
    ldh [$ffd3], a
    or e
    scf
    rst $30
    ld a, [$337f]
    db $fd
    jr jr_01a_6c33

    jr c, jr_01a_6c45

    ld d, [hl]
    halt
    rst $28
    db $eb
    ld d, a
    cp l
    ld [$ec1e], a
    sbc h
    ld l, b
    ret c

    nop
    nop
    inc a
    inc a
    ld e, d
    ld l, [hl]
    xor a
    db $dd
    push de
    rst $30

jr_01a_6c33:
    ld h, a
    ld h, l
    dec b
    rlca
    ld b, $05
    ld a, a
    ld a, [hl]
    db $ed
    di
    db $db
    and $af
    rst $10
    db $db
    db $ec
    ld b, a
    ld a, a

jr_01a_6c45:
    dec hl
    inc a
    rst $18
    rst $38
    rst $30
    ld hl, sp+$3d
    ld a, [$7dd6]
    ret c

    ccf
    rst $18
    cp a
    or d
    ld l, [hl]
    rst $28
    rst $18
    rst $38
    rst $38
    cp $79
    dec de
    db $fc
    db $ec
    rst $28
    ld b, l
    rst $00
    add d
    add d
    nop
    nop
    ret nz

    ret nz

    ld h, b
    and b
    ldh a, [$fff0]
    ld d, b
    or b
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a

jr_01a_6c7b:
    ld bc, $0301
    inc bc
    dec b
    ld b, $0e
    dec c
    ld e, $13
    ld hl, $3f3f
    ccf
    ld a, a
    cp a
    rst $18
    rst $28
    or [hl]
    ld l, [hl]
    call nc, $a83c
    ld e, b
    ld e, b
    cp b
    ld [$f0f8], sp
    ldh a, [$fffe]
    rst $38
    dec b
    rlca
    ld c, $0f
    ld a, [de]
    dec e
    dec h
    ld a, [hl-]
    ld [de], a
    dec e
    ld hl, $1f3f
    rra
    jr nc, jr_01a_6c7b

    ldh a, [$fff0]
    ld d, b
    or b
    and b
    ld h, b
    ld h, b
    ldh [$fff0], a
    sub b
    ld [$f8f8], sp
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $2e31
    ccf
    add hl, hl
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
    adc $ce
    jp c, $f656

    xor $06
    ld b, $0b
    rrca
    dec d
    dec de
    ld a, [de]
    ld d, $3c
    inc a
    ld l, b
    ld e, b
    or b
    ldh a, [$fffe]
    cp [hl]
    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    rrca
    rrca
    rrca
    ld a, [bc]
    dec bc
    ld c, $3f
    jp nz, $877a

    ld a, [$b5e7]
    ld l, a
    xor $dd
    or a
    ld a, a
    cp $f5
    cp $b5
    ld h, l
    and $c3
    jp $c0c0


    cp a
    rst $38
    db $db
    cp h
    xor [hl]
    rst $18
    rst $18
    cp a
    rst $28
    sbc a
    ld d, b
    or b
    ld hl, sp-$18
    add sp, -$28
    or b
    ld [hl], b
    ret nz

    ret nz

    ret z

    ld c, b
    ld d, [hl]
    sbc $eb
    push af
    ld b, $07
    dec bc
    dec c
    dec c
    ld a, [bc]
    rrca
    inc c
    inc a
    ccf
    ld a, d
    ld d, a
    rst $30
    xor l
    xor l
    rst $38
    or l
    ld c, a
    ld a, [bc]
    rst $38
    sbc l
    cp $70
    rst $38
    ld l, l
    rst $38
    cp e
    add $6f
    db $fd
    db $fd
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
    ld h, l
    rst $38
    ld a, [$eff5]
    sbc b
    or $0d
    push hl
    ld e, a
    ld a, [hl]
    cp $d5
    ld [$b1ee], a
    push af
    jp c, $ffd0

    reti


    rst $30
    and [hl]
    rst $38
    ld hl, sp-$01
    rrca
    rrca
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld e, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    sbc h
    or h
    xor h
    ld d, e
    ld a, l
    ld h, a
    ld a, b
    adc a
    ldh a, [$ffbf]
    db $fc
    or [hl]
    db $ed
    db $dd
    ei
    or $ef
    ld a, a
    ld e, [hl]
    db $ec
    call c, Call_01a_5cec
    ld e, b
    ld hl, sp+$58
    ld hl, sp-$50
    ldh a, [$ffdc]
    cp h
    ld a, [$d5f6]
    cp e
    ld a, a
    ld d, [hl]

Call_01a_6dbb:
    ld d, [hl]
    ld l, c
    ld c, b
    ld a, a
    ld l, c
    ld a, a
    ld d, e
    ld a, a
    ld a, $2f
    dec hl
    inc a
    ld [hl], $3f
    db $db
    or a
    db $db
    or a
    cp a
    rst $20
    ld d, a
    rst $28
    xor a
    rst $18
    rst $18
    rst $28
    xor [hl]
    ld a, a
    call z, $1dff
    rra
    rla
    dec de
    db $10
    rra
    dec e
    ld e, $2e
    dec sp
    ld e, e
    ld [hl], l
    or l
    xor $ae
    rst $38
    dec b
    cp $fc
    rst $38
    and d
    cp a
    ld d, d
    rst $18
    bit 1, a
    ld c, a
    adc $d7
    db $dd
    and l
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    dec bc
    rrca
    dec d
    dec de
    ld a, [de]
    ld d, $3c
    inc a
    jr c, jr_01a_6e39

    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    and b
    ldh [$ffe0], a
    and b
    add d
    add e
    add e
    add d
    push bc
    rst $00
    rst $20
    push hl
    ei
    rst $38
    rst $28
    rst $30
    dec sp
    rst $30
    or a
    ld e, a
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    sub h
    ld [$f57e], a
    xor e

jr_01a_6e39:
    ld e, a
    cp a
    rst $28
    rra
    or [hl]
    ld c, a
    rst $28
    rst $30
    jp nc, $ea3e

    ld e, $ea
    ld e, [hl]
    ld a, h
    db $fc
    cp [hl]
    pop hl
    ld l, $f1
    ld d, l
    ld [$ff80], a
    set 6, a
    ld a, $3d
    ld [$0f0f], sp
    rrca
    inc e
    inc e
    ld l, $32
    ld e, a
    ld h, a
    ld a, l
    ld b, a
    ld e, c
    ld l, a
    and d
    cp $7d
    ld e, a
    reti


    and a
    ld l, c
    ld [hl], a
    ld d, l
    ld l, e
    dec hl
    scf
    rla
    rra
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld e, e
    halt
    xor $fd
    ei
    rst $30
    cp a
    rst $28
    cp a
    db $eb
    db $eb
    or h
    or b
    rst $18
    reti


    rst $28
    ld e, b
    ld hl, sp-$17
    reti


    ld a, a
    rst $38
    jp hl


    ld e, a
    rst $28
    ld e, e
    ld e, e
    rst $30
    or a
    rst $28
    ei
    rst $00
    nop
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
    rlca
    rlca
    ld c, $09
    cp a
    rst $00
    ld e, l
    ld l, a
    ld d, a
    ld a, b
    dec l
    ccf
    ccf
    ccf
    rst $30
    ld hl, sp-$06
    db $fd
    ld a, a
    rst $38
    ld d, a
    xor a
    xor d
    sub $4e
    cp $85
    db $fd
    ld sp, hl
    ld sp, hl
    daa
    and $fa
    db $fd
    rst $30
    db $eb
    jr c, @+$3a

    ld d, h
    ld l, h
    cp d
    sub $7e
    cp [hl]
    or $7a

jr_01a_6ed3:
    ld l, d
    or $b4
    cp h
    jr jr_01a_6ef1

    add hl, bc
    rrca
    rrca
    rrca
    ld b, $05
    dec b
    ld b, $02
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    rst $38
    inc hl
    db $e3
    or a
    ld [hl], a
    rst $08
    ccf

jr_01a_6ef1:
    cp a
    ld e, h
    add a
    rst $38
    adc $7d
    or l
    halt
    db $fc
    db $fc
    ldh [$ffe0], a
    ret nz

    ret nz

    and b
    ldh [$ff60], a
    ldh [$ffd0], a
    or b
    add sp, $18
    ret c

    jr c, jr_01a_6ed3

    cp c
    sub c
    pop af
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    rst $10
    ld d, d
    xor [hl]
    push hl
    ei
    ldh a, [c]
    sbc [hl]
    db $ec
    sbc h
    ret z

    cp b
    sub b
    ldh a, [$ff60]
    ld h, b
    nop
    nop
    nop
    nop
    jr nc, jr_01a_6f5f

    ld sp, hl
    jp hl


    xor [hl]
    rst $30
    rst $18
    db $f4
    or [hl]
    ei
    ld [hl], a
    ld a, d
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    inc bc
    push bc
    add $3e
    rst $38
    sbc l
    ld a, [hl]
    ld a, a
    cp a
    ld l, l
    db $db
    cp e
    rst $30
    db $ed
    rst $18
    rst $38
    cp l
    rst $38
    xor l
    xor l
    db $d3
    jp nz, Jump_01a_677f

Jump_01a_6f58:
    cp a
    ld h, b
    ldh [$ffa0], a
    ld h, b
    ldh a, [$fff0]

jr_01a_6f5f:
    xor b
    ld a, b
    or l
    ld l, l
    ld l, l
    db $dd
    rst $30
    adc [hl]
    xor a
    ld e, a
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    xor h
    call c, $b67a
    push de
    ld e, e
    ld c, e
    rst $08
    add [hl]
    add [hl]
    ld l, $37
    inc a
    ccf
    ld a, [bc]
    rrca
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, a
    ld a, a
    rst $38
    add d
    add e
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    cp l
    ld e, [hl]
    ld [hl], $ff
    ld e, l
    db $e3
    ld [hl], $ff
    rst $38
    rst $38
    ld l, $31
    push af
    ei
    ld a, a
    rst $38
    ld e, a
    cp a
    and a
    ld e, a
    ld a, $ff
    rla
    rst $30
    ld [$57ef], a
    db $db
    db $ec
    db $f4
    ld hl, sp-$08
    ldh [$ffe0], a
    ld e, h
    cp h
    xor d
    ld a, [hl]
    rst $10
    ld a, c
    ld a, a
    pop af
    dec l
    di
    or d
    cp $7c
    ld a, h
    cp $fe
    ld a, a
    ld a, c
    scf
    ld a, [hl-]
    rla
    inc e
    dec c
    ld a, [bc]
    ld c, $0d
    ld [$070f], sp
    rlca
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ffb0], a
    ld d, b
    ld e, b
    cp b
    cp h
    ld h, h
    ld b, d
    cp $fe
    cp $00
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rrca
    dec bc
    ld c, $0d
    dec e
    dec de
    dec de
    rla
    jr jr_01a_7013

    rla
    rra
    inc d
    rra
    add hl, de
    ld e, $23
    inc a
    cpl
    ccf
    dec l
    dec sp
    scf
    ld a, $e7
    rst $20
    ld l, l
    xor e
    ei
    ld [hl], a
    ei
    rla
    sub $3e

jr_01a_7013:
    rst $10
    ccf
    xor l
    ld a, l
    ld [hl], a
    xor $3b
    scf
    ld l, $39
    ld d, a
    ld l, a
    db $ed
    db $d3
    reti


    rst $20
    db $eb
    rst $38
    db $fd
    rst $38
    db $dd
    ld a, e
    inc bc
    inc bc
    ld b, $07
    dec bc
    dec c
    dec d
    dec de
    ld a, [de]
    ld e, $0c
    inc c
    nop
    nop
    nop
    nop
    cp l
    cp e
    rst $18
    ld d, a
    ld a, a
    or l
    or l
    jp c, Jump_01a_6f58

    inc a
    ccf
    dec bc
    rrca
    dec bc
    inc c
    cp [hl]
    rst $38
    rst $30
    xor a
    rst $38
    xor a
    xor a
    ld a, a
    ld d, a
    rst $38
    rst $28
    db $fd
    xor l
    db $db
    ld e, e
    cp a
    ld e, l
    db $eb
    ld a, l
    rst $00
    db $eb
    rst $10
    push de
    db $eb
    pop hl
    rst $38
    or c
    cp a
    sub l
    sbc a
    adc d
    adc d
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

Call_01a_7070:
jr_01a_7070:
    rlca
    inc b
    rlca
    dec bc
    inc c
    rla
    jr jr_01a_7082

    dec c
    and a
    ld a, a
    ld a, a
    rst $38
    rst $00
    rst $00
    jp $c3c3


jr_01a_7082:
    jp $e161


    ld hl, $91e1
    ld [hl], c
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$ffe0], a
    ldh [$ffe0], a
    sub b
    ldh a, [$ff78]
    cp b
    db $ec
    ld [hl], h
    ld e, d
    xor $a9
    rst $10
    ld e, l
    ld a, a
    ld l, [hl]
    ld [hl], d
    ld d, l
    ld l, a
    ld a, l
    ld c, a
    ld e, [hl]
    ld l, [hl]
    inc h
    inc a
    jr @+$1a

    cp c
    rst $00
    push af
    adc e
    xor e
    rst $10
    push af
    xor a
    ld l, l
    ld a, e
    dec l
    dec sp
    dec d
    rla
    inc bc
    inc bc
    cp l
    cp e
    rst $18
    ld d, a
    ld a, a
    or l
    or l
    jp c, Jump_01a_6f58

jr_01a_70c3:
    inc a
    ccf
    dec bc
    rrca
    ei
    db $fc
    rlca
    rlca
    ld a, [hl-]
    dec a
    ld [hl], a
    ld c, h
    ld a, [$dfb7]
    ld a, [$fbbe]
    ld a, e
    ld a, a
    ld b, $06
    ld a, l
    rst $38
    rst $38
    ccf
    ret c

    jr c, jr_01a_7070

    ld [hl], b
    jr nz, jr_01a_70c3

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    and a
    ld a, a
    ld a, a
    rst $38
    add a
    add a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01a_7120

    inc hl
    inc a
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    sbc a
    ldh [rP1], a
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, @-$06

    add [hl]
    ld a, [hl]
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_7120:
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ff98], a
    ld a, b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$ff5b], a
    ld h, h
    ld c, l
    ld [hl], d
    halt

jr_01a_7136:
    ld a, e
    dec hl
    dec a
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$17

    jr jr_01a_7136

    rrca
    ei
    rlca
    ld a, h
    add e
    ld a, $c1
    and $1e
    ld sp, hl
    rlca
    cp [hl]
    ld [hl], c
    rst $18
    ld a, $ed
    dec e
    ld a, [de]
    and $e5
    ei
    ld a, h
    rst $38
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ff98], a
    ld a, b
    and $de
    add hl, sp
    ccf
    rlca
    rlca
    add b
    add b
    jp c, Jump_01a_55f7

    ld l, e
    ld l, d
    ld [hl], l
    dec l
    ld [hl], $36
    dec sp
    rla
    add hl, de
    dec de
    dec e
    dec bc
    dec c
    ld a, h
    add e
    sbc [hl]

jr_01a_717c:
    pop hl
    ld c, a
    ldh a, [$ff27]
    ld hl, sp-$67
    ld a, [hl]
    ld d, h
    or a
    xor d
    db $db
    ld e, c
    ld l, c
    xor $ee
    ld h, b
    ldh [rNR41], a
    ldh [$ff90], a
    ld [hl], b
    ret nc

    jr nc, jr_01a_717c

    jr jr_01a_720e

    adc b
    sbc h
    db $e4
    dec c
    ld c, $05
    ld b, $02
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    xor h
    or h
    sub h
    sbc h
    adc h
    adc h
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    ld c, h
    ld [hl], h
    ld h, $3a
    ld a, [de]
    ld e, $05
    rlca
    inc bc
    inc bc
    nop
    nop

jr_01a_71c5:
    nop
    nop
    nop
    nop
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$ff5f], a
    ld h, b
    ld e, a
    ld h, b
    dec l
    ld [hl-], a
    ld [hl], $39
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $08
    jr nc, jr_01a_71c5

    inc e
    db $f4
    rrca
    ei
    rlca
    ld a, l
    add e
    and $1e
    ld a, c
    rst $00
    cp [hl]
    ld a, c
    rst $28
    rra
    ei
    rlca
    ld a, [hl]
    add c
    rrca
    ldh a, [$ffe1]
    cp $00
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ffd0], a
    jr nc, jr_01a_7235

    dec a
    dec de
    inc e
    dec d

jr_01a_720e:
    ld e, $0a
    rrca
    ld a, [bc]
    rrca

jr_01a_7213:
    dec b
    rlca

jr_01a_7215:
    inc b
    rlca
    ld [bc], a
    inc bc
    ld e, $e1
    adc $f1
    inc hl
    db $fc
    sbc c
    ld a, [hl]
    call z, $673f
    sbc a
    or d
    adc $da
    and $9e
    sbc a
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ld b, b
    jr nz, jr_01a_7213

    jr nz, jr_01a_7215

jr_01a_7235:
    ldh [$ffe0], a
    nop
    nop
    inc c
    db $fc
    ldh [c], a
    cp $1e
    ld e, $00
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
    ld c, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    call z, Call_01a_645c

jr_01a_725d:
    inc l
    inc [hl]
    ld d, $1a
    ld a, [bc]
    ld c, $06
    ld b, $00
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01a_728c

    cpl
    jr nc, jr_01a_72ce

    ld h, c
    ld a, a
    ld b, b
    cp c
    rst $00
    rst $38
    add b
    rst $38
    add b
    ret nz

    ret nz

    jr nz, jr_01a_725d

    sub b
    ld [hl], b
    ld hl, sp-$08
    db $e4
    inc e
    ld hl, sp-$08
    inc a
    db $fc
    ld a, [$f706]
    adc a
    cp a

jr_01a_728c:
    ret nz

    ld a, [hl]
    ld b, c
    ld e, a
    ld h, b
    cpl
    jr nc, @+$1a

    rra
    rlca
    rlca
    nop
    nop
    db $fc
    db $fc
    sub b
    ld [hl], b
    ld hl, sp-$08
    db $e4
    inc e
    ld a, b
    ld hl, sp+$10
    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    rlca
    rlca
    jr jr_01a_72cc

    dec h
    ld a, [hl-]
    ld c, d
    ld [hl], l
    ld d, a
    ld l, b
    xor a
    ret nc

    sbc a
    ldh [$ffaf], a
    ret nc

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld [de], a
    dec e
    dec d
    ld a, [de]
    dec hl
    inc [hl]
    daa
    jr c, jr_01a_7302

    jr c, jr_01a_7310

jr_01a_72cc:
    ld a, h
    sub d

jr_01a_72ce:
    xor $ba
    add $92
    xor $44
    ld a, h
    jr c, jr_01a_730f

    nop
    nop
    dec a
    call c, Call_000_0072
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $0a
    dec c
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    adc a
    adc a
    cp a
    cp b
    rst $18
    rst $38
    nop
    nop
    jr nz, @+$22

    ld d, b
    ld [hl], b

jr_01a_7302:
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    add sp, -$28
    ld d, [hl]
    xor $ad
    rst $30
    ld bc, $0201

jr_01a_730f:
    inc bc

jr_01a_7310:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    dec b
    ld b, $f7
    ccf
    ld [$b33d], a
    ld a, h
    rst $20
    ld a, b
    rst $00
    ld a, h
    rst $18
    ld [hl], l
    ld e, a
    push af
    xor a
    db $f4
    and l
    ld a, [hl]
    push bc
    cp $b5
    ld a, [hl]
    ei
    inc l
    rst $38
    ld d, b
    sbc $71
    pop de
    ld a, a
    ld l, a
    rst $38
    ld d, b
    ldh a, [$ff50]
    ldh a, [rOBP0]
    ld hl, sp+$48
    ld hl, sp+$7c
    db $fc
    jp c, $b5e6

    rst $08
    ld l, a
    sbc a
    cpl
    inc sp
    inc sp
    ccf
    ccf
    scf
    ld d, a
    ld a, [hl]
    ld e, e
    ld l, [hl]
    xor d
    rst $18
    xor c
    rst $18
    cp l
    cp $ad
    rst $18
    db $fd
    ld a, e
    rst $38
    ld e, e
    jp c, $fda7

    cp $fe
    ld bc, $ff01
    rst $38
    cp $ce
    ld sp, hl
    sub $79
    ret nc

    ld a, a
    sbc $71
    ld d, l
    ei
    sub c
    rst $38
    adc e
    ld a, a
    ld h, [hl]
    cp $68
    ret c

    or h
    call z, $ecd4
    cp $fe
    jp c, $cde6

    di
    adc l
    di
    cp l
    ei
    sbc $eb
    cp d
    rst $18
    db $fd
    adc a
    cp e
    rst $00
    ld b, l
    ld a, l
    dec sp
    dec sp
    inc bc
    inc bc
    rlca
    inc b
    cp $01
    ld a, h
    add e
    rst $38
    rst $00
    ld a, l
    rst $38
    cp l
    jp $e7db


    db $fc
    rst $38
    rst $38
    rst $38
    call nc, $94bc
    db $fc
    ld l, b
    ld hl, sp+$18
    ld hl, sp+$68
    ld hl, sp-$64
    db $fc
    ld a, a
    rst $38
    rst $38
    db $fc
    push af
    rst $08
    cp d
    or $fe
    ldh [c], a
    cp d
    add $44
    ld a, h
    jr c, jr_01a_7400

    nop
    nop
    add b
    add b
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    ld c, $0f
    dec d
    dec de
    ld l, $39
    ld e, a
    ld a, b
    ld a, a

jr_01a_73db:
    ld a, a
    cp b
    ret c

    ld d, b
    ldh a, [$ffb0]
    ld [hl], b
    ret nc

    jr nc, jr_01a_73f5

    ldh a, [$fff0]
    ldh a, [$ffd0]
    jr nc, jr_01a_73db

    ldh a, [$ffde]
    db $eb
    cp d
    rst $18
    db $fd
    adc a
    cp e
    rst $00
    ld b, l

jr_01a_73f5:
    ld a, l
    jr c, jr_01a_7430

    ld bc, $0701
    rlca
    call nc, $94bc
    db $fc

jr_01a_7400:
    ld l, b
    ld hl, sp+$18
    ld hl, sp+$68
    ld hl, sp-$70
    ldh a, [$ff78]
    ld hl, sp-$02
    cp $f5
    rst $08
    cp d
    or $fe
    ldh [c], a
    cp d
    add $44
    ld a, h
    jr c, jr_01a_7450

    nop
    nop
    nop
    nop
    ccf
    ccf
    dec sp
    daa
    daa
    ccf
    jr c, jr_01a_7463

    ld a, $21
    inc l
    inc sp
    inc a
    ccf
    ld e, e
    ld h, a
    rst $38
    rst $38
    nop
    nop

jr_01a_7430:
    nop
    nop
    add c
    add c
    ld b, d
    jp $c342


    and l
    rst $20
    and l
    ld h, [hl]
    ld a, a
    ld b, b
    cp [hl]
    pop de
    ei
    or a
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    jp $8181


jr_01a_7450:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc $eb
    cp d
    rst $18
    db $fd
    adc a
    cp e

jr_01a_7463:
    rst $00
    ld b, a
    ld a, a
    dec sp
    ccf
    daa
    ccf
    ld e, $19
    cp $01
    ld a, h
    add e
    rst $38
    rst $00
    ld a, l
    rst $38
    cp l
    jp $e7db


    db $fc
    rst $38
    ld e, a
    rst $18
    call nc, $94bc
    db $fc
    ld l, b
    ld hl, sp+$1e
    cp $6f
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ret


    adc $f5
    rst $08
    cp d
    or $fe
    ldh [c], a

jr_01a_7492:
    cp d
    add $c4
    db $fc
    jr c, @-$06

    sub b
    ldh a, [$ffe0]
    ld h, b
    rra
    db $10
    rra
    inc e
    ld [de], a
    rra
    dec l
    dec sp
    ld e, a
    ld a, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    and b
    ld h, b
    jr nz, jr_01a_7492

    and b
    ldh [$ff60], a
    ldh [$ffe0], a
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec b
    ld b, $a5
    ld a, [hl]
    push bc
    cp $b5
    ld a, [hl]
    ei
    inc l
    rst $38
    ld d, b
    sbc $71
    pop de
    ld a, a
    ld l, [hl]
    rst $38
    ld d, b
    ldh a, [$ff50]
    ldh a, [rOBP0]
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp-$44
    db $fc
    ld e, d
    and $b5
    rst $08
    cpl
    inc sp
    cpl
    inc sp
    rla
    rra
    rra
    ld d, $1b
    ld e, $0a
    rrca
    add hl, de
    rra
    dec d
    ld e, $cb
    db $fc
    rst $08
    ld a, b
    sub $79
    sub $79
    ld d, c
    rst $38
    sbc a
    pop af
    sub [hl]
    ld a, e
    ld a, [hl]
    db $fd
    ld a, b
    ld hl, sp+$70
    ldh a, [$fff0]
    ldh a, [$ffe0]
    ldh [$ffe0], a
    ldh [$ffc0], a
    ret nz

    add b
    add b
    add b
    add b
    ld e, $1b
    ld a, [hl+]
    ccf
    ccf
    ccf
    ld d, e
    ld l, a
    ld [hl], c
    ld c, a
    cp a
    rst $18
    xor a
    di
    db $dd
    rst $28
    cp $01
    ld a, h
    add e
    rst $38
    rst $00
    ld a, l
    rst $38
    cp l
    jp $e7db


    ld a, a
    cp $7d
    rst $38
    sub $b9
    xor l
    di
    ld a, l
    ei
    add $fe
    rlca
    ei
    add a
    ld a, [$73cf]
    ld l, d
    or a
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
    ret nz

    ret nz

    ld [hl], b
    or b
    ld hl, sp+$08
    rst $38
    rst $08
    ld a, [hl]
    ld c, a
    ld e, e
    ld l, a
    ld l, l
    ld [hl], a
    ld d, a
    ld a, e
    ccf
    ccf
    nop
    nop
    nop
    nop
    daa
    rst $20
    inc hl
    db $e3
    and e
    db $e3
    ld h, [hl]
    rst $20
    push hl
    and $03
    inc bc
    nop
    nop
    nop
    nop
    ld a, [hl]
    and a
    halt
    xor a
    ld a, d
    xor e
    di
    ld [hl], e
    and c
    pop hl
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld l, [hl]
    sbc [hl]
    dec d
    ei
    xor $f3
    ld a, a
    add e
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
    add b
    add b
    ld b, b
    ret nz

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
    ld bc, $0301
    inc bc
    dec b
    rlca
    ld b, $05
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $fe
    cp $3f
    ei
    ld a, [$7747]
    adc [hl]
    ei
    ld a, [$1aeb]
    adc l
    ld a, [hl]
    adc d
    ld a, l
    ld e, e
    ld h, a
    ld a, [hl]
    ld a, a
    ld d, e
    ld l, [hl]
    ld d, e
    ld l, [hl]
    ld a, [hl+]
    scf
    dec l
    scf
    dec d
    rra
    dec c
    ld c, $2f
    inc sp
    inc de
    rra
    rra
    rla
    rla
    ld e, $0b
    ld c, $0a
    rrca
    add hl, bc
    rrca
    dec c
    ld c, $0e
    dec bc
    ld a, [bc]
    rrca
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
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
    ld bc, $0201
    inc bc
    dec b
    ld b, $2f
    inc sp
    inc de
    rra
    ccf
    scf
    ld d, a
    ld a, [hl]
    db $eb
    cp $7a
    sbc a
    jp hl


    rra
    call $0f3e
    rrca
    rra
    db $10
    cpl
    jr nc, jr_01a_7661

    add hl, hl
    ld e, e
    ld [hl], a
    rst $38
    rst $10
    or h
    db $ec
    ld a, b
    ld a, b
    adc d
    ld a, e
    adc d
    ei
    db $dd
    ld a, l
    rst $38
    ld a, a
    rst $00
    ld b, a
    ld c, a
    rst $08
    db $fc
    di
    ld a, $21
    cp $01
    ld a, h
    add e
    rst $38
    rst $00
    ld a, l
    rst $38
    cp l
    jp $e7db


    db $fc
    rst $38
    ld e, a
    rst $18
    call nc, $94bc
    db $fc
    ld l, b
    ld hl, sp+$18
    ld hl, sp+$6f
    rst $38
    sbc [hl]
    db $fd
    ld a, l
    ei
    cp $fb
    push af
    rst $08
    cp d
    or $fe

jr_01a_7661:
    ldh [c], a
    cp d
    add $44
    ld a, h
    ld hl, sp-$08
    ld [hl], b
    or b
    ld hl, sp+$08
    ccf
    jr c, jr_01a_7693

    ccf
    ld e, e
    ld [hl], a
    cp [hl]
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ccf
    ld c, $0f
    ld [bc], a
    inc bc
    inc bc

jr_01a_7693:
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    sbc [hl]
    dec d
    ei
    xor $f3
    ld a, a
    add e
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_76ac:
    ld e, l
    xor a
    halt
    nop
    nop
    ld bc, $0201
    inc bc
    dec c
    ld c, $17
    inc e
    daa
    inc a
    ld [hl-], a
    dec l
    ld [hl-], a
    dec l
    ld a, h
    ld a, h
    cp d
    add $ef
    rra
    sub a
    ld a, b
    cpl
    ldh a, [rNR23]
    rst $20
    jr nz, jr_01a_76ac

    ld b, e
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    inc [hl]
    call z, $fc1c
    db $e4
    inc e
    ld l, b
    ld [hl], a
    ld [hl], l
    ld e, e
    ld d, e
    ld l, [hl]
    ld a, [hl-]
    daa
    ld l, $3b
    rra

Call_01a_76ea:
    dec de
    ld a, [bc]
    rrca
    rlca
    ld b, $e0
    cp a
    or $5f
    rst $38
    xor c
    jp hl


    or [hl]
    xor h
    rst $38
    ld e, h
    rst $38
    or l
    rst $38
    db $fd
    or $7a
    add [hl]
    ld e, $e2
    ld c, l
    cp e
    or a
    call $e79b
    call $e7b3
    sbc c
    rst $30
    adc l
    ld l, b
    ld [hl], a
    ld [hl], l
    ld e, e
    ld d, e
    ld l, [hl]
    ld a, [hl-]
    daa
    ld l, $3b
    rra
    dec de
    ld a, [bc]
    rrca
    rst $20
    and $7a
    add [hl]
    ld e, $e2
    ld c, l
    cp e
    or a
    call $e79b
    call $e7b3
    sbc c
    rst $30
    adc a
    cpl
    scf
    rla
    add hl, de
    dec bc
    inc c
    dec c
    ld c, $36
    scf
    ld a, a
    ld l, a
    push af
    sbc a
    or l
    rst $08
    rst $38
    xor l
    rst $28
    jp nc, Jump_01a_7edb

    rst $20
    ld a, [hl]

jr_01a_7747:
    sbc e
    rst $38
    ld h, h
    sbc e
    rst $38
    ld a, h
    ld l, a
    cp b
    ld l, a
    or [hl]
    ld a, [hl]
    cp c
    ld a, l
    db $e3
    ei
    rst $00
    ld [hl], a
    rst $08
    ret


    ld a, c
    cp b
    ld a, b
    jr c, jr_01a_7747

    ld b, b
    ret nz

    add b
    add b
    ldh a, [$fff0]
    call z, $e3fc
    rst $38
    di
    sbc a
    push de
    cp [hl]
    ld h, a
    ld a, l
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$ffa0], a
    ld h, b
    ldh [$ffa0], a
    ldh [$ffc0], a
    ret nz

    nop
    nop
    ld c, c
    ld a, a
    jr nc, jr_01a_77c2

    rrca
    rrca
    rra
    rra
    rra
    rra
    dec e
    ld d, $1d
    ld e, $0e
    dec bc
    inc a
    db $d3
    cp [hl]
    rst $38
    rst $38
    push hl
    push hl
    rst $38
    rst $38
    rst $38
    add c
    add c
    ret nz

    ld b, b
    ldh [rNR41], a
    rlca
    ld b, $09
    rrca
    ld a, a
    ld a, a
    cp a
    pop bc
    adc $f3
    ld [hl], l
    ld a, [hl]
    rst $38
    sbc l
    ld e, l
    cp $fd
    or [hl]
    cp l
    ld c, d
    ld l, l
    ei
    ld l, [hl]
    ei
    sbc l
    rst $38
    ld h, e
    db $fd
    rst $38
    pop af
    cp h
    db $e3
    or d
    adc $ba

jr_01a_77c2:
    add $fe
    cp $f9
    add a
    rst $20
    rra
    rst $18
    ccf
    ccf
    ld sp, hl
    db $dd
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
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ld bc, $0201
    inc bc
    rlca
    rlca
    dec bc
    inc c
    rla
    dec de
    dec e
    rla
    dec de
    rra
    ld b, $06
    inc [hl]
    rst $30
    and d
    db $e3
    rst $18
    rst $18
    rst $38
    ld a, a
    rst $38
    ld l, e
    or a
    cp c
    dec sp
    inc l
    add hl, sp
    ld a, $f0
    ld c, a
    ld sp, hl
    rst $38
    rst $38
    sub [hl]
    sub a
    cp $fd
    rst $38
    ld a, $3e
    sbc h
    sbc h
    sbc [hl]
    sbc [hl]
    sub $b7
    ld h, e

jr_01a_7812:
    and e
    ld b, c
    pop bc

jr_01a_7815:
    add d
    add e
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nc

    jr nc, jr_01a_7812

    ret nc

    jr nc, jr_01a_7815

    ldh a, [rNR10]
    ld hl, sp-$38
    cp b
    add sp, $58
    ld a, b
    jr nc, jr_01a_785f

    ld a, $27
    dec a
    inc hl
    ld [hl], d
    ld c, [hl]
    ld c, h
    ld a, h
    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc [hl]
    ld e, $1e
    ld a, $2e
    ld a, [hl]
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    rst $20
    sbc l
    db $e3
    sbc a
    rst $08
    cp l
    cp $b2
    ld c, a
    ld [hl], c
    ld sp, $0e3f
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_785f:
    rst $38
    ld a, [$857e]
    sbc l
    rst $20
    db $ed
    rst $38
    ld a, [$05ff]
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rst $30
    db $db
    rst $30
    dec hl
    or a
    xor $bf
    ld [$f37e], a
    cp c
    rst $20
    di
    rst $38
    db $fd
    rst $38
    db $fc
    db $fc
    ldh a, [c]
    ld c, $ce
    ld a, $b8
    ld a, b
    ld l, h
    db $f4
    cp $fa
    or $ae
    db $fd
    ld l, e
    or d
    adc $ba
    add $fe
    cp $f9
    add a
    rst $20
    rra
    rst $18
    ld a, $3d
    rst $38
    rst $18
    rst $28
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
    ret nz

    ld b, b
    and b
    ldh [rNR41], a
    ldh [rNR31], a
    inc e
    dec e
    ld d, $0c
    rrca
    ld c, $0b
    rlca
    rlca
    rrca
    inc c
    db $10
    rra
    rra
    rra
    rst $38
    db $fc
    db $fd
    ld a, $f2
    inc de
    ld a, c
    adc c
    add sp, -$28
    or b
    ldh a, [$ff60]
    ldh [$ffc0], a
    ret nz

    or $2e
    or a
    ld l, a
    ld l, a
    rst $18
    cp $ff
    ld e, $1d
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $1d01
    ld d, $3b
    inc a
    ld a, a
    ld h, [hl]
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    db $fd
    ld h, e
    ld e, a
    ld a, e
    ld b, [hl]
    inc a
    daa
    rra
    rra
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
    ldh [$ff60], a
    db $10
    ldh a, [$fff0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    add sp, -$28
    or h
    db $ec
    ld e, [hl]
    halt
    dec a
    scf
    ld [hl], $2f
    ld l, [hl]
    ld e, a
    ld l, b
    ld [hl], a
    ld [hl], l
    ld e, e
    ld d, e
    ld l, [hl]
    ld a, [hl-]
    daa
    xor [hl]
    cp e
    ld e, a
    db $db
    ld l, d
    rst $28
    rst $10
    or $7c
    ld a, a
    ld [$050f], sp
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
    rst $18
    ld l, [hl]
    xor l
    ld [hl], a
    rst $28
    di
    ld [hl], a
    ld a, c
    ld [hl], $3b
    dec d
    ld e, $0f
    dec c
    dec b
    ld b, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0303
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $18
    ldh a, [rVBK]
    ld sp, hl
    rst $38
    rst $38
    sub [hl]
    sub a
    cp $ff
    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
    add e
    add e

jr_01a_797f:
    reti


    cp a
    ld a, [hl]
    or l
    ld e, a
    ret nc

    rst $28
    jp hl


    rst $30
    rst $30
    ldh a, [$fff0]
    ld [hl], b
    ret nc

    jr nc, jr_01a_797f

    and b
    ldh [$ffa0], a
    ldh [$ffa0], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rrca
    db $10
    rra
    jr nz, @+$41

    ld b, b
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    rlca
    rlca
    jr jr_01a_79fd

    ld b, b
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    inc bc
    inc b
    ld b, $08
    inc e
    nop
    jr jr_01a_7a0f

    nop
    rrca
    rra
    ld h, b
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    nop

jr_01a_79fd:
    nop
    nop
    jr c, jr_01a_7a01

jr_01a_7a01:
    jr nc, @+$42

    jr nc, @+$42

    ld [hl], b
    nop
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b

jr_01a_7a0f:
    nop
    db $10

jr_01a_7a11:
    db $10
    jr z, jr_01a_7a24

    jr z, jr_01a_7a26

    jr z, jr_01a_7a28

    jr z, jr_01a_7a2a

    jr z, jr_01a_7a2c

    jr z, jr_01a_7a2e

    ld l, h
    inc bc
    inc c
    rlca
    jr @+$21

jr_01a_7a24:
    jr nz, @+$21

jr_01a_7a26:
    ld h, b
    ccf

jr_01a_7a28:
    ld b, b
    ccf

jr_01a_7a2a:
    ret nz

    ld a, a

jr_01a_7a2c:
    add b
    ld a, a

jr_01a_7a2e:
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
    db $10
    db $10
    jr z, jr_01a_7a4e

    jr z, jr_01a_7a50

    jr z, jr_01a_7a52

    jr z, jr_01a_7a54

    jr z, jr_01a_7a56

    ld l, h
    db $10
    ld l, h
    jr c, jr_01a_7a11

    ld a, h
    add d
    ld a, h

jr_01a_7a4e:
    add d
    nop

jr_01a_7a50:
    nop
    nop

jr_01a_7a52:
    db $10
    db $10

jr_01a_7a54:
    jr z, jr_01a_7a8e

jr_01a_7a56:
    ld b, h
    db $10
    jr z, jr_01a_7a5a

jr_01a_7a5a:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_7a80

    inc d
    inc b
    ld a, [bc]
    ld [bc], a
    dec b
    ld bc, $0002

jr_01a_7a80:
    nop
    ld bc, $0300
    ld bc, $030f
    rra
    dec bc
    ccf
    dec de
    ccf
    rra
    ccf

jr_01a_7a8e:
    rra
    ld a, h
    nop
    cp $7c
    rst $38
    ldh a, [rIE]
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$ffc0]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    ldh [$fffc], a
    ld hl, sp+$7f
    rra
    ld a, a
    ld l, $7f
    dec a
    ccf
    dec e
    ccf
    dec d
    rra
    inc b
    rrca
    dec b
    rlca
    ld bc, $5fff
    rst $38
    xor c
    rst $38
    ld d, [hl]
    rst $38
    ld e, a
    rst $38
    ld d, e
    rst $38
    and e
    rst $38
    ld c, d
    rst $38
    dec bc
    cp $fc
    cp $fc
    rst $38
    or $ff
    ld a, d
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    rlca
    ld bc, $060f
    ld a, a
    nop
    rst $38
    ld a, [hl]
    rst $38
    dec a
    ld a, a
    dec bc
    rst $38
    ld h, d
    rst $38
    and e
    rst $38
    ld c, e
    rst $38
    rst $30
    rst $38
    sub [hl]
    rst $38
    sub l
    rst $38
    ld h, d
    rst $38
    sbc [hl]
    rst $38
    ld c, $ff
    ld e, a
    cp $7c
    cp $7c
    cp $00
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add $ff
    ld h, $00
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
    ld bc, $0300
    ld bc, $0007
    rrca
    rlca
    rra
    inc c
    rra
    ld a, [bc]
    rra
    inc b
    ld b, $00
    rst $30
    jp Jump_01a_41e3


    rst $18
    nop
    rst $38
    add b
    rst $38
    sub h
    cp a
    ld c, $3f
    rla
    ccf
    rlca
    rst $38
    cp a
    rst $38
    ld b, $ff
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld [bc], a
    ld a, $00
    sbc h
    nop
    sbc [hl]
    nop
    rst $30
    ld h, c
    db $e3
    ret nz

    pop bc
    add b
    add e
    ld bc, $0103
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ffe0]
    ldh a, [rNR41]
    ldh a, [$ffc0]
    ldh a, [$ffe0]
    ld hl, sp+$30
    ld hl, sp+$50
    ld a, b
    jr nz, jr_01a_7b9e

    nop
    ccf
    add hl, de
    ccf
    ld e, $7e
    inc a
    ld a, h
    jr nc, jr_01a_7ba8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    nop
    ld e, $00
    ld a, $10
    ld a, [hl]
    jr nc, @+$80

    inc a

jr_01a_7b89:
    rst $38
    ld a, d
    rst $38
    ld a, h
    rst $38
    ld [hl], d
    cp $4c
    ld a, a
    ld a, $3f
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_7b9e:
    nop
    jr c, jr_01a_7b89

    ld e, b
    add sp, -$30
    or b
    ldh [$ffe0], a
    db $fc

jr_01a_7ba8:
    db $fc
    cp $fe
    ld a, a
    ld a, l
    dec sp
    ccf
    rra
    dec de
    dec bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld c, $0f
    rra
    inc de
    jr nz, @+$41

    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    ld h, b
    and b
    and b
    ldh [$ffe0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_7bf8

    ld e, $11
    rrca
    add hl, bc
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
    ldh [$ffe0], a
    ld hl, sp-$68
    inc b
    db $fc
    db $fc
    db $fc
    nop

jr_01a_7bf8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_7c01:
    add b
    add b
    ldh [$ff60], a
    ldh a, [$ffd0]
    jr c, jr_01a_7c01

    cp [hl]
    ld h, [hl]
    pop bc
    ld a, a
    rst $38
    rst $38
    ld b, $06
    dec c
    dec bc
    ld c, $0d
    dec bc
    ld c, $0d
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    cp $fe
    add c
    rst $38
    ld b, a
    rst $38
    xor a
    ld a, c
    xor l
    ld a, e
    ld a, [hl]
    cp $80
    add b
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld c, c
    ld [hl], a
    ld b, c
    ld a, a
    ld c, e
    ld [hl], l
    ld e, e
    ld h, l
    ld a, e
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
    nop
    nop
    nop
    ccf
    ccf
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]

jr_01a_7c59:
    pop bc
    cp a
    ld e, a
    and b
    ld [hl], b
    adc a
    ld e, [hl]
    ld h, c
    ld a, $21
    inc e
    dec de
    inc b
    rlca
    inc bc
    ld [bc], a
    ld b, $05
    ld c, $09
    rlca
    rlca
    ccf
    ret nz

    ld a, a
    add b
    ld e, d
    and l
    ld c, b
    or a
    ld c, c
    or [hl]
    rst $18
    jr nz, jr_01a_7c59

    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_7cdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7ebb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7edb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_7eff:
Jump_01a_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7fba:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
