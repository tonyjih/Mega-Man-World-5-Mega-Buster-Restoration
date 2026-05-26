; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    jp Jump_017_4416


    jp Jump_017_433d


    jp Jump_017_4ccb


    jp Jump_017_400c


Jump_017_400c:
    ret


    dec bc
    ld b, c
    rrca
    ld b, c
    inc de
    ld b, c
    rla
    ld b, c
    dec de
    ld b, c
    ld hl, $2541
    ld b, c
    dec hl
    ld b, c
    ld sp, $3741
    ld b, c
    dec bc
    ld b, c
    xor e
    ld b, c
    or l
    ld b, c
    dec a
    ld b, c
    ld b, c
    ld b, c
    ld b, l
    ld b, c
    ld c, c
    ld b, c
    ld c, l
    ld b, c
    ld d, c
    ld b, c
    ld d, l
    ld b, c
    ld e, e
    ld b, c
    ld e, a
    ld b, c
    ld h, e
    ld b, c
    ld h, a
    ld b, c
    ld l, e
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], l
    ld b, c
    ld a, c
    ld b, c
    ld a, l
    ld b, c
    add c
    ld b, c
    add l
    ld b, c
    adc c
    ld b, c
    adc l
    ld b, c
    sub c
    ld b, c
    sub l
    ld b, c
    sbc e
    ld b, c
    and c
    ld b, c
    and l
    ld b, c
    cp a
    ld b, c
    rst $00
    ld b, c
    bit 0, c
    rst $08
    ld b, c
    push de
    ld b, c
    reti


    ld b, c
    rst $18
    ld b, c
    push hl
    ld b, c
    rst $28
    ld b, c
    di
    ld b, c
    rst $30
    ld b, c
    ei
    ld b, c
    rst $38
    ld b, c
    add hl, bc
    ld b, d
    inc bc
    ld b, d
    dec e
    ld b, d
    ld hl, $1942
    ld b, d
    add hl, hl
    ld b, d
    dec l
    ld b, d
    jp Jump_017_4541


    ld b, d
    ld sp, $3542
    ld b, d
    add hl, sp
    ld b, d
    dec a
    ld b, d
    ld b, c
    ld b, d
    ld h, l
    ld b, d
    ld l, e
    ld b, d
    ld [hl], e
    ld b, d
    ld a, e
    ld b, d
    add c
    ld b, d
    add l
    ld b, d
    ld [hl], a
    ld b, d
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    ld c, c
    ld b, d
    ld c, l
    ld b, d
    ld d, c
    ld b, d
    ld d, l
    ld b, d
    ld e, c
    ld b, d
    ld e, l
    ld b, d
    ld h, c
    ld b, d
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    nop
    nop
    dec h
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    dec h
    ld b, c
    nop
    nop
    adc c
    ld b, d
    sub e
    ld b, d
    sbc l
    ld b, d
    and a
    ld b, d
    or c
    ld b, d
    cp e
    ld b, d
    push bc
    ld b, d
    rra
    ld b, e
    add hl, hl
    ld b, e
    rst $08
    ld b, d
    reti


    ld b, d
    db $e3
    ld b, d
    db $ed
    ld b, d
    rst $30
    ld b, d
    ld bc, $0b43
    ld b, e
    dec d
    ld b, e
    inc sp
    ld b, e
    nop
    nop
    ld l, d
    ld c, [hl]
    add b
    nop
    ld l, e
    ld c, [hl]
    add b
    nop
    ld [hl], h
    ld c, [hl]
    add b
    nop
    ld a, l
    ld c, [hl]
    ret nz

    nop
    add [hl]
    ld c, [hl]
    ld a, l
    ld c, [hl]

Jump_017_4121:
    add b
    nop
    sub l
    ld c, [hl]
    ret nz

    nop
    and d
    ld c, [hl]
    ld l, e
    ld c, [hl]
    ret nz

    nop
    cp a
    ld c, [hl]
    ld l, e
    ld c, [hl]
    ret nz

    nop
    jp c, Jump_017_6b4e

    ld c, [hl]
    ret nz

    nop
    ldh a, [c]
    ld c, [hl]
    ld l, e
    ld c, [hl]
    db $10
    inc b
    db $fc
    ld d, b

Call_017_4141:
Jump_017_4141:
    add b
    inc b
    ld a, [bc]
    ld d, c
    add b
    inc b
    ld h, $51
    db $10
    inc bc
    ld c, e
    ld d, c
    db $10
    inc bc
    ld e, h
    ld d, c
    db $10
    ld a, [bc]
    ld l, [hl]
    ld d, c
    sub b
    dec bc
    add e
    ld d, c
    sub l
    ld d, c
    db $10
    inc c
    or b
    ld d, c
    add b
    dec b
    call z, $8051
    add hl, bc
    db $db
    ld d, c
    db $10
    ld a, [bc]
    db $fd
    ld d, c
    jr nc, jr_017_4177

    inc c
    ld d, d
    jr jr_017_41c3

    db $10
    ld a, [bc]
    ld h, $52
    db $10

Call_017_4176:
    ld a, [bc]

jr_017_4177:
    ld sp, $1052
    inc bc
    ld c, c
    ld d, d
    db $10
    rlca
    ld e, d
    ld d, d
    add b
    inc b
    add l
    ld d, d
    add b
    ld a, [bc]
    sub c
    ld d, d
    add b
    rlca
    and [hl]
    ld d, d
    add b
    inc b
    rst $08
    ld d, d
    db $10
    inc b
    push hl
    ld d, d
    jr nc, jr_017_41a1

    ei
    ld d, d
    ldh a, [rHDMA2]
    jr nc, jr_017_41a7

    dec h
    ld d, e
    ld b, $53

jr_017_41a1:
    add b
    ld [$5349], sp
    sub b
    add hl, bc

jr_017_41a7:
    ld e, a
    ld d, e
    ld a, e
    ld d, e
    rrca
    ld [bc], a
    ld l, d
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ldh a, [rIF]
    ld l, d
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld l, d
    ld c, [hl]
    add b
    inc b
    add c
    ld d, h

jr_017_41c3:
    add b
    inc b
    adc l
    ld d, h
    add b
    ld bc, $54b9
    db $10
    ld [bc], a
    reti


    ld d, h
    jr nc, jr_017_41d5

    sub h
    ld e, h
    sub $5c

jr_017_41d5:
    db $10
    rlca
    and $54
    sub b
    add hl, bc
    ei
    ld d, h
    dec d
    ld d, l
    sub b
    add hl, bc

Call_017_41e1:
    ld b, h
    ld d, l

Jump_017_41e3:
    ld h, l
    ld d, l
    rrca
    nop
    cp b
    ld d, h
    and c
    ld d, h
    cp b
    ld d, h
    cp b
    ld d, h
    add b
    inc b
    and c
    ld d, l
    add b
    inc b
    cp l
    ld d, l
    db $10
    inc b
    ldh [c], a
    ld d, l
    db $10
    inc bc
    ldh a, [rHDMA5]
    db $10
    inc bc
    inc [hl]

Jump_017_4202:
    ld d, [hl]
    jr nc, jr_017_4209

    db $ed
    ld d, [hl]
    ld a, [de]
    ld d, a

jr_017_4209:
    db $10
    inc bc
    ld h, h
    ld d, [hl]
    db $10
    inc bc
    ld h, $57
    or b
    inc bc
    bit 2, a
    di
    ld d, a
    db $fd
    ld d, a
    ld bc, $4e03
    ld e, b
    ld bc, $5c03
    ld e, b
    or b
    inc bc
    cp l
    ld e, b
    inc hl
    ld e, c
    dec l
    ld e, c
    add b
    inc b
    ldh [c], a
    ld e, h
    db $10
    inc b
    ldh a, [$ff5c]
    add b
    inc b
    cpl
    ld e, l
    add b
    inc b
    ld d, b
    ld e, l
    add b
    inc b
    ld a, l
    ld e, l
    add b
    inc b
    xor c
    ld e, l
    db $10
    inc b
    cp a
    ld e, l
    add b
    inc b
    reti


    ld e, l
    add b
    ld [bc], a
    rst $10
    ld d, e
    add b
    ld [bc], a
    inc bc
    ld d, h
    add b

Jump_017_4252:
    ld bc, $5420
    add b
    ld bc, $542c
    add b
    ld bc, $543c
    db $10
    inc c
    ld c, d
    ld d, h
    add b

Jump_017_4262:
    ld [bc], a
    ld [hl], c

Jump_017_4264:
    ld d, h
    and b
    inc bc
    ld l, a
    ld e, e
    ld d, e
    ld e, e
    or b
    add hl, bc
    sbc c
    ld e, e
    adc $5b
    dec bc

Jump_017_4272:
    ld e, h
    db $10
    ld [bc], a
    ld [hl], $5c
    db $10
    ld bc, $5c8c
    jr nc, jr_017_427f

    ld b, b
    ld e, h

jr_017_427f:
    ld c, h
    ld e, h
    db $10
    ld bc, $5c5a
    db $10
    ld bc, $5c79
    rrca
    nop
    call nc, $9365
    ld h, l
    dec e
    ld h, [hl]
    daa
    ld h, [hl]
    rrca
    nop
    ld d, e
    ld e, [hl]
    ld bc, $955e
    ld e, [hl]
    ret


    ld e, [hl]
    rrca
    nop
    ld b, d
    ld e, a
    ld b, $5f
    ld h, d
    ld e, a
    sbc c
    ld e, a
    rrca
    nop
    sbc $5f
    cp a
    ld e, a
    db $fc
    ld e, a
    rla
    ld h, b
    rrca
    nop
    ld d, d
    ld h, b
    inc l
    ld h, b
    ld [hl], e
    ld h, b
    adc c
    ld h, b
    rrca
    nop
    db $eb
    ld h, b
    cp a
    ld h, b
    dec l
    ld h, c
    ld h, h
    ld h, c
    rrca
    nop
    xor [hl]
    ld h, [hl]
    inc [hl]
    ld h, [hl]
    jr jr_017_4334

    ld [hl], l
    ld h, a
    rrca
    nop
    dec h
    ld h, d
    sub b
    ld h, c
    adc $62
    inc [hl]
    ld h, e
    rrca
    nop
    rst $00
    ld h, e
    add a
    ld h, e
    ld b, e
    ld h, h
    ld h, h
    ld h, h
    rrca
    nop
    sub $64
    add l
    ld h, h
    ld hl, $6065
    ld h, l
    rrca
    nop
    add sp, $67
    cp c
    ld h, a
    ld a, [de]
    ld l, b
    ld d, h
    ld l, b
    rrca
    nop
    and a
    ld l, b
    ld [hl], c
    ld l, b
    or e
    ld l, b
    cp h
    ld l, b
    rrca
    nop
    daa
    ld l, c
    sub $68
    ld [hl], b
    ld l, c
    add sp, $69
    rrca
    nop
    ccf
    ld l, e
    ld c, e
    ld l, d
    pop af
    ld l, e
    add h
    ld l, h
    rrca
    nop
    ld d, c
    ld l, l
    db $10
    ld l, l
    and l
    ld l, l
    ret


    ld l, l
    rrca
    nop
    adc $70
    adc a
    ld [hl], b
    nop
    ld [hl], c
    inc a
    ld [hl], c
    rrca
    nop
    dec c
    ld [hl], d
    sub b
    ld [hl], c
    cp [hl]
    ld [hl], d
    cpl
    ld [hl], e
    rrca

jr_017_4334:
    nop
    inc de
    ld l, a
    and $6d
    sub d
    ld l, a
    inc h
    ld [hl], b

Jump_017_433d:
    or a
    jp z, Jump_017_4cbc

    cp $0a
    jp z, Jump_017_440d

    push bc
    push de
    ld [$db04], a
    push af
    add a
    add $0d
    ld l, a
    ld a, $40
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_017_4382

    ld a, [hl+]
    ld [$db05], a
    ld a, [hl+]
    ld [$db06], a
    ld b, h
    ld c, l
    xor a
    ld [$db02], a
    ld de, $db0e

Jump_017_436d:
jr_017_436d:
    ld hl, $db05
    srl [hl]
    jr c, jr_017_4385

    jr z, jr_017_4382

jr_017_4376:
    ld hl, $db02
    inc [hl]
    ld hl, $002c
    add hl, de
    ld d, h
    ld e, l
    jr jr_017_436d

jr_017_4382:
    pop de
    pop bc
    ret


jr_017_4385:
    ld hl, $0000
    add hl, de
    ld a, [hl+]
    or a
    jr z, jr_017_4397

    ld a, [$db06]
    cp [hl]
    jr nc, jr_017_4397

    inc bc
    inc bc
    jr jr_017_4376

jr_017_4397:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, [hl]
    inc hl
    push hl
    ld hl, $0020
    add hl, de
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    ld hl, $000f
    add hl, de
    ld a, $bf
    ld [hl+], a
    ld a, $4f
    ld [hl], a
    pop bc
    ld a, [$db02]
    push af
    add $49
    ld l, a
    ld a, $4a
    adc $00
    ld h, a
    pop af
    ld a, [$db07]
    or [hl]
    ld [$db07], a
    ld h, d
    ld l, e
    ld a, [$db04]
    ld [hl+], a
    ld a, [$db06]
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    jr jr_017_4376

Call_017_43e1:
    push bc
    push de
    ld [$db04], a
    push af
    add a
    add $0d
    ld l, a
    ld a, $40
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    and $f0
    swap a
    ld [$db05], a
    ld a, [hl+]
    ld [$db06], a
    ld b, h
    ld c, l
    ld a, $04
    ld [$db02], a
    ld de, $dbbe
    jp Jump_017_436d


Jump_017_440d:
    ld a, $07
    ld [$db0b], a
    ld [$db0c], a
    ret


Jump_017_4416:
    ld a, [$db0b]
    or a
    jr z, jr_017_442e

    ld hl, $db0c
    dec [hl]
    jr nz, jr_017_442e

    ld [hl], a
    ld hl, $dc80
    ld a, [hl]
    or a
    jp z, Jump_017_4cbc

    sub $11
    ld [hl], a

jr_017_442e:
    call Call_017_4434
    jp Jump_017_4bc7


Call_017_4434:
    xor a
    ld [$db03], a
    ld de, $db0e

jr_017_443b:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_017_4449

    call Call_017_4469
    call Call_017_4a51

jr_017_4449:
    ld hl, $002c
    add hl, de
    ld d, h
    ld e, l
    ld hl, $db03
    inc [hl]
    ld a, $08
    cp [hl]
    jr nz, jr_017_443b

    ld hl, $db0e
    ld de, $002c
    ld a, [hl]
    add hl, de
    or [hl]
    add hl, de
    or [hl]
    add hl, de
    or [hl]
    ld [$db0d], a
    ret


Call_017_4469:
    ld hl, $0008
    add hl, de
    inc [hl]
    dec hl
    dec [hl]
    call z, Call_017_467d
    ld a, [$db03]
    cp $03
    ret z

    ld hl, $0009
    add hl, de
    ld a, [hl]
    or a
    ret z

    ld hl, $0011
    add hl, de
    ld a, [hl]
    add a
    jp nc, Jump_017_45fa

    ld a, [$db03]
    and $03
    cp $02
    jp z, Jump_017_459c

    ld hl, $001a
    add hl, de
    dec [hl]
    jp nz, Jump_017_4635

    ld hl, $0018
    add hl, de
    ld a, [hl]
    push af
    add a
    add $af
    ld l, a
    ld a, $44
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp a
    ld b, h
    xor $44
    inc h
    ld b, l
    ld c, e
    ld b, l
    add h
    ld b, l
    dec [hl]
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    push bc
    ld hl, $0018
    add hl, de
    inc [hl]
    ld hl, $0011
    add hl, de
    ld a, [hl]
    and $0f
    ld b, a
    ld a, [hl]
    swap a
    ld hl, $001f
    add hl, de
    ld [hl], a
    and $07
    ld c, a
    ld hl, $000d
    add hl, de
    ld a, [hl]
    swap a
    and $0f
    sub b
    jr c, jr_017_44ef

    call Call_017_47d7
    or a
    jr z, jr_017_44ef

    pop bc
    jp Jump_017_4630


    push bc

jr_017_44ef:
    ld hl, $0018
    add hl, de
    inc [hl]
    ld hl, $000d
    add hl, de
    ld a, [hl]
    and $f0
    ld b, a
    ld hl, $0012
    add hl, de
    ld a, [hl]
    swap a
    and $07
    ld c, a
    or b
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0012
    add hl, de
    ld a, [hl]
    and $0f
    swap b
    ld l, a
    ld a, b
    sub l
    jr c, jr_017_4525

    call Call_017_47d7
    or a
    jr z, jr_017_4525

    pop bc
    jp Jump_017_4630


    push bc

jr_017_4525:
    ld hl, $0018
    add hl, de
    inc [hl]
    ld hl, $0012
    add hl, de
    ld a, [hl]
    swap a
    and $f0
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $000a
    add hl, de
    ld a, [hl]
    ld hl, $0008
    add hl, de

Jump_017_4541:
    ld b, [hl]
    sub b
    jr c, jr_017_454c

    jr z, jr_017_454c

    pop bc
    jp Jump_017_4630


    push bc

jr_017_454c:
    ld hl, $0018
    add hl, de
    inc [hl]
    ld hl, $0012
    add hl, de
    ld a, [hl]
    and $0f
    swap a
    ld b, a
    ld hl, $0013
    add hl, de
    ld a, [hl]
    and $07
    ld c, a
    or b
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, b
    swap a
    push af
    ld hl, $000d
    add hl, de
    ld a, [hl]
    and $0f
    ld b, a
    pop af
    sub b
    jr c, jr_017_4583

    call Call_017_47d7
    or a
    jr z, jr_017_4583

    pop bc
    jp Jump_017_4630


jr_017_4583:
    pop bc
    ld hl, $000d
    add hl, de
    ld a, [hl]
    and $0f
    swap a
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, $ff
    ld hl, $0018
    add hl, de
    inc [hl]
    jp Jump_017_4630


Jump_017_459c:
    ld hl, $001a
    add hl, de
    dec [hl]
    ret nz

    ld hl, $0018
    add hl, de
    ld a, [hl]
    cp $01
    jr c, jr_017_45b8

    cp $02
    jr c, jr_017_45d0

    cp $03
    jr c, jr_017_45e9

    cp $04
    jr c, jr_017_45ed

    ret


jr_017_45b8:
    ld a, $f0
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0018
    add hl, de
    inc [hl]
    ld hl, $000a
    add hl, de
    ld a, [hl]
    inc a
    ld hl, $001a
    add hl, de
    ld [hl], a
    ret


