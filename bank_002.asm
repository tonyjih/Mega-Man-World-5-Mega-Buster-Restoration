; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    jp Jump_002_4478


    jp Jump_002_439f


    jp Jump_002_4d2d


    jp Jump_002_4035


    ld h, d
    ld a, [hl]
    ld h, h
    ld e, [hl]
    ld h, l
    ld h, c
    ld h, a
    ld e, h
    ld l, h
    nop
    nop
    ld e, l
    ld l, h
    nop
    rst $38
    nop
    ld e, [hl]
    nop
    ld e, c
    ld h, e
    nop
    ld h, e
    ld l, h
    rst $38
    ld l, l
    ld a, d
    ld h, e
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
    ld a, c
    rst $38
    ld a, b

Jump_002_4035:
    ld hl, $de57
    ld a, [hl]
    ld [hl], $00
    or a
    ld d, $ff
    jr nz, jr_002_404b

    ld d, $60
    ld a, [$df0a]
    cp $0b
    jr nz, jr_002_404b

    ld d, $7c

jr_002_404b:
    ld a, d
    ld [$d1e0], a
    ld hl, $de56
    ld a, [hl]
    ld [hl], $00
    or a
    ret nz

    ld a, [$df0a]
    cp $10
    jp z, Jump_002_407d

    ld hl, $400b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

jr_002_4069:
    cp $ff
    ret z

    push af
    call Call_002_4d2d
    call Call_000_01c5
    pop af
    ld [$de58], a
    call Call_000_0222
    jp Jump_000_0225


Jump_002_407d:
    ld a, [$de8a]
    and $07
    add $30
    ld e, a
    ld a, $00
    adc $40
    ld d, a
    ld a, [de]
    jr jr_002_4069

    adc e
    ld b, c
    adc a
    ld b, c
    sub e
    ld b, c
    sub a
    ld b, c
    sbc e
    ld b, c
    and c
    ld b, c
    and l
    ld b, c
    xor e
    ld b, c
    or c
    ld b, c
    or a
    ld b, c
    adc e
    ld b, c
    dec hl
    ld b, d
    dec [hl]
    ld b, d
    cp l
    ld b, c
    pop bc
    ld b, c
    push bc
    ld b, c
    ret


    ld b, c
    call $d141
    ld b, c
    push de
    ld b, c
    db $db
    ld b, c
    rst $18
    ld b, c
    db $e3
    ld b, c
    rst $20
    ld b, c
    db $eb
    ld b, c
    pop af
    ld b, c
    push af
    ld b, c
    ld sp, hl
    ld b, c
    db $fd
    ld b, c
    ld bc, $0542
    ld b, d
    add hl, bc
    ld b, d
    dec c
    ld b, d
    ld de, $1542
    ld b, d
    dec de
    ld b, d
    ld hl, $2542
    ld b, d
    ccf
    ld b, d
    ld b, a
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld d, l
    ld b, d
    ld e, c
    ld b, d
    ld e, a
    ld b, d
    ld h, l
    ld b, d
    ld l, a
    ld b, d
    ld [hl], e
    ld b, d
    ld [hl], a
    ld b, d
    ld a, e
    ld b, d
    ld a, a
    ld b, d
    adc c
    ld b, d
    add e
    ld b, d
    sbc l
    ld b, d
    and c
    ld b, d
    sbc c
    ld b, d
    xor c
    ld b, d
    xor l
    ld b, d
    ld b, e
    ld b, d
    push bc
    ld b, d
    or c
    ld b, d
    or l
    ld b, d
    cp c
    ld b, d
    cp l
    ld b, d
    pop bc
    ld b, d
    push hl
    ld b, d
    db $eb
    ld b, d
    di
    ld b, d
    ei
    ld b, d
    ld bc, $0543
    ld b, e
    rst $30
    ld b, d
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    ret


    ld b, d
    call $d142
    ld b, d
    push de
    ld b, d
    reti


    ld b, d
    db $dd
    ld b, d
    pop hl
    ld b, d
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    ld [hl], a
    ld b, e
    and l
    ld b, c
    add hl, bc
    ld b, e
    inc de
    ld b, e
    dec e
    ld b, e
    ld sp, $3b43
    ld b, e
    ld b, l
    ld b, e
    ld c, a
    ld b, e
    ld e, c
    ld b, e
    ld h, e
    ld b, e
    ld l, l
    ld b, e
    add c
    ld b, e
    adc e
    ld b, e
    sub l
    ld b, e
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    daa
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $804e
    nop
    call $804e
    nop
    sub $4e
    add b
    nop
    rst $18
    ld c, [hl]
    ret nz

    nop
    add sp, $4e
    rst $18
    ld c, [hl]
    add b
    nop
    rst $30
    ld c, [hl]
    ret nz

    nop
    inc b
    ld c, a
    call $c04e
    nop
    ld hl, $cd4f
    ld c, [hl]
    ret nz

    nop
    inc a
    ld c, a
    call $c04e
    nop
    ld d, h
    ld c, a
    call Call_000_104e
    inc b
    ld e, [hl]
    ld d, c
    add b
    inc b
    ld l, h
    ld d, c
    add b
    inc b
    adc b
    ld d, c
    db $10
    inc bc
    xor l
    ld d, c
    db $10
    inc bc
    cp [hl]
    ld d, c
    db $10
    ld a, [bc]
    ret nc

    ld d, c
    sub b
    dec bc
    push hl
    ld d, c
    rst $30
    ld d, c
    db $10
    inc c
    ld [de], a
    ld d, d
    add b
    dec b
    ld l, $52
    add b
    add hl, bc
    dec a
    ld d, d
    db $10
    ld a, [bc]
    ld e, a
    ld d, d
    jr nc, jr_002_41f7

    ld l, [hl]
    ld d, d
    ld a, d
    ld d, d
    db $10
    ld a, [bc]
    adc b
    ld d, d
    db $10
    ld a, [bc]

jr_002_41f7:
    sub e
    ld d, d
    db $10
    inc bc
    xor e
    ld d, d
    db $10
    rlca
    cp h
    ld d, d
    add b
    inc b
    rst $20
    ld d, d
    add b
    ld a, [bc]
    di
    ld d, d
    add b
    rlca
    ld [$8053], sp
    inc b
    ld sp, $1053
    inc b
    ld b, a
    ld d, e
    jr nc, jr_002_4221

    ld e, l
    ld d, e
    ld d, d
    ld d, e
    jr nc, jr_002_4227

    add a
    ld d, e
    ld l, b
    ld d, e

jr_002_4221:
    add b
    ld [$53ab], sp
    sub b

Jump_002_4226:
    add hl, bc

jr_002_4227:
    pop bc
    ld d, e
    db $dd
    ld d, e
    rrca
    ld [bc], a
    call z, $cc4e
    ld c, [hl]
    call z, $cc4e
    ld c, [hl]
    ldh a, [rIF]
    call z, $cc4e
    ld c, [hl]
    call z, $cc4e
    ld c, [hl]
    add b
    inc b
    db $e3

Jump_002_4242:
    ld d, h
    add b
    inc b
    rst $28
    ld d, h
    add b
    ld bc, $551b
    db $10
    ld [bc], a
    dec sp
    ld d, l
    jr nc, jr_002_4255

    or $5c
    jr c, jr_002_42b2

jr_002_4255:
    db $10
    rlca
    ld c, b
    ld d, l
    sub b
    add hl, bc
    ld e, l
    ld d, l
    ld [hl], a
    ld d, l
    sub b
    add hl, bc
    and [hl]
    ld d, l
    rst $00
    ld d, l
    rrca
    nop
    ld a, [de]
    ld d, l
    inc bc
    ld d, l
    ld a, [de]
    ld d, l
    ld a, [de]
    ld d, l
    add b
    inc b
    inc bc
    ld d, [hl]
    add b
    inc b
    rra
    ld d, [hl]
    db $10
    inc b
    ld b, h
    ld d, [hl]
    db $10
    inc bc
    ld d, d
    ld d, [hl]
    db $10
    inc bc
    sub [hl]
    ld d, [hl]
    jr nc, jr_002_4289

    ld c, a
    ld d, a
    ld a, h
    ld d, a

jr_002_4289:
    db $10
    inc bc
    add $56
    db $10
    inc bc
    adc b
    ld d, a
    or b
    inc bc
    dec l
    ld e, b
    ld d, l
    ld e, b
    ld e, a
    ld e, b
    ld bc, $b003
    ld e, b
    ld bc, $be03
    ld e, b
    or b
    inc bc
    rra
    ld e, c
    add l
    ld e, c
    adc a
    ld e, c
    add b
    inc b
    ld b, h
    ld e, l
    db $10
    inc b
    ld d, d
    ld e, l
    add b

jr_002_42b2:
    inc b
    sub c
    ld e, l
    add b
    inc b
    or d
    ld e, l
    add b
    inc b
    rst $18
    ld e, l
    add b
    inc b
    dec bc
    ld e, [hl]
    db $10
    inc b
    ld hl, $805e
    inc b
    dec sp
    ld e, [hl]
    add b
    ld [bc], a
    add hl, sp
    ld d, h
    add b
    ld [bc], a
    ld h, l
    ld d, h
    add b
    ld bc, $5482
    add b
    ld bc, $548e
    add b
    ld bc, $549e
    db $10
    inc c
    xor h
    ld d, h

Jump_002_42e1:
    add b
    ld [bc], a

Jump_002_42e3:
    db $d3
    ld d, h
    and b
    inc bc
    pop de
    ld e, e
    or l
    ld e, e
    or b
    add hl, bc
    ei
    ld e, e
    jr nc, jr_002_434d

    ld l, l
    ld e, h
    db $10
    ld [bc], a
    sbc b
    ld e, h
    db $10
    ld bc, $5cee
    jr nc, jr_002_42ff

    and d
    ld e, h

jr_002_42ff:
    xor [hl]
    ld e, h
    db $10
    ld bc, $5cbc
    db $10
    ld bc, $5cdb
    rrca
    nop
    and $5f
    jp z, $025f

    ld h, b
    ld d, $60
    rrca
    nop
    jp nc, Jump_000_2d60

    ld h, b
    sbc b
    ld h, c
    ld sp, hl
    ld h, c
    rrca
    nop
    dec d
    ld h, e
    ld h, b
    ld h, d
    call nc, $9f63
    ld h, h
    rrca
    nop
    ld h, c
    ld a, e
    add d
    ld a, d
    dec [hl]
    ld a, h
    ret


    ld a, h
    rrca
    nop
    ret c

    ld h, l
    ld d, $65
    ld a, e
    ld h, [hl]
    ld h, [hl]
    ld h, a
    rrca
    nop
    ld a, $68
    ret


    ld h, a
    adc l
    ld l, b
    rst $10
    ld l, b
    rrca
    nop
    ld a, a
    ld l, c
    dec b
    ld l, c
    db $eb
    ld l, c

jr_002_434d:
    inc sp
    ld l, d
    rrca
    nop
    ld a, $6b
    ld a, e
    ld l, d
    ld bc, $b66c
    ld l, h
    rrca
    nop
    pop hl
    ld l, l
    ld e, $6d
    ldh a, [$ff6e]
    adc [hl]
    ld l, a
    rrca
    nop
    ret


    ld [hl], b
    inc de
    ld [hl], b
    ld [hl], a
    ld [hl], c
    ld [hl], $72
    rrca
    nop
    ld l, a
    ld [hl], e
    ld a, l
    ld [hl], d
    db $dd
    ld [hl], e
    ld d, e
    ld [hl], h
    rrca
    nop
    jp z, Jump_002_635e

    ld e, [hl]
    ld c, h
    ld e, a
    and d
    ld e, a
    rrca
    nop
    ld c, e
    ld [hl], l
    and [hl]
    ld [hl], h
    call c, Call_002_7975
    halt
    rrca
    nop
    ld c, a
    ld [hl], a
    rst $38
    halt
    xor b
    ld [hl], a
    sbc $77
    rrca
    nop
    ld [$1678], a
    ld a, b
    add b
    ld a, c
    dec bc
    ld a, d

Jump_002_439f:
    or a
    jp z, Jump_002_4d1e

    cp $0a
    jp z, Jump_002_446f

    push bc
    push de
    ld [$db04], a
    push af
    add a
    add $8d
    ld l, a
    ld a, $40
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_002_43e4

    ld a, [hl+]
    ld [$db05], a
    ld a, [hl+]
    ld [$db06], a
    ld b, h
    ld c, l
    xor a
    ld [$db02], a
    ld de, $db0e

Jump_002_43cf:
jr_002_43cf:
    ld hl, $db05
    srl [hl]
    jr c, jr_002_43e7

    jr z, jr_002_43e4

jr_002_43d8:
    ld hl, $db02
    inc [hl]
    ld hl, $002c
    add hl, de
    ld d, h
    ld e, l
    jr jr_002_43cf

jr_002_43e4:
    pop de
    pop bc
    ret


jr_002_43e7:
    ld hl, $0000
    add hl, de
    ld a, [hl+]
    or a
    jr z, jr_002_43f9

    ld a, [$db06]
    cp [hl]
    jr nc, jr_002_43f9

    inc bc
    inc bc
    jr jr_002_43d8

jr_002_43f9:
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
    ld a, $21
    ld [hl+], a
    ld a, $50
    ld [hl], a
    pop bc
    ld a, [$db02]
    push af
    add $ab
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
    jr jr_002_43d8

Call_002_4443:
    push bc
    push de
    ld [$db04], a
    push af
    add a
    add $8d
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
    jp Jump_002_43cf


Jump_002_446f:
    ld a, $07
    ld [$db0b], a
    ld [$db0c], a
    ret


Jump_002_4478:
    ld a, [$db0b]
    or a
    jr z, jr_002_4490

    ld hl, $db0c
    dec [hl]
    jr nz, jr_002_4490

    ld [hl], a
    ld hl, $dc80
    ld a, [hl]
    or a
    jp z, Jump_002_4d1e

    sub $11
    ld [hl], a

jr_002_4490:
    call Call_002_4496
    jp Jump_002_4c29


Call_002_4496:
    xor a
    ld [$db03], a
    ld de, $db0e

jr_002_449d:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_002_44ab

    call Call_002_44cb
    call Call_002_4ab3

jr_002_44ab:
    ld hl, $002c
    add hl, de
    ld d, h
    ld e, l
    ld hl, $db03
    inc [hl]
    ld a, $08
    cp [hl]
    jr nz, jr_002_449d

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


Call_002_44cb:
    ld hl, $0008
    add hl, de
    inc [hl]
    dec hl
    dec [hl]
    call z, Call_002_46df
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
    jp nc, Jump_002_465c

    ld a, [$db03]
    and $03
    cp $02
    jp z, Jump_002_45fe

    ld hl, $001a
    add hl, de
    dec [hl]
    jp nz, Jump_002_4697

    ld hl, $0018
    add hl, de
    ld a, [hl]
    push af
    add a
    add $11
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld hl, $5045
    ld b, l
    add [hl]
    ld b, l
    xor l
    ld b, l
    and $45
    sub a
    ld b, [hl]
    sub a
    ld b, [hl]
    sub a
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
    jr c, jr_002_4551

    call Call_002_4839
    or a
    jr z, jr_002_4551

    pop bc
    jp Jump_002_4692


    push bc

jr_002_4551:
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
    jr c, jr_002_4587

    call Call_002_4839
    or a
    jr z, jr_002_4587

    pop bc
    jp Jump_002_4692


    push bc

jr_002_4587:
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
    ld b, [hl]
    sub b
    jr c, jr_002_45ae

    jr z, jr_002_45ae

    pop bc
    jp Jump_002_4692


    push bc

jr_002_45ae:
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
    jr c, jr_002_45e5

    call Call_002_4839
    or a
    jr z, jr_002_45e5

    pop bc
    jp Jump_002_4692


jr_002_45e5:
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
    jp Jump_002_4692


Jump_002_45fe:
    ld hl, $001a
    add hl, de
    dec [hl]
    ret nz

    ld hl, $0018
    add hl, de
    ld a, [hl]
    cp $01
    jr c, jr_002_461a

    cp $02
    jr c, jr_002_4632

    cp $03
    jr c, jr_002_464b

    cp $04
    jr c, jr_002_464f

    ret


jr_002_461a:
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


jr_002_4632:
    ld a, $50

jr_002_4634:
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


jr_002_464b:
    ld a, $10
    jr jr_002_4634

