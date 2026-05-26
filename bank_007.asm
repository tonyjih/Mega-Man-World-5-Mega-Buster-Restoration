; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld [$4d6e], a
    ld [hl], c
    add hl, sp
    ld e, h
    ld b, [hl]
    ld b, b
    rrca
    ld e, l
    ld e, h
    ld b, e
    ld l, c
    ld b, c
    ld l, a
    ld b, e
    ld [hl], d
    ld b, h
    dec [hl]
    ld b, l
    ld hl, sp+$45
    sbc [hl]
    ld c, d
    add c
    ld c, h
    sbc e
    ld c, d
    ld h, h
    ld c, [hl]
    add a
    ld c, a
    ld a, [bc]
    ld d, c
    db $ed
    ld d, d
    ldh a, [rHDMA5]
    inc sp
    ld e, b
    ld h, $5a
    call z, Call_007_405c
    ld [hl], e
    ld h, d

Call_007_402f:
    ld e, l
    jr @+$65

    dec sp
    ld l, b
    cp [hl]
    ld l, b
    ld [hl], c
    ld l, e
    sub l
    ld h, c
    rst $10
    ld l, [hl]
    ld h, [hl]
    ld a, b
    xor c
    ld a, d
    inc hl
    ld [hl], a
    inc l
    ld a, h
    add h
    ld l, [hl]
    ld [de], a
    ld c, c
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld d, b
    ld l, a
    xor a
    reti


    ld sp, hl
    rst $38
    xor c
    rst $18
    nop
    nop
    nop

Call_007_405c:
    nop
    nop
    nop
    db $fc
    db $fc
    ld b, $fe
    add e
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    xor a
    rst $18
    and b
    rst $18
    xor h
    rst $18
    sbc a
    di
    rst $38
    ldh [$ff7f], a
    ld l, l
    cp a
    db $ed
    ld a, a
    ld [hl], d
    add e
    rst $38
    inc bc
    rst $38
    jp $f3ff


    ccf
    rst $38
    rra
    db $fc
    sbc h
    ld a, [$fc9e]
    inc a
    rra
    rra
    rrca
    rrca
    ccf
    dec sp
    ld d, [hl]
    ld l, [hl]
    add d
    cp $fe
    cp $00
    nop
    nop
    nop
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld a, h
    ld e, h
    ld l, d
    halt
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rra
    rra
    rrca
    rrca
    rra
    dec e
    dec hl
    scf
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rst $28
    di
    rst $00
    rst $38
    sbc [hl]
    cp $b8
    ld hl, sp+$60
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    rst $08
    db $e3
    rst $38
    ld a, c
    ld a, a
    dec a
    ccf
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld hl, sp-$48
    call nc, $02ec
    cp $fe
    cp $00
    nop
    nop
    nop
    xor a
    rst $18
    and b
    rst $18
    xor h
    rst $18
    sub e
    rst $38
    add sp, -$09
    ld l, b
    ld [hl], a
    or b
    rst $38
    ld a, a
    ld a, a
    add e
    rst $38
    inc bc
    rst $38
    jp $33ff


    rst $38
    sbc a
    ld a, a
    sbc h
    ld a, h
    ld a, [hl-]
    cp $fc
    db $fc
    rra
    rra
    ccf
    ccf
    ld d, a
    ld l, a
    add d
    cp $fe
    cp $00
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    db $fc
    db $fc
    ld l, d
    halt
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
    ld [$0f0f], sp
    rrca
    dec bc
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    and b
    ldh a, [rNR10]
    ret z

    cp b
    call nz, $0bfc
    rrca
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0f01
    add hl, bc
    ld sp, hl
    rst $38
    xor c
    rst $18
    db $e4
    db $fc
    ldh a, [c]
    cp $fa
    cp $f9
    rst $38
    ld a, l
    rst $38
    sbc l
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rra
    ld l, h
    ld b, c
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    rra
    rra
    rla
    add hl, de
    cpl
    scf
    ccf
    add hl, hl
    rst $38
    rst $38
    ld b, h
    rst $38
    ld hl, sp-$71
    ldh a, [$ff1f]
    cp a
    ld e, a
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ld e, b
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff08]
    ld hl, sp-$3c
    db $fc
    and h
    ld a, h
    ldh [c], a
    cp [hl]
    jp nc, Jump_000_03be

    ld [bc], a
    ld c, $0f
    inc de
    rra
    inc h
    ccf
    cpl
    ccf
    ccf
    ccf
    ld [hl], c
    ld c, a
    rst $38
    or b
    rst $38
    add h
    rst $38
    adc $ff
    rst $38
    cp a
    ld b, b
    rst $38
    rst $38
    cp a
    ret nz

    ld e, a
    ldh [$ffef], a
    or b
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    rst $38
    and d
    ld e, a
    db $fd
    cp $d5
    ld l, $d4
    cpl
    call nc, Call_000_202f
    ldh [$fff8], a
    ld hl, sp+$7c
    add h
    cp $02
    add d
    ld a, [hl]
    ld a, $fe
    ld a, h
    db $fc
    ldh a, [c]
    cp $ff
    or b
    ld hl, sp-$49
    ld [hl], c
    ld c, a
    ld a, a
    ld a, a
    ld e, a
    ld l, a
    ld c, [hl]
    ld [hl], a
    inc hl
    ccf
    dec e
    dec e
    rst $28
    or b
    xor a
    ldh a, [$ff5f]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    cp a
    ld b, b
    ld e, a
    and b
    rst $38
    rst $38
    call nc, $d52f
    cpl
    sub $2f
    db $fd
    rst $38
    rst $38
    db $fc
    and l
    ld e, [hl]
    ld c, [hl]
    cp a
    rst $38
    rst $38
    db $fd
    rst $38
    rst $08
    di
    cp a
    ld h, c
    db $dd
    inc sp
    reti


    scf
    sub d
    ld a, [hl]
    inc h
    db $fc
    ld hl, sp-$08
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
    rrca
    rra
    rra
    rla
    add hl, de
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld b, h
    rst $38
    ld hl, sp-$71
    ldh a, [$ff1f]
    cp a
    ld e, a
    rst $38
    stop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff08]
    ld hl, sp-$3c
    db $fc
    and h
    ld a, h
    ld [bc], a
    inc bc
    rrca
    ld c, $13
    rra
    inc h
    ccf
    cpl
    ccf
    ccf
    ccf
    ld [hl], c
    ld c, a
    rst $38
    or b
    rst $38
    ld a, a
    add h
    rst $38
    rst $38
    rst $38
    cp a
    ld b, b
    rst $38
    rst $38
    cp a
    ret nz

    ld e, a
    ldh [$ffef], a
    or b
    cp $fb
    dec c
    ei
    rst $38
    rst $38
    and d
    ld e, a
    db $fd
    cp $d5
    ld l, $d4
    cpl
    call nc, Call_000_002f
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
    add hl, bc
    rrca
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
    ld b, h
    rst $38
    ld hl, sp-$71
    ldh a, [$ff1f]
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
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff08]
    ld hl, sp+$01
    ld bc, $0f0f
    inc de
    rra
    inc h
    ccf
    cpl
    ccf
    ccf
    ccf
    ld [hl], c
    ld c, a
    rst $38
    or b
    ei
    push af
    ld a, a
    sub c
    rst $38
    rst $38
    cp a
    ld b, b
    rst $38
    rst $38
    cp a
    ret nz

    ld e, a
    ldh [$ffef], a
    or b
    db $fc
    rst $38
    ld a, [$ff07]
    rst $38
    and d
    ld e, a
    db $fd
    cp $d5
    ld l, $d4
    cpl
    call nc, Call_007_402f
    ret nz

    ld hl, sp-$08
    ld a, h
    add h
    cp $02
    add d
    ld a, [hl]
    ld a, $fe
    ld a, h
    db $fc
    ldh a, [c]
    cp $03
    ld [bc], a
    ld c, $0f
    inc de
    rra
    inc h
    ccf
    cpl
    ccf
    ccf
    ccf
    jr c, jr_007_4321

    ld a, a
    ld e, b
    rst $38
    add h
    rst $38
    adc $ff
    rst $38
    cp a
    ld b, b
    rst $38
    rst $38
    cp a
    ret nz

    rst $18
    ldh [$ffef], a
    ld [hl], b
    ld a, a
    ld e, b
    ld a, h
    ld e, e
    jr c, jr_007_4339

    ld a, a
    ld a, a
    ld e, a
    ld l, a
    ld c, [hl]
    ld [hl], a
    inc hl
    ccf
    dec e
    dec e
    rst $28
    ld [hl], b
    ld l, a
    ldh a, [$ffdf]

jr_007_4321:
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    cp a
    ld b, b
    ld e, a
    and b
    rst $38
    rst $38
    ld [hl], h
    ld l, h
    cp b
    ret c

    db $fc
    db $f4
    ld [hl], h
    ld l, h
    cp b
    ret c

    db $fc
    db $f4
    ld [hl], h

jr_007_4339:
    ld l, h
    cp b
    ret c

    rst $38
    rst $38
    sub a
    add sp, -$69
    add sp, $7f
    ld a, a
    ld d, l
    ld l, [hl]
    dec sp
    ld a, [hl+]
    ld a, [hl+]
    dec sp
    ld de, $3c11
    inc a
    ld e, d
    ld h, [hl]
    or c
    rst $08
    pop hl
    sbc a
    add c
    rst $38
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    ld bc, $435f
    nop
    nop
    inc hl
    ld hl, $333c
    ld sp, $273f
    rra
    cpl
    rra
    rst $08
    ldh a, [$ffdf]
    ldh a, [c]
    db $10
    ld [hl], d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    ld e, $3b
    daa
    ld a, l
    ld e, e
    nop
    nop
    rra
    rra
    ld l, a
    ld [hl], b

jr_007_4388:
    cp h
    jp $ffff


    db $fd
    inc bc
    ei
    add a
    ld a, d
    rst $00
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_007_4388

    ld [$04f8], sp
    db $fc
    inc e
    db $fc
    ld [hl+], a
    cp $5d
    db $e3
    ld e, [hl]
    ld a, c
    cpl
    jr nc, jr_007_43be

    add hl, de
    ld c, $0f
    ld [$0f0f], sp
    rrca
    dec b
    ld b, $07
    rlca
    or [hl]
    rst $28
    or $af
    db $f4
    cpl
    inc l
    rst $38
    ld c, h
    rst $38
    rst $38
    rst $38

jr_007_43be:
    ld a, a
    add b
    rst $38
    rst $38
    ld a, l
    jp $cfbf


    db $fd
    add e
    rst $38
    adc a
    db $fd
    add e
    rst $38
    rst $38
    jp nc, $fe2e

    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ccf
    ccf
    halt
    ld c, a
    ei
    or a
    db $fd
    or e
    ld e, a
    ld h, c
    ld [hl], $3b
    inc c
    rrca
    rrca
    rrca
    dec b
    ld b, $07
    rlca
    ld [hl], $ef
    or $2f
    db $f4
    cpl
    inc l
    rst $38
    ld c, h
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
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
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    ld a, $3f
    ld [hl], e
    ld c, a
    rst $38
    or c
    rst $38
    or c
    ld [hl], e
    ld c, a
    ld a, $3f
    rrca
    rrca
    dec b
    ld b, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    inc c
    rrca
    ld [hl], $3b
    ld e, a
    ld h, c
    db $fd
    or e
    ei
    or a
    halt
    ld c, a
    ccf
    ccf
    dec b
    ld b, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    ld [$0e0f], sp
    rrca
    rla
    add hl, de
    cpl
    jr nc, jr_007_44b7

    ld a, c
    ld a, l
    ld e, e
    dec sp
    daa
    dec e
    ld e, $07
    rlca
    ld [hl], $ef
    or $2f
    db $f4
    xor a
    xor h
    rst $38
    ld c, h
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    rst $38
    rst $38
    inc c
    ld [hl], l
    ld b, h
    rlca
    inc b
    inc b
    rlca
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
    ld a, a
    rst $38
    rra
    rst $38
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $02e6

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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    inc b
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    db $eb
    ld [hl], a

jr_007_44b7:
    db $eb
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    rst $38
    rra
    rst $38
    pop af
    pop af
    nop
    nop
    call c, $dcbc
    cp h
    ret c

    cp b
    cp h
    ld a, h
    jp c, $02e6

    cp $fe
    cp $00
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $eb
    ld [hl], a
    db $eb
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rra
    rst $38
    ld [$f8f8], sp
    ld hl, sp-$24
    cp h
    jp c, $feb6

    and d
    adc $7e
    call c, $b8fc
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    inc c
    ld c, $09
    ld c, $0f
    rlca
    rlca
    ld bc, $0001
    nop
    db $eb
    ld [hl], a
    db $eb
    ld [hl], a
    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    cp a
    rst $38
    ldh [c], a
    db $e3
    inc bc
    inc bc
    call c, $dcbc
    cp h
    ret c

    cp b
    or b
    ld [hl], b
    ld hl, sp-$08
    inc [hl]
    call z, $fc04
    db $fc
    db $fc
    inc c
    jr c, @+$47

    ld b, $05
    inc b
    rlca
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
    scf
    rst $38
    rra
    rst $38
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    and $02
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld [bc], a
    ld b, $05
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    rst $38
    ld l, e
    rst $38
    ld [$9cff], sp
    ld a, a
    rst $38
    scf
    rst $38
    rra
    rst $38
    pop af
    pop af
    nop
    nop
    db $f4
    inc a
    db $f4
    inc a
    ld hl, sp+$78
    db $f4
    call z, $e69a
    ld [bc], a
    cp $fe
    cp $00
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $38
    ld l, e
    rst $38
    ld [$9cff], sp
    rst $38
    rst $38
    or a
    ld a, a
    rra
    rst $38
    ld [$f8f8], sp
    ld hl, sp-$04
    inc a
    ld a, [$e226]
    ld e, [hl]
    adc $fe
    sbc h
    db $fc
    cp b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    inc c
    ld [$0e0f], sp
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    rst $38
    ld l, e
    rst $38
    ld [$9cff], sp
    rst $38
    ld a, a
    ld [hl], a
    rst $38
    cp a
    rst $38
    ldh [c], a
    db $e3
    inc bc
    inc bc
    db $f4
    inc a
    db $f4
    inc a
    ld hl, sp+$78
    ldh a, [$fff0]
    add sp, -$68
    inc [hl]
    call z, $fc04
    db $fc
    db $fc
    ld c, d
    ei
    ld b, l
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    ld bc, $01fb
    ei
    ld bc, $01fb
    ei
    nop
    rst $38
    nop

jr_007_460e:
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
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
    cp $00
    rst $38
    nop
    cp $01
    add sp, $16

jr_007_4632:
    pop bc
    ld sp, $409b
    dec a
    ld h, b
    ld a, $80
    ld a, a
    nop
    ret nz

    ld sp, $980b
    ld a, h
    cp $fe
    pop af
    db $fd
    ret nz

    db $fc
    nop
    ld a, a
    nop
    adc a
    nop
    nop
    jr c, jr_007_460e

    ld c, h
    ld a, a
    add [hl]
    adc a
    inc bc
    rla
    sub c
    dec de
    ret z

    dec c
    ld h, b
    add c
    nop
    ld a, b
    add e
    scf
    ld b, h
    adc a
    jr z, jr_007_4632

    ld de, $88e6
    ldh a, [c]
    ldh a, [c]
    ld hl, sp-$78
    pop af
    nop
    rlca
    ret nc

    rst $20
    add b
    rrca
    nop
    ld e, a
    nop
    rra
    ld b, b
    sbc a
    nop
    ccf
    add b
    ccf
    nop
    cp $01
    db $fc
    ld bc, $01fc
    db $fc

jr_007_4683:
    ld [bc], a
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld hl, sp-$40
    ld a, a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, $f8
    ld sp, $89c0
    rlca
    nop
    ldh a, [rP1]
    rst $38
    inc bc
    db $fc

jr_007_46a1:
    jr jr_007_4683

    ret nz

    nop
    jr nz, jr_007_46bf

    jr nc, jr_007_46a1

    ldh a, [$fff8]
    ld sp, $8a41
    inc bc
    dec b
    ld b, $18
    nop
    ld bc, $491c
    ld e, h
    add hl, de
    ld e, h
    sub d
    cp c
    ld a, b
    add b
    pop af
    ld [bc], a

jr_007_46bf:
    nop
    nop
    inc a
    ret nz

    pop hl
    cp $70
    rst $38
    ccf
    rst $38
    db $10
    ldh a, [rP1]
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    nop
    cp a
    nop
    ccf
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    ld bc, $44fc
    inc [hl]
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld [hl], h
    ld sp, $007b
    ld sp, $0000
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [$fff8]

jr_007_46fd:
    pop af

Jump_007_46fe:
    ld sp, hl

jr_007_46ff:
    ldh a, [$fff1]
    db $e3
    ldh a, [c]
    nop
    ldh [c], a
    ld b, $04
    ld hl, sp-$03
    inc b
    ld sp, hl
    ld [hl-], a
    cp c
    or d
    add hl, sp
    ld [hl+], a
    ld a, c
    ld l, e
    ld a, b
    ld c, b
    db $fc
    sub b
    rst $38
    ld hl, $c3fe
    db $fc
    jr nc, jr_007_46fd

    jr nz, jr_007_46ff

    ld h, d
    call nz, $cc44
    jp z, $0103

    ld [bc], a
    add b
    nop
    inc b
    ld d, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    jp $0530


    nop
    ld a, [de]
    jr c, jr_007_47a3

    cp [hl]
    ld [hl], h
    ld l, d
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    cp $00
    cp $00

Call_007_4744:
    db $fc
    ld bc, $00fc
    db $fc
    ld bc, $00fc
    nop
    ld b, [hl]
    ld hl, $3818
    ld a, [hl-]
    cp [hl]
    inc [hl]
    ld a, [hl]
    ld l, c
    ld a, [hl]
    ld d, d
    ldh a, [$ff88]
    pop bc
    inc bc
    inc bc
    ld a, b
    rst $38
    pop bc
    ld a, $00
    nop
    ld l, d
    rlca
    dec b
    inc bc
    nop
    ldh a, [rP1]
    db $eb
    inc c
    ldh a, [$ff30]
    ret nz

    add d
    inc bc
    ld b, c
    ld [hl], a
    rst $20
    ldh [rP1], a
    add b
    nop
    cpl
    nop
    sbc $09
    and c
    inc de
    ld c, [hl]
    rlca
    rrca
    ld c, $af
    dec c
    rra
    ld e, d
    rra
    inc d
    inc a
    ld h, b
    ld [hl-], a
    ret nc

    ld sp, hl
    and h
    ld sp, hl
    ret z

    ld [hl], e
    sub b
    and a
    jr nz, @-$6f

    ld b, b
    sbc a
    add b
    ccf
    nop
    ld a, a
    nop
    db $fd
    nop
    ld hl, sp+$03
    ei
    nop
    db $fd

jr_007_47a3:
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    jr nz, jr_007_47ae

jr_007_47ae:
    rlca
    adc a
    and b
    ld b, $d0
    nop
    jp hl


    ld [hl], b
    ld b, $00
    add c
    nop
    rst $38
    ret nz

    rla
    nop
    ld bc, $7a78
    nop
    dec a
    nop
    ld e, [hl]
    rrca
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    inc a
    add c
    nop
    ld a, d
    ldh a, [rTIMA]
    ld h, b
    dec bc
    nop
    sub a
    nop
    ld l, a
    nop
    rra
    nop
    rst $38
    jr z, jr_007_481d

    nop
    add e
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
    ldh [$ff0b], a
    rst $20
    ld bc, $00f0
    ld a, [$f800]
    ld [bc], a
    ld sp, hl
    nop
    db $fc
    ld bc, $00fc
    ld e, $c1
    db $ec
    ld [hl+], a
    pop af
    inc d
    di
    adc b
    ld h, a
    ld de, $4f4f

jr_007_4808:
    rra
    ld de, $008f
    nop
    inc e
    db $fd
    ld [hl-], a
    cp $61
    pop af
    ret nz

    add sp, -$77
    ret c

    inc de
    or b
    ld b, $81
    nop
    inc bc

