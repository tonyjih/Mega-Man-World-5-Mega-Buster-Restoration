; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

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
    jr nz, jr_014_403f

    inc [hl]
    db $20, $c3
    pop af
    ld h, c
    jp $6512


Jump_014_4016:
    ld [$cf7b], a
    ld a, $d4
    ld [$cf86], a
    ld a, $3c
    ld [$de88], a
    ld a, $02
    ld [$cf7c], a
    xor a
    ld [$cf7d], a
    ld [$cf7e], a
    ld de, $4063
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $14
    call Call_000_02d3
    xor a

jr_014_403f:
    ld [$de88], a
    ret


Call_014_4043:
    ld a, $80
    jp Jump_014_4016


Call_014_4048:
    ld a, $01
    ld [$cca6], a
    ld b, $00
    ld e, b
    ld d, b
    ld c, $04
    call Call_014_41e0
    call Call_014_41fa
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ret


    ld a, [$cf7b]
    cp $18
    jr z, jr_014_407c

    cp $1b
    jr z, jr_014_4077

    cp $1d
    jr nz, jr_014_407f

    call Call_014_6bd1
    jr jr_014_407f

jr_014_4077:
    call Call_014_65bc
    jr jr_014_407f

jr_014_407c:
    call Call_014_62dc

jr_014_407f:
    ld a, $3c
    ld [$de88], a

Call_014_4084:
    ld a, [$de92]
    bit 3, a
    ret z

    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    rst $28
    ld l, $31
    cp $ff
    call Call_014_4048
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld [$d18d], a
    jp Jump_000_02df


    call Call_000_01c8
    ld hl, $de94
    ld a, [$de91]
    cp [hl]
    ld [hl], a
    jr z, jr_014_40c1

    ld a, [$de92]
    ld [$de95], a
    ld a, $10
    ld [$de93], a
    ret


jr_014_40c1:
    ld hl, $de93
    ld a, [hl]
    or a
    jr nz, jr_014_40cf

    ld [hl], $03
    ld a, [$de91]
    jr jr_014_40d1

jr_014_40cf:
    dec [hl]
    xor a

jr_014_40d1:
    ld [$de95], a
    ret


Call_014_40d5:
    push de
    ret


Call_014_40d7:
Jump_014_40d7:
    inc hl
    ld a, $fe
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_014_40de:
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
    jr c, jr_014_40fd

    dec hl
    ld b, [hl]
    jr jr_014_414b

jr_014_40fd:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_014_4106:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_014_412c

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
    call Call_014_40d5
    pop bc
    pop hl

jr_014_4124:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_014_4106

jr_014_412c:
    cp $fe
    jr c, jr_014_4144

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_014_413a

    ld [hl], $00
    jr jr_014_4124

jr_014_413a:
    ld a, $01

Jump_014_413c:
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_014_414c

jr_014_4144:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_014_414b:
    or a

jr_014_414c:
    ld [hl], b
    ret


Call_014_414e:
Jump_014_414e:
    ld [$db0b], a
    ld [$db0c], a
    ret


    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_014_41e0
    call Call_014_41fa

Call_014_4161:
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

jr_014_4192:
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
    jr jr_014_4192

    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    dec hl
    ret


Call_014_41bf:
Jump_014_41bf:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_014_41c3:
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
    jr nz, jr_014_41c3

    ret


Call_014_41e0:
Jump_014_41e0:
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


Call_014_41fa:
jr_014_41fa:
    ld a, [$cca8]
    and $07
    jr nz, jr_014_41fa

jr_014_4201:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_014_4201

    ret


Call_014_420a:
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_014_420e:
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
    jr z, jr_014_4223

    dec [hl]
    xor a
    sub $01
    ret


jr_014_4223:
    inc l

jr_014_4224:
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
    jr nz, jr_014_4239

    ldh [$ff8c], a
    ld l, b
    ld [hl], $01
    xor a
    ret


jr_014_4239:
    cp $ff
    jr nz, jr_014_4249

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_014_4224

jr_014_4249:
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


    ld c, l
    ld b, $10
    call Call_000_01b0
    call Call_000_015c
    ret


    ld c, l
    ld b, $10
    jp Jump_000_01b3


    ld c, l
    jp Jump_000_015f


    ld a, $01
    ld [$d77e], a
    ld a, $0f
    call Call_000_01cb
    ret


    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


Call_014_4281:
    ld a, [hl]
    ld [hl], $40
    jp Jump_000_01a7


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_014_428f:
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
    jr nz, jr_014_428f

    ret


Call_014_42a4:
    call Call_014_420e
    jr z, jr_014_42b7

    jr c, jr_014_42b5

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_014_42b9

jr_014_42b5:
    or a
    ret


jr_014_42b7:
    scf
    ret


Call_014_42b9:
    jp hl


    inc d
    inc e
    inc bc
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
    ld b, b
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
    dec sp
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc
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
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc

Jump_014_431c:
    inc bc
    inc bc
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    dec sp
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    ld b, b
    inc bc
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec [hl]
    inc a
    inc bc
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    ccf
    inc bc
    inc bc
    ld b, b
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
    ld b, b
    inc bc
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
    inc a
    inc bc
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    ccf
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
    ld b, b
    dec sp
    dec [hl]
    inc bc
    inc bc
    ld b, b
    inc bc
    dec sp
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
    dec sp
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc
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
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec sp
    dec sp
    inc bc
    ld b, b
    inc bc
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    inc bc
    dec [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    dec sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec [hl]
    inc a
    inc bc
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
    ld b, b
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
    ld b, b
    inc bc
    inc bc
    ccf
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    inc bc
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
    ld b, b
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
    dec sp
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
    inc bc
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
    ld d, d
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
    ld e, l
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
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld b, b
    ccf
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    ld b, b
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    dec sp
    inc bc
    ld b, $ef
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_014_450f

    jr z, @+$3a

    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld b, $06
    ld a, [de]
    ld e, $2c
    inc [hl]
    ld d, h
    ld l, h
    ld l, b
    ld e, b
    ld [hl], b
    ld [hl], b
    nop
    nop

jr_014_450f:
    ld b, e
    ld b, e
    xor l
    rst $28
    or $ba
    jp c, $bca6

    call nz, $ceb6
    ld c, l
    ld [hl], e
    ld a, $3e
    db $10
    db $10
    jr z, jr_014_455b

    ld a, h
    ld l, h
    cp d
    add $7c
    ld l, h
    jr z, jr_014_4563

    db $10
    stop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, a
    ld a, [hl]
    sbc a
    ldh [rP1], a
    nop
    nop
    nop
    jr nc, jr_014_4575

    jr z, jr_014_457f

    inc d
    inc e
    ld c, $0a
    rlca
    dec b
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_455b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_4563:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_4575:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_457f:
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
    cp $00
    db $fc
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

jr_014_45a9:
    rst $38
    nop
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
    cp $00
    ld hl, sp+$01
    di
    ld b, $06
    call z, Call_000_301c
    di
    ld [bc], a
    adc $08
    sbc b
    jr nc, jr_014_45f7

    ld h, c
    pop hl
    add e
    adc c
    dec bc
    jr jr_014_45e7

    jr c, jr_014_4648

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

jr_014_45e7:
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld sp, hl
    inc bc
    and $0e
    ret c

jr_014_45f7:
    jr jr_014_45a9

    ld [hl], b
    nop
    ld b, h
    ld [bc], a
    ld b, h
    ld [bc], a
    ld [hl], c
    pop bc
    jp $8b83


    rlca
    ld a, [hl+]
    ld h, $28
    ld h, l
    and c
    ld h, d
    add [hl]
    ld c, h
    sbc h
    jr nc, jr_014_4643

    halt
    ld h, $68
    ld [$3110], sp
    ld h, c
    pop hl
    add e
    adc c
    dec bc
    jr jr_014_4637

    jr c, @+$7b

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh [c], a
    rst $20
    jp nc, $90cf

    xor b
    ld b, b
    jr nz, @+$01

    rst $38
    ldh a, [$fff0]
    ld c, $0f
    cp $ff

jr_014_4637:
    ldh a, [$fff0]
    nop
    nop
    ld [bc], a
    dec c
    nop
    ldh a, [$ff80]
    add b
    ld d, $68

jr_014_4643:
    sub [hl]
    add sp, -$80
    add b
    nop

jr_014_4648:
    nop
    ld a, b
    nop
    nop
    add b
    ld a, [hl-]
    ld b, h
    ld d, h
    ld [bc], a
    ld d, b
    ld bc, $0653
    ld b, [hl]
    ld [$3058], sp
    ld [hl], b
    nop
    ld b, h
    ld [bc], a
    ld b, h
    ld [bc], a
    ld sp, $c341
    add e
    adc e
    rlca
    ld a, [hl+]
    ld h, $28
    ld h, l
    and c
    ld h, d
    add [hl]
    ld c, h
    sbc h
    jr nc, jr_014_4670

jr_014_4670:
    nop
    ld l, b
    rla
    ld l, b
    rla
    ld l, b
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld b, b
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
    cp $ff
    cp $ff
    cp $ff
    ld bc, $00fe
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
    ldh [$ff90], a
    add sp, -$6b
    add sp, $76
    adc b
    ld b, h
    inc bc
    ld [$0400], sp
    inc bc
    db $10
    ld [$0722], sp
    ld [de], a
    rrca
    db $10
    jr z, jr_014_46fe

    jr nz, jr_014_46ca

    rrca
    nop
    ldh a, [$ff0e]
    rrca
    cp $ff
    ldh a, [$fff0]
    nop

jr_014_46ca:
    nop
    ld [bc], a
    dec c
    nop
    ldh a, [rP1]
    add b
    ld d, $68
    sub [hl]
    add sp, -$80
    add b
    nop
    nop
    ld a, b
    nop
    nop
    add b
    ld a, [hl-]
    ld b, h
    rst $38
    nop
    nop
    nop
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld b, b
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    cp $ff
    cp $ff
    cp $ff
    ld bc, $00fe

jr_014_46fe:
    nop
    ld c, $00
    ld [bc], a
    nop
    ldh [rP1], a
    jr jr_014_4707

jr_014_4707:
    add h
    ldh [$ff90], a
    add sp, -$6c
    add sp, $76
    adc b
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
    rra
    nop
    ldh [rP1], a
    ld [hl], e
    db $fc
    ld a, a
    rst $38
    ld h, a
    rra
    ld bc, $fc00
    nop
    inc bc
    nop
    ld h, b
    inc e
    ld [bc], a
    ld bc, $0007
    sbc b
    ldh [$fff9], a
    cp $9f
    ld a, a
    ld bc, $f807
    nop
    rlca
    nop
    ld [hl], b
    ldh a, [rIE]
    nop
    ld a, a
    nop

jr_014_4743:
    adc a
    nop
    inc sp
    ret nz

    db $ed
    ldh a, [rSB]
    nop
    ret nz

    inc bc
    add hl, sp
    nop
    inc e
    nop
    inc bc
    nop
    ld h, b
    inc e
    ld [bc], a
    ld bc, $001c
    inc bc
    nop
    ld h, b
    inc e
    ld [bc], a
    ld bc, $0f0f
    add b
    ld [hl], b
    nop
    rrca
    ld [hl], b
    ldh a, [rIF]
    rrca
    add b
    ld [hl], b
    nop
    rrca
    ld [hl], b
    ldh a, [$ffc0]

jr_014_4770:
    ret nz

    ld a, [hl-]
    inc a
    nop
    ret nz

    jr jr_014_4797

    ret nz

    ret nz

    ld a, [hl-]
    inc a
    nop
    ret nz

    jr jr_014_479f

    rrca
    rrca
    jr nc, jr_014_4743

    db $e3
    db $fc
    ld a, $ff
    ld c, a
    ccf
    nop
    nop
    add b
    nop
    ld b, b
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rra
    rra
    ld h, a
    add a

jr_014_4797:
    set 6, e
    inc bc
    inc bc
    rlca
    rlca
    dec sp
    inc bc

jr_014_479f:
    dec b
    rrca
    ld [hl], b
    nop
    adc a
    nop
    ld b, b
    jr nc, jr_014_47ad

    rrca
    ld [hl], b
    nop
    adc a
    nop

jr_014_47ad:
    ld b, b
    jr nc, jr_014_4770

    ret nz

    ld a, [hl-]
    inc a
    ret nz

    nop
    jr c, jr_014_47b7

jr_014_47b7:
    ret nz

    ret nz

    ld a, [hl-]
    inc a
    ret nz

    nop
    jr c, jr_014_47bf

jr_014_47bf:
    inc d
    dec c
    ld [de], a
    inc de
    inc d
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1912
    ld a, [de]
    dec de
    inc e
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
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [de], a
    add hl, de
    ld a, [de]
    dec de
    dec e
    ld e, $1f
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
    ld b, $07
    ld [de], a
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0a], sp
    inc c
    ld [de], a
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
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
    db $10
    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $17
    jr jr_014_485b

    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    dec h
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_014_485b:
    ld d, $17
    jr jr_014_486f

    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    dec h
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_014_486f:
    ld d, $17
    jr jr_014_4883

    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    dec h
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_014_4883:
    ld d, $17
    jr jr_014_4897

    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    dec h
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_014_4897:
    ld d, $17
    jr jr_014_48ab

    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, @+$23

    ld [hl+], a
    dec h
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_014_48ab:
    ld d, $17
    jr jr_014_48bf

    ld de, $120c
    add hl, de
    ld a, [de]
    dec de
    jr nz, jr_014_48d8

    ld [hl+], a
    dec h
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_014_48bf:
    ld d, $17
    jr jr_014_48d3

    ld de, $4a0c
    ret


    ld c, b
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