jr_002_464f:
    ld a, $00
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0018
    add hl, de
    inc [hl]
    ret


Jump_002_465c:
    ld hl, $001a
    add hl, de
    dec [hl]
    jr nz, jr_002_4697

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
    jr nz, jr_002_4687

    ld hl, $0017
    add hl, de
    dec [hl]
    ld hl, $001a
    add hl, de
    ld [hl], a
    jr jr_002_4697

jr_002_4687:
    ld hl, $001f
    add hl, de
    push af
    and $f0
    ld [hl], a
    pop af
    and $0f

Jump_002_4692:
    ld hl, $001a
    add hl, de
    ld [hl], a

Jump_002_4697:
jr_002_4697:
    ld a, [$db03]
    and $02
    jr nz, jr_002_46de

    ld hl, $0019
    add hl, de
    dec [hl]
    jp nz, Jump_002_46de

    ld hl, $0016
    add hl, de
    inc [hl]
    ld a, [hl]

jr_002_46ac:
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
    jr nz, jr_002_46c6

    ld hl, $0016
    add hl, de
    xor a
    ld [hl], a
    jr jr_002_46ac

jr_002_46c6:
    push af
    swap a
    and $0f
    cp $08
    jr c, jr_002_46d1

    or $f0

jr_002_46d1:
    ld hl, $001c
    add hl, de
    ld [hl], a
    pop af
    and $0f
    ld hl, $0019
    add hl, de
    ld [hl], a

Jump_002_46de:
jr_002_46de:
    ret


Call_002_46df:
    ld hl, $0020
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]

jr_002_46e6:
    ld a, [bc]
    cp $d0
    jr c, jr_002_46f0

    call Call_002_484e
    jr jr_002_46e6

jr_002_46f0:
    ld a, [$db03]
    cp $03
    jp z, Jump_002_47c7

    ld hl, $0009
    add hl, de
    ld a, [bc]
    cp $c0
    jr c, jr_002_4706

    ld [hl], $00
    jp Jump_002_47fa


jr_002_4706:
    ld [hl], $ff
    push bc
    push af
    ld a, [$db03]
    cp $07
    jr z, jr_002_473e

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
    add $0e
    ld c, a
    ld a, $4e
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
    jr jr_002_4755

jr_002_473e:
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

jr_002_4755:
    ld hl, $0008
    add hl, de
    xor a
    ld [hl], a
    ld a, [bc]
    and $0f
    call Call_002_4815
    ld hl, $0007
    add hl, de
    ld [hl], a
    call Call_002_480c
    ld hl, $0011
    add hl, de
    bit 7, [hl]
    jr z, jr_002_4797

    push af
    and $0f
    ld c, a
    ld hl, $0013
    add hl, de
    ld a, [hl]
    swap a
    and $0f
    push af
    call Call_002_4839
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
    call Call_002_4839
    add [hl]
    ld [hl], a

jr_002_4797:
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_002_47a8

    ld a, [hl]
    cp $03
    jr nz, jr_002_47a6

    ld a, $01

jr_002_47a6:
    xor $03

jr_002_47a8:
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


Jump_002_47c7:
    ld a, [$dc16]
    cp $06
    jr c, jr_002_47f0

    cp $0c
    jr nc, jr_002_47f0

    ld a, $cc
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

jr_002_47f0:
    ld a, [bc]
    swap a
    and $0f
    cp $0c
    call nz, Call_002_4443

Jump_002_47fa:
    ld a, [bc]
    and $0f
    call Call_002_4815
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld hl, $0008
    add hl, de
    xor a
    ld [hl], a
    pop hl

Call_002_480c:
    ld hl, $0020
    add hl, de
    inc bc
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_002_4815:
    ld hl, $000b
    add hl, de
    or a
    jr z, jr_002_4833

Call_002_481c:
    cp [hl]
    jr nc, jr_002_4829

    push bc
    ld c, a
    ld b, [hl]
    xor a

jr_002_4823:
    add b
    dec c
    jr nz, jr_002_4823

    pop bc
    ret


jr_002_4829:
    push bc
    ld c, a
    ld b, [hl]
    xor a

jr_002_482d:
    add b
    dec c
    jr nz, jr_002_482d

    pop bc
    ret


jr_002_4833:
    ld a, [hl]
    swap a
    and $f0
    ret


Call_002_4839:
    or a
    ret z

    ld b, a
    xor a
    or c
    ret z

    cp b
    jr nc, jr_002_4848

    xor a

jr_002_4843:
    add b
    dec c
    jr nz, jr_002_4843

    ret


jr_002_4848:
    xor a

jr_002_4849:
    add c
    dec b
    jr nz, jr_002_4849

    ret


Call_002_484e:
    sub $e0
    jr c, jr_002_4861

    push af
    add a
    add $a9
    ld l, a
    ld a, $48
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_002_4861:
    ld hl, $000b
    add hl, de
    and $0f
    ld [hl+], a
    inc bc
    ld a, [$db03]
    cp $03
    ret z

    cp $07
    jr z, jr_002_4888

    and $03
    cp $02
    jr z, jr_002_4895

    ld a, [bc]
    and $33
    add a
    add a
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    call Call_002_4923
    jp Jump_002_4970


jr_002_4888:
    ld a, [bc]
    or a
    jr z, jr_002_488e

    ld a, $08

jr_002_488e:
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    jp Jump_002_496f


jr_002_4895:
    dec bc
    call Call_002_4956
    ld a, [bc]
    ld hl, $0011
    add hl, de
    ld [hl+], a
    add a
    jp nc, Jump_002_4979

    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    jp hl


    ld c, b
    jp hl


    ld c, b
    jp hl


    ld c, b
    jp hl


    ld c, b
    jp hl


    ld c, b
    jp hl


    ld c, b
    jp hl


    ld c, b
    jp hl


    ld c, b
    ldh a, [c]
    ld c, b
    ld de, $1a49
    ld c, c
    inc hl
    ld c, c
    ld c, l
    ld c, c
    ld d, [hl]
    ld c, c
    ld l, a
    ld c, c
    sub h
    ld c, c
    sbc l
    ld c, c
    and [hl]
    ld c, c
    xor a
    ld c, c
    cp b
    ld c, c
    rst $30
    ld c, l
    jr jr_002_491e

    pop bc
    ld c, c
    jp z, $db49

    ld c, c
    db $ec
    ld c, c
    db $f4
    ld c, c
    db $fc
    ld c, c
    dec bc
    ld c, d
    ld a, [de]
    ld c, d
    scf
    ld c, d
    ld c, a
    ld c, d
    ld a, [bc]
    and $07
    ld hl, $001b
    add hl, de
    jr jr_002_4917

    inc bc
    ld a, [$db03]
    cp $07
    jr z, jr_002_4905

    ld a, [bc]
    and $33
    add a
    add a
    ld hl, $000c
    add hl, de
    jr jr_002_4917

jr_002_4905:
    ld a, [bc]
    or a
    jr z, jr_002_490b

    ld a, $08

jr_002_490b:
    ld hl, $000c
    add hl, de
    jr jr_002_4917

    ld hl, $000d
    add hl, de
    inc bc
    ld a, [bc]

jr_002_4917:
    ld [hl], a

Jump_002_4918:
jr_002_4918:
    inc bc
    ret


    ld hl, $0002
    add hl, de

jr_002_491e:
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


Call_002_4923:
    inc bc
    ld a, [bc]
    swap a
    and $0f
    ld hl, $000b
    add hl, de
    call Call_002_481c
    ld hl, $000e
    add hl, de
    inc a
    ld [hl+], a
    ld a, [bc]
    and $0f
    push bc
    push af
    add a
    add $01
    ld c, a
    ld a, $50
    adc $00
    ld b, a
    pop af

jr_002_4945:
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


Call_002_4956:
    ld a, [$db03]
    cp $02
    jr z, jr_002_4968

    cp $06
    jr nz, jr_002_4918

    inc bc
    ld a, [bc]
    ld [$db09], a
    inc bc
    ret


jr_002_4968:
    inc bc
    ld a, [bc]
    ld [$db08], a
    inc bc
    ret


Jump_002_496f:
    inc bc

Jump_002_4970:
    ld a, [bc]
    ld hl, $0011
    add hl, de
    ld [hl+], a
    add a
    jr c, jr_002_498c

Jump_002_4979:
    ld a, [bc]

Jump_002_497a:
    push bc
    push af
    add a
    add $79
    ld c, a
    ld a, $4f
    adc $00
    ld b, a
    pop af
    ld hl, $0014
    add hl, de
    jr jr_002_4945

jr_002_498c:
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
    jr z, jr_002_4a2a

    ld hl, $002a
    add hl, de
    push hl
    ld h, [hl]
    cp h
    pop hl
    jr z, jr_002_4a32

    inc [hl]

jr_002_4a2a:
    ld hl, $0022
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret


jr_002_4a32:
    ld [hl], $00
    jp Jump_002_4918


    inc bc
    ld a, [bc]
    or a
    jr z, jr_002_4a47

    ld hl, $002b
    add hl, de
    push hl
    ld h, [hl]
    cp h
    pop hl
    jr z, jr_002_4a32

    inc [hl]

jr_002_4a47:
    ld hl, $0024
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret


    ld a, [$db03]
    push af
    add $a3
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
    jr z, jr_002_4a9a

    and $03
    jr z, jr_002_4a71

    cp $03
    jr nz, jr_002_4a75

jr_002_4a71:
    ld a, $08
    jr jr_002_4a76

jr_002_4a75:
    xor a

jr_002_4a76:
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


jr_002_4a9a:
    ld a, $08
    ldh [rNR10], a
    ld [$dc6e], a
    jr jr_002_4a71

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

Call_002_4ab3:
    ld a, [$db03]
    push af
    add a
    add $c5
    ld l, a
    ld a, $4a
    adc $00
    ld h, a
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push de
    ld c, d
    ld d, d
    ld c, e
    ld a, [hl]
    ld c, e
    ld b, a
    ld c, e
    db $db
    ld c, d
    ld e, b
    ld c, e
    add h
    ld c, e
    ret z

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
    add $19
    ld l, a
    ld a, $4c
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

jr_002_4b06:
    or a
    jr z, jr_002_4b12

    ld hl, $000c
    add hl, de
    ld a, [hl]
    swap a
    jr jr_002_4b17

jr_002_4b12:
    ld hl, $000c
    add hl, de
    ld a, [hl]

jr_002_4b17:
    and $c0
    ld [bc], a
    inc bc
    ld hl, $0009
    add hl, de
    ld a, [hl]
    or a
    jr nz, jr_002_4b27

    ld a, $08
    jr jr_002_4b2c

jr_002_4b27:
    ld hl, $001f
    add hl, de
    ld a, [hl]

jr_002_4b2c:
    ld [bc], a
    inc bc

Jump_002_4b2e:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld hl, $001c
    add hl, de
    add [hl]
    inc hl
    bit 7, a
    jr nz, jr_002_4b48

    add [hl]
    inc hl
    ld [bc], a
    ld a, [hl]
    adc $00

jr_002_4b43:
    inc bc
    and $07
    ld [bc], a
    ret


jr_002_4b48:
    add [hl]
    push af
    inc hl
    ld [bc], a
    pop af
    ld a, [hl]
    adc $ff
    jr jr_002_4b43

    ld hl, $dbea
    ld a, [hl]
    or a
    ret nz

    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $1d
    ld l, a
    ld a, $4c
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
    jr jr_002_4b06

    ld hl, $dc16
    ld a, [hl]
    or a
    ret nz

    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $21
    ld l, a
    ld a, $4c
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
    jr z, jr_002_4bc3

    ld hl, $001f
    add hl, de
    ld a, [hl]
    swap a
    and $0f
    push bc
    push af
    add $09
    ld c, a
    ld a, $4c
    adc $00
    ld b, a
    pop af
    ld a, [bc]
    pop bc

jr_002_4bc3:
    ld [bc], a
    inc bc
    jp Jump_002_4b2e


    ld hl, $0006
    add hl, de
    ld a, [hl]
    and $03
    push af
    add $25
    ld l, a
    ld a, $4c
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
    jr nz, jr_002_4bf8

    ld a, $08
    jr jr_002_4bfd

jr_002_4bf8:
    ld hl, $001f
    add hl, de
    ld a, [hl]

jr_002_4bfd:
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

    jr nz, jr_002_4c35

    jr nz, @+$22

    jr nz, jr_002_4c39

    ld de, $1001
    ld de, $0222
    jr nz, jr_002_4c43

    ld b, h
    inc b
    ld b, b
    ld b, h
    adc b
    ld [$8880], sp

Jump_002_4c29:
    ld hl, $dc6e
    ld de, $dc83
    ld c, $10
    ld a, [$dc98]
    ld b, a

jr_002_4c35:
    or a
    jr z, jr_002_4c3c

    ld a, [de]

jr_002_4c39:
    cp [hl]
    jr z, jr_002_4c40

jr_002_4c3c:
    ld a, [hl]
    ld [de], a
    ldh [c], a
    ldh [c], a

jr_002_4c40:
    inc hl
    inc de
    inc c

jr_002_4c43:
    call Call_002_4d02
    ld a, b
    call Call_002_4cee
    ld a, b
    call Call_002_4cff
    call Call_002_4d0d
    inc c
    call Call_002_4d02
    ld a, [$dc99]
    call Call_002_4cee
    call Call_002_4d02
    call Call_002_4d0d
    call Call_002_4d02
    inc hl
    inc de
    inc c
    call Call_002_4d02
    call Call_002_4d02
    call Call_002_4d0d
    inc c
    inc hl
    inc de
    inc c
    ld a, [$dc9b]
    call Call_002_4cee
    call Call_002_4d02
    call Call_002_4d0d
    ld hl, $ff24
    ld a, [$dc80]
    ld [hl+], a
    ld a, [$dc81]
    ld [hl+], a
    ld a, [$dc16]
    or a
    jr nz, jr_002_4c96

    ld a, [$db08]
    jr jr_002_4c99

jr_002_4c96:
    ld a, [$db09]

jr_002_4c99:
    ld hl, $db0a
    cp [hl]
    ret z

    ld [hl], a
    push af
    add a
    add $7c
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


Call_002_4cee:
    or a
    jr z, jr_002_4cf5

    ld a, [de]
    cp [hl]
    jr z, jr_002_4d09

jr_002_4cf5:
    ld a, [hl+]
    ld [de], a
    ldh [c], a
    inc hl
    set 7, [hl]
    dec hl
    inc de
    inc c
    ret


Call_002_4cff:
    or a
    jr z, jr_002_4d06

Call_002_4d02:
    ld a, [de]
    cp [hl]
    jr z, jr_002_4d09

jr_002_4d06:
    ld a, [hl]
    ld [de], a
    ldh [c], a

jr_002_4d09:
    inc hl
    inc de
    inc c
    ret


Call_002_4d0d:
    ld a, [de]
    bit 7, a
    jr nz, jr_002_4d15

    cp [hl]
    jr z, jr_002_4d09

jr_002_4d15:
    ld a, [hl]
    ldh [c], a
    and $07
    ld [de], a
    inc hl
    inc de
    inc c
    ret


Jump_002_4d1e:
    call Call_002_4d21

Call_002_4d21:
    push bc
    push de
    call Call_002_4d7e
    ld a, $77
    ld [$dc80], a
    jr jr_002_4d39

Call_002_4d2d:
Jump_002_4d2d:
    push bc
    push de
    call Call_002_4d77
    ld a, $77
    ldh [rNR50], a
    ld [$dc80], a

jr_002_4d39:
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


Call_002_4d77:
    xor a
    ldh [rNR50], a
    ld a, $80
    ldh [rNR52], a

Call_002_4d7e:
    ld a, $08
    ldh [rNR10], a
    ld [$dc6e], a
    ldh a, [rNR52]
    bit 0, a
    jr z, jr_002_4da6

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

jr_002_4da6:
    ldh a, [rNR52]
    bit 1, a
    jr z, jr_002_4dc3

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

jr_002_4dc3:
    ldh a, [rNR52]
    bit 2, a
    jr z, jr_002_4dd6

    xor a
    ldh [rNR32], a
    ld [$dc79], a
    ld [$dc7b], a
    ld a, $80
    ldh [rNR34], a

jr_002_4dd6:
    ldh a, [rNR52]
    bit 3, a
    jr z, jr_002_4df6

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

