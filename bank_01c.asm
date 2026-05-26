; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

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
    jr nz, jr_01c_403f

    ld b, e
    db $20, $c3
    ld c, $42
    jp Jump_01c_4a6c


    jp Jump_01c_4c7d


    xor [hl]
    ld d, e
    nop
    ld e, d
    jr nc, @+$61

    nop
    nop
    ld a, l
    ld [$cf78], a
    ld a, h
    ld [$cf79], a
    ld a, [$df5e]
    ld hl, $401f
    call Call_000_016e
    push hl
    ld hl, $cf78
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_01c_403a:
    push de
    ret


Call_01c_403c:
Jump_01c_403c:
    inc de
    inc de
    inc de

jr_01c_403f:
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_01c_4045:
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
    jr nc, jr_01c_4069

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_01c_4069:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $02
    add c
    ld l, a

jr_01c_4073:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_01c_4092

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
    call Call_01c_403a
    pop bc
    pop hl
    jr jr_01c_40b2

jr_01c_4092:
    cp $ff
    jr nz, jr_01c_409e

    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a
    jr jr_01c_40b2

jr_01c_409e:
    cp $fe
    jr nz, jr_01c_40ba

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
    jr jr_01c_40bb

jr_01c_40b2:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_01c_4073

jr_01c_40ba:
    or a

jr_01c_40bb:
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


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_01c_40d6:
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

Jump_01c_40ef:
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
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_01c_40d6

    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_01c_410f:
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
    jr jr_01c_410f

    call Call_000_019e

Call_01c_4138:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_01c_4142:
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
    jr jr_01c_4142

Call_01c_4174:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Call_01c_4178:
jr_01c_4178:
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
    jr nz, jr_01c_4178

    ret


Call_01c_4195:
Jump_01c_4195:
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


    pop bc
    ld b, c
    rst $00
    ld b, c
    sbc $41
    push hl
    ld b, c
    db $ec
    ld b, c
    ld b, d
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld e, l
    ld b, d
    ld h, h
    ld b, d
    sbc a
    ld b, d
    ld b, $0d
    ld c, $ff
    sbc a
    ld b, d
    inc b
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0f
    db $10
    ld de, $1012
    ld de, $1012
    ld de, $1012
    ld de, $ff12
    sbc a
    ld b, d
    inc b
    db $10
    ld de, $ff12
    sbc a
    ld b, d
    inc b
    inc de
    inc d
    dec d
    rst $38
    sbc a
    ld b, d
    inc b
    inc de
    inc d
    dec d
    inc de
    ld d, $16
    rla
    rla
    nop
    ld bc, $0002
    ld bc, $0002
    ld bc, $0002
    ld bc, $0002
    ld bc, $ff02
    sbc a
    ld b, d
    inc b
    nop
    ld bc, $ff02
    ld a, [$df81]
    or a
    ld a, $20
    jr z, jr_01c_4217

    xor a

jr_01c_4217:
    ld [$d3ea], a
    xor a
    ld [$df81], a
    ld a, $00
    ldh [$ffab], a

Jump_01c_4222:
    push bc
    ld a, c
    ld de, $41ad
    call Call_000_0171
    pop bc
    ld a, b
    or a
    jp z, Jump_01c_403c

    call Call_01c_4045
    ld de, $429f
    call Call_000_0171
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    jp Jump_000_02be


    sbc a
    ld b, d
    inc b
    nop
    ld bc, $ff02
    sbc a
    ld b, d
    inc b
    inc bc
    inc b
    dec b
    rst $38
    sbc a
    ld b, d
    inc b
    nop
    ld bc, $0002
    ld bc, $0706
    ld [$ff09], sp
    sbc a
    ld b, d
    inc b
    rlca
    ld [$ff09], sp
    sbc a
    ld b, d
    inc b
    ld a, [bc]
    dec bc
    inc c
    rst $38
    sbc a
    ld b, d
    ld b, $0d
    ld c, $ff
    sbc a
    ld b, d
    inc b
    dec c
    ld c, $0f
    db $10
    ld de, $1012
    ld de, $1012
    ld de, $1012
    ld de, $ff12
    sbc a
    ld b, d
    inc b
    db $10
    ld de, $ff12
    sbc a
    ld b, d
    inc b
    inc de
    inc d
    dec d
    rst $38
    sbc a
    ld b, d
    inc b
    inc de
    inc d
    dec d
    inc de
    ld d, $17
    nop
    ld bc, $ff02
    rst $08
    ld b, d
    ld [$4143], sp
    ld b, e
    ld a, d
    ld b, e
    or a
    ld b, e
    db $f4
    ld b, e
    ld sp, $5e44
    ld b, h
    ld a, e
    ld b, h
    sbc b
    ld b, h
    or l
    ld b, h
    jp nc, $ef44

    ld b, h
    inc c
    ld b, l
    dec l
    ld b, l
    ld c, [hl]
    ld b, l
    ld [hl], e
    ld b, l
    and b
    ld b, l
    call $fa45
    ld b, l
    cpl
    ld b, [hl]
    ld h, h
    ld b, [hl]
    sbc c
    ld b, [hl]
    adc $46
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    ld [$03e8], sp
    nop
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000c], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    ld [$03e8], sp
    nop
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000d], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    ld [$03e8], sp
    nop
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000e], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    ld [$0fe8], sp
    nop
    nop
    ld [$0010], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$11e0], sp
    nop
    nop
    ld [$0012], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000c], sp
    ld [$13e4], sp
    nop
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    ld [$0fe8], sp
    nop
    nop
    ld [$0010], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$11e0], sp
    nop
    nop
    ld [$0012], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000d], sp
    ld [$13e4], sp
    nop
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    nop
    nop
    ld [$0001], sp
    nop
    ld [$0002], sp
    ld [$0fe8], sp
    nop
    nop
    ld [$0010], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$11e0], sp
    nop
    nop
    ld [$0012], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000e], sp
    ld [$13e4], sp
    nop
    add b
    ld hl, sp+$0b
    push af
    ld [$faf0], sp
    inc d
    nop
    nop
    ld [$0015], sp
    ld [$16f0], sp
    nop
    nop
    ld [$0017], sp
    nop
    ld [$0018], sp
    nop
    ld [$0019], sp
    ld [$1ae8], sp
    nop
    nop
    ld [$001b], sp
    nop
    ld [$001c], sp
    nop
    ld [$001d], sp
    add b
    ld hl, sp+$07
    push af
    inc b
    or $f6
    ld e, $00
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$21f0], sp
    nop
    nop
    ld [$0022], sp
    nop
    ld [$0023], sp
    add b
    ld hl, sp+$07
    push af
    inc b
    or $f6
    ld e, $00
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$21f0], sp
    nop
    nop
    ld [$0022], sp
    nop
    ld [$0024], sp
    add b
    ld hl, sp+$07
    push af
    inc b
    or $f6
    ld e, $00
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$21f0], sp
    nop
    nop
    ld [$0022], sp
    nop
    ld [$0025], sp
    add b
    ld hl, sp+$07
    push af
    inc b
    or $f6
    ld h, $00
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$27f0], sp
    nop
    nop
    ld [$0022], sp
    nop
    ld [$0023], sp
    add b
    ld hl, sp+$07
    push af
    inc b
    or $f6
    ld h, $00
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$27f0], sp
    nop
    nop
    ld [$0022], sp
    nop
    ld [$0024], sp
    add b
    ld hl, sp+$07
    push af
    inc b
    or $f6
    ld h, $00
    nop
    ld [$001f], sp
    nop
    ld [$0020], sp
    ld [$27f0], sp
    nop
    nop
    ld [$0022], sp
    nop
    ld [$0025], sp
    add b
    ldh a, [c]
    add hl, bc
    nop
    ld [$eefa], sp
    jr z, jr_01c_4514

jr_01c_4514:
    nop
    ld [$0029], sp
    nop
    ld [$002a], sp
    ld [$2bf0], sp
    nop
    nop
    ld [$002c], sp
    nop
    ld [$002d], sp
    nop
    ld [$002e], sp
    add b
    ldh a, [c]
    add hl, bc
    nop
    ld [$eefa], sp
    jr z, jr_01c_4535

jr_01c_4535:
    nop
    ld [$0029], sp
    nop
    ld [$002a], sp
    ld [$2bf0], sp
    nop
    nop
    ld [$002c], sp
    nop
    ld [$002d], sp
    nop
    ld [$002f], sp
    add b
    pop af
    ld [$0800], sp
    ld a, [$30ed]
    nop
    nop
    ld [$0031], sp
    nop
    ld [$0032], sp
    nop
    ld [$0033], sp
    ld [$2be8], sp
    nop
    nop
    ld [$002c], sp
    nop
    ld [$0034], sp
    nop
    ld [$0035], sp
    add b
    db $f4
    dec bc
    db $fd
    ld [$ecfa], sp
    inc bc
    nop
    nop
    ld [$0036], sp
    nop
    ld [$0037], sp
    nop
    ld [$0038], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000c], sp
    add b
    db $f4
    dec bc
    db $fd
    ld [$ecfa], sp
    inc bc
    nop
    nop
    ld [$0036], sp
    nop
    ld [$0037], sp
    nop
    ld [$0038], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000d], sp
    add b
    db $f4
    dec bc
    db $fd
    ld [$ecfa], sp
    inc bc
    nop
    nop
    ld [$0036], sp
    nop
    ld [$0037], sp
    nop
    ld [$0038], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000e], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$faf2], sp
    add hl, sp
    nop
    nop
    ld [$003a], sp
    ld [$03ea], sp
    nop
    nop
    ld [$003b], sp
    nop
    ld [$0005], sp
    nop
    ld [$003c], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000c], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$faf2], sp
    add hl, sp
    nop
    nop
    ld [$003a], sp
    ld [$03ea], sp
    nop
    nop
    ld [$003b], sp
    nop
    ld [$0005], sp
    nop
    ld [$003c], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000d], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$faf2], sp
    add hl, sp
    nop
    nop
    ld [$003a], sp
    ld [$03ea], sp
    nop
    nop
    ld [$003b], sp
    nop
    ld [$0005], sp
    nop
    ld [$003c], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000e], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$faf2], sp
    add hl, sp
    nop
    nop
    ld [$003a], sp
    ld [$03ea], sp
    nop
    nop
    ld [$003b], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000d], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$faf2], sp
    add hl, sp
    nop
    nop
    ld [$003d], sp
    ld [$03ea], sp
    nop
    nop
    ld [$003b], sp
    nop
    ld [$0005], sp
    nop
    ld [$0006], sp
    nop
    ld [$0007], sp
    ld [$08e0], sp
    nop
    nop
    ld [$0009], sp
    nop
    ld [$000a], sp
    nop
    ld [$000b], sp
    nop
    ld [$000e], sp
    add b
    ld b, $00
    ld e, b
    ld d, b
    ld c, $01

Call_01c_4709:
    call Call_01c_4195
    call Call_01c_4733
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


Call_01c_4733:
jr_01c_4733:
    ld a, [$cca8]
    and $07
    jr nz, jr_01c_4733

jr_01c_473a:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_01c_473a

    ret


Call_01c_4743:
    push af
    ld a, $40
    ld [$c303], a
    pop af
    or a
    jr z, jr_01c_4753

    call Call_000_01a4
    ld [$c303], a

jr_01c_4753:
    call Call_000_0219
    jr nc, jr_01c_4760

    ld a, [$c303]
    call Call_000_01a7
    scf
    ret


jr_01c_4760:
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld b, $40
    xor a

jr_01c_476b:
    ld [hl+], a
    dec b
    jr nz, jr_01c_476b

    ld hl, $c801

jr_01c_4772:
    ld a, [hl]
    or a
    jr z, jr_01c_477a

    inc hl
    inc hl
    jr jr_01c_4772

jr_01c_477a:
    dec hl
    ld a, [$cc40]
    ld [hl+], a
    ld e, a
    ld a, [$cc41]
    ld [hl], a
    ld h, a
    ld l, e
    ld c, e
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $e6
    ld l, a
    ld a, [$c303]
    ld [hl], a
    ld l, c
    push hl
    ld hl, $c819
    inc [hl]
    ld hl, $c818
    inc [hl]
    pop hl
    ld c, l
    or a
    ret


Call_01c_47a2:
Jump_01c_47a2:
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    call Call_000_01a7
    ld hl, $cc40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c800

jr_01c_47b3:
    ld a, [de]
    inc de
    cp l
    jr z, jr_01c_47bb

    inc de
    jr jr_01c_47b3

jr_01c_47bb:
    ld a, [de]
    inc de
    cp h
    jr nz, jr_01c_47b3

    dec de
    dec de
    xor a
    ld [de], a
    inc de
    ld [de], a
    call Call_000_029d
    ld hl, $c819
    dec [hl]
    ret


Call_01c_47ce:
Jump_01c_47ce:
    ld a, [$c819]
    or a
    ret z

    ld a, $08
    ld [$c823], a
    ld de, $c801

jr_01c_47db:
    ld a, [de]
    or a
    jr nz, jr_01c_47e8

jr_01c_47df:
    inc de
    inc de
    ld hl, $c823
    dec [hl]
    ret z

    jr jr_01c_47db

jr_01c_47e8:
    ld a, [de]
    ld h, a
    dec de
    ld a, [de]
    ld c, a
    inc de
    ld a, e
    ld [$c821], a
    ld a, d
    ld [$c822], a
    ld a, c
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld l, c
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    call Call_01c_480f
    ld a, [$c821]
    ld e, a
    ld a, [$c822]
    ld d, a
    jr jr_01c_47df

Call_01c_480f:
    push de
    ret


Call_01c_4811:
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    ret


Jump_01c_481e:
    push af
    xor a
    call Call_01c_4743
    pop de
    ret c

    ld l, c
    ld [hl], $32
    inc l
    ld [hl], $48
    ld a, $2a
    add c
    ld l, a
    ld [hl], e
    or a
    ret


    call Call_000_01e6
    ret nz

    jp Jump_01c_47a2


Call_01c_4839:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    ld a, e
    cp $e0
    jr nc, jr_01c_4854

    cp $d0
    jr c, jr_01c_484e

    ld e, $e0
    jr jr_01c_4854

jr_01c_484e:
    cp $c0
    jr c, jr_01c_4854

    ld e, $c0

jr_01c_4854:
    ld a, d
    cp $e0
    jr nc, jr_01c_4867

    cp $d0
    jr c, jr_01c_4861

    ld d, $e0
    jr jr_01c_4867

jr_01c_4861:
    cp $a0
    jr c, jr_01c_4867

    ld d, $a0

jr_01c_4867:
    ld [hl], d
    dec l
    dec l
    ld [hl], e
    ret


Call_01c_486c:
    push bc
    push hl
    xor a

jr_01c_486f:
    ld [hl+], a
    dec c
    jr nz, jr_01c_486f

    pop hl
    pop bc

jr_01c_4875:
    push bc
    push de
    push hl
    ld b, $00
    call Call_000_0183
    pop hl
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
    jr nz, jr_01c_4875

    ret


Call_01c_4894:
Jump_01c_4894:
    ld de, $ff1c
    ld bc, $ff06
    call Call_01c_4195
    ld hl, $cca8
    res 1, [hl]
    ret


Call_01c_48a3:
    ld de, $0000
    ld bc, $0006
    jp Jump_01c_4195


    dec b
    ld b, $00
    ld [bc], a
    nop
    ld [$ffe0], sp
    ld [hl], b
    rst $38
    ld b, b
    nop
    ret nz

    nop
    ld a, h
    db $10
    ld [$0200], sp
    nop
    db $fc
    nop
    cp $06
    inc c
    ld l, b
    ld e, c
    ld e, e
    ld e, c
    ld h, d
    ld e, c
    jr jr_01c_48d1

    add b
    ld [bc], a
    nop
    inc bc

jr_01c_48d1:
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $02
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    rlca
    ld a, [$f906]
    ld [$2009], sp
    ld bc, $0500
    ldh a, [rIE]
    and b
    rst $38
    jr nz, jr_01c_48f1

jr_01c_48f1:
    ld h, b
    nop
    rlca
    ld b, $06
    nop
    ld [bc], a
    nop
    db $fc
    nop
    cp $07
    ld a, [bc]
    push de
    ld e, a
    jp $ca5f


    ld e, a
    inc c
    ld [bc], a
    add b
    ld [bc], a
    nop
    inc bc
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop

jr_01c_4911:
    cp $00
    ld bc, $0100
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $40
    rst $38
    add b
    cp $80
    db $fd
    inc bc
    ld [bc], a
    ld bc, $0102
    nop
    add hl, bc
    ld [$3c04], sp
    ld l, b
    ld bc, $303c
    nop
    inc a
    ld e, b
    ld bc, $683c
    ld [bc], a
    inc a
    ld d, b
    ld bc, $323c
    ld [bc], a
    inc a
    jr z, jr_01c_4942

jr_01c_4942:
    inc a
    ld d, d
    ld bc, $203c
    ld bc, $483c
    ld [bc], a
    inc a
    ld l, b
    ld [bc], a
    inc a
    ld [hl+], a
    ld bc, $483c
    ld bc, $643c
    nop
    inc a
    ld hl, $3c00
    ld e, b
    ld [bc], a
    ld bc, $ff00
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b
    ld d, b
    nop
    ld a, b
    nop
    and b
    nop
    and b
    jr nz, jr_01c_4911

    ld b, b
    and b
    ld h, b
    and b
    add b
    ld a, b
    add b
    ld d, b
    add b
    jr z, @-$7e

    nop
    add b
    nop
    ld h, b
    nop
    ld b, b
    nop
    jr nz, jr_01c_4985

jr_01c_4985:
    nop
    jr z, jr_01c_4988

jr_01c_4988:
    add b
    nop
    xor e
    nop
    push de
    nop
    nop
    ld bc, $161e
    inc d
    ld de, $0101
    ld bc, $5003
    add b
    ld a, b
    nop
    jr z, jr_01c_49ee

    inc a
    db $10
    db $10
    jr nc, jr_01c_49a4

    cp e

jr_01c_49a4:
    ld bc, $0000
    pop hl
    inc b
    nop
    inc bc
    cp $0b
    nop
    nop
    dec h
    rra
    nop
    nop
    ld e, [hl]
    dec d
    nop
    nop
    ld a, $21
    nop
    ld [bc], a
    ld a, l
    ld hl, $0200
    rra
    inc sp
    nop
    inc bc
    ld d, e
    ld a, $00

jr_01c_49c6:
    nop
    ld c, c
    ld b, c
    nop
    ld [bc], a
    xor [hl]
    ld d, d
    nop
    ld bc, $5e23
    nop
    nop
    ld b, $5f
    nop
    inc bc
    inc c
    ld l, a
    nop
    ld [bc], a
    ld c, l
    ld [hl], b
    nop
    inc bc
    and b
    ld [hl], e
    nop
    nop
    inc b
    ret nz

    ld b, b
    dec c
    ld e, b
    dec e
    ld e, b
    dec l
    ld e, b
    dec e
    ld e, b