jr_014_48d3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_48d8:
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
    nop
    nop
    nop
    nop
    adc b
    nop
    ld [hl+], a
    nop
    adc b
    nop
    ld [hl+], a
    nop
    adc b
    nop
    ld [hl+], a
    nop
    adc b
    nop
    ld [hl+], a
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld [hl], a
    nop
    db $dd
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
    ld [hl], a
    adc b
    db $dd
    ld [hl+], a
    ld [hl], a
    adc b
    db $dd
    ld [hl+], a
    ld [hl], a
    adc b
    db $dd
    ld [hl+], a
    ld [hl], a
    adc b
    db $dd
    ld [hl+], a
    adc b
    ld [hl], a
    ld [hl+], a
    db $dd
    adc b
    ld [hl], a
    ld [hl+], a
    db $dd
    adc b
    ld [hl], a
    ld [hl+], a
    db $dd
    adc b
    ld [hl], a
    ld [hl+], a
    db $dd
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
    adc b
    rst $38
    ld [hl+], a
    rst $38
    adc b
    rst $38
    ld [hl+], a
    rst $38
    adc b
    rst $38
    ld [hl+], a
    rst $38
    adc b
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], a
    rst $38
    db $dd
    rst $38
    ld [hl], a
    rst $38
    db $dd
    rst $38
    ld [hl], a
    rst $38
    db $dd
    rst $38
    ld [hl], a
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_496e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $20
    ldh [$ffd8], a
    rst $00
    ld hl, sp-$08
    db $f4
    di
    db $eb
    rst $20
    db $eb
    rst $20
    dec bc
    rlca
    db $eb
    rlca
    add hl, bc
    rst $20
    inc c
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ld a, [$faf9]
    ld sp, hl
    db $f4
    di
    push af
    di
    and b
    sbc a
    ld b, a
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rla
    ldh [rOBP0], a
    ldh a, [$ffa7]
    ld hl, sp-$60
    rst $38
    and b
    ld hl, sp+$44
    di
    ld c, e
    rst $20
    adc e
    rst $20
    db $ed
    db $e3
    jp hl


    rst $20
    ld [$dbe7], a
    rst $00
    reti


    rst $00
    ret nc

    rst $08
    ret nc

    rst $08
    ret nc

    rst $08
    db $fd
    rst $38
    ld a, [$e4ff]
    rst $38
    jr @+$01

    ldh [rIE], a
    inc b
    ld hl, sp+$11
    ldh [rNR52], a
    pop bc
    dec bc
    rst $20
    add hl, bc
    rst $20
    inc c
    db $e3
    rla
    ldh [$ff08], a
    ldh a, [$ff27]
    jr jr_014_496e

    rlca
    ld h, h
    add e
    ret nc

    rst $08
    ret nc

    rst $08
    ret nc

    rst $08
    ret nc

    rst $08
    ret nc

    rst $08
    pop de
    adc $d0
    adc $98
    add [hl]
    ld c, b
    add a
    db $10
    adc a
    and b
    rra
    jr nz, @+$21

    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld [de], a
    pop hl
    ld [$05f1], sp

jr_014_4a0e:
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    ld bc, $01fe
    cp $ff
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, b
    ld b, $c8
    ld h, $a8
    ld b, [hl]
    ld c, h
    and d
    or h
    ld [hl], d
    ld h, h
    ldh a, [c]
    ld d, [hl]
    ld [hl], b
    ld [hl+], a
    ld a, c
    nop
    ld a, a
    nop
    ld a, a
    ld b, h
    dec sp
    ld [bc], a
    add hl, sp
    ld bc, $003c
    inc a
    nop
    ld a, $06
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [$f0f3], sp
    rlca
    nop
    rlca
    ld bc, $030f
    rst $38
    add d
    cp c
    adc c
    or h
    push de
    ret z

    and $e0
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $280e
    rla
    jr nz, jr_014_4a0e

    sub b
    rrca
    ld d, b
    rrca
    xor b
    add a
    call nz, $e2c3
    pop hl
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff00]
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
    cp $fe
    db $fd
    db $fc
    ld a, [$f5f9]
    di
    ld sp, hl
    ld hl, sp-$10
    ldh a, [$ffce]
    ret nz

    or c
    adc [hl]
    ld b, b
    ccf
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $80fe
    ld a, a
    jr nz, jr_014_4ace

    ld c, b
    rlca
    ld [hl], b
    ld bc, $10ae
    ld d, e
    adc h
    inc l
    jp $e7eb


    db $d3
    rst $08
    ret nc

    rst $08
    xor h
    sbc a
    xor h
    sbc a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    rst $38
    nop
    rst $38
    nop

jr_014_4ace:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $20
    inc de
    ldh [$ff0c], a

jr_014_4adc:
    ldh a, [$ff03]
    db $fc
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
    rrca
    rrca
    rla
    rst $20
    db $eb
    di
    db $eb
    di
    add sp, -$10
    db $eb
    ldh a, [$ffc8]
    di
    jr jr_014_4adc

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
    adc a
    rrca
    di
    inc bc
    dec a
    pop bc
    db $f4
    inc bc
    ld [$f007], sp
    rrca
    nop
    rst $38
    nop
    rrca
    db $10
    rst $20
    add sp, -$0d
    add sp, -$0d
    ld e, $e0
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]

jr_014_4b22:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    rst $18
    rra
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    add sp, -$0d
    ret z

    di
    jr jr_014_4b22

    db $f4
    inc bc
    ld [$f207], sp
    inc c
    ld [$13f0], sp
    ldh [rIF], a
    ldh a, [$ff1f]
    ldh [$ff1f], a
    ldh [$ff3f], a
    ret nz

    rst $38
    nop
    rra
    nop
    rst $00
    nop
    di
    nop
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $c027
    ld c, h
    add e
    ld e, b
    add a
    adc b
    rla
    and b
    rra
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld sp, hl
    nop
    ld a, h
    add b
    ld a, $c0
    ld e, $e0
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$fffd]
    ld bc, $01fd
    db $fd
    ld bc, $017d
    ld a, l
    ld bc, $017d
    dec a
    ld bc, $003c
    add b
    ld a, a
    add b
    ld a, a
    db $10
    rst $28
    ld [$07e7], sp
    ldh a, [rP1]
    ldh a, [$ffc0]
    ld hl, sp+$67
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$ff1f]
    ldh [$ff2e], a
    ret nz

    sbc $00
    ld e, $00
    ld a, $00
    adc $00
    dec a
    nop
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld bc, $0239
    ld [hl], $07
    inc sp
    rlca
    dec [hl]
    rlca
    ld h, d
    rrca
    ld a, a
    ld a, a
    cp a
    ccf
    cp a
    ccf
    ccf
    cp a
    cp a
    ccf
    ccf
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    jp Jump_014_413c


    ld a, $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rrca
    nop
    rst $38
    ld bc, $bafe
    nop
    or $00
    cp $00
    db $fc
    nop
    db $fd
    nop
    ld a, [$f100]
    ld bc, $03e3
    ld h, b
    ld c, $48
    ld d, $d5
    add hl, bc
    or e
    inc bc
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    ld a, $03
    db $fc
    ld b, $f8
    add hl, de
    ldh [rBGP], a
    add b
    ld a, [hl-]
    inc b
    push hl
    jr jr_014_4c32

    pop hl
    rst $08
    rrca
    add a
    rlca
    add hl, sp
    ld bc, $3846
    ld bc, $807e
    ld a, a
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
    ccf

jr_014_4c32:
    ccf
    ld e, a
    sbc a
    cpl
    rst $08
    rla
    rst $20
    db $e4
    inc bc
    jr jr_014_4c44

    ldh [$ff1f], a
    nop
    rst $38
    nop
    rst $38
    nop

jr_014_4c44:
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
    rst $28
    ld [$04e7], sp
    db $e3
    dec bc
    di
    dec bc
    di
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    ld a, a
    nop
    ld a, a
    ld c, a
    jr nc, jr_014_4c70

jr_014_4c70:
    jr nz, jr_014_4c79

    cpl
    rlca
    scf
    inc bc
    ccf
    rlca
    add hl, sp

jr_014_4c79:
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    nop
    inc bc
    ret nc

    rst $00
    ret nc

    rst $00
    pop hl
    rst $28
    db $e3
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    rrca
    ldh a, [rP1]
    ldh [rTIMA], a
    pop af
    dec b
    pop af
    jp Jump_014_67fb


    ei
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    ld [bc], a
    nop
    ldh a, [c]
    ld hl, sp-$1a
    ldh a, [$ffde]
    ldh [$ff8e], a
    ret nz

    ld c, b
    add a
    db $10
    adc a
    and b
    rra
    jr nz, jr_014_4cd0

    ld b, b
    ccf
    ld b, b
    ccf
    rrca
    ld [hl], b
    db $10
    ld h, b
    ld [de], a
    pop hl
    ld [$05f1], sp
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    ld sp, hl
    ld b, $01
    ld [bc], a
    daa
    ret nz

    ld c, h
    add e
    ld e, b
    add a
    adc b

jr_014_4cd0:
    rla
    and b
    rra

jr_014_4cd3:
    nop
    ccf
    ld c, a
    jr nc, jr_014_4d18

    jr nz, jr_014_4cd3

    nop
    ld a, h
    add b
    ld a, $c0
    ld e, $e0
    rra
    ldh [rIF], a
    ldh a, [rIE]
    nop
    rlca
    nop
    ld c, b
    add [hl]
    db $10
    adc l
    and c
    dec de
    inc hl
    rla
    ld b, a
    scf
    ld b, a
    cpl
    rrca
    ld l, a
    rrca
    ld l, a
    ld [de], a
    ld bc, $e1c8
    push hl
    ldh a, [$fff4]
    ldh a, [$fffa]
    db $fc
    ld a, [$edfc]
    xor $c5
    sub $24
    ret nz

    ld c, c
    add e
    ld d, e
    add a
    add a
    rla
    xor a
    rra
    rrca
    ccf
    ld e, e
    dec sp
    ld d, c

jr_014_4d18:
    dec [hl]
    add hl, sp
    nop
    sbc h
    ret nz

    adc $e0
    and $f0
    rst $30
    ldh a, [$fff3]
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp+$0f
    ld l, a
    rrca
    ld l, a
    ld c, a
    cpl
    rlca
    cpl
    rlca
    cpl
    rlca
    scf
    inc bc
    ccf
    rlca
    add hl, sp
    call nc, $d4d7
    rst $10
    call nz, $d4d7
    rst $00
    ret nc

    rst $00
    add sp, -$11
    pop af
    rst $38
    db $e3
    rst $38
    sub l
    ld [hl], l
    sub l
    ld [hl], l
    ld de, $15f5
    pop af
    dec b
    pop af
    dec bc
    ei
    rst $00
    rst $38
    ld h, a
    ei
    ei
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$0e
    ld hl, sp-$0e
    ld hl, sp-$1a
    ldh a, [$ffde]
    ldh [$ff8e], a
    ret nz

    inc d
    inc c
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $06
    rlca
    rlca
    ld b, $06
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0708], sp
    rlca
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    add hl, bc
    ld [$0708], sp
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    nop
    nop
    add hl, bc
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    ld a, [bc]
    dec bc
    ld [hl+], a
    inc hl
    nop
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0c09], sp
    dec c
    ld c, $24
    dec h
    ld h, $09
    ld [$0607], sp
    dec b
    inc b
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0f09], sp
    db $10
    ld de, $2827
    add hl, hl
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    ld [de], a
    inc de
    inc d
    ld a, [hl+]
    dec hl
    inc l
    nop
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$1509], sp
    ld d, $17
    jr @+$2f

    ld l, $2f
    jr nc, jr_014_4e23

    ld [$0607], sp
    dec b
    inc b
    inc b
    dec b
    ld b, $07