jr_002_4df6:
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
    jr z, jr_002_4e0a

    jp Jump_002_4918


jr_002_4e0a:
    ld a, [hl]
    jp Jump_002_497a


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

Jump_002_4e22:
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
    and c
    ld c, a
    and e
    ld c, a
    and l
    ld c, a
    and a
    ld c, a
    xor c
    ld c, a
    xor e
    ld c, a
    xor l
    ld c, a
    xor a
    ld c, a
    or c
    ld c, a
    or e
    ld c, a
    or l
    ld c, a
    or a
    ld c, a
    cp c
    ld c, a
    cp e
    ld c, a
    cp l
    ld c, a
    cp a
    ld c, a
    pop bc
    ld c, a
    jp z, $d34f

    ld c, a
    ld [$8f4f], a
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
    ld hl, $2350
    ld d, b
    jr z, jr_002_5057

    ld sp, $3a50
    ld d, b
    ld b, e
    ld d, b
    ld c, h
    ld d, b
    ld d, l
    ld d, b
    ld e, [hl]
    ld d, b
    ld l, l
    ld d, b
    ld [hl], a
    ld d, b
    ld [hl], a
    ld d, b
    ld [hl], a
    ld d, b
    ld [hl], a
    ld d, b
    ld [hl], a
    ld d, b
    ld [hl], a
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

jr_002_5057:
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
    sbc [hl]
    ld d, b
    xor [hl]
    ld d, b
    cp [hl]
    ld d, b
    adc $50
    sbc $50
    xor $50
    cp $50
    ld c, $51
    ld e, $51
    ld l, $51
    ld a, $51
    ld a, $51
    ld a, $51
    ld a, $51
    ld a, $51
    ld a, $51
    ld c, [hl]
    ld d, c
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
    jr nz, jr_002_50bb

jr_002_50bb:
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
    jr nc, jr_002_5108

    ld d, [hl]
    ld [hl], a
    ld h, l

jr_002_5108:
    ld b, h
    inc sp
    jr nz, jr_002_510c

jr_002_510c:
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

Jump_002_5142:
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
    call c, Call_002_76a9
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

Jump_002_5172:
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
    rrca
    ei
    db $e4
    ld de, $5131
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

Jump_002_5232:
    db $e3
    ld [hl], d

Jump_002_5234:
    ld h, d
    ld d, c

Call_002_5236:
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

Jump_002_5254:
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
    jp nz, Jump_002_5172

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

Jump_002_5454:
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

jr_002_5460:
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
    jr nc, jr_002_5460

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

Jump_002_54e3:
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

jr_002_563c:
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
    jr z, jr_002_563c

    ld [bc], a
    db $e3
    inc h
    rst $38
    pop de
    ld [bc], a
    ldh a, [rP1]
    ld a, [bc]
    rst $30
    ld h, h
    ld d, [hl]
    rst $30
    ld h, h
    ld d, [hl]
    ei
    rst $30
    add h
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
    xor b
    ld d, [hl]
    rst $30
    xor b
    ld d, [hl]
    ei
    rst $30
    cp e
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
    ld bc, $56f7
    ld d, a
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
    ld bc, $dbf7

jr_002_57c2:
    ld d, a
    db $ec
    inc c
    rst $30
    db $db
    ld d, a
    db $ec
    jr jr_002_57c2

    db $db
    ld d, a
    db $ec
    inc h
    rst $30
    db $db

jr_002_57d1:
    ld d, a
    db $ec
    jr nc, jr_002_57d1

    rst $30
    ld d, $58
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
    ld bc, $32f7
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

Jump_002_5894:
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

jr_002_58b4:
    ld a, [bc]
    db $ec
    jr nc, jr_002_58b4

    rst $30
    ld d, $58
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
    db $fc

jr_002_58f0:
    ld e, b
    db $ec
    inc c
    rst $30
    db $fc
    ld e, b
    db $ec
    jr jr_002_58f0

    db $fc
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
    ld bc, $24f7
    ld e, c
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
    ld h, e
    ld e, h
    xor $0c
    rst $30
    ld h, e
    ld e, h
    xor $0a
    rst $30
    ld h, e
    ld e, h
    xor $08
    rst $30
    ld h, e
    ld e, h
    xor $06
    rst $30
    ld h, e
    ld e, h
    xor $04
    rst $30
    ld h, e
    ld e, h
    xor $03
    rst $30
    ld h, e
    ld e, h
    xor $02
    rst $30
    ld h, e
    ld e, h
    xor $01
    rst $30
    ld h, e
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
    adc c
    ld e, h
    ld hl, sp-$77
    ld e, h
    ld hl, sp-$77
    ld e, h
    ld hl, sp-$77
    ld e, h
    xor $0c
    db $fc
    ld hl, sp-$77
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
    ld bc, $fdf7
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

jr_002_5e1d:
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
    jr z, jr_002_5e1d

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
    push de
    ld de, $52b1
    adc e
    ld h, $b5
    jp Jump_000_01ef


    jp hl


    pop de
    add sp, $16
    di
    ld bc, $00ec
    rst $30
    sub e
    ld e, [hl]
    di
    inc bc
    or $05
    jp hl


    or c
    add sp, $0b
    ei
    db $ec
    ld [bc], a
    ld hl, sp-$59
    ld e, [hl]
    db $ec
    inc b
    ld hl, sp-$59
    ld e, [hl]
    db $ec
    ld b, $f8
    dec [hl]
    ld e, a
    db $fd
    nop
    rst $38
    or $02
    pop hl
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
    jp hl


    or c
    pop hl
    ld h, c
    adc a
    add e
    ld l, l
    ld b, c
    ld l, a
    ld h, c
    add a
    jp hl


    sub c
    add d
    add d
    add d
    add d
    jp hl


    or c
    pop hl
    ld h, c
    adc a
    add e
    ld l, l
    ld b, c
    ld l, a
    ld h, c
    adc e
    jp hl


    pop bc
    ld de, $4131
    ld h, c
    ld a, [$11d5]
    ld h, c
    ld d, d
    xor e
    ld h, $b5
    jp $d1e9


    add sp, $16
    di
    ld [bc], a
    db $ec
    inc bc
    or $02
    rst $30
    sub e
    ld e, [hl]
    add sp, $0b
    or $05
    di
    inc bc
    xor $05
    jp hl


    sub c
    ei
    db $ec
    ld [bc], a
    rst $30
    dec b
    ld e, a
    rst $30
    dec b
    ld e, a
    db $ec
    inc b
    rst $30
    dec b
    ld e, a
    rst $30
    dec b
    ld e, a
    db $ec
    ld b, $f7
    dec b
    ld e, a
    rst $30
    dec b
    ld e, a
    db $fd
    nop
    rst $38
    pop hl
    sub c
    or a
    ldh [c], a
    ld b, d
    add c
    or c
    ld b, d
    add c
    or c
    pop hl
    or e
    sub l
    ldh [c], a
    ld [hl+], a
    ld h, c
    sub c
    ld [hl+], a
    ld h, c
    sub c
    pop hl
    ld [hl], c
    sub a
    ldh [c], a
    ld [hl+], a
    ld h, c
    sub c
    ld [hl+], a
    ld h, c
    sub c
    ldh [c], a
    pop bc
    or c
    sub c
    add c
    ld h, c
    sub c
    add c
    ld h, c
    add c
    ld h, c
    add c
    ld b, c
    ld h, c
    ld de, $3141
    ld sp, hl
    pop hl
    ld h, c
    adc a
    add e
    ld l, l
    ld b, c
    ld l, a
    ld h, c
    adc a
    pop hl
    ld h, c
    adc a
    add e
    ld l, l
    ld b, c
    ld l, a
    ld h, c
    adc e
    add c
    ld [hl], c
    ld d, c
    ld b, c
    ld a, [$06d5]
    add [hl]
    or b
    jp $fcec


    rst $30
    sub e
    ld e, [hl]
    di
    inc bc
    or $05
    db $fc
    db $ec
    ld [bc], a
    rst $30
    halt
    ld e, a
    ld hl, sp-$75
    ld e, a
    db $ec
    inc b
    rst $30
    halt
    ld e, a
    ld hl, sp-$75
    ld e, a
    db $ec
    ld b, $f7
    halt
    ld e, a
    rst $30
    halt
    ld e, a
    cp $00
    rst $38
    ei
    pop hl
    ld b, d
    db $fd
    rlca
    ei
    pop hl
    ld [hl+], a
    db $fd
    rrca
    ei
    pop hl
    ld b, d
    db $fd
    inc bc
    pop hl
    ld b, d
    or d
    ld b, d
    or d
    ld sp, hl
    ei
    pop hl
    ld b, d
    db $fd
    rlca
    ei
    pop hl
    ld [hl+], a
    db $fd
    rrca
    ei
    pop hl
    ld b, d
    db $fd
    inc bc
    pop hl
    ld b, d

jr_002_5f9c:
    or d
    ld de, $4131
    ld h, c
    ld a, [$c3d5]
    or $02
    ld sp, $3131
    ld sp, $2121
    ld hl, $2121
    ld hl, $1121
    ld de, $f611
    dec b
    db $fc
    ei
    ld [de], a
    ld de, $3211
    ld de, $fd11
    ld b, $12
    ld de, $3111
    ld sp, $3131
    cp $00
    rst $38
    db $ec
    ld [bc], a
    rst $10
    ld de, $26b1
    adc e
    ld d, $c6
    jp nz, Jump_002_42e1

    sub d
    add d
    ldh [c], a
    ld [bc], a
    pop hl
    or d
    ldh [c], a
    ld [hl-], a
    ld [hl+], a
    ld d, h
    or h
    add h
    db $e3
    inc h
    ld b, b
    rst $38
    db $ec
    ld [bc], a
    rst $10
    jr nz, jr_002_5f9c

    ld h, $8b
    ld d, $c6
    jp nz, $b2e0

    pop hl
    ld d, d
    ld b, d
    sub d
    add d
    ldh [c], a
    ld [bc], a
    pop hl
    or d
    ldh [c], a
    inc h
    add h
    ld d, h
    add h
    or b
    rst $38
    db $ec
    ld [bc], a
    rst $10
    ld b, $83
    ret nc

    pop hl
    ld b, h
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    add h
    ld d, h
    inc h
    ld d, h
    ld b, b
    rst $38
    rst $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc h
    inc h
    inc h
    inc h
    ld hl, $2121
    ld hl, $2121
    ld hl, $2821
    rst $38
    sub $23
    or c
    inc h
    adc e
    dec [hl]
    rst $00
    db $fc
    pop hl
    ei
    call nz, $7278
    add b
    jp nz, $01fd

    ei
    ldh [c], a
    ld [hl-], a
    ld [hl-], a
    db $e3
    add sp, $10
    jp hl


    add c
    pop af
    ld [hl+], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    add sp, $23
    jp hl


    or c
    pop af
    dec [hl]
    jp nz, $0272

    or [hl]
    ld d, d
    add h
    ld [hl], d
    ld d, h
    ldh [c], a
    ld [hl-], a
    ld [hl-], a
    db $e3
    add sp, $10
    jp hl


    add c
    pop af
    ld [hl+], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add sp, $23
    jp hl


    or c
    pop af
    dec [hl]
    ldh [c], a
    ld [hl-], a
    jp nz, Jump_002_5254

    jp nz, $c252

    ld d, d
    jp nz, $fd52

    ld bc, $2ae3
    ldh [c], a
    or d
    db $e3
    ld [hl+], a
    ld d, l
    inc sp
    ld h, $c2
    inc l
    ld d, d
    add d
    add l
    ld [hl], e
    ld d, d
    ld [hl+], a
    jp nz, $01f3

    or $01
    db $e4
    ld [hl+], a
    ld [de], a
    ld [bc], a
    db $e3
    or d
    jp hl


    add c
    di
    inc bc
    and d
    sub d
    add d
    ld [hl], d
    di
    ld [bc], a
    ld h, d
    ld d, d
    ld b, d
    ld [hl-], a
    jp hl


    or c
    di
    inc bc
    or $06
    db $e4
    ld [hl-], a
    ld [hl+], a
    ld [bc], a
    db $e3
    or d
    and e
    ld [hl], e
    ld [hl-], a
    ld d, d
    ld d, d
    ld [hl-], a
    db $e4
    ld bc, $73e3
    and d
    db $e4
    ld [hl-], a
    ld [hl+], a
    inc bc
    db $e3
    ld [hl], l
    and e
    ld b, l
    add d
    ld [hl], c
    ld d, c
    pop bc
    ld sp, $01c1
    ld d, h
    ldh [c], a
    or h
    cp $00
    sub $11
    sub c
    nop
    adc c
    inc h
    rst $00
    db $fc
    pop hl
    ei
    call nz, $3238
    ld d, b
    jp nz, $01fd

    ei
    pop hl
    ld [hl], d
    ld [hl], d
    ldh [c], a
    jp nz, $c232

    ld [hl-], a
    jp nz, Jump_002_5254

    jp nz, $c252

    ld d, d
    jp nz, $e151

    or c
    pop hl
    ld [hl], d
    ld [hl], d
    ldh [c], a
    jp nz, $e132

    jp nz, $c272

    add h
    add d
    jp nz, $c282

    add d
    jp nz, $e181

    or c
    db $fd
    ld bc, $22e1
    or d
    jp nz, $c2b2

    ldh [c], a
    ld [hl+], a
    ld [hl], d
    or d
    pop hl
    jp nz, $c2b2

    or d
    jp nz, $c2b2

    add d
    jp nz, $c282

    add d
    jp nz, $82e2

    db $e3
    ld [hl+], a
    inc hl
    pop hl
    or c
    ldh [c], a
    ld d, c
    or c
    pop hl
    add c
    ldh [c], a
    ld d, c
    or c
    ld hl, $c282
    jp hl


    or c
    di
    ld [bc], a
    or $01
    db $e3
    or d
    and d
    sub d
    add d
    jp hl


    sub c
    di
    inc bc
    ld [hl], d
    ld h, d
    ld d, d
    ld b, d
    di
    ld bc, $2232
    ld [de], a
    ld [bc], a
    di
    inc bc
    or $06
    pop hl
    jp nz, $c272

    ld [hl], d
    db $e3
    ld [hl-], a
    pop hl
    ld [hl], c
    ldh [c], a
    and e
    ld [hl], d
    jp nz, $c202

    ld bc, $2121
    and c
    ld hl, $e1a1
    ld [hl], c
    ldh [c], a
    ld [hl], c
    pop hl
    ld [hl], c
    and c
    db $e3
    ld b, d
    pop hl
    ld [hl], c
    db $e3
    inc bc
    pop hl
    and c
    ldh [c], a
    ld b, c
    db $e3
    ld b, d
    pop hl
    ld [hl], c
    ldh [c], a
    ld [hl], e
    pop hl
    and c
    ld b, c
    ld d, d
    ldh [c], a
    ld hl, $e181
    add d
    ldh [c], a
    ld hl, $e151
    add d
    ldh [c], a
    add c
    or c
    pop hl
    add d
    ldh [c], a
    ld d, c
    add c
    cp $00
    sub $05
    add h
    add b
    db $fc
    ei
    ldh [c], a
    ld [bc], a
    ld [bc], a
    jp nz, Jump_002_71e1

    ldh [c], a
    ld bc, $0202
    jp nz, Jump_000_1214

    jp nz, $81e1

    or c
    ldh [c], a
    ld [de], a
    ld [de], a
    jp nz, $b2e1

    db $fd
    dec b
    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld d, d
    ld [hl], d
    ld [hl], h
    ld [hl], c
    ld [hl], c
    ldh [c], a
    ld [hl+], a
    pop hl
    ld [hl], h
    or d
    ldh [c], a
    ld [hl+], a
    pop hl
    and [hl]
    and h
    and d
    sub d
    and d
    or l
    or c
    ld d, d
    add d
    or d
    add $e2
    inc bc
    ld bc, $72e1
    ldh [c], a
    ld [hl], d
    ld [bc], a
    pop hl
    and d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld d, e
    ld d, c
    ld [bc], a
    ld d, c
    ld [hl], e
    pop hl
    ld [hl], d
    and d
    ldh [c], a
    ld [hl+], a
    inc bc
    pop hl
    and e
    ld [hl], d
    ldh [c], a
    inc bc
    pop hl
    and e
    ld [hl], d
    ldh [c], a
    inc h
    inc h
    inc d
    inc d
    cp $00
    sub $fc
    ei
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    db $fd
    dec b
    ld [de], a
    ld [hl+], a
    inc sp
    ld sp, $2212
    ld [hl-], a
    ld [hl+], a
    jp nz, Jump_000_3212

    inc h
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    jp nz, Jump_000_3322

    ld sp, $2212
    ld [hl-], a
    inc h
    ld sp, $1231
    ld sp, $d131
    inc d
    inc d
    inc d
    sub $32
    ld sp, $7131
    add c
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld de, $1221
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld de, $1231
    ld sp, $1221
    ld de, $1231
    pop de
    inc sp
    inc sp
    inc sp
    inc sp