jr_01c_49ee:
    dec c
    ld e, b
    ld a, [$fe49]
    ld c, c
    ld [bc], a
    ld c, d
    cp $49
    ld a, [$1249]

jr_01c_49fb:
    dec c
    ld a, [$12fa]

jr_01c_49ff:
    jr jr_01c_49fb

    inc bc
    ld [de], a
    jr jr_01c_49ff

    inc c
    daa
    ld e, b
    dec e
    ld c, b
    ld d, $38

jr_01c_4a0c:
    ld [de], a
    jr z, jr_01c_4a0c

    inc bc
    db $fd
    inc bc
    inc hl
    and [hl]
    jr nz, jr_01c_49c6

    inc e
    cp e
    ld d, $c6
    inc a
    ld bc, $3079
    ld d, b
    ld bc, $348b
    inc a
    ld [bc], a
    ld a, [hl]
    ld l, a
    ld a, [hl-]
    ld [bc], a
    sub b
    add b
    ld [hl-], a
    nop
    adc b
    ld d, b
    ld a, [hl-]
    inc bc
    adc c
    ld [hl], l
    ld [hl-], a
    ld bc, $4e89
    jr z, jr_01c_4a39

    ld a, c

jr_01c_4a39:
    jr z, @+$1e

    ld b, b
    nop
    nop
    ld e, $01
    ld [hl], b
    ld d, l
    ld [hl+], a
    nop
    sub [hl]
    dec d
    ld e, $00
    ld [hl], d
    ld h, $1b
    nop
    adc b
    ld d, b
    dec de
    inc bc
    adc c
    ld [hl], l
    ld e, $01
    adc c
    ld c, [hl]
    jr jr_01c_4a59

    ld a, c

jr_01c_4a59:
    jr z, @+$16

    ld bc, $3f8b
    inc e
    ld bc, $5570
    ld a, [de]
    nop
    sub [hl]
    dec d
    ld e, $00
    ld [hl], d
    ld h, $0a
    rst $38

Jump_01c_4a6c:
    ld a, $01
    ld [$def4], a
    call Call_01c_4af6
    call Call_01c_4b49
    call Call_01c_4b34
    xor a
    ld [$de9b], a
    ld [$c63b], a
    ld [$df0b], a
    ld a, $98
    ld [$de9e], a
    ld a, $80
    ldh [rWX], a
    ld a, $e3
    ld [$de87], a
    call Call_000_0234
    call Call_000_019b
    ld a, [$c63b]
    cp $03
    jr nc, jr_01c_4aaf

    ld a, $0e
    call Call_000_01a4
    ld [$c300], a
    call Call_01c_4c0b
    ld a, $01
    ld [$dd31], a

jr_01c_4aaf:
    ld a, $07
    call Call_000_01a4
    ld [$c301], a
    call Call_01c_675d
    ld a, $01
    ld [$c739], a
    ld a, $01
    ld [$de29], a

Jump_01c_4ac4:
    call Call_01c_4bd6
    call Call_000_01d1
    call Call_01c_6191
    call Call_01c_682e
    call Call_01c_4be2
    call Call_01c_6a3a
    call Call_000_02dc
    call Call_000_02d9
    ld a, $80
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld hl, $cccc
    ld a, [hl]
    or a
    jr nz, jr_01c_4aef

    ld [hl], $01
    rst $28
    inc c

jr_01c_4aef:
    ld hl, $c63f
    inc [hl]
    jp Jump_01c_4ac4


Call_01c_4af6:
    call Call_000_0288
    ld a, [$c3b2]
    add $04
    ld [$c3b2], a
    ld hl, $c600
    ld bc, $0600
    xor a
    call Call_000_0174
    ld hl, $c300
    ld bc, $0080
    xor a
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
    call Call_01c_4709
    ld a, $e3
    ld [$de87], a
    jp Jump_000_01c5


Call_01c_4b34:
    ld b, $01
    call Call_01c_4b9d
    call Call_01c_4bd9
    xor a
    ld [$d7d2], a
    ld [$d7d1], a
    ld a, $1b
    ld [$c73b], a
    ret


Call_01c_4b49:
    ld hl, $56b1
    ld de, $9810
    ld bc, $1010
    call Call_01c_4178

Call_01c_4b55:
    ld hl, $56b1
    ld de, $9800
    ld bc, $1010
    call Call_01c_4178
    call Call_000_0153
    ld hl, $4d0e
    ld bc, $06a0
    ld de, $9040
    call Call_000_0183
    call Call_000_0231
    ld a, $8e
    ld de, $8000
    call Call_000_020d
    ld a, $54
    ld de, $86a0
    call Call_000_020d
    xor a
    ld [$c30b], a
    ld a, $80
    ld [$c3b5], a
    ld [$c3b4], a
    ld a, $4f
    call Call_000_020a
    ld a, $51
    call Call_000_020a
    ld [$c313], a
    ret


Call_01c_4b9d:
jr_01c_4b9d:
    ld a, b
    or a
    ret z

    push bc
    call Call_01c_4bd6
    pop bc
    dec b
    jr jr_01c_4b9d

Jump_01c_4ba8:
    call Call_000_01c5
    call Call_000_0282
    call Call_000_01c8
    ld a, [$de91]
    ld e, a
    ld a, [$de92]
    ld d, a
    ld a, [$d73a]
    cp $5a
    jp c, Jump_01c_4bcd

    ld a, [$d741]
    and $02
    ld e, a
    ld a, [$d740]
    and $02
    ld d, a

Jump_01c_4bcd:
    ld a, e
    ld [$d741], a
    ld a, d
    ld [$d740], a
    ret


Call_01c_4bd6:
    jp Jump_01c_4ba8


Call_01c_4bd9:
    ld de, $d01c
    ld bc, $1b06
    jp Jump_01c_4195


Call_01c_4be2:
    ld a, [$c739]
    or a
    ret z

    ld hl, $c63d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, l
    ld [$c63d], a
    ld a, h
    ld [$c63e], a
    ld a, h
    ld [$d7d1], a
    ret


Call_01c_4bfe:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    xor a
    ld [$de2c], a
    ret


Call_01c_4c0b:
    ld a, $c9
    ld [$c0f8], a
    ld [$c0f0], a
    ld hl, $c0f3
    ld [hl], $1c
    dec hl
    ld [hl], $4c
    dec hl
    ld [hl], $2e
    dec hl
    ld [hl], $c3
    ld hl, $c0fb
    ld [hl], $1c
    ld hl, $c0f8
    ld [hl], $c3
    jp Jump_01c_4c39


    ld a, [$c73a]
    or a
    jr z, jr_01c_4c39

    ld a, [$c73b]
    ldh [rBGP], a

Jump_01c_4c39:
jr_01c_4c39:
    push hl
    ld hl, $c0fa
    ld [hl], $4c
    dec hl
    ld [hl], $4d
    ld a, $7e
    ldh [rLYC], a
    ld a, $0d
    ld [$de2c], a
    pop hl
    ret


    push bc
    push de
    ld a, [$c738]
    or a
    jr z, jr_01c_4c72

    ld b, $7f

jr_01c_4c57:
    ldh a, [rLY]
    cp b
    jr c, jr_01c_4c57

    ld e, $e1
    ld b, $1b

jr_01c_4c60:
    ldh a, [rSTAT]
    and $03
    jr z, jr_01c_4c60

jr_01c_4c66:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01c_4c66

    ld a, b
    ldh [rBGP], a
    ld a, e
    ldh [rLCDC], a

jr_01c_4c72:
    ld a, $7f
    ldh [rLYC], a
    xor a
    ld [$de2c], a
    pop de
    pop bc
    ret


Jump_01c_4c7d:
    call Call_01c_4af6
    ld hl, $9800
    ld bc, $0800
    xor a
    call Call_000_0186
    call Call_01c_4b55
    ld a, $8a
    ld de, $8b00
    call Call_000_020d
    ld hl, $c800
    ld de, $980e
    ld bc, $2002
    call Call_01c_486c
    call Call_01c_4b34
    ld hl, $56b1
    ld de, $9a00
    ld bc, $0210
    call Call_01c_4178
    ld hl, $56b1
    ld de, $9a10
    ld bc, $0210
    call Call_01c_4178
    ld hl, $5845
    ld de, $9c00
    ld bc, $1206
    call Call_01c_4178
    call Call_01c_6339
    call Call_01c_6369
    ld a, $00
    ld [$c63b], a
    ld a, $04
    ld [$c63a], a
    ld a, $78
    ldh [rWX], a
    ld a, $04
    ldh [rWY], a
    call Call_01c_72c3
    ld hl, $582d
    ld de, $9d61
    ld bc, $0404
    call Call_01c_4178
    ld a, [$4a1a]
    ld [$c81e], a

Jump_01c_4cf5:
    call Call_01c_4bd6
    call Call_000_01d1
    call Call_01c_7abf
    call Call_01c_7b2f
    call Call_01c_7add
    call Call_01c_47ce
    ld hl, $c63f
    inc [hl]
    jp Jump_01c_4cf5


    nop
    nop
    jr nz, jr_01c_4d52

    ld h, b
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    ld bc, $0000
    nop
    nop
    inc d
    ld [$182e], sp
    ld a, [de]
    inc [hl]
    ld h, $18
    inc e
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
    nop
    ld [de], a
    ld bc, $0206
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld [$0000], sp
    nop
    nop
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

jr_01c_4d52:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0102
    nop
    nop
    ld [$2007], sp
    rra
    ld b, b
    ccf
    add e
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $10
    ldh [rDIV], a
    ld hl, sp+$02
    db $fc
    pop bc
    cp $f8
    rst $38
    cp $ff
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
    nop
    nop
    add b
    ld b, b
    add b
    nop
    inc bc
    dec b
    inc bc
    ld bc, $0b07
    rlca
    inc bc
    rrca
    rla
    rrca
    rla
    rrca
    rlca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    and b
    ret nz

    add b
    ldh [$ffd0], a
    ldh [$ffc0], a
    ldh a, [$ffe8]
    ldh a, [$ffe8]
    ldh a, [$ffe0]
    ld hl, sp+$27
    rra
    cpl
    rra
    cpl
    rra
    rrca
    ccf
    ld c, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    db $e4
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp-$10
    db $fc
    ldh a, [c]
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$5ffc]
    ccf
    ld e, a
    ccf
    rra
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, [$fafc]
    db $fc
    ld hl, sp-$02
    ld sp, hl
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $bf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    rra
    ld a, a
    ld e, a
    ccf
    ld e, a
    ccf
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $f9
    cp $f8
    cp $fa
    db $fc
    ld a, [$5ffc]
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    rrca
    ccf
    cpl
    rra
    cpl
    rra
    daa
    rra
    ld a, [$fafc]
    db $fc
    ld a, [$f2fc]
    db $fc
    ldh a, [$fffc]
    db $f4
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp+$07
    rra
    rla
    rrca
    rla
    rrca
    inc bc
    rrca
    dec bc
    rlca
    ld bc, $0507
    inc bc
    nop
    inc bc
    ldh [$fff8], a
    add sp, -$10
    add sp, -$10
    ret nz

    ldh a, [$ffd0]
    ldh [$ff80], a
    ldh [$ffa0], a
    ret nz

    nop
    ret nz

    ld [bc], a
    ld bc, $0100
    ld bc, $0000
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
    ld a, a
    rst $38
    rra
    rst $38
    add e
    ld a, a
    ld b, b
    ccf
    jr nz, jr_01c_4ea9

    ld [$0007], sp
    nop
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
    nop
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    pop bc
    cp $02
    db $fc
    inc b

jr_01c_4ea9:
    ld hl, sp+$10
    ldh [rP1], a
    nop
    ld b, b
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_4eba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    ld bc, $0208
    ld de, $1000
    ld [bc], a
    ld de, $0801
    nop
    nop
    xor a
    ret nz

    ld d, b
    ld h, a
    dec hl
    or e
    sub h
    reti


    inc d
    add hl, de
    sub h
    reti


    jr z, @-$4b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    inc b
    inc b
    inc bc
    inc bc
    ld bc, $0000
    nop
    ld [hl], l
    ld a, b
    adc d
    adc h
    dec h
    ld d, $52
    dec sp
    ld d, a
    ld h, b
    xor a
    ret nz

    ret nz

    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ld hl, sp+$7c

jr_01c_4f1b:
    ld a, h
    add c
    inc a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [bc], a
    inc bc
    ld d, d
    dec sp
    dec h
    ld d, $8a
    adc h
    ld [hl], l
    ld a, b
    jr c, jr_01c_4eba

    nop
    nop
    ld e, a
    add b
    add b
    dec a
    add e
    add hl, sp
    ld bc, $f77b
    inc bc
    ldh a, [c]
    rlca
    rlca
    ld b, $0c
    ld b, $06
    inc c
    ld [$0208], sp
    ld de, $2305
    nop
    jr nz, jr_01c_4f5c

    inc hl
    ld [bc], a
    ld de, $0808

jr_01c_4f5c:
    rlca
    rla
    and b
    rst $08
    ld d, a
    ld h, a
    jr z, @-$4b

    jr z, jr_01c_4f99

    jr z, jr_01c_4f1b

    ld d, b
    ld h, a
    xor a
    ret nz

    ld e, a
    add b
    add hl, de
    adc h
    ret z

    db $dd
    inc e
    ret c

    ld [hl-], a
    sbc c
    db $10
    cp e
    add hl, sp
    or b
    or l
    inc sp
    ld h, b
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $3017
    nop
    nop
    ld a, [hl-]
    inc a
    ld b, l
    ld b, [hl]
    ld [de], a
    adc e
    add hl, hl

jr_01c_4f99:
    dec e
    ld bc, $2901
    dec e
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld a, h
    cp [hl]
    ld a, $40
    sbc [hl]
    ld b, c
    sbc h
    ld b, b
    sbc l
    inc sp
    ld h, b
    ld l, e
    ld h, a
    ret nz

    ld l, a
    ld h, a
    ret nz

    rst $10
    rst $08
    ret nz

    rst $18
    add a
    ret nz

    rst $10
    adc a
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld bc, $0f17
    ld [de], a
    adc e
    ld b, l
    ld b, [hl]
    ld a, [hl-]
    cp h
    sbc h
    add b
    add b
    add b
    nop
    nop
    rlca
    ld hl, sp-$10
    rst $38
    add c
    dec a
    ld a, l
    ld bc, $01f9
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $6203
    add c
    and b
    sbc a
    adc a
    add b
    xor a
    sbc a
    nop
    cp a
    sbc a
    nop
    ld e, a
    ccf
    nop
    ld a, a
    rra
    nop
    nop
    nop
    ld bc, $0100
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    ld e, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    cp l
    add hl, bc
    xor l
    dec b
    xor c
    inc hl
    jp c, $ffff

    rst $38
    rst $38
    rst $38
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
    cp $09
    ldh a, [$ffc2]
    db $fc
    pop af
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, d
    add a
    add [hl]
    ld a, c
    ld e, a
    ccf
    nop
    ld a, a
    nop
    nop
    or d
    inc c
    call c, $6101
    add c
    ld l, b
    add e
    ld [hl], e
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    cpl
    ld c, a
    ld l, a
    rst $30
    sub a
    db $db
    ret


    adc a
    ld b, $87
    add e
    inc bc
    dec b
    ld bc, $0060
    ld c, e
    sub d
    add a
    ld d, $75
    ld h, [hl]
    xor e
    ld l, l
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f4
    ei
    di
    rst $28
    rst $08
    rst $38
    cp h
    cp $70
    ld hl, sp-$40
    pop hl
    ld bc, $0086
    nop
    ld a, e
    db $fc
    db $fd
    cp $06
    adc a
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld a, c
    add e
    dec a
    pop bc
    nop
    ld bc, $c625
    ld [de], a
    call nz, Call_01c_5888
    and h
    ld c, b
    ld d, c
    and b
    ld e, l
    and b
    cp h
    pop bc
    or b
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0100
    inc c
    inc bc
    ld l, c
    ld b, $60
    nop
    add hl, bc
    ld b, $69
    ld b, $00
    nop
    dec b
    add d
    or [hl]
    add b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, b
    ld a, h
    ld a, l
    ld a, h
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    nop
    ld hl, $921e
    dec c
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    nop
    nop
    sbc h
    ld h, c
    sbc l
    ld h, c
    ld bc, $3901
    jp $837b


    and h
    ret z

    adc d
    reti


    sub c
    ret z

    xor h
    ret nz

    sub b
    ldh [$ff9d], a
    ldh [$ff39], a
    ret nz

    dec bc
    ret nz

    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $c082
    ld b, b
    ldh [$ffa0], a
    ld [hl], c
    ld e, a
    ccf
    ld d, $0e
    ld l, d
    ld b, $4f
    rst $18
    sbc a
    rst $18
    ld a, h
    cp $fe
    rst $38
    sbc a
    sbc a
    rrca
    rrca
    rla
    daa
    scf
    ld b, a
    rrca
    rrca
    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    nop
    add b
    ret nz

    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld [bc], a
    rlca
    call nz, Call_000_190f
    ld a, $e7
    ld hl, sp-$64
    ldh [rP1], a
    add b
    ld l, a
    nop
    ld d, b
    rrca
    ld [de], a
    and c
    ld [hl+], a
    ld h, c

jr_01c_5162:
    ld c, b
    add hl, de
    sub [hl]
    inc c
    add hl, bc
    rlca
    inc hl
    nop
    ret nz

    nop
    inc d
    ldh [rTIMA], a
    inc bc
    ld [de], a
    rlca
    ld de, $3107
    dec bc
    ld [hl+], a
    ld a, [de]
    ld l, d
    inc e
    ld c, e
    ld a, $56
    ccf
    ld e, $bf
    cp a
    cp [hl]
    inc a
    ld a, [hl]
    ld a, h
    ld a, l
    nop
    db $fd
    nop
    nop
    ld a, [hl]
    nop
    cp a
    nop
    cp $7f
    rst $38
    cp $fc
    cp $fc
    db $fd
    nop
    db $fd
    nop
    nop
    cp $00
    ld a, a
    nop
    cp $7e
    cp $fe
    db $fc
    cp $fd
    db $fc
    ld bc, $03fc
    nop
    db $fd
    nop
    ld a, [hl]
    nop
    rst $00
    rra
    xor a
    rra
    add c
    ld a, $82
    dec a
    and d
    dec e
    jr c, @+$05

    ld a, [de]
    ld bc, $0102
    db $e3
    ret nz

    db $e4
    add hl, sp
    jp nc, $e9fc

    cp $76
    db $fc
    inc a
    di
    ld a, [de]
    rst $28
    dec a
    rst $18
    ld d, $3f
    ld b, [hl]
    rra
    ld b, [hl]
    jr nz, jr_01c_5223

    ccf