jr_014_4e23:
    ld [$0009], sp
    add hl, de
    ld a, [de]
    dec de
    ld sp, $3332
    nop
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$1c09], sp
    dec e
    ld e, $34
    dec [hl]
    ld [hl], $09
    ld [$0607], sp
    dec b
    inc b
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    rra
    jr nz, @+$23

    scf
    jr c, jr_014_4e8d

    nop
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc b
    ld [bc], a
    inc de
    inc d
    ld a, [hl+]
    dec hl
    rla
    jr jr_014_4e91

    ld l, $04
    ld [bc], a
    inc de
    inc d
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc b
    ld [bc], a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc b
    ld [bc], a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, b
    add a
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_4e8d:
    nop
    nop
    nop
    nop

jr_014_4e91:
    nop
    nop
    nop
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
    nop
    jr nz, jr_014_4ec0

    ld d, $0f
    dec bc
    rlca
    dec b
    inc bc
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp-$3f
    cp $f0
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $01e1
    pop af

jr_014_4ec0:
    ld bc, $01f8
    ld sp, hl
    nop
    db $fd
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, $c0
    sbc a
    ldh [$ff9f], a
    ldh [$ffdf], a
    ldh [rVBK], a
    ldh a, [$ffaf]
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    add [hl]
    nop
    jp nz, $c104

    ld b, $e5
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    dec bc
    rlca
    rla
    rrca
    cpl
    rra
    ld [bc], a
    ld bc, $0001
    pop hl
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01

jr_014_4f09:
    ld a, h
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, $c0
    dec e
    ldh [$ff9d], a
    ldh [$ff9b], a
    ldh [rOBP1], a
    ldh a, [c]
    rst $28
    jr nc, jr_014_4f09

    jr nc, @+$01

    db $10
    rst $28
    db $10
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    add b
    db $e4
    rlca
    db $f4
    rlca
    push af
    ld b, $f5
    ld b, $fb
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    jp nz, $c200

    nop
    add $00
    jp z, $d204

    inc c
    jp z, Jump_014_431c

    ccf
    db $fc
    inc bc
    ld bc, $0500
    inc bc
    rla
    rrca
    ld l, $1f
    ld e, a
    ccf
    cp a
    ld a, a
    pop af
    cp $e0
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp+$07
    ld a, a
    add b
    rra

jr_014_4f7c:
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$13
    db $ec
    dec hl
    call nz, $c215
    add hl, bc
    ldh a, [c]
    ld b, $f3
    jp nz, $e637

jr_014_4f8e:
    rlca
    xor $07
    add $0e
    call c, $890c
    inc e
    ld e, a
    add b
    sbc a

jr_014_4f9a:
    ld b, b
    xor a
    ld b, b
    xor a
    ld b, b
    rst $10
    jr nz, jr_014_4ff9

    jr nz, @+$2d

    db $10
    dec bc
    db $10
    rst $38

jr_014_4fa8:
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
    rst $28
    nop
    rst $00
    db $10
    ld a, [$d61c]
    jr c, jr_014_4fa8

    jr nc, jr_014_4f9a

    jr nz, jr_014_4f7c

    ld b, b
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld bc, $0000
    ld bc, $0103
    ld bc, $0303
    inc bc
    ld b, $03
    ld bc, $0206
    inc b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    ld [hl], e
    adc a
    ld sp, hl
    rlca
    add e

jr_014_4fe4:
    ld bc, $070b
    jp $c7fc


    ld hl, sp-$72
    ldh a, [$ff9d]
    ldh [$ff82], a
    ld sp, hl
    ld [bc], a
    pop af
    dec d
    ldh a, [rOCPS]
    db $e4
    xor e
    db $10

jr_014_4ff9:
    ld d, h
    jr c, jr_014_4f8e

    ld a, h
    inc sp
    cp $22
    rst $38
    ld h, [hl]
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    dec sp
    add hl, de
    ld de, $713b
    dec sp
    inc sp
    ld a, c
    ldh a, [c]
    ld a, c
    ld [hl], e
    ld hl, sp-$0f
    ld hl, sp-$10
    ld hl, sp-$6b
    ld [$8804], sp
    ld a, [bc]
    add h
    adc e
    inc b
    adc l
    ld [bc], a
    add l
    ld a, [bc]
    ld b, $09
    ld b, $09
    rla
    jr nz, jr_014_5065

    ld b, b
    ld a, e
    add b
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    ld hl, sp+$00
    pop af
    nop
    ldh a, [$ff03]
    ld [$f407], a
    rrca
    jp hl


    ld e, $c7
    jr c, jr_014_4fe4

    ld h, b
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
    db $fc
    db $fc
    ei
    ld hl, sp-$0c
    di

jr_014_5065:
    inc b
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    add a
    inc bc
    ld e, b
    add b
    and c
    ld c, [hl]
    inc b
    pop af
    ei
    ei
    cp $fe
    db $fd
    db $fc
    db $fc

jr_014_5080:
    db $fd
    ei
    ld sp, hl
    ld sp, hl
    ld a, e
    ld [bc], a
    inc bc
    cpl
    sbc a
    ld e, a
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    cp $ff
    sbc $ff
    inc a
    rst $18
    ld e, h
    sbc a
    ld b, b
    and $c2
    jp nc, $c282

    db $10
    jp nc, $8242

    ret nz

    ld [de], a
    nop
    jp nc, $c082

    ld [$82c7], sp
    ld b, c
    sub b
    ld b, b
    add c
    ld d, d
    add e
    ld d, e
    add c
    ld d, c
    add c
    ld d, c
    sub d
    ld b, b
    ldh a, [$fff8]

jr_014_50b9:
    db $fc
    ld hl, sp-$68
    ld a, h
    ld l, $1c
    ld c, b
    ld b, a
    inc d
    ld b, e
    ld d, c
    jr jr_014_5080

    cp h
    dec de
    inc c
    dec bc
    inc e
    dec hl
    inc e
    ld h, [hl]
    jr jr_014_50b9

    db $10
    pop hl
    inc bc
    add e
    dec bc
    dec hl
    inc bc
    ld a, [hl]
    add b
    ld b, [hl]
    add b
    ld d, $00
    add [hl]
    db $10
    ld b, $90
    ld b, $90
    ld b, $90
    ld b, $10
    ld a, [hl]
    nop
    cp [hl]
    nop
    dec a
    add c
    db $dd
    add c
    sbc c
    pop bc
    sub d
    ret nz

    ld b, h

jr_014_50f4:
    add d
    sub d
    ld c, h
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc b
    ld [$0804], sp
    inc c
    ld [$080c], sp
    inc sp
    ld h, a
    ld e, c
    inc sp
    dec [hl]
    dec de
    add hl, bc
    dec e
    ld e, $0d
    dec b
    ld c, $07

jr_014_5114:
    ld c, $0a
    rlca
    jr nz, @-$3b

    and h
    ld hl, sp-$2f
    cp $e8
    rst $38
    db $f4
    rst $38
    ld a, [$7dff]
    rst $38
    db $fd
    ld a, a
    sbc c
    rra
    dec bc
    rra
    ld c, $1f
    ld b, h
    adc a
    jr nc, jr_014_50f4

    jr jr_014_5114

    inc e
    ldh [rNR32], a
    ldh [rNR10], a
    jp nz, $c224

    ld l, $c0
    ld [hl], l
    add b
    ld a, c
    add b
    ld sp, hl
    nop
    ld a, b
    nop
    jr jr_014_5147

jr_014_5147:
    and e
    ld c, b
    bit 4, b
    ld d, c
    db $e4
    dec h
    ldh a, [$ff28]
    ldh a, [c]
    sub d
    ld a, b
    adc c
    ld a, h
    ld b, l
    jr c, jr_014_51d4

    ld a, [hl]
    ld sp, hl
    inc a
    adc [hl]
    ld [hl], c
    dec b
    ei
    rra
    rst $38
    cp [hl]
    ld a, a
    ccf
    ld a, a
    dec sp
    ld [hl], a
    sub [hl]
    scf
    ld c, h
    sbc [hl]
    xor l
    ret nz

    pop bc
    cp $d8
    sbc a
    sbc h
    ld e, $1c
    cp [hl]
    db $fc
    cp $56
    nop
    add [hl]
    jr z, @-$58

    ld [$500e], sp
    ld e, [hl]
    db $10
    ld c, $30
    dec l
    ld [hl], b
    ld c, l
    jr nc, jr_014_51d0

    sbc h
    or h

jr_014_518a:
    jr jr_014_5114

    jr nc, jr_014_51e6

    jr nz, jr_014_51c0

    ld b, b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    inc c
    ld [$080c], sp
    inc c
    ld [$0806], sp
    ld [bc], a
    inc c
    ld c, $04
    ld b, $04
    ld b, $04
    inc bc
    rlca
    dec b
    inc bc
    nop
    inc bc
    ld a, [bc]
    ld bc, $0914
    add hl, hl
    inc e
    ld a, [de]
    inc a
    ld [hl], d
    inc a
    cp [hl]
    ld a, a
    ld a, [hl]
    cp a
    sbc $bf
    ld l, $9f
    ld e, h

jr_014_51c0:
    adc a
    jr z, jr_014_518a

    or h
    ld b, e
    ld a, e
    nop
    sbc h
    ldh [$ffb8], a
    ret nz

    cp b
    ret nz

    jr c, @-$3e

    ld [hl], c

jr_014_51d0:
    add b
    ld [hl], d
    add c
    push hl

jr_014_51d4:
    inc bc
    jp Jump_000_0007


    nop
    nop
    nop
    dec bc
    rlca
    ld e, a
    daa
    ld d, a
    rst $28
    rst $30
    rst $08
    xor a
    rst $18
    xor l

jr_014_51e6:
    sbc $25
    jr jr_014_51fa

    ld [$c0a7], sp
    add sp, -$0f

jr_014_51ef:
    ld a, [$fefc]
    rst $38
    cp $ff
    dec bc
    rlca
    ld e, h
    jr c, jr_014_5229

jr_014_51fa:
    rra
    sub a
    rrca
    inc l
    ret nz

    ld d, d
    ld h, c
    and l
    inc sp
    ld e, b
    sub e
    db $10
    ret c

    ld a, [hl-]
    inc e
    db $f4
    ld hl, sp-$18
    ldh a, [c]
    inc b
    nop
    ret nc

    ldh [$ffb1], a
    ret nz

    ld h, c
    add b
    nop
    nop
    ld c, e
    jr nc, jr_014_526b

    ld h, $64
    rrca
    ld e, d
    rlca
    ccf
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    nop
    nop

jr_014_5229:
    add b
    nop
    ld b, b
    add b
    jr nz, jr_014_51ef

    sub b
    jr nz, jr_014_527a

    sub b
    adc b
    ret nz

    db $e4
    ret nz

    inc bc
    inc b
    rlca
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $030c
    inc [hl]
    ld a, b
    ld l, b
    ld [hl], b
    add $61
    jr @-$77

    ld h, c
    ld e, $83
    ld a, h
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    nop
    pop af
    ld [bc], a
    ld l, $c1
    db $d3
    inc c
    ret z

    ld e, $bc
    ld e, $9c
    dec a
    pop bc
    inc a
    rrca
    rlca
    rlca
    rrca

jr_014_526b:
    sbc a
    rrca
    ld c, a
    rra
    ccf
    sbc a
    sbc [hl]
    cp a
    ld a, [hl]
    ccf
    ld a, $7f
    cpl
    rst $18
    ld a, a

jr_014_527a:
    sbc a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, [hl]
    cp h
    ld e, a
    cp a
    pop de
    ldh [$fffa], a
    db $fc
    db $fd
    cp $fe
    rst $38

jr_014_528f:
    cp $ff
    db $fc
    rst $38
    inc bc
    nop
    db $f4