jr_007_481d:
    adc h
    ret nc

    add hl, de
    ld a, $7f
    ld a, a
    adc a
    cp a
    inc bc
    ccf
    nop
    cp $00
    pop af
    nop
    rst $38
    nop
    ld a, a
    add b
    rla
    ld l, b
    add e
    adc h
    reti


    ld [bc], a
    cp h
    ld b, $7c
    ld bc, $00fe
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
    ld a, a
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    cp $01
    db $fc
    nop
    db $fd
    nop
    db $fc
    ld e, $01
    adc a
    ld b, b
    nop
    nop
    inc a
    inc bc
    add a
    ld a, a
    ld c, $ff
    db $fc
    rst $38
    ld [$8c0f], sp
    add d
    ld d, c
    ret nz

    and b
    ld h, b
    jr jr_007_4873

jr_007_4873:
    add b
    jr c, jr_007_4808

    ld a, [hl-]
    sbc b
    ld a, [hl-]
    ld c, c
    sbc l
    nop
    rrca
    nop
    rst $38
    ret nz

    ccf
    jr jr_007_488a

    inc bc
    nop
    inc b
    jr jr_007_4894

    rra
    rrca

jr_007_488a:
    rra
    inc bc
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    nop

jr_007_4894:
    rst $38
    ld h, b
    rra
    adc h
    inc bc
    sub c
    ldh [rP1], a
    ld a, a
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ld b, b
    sbc a
    ret nz

    sbc a
    ret nz

    sbc a
    ret nz

    rra
    nop
    cp $00
    cp $00
    jp $a00c


    nop
    ld e, b
    inc e
    ld [hl], $7d
    ld l, $56
    rra
    inc c
    rlca
    inc b
    rlca
    ld b, [hl]
    inc hl
    ld [hl+], a
    inc sp
    ld d, e
    ret nz

    add b
    ld b, b
    ld bc, $2000
    jp z, $9d4c

    ld c, l
    sbc h
    ld b, h
    sbc [hl]
    sub $1e
    ld [de], a
    ccf
    add hl, bc
    rst $38
    add h
    ld a, a
    jp Jump_000_0f3f


    rra
    adc a
    sbc a
    rrca
    adc a
    rst $00
    ld c, a
    nop
    ld b, a
    ld h, b
    jr nz, jr_007_4907

    cp a
    jr nz, jr_007_488a

    ld [hl+], a
    inc l
    ld l, $2e
    ld c, $2e
    adc h
    sbc $00
    adc h
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    ld a, a

jr_007_4907:
    nop
    cp a
    add b
    ccf
    dec bc
    sbc a
    dec h
    sbc a
    inc de
    adc $09
    push hl
    inc b
    pop af
    ld [bc], a
    ld sp, hl
    ld bc, $00fc
    cp $90
    add l
    ret z

    ld [hl], d
    ldh [$fff0], a
    ld [hl], b
    push af
    or b
    ld hl, sp+$5a
    ld hl, sp+$28
    inc a
    ld b, $4c
    jr nc, jr_007_493c

    inc c
    inc bc
    ld b, c
    ret nz

    add d
    xor $e7
    rlca
    nop
    ld bc, $f400
    nop
    ld a, e
    ret nz

jr_007_493c:
    ret nz

    ld e, $ff
    add e
    ld a, h
    nop
    nop
    ld d, [hl]
    ldh [$ffa0], a
    ret nz

    nop
    rrca
    nop
    rst $10
    nop
    nop
    ld h, d
    add h
    jr jr_007_496d

    ld e, h
    ld a, l
    inc l
    ld a, [hl]
    sub [hl]
    ld a, [hl]
    ld c, d
    rrca
    ld de, $0083
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    nop
    ccf
    add b
    ccf
    inc d
    ld [bc], a

jr_007_496d:
    nop
    pop bc
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
    inc a
    add c
    nop
    ld e, [hl]
    rrca
    and b
    ld b, $d0
    nop
    jp hl


    nop
    or $00
    ld hl, sp+$00
    rst $38
    inc bc
    add sp, $00
    add b
    ld e, $5e
    nop
    cp h
    nop
    ld a, d
    ldh a, [rTAC]
    nop
    rrca
    nop
    rst $38
    pop bc
    inc b
    nop
    ldh [$fff1], a
    dec b
    ld h, b
    dec bc
    nop
    sub a
    ld c, $60
    nop
    add c
    nop
    rst $38
    nop
    cp a
    nop
    rra
    ret nz

    rst $18
    nop
    cp a
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
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fc
    rst $38
    nop
    rst $38
    nop
    ccf
    add b
    rst $18
    ld b, b
    rst $28
    ld b, b
    rst $28
    ld b, b
    rst $28
    ld b, b
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
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
    ld hl, sp-$08
    db $fc
    inc b
    ld hl, sp-$08
    nop
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
    inc b
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
    rst $38
    rst $38
    rst $38
    ld [$ff10], sp
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
    cp $fe
    rst $38
    ld bc, $fe7e
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
    rra
    rra
    nop
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
    cp $fe
    ld bc, $feff
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
    rra
    rra
    ccf
    jr nz, @+$22

    ccf
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
    cp $fe
    rst $38
    ld hl, $fe46
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    rra
    rra
    ld e, $1e
    nop
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
    cpl
    jr nc, jr_007_4ab6

    ccf
    rra
    rra
    nop
    nop
    ld [bc], a
    ld h, c
    ld c, h
    ld e, $a1
    ld c, d
    inc bc
    inc c
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld [bc], a
    dec b
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop

jr_007_4ab6:
    ld bc, $0100
    ld bc, $0102
    ld b, $01
    ld b, $03
    inc c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0002
    ld bc, $0100
    nop
    nop
    nop
    ld [hl], b
    ld h, b
    sbc h
    ret c

    daa
    cp a
    ld b, b
    ld a, h
    add e
    ld a, b
    add [hl]
    jr nc, @-$32

    nop
    ld hl, sp+$00
    ld bc, $0700
    inc bc
    inc c
    rlca
    ld [$0807], sp
    inc bc
    inc c
    nop
    rlca
    nop
    ld bc, $fc00
    call nz, Call_000_003b
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    db $fc
    inc bc
    ldh [$ff1f], a
    nop
    rst $38
    nop
    nop
    nop
    ret nc

    nop
    rst $38
    add b
    ld a, a
    nop
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    ret nz

    rrca
    db $10
    rlca
    ld [$0601], sp
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc c
    ld b, $19
    rrca
    db $10
    add d
    ld a, l
    ldh a, [rIF]
    ret nz

    ccf
    nop
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
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff80]
    ld a, a
    add sp, $17
    nop
    rst $38
    ld hl, sp+$07
    nop
    add b
    nop
    ld hl, sp+$00
    ldh [$ffc0], a
    ccf
    nop
    ld hl, sp+$00
    nop
    nop
    ret nc

    nop
    nop

jr_007_4b61:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    and h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $21
    rra
    jr nz, jr_007_4b85

    jr nc, jr_007_4b86

    ld de, $0f00
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_007_4b85:
    ld [bc], a

jr_007_4b86:
    dec c
    add hl, bc
    ld d, $03
    inc e
    dec bc
    inc [hl]
    add hl, de
    ld h, $1d
    ld [hl+], a
    ret nz

    ccf
    inc d
    db $eb
    ld a, b
    add [hl]
    ld h, b
    sbc h
    jr c, jr_007_4b61

    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSVBK]

jr_007_4ba6:
    adc b
    add b
    ld a, [hl]
    ld hl, sp+$06
    nop
    rst $38
    db $fc
    inc bc
    ldh [$ff1f], a
    nop
    nop
    nop
    add b
    nop
    cp $c0
    jr nz, jr_007_4bba

jr_007_4bba:
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0102
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld a, a
    ld [hl], c
    adc [hl]
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    jr c, jr_007_4ba6

    nop
    ld a, a
    nop
    nop
    nop
    db $f4
    nop
    ldh [$ffe4], a
    dec de
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_007_4c06

jr_007_4c06:
    nop
    nop
    nop
    nop
    jr jr_007_4c0c

jr_007_4c0c:
    inc c
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    jr jr_007_4c1a

jr_007_4c1a:
    jr nc, jr_007_4c1c

jr_007_4c1c:
    jr nz, jr_007_4c1e

jr_007_4c1e:
    jr nz, jr_007_4c20

jr_007_4c20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_4c2e

jr_007_4c2e:
    ret nz

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
    nop
    nop
    nop
    jr nz, jr_007_4c3e

jr_007_4c3e:
    stop
    inc b
    nop
    ld bc, $2000
    nop
    stop
    ld b, b
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    inc c
    inc c
    jr c, jr_007_4c9d

    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    inc a
    ld b, $06
    ld bc, $1001
    db $10
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    ldh [$ffe0], a
    ldh a, [$fff0]
    jr jr_007_4c97

    nop
    nop
    ld e, $84
    ld c, h
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
    ld b, $09
    add hl, bc
    ld [hl], $37
    ret z

    nop
    nop
    nop

jr_007_4c97:
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_4c9d:
    add b
    nop
    ldh [$ff80], a
    ld [hl], b
    ldh a, [$ff0c]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_007_4cc3

    ld l, h
    inc c

jr_007_4cb5:
    ldh a, [c]
    ld [hl], $c9
    ld a, d
    add l
    ld a, h
    add e
    inc a
    jp nz, Jump_007_6618

    ld [$0834], sp

jr_007_4cc3:
    inc d
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
    jr jr_007_4d36

    inc a
    ld b, d
    inc a
    jp $857a


    ld a, d
    add l
    ld a, b
    add a
    jr c, @-$37

    jr z, jr_007_4cb5

    ld a, [hl+]
    push de
    ld [$08f6], sp
    or $08
    or [hl]
    nop
    cp [hl]
    nop
    inc e
    nop
    ld e, $00
    inc e
    nop
    inc c
    nop

jr_007_4cf1:
    inc c
    nop
    inc c

Call_007_4cf4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nz, jr_007_4cf1

    db $10
    or b
    ld c, b
    rlca
    ld [$0906], sp
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    nop
    rrca
    nop
    rlca
    ld bc, $0006
    rlca
    or b
    ld c, b
    and b
    ld e, b
    and b
    ld e, b
    add b
    ld a, b
    and b
    ld d, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$ff08]
    ld d, a

jr_007_4d36:
    ld [$0056], sp
    ld e, $00
    ld e, d
    nop
    ld a, [de]
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    ld [$0000], sp
    ld [$0008], sp
    ld [$0000], sp
    ld [$0008], sp
    ld [$0000], sp

jr_007_4d55:
    nop
    nop
    nop
    nop
    rlca
    inc bc
    inc c
    rrca
    db $10
    rrca
    jr nc, jr_007_4d70

    jr nc, jr_007_4d69

    add hl, sp
    nop
    nop
    nop
    nop
    nop

jr_007_4d69:
    ldh [$ffc0], a
    jr c, jr_007_4d55

    inc d
    add b
    ld a, h

jr_007_4d70:
    inc [hl]
    jp z, Jump_000_04f8

    ld bc, $0d1e
    ld [hl-], a
    inc e
    inc hl
    ld d, $29
    inc d
    dec hl
    ld [bc], a
    dec e
    nop
    rla
    nop
    inc bc
    ret c

    ld h, $d4
    ld a, [hl+]
    call nc, $542a
    xor d
    ld d, b
    xor h
    ld b, b
    cp b
    nop
    ld hl, sp+$00
    ldh [$ff08], a
    ld [hl], $08
    inc d
    nop
    inc e
    nop
    inc d
    nop
    inc d
    nop
    inc b
    nop
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
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_4dcb

    ld h, [hl]
    inc a
    ld b, d
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    inc a
    jp $d728


    ld a, [hl+]
    push de
    ld [$08f6], sp
    or $08
    or [hl]
    nop

jr_007_4dcb:
    cp d
    nop
    cp b
    ld [$00b2], sp
    jr c, jr_007_4dd3

jr_007_4dd3:
    jr c, jr_007_4dd5

jr_007_4dd5:
    jr jr_007_4dd7

jr_007_4dd7:
    jr jr_007_4dd9

jr_007_4dd9:
    jr jr_007_4ddb

jr_007_4ddb:
    jr jr_007_4ddd

jr_007_4ddd:
    jr jr_007_4ddf

jr_007_4ddf:
    ld [$0800], sp
    nop
    ld [$0000], sp
    nop
    ld bc, $0200
    nop
    stop
    jr nc, jr_007_4def

jr_007_4def:
    ld h, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    inc e
    nop
    ld [$0000], sp
    nop
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_007_4e0b

jr_007_4e0b:
    nop
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
    nop
    nop
    nop
    jr nz, jr_007_4e1b

jr_007_4e1b:
    ld b, b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jr jr_007_4e29

jr_007_4e29:
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    inc e
    inc e
    inc e
    inc e
    ld a, $3e
    ld a, $3e
    dec sp
    dec sp
    ld a, c
    ld a, c
    ld e, b
    ld e, b
    sbc h
    sbc h
    inc a
    inc a
    ld [hl], $36
    ld [hl-], a
    ld [hl-], a
    ld h, c
    ld h, c
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld h, a
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    rra
    add hl, de
    ld a, $26
    jr c, jr_007_4eaf

    rlca
    rlca
    jr @+$21

    ld h, b
    ld a, a
    cp $ff
    ld b, c
    rst $38
    or b
    rst $08

jr_007_4e83:
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    jr c, jr_007_4e83

    ld d, [hl]
    cp $79
    rst $18
    halt
    rst $28
    cp e
    rst $38
    add d
    cp $82
    cp $ee
    cp l
    cp $99
    ld a, l
    ld b, e
    ld a, [hl]
    ld a, a
    jr nz, jr_007_4ee0

    rra
    rra
    dec bc
    inc c
    rrca
    rrca
    add d
    cp $82
    cp $04
    db $fc
    inc b
    db $fc

jr_007_4eaf:
    ld [$f0f8], sp
    ldh a, [$ffa0]
    ld h, b
    ldh [$ffe0], a
    nop
    nop
    ld a, a
    ld a, a
    ld hl, sp-$79
    ld a, a
    ld a, a
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
    ld hl, sp-$01
    jr nz, @+$01

    cp $ff
    ld b, c
    ld a, a
    or b
    rst $08
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ld d, b
    rst $38
    ld a, a
    rst $18
    ld [hl], h

jr_007_4ee0:
    db $ec
    cp d
    cp $82
    cp $82
    cp $00
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    jr c, jr_007_4f19

    inc e
    inc d
    ld c, $0a
    dec b
    rlca
    and a
    rst $20
    ld e, b
    ld a, a
    jr nz, jr_007_4f3c

    ld a, [hl]
    ld a, a
    ld b, c
    ld a, a
    or b
    rst $08
    add b
    rst $38
    rst $38
    rst $38
    push bc
    rst $00
    ld a, [hl-]
    cp $54
    db $fc
    ld a, h
    call c, $ec74
    cp d
    cp $82
    cp $82
    cp $c0
    ret nz

jr_007_4f19:
    ldh [$ffa0], a
    ldh [$ffa0], a
    ldh [$ffa0], a
    ldh [$ffa0], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    cpl
    ccf
    jr c, jr_007_4f6a

    jr nz, jr_007_4f6c

    ld a, [hl]
    ld a, a
    ld b, c
    ld a, a
    or b
    rst $08
    add b
    rst $38
    rst $38
    rst $38
    call nc, $34dc
    db $fc
    ld d, h

jr_007_4f3c:
    db $fc
    ld a, h
    call c, $ec74
    cp d
    cp $82
    cp $82
    cp $18
    jr z, jr_007_4f82

    jr c, jr_007_4f58

    inc d
    ld e, $1c
    inc bc
    dec b
    rlca
    rlca
    nop
    ld bc, $0000
    nop

jr_007_4f58:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $f444
    ld e, h
    call c, $30fc
    jr nc, jr_007_4f80

    jr z, jr_007_4fa6

jr_007_4f6a:
    jr c, jr_007_4f73

jr_007_4f6c:
    ld a, [bc]
    ld c, $0f
    inc bc
    inc bc
    nop
    nop

jr_007_4f73:
    nop
    nop
    nop
    nop
    jr jr_007_4f81

    ld l, [hl]
    ld a, [hl-]
    cp d
    cp $e6
    and $00

jr_007_4f80:
    nop

jr_007_4f81:
    nop

jr_007_4f82:
    nop
    nop
    nop
    nop
    nop
    jr @-$74

    ld c, a
    rra
    rra
    scf
    jr c, jr_007_4fee

    ld h, b
    rst $38
    rst $38
    xor a
    ret nc

    cp a
    ret nc

    cp a
    pop af
    xor a
    ret nc

    add sp, -$08
    sbc h
    ld a, h
    ldh [c], a
    ld e, $ff
    rst $38
    jp hl


    rla
    db $ed
    sub a

jr_007_4fa6:
    db $ed
    sbc a
    jp hl


    rla
    rst $38
    rst $38
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld e, a
    ld [hl], e
    inc l
    ccf
    jr nz, jr_007_4ff5

    db $10
    rra
    inc e
    rra
    rst $38
    rst $38
    ld a, [$face]
    adc $f2
    ld e, $e4
    db $fc
    inc b
    db $fc
    jr @-$06

    jr z, @-$06

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    ret nz

    cp $81
    rst $38
    ret nz

    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_007_4fee:
    nop
    nop
    ld hl, sp-$08
    inc d
    db $fc
    db $fc

jr_007_4ff5:
    db $ec
    inc l
    db $fc
    add sp, -$08
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    ret nz

    cp $81
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_007_5049

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
    ldh [$ff50], a
    ldh a, [$ff28]
    ld hl, sp+$40
    ld a, a
    jr nz, jr_007_505d

    db $10
    rra
    ld [$040f], sp
    rlca
    ld b, $07
    dec b
    rlca
    dec b
    rlca
    ld d, b
    ldh a, [$ff28]
    ld hl, sp+$14
    db $fc
    ld a, [bc]
    cp $05
    rst $38
    rrca
    ei
    dec bc
    rst $38
    ei
    rst $38
    rrca
    rrca
    rra
    jr jr_007_505e

    db $10
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10

jr_007_5049:
    rra
    ld hl, sp-$08
    db $ec
    inc e
    call nc, $143c
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    db $10
    rra
    db $10

jr_007_505d:
    rra

jr_007_505e:
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    rra
    rra
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc a
    db $ec
    inc l
    db $fc
    add sp, -$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    nop
    nop
    cp $fe
    rst $38
    inc bc
    ld bc, $05ff
    rst $38
    ld a, [bc]
    cp $14
    db $fc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_007_50e1

    ld b, b
    ld a, a
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    rst $38

jr_007_50aa:
    dec b
    rst $38
    ld a, [bc]
    cp $14
    db $fc
    jr z, jr_007_50aa

    ret nc

    ldh a, [$ffe0]
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    cp a
    and b
    rst $38
    cp a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc e
    db $ec
    db $fc
    db $f4
    inc e
    db $ec
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_007_50e1:
    rst $38
    ld [$ffff], sp
    rst $30
    inc d
    rst $38
    rst $30
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $ffff
    cp $02
    rst $38
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc e
    db $ec
    db $fc

jr_007_5105:
    db $f4
    sbc h