jr_01c_51d6:
    ld h, a
    rra
    daa
    rra
    inc sp
    rrca
    jr jr_01c_51e4

    ld b, b
    add b
    jr nz, jr_01c_5162

    jr nc, jr_01c_5224

jr_01c_51e4:
    adc a
    ldh [rLCDC], a
    xor $8e
    sbc $70
    cp [hl]
    cp $7e
    nop
    nop
    rra
    nop
    jr nc, jr_01c_51f4

jr_01c_51f4:
    ld b, d
    add hl, hl
    add hl, de
    ld b, h
    ld c, h
    jp nz, $b002

    or c
    adc h
    nop
    nop
    rst $28
    nop
    or a
    ld b, b
    ld l, b
    inc sp
    ld [de], a
    cp c
    inc [hl]
    add hl, de
    adc b
    dec e
    ld c, b
    sbc l
    inc bc
    nop
    db $fd
    nop
    cp $00
    nop
    cp $ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $df
    ld c, a
    cp a
    add a

jr_01c_5223:
    ccf

jr_01c_5224:
    and e
    ld e, $21
    ld e, $33
    adc l
    db $db
    push bc
    ret c

    push bc
    nop
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $fc
    nop
    db $fc
    jp nz, Jump_01c_6738

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
    add c
    dec c
    or b
    jr nc, jr_01c_51d6

    jp nz, $0c4c

    ld d, c
    ld l, c
    ld [hl+], a
    db $10
    jr nc, jr_01c_526c

    rra
    adc b
    db $dd
    ld c, b
    sbc l
    sbc b
    dec e
    inc d
    add hl, sp
    or d
    add hl, sp
    dec hl
    ld [hl], b
    ld d, h
    db $e3

jr_01c_526c:
    xor a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ret nz

    rra
    ccf
    add b
    ld a, [hl]
    nop
    db $ec
    pop hl
    push af
    ldh a, [rSC]
    ld hl, sp+$00
    db $fc
    nop
    ld a, $3e
    add b
    nop
    ld a, l
    ei
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc bc
    add hl, bc
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld bc, $010a
    ld [$0007], sp
    nop
    dec h
    sbc b
    ld a, e
    ld sp, $314a
    ld c, d
    ld sp, $314a
    ld c, d
    ld sp, $009c
    nop
    nop
    ld [bc], a
    db $fc
    db $fd
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$01
    nop
    nop
    nop
    add b
    ld a, a
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
    rst $20
    nop
    nop
    nop
    ld d, b
    adc a
    rst $18
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld bc, $010a
    dec bc
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld sp, $314a
    ld c, d
    ld sp, $314a
    ld l, e
    db $10
    cp l
    nop
    nop
    nop
    nop
    nop
    dec b
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp-$02
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_01c_5312:
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld d, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    rst $18
    nop
    nop
    nop
    nop
    nop
    ld hl, $5210
    ld sp, $3053
    ld d, c
    jr nc, jr_01c_538f

    jr c, jr_01c_5388

    ccf
    ld h, b
    rra
    ccf
    nop
    inc b
    add sp, $6a
    db $ec
    ld a, [bc]
    db $ec
    ld [$1a0c], a
    inc e
    di
    db $fc
    ld bc, $fffe
    nop
    db $e3
    nop
    jr nz, jr_01c_5312

    ldh [$ffc0], a
    ld h, h
    jp Jump_01c_40ef


    ld h, b
    ld b, b
    ld c, e
    ld h, a
    ld h, b
    ld l, a
    ld a, [$0101]

jr_01c_5361:
    inc bc

jr_01c_5362:
    ld bc, $0103
    ei
    ld sp, hl
    inc bc
    nop
    inc bc
    ld a, [$00f9]
    db $fd
    nop
    nop
    nop
    nop

jr_01c_5372:
    nop
    nop
    inc bc
    ld bc, $0306

jr_01c_5378:
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc a
    ld bc, $0301
    push hl
    ld sp, hl
    nop
    nop

jr_01c_5388:
    ld [bc], a
    ld b, a
    sub c
    adc e
    inc bc
    add c
    nop

jr_01c_538f:
    nop
    sbc a

jr_01c_5391:
    ret nz

    ld hl, $299e
    sbc [hl]
    ld e, c
    ld a, $85
    ld b, $88
    or e
    jr nc, jr_01c_5391

    ld h, e
    ld h, b
    ld l, e
    ld h, a
    ld h, b
    ld l, a
    inc hl
    ld h, b
    ld [hl], l
    inc hl
    or b
    daa
    and e
    jr nc, jr_01c_5362

    inc sp
    jr nc, jr_01c_5361

    ld d, e
    ld b, b
    or e
    jr c, @-$7b

    add b
    rlca
    ld h, $1f
    xor [hl]

jr_01c_53ba:
    rra
    ld d, b
    adc a
    xor a
    ld b, b
    ret nc

    jr nz, jr_01c_5372

    scf
    sub b
    jr nc, jr_01c_5378

    ld de, $13d8
    ld d, b
    sbc b
    ld c, d
    sbc c
    ret c

    dec bc
    inc c
    ld [$fe00], sp
    cp $00
    cp $fe
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    ld a, $1f
    ld h, b
    jr nc, jr_01c_542c

    ld h, h
    add hl, bc
    ld [$0800], sp
    nop
    nop
    daa
    ld [hl], b
    ld [$5727], sp
    adc a
    inc bc
    rlca
    jr z, jr_01c_546d

    jr jr_01c_53ba

    inc sp
    rra
    add hl, bc
    inc c
    db $e4
    dec c
    inc l
    call nz, $c4b6
    sub h
    and $12
    ld h, [hl]
    sub [hl]
    ld [hl+], a
    dec de
    ld [hl+], a
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    nop
    cp a
    ld a, a
    nop
    rst $38

jr_01c_541b:
    ccf
    nop
    rst $18
    ccf
    nop
    ld a, a
    nop
    ld [$0009], sp
    ld b, h
    ld h, b
    ld h, b
    jr nc, jr_01c_5468

    rra
    nop

jr_01c_542c:
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec de
    inc sp
    sbc b
    ld e, b
    jr nz, @+$04

    ld bc, $914a
    dec [hl]
    ld [$045a], sp
    dec c
    ld [bc], a
    ld [$8b33], sp
    ld sp, $712d
    ld h, h
    ld sp, hl
    push hl
    ld hl, sp+$06
    ld hl, sp-$02
    nop
    nop
    nop
    rra
    nop
    ld l, a
    rra
    add b

jr_01c_5456:
    ccf
    rrca
    add b
    or a
    adc a
    ld b, b
    sbc a
    add a
    ld b, b
    ld l, e
    ld b, a
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, h

jr_01c_5468:
    ccf
    ret nz

jr_01c_546a:
    ld h, b
    add b
    ret z

jr_01c_546d:
    ld [de], a
    ld de, $1000
    nop
    nop
    ld c, a
    ldh [rNR11], a
    ld c, [hl]
    xor h
    rra
    ld b, $0f
    ld d, b
    ldh [$ff31], a
    halt
    ld h, [hl]
    ld a, $00
    ld l, a
    ld h, e
    jr nz, jr_01c_541b

    inc hl
    and b
    rla
    ret z

    db $10
    ld d, c
    adc b
    ld l, h
    add hl, bc
    jr nz, @+$4e

    nop
    db $10
    ld [de], a
    ld bc, $c088
    ret nz

    ld h, b
    ld a, h
    ccf
    nop
    nop
    nop
    nop
    nop

jr_01c_54a0:
    nop
    ld l, b
    ld [hl], $67
    jr nc, jr_01c_5456

    ld b, b
    ld [$9507], sp
    inc hl
    ld l, d
    ld de, $0835
    ld a, [de]
    inc b
    inc l
    ld b, h
    ld [hl-], a
    ld b, h
    inc d
    ldh [c], a
    reti


    ldh [c], a
    jp z, Jump_000_0df1

    ldh a, [$fffe]
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    rra
    rrca
    jr nc, jr_01c_54e3

    jr nz, jr_01c_54ff

    inc b
    inc b
    nop
    inc b
    nop
    nop
    sub e
    jr c, jr_01c_54db

    ld [de], a
    jr z, jr_01c_54a0

    nop
    inc bc

jr_01c_54db:
    inc d
    jr c, jr_01c_546a

    ld e, l
    add hl, de
    rrca
    nop
    inc b

jr_01c_54e3:
    inc b
    nop
    ld [hl+], a
    jr nc, jr_01c_5518

    jr jr_01c_5509

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec c
    sbc c
    ld c, h
    inc l
    db $10
    ld [bc], a
    ld bc, $c825
    ld a, [de]
    inc b
    dec c
    ld [bc], a

jr_01c_54ff:
    ld b, $01
    nop
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0001

jr_01c_5509:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    sbc a
    rra
    ccf
    add b

jr_01c_5518:
    add b
    nop
    cp [hl]
    sbc [hl]
    cp [hl]
    ld e, [hl]
    sbc a
    rst $08
    ld e, a
    nop
    nop
    nop
    cp a
    ccf
    ld a, a
    nop
    nop
    nop
    cp $7e
    cp $7e
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop
    cp a
    ld a, $7e
    nop
    nop
    nop
    cp $7e
    cp $7e
    ld a, a
    rst $38
    ld a, a
    inc bc
    nop
    ld e, l
    nop
    sbc $00
    ret nz

    ld e, $e1
    ld bc, $0ce2
    ld h, b
    ld [bc], a
    ld [hl], d
    inc b
    rrca
    rst $28
    rlca
    rst $28
    jp Jump_01c_6537


    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
    db $fc
    cp $00
    ld bc, $7e00
    nop
    dec a
    add c
    cp b
    add e
    ld [hl], b
    add a
    ldh [rP1], a
    add b
    rra
    ccf
    nop
    ld a, [hl]
    nop
    nop
    ldh [rP1], a
    rst $18
    sbc a
    ccf
    nop
    nop
    nop
    ld a, $1e
    ld a, $1e
    rra
    rrca
    rra
    ccf
    ccf
    ld e, a
    rra
    ret nz

    rra
    ret nz

    rra
    ldh [rP1], a
    ldh [c], a
    inc c
    ld h, b
    ld [bc], a
    ld [hl], d
    inc b
    rrca
    rrca
    rlca
    rrca
    inc bc
    rlca
    dec b
    inc bc
    ld a, [bc]
    ld bc, $0009
    ld a, [bc]
    nop
    ld a, [bc]
    ld bc, $007e
    inc a
    add b
    cp b
    add e
    ld [hl], a
    add a
    ldh [rIF], a
    add b
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    rra
    rra
    ccf
    nop
    nop
    nop
    ld a, $1e
    ld a, $1e
    rra
    rrca
    rra
    ld bc, $4000
    nop
    ret nz

    rra
    rst $18
    rra
    ldh [rSB], a
    ldh [c], a
    inc c
    ld h, b
    ld [bc], a
    ld [hl], d
    inc b
    rrca
    rrca
    rlca
    rrca
    inc bc
    rlca

jr_01c_55f7:
    dec b
    inc bc
    ld a, [bc]
    ld bc, $0005
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
    db $fc
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    inc a
    add c
    cp b
    add e
    ld [hl], b
    add a
    ldh [rIF], a
    sbc a
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld bc, $fdfc
    nop
    db $fd
    db $fc
    ld bc, $fcfd
    nop
    cp $fe
    nop
    cp $fe
    nop
    nop
    nop
    nop
    inc b
    ld b, $06
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    add c
    sub e
    add hl, bc
    ld b, l
    ld [bc], a
    nop
    nop
    db $e4
    ld sp, hl
    inc bc
    nop
    dec c
    nop
    nop
    nop
    ld e, $3f
    ld c, a
    adc [hl]
    inc d
    and $08
    pop af
    inc b
    ld sp, hl
    ldh [c], a
    db $fc
    ld hl, sp-$02
    db $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
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
    sbc a
    nop
    jr nc, jr_01c_55f7

    ld b, d
    adc c
    add hl, de
    call nz, $c2ac
    and d
    ret nz

    add c
    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    add b
    pop hl
    xor l
    ret nz

    and b
    jp nz, $cc02

    ld c, h
    sub c
    add hl, hl
    and d
    sub b
    jr nc, jr_01c_56af

    rra
    db $fd
    cp $f8
    cp $e2
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [c]
    ld d, $e6
    ld c, [hl]
    adc a

jr_01c_56af:
    rrca
    rra
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $04
    dec b
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    nop
    ld b, $07
    nop
    nop
    rlca
    inc b
    nop
    rlca
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    nop
    ld b, $00
    nop
    nop
    nop
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $00
    nop
    rlca
    nop
    nop
    nop
    nop
    ld b, $04
    nop
    ld b, $07
    nop
    nop
    rlca
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    rlca
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    nop
    ld b, $00
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rlca
    nop
    nop
    nop
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
    ld [$100d], sp
    ld [de], a
    inc d
    ld d, $18
    ld a, [de]
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec de
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc e
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec e
    inc c
    rrca
    ld de, $1513
    rla
    add hl, de
    ld e, $00
    nop
    nop
    nop
    ld a, [bc]
    ld c, $0e
    inc e
    dec b
    inc b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    ld c, h
    ld c, $0e
    ld c, $ab
    xor h
    ld c, $0e
    ld c, $ad
    xor [hl]
    inc e
    inc e
    inc e
    xor a
    sub a
    inc bc
    inc b
    ld c, d
    ld c, e
    ld c, h
    ld d, b
    ld d, c
    ld d, d
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    and d
    sub a
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    sbc [hl]
    sub a
    sbc b
    sbc a
    and b
    sbc e
    sbc h
    and c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    and d
    sub a
    sbc b
    and e
    and h
    sbc e
    and l
    and [hl]
    ld b, $1a
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    nop
    jr nz, jr_01c_586c

    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    dec h
    ld h, $27
    nop
    nop
    nop
    jr z, jr_01c_5885

    ld a, [hl+]
    nop
    nop

jr_01c_585f:
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    cpl
    jr nc, jr_01c_5899

    ld [hl-], a
    nop
    inc sp
    inc [hl]

jr_01c_586c:
    dec [hl]
    ld [hl], $37
    jr c, jr_01c_58aa

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
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_01c_5885:
    ld c, [hl]
    ld c, a
    ld d, b

Call_01c_5888:
    sub [hl]
    sub a
    sbc b
    sbc c
    ld d, l
    ld d, [hl]
    sbc d
    sbc e
    sbc h
    sbc l
    ld e, e
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_01c_5899:
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_01c_58aa:
    and a
    nop
    xor b
    xor c
    add b
    add c
    add d
    nop
    nop
    add e
    add h
    add l
    add [hl]
    nop
    nop
    add a
    adc b
    adc c
    adc d
    nop
    nop
    nop
    adc e
    adc h
    adc l
    nop
    nop
    nop
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    nop
    sub c
    sub d
    nop
    nop
    nop
    nop
    sub e
    sub h

jr_01c_58d5:
    nop
    nop
    nop
    nop
    nop
    sub l
    ld b, b
    add b
    jr nz, jr_01c_585f

    jr nc, @+$42

    adc a
    ldh [rSTAT], a
    xor $8f
    rst $18
    ld [hl], b
    cp a
    cp $7e
    nop
    nop
    nop
    nop
    ld [hl], $08
    add hl, bc
    ld b, $a1
    nop
    ld c, b
    db $10
    ld h, b
    ld [bc], a
    ld [$00e0], sp
    nop
    ld a, [bc]
    rlca
    jp nc, $2921

    nop
    ld d, [hl]
    add b
    and c
    nop
    ld b, b
    nop
    sub d
    nop
    inc bc
    nop
    db $fd
    nop
    cp [hl]
    ret nz

    ld b, b
    ld a, [$67b7]
    ld b, d
    ld bc, $0709
    ld c, a
    rra
    ld e, $fc
    nop
    db $fd
    jp Jump_01c_6738


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push de
    ret nz

    ld d, $cd
    add hl, bc
    add c
    xor a
    jr jr_01c_5934

jr_01c_5934:
    inc b
    db $10
    jr @+$03

    jr nz, jr_01c_593f

    inc bc
    inc h
    nop
    nop
    inc h

jr_01c_593f:
    or [hl]
    inc h
    jr nz, jr_01c_58d5

    adc b
    ld b, b
    ld [hl+], a
    ld bc, $0255
    ld [hl], $8c
    sub e
    rrca
    add hl, hl
    add a
    call nc, Call_000_0883
    ld b, a
    nop
    add b
    jp nc, Jump_000_2b8f

    sbc h
    ld e, d
    inc a
    ld l, b
    ld e, c
    inc b
    nop
    ld bc, $ff02
    ld l, b
    ld e, c
    ld b, $03
    inc b
    rst $38
    ld [hl], d
    ld e, c
    add a
    ld e, c
    and h
    ld e, c
    jp c, $eb59

    ld e, c
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld l, d
    stop
    ld [$106b], sp
    ld [$6af8], sp
    ld d, b
    nop
    ld [$106c], sp
    add b
    ld sp, hl
    rlca
    ld a, [$f805]
    ld hl, sp+$6d
    stop
    ld [$106e], sp
    nop
    ld [$106f], sp
    ld [$6df0], sp
    ld d, b
    nop
    ld [$1070], sp
    nop
    ld [$506f], sp
    add b
    rst $30
    ld [$07f8], sp
    ld hl, sp-$08
    ld [hl], c
    stop
    ld [$1072], sp
    nop
    ld [$1073], sp
    ld [$71f0], sp
    ld d, b
    nop
    ld [$1074], sp
    nop
    ld [$5073], sp
    add b
    ld sp, hl
    ld b, $fb
    inc b
    ld hl, sp-$08
    ld [hl], l
    stop
    ld [$1076], sp
    ld [$75f8], sp
    ld d, b
    nop
    ld [$1078], sp
    db $fc
    ld [$1077], sp
    add b
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $fc
    ld hl, sp+$79
    stop
    ld [$107a], sp
    nop
    ld [$107b], sp
    add b
    ld a, [$fc05]
    inc bc
    ld hl, sp-$08
    ld [hl], l
    stop
    ld [$1076], sp
    ld [$75f8], sp
    ld d, b
    nop
    ld [$1078], sp
    add b
    inc sp
    inc bc
    ld e, d
    nop
    nop
    inc bc
    inc bc
    ld b, $07
    dec de
    inc e
    ld l, $37
    db $dd
    rst $28
    cp e
    db $ed
    or [hl]
    rst $08
    ldh a, [$fff0]
    ld l, h
    call c, $bee6
    add $7e
    add e
    ld a, a
    ld [hl], e
    adc a
    dec a
    rst $10
    ld c, e
    cp a
    ret c

    rst $30
    cp a
    db $ec
    ld e, l
    ld l, d
    cpl
    inc [hl]
    ld a, [de]
    rra
    rrca
    rrca
    ld bc, $0001
    nop
    db $dd
    ld l, a
    or e
    ld a, a
    push bc
    ccf
    ld c, e
    cp a
    ld d, [hl]
    cp $be
    cp $fc
    db $fc
    nop
    nop
    rlca
    rlca
    ld a, [de]
    rra
    dec l
    ccf
    ld l, [hl]
    ld [hl], c
    ld e, a
    ld h, b
    ld sp, hl
    rst $00
    db $f4
    adc e
    or c
    sbc $80
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ffac]
    ld a, h
    rst $18
    ccf
    ld h, l
    sbc a
    ld hl, sp-$79
    and l
    db $db
    nop
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
    ldh [$ffe0], a
    or b
    ldh a, [$ffef]
    sbc c
    or [hl]
    rst $08
    ret z

    rst $30
    ld a, [$b5f5]
    ld a, [$fcdb]
    xor e
    db $fc
    ld a, l
    ld a, d
    dec a
    jp z, $8f74

    ld a, l
    sub a
    ld hl, sp+$0f
    ld hl, $a1df
    ld e, a
    ld e, e
    rst $28
    sub l
    ld l, a
    ldh a, [$ffd0]
    ld e, b
    add sp, -$18
    ret c

    adc b
    ld hl, sp-$28
    ld hl, sp-$50
    ldh a, [$ffd0]
    ldh a, [$ffe0]
    ldh [rNR21], a
    dec e
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    dec sp
    rst $18
    or a
    rst $38
    ld a, d
    cp $ec
    db $fc
    ldh a, [$fff0]
    nop
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
    ld b, $07
    add hl, de
    ld e, $37
    jr c, jr_01c_5aff

    jr nc, jr_01c_5b29

    ld l, b
    nop
    nop
    ld a, a
    ld a, a
    or a
    rst $08