Jump_002_6254:
    sub $32
    ld [hl+], a
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    cp $00
    rst $38
    sub $00
    or c
    inc h
    adc e
    dec [hl]
    rst $00
    db $e3
    ei
    jp z, $c242

    ld [hl+], a
    jp z, Jump_000_2212

    ld b, d
    db $fd
    ld bc, $e2fc
    add sp, $00
    add d
    add sp, $22
    add d
    add sp, $00
    ld b, d
    add sp, $22
    sub d
    add sp, $00
    ld b, d
    add sp, $22
    or d
    jp nz, Jump_000_26e3

    ld [de], a
    ldh [c], a
    or d
    add sp, $00
    pop hl
    or d
    add sp, $22
    ldh [c], a
    ld d, d
    or d
    ld a, b
    add d
    add $e8
    nop
    cp b
    sbc b
    db $e3
    ld [hl-], a
    ldh [c], a
    add d
    add sp, $22
    add d
    add sp, $00
    ld b, d
    add sp, $22
    sub d
    add sp, $00
    ld b, d
    add sp, $22
    or d
    jp nz, Jump_000_26e3

    ldh [c], a
    or d
    db $e3
    sub d
    pop hl
    or d
    db $e3
    ld [hl], d
    ldh [c], a
    ld [hl], d
    db $e3
    cp b
    ld b, d
    add sp, $00
    ldh [c], a
    or d
    add d
    or d
    add sp, $22
    db $e3
    xor b
    ld b, h
    ld h, d
    ld [hl], d
    ld l, d
    ld h, d
    ld d, d
    ld h, d
    or d
    jp nz, $b2b2

    jp z, Jump_000_00e8

    jp nz, $22e3

    ld [hl+], a
    inc h
    ld [de], a
    ldh [c], a
    or d
    sbc b
    ld d, [hl]
    db $e3
    inc b
    ldh [c], a
    cp b
    add sp, $22
    jp nz, $9272

    or d
    db $e3
    inc h
    ld [de], a
    ldh [c], a
    or d
    jp nz, $c292

    ld [hl], h
    ld [bc], a
    ld b, d
    ld [hl], h
    sub d
    or d
    sub h
    db $e3
    ld [hl+], a
    ldh [c], a
    sub d
    sub h
    and d
    db $e3
    ld [bc], a
    ld h, $02
    ld d, d
    jp nz, $c232

    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp nz, Jump_002_7264

    add d
    adc $c0
    cp $00
    sub $11
    sub c
    nop
    adc c
    inc h
    rst $00
    ldh [c], a
    ei
    jp z, $c282

    ld [hl], d
    jp z, Jump_002_7262

    add d
    db $fd
    ld bc, $e1fc
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    add c
    add c
    or d
    or h
    or c
    or c
    ldh [c], a
    ld [hl+], a
    ld hl, $e121
    ld [hl+], a
    ld [hl], d
    or d
    or h
    or c
    or c
    or d
    or c
    or c
    or d
    add d
    or d
    ldh [c], a
    inc h
    ld b, d
    ld [hl+], a
    inc d
    ld [hl+], a
    ld b, d
    ld h, d
    pop hl
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or h
    or c
    or c

Jump_002_635e:
    ldh [c], a
    ld [hl+], a
    ld hl, $e121
    ld [hl+], a
    ld [hl], d
    or d
    add h
    add c
    add c
    add d
    add c
    add c
    add d
    add d
    add d
    ld [hl], h
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ldh [c], a
    inc d
    ld de, $1211
    ld de, $1211
    ld [bc], a
    ld [de], a
    ld [hl-], a
    jp nz, $e162

    ld h, d
    call nz, $a2b2
    sub h
    ldh [c], a
    sub d
    sub d
    sub h
    ld h, d
    ld h, d
    ld e, b
    ld b, $94
    ld a, b
    pop hl
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    ld b, h
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld d, h
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    and h
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    sub h
    sub d
    sub d
    sub d
    jp nz, $e294

    ld [bc], a
    pop hl
    or d
    adc $c0
    cp $00
    rst $38
    sub $05
    add [hl]
    and b
    ei
    jp z, $b2e2

    jp nz, $cab2

    ldh [c], a
    and d
    or d
    or d
    db $fd
    ld bc, $e1fc
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ldh [c], a
    ld b, d
    pop hl
    or d
    ld b, d
    ld [hl], h
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    or d
    ldh [c], a
    ld [hl+], a
    pop hl
    ld b, h
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ldh [c], a
    ld b, d
    pop hl
    or d
    ld b, d
    ld [hl], h
    sub d
    ld [hl], d
    ld h, h
    ld [hl], d
    sub d
    or d
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ldh [c], a
    ld b, d
    pop hl
    or d
    ld b, d
    ld [hl], h
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    or d
    ldh [c], a
    ld [hl+], a
    pop hl
    ld b, h
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, h
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld h, h
    ld h, c
    ld h, c
    ld h, d
    ld h, c
    ld h, c
    ld h, d
    ld d, d
    ld h, d
    or d
    jp nz, $b2e2

    pop hl
    or d
    jp z, $22e2

    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld d, h
    ld d, c
    ld d, c
    ld d, d
    ld d, h
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    pop hl
    sub h
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    and h
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    ldh [c], a
    inc [hl]
    ld sp, $3231
    ld sp, $3231
    ld sp, $3231
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp nz, Jump_002_4226

    adc $c0
    cp $00
    sub $54
    ld b, h
    ld d, d
    ld d, d
    ld b, d
    ld d, d
    jp nz, $4252

    ld [hl], d
    ld d, d
    ld d, d
    ld [hl], d
    sub d
    ld d, h
    inc [hl]
    ld d, d
    ld h, d
    ld [hl-], a
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld d, d
    ld d, d
    ld [hl-], a
    ld [hl-], a
    ld sp, $fc31
    call nz, Call_000_34fb
    call nz, Call_000_2632
    db $fd
    ld [bc], a
    ld [hl-], a
    inc h
    ld [hl-], a
    ld [hl], d
    add d
    inc h
    ei
    inc [hl]
    call nz, Call_000_2632
    db $fd
    inc bc
    inc [hl]
    inc h
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld [hl-], a
    jp nz, Jump_002_5454

    inc h
    inc [hl]
    inc h
    ld [hl-], a
    ld h, $32
    ld h, $34
    inc h
    inc [hl]
    inc h
    inc [hl]
    inc h
    ei
    inc [hl]
    inc h
    ld [hl-], a
    ld h, $fd
    ld [bc], a
    inc [hl]
    inc h
    ld [hl-], a
    inc h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld d, d
    pop de
    inc [hl]
    inc [hl]
    inc [hl]
    sub $fb
    ld [hl-], a
    ld d, d
    db $fd
    dec b
    pop de
    ld h, h
    ld h, h
    ld h, h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    add h
    add h
    add h
    sub h
    sub h
    sub h
    sub $fe
    nop
    sub $22
    pop bc
    ld d, d
    adc e
    ld h, $b5
    jp nz, $02ef

    db $ec
    rlca
    ldh [c], a
    ld [bc], a
    pop bc
    ld [hl-], a
    pop bc
    ld [hl], d
    inc sp
    ld d, e
    sub d
    jp hl


    sub c
    ld a, h
    db $e3
    ld bc, $0201
    jp hl


    ld de, $11e8
    ei
    ldh [c], a
    ld sp, $a171
    db $e3
    ld bc, $06fd
    add sp, $00
    jp hl


    and c
    db $e4
    ld [bc], a
    ld [bc], a
    db $fc
    rst $30
    sbc c
    ld h, l
    add sp, $11
    jp hl


    ld [hl], c
    db $e3
    jp nz, $c221

    inc bc
    inc hl
    inc bc
    ld [hl+], a
    rst $30
    sbc c
    ld h, l
    add sp, $11
    jp hl


    ld [hl], c
    db $e3
    jp nz, $c221

    inc bc
    inc h
    add sp, $22
    jp hl


    and c
    ldh [c], a
    ld [hl], c
    sub c
    and c
    db $e3
    ld bc, $c3f8
    ld h, l
    pop bc
    jr c, @-$3c

    ldh [c], a
    ld [hl], d
    and d
    db $e3
    ld [hl+], a
    ld [hl], d
    jp nz, Jump_000_3254

    ld h, $3c
    ld [hl-], a
    ld [hl+], a
    ld bc, $0e21
    ld hl, sp-$3d
    ld h, l
    pop bc
    db $e3

jr_002_6588:
    inc l
    ld [bc], a
    ld [hl+], a
    ld d, d
    jp nz, $2234

    ld b, $e2
    and [hl]
    xor d
    db $e3
    ld [$fe58], sp
    nop
    rst $38
    jp hl


    pop bc
    add sp, $22
    pop hl
    and c
    ldh [c], a
    rlca
    inc bc
    inc hl
    ld [hl-], a
    ld a, b
    ld [hl], c
    sub d
    ld [hl], d
    ld d, d
    ld sp, $5654
    jp nz, Jump_000_3252

    ld hl, $2e31
    pop hl
    and c
    ldh [c], a
    rlca
    inc bc
    inc hl
    ld [hl-], a
    ld a, b
    ld [hl], c
    sub d
    ld [hl], d
    ld d, d
    ld sp, $a254
    xor d
    ld sp, hl
    db $e3
    jr z, jr_002_6588

    ldh [c], a
    ld d, d
    sub d
    db $e3
    ld [bc], a
    ld d, d
    jp nz, $2234

    ld b, $2c
    jp nz, $2131

    ld bc, $0d21
    ld a, [$22d6]
    ld h, c
    ld d, d
    adc e
    ld h, $b5
    jp nz, $07ec

    ldh [c], a
    ld [hl], e
    ld [hl], e
    ld [hl-], a
    inc bc
    inc hl
    ld d, d
    inc a
    ld [hl], c

jr_002_65eb:
    ld [hl], c
    ld [hl], d
    rst $28
    ld bc, $33e8
    xor $03
    ei
    ldh [c], a
    ld sp, $a171
    db $e3
    ld bc, $07fd
    db $fc
    rst $30
    ld d, d
    ld h, [hl]
    add sp, $00
    xor $05
    jp nz, $c251

    ld [hl-], a
    pop bc
    ld d, e
    inc sp
    ld d, d
    rst $30
    ld d, d
    ld h, [hl]
    add sp, $00
    xor $05
    jp nz, $c251

    inc sp
    ld d, h
    xor $04
    add sp, $22
    ldh [c], a
    ld [hl], c
    sub c
    and c
    db $e3
    ld bc, $f8c1
    jp $c165


    jr c, jr_002_65eb

    ldh [c], a
    ld [hl], d
    and d
    db $e3
    ld [hl+], a
    ld [hl], d
    jp nz, Jump_000_3254

    ld h, $3c
    ld [hl-], a
    ld [hl+], a
    ld bc, $0d21
    pop bc
    ld hl, sp-$3d
    ld h, l
    xor $03
    ldh [c], a
    xor h
    sub d
    and d
    db $e3
    ld [hl+], a
    jp nz, $e204

    and d
    sub [hl]
    halt
    ld a, d
    sbc b
    db $e3