jr_007_5107:
    db $ec
    ld hl, sp-$08
    ld e, $0d
    ld d, c
    rrca
    rrca
    db $10
    rra
    inc l
    inc sp
    ld e, b
    ld h, a
    ld d, b
    ld l, a
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_007_5105

    jr nz, jr_007_5107

    db $10
    ldh a, [rNR10]
    ldh a, [$fff0]
    ldh a, [rSB]
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    rrca
    rrca
    ld de, $261f
    add hl, sp
    ld e, a
    and b
    ld e, a
    and b
    rst $38
    rst $38
    cp $a9
    cp $a9
    db $fc
    add e
    pop de
    rst $38
    rst $38
    cp $48
    cp b
    ld c, b
    cp b
    ld hl, sp-$08
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    cp h
    db $fc
    ld l, [hl]
    ldh a, [c]
    inc l
    inc sp
    ld e, b
    ld h, a
    ld e, [hl]
    ld h, c
    ld a, h
    ld b, e
    xor e
    rst $10
    and l
    rst $18
    add a
    db $fd
    add h
    rst $38
    cp $c1
    ld a, a
    rst $38
    ld e, a
    db $e3
    ld a, a
    db $fc
    db $fc
    db $e3
    db $e3
    rra
    ld e, $fd
    db $ec
    di
    jp $e1fd


    rst $38
    pop af
    sbc a
    ld d, d
    cp $7c
    db $fc
    ldh [$ffe0], a
    ld a, h
    db $fc
    cp $be
    ld b, e
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, a
    ld a, b
    ld hl, $273e
    jr c, jr_007_51a9

    rra
    rrca
    rrca
    nop
    nop
    ld [hl], c
    rst $38
    rst $38
    ld a, a
    db $fd
    ld h, a
    push af
    rst $28
    push af
    rst $28
    ldh a, [c]
    rst $38

jr_007_51a9:
    sbc a
    sbc a
    nop
    nop
    rst $38
    ccf
    ei
    ld a, a
    ei
    ld a, a
    ei
    rst $38
    ei
    rst $38
    cp $fe
    ld a, h
    ld a, h
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld de, $201f
    ccf
    jr z, jr_007_5208

    ld d, b
    ld l, a
    ld d, h
    ld l, e
    ld a, h
    ld b, e
    cp e
    rst $00
    cp l
    rst $00
    xor a
    push de
    cp $c1
    rst $38
    rst $38
    ld e, l
    db $e3
    ld e, a
    xor $7e
    pop af
    ld sp, hl
    rst $00
    adc $3f
    inc a
    di
    jp $e1fd


    rst $38
    pop af
    sbc a
    ld d, d
    cp $7c
    db $fc
    ldh [$ffe0], a
    ld b, b
    ret nz

    ld a, h
    db $fc
    xor h
    rst $10
    ld h, e
    ld e, a
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, a
    jr nz, jr_007_5246

    inc hl

jr_007_5208:
    inc a
    ld de, $0f1f
    rrca
    ldh [rIE], a
    ld a, a
    rst $38
    db $fd
    ld h, a
    push af
    ld l, a
    push af
    rst $28
    di
    rst $38
    rst $18
    rst $18
    add b
    add b
    cp $fe
    ei
    cp a
    ei
    ccf
    ei
    ld a, a
    ei
    ld a, a
    rst $38
    rst $38
    cp $fe
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5239:
    ld c, $0e
    ld de, $261f
    add hl, sp
    inc l
    inc sp
    ld e, b
    ld h, a
    ld e, [hl]
    ld h, c
    ld a, h

jr_007_5246:
    ld b, e
    xor e
    rst $10
    and l
    sbc $87
    db $fd
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_007_5239

    and b
    ldh [$ffa0], a
    ldh [$ff84], a
    rst $38
    ld b, e
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, a
    ld a, b
    ld hl, $273e
    jr c, jr_007_527b

    rra
    ld c, $0e
    and b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b

jr_007_5279:
    nop
    nop

jr_007_527b:
    nop
    nop
    jr nz, jr_007_52be

    jr z, jr_007_52b8

    ld d, b
    ld l, a
    ld d, h
    ld l, e
    ld a, h
    ld b, e
    cp e
    rst $00
    cp l
    add $af
    push de
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_007_5279

    and b
    ldh [$ffa0], a
    ldh [$ffac], a
    rst $10
    ld h, e
    ld e, a
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, a
    jr nz, @+$41

    inc hl
    inc a
    ld de, $0e1f
    ld c, $a0
    ldh [rLCDC], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b

jr_007_52b8:
    add b
    nop
    nop
    nop
    nop
    add b

jr_007_52be:
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, h
    call nz, $ee2a
    or [hl]
    ld a, [$f4ac]
    cp [hl]
    xor $6b
    db $dd
    sub $7a
    db $ec
    ld d, h
    ldh a, [c]
    sbc [hl]
    db $e4
    sbc h
    cp b
    ld a, b
    ret nz

    ret nz

    and b
    ldh [rLCDC], a
    ret nz

    ret nz

    ld b, b
    ldh [$ff60], a
    ldh a, [$ffd0]
    ldh [$ffa0], a
    ldh a, [rNR10]
    ldh [$ffe0], a
    jr nc, @-$0e

    ld d, d
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0f01
    rrca
    add hl, sp
    scf
    ld h, a
    ld e, a

jr_007_5300:
    rst $38
    rst $38
    ld e, h
    db $e3
    cp a
    ret nz

    ld a, a
    rst $38
    or [hl]
    reti


    ld l, h
    sub e
    set 6, a
    xor $bd
    rst $38
    rst $38
    sbc l
    db $e3
    dec a
    rst $18
    ld a, [$d43e]
    cp h
    ld l, a
    rst $18
    jp hl


    sbc $ef
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
    add b
    add b
    ldh [$ff60], a
    jr nc, jr_007_5300

    sbc $bf
    cp [hl]
    rst $38
    rst $38
    db $fd
    db $fd
    cp $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, [hl]
    ccf
    dec a
    cp $bd
    db $fd
    set 4, a
    sbc a
    rst $18
    cp a
    cp a
    db $fc
    rst $38
    ld h, c
    rst $38
    db $fc
    di
    cp $ef
    rst $18
    db $db
    cp a
    cp e
    ld [hl], a
    di
    rst $08
    jp $073f


    rst $38
    ld a, e
    rst $38
    or e
    ld a, a
    ret c

    add sp, -$14
    db $f4
    db $f4
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    dec e
    rra
    dec e
    rrca
    dec c
    rlca
    dec b
    rlca
    ld b, $02
    inc bc
    inc bc
    inc bc
    ld bc, $7301
    rst $38
    ld l, a
    rst $18
    rst $08
    rst $38
    rst $30
    rst $38
    rst $20
    cp $ff
    ld a, h
    ld a, [hl]
    add c
    add b
    rst $38
    di
    ccf
    db $e3
    ccf
    db $e3
    ccf

jr_007_5396:
    rst $00
    ccf
    add $7e
    inc e
    db $fc
    jr z, jr_007_5396

    ld hl, sp-$18
    ld hl, sp-$08
    ldh [$ffe0], a
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
    rst $38
    cp a
    ret nc

    or b
    add sp, -$48
    ld a, b
    ld c, b
    jr nc, jr_007_53ea

    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    cp b
    ret nc

    or b
    add sp, -$48
    ld a, b
    ld c, b
    jr nc, jr_007_53fa

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0701
    rlca
    dec e
    dec de
    ccf
    cpl
    rst $38
    rst $38
    sbc l
    db $e3
    dec a
    rst $18
    ld a, [$d43e]
    cp h

jr_007_53ea:
    ld l, [hl]
    sbc $eb
    db $dd
    rst $28
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

jr_007_53fa:
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld e, a
    ld e, a
    ld a, l
    ld a, l
    ld a, [hl]
    ld e, h
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, l
    ldh [$ffa0], a
    ldh a, [$ffd0]
    ldh a, [$ffd0]
    ret nc

    ldh a, [$fff0]
    ldh a, [$ffd0]
    ldh a, [$ffd0]
    ldh a, [$ffd0]
    ldh a, [$ff7f]
    ld e, l
    cpl
    dec a
    cpl
    dec a
    rla
    dec e
    rrca
    ld c, $06
    rlca
    inc bc
    inc bc
    ld bc, $f301
    ccf
    db $e3
    ccf
    db $e3
    ccf
    rst $00
    ccf
    rst $00
    ld a, a
    rra
    rst $38
    ld l, $fe
    ld hl, sp-$18
    ret nc

    ldh a, [$ffa0]
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
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0701
    rlca
    dec c
    dec bc
    dec de
    rla
    rst $38
    rst $38
    sbc l
    db $e3
    dec a
    rst $18
    ld a, [$d43e]
    cp h
    ld l, [hl]
    sbc $e9
    rst $18
    db $ec
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
    nop
    nop
    add b
    add b
    ld d, $1f
    ld a, $2f
    cpl
    ccf
    ccf
    ld a, $3e
    ccf
    cpl
    ccf
    ccf
    ld l, $3f
    dec l
    xor $df
    rst $18
    cp [hl]
    cp a
    halt
    push af
    adc $cb
    dec a
    dec c
    ei
    ld a, a
    cp $bb
    ld a, h
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ccf
    dec l
    ccf
    dec l
    ccf
    dec l
    rla
    dec e
    rla
    ld e, $0a
    rrca
    dec b
    dec b
    ld bc, $fb01
    inc a
    db $eb
    inc a
    rst $20
    inc a
    call nz, $c63f
    ld a, a
    rra
    rst $38
    ld l, $fe
    ld hl, sp-$18
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

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
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rst $38
    rst $38
    sbc l
    db $e3
    dec a
    rst $18
    ld a, [$d43e]
    cp h
    ld l, b
    ret c

    add sp, -$28
    db $ec
    call c, Call_000_0706
    ld a, [bc]
    rrca
    rrca
    dec bc
    rla
    add hl, de
    ld [de], a
    dec e
    add hl, de
    rra
    rla
    ld e, $1f
    dec d
    cp $bd
    db $fd
    set 4, a
    sbc a
    rst $18
    cp a
    cp h
    rst $38
    cp $e3
    rst $38
    db $fd
    di
    cp $ec
    call c, $bed2
    cp d
    halt
    db $fd
    jp Jump_000_03fd


    ld [hl], e
    adc a
    dec c
    rst $38
    or c
    rst $38
    rra
    dec d
    rra
    dec d
    rra
    dec d
    rra
    dec d
    dec bc
    ld c, $0a
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld [hl], e
    rst $38
    ld l, a
    rst $18
    rst $08
    rst $38
    rst $30
    rst $38
    rst $20
    cp $ff
    ld a, h
    ld a, [hl]
    add c
    add b
    rst $38
    call $dd73
    ld h, e
    db $dd
    ld h, e
    jp c, $da66

    ld h, [hl]
    inc l
    db $f4
    inc l
    db $f4
    ld hl, sp-$08
    rst $38
    rst $38
    ld e, h
    db $e3
    cp a
    ret nz

    ld a, a
    rst $38
    or [hl]
    reti


    ld l, h
    sub e
    ld c, b
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    db $e3
    dec a
    rst $18
    ld a, [$d43e]
    cp h
    ld l, b
    ret c

    ld l, b
    ret c

    db $ec
    call c, $bdfe
    db $fd
    set 4, a
    sbc a
    rst $18
    cp a
    cp h
    rst $38
    cp $e3
    rst $38
    db $fd
    rst $08
    cp $ff
    rst $38
    rst $28
    rst $18
    ld c, c
    rst $38
    add hl, sp
    rst $38
    rst $38
    cp $ff
    ld a, h
    ld a, [hl]
    add c
    add b
    rst $38
    cp $bd
    db $fd
    set 4, a
    sbc a
    rst $18
    cp a
    cp h
    rst $38
    cp $e3
    rst $38
    db $fd
    sbc a
    cp $f9
    rst $38
    jp hl


    rst $18
    rst $08
    rst $38
    cp a
    rst $38
    sbc a
    cp $ff
    ld a, h
    ld a, [hl]
    add c
    add b
    rst $38
    nop
    nop
    inc c
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    jr nz, jr_007_55d0

    ld bc, $0000

jr_007_55d0:
    nop
    nop
    nop
    nop
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_007_55ee

    nop
    nop
    jr @+$0a

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    inc c
    inc b

jr_007_55ee:
    nop
    nop
    inc h
    di
    ld d, l
    rra
    rra
    ld [de], a
    dec e
    rrca
    rrca
    rra
    db $10
    ccf
    ccf
    ld d, l
    ld l, [hl]
    xor d
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    rst $38
    rst $38
    or $0f
    push af
    rst $28
    dec hl
    cp $1f
    db $fc
    rst $30
    db $fd
    ld hl, sp-$08
    adc b
    ld a, b
    ldh a, [$fff0]
    db $10
    ldh a, [$ffce]
    cp $ff
    scf
    rst $38
    rst $10
    jp hl


    ld e, a
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    ret z

    ld a, a
    ld a, a
    cp a
    ret nz

    rst $38
    cp [hl]
    cp a
    ret nz

    rst $38
    rst $38
    rst $30
    dec e
    rst $30
    dec e
    push hl
    ld a, $e4
    rst $38
    ld [hl+], a
    rst $38
    and c
    ld a, a
    ld [hl+], a
    rst $38
    jp $a6ff


    ld a, [hl]
    inc e
    db $fc
    ld [$cafe], a
    ld a, $12
    cp $e2
    cp $d2
    ld a, $fa
    cp $80
    rst $38
    cp a
    ret nz

    ld a, a
    ld b, b
    ld e, a
    ld h, b
    rst $20
    cp b
    ldh a, [$ff9f]
    adc a
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $00
    ccf
    jp hl


    ld e, $f3
    inc e
    rst $38
    ccf
    dec hl
    db $f4
    db $eb
    db $f4
    rst $38
    rst $38
    ld [$fe1e], a
    cp $d2
    ld l, $e9
    rla
    rst $38
    rst $38
    jp hl


    rla
    jp hl


    rla
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    ld a, a
    ld b, b
    ld e, a
    ld h, b
    rst $20
    cp b
    sub b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    ret


    ld a, $f3
    inc e
    rst $38
    ccf
    db $eb
    inc [hl]
    dec hl
    db $f4
    rst $38
    rst $38
    nop
    nop
    cp $fe
    jp nc, $e92e

    rla
    rst $38
    rst $38
    jp hl


    rla
    jp hl


    rla
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    ld [de], a
    dec e
    rrca
    rrca
    rra
    db $10
    ccf
    ccf
    ld d, l
    ld l, [hl]
    xor d
    db $dd
    ret z

    rst $38
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    ret z

    ld a, a
    ld a, a
    cp a
    ret nz

    rst $38
    cp [hl]
    cp a
    ret nz

    rst $38
    rst $38
    rra
    rra
    ld [de], a
    dec e
    rra
    rra
    ld a, [hl+]
    scf
    ld d, l
    ld l, [hl]
    ld h, h
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    rst $38
    rst $38
    cp $01
    rst $38
    rst $38
    sub [hl]
    ld a, a
    dec c
    rst $38
    ld a, e
    cp $ff
    adc h
    rst $38
    dec c
    ld a, a
    ld h, h
    ld a, a
    ld a, a
    cp a
    ret nz

    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $30
    dec e
    rst $30
    db $fd
    or l
    ld a, [hl]
    call nc, $d23f
    ccf
    pop de
    ccf
    jp nc, $d33f

    ccf
    rst $38
    cp a
    cp a
    ret nz

    ld a, a
    ld a, a
    ld e, a
    ld h, b
    rst $20
    cp b
    ldh a, [$ff9f]
    adc a
    rst $38
    rst $38
    rst $38
    jp nc, Jump_000_173f

    rst $38
    jp hl


    cp $f3
    inc e
    rst $38
    ccf
    dec hl
    db $f4
    db $eb
    db $f4
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    dec d
    dec de
    ld a, [hl+]
    scf
    ld [hl-], a
    ccf
    ccf
    cpl
    ccf
    daa
    ccf
    ld [hl-], a
    rst $38
    rst $38
    cp $fd
    ld c, e
    cp a
    add [hl]
    ld a, a
    dec a
    rst $38
    rst $38
    add $ff
    add h
    ei
    dec c
    ld a, a
    ld a, a
    cp a
    ret nz

    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    ei
    db $fd
    or a
    ld a, l
    push de
    ld a, $d4
    ccf
    jp nc, $d13f

    ccf
    jp nc, $d33f

    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    cp a
    ret nz

    ld a, a
    ld a, a
    jp nc, $d73f

    ccf
    reti


    ld a, $d3
    inc a
    rst $18
    ccf
    db $db
    inc [hl]
    cp e
    ld [hl], h
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ret nz

    rst $38
    rst $38
    rst $08
    cp a
    pop de
    cp a
    db $ed
    or a
    rst $18
    db $ed
    cp a
    pop bc
    rst $38
    rst $38
    set 7, a
    rst $18
    cp a
    ld sp, hl
    and a
    add e
    rst $38
    rst $38
    rst $38
    cp a
    ret nz

    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld a, c
    rst $08
    cp a
    pop de
    cp a
    db $ed
    or a
    sbc $ed
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $28
    ld [hl], e
    db $fd
    rst $30
    db $db
    rst $20
    ccf
    cp a
    rst $38
    cp [hl]
    pop bc
    rst $38
    rst $38
    jp z, $dfff

    cp a
    ld hl, sp-$59
    add e
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    cp a
    pop bc
    pop de
    rst $38
    jp hl


    sbc a
    sbc $fe
    db $ed
    sbc a
    ld e, c
    rst $38
    cp $fe
    nop
    nop
    ld l, h
    ld l, h
    or [hl]
    jp c, $bac6

    db $d3
    rst $38
    cp l
    rst $08
    db $eb
    sbc l
    halt
    ld a, d
    inc e
    inc e
    inc c
    inc c
    ld a, [de]
    ld d, $35
    dec hl
    add hl, hl
    scf
    add hl, sp
    scf
    ld [hl], d
    ld c, [hl]
    call z, Call_007_70bc
    ld [hl], b
    halt
    halt
    db $eb
    sbc l
    or [hl]
    or $40
    ld b, b
    ld e, $1e
    ld l, l
    ld [hl], e
    adc $be
    ld [hl], b
    ld [hl], b
    ld h, d
    ld h, d
    or a
    push de
    ld h, d
    ld h, d
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld h, a
    ld h, l
    or d
    jp nc, $6060

    rra
    ld [hl], $58
    ccf
    ccf
    ld l, e
    ld d, [hl]
    db $d3
    xor l
    and a
    reti


    call $9bb3
    push hl
    halt
    ld c, e
    ccf
    ccf
    ld hl, sp-$08
    db $fc
    inc b
    ld a, [$fa06]
    ld b, $fa
    ld b, $f2
    ld c, $04
    db $fc
    ld hl, sp-$08
    rlca
    rlca
    jr jr_007_5879

    ccf
    jr nz, jr_007_58dc

    ld a, a
    ld b, b
    ld a, a
    cp a
    rst $38
    rst $38
    sub $ff
    sub $e0
    ldh [rNR23], a
    ld hl, sp-$3c
    inc a
    jp nz, Jump_000_22fe

    cp $91
    rst $38
    pop de
    ld a, a
    pop de
    ld a, a
    rst $38
    ret z

    or a

jr_007_5879:
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    ld l, a
    ld e, b
    call nz, $83bf
    rst $38
    cp $fe
    pop de
    ld a, a
    sub d
    cp $22
    cp $fc
    db $fc
    and d
    ld a, [hl]
    ld c, l
    di
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
    nop
    nop
    inc h
    inc a
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    rra
    rra
    inc [hl]
    dec hl
    ld l, c
    ld d, [hl]
    ld d, e
    ld l, h
    ld h, [hl]
    ld e, c
    ld c, l
    ld [hl], d
    dec sp
    inc h
    rra
    rra
    ldh a, [$fff0]
    ld hl, sp-$78
    db $f4
    ld c, h
    ld [hl], h
    call z, Call_007_4cf4
    db $e4
    ld e, h
    adc b
    ld hl, sp-$10
    ldh a, [rTAC]
    rlca
    jr @+$21

    cpl
    jr nc, jr_007_594c

    ld a, a
    ld b, b
    ld a, a
    cp a
    rst $38

jr_007_58d2:
    rst $38
    db $db
    rst $38
    db $db
    ldh [$ffe0], a
    jr jr_007_58d2

    db $e4
    inc e