jr_01c_5ad9:
    ld e, a
    and b
    rst $30
    jr jr_01c_5b29

    cp h
    db $db
    ld l, h
    ld [hl], e
    cp l
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_01c_5ad9

    ld e, b
    xor b
    and h
    ld e, h
    jp z, $667e

    cp [hl]
    sbc l
    ld [hl], a
    ld l, a
    ld d, b
    cp [hl]
    jp $d5ef


    xor c

jr_01c_5afa:
    rst $10
    ret c

    rst $20
    set 6, h

jr_01c_5aff:
    rst $30
    jp hl


    cp c
    or $85
    ld a, e
    ld sp, hl
    rlca
    ld h, l
    sbc [hl]
    ld l, l
    sbc [hl]
    sbc [hl]
    ld a, a
    or l
    rst $38
    ld l, d
    rst $38
    ld d, b
    rst $38
    or e
    rst $18
    ld l, l
    or a
    set 6, a
    dec de
    rst $20
    daa
    rst $18
    ld l, e
    sbc a
    sub $3e
    cp d
    cp $ea
    rst $38
    rst $10
    rst $38
    ld a, a
    ld a, a

jr_01c_5b29:
    dec a
    ccf
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    adc b
    rst $38
    ld d, b
    rst $28
    add h
    rst $38
    xor e
    rst $38
    sbc $ff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld l, h
    db $fc
    db $fc
    db $fc
    ret c

    ld a, b
    ldh [$ffe0], a
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    ld [$1106], sp
    dec b
    inc de
    inc bc
    inc h
    rrca
    dec hl
    ld c, $fc
    inc bc

jr_01c_5b65:
    nop
    nop

jr_01c_5b67:
    ld a, $3e
    pop af
    rst $08
    ld h, b
    sbc a
    cp h
    rst $38
    sub $6f
    dec l
    db $db
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_01c_5afa

    sub b
    ld b, b
    ret z

    jr nz, jr_01c_5b67

    jr nz, jr_01c_5b65

    ld [hl], b
    call nc, $092f
    dec bc
    dec l
    dec c
    ld l, $1f
    scf
    ccf
    cpl
    cpl
    jr nc, jr_01c_5bb0

    ccf
    rra
    rra
    cp a
    pop af
    ld e, l
    di
    ei
    and $ff
    db $fd
    db $fd
    ei
    ld sp, hl
    rlca
    inc bc
    rst $38
    db $fc
    rst $38
    ret nc

    or h
    ldh a, [$ff74]
    cp b
    call z, $bc74
    ld a, h
    or h
    ld a, h
    or h
    ld [hl], h

jr_01c_5bb0:
    cp h
    cp b
    ret z

    dec c
    ld c, $0a
    rrca
    dec c

jr_01c_5bb8:
    dec bc
    ld b, $05
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $28
    ldh [c], a
    rra
    push af
    adc [hl]
    ld a, l
    cp $83
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ldh a, [$ffe0]
    jr nz, jr_01c_5bb8

    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0a
    rrca
    dec c
    dec de
    ld e, $25
    rra
    inc hl
    inc c
    ld [de], a
    nop
    inc c
    nop
    nop
    pop af
    rst $28
    ldh [c], a
    rra
    push af
    adc [hl]
    ld a, h
    rst $38
    add d
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ldh a, [$ff80]
    ld h, b
    ld h, b
    sub b
    ldh a, [$ff08]
    ldh a, [$ff08]
    ld h, b
    sub b
    nop
    ld h, b
    nop
    nop
    dec c
    ld e, $1a
    cpl
    dec a
    ld c, e
    ld a, [hl]
    dec b
    ld a, a
    inc bc
    ccf
    ld b, b
    ld e, $21
    inc c
    ld [de], a
    pop af
    rst $28
    ldh [c], a
    rra
    push af
    adc [hl]
    ld a, a
    db $fc
    add e
    add b
    ld bc, $0082
    ld bc, $0000
    ld h, b
    sub b
    ldh a, [$ff08]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$04
    ldh a, [$ff08]
    ld h, b
    sub b
    nop
    nop
    ld b, b
    jr nz, jr_01c_5c48

jr_01c_5c48:
    ld h, b
    nop
    nop
    nop
    nop
    nop
    db $10
    ld bc, $0000
    nop
    nop
    nop
    db $10
    inc c
    jr c, jr_01c_5c5f

    inc d
    ld a, [hl+]
    ld [$0036], sp
    inc e

jr_01c_5c5f:
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
    ld [de], a
    nop
    ld b, $01
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [$0000], sp
    nop
    nop
    nop
    nop
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
    nop
    nop
    rlca
    rlca
    jr jr_01c_5cb0

    ld h, b
    ld a, a
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    adc a
    ldh a, [$ff3f]
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01c_5cb0:
    nop
    rst $38
    nop
    rlca
    rlca
    jr jr_01c_5cd6

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
    jr jr_01c_5cff

    jr nc, jr_01c_5d01

    jr nc, jr_01c_5cd7

    inc bc
    inc c

jr_01c_5cd6:
    rrca

jr_01c_5cd7:
    db $10
    rra
    jr nz, jr_01c_5d1a

    ld b, e
    ld a, h
    ld c, a
    ld [hl], b
    sbc a
    ldh [$ffbf], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_01c_5cff:
    ld [bc], a
    inc bc

jr_01c_5d01:
    ld [bc], a
    inc bc
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01c_5d1a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    db $db
    rst $20
    cp l
    jp $c3bd


    db $db
    rst $20
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    ld d, a
    ld e, l
    ld b, $00
    ld bc, $ff02
    ld d, a
    ld e, l
    inc bc
    inc bc
    inc b
    dec b
    rst $38
    ld d, a
    ld e, l
    inc b
    ld b, $07
    ld [$ff09], sp
    ld d, a
    ld e, l
    inc bc
    ld a, [bc]
    dec bc
    inc c
    dec bc
    rst $38
    ld d, a
    ld e, l
    inc b
    dec c
    ld c, $ff
    ld [hl], l
    ld e, l
    adc d
    ld e, l
    xor a
    ld e, l
    ret c

    ld e, l
    ld bc, $2a5e
    ld e, [hl]
    ld d, e
    ld e, [hl]
    ld e, h
    ld e, [hl]
    ld h, l
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    xor h
    ld e, [hl]
    pop bc
    ld e, [hl]
    sub $5e
    inc bc
    ld e, a
    ld sp, hl
    ld b, $f9
    dec b
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    add b
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    or $f6
    inc b
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld [$0af0], sp
    stop
    ld [$100b], sp
    add b
    rst $30
    ld a, [bc]
    or $09
    db $f4
    db $f4
    inc c
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$0ff0], sp
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    add b
    or $09
    db $f4
    ld [$f4f4], sp
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    ld [$1bf0], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    add b
    push af
    ld [$07f3], sp
    di
    di
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    ld [$1ef0], sp
    stop
    ld [$101f], sp
    nop
    ld [$1020], sp
    add b
    push af
    ld [$07f3], sp
    di
    di
    dec d
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    ld [$21f0], sp
    stop
    ld [$1022], sp
    nop
    ld [$1023], sp
    add b
    nop
    nop
    nop
    nop
    db $fc
    inc b
    inc h
    db $10
    add b
    nop
    nop
    nop
    nop
    db $fc
    inc b
    dec h
    db $10
    add b
    nop
    nop
    nop
    nop
    db $fc
    inc b
    ld h, $10
    add b
    nop
    nop
    nop
    nop
    db $fc
    inc b
    daa
    db $10
    add b
    nop
    nop
    nop
    nop
    ldh a, [$fff8]
    jr z, jr_01c_5e8f

    nop
    ld [$3028], sp
    ld [$29f0], sp
    stop
    ld [$102a], sp
    nop
    ld [$302a], sp

jr_01c_5e8f:
    nop
    ld [$3029], sp
    ld [$29e8], sp
    ld d, b
    nop
    ld [$502a], sp
    nop
    ld [$702a], sp
    nop
    ld [$7029], sp
    ld [$28f0], sp
    ld d, b
    nop
    ld [$7028], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    dec hl
    stop
    ld [$302b], sp
    ld [$2bf8], sp
    ld d, b
    nop
    ld [$702b], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc l
    stop
    ld [$302c], sp
    ld [$2cf8], sp
    ld d, b
    nop
    ld [$702c], sp
    add b
    nop
    db $10
    ldh a, [rNR10]
    ldh a, [rP1]
    dec l
    stop
    ld [$102e], sp
    ld [$2ff0], sp
    stop
    ld [$1030], sp
    nop
    ld [$1031], sp
    ld [$2ff0], sp
    ld d, b
    nop
    ld [$5030], sp
    nop
    ld [$5031], sp
    ld [$2df8], sp
    ld d, b
    nop
    ld [$502e], sp
    add b
    nop
    db $10
    ldh a, [rNR10]
    ldh a, [rP1]
    ld l, $30
    nop
    ld [$302d], sp
    ld [$31f8], sp
    jr nc, jr_01c_5f14

jr_01c_5f14:
    ld [$3030], sp
    nop
    ld [$302f], sp
    ld [$31f0], sp
    ld [hl], b
    nop
    ld [$7030], sp
    nop
    ld [$702f], sp
    ld [$2ef0], sp
    ld [hl], b
    nop
    ld [$702d], sp
    add b
    add hl, bc
    inc sp
    ld e, a
    nop
    nop
    nop
    nop
    ld e, $1e
    ld h, c
    ld a, a
    ld e, l
    ld h, e
    cp a
    pop bc
    rst $38
    add c
    rst $38
    add c
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

    ldh [$ff60], a
    ret nc

    ld [hl], b
    ldh a, [rSVBK]
    ld hl, $5c3f
    ld h, e
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld e, h
    ld h, e
    ld hl, $1e3f
    ld e, $a8
    cp b
    ld a, b
    add sp, $38
    add sp, $78
    add sp, $38
    add sp, $78
    add sp, -$58
    cp b
    db $10
    db $10
    jr c, @+$3a

    ld b, [hl]
    ld a, [hl]
    and c
    rst $18
    di
    adc a
    and c
    rst $18
    ld b, [hl]
    ld a, [hl]
    jr c, jr_01c_5fb9

    nop
    nop
    ld [$1408], sp
    inc e
    inc e
    inc d
    inc e
    inc d
    inc e
    inc d
    inc d
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    inc a
    inc a
    ld h, d
    ld a, [hl]
    ld [hl], c
    ld c, a
    ld h, d
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
    inc e
    inc e
    ld a, [hl-]
    ld h, $22
    ld a, $1c
    inc e
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    db $db
    rst $20

jr_01c_5fb9:
    cp l
    jp $c3bd


    db $db
    rst $20
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    push de
    ld e, a
    ld b, $00
    ld bc, $ff02
    push de
    ld e, a
    ld b, $03
    inc b
    rst $38
    push de
    ld e, a
    ld [$ff05], sp
    pop hl
    ld e, a
    or $5f
    inc bc
    ld h, b
    db $10
    ld h, b
    add hl, de
    ld h, b
    ld [hl+], a
    ld h, b
    ld hl, sp+$03
    ld a, [$f804]
    ld hl, sp+$00
    stop
    ld [$1001], sp
    rlca
    ld hl, sp+$00
    ld d, b
    nop
    ld [$5001], sp
    add b
    ld a, [$fb05]
    inc bc
    db $fc
    ld sp, hl
    ld [bc], a
    stop
    ld [$1003], sp
    add b
    ld a, [$fb07]
    inc b
    db $fc
    ld a, [$1004]
    nop
    add hl, bc
    dec b
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    inc b
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld b, $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    rlca
    db $10
    add b
    dec sp
    ld h, b
    ld b, c
    ld h, b
    ld b, a
    ld h, b
    ld c, l
    ld h, b
    ld d, e
    ld h, b
    ld e, c
    ld h, b
    ld e, a
    ld h, b
    ld h, l
    ld h, b
    ld l, e
    ld h, b
    inc b
    nop
    ld [$6bff], sp
    ld h, b
    inc b
    ld bc, $ff09
    ld l, e
    ld h, b
    inc b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld l, e
    ld h, b
    inc b
    inc bc
    dec bc
    rst $38
    ld l, e
    ld h, b
    inc b
    inc b
    inc c
    rst $38
    ld l, e
    ld h, b
    inc b
    dec b
    dec c
    rst $38
    ld l, e
    ld h, b
    inc b
    ld b, $0e
    rst $38
    ld l, e
    ld h, b
    inc b
    rlca
    rrca
    rst $38
    adc e
    ld h, b
    and l
    ld h, b
    cp a
    ld h, b
    reti


    ld h, b
    di
    ld h, b
    dec c
    ld h, c
    daa
    ld h, c
    ld b, c
    ld h, c
    sbc b
    ld h, b
    or d
    ld h, b
    call z, $e660
    ld h, b
    nop
    ld h, c
    ld a, [de]
    ld h, c
    inc [hl]
    ld h, c
    ld c, [hl]
    ld h, c
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
    jr nc, jr_01c_60c8

jr_01c_60c8:
    ld sp, hl
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    db $fc
    nop
    nop
    jr nc, jr_01c_60d5

jr_01c_60d5:
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

Call_01c_615b:
Jump_01c_615b:
    ld a, [$c639]
    or a
    jr nz, jr_01c_6168

    ld hl, $48ac
    xor a
    ld b, a
    jr jr_01c_616f

jr_01c_6168:
    ld hl, $48e5
    ld a, [$c321]
    ld b, a

jr_01c_616f:
    ld [$c31d], a
    ld a, b
    ld [$c320], a
    ld de, $c600
    ld bc, $0039
    call Call_000_0180
    ld hl, $c62d
    ld de, $c205
    ld bc, $0004
    call Call_000_0180
    ld a, $90
    ld [$c312], a
    ret


Call_01c_6191:
    ld a, [$deef]
    or a
    jp nz, Jump_01c_61a6

    ld a, [$de29]
    or a
    jr nz, jr_01c_61a6

    ld a, [$d740]
    bit 3, a
    call nz, Call_000_0237

Jump_01c_61a6:
jr_01c_61a6:
    ld hl, $d73a
    call Call_000_01e9
    ld hl, $d739
    ld a, [hl]
    or a
    jr z, jr_01c_6203

    ld a, [$df09]
    dec a
    jr z, jr_01c_61c2

    dec a
    jr nz, jr_01c_61c4

jr_01c_61bc:
    xor a
    ld [hl+], a
    ld [hl-], a
    jp Jump_01c_6203


jr_01c_61c2:
    ld [hl], $00

jr_01c_61c4:
    ld a, [hl]
    add a
    add a
    add a
    ld b, a
    ld [hl], $00
    ld hl, $de9e
    ld a, [hl]
    sub b
    jr nc, jr_01c_61d3

    xor a

jr_01c_61d3:
    ld [hl], a
    or a
    jr nz, jr_01c_61f2

    ld a, [$ccc2]
    or a
    jr z, jr_01c_61e1

    ld [hl], $01
    jr jr_01c_61bc

jr_01c_61e1:
    ld a, $01
    ld [$de29], a
    ld a, $03
    ld [$c63b], a
    xor a
    ld [$c63c], a
    jp Jump_01c_6382


jr_01c_61f2:
    rst $08
    inc de
    ld a, $88
    ld [$d73a], a
    ld hl, $c724
    ld bc, $000f
    xor a
    call Call_000_0174

Jump_01c_6203:
jr_01c_6203:
    ld a, [$c63b]
    or a
    jr z, jr_01c_6218

    dec a
    jp z, Jump_01c_62a1

    dec a
    jp z, Jump_01c_62bb

    dec a
    jp z, Jump_01c_6382

    jp Jump_01c_63b3


jr_01c_6218:
    ld a, [$c63c]
    dec a
    jr z, jr_01c_6241

    dec a
    jr z, jr_01c_625b

    dec a
    jr z, jr_01c_626c

    dec a
    jr z, jr_01c_6283

    dec a
    jr z, jr_01c_628f

    ld a, $00
    ld [$c72f], a
    ld a, $03
    ld [$c730], a
    call Call_01c_615b

Jump_01c_6237:
jr_01c_6237:
    ld hl, $c63c
    inc [hl]

Jump_01c_623b:
jr_01c_623b:
    call Call_01c_677b
    jp Jump_01c_67d9


jr_01c_6241:
    call Call_01c_65f4
    ld a, [$c734]
    bit 7, a
    jr nz, jr_01c_623b

    cp $40
    jr c, jr_01c_623b

    ld a, $ea
    ld [$c72b], a
    ld a, $ff
    ld [$c72c], a
    jr jr_01c_6237

jr_01c_625b:
    call Call_01c_65ec
    ld a, [$c730]
    bit 7, a
    jr z, jr_01c_623b

    ld a, $1e
    ld [$c311], a
    jr jr_01c_6237

jr_01c_626c:
    ld hl, $c311
    dec [hl]
    jr nz, jr_01c_623b

    ld a, $00
    ld [$de29], a
    ld a, $60
    ld [$c72f], a
    ld a, $ff
    ld [$c730], a
    jr jr_01c_6237