jr_014_5296:
    ld hl, sp+$69
    adc d
    ld l, e
    dec bc
    xor b
    add hl, bc
    jp nz, $4208

    adc c
    ld h, c
    adc b
    add sp, $00
    ld l, b
    nop
    ld bc, $4500
    add b
    ret c

    push hl
    ld [hl-], a
    ld a, c
    add a
    nop
    ld l, c
    sbc [hl]
    call c, Call_014_5c3f
    ccf
    ld a, $01
    rst $08
    nop
    ld h, b
    add b
    ld sp, $38c0
    ret nz

    sbc b
    ld h, b
    call z, $ec30
    db $10
    ret nz

    ldh [rSVBK], a
    ldh [rNR10], a
    nop
    jr nz, jr_014_528f

    bit 4, a
    dec [hl]
    ld h, e
    ld c, e
    jr nc, jr_014_5301

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    cp $ff
    adc l
    ld a, [hl]
    ldh a, [c]
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    sub b
    jr nz, jr_014_5344

    jr nz, jr_014_5296

    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_5301:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_5344:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
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
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    nop
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
    dec d
    ld d, $17
    jr jr_014_53ba

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_014_53d3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1c
    inc e
    inc e

jr_014_53ba:
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    daa
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_014_53cc

jr_014_53cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_53d3:
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_014_5417

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
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    dec h
    db $fd
    ld d, e
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
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

jr_014_5417:
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, [$f501]
    inc bc
    di
    rlca
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld bc, $0ff0
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    nop
    add h
    jr jr_014_548f

    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    db $fd
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    add b
    cp a
    add b
    ld e, a
    ret nz

    sbc a
    ld b, b
    rra
    ld b, b
    rst $28
    rlca
    rst $20
    rrca
    rst $18
    rrca
    call $de1f
    rra
    sub c
    inc sp
    and b
    dec l
    jr z, jr_014_54e7

    ld a, a
    rst $38
    sbc b
    ld hl, sp+$40
    ldh a, [$ff90]
    ldh a, [$ff60]
    db $e3
    add b
    rst $20
    ld b, b
    xor $81
    db $dd
    ret c

    db $ed

jr_014_548f:
    nop
    ld [$1008], a
    inc h
    ld b, d
    jr jr_014_54bb

    nop
    sbc c
    nop
    dec l
    jp nz, Jump_000_1fda

    ld b, b
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    add b
    ccf
    add b
    ld l, b
    ld l, h
    ld h, [hl]
    ld [hl], h
    ld [hl], e
    halt
    jr nc, jr_014_5530

    jr c, @+$7e

    ld l, c
    inc a
    ld a, [de]
    add hl, hl

jr_014_54bb:
    and d
    add hl, bc
    ld b, e
    db $db
    ld b, e
    ld e, e
    inc bc
    ld e, e
    ld b, l
    dec hl
    add e
    ld l, h
    inc h
    di
    ld [hl], b
    ld hl, sp+$79
    rst $38
    rst $38
    rst $38
    sbc e
    db $db
    cp a
    sbc e
    sbc e
    sbc e
    ld [bc], a
    db $fd
    inc c
    inc e
    dec c
    pop bc
    db $e3
    db $e3
    nop
    nop
    ld e, a
    ld b, b
    ld b, b
    ld b, b
    ld d, a
    ld b, b
    add b
    or b

jr_014_54e7:
    dec de
    ld [hl], b
    or b
    ld hl, sp-$03
    ld hl, sp+$00
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [$ff03]
    ldh [rIF], a
    ld [$0417], sp
    inc de
    inc b
    inc bc
    db $e4
    inc bc
    add h
    inc bc
    inc b
    ld [hl], e
    nop
    di
    nop
    ei
    ld bc, $3afa
    ld hl, sp-$01
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
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    ld a, $00
    add c
    jp $ffff


    rst $38
    jp $dbe7


    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    pop af

jr_014_5530:
    db $fc
    db $fd
    ld hl, sp-$07
    db $fc
    ld sp, hl
    db $fc
    jp hl


    ld hl, sp-$10
    ld hl, sp-$30
    db $f4
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
    nop
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    ld bc, $01fc
    or d
    add hl, bc
    adc c
    dec [hl]
    dec b
    ld a, d
    dec e
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld hl, sp-$04
    db $fc
    cp $fc
    db $fd
    db $fd
    db $fd
    ei
    ei
    ei
    ei
    rst $30
    rst $30
    pop af
    di
    ld a, a
    cp a
    xor a
    ccf
    rra
    cpl
    inc hl
    adc a
    adc b
    rst $00
    jp $f0f0


    db $f4
    ld hl, sp-$05
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    db $fd
    jr c, jr_014_5614

    jr nz, jr_014_55b1

    nop
    inc bc
    add hl, sp
    ld b, e
    ldh [$ffd6], a
    call nz, $86c7
    rst $08
    rrca
    sbc a
    rra
    ccf
    rra
    ld e, e
    ld h, e
    ld l, c
    ld b, c
    ld l, e
    rst $38
    nop
    ld a, a
    nop

jr_014_55b1:
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    add b
    cp a
    add b
    cp a
    add b
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    ld bc, $0300
    ld d, b
    inc bc
    ld d, b
    rlca
    ld b, b
    ld [$0743], sp
    ld b, b
    nop
    ld b, a
    nop
    rra
    di
    dec sp
    db $fc
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    ccf
    ld c, a
    rst $08
    rla
    scf
    ret nc

    db $fc
    ret nz

    rst $28
    add $67
    inc bc
    xor a
    sub a
    adc a
    sub a
    rst $08
    rlca
    rst $18
    cpl
    sbc a
    ld a, d
    ei
    inc e
    inc a
    inc c
    call c, $e682
    pop hl
    ld sp, hl
    ld hl, sp-$02
    cp $ff
    rst $38
    rst $38
    ld h, b
    ld a, [de]
    db $e4
    jr @-$41

    ld b, c
    ld sp, hl

jr_014_5614:
    dec b
    ld a, [de]
    ld h, e
    db $10
    xor d
    inc d
    dec b
    add c
    set 0, b
    call $dd84
    inc c
    cp l
    inc c
    ld a, [hl]
    inc e
    ld a, [hl]
    ld a, $fe
    ld a, [hl]
    cp $fe
    rst $38
    add b
    ret nz

    add b
    ret nz

    sub l
    ret nz

    ld b, l
    ldh [rLYC], a
    ret nz

    dec h
    or b
    ld h, l
    ldh a, [$ff31]
    ld a, b
    nop
    nop
    nop
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    jr nz, jr_014_565b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_565b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc b
    dec b
    ld b, $02
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
    rlca
    ld [$0a09], sp
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $100f
    ld de, $1312
    ld bc, $0114
    ld bc, $1401
    ld bc, $0101
    inc d
    ld bc, $0101
    inc d
    ld bc, $0101
    inc d
    ld bc, $0101
    inc d
    ld bc, $0101
    inc d
    dec d
    ld d, $17
    jr jr_014_57ad

    ld a, [de]
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    ld [bc], a
    ld [bc], a

jr_014_57ad:
    ld [bc], a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_014_57d5

    ld [hl+], a
    inc hl
    inc e
    inc h
    inc h
    inc h
    inc e
    inc h
    inc h
    inc h
    inc e
    inc h
    inc h
    inc h
    inc e
    inc h
    inc h
    inc h
    inc e
    inc h
    inc h
    inc h
    inc e
    inc h
    inc h
    inc h
    inc e
    ld d, d
    db $d3
    ld d, a
    nop
    nop
    nop

jr_014_57d5:
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $fd
    db $fc
    ei
    ld hl, sp-$06
    ld sp, hl
    rst $38
    rst $38
    nop
    ldh a, [$ffc7]
    rst $08
    ld a, [de]
    inc a
    or c
    ld a, b
    add h
    inc bc
    ld a, b
    add a
    nop
    add a
    rst $38
    rst $38
    nop
    rrca
    jp $09f3


    dec b
    ldh a, [c]
    nop
    ld a, h
    add b
    ld a, $c0
    ccf
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $f4
    di
    db $f4
    di
    db $f4
    di
    or $f0
    db $f4
    ldh a, [$ffe8]
    ldh [$ffe0], a
    add sp, -$18
    db $ec
    ld a, b
    ld [hl], e
    ld [$8473], sp
    inc bc
    ld a, b
    add h
    ld bc, $8670
    ld h, $4f
    rst $08
    rst $18
    sub a
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    ccf
    nop
    sbc $00
    inc l
    ld b, c
    dec c
    ld h, c
    ccf
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    ccf
    ccf
    ld e, a
    sbc a
    xor a
    rst $08
    adc a
    xor a
    nop
    rst $38

jr_014_58c5:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e4
    db $ec
    ldh a, [$fff4]
    push af
    ldh a, [$fff8]
    ld sp, hl
    db $fd
    db $fc
    cp $fe
    rst $38
    rst $38
    cp $fe
    sub a
    or a
    sub a
    or a
    ld c, [hl]
    cp $00
    cp a
    nop
    rst $38
    inc b
    db $e3
    ld b, c
    ld a, $80
    nop
    add hl, bc
    ld h, e
    ld [$2a63], sp
    pop bc
    add hl, bc
    ret nz

    ld e, h
    add b
    sbc c
    ld bc, $0727
    dec bc
    inc de
    ld l, a
    cpl
    ld e, a
    ld e, a
    sbc a
    ld e, a
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    db $fd
    db $fc
    ld hl, sp-$05
    ldh a, [$fff7]
    ldh [$ffe8], a
    rst $00
    ret nz

    ret nc

    rst $08
    and b
    sbc a
    add b
    cp a
    ld de, $0fc0
    ldh [rP1], a
    add b
    ld h, d
    inc e
    rst $00
    jr c, jr_014_58c5

    ld a, b
    add a
    ld a, b
    ld c, $f0
    sub l
    add hl, sp
    add hl, sp
    ld a, l
    ld h, h
    or $66
    halt
    and d
    scf
    ld b, e
    rla
    add c
    rla
    ret nz

    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    inc h
    ld b, h
    dec bc
    ld [hl], b
    inc b
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    sbc a
    ld e, a
    add b
    cp a
    and b
    sbc a
    ret nc

    rst $08
    rst $20
    ldh [$fff8], a
    ld hl, sp-$01
    rst $38
    cp $fe
    db $fc
    db $fd
    rrca
    ldh a, [$ff8d]
    ld [hl], b
    or $00
    adc [hl]
    nop
    nop
    nop
    ld d, b
    rrca
    add hl, bc
    and [hl]
    add a
    ret nc

    ld b, b
    ld de, $0083
    or l
    inc b
    ld [hl], $06
    db $e3
    dec bc
    jp hl


    dec c
    call z, $9e1e
    ccf
    nop
    rst $38
    nop
    rst $38
    jp nz, $e93c

    ld de, $1965
    sbc l
    add c
    db $e3
    db $e3
    rlca
    rlca
    ld e, a
    sbc a
    cp a
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_014_59ca:
    nop
    rst $38
    nop
    rst $38

jr_014_59ce:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld bc, $fafc
    ld sp, hl
    db $f4
    di
    ld [$90e7], sp
    adc a
    pop hl
    db $e3
    sbc e
    add e
    ld b, l
    add hl, sp
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$38

jr_014_59f4:
    ldh [$ffc3], a

jr_014_59f6:
    di
    sub a
    rst $20
    jr nz, jr_014_59ca

    rst $18
    rra
    ccf
    ccf
    nop
    ld a, a
    ld a, a
    ld a, a
    ld c, [hl]

jr_014_5a04:
    ld a, $a0
    sbc l
    ret nc

    jp z, $e005

    di
    ldh a, [$ffe6]
    pop hl
    inc c

jr_014_5a10:
    db $e3
    ret c

    rst $00
    or a
    rlca
    ld a, e
    inc bc
    ei
    inc bc
    sbc b
    ld h, e
    dec de
    db $e3
    dec de
    db $e3
    jr jr_014_5a04

    scf
    rst $00
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$04
    db $e3
    db $10
    rst $08
    jr nz, jr_014_59ce

    ld b, b
    ccf
    nop
    nop
    jr nz, jr_014_5a54

    ld h, b
    rra
    ld hl, sp+$07
    inc a
    jp $ff00


    nop
    rst $38
    ld bc, $00fe
    nop
    ld c, $f0
    ld c, $f0
    inc e
    pop hl
    inc e
    pop hl
    jr c, jr_014_5a10

    ld [hl], b
    add e
    ldh a, [rTAC]
    nop
    rlca
    nop