jr_007_58dc:
    ldh [c], a
    cp $12
    cp $c9
    rst $38
    jp hl


    ccf
    jp hl


    ccf
    rst $38
    call nz, Call_007_7f7b
    ret nc

    cp a
    sbc a
    rst $38
    rst $28
    ld hl, sp-$1c
    rst $38
    ld [hl], a
    ld a, a
    jr c, @+$3a

    jp hl


    ccf
    jp z, $12fe

    cp $fc
    db $fc
    ld b, h
    db $fc
    ld e, d
    and $82
    cp $fe
    cp $fc
    db $fc
    cp $02
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld [bc], a
    cp $fc
    db $fc
    rlca
    rlca
    jr jr_007_5939

    ccf
    jr nz, @+$81

    ld a, a
    add b
    rst $38
    rst $38
    rst $38

jr_007_5922:
    rst $38
    xor h
    rst $38
    xor h
    ldh [$ffe0], a
    jr jr_007_5922

    add h
    ld a, h
    add d
    cp $42
    cp $21
    rst $38
    and c
    rst $38
    and c
    rst $38
    rst $38
    sub b
    rst $28

jr_007_5939:
    rst $38
    add b
    rst $38
    ld a, a
    ld a, a
    ccf
    jr nc, jr_007_59ad

    ld e, a
    ld b, e
    ld a, a
    ld a, a
    ld a, a
    and c
    rst $38
    ld h, $fe
    ld c, l
    ei

jr_007_594c:
    pop af
    rst $38
    xor a
    ld a, a
    ld l, $fe
    call c, $b8fc
    cp b
    rra
    rra
    db $10
    rra
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rst $20
    rst $20
    jr c, @+$01

    ccf
    ldh [$ffbf], a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b

jr_007_5972:
    cp l
    ld a, [hl]
    cp [hl]
    ld h, e
    ldh [$ffe0], a
    jr jr_007_5972

    call nz, $e23c
    ld e, $f2
    ld c, $f1
    rrca
    pop af
    rrca
    pop hl
    rra
    and d
    ld a, a
    cp h
    ld a, a
    cp a
    ld a, a
    and b
    ld a, a
    cp a
    ld a, a
    inc h
    rst $38
    inc hl
    rst $38
    cp $fe
    pop bc
    ccf
    ld [bc], a
    cp $e2
    cp $1c
    db $fc
    ldh [c], a
    cp $4d
    di
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc

jr_007_59ad:
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$080f], sp
    ldh a, [$fff0]
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c
    db $e4
    inc e
    add sp, $18
    ret z

    jr c, @-$2e

    jr nc, jr_007_59e6

    db $10
    rra
    db $10
    inc hl
    inc a
    inc a
    ccf
    dec hl
    scf
    ld sp, $1a2e
    dec e
    rlca
    rlca
    sub a
    ld [hl], a
    cp b
    ld l, a
    ccf
    db $e4
    cpl
    ldh a, [c]
    ld [hl], e
    sbc $ff
    call z, $ffc0
    rst $38
    rst $38

jr_007_59e6:
    ldh [$ffe0], a
    jr @-$06

    call nz, $e23c
    ld e, $f2
    ld c, $f1
    rrca
    ld hl, $c1df
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    ld d, [hl]
    ccf
    ccf
    ld l, a
    ld e, b
    call nz, $83bf
    rst $38
    cp $fe
    ld hl, $92ff
    cp $d2
    ld a, [hl]
    db $fc
    db $fc
    and d
    ld a, [hl]
    ld c, l
    di
    add c
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    or [hl]
    jp c, $bac6

    db $d3
    rst $38
    cp l
    rst $08
    db $eb
    sbc l
    halt
    ld a, d
    inc e
    inc e
    ld hl, $5a29
    nop
    nop
    nop
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

    ld b, h
    ld a, h
    inc c
    inc c
    ld e, $12
    ccf
    dec l
    ccf
    dec l
    ld e, $12
    ld e, $12
    ld e, $1e
    dec l
    inc sp
    ld d, $19
    rla
    dec de
    inc d
    rra
    jr jr_007_5a70

    ccf
    ccf
    ld d, a
    ld l, b
    ccf
    ccf
    ccf
    dec hl
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld b, $f9
    ld a, [$a4fd]
    ld e, a
    ldh a, [c]
    rst $38
    cp $3b
    db $f4
    call z, $86fa
    ld a, [$f286]

jr_007_5a70:
    adc [hl]
    add d
    cp $fe
    cp $ba
    xor $7c
    db $fc
    ccf
    jr nz, @+$41

    inc [hl]
    ld a, a
    ld a, a
    xor a
    ret nc

    ld a, a
    ld a, a
    rst $30
    xor h
    and h
    rst $38
    ld a, a
    ld a, a
    cp $3b
    cp $7b
    ldh a, [c]
    rst $38
    and h
    ld e, a
    rst $38
    rst $38
    ld a, e
    add $42
    rst $38
    rst $38
    rst $38
    add d
    ld a, [hl]
    ld a, [$7206]
    adc [hl]
    ld [bc], a
    cp $fe
    cp $b7
    ld l, l
    dec h
    rst $38
    cp $fe
    inc c
    inc c
    ld e, $12
    ld e, $12
    ld e, $12
    ld e, $12
    ld e, $12
    ld e, $1e
    dec l
    inc sp
    ccf
    jr nz, jr_007_5afb

    inc [hl]
    ld a, a
    ld a, a
    xor a
    ret nc

    ld a, a
    ld a, a
    db $dd
    or e
    sub c
    rst $38
    ld a, a
    ld a, a
    cp $3b
    cp $7b
    ldh a, [c]
    rst $38
    and h
    ld e, a
    rst $38
    rst $38
    xor $19
    ld [$ffff], sp
    rst $38
    and $5a
    xor $56
    ld a, [hl]
    and [hl]
    ld a, [hl-]
    xor $fe
    cp $df
    or a
    sub a
    rst $38
    cp $fe
    jr nc, jr_007_5b1b

    ld [hl], h
    ld d, h
    ld l, [hl]
    ld l, d
    inc b
    inc b
    jr jr_007_5b0b

    inc a
    inc h
    inc e
    inc d
    inc c
    inc c
    jr jr_007_5b13

jr_007_5afb:
    inc a
    inc h
    inc e
    inc d
    ld l, h
    ld l, h
    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5b0b:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_007_5b13:
    dec b
    ld b, $0a
    dec c
    rrca
    rrca
    nop
    nop

jr_007_5b1b:
    ld bc, $0301
    ld [bc], a
    ld bc, $e001
    ldh [$ff1f], a
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    ldh [$ffe0], a
    ldh a, [rNR10]
    ld hl, sp-$18
    ldh a, [rNR10]
    ldh [$ffa0], a
    rst $38
    rst $38
    rst $20
    ld e, $b3
    adc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    ld [$e4f8], sp
    inc e
    db $f4
    inc c
    db $10
    rra
    rra
    rra
    rra
    ld d, $3f
    add hl, sp
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld sp, hl
    sub a
    ld a, a
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    jr @+$01

    rst $38
    ld d, e
    rst $28
    ld [hl+], a
    rst $38
    xor c
    rst $30
    cpl
    ldh a, [rBGP]
    ld hl, sp-$01
    rst $38
    sbc [hl]
    ld [hl], c
    rst $38
    rst $38
    db $fc
    db $fc
    db $f4
    sbc h
    ld hl, sp-$08
    add h
    ld a, h
    inc b
    db $fc
    cp $fe
    rst $28
    sbc c
    cp $fe
    inc b
    inc b
    ld c, $0a
    ld c, $0a
    rra
    dec d
    rra
    dec d
    ld c, $0a
    ld c, $0a
    ld c, $0a
    add hl, de
    add hl, de
    ld a, $27
    ld [hl], $2f
    daa
    ccf
    jr z, jr_007_5be2

    scf
    jr c, @+$39

    jr c, jr_007_5bc8

    ccf
    ret z

    ret z

    cp h
    ld [hl], h
    cp d
    ld h, [hl]
    ldh a, [c]
    xor $32
    xor $a2
    ld a, [hl]
    and d
    ld a, [hl]
    ld h, d
    cp [hl]
    ccf
    ccf
    ld a, h
    ld b, e
    ld a, h
    ld b, e
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld a, a
    ld l, c
    ld a, a
    ld d, c
    ld a, a

jr_007_5bc8:
    ld d, e
    ld h, d
    cp [hl]
    and d
    cp $7e
    cp $6a
    cp $7e
    sbc $62
    sbc $72
    adc $7e
    jp nz, Jump_007_7f7f

    call c, $dca3
    and e
    ld a, a
    ld a, a
    ei

jr_007_5be2:
    sub $d2
    rst $38
    jp nc, Jump_007_7fff

    ld a, a
    ld e, d
    and $42
    cp $82
    cp $fe
    cp $6f
    db $db
    ld c, e
    rst $38
    ld c, e
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $0111
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, [hl]
    jp nz, $c040

    ld [hl], b

jr_007_5c14:
    ret nc

    ld b, b
    ret nz

    and b
    ld h, b
    ld [bc], a
    inc bc
    dec b
    ld b, $35
    ld d, $05
    ld b, $05
    ld b, $05
    ld b, $1d
    ld c, $05
    ld b, $a0
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and [hl]
    ld h, d
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    add hl, bc
    inc a
    ld e, h
    dec b
    ld b, $02
    inc bc
    ld bc, $0101
    ld bc, $0203
    ld c, $0d
    jr c, jr_007_5c80

    ld a, b
    ld b, b
    db $db
    cp l
    jp Jump_000_003c


    rst $38
    nop
    cp l
    nop
    cp l
    nop
    ld a, [hl]
    nop
    sbc c
    nop
    nop
    nop
    ld [$0606], sp
    rrca
    ld c, c
    dec e
    ld d, $0a
    rrca
    ld a, [hl-]
    dec d
    ld [hl], h
    ld l, b
    ret nc

    and b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld e, d
    db $db
    rst $20
    add c
    ld h, [hl]
    nop
    jp Jump_000_00a5


    nop
    nop
    nop
    ld [$0808], sp

jr_007_5c80:
    inc e
    inc d
    inc [hl]
    inc l
    daa
    dec sp
    ld h, e
    ld d, l
    pop bc
    and d
    add b
    pop bc
    nop
    nop
    nop
    jr jr_007_5c91

jr_007_5c91:
    jr jr_007_5c14

    add c
    ld e, d
    db $db
    ld a, [hl]
    rst $20
    inc h
    db $db
    ld b, d
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_5cc4

    ld a, b
    ld e, b
    sbc $86
    rst $00
    adc c
    add b
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
    nop
    jp $c3c3


    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld e, $12

jr_007_5cc4:
    ld e, $12
    inc c
    inc c
    nop
    nop
    nop
    nop
    inc b
    rst $08
    ld e, h
    rst $38
    rst $38
    sbc a
    ldh [$ff7f], a
    ld a, a
    ld h, b
    ld a, a
    ld c, a
    ld a, b
    ld e, a
    ld a, b
    ld e, a
    ld h, e
    ld e, a
    ld h, a
    db $fc
    db $fc
    and $1e
    db $fd
    rst $38
    dec de
    rst $38
    ld [$ea3e], a
    ld a, [hl]
    ld [$ea1e], a
    sbc [hl]
    ld e, a
    ld l, a
    ld e, a
    ld h, b
    ld e, a
    ld l, b
    ld e, a
    ld a, b
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    sbc a
    ldh [rIE], a
    rst $38
    ld [$eade], a
    ld e, $ea
    ld a, $ea
    ld a, [hl]
    ld a, [de]
    cp $fe
    cp $e5
    rra
    rst $38
    rst $38
    dec b
    ld [de], a
    ld e, l
    nop
    nop
    ccf
    ccf
    ld b, l
    ld a, a
    cp a
    push bc
    cp a
    push bc
    ld b, l
    ld a, a
    ccf
    ccf
    nop
    nop
    ld [$1408], sp
    inc e
    ld a, $32
    ld e, l
    ld l, e
    cp [hl]
    add $b4
    call z, $f888
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    inc h
    inc a
    jr jr_007_5d5a

    inc a
    inc a
    ld b, d
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
    jr @+$1a

    inc h
    inc a
    ld e, d
    ld h, [hl]

jr_007_5d5a:
    ld e, d
    ld h, [hl]
    inc h
    inc a
    jr jr_007_5d78

    nop
    nop
    ld b, e
    ld h, l
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_5d8d

    jr nz, @+$22

    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld hl, sp-$08
    ld bc, $0301

jr_007_5d78:
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rra
    inc e
    ld a, a
    ld h, [hl]
    rra
    dec e
    dec h
    ccf
    db $fc
    inc h
    sbc [hl]
    ld a, [hl]
    add c
    ld a, a
    add hl, bc
    rst $38

jr_007_5d8d:
    dec e
    or $3f
    db $e4
    db $fd
    and $f9
    ld l, a
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    jr c, jr_007_5dd3

    ldh a, [$ffd0]
    ldh [$ffe0], a
    ld hl, sp+$18
    ldh [$ffe0], a
    inc a
    db $fc
    inc h
    ccf
    ld [hl+], a
    ccf
    inc de
    rra
    rra
    rra
    ld a, h
    ld [hl], a
    cp $bf
    rst $38
    adc a
    db $e3
    sbc a
    ld [de], a
    rst $38
    ld d, $ff
    ld a, [$e1ff]
    ccf
    pop bc
    rst $38
    rlca
    rst $38
    cp $fe
    cp $fe
    ld a, $e6
    add hl, sp
    rst $30
    ld a, c
    rst $08
    db $fd
    add a
    db $fd
    add a
    ld a, [hl]
    ld b, [hl]
    inc a
    inc a

jr_007_5dd3:
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    dec bc
    inc e
    inc e
    jr nc, jr_007_5e11

    nop
    nop
    nop
    nop
    pop hl
    rst $18
    ldh [$ff3f], a
    ret nc

    rst $18
    jr jr_007_5e0c

    ld c, $0f
    rlca
    dec b
    rlca
    dec b
    ld b, $06
    cp $fe
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    and [hl]
    cp $c2
    ld a, [hl]
    ld b, d
    add hl, sp
    daa
    ld sp, $213f
    ccf
    ld hl, $213f
    ccf
    dec a

jr_007_5e0c:
    ccf
    ccf
    inc hl
    ld a, $22

jr_007_5e11:
    inc a
    inc h
    jr jr_007_5e2d

    inc h
    ccf
    ld [hl+], a
    ccf
    inc de
    rra
    dec c
    rrca
    inc e
    rla
    ld a, $33
    ld a, a
    ld e, e
    rst $38
    adc a
    ld [de], a
    rst $38
    ld d, $ff
    ld a, [$e1ff]
    ccf

jr_007_5e2d:
    pop bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $e6
    add hl, sp
    rst $30
    ld a, c
    rst $08
    db $fd
    add a
    db $fd
    add a
    ld a, [hl]
    ld b, [hl]
    inc a
    inc a
    ret nz

    ret nz

    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    dec bc
    inc e
    inc e
    inc sp
    inc sp
    rlca
    inc b
    rlca
    rlca
    rst $38
    rra
    rst $38
    ld l, a
    rst $38
    rst $00
    ld a, d
    ld b, [hl]
    jp nz, $84fe

    db $fc
    adc $7a
    cp $fe
    rst $38
    rst $38
    rst $00
    add $04
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    dec e
    rla
    rra
    rra
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh a, [$ffb0]
    ld hl, sp+$08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ld hl, sp+$18
    ldh [$ffe0], a
    inc a
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
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
    ret nz

    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $08
    rst $08
    ldh a, [$ff3f]
    ldh a, [$ff1f]
    ld hl, sp-$71
    ld hl, sp+$1f
    rst $28
    rst $28
    nop
    nop
    nop
    nop
    db $e4
    rst $38
    ld [hl+], a
    rst $38
    inc sp
    rst $18
    ld a, l
    adc a
    db $f4
    rst $30
    ld [bc], a
    inc bc
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $08
    rst $38
    add a
    ldh a, [c]
    adc [hl]
    ld b, c
    ld a, a
    jr nc, jr_007_5f30

    ld a, c
    ld c, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh a, [$fff0]
    cp $fe
    rst $38
    ld sp, hl
    ld a, a
    ld [hl], b

jr_007_5f0d:
    inc e
    inc de
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_007_5f0d

    ld [$0ef8], sp
    cp $1f
    pop af
    rst $38
    rst $38
    ld [$0808], sp
    ld [$0808], sp
    ld [$1808], sp
    jr jr_007_5f48

jr_007_5f30:
    jr jr_007_5f4a

    jr jr_007_5f4c

    jr jr_007_5f4e

    jr jr_007_5f70

    jr z, jr_007_5f72

    jr z, jr_007_5f74

    jr z, jr_007_5f76

    jr z, jr_007_5f78

    jr z, jr_007_5f7a

    jr z, jr_007_5f7c

    jr z, jr_007_5f7e

    jr z, jr_007_5f80

jr_007_5f48:
    jr z, jr_007_5f82

jr_007_5f4a:
    jr z, jr_007_5f84

jr_007_5f4c:
    jr z, jr_007_5f86

jr_007_5f4e:
    jr z, jr_007_5f8c

    inc a
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, [hl]
    inc a
    inc a
    ld a, [hl-]
    ld l, $3a
    ld l, $3b
    cpl
    inc sp
    ld a, $3f
    ld [hl-], a
    jr nz, jr_007_5f87

    jr nz, @+$22

    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld hl, sp-$08
    db $fc

jr_007_5f70:
    inc h
    sbc [hl]

jr_007_5f72:
    ld a, [hl]
    add c

jr_007_5f74:
    ld a, a
    ccf

jr_007_5f76:
    inc h
    ccf

jr_007_5f78:
    inc a
    ld a, a

jr_007_5f7a:
    ld h, [hl]
    rra

jr_007_5f7c:
    dec e
    dec d

jr_007_5f7e:
    rra
    inc c

jr_007_5f80:
    rrca
    ld a, [bc]

jr_007_5f82:
    rrca
    rlca

jr_007_5f84:
    rlca
    add hl, bc

jr_007_5f86:
    rst $38

jr_007_5f87:
    dec e
    or $3f
    db $e4
    db $fd

jr_007_5f8c:
    and $f9
    ld l, a
    ld [de], a
    rst $38
    call nc, $fcff
    rst $38
    nop
    nop
    ldh [$ffe0], a
    ld hl, sp+$18
    ldh [$ffe0], a
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff30]
    ldh a, [rTIMA]
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    ldh [c], a
    ccf
    pop bc
    rst $38
    rlca
    rst $38
    cp $fe
    cp $fe
    cp $fe
    rst $18
    rst $18
    rst $18
    reti


    ld a, b
    ret z

    db $e4
    sbc h
    jp nz, Jump_007_46fe

    ld a, [hl]
    ccf
    add hl, sp
    ccf
    ld hl, $2a3e
    sbc h
    sbc h
    rrca
    ld [$090e], sp
    ld c, $0f
    ld [$100f], sp
    rra
    ld [hl], c
    ld a, a
    di
    sbc [hl]
    rst $38
    rst $38
    ld e, a
    ret nc

    ld d, a
    ret c

    ld d, b
    rst $18
    ld c, b
    rst $08
    ld c, c
    rst $08
    ld c, e
    adc $8f
    adc h
    adc a
    adc a
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [$ffe0], a
    ld h, b
    ldh a, [rNR10]
    ldh a, [$fff0]
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    add hl, bc
    inc e
    inc de
    inc e
    inc de
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$fff0]
    ld [$f0f8], sp
    ldh a, [$ff3e]
    ld a, $0f
    add hl, bc
    rlca
    ld b, $07
    inc b
    dec bc
    ld c, $09
    rrca
    db $10
    rra
    jr c, jr_007_605e

    ld hl, sp-$19
    ld sp, hl
    rst $30

jr_007_603b:
    rst $38
    ld l, a
    rst $38
    dec sp
    db $fc
    cpl
    rst $18
    di
    sbc a
    db $fc
    ld c, b
    ld hl, sp-$11
    or a
    rst $38
    jr nz, jr_007_603b

    scf
    ret


    ld a, a
    sub c
    rst $38
    or c
    rst $38
    db $d3
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