jr_017_45d0:
    ld a, $50

jr_017_45d2:
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0018
    add hl, de
    inc [hl]
    ld hl, $0011
    add hl, de
    ld a, [hl]
    and $7f
    ld hl, $001a
    add hl, de
    ld [hl], a
    ret


jr_017_45e9:
    ld a, $10
    jr jr_017_45d2

jr_017_45ed:
    ld a, $00
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0018
    add hl, de
    inc [hl]
    ret


Jump_017_45fa:
    ld hl, $001a
    add hl, de
    dec [hl]
    jr nz, jr_017_4635

    ld hl, $0017
    add hl, de
    inc [hl]
    ld a, [hl]
    ld hl, $0014
    add hl, de
    push bc
    add [hl]
    ld c, a
    inc hl
    ld a, [hl]
    adc $00
    ld b, a
    ld a, [bc]
    pop bc
    cp $ff
    jr nz, jr_017_4625

    ld hl, $0017
    add hl, de
    dec [hl]
    ld hl, $001a
    add hl, de
    ld [hl], a
    jr jr_017_4635

jr_017_4625:
    ld hl, $001f
    add hl, de
    push af
    and $f0
    ld [hl], a
    pop af
    and $0f

Jump_017_4630:
    ld hl, $001a
    add hl, de
    ld [hl], a

Jump_017_4635:
jr_017_4635:
    ld a, [$db03]
    and $02
    jr nz, jr_017_467c

    ld hl, $0019
    add hl, de
    dec [hl]
    jp nz, Jump_017_467c

    ld hl, $0016
    add hl, de
    inc [hl]
    ld a, [hl]

jr_017_464a:
    ld hl, $000f
    add hl, de
    push bc
    add [hl]
    ld c, a
    inc hl
    ld a, [hl]
    adc $00
    ld b, a
    ld a, [bc]
    pop bc
    cp $ff
    jr nz, jr_017_4664

    ld hl, $0016
    add hl, de
    xor a
    ld [hl], a
    jr jr_017_464a

jr_017_4664:
    push af
    swap a
    and $0f
    cp $08
    jr c, jr_017_466f

    or $f0

jr_017_466f:
    ld hl, $001c
    add hl, de
    ld [hl], a
    pop af
    and $0f
    ld hl, $0019
    add hl, de
    ld [hl], a

Jump_017_467c:
jr_017_467c:
    ret


Call_017_467d:
    ld hl, $0020
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]

jr_017_4684:
    ld a, [bc]
    cp $d0
    jr c, jr_017_468e

    call Call_017_47ec
    jr jr_017_4684

jr_017_468e:
    ld a, [$db03]
    cp $03
    jp z, Jump_017_4765

    ld hl, $0009
    add hl, de
    ld a, [bc]
    cp $c0
    jr c, jr_017_46a4

    ld [hl], $00
    jp Jump_017_4798


jr_017_46a4:
    ld [hl], $ff
    push bc
    push af
    ld a, [$db03]
    cp $07
    jr z, jr_017_46dc

    ld hl, $001b
    add hl, de
    ld a, [hl]
    add a
    add a
    ld b, a
    add a
    add b
    ld b, a
    pop af
    swap a
    and $0f
    add b
    ld hl, $0003
    add hl, de
    add [hl]
    push af
    add a
    add $ac
    ld c, a
    ld a, $4d
    adc $00
    ld b, a
    pop af
    ld hl, $001d
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop bc
    jr jr_017_46f3

jr_017_46dc:
    pop af
    pop bc
    and $70
    ld hl, $001b
    add hl, de
    or [hl]
    swap a
    ld hl, $000c
    add hl, de
    or [hl]
    ld hl, $001d
    add hl, de
    ld [hl+], a
    xor a
    ld [hl], a

jr_017_46f3:
    ld hl, $0008
    add hl, de
    xor a
    ld [hl], a
    ld a, [bc]
    and $0f
    call Call_017_47b3
    ld hl, $0007
    add hl, de
    ld [hl], a
    call Call_017_47aa
    ld hl, $0011
    add hl, de
    bit 7, [hl]
    jr z, jr_017_4735

    push af
    and $0f
    ld c, a
    ld hl, $0013
    add hl, de
    ld a, [hl]
    swap a
    and $0f
    push af
    call Call_017_47d7
    swap a
    and $0f
    ld hl, $000a
    add hl, de
    ld [hl], a
    pop af
    ld c, a
    pop af
    swap a
    and $0f
    call Call_017_47d7
    add [hl]
    ld [hl], a

jr_017_4735:
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_017_4746

    ld a, [hl]
    cp $03
    jr nz, jr_017_4744

    ld a, $01

jr_017_4744:
    xor $03

jr_017_4746:
    and $03
    ld [hl], a
    ld hl, $0016
    add hl, de
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    push hl
    ld hl, $001c
    add hl, de
    ld [hl], a
    ld hl, $000e
    add hl, de
    ld a, [hl]
    pop hl
    inc a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ret


Jump_017_4765:
    ld a, [$dc16]
    cp $06
    jr c, jr_017_478e

    cp $0c
    jr nc, jr_017_478e

    ld a, $6a
    ld [$dc36], a
    ld a, $4e
    ld [$dc37], a
    ld a, [$db07]
    or $40
    ld [$db07], a
    ld a, $01
    ld [$dc1d], a
    ld [$dc16], a
    xor a
    ld [$dc17], a

jr_017_478e:
    ld a, [bc]
    swap a
    and $0f
    cp $0c
    call nz, Call_017_43e1

Jump_017_4798:
    ld a, [bc]
    and $0f
    call Call_017_47b3
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld hl, $0008
    add hl, de
    xor a
    ld [hl], a
    pop hl

Call_017_47aa:
    ld hl, $0020
    add hl, de
    inc bc
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_017_47b3:
    ld hl, $000b
    add hl, de
    or a
    jr z, jr_017_47d1

Call_017_47ba:
    cp [hl]
    jr nc, jr_017_47c7

    push bc
    ld c, a
    ld b, [hl]
    xor a

jr_017_47c1:
    add b
    dec c
    jr nz, jr_017_47c1

    pop bc
    ret


jr_017_47c7:
    push bc
    ld c, a
    ld b, [hl]
    xor a

jr_017_47cb:
    add b
    dec c
    jr nz, jr_017_47cb

    pop bc
    ret


jr_017_47d1:
    ld a, [hl]
    swap a
    and $f0
    ret


Call_017_47d7:
    or a
    ret z

    ld b, a
    xor a
    or c
    ret z

    cp b
    jr nc, jr_017_47e6

    xor a

jr_017_47e1:
    add b
    dec c
    jr nz, jr_017_47e1

    ret


jr_017_47e6:
    xor a

jr_017_47e7:
    add c
    dec b
    jr nz, jr_017_47e7

    ret


Call_017_47ec:
    sub $e0
    jr c, jr_017_47ff

    push af
    add a
    add $47
    ld l, a
    ld a, $48
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_017_47ff:
    ld hl, $000b
    add hl, de
    and $0f
    ld [hl+], a
    inc bc
    ld a, [$db03]
    cp $03
    ret z

    cp $07
    jr z, jr_017_4826

    and $03
    cp $02
    jr z, jr_017_4833

    ld a, [bc]
    and $33
    add a
    add a
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    call Call_017_48c1
    jp Jump_017_490e


jr_017_4826:
    ld a, [bc]
    or a
    jr z, jr_017_482c

    ld a, $08

jr_017_482c:
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    jp Jump_017_490d


jr_017_4833:
    dec bc
    call Call_017_48f4
    ld a, [bc]
    ld hl, $0011
    add hl, de
    ld [hl+], a
    add a
    jp nc, Jump_017_4917

    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    sub b
    ld c, b
    xor a
    ld c, b
    cp b
    ld c, b
    pop bc
    ld c, b
    db $eb
    ld c, b
    db $f4
    ld c, b
    dec c
    ld c, c
    ld [hl-], a
    ld c, c
    dec sp
    ld c, c
    ld b, h
    ld c, c
    ld c, l
    ld c, c
    ld d, [hl]
    ld c, c
    sub l
    ld c, l
    or [hl]
    ld c, b
    ld e, a
    ld c, c
    ld l, b
    ld c, c
    ld a, c
    ld c, c
    adc d
    ld c, c
    sub d
    ld c, c
    sbc d
    ld c, c
    xor c
    ld c, c
    cp b
    ld c, c
    push de
    ld c, c
    db $ed
    ld c, c
    ld a, [bc]
    and $07
    ld hl, $001b
    add hl, de
    jr jr_017_48b5

    inc bc
    ld a, [$db03]
    cp $07
    jr z, jr_017_48a3

    ld a, [bc]
    and $33
    add a
    add a
    ld hl, $000c
    add hl, de
    jr jr_017_48b5

jr_017_48a3:
    ld a, [bc]
    or a
    jr z, jr_017_48a9

    ld a, $08

jr_017_48a9:
    ld hl, $000c
    add hl, de
    jr jr_017_48b5

    ld hl, $000d
    add hl, de
    inc bc
    ld a, [bc]

jr_017_48b5:
    ld [hl], a

Jump_017_48b6:
jr_017_48b6:
    inc bc
    ret


    ld hl, $0002
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


Call_017_48c1:
    inc bc
    ld a, [bc]
    swap a
    and $0f
    ld hl, $000b
    add hl, de
    call Call_017_47ba
    ld hl, $000e
    add hl, de
    inc a
    ld [hl+], a
    ld a, [bc]
    and $0f
    push bc
    push af
    add a
    add $9f
    ld c, a
    ld a, $4f
    adc $00
    ld b, a

Call_017_48e2:
    pop af

jr_017_48e3:
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop bc
    inc bc
    ret


    ld hl, $0003
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


Call_017_48f4:
    ld a, [$db03]
    cp $02
    jr z, jr_017_4906

    cp $06
    jr nz, jr_017_48b6

    inc bc
    ld a, [bc]
    ld [$db09], a
    inc bc
    ret


jr_017_4906:
    inc bc
    ld a, [bc]
    ld [$db08], a
    inc bc
    ret


Jump_017_490d:
    inc bc

Jump_017_490e:
    ld a, [bc]
    ld hl, $0011
    add hl, de
    ld [hl+], a
    add a
    jr c, jr_017_492a

Jump_017_4917:
    ld a, [bc]

Jump_017_4918:
    push bc
    push af
    add a
    add $17
    ld c, a
    ld a, $4f
    adc $00
    ld b, a
    pop af
    ld hl, $0014
    add hl, de
    jr jr_017_48e3

jr_017_492a:
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld hl, $0004
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld hl, $0011
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld hl, $0012
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld hl, $0013
    add hl, de
    inc bc

Jump_017_4952:
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld hl, $0005
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld hl, $000b
    add hl, de
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push hl
    ld hl, $0026
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    pop bc
    ret


    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push hl
    ld hl, $0028
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    pop bc
    ret


    ld hl, $0026
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ret


    ld hl, $0028
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ret


    inc bc
    ld hl, $0022
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $002a
    add hl, de
    ld [hl], $00
    ret


    inc bc
    ld hl, $0024
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $002b
    add hl, de
    ld [hl], $00
    ret


    inc bc
    ld a, [bc]
    or a
    jr z, jr_017_49c8

    ld hl, $002a
    add hl, de
    push hl
    ld h, [hl]
    cp h
    pop hl
    jr z, jr_017_49d0

    inc [hl]

jr_017_49c8:
    ld hl, $0022
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret


jr_017_49d0:
    ld [hl], $00
    jp Jump_017_48b6


    inc bc
    ld a, [bc]
    or a
    jr z, jr_017_49e5

    ld hl, $002b
    add hl, de
    push hl
    ld h, [hl]
    cp h
    pop hl
    jr z, jr_017_49d0

    inc [hl]

jr_017_49e5:
    ld hl, $0024
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret


    ld a, [$db03]
    push af
    add $41
    ld c, a
    ld a, $4a
    adc $00
    ld b, a
    pop af
    ld a, [bc]
    ld hl, $db07
    and [hl]
    ld [hl], a
    ld a, [$db03]
    cp $04
    jr z, jr_017_4a38

    and $03
    jr z, jr_017_4a0f

    cp $03
    jr nz, jr_017_4a13

jr_017_4a0f:
    ld a, $08
    jr jr_017_4a14

jr_017_4a13:
    xor a

jr_017_4a14:
    ld hl, $000d
    add hl, de
    ld [hl], a
    ld hl, $001f
    add hl, de
    ld [hl], a
    xor a
    ld hl, $001d
    add hl, de
    ld [hl+], a
    ld [hl], a
    ld hl, $0009
    add hl, de
    ld [hl], a
    ld h, d
    ld l, e
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ld hl, $0008
    add hl, de
    ld [hl], a
    pop hl
    ret


jr_017_4a38:
    ld a, $08
    ldh [rNR10], a
    ld [$dc6e], a
    jr jr_017_4a0f

    cp $fd
    ei
    rst $30
    rst $28
    rst $18
    cp a
    ld a, a
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b

Call_017_4a51:
    ld a, [$db03]
    push af
    add a
    add $63
    ld l, a
    ld a, $4a
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], e
    ld c, d
    ldh a, [rWY]
    inc e
    ld c, e
    push hl
    ld c, d
    ld a, c
    ld c, d
    or $4a
    ld [hl+], a
    ld c, e
    ld h, [hl]
    ld c, e
    ld hl, $dbbe
    ld a, [hl]
    or a
    ret nz

    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $b7
    ld l, a
    ld a, $4b
    adc $00
    ld h, a
    pop af
    ld bc, $dc81
    ld a, [bc]
    and $ee
    or [hl]
    ld [bc], a
    ld bc, $dc6e
    ld hl, $0002
    add hl, de
    ld a, [hl]
    ld [bc], a
    inc bc
    ld hl, $0008
    add hl, de
    ld a, [hl]
    ld [$dc98], a

jr_017_4aa4:
    or a
    jr z, jr_017_4ab0

    ld hl, $000c
    add hl, de
    ld a, [hl]
    swap a
    jr jr_017_4ab5

jr_017_4ab0:
    ld hl, $000c
    add hl, de
    ld a, [hl]

jr_017_4ab5:
    and $c0
    ld [bc], a
    inc bc
    ld hl, $0009
    add hl, de
    ld a, [hl]
    or a
    jr nz, jr_017_4ac5

    ld a, $08
    jr jr_017_4aca

jr_017_4ac5:
    ld hl, $001f
    add hl, de
    ld a, [hl]

jr_017_4aca:
    ld [bc], a
    inc bc

Jump_017_4acc:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld hl, $001c
    add hl, de
    add [hl]
    inc hl
    bit 7, a
    jr nz, jr_017_4ae6

    add [hl]
    inc hl
    ld [bc], a
    ld a, [hl]
    adc $00

jr_017_4ae1:
    inc bc
    and $07
    ld [bc], a
    ret


jr_017_4ae6:
    add [hl]
    push af
    inc hl
    ld [bc], a
    pop af
    ld a, [hl]
    adc $ff
    jr jr_017_4ae1

    ld hl, $dbea
    ld a, [hl]
    or a
    ret nz

    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $bb
    ld l, a
    ld a, $4b
    adc $00
    ld h, a
    pop af
    ld bc, $dc81
    ld a, [bc]
    and $dd
    or [hl]
    ld [bc], a
    ld bc, $dc73
    ld hl, $0008
    add hl, de
    ld a, [hl]
    ld [$dc99], a
    jr jr_017_4aa4

    ld hl, $dc16
    ld a, [hl]
    or a
    ret nz

    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $bf
    ld l, a
    ld a, $4b
    adc $00
    ld h, a
    pop af
    ld bc, $dc81
    ld a, [bc]
    and $bb
    or [hl]
    ld [bc], a
    ld bc, $dc77
    ld a, $80
    ld [bc], a
    inc bc
    inc bc
    ld hl, $0009
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_017_4b61

    ld hl, $001f
    add hl, de
    ld a, [hl]
    swap a
    and $0f
    push bc
    push af
    add $a7
    ld c, a
    ld a, $4b
    adc $00
    ld b, a
    pop af
    ld a, [bc]
    pop bc

jr_017_4b61:
    ld [bc], a
    inc bc
    jp Jump_017_4acc


    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $c3
    ld l, a
    ld a, $4b
    adc $00
    ld h, a
    pop af
    ld bc, $dc81
    ld a, [bc]
    and $77
    or [hl]
    ld [bc], a
    ld bc, $dc7d
    ld hl, $0008
    add hl, de
    ld a, [hl]
    ld [$dc9b], a
    ld hl, $0009
    add hl, de
    xor a
    or [hl]
    jr nz, jr_017_4b96

    ld a, $08
    jr jr_017_4b9b

jr_017_4b96:
    ld hl, $001f
    add hl, de
    ld a, [hl]

jr_017_4b9b:
    ld [bc], a
    inc bc
    ld hl, $001d
    add hl, de
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    ret


    nop
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, jr_017_4bd3

    jr nz, @+$22

    jr nz, jr_017_4bd7

    ld de, $1001
    ld de, $0222
    jr nz, jr_017_4be1

    ld b, h
    inc b
    ld b, b
    ld b, h
    adc b
    ld [$8880], sp

Jump_017_4bc7:
    ld hl, $dc6e
    ld de, $dc83
    ld c, $10
    ld a, [$dc98]
    ld b, a

jr_017_4bd3:
    or a
    jr z, jr_017_4bda

    ld a, [de]

jr_017_4bd7:
    cp [hl]
    jr z, jr_017_4bde

jr_017_4bda:
    ld a, [hl]
    ld [de], a
    ldh [c], a
    ldh [c], a

jr_017_4bde:
    inc hl
    inc de
    inc c

jr_017_4be1:
    call Call_017_4ca0
    ld a, b
    call Call_017_4c8c
    ld a, b
    call Call_017_4c9d
    call Call_017_4cab
    inc c
    call Call_017_4ca0
    ld a, [$dc99]
    call Call_017_4c8c
    call Call_017_4ca0
    call Call_017_4cab
    call Call_017_4ca0
    inc hl
    inc de
    inc c
    call Call_017_4ca0
    call Call_017_4ca0
    call Call_017_4cab
    inc c
    inc hl
    inc de
    inc c
    ld a, [$dc9b]
    call Call_017_4c8c
    call Call_017_4ca0
    call Call_017_4cab
    ld hl, $ff24
    ld a, [$dc80]
    ld [hl+], a
    ld a, [$dc81]
    ld [hl+], a
    ld a, [$dc16]
    or a
    jr nz, jr_017_4c34

    ld a, [$db08]
    jr jr_017_4c37