jr_01c_6283:
    call Call_01c_65f4
    ld a, [$c734]
    cp $24
    jr nc, jr_01c_623b

    jr jr_01c_6237

jr_01c_628f:
    ld a, $01
    ld [$c63a], a
    ld [$c739], a
    ld [$c738], a
    ld hl, $c63b
    inc [hl]
    jp Jump_01c_623b


Jump_01c_62a1:
    ld a, [$d74a]
    or a
    jr nz, jr_01c_62b5

    call Call_01c_6473
    ld a, [$d73a]
    cp $5a
    jp nc, Jump_01c_62b5

    call Call_01c_661b

Jump_01c_62b5:
jr_01c_62b5:
    call Call_01c_66fd
    jp Jump_01c_623b


Jump_01c_62bb:
    ld a, [$c63c]
    dec a
    jr z, jr_01c_62ec

    dec a
    jr z, jr_01c_6322

    dec a
    jp z, Jump_01c_6358

    xor a
    ld [$c727], a
    ld [$c728], a
    ld [$c729], a
    ld [$c72a], a
    ld a, $3c
    ld [$c311], a
    ld hl, $c737
    ld a, [hl]
    or a
    jr z, jr_01c_62e9

    xor a
    ld [hl], a
    ld a, [$c600]
    call Call_01c_681f

jr_01c_62e9:
    jp Jump_01c_6237


jr_01c_62ec:
    ld hl, $c311
    call Call_000_01e9
    jp nz, Jump_01c_623b

    ld b, $00
    ld hl, $c734
    ld a, [hl]
    cp $24
    jr z, jr_01c_6306

    inc b
    jr nc, jr_01c_6305

    inc [hl]
    jr jr_01c_6306

jr_01c_6305:
    dec [hl]

jr_01c_6306:
    ld hl, $c736
    ld a, [hl]
    cp $48
    jr z, jr_01c_6315

    inc b
    jr nc, jr_01c_6314

    inc [hl]
    jr jr_01c_6315

jr_01c_6314:
    dec [hl]

jr_01c_6315:
    ld a, b
    or a
    jp nz, Jump_01c_623b

    ld a, $3c
    ld [$c311], a
    jp Jump_01c_6237


jr_01c_6322:
    ld hl, $c311
    dec [hl]
    jp nz, Jump_01c_623b

    call Call_01c_6339
    ld a, $07
    call Call_01c_681f
    ld a, $23
    ld [$c311], a
    jp Jump_01c_6237


Call_01c_6339:
    ld hl, $c724
    ld bc, $000f
    xor a
    call Call_000_0174
    ld a, $53
    ld de, $86a0
    call Call_000_020d
    ld a, $6a
    ld [$c321], a
    ld a, $01
    ld [$c639], a
    jp Jump_01c_615b


Jump_01c_6358:
    ld hl, $c311
    dec [hl]
    jp nz, Jump_01c_623b

    call Call_01c_6369
    ld hl, $c63b
    dec [hl]
    jp Jump_01c_623b


Call_01c_6369:
    call Call_000_019b
    ld a, $06
    call Call_000_01a4
    ld [$c300], a
    ld a, $07
    call Call_000_01a4
    ld [$c301], a
    ld a, [$c600]
    jp Jump_01c_681f


Jump_01c_6382:
    ld a, [$c63c]
    dec a
    jr z, jr_01c_63a5

    ld a, [$c300]
    call Call_000_01a7
    ld a, [$c301]
    call Call_000_01a7
    rst $08
    dec bc
    ld a, $13
    call Call_000_01cb
    ld a, $f0
    ld [$c311], a
    ld hl, $c63c
    inc [hl]
    ret


jr_01c_63a5:
    ld hl, $c311
    dec [hl]
    ret nz

    call Call_01c_4bfe
    ld sp, $fffe
    jp Jump_000_02e8


Jump_01c_63b3:
    ld a, [$c63c]
    dec a
    jr z, jr_01c_63e9

    dec a
    jr z, jr_01c_6411

    dec a
    jr z, jr_01c_6427

    dec a
    jp z, Jump_01c_643b

    dec a
    jp z, Jump_01c_644e

    dec a
    jp z, Jump_01c_6463

    ld hl, $c737
    ld a, [hl]
    or a
    jr z, jr_01c_63da

    xor a
    ld [hl], a
    ld a, [$c600]
    call Call_01c_681f

jr_01c_63da:
    ld a, $1c
    ldh [rOBP0], a
    rst $08
    ld [hl], b
    ld a, [$00f0]
    ld [$c311], a
    jp Jump_01c_6237


jr_01c_63e9:
    ld hl, $c311
    dec [hl]
    jp nz, Jump_01c_623b

    ld de, $0100
    ld a, [$c736]
    cp $44
    jr z, jr_01c_640a

    jr c, jr_01c_63ff

    ld de, $ff00

jr_01c_63ff:
    ld a, e
    ld [$c731], a
    ld a, d
    ld [$c732], a
    jp Jump_01c_6237


jr_01c_640a:
    ld hl, $c63c
    inc [hl]
    jp Jump_01c_641f


jr_01c_6411:
    ld hl, $c731
    call Call_01c_6605
    ld a, [$c736]
    cp $44
    jp nz, Jump_01c_623b

Jump_01c_641f:
    ld a, $3c
    ld [$c311], a
    jp Jump_01c_6237


jr_01c_6427:
    ld hl, $c311
    dec [hl]
    jp nz, Jump_01c_623b

    ld a, $00
    ld [$c72f], a
    ld a, $01
    ld [$c730], a
    jp Jump_01c_6237


Jump_01c_643b:
    call Call_01c_65fa
    ld a, [$c734]
    cp $c0
    jp c, Jump_01c_623b

    ld a, $3c
    ld [$c311], a
    jp Jump_01c_6237


Jump_01c_644e:
    ld hl, $c311
    dec [hl]
    jp nz, Jump_01c_623b

    call Call_01c_4bfe
    call Call_01c_48a3
    ld a, $78
    ld [$c311], a
    jp Jump_01c_6237


Jump_01c_6463:
    ld a, [$cca8]
    or a
    jp nz, Jump_01c_623b

    xor a
    ld [$de29], a
    ld a, $0d
    jp Jump_000_0297


Call_01c_6473:
    ld a, [$c726]
    or a
    jr z, jr_01c_6484

    ld a, [$d741]
    bit 0, a
    jr nz, jr_01c_6484

    xor a
    ld [$c726], a

jr_01c_6484:
    ld a, [$c30c]
    ld [$c30d], a
    ld b, a
    ld a, [$d741]
    srl a
    srl a
    srl a
    srl a
    ld [$c30c], a
    ld c, a
    or a
    jr nz, jr_01c_64a5

    ld a, [$d741]
    res 0, a
    ld [$d741], a

jr_01c_64a5:
    ld hl, $c725
    ld a, [hl]
    or a
    jr z, jr_01c_64b1

    dec [hl]
    jr nz, jr_01c_6522

    ld b, $0f

jr_01c_64b1:
    ld hl, $c724
    ld a, [hl]
    or a
    jr z, jr_01c_64b9

    dec [hl]

jr_01c_64b9:
    ld a, c
    or a
    jr nz, jr_01c_64ed

    ld a, b
    or a
    jr nz, jr_01c_64c3

    jr jr_01c_6534

jr_01c_64c3:
    ld hl, $c727
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c602]
    ld e, a
    ld a, [$c603]
    ld d, a
    inc de
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_01c_64df

    ld hl, $c606
    jr jr_01c_64e2

jr_01c_64df:
    ld hl, $c608

jr_01c_64e2:
    ld de, $c729
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_01c_6534

jr_01c_64ed:
    ld a, [$c724]
    or a
    jr nz, jr_01c_6522

    ld a, [$c726]
    or a
    jr nz, jr_01c_6516

    ld a, [$d740]
    bit 0, a
    jr z, jr_01c_6516

    rst $08
    ld b, c
    ld a, $01
    ld [$c726], a
    ld a, $08
    ld [$c725], a
    ld a, $01
    ld [$c724], a
    ld hl, $c60c
    jr jr_01c_6519

jr_01c_6516:
    ld hl, $c60a

jr_01c_6519:
    ld de, $c729
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

jr_01c_6522:
    ld a, [$c30c]
    ld e, a
    ld d, $00
    ld hl, $65a9
    add hl, de
    ld a, [hl]
    bit 7, a
    jr nz, jr_01c_6534

    ld [$c310], a

jr_01c_6534:
    ld hl, $c727

Jump_01c_6537:
    ld de, $c729
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl], a
    bit 7, a
    jr z, jr_01c_654b

    xor a
    ld hl, $c727
    ld [hl+], a
    ld [hl], a

jr_01c_654b:
    ld a, [$c72a]
    bit 7, a
    jr nz, jr_01c_6573

    ld a, [$c724]
    or a
    jr nz, jr_01c_655d

    ld hl, $c602
    jr jr_01c_6560

jr_01c_655d:
    ld hl, $c604

jr_01c_6560:
    ld de, $c727
    ld a, [de]
    inc de
    sub [hl]
    inc hl
    ld a, [de]
    sbc [hl]
    dec de
    dec hl
    jr c, jr_01c_6573

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

jr_01c_6573:
    ld a, [$c727]
    ld e, a
    ld a, [$c728]
    ld d, a
    ld a, [$c310]
    ld hl, $c72f
    call Call_000_024c
    call Call_01c_65f4
    ld hl, $c734
    ld c, $10
    ld a, [$c312]
    ld b, a
    call Call_01c_659d
    ld hl, $c736
    ld c, $10
    ld b, $78
    jp Jump_01c_659d


Call_01c_659d:
Jump_01c_659d:
    ld a, [hl]
    cp c
    jr nc, jr_01c_65a4

    ld a, c
    ld [hl], a
    ret


jr_01c_65a4:
    cp b
    ret c

    ld a, b
    ld [hl], a
    ret


    rst $38
    dec b
    dec c
    rst $38
    ld bc, $0f03
    rst $38
    add hl, bc
    rlca
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01c_65b9:
    push hl
    ld hl, $c72d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c731]
    ld e, a
    ld a, [$c732]
    ld d, a
    add hl, de
    ld a, l
    ld [$c731], a
    ld a, h
    ld [$c732], a
    pop hl

Call_01c_65d2:
    push hl
    ld hl, $c72b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c72f]
    ld e, a
    ld a, [$c730]
    ld d, a
    add hl, de
    ld a, l
    ld [$c72f], a
    ld a, h
    ld [$c730], a
    pop hl
    ret


Call_01c_65ec:
    call Call_01c_65d2
    jr jr_01c_65fa

    call Call_01c_65b9

Call_01c_65f4:
    ld hl, $c72f
    jp Jump_01c_6600


Call_01c_65fa:
jr_01c_65fa:
    ld hl, $c72f
    jp Jump_01c_6605


Call_01c_6600:
Jump_01c_6600:
    call Call_01c_6605
    inc hl
    inc hl

Call_01c_6605:
Jump_01c_6605:
    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, a
    ld l, c
    add hl, de
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    ret


Call_01c_661b:
    ld hl, $c737
    ld a, [hl]
    or a
    jr z, jr_01c_662b

    dec [hl]
    jr nz, jr_01c_662b

    ld a, [$c600]
    call Call_01c_681f

jr_01c_662b:
    ld a, [$c30e]
    ld [$c30f], a
    ld b, a
    ld a, [$d741]
    and $02
    srl a
    ld [$c30e], a
    ld c, a
    or a
    jr nz, jr_01c_66b1

    ld a, b
    or a
    ret z

    ld a, [$d75c]
    cp $1e
    jr nc, jr_01c_664f

    xor a
    ld [$d75c], a
    ret


jr_01c_664f:
    ld b, $01
    cp $5a
    jr c, jr_01c_6656

    inc b

jr_01c_6656:
    ld a, [$c720]
    or a
    jr z, jr_01c_6661

    xor a
    ld [$d75c], a
    ret


jr_01c_6661:
    ld a, $01
    ld [$c720], a
    dec b
    jr nz, jr_01c_6681

    rst $08
    ld c, $21
    ld sp, $11c6
    add hl, de
    jp nz, Jump_000_0401

    nop
    call Call_000_0180
    ld hl, $c621
    ld de, $c61d
    ld b, $01
    jr jr_01c_6697

jr_01c_6681:
    rst $08
    rrca
    ld hl, $c635
    ld de, $c219
    ld bc, $0004
    call Call_000_0180
    ld hl, $c623
    ld de, $c61b
    ld b, $03

jr_01c_6697:
    push de
    ld a, b
    ld [$c317], a
    ld de, $c700
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ld de, $c31e
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_01c_66ee

jr_01c_66b1:
    ld a, b
    or a
    jr z, jr_01c_66c3

    ld a, [$c720]
    or a
    ret nz

    ld hl, $d75c
    ld a, [hl]
    cp $5a
    ret nc

    inc [hl]
    ret


jr_01c_66c3:
    ld a, [$d740]
    bit 1, a
    ret z

    ld a, [$c737]
    or a
    ret nz

    ld hl, $c721
    ld b, $00
    ld a, [hl+]
    or a
    jr z, jr_01c_66e0

    inc b
    ld a, [hl+]
    or a
    jr z, jr_01c_66e0

    inc b
    ld a, [hl+]
    or a
    ret nz

jr_01c_66e0:
    rst $08
    dec c
    ld a, b
    add $21
    ld e, a
    ld a, $c7
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

jr_01c_66ee:
    xor a
    ld [$d75c], a
    ld a, $0c
    ld [$c737], a
    ld a, [$c601]
    jp Jump_01c_681f


Call_01c_66fd:
    ld bc, $140a
    ld a, [$d75c]
    cp $1e
    jr nc, jr_01c_6711

    xor a
    ld [$d763], a
    ld b, $00
    ld d, $1c
    jr jr_01c_6735

jr_01c_6711:
    ld hl, $d75d
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_01c_671e

    xor a
    ld [hl+], a
    inc [hl]
    dec hl

jr_01c_671e:
    inc hl
    ld a, [hl]
    and $03
    ld e, a
    ld a, [$d75c]
    cp $5a
    ld hl, $6755
    jr c, jr_01c_6731

    ld hl, $6759
    ld b, c

jr_01c_6731:
    ld d, $00
    add hl, de
    ld d, [hl]

jr_01c_6735:
    ld a, d
    ldh [rOBP0], a

Jump_01c_6738:
    ld [$ccae], a
    ld hl, $cca8
    res 1, [hl]
    ld hl, $d763
    ld a, b
    or a
    jr z, jr_01c_6752

    inc [hl]
    ld a, [hl]
    cp $01
    jr nz, jr_01c_6750

    rst $08
    db $10
    ld a, [hl]

jr_01c_6750:
    cp b
    ret c

jr_01c_6752:
    ld [hl], $00
    ret


    db $10
    inc d
    jr @+$1e

    inc e
    ld h, b
    or h
    ret z

Call_01c_675d:
    ld a, $e0
    ld [$c734], a
    ld a, $48
    ld [$c736], a
    call Call_01c_677b
    xor a
    ld [$d724], a
    ld [$d70a], a
    ld a, $01
    ld [$d703], a
    ld c, $05
    jp Jump_01c_6813


Call_01c_677b:
    ld de, $42cf
    ld a, [$c639]
    or a
    jr z, jr_01c_6787

    ld de, $445e

jr_01c_6787:
    ld a, [$c734]
    ld [$d722], a
    ld [$c3ed], a
    ld c, a
    add $30
    ld [$d72f], a
    ld [$c3ef], a
    ld hl, $d742
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    add $30
    ld [$d746], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    add $30
    ld [$d747], a
    ld a, [$c736]
    ld [$d725], a
    ld [$c3ee], a
    ld c, a
    add $30
    ld [$d730], a
    ld [$c3f0], a
    ld a, [de]
    inc de
    add c
    add $30
    ld [$d748], a
    add $d0
    cp $f0
    jr c, jr_01c_67cf

    xor a

jr_01c_67cf:
    ld [hl+], a
    ld a, [de]
    add c
    ld [hl+], a
    add $30
    ld [$d749], a
    ret


Jump_01c_67d9:
    ld a, [$c300]
    call Call_000_019e
    ld hl, $d3ea
    ld [hl], $00
    ld a, [$d703]
    or a
    jr z, jr_01c_67ec

    set 5, [hl]

jr_01c_67ec:
    ld a, [$d73a]
    or a
    jr z, jr_01c_67f5

    bit 2, a
    ret nz

jr_01c_67f5:
    xor a
    ldh [$ffab], a
    ld a, [$c734]
    ldh [$ff9b], a
    ld a, [$c736]
    ldh [$ff9c], a
    ld a, [$c30b]
    ldh [$ffac], a
    ld hl, $c306
    ld a, [$c309]
    ld c, a
    ld b, $01
    jp Jump_01c_4222


Call_01c_6813:
Jump_01c_6813:
    ld a, c
    ld [$c309], a
    ld hl, $c306
    ld b, $00
    jp Jump_01c_4222


Call_01c_681f:
Jump_01c_681f:
    ld [$c309], a
    ld de, $41ad
    call Call_000_0171
    ld hl, $c306
    jp Jump_01c_403c


Call_01c_682e:
    ld a, [$c63b]
    cp $03
    ret nc

    ld a, [$c301]
    call Call_000_019e
    call Call_01c_6952
    ld a, $09
    ld [$c202], a
    xor a
    ld [$c318], a
    ld hl, $c721
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    xor a
    ld [$c314], a
    ld b, a

jr_01c_6856:
    ld a, [hl]
    or a
    jr z, jr_01c_6869

    dec a
    jr z, jr_01c_688f

    dec a
    jr z, jr_01c_68bb

    dec a
    jr z, jr_01c_68dc

    dec a
    jp z, Jump_01c_6906

    xor a
    ld [hl], a

Jump_01c_6869:
jr_01c_6869:
    ld hl, $c314
    inc [hl]
    ld b, [hl]
    ld hl, $cc40
    inc [hl]
    ld hl, $cc40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp $03
    jr c, jr_01c_6856

    ld a, [$c202]
    ld l, a
    ld h, $c2
    xor a
    ld [hl], a
    ld a, [$c318]
    ld [$c203], a
    ld [$c204], a
    ret


jr_01c_688f:
    ld a, [$c60f]
    ld e, a
    ld a, [$c610]
    ld d, a
    push hl
    ld a, b
    add a
    add a
    add a
    add $08
    ld l, a
    ld h, $c7
    ld a, [$c611]
    ld [hl+], a
    ld a, [$c612]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c734]
    add e
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$c736]
    add d
    ld [hl], a
    pop hl
    inc [hl]

jr_01c_68bb:
    ld a, b
    add a
    add a
    add a
    add $08
    ld l, a
    ld h, $c7
    call Call_01c_6605
    ld a, l
    add $05
    ld l, a
    ld a, [hl+]
    ld e, a
    cp $c0
    jr nc, jr_01c_6906

    inc l
    ld a, [hl]
    ld d, a
    call Call_01c_6911
    call Call_01c_6935
    jr jr_01c_6869