jr_002_664e:
    jr z, jr_002_664e

    nop
    rst $38
    xor $04
    add sp, $33
    ei
    ldh [c], a
    ld sp, $a171
    db $e3
    ld bc, $07fd
    ei
    pop hl
    and c
    ldh [c], a
    ld hl, $a151
    db $fd
    rlca
    ei
    ldh [c], a
    ld sp, $a171
    db $e3
    ld bc, $07fd
    ei
    pop hl
    and c
    ldh [c], a
    ld hl, $a151
    db $fd
    inc bc
    ld sp, hl
    sub $01
    add [hl]
    or b
    jp nz, $07ec

    ldh [c], a
    inc bc
    pop hl
    and e
    ld [hl], d
    and e
    ld [hl], e
    ld [hl-], a
    inc c
    ld bc, $0201
    ei
    ldh [c], a
    ld bc, $a1e1
    ld [hl], c
    and c
    ldh [c], a
    inc bc
    ld bc, $03fd
    db $fc
    rst $30
    ld [hl+], a
    ld h, a
    pop hl
    and d
    and d
    pop bc
    sub e
    and e
    sub e
    and d
    rst $30
    ld [hl+], a
    ld h, a
    pop hl
    and d
    and d
    pop bc
    sub e
    and h
    pop hl
    ld [hl], c
    sub c
    and c
    ldh [c], a
    ld bc, $4ff8
    ld h, a
    ei
    pop hl
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld [hl], c
    db $fd
    ld bc, $e1fb
    ld d, d
    ld d, c
    ld d, c
    ld d, c
    ld sp, $5151
    db $fd
    ld bc, $e2fb
    ld [bc], a
    ld bc, $0101
    pop hl
    and c
    ldh [c], a
    ld bc, $fd01
    ld bc, $4ff8
    ld h, a
    ei
    pop hl
    ld d, d
    ld d, c
    ld d, c
    ld d, c
    ld sp, $5151
    db $fd
    ld bc, $4ff8
    ld h, a
    ei
    pop hl
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld [hl], c
    db $fd
    ld bc, $e1fb
    ld d, d
    ld d, c
    ld d, c
    ld d, c
    ld sp, $5151
    db $fd
    ld bc, $e1fb
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $fd
    inc bc
    ei
    ld d, d
    ld d, c
    ld d, c
    db $fd
    inc bc
    ei
    ld [hl-], a
    ld sp, $fd31
    inc bc
    ei
    ld d, d
    ld d, d
    db $fd
    ld bc, $22fb
    ld [hl+], a
    db $fd
    ld bc, $00fe
    rst $38
    ei
    ldh [c], a
    ld bc, $a1e1
    ld [hl], c
    and c
    ldh [c], a
    inc bc
    ld bc, $03fd
    ei
    pop hl
    and c
    add c
    ld d, c
    add c
    and e
    and c
    db $fd
    inc bc
    ei
    ldh [c], a
    ld bc, $a1e1
    ld [hl], c
    and c
    ldh [c], a
    inc bc
    ld bc, $03fd
    ei
    pop hl
    and c
    add c
    ld d, c
    add c
    and e
    and c
    db $fd
    ld bc, $fbf9
    pop hl
    and d
    and c
    and c
    and c
    add c
    and c
    and c
    db $fd
    ld bc, $e1fb
    sub d
    sub c
    sub c
    sub c
    ld [hl], c
    sub c
    sub c
    db $fd
    ld bc, $d6fa
    jp nz, $2323

    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    inc h
    inc d
    inc d
    ld sp, $3231
    inc h
    ld [hl-], a
    ld de, $f711
    xor [hl]
    ld h, a
    ei
    rst $30
    xor [hl]
    ld h, a
    db $fd
    ld bc, $f8fc
    or l
    ld h, a
    jp nz, Jump_000_3122

    inc hl
    inc hl
    inc sp
    ld [hl-], a
    ld hl, sp-$4b
    ld h, a
    jp nz, Jump_000_3122

    inc hl
    inc [hl]
    ld sp, $3131
    ld sp, $11fb
    ld de, $3222
    ld [hl+], a
    db $fd
    dec e
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld sp, $3131
    ld sp, $3131
    ld [hl-], a
    cp $00
    rst $38
    ld [de], a
    ld de, $3211
    ld de, $f911
    inc h
    ld [hl-], a
    ld de, $1211
    ld de, $3211
    ld de, $fb11
    ld [de], a
    ld de, $3211
    ld de, $fd11
    dec bc
    ld a, [$22d6]
    pop af
    ld d, e
    adc e
    ld h, $b5
    jp nz, $05ec

    rst $28
    ld [bc], a
    jp hl


    pop bc
    add sp, $11
    ret z

    pop hl
    inc sp
    ld d, e
    ld [hl-], a
    db $fc
    rst $28
    ld [bc], a
    add sp, $11
    jp hl


    and c
    rst $30
    ld a, [bc]
    ld l, b
    ld [bc], a
    ld [bc], a
    ld hl, $7202
    ld [hl], c
    ld d, c
    ld sp, $3351
    rst $30
    ld a, [bc]
    ld l, b
    ld [bc], a
    ld [bc], a
    ld hl, $0102
    inc sp
    ld d, e
    ld [hl], d
    jp hl


    pop bc
    add sp, $22
    ld hl, sp+$28
    ld l, b
    ld hl, sp+$28
    ld l, b
    cp $00
    rst $38
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld hl, $3302
    ld hl, $2101
    inc bc
    ld [bc], a
    ld [bc], a
    ld hl, $5202
    ld d, c
    ld sp, $3121
    inc hl
    ld [bc], a
    ld [bc], a
    ld hl, $3302
    ld hl, $2101
    inc bc
    ld sp, hl
    ldh [c], a
    ld [hl], h
    and c
    sub d
    ld e, c
    ld d, d
    ld d, d
    sub c
    ld d, d
    ld a, c
    ld [hl], h
    db $e3
    ld bc, $a2e2
    sbc c
    ld d, d
    ld d, d
    ld hl, $7922
    ld a, [$22d6]
    pop af
    ld d, d
    adc c
    dec h
    or l
    jp nz, $05ec

    rst $28
    ld bc, $e1c8
    ld [hl], e
    sub e
    ld [hl], d
    db $fc
    add sp, $22
    xor $05
    ei
    ldh [c], a
    inc b
    inc h
    inc [hl]
    ld d, e
    dec b
    inc h
    inc [hl]
    ld d, h
    db $fd
    ld [bc], a
    inc b
    inc h
    inc [hl]
    ld d, e
    dec b
    inc h
    inc bc
    inc hl
    ld [hl-], a
    xor $06
    ei
    pop bc
    add sp, $22
    rst $30
    ld [hl], a
    ld l, b
    db $fd
    ld bc, $00fe
    rst $38
    ldh [c], a
    ld [hl], h
    and c
    sub d
    ld e, c
    ld d, d
    ld d, d
    sub c
    ld d, d
    ld a, c
    ld [hl], h
    db $e3
    ld bc, $a2e2
    sbc c
    ld d, d
    ld d, d
    ld hl, $7822
    ld sp, hl
    sub $01
    add l
    or b
    jp nz, $05ec

    ret z

    ldh [c], a
    inc bc
    inc hl
    ld [bc], a
    db $fc
    ei
    pop hl
    ld [bc], a
    ld [hl-], a
    ld d, d
    ld [hl], d
    ld d, d
    sub d
    and d
    ldh [c], a
    ld [bc], a
    db $fd
    ld b, $e1
    ld [bc], a
    ld [hl-], a
    ld d, d
    ld [hl], d
    ldh [c], a
    inc bc
    pop hl
    and e
    ld [hl-], a
    ei
    pop hl
    ld [hl], d
    ldh [c], a
    ld [hl], d
    pop hl
    ld [hl], d
    ldh [c], a
    ld [hl], d
    pop hl
    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld [hl], d
    ldh [c], a
    ld [hl], d
    pop hl
    ld [hl], d
    ldh [c], a
    ld [hl], d
    db $fd
    inc bc
    cp $00
    rst $38
    sub $c2
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    inc hl
    inc sp
    ld [hl-], a
    db $fc
    ei
    ld [de], a
    ld [hl-], a
    db $fd
    dec de
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    inc sp
    inc sp
    ld [hl-], a
    ei
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    db $fd
    dec c
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    cp $00
    rst $38
    sub $22
    pop af
    inc sp
    xor e
    ld h, $b5
    jp nz, $f3fc

    ld [bc], a
    rst $28
    ld [bc], a
    jp hl


    pop af
    add sp, $22
    db $ec
    ld [bc], a
    ei
    ld hl, sp+$6d
    ld l, c
    db $ec
    dec b
    db $fd
    ld bc, $00e8
    di
    inc bc
    db $ec
    ld [bc], a
    ei
    rst $30
    dec a
    ld l, c
    db $fd
    ld bc, $81e9
    add sp, $11
    ei
    db $e3
    inc bc
    ld bc, $02c6
    ld bc, $fd33
    ld bc, $00fe
    rst $38
    jp hl


    pop af
    pop hl
    and c
    jp hl


    pop de
    or d
    and l
    jp hl


    add c
    and h
    sub h
    jp hl


    pop af
    add c
    jp hl


    pop de
    sub d
    add l
    jp hl


    add c
    add h
    ld [hl], h
    jp hl


    pop af
    and c
    jp hl


    pop de
    or d
    and l
    jp hl


    add c
    and h
    sub h
    jp hl


    pop af
    ldh [c], a
    ld bc, $d1e9
    ld [de], a
    dec b
    jp hl


    add c
    inc b
    pop hl
    or h
    ld sp, hl
    pop hl
    ld d, c
    ld h, c
    ld [hl], c
    add c
    ld d, c
    ld h, c
    ld [hl], c
    add c
    ld [hl], c
    add c
    sub c
    and c
    ld [hl], c
    add c
    sub c
    and c
    ld a, [$22d6]
    pop af
    ld b, h
    adc c
    dec h
    or l
    jp nz, Jump_000_01ef

    db $fc
    xor $0f
    jp hl


    pop af
    add sp, $22
    di
    ld bc, $02ec
    ei
    rst $30
    cp c
    ld l, c
    db $ec
    ld c, $fd
    ld bc, $00f3
    xor $0f
    db $ec
    ld [bc], a
    jp hl


    pop af
    add sp, $11
    ei
    ld hl, sp-$35
    ld l, c
    db $fd
    rlca
    di
    inc bc
    xor $05
    ld hl, sp-$35
    ld l, c
    ld hl, sp-$35
    ld l, c
    cp $00
    rst $38
    ldh [rHDMA1], a
    ld h, c
    ld [hl], c
    add c
    ld d, c
    ld h, c
    ld [hl], c
    add c
    ld [hl], c
    add c
    sub c
    and c
    ld [hl], c
    add c
    sub c
    and c
    ld sp, hl
    xor $06
    ldh [c], a
    ld d, c
    xor $04
    add c
    db $e3
    ld bc, $51e2
    add c
    db $e3
    ld bc, $51e2
    add c
    db $e3
    ld bc, $51e2
    add c
    db $e3
    ld bc, $51e2
    add c
    db $e3
    ld bc, $51e4
    ld a, [$01d6]
    add h
    or b
    jp nz, $c0c0

    db $fc
    db $ec
    ld c, $fb
    rst $30
    inc c
    ld l, d
    db $fd
    inc bc
    ei
    pop hl
    add e
    add c
    add $e2
    ld [hl-], a
    ld sp, $fd73
    ld bc, $0cf7
    ld l, d
    cp $00
    rst $38
    pop hl
    ld d, c
    ld sp, $a1e0
    add c
    pop hl
    ld d, c
    ld [bc], a
    ld sp, $0111
    ld sp, $e011
    and c
    add c
    pop hl
    ld d, c
    ldh [rHDMA2], a
    pop hl
    ld sp, $a1e0
    add c
    pop hl
    ld d, c
    ld [bc], a
    ld sp, $0111
    ld sp, $e011
    and c
    add c
    ld d, d
    ld sp, hl
    sub $c2
    ret nz

    inc d
    inc d
    inc d
    ld [hl-], a
    ld sp, $fc31
    db $fc
    rst $30
    ld h, b
    ld l, d
    ei
    ld hl, sp+$6c
    ld l, d
    db $fd
    ld [bc], a
    cp $01
    ei
    inc h
    ld [hl], h
    ld d, d
    ld d, d
    ld [hl], h
    db $fd
    ld bc, $3424
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    inc h
    inc [hl]
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld sp, $fe31
    nop
    rst $38
    inc h
    ld [hl-], a
    ld de, $1131
    ld sp, $1111
    ld [hl-], a
    ld de, $f911
    ld de, $1111
    ld de, $1132
    ld sp, $3111
    ld de, $3211
    ld de, $fa11
    db $d3
    ld [hl+], a
    or c
    ld d, d
    xor e
    ld h, $b5
    call nz, $fcec
    rst $28
    ld [bc], a
    jp hl


    and c
    ldh [c], a
    ld b, h
    ld b, d
    ld b, d
    ld b, h
    ld b, d
    ld b, d
    ld b, h
    ld b, d
    ld b, d
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld d, d
    ld b, d
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    pop hl
    or d
    sub h
    call z, $e8fc
    ld de, $03f6
    jp hl


    and c
    rst $30
    cp $6a
    ldh [c], a
    ld [hl], c
    pop bc
    ld [hl], c
    push bc
    sub [hl]
    cp [hl]
    db $e3
    ld hl, $21c1
    pop bc
    rst $30
    cp $6a
    ldh [c], a
    ld [hl], c
    pop bc
    ld [hl], c
    push bc
    sub [hl]
    cp d
    add sp, $21
    jp hl


    pop de
    or d
    db $e3
    ld [bc], a
    inc h
    jp hl


    or c
    or $06
    ld hl, sp+$23
    ld l, e
    jp nz, $c202

    ldh [c], a
    or d
    jp nz, $c292

    cp d
    jp nz, Jump_002_54e3

    ld c, [hl]
    ldh [c], a
    sub c
    or c
    db $e3
    ld bc, $f821
    inc hl
    ld l, e
    jp nz, $c202

    ldh [c], a
    or d
    jp nz, $c292

    ld [hl], d
    sub d
    pop bc
    sbc c
    ld [hl], h
    sub d
    pop bc
    sbc c
    ld [hl], h
    sub d

jr_002_6af8:
    pop bc
    sbc l
    call nz, Call_000_00fe
    rst $38
    ldh [c], a
    sub c
    pop bc
    sub c
    push bc
    or [hl]
    db $e3
    ld c, $41
    pop bc
    ld b, c
    pop bc
    ldh [c], a
    sub c
    pop bc
    sub c
    push bc
    or [hl]
    db $e3
    ld c, $41
    pop bc
    ld b, c
    pop bc
    ldh [c], a
    ld [hl], c
    pop bc
    ld [hl], c
    push bc
    sub [hl]
    cp [hl]
    db $e3
    ld hl, $21c1
    pop bc
    ld sp, hl
    db $e3
    ld c, b
    jp nz, Jump_000_2202

    ld d, d
    jp nz, $c242

    ld [hl+], a
    jp nz, $c202

    ld a, [hl+]
    jp nz, Jump_002_4242

    jr nz, jr_002_6af8

    ld [$e2c2], sp
    sub d
    or d
    db $e3
    ld [hl+], a
    ld a, [$22d3]
    ld [hl], c
    ld d, d
    xor e
    ld h, $b5
    call nz, $fcec
    rst $28
    ld bc, $61e9
    ldh [c], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    or $06
    ld c, h
    call nz, $f6fc
    inc bc
    jp hl


    add c
    add sp, $11
    rst $30
    or [hl]
    ld l, e
    ei
    pop hl
    ld [hl], d
    sub d
    or d
    ldh [c], a
    ld [bc], a
    db $fd
    ld [bc], a
    call nz, $b2e1
    or d
    rst $30
    or [hl]
    ld l, e
    ei
    pop hl
    ld [hl], d
    sub d
    or d
    ldh [c], a
    ld [bc], a
    db $fd
    ld [bc], a
    or $06
    jp hl


    or c
    add sp, $21
    ldh [c], a
    ld [hl], c
    sub c
    or d
    jp hl


    ld h, c
    ld hl, sp-$22
    ld l, e
    jp nz, Jump_002_5894

    ld a, h
    db $e3
    inc h
    ld a, [bc]
    pop hl
    sub c
    ldh [c], a
    ld bc, $9141
    pop hl
    sub c
    ldh [c], a
    ld bc, $9141
    ld hl, sp-$22
    ld l, e
    sbc b
    ld e, b
    ld b, d
    pop bc
    ld c, c
    inc h
    ld b, d
    pop bc
    ld c, c
    inc h
    ld b, d
    pop bc
    ld c, l
    call nz, Call_000_00fe
    rst $38
    ei
    pop hl
    sub d
    or d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    db $fd
    ld [bc], a
    call nz, Call_000_02e2
    ld [bc], a
    ei
    pop hl
    sub d
    or d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    db $fd
    ld [bc], a
    call nz, Call_000_02e2
    ld [bc], a
    ei
    pop hl
    ld [hl], d
    sub d
    or d
    ldh [c], a
    ld [bc], a
    db $fd
    ld [bc], a
    call nz, $b2e1
    or d
    ld sp, hl
    db $e3
    ld a, [bc]
    ldh [c], a
    sub d
    or d
    db $e3
    ld [hl+], a
    jp nz, $e204

    sbc b
    cp h
    db $e3
    ld [bc], a
    ld [bc], a
    ldh [c], a
    cp d
    ldh [c], a
    ld [hl], c
    sub c
    or c
    db $e3
    ld bc, $71e2
    sub c
    or c
    db $e3
    ld bc, $9ae2
    ld d, d
    ld [hl], d
    or d
    ld a, [$01d3]
    add [hl]
    or b
    call nz, $fcec
    ldh [c], a
    sub h
    sub d
    sub d
    sub h
    sub d
    sub d
    sub h
    sub d
    sub d
    sub h
    sub d
    sub d
    sub d
    or d
    db $e3
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ldh [c], a
    or d
    db $e3
    ld [bc], a
    ldh [c], a
    sbc b
    db $e3
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $e201
    or c
    sub c
    db $fc
    or $06
    ei
    ldh [c], a
    sub d
    sub c
    sub c
    db $fd
    rlca
    ei
    ldh [c], a
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $fd
    rlca
    ei
    ldh [c], a
    sub d
    sub c
    sub c
    db $fd
    rlca
    ei
    ldh [c], a
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $fd
    ld b, $b1
    sub c
    ld [hl], d
    rst $30
    add e
    ld l, h
    ei
    ldh [c], a
    ld b, d
    ld hl, $b1e1
    or c
    ldh [c], a
    ld [hl+], a
    ld b, d
    ld [hl], d
    ld b, c
    ld b, c
    pop hl
    or c
    ldh [c], a
    ld hl, $fd41
    ld bc, $83f7
    ld l, h
    pop hl
    ld [hl], d
    pop bc
    sbc c
    ld [hl], h
    ld [hl], d
    pop bc
    sbc c
    ld [hl], h
    ld [hl], d
    pop bc
    sbc l
    or $03
    db $e3
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $e201
    or c
    sub c
    cp $00
    rst $38
    ei
    ldh [c], a
    sub d
    ld [hl], c
    ld b, c
    ld b, c
    ld [hl], d
    sub d
    db $e3
    ld [bc], a
    ldh [c], a
    sub c
    sub c
    ld b, c
    ld [hl], c
    sub c
    db $fd
    ld bc, $e2fb
    ld [hl], d
    ld d, c
    ld hl, $5221
    ld [hl], d
    or d
    ld [hl], c
    ld [hl], c
    ld hl, $7151
    db $fd
    ld bc, $e2fb
    ld d, d
    ld sp, $0101
    ld [hl-], a
    ld d, d
    sub d
    ld d, c
    ld d, c
    ld bc, $5131
    db $fd
    ld bc, $d6f9
    jp nz, Jump_000_3224

    ld de, $2211
    ld de, $3211
    ld de, $2811
    inc [hl]
    call nz, $24fc
    ld [hl-], a
    ld de, $2211
    ld de, $3211
    ld de, $fb11
    ld [hl+], a
    ld de, $3211
    ld de, $fd11
    dec bc
    ld [hl+], a
    ld de, $3211
    ld de, $2211
    ld de, $3111
    ld sp, $3131
    ei
    rst $30
    ld [de], a
    ld l, l
    db $fd
    ld b, $32
    ld de, $3211
    ld de, $3211
    ld de, $3111
    ld sp, $3131
    ei
    rst $30
    ld [de], a
    ld l, l
    db $fd
    dec b
    inc hl
    add hl, hl
    inc [hl]
    inc hl
    add hl, hl
    inc [hl]
    inc hl
    add hl, hl
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld sp, $3131
    ld sp, $00fe
    rst $38
    ld [hl-], a
    ld de, $3211
    ld de, $3211
    ld de, $3211
    ld [hl+], a
    ld sp, hl
    sub $22
    or c
    ld d, d
    xor e
    ld h, $b5
    jp nz, $02ef

    db $ec
    inc bc
    jp hl


    and c
    add sp, $11
    ret


    db $fc
    ret nz

    ret z

    ldh [c], a
    and c
    pop bc
    and c
    jp nz, Jump_000_03e3

    ret nz

    ret z

    ldh [c], a
    and c
    pop bc
    and c
    jp nz, $02e3

    rst $30
    add c
    ld l, l
    jp hl


    and c
    add sp, $11
    ldh [c], a
    and c
    pop bc
    and c
    pop bc
    and c
    db $e3
    ld [bc], a
    rst $30
    add c
    ld l, l
    jp hl


    and c
    add sp, $11
    ldh [c], a
    and c
    sub c
    and d
    and c
    db $e3
    ld [bc], a
    ld hl, sp-$39
    ld l, l
    ldh [c], a
    xor e
    jp hl


    add c
    add sp, $00
    ldh [c], a
    ld hl, $c131
    ld d, d
    ld hl, sp-$39
    ld l, l
    ldh [c], a
    xor c
    jp hl


    add c
    add sp, $11
    ldh [c], a
    and c
    pop bc
    and c
    pop bc
    and c
    db $e3
    inc bc
    cp $00
    rst $38
    jp hl


    or c
    add sp, $11
    ldh [c], a
    inc bc
    jp nz, Jump_002_5234

    ld [hl-], a
    ld d, c
    ld [hl], d
    pop bc
    and c
    pop bc
    ld a, l
    ldh [c], a
    inc bc
    jp nz, Jump_002_5234

    ld [hl-], a
    ld d, c
    ld [hl], d
    pop bc
    and c
    pop bc
    halt
    jp hl


    add c
    add sp, $11
    db $e3
    ld bc, $01c1
    pop bc
    ld bc, $e922
    or c
    add sp, $11
    pop hl
    and e
    jp nz, Jump_000_24e2

    ld [hl-], a
    ld [hl+], a
    ld sp, $c152
    sub c
    pop bc
    ld e, l
    ldh [c], a
    and e
    jp nz, Jump_000_24e2

    ld [hl-], a
    ld [hl+], a
    ld sp, $c152
    sub c
    pop bc
    ld d, [hl]
    ld sp, hl
    jp hl


    and c
    add sp, $11
    db $e3
    jr z, jr_002_6e21

    ld [hl-], a
    ld hl, $2902
    jp hl


    ld sp, $51e2
    ld sp, $e955
    and c
    db $e3
    ld [$2233], sp
    ld bc, $fa22
    sub $22
    ld [hl], c
    ld d, d
    xor e
    ld h, $b5
    jp nz, $03ec

    rst $28
    ld bc, $91e9
    add sp, $11
    ret


    db $fc
    ei
    xor $05
    jp hl


    sub c
    ldh [c], a
    ld bc, $04ee
    ld sp, $a171
    db $fd
    dec b
    xor $06
    ldh [c], a
    ld [hl], c
    pop bc
    ld [hl], c
    jp nz, $fb93

    xor $05
    jp hl


    sub c
    ldh [c], a
    ld bc, $04ee
    ld sp, $a171
    db $fd
    dec b
    xor $06
    ldh [c], a
    ld [hl], c
    pop bc
    ld [hl], c
    jp nz, $f793

    ld e, [hl]