jr_017_4c34:
    ld a, [$db09]

jr_017_4c37:
    ld hl, $db0a
    cp [hl]
    ret z

    ld [hl], a
    push af
    add a
    add $1a
    ld l, a
    ld a, $50
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $30
    xor a
    ldh [rNR30], a
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, $80
    ldh [rNR30], a
    ld a, [$dc7b]
    or $80
    ldh [rNR34], a
    ret


Call_017_4c8c:
    or a
    jr z, jr_017_4c93

    ld a, [de]
    cp [hl]
    jr z, jr_017_4ca7

jr_017_4c93:
    ld a, [hl+]
    ld [de], a
    ldh [c], a
    inc hl
    set 7, [hl]
    dec hl
    inc de
    inc c
    ret


Call_017_4c9d:
    or a
    jr z, jr_017_4ca4

Call_017_4ca0:
    ld a, [de]
    cp [hl]
    jr z, jr_017_4ca7

jr_017_4ca4:
    ld a, [hl]
    ld [de], a
    ldh [c], a

jr_017_4ca7:
    inc hl
    inc de
    inc c
    ret


Call_017_4cab:
    ld a, [de]
    bit 7, a
    jr nz, jr_017_4cb3

    cp [hl]
    jr z, jr_017_4ca7

jr_017_4cb3:
    ld a, [hl]
    ldh [c], a
    and $07
    ld [de], a
    inc hl
    inc de
    inc c
    ret


Jump_017_4cbc:
    call Call_017_4cbf

Call_017_4cbf:
    push bc
    push de
    call Call_017_4d1c
    ld a, $77
    ld [$dc80], a
    jr jr_017_4cd7

Jump_017_4ccb:
    push bc
    push de
    call Call_017_4d15
    ld a, $77
    ldh [rNR50], a
    ld [$dc80], a

jr_017_4cd7:
    ld hl, $db0e
    ld de, $002c
    ld a, $00
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    ld hl, $db16
    ld a, $01
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    ld a, $00
    ld [$db07], a
    ld [$db0b], a
    ld [$db0c], a
    ld a, $ff
    ld [$db0a], a
    pop de
    pop bc
    ret


Call_017_4d15:
    xor a
    ldh [rNR50], a
    ld a, $80
    ldh [rNR52], a

Call_017_4d1c:
    ld a, $08
    ldh [rNR10], a
    ld [$dc6e], a
    ldh a, [rNR52]
    bit 0, a
    jr z, jr_017_4d44

    xor a
    ldh [rNR11], a
    ld [$dc6f], a
    ld a, $08
    ldh [rNR12], a
    ld [$dc70], a
    xor a
    ldh [rNR13], a
    ld [$dc71], a
    ld [$dc72], a
    ld a, $80
    ldh [rNR14], a
    xor a

jr_017_4d44:
    ldh a, [rNR52]
    bit 1, a
    jr z, jr_017_4d61

    xor a
    ldh [rNR21], a
    ld [$dc73], a
    ldh [rNR22], a
    ld [$dc74], a
    ldh [rNR23], a
    ld [$dc75], a
    ld [$dc76], a
    ld a, $80
    ldh [rNR24], a

jr_017_4d61:
    ldh a, [rNR52]
    bit 2, a
    jr z, jr_017_4d74

    xor a
    ldh [rNR32], a
    ld [$dc79], a
    ld [$dc7b], a
    ld a, $80
    ldh [rNR34], a

jr_017_4d74:
    ldh a, [rNR52]
    bit 3, a
    jr z, jr_017_4d94

    xor a
    ldh [rNR41], a
    ld [$dc7c], a
    ld a, $08
    ldh [rNR42], a
    ld [$dc7d], a
    xor a
    ldh [rNR43], a
    ld [$dc7e], a
    ld [$dc7f], a
    ld a, $80
    ldh [rNR44], a

jr_017_4d94:
    ret


    inc bc
    ld a, [bc]
    push af
    ld l, a
    xor a
    ld h, a
    add hl, de
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl], a
    pop af
    cp $11
    jr z, jr_017_4da8

    jp Jump_017_48b6