jr_01c_68dc:
    ld a, b
    add a
    add a
    add a
    add $08
    ld l, a
    ld h, $c7
    call Call_01c_6600
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld e, a
    cp $c0
    jr c, jr_01c_68f5

    cp $e0
    jr c, jr_01c_6906

jr_01c_68f5:
    inc l
    ld a, [hl]
    ld d, a
    cp $90
    jr c, jr_01c_6900

    cp $f0
    jr c, jr_01c_6906

jr_01c_6900:
    call Call_01c_6911
    jp Jump_01c_6869


Jump_01c_6906:
jr_01c_6906:
    ld hl, $cc40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], $00
    jp Jump_01c_6869


Call_01c_6911:
    ld hl, $ff8e
    ld a, d
    ldh [$ff9c], a
    ld b, a
    ld a, [$c618]
    add b
    ld [hl+], a
    ld a, e
    ldh [$ff9b], a
    ld b, a
    ld a, [$c617]
    add b
    ld [hl+], a
    ld a, [$c60e]
    ld b, a
    ld a, [$c31d]
    add b
    ld [hl+], a
    ld a, $10
    ld [hl], a
    jp Jump_000_01a1


Call_01c_6935:
    ld a, [$c202]
    ld l, a
    ld h, $c2
    ld a, [$cc40]
    ld [hl+], a
    ldh a, [$ff9b]
    ld [hl+], a
    ldh a, [$ff9c]
    ld [hl], a
    ld a, [$c202]
    add $03
    ld [$c202], a
    ld hl, $c318
    inc [hl]
    ret


Call_01c_6952:
    xor a
    ld [$c217], a
    ld [$c218], a
    ld [$c21d], a
    ld hl, $c720
    ld a, l
    ld [$c315], a
    ld a, h
    ld [$c316], a
    ld a, [hl]
    or a
    ret z

    dec a
    jr z, jr_01c_697a

    dec a
    jr z, jr_01c_69a1

    dec a
    jp z, Jump_01c_69bd

    dec a
    jp z, Jump_01c_6a31

    xor a
    ld [hl], a

jr_01c_697a:
    push hl
    ld a, [$c31e]
    ld e, a
    ld a, [$c31f]
    ld d, a
    ld hl, $c319
    call Call_01c_403c
    pop hl
    inc [hl]
    ld a, [$c734]
    ld b, a
    ld a, [$c61f]
    add b
    ld [$c705], a
    ld a, [$c736]
    ld b, a
    ld a, [$c620]
    add b
    ld [$c707], a

jr_01c_69a1:
    ld hl, $c700
    call Call_01c_6605
    ld a, [$c705]
    ldh [$ff9b], a
    ld e, a
    cp $c0
    jp nc, Jump_01c_6a31

    ld a, [$c707]
    ldh [$ff9c], a
    call Call_01c_69e8
    jp Jump_01c_6a1a


Jump_01c_69bd:
    ld hl, $c700
    call Call_01c_6600
    ld a, [$c705]
    ldh [$ff9b], a
    ld e, a
    cp $c0
    jr c, jr_01c_69d1

    cp $e0
    jr c, jr_01c_6a31

jr_01c_69d1:
    ld a, [$c707]
    ldh [$ff9c], a
    ld d, a
    cp $90
    jr c, jr_01c_69df

    cp $f0
    jr c, jr_01c_6a31

jr_01c_69df:
    ld a, $00
    ld [$d3ea], a
    ld a, $04
    jr jr_01c_69fb

Call_01c_69e8:
    ld a, $20
    ld [$d3ea], a
    ld a, [$c31e]
    ld e, a
    ld a, [$c31f]
    ld d, a
    ld hl, $c319
    call Call_01c_4045

jr_01c_69fb:
    push af
    ld a, [$c619]
    ld e, a
    ld a, [$c61a]
    ld d, a
    pop af
    call Call_000_0171
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    ld a, $00
    ldh [$ffab], a
    ld a, [$c320]
    ldh [$ffac], a
    jp Jump_000_02be


Jump_01c_6a1a:
    ld a, $01
    ld [$c217], a
    ld [$c218], a
    ld hl, $c21d
    ld a, $20
    ld [hl+], a
    ldh a, [$ff9b]
    ld [hl+], a
    ldh a, [$ff9c]
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Jump_01c_6a31:
jr_01c_6a31:
    ld hl, $c315
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], $00
    ret


Call_01c_6a3a:
    ld a, [$c63a]
    dec a
    jp z, Jump_01c_6a4e

    dec a
    jp z, Jump_01c_6c2d

    dec a
    jp z, Jump_01c_6e3c

    dec a
    jp z, Jump_01c_70cd

    ret


Jump_01c_6a4e:
    call Call_01c_6a54
    jp Jump_01c_6b8f


Call_01c_6a54:
    ld a, [$c81c]
    dec a
    jr z, jr_01c_6a6e

    dec a
    jr z, jr_01c_6ad4

    xor a
    ld [$c81b], a
    inc a
    ld [$c81c], a
    ld [$c818], a
    ld a, [$492d]
    ld [$c81e], a

jr_01c_6a6e:
    ld a, [$c81e]
    dec a
    jr z, jr_01c_6a78

    ld [$c81e], a
    ret


jr_01c_6a78:
    ld a, [$c818]
    ld c, a
    ld hl, $492d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld d, a
    inc hl
    ld a, [hl]
    bit 7, a
    jr z, jr_01c_6a93

    ld a, $02
    ld [$c81c], a
    ret


jr_01c_6a93:
    ld e, a
    inc hl
    ld a, [hl]
    ld [$c81e], a
    ld a, c
    add $03
    ld [$c818], a
    ld hl, $492a
    ld a, e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld c, a
    ld a, [$c81b]
    add c
    cp $13
    jr nc, jr_01c_6aba

    call Call_01c_6ae3
    bit 7, a
    jr z, jr_01c_6acd

jr_01c_6aba:
    ld hl, $c81b
    set 7, [hl]
    ld a, [$c818]
    sub $03
    ld [$c818], a
    ld a, $01
    ld [$c81e], a
    ret


jr_01c_6acd:
    ld hl, $c819
    inc [hl]
    jp Jump_01c_6b5e


jr_01c_6ad4:
    ld a, [$c819]
    or a
    ret nz

    xor a
    ld [$c81c], a
    ld a, $02
    ld [$c63a], a
    ret


Call_01c_6ae3:
    ld b, $00
    ld hl, $c81a
    ld a, [hl]
    cp $ff
    ret z

jr_01c_6aec:
    srl a
    jr nc, jr_01c_6af3

    inc b
    jr jr_01c_6aec

jr_01c_6af3:
    ld a, [$c81b]
    and $7f
    add c
    ld [$c81b], a
    push de
    ld a, b
    and $07
    add $60
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, [hl]
    or c
    ld [hl], a
    ld a, b
    pop de
    ret


Call_01c_6b10:
    ld a, [$c823]
    add $10
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, [de]
    call Call_000_01a7
    ld hl, $cc40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and $03
    add $2a
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, [$c81b]
    and $7f
    sub b
    ld [$c81b], a
    ld [hl], $00
    ld a, l
    and $3f
    srl a
    srl a
    ld b, a
    ld hl, $c81a
    and $07
    add $60
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    xor $ff
    ld c, a
    ld a, [hl]
    and c
    ld [hl], a
    ld hl, $c819
    dec [hl]
    ret


Jump_01c_6b5e:
    ld [$c823], a
    add a
    add a
    add $00
    ld l, a
    ld h, $c9
    ld a, e
    or $80
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $9f
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, e
    add $2a
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    call Call_000_01a4
    ld l, a
    ld a, [$c823]
    add $10
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, l
    ld [de], a
    ret


Jump_01c_6b8f:
    ld hl, $c900
    xor a
    ld [$c823], a

Jump_01c_6b96:
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld a, [hl+]
    bit 7, a
    jr z, jr_01c_6c19

    and $03
    ld [$c820], a
    ld de, $491e
    call Call_000_0171
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ldh [$ff9b], a
    ldh [$ffa4], a
    cp $c0
    jr c, jr_01c_6bc5

    cp $e0
    jr nc, jr_01c_6bc5

    call Call_01c_6b10
    jr jr_01c_6c19

jr_01c_6bc5:
    ld a, [hl]
    ldh [$ff9c], a
    ldh [$ffa6], a
    ld a, $00
    ld [$d3ea], a
    ld a, $00
    ldh [$ffab], a
    ld a, [$c313]
    ldh [$ffac], a
    ld a, [$c823]
    add $10
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, [de]
    ld l, a
    ld a, [$c820]
    ld b, a
    ld a, $02
    sub b
    ld de, $5d57
    call Call_000_0171
    push de
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    ld a, l
    call Call_000_0210
    xor a
    ld [$c3e2], a
    ld a, $02
    ld [$cc47], a
    ld a, [$c820]
    add $24
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    ld [$c3e0], a
    pop de
    call Call_01c_797a

jr_01c_6c19:
    ld hl, $c823
    inc [hl]
    ld hl, $cc40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    add $04
    cp $20
    ret nc

    ld l, a
    jp Jump_01c_6b96


Jump_01c_6c2d:
    call Call_01c_6c33
    jp Jump_01c_47ce


Call_01c_6c33:
    ld a, [$c81c]
    dec a
    jr z, jr_01c_6c51

    dec a
    jr z, jr_01c_6c7e

    ld hl, $c800
    ld bc, $0040
    xor a
    call Call_000_0174
    ld a, $01
    ld [$c81c], a
    ld a, $78
    ld [$c81e], a
    ret


jr_01c_6c51:
    ld hl, $c81e
    call Call_000_01e9
    ret nz

    ld a, [$c330]
    ld b, a
    ld a, [$c819]
    sub b
    cp $02
    ret nc

    call Call_01c_6c92
    ret c

    ld a, [$c333]
    cp $08
    jr nc, jr_01c_6c74

    ld a, $78
    ld [$c81e], a
    ret


jr_01c_6c74:
    ld a, $3c
    ld [$c81e], a
    ld hl, $c81c
    inc [hl]
    ret


jr_01c_6c7e:
    ld a, [$c819]
    or a
    ret nz

    ld hl, $c81e
    dec [hl]
    ret nz

    ld a, $03
    ld [$c63a], a
    xor a
    ld [$c81c], a
    ret


Call_01c_6c92:
    ld a, $09
    call Call_01c_4743
    ret c

    ld l, c
    ld [hl], $ac
    inc hl
    ld [hl], $6c
    or a
    ld hl, $c333
    inc [hl]
    ret


Call_01c_6ca4:
    call Call_01c_47a2
    ld a, $96
    jp Jump_01c_481e


    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_01c_6d3b

    ld a, $30
    add c
    ld l, a
    call Call_000_0168
    and $0f
    ld [hl], a
    ld de, $4968
    call Call_000_0171
    ld a, $0d
    add c
    ld l, a
    ld [hl], e
    add $02
    ld l, a
    ld [hl], d
    add $0a
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $02
    add $18
    ld l, a
    ld [hl], $3c
    ld a, $2c
    add c
    ld l, a
    call Call_000_0168
    and $03
    ld [hl], a
    ld de, $4988
    call Call_000_0171
    ld a, $2d
    add c
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $2c
    add c
    ld l, a
    ld b, [hl]
    add $03
    ld l, a
    ld a, b
    add $90
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    ld [hl], a
    call Call_01c_7e7f
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    ld de, $5d57
    call Call_000_01dd
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $14
    add $06
    ld l, a
    ld [hl], $ff
    call Call_01c_7e67
    ld a, $18
    add c
    ld l, a
    ld [hl], $04
    ld a, $03
    add c
    ld l, a
    ld [hl], $1f
    ld a, $2a
    add c
    ld l, a
    inc [hl]

Jump_01c_6d38:
jr_01c_6d38:
    jp Jump_01c_6dac


Jump_01c_6d3b:
    ld a, $32
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_01c_6d51

    call Call_01c_6e21
    jr c, jr_01c_6d51

    rst $08
    ld b, e
    ld a, $32
    add c
    ld l, a
    ld [hl], $3c

jr_01c_6d51:
    call Call_01c_7e67
    ld de, $5d3a
    call Call_000_015f
    call Call_01c_7eed
    call Call_01c_4839
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    jr nz, jr_01c_6d38

    push hl
    add $04
    ld l, a
    ld a, [hl]
    pop hl
    ld [hl], a
    call Call_000_024f
    dec b
    ld a, $31
    add c
    ld l, a
    ld e, [hl]
    bit 7, e
    jr z, jr_01c_6d7e

    ld e, b
    jr jr_01c_6d8c

jr_01c_6d7e:
    ld a, b
    sub e
    and $0f
    jr z, jr_01c_6d8c

    cp $08
    jr nc, jr_01c_6d8b

    inc e
    jr jr_01c_6d8c

jr_01c_6d8b:
    dec e

jr_01c_6d8c:
    ld a, e
    and $0f
    ld b, a
    ld a, $31
    add c
    ld l, a
    ld [hl], b
    inc b
    ld a, $2d
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_01c_6d38


Jump_01c_6dac:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    ldh [$ffa4], a
    inc hl
    ld a, [hl]
    ldh [$ff9c], a
    ldh [$ffa6], a
    ld e, $00
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01c_6dc7

    ld e, $20

jr_01c_6dc7:
    ld a, e
    ld [$d3ea], a
    ld e, $00
    ld a, $21
    add c
    ld l, a
    call Call_000_01e9
    bit 2, [hl]
    jr z, jr_01c_6dda

    ld e, $10

jr_01c_6dda:
    ld a, e
    ldh [$ffab], a
    ld a, [$c313]
    ldh [$ffac], a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld de, $5d57
    call Call_000_0171
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    push de
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    call Call_000_0210
    pop de
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_01c_7929
    ret nz

    rst $08
    rra
    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    push de
    call Call_01c_6ca4
    pop de
    call Call_000_02fa
    pop hl
    ld c, l
    ret


Call_01c_6e21:
    ld a, [$c330]
    cp $01
    jr c, jr_01c_6e2a

    scf
    ret


jr_01c_6e2a:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$c331], a
    inc l
    ld a, [hl]
    ld [$c332], a
    ld a, $01
    jp Jump_01c_7719


Jump_01c_6e3c:
    ld a, [$c81c]
    dec a
    jr z, jr_01c_6e6e

    dec a
    jp z, Jump_01c_6ecc

    ld hl, $c800
    ld bc, $0040
    xor a
    call Call_000_0174
    call Call_01c_706f
    ld a, $3c
    ld [$c81e], a
    ld a, $01
    ld [$c738], a
    ld a, $01
    ld [$d74a], a
    ld [$de29], a
    xor a
    ld [$c81d], a
    ld hl, $c81c
    inc [hl]
    ret


jr_01c_6e6e:
    ld a, [$c81d]
    dec a
    jr z, jr_01c_6e84

    dec a
    jr z, jr_01c_6ea8

    ld hl, $c81e
    dec [hl]
    ret nz

    call Call_01c_4894
    ld hl, $c81d
    inc [hl]
    ret


jr_01c_6e84:
    ld a, [$cca8]
    and $fd
    jr nz, jr_01c_6ea5

    xor a
    ld [$c739], a
    ld hl, $9800
    ld bc, $0400
    xor a
    call Call_000_0186
    call Call_01c_4bd9
    ld hl, $cca8
    res 1, [hl]

Jump_01c_6ea1:
    ld hl, $c81d
    inc [hl]

Jump_01c_6ea5:
jr_01c_6ea5:
    jp Jump_01c_7086


jr_01c_6ea8:
    ld a, [$cca8]
    and $fd
    jr nz, jr_01c_6ea5

    xor a
    ld [$d74a], a
    ld [$de29], a
    ld hl, $4998
    ld a, [hl+]
    ld [$c81e], a
    ld a, [hl]
    ld [$d7d2], a
    xor a
    ld [$c81d], a
    ld hl, $c81c
    inc [hl]
    jp Jump_01c_6ea5


Jump_01c_6ecc:
    ld a, [$c81d]
    dec a
    jr z, jr_01c_6f03

    dec a
    jp z, Jump_01c_6fff

    xor a
    ld [$d7d1], a
    ld hl, $c81e
    dec [hl]
    jp nz, Jump_01c_6ea5

    ld a, $0c
    ld [$c336], a
    ld a, $01
    ld [$c335], a
    ld a, $a0
    ld [$c829], a
    ld a, $00
    ld [$c82a], a
    ld a, $14
    ld [$c824], a
    call Call_01c_7017
    call Call_01c_7017
    jp Jump_01c_6ea1


jr_01c_6f03:
    ld hl, $c335
    dec [hl]
    jr nz, jr_01c_6f17

    ld [hl], $04
    ld hl, $c336
    call Call_000_01e9
    jr nz, jr_01c_6f15

    jr nc, jr_01c_6f17

jr_01c_6f15:
    rst $08
    ld d, c

jr_01c_6f17:
    ld a, [$c829]
    add $fb
    ld [$c829], a
    ld l, a
    ld a, [$c82a]
    adc $ff
    ld [$c82a], a
    ld h, a
    ld a, $a0
    sub l
    ld [$c82d], a
    ld [$d7d1], a
    ld e, a
    ld a, $00
    sbc h
    ld [$c82e], a
    ld d, a
    push de
    ld a, [$c824]
    ld b, a
    ld a, e
    srl d
    rra
    srl d
    rra
    srl d
    rra
    add $16
    cp b
    call nc, Call_01c_7017
    pop hl
    ld de, $01a0
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr c, jr_01c_6f8f

    ld hl, $9940
    ld bc, $0100
    xor a
    call Call_000_0186
    ld hl, $c818
    inc [hl]
    ld a, [hl]
    cp $05
    jr c, jr_01c_6f76

    ld a, $64
    ld [$c81e], a
    jp Jump_01c_6ea1


jr_01c_6f76:
    add a
    add $98
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    ld [$c81e], a
    inc de
    ld a, [de]
    ld [$d7d2], a
    ld hl, $c81d
    dec [hl]
    jp Jump_01c_6ea5


jr_01c_6f8f:
    ld a, $01
    ld [$cc46], a
    ld a, $02
    ld [$cc47], a
    ld a, $08
    ld [$c3e0], a
    xor a
    ld [$c3e1], a
    ld [$c3e2], a
    ld a, [$c829]
    ld e, a
    ld b, a
    ld a, [$c82a]
    ld d, a
    bit 7, a
    jr z, jr_01c_6fb4

    ld b, $00

jr_01c_6fb4:
    ld a, e
    add $00
    ld e, a
    ld c, a
    ld a, d
    adc $01
    ld d, a
    bit 7, a
    jp nz, Jump_01c_6ea5

    or a
    jr nz, jr_01c_6fca

    ld a, e
    cp $a0
    jr c, jr_01c_6fcc