jr_007_605e:
    ret nz

    ldh [rNR41], a
    sub b
    ld [hl], b
    ld [$10f8], sp

jr_007_6066:
    rra
    add hl, bc
    ld c, $07
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
    rst $38
    ld a, e
    and [hl]
    cp a
    db $10
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $30
    adc a
    ei
    add a
    pop af
    adc a
    rst $38
    ccf
    rst $38
    call z, $f43f
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld [$88f8], sp
    ld hl, sp-$30
    ld [hl], b
    ldh [rNR41], a
    ldh a, [rSVBK]
    db $fc
    call z, Call_000_323e
    rrca
    rrca
    ld b, b
    ld a, a
    jr nc, jr_007_60e8

    rrca
    rrca
    rlca
    inc b
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    sbc a
    adc a
    adc a
    add a
    add a
    add e
    add d
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ret nc

    jr nc, jr_007_6066

    ld a, b
    ld hl, sp-$08
    ld a, h
    ld c, h
    inc a
    inc a
    rst $38
    ld a, e
    and [hl]
    cp a
    db $10
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    ccf
    rst $38

jr_007_60e8:
    call z, $f43f
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    cp $fe
    cp $c6
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    adc $e1
    rst $38
    di
    cp a
    rst $38
    sbc l
    rst $08
    ld sp, hl
    ld l, [hl]
    ld a, [hl]
    ld a, $32
    inc e
    inc e
    rst $38
    ld a, e
    and [hl]
    cp a
    rla
    rra
    rrca
    inc c
    rrca
    ld [$080f], sp
    inc b
    rlca
    inc b
    rlca
    rst $38
    ccf
    rst $38
    call z, $f4ff

jr_007_612b:
    rst $38
    db $fc
    rst $38
    ld a, [hl]

jr_007_612f:
    add hl, sp
    ld sp, hl
    jr jr_007_612b

    inc c
    db $fc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    db $fc
    ld a, [$f21e]
    ld a, $f2
    cp $19
    rra
    rrca
    rrca
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    ld e, $64
    ld a, h
    adc b
    ld hl, sp+$64
    ld a, h
    ld a, [de]
    ld e, $07
    rlca
    nop
    nop
    nop
    nop
    inc c
    inc c
    jr jr_007_6183

    jr z, jr_007_61a5

    ld c, b
    ld a, b
    ld d, b
    ld [hl], b
    sub b
    ldh a, [$ff90]
    ldh a, [rSB]
    ld bc, $0303
    ld b, $06
    ld a, [bc]
    ld c, $14
    inc e
    inc h
    inc a
    inc h
    inc a

jr_007_6183:
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    sub b
    ldh a, [$ff90]
    ldh a, [$ff90]
    ldh a, [$ff90]
    ldh a, [rOBP0]
    ld a, b
    nop
    nop
    jr jr_007_612f

    ld h, c
    ld a, $3e
    ld b, c
    ld a, a
    sbc h
    db $e3
    cp [hl]
    pop bc
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, a

jr_007_61a5:
    add b
    ld a, [hl+]
    push de
    ld a, b
    ld a, b
    add h
    db $fc
    cp d
    add $55
    db $eb
    ld e, c
    rst $20
    and l
    ld a, e
    ld a, [hl+]
    or $a6
    ld a, [hl]
    sub l
    ld [$ffc1], a
    adc a
    rst $38
    cp d
    rst $00
    sbc b
    rst $20
    ld b, l
    ld a, [hl]
    ld a, $3f
    inc bc
    inc bc
    ld [hl], d
    cp $c9
    rst $30
    ld sp, $f9cf
    rlca
    or d
    ld c, [hl]
    ld b, h
    cp h
    jr @-$06

    ldh [$ffe0], a
    nop
    nop
    rra
    rra
    jr nz, jr_007_621d

    ld e, a
    ld h, b
    ld a, [hl]
    ld b, c
    ld e, l
    ld h, d
    ld c, d
    ld [hl], l
    ld hl, $003f
    nop
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    ld d, h
    db $ec
    ld [hl+], a
    cp $36
    cp $7c
    db $fc
    add h
    db $fc
    ld e, [hl]
    ld a, a
    inc l
    ld e, a
    dec [hl]
    ld c, [hl]
    ld e, l
    ld h, [hl]
    ld [hl+], a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    ld a, d
    add [hl]
    ldh a, [c]
    ld c, $fa
    ld b, $62
    sbc [hl]
    add h
    ld a, h
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca

jr_007_621d:
    rrca
    db $10
    rra
    cpl
    jr nc, jr_007_6247

    dec sp
    inc de
    rra
    ld l, $3f
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    ld d, h
    db $ec
    db $f4
    db $fc
    ld [$f4f8], sp
    inc c
    dec [hl]
    ld l, $35
    ld l, $2d
    ld [hl], $12
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop

jr_007_6247:
    nop
    db $e4
    inc e
    db $f4
    inc c
    call nz, $883c
    ld a, b
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
    rlca
    rlca
    inc c
    dec bc
    ld a, [bc]
    rlca
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_626f:
    nop
    ld h, b
    ld h, b
    sub b
    ldh a, [$ffe8]
    jr c, jr_007_626f

    jr jr_007_627e

    ld c, $1d
    ld d, $16
    dec de

jr_007_627e:
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop

jr_007_6284:
    nop
    nop
    nop
    nop
    sub b
    ld [hl], b
    jr z, jr_007_6284

    ld c, b
    ld hl, sp-$70
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    ld a, [bc]
    dec c
    nop
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
    ldh [$ff0d], a
    dec bc
    ld a, [bc]
    rrca
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    and b
    and b
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
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0b
    inc c
    rlca
    ld [$0807], sp
    rlca
    ld [$0d02], sp
    add hl, bc
    ld c, $0c
    rrca
    ld [$0b0f], sp
    inc c
    add hl, bc
    ld c, $04
    rlca
    inc bc
    inc bc
    nop
    nop
    rst $20
    rst $20
    jr @+$01

    srl h
    push hl
    ld e, $f5
    ld c, $ea
    rla
    ldh a, [c]
    rrca
    xor d
    ld d, a
    ld d, a
    xor a
    inc e
    rst $38
    di
    db $fc
    xor a
    ld [hl], b
    adc e
    ld [hl], h
    ld d, h
    db $eb
    pop hl
    rst $38
    ld a, $3e
    ld d, d
    dec de
    ld h, e
    nop
    nop
    nop
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
    dec b
    rlca
    inc b
    inc b
    inc c
    inc c
    dec e
    dec d
    rra
    ld d, $3d
    ld h, $3f
    inc h
    ccf
    ld hl, $223f
    nop
    nop
    add b
    add b
    and b
    and b
    ldh [$ffe0], a
    ldh [$ffa0], a
    ldh a, [$ff30]
    pop af
    sub c
    pop af
    ld [hl], c
    nop
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

    call nz, Call_007_4744
    ld b, l
    rst $38
    cp b
    rst $38
    sub l
    rst $38
    and d
    ld a, a
    ld b, b
    cp a
    ldh a, [$ff5f]
    ld l, a
    inc a
    inc sp
    ld a, a
    ld d, h
    cp $d9
    call c, $eb63
    ld [hl], a
    rst $38
    cp $f7
    sbc $ff
    xor c
    rst $38
    cp a
    ld a, [$7f2b]
    and [hl]
    rst $38
    jp hl


    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $18
    ld hl, sp-$11
    or a
    rst $18
    jr c, @-$50

    ld l, d
    cp $32
    cp $4a
    db $fc
    add h

jr_007_6393:
    cp $06
    ld a, [$e41e]
    db $fc
    jr jr_007_6393

    cpl
    ccf
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, d
    ld a, a
    ld b, l
    ld a, a
    ld b, e
    ld e, [hl]
    ld h, d
    inc l
    inc [hl]
    jr jr_007_63c3

    cp a
    ret nz

    add b
    rst $38
    ld e, a
    ld a, a
    ld sp, $1f3f
    rra
    rla
    jr jr_007_63d7

    rra
    rra
    rra
    adc a
    ld a, a
    ld [$11f8], sp
    pop af
    ld h, e
    ldh [c], a

jr_007_63c3:
    pop af
    or c
    pop af
    ld [hl], c
    ldh a, [$fff0]
    ld hl, sp-$08
    add sp, -$08
    call nc, $f4ec
    inc l
    db $f4
    sbc h
    db $fc
    inc c
    add sp, $18

jr_007_63d7:
    ret nc

    or b
    ld h, b
    ld h, b
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, a
    ld l, a
    cp l
    rst $00
    ld a, e
    ld l, a
    dec a
    ccf
    ld b, c
    ld a, a
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    cp $f6
    cp l
    db $e3
    sbc $f6
    cp h
    db $fc
    add d
    cp $59
    ld a, a
    or l
    rst $28
    rst $38
    rst $00
    ld a, l
    ld b, a
    ld a, c
    ld c, a
    ld [hl], d
    ld a, [hl]
    add h
    db $fc
    ld a, b
    ld a, b
    sbc d
    cp $ad
    rst $30
    rst $38
    db $e3
    cp [hl]
    ldh [c], a
    sbc [hl]
    ldh a, [c]
    ld c, [hl]
    ld a, [hl]
    ld hl, $1e3f
    ld e, $03
    ld [bc], a
    scf
    scf
    ccf
    dec hl
    inc e
    rla
    dec sp
    dec l
    ccf
    dec hl
    ld a, d
    ld [hl], a
    db $fc
    or a
    rst $38
    call nc, $d9fe
    ld e, h
    db $e3
    db $eb
    rst $30
    rst $38
    cp $f7
    sbc $ff
    jp hl


    ld a, a
    rst $18
    rst $30
    rla
    ld a, e
    adc [hl]
    rst $30
    db $dd
    rst $30
    ld e, h
    rst $30
    ld e, h
    rst $30
    call c, $9ef5
    di
    ld a, [hl]
    ret nz

    ld b, b
    ld c, h
    call z, $f4bc
    ld hl, sp+$48
    add sp, $58
    or $3e
    ei
    dec c
    cp $0a
    ld h, a
    ld a, l
    dec l
    ccf
    cpl
    ccf
    add hl, de
    add hl, de
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $18
    ldh [$ffcf], a
    rst $38
    ei
    cp $e7
    ld a, [$f1cf]
    ret nz

    rst $38
    ld h, c
    ld a, a
    rra
    rra
    db $eb
    sbc l
    rst $38
    inc c
    ld a, [$d11b]
    ld sp, $70b0
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff0]
    ld a, [hl]
    add [hl]
    ld a, [$c4fe]
    inc a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    rra
    ccf
    inc hl
    ld a, a
    ld e, c
    ld a, a
    ld d, c
    ccf
    ld sp, $121e
    inc c
    inc c
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    rra
    db $10
    dec c
    ld c, $03
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    and $7e
    ld sp, hl
    scf
    db $fd
    inc sp
    ldh a, [c]
    dec a
    ldh [$ff7f], a
    sbc a
    sbc a
    adc e
    ld a, l
    rrca
    db $fc
    ld [de], a
    di
    ld h, c
    pop hl
    ldh a, [$ffb0]
    ldh a, [rSVBK]
    ldh a, [$fff0]
    ld hl, sp-$08
    rrca
    rrca
    rlca
    ld b, $07
    inc b
    rlca
    inc b
    rrca
    inc c
    rra
    ld [de], a
    dec c
    rrca
    ld [hl], $37
    rst $38
    ret nz

    ldh [$ff7f], a
    rst $38
    cp a
    rst $30
    ld a, a
    rst $38
    jr c, @+$01

    ld a, a
    sub a
    rst $30
    db $10
    ldh a, [$ff8f]
    ld a, a
    rra
    pop af
    ccf
    add sp, -$01
    or b
    rst $38
    ld h, b
    rst $38
    pop af
    adc $cf
    inc b
    rlca
    ldh [$ffe0], a
    db $10
    ldh a, [$fff0]
    sub b

jr_007_6511:
    ret nc

    or b
    xor b
    ld hl, sp-$04
    db $e4
    jr jr_007_6511

    ld a, h
    db $fc
    cpl
    add hl, sp

jr_007_651d:
    ld sp, $1c3e
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_007_651d

    ldh a, [$ffd0]
    ldh a, [$ffd0]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ret nz

    add b
    rst $38
    ld e, a
    ld a, a
    ld sp, $1f3f
    rra
    rla
    jr @+$41

    ccf
    rst $38
    rst $38
    adc a
    ld a, a
    ld [$11f8], sp
    pop af
    ld h, e
    ldh [c], a
    pop hl
    and c
    pop hl
    ld h, c
    di
    di
    rst $38
    db $fd
    rlca
    rlca
    ld [bc], a
    inc bc
    ld bc, $1b01
    dec de
    rla
    inc e
    jr jr_007_6586

    ld c, $0f
    rlca
    rlca
    ld e, b
    ld hl, sp-$3c
    ld a, h
    adc h
    db $fc
    ldh a, [c]
    cp $86
    cp $cf
    ld a, e
    cpl
    ei
    rst $38
    rst $38
    db $ed
    ei
    ld b, a
    ld a, a
    inc a
    ccf
    jr nz, jr_007_65c2

    add hl, hl
    ccf
    rra

jr_007_6586:
    ld d, $1e
    rla
    rra
    rra
    nop
    nop
    nop
    nop

jr_007_658f:
    add b
    add b

jr_007_6591:
    ret c

    ret c

    add sp, $38
    jr jr_007_658f

    jr c, jr_007_6591

    ldh a, [$fff0]
    ld h, a
    ld a, l
    dec l
    ccf
    cpl
    ccf
    add hl, de
    add hl, de
    ld bc, $0001
    nop
    ld b, $06
    rlca
    dec b
    db $eb
    sbc l
    rst $38
    inc c
    ld a, [$d11b]
    ld sp, $60a0
    ldh a, [$fff0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld h, l
    ld a, a
    cpl
    ccf
    ld l, $3f
    rra

jr_007_65c2:
    dec e
    rrca
    ld [$090f], sp
    rlca
    dec b
    inc bc
    inc bc
    rst $18
    ldh [rIE], a
    rst $38
    db $ed
    ld a, $46
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld b, $ff
    rst $28
    rst $38
    ei
    db $fd
    rst $38
    db $fc
    sbc $73
    cp a
    pop hl
    ccf
    add sp, -$21
    ldh a, [rIF]
    ld sp, hl
    rst $20
    rst $38
    sbc [hl]
    rst $30
    rst $00
    ei
    ld [hl], c
    ld a, a
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
    ld a, e
    rst $18
    rra
    db $ed
    rst $00
    db $fd
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    rrca
    ld c, $37
    ld a, $ef

Jump_007_6618:
    db $fd
    rst $08
    db $fd
    jp c, $fe5a

    ld l, [hl]
    sbc $6a
    rst $38
    ld b, e
    rst $38
    add hl, de
    cp $27
    db $fc
    ld b, a
    rst $20
    sbc l
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

    ld h, b
    ldh [$ffbe], a
    cp $74
    xor h
    cp l
    sbc $de
    cp a
    ld a, a
    cp a
    rst $38
    dec a
    rst $38
    ld a, $7f
    cp a
    rst $18
    cp l
    cp a
    ret c

    call $b63b
    ld a, e
    rst $38
    ldh a, [c]
    ld a, a
    ldh a, [c]
    rst $18
    or d
    rst $38
    ldh a, [c]
    or $db
    db $fd
    adc e
    ld hl, sp+$18
    db $fc
    inc c
    rst $30
    rra
    cp $21
    ei
    rla
    db $fc
    inc c
    db $f4
    inc c
    ld hl, sp+$18
    rst $08
    ld hl, sp-$11
    db $fc
    scf
    ccf
    rrca
    rrca
    inc de
    rra
    jr jr_007_6696

    ld c, $0f
    rlca
    rlca
    rst $38
    add l
    db $fc
    rst $08
    cp $ff
    di
    rst $38
    sbc h
    rst $38
    jp Jump_007_71ff


    rst $38
    rst $38
    rst $38
    ld [hl], h
    xor h
    cp [hl]
    cp $60
    ldh [$ffc0], a
    ret nz

    add b
    add b
    ret nz

jr_007_6696:
    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    ld h, b
    ld h, b
    ld d, c
    ld [hl], c
    ld l, e
    ld e, d
    ld [hl], a
    ld c, a
    inc a
    daa
    ld a, c
    ld l, a
    or [hl]
    ei
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    and b
    ldh [$ff7e], a
    cp [hl]
    db $f4
    inc l
    nop
    nop
    rrca
    rrca
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    db $db
    or [hl]
    db $ed
    or $3f
    db $e4
    rst $38
    inc h
    rst $38
    inc h
    cp a
    db $e4
    db $ed
    or $9b
    or $76
    ld a, e
    ld e, c
    ld l, a
    cp h
    rst $00
    ld a, e
    sbc a
    and $e7
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    db $f4
    inc l
    ld a, [hl]
    cp [hl]
    and b
    ldh [$ffc0], a
    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld a, [bc]

Jump_007_6700:
    ld c, $0d
    dec bc
    ld c, $09
    rlca
    dec b
    rlca
    ld b, $07
    inc b
    ld b, $06
    ld c, $0a
    ld a, [de]
    ld d, $3a
    ld h, $ff
    rst $38
    ld [hl], c
    adc a
    db $fc
    ld a, a
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
    ld e, $1e
    ld a, [$74e6]
    call z, $f828
    dec bc
    dec c
    rst $38
    ei
    rst $08
    cp d
    ld a, a
    ld c, d
    dec sp
    ld l, $1a
    rra
    add hl, bc
    rrca
    dec c
    rrca
    cp [hl]
    ld h, c
    ld a, a
    ldh [$fffb], a
    db $fc
    rst $30
    inc l
    rst $28
    inc a
    rst $18
    ccf
    cp $07
    ld a, l
    add [hl]
    or b
    ldh a, [$ff90]
    ldh a, [$ff58]
    ld hl, sp-$24
    ld [hl], h
    cp $52
    di
    ld e, l
    rst $38
    rst $18
    ret nc

    or b
    inc d
    rra
    ld l, $33
    ld e, a
    ld h, a
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    db $e3
    ccf
    cp $8e
    pop af
    rst $38
    rst $38
    ld e, h
    ld h, h
    ld e, b
    ld l, b
    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    ldh [rNR41], a
    ldh [$ff60], a
    ldh [$ffa0], a
    ld [hl], b
    sub b
    or b
    ret nc

    ld d, b
    ld [hl], b
    jr nc, jr_007_67b9

    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $7979
    ld l, a
    ld e, [hl]
    ld e, a
    ld h, h
    add b
    add b
    ld b, b
    ret nz

    and c
    ld h, c
    rst $10
    ld [hl], $fe
    ld a, a
    pop hl
    sbc a
    cp h
    ld a, a
    rst $18
    db $e3
    nop
    nop
    ldh [$ffe0], a
    ld h, b
    and b
    and b
    ld h, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

jr_007_67b9:
    ccf
    rst $38
    scf
    dec l
    dec e
    dec de
    ld e, $1b
    dec bc
    ld c, $1b
    ld e, $2b
    ld a, $59
    ld l, a
    cp l
    rst $00
    cp l
    db $e3
    sbc d
    or $d4
    ld a, h
    ret c

    ld a, b
    ret nc

    ld [hl], b
    ld a, b
    ret c

    cp b
    ret c

    db $ec
    or h
    db $fc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld b, $06
    dec b
    rlca
    rlca
    nop
    nop
    ei
    rst $00
    dec a
    cp $87
    ld sp, hl
    ld a, a
    cp $eb
    ld l, h
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld bc, $fa01
    ld h, $f6
    ld a, d
    adc [hl]
    adc [hl]
    add b
    add b
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
    jr @+$1a

    inc [hl]
    inc l
    ld [hl], h
    ld c, h
    ld h, h
    ld e, h
    ld l, h
    ld a, h
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_007_684d

    ld a, b
    ld c, b
    ld h, h
    ld e, h
    jp nz, $92be

    xor $b6
    adc $6e
    ld e, [hl]
    inc a
    inc a
    inc c
    inc c
    ld a, [hl-]
    ld [hl], $79
    ld b, a
    jp hl


    sub a
    rst $28
    sbc a
    cp [hl]
    cp $78
    ld a, b
    nop
    nop
    ld [$683e], sp
    rlca
    rlca
    inc d
    rra
    dec sp
    inc l
    ld d, [hl]
    ld a, c
    ld [hl], a
    ld e, c
    ei
    db $fd

jr_007_684a:
    or l
    xor $9a

jr_007_684d:
    rst $30
    ldh [$ffe0], a
    jr c, jr_007_684a

    ld [hl], h
    db $ec
    cp $ba
    and h
    ld a, [hl]
    ld e, e
    rst $20
    cp l
    jp $bb75


    xor [hl]
    db $dd
    cp l
    jp $e7da


    dec h
    ld a, [hl]
    ld a, a
    ld e, l
    ld l, $37
    inc e
    rra
    rlca
    rlca
    ld e, c
    rst $28
    xor l
    ld [hl], a
    rst $18
    cp a
    xor $9a
    ld l, d
    sbc [hl]
    call c, Call_000_2834
    ld hl, sp-$20
    ldh [rTAC], a
    rlca
    ld e, $1d
    scf
    ccf
    ld l, [hl]
    ld a, a
    ld e, l
    ld l, d
    push de
    ld [$e75a], a
    sbc $61
    and b
    ld h, b
    ld hl, sp-$08
    inc c
    db $fc
    or $0e
    jp c, $bf3e

    ld c, a
    rst $08
    ld a, l
    dec [hl]
    rst $08
    xor h
    di
    di
    cp [hl]
    db $fd
    ldh a, [c]
    ld e, e
    ld a, h
    ld l, a
    ld [hl], b
    jr nc, jr_007_68e9

    rra
    rra
    dec b
    ld b, $7b
    add [hl]
    ld e, d
    rst $20
    xor e
    ld d, a
    cp d
    ld d, [hl]
    halt
    cp $ec
    db $fc
    ld a, b
    cp b

Call_007_68bc:
    ldh [$ffe0], a
    dec hl
    pop bc
    ld l, b
    ld bc, $0601
    rlca
    dec c
    ld c, $17
    jr jr_007_68e0

    dec e
    dec de
    rra
    rrca
    ld a, [bc]
    rrca
    inc c
    ld hl, sp-$08
    db $e4
    inc e
    add d
    ld a, [hl]
    inc sp
    rst $08
    ld a, c
    rst $30
    reti


    rst $38

jr_007_68dd:
    ld sp, hl
    rst $18
    jp hl


jr_007_68e0:
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_68e9:
    ret nz

    ret nz

    jr nc, jr_007_68dd

    ld [$3cf8], sp
    call nz, Call_000_171b
    ccf
    inc l
    jr z, jr_007_6936

    rra
    rra
    ccf
    inc a
    ld e, a
    ld a, a
    rst $30
    cp d
    rst $28
    or l
    reti


    rst $38
    ld [hl-], a
    rst $28
    ld l, d
    rst $18
    db $eb
    rst $18
    ld h, l
    rst $38
    ld sp, hl
    rst $38
    di
    ld c, $e7
    dec e
    ld a, h
    sbc h
    ld hl, sp+$38
    db $fc
    ld a, h
    ld a, h
    db $fc
    cp $fe
    adc $fe
    cp [hl]
    ld h, [hl]
    sbc $36
    xor l
    rst $30
    and a
    ei
    ld d, e
    ld a, a
    inc a
    ccf
    ld d, $19
    rra
    inc e
    cpl
    ld [hl-], a
    ccf
    ccf
    dec c
    rst $38
    rst $38
    cp $fe

jr_007_6936:
    rst $38
    add c
    add c
    ld b, c
    pop bc
    ld b, c
    pop bc
    and d
    db $e3
    db $e3
    db $e3
    sub $3e
    sub h
    ld a, h
    inc l
    db $fc
    db $f4
    db $fc
    inc e
    db $e4
    ld a, $ce
    cp l
    db $d3
    rst $38
    rst $38
    xor l
    rst $30
    and a
    ei
    ld d, d
    ld a, a
    ld a, $3d
    rra
    inc e
    cpl
    ld [hl-], a
    ccf
    ccf
    nop
    nop
    dec c
    rst $38
    rst $38
    cp $82
    add e
    ld b, c
    pop bc
    ld b, c
    pop bc
    and d
    db $e3
    db $e3
    db $e3
    nop
    nop
    sub $3e
    sub h
    ld a, h
    inc l
    db $fc
    db $f4
    db $fc
    ld a, $ce
    cp l
    db $d3
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld c, $0e
    rla
    add hl, de
    cpl
    jr nc, jr_007_69b7

    ld [hl], $26
    ccf
    ld d, a
    ld a, c
    ld e, [hl]
    ld l, [hl]
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
    ld a, [hl]
    ld a, [hl]
    cp c
    rst $00
    or e
    rst $08
    and l
    sbc $e5
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ccf
    ccf
    ld e, $1d
    rrca
    dec bc
    ld h, b
    sbc a
    call z, $9e33
    ld a, l

jr_007_69b7:
    or $ff
    cp $b7
    ld a, [$f60f]
    rst $38
    call z, $803b
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ff4c]
    db $fc
    ld b, d
    cp $5d
    db $e3
    ld a, a
    call $9fff
    ld a, [bc]
    rrca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    ld b, $02
    inc bc
    ld bc, $0301
    inc bc
    ld a, [de]
    rst $30
    ld a, [$e9f7]
    rst $38
    sbc $3f
    ld sp, hl
    rst $20
    di
    ld c, $07
    rst $38
    cp $ff
    cp [hl]
    cp $fc
    db $fc
    cp $fe
    rst $20
    rst $38
    rst $18
    inc sp
    rst $28
    sbc e
    db $eb
    rra
    jp z, Jump_000_073e

    rlca
    rrca
    add hl, bc
    ld e, $13
    db $10
    rra
    jr c, jr_007_6a32

    ld a, l
    ld [hl], e
    cp [hl]
    set 7, a
    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
    pop bc
    pop bc
    ld b, d
    jp $c744


    add h
    add a
    adc d
    adc a
    adc a
    adc a
    inc d