jr_014_5a54:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $01
    db $fc
    ld bc, $00fc
    db $fc
    jr nc, jr_014_59f4

    jr nc, jr_014_59f6

    ld h, c
    ld e, $63
    inc e
    ldh [$ff1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    nop
    jr nc, @-$37

    ld [hl], b
    add a
    add b
    rlca
    ldh [$ff03], a
    inc a
    pop bc
    ld c, $f0
    rlca
    ld hl, sp+$00
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
    ld a, a
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
    db $fc
    ld bc, $08f0

jr_014_5aa2:
    and $00
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
    ccf
    nop
    rst $18
    ld b, b
    cpl
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
    ld hl, sp+$01
    or $04
    ret z

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
    rra
    jr nz, jr_014_5aa2

    jp nz, Jump_000_21c1

    sbc b
    sbc b
    add h
    inc b
    ld h, b
    ld h, b
    db $10
    ld d, d
    nop
    ld h, [hl]
    nop
    or a
    add b
    rlca
    rlca
    jr z, jr_014_5afa

    ld b, e
    dec hl
    nop
    ld a, [bc]
    ld hl, $4b18
    jr nc, jr_014_5af2

    ld [hl], c
    inc b

jr_014_5af2:
    ld h, e
    ldh a, [$fff0]
    rlca
    rst $08
    ld a, [de]
    inc a
    or c

jr_014_5afa:
    ld a, b
    add h
    inc bc
    ld a, b
    add a
    nop
    add a
    ld a, b
    ld [hl], e
    rrca
    rrca
    ret nz

    di
    add hl, bc
    dec b
    ldh a, [c]
    nop
    ld a, h
    add b
    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    ret nz

    pop bc
    add hl, hl
    sub b
    add h
    xor b
    add b
    and b
    ld [$24b0], sp
    jr jr_014_5b30

    ld c, $00
    ld b, $87
    rlca
    ld [$3333], sp
    ld b, e
    ld b, c
    dec c
    inc c
    ld de, $0195
    ld h, l

jr_014_5b30:
    ld bc, $03eb
    cp a
    add b
    adc $c1
    ret c

    rst $00
    db $ec
    db $e3
    db $ec
    db $e3
    or $f1
    rst $30
    ldh a, [$fffb]
    ld hl, sp-$2c
    inc bc
    inc [hl]
    jp $e016


    inc d
    ldh [$ff08], a
    ldh [rP1], a
    add sp, $28

jr_014_5b50:
    call z, Call_000_0cc4
    ld [$8473], sp
    inc bc
    ld a, b
    add h
    ld bc, $8670
    ld h, $4f
    rst $08
    rst $18
    sub a
    sub a
    or a
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    ccf
    nop
    sbc $00
    inc l
    ld b, c
    dec c

jr_014_5b70:
    ld h, c
    add hl, bc
    ld h, e
    or c
    ld c, $a0
    rra
    and b
    rra
    jr nz, jr_014_5b9a

    ld b, b
    sbc a
    and b
    rst $08

jr_014_5b7f:
    adc c
    and [hl]
    ld h, a
    jr nz, jr_014_5b7f

    inc bc
    rst $20
    rlca
    scf
    rst $00
    ld l, a
    adc a
    ld l, a
    adc a
    rst $18
    rra
    rst $18
    rra
    cp a
    ccf
    ld a, b
    ld [hl], e
    ld [$8473], sp
    inc bc
    ld a, b

jr_014_5b9a:
    add h
    inc bc
    ld [hl], b
    adc h
    jr nz, jr_014_5bf0

    jp $87cf


    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    cp a
    nop
    sbc $00
    inc l
    ld b, c
    dec c
    ld h, c
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    inc d
    dec d
    jr nc, jr_014_5b50

    sbc c
    push bc
    call z, $e6e2
    pop af
    di
    ld hl, sp-$07
    db $fd
    db $fc
    sub a
    or [hl]
    ld b, d
    db $fd
    nop
    cp a
    nop
    db $e3
    ld [hl+], a
    pop bc
    ld [de], a
    ld h, c
    jr nz, jr_014_5b7f

    ld bc, $88c0
    ld h, e
    ld a, [hl+]
    pop bc
    add hl, de
    ret nz

    ld e, h
    add b
    jr c, jr_014_5b70

    ld h, e
    rlca
    inc b

jr_014_5bf0:
    rra
    ld [de], a
    inc a
    ld c, e
    ld b, b
    add h
    ld d, b
    dec hl
    or e
    ld d, a
    ld h, a
    xor a
    rst $08
    ld e, a
    sbc a
    ccf
    ccf
    rst $38
    rst $38
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
    cp $fe
    db $fc
    db $fd
    db $e4
    db $ec
    ldh a, [$fff4]
    push af
    ldh a, [$fff8]
    ld sp, hl
    pop hl
    ldh [$ff9e], a
    add b
    ld sp, $c80e
    rst $00
    sub a
    or a
    sub a
    or [hl]
    ld b, b
    rst $38
    nop
    cp c
    inc b
    pop af
    add b
    ld l, a

Call_014_5c3f:
    ld hl, $801e
    nop
    add hl, bc
    ld h, e
    ret z

    inc hl
    ld a, [hl+]
    pop bc
    add hl, de
    ret nz

    ld e, h
    add b
    cp e
    inc bc
    ld h, e
    inc bc
    dec b
    add hl, de
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
    rst $38
    rst $38
    ld e, $c0
    and c
    ld h, c
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld h, c
    ld a, c
    db $eb
    di
    db $eb
    di
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    ld hl, sp-$06
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, [$fdf8]
    db $fc
    cp $fe
    rst $38
    rst $38
    inc h
    inc sp
    ret nc

    inc de
    call nc, $d413
    inc de
    ld h, $31
    ld a, [hl-]
    pop bc
    ld bc, $fe00
    cp $41
    add [hl]
    ld a, b
    add b
    ld h, d
    sbc h
    ld b, c
    cp [hl]
    ld bc, $01fe
    cp $03
    db $fc
    ld a, [hl]
    nop
    sbc d
    inc a
    inc a
    ld a, [hl]
    ld a, h
    cp $78
    ld a, [hl]
    ld h, c
    ld a, l
    inc bc
    ld a, e
    rla
    ld h, a
    ld b, a
    add a
    nop
    nop
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    jr nz, jr_014_5cec

    ld d, b
    rrca
    add hl, bc
    and [hl]
    add a
    ret nc

    rlca
    rlca
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    db $e3
    dec bc
    jp hl


    dec c
    call z, $9e1e
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_5cec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    dec d
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0404], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec bc
    inc c
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1110
    ld [de], a
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1501
    ld d, $17
    jr jr_014_5ddf

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1b1a
    inc e
    dec e
    ld e, $01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_014_5ddf:
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
    ld a, [bc]
    jr nz, jr_014_5e0d

    ld [hl+], a
    inc hl
    inc h
    ld a, [bc]
    ld a, [bc]
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
    dec h
    ld h, $27
    jr z, jr_014_5e2c

    ld a, [hl+]
    dec hl
    ld [bc], a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

jr_014_5e0d:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
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

jr_014_5e2c:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc l
    dec l
    ld [bc], a
    ld [bc], a
    ld l, $2f
    jr nc, jr_014_5eaa

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_014_5eba

    ld a, [hl-]
    dec sp
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld bc, $4948
    ld c, d
    ld bc, $0101
    ld b, h
    ld c, a
    ld d, b
    ld d, c
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld b, $07
    ld [HeaderLogo], sp
    dec bc
    inc a
    dec a
    ld c, $01
    ld b, h

jr_014_5eaa:
    ld b, l
    ld b, [hl]
    ld b, a
    inc de
    ld bc, $4c4b
    ld c, l
    ld c, [hl]
    ld bc, $0101
    ld b, h
    ld c, a
    ld d, b
    ld d, c

jr_014_5eba:
    ld bc, $be1d
    ld e, [hl]
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
    ld b, $07
    inc b
    rlca
    rlca
    dec de
    inc e
    ld a, $31
    db $fc
    db $e3
    ld hl, $1fff
    rst $38
    add b
    ld a, a
    sbc [hl]
    ld a, a
    ld hl, sp-$08
    add [hl]
    ld a, [hl]
    ccf
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp+$0b
    inc c
    dec bc
    inc c
    dec bc
    inc c
    db $10
    rra
    ld de, $131f
    rra
    inc de
    rra
    dec de
    rra
    cp l
    ld h, e
    cp l
    ld h, e
    ld hl, $1eff
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    ld h, d
    cp a
    push de
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    adc h
    rst $38
    halt
    adc a
    ld a, [$04e7]
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $0e
    cp $2a
    ccf
    ld a, [hl-]
    cpl
    ld a, $2f
    ld [hl], $2f
    ld l, $37
    ld e, $17
    rla
    ld a, [de]
    dec bc
    ld c, $bb
    adc $ea
    sub l
    rst $18
    or c
    adc $b1
    rst $18
    or c
    ld a, a
    add b
    rst $30
    jr @+$01

    nop
    ei
    rla
    ld a, c
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    pop af
    rra
    ld [bc], a
    rst $38
    jp nz, Jump_000_133f

    rst $38
    dec l
    di
    scf
    db $ed
    ld e, a
    db $ed
    ld l, l
    rst $18
    ld l, l
    rst $18
    xor d
    sbc $94
    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_014_5fa7

    ld hl, $463f
    ld a, a
    ld c, b
    ld a, a
    ld bc, $0001
    nop
    nop
    nop
    or b
    or b
    ret z

    ld hl, sp-$1c
    db $fc
    inc h
    db $fc
    dec e
    db $fd
    cp a
    ret nz

    ei
    rst $00
    ld a, a
    ld h, b
    rla
    jr jr_014_5fe3

jr_014_5fa7:
    ccf
    ld d, a
    ld l, a

jr_014_5faa:
    cp d
    rst $00
    ld a, l
    add e
    cp c
    ld h, a
    ldh a, [c]
    rst $08
    push hl
    rra
    sbc a
    ld a, a

jr_014_5fb6:
    ld a, c
    rst $38
    db $e3
    cp $0f
    db $fc
    rst $30
    ld hl, sp+$32
    cp $7c
    db $fc
    ldh [$ffe0], a
    jr nc, jr_014_5fb6

    add sp, $18
    db $f4
    inc c
    ld a, [$fe06]
    ld [bc], a
    add b
    rst $38
    add e
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    jr nc, jr_014_601b

    jr jr_014_5ffd

    db $fd
    db $fd
    ld c, $ff
    rra

jr_014_5fe3:
    cp $65
    cp $c7
    db $fc

jr_014_5fe8:
    rlca
    db $fc
    rrca
    db $fc
    rrca
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    jr nc, @-$0f

    jr nc, jr_014_5fe8

    jr nc, jr_014_5faa

    ld [hl], b
    cpl

jr_014_5ffd:
    ldh a, [rIE]
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
    db $fd
    inc bc
    rst $38
    ld bc, $619e
    cpl
    ldh a, [$ff27]
    ld hl, sp+$27
    ld hl, sp+$33

jr_014_601b:
    db $fc
    inc sp
    rst $38
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

    ret nz

    ld b, b
    ldh [$ffe0], a
    db $10
    ldh a, [$ff0e]
    rrca
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add l
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    cpl
    ldh a, [$ff6f]
    ldh a, [rPCM34]
    ld hl, sp-$51
    cp a
    jr nz, jr_014_6097

    jr nz, jr_014_6099

    jr nz, @+$41

    jr nc, @+$41

    rst $38
    nop
    cp $01
    db $fd
    inc bc
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    inc a
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $16
    sub c
    ld h, b
    nop
    nop
    nop
    nop
    ccf
    ccf

jr_014_6097:
    ld b, b
    ld a, a

jr_014_6099:
    adc a
    ldh a, [$ffa3]
    call c, $86f9
    db $fc
    and e
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or b
    ld a, a
    ret c

    ccf
    di
    inc c
    rst $38

jr_014_60b0:
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

    jr nz, @-$1e

    ret nc

    jr nc, jr_014_60b0