jr_01c_6fca:
    ld c, $a0

jr_01c_6fcc:
    ld a, c
    sub b
    jp z, Jump_01c_6ea5

    srl a
    ld [$c801], a
    cpl
    ld [$c800], a
    add c
    ldh [$ffa4], a
    ld a, [$d7d2]
    ld b, a
    ld a, $50
    sub b
    jr nc, jr_01c_6fe8

    ld a, $00

jr_01c_6fe8:
    ld c, a
    ldh [$ffa6], a
    xor a
    ld [$c802], a
    ld a, $90
    sub b
    sub c
    ld [$c803], a
    ld de, $c800
    call Call_01c_797a
    jp Jump_01c_6ea5


Jump_01c_6fff:
    ld hl, $c81e
    call Call_000_01e9
    jp nz, Jump_01c_6ea5

    xor a
    ld [$c81c], a
    ld [$c81d], a
    ld a, $04
    ld [$c63a], a
    jp Jump_01c_6ea5


Call_01c_7017:
    ld b, $00
    ld a, [$c824]
    ld c, a
    sub $14
    jr c, jr_01c_703c

    ld b, $01
    jr z, jr_01c_703c

    ld b, $02
    dec a
    jr z, jr_01c_703c

    ld a, c
    ld b, $05
    sub $33
    jr z, jr_01c_703c

    ld b, $00
    jr nc, jr_01c_703c

    ld b, $04
    inc a
    jr z, jr_01c_703c

    ld b, $03

jr_01c_703c:
    ld a, b
    add a
    add a
    add a
    add $b1
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, e
    ld [$ce53], a
    ld a, d
    ld [$ce54], a
    ld a, c
    and $1f
    add $40
    ld l, a
    ld h, $99
    ld b, $08

jr_01c_705a:
    ld a, [de]
    call Call_000_0189
    inc de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_01c_705a

    ld hl, $c824
    inc [hl]
    ret


Call_01c_706f:
    ld a, $10
    call Call_000_01a4
    ld [$c302], a
    ld hl, $49a2
    ld de, $c900
    ld b, $40

jr_01c_707f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_01c_707f

    ret


Jump_01c_7086:
    ld a, [$c302]
    call Call_000_019e
    ld a, $80
    ldh [$ffab], a
    ld a, [$c313]
    ldh [$ffac], a
    ld hl, $c900
    ld b, $10

Jump_01c_709a:
    push bc
    ld a, [hl]
    ld b, a
    add $94
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc hl
    ld a, [hl]
    sub c
    ld [hl+], a
    ldh [$ff9b], a
    ld a, [hl+]
    ldh [$ff9c], a
    push hl
    ld a, b
    ld de, $70c5
    call Call_000_0171
    ld c, e
    ld b, d
    call Call_01c_4138
    pop hl
    inc hl
    pop bc
    dec b
    jp nz, Jump_01c_709a

    ret


    ld [hl], d
    ld e, [hl]
    ld l, c
    ld e, [hl]
    ld d, a
    ld e, [hl]
    ld h, b
    ld e, [hl]

Jump_01c_70cd:
    ld hl, $c837
    call Call_000_01e9
    ld a, [$c81c]
    dec a
    jp z, Jump_01c_7248

    dec a
    jp z, Jump_01c_725a

    ld a, [$c81d]
    dec a
    jr z, jr_01c_7122

    dec a
    jp z, Jump_01c_7186

    dec a
    jp z, Jump_01c_719b

    dec a
    jp z, Jump_01c_71b0

    dec a
    jp z, Jump_01c_71ca

    dec a
    jp z, Jump_01c_7214

    xor a
    ld [$ccc2], a
    ld [$dd00], a
    ld [$dd01], a
    ld [$ccc1], a
    ld hl, $c800
    ld bc, $0040
    xor a
    call Call_000_0174
    call Call_01c_4894
    xor a
    ld [$d75c], a
    inc a
    ld [$d74a], a
    ld [$de29], a
    ld hl, $c81d
    inc [hl]
    ret


jr_01c_7122:
    ld a, [$cca8]
    and $fd
    ret nz

    ld a, [$c302]
    call Call_000_01a7
    ld a, [$c63b]
    cp $03
    jr nc, jr_01c_713e

    xor a
    ld [$c63c], a
    ld a, $02
    ld [$c63b], a

jr_01c_713e:
    ld hl, $9800
    ld bc, $0400
    xor a
    call Call_000_0186
    ld hl, $583d
    ld de, $9874
    call Call_01c_4174
    ld a, $00
    ld [$c829], a
    ld a, $a0
    ld [$c82a], a
    ld a, $00
    ld [$c82b], a
    ld a, $40
    ld [$c82c], a

Jump_01c_7165:
    ld hl, $c81d
    inc [hl]

jr_01c_7169:
    ld a, [$c82a]
    ld b, a
    ld a, $a0
    sub b
    ld [$d7d1], a
    ld a, [$c82a]
    add $f8
    ld [$c312], a

Jump_01c_717b:
    ld a, [$c82c]
    ld b, a
    ld a, $80
    sub b
    ld [$d7d2], a
    ret


Jump_01c_7186:
    ld a, [$c63b]
    dec a
    ret nz

    call Call_01c_4bd9
    ld a, $cc
    ld [$c825], a
    ld a, $ff
    ld [$c826], a
    jp Jump_01c_7165


Jump_01c_719b:
    ld hl, $c825
    call Call_01c_6605
    ld a, [$c82a]
    cp $70
    jr nz, jr_01c_7169

    ld a, $3c
    ld [$c81e], a
    jp Jump_01c_7165


Jump_01c_71b0:
    ld hl, $c81e
    dec [hl]
    ret nz

    ld a, $00
    ld b, $04
    ld c, $0a
    call Call_01c_7601
    ld a, $78
    ld [$c81e], a
    xor a
    ld [$de29], a
    jp Jump_01c_7165


Jump_01c_71ca:
    call Call_01c_7614
    ld hl, $c81e
    call Call_000_01e9
    jr z, jr_01c_71fc

    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_01c_71f1

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


jr_01c_71f1:
    ld a, $13
    ld [$c836], a
    ld a, $02
    ld [$dd00], a
    ret


jr_01c_71fc:
    call Call_01c_7639
    ret nz

    xor a
    ld [$d74a], a
    ld [$de29], a
    ld a, $01
    ld [$c73a], a
    ld a, $78
    ld [$c81e], a
    jp Jump_01c_7165


Jump_01c_7214:
    ld hl, $c81e
    dec [hl]
    jr nz, jr_01c_7251

    ld a, $01
    ld [$c326], a
    ld a, $b4
    ld [$c323], a
    xor a
    ld [$c325], a
    ld [$c322], a
    ld a, [$c3b4]
    push af
    ld a, $bc
    ld [$c3b4], a
    ld a, $1f
    call Call_000_020a
    pop af
    ld [$c3b4], a
    ld hl, $c81c
    inc [hl]
    xor a
    ld [$c81d], a
    jp Jump_01c_7251


Jump_01c_7248:
    call Call_01c_763f
    call Call_01c_7302
    call Call_01c_47ce

Jump_01c_7251:
jr_01c_7251:
    call Call_01c_751a
    call Call_01c_72f5
    jp Jump_01c_717b


Jump_01c_725a:
    call Call_01c_7263
    call Call_01c_47ce
    jp Jump_01c_717b


Call_01c_7263:
    ld a, [$c81d]
    dec a
    jr z, jr_01c_7289

    dec a
    jr z, jr_01c_72b6

    ld a, $3c
    ld [$c81e], a
    ld de, $0080
    ld a, [$c82c]
    cp $40
    jr c, jr_01c_727e

    ld de, $ff80

jr_01c_727e:
    ld a, e
    ld [$c827], a
    ld a, d
    ld [$c828], a
    jp Jump_01c_7165


jr_01c_7289:
    ld hl, $c81e
    call Call_000_01e9
    ret nz

    ld a, [$c82c]
    cp $40
    jr z, jr_01c_729d

    ld hl, $c827
    jp Jump_01c_6605


jr_01c_729d:
    ld a, $01
    ld [$d74a], a
    ld a, $04
    ld [$c63b], a
    xor a
    ld [$c63c], a
    ld [$c837], a
    ld a, $1b
    ld [$c73b], a
    jp Jump_01c_7165


jr_01c_72b6:
    ret


Call_01c_72b7:
    ld a, $02
    ld b, $02
    ld c, $02
    call Call_01c_7601
    call Call_01c_7614

Call_01c_72c3:
    ld hl, $58db
    ld bc, $0040
    ld de, $9510
    call Call_000_0183
    ld hl, $591b
    ld bc, $0040
    ld de, $9570
    jp Jump_000_0183


Call_01c_72db:
    ld hl, $99c0
    ld bc, $0014
    ld d, $06

jr_01c_72e3:
    push de
    push bc
    push hl
    xor a
    call Call_000_0186
    pop hl
    ld de, $0020
    add hl, de
    pop bc
    pop de
    dec d
    jr nz, jr_01c_72e3

    ret


Call_01c_72f5:
    ld a, [$c836]
    sla a
    sla a
    sla a
    ld [$dd01], a
    ret


Call_01c_7302:
    ld a, [$c325]
    dec a
    jr z, jr_01c_7336

    dec a
    jr z, jr_01c_7342

    dec a
    jr z, jr_01c_736a

    dec a
    jp z, Jump_01c_739d

    dec a
    jp z, Jump_01c_73f9

    dec a
    jp z, Jump_01c_7459

    dec a
    jp z, Jump_01c_746a

    ld hl, $c326
    dec [hl]
    ret nz

    ld a, [$c324]
    or a
    ret nz

    ld a, $00
    ld b, $02
    ld c, $0a
    call Call_01c_7601

Jump_01c_7331:
    ld hl, $c325
    inc [hl]
    ret


jr_01c_7336:
    call Call_01c_7614
    ret nz

    ld a, $0a
    ld [$c326], a
    jp Jump_01c_7331


jr_01c_7342:
    ld hl, $c326
    call Call_000_01e9
    ret nz

    rst $08
    dec [hl]
    ld a, $78
    ld [hl], a
    ld a, $01
    ld [$c328], a
    ld a, $0c
    call Call_000_01a4
    ld [$c304], a
    ld de, $5d49
    ld hl, $c327
    call Call_01c_403c
    call Call_01c_74ac
    jp Jump_01c_7331


jr_01c_736a:
    call Call_01c_74ac
    ld hl, $c326
    dec [hl]
    ret nz

    ld a, $0a
    call Call_000_01a4
    ld [$c305], a
    ld a, $50
    ld [$c329], a
    ld a, $70
    ld [$c32a], a
    ld hl, $57e9
    ld de, $99d2
    call Call_01c_4174
    ld a, [$c329]
    ldh [$ffa4], a
    call Call_01c_73e0
    ld a, $01
    ld [$c335], a
    jp Jump_01c_7331


Jump_01c_739d:
    ld hl, $c335
    dec [hl]
    jr nz, jr_01c_73a7

    ld [hl], $04
    rst $08
    ld d, c

jr_01c_73a7:
    xor a
    ldh [$ffa4], a
    ld a, [$c329]
    add $fc
    ld [$c329], a
    cp $51
    jr c, jr_01c_73cb

    cp $f0
    jr nc, jr_01c_73d0

    ld a, $01
    ld [$c32f], a
    ld a, $0a
    ld [$c326], a
    ld hl, $c325
    inc [hl]
    jp Jump_01c_7441


jr_01c_73cb:
    ld a, [$c329]
    ldh [$ffa4], a

jr_01c_73d0:
    ld a, [$c329]
    srl a
    srl a
    srl a
    inc a
    inc a
    ld b, $01
    call Call_01c_747e

Call_01c_73e0:
    ld bc, $5eda
    ld a, [$c329]
    ldh [$ff9b], a
    call Call_01c_74f8
    ld a, [$c32a]
    ldh [$ff9b], a

Jump_01c_73f0:
    call Call_01c_74f8
    call Call_01c_75c6
    jp Jump_01c_74ac


Jump_01c_73f9:
    ld a, [$c32f]
    or a
    jr z, jr_01c_740c

    xor a
    ld [$c32f], a
    ld hl, $57ff
    ld de, $99d4
    call Call_01c_4174

jr_01c_740c:
    ld hl, $c326
    call Call_000_01e9
    jr nz, jr_01c_7441

    ld a, [$c32a]
    add $fc
    ld [$c32a], a
    cp $71
    jr c, jr_01c_7441

    cp $f0
    jr nc, jr_01c_7441

    ld a, $01
    ld [$c835], a
    ld a, $5a
    ld [$c326], a
    ld a, [$c305]
    call Call_000_01a7
    ld a, [$c304]
    call Call_000_01a7
    xor a
    ld [$c328], a
    jp Jump_01c_7331


Jump_01c_7441:
jr_01c_7441:
    ld a, [$c32a]
    srl a
    srl a
    srl a
    inc a
    ld b, $00
    call Call_01c_747e
    ld bc, $5f07
    ld a, [$c32a]
    jp Jump_01c_73f0


Jump_01c_7459:
    ld hl, $c326
    dec [hl]
    ret nz

    ld a, $02
    ld b, $04
    ld c, $0a
    call Call_01c_7601
    jp Jump_01c_7331


Jump_01c_746a:
    call Call_01c_7614
    ret nz

    ld a, $00
    ld [$c835], a
    ld a, $f0
    ld [$c326], a
    ld a, $00
    ld [$c325], a
    ret


Call_01c_747e:
    add $06
    and $1f
    ld c, a
    ld a, b
    add a
    add a
    add $e1
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld hl, $99c0
    ld a, l
    add c
    ld l, a
    cp $d3
    jr z, jr_01c_7499

    ret nc

jr_01c_7499:
    ld b, $04

jr_01c_749b:
    ld a, [de]
    call Call_000_0189
    inc de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_01c_749b

    ret


Call_01c_74ac:
Jump_01c_74ac:
    ld a, [$c304]
    call Call_000_019e
    ld a, [$c82a]
    add $16
    ldh [$ff9b], a
    ldh [$ffa4], a
    ld a, [$c82c]
    add $00
    ldh [$ff9c], a
    ldh [$ffa6], a
    xor a
    ld [$d3ea], a
    ldh [$ffab], a
    ld a, [$c313]
    ldh [$ffac], a
    ld de, $5d49
    ld hl, $c319
    call Call_01c_4045
    ld de, $5d57
    call Call_000_0171
    push de
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    call Call_000_02be
    pop de
    ld a, $02
    ld [$cc47], a
    xor a
    ld [$c3e1], a
    ld [$c3e2], a
    jp Jump_01c_797a


Call_01c_74f8:
    ldh [$ff9b], a
    ld a, [$c305]
    call Call_000_019e
    ld a, [$c82c]
    add $00
    ldh [$ff9c], a
    ldh [$ffa6], a
    ld a, $00
    ld [$d3ea], a
    ld a, $00
    ldh [$ffab], a
    ld a, [$c313]
    ldh [$ffac], a
    jp Jump_000_02be


Call_01c_751a:
    xor a
    ld [$d3ea], a
    ld a, [$0002]
    ld [$cc47], a
    xor a
    ld [$c3e1], a
    ld [$c3e2], a
    inc a
    ld [$cc46], a
    ld a, $9c
    ldh [$ffa4], a
    ld a, $40
    ldh [$ffa6], a
    ld de, $49e2
    call Call_01c_797a
    ld a, [$c835]
    or a
    jr z, jr_01c_75b6

    ld a, [$c836]
    ld [$cc46], a
    ld a, $00
    ld [$cc47], a
    ld a, $1f
    ld [$c3e1], a
    ld a, [$c837]
    ld [$c3e2], a
    ld a, [$c82a]
    ldh [$ffa4], a
    ld a, [$c82c]
    ldh [$ffa6], a
    ld a, [$c831]
    cp $01
    jr c, jr_01c_75b6

    cp $04
    jr nc, jr_01c_75b6

    ld de, $49f0
    call Call_000_0171
    call Call_01c_797a
    ld a, [$c3e2]
    ld [$c837], a
    ld a, [$cc46]
    ld [$c836], a
    or a
    jr nz, jr_01c_75b6

    rst $08
    nop
    rst $08
    ld d, $af
    ld [$dd01], a
    inc a
    ld [$cc49], a
    ld [$ccc2], a
    ld [$de29], a
    ld a, $02
    ld [$c81c], a
    ld a, [$c82a]
    add $18
    ld e, a
    ld a, [$c82c]
    add $00
    ld d, a
    ld a, $01
    ld b, $0c
    call Call_000_01cb
    call Call_01c_72db
    call Call_01c_72b7

jr_01c_75b6:
    ld b, $1b
    ld a, [$c837]
    bit 1, a
    jr z, jr_01c_75c1

    ld b, $06

jr_01c_75c1:
    ld a, b
    ld [$c73b], a
    ret


Call_01c_75c6:
    ld a, $01
    ld [$cc46], a
    ld a, $02
    ld [$cc47], a
    ld a, $08
    ld [$c3e0], a
    xor a
    ld [$c3e1], a
    ld [$c3e2], a
    ldh a, [$ffa4]
    ld e, a
    ldh a, [$ff9b]
    add $10
    ld d, a
    sub e
    srl a
    ld [$c32c], a
    cpl
    ld [$c32b], a
    add d
    ldh [$ffa4], a
    ld a, $f0
    ld [$c32d], a
    ld a, $10
    ld [$c32e], a
    ld de, $c32b
    jp Jump_01c_797a


Call_01c_7601:
    ld [$c831], a
    ld d, a
    ld a, b
    ld [$c832], a
    ld a, c
    ld [$c833], a
    ld [$c834], a
    ld a, d
    jp Jump_01c_762a


Call_01c_7614:
    ld hl, $c834
    dec [hl]
    jr nz, jr_01c_7639

    ld a, [$c833]
    ld [hl], a
    ld hl, $c831
    inc [hl]
    ld a, [hl]
    cp $05
    jr nz, jr_01c_762a

    ld a, $01
    ld [hl], a

Jump_01c_762a:
jr_01c_762a:
    ld hl, $49e6
    call Call_000_016e
    ld de, $99f5
    ld bc, $0404
    call Call_01c_4178

Call_01c_7639:
jr_01c_7639:
    ld hl, $c831
    ld a, [hl+]
    cp [hl]
    ret


Call_01c_763f:
    ld a, [$c322]
    dec a
    jr z, jr_01c_766d

    dec a
    jr z, jr_01c_767c

    dec a
    jr z, jr_01c_7689

    dec a
    jr z, jr_01c_76b4

    dec a
    jr z, jr_01c_76d0

    dec a
    jp z, Jump_01c_76e9

    dec a
    jp z, Jump_01c_76fa

    ld hl, $c323
    dec [hl]
    ret nz

    ld a, $30
    ld [$c827], a
    ld a, $00
    ld [$c828], a