jr_007_6a22:
    db $fc
    db $fc
    db $fc
    inc a
    db $e4
    inc e
    db $e4
    ld l, b
    sbc b
    ld hl, sp+$38
    db $f4
    ld c, h
    db $fc
    db $fc
    rlca

jr_007_6a32:
    rlca
    dec de
    inc e
    ld [hl], $39
    ld e, h
    ld h, e
    ld e, c
    ld [hl], a
    ld l, a
    ld a, a
    ccf
    dec hl

jr_007_6a3f:
    ccf
    jr nc, jr_007_6a22

    ldh [$ff90], a
    ld [hl], b
    ld [$ccf8], sp
    inc a
    rst $20
    rst $18
    ld h, h
    rst $38
    db $e4
    ld a, a
    and h
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
    ret nz

    ret nz

    jr nz, jr_007_6a3f

    db $10
    ldh a, [$ff03]
    inc bc
    dec c
    rrca
    dec sp
    inc a
    halt
    ld l, l
    ld a, d
    ld b, a
    xor $9b
    rst $18
    cp e
    halt
    halt
    ld l, a
    ld e, a
    db $fc
    or e
    and c
    rst $38
    rst $38
    rst $38
    sbc $ff
    ld e, l
    di
    ld l, a
    rst $38
    sub a
    sbc b
    ld h, h
    rst $38

jr_007_6a83:
    ret z

    cp a
    xor c
    ld a, a
    xor a
    ld a, a
    sub c
    rst $38
    db $e3
    cp $c7
    dec a
    adc a
    ld a, [hl]
    jr nc, jr_007_6a83

    ld hl, sp-$08
    db $fc
    db $fc
    sbc [hl]
    xor $fe
    add $b2
    ld l, [hl]
    jp nc, $d23e

    ld a, $18
    rra
    ccf
    daa
    dec a
    daa
    jr nz, jr_007_6ae8

    ld d, $19
    rra
    inc e
    cpl
    ld [hl-], a
    ccf
    ccf
    dec a
    cp $fe
    rst $38
    rrca
    rrca
    add d
    add e
    ld b, d
    jp $c141


jr_007_6abd:
    and c
    pop hl
    pop hl
    pop hl
    sub h
    ld a, h
    jr c, jr_007_6abd

    ldh a, [$fff0]
    ld [$1cf8], sp
    db $e4
    cp [hl]
    adc $7d
    db $d3
    rst $38
    rst $38
    ld a, [bc]
    rrca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec e
    ld e, $3e
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, e
    ld e, a
    ld [hl], c
    ld e, a
    jr nz, jr_007_6b26

    daa

jr_007_6ae8:
    jr c, jr_007_6b09

    inc de
    rra
    dec e
    ld d, $1a
    inc e
    inc e
    rst $38
    rst $38
    ld c, a
    rst $08
    add e
    add e
    add c
    add c
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $1401
    db $fc
    db $fc
    db $fc
    ldh a, [$fff0]
    ld hl, sp-$08

jr_007_6b09:
    call c, $8efc
    ld a, [$fa86]
    inc b
    db $fc
    db $f4
    adc h
    ld a, h
    ld h, h
    ld a, h
    ld e, h
    inc [hl]
    inc l
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1f0f], sp
    rra
    ccf

jr_007_6b26:
    ccf
    ld a, [hl]
    ld a, [hl]
    ld a, e
    ld a, a
    ld [hl], c
    ld e, a
    ld h, c
    ld e, a
    jr nz, jr_007_6b70

    dec a
    cp $fe
    rst $38
    add e
    add e
    ld bc, $0001
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    sub [hl]
    ld a, [hl]
    ld a, $fa
    and $fa
    db $e4
    inc e
    ld hl, sp-$38
    ld hl, sp-$48
    ld l, b
    ld e, b
    jr c, jr_007_6b89

    nop
    nop
    ld a, b
    ld a, b
    ld e, [hl]
    ld l, [hl]
    ld a, e
    ld b, a
    cpl
    jr nc, jr_007_6b83

    jr c, jr_007_6b76

    rra
    rlca
    rlca
    nop
    nop
    ld b, $06
    ld e, $1a
    ld a, [$f4e6]
    inc c
    call z, $383c
    ld hl, sp-$20

jr_007_6b70:
    ldh [$ff31], a
    ld [hl], h
    ld l, e
    dec de

jr_007_6b75:
    dec de

jr_007_6b76:
    cpl
    inc [hl]
    ccf
    ccf
    dec sp
    cpl
    ccf
    inc h
    scf
    ccf
    ld a, a
    ld e, h
    ld e, [hl]

jr_007_6b83:
    ld l, c
    ret nz

    ret nz

    ld h, b
    ldh [$fff0], a

jr_007_6b89:
    ldh a, [$ffe8]
    jr c, jr_007_6b75

    ld e, b
    sub h
    db $ec
    ld d, [hl]

jr_007_6b91:
    xor $c7
    db $fd
    scf
    ccf
    ld l, l
    ld [hl], e
    ld e, [hl]
    ld a, a
    ldh [$ffbf], a

jr_007_6b9c:
    rst $38
    sbc a
    cp a
    ret nz

    and b
    rst $18
    ld a, a
    ld e, a
    adc [hl]
    ld sp, hl
    inc e
    di
    jr c, jr_007_6b91

    di
    rst $08
    push hl
    rra
    rst $20
    dec e
    ld h, l
    sbc a
    ld h, e
    sbc a
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_007_6b9c

    and b
    ldh [$ffa0], a
    ldh [$ffa0], a
    ldh [rLCDC], a
    ret nz

    cp c
    rst $28
    ld e, c
    ld a, a
    ld c, h
    ld [hl], a
    inc l
    ccf
    ld a, e
    ld e, l
    rst $08
    cp a
    ld hl, sp-$08
    nop
    nop
    ld h, b
    sbc a
    ld a, c
    sbc a
    xor e
    cp $7d
    cp $56
    ei
    set 7, l
    ld a, a
    ld a, a
    nop
    nop
    add e
    add e
    rlca
    inc b
    add [hl]
    add l
    call $fa4f
    scf
    ld [hl], e
    sbc a
    db $ec
    db $ec
    nop
    nop
    ldh [$ffe0], a
    ret nc

    ld [hl], b
    and b
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
    cp c
    rst $28
    ld e, c
    ld a, a
    ld c, h
    ld [hl], a
    inc l
    ccf
    dec sp
    dec a
    ld l, a
    ld e, a
    ret nc

    or b
    ldh a, [$fff0]
    ld h, b
    sbc a
    ld a, a
    cp a
    jp hl


    cp a
    ld d, c
    rst $38
    ld d, d
    rst $38
    db $e3
    rst $38
    ccf
    ccf
    nop
    nop
    cp c
    rst $28
    ld e, c
    ld a, a
    ld c, h
    ld [hl], a
    inc l
    ccf
    dec de
    dec e
    scf
    cpl
    ld a, $3e
    nop
    nop
    cp c
    rst $28
    ld e, c
    ld a, a
    ld c, h
    ld [hl], a
    ld l, h
    ld a, a
    ld e, e
    ld a, l
    daa
    ccf
    inc e
    inc e
    nop
    nop
    ld h, b
    sbc a
    ld a, c
    sbc a
    xor e
    cp $7d
    cp $56
    ei
    rst $10
    ei
    dec hl
    dec a
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    rla
    rra
    dec e
    ld e, $3b
    inc l

jr_007_6c6a:
    ld a, h
    ld e, a
    ld d, e
    ld a, a
    dec l
    inc sp
    add hl, hl
    scf
    ld d, d
    ld a, a
    add b
    add b
    ldh [$ff60], a
    jr nc, jr_007_6c6a

    ld l, b
    ld hl, sp-$58
    ret c

    inc d
    db $ec
    ld d, $ee
    rlca
    db $fd
    ld b, b
    ld a, a
    ld e, b
    ld h, a
    ld c, [hl]
    ld [hl], c
    ldh [$ffbf], a
    rst $38
    sbc a
    cp a
    ret nz

    and b
    rst $18
    ld a, a
    ld e, a
    ld c, $f9
    inc e
    di
    jr c, @-$17

    di
    rst $08
    push hl
    rra
    rst $20
    dec e
    ld h, l
    sbc a
    ld h, e
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld a, [hl-]
    ld a, $07
    inc b
    ld a, [bc]
    dec c
    inc d
    rra
    db $10
    rra
    jr nz, @+$41

    jr z, jr_007_6cf7

    ld d, b
    ld l, a
    ld d, b
    ld l, a
    ldh [$ff60], a
    ld d, b
    ldh a, [$ffa8]
    ret c

    jr @-$16

    inc d
    db $ec
    inc d
    db $ec
    ld b, $fe
    rlca
    db $fd
    ld d, b
    ld l, a
    ld e, b
    ld h, a
    ld c, h
    ld [hl], e
    ldh [$ffbf], a
    rst $38
    sbc a
    cp a
    ret nz

    and b
    rst $18
    ld a, a
    ld e, a
    inc bc
    inc bc

jr_007_6ce6:
    rlca
    inc b
    ld a, [bc]
    dec c
    inc d
    rra
    db $10
    rra
    jr nz, jr_007_6d2f

    jr nc, @+$31

    ld d, b
    ld l, a
    and b
    ldh [$ffe0], a

jr_007_6cf7:
    ld h, b
    ld d, b
    ldh a, [$ffa8]
    ret c

    jr jr_007_6ce6

    inc d
    db $ec
    ld d, $ee
    rlca
    db $fd
    ld d, b
    ld l, a
    ld e, b
    ld h, a
    ld c, [hl]
    ld [hl], c
    ldh [$ffbf], a
    rst $38
    sbc a
    cp a
    ret nz

    and b
    rst $18
    ld a, a
    ld e, a
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    cp h
    db $fc
    rst $28

jr_007_6d2f:
    di
    reti


    ld h, a
    db $e3
    rst $38
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    add b
    add b
    ld h, b
    ldh [$ffb8], a
    ld a, b
    nop
    nop
    cp $fe
    ld a, [$940e]
    ld a, h
    call nc, Call_007_68bc
    ld a, b
    ret nc

    or b
    sub b
    ldh a, [$ffa7]
    rst $38
    ld e, d
    ld h, a
    ld d, d
    ld l, a
    and h
    rst $38
    add b
    rst $38
    sbc b
    rst $20
    adc $f1
    ldh [$ffbf], a
    dec a
    sra h
    db $db
    ld e, b
    or a
    jr @-$07

    dec sp
    rst $20
    dec [hl]
    rst $28
    ld [hl], a
    call $dfe5
    jr jr_007_6d8e

jr_007_6d76:
    cp b
    xor b
    ld a, b
    ret z

    ld l, b
    ret c

    jr z, jr_007_6d76

    or b
    ldh a, [$ffb0]
    ldh a, [$ffa0]
    ldh [$ffbf], a
    rst $18

jr_007_6d86:
    ld a, a
    ld b, b
    ld h, b
    ld e, a
    ccf
    cpl
    db $10
    rra

jr_007_6d8e:
    inc c
    rrca
    dec de
    rla
    rra
    rra
    db $e3
    sbc a
    ret nz

    ccf
    di
    rrca
    dec a
    rst $00
    rst $00
    rst $38
    ld a, [hl-]
    rst $38
    ld sp, hl
    rst $38
    rrca
    rrca
    jr nz, jr_007_6d86

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    ldh [$ffe0], a
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
    cp $fe
    ld [$fe16], a
    cp $f2
    adc $00
    nop
    nop
    nop
    nop
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
    ld a, [hl-]
    ld [hl], $0c
    inc c
    ld a, [de]
    ld d, $12
    ld e, $0c
    inc c
    ld a, [de]
    ld d, $3a
    ld h, $fa
    add $00
    nop
    ld bc, $0701
    rlca
    dec bc
    dec c
    rrca
    rrca
    ld c, $0b
    rrca
    add hl, bc
    dec c
    rrca
    rst $30
    ld hl, sp+$0f
    cp $eb
    rst $30
    push de
    dec sp
    rst $38
    ld sp, hl
    ei
    call Call_000_1df3
    db $e3
    db $fd
    ld a, [hl-]
    or $ea
    ld e, $c4
    inc a
    add d
    ld a, [hl]
    sbc d
    ld a, [hl]
    xor l
    ld a, a
    cp l
    ld l, a
    xor l
    ld a, a
    ld a, a
    ld e, h
    ld e, [hl]
    ld l, c
    scf
    ccf
    dec l
    inc sp
    ld e, $1f
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $fd46
    add $fd
    adc [hl]
    ld sp, hl
    ld c, $f9
    dec e
    ldh a, [c]
    pop hl
    rst $38
    ld a, [hl]
    cp $f0
    ldh a, [$ff64]
    db $fc
    ld [$28f8], sp
    ld hl, sp+$50
    ldh a, [$ff78]
    ld hl, sp-$54
    db $f4
    sub [hl]
    ld a, [$fefe]
    inc a
    inc a
    ld b, d
    ld a, [hl]
    cp c
    rst $00
    or c
    rst $08
    and c
    rst $18
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_007_6e80

    inc h
    inc a
    ld [hl], d
    ld c, [hl]
    ld h, d
    ld e, [hl]
    ld b, d
    ld a, [hl]
    inc h
    inc a
    jr jr_007_6e8c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_007_6e96

    inc [hl]
    inc l

jr_007_6e80:
    inc h
    inc a
    jr jr_007_6e9c

    dec b
    add a
    ld l, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d

jr_007_6e8c:
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

jr_007_6e96:
    ld b, l
    nop
    nop
    nop
    nop
    nop

jr_007_6e9c:
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