jr_017_4da8:
    ld a, [hl]
    jp Jump_017_4918


    inc l
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    ret


    ld bc, $0223
    ld [hl], a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, Jump_000_1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    pop hl
    rlca
    ldh [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    ldh a, [c]
    rlca
    di
    rlca
    db $f4
    rlca
    rst $18
    ld bc, $01e3
    ld b, e
    ld [bc], a
    ld b, a
    ld [bc], a
    ld b, e
    ld [bc], a
    ld d, a
    ld [bc], a
    rst $38
    pop de
    nop
    sub b
    adc c
    ld de, $e081
    dec d
    rst $38
    jp nc, $a000

    adc d
    ld sp, $e0f4
    ld e, $ff
    pop de
    nop
    sub b
    adc c
    ld de, $e1b1
    or a
    rst $38
    pop de
    db $10
    ld c, $e3
    ld d, c
    ld hl, $b1e2
    add c
    ld d, c
    ld hl, $b1e1
    add c
    rst $38
    pop de
    ld de, $0900
    push hl
    ld [hl-], a
    xor $06
    ld sp, $02ee
    ld sp, $d1ff
    db $10
    ld c, $e4
    sub c
    ld h, c
    ld sp, $e301
    sub c
    ld h, c
    ld sp, $e201
    sub c
    ld h, c
    ld sp, $e101
    sub c
    ld h, c
    ld sp, $e001
    sub c
    ld h, c
    ld sp, $ff01
    pop de
    db $10
    ld c, $e4
    ld sp, $e301
    sub c
    ld h, c
    ld sp, $e201
    sub c
    ld h, c
    ld sp, $e101
    sub c
    ld h, c
    ld sp, $e001
    sub c
    ld h, c
    ld sp, $ff01
    pop de
    db $10
    ld c, $e3
    sub c
    ld h, c
    ld sp, $e201

Jump_017_4ee3:
    sub c
    ld h, c
    ld sp, $e101
    sub c
    ld h, c
    ld sp, $e001
    sub c
    ld h, c
    ld sp, $ff01
    pop de
    db $10
    ld c, $e3
    ld sp, $e201
    sub c
    ld h, c
    ld sp, $e101
    sub c
    ld h, c
    ld sp, $e001
    sub c
    ld h, c
    ld sp, $ff01
    rst $10
    db $10
    sub b
    ld a, [bc]
    push hl
    inc b
    inc d
    inc h
    inc [hl]
    ld b, h
    ld d, h
    ld h, h
    ld [hl], h
    rst $38
    rst $38
    ccf
    ld c, a
    ld b, c
    ld c, a
    ld b, e
    ld c, a
    ld b, l
    ld c, a
    ld b, a
    ld c, a
    ld c, c
    ld c, a
    ld c, e
    ld c, a
    ld c, l
    ld c, a
    ld c, a
    ld c, a
    ld d, c
    ld c, a
    ld d, e
    ld c, a
    ld d, l
    ld c, a
    ld d, a
    ld c, a
    ld e, c
    ld c, a
    ld e, e
    ld c, a
    ld e, l
    ld c, a
    ld e, a
    ld c, a
    ld l, b
    ld c, a
    ld [hl], c
    ld c, a
    adc b
    ld c, a
    adc a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    cp $ff
    or d
    ld d, d
    sub d
    ld b, d
    ld [hl], d
    ld [hl-], a
    ld d, d
    ld [hl+], a
    rst $38
    sub d
    ld b, d
    ld [hl], d
    ld [hl-], a
    ld d, d
    ld [hl+], a
    ld [hl-], a
    ld [de], a
    rst $38
    or e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    ld h, e
    ld b, e
    rst $38
    add e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    ld b, e
    inc hl
    rst $38
    cp a
    ld c, a
    pop bc
    ld c, a
    add $4f
    rst $08
    ld c, a
    ret c

    ld c, a
    pop hl
    ld c, a
    ld [$f34f], a
    ld c, a
    db $fc
    ld c, a
    dec bc
    ld d, b
    dec d
    ld d, b
    dec d
    ld d, b
    dec d
    ld d, b
    dec d
    ld d, b
    dec d
    ld d, b
    dec d
    ld d, b
    rrca
    rst $38
    inc d
    inc bc
    db $f4
    inc bc
    rst $38
    ld de, $1122
    ld [bc], a
    pop af
    ldh [c], a
    pop af
    ld [bc], a
    rst $38
    ld hl, $2132
    ld [bc], a
    pop hl
    jp nc, $02e1

    rst $38
    ld hl, $2142
    ld [bc], a
    pop hl
    jp nz, $02e1

    rst $38
    ld sp, $3152
    ld [bc], a
    pop de
    or d
    pop de
    ld [bc], a
    rst $38
    ld sp, $3162
    ld [bc], a
    pop de
    and d
    pop de
    ld [bc], a
    rst $38
    ld [hl-], a
    ld [hl], d
    ld [hl-], a
    ld [bc], a
    jp nc, $d292

    ld [bc], a
    rst $38
    add c
    sub c
    and c
    or c
    pop bc
    pop de
    pop hl
    pop af
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    ld sp, $1121
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    inc bc
    inc de
    inc hl
    inc de
    rst $38
    inc a
    ld d, b
    ld c, h
    ld d, b
    ld e, h
    ld d, b
    ld l, h
    ld d, b
    ld a, h
    ld d, b
    adc h
    ld d, b
    sbc h
    ld d, b
    xor h
    ld d, b
    cp h
    ld d, b
    call z, $dc50
    ld d, b
    call c, $dc50
    ld d, b
    call c, $dc50
    ld d, b
    call c, $ec50
    ld d, b
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $edef
    res 5, c
    add a
    ld h, l
    ld b, e
    ld hl, $0200
    ld b, [hl]
    adc d
    adc $ff
    rst $38
    rst $38
    rst $38
    db $ec
    xor b
    ld h, h
    jr nz, jr_017_5059

jr_017_5059:
    ld b, h
    adc b
    ld b, h
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
    dec [hl]
    ld [hl+], a
    ld c, d
    nop
    ld a, [bc]
    inc [hl]
    dec b
    nop
    ld a, [$0fff]
    ld a, [$f0fc]
    nop
    ldh a, [$fffe]
    call c, $98ba
    halt
    ld d, h
    ld [hl-], a
    db $10
    halt
    ld d, h
    ld [hl-], a
    db $10
    ld b, h
    nop
    ld [hl+], a
    nop
    ld a, c
    adc a
    db $fc
    rst $08
    db $fd
    cp c
    ld [hl], l
    ld sp, $5476
    ld [hl-], a
    db $10
    ld b, h
    nop
    ld [hl+], a
    nop
    inc bc
    ld l, c
    rst $08
    db $fc
    sub [hl]
    jr nc, jr_017_50a6

    ld d, [hl]
    ld [hl], a
    ld h, l

jr_017_50a6:
    ld b, h
    inc sp
    jr nz, jr_017_50aa

jr_017_50aa:
    ld d, d
    nop
    ld bc, $4521
    ld h, a
    ld bc, $4521
    ld h, a
    cp $dc
    cp d
    sbc b
    halt
    ld d, h
    ld [hl-], a
    db $10
    ld bc, $1211
    inc hl
    inc [hl]
    ld b, l
    ld d, [hl]
    ld h, a
    ld a, b
    adc c
    sbc d
    xor e
    cp h
    call $d0dd
    inc de
    ld d, a
    sbc e
    rst $18
    nop
    nop
    nop
    nop
    inc de
    ld d, a
    sbc e
    rst $18
    nop
    nop
    nop
    nop
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $edef
    res 5, c
    add a
    ld h, l
    ld b, e
    ld hl, $0200
    inc [hl]
    ld h, a
    sbc d
    call $ffff
    xor $ee
    rst $38
    rst $38
    call c, Call_017_76a9
    ld b, e
    db $10
    pop de
    ld [hl+], a
    ldh a, [rP1]
    rrca
    ld [$e225], a
    jr c, @-$10

    ld [bc], a
    db $e3
    inc [hl]
    rst $38
    pop de
    ld de, $0ff0
    push hl
    ld [hl], d
    ld h, c
    ld d, c
    ld b, c
    ld sp, $1121
    add sp, $00
    push hl
    ld h, d
    pop hl
    ld [de], a
    xor $0c
    ld [de], a
    xor $08
    ld [de], a
    xor $04
    ld [de], a
    rst $38
    jp nc, $f011

    rrca
    push hl
    ld [hl], d
    ld h, c
    ld d, c
    ld b, c
    ld sp, $1121
    add sp, $00
    ldh [c], a
    ld d, c
    ld b, c
    ld sp, $1121
    ld bc, $0cee
    ld [bc], a
    xor $08
    ld [bc], a
    xor $06
    ld [bc], a
    xor $04
    ld [bc], a
    xor $02
    ld [bc], a
    rst $38
    db $d3
    ld [hl+], a
    ldh a, [rP1]
    ld a, [bc]
    pop hl
    sub c
    and c
    or c
    ldh [c], a
    ld bc, $2111
    ld sp, $5141
    rst $38
    pop de
    ld de, $00a0
    sbc d
    ld sp, $e3f3
    sub c
    db $e4
    ld [hl+], a
    pop bc
    db $e3
    sub c
    db $e4
    ld [hl+], a
    pop bc
    rst $38
    db $d3
    ld [hl+], a
    ldh a, [rP1]

Jump_017_5172:
    rrca
    ei
    db $e4
    ld de, $5131

Jump_017_5178:
    ld h, c
    add c
    and c
    push hl
    ld bc, $ee11
    ld [$01fd], sp
    rst $38
    pop de
    ld de, $00c0
    rrca
    ld [$e11d], a
    ld h, d
    pop bc
    ld [$e21e], a
    jr c, @-$10

    inc bc
    ld [hl], $ff
    pop de
    nop
    ldh a, [rIF]
    db $e4
    or c
    and c
    pop bc
    pop hl
    inc hl
    xor $0c

Jump_017_51a1:
    ld hl, $ee31
    add hl, bc
    ld b, c
    ld d, c
    xor $06
    ld h, c
    ld [hl], c
    xor $03
    ld [hl], c
    ld [hl], c
    rst $38
    pop de
    ld [hl+], a
    ret nz

    nop
    rrca
    ld [$c12e], a
    db $e4
    or $02
    rla
    xor $0c
    rla
    xor $08
    rla
    xor $06
    rla
    xor $04
    rla
    xor $02
    rla
    rst $38
    pop de
    ld de, $0ee0
    db $e3
    ld [hl], d
    ld h, d
    ld d, c
    ld b, c
    ld sp, $1121
    pop bc
    ld b, e
    rst $38
    pop de
    ld de, $0ff0
    and $fb
    ld [bc], a
    ld [de], a
    ld bc, $c111
    db $fd
    inc b
    add sp, $00
    db $e4
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    ld [hl], d
    ldh [c], a
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    ld [hl], d
    rst $38
    pop de
    ld de, $00f0
    rrca
    db $e4
    ld b, c
    ld bc, $0141
    ld b, c
    ld bc, $0141
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $e4f2
    add e
    push hl
    ld d, b
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $eff2
    ld [bc], a
    db $e4
    add e
    push hl
    ld d, b
    rst $38
    pop de
    ld bc, $00e0
    sbc [hl]
    ld hl, $e381
    add a
    rla
    rst $38
    pop de
    ld [de], a
    ret nz

    nop
    sbc b
    ld de, $e3f1
    inc b
    ld b, h
    ld [hl], h
    and h
    pop de
    ld [de], a
    ld d, b
    nop
    sub c

Jump_017_5242:
    ld de, $e3f1
    ld b, h
    ld [hl], h
    and h
    rst $38
    pop de
    ld de, $00a0
    ld a, [bc]
    ld [$e71e], a
    ld [de], a
    ld [$e417], a
    ld h, $ee
    inc b
    ld h, $ff
    pop de
    ld hl, $00f0
    rrca
    ld [$e61e], a
    inc d
    jp nz, $25ea

    xor $0a
    ldh [c], a
    ld h, [hl]
    db $e4
    inc d
    xor $08
    ldh [c], a
    ld h, [hl]
    db $e4
    inc d
    xor $06
    ldh [c], a
    ld h, [hl]
    db $e4
    inc d
    xor $04
    ldh [c], a
    ld h, [hl]
    db $e4
    inc d
    xor $02
    ldh [c], a
    ld h, [hl]
    db $e4
    inc d
    rst $38
    pop de
    ld de, $0ec0
    pop hl
    ld [de], a
    xor $8c
    db $10
    ld de, $ff04
    pop de
    nop
    nop
    ld c, $e1
    ld sp, $11e8
    xor $0a
    ldh [rSB], a
    xor $0e
    db $e4
    ld sp, $08ee
    db $e4
    ld [hl-], a
    rst $38
    pop de
    ld de, $0ff0
    push hl
    ld [hl], d
    ld d, c
    ld [hl], c
    jp nz, Jump_017_5172

    ld hl, $00e8
    ldh [c], a
    ld d, e
    xor $0c
    inc sp
    xor $0a
    inc hl
    xor $08
    inc de
    xor $07
    inc de
    xor $06
    inc de
    xor $05
    inc de
    xor $04
    inc de
    xor $02
    inc de
    rst $38
    pop de
    nop
    ldh a, [rIF]
    db $e3
    ld bc, $4121
    ld h, c
    add sp, $0b
    ld [hl], c
    jp Jump_000_00d2


    ldh a, [$ff8f]
    inc hl
    db $f4
    db $e3

Jump_017_52e3:
    inc l
    rst $38
    pop de
    ld [hl+], a
    nop
    rla
    ld [$fbe4], sp
    cpl
    db $fd
    nop
    rst $38
    ret c

    inc sp
    nop
    nop
    ld c, $e1
    inc [hl]
    xor $02
    ld sp, $d8ff
    inc sp
    nop
    nop
    ld c, $e0
    or h
    xor $02
    or c
    rst $38
    call nc, Call_000_0033
    nop
    rrca
    db $e3
    and c
    db $e4
    ld bc, $3121
    ld d, c
    xor $08
    db $e3
    and c
    db $e4
    ld bc, $3121
    ld d, c
    xor $03
    db $e3
    and c
    db $e4
    ld bc, $3121
    ld d, c
    rst $38
    call nc, Call_000_0033
    nop
    ld [$efc1], sp
    ld bc, $00f3
    db $e3
    and c
    db $e4
    ld bc, $3121
    ld d, c
    xor $04
    db $e3
    and c
    db $e4
    ld bc, $3121
    ld d, c
    xor $02
    db $e3
    and c
    db $e4
    ld bc, $3121
    ld d, c
    rst $38
    pop de
    nop
    nop
    ld c, $e3
    ld [hl], c
    add sp, $11
    xor $08
    ldh [rSB], a
    add sp, $00
    xor $04
    db $e3
    ld [hl], e
    xor $02
    ld [hl], e
    rst $38
    pop de
    ld sp, $0000
    rrca
    ld [$e51c], a
    dec [hl]
    pop bc
    db $e3
    dec [hl]
    pop bc
    db $e3
    ld e, c
    xor $09
    db $e3
    adc c
    xor $05
    db $e3
    ld c, c
    xor $03
    db $e3
    ld e, c
    rst $38
    pop de
    ld de, $0e00
    rst $20
    ld de, $0cee
    ld hl, $0aee
    ld de, $eec3
    ld c, $e7
    ld de, $0cee
    ld hl, $0aee
    ld de, $eec2
    ld c, $11
    ld hl, $0111
    ld de, $eec1
    inc c
    ld hl, $0111
    ld de, $00d3
    and b
    adc d
    ld [hl+], a
    di
    push hl
    ld c, d
    rst $38
    pop de
    ld sp, $0000
    rrca
    ld [$e41b], a
    dec h
    pop bc
    db $e4
    sbc b
    xor $08
    ld e, b
    xor $04
    ld e, b
    rst $38
    pop de
    ld [hl+], a
    ldh a, [rP1]
    rrca
    ld [$e21d], a
    inc de
    ld [$e014], a
    adc b
    xor $0c
    adc b
    xor $08
    adc b
    xor $04
    adc b
    xor $02
    adc b
    rst $38
    pop de
    ld de, $0ec0
    pop hl
    ld d, d
    ld [hl-], a
    ld h, d
    ld b, d
    ld [hl], d
    ld d, d
    ld h, d
    ld b, d
    ld d, d
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld b, d
    ld [hl+], a
    ld b, d
    ld [hl+], a
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    xor $08
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    xor $04
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    xor $02

jr_017_53fe:
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    rst $38
    pop de
    nop
    ret nz

    ld c, $e0
    ld h, d
    add sp, $11
    ld b, d
    ld h, d
    ld d, d
    ld b, d
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [bc], a
    xor $08
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [bc], a
    xor $04
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [bc], a
    rst $38
    pop de
    nop
    ret nz

    ld c, $e0
    inc bc
    inc de
    ld [hl+], a
    ld [hl-], a
    ld b, c
    ld d, c
    rst $38
    pop de
    nop
    ret nz

    ld [$73e3], sp
    xor $0b
    ld h, e
    xor $0e
    ld d, d
    ld b, d
    ld sp, $ff21
    pop de
    nop
    ldh a, [$ff8f]
    ld hl, $e5f2
    pop bc
    or $02
    ld sp, $3a21
    rst $38
    db $d3
    jr nc, jr_017_53fe

    nop
    dec c
    ld [$e61f], a
    or c
    or c
    or c
    or c
    ld [hl], c
    ld sp, $b1e5
    ld [hl], c
    ld sp, $b1e4
    ld [hl], c
    ld sp, $b1e3
    ld [hl], c
    ld sp, $06ee
    db $e3
    or c
    ld [hl], c
    ld sp, $03ee
    db $e3
    or c
    ld [hl], c
    ld sp, $d1ff
    nop
    ret nz

    rrca
    ldh [c], a
    ld [hl], e
    ld h, d
    xor $0c
    ld d, d
    xor $0a
    ld b, c
    ld sp, $ff21
    or $01
    pop bc
    rst $18
    nop
    ret nz

    adc h
    add hl, hl
    ld c, a
    db $e3
    ld h, $ff
    pop de
    nop
    ldh a, [rIF]
    db $e3
    ld de, $c131
    pop hl
    ld [de], a
    pop bc
    jp nc, $f000

    adc a
    inc hl
    db $f4
    db $e3
    ld [hl], $ff
    sbc $22
    or b
    nop
    sub e
    ldh a, [$ff8f]
    db $e4
    ld [hl], c
    and c
    push hl
    db $eb
    ld [$eb05], sp
    add hl, bc
    db $e4
    and c
    db $eb
    ld [$26e5], sp
    rst $38
    rst $38
    pop de
    ld de, $0e00
    and $61
    ld de, $31c3
    ld de, $e8c3
    nop
    db $e3
    ld h, c
    ld d, c
    call nz, $08ee
    ld h, c
    ld d, c
    call nz, Call_000_06ee
    ld h, c
    ld d, c
    call nz, Call_000_03ee
    ld h, c
    ld d, c
    rst $38
    pop de
    ld de, $00c0
    rrca
    ld [$e22e], a
    and d
    ld [$6425], a
    rst $38
    pop de
    ld de, $0000
    rrca
    ld [$e41b], a
    inc sp
    pop bc
    or [hl]
    xor $0c
    ld [hl], $ee
    ld [$ee36], sp
    inc b
    ld [hl], $ff
    pop de
    ld [hl+], a
    nop
    nop
    rrca
    ld [$e31c], a
    pop bc
    dec [hl]
    pop bc
    dec [hl]
    pop bc
    dec [hl]
    pop bc
    ld e, c
    xor $0c
    adc c
    xor $08
    ld c, c
    xor $04
    add hl, de
    rst $38
    pop de
    ld de, $0e00
    rst $20
    ei
    xor $0e
    rst $20
    pop bc
    ld de, $0cee
    ld [hl+], a
    xor $0a
    ld de, $fdc2
    ld [bc], a
    xor $0e
    ld de, $1121
    ld bc, $c111
    xor $0c
    ld hl, $0111
    ld de, $0aee
    ld hl, $0111
    ld de, $08ee
    ld hl, $0111
    ld de, $d1ff
    ld [de], a
    add b
    nop
    rrca
    ld [$e31c], a
    pop bc
    inc sp
    pop bc
    inc sp
    add sp, $22
    ld [$f31b], a
    nop
    db $e3
    pop bc
    ld [hl], a
    pop bc
    ld [hl], a
    xor $0c
    ld a, b
    xor $08
    ld a, b
    xor $04
    ld a, b
    rst $38
    pop de
    ld de, $0ff0
    rst $20
    ei
    xor $0e
    rst $20
    pop bc
    ld de, $0cee
    ld hl, $0aee
    ld de, $fdc1
    ld bc, $eee5
    inc c
    ld [hl], d
    ld d, c
    ld hl, $5172
    ld hl, $08ee
    ld [hl], d
    ld d, c
    ld hl, $5172
    ld hl, $06ee
    ld [hl], d
    ld d, c
    ld hl, $5172
    ld hl, $d1ff
    ld [hl+], a
    ldh a, [rP1]
    rrca
    ld [$e225], a
    jr z, @-$10

    ld [bc], a
    db $e3
    inc h
    rst $38
    pop de
    ld de, $0ff0
    push hl
    ld d, d
    ld b, c
    ld hl, $2161
    ld de, $e871
    nop
    push hl
    ld h, d
    pop hl
    ld [de], a
    xor $0c
    ld [de], a
    xor $08
    ld [de], a
    xor $04
    ld [de], a
    rst $38
    jp nc, $f011

    rrca
    push hl
    ld d, d
    ld b, c
    ld hl, $2161
    ld de, $e871
    nop
    ldh [c], a
    ld d, c
    ld sp, $3111
    ld de, $ee01
    inc c
    ld [bc], a
    xor $08
    ld [bc], a
    xor $06

jr_017_55da:
    ld [bc], a
    xor $04
    ld [bc], a
    xor $02
    ld [bc], a
    rst $38
    pop de
    ld [hl+], a
    ldh a, [rP1]
    rrca
    ld [$e225], a
    jr z, jr_017_55da

    ld [bc], a
    db $e3
    inc h
    rst $38
    pop de
    ld [bc], a
    ldh a, [rP1]
    ld a, [bc]
    rst $30
    ld [bc], a
    ld d, [hl]
    rst $30
    ld [bc], a
    ld d, [hl]
    ei
    rst $30
    ld [hl+], a
    ld d, [hl]
    db $fd
    nop
    rst $38
    ldh [$ff71], a
    pop hl
    ld bc, $91e0
    pop hl
    ld hl, $71e0
    ldh [$ffb1], a
    pop hl
    ld b, c
    ld bc, $0151
    ld hl, $3171
    add c
    ld hl, $9141
    ld d, c
    and c
    ld b, c
    ld d, c
    or c
    ld b, c
    ld d, c
    ld sp, hl
    ldh [$ff71], a
    pop hl
    ld bc, $91e0
    pop hl
    ld hl, $71e0
    ldh [$ffb1], a
    pop hl
    ld b, c
    ld bc, $0151
    ld sp, hl
    jp nc, $f022

    nop
    ld a, [bc]
    rst $30
    ld b, [hl]
    ld d, [hl]
    rst $30
    ld b, [hl]
    ld d, [hl]
    ei
    rst $30
    ld e, c
    ld d, [hl]
    db $fd
    nop
    rst $38
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    and c
    db $e3
    ld d, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ld bc, $1171
    add c
    ld hl, $f991
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    and c
    db $e3
    ld d, c
    ldh [c], a
    or c
    ld sp, hl
    db $d3
    ld [de], a
    ldh a, [rP1]
    ld a, [bc]
    db $ec
    ld bc, $91e1
    and c
    or c
    ldh [c], a
    ld bc, $2111
    ld sp, $5141
    rst $38
    jp nc, $a101

    ld b, d
    adc e
    ld d, $a1
    ei
    ldh [c], a
    inc b
    ld de, $3121
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    add c
    sub c
    ldh [c], a
    sub h
    call nz, Call_000_00fd
    rst $38
    jp nc, $a101

    ld b, d
    adc e
    ld d, $a1
    ei
    ldh [c], a
    ld b, c
    db $e3
    ld b, c
    ldh [c], a
    ld d, c
    db $e3
    ld d, c
    ldh [c], a
    ld h, c
    db $e3
    ld h, c
    ldh [c], a
    ld [hl], c
    db $e3
    ld [hl], c
    ldh [c], a
    add c
    db $e3
    add c
    ldh [c], a
    sub c
    db $e3
    sub c
    ldh [c], a
    sub h
    add $fd
    nop
    rst $38
    jp nc, $a101

    ld b, d
    adc e
    ld d, $a1
    ei
    jp hl


    and c
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    and c
    db $e3
    ld d, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ld bc, $1171
    add c
    ld hl, $e391
    ld b, c
    sub c
    jp hl


    sub c
    ld b, c
    sub c
    jp hl


    add c
    ld b, c
    sub c
    jp hl


    ld [hl], c
    ld b, c
    sub c
    jp hl


    ld h, c
    ld b, c
    sub c
    jp hl


    ld d, c
    ld b, c
    sub c
    add $fd
    nop
    rst $38
    jp nc, RST_00

    nop
    ld c, $ec
    ld b, $e2
    ld bc, $6131
    sub c
    db $e3
    ld bc, $6131
    sub c
    db $e4
    ld bc, $6131
    sub c
    xor $0b
    push hl
    ld bc, $6131
    sub c
    db $e4
    sub c
    ld h, c
    ld sp, $e301
    sub c
    ld h, c
    ld sp, $e201
    sub c
    ld h, c
    ld sp, $ff01
    jp nc, RST_00

    nop
    ld c, $ec
    ld b, $e3
    ld bc, $f4f7
    ld d, [hl]
    pop de
    ld [bc], a
    ldh a, [rP1]
    ld a, [bc]
    ei
    ldh [$ff71], a
    pop hl
    ld bc, $91e0
    pop hl
    ld hl, $b1e0
    pop hl
    ld b, c
    ld bc, $0151
    ld hl, $2171
    ld sp, $3181
    db $fd
    ld bc, $41fb
    add c
    ld b, c
    ld d, c
    sub c
    ld d, c
    ld h, c
    and c
    ld h, c
    ld [hl], c
    or c
    ld [hl], c
    pop hl
    add c
    ldh [c], a
    ld bc, $81e1
    pop hl
    add c
    ldh [c], a
    ld bc, $81e1
    db $fd
    ld bc, $79f7

jr_017_5760:
    ld d, a
    db $ec
    inc c
    rst $30
    ld a, c
    ld d, a
    db $ec
    jr jr_017_5760

    ld a, c
    ld d, a
    db $ec
    inc h
    rst $30
    ld a, c

jr_017_576f:
    ld d, a
    db $ec
    jr nc, jr_017_576f

    rst $30
    or h
    ld d, a
    cp $00
    rst $38
    ei
    pop hl
    sub c
    ldh [c], a
    ld de, $91e1
    pop hl
    and c
    ldh [c], a
    ld hl, $a1e1
    pop hl
    or c
    ldh [c], a
    ld sp, $b1e1
    ldh [c], a
    ld bc, $0141
    db $fd
    ld bc, $11fb
    ld d, c
    ld de, $6121
    ld hl, $7131
    ld sp, $8141
    ld b, c
    db $fd
    ld bc, $51fb
    sub c
    ld d, c
    ld h, c
    and c
    ld h, c
    ld [hl], c
    or c
    ld [hl], c
    add c
    db $e3
    ld bc, $81e2
    db $fd
    ld bc, $f9fb
    pop hl
    sub c
    ldh [c], a
    ld de, $91e1
    pop hl
    and c
    ldh [c], a
    ld hl, $a1e1
    pop hl
    or c
    ldh [c], a
    ld sp, $b1e1
    ldh [c], a
    ld bc, $0141
    ld sp, hl
    pop de
    nop
    nop
    nop
    ld c, $ee
    dec bc
    and $01
    push hl
    sub c
    ld h, c
    ld sp, $e401
    sub c
    ld h, c
    ld sp, $e301
    sub c
    ld h, c
    ld sp, $e201
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    pop hl
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    ldh [$ff92], a
    ld h, d
    ld [hl-], a
    ld [bc], a
    rst $38
    pop de
    nop
    nop
    nop
    ld c, $e6
    ld bc, $d0f7
    ld d, a
    jp nc, $f011

    rrca
    add sp, $00
    ldh [c], a
    ld d, c
    ld sp, $3111
    ld de, $ee01
    inc c
    ld [bc], a
    xor $08
    ld [bc], a
    xor $06
    ld [bc], a
    xor $04
    ld [bc], a
    xor $02
    ld [bc], a
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $e4f1
    ld d, h
    push hl
    xor h
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $eff1
    ld [bc], a
    db $e4
    add h
    push hl
    xor h
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $e3f1
    inc d
    db $e4
    inc c
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $eff1
    ld [bc], a
    db $e3
    ld b, h
    db $e4
    inc c
    rst $38
    pop de
    ld [bc], a
    ldh a, [rP1]

jr_017_5852:
    ld a, [bc]
    db $ec
    jr nc, jr_017_5852

    rst $30
    or h
    ld d, a
    cp $00
    rst $38
    pop de
    ld [bc], a
    ldh a, [rP1]
    ld a, [bc]
    ei
    ldh [$ff71], a
    pop hl
    ld bc, $91e0
    pop hl
    ld hl, $b1e0
    pop hl
    ld b, c
    ld bc, $0151
    ld hl, $2171
    ld sp, $3181
    db $fd
    ld bc, $e1fb
    ld b, c
    add c
    ld d, c
    sub c
    ld h, c
    and c
    ld [hl], c
    or c
    add c
    ldh [c], a
    ld bc, $81e1
    ldh [c], a
    ld bc, $01fd
    rst $30
    sbc d

jr_017_588e:
    ld e, b
    db $ec
    inc c
    rst $30
    sbc d
    ld e, b
    db $ec
    jr jr_017_588e

    sbc d
    ld e, b
    rst $38
    pop hl
    sub c
    ldh [c], a
    ld de, $a1e1
    ldh [c], a
    ld hl, $b1e1
    ldh [c], a
    ld sp, $01e2
    ld b, c
    ld de, $2151
    ld h, c
    ld sp, $4171
    add c
    ld d, c
    sub c
    ld h, c
    and c
    ld [hl], c
    or c
    add c
    db $e3
    ld bc, $81e2
    ld sp, hl
    pop de
    nop
    nop
    nop
    ld c, $ee
    dec bc
    xor $08
    and $01
    push hl
    sub c
    ld h, c
    ld sp, $e401
    sub c
    ld h, c
    ld sp, $e301
    sub c
    ld h, c
    ld sp, $e201
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    pop hl
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    ldh [$ff92], a
    ld h, d
    ld [hl-], a
    xor $01
    inc b
    xor $03
    db $e3
    sub c
    ld h, c
    ld sp, $e201
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    pop hl
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    ldh [$ff92], a
    ld h, d
    ld [hl-], a
    xor $01
    ld [$02ee], sp
    ldh [c], a
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    pop hl
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    ldh [$ff92], a
    ld h, d
    ld [hl-], a
    xor $01
    inc c
    ldh [c], a
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    pop hl
    sub d
    ld h, d
    ld [hl-], a
    ld [bc], a
    ldh [$ff92], a
    ld h, d
    ld [hl-], a
    ld [bc], a
    rst $38
    pop de
    nop
    nop
    nop
    ld c, $e6
    ld bc, $c2f7
    ld e, b
    jp nc, $f011

    rrca
    add sp, $00
    ldh [c], a
    ld d, c
    ld sp, $3111
    ld de, $ee01
    inc c
    ld [bc], a
    xor $08
    ld [bc], a
    xor $06
    ld [bc], a
    xor $04
    ld [bc], a
    xor $02
    ld [bc], a
    rst $38
    pop de
    ld [bc], a
    and c
    ld b, d
    adc e
    ld d, $a1
    ei
    xor $0a
    ldh [c], a
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    xor $0b
    ld h, c
    or c
    xor $0c
    ldh [c], a
    add c
    db $e3
    ld de, $07ee
    ld bc, $ee51
    dec c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    xor $0c
    ld sp, $ee81
    dec bc
    ld de, $ee61
    ld a, [bc]
    ldh [c], a
    or c
    db $e3
    ld b, c
    xor $08
    ldh [c], a
    and c
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $07ee
    ldh [c], a
    and c
    db $e3
    ld sp, $06ee
    ldh [c], a
    and c
    db $e3
    ld sp, $05ee
    ldh [c], a
    and c
    db $e3
    ld sp, $04ee
    ldh [c], a
    and c
    db $e3
    ld sp, $03ee
    ldh [c], a
    and c
    db $e3
    ld sp, $02ee
    ldh [c], a
    and c
    db $e3
    ld sp, $01ee
    ldh [c], a
    and c
    db $e3
    ld sp, $fdca
    nop
    rst $38
    pop de
    ld [bc], a
    and c
    ld b, d
    adc e
    ld d, $a1
    ei
    xor $0a
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $0bee
    ldh [c], a
    and c
    db $e3
    ld hl, $0cee
    ldh [c], a
    or c
    db $e3
    ld b, c
    xor $07
    ld hl, $ee71
    dec c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    xor $0c
    ld sp, $ee81
    dec bc
    ld de, $ee61
    ld a, [bc]
    ldh [c], a
    or c
    db $e3
    ld b, c
    xor $08
    ldh [c], a
    and c
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $07ee
    ldh [c], a
    and c
    db $e3
    ld sp, $06ee
    ldh [c], a
    and c
    db $e3
    ld sp, $05ee
    ldh [c], a
    and c
    db $e3
    ld sp, $04ee
    ldh [c], a
    and c
    db $e3
    ld sp, $03ee
    ldh [c], a
    and c
    db $e3
    ld sp, $02ee
    ldh [c], a
    and c
    db $e3
    ld sp, $01ee
    ldh [c], a
    and c
    db $e3
    ld sp, $fdca
    nop
    rst $38
    pop de
    ld [bc], a
    and c
    ld b, d
    adc e
    ld d, $a1
    ei
    xor $0a
    ldh [c], a
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ldh [c], a
    and c
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $a1e2
    db $e3
    ld sp, $61e2
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $71e2
    db $e3
    ld bc, $0aee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $09ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $08ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $07ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $06ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $05ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $04ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $03ee
    ldh [c], a
    ld [hl], c
    db $e3
    ld bc, $c0c0
    db $fd
    nop
    rst $38
    pop de
    ld [bc], a
    and c
    ld b, d
    adc e
    ld d, $a1
    ei
    xor $0a
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ldh [c], a
    sub c
    db $e3
    ld b, c
    ld sp, $31a1
    and c
    and c
    ld sp, $31a1
    and c
    and c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ldh [c], a
    or c
    db $e3
    ld h, c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    xor $0a
    ld bc, $ee71
    add hl, bc
    ld bc, $ee71
    ld [$7101], sp
    xor $07
    ld bc, $ee71
    ld b, $01
    ld [hl], c
    xor $05
    ld bc, $ee71
    inc b
    ld bc, $ee71
    inc bc
    ld bc, $c071
    ret nz

    db $fd
    nop
    rst $38
    pop de
    ld de, $0ff0
    push hl
    ld d, d
    ld b, c
    ld hl, $2161
    ld de, $e871
    nop
    push hl
    ld h, d
    pop hl
    ld [de], a
    xor $0c
    ld [de], a
    xor $08
    ld [de], a
    xor $04
    ld [de], a
    rst $38
    pop de
    nop
    nop
    nop
    ld c, $e6
    ret z

    xor $08
    ldh [c], a
    ld bc, $4121
    ld d, c
    ld [hl], c
    sub c
    or c
    db $e3
    ld bc, $4121
    ld d, c
    ld [hl], c
    sub c
    or c
    db $e4
    ld bc, $4121
    ld d, c
    ld [hl], c
    sub c
    or c
    push hl
    ld bc, $4121
    ld d, c
    ld [hl], c
    sub c
    or c
    rst $38
    jp nc, Jump_000_0031

    nop
    rrca
    ld [$e51c], a
    dec [hl]
    pop bc
    db $e3
    dec [hl]
    xor $0b
    db $e3
    ld e, c
    xor $09
    db $e3
    adc c
    xor $08
    db $e3
    ld c, c
    xor $07
    db $e3
    ld e, c
    xor $06
    db $e3
    adc c
    xor $05
    db $e3
    ld c, c
    xor $04
    db $e3
    ld e, c
    xor $03
    db $e3
    adc c
    xor $02
    db $e3
    ld c, c
    xor $01
    db $e3
    ld e, c
    rst $38
    pop de
    ld d, c
    nop
    nop
    rrca
    di
    nop
    rst $30
    ld bc, $ee5c
    inc c
    rst $30
    ld bc, $ee5c
    ld a, [bc]
    rst $30
    ld bc, $ee5c
    ld [$01f7], sp
    ld e, h
    xor $06
    rst $30
    ld bc, $ee5c
    inc b
    rst $30
    ld bc, $ee5c
    inc bc
    rst $30
    ld bc, $ee5c
    ld [bc], a
    rst $30
    ld bc, $ee5c
    ld bc, $01f7
    ld e, h
    rst $38
    ei
    pop hl
    ld bc, $71e0
    ld b, c
    ld bc, $04fd
    ld sp, hl
    jp nc, $0011

    ld c, $f8
    daa
    ld e, h
    ld hl, sp+$27
    ld e, h
    ld hl, sp+$27
    ld e, h
    ld hl, sp+$27
    ld e, h
    xor $0c
    db $fc
    ld hl, sp+$27
    ld e, h
    db $f4
    ld de, $feff
    rlca
    rst $38
    rst $20
    ld de, $11f4
    cp $21
    db $f4
    ld de, $11fe
    db $f4
    ld de, $c104
    ld a, [$21d1]
    ldh a, [rP1]
    rrca
    ld [$e51f], a
    or [hl]
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $e4f2
    inc de
    and $00
    rst $38
    jp nc, $f022

    nop
    sbc a
    ld hl, $eff2
    ld [bc], a
    db $e4
    inc de
    and $00
    rst $38
    pop de
    ld hl, $00f0
    rrca
    ld [$e51e], a
    or h
    jp nz, Jump_000_26ea

    xor $0a
    db $e3
    ld b, [hl]
    db $e4
    or h
    xor $08
    db $e3
    ld b, [hl]
    db $e4
    or h
    xor $04
    db $e3
    ld b, [hl]
    db $e4
    or h
    rst $38
    jp nc, $a011

    nop
    sbc d
    ld sp, $e1f3
    sub c
    ldh [c], a
    ld [hl+], a
    pop bc
    ldh [c], a
    sub c
    db $e3
    ld [hl+], a
    pop bc
    rst $38
    rst $38
    pop de
    ld de, $0700
    ld [$8ce4], sp
    rst $38
    pop de
    nop
    nop
    nop
    ld c, $ec
    ld b, $e1
    ld bc, $6131
    sub c
    pop bc
    ldh [c], a
    ld bc, $6131
    sub c
    pop bc
    db $e3
    ld bc, $6131
    sub c
    pop bc
    db $e4
    ld bc, $6131
    sub c
    pop bc
    xor $0b
    push hl
    ld bc, $6131
    sub c
    or $02
    db $e4
    sub c
    ld h, c
    ld sp, $e301
    sub c
    ld h, c
    ld sp, $e201
    sub c
    ld h, c
    ld sp, $e101
    sub c
    ld h, c
    ld sp, $e001
    sub c
    ld h, c
    ld sp, $ff01
    pop de
    nop
    nop
    nop
    ld c, $ec
    ld b, $e3
    ld bc, $9bf7
    ld e, h
    pop de
    ld de, $0ed1
    db $e3
    ld h, c
    add sp, $11
    pop bc
    pop hl
    ld hl, $91e2
    rst $38
    pop de
    nop
    pop hl
    rla
    ld [$e8e3], sp
    nop
    xor $0f
    db $ec
    ld a, [$4104]
    ld d, d
    ld h, d
    halt
    adc a
    add d
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld sp, $06ee
    add sp, $11
    inc h
    rra
    xor $03
    ld d, $ff
    pop de
    nop
    ldh a, [rIF]
    db $e3
    ld bc, $4121
    ld h, c
    add sp, $0b
    xor $0a
    ld [hl], c
    jp Jump_000_00d2


    and b
    adc a
    inc hl
    db $f4
    xor $06
    db $e3
    ld hl, $04ee
    ld hl, $d1ff
    jr nz, @-$0e

    rrca
    add sp, $20
    ldh [c], a
    ld d, e
    xor $0c
    inc sp
    xor $0a
    inc hl
    xor $08
    inc de
    xor $07
    inc de
    xor $06
    inc de
    xor $05
    inc de
    xor $04
    inc de
    xor $02
    inc de
    rst $38
    pop de
    nop
    ldh a, [rIF]
    xor $0a
    db $e3
    inc bc
    inc hl
    ld b, d
    ld h, c
    add sp, $16
    ld [hl], c
    pop de
    nop
    ldh a, [$ff8f]
    inc hl
    db $f4
    db $e3
    ld hl, $0bee
    push hl
    ld [de], a
    xor $0e
    ld [de], a
    xor $0c
    ld de, $09ee
    ld de, $07ee
    ld bc, $05ee
    ld bc, $03ee
    ld bc, $d1ff
    nop
    ldh a, [rIF]
    xor $09
    db $e3
    inc bc
    ld [de], a
    ld hl, $16e8
    pop de
    ld [hl+], a
    ldh a, [$ff8f]
    inc hl
    db $f4
    xor $0e
    ldh [c], a
    ld bc, $0fee
    dec d
    xor $0e
    inc de
    xor $0a
    ld [de], a
    xor $09
    ld bc, $07ee
    ld bc, $05ee
    ld bc, $03ee
    ld bc, $d1ff
    nop
    ldh a, [rIF]
    db $e4
    ld bc, $4121
    ld h, d
    add sp, $0b
    ld [hl], c
    call nz, Call_000_00d2
    ldh a, [$ff8f]
    inc hl

jr_017_5dbb:
    db $f4
    db $e4
    dec b
    rst $38
    pop de
    ld [hl+], a
    ldh a, [rP1]
    rrca
    xor $07
    db $e3
    ld [bc], a
    xor $0a
    db $e3
    jr z, jr_017_5dbb

    ld b, $e3
    ld b, d
    xor $03
    db $e3
    ld h, d
    xor $02
    db $e4
    ld bc, $d1ff
    nop
    nop
    ld c, $e3
    ld h, c
    add sp, $11
    ld h, h
    add sp, $00
    ld d, c
    add sp, $11
    ld d, h

jr_017_5de8:
    add sp, $00
    ld b, c
    add sp, $11
    ld b, h
    add sp, $00
    ld sp, $11e8
    inc [hl]
    add sp, $00
    ld hl, $11e8
    inc h
    add sp, $00
    ld de, $11e8
    inc d
    rst $38
    ret c

    ld bc, $52b2
    sbc e
    ld h, $c4
    jp nz, Jump_000_04ec

    rst $28
    ld [bc], a
    or $06
    call nz, Call_017_41e1
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    add c
    sub a
    rst $30
    ld a, $5e
    or $08
    jp hl


    ld d, c
    ldh [c], a
    ld b, h
    inc [hl]
    inc h
    inc [hl]
    jp hl


    or c
    pop hl
    sub c
    ld b, c
    sub c
    ldh [c], a
    ld b, c
    ld bc, $71e1
    ldh [c], a
    ld [hl], c
    sub [hl]
    ldh [c], a
    sub c
    sub c
    sub d
    jp nz, $9191

    sub d
    rst $38
    or $02
    pop hl
    sub c
    or c
    ldh [c], a
    ld bc, $4121
    ld d, c
    ld [hl], c
    sub c
    or c
    db $e3
    ld bc, $4121
    ld d, c
    ld [hl], c
    sub c
    ld sp, hl
    ret c

    jr nc, jr_017_5de8

    inc hl
    adc c
    dec h
    call nz, $ecc2
    rlca
    xor $05
    rst $28
    ld bc, $06f6
    call nz, Call_017_41e1
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    add c
    sub a
    rst $30
    ld a, $5e
    db $ec
    inc b
    or $08
    xor $06
    jp hl


    sub c
    ei
    pop hl
    ld b, c
    db $fd
    rrca
    pop hl
    ld b, c
    ldh [$ff91], a
    pop hl
    ld b, c
    sub c
    ld [hl], c
    ld b, c
    ldh [c], a
    ld b, c
    ldh [c], a
    ld b, [hl]
    db $e3
    ld b, c
    ld b, c
    ld b, d
    jp nz, Jump_017_4141

    ld b, d
    rst $38
    ret c

    ld b, $86
    or b
    jp nz, Jump_000_04ec

    or $06
    call nz, Call_017_41e1
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    add c
    sub a
    rst $30
    ld a, $5e
    or $08
    ei
    pop hl
    sub c
    db $fd
    rrca
    pop hl
    sub d
    sub d
    ldh [c], a
    ld bc, $e102
    sub [hl]
    pop hl
    sub c
    sub c
    sub d
    ldh [$ff92], a
    pop hl
    sub c
    sub c
    sub d
    ldh [$ff92], a
    rst $38
    ret c

    jp nz, Jump_000_06f6

    ld [hl-], a
    ld sp, $c031
    or $02
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    or $08
    ld de, $3111
    ld de, $1111
    ld sp, $1111
    ld de, $1131
    ld de, $3111
    ld de, $1111
    ld sp, $1111
    ld de, $2231
    ld [hl+], a
    inc hl
    ld sp, $3231
    jp nz, Jump_000_3131

    ld [hl-], a
    rst $38
    sub $21
    or c
    ld d, d
    xor e
    ld h, $b5
    jp nz, $02ef

    rst $30
    dec l
    ld e, a
    ei
    db $ec
    inc bc
    or $09
    ldh [c], a
    add hl, bc
    pop hl
    sub d
    ldh [c], a
    ld bc, $bae1
    jp nz, $09e2

    pop hl
    sub d
    ldh [c], a
    ld bc, $2ae2
    jp nz, Jump_000_00fd

    rst $38
    or $03
    db $e3
    ld bc, $b1e2
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $e101
    or c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $f902
    sub $11
    ld sp, $ab52
    ld h, $b5
    jp nz, Jump_000_01ef

    rst $30
    dec l
    ld e, a
    db $ec
    inc bc
    ei
    or $09
    ldh [c], a
    ld c, c
    ld [bc], a
    ld b, c
    ld h, $06
    ld c, c
    ld [bc], a
    ld b, c
    ld d, [hl]
    halt
    db $fd
    nop
    rst $38
    sub $06
    add [hl]
    or b
    jp nz, Jump_000_2df7

    ld e, a
    db $ec
    inc bc
    ei
    or $03
    pop hl
    sbc c
    sub e
    sub e
    sub e
    sbc c
    sub e
    or e
    ldh [c], a
    inc bc
    pop hl
    ld a, c
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, c
    ld [hl], e
    sub e
    or e
    pop hl

jr_017_5f83:
    sbc c
    sub e
    sub e
    sub e
    sbc c
    sub e
    or e
    ldh [c], a
    inc bc
    pop hl
    cp c
    or e
    or e
    or e
    cp c
    or e
    ldh [c], a
    inc bc
    inc hl
    db $fd
    nop
    rst $38
    sub $c2
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    add c
    add c
    add c
    add c
    ei
    rst $30
    xor d
    ld e, a
    db $fd
    nop
    rst $38
    or $03
    add hl, hl
    inc sp
    inc sp
    inc sp
    add hl, sp
    inc sp
    inc sp
    inc sp
    add hl, hl
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld sp, hl
    db $d3
    jr nz, jr_017_5f83

    ld d, d
    cp e
    ld h, $b5
    jp nz, $02ef

    db $ec
    ld b, $c8
    ldh [c], a
    ld b, d
    ld b, e
    jp $c175


    sub [hl]
    sub e
    pop bc
    or d
    ld b, d
    ld [hl], e
    or $06
    db $e3
    nop
    pop bc
    rst $38
    db $d3
    ld de, $5291
    cp e
    ld h, $b5
    jp nz, Jump_000_01ef

    db $ec
    ld b, $c8
    ldh [c], a
    ld b, d
    ld b, e
    jp $c175


    ld d, [hl]
    ld d, e
    pop bc
    ld [hl], d
    ld [bc], a
    ld [hl], e
    or $06
    ld [hl], b
    pop bc
    rst $38
    db $d3
    ld bc, $b086
    jp nz, Jump_000_06ec

    ret z

    ldh [c], a
    ld [bc], a
    inc b
    jp nz, $b6e1

    ldh [c], a
    ld b, $04
    ld [hl+], a
    ld [bc], a
    pop hl
    or e
    or $06
    ldh [c], a
    nop
    pop bc
    rst $38
    db $d3
    jp nz, Jump_000_3234

    ld [hl-], a
    ld [hl-], a
    inc [hl]
    jp nz, $2626

    inc [hl]
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    or $06
    ld l, $31
    ld sp, $ff31
    ret c

    db $10
    pop hl
    ld [hl+], a
    sbc e
    ld a, $a6
    di
    ld bc, $e2c4
    ld c, b
    db $e3
    inc d
    call nz, $28e2
    db $e3
    inc h
    call nz, $98e2
    db $e3
    ld d, h
    ld hl, $71c2
    ld [hl], h
    ld sp, $81c2
    add h
    ld [hl], c
    jp nz, Jump_000_21e4

    jr nz, @+$01

    ret c

    db $10
    pop hl
    ld [hl+], a
    sbc e
    ld a, $a6
    di
    ld [bc], a
    ret z

    ldh [c], a
    sbc b
    ret z

    ldh [c], a
    cp b
    ret z

    db $e3
    ld [$b1e2], sp
    jp nz, $21e3

    inc h
    ld bc, $31c2
    inc [hl]
    ld hl, $71c2
    ld [hl], b
    rst $38
    ret c

    add hl, bc
    sbc b
    ret nz

    pop hl
    sub b
    ld [hl], b
    ld d, b
    ld [hl], c
    jp nz, Jump_017_7471

    add c
    jp nz, $8481

    ld [hl], c
    jp nz, Jump_017_7f71

    pop bc
    rst $38
    ret c

    inc h
    inc h
    inc h
    ld [hl-], a
    ld sp, $2431
    inc h
    inc h
    ld sp, $3131
    ld sp, $2424
    inc h
    ld [hl-], a
    ld sp, $3331
    ld sp, $b4f7
    ld h, b
    inc sp
    ld sp, $b4f7
    ld h, b
    inc sp
    ld sp, $b4f7
    ld h, b
    rst $30
    or h
    ld h, b
    rst $30
    or h
    ld h, b
    inc [hl]
    rst $38
    or $01
    ld [hl], $35
    dec [hl]
    ld [hl], $35
    dec [hl]
    or $08
    ld sp, hl
    sub $21
    pop de
    dec h
    xor e
    dec d
    and [hl]
    rst $28
    ld [bc], a
    jp nz, $fcc0

    jp hl


    pop de
    db $ec
    inc b
    rst $30
    ldh [$ff60], a
    rst $30
    ldh [$ff60], a
    db $ec
    ld b, $f7
    ldh [$ff60], a
    rst $30
    ldh [$ff60], a
    cp $00
    rst $38
    pop hl
    ld [bc], a
    jp nz, Jump_017_5178

    ld d, c
    pop bc
    ld a, c
    ld d, d
    halt
    ld sp, hl
    sub $11
    sub c
    dec h
    xor e
    inc d
    and [hl]
    rst $28
    ld bc, $cec2
    pop hl
    ld bc, $fc01
    db $ec
    inc b
    rst $30
    inc c
    ld h, c
    rst $30
    inc c
    ld h, c
    db $ec
    ld b, $f7
    inc c
    ld h, c
    rst $30
    inc c
    ld h, c
    cp $00
    pop hl
    ld b, d
    ld b, c
    ld b, c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld b, d
    ld b, c
    ld b, c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    pop hl
    ld bc, $4121
    ld d, c
    ld hl, $5141
    ld [hl], c
    ld b, c
    ld d, c
    ld [hl], c
    sub c
    ld [hl], c
    sub c
    or c
    ldh [c], a
    ld bc, $fff9
    sub $06
    add e
    and b
    jp nz, $e1ce

    ld bc, $fc01
    db $ec
    inc b
    rst $30
    ld c, c
    ld h, c
    rst $30
    ld c, c
    ld h, c
    db $ec
    ld b, $f7
    ld c, c
    ld h, c
    rst $30
    ld c, c
    ld h, c
    cp $00
    pop hl
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0102
    ld bc, $0201
    ld bc, $0102
    ld bc, $0201
    ld bc, $0102
    ld bc, $0201
    ld bc, $fff9
    sub $c2
    ld [hl-], a
    ld sp, $3131
    ld sp, $3131
    ld [hl-], a
    ld [hl-], a
    jp nz, Jump_000_3131

    ei
    ld [de], a
    ld de, $3211
    ld de, $1211
    ld de, $3211
    ld de, $1211
    ld de, $3211
    ld de, $3111
    ld sp, $3131
    pop bc
    ld sp, $3131
    db $fd
    nop
    rst $38
    push de
    ld [hl+], a
    or c
    ld d, d
    adc e
    ld h, $b5
    call nz, $02ef
    db $ec
    ld bc, $a1e9
    add sp, $21
    call nz, Call_017_48e2
    jp nz, Jump_017_5242

    ld a, d
    jp nz, Jump_017_7252

    sbc d
    jp nz, $9292

    cp d
    or h
    db $e3
    inc b
    db $fc
    jp hl


    pop bc
    add sp, $22
    ldh [c], a
    call nz, Call_000_2244
    inc b
    halt
    ld d, h
    ld b, d
    ld d, [hl]
    ld h, $2a
    jp hl


    ld [hl], c
    add sp, $11
    jp nz, $b1e1

    ldh [c], a
    ld bc, $4121
    ld d, d
    jp nz, Jump_017_4121

    ld d, c
    ld [hl], c
    sub d
    jp hl


    pop bc
    add sp, $22
    ldh [c], a
    call nz, Call_000_2244
    inc b
    ld [hl], h
    ld [hl], d
    ld d, h
    ld b, h
    ld [hl], h
    sub [hl]

Jump_017_61e3:
    cp d
    jp hl


    ld [hl], c
    add sp, $11
    jp hl


    sub c
    or d
    call nz, $e9b6
    pop de
    add sp, $22
    ld b, c
    ld [hl], c
    sub c
    or c
    jp hl


    pop bc
    db $e3
    ld b, $e2
    or d
    jp nz, $c2b2

    sbc d
    sub d
    or [hl]
    db $e3
    ld b, $e2
    or d
    jp nz, $c2b2

    sbc d
    ld [hl], e
    ld d, e
    ld b, d
    inc l
    ld [bc], a
    ld [hl], h
    ld [hl], d
    ld d, h
    ld b, d
    ld d, [hl]
    db $e3
    ld b, $0a
    jp hl


    sub c
    add sp, $11
    ldh [c], a
    jp nz, Jump_017_7242

    ld b, d
    sub d
    ld [hl], d
    call nz, Call_000_00fe
    rst $38
    push de
    ld [hl+], a
    ld [hl], c
    ld d, d
    adc e
    ld h, $b5
    call nz, Call_000_01ec
    rst $28
    ld bc, $e2c4
    ld a, d
    ld [hl], d
    sub d
    cp h
    sub d
    or d
    db $e3
    inc c
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    inc h
    ld b, h
    db $fc
    add sp, $11
    ei
    xor $06
    ldh [c], a
    ld [bc], a
    xor $05
    ld b, d
    ld [hl], d
    or d
    db $fd
    inc bc
    ei
    xor $06
    ld [hl+], a
    xor $05
    ld d, d
    ld [hl], d
    or d
    db $fd
    ld bc, $06ee
    pop hl
    or c
    ldh [c], a
    ld hl, $9171

Jump_017_6262:
    or c
    db $e3
    ld bc, $c222
    ldh [c], a
    or c
    db $e3
    ld bc, $4121
    ld d, d
    ei
    xor $06
    ldh [c], a
    ld [bc], a
    xor $05
    ld b, d
    ld [hl], d
    or d
    db $fd
    inc bc
    ei
    xor $06
    ld [hl+], a
    xor $05
    ld d, d
    ld [hl], d
    or d
    db $fd
    ld bc, $08ee
    ld [hl], d
    call nz, Call_017_4176
    ld [hl], c
    sub c
    or c
    add sp, $22
    rst $30
    or [hl]
    ld h, d
    xor $09
    ld d, d
    halt
    rst $30
    or [hl]
    ld h, d
    xor $09
    ld b, e
    inc hl
    ld [bc], a
    xor $06
    inc h
    ld hl, $5a41
    ld c, b
    ld [bc], a
    ld h, $76
    ld a, d
    add sp, $11
    jp Jump_017_7242


    ld b, d
    sub d
    ld [hl], d
    jp Jump_000_00fe


    rst $38
    xor $09
    jp hl


    sub c
    add sp, $22
    ldh [c], a
    sub [hl]
    ld [hl], d
    jp nz, $c272

    ld d, d
    xor $07
    ld b, c
    ld d, c
    ld [hl], c
    sub c
    ld b, c
    ld d, c
    ld [hl], c
    sub c
    ld sp, hl
    push de
    ld bc, $b086
    call nz, Call_000_01ec
    call nz, $0ae2
    ld [bc], a
    ld [hl+], a
    ld c, h
    ld [hl+], a
    ld b, d
    ld e, h
    ld d, d
    ld d, d
    ld a, d

Call_017_62e1:
    ld [hl], h
    sub h

Call_017_62e3:
    db $fc
    ei
    ldh [c], a
    ld [bc], a
    db $fd
    rrca
    ei
    pop hl
    or d
    db $fd
    rrca
    ei
    ldh [c], a
    ld [bc], a
    db $fd
    rrca
    ei
    pop hl
    or d
    db $fd
    rrca
    rst $30
    jr z, jr_017_635e

    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $30
    jr z, jr_017_6365

    inc bc
    inc hl
    ld b, d
    ei
    ldh [c], a
    ld [hl+], a
    db $fd
    inc bc
    ei
    ldh [c], a
    ld [bc], a
    db $fd
    inc bc
    ei
    pop hl
    or d
    db $fd
    inc bc
    ei
    pop hl
    sub d
    db $fd
    inc bc
    ei
    ldh [c], a
    ld [bc], a
    db $fd
    rlca
    jp nz, Jump_017_4202

    ld [bc], a
    ld d, d
    ld b, d
    call nz, Call_000_00fe
    rst $38
    ldh [c], a
    ld b, d
    ld b, d
    ld b, d
    inc h
    ld [hl+], a
    ld [hl+], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld sp, hl
    push de
    call nz, Call_000_3232
    inc h
    ei
    inc d
    inc d
    ld [de], a
    ld h, $fd
    ld [bc], a
    inc d
    ld sp, $3231
    ld [hl-], a
    ld sp, $fc31
    ei
    rst $30
    add b
    ld h, e
    db $fd
    ld c, $32
    ld sp, $3131
    ld sp, $3131
    inc h
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    inc h

jr_017_635e:
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc h
    ld [hl-], a
    inc h
    ld [hl+], a

jr_017_6365:
    ld [hl-], a
    inc h
    ld [hl+], a
    inc [hl]
    inc sp
    inc sp
    ld [hl-], a
    ei
    rst $30
    add b
    ld h, e
    db $fd
    inc b
    ld [de], a
    ld de, $3111
    ld sp, $3131
    inc l
    ld [hl-], a
    ld sp, $fe31
    nop
    rst $38
    ld [de], a
    ld de, $3211
    ld de, $f911
    sub $22
    or c
    ld d, d
    sbc e
    ld h, $b5
    rst $28
    ld [bc], a
    jp nz, $ecfc

    ld [bc], a
    jp hl


    or c
    add sp, $21
    rst $30
    or c
    ld h, e
    rst $30
    or c
    ld h, e
    db $ec
    inc b
    rst $30
    or c
    ld h, e
    rst $30
    or c
    ld h, e
    db $ec
    ld b, $f7
    or c
    ld h, e
    rst $30
    or c
    ld h, e
    cp $00
    rst $38
    pop hl
    ld bc, $2111
    ld sp, $414c
    ld sp, $1121
    inc c
    ld bc, $2111
    ld sp, $314c
    ld b, c
    ld d, c
    ld h, c
    ld a, h
    ld sp, hl
    sub $22
    ld [hl], c
    ld d, d
    adc e
    ld h, $b5
    db $ec
    ld [bc], a
    jp nz, Jump_000_01ef

    rst $30
    or c
    ld h, e
    db $ec
    ld [bc], a
    jp hl


    ld sp, $11e8
    ei
    rst $30
    ld a, [bc]
    ld h, h
    db $fd
    ld [bc], a
    ld hl, sp+$2a
    ld h, h
    db $fc
    db $ec
    inc b
    ei
    rst $30
    ld a, [bc]
    ld h, h
    db $fd
    ld b, $f8
    ld a, [hl+]
    ld h, h
    db $ec
    ld b, $fb
    rst $30
    ld a, [bc]
    ld h, h
    db $fd
    ld b, $f8
    ld a, [hl+]
    ld h, h
    db $ec
    ld [bc], a
    ei
    rst $30
    ld a, [bc]
    ld h, h
    db $fd
    ld b, $f8
    ld a, [hl+]
    ld h, h
    cp $00
    rst $38
    xor $05
    ldh [c], a
    ld sp, $04ee
    ld [hl], c
    db $e3
    ld bc, $31e2
    ld [hl], c
    db $e3
    ld bc, $31e2
    ld [hl], c
    db $e3
    ld bc, $31e2
    ld [hl], c
    db $e3
    ld bc, $31e2
    ld [hl], c
    db $e3
    ld bc, $31e2
    ld sp, hl
    ldh [c], a
    ld bc, $7131
    db $e3
    ld sp, $e201
    and c
    db $e3
    ld bc, $71e2
    and c
    ld sp, $3171
    ld bc, $a1e1
    ldh [c], a
    ld bc, $91e1
    ld a, [$01d6]
    add [hl]
    or b
    jp nz, $ecfc

    ld [bc], a
    rst $30
    or c
    ld h, e
    rst $30
    or c
    ld h, e
    db $ec
    inc b
    rst $30
    or c
    ld h, e
    rst $30
    or c
    ld h, e
    db $ec
    ld b, $f7
    or c
    ld h, e
    rst $30
    or c
    ld h, e
    cp $00
    rst $38
    sub $c2
    ei
    inc d
    db $fd
    ld c, $31
    ld sp, $3131
    db $fc
    ei
    rst $30
    ld a, [hl]
    ld h, h
    db $fd
    ld b, $31
    ld de, $3172
    ld de, $fe72
    nop
    rst $38
    ld sp, $2211
    ld sp, $2211
    ld sp, hl
    sub $11
    sub c
    ld d, d
    xor e
    ld h, $b5
    jp nz, $02ef

    db $ec
    or $f7
    and h
    ld h, h
    ld a, h
    call nz, $ecfc
    or $f8
    cp h
    ld h, h
    db $ec
    db $f4
    ld hl, sp-$44
    ld h, h
    cp $00
    rst $38
    db $e3
    ld bc, $71e2
    sub c
    or c
    db $e3
    ld bc, $91e2
    or c
    db $e3
    ld bc, $e221
    or c
    db $e3
    ld bc, $4121
    ld bc, $4121
    ld sp, hl
    add sp, $21
    jp hl


    pop bc
    ldh [c], a
    halt
    ld [hl], d
    db $e3
    ld c, h
    ldh [c], a
    sub d
    or d
    or d
    db $e3
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ldh [c], a
    ld b, d
    ld [hl], h
    jp nz, Jump_017_4ee3

    jp nz, $fa28

    sub $11
    ld [hl], c
    ld d, d
    xor e
    ld h, $b5
    jp nz, Jump_000_01ef

    db $ec
    ld [bc], a
    rst $30
    and h
    ld h, h
    db $ec
    ld [bc], a
    ldh [c], a
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    call nz, Call_017_4141
    xor $05
    db $fc
    db $ec
    ld [bc], a
    rst $30
    inc d
    ld h, l
    rst $30
    inc d
    ld h, l
    rst $30
    inc d
    ld h, l
    rst $30
    inc d
    ld h, l
    db $ec
    nop
    rst $30
    inc d
    ld h, l
    rst $30
    inc d
    ld h, l
    rst $30
    inc d
    ld h, l
    rst $30
    and h
    ld h, h
    cp $00
    rst $38
    ldh [c], a
    ld [bc], a
    ld [hl], d
    db $e3
    ld [bc], a
    ld b, d
    ldh [c], a
    ld [bc], a
    ld [hl], d
    db $e3
    ld [bc], a
    ld b, d
    ld sp, hl
    sub $01
    add [hl]
    or b
    jp nz, $ecc0

    ld [bc], a
    ldh [c], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $c402
    ld bc, $fc01
    db $ec
    ld [bc], a
    rst $30
    ld d, h
    ld h, l
    rst $30
    ld d, h
    ld h, l
    rst $30
    ld d, h
    ld h, l
    rst $30
    ld d, h
    ld h, l
    db $ec
    nop
    rst $30
    ld d, h
    ld h, l
    rst $30
    ld d, h
    ld h, l
    rst $30
    ld d, h
    ld h, l
    rst $30
    ld d, h
    ld h, l
    cp $00
    rst $38
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop hl
    ld [hl], d
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld sp, hl
    sub $c2
    ret nz

    ld [hl-], a
    ld sp, $3131
    ld [hl-], a
    ld sp, $c432
    ld sp, $fc31
    rst $30
    add a
    ld h, l
    rst $30
    add a
    ld h, l
    rst $30
    add a
    ld h, l
    ld [de], a
    ld de, $3211
    ld de, $3111
    ld sp, $3131
    ld [hl-], a
    ld sp, $fe31
    nop
    rst $38
    ld [de], a
    ld de, $3211
    ld de, $1211
    ld de, $3211
    ld [hl+], a
    ld sp, hl
    jp c, $b122

    ld d, d
    xor e
    ld h, $b5
    jp nz, $02ef

    add sp, $11
    jp hl


    or c
    db $e3
    ld [bc], a
    ld [hl+], a
    ldh [c], a
    or d
    db $e3
    ld [bc], a
    ldh [c], a
    sub d
    or d
    ld [hl], d
    sub d
    db $fc
    ei
    ldh [c], a
    ld [bc], a
    ld b, d
    ld [hl], d
    db $e3
    ld [bc], a
    db $fd
    ld bc, $e1fb
    or d
    ldh [c], a
    ld [hl+], a
    ld d, d
    or d
    db $fd
    ld bc, $e1fb
    sub d
    ldh [c], a
    ld [bc], a
    ld b, d
    sub d
    db $fd
    ld bc, $72e1
    or d
    ldh [c], a
    ld [hl+], a
    ld [hl], d
    ld d, l
    ld c, b
    cp $00
    rst $38
    jp c, Jump_017_7111

    ld d, c
    xor e
    ld h, $b5
    jp nz, Jump_000_01ef

    jp hl


    ld d, c
    xor $03
    add sp, $11
    db $e3
    pop bc
    ld [bc], a
    ld [hl+], a
    ldh [c], a
    or d
    db $e3
    ld [bc], a
    ldh [c], a
    sub d
    or d
    ld [hl], d
    sub c
    db $fc
    ei
    ldh [c], a
    pop bc
    ld [bc], a
    ld b, d
    ld [hl], d
    db $e3
    ld bc, $01fd
    ei
    pop hl
    pop bc
    or d
    ldh [c], a
    ld [hl+], a
    ld d, d
    or c
    db $fd
    ld bc, $e1fb
    pop bc
    sub d
    ldh [c], a
    ld [bc], a
    ld b, d
    sub c
    db $fd
    ld bc, $c1e1
    ld [hl], d
    or d
    ldh [c], a
    ld [hl+], a
    ld [hl], c
    pop bc
    ld d, l
    ld b, a
    cp $00
    rst $38
    jp c, $8306

    and b
    jp nz, $c0fc

    cp $00
    rst $38
    jp c, $c0c2

    db $fc
    ei
    call nz, $fd14
    ld b, $cd
    cp $00
    rst $38
    db $db
    ld de, $52c1
    xor e
    ld h, $b5
    jp nz, $02ef

    db $ec
    dec b
    jp hl


    and c
    db $e3
    inc c
    inc b
    ldh [c], a
    cp h
    or h
    sbc h
    sub d
    or d
    db $e3
    ld [$b4e2], sp
    db $e3
    ld [bc], a
    ld [hl+], a
    ld c, h
    pop hl
    ld [hl], c
    or c
    ldh [c], a
    ld bc, $e921
    pop bc
    db $fc
    add sp, $16
    call nz, Call_000_2242
    ld d, [hl]
    ld b, d
    ld b, b
    call nz, Call_000_2242
    ld d, [hl]
    ld b, d
    ld h, $02
    ld [$0204], sp
    pop hl
    or d
    ldh [c], a
    ld [hl+], a
    ld b, $04
    ld [bc], a
    pop hl
    or d
    ldh [c], a
    ld [hl+], a
    ld b, $14
    ld [hl+], a
    ld b, d
    ld h, d
    ld d, d
    ld h, d
    sub d
    adc h
    ld de, $6141
    add c
    add sp, $15
    sub h
    sub d
    add d
    or [hl]
    sub d
    sub h
    db $e3
    jr @-$1c

    or h
    add [hl]
    ld h, d
    sub [hl]
    add d
    add h
    cp h
    pop hl
    ld h, h
    ldh [c], a
    ld h, d
    ld d, d
    add [hl]
    ld h, d
    ld h, h
    sub d
    add d
    or d
    add d
    sub d
    or d
    db $e3

jr_017_66a7:
    jr jr_017_66c1

    ldh [c], a
    sub b
    cp $00
    rst $38
    db $db
    ld de, $5281
    xor e
    ld h, $b5
    jp nz, Jump_000_01ef

    db $ec
    dec b
    ldh [c], a
    ld c, h
    ld b, h
    inc l
    inc h
    inc c
    ld [bc], a

jr_017_66c1:
    ld [hl+], a
    ld c, b
    jr z, jr_017_66a7

    ld [bc], a
    ld b, d
    ld [hl], d
    db $e3
    ld [bc], a
    ldh [c], a
    ld b, d
    ld [hl], d
    db $e3
    ld [bc], a
    ld b, d
    db $fc
    add sp, $0b
    xor $04
    ei
    ldh [c], a
    ld [hl], d
    ld b, d
    db $fd
    dec bc
    ei
    ldh [c], a
    sub d
    ld d, d
    db $fd
    dec bc
    ei
    ldh [c], a
    ld h, d
    ld [de], a
    db $fd
    inc bc
    ei
    ldh [c], a
    add d
    ld [hl-], a
    db $fd
    ld [bc], a
    xor $05
    add sp, $16
    ld de, $6141
    add c
    ld b, h
    ld b, d
    ld [hl-], a
    add [hl]
    ld b, d
    ld b, h
    sbc b
    add h
    ld b, [hl]
    ld [hl-], a
    ld h, [hl]
    ld b, d
    ld b, h
    adc h
    pop hl
    sub h
    ldh [c], a
    pop bc
    ld h, d
    ld d, d
    add [hl]
    ld h, d
    ld h, h
    sub d
    add d
    or c
    ld b, d
    ld h, d
    add d
    sbc b
    sbc b
    ld b, b
    cp $00
    rst $38
    db $db
    ld bc, $b086
    jp nz, $05ec

    ldh [c], a
    sbc h
    sub h
    ld a, h
    ld [hl], h
    ld e, h
    ld d, d
    ld [hl], d
    sbc b
    ld a, b
    nop
    db $fc
    ldh [c], a
    ld b, $02
    ld [$0206], sp
    ld [bc], a
    pop hl
    ld b, d
    ld [hl], d
    sub d
    and [hl]
    and d
    and [hl]
    and d
    sub [hl]
    sub d
    sub d
    ld d, d
    sub h
    ld d, [hl]
    ld d, d
    ld e, b
    ld d, [hl]
    ld d, d
    ld d, d
    ld [bc], a
    ld [hl-], a
    ld d, d
    ld h, [hl]
    ld h, d
    ld h, [hl]
    ld h, d
    add [hl]
    add d
    add [hl]
    add d
    pop hl
    sub [hl]
    sub d
    ldh [c], a
    ld b, [hl]
    ld b, d
    pop hl
    sub [hl]
    sub d
    sub [hl]
    sub d
    ld b, [hl]
    ld b, d
    ld b, [hl]
    ld b, d
    ld b, [hl]
    ld b, d
    or d
    sub d
    add d
    ld b, d
    ei
    pop hl
    ld h, $22
    db $fd
    ld [bc], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld b, d
    ld l, b
    ld l, b
    sub b
    cp $00
    rst $38
    db $db
    jp nz, $c0fb

    db $fd
    inc bc
    call z, $1111
    ld [hl+], a
    db $fc
    ei
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    db $fd
    ld b, $12
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld sp, $3131
    ld sp, $3224
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    ei
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    db $fd
    inc bc
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jr z, jr_017_67d9

    jr z, @-$3a

    ld de, $2211
    cp $00
    rst $38
    sub $10
    sub c
    ld b, e
    adc e
    dec d
    add $fb
    call nz, Call_017_62e3
    jp nz, Jump_000_12e8

    jp hl


    or c
    sub d
    ld [hl+], a
    sub d
    ld a, h
    call nz, Call_000_10e8
    jp hl


    sub c
    ldh [c], a
    sub h
    call nz, $b1e9
    add sp, $12

jr_017_67d9:
    db $e3
    or h
    ld [hl], d
    ld b, d
    inc h
    ld h, d
    ld [hl+], a
    ld b, h
    ld h, d
    ld [hl], d
    ld b, d
    jp hl


    sub c
    db $fd
    nop
    sub $10
    sub c
    nop
    adc c
    inc hl
    and [hl]
    ei
    pop hl
    sub d
    sub c
    sub c
    ldh [c], a
    sub d
    pop hl
    sub c
    sub c
    ldh [c], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld b, h
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld h, d
    ld [hl], d
    ld b, h
    ld b, d
    pop hl
    ld [hl], d
    ldh [c], a
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld h, h
    sub d
    ld h, d
    ld [hl], h
    sub d
    or d
    ld [hl], d
    db $fd
    nop
    sub $06
    add l
    add b
    ei
    ldh [c], a
    ld [hl+], a
    db $fc
    ld hl, $2221
    cp $02
    ldh a, [c]
    ret nz

    inc d
    ldh a, [c]
    add b
    db $fc
    ld de, $1211
    cp $02
    ldh a, [c]
    ret nz

    inc b
    ldh a, [c]
    add b
    db $fc
    ld bc, $0201
    cp $02
    ldh a, [c]
    ret nz

    pop hl
    or h
    ldh a, [c]
    add b
    or c
    or c
    or d
    ldh a, [c]
    ret nz

    sub h
    ldh a, [c]
    and b
    or d
    ldh [c], a
    ld [de], a
    pop hl
    sub d
    ldh a, [c]
    add b
    db $fd
    nop
    sub $fc
    ei
    ld [de], a
    ld de, $3211
    ld de, $1211
    ld de, $3211
    ld [hl-], a
    db $fd
    ld [bc], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add c
    add c
    sub c
    sub c
    cp $00
    jp c, $b100

    nop
    adc e
    dec [hl]
    ld [hl], a
    ei
    pop hl
    cp d
    sub d
    or e
    ldh [c], a
    ld d, c
    pop hl
    or b
    or $01
    jp hl


    add c
    db $e3
    or h
    ld [hl], h
    ld d, h
    or $0a
    jp hl


    or c
    ldh [c], a
    cp b
    or $01
    ret z

    or $0a
    sub d
    or e
    ld d, e
    or $01
    jp hl


    add c
    push bc
    dec h
    dec d
    dec b
    or $0a
    jp hl


    or c
    pop hl
    cp h
    db $fd
    nop
    jp c, $9111

    ld [hl+], a
    adc c
    dec [hl]
    add l
    pop hl
    db $fc
    inc d
    cp $00
    jp c, $8704

    add b
    pop hl
    db $fc
    ld [hl], h
    cp $00
    jp c, $fbfc

    call nz, Call_000_3131
    ld sp, $3231
    ld [hl-], a
    call nz, Call_000_02fd
    call nz, Call_000_3131
    ld sp, $3131
    ld sp, $31c2
    ld sp, $fec2
    nop
    rst $10
    ld hl, $24b1
    adc e
    dec [hl]
    call nz, $e3fb
    jp nz, $c151

    ld b, d
    ld d, c
    add e
    ld [hl], c
    pop bc
    ld d, d
    db $e4
    ld d, $e3
    and h
    add h
    ld d, e
    and c
    rst $10
    nop
    ld [hl], c
    nop
    add a
    inc hl
    sub h
    rst $28
    ld [bc], a
    rst $30
    ld h, c
    ld l, c
    rst $30
    ld h, c
    ld l, c
    rst $10
    ld hl, $24b1
    adc e
    dec [hl]
    call nz, Call_000_00ef
    jp nz, Jump_017_61e3

    pop bc
    and d
    db $e4
    ld de, $5133
    pop bc
    ld de, $e3c1
    add h
    and c
    pop bc
    add h
    jp nz, $5362

    inc sp
    ldh [c], a
    sub d
    db $e3
    ld [hl-], a
    call nz, Call_000_3202
    sbc d
    ret z

    db $fd
    nop
    rst $10
    db $10
    sub c
    nop
    adc c
    inc hl
    sub h
    ei
    rst $30
    ld h, c
    ld l, c
    db $fd
    inc bc
    ldh [c], a
    ei
    jp nz, $e131

    and c
    ldh [c], a
    ld de, $c131
    ld sp, $31c1
    pop hl
    and c
    pop bc
    ldh [c], a
    ld [de], a
    ld [hl-], a
    db $fd
    ld bc, $51c2
    ld bc, $5131
    pop bc
    ld d, c
    pop bc
    ld d, c
    ld bc, $32c1
    ld d, d
    jp nz, Jump_017_4252

    ld [hl-], a
    ld [de], a
    pop hl
    and c
    add e
    sub d
    cp $00
    pop hl
    jp nz, Jump_017_51a1

    add c
    and c
    pop bc
    and c
    pop bc
    and c
    ld d, c
    pop bc
    add d
    and d
    ld sp, hl
    ei
    rst $10
    inc b
    add l
    ldh a, [$ffe2]
    and d
    or $01
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld sp, $1121
    ld bc, $b1e1
    jp nz, $04d7

    add l
    and b
    pop hl
    and h
    and d
    add d
    and d
    ldh [c], a
    dec d
    ld de, $a4e1
    add d
    ld d, d
    add d
    sub d
    and e
    and c
    ld d, d
    add d
    and d
    add d
    and d
    ldh [c], a
    inc d
    ld d, d
    ld b, d
    ld [hl-], a
    ld [de], a
    pop hl
    and d
    add d
    ld d, d
    inc sp
    ld sp, $34e2
    ld [de], a
    pop hl
    and d
    ldh [c], a
    ld [de], a
    inc [hl]
    ld [hl-], a
    ld [de], a
    pop hl
    and h
    add d
    and d
    ldh [c], a
    ld [de], a
    rst $10
    inc b
    add l
    ldh a, [rHDMA2]
    or $01
    ld d, c
    ld b, c
    ld sp, $1121
    ld bc, $b1e1
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    jp nz, $04d7

    add l
    or b
    pop hl
    ld d, h
    sub d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld d, d
    jp nz, Jump_017_52e3

    ld b, d
    ld [hl-], a
    ld [de], a
    ldh [c], a
    and c
    add e
    sub d
    db $fd
    nop
    rst $10
    ei
    ld [de], a
    ld d, d
    ld [hl-], a
    ld de, $2231
    ld [hl-], a
    ld [hl-], a
    ld de, $1221
    ld d, c
    ld sp, $3222
    ld de, $1131
    ld sp, $7121
    ld [hl+], a
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld de, $2231
    ld [hl-], a
    ld [hl-], a
    ld de, $1221
    ld d, d
    ld [hl-], a
    ld hl, $01f6
    inc de
    inc d
    or $07
    ld de, $1131
    ld sp, $7121
    ld sp, $1281
    ld d, d
    ld [hl-], a
    ld de, $2231
    ld [hl-], a
    ld [hl-], a
    ld de, $1221
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld de, $1131
    ld sp, $2232
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld de, $2231
    ld [hl-], a
    ld [hl-], a
    ld de, $2421
    inc h
    or $01
    inc [hl]
    dec [hl]
    dec [hl]
    or $07
    ld sp, $5131
    ld sp, $2131
    db $fd
    nop
    pop de
    ld bc, $00b1
    adc e
    dec [hl]
    add $e3
    or l
    db $e4
    dec h
    db $e3
    or l
    and l
    sub h
    ld [hl], h
    sub h
    ld [hl], h
    ld b, h
    inc [hl]
    inc h
    ldh [c], a
    or l
    db $e3
    dec h
    ldh [c], a
    or l
    and l
    sub h
    ld [hl], h
    sub h
    ld [hl], h
    ld b, h
    inc [hl]
    inc h
    or $06
    ldh a, [c]
    ldh a, [$ffe1]
    or e
    add sp, $11
    and c
    or l
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ldh a, [c]
    add $e8
    ld bc, $e2fb
    ld c, c
    inc hl
    ld sp, $41c1
    pop bc
    ld [hl], e
    sub e
    ld c, d
    ld c, c
    inc hl
    ld sp, $41c1
    pop bc
    ld [hl], e
    sub e
    db $e3
    inc hl
    ldh [c], a
    or d
    sub c
    jp nz, Jump_017_4952

    inc hl
    ld sp, $41c1
    pop bc
    ld [hl], e
    sub e
    ld c, d
    ld c, c
    inc hl
    ld sp, $41c1
    pop bc
    or $01
    pop hl
    sub h
    add h
    ld [hl], h
    add h
    sub h
    and h
    or h
    ldh [c], a
    inc h
    inc [hl]
    ld b, h
    ld d, h
    ld h, h
    sub h
    and h
    or h
    db $e3
    inc h
    ldh [c], a
    or h
    and h
    sub h
    and h
    or h
    db $e3
    inc h
    ld [hl], h
    sub h
    or $06
    or d
    jp nz, $c142

    ld [hl+], a
    ldh [c], a
    sub c
    or c
    db $e3
    ld hl, $4131
    ld h, c
    sub c
    or c
    pop bc
    db $e4
    ld b, c
    pop bc
    ld [hl-], a
    ld hl, $b3e3
    and c
    pop bc
    sub c
    pop bc
    ld [hl], c
    pop bc
    sub c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    pop bc
    sub c
    pop bc
    db $e4
    inc sp
    inc bc
    db $e3
    sub d
    or d
    jp nz, $01f6

    or h
    db $e4
    inc [hl]
    inc h
    db $e3
    or h
    and h
    sub h
    ld h, h
    sub h
    or h
    sub h
    ld h, h
    inc [hl]
    ldh a, [c]
    ldh a, [$ffe2]
    or b
    add sp, $11
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    jp nz, $c6f2

    or $06
    add sp, $01
    ld b, c
    pop hl
    or c
    ldh [c], a
    ld hl, $4131
    ld b, c
    pop bc
    ld [hl], d
    ld [hl], c
    ld b, c
    pop bc
    ld [hl+], a
    ld sp, $e142
    or c
    ldh [c], a
    ld hl, $4131
    ld b, c
    pop bc
    ld [hl], d
    and c
    or c
    ld [hl], c
    ld b, c
    ld sp, $e121
    or c
    db $fd
    nop
    sub $00
    sub c
    nop
    adc c
    inc h
    rst $00
    ret nz

    ldh a, [c]
    ldh a, [$ffe1]
    ld h, e
    ld d, c
    ld h, l
    ld d, c

Jump_017_6b4e:
    ld b, c
    ld sp, $1121
    ld bc, $b1e0
    ldh a, [c]
    rst $00
    db $fc
    cp c
    sub e
    and d
    or d
    ldh [c], a
    inc hl
    ld b, e
    pop hl
    cp d
    cp c
    sub e
    and d
    or d
    ldh [c], a
    inc hl
    ld b, e
    sub e
    ld d, d
    ld d, c
    jp nz, $e102

    cp c
    sub e
    and d
    or d
    ldh [c], a
    inc hl
    ld b, e
    pop hl
    cp d
    cp c
    sub e
    and d
    or d
    jp nz, Jump_000_32e3

    jp nz, $e132

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh [c], a
    ld b, c
    pop hl
    or c
    or d
    or c
    or c
    or c
    or d
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    ldh [c], a
    ld b, c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    and c
    pop hl
    ld [hl], c
    ldh [c], a
    sub c
    ld h, d
    pop hl
    ld b, c
    ldh [c], a
    ld b, c
    pop hl
    ld b, c
    ldh [c], a
    ld sp, $61e1
    ldh [c], a
    ld sp, $61e1
    ldh [c], a
    ld bc, $41e1
    sub c
    ld b, c
    ldh [c], a
    ld bc, $41e1
    ldh [c], a
    ld b, c
    pop hl
    ld b, c
    ldh [c], a
    sub c
    pop hl
    ld bc, $e201
    ld d, c
    pop hl
    ld bc, $e201
    ld bc, $01e1
    ld [hl-], a
    jp nz, $f6c8

    ld bc, $f0f2
    ld h, b
    ld d, c
    ld b, c
    ld sp, $0121
    ldh [$ffb1], a
    jp nz, $c7f2

    or $06
    push bc
    ldh [$ffb1], a
    jp z, $e0c5

    or c
    add $e1
    or c
    and c
    sub c
    ld h, c
    cp $00
    sub $04
    add l
    ret nz

    ret nz

    ldh a, [c]
    ldh a, [$ffe1]
    or e
    and c
    or l
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    sub $04
    add c
    add b
    db $fc
    ei
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    db $fd
    dec bc
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld d, e
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ei
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    db $fd
    dec bc
    or d
    jp hl


    ld bc, $32e3
    pop hl
    jp hl


    add c
    or d
    jp hl


    ld bc, $32e3
    pop hl
    jp hl


    add c
    or d
    or d
    or d
    or d
    ldh [c], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld [hl+], a
    ld hl, $2121
    ld hl, $2121
    ld hl, $0101
    ld bc, $0101
    ld bc, $e101
    or d
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    or d
    jp z, $01f6

    ldh a, [c]
    ldh a, [$ffe2]
    or b
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    jp nz, Jump_000_06f6

    ldh a, [c]
    add b
    pop hl
    push bc
    pop hl
    ld b, c
    jp z, $e1c5

    ld b, c
    jp z, Jump_000_00fe

    pop de
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, h
    ld d, h
    inc [hl]
    inc [hl]
    ld d, h
    ld d, h
    ld d, h
    inc [hl]
    ld d, h
    inc [hl]
    ld d, h
    inc [hl]
    inc [hl]
    ld h, h
    inc [hl]
    ld [hl], h
    inc [hl]
    add h
    sub h
    sub h
    sub h
    sub h
    sub h
    sub h
    db $fc
    sub $fb
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    db $fd
    ld [bc], a
    ld h, d
    ld sp, $2261
    ld [hl], d
    ld hl, $3131
    ld sp, $3131
    ld b, c
    ld sp, $22fb
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    db $fd
    ld [bc], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld sp, $3223
    ld [hl+], a
    ld [hl-], a
    db $fd
    ld bc, $3222
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    ld [de], a
    ld [de], a
    ld de, $1221
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1221
    ld [de], a
    ld [de], a
    ld sp, $3131
    ld sp, $00fe
    rst $38
    push de
    ld bc, $00b1
    adc e
    dec h
    ldh a, [$ffe3]
    ld h, d
    or $01
    xor $05
    ld d, c
    ld b, c
    ld sp, $1121
    xor $04
    ld bc, $b1e2
    and c
    sub c
    add c
    push de
    ld bc, $00b1
    adc e
    dec h
    add $e2
    ld h, d
    ld h, d
    ld h, d
    db $e3
    ld h, d
    jp nz, $9264

    add d
    ld b, d
    sub d
    add d
    ld b, d
    ld h, h
    ldh [c], a
    ld h, d
    sub d
    or d
    db $e3
    ld [de], a
    ld b, h
    ld d, d
    ld h, d
    ld h, d
    ld b, d
    ld h, d
    jp nz, Jump_017_4262

    ld l, d
    rst $38
    push de
    nop
    or c
    nop
    adc e
    dec h
    ldh a, [$ffe3]
    ld [de], a
    or $01
    xor $05
    ld bc, $b1e2
    and c
    sub c
    add c
    xor $04
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld sp, $00d5
    or c
    nop
    adc e
    dec h
    add $e2
    ld [de], a
    ld [de], a
    ld [de], a
    db $e3
    ld [de], a
    jp nz, $ef14

    ld bc, $00d5
    add c
    nop
    adc b
    inc hl
    rst $00
    pop bc
    sub d
    add d
    ld b, d
    sub d
    add d
    ld b, d
    ld h, e
    rst $28
    ld bc, $00d5
    or c
    nop
    adc e
    dec h
    add $e2
    ld [de], a
    ld h, d
    add d
    sub d
    sub h
    sub d
    db $e3
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    jp nz, $1212

    ld a, [de]
    rst $38
    push de
    dec b
    add h
    ret nz

    pop hl
    ld h, h
    sub d
    ld h, d
    or d
    ld h, d
    jp nz, Jump_017_4264

    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld h, h
    ld h, d
    sub d
    or d
    ldh [c], a
    ld [de], a
    pop hl
    ld b, h
    ld d, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    jp nz, Jump_017_6262

    ld l, d
    rst $38
    push de
    inc h
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    inc h
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    inc h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    inc h
    rst $38
    sub $10
    or c
    dec h
    adc e
    dec [hl]
    and [hl]
    db $fc
    jp nz, Jump_017_41e3

    jp nz, Jump_000_2132

    ret z

    ldh [c], a
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld [hl+], a
    ld sp, $e142
    or c
    and c
    sub c
    or $01
    ld [hl], h
    sub h
    ld [hl], h
    ld b, h
    inc [hl]
    inc h
    or $06
    jp nz, Jump_017_41e3

    jp nz, Jump_000_2132

    ret z

    ldh [c], a
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld [hl+], a
    pop hl
    or c
    ldh [c], a
    ld [de], a
    ld hl, $c141
    ld [hl-], a
    pop hl
    or c
    add sp, $12
    or $01
    jp hl


    add c
    db $e3
    jp nz, $e892

    ld [hl+], a
    and d
    or $06
    jp hl


    or c
    or c
    pop bc
    add sp, $12
    and c
    pop bc
    sub d
    ld [hl], c
    ld b, e
    ld hl, $72c1
    sub c
    and e
    or c
    pop bc
    db $e4
    ld [hl+], a
    ld [hl], c
    or e
    and c
    pop bc
    sub c
    pop bc
    ld [hl], c
    pop bc
    add sp, $10
    jp nz, Jump_017_41e3

    jp nz, Jump_000_2132

    ret z

    pop bc
    ld hl, $4131
    ld [hl], c
    and c
    or c
    ld hl, $3141
    ld hl, $b1e2
    ld [hl-], a
    pop hl
    or d
    add sp, $12
    db $e4
    or c
    pop bc
    and c
    pop bc
    or d
    and c
    sub e
    ld [hl], c
    pop bc
    ld b, d
    ld hl, $4133
    pop bc
    ld [hl], d
    db $e3
    or c
    and e
    or $01
    sub h
    and h
    or h
    or $06
    db $e4
    ld [hl+], a
    db $e3
    ld [hl], c
    pop bc
    add sp, $10
    jp nz, Jump_017_41e3

    jp nz, Jump_000_2132

    ret z

    pop bc
    ld hl, $4131
    ld [hl], c
    and c
    or c
    ld hl, $3141
    ld hl, $b1e2
    ld [hl-], a
    pop hl
    or d
    add sp, $12
    db $e3
    jp nz, $c191

    ld b, d
    ld [hl], c
    sub e
    db $e4
    ld bc, $21c1
    pop bc
    ld bc, $41c1
    pop bc
    ld [hl], c
    pop bc
    sub d
    or c
    ld [hl], e
    ld bc, $21c1
    pop bc
    ld b, c
    pop bc
    ld h, e
    db $e3
    or e
    sub c
    pop bc
    or d
    db $e4
    ld hl, $e3c1
    or c
    pop bc
    sub c
    pop bc
    ld h, c
    jp nz, $c261

    ld h, d
    call nz, Call_000_10e8
    db $e3
    ld [hl], h
    add sp, $12
    db $e4
    jp nz, $c371

    ld b, c
    inc hl
    db $e3
    or d
    db $e4
    ld [hl+], a
    ld b, c
    pop bc
    ret nz

    pop bc
    db $e4
    or $01
    jp hl


    add c
    jp nz, $e892

    ld [hl+], a
    and d
    or $06
    jp hl


    or c
    or c
    pop bc
    and d
    sub c
    ld [hl], e
    ld b, c
    pop bc
    or $01
    ld [hl+], a
    ld [hl-], a
    add sp, $22
    ld b, h
    ld [hl-], a
    ld [hl+], a
    add sp, $12
    or $06
    db $e3
    or c
    sub e
    or c
    db $e4
    inc hl
    ld [hl], d
    sub h
    ld [hl], h
    add sp, $10
    cp $00
    sub $10
    sub c
    nop
    adc c
    inc h
    rst $00
    db $fc
    ldh [c], a
    jp nz, $c271

    ld [hl], d
    ld h, c
    ret z

    ret nz

    jp nz, $c271

    ld [hl], d
    ld h, c
    ret z

    call z, Call_017_62e1
    ld [hl-], a
    ei
    pop hl
    jp nz, $c272

    ld [hl], d
    jp nz, $c272

    ld [hl], d
    jp nz, $c272

    ld [hl], d
    jp nz, $c272

    ld [hl], d
    jp nz, Jump_017_71e2

    jp nz, $7172

    jp nz, Jump_017_72e1

    jp nz, $c272

    ld [hl], d
    jp nz, $c272

    ld [hl], d
    ld h, d
    ld [hl-], a
    db $fd
    ld bc, $fbe2
    jp nz, $fd02

    rlca
    ei
    jp nz, $fd22

    inc bc
    ld sp, $b1e1
    or c
    ldh [c], a
    ld sp, $b1e1
    or c
    ldh [c], a
    ld [hl-], a
    call nz, Call_000_24e3
    jp nz, $b2e1

    jp nz, $c272

    ld [hl], d
    jp nz, Jump_017_4272

    ld [hl+], a
    ld [hl-], a
    ld b, c
    ld [hl], d
    ld [hl], c
    ld b, d
    ld [hl+], a
    ldh [c], a
    ld [hl+], a
    jp nz, $c242

    ld b, d
    jp nz, $c202

    pop hl
    ld [hl], c
    ld h, e
    ld h, c
    sub e
    or d
    ld h, h
    ldh [c], a
    inc [hl]
    cp $00
    sub $05
    add [hl]
    and b
    db $fc
    ei
    pop hl
    ld b, d
    ld [hl+], a
    ld b, d
    ld [hl], d
    and d
    or c
    inc hl
    ld [hl-], a
    ld b, d
    ld [hl+], a
    ld b, d
    ld [hl], c
    and e
    or d
    ldh [c], a
    or $01
    ldh a, [c]
    ldh a, [$ff29]
    ld [de], a
    ld [bc], a
    pop hl
    or d
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld sp, $f221
    and b
    or $06
    ld b, d
    ld [hl+], a
    ld b, d
    ld [hl], d
    and d
    or c
    inc hl
    ld [hl-], a
    ld b, d
    ld [hl+], a
    ld b, d
    ld [hl], c
    and e
    or d
    ldh [c], a
    ld [hl+], a
    pop hl
    ld [hl], d
    db $fd
    ld [bc], a
    sub d
    ld [hl], d
    sub d
    ld b, d
    ld [hl], d
    sub c
    ldh [c], a
    inc bc
    pop hl
    ld [hl], d
    sub d
    ldh [c], a
    ld b, d
    ld [hl-], a
    ld hl, $e103
    sub d
    ld [hl], d
    sub d
    or d
    sub d
    or d
    ld h, d
    sub d
    or c
    ldh [c], a
    inc hl
    pop hl
    sub c
    and c
    or d
    pop bc
    or c
    jp nz, $c4b2

    db $e3
    sub h
    pop hl
    ld b, d
    ldh [c], a
    ld b, d
    ld [hl-], a
    ld hl, $b3e1
    and d
    sub d
    ld [hl], d
    ld b, d
    ld [hl+], a
    ld [hl-], a
    ld b, c
    ld [hl], d
    ld [hl], c
    ld b, d
    ld [hl+], a
    ldh [c], a
    ld [hl+], a
    ld [bc], a
    pop hl
    ld [bc], a
    ld [hl], d
    ldh [c], a
    ld bc, $4142
    ld [hl-], a
    ld [hl+], a
    ld bc, $b3e1
    sub c
    or e
    ldh [c], a
    ld [hl+], a
    pop hl
    or h
    or h
    cp $00
    sub $fc
    ei
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2133
    inc sp
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2233
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2133
    inc sp
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2233
    ld sp, $8271
    db $fd
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2133
    inc sp
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2233
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2133
    inc sp
    ld [hl+], a
    ld sp, $5151
    ld sp, $5151
    ld [hl], $52
    ld d, d
    ei
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $2233
    ld [hl-], a
    ld [hl+], a
    db $fd
    ld bc, $2212
    ld [hl-], a
    ld hl, $2233
    ld [hl-], a
    ld hl, $1231
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    pop de
    ld h, l
    ld h, l
    ld h, l
    ld [hl], l
    sub h
    sub $82
    add c
    add c
    cp $00
    call nc, $b101
    nop
    adc e
    dec [hl]
    ldh a, [$ffe2]
    ld a, h
    ld [hl], d
    ld [hl], d
    ld [hl], h
    ld b, h
    inc b
    db $f4
    dec de
    ld bc, $f404
    dec de
    rst $38
    xor h
    and d
    and d
    and h
    ld [hl], h
    inc [hl]
    db $f4
    dec de
    ld bc, $f634
    ld bc, $f41b
    dec de
    rst $38
    ld l, e
    xor d
    or $04
    db $f4
    dec de
    ld bc, $f618
    ld bc, $f43b
    dec de

jr_017_70c1:
    rst $38
    adc e
    db $f4
    dec de
    ld bc, $f60a
    inc b
    jr c, jr_017_70c1

    dec b
    ld d, b
    rst $38
    call nc, $a101
    nop
    adc d
    inc [hl]
    add $ef
    ld bc, $7ce2
    ld [hl], d
    ld [hl], d
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, h
    ld [hl], d
    ld [hl], d
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    db $f4
    dec de
    ld bc, $01f6

jr_017_70eb:
    dec de
    db $f4
    dec de
    rst $38
    dec de
    ld a, [de]
    or $04

jr_017_70f3:
    jr jr_017_70eb

    ld bc, $3b3b
    ld a, [hl-]
    or $04
    jr c, jr_017_70f3

    dec b
    nop
    rst $38
    call nc, $f405
    ret nz

    pop hl
    inc c
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    db $f4
    dec de
    ld bc, $f404
    dec de

Jump_017_7111:
    rst $38
    inc a
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    inc [hl]
    inc [hl]
    db $f4
    dec de
    ld bc, $f634
    ld bc, $f46b
    dec de
    rst $38
    ld l, e
    ld l, d
    or $04
    db $f4
    dec de
    ld bc, $f668
    ld bc, $f48b
    dec de
    rst $38
    adc e
    db $f4
    dec de
    ld bc, $f68a
    inc b
    adc b
    or $05
    sub b
    rst $38
    call nc, $3821
    jr z, jr_017_7179

    inc [hl]
    ld [hl+], a
    ld [hl+], a
    jr c, jr_017_716e

    jr c, jr_017_717c

    ld [hl+], a
    ld [hl+], a
    jr c, jr_017_716e

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr c, @+$24

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $ff34
    ei
    ld bc, $01c3
    pop bc

jr_017_716b:
    ld bc, $fdc1

jr_017_716e:
    inc bc
    ld sp, hl
    ei
    ld hl, $21c3
    pop bc
    ld hl, $fdc1
    inc bc

jr_017_7179:
    ld sp, hl
    ei
    ld b, c

jr_017_717c:
    jp $c141


    ld b, c
    pop bc
    db $fd
    inc bc
    ld sp, hl
    ei
    ld b, c
    jp $c141


    ld b, c
    pop bc
    db $fd
    ld bc, $cf41
    ld sp, hl
    sub $01
    or c
    nop
    adc e
    dec h
    ldh a, [$ffe3]
    ret nz

    or $03
    rst $30
    ld a, d
    ld [hl], c
    or $06
    db $fc
    ld [hl], c
    push bc
    ld c, b
    jp nz, $c591

    jr z, jr_017_716b

    or c
    push bc
    ld [$f4c2], sp
    dec de
    ld bc, $c422
    db $f4
    dec de
    rst $38
    ld h, $f4
    dec de
    ld bc, $4024
    ret nz

    ldh [c], a
    ld b, [hl]
    or d
    db $f4
    dec de
    ld bc, $7444
    ld h, [hl]
    ld [hl], d
    ld h, h
    ld b, d
    ld [hl+], a
    ld b, c
    push bc
    or $0c
    cp h
    pop bc
    or $06
    ldh [c], a
    ld b, [hl]
    or d
    db $f4
    dec de
    ld bc, $7444
    ld h, [hl]
    ld [hl], d
    ld h, h
    ld b, d
    ld [hl+], a
    or $0c
    ld c, a
    pop bc

Jump_017_71e2:
    or $06
    ld b, $f4
    dec de
    rst $38
    halt
    db $f4
    dec de
    ld bc, $2604
    db $f4
    dec de
    rst $38
    sub [hl]
    db $f4
    dec de
    ld bc, $4624
    ld [hl-], a
    ld b, d
    ld h, h
    ld [hl], b
    jp nz, $b606

    sub h
    db $f4
    dec de
    ld bc, $0626
    db $f4
    dec de
    rst $38
    sub h
    or b
    ret nz

    cp $00
    rst $38
    sub $01
    or c
    nop
    adc e
    dec h
    add $ef
    ld bc, $c0e2
    or $03
    db $ec
    rlca
    db $f4
    dec de
    rst $38
    rst $30
    ld a, d
    ld [hl], c
    db $f4
    dec de
    ld bc, $00ec
    or $06
    db $fc
    ld bc, $08c5
    jp nz, Jump_000_1bf4

    rst $38
    sub c
    push bc
    sbc b
    jp nz, Jump_000_1bf4

    ld bc, $c571
    ld a, b
    jp nz, $c492

    sub [hl]
    sub h
    or b
    ret nz

Jump_017_7242:
    rst $28
    ld bc, $e2e2
    ld b, [hl]
    or d
    db $f4
    dec de
    ld bc, $7444
    ld h, [hl]
    ld [hl], d
    ld h, h
    ld b, d
    ld [hl+], a

Jump_017_7252:
    ld b, c
    push bc
    cp d
    rst $28
    ld bc, $1bf4
    rst $38
    ld bc, $7141
    or c
    db $f4
    dec de
    ld bc, $f401
    dec de
    rst $38
    ld [hl], c
    ld bc, $2141
    ld h, c
    sub c
    db $f4
    dec de
    ld bc, $2111
    db $f4
    dec de
    rst $38
    sub c
    ld hl, $ef61
    ld bc, $b246
    db $f4
    dec de
    ld bc, $7444
    ld h, [hl]
    ld [hl], d
    ld h, h
    ld b, d
    ld [hl+], a
    or $0c
    ld c, a
    pop bc
    or $06
    db $f4
    dec de
    rst $38
    sub $01
    or c
    nop
    adc e
    dec h
    and [hl]
    ld b, $b6
    sub h
    ld h, $66
    sub h
    ld b, [hl]
    halt
    ld b, h
    or [hl]
    halt
    ld b, h
    ld b, $b6
    sub h
    ld h, $66
    sub h
    or $03
    db $f4
    dec de
    rst $38
    ei
    ld h, c
    jp $c161


    ld h, c
    pop bc
    db $fd
    dec b
    ld h, c
    rst $08
    db $f4
    dec de
    ld bc, $06f6
    cp $00
    rst $38
    db $d3
    dec b
    add h
    ret nz

    pop hl
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    db $fc
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    ld [hl], b
    ld [hl], c
    rst $30
    ld h, [hl]
    ld [hl], c
    rst $30
    ld [hl], b
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    add h
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    ld [hl], b

Jump_017_72e1:
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    ld bc, $01c3
    pop bc
    ld bc, $01c1
    jp $c101


    ld bc, $21c1
    jp $c121


    ld hl, $21c1
    jp $c121


    ld hl, $f7c1
    ld a, d
    ld [hl], c
    rst $30
    ld [hl], b
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    add h
    ld [hl], c
    rst $30
    ld h, [hl]
    ld [hl], c
    rst $30
    ld [hl], b
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    ld a, d
    ld [hl], c
    rst $30
    ld h, [hl]
    ld [hl], c
    rst $30
    ld [hl], b
    ld [hl], c
    db $f4
    dec de
    rst $38
    ei
    or c
    jp $c1b1


    or c
    pop bc
    db $fd
    dec b
    or c
    rst $08
    db $f4
    dec de
    ld bc, $00fe
    rst $38
    db $d3
    pop hl
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    or $06
    ei
    dec d
    pop bc
    dec d
    pop bc
    inc hl
    pop bc
    db $fd
    inc bc
    or $03
    ei
    ld sp, $31c3
    pop bc
    ld sp, $fdc1
    dec b
    jr c, jr_017_7376

    ei
    ld de, $11c3
    pop bc
    ld de, $fdc1
    dec e
    jr c, jr_017_738b

    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ei
    ld de, $11c3
    pop bc
    ld de, $fdc1
    dec e
    jr c, jr_017_7398

    ld sp, $3131
    ld sp, $3131
    ld sp, $00fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_7376:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_738b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_7398:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_017_7471:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_017_76a9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_017_7f71:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