jr_002_6e21:
    ld l, [hl]
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], c
    sub e
    rst $30
    ld e, [hl]
    ld l, [hl]
    ld [hl], c
    ld d, c
    ld [hl], d
    ld [hl], c
    sub e
    ld hl, sp-$50
    ld l, [hl]
    db $e3
    ld hl, $2131
    ld bc, $0121
    ld d, c
    ld sp, $5171
    and c
    sub c
    ld [hl], c
    ld d, c
    ld sp, $f851
    or b
    ld l, [hl]
    db $e3
    ld hl, $2131
    ld bc, $0121
    ld d, c
    ld sp, $91e9
    add sp, $11
    ldh [c], a
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], c
    sub e
    cp $00
    rst $38
    ei
    xor $05
    jp hl


    sub c
    ldh [c], a
    ld bc, $04ee
    ld sp, $a171
    db $fd
    dec b
    db $e3
    ld [hl], c
    ld sp, $3101
    ld bc, $a1e2
    ld [hl], c
    ld sp, $eefb
    dec b
    jp hl


    sub c
    ldh [c], a
    ld bc, $04ee
    ld sp, $a171
    db $fd
    dec b
    xor $06
    sub c
    pop bc
    sub c
    pop bc
    sub c
    and e
    ei
    xor $04
    pop hl
    and c
    ldh [c], a
    ld hl, $a151
    db $fd
    dec b
    ldh [c], a
    and c
    db $e3
    ld d, c
    ld hl, $a1e2
    db $e3
    ld hl, $a1e2
    sub c
    ld d, c
    ei
    pop hl
    and c
    ldh [c], a
    ld hl, $a151
    db $fd
    dec b
    xor $06
    ld sp, hl
    xor $05
    jp hl


    add c
    db $e3
    ld hl, $e201
    and c
    sub c
    db $e3
    ld bc, $a1e2
    sub c
    ld [hl], c
    and c
    ld [hl], c
    sub c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld hl, $2151
    ld [hl], c
    ld hl, $a1e1
    ldh [c], a
    ld d, c
    ld sp, $3121
    ld hl, $e101
    and c
    sub c
    and c
    ld bc, $21e2
    ld sp, $2101
    ld sp, $3151
    ld d, c
    ld [hl], c
    sub c
    ld [hl], c
    and c
    sub c
    db $e3
    ld bc, $a1e2
    db $e3
    ld hl, $fa01
    sub $01
    add [hl]
    or b
    jp nz, $03ec

    ret z

    db $fc
    ei
    ldh [c], a
    inc bc
    ld [bc], a
    pop hl
    and c
    ldh [c], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    ld bc, $07fd
    ei
    pop hl
    and e
    and d
    sub c
    and e
    and d
    and d
    ldh [c], a
    ld [hl+], a
    pop hl
    and c
    db $fd
    inc bc
    ei
    ldh [c], a
    inc bc
    ld [bc], a
    pop hl
    and c
    ldh [c], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    ld bc, $03fd
    ei
    pop hl
    and e
    and d
    sub c
    ldh [c], a
    and e
    and d
    and d
    ldh [c], a
    ld [hl+], a
    pop hl
    and c
    db $fd
    ld [bc], a
    pop hl
    and e
    and d
    sub c
    ldh [c], a
    and e
    ldh [c], a
    ld hl, $2201
    ld hl, $f732
    ld l, b
    ld l, a
    ld hl, sp-$7f
    ld l, a
    ldh [c], a
    inc hl
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $68f7
    ld l, a
    ld hl, sp-$7f
    ld l, a
    ldh [c], a
    ld [hl+], a
    ld d, c
    ld sp, $3101
    ld hl, $e101
    and c
    ldh [c], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $fe32
    nop
    rst $38
    ldh [c], a
    ld [hl], e
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ldh [c], a
    ld d, e
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld sp, hl
    ldh [c], a
    inc sp
    ld sp, $3231
    ld sp, $3231
    ld sp, $3231
    ld sp, $d6fa
    jp nz, Jump_002_7171

    ld [hl], c
    ld [hl], c
    add c
    add c
    add d
    db $fc
    ei
    dec h
    rst $30
    db $fd
    ld l, a
    ld de, $1111
    ld de, $3211
    ld de, $3211
    ld [hl-], a
    ld sp, $fd32
    ld bc, $25fb
    rst $30
    db $fd
    ld l, a
    ld de, $1111
    ld de, $f711
    db $fd
    ld l, a
    db $fd
    ld [bc], a
    dec h
    rst $30
    db $fd
    ld l, a
    ld de, $1111
    ld de, $3211
    ld de, $3211
    ld [hl-], a
    ld sp, $fb32
    dec h
    rst $30
    db $fd
    ld l, a
    ld de, $1111
    ld de, $f711
    db $fd
    ld l, a
    db $fd
    ld [bc], a
    dec h
    rst $30
    db $fd
    ld l, a
    ld de, $1111
    ld de, $3211
    ld de, $3111
    ld sp, $3132
    ld [hl-], a
    ei
    ld hl, sp+$07
    ld [hl], b
    db $fd
    ld b, $11
    ld de, $2211
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld sp, $fe32
    nop
    rst $38
    ld [hl-], a
    ld de, $1111
    ld de, $1111
    ld [hl-], a
    ld de, $11f9
    ld de, $2211
    ld d, d
    ld [hl+], a
    ld de, $2211
    ld d, d
    ld hl, $d6fa
    ld de, $52b1
    xor e
    ld h, $b5
    jp nz, $02ef

    db $ec
    inc bc
    jp hl


    and c
    db $fc
    ldh [c], a
    ld [hl], b
    add b
    sub b
    and b
    jp hl


    or c
    ldh [c], a
    ld [hl], c
    ld [hl], c
    call nz, Call_002_7171
    jp nz, Jump_002_6254

    ld [hl], c
    rst $00
    jp hl


    pop hl
    di
    ld [bc], a
    or $03
    db $e4
    ld bc, $b1e3
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $e201
    or c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $f302
    inc bc
    jp hl


    or c
    or $06
    ldh [c], a
    ld hl, $3231
    inc bc
    ld [hl], d
    inc hl
    ld d, d
    ld [bc], a
    ld hl, $3231
    inc bc
    ld [hl], d
    inc hl
    ld d, d
    ld [bc], a
    ld sp, $5a55
    ld d, b
    ld sp, $5251
    inc hl
    add d
    ld d, e
    ld [hl], d
    ld [hl+], a
    ld sp, $5251
    inc hl
    add d
    ld d, e
    ld [hl], d
    ld [hl+], a
    ld d, c
    ld [hl], l
    ld a, d
    ld a, b
    jp nz, Jump_002_7282

    ld e, d
    jp nz, Jump_002_7202

    ld d, d
    inc a
    ld [hl+], a
    ld [bc], a
    pop hl
    and h
    add h
    ld [hl], d
    ldh [c], a
    ld d, h
    ld a, [hl-]
    jp nz, Jump_000_3232

    ld e, d
    jp nz, Jump_000_3252

    ld a, d
    jp nz, Jump_002_7252

    adc d
    jp nz, Jump_002_5232

    ld [hl], b
    jp nz, Jump_000_2172

    pop bc
    and d
    ld [hl], c
    push bc
    ld sp, $8171
    and c
    ei
    ldh [c], a
    and c
    db $e3
    dec b
    ldh [c], a
    ld [hl], d
    and [hl]
    ld d, d
    ld d, c
    ld [hl], e
    ld a, h
    ldh [c], a
    and c
    db $e3
    dec b
    ldh [c], a
    ld [hl], d
    and [hl]
    ld d, d
    ld d, c
    ld [hl], e
    xor b
    sub c
    and e
    db $fd
    ld bc, $00e3
    ret nz

    cp $00
    rst $38
    sub $11
    ld h, c
    ld d, d
    xor e
    ld h, $b5
    jp nz, Jump_000_01ef

    db $ec
    inc bc
    add sp, $0b
    db $fc
    xor $05
    ei
    ldh [c], a
    ld bc, $7131
    and c
    db $fd
    rrca
    xor $07
    ldh [c], a
    ld bc, $c401
    ld bc, $c201
    pop hl
    and h
    or d
    ldh [c], a
    ld bc, $e9c7
    pop hl
    di
    ld bc, $03f6
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
    ld [bc], a
    di
    inc bc
    or $06
    xor $04
    ei
    db $e3
    jp nz, Jump_000_0101

    ld bc, $c201
    inc bc
    ld bc, $fdc4
    dec b
    db $e3
    jp nz, Jump_000_2121

    ld hl, $c221
    inc hl
    ld hl, $e3c4
    jp nz, Jump_000_2121

    ld hl, $c221
    ld [hl+], a
    xor $04
    ldh [c], a
    ld d, d
    ld [hl-], a
    ld a, [bc]
    jp nz, Jump_002_7202

    ld d, d
    inc a
    ld [hl+], a
    ld [bc], a
    pop hl
    and h
    add h
    ld [hl], d
    ldh [c], a
    ld d, h
    ld a, [hl-]
    jp nz, $0202

    ld a, [hl+]
    jp nz, Jump_000_0222

    ld a, [hl-]
    jp nz, Jump_000_3222

    ld e, d
    jp nz, Jump_000_2202

    jr nz, @-$3c

    add sp, $16
    ld [hl], d
    ld hl, $a2c1
    ld [hl], c
    push bc
    add sp, $0b
    ld sp, $8171
    and c
    xor $04
    ei
    ldh [c], a
    ld sp, $a171
    db $e3
    ld bc, $1ffd
    ei
    ldh [c], a
    ld bc, $7131

Call_002_7171:
Jump_002_7171:
    and c
    db $fd
    rlca
    cp $00
    rst $38
    sub $01
    add [hl]
    or b
    jp nz, $03ec

    db $fc
    ei
    pop hl
    ld [hl], e
    and c
    jp nz, Jump_000_02e2

    jp nz, Jump_002_72e1

    and d
    ldh [c], a
    ld [bc], a
    db $fd
    inc bc
    pop hl
    and c
    and c
    call nz, $a1a1
    jp nz, $b2a4

    ldh [c], a
    ld [bc], a
    adc $fb
    pop hl
    ld [hl], e
    and c
    jp nz, Jump_000_02e2

    jp nz, Jump_002_72e1

    and d
    ldh [c], a
    ld [bc], a
    db $fd
    ld bc, $e2fb
    inc bc
    ld sp, $52c2
    jp nz, Jump_000_3202

    ld d, d
    db $fd
    inc bc
    ldh [c], a
    inc hl
    ld d, c
    jp nz, $c272

    ld [hl+], a
    ld d, d
    ld [hl], d
    inc hl
    ld d, c
    jp nz, $c272

    ldh [c], a
    ld [bc], a
    pop hl
    and d
    add h
    ld d, d
    add d
    ld d, d
    ld [hl-], a
    and d
    add d
    ld [hl], h
    ld [hl-], a
    ld [hl], d
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld [hl], d
    ld [hl], d
    ldh [c], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld [hl], d
    and d
    and d
    ldh [c], a
    inc b

Jump_002_71e1:
    ld [bc], a
    pop hl
    and d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld [hl+], a
    ld [bc], a
    inc h
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld d, d
    ld [hl-], a
    inc b
    ld [bc], a
    pop hl
    and d
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    pop hl
    and h
    and d
    add d
    and d
    and d
    ldh [c], a
    ld [hl+], a
    pop hl

Jump_002_7202:
    and d
    ld [hl], h
    ld [hl], d
    ld d, d
    ld [hl], d
    ld [hl], d
    and d
    ld [hl], d
    ld [hl], d
    and d
    ld d, d
    ldh [c], a
    ld [hl+], a
    pop hl
    and d
    ret z

    ei
    rst $30
    ld a, [hl+]
    ld [hl], d
    db $fd
    rlca
    ei
    pop hl
    ld [hl], e
    and c
    jp nz, Jump_000_02e2

    jp nz, Jump_002_72e1

    and d
    ldh [c], a
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ldh [c], a
    ld [bc], a
    pop hl
    ld [hl], d
    and d
    ld d, d
    ld [hl-], a
    ld [hl], d
    and d
    ldh [c], a
    ld [bc], a
    ld sp, hl
    sub $c2
    db $fc
    ei
    ld [hl-], a
    ld de, $fd11
    rrca
    ld sp, $c431
    ld sp, $c231
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    add $61
    ld h, c
    ld [hl], c
    ld [hl], c
    add c
    add c
    add c
    add c
    ei

Jump_002_7252:
    ld [hl-], a
    ld de, $fd11
    dec e
    ld de, $3211
    ld [hl-], a
    ld [hl+], a
    ei
    ld sp, $2211
    db $fd
    rra

Jump_002_7262:
    ld [hl-], a
    ld [hl-], a

Jump_002_7264:
    ld [hl-], a
    ld [hl-], a
    call nz, $6161
    ld [hl], c
    ld [hl], c
    ei
    ld [de], a
    ld de, $3211
    ld de, $fd11
    rrca
    ei
    ld [hl-], a
    ld de, $fd11
    rlca
    cp $00
    rst $38
    sub $11
    or c
    ld d, d
    xor e