jr_007_6eb1:
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
    jr nz, jr_007_6eb1

    ld [hl+], a
    rst $38
    rst $38
    ld bc, $6eda
    nop
    nop
    nop
    nop
    jr c, jr_007_6f24

    ld a, h
    add d
    jr c, jr_007_6f28

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $ed
    ld l, [hl]
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    ld [bc], a
    ld a, [hl-]
    ld bc, $3946
    sbc [hl]
    ld h, c
    ld a, [hl]
    nop
    cp l
    ld a, [hl]
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
    cp a
    ld a, a
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    and b
    ret nz

    ldh [$ffc0], a
    ldh [$ffc0], a
    and b
    ret nz

    or a
    ld e, b
    ld a, l
    ld e, $2e
    rra
    rla

jr_007_6f24:
    rrca
    dec bc
    rlca
    dec b

jr_007_6f28:
    inc bc
    inc bc
    ld bc, $0103
    cp a
    ld b, b
    sbc $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_007_6f37:
    rst $38
    rst $38

jr_007_6f39:
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    add b
    ret nz

    nop
    and b
    ret nz

    ret nc

    ldh [$fff0], a
    ldh [$fff0], a
    ldh [$fff0], a
    ret nz

    ret nc

    ldh [rTIMA], a
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0700
    nop
    dec bc
    inc b
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [de], a
    pop hl
    and c
    ld b, b
    di
    nop
    di
    nop
    add sp, -$10
    add sp, -$10
    add sp, -$10
    ldh a, [rP1]
    jr nz, jr_007_6f37

    jr nc, jr_007_6f39

    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld b, $01
    dec bc
    ld b, $3f
    ld b, $4e
    dec [hl]
    sbc l
    ld h, e
    cp e
    ld b, a
    ld a, a
    rla
    cpl
    ld e, $12
    dec c
    ld h, b
    add b
    ldh [rP1], a
    ret nc

    ldh [$fff0], a
    ldh [$fff0], a
    ldh [$ffe0], a
    ret nz

    ret nc

    ldh [$fff0], a
    ldh [$ff0d], a
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0700
    nop

jr_007_6fb9:
    dec bc
    inc b
    rrca
    nop
    dec bc
    ld b, $0f
    inc b
    dec c
    inc bc
    dec bc
    rlca
    rla
    rrca
    rra
    ld c, $3e
    dec e
    dec sp
    dec e
    ld b, b
    add b
    ldh [rP1], a
    ret nc

    ldh [$fff8], a
    ldh a, [$fff4]
    ret c

    db $fc
    ret c

    call c, $fce8
    ldh [$ff5d], a
    inc hl
    ld c, a
    inc sp
    scf
    inc bc
    inc bc
    nop
    ld bc, $0700
    nop
    dec bc
    inc b
    rrca
    nop
    ldh a, [c]
    db $ec
    db $ec
    ldh a, [$ffe8]
    ldh a, [$fff0]
    nop
    jr nz, @-$3e

    jr nc, jr_007_6fb9

    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rlca
    ld [bc], a
    ld c, $05
    ld c, $05
    ld c, $05
    ld a, [hl]
    nop
    rst $38
    ld a, [hl]
    rst $08
    rst $38
    ld hl, sp-$39
    db $dd
    ld h, d
    ld e, l
    rst $38
    ld e, l
    or d
    db $ed
    ld d, d
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    rlca
    ld [bc], a
    inc bc
    nop
    rlca
    ld bc, $070b
    rla
    rrca
    rra
    rrca
    daa
    dec de
    inc hl
    dec e
    ldh a, [$ffef]
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ldh a, [rNR41]
    ret nz

    ldh a, [$ff60]
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ld hl, sp-$30
    db $fc
    sbc b
    ldh a, [c]
    ld l, h
    inc hl
    dec e
    rra
    inc bc
    dec bc
    rlca
    dec bc
    rlca
    rlca
    nop
    ld c, $01
    dec de
    inc c
    rra
    nop
    rst $38
    cp $ff
    cp $ff
    db $fc
    db $fd
    ld a, [$07f8]
    ld b, h
    add e
    rst $28
    nop
    rst $28
    nop
    ldh a, [c]
    db $ec
    db $fc
    ldh [$ffe0], a
    ret nz

    ldh [$ffc0], a
    ret nz

    nop
    ldh [rP1], a
    or b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100

Call_007_70bc:
    nop
    ld bc, $0300
    ld bc, $2327
    rlca
    ld [bc], a
    ld c, $05
    ld l, [hl]
    dec b
    cp [hl]
    ld b, l
    cpl
    jp nc, Jump_007_7eff

    rst $08
    rst $38
    ld hl, sp-$39
    db $dd
    ld h, d
    ld e, l
    rst $38
    ld e, l
    or d
    db $fd
    ld d, d
    ldh a, [$ffef]
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    jp z, $d580

    adc d
    ld sp, $0fce
    ldh a, [$ff9f]
    ld l, e
    ld a, a
    rra
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rst $30
    add sp, -$01
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ldh a, [rIE]
    cp $f1
    ld l, [hl]
    ld a, [$fc64]
    ld l, b
    ld hl, sp-$10
    ldh a, [$ffc0]
    ldh a, [$ffa0]
    ldh a, [$ff60]
    ldh a, [$ffe0]
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    nop
    rlca
    nop
    rrca
    nop
    dec c
    ld b, $0f
    nop
    rst $38
    cp $ff
    db $fc
    db $fd
    ld a, [$07f8]
    ld l, l
    add d
    rst $28
    nop
    rst $00
    nop
    rst $00
    nop
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    ret nz

    ldh [rP1], a
    rra
    ld d, b
    ld [hl], c
    cp $fe
    cp d
    cp $ba
    and $ba
    cp $ba
    and $ba
    cp $ba
    add $fe
    cp $ff
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
    rst $38
    rst $38
    adc e
    db $f4
    ld a, a
    ld a, a
    ld d, a
    ld l, b
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, h
    ld e, a
    ld l, a
    rst $38
    rst $38
    pop de
    cpl
    cp $fe
    ld [$fa16], a
    or $fa
    or $ea
    ld d, $ea
    or $03
    inc bc
    rrca
    ld c, $11
    ld e, $21
    ld a, $41
    ld a, a
    ld b, c
    ld a, [hl]
    ld c, l
    ld a, [hl]
    rst $38
    or e
    rst $38
    and c
    rst $38
    and [hl]
    cp a
    and $7f
    ld h, b
    ccf
    daa
    rra
    inc de
    rrca
    inc c
    inc bc
    inc bc
    rra
    rra
    cpl
    jr nc, jr_007_7224

    ld a, a
    or b
    rst $38
    and [hl]
    ld sp, hl
    xor b
    rst $30
    and b
    rst $38
    and b
    rst $38
    rst $30
    rst $30
    call $873e
    rst $38
    push bc
    cp $45
    cp $4f
    rst $38
    ld d, h
    ei
    ld e, a
    rst $38
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh a, [$ffd0]
    ldh a, [$ffbc]
    db $fc
    ld l, d
    sub $b0
    rst $38
    ld e, a
    ld a, a
    ld l, a
    ld [hl], b
    ccf
    ccf
    ccf
    ccf
    ld a, [hl+]
    dec [hl]
    dec d
    ld a, [de]
    rrca

Jump_007_71ff:
    rrca
    sub $f9
    sbc a
    or $3f
    or $ff
    or $d6
    ld sp, hl
    adc b
    ld a, a
    ld b, a
    cp a
    rst $38
    rst $38
    inc a
    db $fc
    db $10
    ldh a, [$ff3c]
    db $fc
    ld l, d
    sub $3c
    db $fc
    or b
    ldh a, [$fff0]
    ldh a, [$ffe0]
    ldh [rIE], a
    rst $38
    adc e
    db $f4

jr_007_7224:
    ld a, a
    ld a, a
    ld d, a
    ld l, b
    ld d, a
    ld l, a
    ld e, a
    ld l, [hl]
    ld e, a
    ld l, [hl]
    ld d, a
    ld l, a
    rst $38
    rst $38
    pop de
    cpl
    cp $fe
    ld [$ea16], a
    or $fa
    halt
    ld a, [$ea36]
    sub [hl]
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $28
    sbc e
    rst $20
    db $fd
    add e
    sbc e
    rst $20
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    xor d
    xor d
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    xor d
    rst $38
    xor d
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    rst $38
    xor e
    rst $38
    xor e
    xor e
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    dec de
    inc e
    ccf
    scf
    ld a, a
    ld l, [hl]
    ld a, a

jr_007_7289:
    ld h, h
    cp a
    ld [$aeff], a
    ei
    xor [hl]
    ldh [$ffe0], a
    ret c

    jr c, jr_007_7289

    db $ec
    ld a, [$9efe]
    ld a, [$ff8d]
    adc a
    db $fd
    rst $38

jr_007_729f:
    db $fd
    ei
    cp a
    ldh a, [$ffbf]
    or b
    rst $38
    ld a, b
    ld e, a
    ld e, a
    ld a, a
    cpl
    scf
    dec de
    inc e
    rlca
    rlca
    rst $38
    or l
    rst $38
    or l
    db $fd
    add a
    cp $b6
    cp $b6
    db $fc
    db $fc
    ret c

    jr c, jr_007_729f

    ldh [rTAC], a
    rlca
    rra
    ld e, $3f
    ld sp, $6e7f
    ld a, c

jr_007_72c9:
    ld l, a
    cp c
    rst $28
    rst $38
    xor [hl]
    rst $38
    or c
    ldh [$ffe0], a
    ret c

    jr c, jr_007_72c9

    db $ec
    ld a, [$9efe]
    ld a, [$ff8d]
    adc a
    db $fd
    rst $28

jr_007_72df:
    db $fd
    cp $bf
    ldh a, [$ffbf]
    or b
    rst $38
    ld a, b
    ld e, a
    ld e, a
    ld a, a
    cpl
    scf
    dec de
    inc e
    rlca
    rlca
    rst $28
    cp l
    rst $28
    cp l
    db $ed
    cp a
    cp $be
    cp $86
    db $fc
    db $fc
    ret c

    jr c, jr_007_72df

    ldh [rTAC], a
    rlca
    dec bc
    inc c
    rra
    rra
    dec l
    dec sp
    ld e, e
    ld [hl], a
    rst $38
    rst $38
    sub a
    add sp, -$69
    add sp, -$40
    ret nz

    and b
    ld h, b
    ldh a, [$fff0]
    ld l, b
    cp b
    or h
    call c, $fefe
    jp nc, $d22e

    ld l, $df
    ei
    rst $38
    rst $38
    ld c, e
    ld [hl], h
    rst $38
    rst $38
    sub a
    add sp, -$69
    add sp, -$29
    add sp, $7f
    ld a, a
    or $be
    cp $fe
    and h
    ld e, h
    cp $fe
    jp nc, $d22e

    ld l, $d6
    ld l, $fc
    db $fc
    ld a, $43
    ld [hl], e
    ld bc, $0701
    ld b, $0e
    ld [$1019], sp
    ld [hl-], a
    inc hl
    scf
    ld h, $6f
    ld c, l
    ld l, e
    ld c, c
    rst $38
    rst $38
    rst $38
    jr nc, @-$0d

    ld l, [hl]
    ldh [$ff1f], a
    ldh [$ffdf], a
    db $fc
    inc bc
    ld a, [$bd3d]
    ld c, [hl]
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    or b
    db $10
    sbc b
    ld [$88d8], sp
    call z, $cc84
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec bc
    inc b
    ld c, $01
    rrca
    ld b, $16
    add hl, bc
    ld h, e
    ld b, c
    jp nc, $c391

    add b
    rst $00
    add c
    rst $38
    dec b
    dec sp
    call z, $e817
    dec e
    ldh [c], a
    cp l
    ld c, [hl]
    cp c
    cp $79
    add [hl]
    add e
    ld a, l
    rst $38
    add e
    rst $38
    rst $38
    rst $30
    rst $28
    inc hl
    sbc $ec
    inc b
    sub $e2
    sub [hl]
    ld h, d
    or $02
    sub $62
    sub a
    ld h, d
    sbc a
    ld h, c
    ld [de], a
    db $ed
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
    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    db $10
    rrca
    dec e
    rrca
    rst $38
    ld a, [bc]
    cp a
    ld b, d
    rst $38
    rra
    ld a, a
    ld e, $df
    ld l, h
    rst $38
    ld [bc], a
    rst $00
    ld hl, sp-$04
    db $e3
    cp $4d
    di
    ld e, [hl]
    ei
    sub [hl]
    ei
    ld d, [hl]
    sbc a
    db $ed
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld sp, hl
    cp b
    rst $20
    db $e3
    rra
    ret nz

    ccf
    ld [hl], b
    adc a
    cp h
    jp Jump_000_00ff


    rst $38
    nop
    ld [hl-], a
    call z, $e6ff
    rst $38
    and $19
    and $19
    and $32
    call z, Call_000_00fc
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sub b
    ldh [$ff90], a
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    adc b
    ld [hl], b
    ld b, h
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp+$44
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld hl, sp+$00
    ld b, $f8
    pop af
    cp $f1
    cp $06
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec bc
    inc b
    ld c, $01
    rrca
    ld b, $16
    add hl, bc
    db $10
    rrca
    dec e
    rrca
    ld h, e
    ld b, c
    sub $91
    rst $08
    inc b
    dec sp
    call $e917
    rra
    ldh [c], a
    push bc
    ld a, [$fce3]
    rst $38
    ld a, [bc]
    cp a
    ld b, d
    rst $38
    rra
    ccf
    inc e
    ccf
    nop
    ld a, a
    jr nz, @-$2f

    ld [hl], b
    rst $38
    nop
    rst $20
    ld a, b
    db $fc
    ld h, e
    cp $cd
    di
    ld e, [hl]
    ei
    ld d, $fb
    ld d, [hl]
    sbc a
    db $ed
    rst $38
    nop
    ld [hl], h
    jr c, jr_007_74ae

    nop

jr_007_7477:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ccf
    inc sp
    ld a, [hl]
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
    ldh [$ffe0], a
    ld hl, sp+$18
    inc a
    call nz, RST_00
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc

jr_007_74ae:
    ld [bc], a
    dec de
    ld [bc], a
    rra
    nop
    sub $9d
    cp a
    jr nc, jr_007_7477

    add hl, hl
    dec e
    ld a, [bc]
    ld d, l
    ld c, a
    dec de
    inc b
    inc a
    dec bc
    rst $38
    cpl
    ld d, $e2
    sbc e
    ld [hl], c
    db $db
    or c
    db $fd
    ret nz

    cp e
    call c, $cc33
    ld a, a
    ldh [$fffb], a
    db $ec
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
    or b
    add b
    ldh a, [$ffa0]
    ld e, $0d
    inc l
    inc de
    dec hl
    rra
    rst $38
    dec d
    cp a
    ld b, l
    rst $38
    ld a, $bf
    ld e, l
    rst $38
    inc b
    ld e, a
    and [hl]
    ld l, d
    sub l
    ccf
    ret nz

    push af
    cpl
    rst $18
    ld [hl], b
    ei
    ld d, h
    ld a, l
    xor [hl]
    rst $38
    nop
    ld [hl], e
    db $ec
    ld [hl+], a
    db $dd
    rst $38
    nop
    rst $20
    sbc l
    sbc a
    ld a, [hl]
    ld bc, $c2fe
    dec a
    rst $38
    nop
    ret nc

    ld h, b
    and b
    ld b, b
    ret c

    nop
    db $e4
    sbc b
    ldh a, [c]
    cp h

jr_007_751d:
    ld [hl], d
    cp h
    ld h, h
    sbc b
    sbc b
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b

jr_007_752a:
    inc b
    nop
    inc b
    ld [$0008], sp
    ld [$0800], sp
    ld [hl], b
    ld a, h
    cp h
    add e
    ld [hl], e

jr_007_7538:
    inc l
    add c

jr_007_753a:
    ld a, [hl]
    db $db
    ld a, h
    ei
    ld l, $fb
    ld a, [hl]
    rst $30
    inc a
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_007_754a:
    ld b, b
    nop
    ld b, b
    add b
    jr nz, jr_007_7590

    and b
    call z, Call_000_3f20
    nop
    dec l
    ld d, $20
    rra
    cp $0b
    sbc a
    ld a, [hl]
    ld a, a
    jr c, jr_007_751d

    ld d, [hl]
    rst $38
    nop
    rst $38
    ld c, l
    db $e4
    sbc e
    rst $38
    nop
    call c, $f733
    rst $08
    ldh [$ff9f], a
    jr c, jr_007_7538

    rst $38
    nop
    ld e, h
    xor b
    ld a, b
    sub b
    ret nc

    jr nz, jr_007_752a

    ld b, b
    ldh a, [$ffa0]
    ld d, b
    and b
    or b
    ld b, b
    ldh [rP1], a
    ld e, h
    xor b
    ld a, b
    sub b
    ret nc

    jr nz, jr_007_753a

    ld b, b
    ld hl, sp-$54
    ld e, b
    xor h
    or b

jr_007_7590:
    ld b, b
    ldh [rP1], a
    ld e, h
    xor b
    ld a, b
    sub b
    ret nc

    jr nz, jr_007_754a

    ld b, [hl]
    db $fc
    xor a
    ld e, h
    xor a
    or b
    ld b, [hl]
    ldh [rP1], a
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    ld [$0008], sp
    ld [$003f], sp
    dec l
    ld d, $20
    rra
    cp $0b
    sbc a
    ld a, [hl]
    ld a, a
    ld [hl-], a
    ld a, a
    nop
    cp l
    ld b, [hl]
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $01
    rrca
    ld b, $16
    add hl, bc
    db $10
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, Call_000_3e00
    call nz, $ec1e
    rra
    ldh [$ffc4], a
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
    nop
    nop
    rst $38
    nop
    ld bc, $1dfe
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld b, d
    rst $38
    rra
    ccf
    ld e, $7f
    dec c
    sbc $63
    ei
    nop
    push hl
    ei
    cp $61
    rst $38
    ld c, h
    di
    sbc $fb
    ld d, $fb
    sub [hl]
    ccf
    call z, Call_000_00fe
    rst $38
    call z, $d63b
    dec sp
    sub $ff
    nop
    ccf
    rst $18
    rst $18
    ccf
    ldh [$ff1f], a
    rra
    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    db $ec
    nop
    ld a, [$fd6c]
    ld l, [hl]
    sbc d
    ld l, h
    db $ec
    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ldh [rP1], a
    db $fc
    ld h, b
    ld a, [$9c6c]
    ld h, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    ld c, $01
    rrca
    ld b, $16
    add hl, bc
    db $10
    rrca
    nop
    nop

jr_007_7655:
    nop
    nop
    nop
    nop
    add $00
    ld a, [hl-]
    call nz, $ec16
    ld e, $e0
    rst $00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, $1f
    jr nz, @+$21

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
    ldh a, [rP1]
    cp b
    ld d, b
    add sp, $30
    jr z, @+$01

    sub a
    rst $38
    ccf
    ret nz

    ei
    rlca
    cpl
    rst $18
    ret nz

    ccf
    ldh [$ff1f], a
    rra
    nop
    jr nc, jr_007_7655

    ldh [$ffc0], a
    ld hl, sp+$00
    db $f4
    cp b
    db $fc
    ret c

    inc h
    ret c

    ld b, h
    cp b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00

jr_007_76ab:
    cp $04

jr_007_76ad:
    ld a, [hl-]
    call z, $e816
    inc e
    ldh [$ff03], a
    nop
    rlca
    inc bc
    inc b
    inc bc
    rlca
    nop
    rrca
    rlca
    ld [$1f07], sp
    rrca
    jr nz, jr_007_76e2

    ldh [rP1], a
    ret nc

    ldh [rNR10], a
    ldh [$fff0], a
    nop
    ret nc

    ldh [rNR11], a
    ldh [$ff9f], a
    pop hl
    ld [de], a
    db $ed
    ld c, $00
    rra
    inc c
    inc a
    dec de
    ld a, b
    rlca
    cp b
    ld [hl], a
    rst $38
    nop
    cp $4f
    rst $28