Jump_01c_7668:
    ld hl, $c322
    inc [hl]
    ret


jr_01c_766d:
    ld hl, $c827
    call Call_01c_6605
    ld a, [$c82c]
    cp $70
    ret c

    jp Jump_01c_7668


jr_01c_767c:
    ld a, [$c819]
    or a
    ret nz

    ld a, $1e
    ld [$c323], a
    jp Jump_01c_7668


jr_01c_7689:
    ld hl, $c323
    call Call_000_01e9
    ret nz

    ld a, [$c328]
    or a
    ret nz

    ld a, $01
    ld [$c324], a
    ld a, $32
    ld [$c323], a
    rst $08
    inc l
    call Call_01c_7808
    ld hl, $c818
    ld a, [hl]
    sub $04
    ret nz

    ld [hl], a
    ld a, $1e
    ld [$c323], a
    jp Jump_01c_7668


jr_01c_76b4:
    ld a, [$c819]
    or a
    jr nz, jr_01c_76be

    xor a
    ld [$c324], a

jr_01c_76be:
    ld hl, $c323
    dec [hl]
    ret nz

    ld a, $d0
    ld [$c827], a
    ld a, $ff
    ld [$c828], a
    jp Jump_01c_7668


jr_01c_76d0:
    ld a, [$c819]
    or a
    jr nz, jr_01c_76da

    xor a
    ld [$c324], a

jr_01c_76da:
    ld hl, $c827
    call Call_01c_6605
    ld a, [$c82c]
    cp $10
    ret nc

    jp Jump_01c_7668


Jump_01c_76e9:
    ld a, [$c819]
    or a
    ret nz

    xor a
    ld [$c324], a
    ld a, $1e
    ld [$c323], a
    jp Jump_01c_7668


Jump_01c_76fa:
    ld hl, $c323
    dec [hl]
    ret nz

    rst $08
    ld a, [hl+]
    ld [hl], $1e
    xor a
    call Call_01c_7719
    ld hl, $c818
    ld a, [hl]
    sub $04
    ret nz

    ld [hl], a
    ld a, $1e
    ld [$c323], a
    xor a
    ld [$c322], a
    ret


Call_01c_7719:
Jump_01c_7719:
    ld l, c
    push hl
    push af
    ld a, $01
    call Call_01c_4743
    pop de
    jr nc, jr_01c_7727

    pop hl
    ld c, l
    ret


jr_01c_7727:
    ld l, c
    ld [hl], $5b
    inc l
    ld [hl], $77
    ld a, $08
    add c
    ld l, a
    ld a, d
    or a
    jr nz, jr_01c_773c

    ld a, [$c818]
    dec a
    ld [hl], a
    jr jr_01c_774b

jr_01c_773c:
    ld [hl], $80
    ld a, $0d
    add c
    ld l, a
    ld a, [$c331]
    ld [hl+], a
    inc l
    ld a, [$c332]
    ld [hl], a

jr_01c_774b:
    ld hl, $c330
    inc [hl]
    pop hl
    ld c, l
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    or a
    ret


    ld a, [$ccc2]
    or a
    jp nz, Jump_01c_77a8

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01c_77a0

    inc [hl]
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    ld [hl], $00
    add $fa
    ld l, a
    ld [hl], $80
    add $07
    ld l, a
    ld [hl], $02
    add $ee
    ld l, a
    bit 7, [hl]
    push af
    jr nz, jr_01c_778e

    ld de, $4a06
    call Call_01c_77e7

jr_01c_778e:
    call Call_000_024f
    pop af
    ld de, $0240
    jr z, jr_01c_779a

    ld de, $0120

jr_01c_779a:
    call Call_01c_4811

jr_01c_779d:
    jp Jump_01c_77b1


jr_01c_77a0:
    call Call_01c_7eed
    call Call_01c_7f07
    jr nz, jr_01c_779d

Jump_01c_77a8:
    push hl
    ld hl, $c330
    dec [hl]
    pop hl
    jp Jump_01c_47a2


Jump_01c_77b1:
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    call Call_000_019e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffa6], a
    add $0c
    ldh [$ff8e], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffa4], a
    add $04
    ldh [$ff8f], a
    ld a, [$c313]
    add $32
    ldh [$ff90], a
    ld a, $10
    ldh [$ff91], a
    ld l, c
    push hl
    call Call_000_01a1
    pop hl
    ld c, l
    ld de, $4a0e
    jp Jump_01c_7922


Call_01c_77e7:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [$c82a]
    add b
    ld [hl+], a
    inc hl
    ld a, [de]
    ld b, a
    ld a, [$c82c]
    add b
    ld [hl], a
    ret


Call_01c_7808:
    ld a, $02
    call Call_01c_4743
    ret c

    ld l, c
    ld [hl], $1f
    inc hl
    ld [hl], $78
    ld a, $08
    add c
    ld l, a
    ld a, [$c818]
    dec a
    ld [hl], a
    or a
    ret


    ld a, [$ccc2]
    or a
    jp nz, Jump_01c_790c

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01c_7872

    call Call_000_015c
    ld a, $18
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $04
    add $11
    ld l, a
    ld [hl], $1c
    ld de, $4a12
    call Call_01c_77e7
    call Call_000_024f
    ld a, $33
    add c
    ld l, a
    ld [hl], b
    ld de, $0100
    call Call_01c_4811
    ld a, $2f
    add c
    ld l, a
    ld [hl], $c8
    inc hl
    ld [hl], $00
    ld de, $606b
    call Call_000_01dd
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    jp Jump_01c_78b5


jr_01c_7872:
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    jr nz, jr_01c_78a2

    ld [hl], $10
    call Call_000_024f
    dec b
    ld a, $33
    add c
    ld l, a
    ld e, [hl]
    ld a, b
    sub e
    and $0f
    jr z, jr_01c_7892

    cp $08
    jr nc, jr_01c_7891

    inc e
    jr jr_01c_7892

jr_01c_7891:
    dec e

jr_01c_7892:
    ld a, e
    and $0f
    ld b, a
    ld a, $33
    add c
    ld l, a
    ld [hl], b
    inc b
    ld de, $0100
    call Call_01c_4811

jr_01c_78a2:
    call Call_01c_7eed
    call Call_01c_4839
    ld a, $2f
    add c
    ld l, a
    dec [hl]
    jr nz, jr_01c_78b5

    inc hl
    dec [hl]
    bit 7, [hl]
    jr nz, jr_01c_790c

Jump_01c_78b5:
jr_01c_78b5:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    srl a
    ld de, $602b
    call Call_000_0171
    call Call_000_015f
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ldh [$ffa4], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ldh [$ffa6], a
    xor a
    ldh [$ffab], a
    ld [$d3ea], a
    ld a, $bc
    ldh [$ffac], a
    ld a, $10
    add c
    ld l, a
    push hl
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld de, $606b
    call Call_000_0171
    pop hl
    ld a, [hl]
    push de
    ld l, c
    push hl
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    call Call_000_0210
    pop hl
    ld c, l
    pop de
    call Call_01c_7929
    jr z, jr_01c_790c

    ldh a, [$ffa7]
    bit 0, a
    ret z

Jump_01c_790c:
jr_01c_790c:
    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    push de
    call Call_01c_47a2
    pop de
    call Call_000_02fa
    pop hl
    ld c, l
    ret


Jump_01c_7922:
    ld a, $13
    add c
    ld l, a
    ld b, [hl]
    jr jr_01c_792b

Call_01c_7929:
    ld b, $00

jr_01c_792b:
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
    call Call_01c_797c
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    or a
    ret nz

    ld a, $18
    add c
    ld l, a
    ld a, [$cc46]
    ld [hl], a
    or a
    ret z

    ld a, $21
    add c
    ld l, a
    ld a, [$c3e2]
    ld [hl], a
    xor a
    dec a
    ret


Call_01c_797a:
Jump_01c_797a:
    ld b, $00

Call_01c_797c:
    ld a, e
    ld [$ce53], a
    ld a, d
    ld [$ce54], a
    ld a, [$c63b]
    cp $02
    ret nc

    xor a
    ldh [$ffa7], a
    ld a, b
    ldh [$ffa9], a
    ldh a, [$ffa4]
    ld e, a
    ldh a, [$ffa6]
    ld d, a
    call Call_000_0276
    ld hl, $d739
    ld a, [hl+]
    or [hl]
    jr nz, jr_01c_79b7

    call Call_000_0279
    jr nc, jr_01c_79b7

    ld a, $01
    ldh [$ffa7], a
    ld a, [$c3e0]
    ld b, a
    ld a, [$d739]
    add b
    ld [$d739], a
    jp Jump_01c_7a9c


jr_01c_79b7:
    ldh a, [$ffa9]
    bit 7, a
    jp nz, Jump_01c_7a9c

    ld hl, $ff8a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld d, a
    ld hl, $c204
    ld a, [hl]
    or a
    jp z, Jump_01c_7ab0

    ld a, c
    ldh [$ff8e], a
    ld a, b
    ldh [$ff8f], a
    ld a, e
    ldh [$ff90], a
    ld a, d
    ldh [$ff91], a
    call Call_01c_79e4
    ret nz

    jp Jump_01c_7aa4


Call_01c_79e4:
Jump_01c_79e4:
    inc l
    ld a, c
    sub [hl]
    cp $e0
    jr c, jr_01c_79ec

    xor a

jr_01c_79ec:
    ld c, a
    inc l
    ld a, e
    sub [hl]
    cp $e0
    jr c, jr_01c_79f5

    xor a

jr_01c_79f5:
    ld e, a
    inc l
    ld a, b
    sub [hl]
    cp $e0
    jr c, jr_01c_79fe

    xor a

jr_01c_79fe:
    ld b, a
    inc l
    ld a, d
    sub [hl]
    ld d, a
    inc l

jr_01c_7a04:
    ld a, [hl+]
    or a
    jr z, jr_01c_7a1e

    ld [$c22a], a
    ld a, [hl+]
    cp c
    jr c, jr_01c_7a1b

    cp e
    jr nc, jr_01c_7a1b

    ld a, [hl+]
    cp b
    jr c, jr_01c_7a04

    cp d
    jr c, jr_01c_7a20

    jr jr_01c_7a04

jr_01c_7a1b:
    inc l
    jr jr_01c_7a04

jr_01c_7a1e:
    xor a
    ret


jr_01c_7a20:
    ld a, [$cc47]
    bit 1, a
    jr nz, jr_01c_7a67

    bit 0, a
    jr nz, jr_01c_7a62

    ld b, $01
    ld a, [$c22a]
    cp $20
    jr nz, jr_01c_7a38

    ld a, [$c317]
    ld b, a

jr_01c_7a38:
    ld a, [$c3e2]
    or a
    jr nz, jr_01c_7a62

    rst $08
    dec d
    ld a, [$c3e1]
    ld [$c3e2], a
    ld a, [$cc46]
    ld [$c3e3], a
    sub b
    jr nc, jr_01c_7a50

    xor a

jr_01c_7a50:
    ld [$cc46], a
    ld a, [$c22a]
    cp $20
    jr nz, jr_01c_7a62

    ld a, [$c3e3]
    ld d, a
    ld a, b
    cp d
    jr nc, jr_01c_7a9c

jr_01c_7a62:
    ld b, $04
    jp Jump_01c_7a95


jr_01c_7a67:
    rst $08
    dec e
    ld a, [$c22a]
    sub $21
    jr c, jr_01c_7a7d

    add a
    add a
    add a
    add $08
    ld e, a
    ld d, $c7
    ld hl, $c613
    jr jr_01c_7a8d

jr_01c_7a7d:
    ld de, $c700
    ld hl, $c625
    ld a, [$c317]
    cp $01
    jr z, jr_01c_7a8d

    ld hl, $c629

jr_01c_7a8d:
    ld bc, $0004
    call Call_000_0180
    ld b, $03

Jump_01c_7a95:
    ld a, [$c22a]
    ld l, a
    ld h, $c7
    ld [hl], b

Jump_01c_7a9c:
jr_01c_7a9c:
    ld a, [$cc46]
    ld d, a
    xor a
    dec a
    ld a, d
    ret


Jump_01c_7aa4:
    ldh a, [$ff8e]
    ld c, a
    ldh a, [$ff8f]
    ld b, a
    ldh a, [$ff90]
    ld e, a
    ldh a, [$ff91]
    ld d, a

Jump_01c_7ab0:
    ld hl, $c218
    ld a, [hl]
    or a
    ret z

    ld a, [$c236]
    ld [$c237], a
    jp Jump_01c_79e4


Call_01c_7abf:
    ld a, [$c63b]
    or a
    ret z

    call Call_01c_65fa
    call Call_01c_677b
    ld a, [$c734]
    cp $b0
    jr c, jr_01c_7ada

    cp $d0
    jr nc, jr_01c_7ada

    xor a
    ld [$c63b], a
    ret


jr_01c_7ada:
    jp Jump_01c_67d9


Call_01c_7add:
    ld a, [$c325]
    dec a
    jr z, jr_01c_7ae7

    dec a
    jr z, jr_01c_7afa

    ret


jr_01c_7ae7:
    ld a, $04
    ld [$c326], a
    ld a, $04
    ld [$c332], a
    xor a
    ld [$c330], a
    ld a, $02
    ld [$c325], a

jr_01c_7afa:
    ld hl, $c326
    dec [hl]
    jr nz, jr_01c_7b17

    ld [hl], $04
    ld hl, $c330
    inc [hl]
    bit 0, [hl]
    jr nz, jr_01c_7b17

    ld hl, $c332
    dec [hl]
    bit 7, [hl]
    jr z, jr_01c_7b17

    xor a
    ld [$c325], a
    ret


jr_01c_7b17:
    ld a, $78
    ldh [rWX], a
    ld a, [$c332]
    ld b, a
    ld a, [$c330]
    and $01
    ld a, $04
    jr nz, jr_01c_7b2b

    add b
    jr jr_01c_7b2c

jr_01c_7b2b:
    sub b

jr_01c_7b2c:
    ldh [rWY], a
    ret


Call_01c_7b2f:
    ld a, [$c81c]
    dec a
    jr z, jr_01c_7ba1

    ld hl, $c81e
    call Call_000_01e9
    ret nz

    ld a, [$c819]
    cp $04
    ret nc

    call Call_01c_7b93
    inc de
    ld a, [de]
    bit 7, a
    jr z, jr_01c_7b53

    ld a, $01
    ld [$c81c], a
    jp Jump_01c_4894


jr_01c_7b53:
    bit 6, a
    jr z, jr_01c_7b87

    call Call_01c_7b5a

Call_01c_7b5a:
    rst $08
    jr nz, jr_01c_7b9b

    ld bc, $3bea
    add $3e
    or b
    ld [$c734], a
    ld a, $64
    ld [$c736], a
    ld a, $00
    ld [$c72f], a
    ld a, $fe
    ld [$c730], a
    xor a
    ld [$d703], a
    ld [$d70a], a
    ld c, $08
    call Call_01c_6813
    ld hl, $c818
    inc [hl]
    jr jr_01c_7b8b

jr_01c_7b87:
    call Call_01c_7bb0
    ret c

jr_01c_7b8b:
    call Call_01c_7b93
    ld a, [de]
    ld [$c81e], a
    ret


Call_01c_7b93:
    ld a, [$c818]

Call_01c_7b96:
    add a
    add a
    add $1a
    ld e, a

jr_01c_7b9b:
    ld a, $4a
    adc $00
    ld d, a
    ret


jr_01c_7ba1:
    ld a, [$cca8]
    or a
    ret nz

    ld a, $ff
    ld [$df80], a
    ld a, $1d
    jp Jump_000_0297


Call_01c_7bb0:
    ld a, $0b
    call Call_01c_4743
    ret c

    ld l, c
    ld [hl], $c5
    inc hl
    ld [hl], $7b
    rst $08
    dec h
    ld a, $01
    ld [$c325], a
    or a
    ret


    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01c_7bf7

    ld a, $0d
    add c
    ld l, a
    ld a, [$c818]
    dec a
    call Call_01c_7b96
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld [hl], b
    ld de, $7c7d
    call Call_000_01dd
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    ret


jr_01c_7bf7:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld de, $7c41
    call Call_000_0171
    call Call_01c_7f2f
    jp c, Jump_01c_47a2

    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc hl
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $20
    ld [$d3ea], a
    xor a
    ldh [$ffab], a
    ld a, $b0
    ldh [$ffac], a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld de, $7c7d
    call Call_000_0171
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    inc de
    inc de
    inc de
    inc de
    ld c, e
    ld b, d
    call Call_000_0210
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ret


    ld c, c
    ld a, h
    ld e, d
    ld a, h
    ld h, e
    ld a, h
    ld [hl], h
    ld a, h
    ld a, l
    ld a, h
    ld [bc], a
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
    rst $38
    ld a, l
    ld a, h
    inc bc
    nop
    nop
    ld bc, $0201
    rst $38
    ld a, l
    ld a, h
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
    rst $38
    ld a, l
    ld a, h
    inc bc
    ld b, $06
    rlca
    rlca
    ld [$95ff], sp
    ld a, h
    sbc [hl]
    ld a, h
    or e
    ld a, h
    db $e4
    ld a, h
    dec c
    ld a, l
    ld a, $7d
    ld h, a
    ld a, l
    ld [hl], b
    ld a, l
    add l
    ld a, l
    or [hl]
    ld a, l
    rst $18
    ld a, l
    db $10
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    pop af
    nop
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    stop
    ld [$1002], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    add b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    jr @+$2b

    db $10
    ld [$2a00], sp
    db $10
    ld [$2bf8], sp
    stop
    ld [$102c], sp
    add b
    nop
    nop
    nop
    nop
    pop af
    pop af
    nop
    db $10
    add b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    inc c
    ld d, b
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    jr jr_01c_7e50

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
    push de
    call Call_01c_7e67
    pop de
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_01c_7e60

    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    inc de
    cpl
    ld b, a
    ld a, [de]

jr_01c_7e50:
    inc de
    cpl
    inc b
    jr nz, jr_01c_7e56

    inc a

jr_01c_7e56:
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


Jump_01c_7e60:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_01c_7e67:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_01c_7e78

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_01c_7e79

jr_01c_7e78:
    inc d

jr_01c_7e79:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_01c_7e7f:
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
    jr z, jr_01c_7eb5

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_01c_7eab

    inc a

jr_01c_7eab:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_01c_7eb5:
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


Call_01c_7eed:
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


Call_01c_7f07:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_01c_7f17

    cp $90
    jr nc, jr_01c_7f2c

jr_01c_7f17:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_01c_7f24

    cp $c0
    jr nc, jr_01c_7f2c

jr_01c_7f24:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_01c_7f2c:
    xor a
    ld b, a
    ret


Call_01c_7f2f:
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


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