Jump_002_7282:
    ld h, $b5
    jp nz, $02ef

    db $ec
    ld a, [$e8fc]
    dec d
    ei
    db $e3
    ld [bc], a
    ldh [c], a
    ret z

    and d
    jp nz, $02e3

    ldh [c], a
    jp z, $c2a2

    db $e3
    ld [bc], a
    db $fd
    ld bc, $e9fb
    or c
    db $e3
    ld [hl], d
    call nz, $e97a
    sub c
    jp nz, Jump_000_3202

    ld [bc], a
    ld d, d
    ld [hl-], a
    ld d, d
    ld [hl], d
    jp hl


    or c
    db $e3
    ld d, d
    call nz, $e95a
    sub c
    jp nz, Jump_000_2202

    ld [bc], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld d, d
    jp hl


    or c
    db $e3
    ld [hl-], a
    call nz, $e93a
    sub c
    ldh [c], a
    jp nz, $e3a2

    ld [bc], a
    ldh [c], a
    and d
    db $e3
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [hl-], a
    jp hl


    or c
    db $e3
    ld [hl+], a
    call nz, $e92a
    sub c
    ldh [c], a
    jp nz, $a272

    ld [hl], d
    db $e3
    ld [bc], a

Jump_002_72e1:
    ldh [c], a
    and d
    db $e3
    ld [bc], a
    ld [hl+], a
    db $fd
    ld bc, $e9fb
    or c
    db $e3
    ld [bc], a
    ldh [c], a
    ret z

    and d
    jp nz, $02e3

    ldh [c], a
    jp z, $c2a2

    db $e3
    ld [bc], a
    db $fd
    ld bc, $32e3
    call nz, Call_002_5236
    ld [hl], d
    ld [hl], c
    add c
    ld [hl], c
    ld d, c
    ld d, c
    ld [hl], c
    ld d, c
    ld sp, $5131
    ld sp, $0421
    ld bc, $3122
    ld d, d
    ld [hl+], a
    jr z, @+$2a

    ldh [c], a
    and c
    db $e3
    ld bc, $c222
    ld [bc], a
    ldh [c], a
    ld [hl], c
    add d
    and e
    db $e3
    ld [bc], a
    ldh [c], a
    add c
    and d
    db $e3

jr_002_7326:
    inc bc
    ld [hl+], a
    db $e4
    ld b, $e3
    and c
    db $e4
    ld bc, $a1e3
    db $e4
    ld bc, $a1e3
    add c
    ld [hl], c
    add c
    ld [hl], c
    ld d, c
    ld d, c
    ld [hl], c
    ld d, c
    ld sp, $3121
    ld hl, $2801
    jr nz, jr_002_7326

    and c
    db $e3
    rlca
    ld [hl+], a
    ld [hl], $51
    ld [hl], d
    ld d, c
    pop bc
    ld [hl], e
    jr c, @-$1b

    jp nz, $2501

    ld [hl-], a
    ld d, [hl]
    add c
    and d
    add c
    pop bc
    ld d, e
    xor b
    db $e3
    jp nz, $3432

    ld d, d
    halt
    ld [hl], c
    add d
    ld [hl], c
    pop bc
    inc sp
    adc b
    ld d, c
    ld a, a
    ld d, c
    ld [hl], a
    xor b
    cp $00
    rst $38
    sub $11
    ld h, c
    ld d, d
    xor e
    ld h, $b5
    jp nz, Jump_000_01ef

    db $ec
    ld a, [$0be8]
    db $fc
    xor $06
    jp hl


    add c
    ei
    ldh [c], a
    ld [hl], d
    ret z

    ld [hl-], a
    jp nz, $ca72

    ld [hl-], a
    jp nz, $fd72

    ld bc, $eefb
    dec b
    jp hl


    ld [hl], c
    db $e3
    ld [bc], a
    call nz, $000a
    ldh [c], a
    and d
    call nz, $e3aa
    ld d, b
    ldh [c], a
    add d
    call nz, $e38a
    jr nc, @-$1c

    ld [hl], d
    call nz, $e37a
    jr nz, @-$01

    ld bc, $06ee
    jp hl


    add c
    ei
    ldh [c], a
    ld [hl], d
    ret z

    ld [hl-], a
    jp nz, $ca72

    ld [hl-], a
    jp nz, $fd72

    ld bc, $eefb
    dec b
    jp hl


    ld [hl], c
    db $e3
    ld [hl-], a
    call nz, Call_000_303a
    db $e3
    ld [hl+], a
    call nz, $502a
    db $e3
    ld [bc], a
    call nz, Call_000_300a
    ldh [c], a
    and d
    call nz, $e3aa
    jr nz, @-$01

    ld bc, $00fe
    rst $38
    sub $01
    add [hl]
    or b
    jp nz, Jump_000_06ec

    db $fc
    ei
    ldh [c], a
    ld [bc], a
    pop hl
    ld [hl], d
    and d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld [hl-], a
    ld [hl], d
    db $fd
    inc bc
    ei
    ldh [c], a
    ld [bc], a
    pop hl
    ld [hl], d
    and d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld [hl-], a
    ld [hl], d
    ldh [c], a
    ld [bc], a
    pop hl
    ld [hl], d
    and d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld [hl-], a
    ld [hl], d
    pop hl
    and d
    ld d, d
    add d
    and d
    ldh [c], a
    ld [hl+], a
    pop hl
    and d
    ldh [c], a
    ld [hl+], a
    ld d, d
    pop hl
    and d
    ld d, d
    add d
    and d
    ldh [c], a
    ld [hl+], a
    pop hl
    and d
    ldh [c], a
    ld [hl+], a
    ld d, d
    pop hl
    add d
    ld [hl-], a
    ld d, d
    add d
    ldh [c], a
    ld [bc], a
    pop hl
    add d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    pop hl
    add d
    ld [hl-], a
    ld d, d
    add d
    ldh [c], a
    ld [bc], a
    pop hl
    add d
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    pop hl
    ld [hl], d
    ld [hl+], a
    ld d, d
    ld [hl], d
    and d
    ld d, d
    and d
    ldh [c], a
    ld [hl+], a
    pop hl
    ld [hl], d
    ld [hl+], a
    ld d, d
    ld [hl], d
    and d
    ld d, d
    and d
    ldh [c], a
    ld [hl+], a
    db $fd
    ld bc, $00fe
    rst $38
    sub $c2
    rst $30
    sub b
    ld [hl], h
    db $fc
    ei
    ld [hl-], a
    ld de, $fd11
    ld a, $31
    ld sp, $3131
    rst $30
    sub b
    ld [hl], h
    ei
    ld [hl-], a
    ld de, $fd11
    ccf
    ei
    ld sp, $3131
    ld sp, $6161
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    add c
    add c
    add d
    ld h, c
    ld h, c
    add c
    add c
    ld h, c
    ld h, c
    add c
    add c
    ld h, c
    ld h, c
    add c
    add c
    ld [hl-], a
    ld sp, $fd31
    ld bc, $00fe
    rst $38
    ei
    ld d, d
    ld de, $2211
    ld sp, $5211
    ld de, $5211
    db $fd
    inc bc
    ld sp, $3131
    ld sp, $3131
    ld sp, $f931
    sub $22
    or c
    ld d, d
    xor e
    ld h, $b5
    jp $02ec


    rst $28
    ld [bc], a
    add sp, $22
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    add sp, $11
    jp hl


    ld de, $e2fb
    ld [bc], a
    ld [bc], a
    pop hl
    ld [hl], e
    and e
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    db $fd
    ld bc, $b1e9
    rst $30
    ld a, [$5c74]
    inc hl
    add hl, hl
    add sp, $11
    ldh [c], a
    sub d
    ld [hl], d
    sub c
    ld [hl], e
    rst $30
    ld a, [$5c74]
    jp nz, $e87e

    ld hl, $41e2
    ld [hl], c
    sub c
    or c
    ld hl, sp+$27
    ld [hl], l
    db $e3
    add hl, bc
    add sp, $11
    ldh [c], a
    ld [hl], h
    sub c
    or e
    ld hl, sp+$27
    ld [hl], l
    db $e3
    add hl, bc

jr_002_74f6:
    jr z, jr_002_74f6

    nop
    rst $38
    add sp, $22
    ldh [c], a
    ld hl, $4a45
    jp nz, Jump_002_5142

    ld [hl], e
    ld d, d
    ld b, d
    jp nz, Jump_002_4e22

    ld b, a
    jp hl


    add c
    add sp, $11
    ld bc, $0321
    ld b, c
    ld d, c
    ld [hl], c
    sub c
    and d
    jp hl


    or c
    add sp, $22
    ldh [c], a
    ld d, c
    ld b, c
    ld d, h
    ld e, d
    jp nz, $7152

    sub e
    ld [hl], d
    ld d, h
    ld b, d
    ld sp, hl
    jp hl


    or c
    add sp, $21
    db $e3
    inc c
    ldh [c], a
    ld b, c
    ld [hl], d
    cp c
    add sp, $11
    jp hl


    ld b, c
    ldh [c], a
    ld hl, $2141
    ld bc, $b1e1
    ldh [c], a
    ld bc, $b1e1
    sub c
    add sp, $21
    jp hl


    or c
    db $e3
    inc l
    ldh [c], a
    ld [hl], c
    sub d
    ld a, [$11d6]
    ld [hl], c
    ld d, c
    xor e
    ld h, $b5
    jp $02ec


    rst $28
    ld bc, $51e9
    xor $06
    add sp, $11
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    xor $03
    jp hl


    ld sp, $11e8
    ei
    ldh [c], a
    and c
    db $e3
    ld bc, $7141
    db $fd
    dec d
    xor $04
    ldh [c], a
    and c
    db $e3
    ld bc, $2101
    ld b, c
    ld d, c
    ld [hl], d
    xor $03
    ei
    db $e3
    ld bc, $5121
    sub c
    db $fd
    dec bc
    ei
    ldh [c], a
    sub c
    or c
    db $e3
    ld hl, $fd51
    ld bc, $04ee
    ld d, d
    ld b, d
    ld d, c
    ld b, e
    xor $03
    ei
    ldh [c], a
    and c
    db $e3
    ld bc, $7141
    db $fd
    dec c
    ldh [c], a
    and c
    db $e3
    ld bc, $2101
    ld b, c
    ld d, c
    ld [hl], d
    ei
    db $e3
    ld bc, $5121
    sub c
    db $fd
    dec bc
    ei
    db $e3
    ld hl, $7141
    or c
    db $fd
    ld [bc], a
    add sp, $22
    xor $04
    ldh [c], a
    ld b, c
    ld [hl], c
    sub c
    or c
    ldh [c], a
    ld a, b
    ld b, a
    ld e, b
    cp b
    ld d, c
    sbc b
    ld d, a
    ld a, c
    ld b, d
    ld b, d
    ld d, c
    ld [hl], e
    ldh [c], a
    ld a, b
    ld b, a
    ld e, b
    cp b
    ld d, c
    sbc b
    ld d, a
    ld [hl], b
    ld [hl], c
    cp $00
    rst $38
    sub $01
    add [hl]
    or b
    jp $02ec


    ret nz

    call z, $03f6
    db $e3
    ld [bc], a
    ldh [c], a
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $f601
    ld b, $fb
    ldh [c], a
    ld [bc], a
    ld [bc], a
    pop hl
    ld [hl], e
    and e
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    db $fd
    ld bc, $fbfc
    ldh [c], a
    ld [bc], a
    ld [bc], a
    pop hl
    ld [hl], e
    and e
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    db $fd
    ld bc, $5ef7
    halt
    pop hl
    or d
    or d
    ld d, e
    sub e
    sub d
    or d
    ldh [c], a
    ld [bc], a
    rst $30
    ld e, [hl]
    halt
    ldh [c], a
    ld b, d
    ld b, d
    pop hl
    or e
    ldh [c], a
    inc hl
    ld [hl+], a
    ld b, d
    ld d, d
    ei
    ldh [c], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0201
    ld bc, $0201
    ld bc, $b3e1
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    pop hl
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    pop hl
    ld [hl], e
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $fd
    ld bc, $00fe
    rst $38
    ei
    ldh [c], a
    ld [bc], a
    ld [bc], a
    pop hl
    ld [hl], e
    and e
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    db $fd
    inc bc
    ei
    ldh [c], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    sub e
    ldh [c], a
    inc bc
    ld [bc], a
    ld [hl+], a
    ld b, d
    db $fd
    ld [bc], a
    ld sp, hl
    sub $c3
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld [hl-], a
    ld sp, $1231
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld sp, $3131
    ld sp, $24fc
    ld [hl-], a
    ld de, $1231
    ld [de], a

Call_002_76a9:
    ld [hl-], a
    ld [hl+], a
    ei
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    db $fd
    rlca
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $3231
    ld [hl-], a
    ld sp, $2433
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ei
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    db $fd
    dec b
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld de, $1231
    ld [de], a
    ld sp, $3131
    ld sp, $12fb
    ld de, $3211
    ld de, $fd11
    ld b, $32
    ld [hl-], a
    ld sp, $fb23
    ld [de], a
    ld de, $3211
    ld de, $fd11
    ld b, $12
    ld de, $3111
    ld sp, $3131
    cp $00
    rst $38
    sub $22
    or c
    ld d, d
    xor e
    ld h, $b5
    jp nz, $05ec

    rst $28
    ld [bc], a
    ret z

    db $fc
    add sp, $11
    ei
    pop hl
    ld [hl], h
    and h
    ldh [c], a
    ld [$e1c2], sp
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    pop hl
    and d
    ld [hl], d
    and d
    db $fd
    ld bc, $81e9
    ei
    ldh [c], a
    inc bc
    inc bc
    pop hl
    and h
    ld [hl], d
    and c
    ldh [c], a
    inc bc
    db $fd
    inc bc
    add sp, $22
    jp hl


    or c
    ei
    pop hl
    and c
    ldh [c], a
    dec bc
    inc b
    pop hl
    add c
    xor e
    ld [hl], c
    and e
    db $fd
    inc bc
    add sp, $11
    ei
    pop hl
    inc bc
    inc bc
    inc sp
    inc sp
    ld d, h
    db $fd
    inc bc
    cp $00
    rst $38
    sub $11

Jump_002_7751:
    ld [hl], c
    ld d, c
    xor e
    ld h, $b5
    jp nz, $05ec

    rst $28
    ld bc, $fcc8
    jp hl


    ld d, c
    xor $06
    add sp, $22
    ei
    pop hl
    pop bc
    ld [hl], h
    and h
    ldh [c], a
    ld [$e1c2], sp
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    pop hl
    and d
    ld [hl], d
    and c
    db $fd
    ld bc, $03ee
    jp hl


    ld sp, $11e8
    ei
    db $e3
    ld bc, $7141
    ld bc, $7141
    ld bc, $7141
    ld bc, $7141
    ld bc, $7141
    ld b, c
    db $fd
    dec bc
    ei
    db $e3
    ld hl, $7151
    ld hl, $7151
    ld hl, $7151
    ld hl, $7151
    ld hl, $7151
    ld d, c
    db $fd
    inc bc
    cp $00
    rst $38
    sub $01
    add [hl]
    or b
    jp nz, $ecc8

    dec b
    db $fc
    ei
    pop hl
    ld [hl], h
    and h
    ldh [c], a
    ld [$e1c2], sp
    and d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    pop hl
    and d
    ld [hl], d
    and d
    db $fd
    ld bc, $e2fb
    inc bc
    inc bc
    pop hl
    and h
    ld [hl], d
    and c
    ldh [c], a
    inc bc
    db $fd
    dec bc
    ei
    pop hl
    ld [hl], e
    ld [hl], e
    and e
    and e
    ldh [c], a
    ld bc, $fd03
    inc bc
    cp $00
    rst $38
    sub $c2
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    db $fc
    inc h
    ei
    inc d
    db $fd
    inc c
    ld sp, $3131
    ld sp, $3131
    ld sp, $2431
    ld [hl-], a
    ld de, $1111
    ld de, $1111
    ld [hl-], a
    ld de, $fb11
    ld de, $1111
    ld de, $1132
    ld de, $1cfd
    ld sp, $3131
    ld sp, $3131
    ld sp, $fe31
    nop
    rst $38
    sub $22
    or c
    ld d, d
    xor e
    ld h, $b5
    jp Jump_000_04ec


    rst $28
    ld [bc], a
    add sp, $11
    ei
    ldh [c], a
    ld [bc], a
    ld [hl-], a
    ld [hl], c
    ld [hl-], a
    db $e3
    add hl, bc
    db $fd
    inc bc
    db $fc
    rst $30
    and e
    ld a, b
    ldh [c], a
    inc h
    ld a, h
    jp hl


    ld de, $11e8
    ld sp, $7151
    add c
    ld d, c
    ld [hl], c
    add c
    and c
    ldh [c], a
    and c
    db $e3
    ld hl, $e201
    and c
    db $e3
    ld bc, $a1e2
    add c
    ld [hl], c
    jp hl


    or c
    add sp, $22
    rst $30
    and e
    ld a, b
    ldh [c], a
    inc h
    ld a, h
    jp hl


    add c
    add sp, $21
    jp nz, $c172

    ld d, e
    ld [hl], c
    ld [hl], c
    jp nz, $b1e9

    add sp, $22
    ld sp, $8171
    and c
    ld hl, sp-$36
    ld a, b
    ld [hl], b
    jp nz, $91e9

    ldh [c], a
    ld [hl], c
    add c
    ld [hl], c
    ld d, c
    ld sp, $3151
    ld hl, $2101
    ld bc, $a1e1
    jp hl


    or c
    add sp, $22
    ldh [c], a
    ld sp, $8171
    and c
    ld hl, sp-$36
    ld a, b
    ld [hl], b
    jp nz, Jump_002_7751

    jp hl


    add c
    add sp, $11
    ldh [c], a
    ld [hl], c
    add c