jr_007_76e2:
    ld d, e
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_007_76ab

    jr nz, jr_007_76ad

    jr nc, @-$1e

    or b
    ld h, b
    ld [hl], b
    and b
    inc bc
    ld bc, $0102
    inc bc
    nop
    rlca
    ld bc, $05ff
    dec sp
    call z, $e817
    dec e
    ldh [c], a
    ldh [rP1], a
    ret nc

    ldh [$ff90], a
    ld h, b
    ldh a, [rP1]
    ret nc

    ld h, b
    sub c
    ld h, b
    sbc a
    ld h, c
    ld [de], a
    db $ed
    nop
    nop
    or b
    jr nc, jr_007_7790

    adc b
    inc l
    call nz, $c226
    ld [hl], $e2
    or e
    ld h, c
    ld [hl], e
    and c
    inc d
    ld h, $77
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $9966


    ld b, d
    cp l
    jp $c33c


jr_007_7733:
    inc a
    jp $c33c


jr_007_7737:
    inc a
    jp $c33c


jr_007_773b:
    inc a
    ld b, d

jr_007_773d:
    cp l
    ld h, [hl]

jr_007_773f:
    sbc c
    inc a

jr_007_7741:
    jp $ff00


    nop

jr_007_7745:
    rst $38
    nop

jr_007_7747:
    rst $38
    nop
    rst $38
    jr jr_007_7733

    ld a, b
    add a
    jr jr_007_7737

    jr @-$17

    jr jr_007_773b

    jr jr_007_773d

    jr jr_007_773f

    jr jr_007_7741

    jr @-$17

    jr jr_007_7745

    jr jr_007_7747

    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $b14e


    add [hl]
    ld a, c
    ld b, $f9
    ld b, $f9
    inc b
    ei
    ld [$18f7], sp
    rst $20
    db $10
    rst $28
    ld hl, $7fde
    add b
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $b14e


    add [hl]
    ld a, c

jr_007_7790:
    ld b, $f9
    inc c
    di
    ld e, $e1
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add $39
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld d, $e9
    ld h, $d9
    ld h, $d9
    ld b, [hl]
    cp c
    add [hl]
    ld a, c
    rst $38
    nop
    ld b, $f9
    ld b, $f9
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    inc a
    jp $bf40


    ld [hl], b
    adc a
    ld a, h
    add e
    inc e
    db $e3
    ld b, $f9
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    call nz, $f83b
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1c
    db $e3
    jr nc, @-$2f

    ld h, b
    sbc a
    ld e, h
    and e
    and $19
    jp $c33c


    inc a
    jp $c33c


    inc a
    ld h, [hl]
    sbc c
    inc a

jr_007_7801:
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, [hl]
    add c
    add d
    ld a, l
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld [$08f7], sp
    rst $30
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_007_7801

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, d
    sbc l
    inc [hl]
    rr h
    db $e3
    ld [hl], $c9
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld [hl-], a
    call $e31c
    nop
    rst $38
    nop
    rst $38
    nop

jr_007_7847:
    rst $38
    nop
    rst $38
    inc a
    jp $9966


    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld h, e
    sbc h
    ld a, $c1
    ld b, $f9
    inc c
    di
    jr jr_007_7847

    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    inc h
    ld l, c
    ld a, b
    nop
    nop
    nop
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
    ccf
    nop
    nop
    nop

jr_007_787b:
    nop
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
    db $fc
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    or $09
    ld d, a
    ccf
    ld [hl], a
    add hl, hl
    ld [hl], a
    add hl, hl
    ld d, a
    ccf
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    xor $10
    ld l, h
    sub b

jr_007_78a3:
    db $ec
    sub b
    sbc b
    ldh [rNR23], a
    ldh [$ff2e], a
    ld de, $0f10
    ccf
    nop
    jr nc, jr_007_78c0

    ld d, b
    cpl
    ld [hl], b
    cpl
    rst $38
    ld h, b
    rst $38
    ld b, c
    jr nc, jr_007_787b

jr_007_78bb:
    ld d, b
    and b
    adc b
    ld [hl], b
    inc e

jr_007_78c0:
    ld hl, sp+$7c
    cp b
    ld a, $dc
    cp $1c
    cp $14
    ld a, a
    dec bc
    rra
    rlca
    add hl, de
    rlca
    jr nz, @+$21

    dec a
    ld [bc], a
    rra

jr_007_78d4:
    nop
    ld c, $00
    nop
    nop
    cp $8c
    call c, $c080
    nop
    and b
    ld b, b
    jr nz, jr_007_78a3

jr_007_78e3:
    ld h, b
    add b

jr_007_78e5:
    ret nz

    nop
    nop
    nop
    ld l, $11
    db $10
    rrca
    rra
    nop
    jr nc, jr_007_7900

    jr nc, jr_007_7902

    ld d, b
    cpl
    ld a, a
    jr nz, jr_007_7937

    nop
    jr nc, jr_007_78bb

jr_007_78fb:
    ld h, b

jr_007_78fc:
    add b
    sub b
    ld h, b
    db $10

jr_007_7900:
    ldh [$ffb8], a

jr_007_7902:
    ld [hl], b
    ld hl, sp+$70
    ld hl, sp-$10
    ldh a, [$ffe0]
    ccf
    nop
    rra
    dec bc
    rra
    dec bc
    rrca
    inc bc
    ld c, $01
    rlca
    nop
    inc b
    inc bc
    rlca
    nop
    ldh a, [$ff60]
    ldh [$ff80], a
    ret nz

    add b
    ld b, b
    add b
    jr nz, jr_007_78e3

    jr nz, jr_007_78e5

    ld h, b
    add b
    ldh [rP1], a
    ld l, $11
    db $10
    rrca
    rra
    nop
    db $10
    rrca
    ld de, $130e
    dec c
    rra
    inc bc

jr_007_7937:
    rra
    inc bc
    jr nc, jr_007_78fb

    ld h, b
    add b
    or b
    ld b, b
    db $10
    ldh [$ff90], a
    ldh [$ffe0], a
    ret nz

    ldh [$ffc0], a
    ret nz

    add b
    rra
    add hl, bc
    ccf
    inc e
    ld l, l
    jr jr_007_78d4

    ld a, b
    db $e4
    jr @+$7a

    nop
    jr c, jr_007_7957

jr_007_7957:
    nop
    nop
    ldh [rP1], a
    ldh [rLCDC], a
    ldh a, [$ffe0]
    ret z

    ld [hl], b
    ret z

    jr nc, jr_007_78fc

    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    ld c, b
    cp e
    db $fc
    cp a
    ld c, h
    cp h
    ld c, a
    ldh [rP1], a
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld [hl], b
    add b
    ld h, b
    add b
    ld h, b
    add b
    call z, $0200
    ld bc, $0001
    inc bc
    nop
    ld c, $03
    rla
    add hl, bc
    ld a, [hl-]
    dec e
    dec sp
    inc e
    ld [hl], $18
    cp b
    rst $38
    ld a, c
    add [hl]
    add d
    ld a, l
    ld a, h
    add e
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    rst $38
    nop
    sbc [hl]
    inc c
    cp $04
    ccf
    db $fc
    sbc a
    ld a, [hl]
    cp $00
    add b
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    ld c, $01
    db $10
    rrca
    rra
    nop
    rst $38
    nop
    rst $38
    add c
    rst $20
    jp $81c3


    ld hl, $11c0
    ldh [rNR23], a
    ldh [$fff8], a
    nop
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    sub b
    ldh [$ff0c], a
    ldh a, [$ff82]
    ld a, h
    add c
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0103
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    jp Jump_007_6700


    ret nz

    rst $10
    ldh [$ffbf], a
    ret nz

    rst $38
    ret nc

    db $fd
    ld a, e
    ld a, a
    ld a, [hl-]
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
    ld l, a
    sub b
    ld [hl], a
    ld hl, sp+$7d
    sbc d
    nop
    nop
    adc h
    nop
    ld a, [de]
    inc c
    db $ed
    ld e, $f7
    ld c, $fe
    inc l
    db $fc
    ld a, b
    ld hl, sp+$70
    scf
    ld a, [de]
    dec d
    dec bc
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102

jr_007_7a57:
    rrca
    nop
    ld a, c
    sbc [hl]
    ld [hl], c
    cp $e2
    dec e
    db $f4
    dec bc
    ld hl, sp+$07
    ld bc, $01fe
    cp $87
    ld a, b
    ld [hl], b
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld c, $3f
    rra
    daa
    rra
    inc hl
    inc e
    ld b, d
    inc a
    ldh a, [c]
    inc c
    cp $00
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $1f
    ld c, $1f
    ld c, $1f
    ld c, $27
    ld e, $22
    inc e
    ld h, $18
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    jr jr_007_7a57

    ld a, d
    nop
    nop
    nop
    nop
    nop
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
    nop
    jr nc, jr_007_7acd

    ld e, a
    ccf
    cp a
    ld a, a
    cp a
    ld l, d
    push de
    ld a, [hl+]
    ld d, [hl]
    ccf
    ld [hl], a
    add hl, hl
    ld [hl], a
    add hl, hl
    ld a, b

jr_007_7acd:
    add b
    inc [hl]
    ret c

    sbc d
    db $ec
    sbc [hl]
    db $ec
    sbc l
    ld l, [hl]
    ld a, l
    adc [hl]
    ld e, c
    xor [hl]
    dec d
    ld [$1f2b], a
    ld d, $09
    ld a, [bc]
    dec b
    rra
    dec bc
    jr jr_007_7aed

    jr c, jr_007_7aff

    ld [hl], h
    dec sp
    rst $28
    ld [hl], e
    dec de

jr_007_7aed:
    db $e4
    inc [hl]
    ret nz

    ld [hl], b
    and b
    ld a, b
    ldh a, [$ff78]
    or b
    ld e, h
    cp b
    xor $dc
    sbc a
    xor $f8
    rlca
    db $10

jr_007_7aff:
    rrca
    db $10
    rrca
    ld [$0707], sp
    nop
    dec bc
    ld b, $11
    ld c, $1f
    nop
    rla
    add sp, $08
    ldh a, [rNR10]
    ldh [$ff78], a
    sub b
    db $fc
    jr c, jr_007_7b8b

    jr @+$4a

    jr nc, jr_007_7b93

    nop
    nop
    nop
    nop
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
    nop
    ld h, b
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
    cp b
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, a
    ld a, [hl]
    rst $38
    cp $ab
    sub $29
    xor l
    ld a, [hl]
    rst $28
    ld d, d
    xor $53
    xor h
    ld a, a
    ld [hl], h
    cp b

jr_007_7b5e:
    ld a, [hl-]
    call c, $dc3a
    add hl, sp
    sbc $b9
    ld e, [hl]
    ld [hl], c
    sbc [hl]
    ld h, l
    cp d
    sub [hl]
    ld l, b
    inc l
    inc de
    db $10
    rrca
    ld a, $17
    jr nc, @+$11

    ld [hl], b
    cpl
    ld l, c
    scf
    rst $18
    ld h, a
    ldh a, [rIF]
    ld [hl], h
    add b
    ldh [rLCDC], a
    ldh a, [$ffe0]
    ldh a, [$ff60]
    ldh a, [$ff60]
    cp b
    ld [hl], b
    db $fc
    cp b
    ld e, h

jr_007_7b8b:
    and b
    jr nz, jr_007_7bad

    jr nz, jr_007_7baf

    db $10
    rrca
    rrca

jr_007_7b93:
    nop
    rlca
    ld bc, $0304
    inc b
    inc bc
    rlca
    nop
    jr nc, jr_007_7b5e

    jr nz, @-$3e

    ret nz

    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    ld h, b

jr_007_7bad:
    rra
    cp h

jr_007_7baf:
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    xor e
    sub $29
    xor l
    ld a, [hl]
    rst $28
    ld d, d
    xor $53
    cp b
    nop
    ld [hl], h
    cp b
    ld a, [hl-]
    call c, $dc3a
    add hl, sp
    sbc $b9
    ld e, [hl]
    ld [hl], c
    sbc [hl]
    ld h, l
    cp d
    xor h
    ld a, a
    ld e, c
    ld h, $2b
    dec d
    add hl, sp
    rrca
    inc hl
    dec e
    ld h, d
    dec e
    ld d, e
    ld l, $bf
    ld c, [hl]
    sub [hl]
    ld l, b

jr_007_7bde:
    xor b
    ld b, b

jr_007_7be0:
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$ffc0], a
    ldh [$ffc0], a
    ldh a, [$ffe0]
    pop hl
    ld e, $40
    ccf
    ld b, b
    ccf
    ld hl, $1f1e
    nop
    dec d
    ld c, $22
    dec e
    ccf
    nop
    ld [hl], b
    add b
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    jr nz, jr_007_7c2d

    jr nz, jr_007_7c2f

    db $10
    rrca
    rrca
    nop
    ld c, $05
    inc d
    dec bc
    rra
    nop
    nop
    nop
    jr nc, jr_007_7bde

    jr nz, jr_007_7be0

    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    ret nz

    nop
    nop
    nop
    dec l

jr_007_7c2d:
    cpl
    ld a, h

jr_007_7c2f:
    ld a, $3e
    ld l, a
    ld [hl], e
    ld e, a
    ld h, c
    ld e, a
    ld h, c
    ld c, l
    ld [hl], e
    ld h, e
    ld a, a
    ld a, $3e
    nop
    nop
    nop
    nop
    jr nz, jr_007_7c63

    ld d, a
    ld [hl], a
    ld a, b
    ld e, a
    ld [hl], a
    ld e, b
    ld l, a
    ld d, b
    ld a, h
    ld h, e
    ld a, b
    ld h, a

jr_007_7c4f:
    nop
    nop
    ld b, $06
    jp c, Jump_000_3cde

    db $f4
    call z, $e83c
    jr jr_007_7c90

    call z, $ec14
    ld e, b
    ld [hl], a
    ld e, [hl]
    ld a, a

jr_007_7c63:
    ld b, [hl]
    ld a, e
    ld a, [hl-]
    daa
    dec hl
    scf
    jr jr_007_7c8a

    rlca
    rlca
    nop
    nop
    inc d
    db $ec
    inc d
    db $ec
    inc d
    db $ec
    jr z, jr_007_7c4f

    inc e
    db $fc
    ld a, [$fcc6]
    db $fc
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
    rlca
    dec b
    rlca

jr_007_7c8a:
    dec b
    dec b
    rlca
    dec c
    dec bc
    dec c

jr_007_7c90:
    dec bc
    ld a, [bc]
    ld c, $1a
    ld d, $1a
    ld d, $13
    rra
    ld [hl], $2f
    add hl, sp
    ld l, $37
    jr c, jr_007_7ca0

jr_007_7ca0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc bc
    rst $38
    ld hl, sp+$07
    cp $01
    inc bc
    inc bc
    dec b
    rlca
    ld a, [de]
    ld e, $34
    inc l
    db $e4

jr_007_7cb8:
    call c, $b8c8
    sub b

jr_007_7cbc:
    ldh a, [rSVBK]

jr_007_7cbe:
    ldh a, [$ff6f]
    ld [hl], b

jr_007_7cc1:
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    cp h
    jp $c3fc


    ld hl, sp-$39
    ei
    and a
    rst $38
    sbc h
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$01
    cp $31
    cp $f0
    rst $18
    and b
    ld a, a
    jr nz, @+$01

    jr nz, jr_007_7cc1

    and b
    ld h, b
    sub b
    ld [hl], b
    ret nc

    jr nc, jr_007_7cb8

    jr nc, @-$2e

    jr nc, jr_007_7cbc

    jr nc, jr_007_7cbe

    jr nc, @-$40

    pop bc
    sbc b
    rst $20
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_007_7d38

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    ld b, b
    rst $38
    ld b, b
    rst $38
    add c
    cp $81
    cp $82
    db $fd
    ld c, c
    rst $30
    scf
    rst $38
    ld hl, sp-$08
    pop de
    ld sp, $7ebf
    cp b
    ld h, a
    ld b, e
    rst $38
    sbc h
    db $fc
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    adc b
    ld a, b
    ld [hl], b
    ldh a, [$ff80]
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
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    cpl

jr_007_7d38:
    jr nc, jr_007_7d79

    jr nz, jr_007_7d9b

    ld h, b
    ld a, [hl]
    ld b, c
    cp $fe
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop bc
    ld a, $00
    rst $38
    nop

jr_007_7d4e:
    rst $38
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ffd0], a
    jr nc, @-$16

    jr jr_007_7d4e

    inc c
    ld [hl], h
    adc h
    ld a, [hl-]
    add $be
    pop bc
    cp h
    jp $c3bc


    cp h
    db $eb
    db $dd
    rst $30
    xor d
    xor e
    ld d, l
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
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

jr_007_7d79:
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld a, [de]
    and $1d
    db $e3
    dec c
    di
    dec c
    di
    dec c
    di
    dec c
    di
    dec c
    di
    ld a, [bc]
    or $55
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    ld [bc], a

jr_007_7d9b:
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    and b
    cp a
    ld d, b
    ld a, a
    and b
    cp a
    ld d, c
    ld e, [hl]

jr_007_7da9:
    and b
    cp a
    ld a, a
    ld a, a
    nop
    nop
    ld a, [de]
    and $14
    db $ec
    inc h
    call c, $b848
    jr nc, jr_007_7da9

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
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [hl], b
    ld a, a
    adc a
    ldh a, [$ff7f]
    add b
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$ffcc]
    inc a
    ld a, [$3f06]
    pop bc
    dec bc
    inc c
    rla
    jr jr_007_7e13

    ld [de], a
    ccf
    dec [hl]
    ld a, [hl+]
    ld a, [hl-]
    ld d, h
    ld [hl], h
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    add b
    ld a, a
    ld d, b
    rst $38
    xor d
    rst $38
    push de
    ld e, a

jr_007_7e07:
    xor d
    xor e
    dec d
    dec d
    ld [bc], a
    ld [bc], a
    ld bc, $0f01
    ldh a, [$ff03]
    db $fc

jr_007_7e13:
    ld bc, $00fe
    rst $38
    add b
    rst $38

jr_007_7e19:
    ld b, b
    rst $38

jr_007_7e1b:
    and b
    rst $38

jr_007_7e1d:
    ld d, b
    ld a, a

jr_007_7e1f:
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_007_7e9a

    sub b
    ld [hl], b
    sub b
    jr z, jr_007_7e07

    xor b
    cp a
    ld d, h
    ld e, a
    jr z, jr_007_7e74

    inc d
    rra
    ld a, [hl+]
    cpl
    inc d
    rra
    ld a, [bc]
    rrca
    inc d
    rra
    jr z, jr_007_7e19

    jr z, jr_007_7e1b

    jr z, jr_007_7e1d

    jr z, jr_007_7e1f

    ld d, b
    or b
    ld d, b
    or b
    ld d, b
    or b
    and b
    ld h, b
    ld [$150f], sp
    ld e, $2a
    dec l
    ld de, $2e1f
    ld a, $58
    ld a, b
    ldh [$ffe0], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_007_7e74:
    inc bc
    dec b
    ld b, $0c
    dec bc
    dec de
    rla
    inc [hl]
    inc l
    jr z, jr_007_7eb7

    rra
    rra
    rst $28
    ldh a, [rOCPS]
    sbc a
    ld d, l
    push af
    and b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    xor $1e
    cp l
    db $e3
    ld d, a
    ld a, h
    xor d
    xor e
    dec d

jr_007_7e9a:
    dec d
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    ld d, h
    ld l, h
    ld d, b
    ld [hl], b
    ld h, b
    ld h, b
    and b
    ldh [$ffc0], a
    ret nz

jr_007_7eb7:
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    xor h
    or h
    ld e, d
    ld d, [hl]
    ld l, $2a
    ld d, $1a
    dec l
    dec hl
    rla
    dec e
    dec bc
    dec c
    rla
    dec d
    dec bc
    dec c
    rlca
    dec b
    dec bc
    dec c
    rlca
    dec b
    add hl, bc
    rrca
    ld d, $1a
    ld c, $0a
    ld [de], a
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec de
    rra
    db $fc
    db $fc
    inc l
    inc [hl]
    inc h
    inc a
    ld e, b
    ld l, b
    or b
    ret nc

    ld h, b
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop

Jump_007_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_007_7f7b:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_007_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_007_7fff:
    rst $38