jr_014_60c0:
    db $10
    cp $a9
    cp a
    add sp, $7e
    ld l, c
    cpl
    jr c, @+$1d

    inc e
    rla
    rra
    add hl, bc
    ld c, $07
    rlca
    ld [hl], e
    adc h
    db $f4
    rrca
    or h
    rst $08
    ld [hl], a
    rst $08
    rst $20
    rst $18
    ld l, b
    sbc b
    ret nc

    jr nc, jr_014_60c0

    ldh [$fff0], a
    db $10
    db $10
    ldh a, [$ff30]
    ldh a, [$ffe0]
    ldh [$ffc0], a
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, de
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [hl], b
    ld a, a
    add b
    rst $38
    ld a, $c1
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $feff
    cp $07
    rst $38
    ldh [$ff1f], a
    nop
    nop
    nop
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

    scf
    jr c, jr_014_6163

    jr nc, jr_014_6195

    ld l, a
    ld a, a
    ld e, a
    cp a
    ldh a, [$ffe0]
    cp a
    rst $38
    and b
    add sp, -$41
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIF]
    ldh [$ff1f], a
    db $fc
    db $e3
    ld hl, sp-$09
    ld e, $f9
    db $fc
    rrca
    rra
    db $fc
    ldh [$ffe0], a

jr_014_6163:
    db $10
    ldh a, [$ff3c]
    db $fc
    ld [bc], a
    cp $3c
    db $fc
    ld [$1ef8], sp
    cp $01
    rst $38
    rst $38
    xor d
    ld a, [$ffbf]
    cp d
    cp [hl]
    rst $18
    ld a, a
    ld c, a
    ld e, a
    ld h, a
    cpl
    inc sp
    scf
    add hl, sp
    rst $38
    rlca
    nop
    rst $38
    rst $38
    ld [hl], e
    jr nc, @+$01

    rst $38
    rst $30
    rst $38
    adc $ff
    db $fc
    rst $38
    ld hl, sp-$02
    db $fd
    rra
    db $fc

jr_014_6195:
    db $fc
    rst $38
    ld a, $f9
    ldh a, [rIE]
    db $fc
    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    ld c, $fe
    ld bc, $06ff
    cp $02
    cp $1c
    db $fc
    ld [$30f8], sp
    ldh a, [$ffe0]
    ldh [rNR24], a
    ld e, $04
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
    rst $38
    nop
    ld a, $c1
    add b
    rst $38
    ld [hl], b
    ld a, a
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ccf
    rra
    rst $38
    inc bc
    rst $38
    db $fc
    db $fc
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh a, [$ffe0]
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
    call Call_014_633a
    rst $28
    inc l
    ld b, $ff
    ld e, b
    ld d, b
    ld c, $06
    call Call_014_41e0
    call Call_014_62fc
    call Call_014_4161
    ld a, $60
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    call Call_014_4043
    ld hl, $ca00
    ld bc, $0010
    xor a
    call Call_000_0174
    ld hl, $44ef
    ld de, $8000
    ld bc, $0060
    call Call_000_0183
    ld a, $11
    call Call_000_01cb
    ld a, $80
    ldh [$ffac], a
    ld hl, $42ba
    ld de, $9800
    call Call_014_41bf
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld b, $3c
    call Call_014_6314
    rst $08
    ld l, l
    ld b, $78
    call Call_014_6314
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $08
    call Call_014_41e0
    call Call_014_62fc
    rst $28
    ld a, [hl+]
    ld b, $3c
    call Call_014_6314
    call Call_014_4043
    ld d, $17
    call Call_014_62f8
    ld b, $3c
    call Call_014_6314
    call Call_014_4043
    ld d, $18
    call Call_014_62f8

jr_014_6275:
    call Call_014_65fa
    call Call_014_62dc
    ld a, [$d7d2]
    cp $78
    jr nz, jr_014_6275

    ld b, $78
    call Call_014_6314
    call Call_014_633f

jr_014_628a:
    call Call_014_65fa
    call Call_014_63d8
    call Call_014_6378
    ld b, a
    cp $8c
    call z, Call_014_633a
    ld a, b
    cp $64
    jr nc, jr_014_628a

    call Call_014_63a7

jr_014_62a1:
    call Call_014_65fa
    call Call_014_63d8
    call Call_014_6378
    cp $50
    jr nc, jr_014_62a1

    call Call_014_63b7
    ld b, $30
    call Call_014_631f
    ld b, $3c
    call Call_014_6314
    rst $28
    ld l, $06
    rst $38
    ld e, b
    ld d, b
    ld c, $08
    call Call_014_41e0
    call Call_014_62fc
    ld b, $1e
    call Call_014_6314
    xor a
    ld [$d7d2], a
    ld a, $ff
    ld [$df80], a
    ld a, $19
    jp Jump_000_0297


Call_014_62dc:
    ld a, [$d7d2]
    cp $78
    ret z

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    bit 3, a
    ret z

    xor a
    ld [$ca00], a
    ld a, [$d7d2]
    inc a
    ld [$d7d2], a
    ret


Call_014_62f8:
    ld a, d
    jp Jump_014_4016


Call_014_62fc:
jr_014_62fc:
    call Call_014_632d
    ld a, [$cca8]
    and $07
    jr nz, jr_014_62fc

    jr jr_014_630b

jr_014_6308:
    call Call_014_632d

jr_014_630b:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_014_6308

    ret


Call_014_6314:
jr_014_6314:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_014_632d
    pop bc
    jr jr_014_6314

Call_014_631f:
jr_014_631f:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_014_632d
    call Call_014_63d8
    pop bc
    jr jr_014_631f

Call_014_632d:
    call Call_000_01c5
    call Call_000_01c8
    call Call_014_4084
    call Call_000_01d1
    ret


Call_014_633a:
    ld a, $08
    jp Jump_014_414e


Call_014_633f:
    call Call_000_019b
    ld a, $04
    call Call_000_01a4
    ld [$ca0b], a
    ld a, $b4
    ld [$ca02], a
    ld a, $0a
    ld [$ca04], a
    ld a, $0f
    ld [$ca08], a
    ld a, $64
    ld [$ca09], a
    ld a, $c0
    ld [$ca0c], a
    ld a, $ff
    ld [$ca0d], a
    ld a, $20
    ld [$ca0e], a
    ld a, $00
    ld [$ca0f], a
    ld hl, $ca05
    jp Jump_014_40d7


Call_014_6378:
    ld hl, $ca0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca03]
    ld e, a
    ld a, [$ca04]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca03], a
    ld a, h
    ld [$ca04], a
    ld hl, $ca0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca01]
    ld e, a
    ld a, [$ca02]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca01], a
    ld a, h
    ld [$ca02], a
    ret


Call_014_63a7:
    ld a, $15
    ld [$ca08], a
    ld a, $64
    ld [$ca09], a
    ld hl, $ca05
    jp Jump_014_40d7


Call_014_63b7:
    ld a, $1b
    ld [$ca08], a
    ld a, $64
    ld [$ca09], a
    ld hl, $ca05
    jp Jump_014_40d7


Call_014_63c7:
    ld a, [$ca08]
    ld e, a
    ld a, [$ca09]
    ld d, a
    ld a, d
    or e
    ld hl, $ca05
    call nz, Call_014_40de
    ret


Call_014_63d8:
    call Call_014_63c7
    ld a, [$ca0b]
    cp $40
    ret nc

    ld a, [$ca02]
    ldh [$ff9b], a
    ld a, [$ca04]
    ldh [$ff9c], a
    ld a, $00
    ldh [$ffab], a
    ldh [$ffac], a
    ld [$d3ea], a
    ld a, [$ca05]
    ld de, $6426
    call Call_000_0171
    ld c, e
    ld b, d
    ld a, [$ca0b]
    jp Jump_000_0210


    ld h, $64
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b
    rst $38
    ld h, $64
    ld b, $00
    ld bc, $26ff
    ld h, h
    ld b, $01
    ld [bc], a
    rst $38
    ld h, $64
    ld b, $03
    dec b
    inc b
    dec b
    inc b
    dec b
    inc bc
    rst $38
    ld [hl-], a
    ld h, h
    scf
    ld h, h
    inc a
    ld h, h
    ld b, c
    ld h, h
    ld b, [hl]
    ld h, h
    ld d, a
    ld h, h
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
    db $fc
    db $fc
    inc bc
    db $10
    add b
    ld hl, sp-$08
    inc b
    stop
    rlca
    inc b
    jr nc, jr_014_6456

    ld sp, hl
    inc b
    ld d, b
    nop
    rlca
    inc b
    ld [hl], b

jr_014_6456:
    add b
    ld hl, sp-$08
    dec b
    stop
    rlca
    dec b
    jr nc, jr_014_6467

    ld sp, hl
    dec b
    ld d, b
    nop
    rlca
    dec b
    ld [hl], b

jr_014_6467:
    add b

jr_014_6468:
    add hl, bc
    jp z, $ca0c

    rrca
    jp z, $ca12

    dec d
    jp z, $ca18

    dec de
    jp z, $ca1e

    ld hl, $22ca
    jp z, $ca23

    inc h
    jp z, $ca25

    ld h, $ca
    daa
    jp z, $ca28

    add hl, hl
    jp z, $ca2a

    dec hl
    jp z, $ca2c

    dec l
    jp z, $ca2e

    cpl
    jp z, $ca30

    ld sp, $32ca
    jp z, $ca33

    inc [hl]
    jp z, $ca35

    ld [hl], $ca
    scf

jr_014_64a5:
    jp z, $ca38

    inc b
    cp $03
    db $fc
    ld bc, $3cfe
    nop
    nop
    ld d, b
    sbc h
    ld h, [hl]
    jr z, jr_014_6468

    ld h, [hl]
    ld b, [hl]
    ret z

    ld h, [hl]
    ld e, d
    rst $18
    ld h, [hl]
    ld d, b
    or d
    ld h, [hl]
    ld [hl-], a
    sbc h
    ld l, c
    ld e, $b3
    ld l, c
    jr z, @-$34

    ld l, c
    ld e, $e1
    ld l, c
    inc d
    rst $18
    ld h, [hl]
    ld a, [de]
    sbc h
    ld h, [hl]
    ld a, [bc]
    ret z

    ld h, [hl]
    ld [$69e1], sp
    ld a, [de]
    sbc h
    ld l, c
    ld a, [de]
    jp z, $1469

    or d
    ld h, [hl]
    ld a, [bc]
    or e
    ld l, c
    ld [$69e1], sp
    inc d
    or e
    ld l, c
    ld a, [de]
    rst $18
    ld h, [hl]
    ld c, $c8
    ld h, [hl]
    jr nz, jr_014_64a5

    ld l, c
    ld [de], a
    or d
    ld h, [hl]
    inc d
    pop hl
    ld l, c
    ld a, [de]
    sbc h
    ld h, [hl]
    ld bc, $69f8
    inc d
    jp z, Jump_000_1a69

    sbc h
    ld l, c
    ld a, [bc]
    ret z

    ld h, [hl]
    ld c, $e1
    ld l, c
    ld [$66b2], sp
    ld a, b
    ld b, $6a
    cp $ef
    ld l, $06
    nop
    ld e, b
    ld d, b
    ld c, $04
    call Call_014_41e0
    call Call_014_65d7
    call Call_014_4161
    ld a, $60
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld hl, $ca00
    ld bc, $003a
    xor a
    call Call_000_0174
    ld hl, $ca00
    call Call_014_420a
    ld a, $8a
    ld de, $8000
    call Call_000_020d
    ld hl, $454f
    ld de, $9000
    ld bc, $0270
    call Call_000_0183
    ld hl, $47bf
    ld de, $9800
    call Call_014_41bf
    call Call_014_4043
    ld hl, $9be0
    ld bc, $0020
    ld a, $00
    call Call_000_0186
    ld a, $08
    ld [$ca39], a
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld b, $14
    call Call_014_65ef
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $08
    call Call_014_41e0
    call Call_014_65d7
    rst $28
    ld a, [de]
    ld b, $3c
    call Call_014_65ef
    ld a, $46
    call Call_014_65cc
    call Call_014_4043
    ld d, $1b
    call Call_014_6607

jr_014_6599:
    ld a, [$ca03]
    cp $03
    jr z, jr_014_65a8

    call Call_014_65fa
    call Call_014_65bc
    jr jr_014_6599

jr_014_65a8:
    ld a, $08

jr_014_65aa:
    dec a
    push af
    ld hl, $6478
    call Call_000_016e
    call Call_014_4281
    pop af
    or a
    jr nz, jr_014_65aa

    jp $6a38


Call_014_65bc:
    call Call_000_01d1
    call Call_014_6643
    call Call_014_660b
    ret