jr_002_7897:
    and c
    db $e3
    ld bc, $71e2
    add c
    and c
    db $e3
    ld bc, $00fe
    rst $38
    jp hl


    pop bc
    add sp, $22
    ldh [c], a
    ld hl, $e137
    ld [hl], d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    ld a, [hl-]
    ld sp, $3352
    ld [hl+], a
    jr z, jr_002_7897

    ld d, d
    and d
    ldh [c], a
    ld [bc], a
    jr nz, @-$3c

    ldh [c], a
    ld hl, $e137
    ld [hl], d
    ldh [c], a
    ld [bc], a
    ld [hl+], a
    ld a, [hl-]
    ld sp, $3352
    ld [hl+], a
    ld sp, hl
    jp hl


    or c
    add sp, $21
    db $e3
    ld [$a2e2], sp
    and h
    adc d
    ld [hl], d
    ld d, [hl]
    and h
    and h
    ld d, d
    add h
    ld a, [hl]
    pop hl
    and c
    ldh [c], a
    ld sp, $7151
    add [hl]
    ld [hl], h
    ld [hl], d
    jp nz, Jump_000_325a

    ld [hl+], a
    ld [hl-], a
    ld a, [$11d6]

jr_002_78ec:
    ld [hl], c
    ld d, c
    xor e
    ld h, $b5
    jp Jump_000_04ec


    rst $28
    ld bc, $04ee
    add sp, $21
    ldh [c], a
    ld a, h
    ld hl, $7231
    ld e, h
    ld bc, $5221
    inc a
    pop hl
    and c
    ldh [c], a
    ld bc, $3c32
    ld hl, $7231
    db $fc
    add sp, $11
    rst $30
    ld b, b
    ld a, c
    ld a, b
    xor b
    rst $30
    ld b, b
    ld a, c
    add sp, $22
    jp nz, $c122

    inc bc
    ld hl, $c221
    ld sp, $8171
    and c
    ld hl, sp+$61
    ld a, c
    jr nz, jr_002_78ec

    add sp, $11
    xor $05
    ld d, c
    ld a, e
    add c
    and c
    ldh [c], a
    ld bc, $ee21
    inc b
    ld hl, sp+$61
    ld a, c
    nop
    jp nz, $fe00

    nop
    rst $38
    xor $04
    ei
    ldh [c], a
    ld [bc], a
    ld sp, $fd71
    rlca
    ei
    pop hl
    and d
    ldh [c], a
    ld hl, $fd51
    rlca
    ei
    ldh [c], a
    ld [bc], a
    ld sp, $fd81
    rlca
    ei
    pop hl
    and d
    ldh [c], a
    ld hl, $fd71
    inc bc
    ld sp, hl
    add sp, $21
    ldh [c], a
    ld a, b
    ld [hl], d
    ld [hl], h
    ld e, d
    jr c, jr_002_79de

    ld [hl], h
    ld [hl+], a
    ld d, h
    ld a, [hl-]
    pop hl
    and c
    ldh [c], a
    ld sp, $7151
    pop hl

Call_002_7975:
    and c
    ldh [c], a
    ld sp, $7151
    ld d, [hl]
    inc [hl]
    ld [hl-], a
    jp nz, $fa20

    sub $01
    add [hl]
    or b
    jp Jump_000_04ec


    ldh [c], a
    nop
    pop hl
    and b
    add b
    ld [hl], b
    db $fc
    rst $30
    cp d
    ld a, c
    pop hl
    add d
    add c
    add c
    add d
    add c
    add c
    and d
    and c
    and c
    and d
    and c
    and c
    rst $30
    cp d
    ld a, c
    and d
    and c
    and c
    and c
    add e
    and c
    and e
    call nz, $d7f8
    ld a, c
    ei
    ld [hl], d
    db $fd
    rrca
    ld hl, sp-$29
    ld a, c
    ei
    ld [hl], d
    db $fd
    rrca
    cp $00
    rst $38
    ei
    ldh [c], a
    ld [bc], a
    ld bc, $fd01
    rlca
    ei
    pop hl
    and d
    and c
    and c
    db $fd
    rlca
    ei
    pop hl
    add d
    add c
    add c
    db $fd
    rlca
    ei
    pop hl
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $fd
    inc bc
    ld sp, hl
    ldh [c], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl+], a

jr_002_79de:
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop hl
    and d
    and d
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc b
    ld [bc], a
    ld [bc], a
    pop hl
    and h
    and d
    and d
    and d
    and d
    ldh [c], a
    and d
    pop hl
    and d
    ldh [c], a
    and d
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop hl
    and h
    and d
    and d
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    ld a, [$c3d6]
    ei
    inc h
    inc d
    inc d
    inc d
    db $fd
    ld bc, $54fb
    db $fd
    dec b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    db $fc
    rst $30
    ld h, d
    ld a, d
    ld [hl-], a
    ld de, $3211
    ld de, $3211
    ld de, $3111
    ld sp, $3131
    rst $30
    ld h, d
    ld a, d
    ld [hl-], a
    ld [hl-], a
    pop bc
    inc sp
    ld sp, $c231
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld hl, sp+$6a
    ld a, d
    ld d, d
    ld de, $3211
    ld de, $5211
    ld d, d
    ld sp, $3131
    ld sp, $6af8
    ld a, d
    ld d, d
    ld de, $3211
    ld de, $3111
    ld sp, $3131
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    cp $00
    rst $38
    inc h
    ei
    ld [hl-], a
    ld de, $fd11
    ld a, [de]
    ld sp, hl
    inc h
    ld [hl-], a
    ld de, $5211
    ld d, d
    ld [hl-], a
    ld de, $fb11
    ld d, d
    ld de, $3211
    ld de, $5211
    ld d, d
    ld [hl-], a
    ld de, $fd11
    dec b
    ld a, [$10d6]
    add c
    nop
    adc b
    ld [hl+], a
    add l
    rst $28
    ld bc, $96e1
    sub [hl]
    sub [hl]
    sub [hl]
    sub d
    sub d
    sub h
    sub [hl]
    sub [hl]
    sub d
    sub h
    sub [hl]
    sub d
    sub d
    sub h
    sub $11
    or c
    dec h
    adc e
    dec [hl]
    and [hl]
    rst $28
    nop
    db $fc
    ei
    pop hl
    ld b, [hl]
    ldh [c], a
    inc b
    pop hl
    sub d
    or d
    ldh [c], a
    ld c, $44
    ld a, $e1
    adc [hl]
    call nz, $46e1
    ldh [c], a
    inc b
    pop hl
    sub d
    or d
    ldh [c], a
    ld c, $44
    ld a, $9e
    call nz, $01fd
    ldh [c], a
    add [hl]
    ld b, h
    add d
    sub d
    cp [hl]
    db $e3
    inc h
    ld b, $e2
    ld b, h
    sub d
    or d
    db $e3
    ld c, $44
    ld h, $e2
    and h
    db $e3
    ld [hl+], a
    ld b, d
    ld e, d
    ld [hl], h
    ld d, h
    jp nz, Jump_000_2242

    ld [bc], a
    ldh [c], a
    or d
    sub d
    jp nz, $02e3

    ldh [c], a
    or d
    sub d
    add d
    ld b, d
    jp nz, Jump_002_42e3

    ld b, d
    xor $0a
    or $01
    ld sp, $1121
    ld bc, $b1e2
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    di
    inc bc
    sub $12
    sub c
    dec h
    adc c
    inc [hl]
    and [hl]
    ei
    db $e3
    ld [bc], a
    ldh [c], a
    ld b, c
    ld d, d
    ld b, c
    db $e3
    ld b, d
    db $fd
    inc bc
    ei
    ldh [c], a
    or d
    ld b, c
    ld d, d
    ld b, c
    db $e3
    ld b, d
    db $fd
    inc bc
    ei
    ldh [c], a
    and d
    ld b, c
    ld d, d
    ld b, c
    db $e3
    ld b, d
    db $fd
    inc bc
    ld c, h
    ld d, d
    ld l, $c4
    sub $11
    or c
    dec h
    adc e
    dec [hl]
    and [hl]
    ldh [c], a
    and e
    db $e3
    inc hl
    ld b, d
    ld e, b
    ldh [c], a
    sub e
    db $e3
    inc hl
    ld b, d
    ld e, b
    ldh [c], a
    add e
    db $e3
    inc hl
    ld b, d
    ld e, b
    ld b, h
    inc h
    inc d
    ldh [c], a
    sub h
    ldh [c], a
    and e
    db $e3
    inc hl
    ld b, d
    ld e, b
    ldh [c], a
    sub e
    db $e3
    inc hl
    ld b, d
    ld d, d
    jp nz, $3654

    ldh [c], a
    and [hl]
    ld [hl], h
    db $e3
    inc l
    call nz, Call_000_00fe
    sub $10
    ld h, c
    nop
    add [hl]
    ld [de], a
    add l
    ldh [c], a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, h
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, h
    sub $10
    and c
    dec h
    adc d
    inc [hl]
    and a
    db $fc
    ei
    pop hl
    ld b, $94
    ld b, d
    add d
    sub d
    ld b, [hl]
    sub [hl]
    ldh [c], a
    inc b
    pop hl
    cp [hl]
    ld c, [hl]
    call nz, Call_000_06e1
    ld [hl], h
    ld b, d
    ld [hl], d
    ld [hl], d
    ld b, [hl]
    halt
    ldh [c], a
    inc b
    ld c, $5e
    call nz, $01fd
    ldh [c], a
    ld b, [hl]
    pop hl
    or h
    ldh [c], a
    ld b, d
    ld h, d
    adc [hl]
    or h
    sub [hl]

jr_002_7ba8:
    inc b
    ld b, d
    add d
    sbc [hl]
    db $e3
    inc b
    ldh [c], a
    and [hl]
    ld d, h
    and d
    db $e3
    ld [bc], a
    ld a, [hl+]
    ldh [c], a
    and h
    and h
    jp nz, $02e3

    ldh [c], a
    or d
    sub d
    add d
    ld d, d
    jp nz, $8292

    ld d, d
    ld b, d
    pop hl
    or d
    jp nz, $b2e2

    or d
    xor $09
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
    sub $22
    add c
    dec h
    adc b
    inc sp
    and a
    pop bc
    di
    nop
    rst $28
    ld bc, $e3fb
    ld [bc], a
    ldh [c], a
    ld b, c
    ld d, d
    ld b, c
    db $e3
    ld b, d
    db $fd
    inc bc
    ei
    ldh [c], a
    or d
    ld b, c
    ld d, d
    ld b, c
    db $e3
    ld b, d
    db $fd
    inc bc
    ei
    ldh [c], a
    and d
    ld b, c
    ld d, d
    ld b, c
    db $e3
    ld b, d

jr_002_7c05:
    db $fd
    inc bc
    pop bc
    di
    inc bc
    ld c, h
    ld d, d
    ld l, $ef
    nop
    jp nz, $10d6

    and c
    dec h
    adc d
    inc [hl]
    and a
    ldh [c], a
    ld e, b
    xor b
    ldh [c], a
    ld c, b
    sbc b
    ldh [c], a
    jr c, jr_002_7ba8

    db $e3
    jr jr_002_7c05

    sub h
    ld b, h
    ldh [c], a
    ld e, b
    xor b
    ldh [c], a
    jr z, jr_002_7c7d

    jp nz, $e224

    and [hl]
    halt
    inc [hl]
    sbc h
    call nz, Call_000_00fe
    sub $05
    add h
    add b
    pop hl
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub d
    sub d
    sub h
    sub [hl]
    sub [hl]
    sub d
    sub h
    sub [hl]
    sub d
    sub d
    sub h
    db $fc
    ei
    pop hl
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub d
    sub d
    sub h
    add [hl]
    add [hl]
    add d
    add h
    add [hl]
    add d
    add d
    add h
    halt
    halt
    halt
    halt
    ld [hl], d
    ld [hl], d
    ld [hl], h
    ld d, [hl]
    ld d, [hl]
    ld d, d
    ld d, h
    ld d, [hl]
    ld d, d
    ld d, h
    ld d, d
    db $fd
    ld bc, $42fb
    db $fd
    rrca
    ei
    sub d
    db $fd
    rrca
    ei
    and d
    db $fd
    rrca
    ld b, d
    jp z, $e242

    ld [bc], a

jr_002_7c7d:
    pop hl
    or d
    sub d
    add d
    ld b, d
    jp nz, Jump_002_4242

    ld b, d
    ei
    sub d
    db $fd
    rrca
    ei
    add d
    db $fd
    rrca
    ei
    ld [hl], d
    db $fd
    rrca
    ei
    ld d, d
    db $fd
    rrca
    ei
    and d
    and c
    and c
    db $fd
    inc bc
    ei
    sub d
    sub c
    sub c
    db $fd
    inc bc
    ei
    add d
    add c
    add c
    db $fd
    inc bc
    ei
    sub d
    sub c
    sub c
    db $fd
    inc bc
    ei
    and d
    and c
    and c
    db $fd
    inc bc
    ei
    sub d
    sub c
    sub c
    db $fd
    inc bc
    ei
    ld [hl-], a
    ld sp, $fd31
    inc bc
    ld [hl+], a
    ld hl, $2221
    inc h
    inc h
    ld [hl+], a
    cp $00
    sub $26
    ld [de], a
    inc [hl]
    ld h, $12
    inc [hl]
    ld [de], a
    ld [de], a
    inc [hl]
    ld h, $12
    inc [hl]
    ld [de], a
    inc h
    ld [de], a
    inc [hl]
    ld [de], a
    ld [de], a
    inc [hl]
    db $fc
    rst $30
    inc [hl]
    ld a, l
    rst $30
    inc [hl]
    ld a, l
    ei
    ld [de], a
    ld [de], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    ld [de], a
    db $fd
    inc b
    ld [de], a
    ld [de], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ei
    ld [de], a
    ld de, $3211
    inc h
    ld de, $3211
    ld [de], a
    db $fd
    ld b, $12
    ld [de], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    ld sp, $fb31
    ld [de], a
    ld de, $3211
    ld de, $2211
    ld de, $3211
    ld de, $fd11
    ld b, $22
    ld de, $3211
    inc h
    ld [hl+], a
    ld sp, $3231
    cp $00
    rst $38
    ld h, $12
    inc [hl]
    ld h, $12
    inc [hl]
    ld [de], a
    ld [de], a
    inc [hl]
    ld h, $12
    inc [hl]
    ld [de], a
    inc h
    ld [de], a
    inc [hl]
    ld [de], a
    ld [de], a
    inc [hl]
    ld h, $12
    inc [hl]
    ld h, $12
    inc [hl]
    ld [de], a
    ld [de], a
    inc [hl]
    ld h, $12
    inc [hl]
    ld [de], a
    inc h
    ld [de], a
    inc [hl]
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