Call_014_65c6:
    ld a, $18
    ld [$cca0], a
    ret


Call_014_65cc:
    ld [$ca02], a
    or a
    ret nz

    ld a, $01
    ld [$ca02], a
    ret


Call_014_65d7:
jr_014_65d7:
    call Call_014_65fa
    ld a, [$cca8]
    and $07
    jr nz, jr_014_65d7

    jr jr_014_65e6

jr_014_65e3:
    call Call_014_65fa

jr_014_65e6:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_014_65e3

    ret


Call_014_65ef:
jr_014_65ef:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_014_65fa
    pop bc
    jr jr_014_65ef

Call_014_65fa:
    call Call_000_01c5
    call Call_000_01c8
    call Call_014_4084
    call Call_000_01d1
    ret


Call_014_6607:
    ld a, d
    jp Jump_014_4016


Call_014_660b:
    ld de, $64a8
    ld b, $05
    ld hl, $cca0
    ld a, [hl]
    or a
    jr z, jr_014_663f

    dec [hl]
    cp $04
    jr z, jr_014_6636

    dec b
    cp $08
    jr z, jr_014_6636

    dec b
    cp $0c
    jr z, jr_014_6636

    dec b
    cp $10
    jr z, jr_014_6636

    dec b
    cp $14
    jr z, jr_014_6636

    dec b
    cp $18
    jr z, jr_014_6636

    ret


jr_014_6636:
    ld a, b

jr_014_6637:
    or a
    jr z, jr_014_663e

    inc de
    dec a
    jr jr_014_6637

jr_014_663e:
    ld a, [de]

jr_014_663f:
    ld [$d18d], a
    ret


Call_014_6643:
    ld de, $64ae
    ld hl, $ca00
    call Call_014_42a4
    jr c, jr_014_6668

    xor a
    ld [$ca07], a
    ld a, [$ca06]
    ld b, a
    ld c, $07

jr_014_6658:
    bit 0, b
    call nz, Call_014_66f6
    ld a, c
    or a
    ret z

    srl b
    dec c
    call Call_014_6672
    jr jr_014_6658

jr_014_6668:
    ld a, $03
    ld [$ca03], a
    xor a
    ld [$d18d], a
    ret


Call_014_6672:
    ld a, [$ca07]
    inc a
    ld [$ca07], a
    ret


Jump_014_667a:
jr_014_667a:
    push af
    ld de, $6478
    call Call_000_0171
    push de
    call Call_000_019b
    ld a, $0b
    call Call_000_01a4
    pop de
    ld [de], a
    rst $08
    dec h
    call Call_014_65c6
    pop af
    ld hl, $6468
    call Call_000_016e
    call Call_014_40d7
    ret


    ld a, $32
    ld [$ca31], a
    ld a, $1e
    ld [$ca29], a
    ld a, [$ca06]
    set 0, a
    ld [$ca06], a
    ld a, $00
    jr jr_014_667a

    ld a, $4e
    ld [$ca32], a
    ld a, $3c
    ld [$ca2a], a
    ld a, [$ca06]
    set 1, a
    ld [$ca06], a
    ld a, $01
    jr jr_014_667a

    ld a, $44
    ld [$ca33], a
    ld a, $6e
    ld [$ca2b], a
    ld a, [$ca06]
    set 2, a
    ld [$ca06], a
    ld a, $02
    jp Jump_014_667a


    ld a, $26
    ld [$ca34], a
    ld a, $82
    ld [$ca2c], a
    ld a, [$ca06]
    set 3, a
    ld [$ca06], a
    ld a, $03
    jp Jump_014_667a


Call_014_66f6:
    push bc
    call Call_014_67b2
    ld b, a
    call Call_014_6703
    call Call_014_6731
    pop bc
    ret


Call_014_6703:
    ld a, $00
    ld [$ca08], a
    ld a, b
    cp $50
    jr c, jr_014_6712

    ld a, $01
    ld [$ca08], a

jr_014_6712:
    ld a, b
    cp $29
    jr c, jr_014_6726

    cp $79
    jr nc, jr_014_6726

    ld a, $db
    ld [$ca04], a
    ld a, $67
    ld [$ca05], a
    ret


jr_014_6726:
    ld a, $c8
    ld [$ca04], a
    ld a, $67
    ld [$ca05], a
    ret


Call_014_6731:
    ld a, [$ca04]
    ld e, a
    ld a, [$ca05]
    ld d, a
    ld a, d
    or e
    jr z, jr_014_6749

    call Call_014_67a8
    call Call_014_40de
    ldh a, [$ff8b]
    or a
    jp z, Jump_014_6768

jr_014_6749:
    ld a, [$ca06]
    ld b, a
    ld a, [$ca07]
    ld d, $08

jr_014_6752:
    or a
    jr nz, jr_014_6757

    res 0, b

jr_014_6757:
    srl b
    rr c
    dec a
    dec d
    ld e, a
    ld a, d
    or a
    ld a, e
    jr nz, jr_014_6752

    ld a, c
    ld [$ca06], a
    ret


Jump_014_6768:
    call Call_014_679d
    cp $40
    ret nc

    call Call_014_67b2
    ldh [$ff9b], a
    call Call_014_67bd
    ldh [$ff9c], a
    ld a, $00
    ldh [$ffab], a
    ldh [$ffac], a
    ld a, [$ca08]
    or a
    jr z, jr_014_6786

    ld a, $20

jr_014_6786:
    ld [$d3ea], a
    call Call_014_67a8
    ld a, [hl]
    ld de, $680d
    call Call_000_0171
    ld c, e
    ld b, d
    push bc
    call Call_014_679d
    pop bc
    jp Jump_000_0210


Call_014_679d:
    ld a, [$ca07]
    ld de, $6478
    call Call_000_0171
    ld a, [de]
    ret


Call_014_67a8:
    ld a, [$ca07]
    ld hl, $6468
    call Call_000_016e
    ret


Call_014_67b2:
    ld a, [$ca07]
    ld de, $6488
    call Call_000_0171
    ld a, [de]
    ret


Call_014_67bd:
    ld a, [$ca07]
    ld de, $6498
    call Call_000_0171
    ld a, [de]
    ret


    dec c
    ld l, b
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    inc c
    inc c
    rst $38
    dec c
    ld l, b
    inc b
    nop
    nop
    ld bc, $0201
    inc c
    inc c
    inc c
    rst $38
    dec c
    ld l, b
    ld [bc], a
    ld b, $06
    ld b, $07
    rlca
    rlca
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c

Jump_014_67fb:
    inc c
    inc c
    rst $38
    dec c
    ld l, b
    inc bc
    ld b, $06
    rlca
    rlca
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    rst $38
    daa
    ld l, b
    inc l
    ld l, b
    dec a
    ld l, b
    ld l, d
    ld l, b
    adc a
    ld l, b
    cp h
    ld l, b
    pop hl
    ld l, b
    and $68
    rst $30
    ld l, b
    inc h
    ld l, c
    ld c, c
    ld l, c
    halt
    ld l, c
    sbc e
    ld l, c
    rlca
    pop af
    nop
    db $10
    add b
    nop
    ldh a, [rSB]
    stop
    ld [$1002], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    add b
    ldh a, [$fff0]
    dec b
    db $10
    ld [$0600], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    ld [$0cf0], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    nop
    ld [$100f], sp
    add b
    ld hl, sp-$10
    db $10
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13f0], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$16f0], sp
    stop
    ld [$1017], sp
    nop
    ld [$1018], sp
    add b
    pop af
    rst $28
    add hl, de
    stop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1cf0], sp
    stop
    ld [$101d], sp
    nop
    ld [$101e], sp
    nop
    ld [$101f], sp
    ld [$20f8], sp
    stop
    ld [$1021], sp
    ld [$22f8], sp
    stop
    ld [$1023], sp
    add b
    ldh a, [$fff0]
    inc h
    stop
    ld [$1025], sp
    nop
    ld [$1026], sp
    nop
    ld [$1027], sp
    ld [$28e8], sp
    stop
    jr jr_014_68fc

    db $10
    ld [$2a00], sp
    db $10
    ld [$2bf8], sp
    stop
    ld [$102c], sp
    add b
    pop af
    pop af
    nop
    db $10
    add b
    ldh a, [$fff0]
    inc bc
    ld d, b
    nop
    ld [$5004], sp
    ld [$01f8], sp
    ld d, b
    nop
    ld [$5002], sp
    add b
    ldh a, [$fff0]
    inc c
    ld d, b
    nop

jr_014_68fc:
    ld [$500d], sp
    nop
    ld [$500e], sp
    nop
    ld [$500f], sp
    ld [$09e8], sp
    ld d, b
    nop
    ld [$500a], sp
    nop
    ld [$500b], sp
    ld [$06f0], sp
    ld d, b
    nop
    ld [$5007], sp
    nop
    ld [$5008], sp
    ld [$05f0], sp
    ld d, b
    add b
    ldh a, [$fff0]
    ld d, $50
    nop
    ld [$5017], sp
    nop
    ld [$5018], sp
    ld [$13f0], sp
    ld d, b
    nop
    ld [$5014], sp
    nop
    ld [$5015], sp
    ld [$10f0], sp
    ld d, b
    nop
    ld [$5011], sp
    nop
    ld [$5012], sp
    add b
    rst $28
    rst $38
    ld [hl+], a
    ld d, b
    nop
    ld [$5023], sp
    ld [$20f8], sp
    ld d, b
    nop
    ld [$5021], sp
    ld [$1ce8], sp
    ld d, b
    nop
    ld [$501d], sp
    nop
    ld [$501e], sp
    nop
    ld [$501f], sp
    ld [$19e8], sp
    ld d, b
    nop
    ld [$501a], sp
    nop
    ld [$501b], sp
    add b
    ldh a, [rP1]
    dec hl
    ld d, b
    nop
    ld [$502c], sp
    ld [$2a00], sp
    ld d, b
    ld [$28e8], sp
    ld d, b
    nop
    jr @+$2b

    ld d, b
    ld [$24e8], sp
    ld d, b
    nop
    ld [$5025], sp
    nop
    ld [$5026], sp
    nop
    ld [$5027], sp
    add b
    add b
    ld a, $4e
    ld [$ca35], a
    ld a, $82
    ld [$ca2d], a
    ld a, [$ca06]
    set 4, a
    ld [$ca06], a
    ld a, $04
    jp Jump_014_667a


    ld a, $44
    ld [$ca36], a
    ld a, $1e
    ld [$ca2e], a
    ld a, [$ca06]
    set 5, a
    ld [$ca06], a
    ld a, $05
    jp Jump_014_667a


    ld a, $4e
    ld [$ca37], a
    ld a, $1e
    ld [$ca2f], a
    ld a, [$ca06]
    set 6, a
    ld [$ca06], a
    ld a, $06
    jp Jump_014_667a


    ld a, $26
    ld [$ca38], a
    ld a, $6e
    ld [$ca30], a
    ld a, [$ca06]
    set 7, a
    ld [$ca06], a
    ld a, $07
    jp Jump_014_667a


    ld a, $18
    call Call_014_414e
    ld b, $ff
    ld e, b
    ld d, b
    ld c, $1e
    jp Jump_014_41e0


    ret


    ld b, $42
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $42
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $42
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $42
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $42
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $42
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $54
    ld l, h
    ld b, $4b
    ld l, h
    ld b, $54
    ld l, h
    ld b, $5d
    ld l, h
    cp $ef
    ld l, $cd
    ld h, c
    ld b, c
    ld a, $60
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld hl, $ca00
    ld bc, $0014
    xor a
    call Call_000_0174
    ld hl, $ca00
    call Call_014_420a
    ld hl, $48c9
    ld de, $9000
    ld bc, $04a0
    call Call_000_0183
    ld hl, $4d69
    ld de, $9800
    call Call_014_41bf
    call Call_014_4043
    ld hl, $9be0
    ld bc, $0020
    ld a, $00
    call Call_000_0186
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld b, $78
    call Call_014_6c27
    call Call_014_6c01
    rst $28
    ld hl, $0516
    rst $28
    add hl, sp
    ld b, $3c
    call Call_014_6c27

jr_014_6a92:
    call Call_014_6c35
    ld de, $6a07
    ld hl, $ca00
    call Call_014_42a4
    jr nc, jr_014_6a92

    ld b, $3c
    call Call_014_6c27
    call Call_014_4043
    ld d, $1c
    call Call_014_6bf2
    ld b, $5a
    call Call_014_6c27
    call Call_014_6bf6
    rst $28
    ld l, $06
    inc a
    call Call_014_6c27
    ld hl, $5ebe
    ld de, $8000
    ld bc, $01d0
    call Call_000_0183
    ld hl, $53fd
    ld de, $9000
    ld bc, $0250
    call Call_000_0183
    ld hl, $564d
    ld de, $9800
    call Call_014_41bf
    call Call_014_4043
    call Call_014_6c6b
    ld b, $14
    call Call_014_6c27
    call Call_014_6c01
    rst $28
    ld [hl+], a
    ld b, $3c
    call Call_014_6c27
    call Call_014_4043
    ld d, $1d
    call Call_014_6bf2
    ld b, $5a
    call Call_014_6c27
    rst $28
    ld l, $cd
    or $6b
    rst $08
    ld a, d
    ld hl, $ca0c
    call Call_014_4281
    ld hl, $4e87
    ld de, $9000
    ld bc, $0480
    call Call_000_0183
    ld hl, $5307
    ld de, $9800
    call Call_014_41bf
    call Call_014_4043
    ld b, $14
    call Call_014_6c27
    call Call_014_6c01
    rst $28
    jr z, @+$08

    inc a
    call Call_014_6c27
    call Call_014_4043
    ld d, $1e
    call Call_014_6bf2
    ld b, $5a
    call Call_014_6c27
    rst $28
    ld l, $cd
    or $6b
    call Call_014_4161
    ld hl, $6091
    ld de, $8000
    ld bc, $0160
    call Call_000_0183
    ld hl, $57d3
    ld de, $9000
    ld bc, $0520
    call Call_000_0183
    ld hl, $5cf3
    ld de, $9800
    call Call_014_41bf
    call Call_014_6cc8
    ld b, $14
    call Call_014_6c27
    call Call_014_6c01
    rst $28
    add hl, hl
    ld b, $78
    call Call_014_6c27
    call Call_014_6cb6
    ld b, $10
    call Call_014_6c27
    call Call_014_6cbf
    call Call_014_6e06
    call Call_014_6e1c

jr_014_6b8c:
    call Call_014_6c35
    call Call_014_6d97
    call Call_014_6d26
    call Call_014_6cf9
    jr nz, jr_014_6b8c

    call Call_014_6d53

jr_014_6b9d:
    call Call_014_6c35
    call Call_014_6d26
    call Call_014_6d7f
    cp $08
    jr nc, jr_014_6b9d

    ld b, $00
    ld e, b
    ld d, b
    ld c, $08
    call Call_014_41e0
    ld b, $3c

jr_014_6bb5:
    push bc
    call Call_014_6c35
    call Call_014_6d26
    call Call_014_6d7f
    pop bc
    dec b
    jr nz, jr_014_6bb5

    ld hl, $ca0c
    call Call_014_4281
    ld b, $14
    call Call_014_6c27
    jp Jump_000_02df


Call_014_6bd1:
    call Call_014_6c8c
    ld a, [$d7d1]
    or a
    ret z

    ld a, [$ca02]
    inc a
    ld [$ca02], a
    bit 0, a
    ret nz

    xor a
    ld [$ca02], a
    call Call_014_6cae
    ld a, [$d7d1]
    dec a
    ld [$d7d1], a
    ret


Call_014_6bf2:
    ld a, d
    jp Jump_014_4016


Call_014_6bf6:
    ld b, $00
    ld e, b
    ld d, b
    ld c, $08
    call Call_014_41e0
    jr jr_014_6c0c

Call_014_6c01:
    ld b, $1b
    ld e, $1c
    ld d, $d0
    ld c, $08
    call Call_014_41e0

jr_014_6c0c:
    call Call_014_6c35
    call Call_014_6c86
    ld a, [$cca8]
    and $07
    jr nz, jr_014_6c0c

    jr jr_014_6c1e

jr_014_6c1b:
    call Call_014_6c35

jr_014_6c1e:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_014_6c1b

    ret


Call_014_6c27:
jr_014_6c27:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_014_6c35
    call Call_014_6c86
    pop bc
    jr jr_014_6c27

Call_014_6c35:
    call Call_000_01c5
    call Call_000_01c8
    call Call_014_4084
    call Call_000_01d1
    ret


    ld hl, $4e5b
    ld de, $98e8
    jp Jump_014_41bf


    ld hl, $4e65
    ld de, $98e8
    jp Jump_014_41bf


    ld hl, $4e6f
    ld de, $98e8
    jp Jump_014_41bf


    ld a, $1b
    ld [$de96], a
    ld hl, $4e79
    ld de, $98e8
    jp Jump_014_41bf


Call_014_6c6b:
    call Call_000_019b
    ld a, $1d
    call Call_000_01a4
    ld [$ca0c], a
    ld a, $50
    ld [$d7d1], a
    ld a, $c8
    ld [$ca04], a
    ld a, $56
    ld [$ca06], a
    ret


Call_014_6c86:
    ld a, [$cf7b]
    cp $1d
    ret nz

Call_014_6c8c:
    ld a, [$ca0c]
    cp $40
    ret nc

    ld a, [$ca04]
    ldh [$ff9b], a
    ld a, [$ca06]
    ldh [$ff9c], a
    ld a, $00
    ldh [$ffab], a
    ldh [$ffac], a
    ld [$d3ea], a
    ld bc, $6ea5
    ld a, [$ca0c]
    jp Jump_000_0210


Call_014_6cae:
    ld a, [$ca04]
    dec a
    ld [$ca04], a
    ret


Call_014_6cb6:
    ld hl, $5e6f
    ld de, $98ae
    jp Jump_014_41bf


Call_014_6cbf:
    ld hl, $5e95
    ld de, $98ae
    jp Jump_014_41bf


Call_014_6cc8:
    call Call_000_019b
    ld a, $10
    call Call_000_01a4
    ld [$ca0c], a
    xor a
    ld [$ca0e], a
    ld [$ca0f], a
    ld a, $6f
    ld [$ca04], a
    ld a, $4d
    ld [$ca06], a
    ld a, $04
    ld [$ca0d], a
    ld a, $1a
    ld [$ca0a], a
    ld a, $6f
    ld [$ca0b], a
    ld hl, $ca07
    jp Jump_014_40d7


Call_014_6cf9:
    ld a, [$6e3d]
    ld b, a
    ld a, [$ca0e]
    cp b
    jr z, jr_014_6d09

    inc a
    ld [$ca0e], a
    or a
    ret


jr_014_6d09:
    ld a, [$ca0f]
    inc a
    ld b, a
    ld [$ca0f], a
    ld a, $b4
    cp b
    ret


Call_014_6d15:
    ld a, [$ca0a]
    ld e, a
    ld a, [$ca0b]
    ld d, a
    ld a, d
    or e
    ld hl, $ca07
    call nz, Call_014_40de
    ret


Call_014_6d26:
    call Call_014_6d15
    ld a, [$ca0c]
    cp $40
    ret nc

    ld a, [$ca04]
    ldh [$ff9b], a
    ld a, [$ca06]
    ldh [$ff9c], a
    ld a, $00
    ldh [$ffab], a
    ldh [$ffac], a
    ld [$d3ea], a
    ld a, [$ca07]
    ld de, $6f26
    call Call_000_0171
    ld c, e
    ld b, d
    ld a, [$ca0c]
    jp Jump_000_0210


Call_014_6d53:
    ld a, $00
    ld [$ca10], a
    ld a, $fc
    ld [$ca11], a
    ld a, $1f
    ld [$ca0a], a
    ld a, $6f
    ld [$ca0b], a
    rst $08
    nop
    rst $08
    rrca
    ld a, $d0
    ldh [rOBP1], a
    xor a
    ld [$de2c], a
    ld [$ca0e], a
    ld [$ca0f], a
    ld hl, $ca07
    jp Jump_014_40d7


Call_014_6d7f:
    ld hl, $ca10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca03]
    ld e, a
    ld a, [$ca04]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca03], a
    ld a, h
    ld [$ca04], a
    ret


Call_014_6d97:
    call Call_014_6e40
    ld a, [$ca0d]
    or a
    jr z, jr_014_6db1

    ld b, a
    dec a
    ld [$ca0d], a
    ld a, b
    cp $02
    ret nz

    ld a, $01
    ld [$d7d1], a
    ld b, a
    jr jr_014_6dbc

jr_014_6db1:
    xor a
    ld [$d7d1], a
    ld a, $04
    ld [$ca0d], a
    ld b, $ff

jr_014_6dbc:
    ld a, [$ca04]
    sub b
    ld [$ca04], a
    ret


    ret


    push bc
    ldh a, [rLYC]
    ld b, a
    cp $2b
    jr z, jr_014_6de4

jr_014_6dcd:
    ldh a, [rSTAT]
    and $03
    jr z, jr_014_6dcd

jr_014_6dd3:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_014_6dd3

    ld a, [$ca13]
    ldh [rBGP], a
    ld a, $2b
    ldh [rLYC], a
    jr jr_014_6e04

jr_014_6de4:
    ld b, $2d

jr_014_6de6:
    ldh a, [rLY]
    cp b
    jr c, jr_014_6de6

jr_014_6deb:
    ldh a, [rSTAT]
    and $03
    jr z, jr_014_6deb

jr_014_6df1:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_014_6df1

    ld a, [$ca12]
    and $1f
    or $10
    ldh [rBGP], a
    ld a, $66
    ldh [rLYC], a

jr_014_6e04:
    pop bc
    ret


Call_014_6e06:
    di
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $c3
    ldh [rSTAT], a
    ei
    ldh a, [rBGP]
    ld [$ca12], a
    ld [$ca13], a
    ret


Call_014_6e1c:
    ld a, $c9
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0fb
    ld [hl], $14
    dec hl
    ld [hl], $6d
    dec hl
    ld [hl], $c5
    dec hl
    ld [hl], $c3
    ld a, $0d
    ld [$de2c], a
    ld a, $2c
    ldh [rLYC], a
    ret


    ld e, $46
    inc d
    ld a, [bc]

Call_014_6e40:
    ld hl, $6e3c
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, [$ca0e]
    cp e
    jr nc, jr_014_6e58

    xor a
    ld [$d763], a
    ld b, $00
    jr jr_014_6e81

jr_014_6e58:
    ld hl, $d75d
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_014_6e65

    xor a
    ld [hl+], a
    inc [hl]
    dec hl

jr_014_6e65:
    inc hl
    ld a, [hl]
    and $03
    ld e, a
    ld a, [$ca0e]
    cp d
    ld hl, $6e96
    jr c, jr_014_6e77

    ld hl, $6e9a
    ld b, c

jr_014_6e77:
    ld d, $00
    add hl, de
    ld d, [hl]
    ld a, d
    ld [$ca12], a
    ldh [rOBP1], a

jr_014_6e81:
    ld hl, $d763
    ld a, b
    or a
    jr z, jr_014_6e93

    inc [hl]
    ld a, [hl]
    cp $01
    jr nz, jr_014_6e91

    rst $08
    db $10
    ld a, [hl]

jr_014_6e91:
    cp b
    ret c

jr_014_6e93:
    ld [hl], $00
    ret


    inc de
    rla
    dec de
    rla
    inc de
    dec d
    dec de
    rra
    and e
    ld l, [hl]
    ldh a, [rP1]
    rst $38
    and l
    ld l, [hl]
    jp c, Jump_000_00f4

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
    nop
    ld [$1007], sp
    ld [$08e8], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    nop
    ld [$100b], sp
    ld [$0cde], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11e0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    ld [$1016], sp
    ld [$17d8], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    nop
    ld [$101c], sp
    add b
    ld h, $6f
    ldh a, [rP1]
    rst $38
    ld h, $6f
    inc bc
    nop
    ld bc, $ff02
    inc l
    ld l, a
    ld b, l
    ld l, a
    add [hl]
    ld l, a
    or $f8
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
    rst $28
    or $06
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld [$0ae8], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$0ee8], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12e8], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    add b
    rst $28
    rst $30
    ld [de], a
    ld d, b
    nop
    ld [$5013], sp
    nop
    ld [$5014], sp
    nop
    ld [$5015], sp
    ld [$0ae8], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    nop
    ld [$5011], sp
    ld [$0ee8], sp
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    nop
    ld [$500d], sp
    ld [$06e8], sp
    ld d, b
    nop
    ld [$5007], sp
    nop
    ld [$5008], sp
    nop
    ld [$5009], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
