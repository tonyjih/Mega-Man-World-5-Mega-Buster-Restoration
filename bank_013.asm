; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_013_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_013_403f

    inc sp
    jr nz, jr_013_4065

    ld b, b
    rst $00
    ld b, h
    ld [$b045], a
    ld b, a
    xor l
    ld b, a
    db $d3
    ld c, c
    ld b, $4c
    xor c
    ld c, l
    inc c
    ld d, b
    sbc a
    ld d, d
    sub d
    ld d, h
    or l
    ld d, l
    ld hl, sp+$57
    ld e, e
    ld e, b
    cp [hl]
    ld e, b
    pop de
    ld e, d
    db $e4
    ld e, h
    ld b, a
    ld e, [hl]
    xor d
    ld e, a
    ld e, l
    ld h, c
    ret nc

    ld h, e
    inc de
    ld h, [hl]
    or $67
    ld a, c

jr_013_403f:
    ld l, c
    db $fc
    ld l, d
    rrca
    ld l, [hl]
    ldh a, [c]
    ld l, [hl]
    or l
    ld [hl], c
    cp b
    ld [hl], h
    dec sp
    ld a, d
    ld [hl], a
    ld a, h
    adc [hl]
    ld a, d
    pop af
    ld a, d
    ld h, h
    ld a, e
    ld b, a
    ld d, a
    ld b, b
    and e
    sbc a
    ld c, a
    ccf
    cp h
    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38

jr_013_4065:
    nop
    rst $38
    ldh a, [rIE]
    add b
    rst $38

jr_013_406b:
    nop
    rst $38
    nop

jr_013_406e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_013_4076:
    rst $38
    ld d, h
    sbc l
    ld c, l
    sbc l
    ld l, [hl]
    adc [hl]
    daa
    rst $08
    ld [hl-], a
    rst $00
    add hl, de
    ldh [c], a
    dec c
    ldh a, [rTMA]
    ld hl, sp-$3d
    rst $00
    ldh [c], a
    rst $20
    ld [$e0e7], a
    rst $28
    ldh [$ffef], a
    db $e4
    rst $28
    call c, $cccf
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_013_406e

    ld h, b
    or a
    db $10
    and a
    ld c, b
    add a
    jr nc, jr_013_4076

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
    ret z

    rst $18
    ret z

    rst $18
    and b
    sbc a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$04
    pop hl
    nop
    push bc
    db $10
    cp e
    jr jr_013_4130

    ld l, c
    ld l, e
    nop
    add b
    nop
    ld a, $00
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    ld b, b
    ccf
    ld [$1207], sp
    and c
    inc b
    ret c

    add hl, de
    sbc $0e
    rst $28
    inc c
    xor $8c
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [$2407], sp
    ld [hl], e
    ld [hl-], a
    cp c
    jp c, $ffd9

    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ldh a, [$ffeb]
    rst $20
    call z, $98df
    cp a
    jr nc, @+$81

    db $e3
    db $e3
    db $dd
    pop bc
    ld [hl+], a
    inc e
    push bc
    ld c, $32
    rst $00

jr_013_4121:
    dec de
    db $e3
    add hl, de
    db $e3
    ld [$a803], sp
    sbc a
    xor b
    sbc a
    ret z

    rst $18
    ld c, b
    ld e, a
    ld e, h

jr_013_4130:
    ld c, a
    sub h
    rrca
    inc h
    xor a
    ld l, $a7
    jr nc, jr_013_41a9

    sub c
    dec sp
    ld b, b
    add l
    inc h
    pop bc
    jr jr_013_4121

    ld b, $f8
    ld sp, $60ce
    or a
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
    ld a, $80
    nop
    ld a, a
    add b
    inc c
    ld c, $8e
    rst $28
    add hl, de
    sbc $04
    ret c

    inc de
    and b
    inc c
    inc bc
    ld [hl], b
    rrca
    add b
    ld a, a
    ld h, d
    jp hl


    inc h
    ld [hl], e
    ld [$f007], sp
    rrca
    nop
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    ld h, b
    or a
    inc sp
    ld a, h
    jr nz, jr_013_41fa

    ld h, b
    ccf
    ld b, b
    ccf
    sub b
    cp a
    or b
    sbc a
    ret z

    rst $18
    ret c

    rst $08
    ldh a, [c]
    ld bc, $00f9
    ld a, b
    add b
    ld a, b
    add b
    add hl, sp
    ret nz

    dec sp
    ret nz

    add hl, sp
    jp nz, $8275

    jp z, $9307

    rla
    dec b
    inc bc
    ld [hl+], a

jr_013_419e:
    ld bc, $0031
    sbc b
    jr nz, @+$4e

    jr nc, jr_013_41aa

    ld a, b
    db $10
    and a

jr_013_41a9:
    ld c, b

jr_013_41aa:
    add a
    or b

jr_013_41ac:
    rst $08
    ld a, b
    rst $38
    add c
    ld a, [hl]
    ld a, h
    nop
    ld bc, $5280
    ld hl, $ff00
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld b, b
    ccf
    add b
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
    jr nc, jr_013_419e

    ld d, $e1
    add hl, bc
    ldh a, [rDIV]
    ld hl, sp+$01
    cp $10
    and a
    ld c, b
    add a
    jr nc, jr_013_41ac

    nop
    rst $38
    nop
    rst $38
    jp Jump_013_7c3f


    inc bc
    ld bc, $0000
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld a, $ff
    ldh a, [rIE]
    rlca
    ld hl, sp-$08
    nop
    db $e4
    xor $e8

jr_013_41fa:
    db $e4
    db $f4
    di
    ld sp, hl
    ld hl, sp-$02
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld b, $0a
    add h
    dec b
    ld hl, sp+$6f
    ldh a, [rTAC]
    nop
    ld sp, hl
    ld hl, sp-$02
    cp $ff
    rst $38
    add [hl]
    ld a, b
    ld [bc], a
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    rst $20

jr_013_4220:
    jr jr_013_4220

    nop
    jr c, jr_013_4225

jr_013_4225:
    pop bc
    ret nz

    ld c, $01
    ld e, $01
    rrca
    nop
    inc bc
    nop
    db $10
    db $10
    ld b, $01
    daa
    rra
    cp b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
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
    call nz, Call_013_7802
    add b
    adc a
    ldh a, [$ffe1]
    cp $3e
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc b
    inc bc
    adc a
    ld [hl], b
    nop
    nop
    rst $38
    nop
    inc bc
    db $fc
    ldh a, [rIE]
    cp $ff
    rrca
    rst $38
    ei
    ld hl, sp-$0b
    di
    db $eb
    rst $20
    xor $e7
    call nc, $d0cf
    rst $08
    and b
    sbc a
    and b
    sbc a
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $5ffe
    add b
    ld h, $c0
    and b
    sbc a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld h, b
    rra
    sub b
    ldh [$ffd8], a
    ldh [$ffe9], a
    pop af
    ld l, l
    pop af
    ld [hl], l
    ld sp, hl
    ld [hl], l
    ld sp, hl
    ld [hl], l
    ld sp, hl
    ld [hl], e
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ldh a, [$ffce]
    pop bc
    sbc h
    add e
    ld a, [hl]
    ld bc, $007f
    ld h, b
    rra
    or b
    adc a
    jr jr_013_42d4

    pop bc
    ccf
    inc bc
    rst $38
    ld bc, $1fff

jr_013_42d4:
    rst $38
    add b
    ld a, a
    ld l, e
    di
    rst $20
    rst $30
    rst $10
    rst $20
    sbc e
    db $e3
    call $edf1
    pop af
    call Call_000_1bf1
    pop hl
    ldh a, [c]
    ld bc, $00f9
    ld a, b
    add b
    ld a, b
    add b
    add hl, sp
    ret nz

    dec sp
    ret nz

    add hl, sp
    jp nz, $8274

    jp z, $9307

    rla
    dec b
    inc bc
    jr nz, jr_013_42ff

jr_013_42ff:
    rrca
    nop
    and a
    rra
    ld b, c
    ccf
    add b
    ld a, a
    db $10
    and a
    ld c, b
    add a
    or b
    rst $08
    jr jr_013_432e

    pop hl
    ld [bc], a
    call c, $fbe0
    db $fc
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld b, b
    ccf
    add b
    ld a, a
    nop
    ccf
    ret nz

    rra
    ld h, b
    ld b, $09
    add h
    dec b
    ld hl, sp+$6d

jr_013_432e:
    ldh a, [rTIMA]
    nop
    ld sp, hl
    ld hl, sp-$03
    db $fc
    cp $fe
    nop
    rst $38
    nop
    rst $38
    dec b
    cp $02
    rst $38
    add e
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    ldh [$ff1f], a
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    and b
    rra
    ld d, b
    adc a
    xor b
    rst $00
    sub h
    db $e3
    db $d3
    ldh [$ffa0], a
    rst $08
    ld l, b
    rst $30
    inc d
    ei
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
    ld hl, sp-$08
    rst $00
    ret nz

    ld a, $01
    inc c
    inc bc
    inc bc
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nc, jr_013_4388

    sbc h
    inc bc
    nop
    rst $38
    rra
    rst $38
    add a
    ld a, a
    ld [hl], c
    rrca
    inc c
    inc bc
    inc bc
    nop
    ret


jr_013_4388:
    ldh a, [$ffc8]
    ldh a, [$ffc8]
    ldh a, [$ff9d]
    pop hl
    call $e5f1
    ld sp, hl
    ld [hl], l
    ld sp, hl
    ld [de], a
    db $fc
    ret z

    scf
    or $01
    jr c, jr_013_439d

jr_013_439d:
    add b
    add b
    db $fc
    db $fc
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
    ldh [$ff1f], a
    ccf
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$ffe0], a
    ldh a, [$fff0]
    ld hl, sp-$08
    db $fc
    db $fc
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

    ldh a, [$fff0]
    cp $fe
    jp z, Jump_000_323c

    inc c
    ld a, [bc]
    inc b
    ld b, $00
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0303
    add [hl]
    ld a, b
    ld [bc], a
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    rst $20

jr_013_43f0:
    jr jr_013_43f0

    nop
    jr c, jr_013_43f5

jr_013_43f5:
    rst $00
    ret nz

    ld c, $01
    ld e, $01
    rrca
    nop
    inc bc
    nop
    nop
    nop
    ld e, $01
    pop af
    rrca
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ldh a, [$ffee]
    pop hl
    ret c

    rst $00
    and b
    sbc a
    ld b, b
    ccf
    cp c
    add a
    ld h, a
    rra
    call c, $b03f
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $e3
    ldh [rIE], a
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
    inc bc
    db $fc
    ld a, a
    add b
    nop
    rst $30
    ld a, [bc]
    pop af
    inc b
    ld hl, sp+$0e
    ldh a, [rNR34]
    ldh [$ff7c], a
    add b
    ldh a, [rP1]
    inc bc
    inc bc
    cp $fe
    db $fd
    db $fc
    ei
    ld hl, sp-$0e
    pop af
    or $f1
    db $e4
    db $e3
    db $ec
    db $e3
    call z, $80c3
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    add hl, bc
    ldh a, [$ffc4]
    ld hl, sp-$1c
    ld hl, sp-$14
    ldh a, [$ffcc]
    ldh a, [$ff99]
    pop hl
    inc sp
    jp Jump_000_07c7


    ldh a, [rP1]
    ld bc, $3f01
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
    rra
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
    ret c

    rst $00
    sbc b
    add a
    inc c
    inc bc
    pop bc
    ccf
    inc bc
    rst $38
    ld bc, $1fff
    rst $38
    add b
    ld a, a
    ld [hl], e
    db $fc
    cp [hl]
    ret nz

    pop de
    pop hl
    sbc e
    db $e3
    call $edf1
    pop af
    call Call_000_1bf1
    pop hl
    sbc a
    rra
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
    ld [de], a
    jp z, $0344

    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a

jr_013_44d6:
    ld b, b
    ld a, a
    ld c, a
    ld [hl], b
    ldh [$ffe0], a
    jr jr_013_44d6

    inc b
    db $fc
    ld [hl], d
    adc [hl]
    ld a, [hl-]
    add $39
    rst $00
    add hl, sp
    rst $00
    db $fd
    inc bc
    ld a, a
    ld a, a
    ld c, a
    ld [hl], b
    jr nz, jr_013_452f

    jr nz, jr_013_4531

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    rst $38
    rst $38
    db $fd
    inc bc

jr_013_44fe:
    ld [bc], a
    cp $02
    cp $04
    db $fc
    jr jr_013_44fe

    ldh [$ffe0], a
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a

jr_013_4516:
    ld b, e
    ld a, h
    ld e, a
    ld h, e
    ldh [$ffe0], a
    jr jr_013_4516

    inc b
    db $fc
    ld [hl], d
    adc [hl]
    ld a, [hl-]
    add $19
    rst $20
    ld sp, hl
    rlca
    db $fd
    ei
    ld a, h
    ld a, a
    ld [hl], e
    ld a, l
    dec a

jr_013_452f:
    ccf
    cpl

jr_013_4531:
    inc sp
    inc de
    inc e
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    rst $10
    cp a
    rst $38
    ld a, a

jr_013_453e:
    ld a, [hl]
    sbc $fe
    ld a, [$04fc]
    jr jr_013_453e

    ldh [$ffe0], a
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_013_4591

    jr nz, jr_013_4593

    ld b, a
    ld a, b

jr_013_4556:
    ld e, a
    ld h, a
    ld e, e
    ld a, h
    ldh [$ffe0], a
    jr jr_013_4556

    ld [hl], h
    adc h
    ld a, [hl-]
    add $fa
    ld b, $fd
    di
    ld l, l

jr_013_4567:
    sbc a
    ei
    ld h, a
    ld l, a
    ld [hl], b
    ld e, a
    ld h, c
    ccf
    ld hl, $302f
    rla
    jr jr_013_4582

    ld c, $03
    inc bc
    nop
    nop
    db $dd
    or e
    rst $38
    ld a, c
    ld e, [hl]
    ld a, [$f6fa]

jr_013_4582:
    db $f4
    ld l, h
    ret c

    jr c, jr_013_4567

    ldh [rP1], a
    nop
    ld a, $3f
    ld l, l
    ld e, [hl]
    or $8f
    cp a

jr_013_4591:
    rst $00
    push de

jr_013_4593:
    xor $ff
    ei
    or l
    cp $5f
    or h
    nop
    nop
    ld e, $1f
    dec [hl]
    ld l, $7a
    ld b, a
    ld e, a
    ld h, e
    ld l, a
    ld [hl], a
    ld e, [hl]
    ld a, a
    dec l
    ld e, [hl]
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld a, [de]
    rla
    inc a
    inc hl
    cpl
    ld sp, $3b37
    ld h, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec c
    dec bc
    inc e
    inc de
    ld [de], a
    dec e
    add hl, de
    rra
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
    ld a, [bc]
    dec c
    ld [$000f], sp
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
    ld b, $1c
    db $ed
    ld b, l
    rra
    rra
    add hl, hl
    ccf
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld a, h
    ld a, h
    ld [hl], d
    ld e, [hl]
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, e
    ld e, [hl]
    ld l, [hl]
    ld e, l
    ld l, a
    ld e, a
    ld a, a
    ld e, l
    ld a, a
    ld h, h
    ld [hl], a
    ld c, [hl]
    rst $38
    rst $38
    rst $18
    rst $38
    cp c
    ld h, a
    ld h, b
    rst $18
    rst $38
    rst $38
    rst $38
    ld e, b
    cp a
    ldh a, [rIE]
    ld b, c
    jp hl


    rst $18
    ld l, c
    rst $18
    ld l, c
    rst $18
    jp hl


    rst $18
    jp hl


    rst $18
    db $fd
    rst $38
    rst $08
    di
    sbc e
    db $ed
    ld h, l
    ld e, a
    ld l, a
    ld e, b
    ld a, a
    ld d, e
    ld a, d
    ld d, a
    jr c, jr_013_467e

    db $10
    rra
    ld [$070f], sp
    rlca
    cp $ff
    nop
    rst $38
    cp $fd
    xor d
    db $fd
    ld [bc], a
    db $fd
    pop af
    cp $90
    rst $38
    rst $38
    rst $38
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    db $ed
    ld c, [hl]
    ldh a, [c]
    inc a
    db $fc
    ld [$f0f8], sp
    ldh a, [rSC]
    inc bc
    ccf
    ccf
    ld c, e
    ld [hl], h
    rst $38
    rst $38
    xor a
    ret nc

    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a

jr_013_467e:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ccf
    ccf
    ld c, e
    ld [hl], h
    rst $38
    rst $38
    xor a
    ret nc

    rst $38
    rst $38
    ld c, e
    ld [hl], h
    rst $38
    rst $38
    xor a
    ret nc

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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    di
    sbc l
    rst $38
    sbc l
    di
    sbc l
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
    add hl, sp
    rst $28
    add hl, sp
    rst $28
    ld sp, hl
    rst $28
    rra
    add hl, de
    cpl
    add hl, sp
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    rst $38
    ret nz

    ccf
    jp $c3fe


    ccf
    jp $c0ff


    ccf
    sbc $f3
    sbc $33
    sbc $fc
    db $fc
    ldh a, [c]
    sbc $e9
    rst $18
    jp hl


    rst $18
    jp hl


    rst $18
    jp hl


    rst $18
    jp hl


    rst $18
    jp hl


    rst $18
    ld l, a
    ld e, a
    ld l, c
    ld e, a
    ld l, e
    ld e, [hl]
    ld l, [hl]
    ld e, l
    ld l, a
    ld e, a
    ld a, a
    ld e, l
    ld a, a
    ld h, h
    ld [hl], a
    ld c, [hl]
    ld l, a
    ld e, a
    ld l, c
    ld e, a
    ld l, e
    ld e, [hl]
    ld l, [hl]
    ld e, l
    ld l, h
    ld e, a
    ld a, h
    ld e, a
    ld a, a
    ld h, a
    halt
    ld c, a
    rst $38
    rst $38
    rst $18
    rst $38
    cp c
    ld h, a
    ld h, b
    rst $18
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ld b, c
    rst $38
    inc l
    inc l
    halt
    ld e, d
    cp $ba
    sbc $ee
    cp a
    call $9dfb
    halt
    ld a, d
    inc c
    inc c
    ld l, a
    ld e, a
    ld a, a
    ld e, l
    ld a, a
    ld h, h
    ld [hl], a
    ld c, [hl]
    ld h, l
    ld e, a
    ld l, a
    ld e, b
    ld a, a
    ld d, e
    ld a, d
    ld d, a
    rst $38
    rst $38
    rst $38
    ld e, b
    rst $38
    or b
    rst $38
    ld b, c
    cp $ff
    nop
    rst $38
    cp $fd
    xor d
    db $fd
    rst $38
    rst $38
    rst $38
    sub c
    rst $38
    sbc l
    rst $38
    sub c
    rst $38
    sbc h
    rst $38
    sub b
    rst $38
    sbc h
    rst $38
    sub b
    rst $38
    rst $38
    ld sp, hl
    cpl
    ld sp, hl
    cpl
    ld sp, hl
    rst $28
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    rst $38
    ccf
    ldh [c], a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    di
    db $dd
    rst $38
    db $fd
    di
    cp a
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
    add hl, sp
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $28
    rra
    add hl, de
    cpl
    add hl, sp
    ld l, a
    ld e, c
    ld l, a
    ld e, e
    ld l, a
    ld e, a
    ld l, a
    ld e, l
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    rst $38
    ldh a, [rIE]
    di
    cp $f3
    ccf
    di
    rst $38
    call c, $df3f
    rst $30
    rst $18
    inc sp
    sbc $22
    or e
    ld b, a
    ld c, $b3
    ld b, a
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    dec b
    rlca
    dec bc
    rrca
    inc c
    rrca
    rrca
    dec bc
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ldh a, [$ffa8]
    ret c

    ld [hl], h
    adc h
    call nc, $ba3c
    ld a, [hl]
    db $fd
    db $db
    ld a, a
    ld d, [hl]
    ld a, a
    ld a, c
    or $af
    db $ed
    cp [hl]
    or $b9
    cp c
    rst $28
    rst $18
    rst $10
    ld [$f408], sp
    call z, $ec34
    ld a, [$daa6]
    ld [hl], $da
    or $ae
    ld l, d
    and $a6
    ld b, b
    ld b, b
    ld b, $06
    add hl, bc
    rrca
    dec de
    rla
    dec [hl]
    ld l, $6b
    ld a, h
    sbc $f9
    push hl
    ei
    rst $38
    sbc $00
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    cp h
    ld a, h
    and d
    cp $d9
    rst $20
    db $fd
    db $db
    rst $38
    sub $ff
    ld sp, hl
    halt
    ld l, a
    dec l
    ld a, $16
    add hl, de
    add hl, sp
    cpl
    rra
    rla
    ld [$bd08], sp
    ei
    dec sp
    rst $30
    or $be
    call c, $d03c
    ldh a, [$ffa0]
    ld h, b
    ldh [$ffa0], a
    ld b, b
    ld b, b
    ld b, [hl]
    ld b, [hl]
    xor c
    rst $28
    ei
    or a
    push af
    xor [hl]
    db $eb
    cp h
    cp $d9
    push hl
    ei
    ld a, a
    ld e, [hl]
    inc b
    inc b
    ld c, $0a
    adc a
    adc c
    ld e, l
    db $d3
    cp l
    ld [hl], e
    cp c
    rst $20
    ldh a, [c]
    adc $ec
    call c, Call_013_567f
    ccf
    add hl, sp
    ld [hl], $2f
    dec l
    ld a, $37
    jr c, jr_013_48c6

    ld e, a
    ccf
    cpl
    db $10
    db $10
    cp b
    ld hl, sp+$48
    cp b
    add sp, -$48
    add sp, $18
    ld l, b
    ld hl, sp-$30
    or b
    ldh a, [$ffd0]
    jr nz, jr_013_4893

    nop
    nop
    jr nz, jr_013_4897

    ld sp, $2b31
    ld a, [hl-]
    ld e, $17
    ld a, $2b
    ld l, a
    ld [hl], l
    cp a
    ei
    inc b
    inc b
    inc c
    inc c
    ld e, $12
    cp d
    and [hl]
    db $eb
    ld [hl], a
    and $7d
    ld a, l
    ei
    ei
    rst $08

jr_013_4893:
    nop
    nop
    jr nz, jr_013_48b7

jr_013_4897:
    ld sp, $2b31
    ld a, [hl-]
    ld e, $17
    ld a, $2b
    ld l, a
    ld [hl], l
    cp a
    ei
    inc b
    inc b
    inc c
    inc c
    ld e, $12
    cp d
    and [hl]
    db $eb
    ld [hl], a
    and $7d
    ld a, l
    ei
    ei
    rst $08
    nop
    nop
    inc c
    inc c

jr_013_48b7:
    inc d
    inc e
    jr c, @+$2a

    ld [hl], b
    ld d, b
    jp c, Jump_013_77ba

    adc l
    cp l
    ei
    ei
    xor l
    xor l

jr_013_48c6:
    rst $30
    ld d, e
    ld a, a
    ccf
    ccf
    dec d
    rra

jr_013_48cd:
    rra
    dec d
    cpl
    ld a, $3d
    dec hl
    rst $10
    ld l, h
    ld l, [hl]
    cp c
    sbc c
    rst $38
    rst $38
    rst $38
    sub h
    ei
    ei
    sub a
    push af
    ld l, $eb
    call c, $deee
    jp c, $f4b6

    db $ec
    ld hl, sp-$08
    jr nz, jr_013_48cd

    ldh [$ffe0], a
    ret nc

    jr nc, jr_013_4962

    ldh a, [$ff3b]
    cpl
    ld [hl], $2f
    jr nc, jr_013_4928

    ccf
    scf
    dec [hl]
    ld a, $6b
    ld e, a
    add $bf
    rst $38
    rst $38
    ld c, e
    cp h
    ld c, e
    cp h
    ld b, h
    cp a
    db $e3
    rst $18
    or l
    ld l, [hl]
    db $eb
    db $fc
    ret c

    ccf
    rst $38
    rst $38
    add sp, $18
    ld a, h
    db $fc
    inc d
    db $fc
    ld hl, sp-$18
    or b
    ld [hl], b
    ret c

    jr c, jr_013_4928

    ld hl, sp-$08
    ld hl, sp-$05
    xor l
    xor l
    rst $30
    ld d, e

jr_013_4928:
    ld a, a
    ccf
    ccf
    rra
    dec de
    dec de
    ld d, $2f
    ccf
    dec a
    dec hl
    rst $10
    ld l, h
    ld l, [hl]
    cp c
    sbc c
    rst $38
    rst $38
    rst $38
    sub h
    ld a, e
    dec de
    rst $30
    push af
    xor $eb
    call c, RST_00
    nop
    nop
    ei
    xor l
    xor l
    rst $30
    ld d, e
    ld a, a
    ccf
    ccf
    ccf
    ld [hl], $36
    dec l
    nop
    nop
    nop
    nop
    rst $10

jr_013_4958:
    ld l, h
    ld l, [hl]
    cp c
    sbc c
    rst $38
    rst $38
    rst $38
    jr jr_013_4958

    scf

jr_013_4962:
    rst $28
    nop
    nop
    nop
    nop
    xor $de
    jp c, $f4b6

    db $ec
    ld hl, sp-$08
    db $10
    ldh a, [$ff90]
    ldh a, [$ff7f]
    ld e, a
    ld a, e
    ld d, a
    ld [hl], a
    ld e, a
    inc a
    cpl
    jr nc, @+$31

    ld [hl], a
    ld e, a
    call $ffbe
    rst $38
    db $eb
    call c, $d9b6
    ld d, a
    cp b
    ld d, [hl]
    cp c
    ld a, b
    adc a
    rst $38
    rst $38
    db $ec
    rra
    rst $38
    rst $38
    ld c, b
    ld hl, sp-$12
    cp $da
    ld a, $fc
    db $f4
    jr c, @-$06

    add sp, -$28
    inc b
    db $fc
    db $fc
    db $fc
    rlca
    dec b
    daa
    daa
    ccf
    dec sp
    cpl
    ld a, [hl-]
    ld e, $17
    ld a, $2b
    ld l, a
    ld [hl], l
    cp a
    ei
    cp $6d
    rst $38
    sbc [hl]
    ld a, a
    ldh a, [c]
    ei
    rst $20
    db $eb
    ld [hl], a
    and $7d
    ld a, l
    ei
    ei
    rst $08
    ld b, b
    ret nz

    ld c, h
    call z, $fc34
    cp b
    ld l, b
    ldh a, [$ff50]
    jp c, Jump_013_77ba

    adc l
    cp l
    ei
    inc hl
    sub $49
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl-]
    ld h, $7d
    ld e, e
    ld a, [hl]
    ld e, c
    ld a, l
    ld e, d

jr_013_49ee:
    jr c, jr_013_4a17

    jr nc, jr_013_4a31

    jr c, jr_013_4a23

    ld l, h
    ld e, a
    cp $fe
    db $fd
    rst $38
    ldh a, [c]
    rst $38
    ld l, c
    rst $30
    push af
    ld c, e
    ld a, a
    rst $38
    db $f4
    adc e
    db $f4
    adc e
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_013_49ee

    sub b
    ld [hl], b
    ld hl, sp-$08
    ret z

    cp b
    call nz, Call_013_6ebc

jr_013_4a17:
    ld e, a
    ld l, a
    ld e, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld d, [hl]
    ld a, e
    xor l
    or $a4

jr_013_4a23:
    rst $38
    ld a, a
    ld a, a
    db $f4
    adc e
    db $f4
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    sub $39
    rst $10

jr_013_4a31:
    jr c, jr_013_4a43

    rst $38
    rst $38
    rst $38
    db $e4
    sbc h
    db $e4
    sbc h
    db $fc
    db $fc
    ld hl, sp-$08
    call nc, Call_013_6abc
    sbc $4a

jr_013_4a43:
    cp $fc
    db $fc
    ld l, [hl]
    ld e, a
    ld l, a
    ld e, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld l, e
    ld a, h
    rst $10
    ld hl, sp-$30
    rst $38
    ld a, a
    ld a, a
    db $f4
    adc e
    db $f4
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $bd67

    jp $ff81


    rst $38
    rst $38
    db $e4
    sbc h
    db $e4
    sbc h
    db $fc
    db $fc
    ld hl, sp-$08
    or h
    ld l, h
    ld e, d
    or [hl]
    ld [de], a
    cp $fc
    db $fc
    ld l, [hl]
    ld e, a
    ld l, a
    ld e, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, d
    ld l, l
    or l
    db $db
    sub c
    rst $38
    ld a, a
    ld a, a
    db $f4
    adc e
    db $f4
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    call z, $867b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    db $e4
    sbc h

jr_013_4a98:
    db $e4
    sbc h
    db $fc
    db $fc
    ld hl, sp-$08
    xor h
    ld a, h
    sub $3e
    ld d, $fe
    db $fc
    db $fc
    ld c, $0e
    dec e
    inc de
    ld a, $2d
    ccf
    inc l
    ld a, $2d
    inc a
    inc sp
    jr c, jr_013_4ae3

    ld l, h
    ld e, a
    ld c, $0e
    scf

jr_013_4ab9:
    add hl, sp
    ld e, l
    ld l, [hl]
    ld c, d
    ld [hl], a
    xor l
    di
    and [hl]
    ld sp, hl
    db $d3
    cp h
    ld l, c
    ld e, [hl]
    nop
    nop
    add b
    add b
    ldh [$ff60], a
    ld [hl], b
    sub b
    jr c, jr_013_4a98

    sbc h
    db $f4
    ld l, h
    db $f4
    and h
    db $fc
    ld h, l
    ld e, a
    ld [hl-], a
    cpl
    dec a
    daa
    inc e
    dec de
    rrca
    rrca
    nop
    nop
    nop

jr_013_4ae3:
    nop
    nop
    nop
    ret c

    jr c, jr_013_4ab9

    jr nc, jr_013_4b13

    ld hl, sp-$38
    ld hl, sp+$3c
    inc [hl]
    ld c, $0a
    rlca
    dec b
    inc bc
    inc bc
    add hl, de
    rla
    inc c
    dec bc
    rrca
    add hl, bc
    rlca
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    halt
    adc $b5
    rst $08
    ld c, d
    db $fd
    scf
    ld hl, sp-$1d
    db $fc
    ld sp, $383e

jr_013_4b13:
    cpl
    ld l, h
    ld e, a
    nop
    nop
    add b
    add b
    ldh [$ff60], a
    ld [hl], b
    sub b
    jr c, @-$36

    sbc h
    db $f4
    ld l, h
    db $f4
    and [hl]
    cp $65
    ld e, a
    ld [hl-], a
    cpl
    dec a
    daa
    inc e
    dec de
    rrca
    rrca
    ld bc, $0301
    ld [bc], a
    nop
    nop
    sbc $3e
    sub $3e
    ld a, [hl+]
    or $de
    ldh [c], a
    adc [hl]
    ldh a, [c]
    add $7c
    ld h, [hl]
    db $fc
    nop
    nop
    ld a, $3e
    dec a
    ccf
    ld [hl-], a
    ccf
    add hl, hl
    scf
    dec [hl]
    dec bc
    ccf
    ccf
    inc [hl]
    dec bc
    inc [hl]
    dec bc
    ld h, l
    ld e, a
    ld [hl-], a
    cpl
    dec a
    daa
    inc e
    dec de
    rrca
    rrca
    ld b, $05
    nop
    nop
    nop
    nop
    call c, $d43c
    inc a
    inc l
    db $f4
    call c, $8ce4
    ld hl, sp-$34
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $38
    scf
    ld a, a
    ld e, a
    ld a, a
    ld h, b
    rst $38
    add b
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ldh a, [$ff90]
    sub b
    ldh a, [$fff0]
    ldh a, [$fff0]
    sub b
    cp $9e
    add b
    rst $38
    ld h, b
    ld a, a
    ld e, a
    ld a, a
    jr c, @+$39

    rrca
    ld c, $01
    ld bc, $0000
    nop
    nop
    sub c
    rst $38
    sbc [hl]
    cp $f0
    ldh a, [$ff90]
    ldh a, [$ff90]
    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    nop
    nop
    ld a, b
    ld a, b
    cp $8e
    rst $08
    cp c
    db $ed
    or e
    jp hl


    rst $38
    ld h, [hl]
    ld e, [hl]
    ld [hl], h
    ld c, h
    jr c, jr_013_4bfe

    nop
    nop
    ld c, $0e
    ld sp, $4d3f
    ld [hl], e
    ld e, d
    ld h, a
    ld d, d
    ld l, e
    ld d, b
    ld l, d
    jr nz, jr_013_4c10

    jr nz, jr_013_4c08

    ld d, b
    ld a, h
    ld d, b
    ld l, b
    ld [hl], d
    ld c, l
    ld e, h
    ld h, e
    ld sp, $0e3f
    ld c, $00
    nop
    jr c, jr_013_4c20

    ld b, d
    ld a, [hl]
    sbc h
    ldh [$ffb2], a
    ret nz

    and b
    ret nz

    jr nz, jr_013_4c32

    ld d, b
    ld b, b
    nop
    nop
    inc b
    inc b
    ld b, d
    ld b, [hl]
    nop
    jr nz, jr_013_4bfd

jr_013_4bfd:
    nop

jr_013_4bfe:
    nop
    nop
    add b
    ret nz

    ld b, b
    ld b, b
    nop
    nop
    ld a, [de]
    add hl, bc

jr_013_4c08:
    ld c, h
    ld bc, $0201
    inc bc
    dec b
    ld b, $0b

jr_013_4c10:
    inc c
    inc de
    inc e
    rla
    jr jr_013_4c3d

    jr c, jr_013_4c57

    ccf
    ld e, l
    ld h, [hl]
    ld e, e
    ld l, h
    ld e, a
    ld l, a
    ld c, a

jr_013_4c20:
    ld a, d
    cpl
    add hl, sp
    cpl
    inc [hl]
    cpl
    inc sp
    rra
    rra
    jr nz, jr_013_4c4b

    ld [hl], c
    ld d, c
    ld d, e
    ld [hl], d
    ld d, e
    ld [hl], d
    ld [hl+], a

jr_013_4c32:
    inc hl

Jump_013_4c33:
    ld hl, $0121
    ld bc, $0000
    ld a, [hl-]
    scf
    ld a, e
    ld d, [hl]

jr_013_4c3d:
    ld a, l
    ld d, [hl]
    db $dd
    or [hl]
    ei
    db $fc
    rst $08
    cp a
    ld sp, hl
    cp $0f
    rrca
    inc bc
    inc bc

jr_013_4c4b:
    rlca
    dec b
    scf
    dec [hl]
    ld c, l
    ld a, a
    db $e3
    sbc a
    ld hl, sp-$71
    ld h, l
    ld a, a

jr_013_4c57:
    ccf
    inc e
    xor e
    ld a, l
    cp e
    ld l, l
    rst $10
    ld l, l
    rst $18
    ld l, a
    cp [hl]
    pop de
    rst $30
    add sp, -$4a
    db $ed
    ld a, e
    rst $30
    add b
    add b
    ret nz

    ld b, b
    ret c

    ld e, b
    ld h, h
    db $fc
    ld a, [$7ae6]

Call_013_4c74:
    and $cc
    cp $a0
    ret c

    nop
    nop
    ld h, b
    ld h, b
    ret


    cp c
    cp h
    jp Jump_013_4c33


    ld b, h
    ld a, h
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld de, $fe11
    add hl, hl
    add hl, sp
    add $d6
    xor $28
    jr c, jr_013_4ca8

    db $10
    ld d, h
    ld h, b
    and b
    ret nz

    xor b
    ret nz

    ld de, $1068
    jr jr_013_4ca7

    inc c
    add hl, bc
    rrca

jr_013_4ca7:
    nop

jr_013_4ca8:
    nop
    nop
    add d
    nop
    nop
    nop
    ld b, h
    ld de, $aa28
    ld a, h
    ld de, $0192
    ld bc, $0000
    jr nz, jr_013_4cdb

    ld d, c
    ld [hl], c
    or d
    db $d3
    and l
    sub $75
    ld d, [hl]
    ld d, e
    ld [hl], d
    ld [hl+], a
    inc hl
    ld bc, $0001
    nop
    inc bc
    inc bc
    rrca
    dec c
    ld a, [de]
    rla
    ld [hl-], a
    cpl
    ld [hl], l
    ld c, [hl]
    ld h, l
    ld e, [hl]
    push hl
    sbc [hl]
    ld a, h
    ld a, h

jr_013_4cdb:
    cp e
    rst $00
    ld a, l
    add e
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $fd
    cp a
    ld a, a

Call_013_4cec:
    ld a, a
    dec sp
    inc hl
    add hl, de
    ld de, $080c
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $ff01
    rst $38
    cp e
    add hl, sp
    sub e
    ld de, $1193
    sub $92
    sub $92
    ld a, l
    ld d, h
    rst $38
    ld d, l
    nop
    nop
    rlca
    rlca
    dec e
    dec de
    ld a, [hl-]
    daa
    ld [hl], d
    ld c, a
    ld h, l
    ld e, [hl]
    push hl
    sbc [hl]
    db $fc
    cp a
    inc a
    inc a
    db $db
    rst $20
    ld a, l
    add e
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    pop af
    cp $00
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$ffb0], a
    ret nc

    sbc b
    add sp, $58
    add sp, $5c
    db $e4
    ld a, a
    ld a, a
    ccf
    scf
    dec de
    ld [de], a
    rrca
    ld a, [bc]
    dec c
    add hl, bc
    rlca
    dec b
    ld b, $04
    inc bc
    ld [bc], a
    rst $38
    rst $38
    dec sp
    dec sp
    inc sp
    ld de, $1133
    or [hl]
    ld [de], a
    xor h
    inc h
    db $ed
    and h
    ei
    xor c
    ld c, h
    db $f4
    db $fc
    db $f4
    cp h
    cp h
    jr c, @+$1a

    ld h, b
    jr nz, @-$3e

    ld b, b
    add b
    add b
    nop
    nop
    ccf
    ccf
    cpl
    scf
    ld e, a
    ld l, b
    ld e, a
    ld [hl], d
    ld a, a
    ld d, l
    cp a
    rst $18
    or a
    ret c

    cp d
    call $d0f0
    ldh a, [$fff0]
    ret nc

    or b
    ret nc

    ld [hl], b

jr_013_4d81:
    add sp, $58
    add sp, -$28
    ld l, b
    ret c

    ret z

    cp b
    rst $38
    rst $38
    ld e, a

jr_013_4d8c:
    ld h, e
    ld c, a
    ld [hl], b
    cpl
    jr nc, jr_013_4db8

    add hl, sp
    inc d
    dec de
    dec bc
    rrca
    inc b
    inc b
    ret nc

    jr nc, jr_013_4d8c

    ldh a, [$ffa0]
    ld h, b
    jr nz, jr_013_4d81

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld h, $ac
    ld c, l
    ld bc, $0701
    ld b, $0f
    ld [$1f1f], sp
    cpl
    jr nc, jr_013_4df6

    ccf

jr_013_4db8:
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    pop af
    rst $38
    rst $18
    ld a, $ee
    ld sp, hl
    cp h
    ld [hl], e
    cp l
    ld [hl], e
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    ldh a, [$fff0]
    ld [$7cf8], sp
    db $fc
    add [hl]
    cp $43
    cp a
    ld [hl], a
    ld c, b
    db $eb
    call c, $ffdc
    cp a
    rst $38
    cp a
    ret nz

    ld a, a
    ld a, a
    ld h, b
    ld e, a
    ld a, a
    ld a, a
    cp d
    ld h, a
    ld a, d
    rst $20
    ld a, [$bae7]
    rst $20
    ld a, [hl-]
    rst $20

jr_013_4df6:
    db $ed
    di
    inc e
    di
    sbc $f9
    sbc c
    ld a, a
    xor l
    ld a, a
    cp l
    ld l, a
    dec a
    rst $38
    ld bc, $feff
    cp $cc
    or h
    ld a, b
    ld hl, sp+$7f
    ld b, b
    ld a, a
    ld b, b
    ccf
    ccf
    ccf
    cpl
    ld a, b
    ld [hl], a
    xor a
    rst $18
    xor c
    rst $10
    rst $38
    rst $38
    db $ed
    ld a, $97
    ld a, a
    add hl, bc
    rst $38
    adc b
    rst $38
    ld de, $feff
    rst $38
    add d
    add e
    add e
    add e
    add sp, $58
    add sp, -$28
    ld hl, sp-$08
    or h
    call z, $fefe
    jp hl


    rla
    jp hl


    rla
    rst $38
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    ccf
    ld a, a
    ld l, a
    cp b
    rst $10
    xor a
    rst $18
    rst $38
    rst $38
    nop
    nop
    db $ed
    ld a, $97
    ld a, a
    add hl, bc
    rst $38
    adc c
    rst $38
    ld [de], a
    rst $38
    cp $ff
    add e
    add e
    nop
    nop
    add sp, $58
    ld hl, sp-$08
    or h
    call z, $fefe
    jp hl


    rla
    jp hl


    rla
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    rst $38
    cp a
    rst $28
    ld hl, sp-$09
    rrca
    rrca
    nop
    nop
    nop
    nop
    db $ed
    ld a, $97
    ld a, a
    ld a, [bc]
    rst $38
    adc d
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    or h
    call z, $fefe
    jp hl


    rla
    jp hl


    rla
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    rrca
    dec c
    dec d
    dec de
    inc l
    inc sp
    dec hl
    ld [hl], $5a
    ld h, l
    ld d, [hl]
    ld l, c
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $30
    ccf
    rst $28
    rrca
    cp $3e
    reti


    ld e, h
    or e
    db $dd
    inc sp
    nop
    nop
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld [$7cf8], sp
    db $fc
    add [hl]
    cp $43
    cp a
    ld e, [hl]
    ld h, c
    xor a
    ret nc

    xor a
    ret nc

    or a
    ret c

    or l
    jp c, Jump_013_7a55

    ld d, h
    ld a, e
    ld e, c
    ld l, a
    ld a, [$ba27]
    ld h, a
    cp d
    ld h, a
    cp d
    ld h, a
    cp d
    ld h, a
    xor l
    ld [hl], e
    call c, $fe33
    add hl, sp
    add hl, hl
    ccf
    dec l
    scf
    ld d, $1f
    dec hl
    ccf
    ld a, a
    ld a, a
    xor c
    rst $10
    xor c
    rst $10
    rst $38
    rst $38
    db $ed
    cp [hl]
    or a
    rst $38
    reti


    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    add d
    add e
    add e
    add e
    rrca
    rrca
    rra
    db $10
    ccf
    cpl
    ccf
    ccf
    ld h, b
    ld e, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    rst $38
    rst $38
    ldh a, [$ff1f]
    adc a
    rst $38
    add hl, bc
    rst $38
    rla
    cp $2e
    ld sp, hl
    call c, Call_013_5df3
    di
    ld c, a
    ld [hl], b
    sbc a
    ldh [$ff9f], a
    ldh [$ff9f], a
    ldh [rIE], a
    rst $38
    ld b, b
    ld a, a
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    cp d
    rst $20
    cp d
    rst $20
    cp d
    rst $20
    ld a, [$bae7]
    rst $20
    xor l
    di
    call c, $de73
    ld a, c
    cpl
    jr nc, jr_013_4f8e

    ccf
    db $10
    rra
    dec hl
    inc a
    ld a, [hl]
    ld a, a
    xor c
    rst $10
    xor c
    rst $10
    rst $38
    rst $38
    db $fd
    ld a, $f7
    rst $38
    add hl, bc
    rst $38
    cp $07
    ld bc, $feff
    rst $38
    add d
    add e
    add e
    add e
    ld bc, $0601
    rlca
    add hl, bc
    ld c, $17
    jr jr_013_4fb4

    ccf
    jr nz, jr_013_4fb7

    ld e, a
    ld h, b
    ld e, a
    ld h, b
    rst $38
    rst $38
    ld bc, $ffff
    rlca
    ld sp, hl
    rrca
    rst $30
    cp $3e
    ld sp, hl
    call c, $dd73
    ld [hl], e
    ld e, a
    ld h, b

jr_013_4f8e:
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    ld e, a
    ld h, b
    ld a, a
    ld a, a
    ld e, a
    ld h, b
    cp d
    rst $20
    cp d
    rst $20
    ld a, [$bae7]
    rst $20
    cp d
    rst $20
    db $ed
    or e
    db $fc
    di
    cp $19
    ccf
    ccf
    ccf
    dec l
    ld [de], a
    rra
    cpl
    ccf

jr_013_4fb4:
    ld a, e
    ld a, h
    xor a

jr_013_4fb7:
    rst $10
    xor c
    rst $10
    rst $38
    rst $38
    db $ed
    cp $ef
    cp a
    dec d
    rst $38
    push af
    rst $38
    db $e3
    rra
    cp $ff
    add d
    add e
    add e
    add e
    inc a
    inc a
    ld b, d
    ld a, [hl]
    or c
    rst $08
    cp c
    rst $00
    sbc c
    rst $20
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    ld a, a
    ld b, b
    ccf
    ccf
    ccf
    scf
    inc l
    dec sp
    ld a, a
    ld a, a
    xor c
    rst $10
    xor c
    rst $10
    rst $38
    rst $38
    db $ed
    ld a, $97
    rst $38
    ret


    rst $38
    ld [$f1ff], sp
    rst $38
    cp $ff
    add d
    add e
    add e
    add e
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    ld d, d
    ld l, [hl]
    ld b, d
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    add hl, hl
    rrca
    ld d, b
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ret c

    cp b
    and $9e
    di
    adc a
    adc $bf
    cp e
    db $fc
    nop
    nop
    rlca
    rlca
    dec de
    dec e
    dec l
    inc sp
    ld e, l
    ld h, e
    ld sp, hl
    rst $30
    call $f33f
    rra
    ld bc, $0301
    inc bc
    rra
    rra
    ld a, [hl+]
    scf
    ld a, a
    ld a, [hl]
    ld a, l
    ld d, e
    cp l
    di
    ld a, [$c5a7]
    cp $b2
    rst $18
    ld [hl], c
    cp a
    ld [hl], c
    adc a
    cp b
    rst $00
    ld e, [hl]
    db $e3
    xor [hl]
    ld [hl], a
    db $db
    cp h
    pop af
    ccf
    pop hl
    rra
    ld h, c
    sbc a
    ld a, d
    adc a
    cp e
    sbc $ad
    sbc $7b
    db $fd
    or a
    call z, $fefe
    cp d
    add $54
    db $ec
    xor h
    ld a, h
    ld hl, sp+$38
    ret nc

    or b
    sub b
    ldh a, [$ff28]
    ld hl, sp-$03
    sbc [hl]
    rst $38
    ldh [$ff7d], a
    ld b, e
    ld a, $3f
    dec b
    ld b, $07
    inc b
    rlca
    rlca
    nop
    nop
    rst $30
    rst $08
    ld a, l
    di
    ld a, a
    rst $38
    sbc e
    rst $30
    adc [hl]
    ld a, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    or a
    ld e, l
    or [hl]
    or a
    rst $08
    db $fd
    ei
    rst $10
    rst $28
    and b
    rst $18
    rst $38
    add b
    rst $38
    rst $38
    ret c

    add sp, -$10
    db $10
    ld hl, sp-$08
    db $fc
    db $f4
    ld a, [hl]
    xor $2e
    ld a, [$3efa]
    and $e6
    ld bc, $0301
    inc bc
    rra
    rra
    ld [hl-], a
    cpl
    ld a, e
    ld b, [hl]
    ld a, a
    ld a, a
    cp l
    di
    ld a, [$d8a7]
    add sp, -$10
    db $10
    add sp, -$08
    call c, Call_013_56f4
    cp $37
    db $fd
    rst $38
    ccf
    ldh [$ffe0], a
    ld bc, $0301
    inc bc
    rra
    rra
    ld [hl-], a
    cpl
    ld a, e
    ld b, [hl]
    ld a, c
    ld b, a
    ld sp, hl
    rst $00
    or d
    rst $28
    ret c

    add sp, -$10
    db $10
    db $ec
    db $fc
    cp [hl]
    ld [$ee7a], a
    inc l
    db $fc
    ld hl, sp+$38
    ldh [$ffe0], a
    nop
    nop
    ld bc, $0301
    inc bc
    rra
    rra
    ld a, [hl+]
    scf
    ld e, a
    ld l, [hl]
    ld [hl], l
    ld a, e
    cp l
    di
    add b
    add b
    db $fc
    db $fc
    ld [hl], h
    call z, $78a8
    ld hl, sp+$38
    ret nc

    or b
    sub e
    di
    cpl
    db $fd
    ld a, [$fda7]
    sbc [hl]
    rst $38
    pop hl
    ld a, d
    ld b, a
    dec a
    ld a, $07
    inc b
    rlca
    rlca
    nop
    nop
    rst $30
    rst $08
    ld a, l
    di
    cp a
    rst $38
    adc [hl]
    ld a, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    or a
    ld e, l
    or [hl]
    or a
    rst $08
    rst $38
    rst $38
    and b
    rst $18
    rst $38
    add b
    rst $38
    rst $38
    nop
    nop
    db $db
    rst $28

jr_013_5141:
    db $fd
    dec de
    xor $fe
    ld h, h
    db $fc
    jr c, jr_013_5141

    ldh [rNR41], a
    ldh [$ffe0], a
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
    ldh [rNR41], a
    ret nc

    or b
    sub b
    ldh a, [$ff28]
    ld hl, sp-$28
    add sp, -$08
    jr @-$16

    ld hl, sp+$7c
    db $f4
    ld [hl], $fe
    rst $30
    dec a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    inc c
    rrca
    rra
    ld e, $1f

jr_013_517c:
    dec d
    cpl
    inc a
    ld a, $29
    ccf
    daa
    ccf
    add hl, sp
    ld e, $13
    dec c
    ld c, $07
    inc b
    rlca
    rlca
    nop
    nop
    ret c

    add sp, -$08
    jr jr_013_517c

    ld hl, sp+$6c
    db $fc
    ld a, $fa
    xor $2e
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld [hl], a
    ld c, a
    dec a
    inc sp
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
    ld a, a
    or a
    ld e, l
    or [hl]
    or a
    rst $08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    add sp, -$10
    db $10
    ldh [$ffe0], a
    nop

jr_013_51d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_51e4:
    nop
    inc bc
    inc bc
    ld a, [hl-]
    dec sp
    ld h, $3f
    inc h
    dec sp
    inc hl
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    ld h, [hl]
    ld h, [hl]
    jr jr_013_51d6

    nop
    rst $38
    rst $38
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc e
    rra
    ld [de], a
    dec e
    add hl, bc
    ld c, $18
    rra
    inc d
    dec de
    dec bc
    inc c
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld a, h
    add e
    cp b
    ld b, a
    ld a, a
    add b
    jr c, jr_013_51e4

    db $10
    rst $28
    ld c, a
    ld [hl], b
    ld b, c
    ld a, [hl]
    ld [hl], b
    ld c, a
    cpl
    jr nc, jr_013_5247

    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    add c
    ld a, [hl]
    ld b, d
    cp l
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
    ld b, $06
    add hl, de
    rra
    ld h, [hl]
    ld a, c

jr_013_5247:
    cp a
    pop bc
    ld h, [hl]
    ld a, c
    add hl, de
    rra
    ld b, $06
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    db $fc
    db $fc
    ld [hl], h
    adc h
    db $fc
    db $fc
    xor b
    ret c

    ld [hl], b
    ld [hl], b
    ld [$1408], sp
    inc e
    inc e
    inc d
    ld a, [hl+]
    ld [hl], $2a
    ld [hl], $5d
    ld h, e
    ld e, l
    ld h, e
    ld a, [hl+]
    ld a, $36
    ld a, $5d
    ld [hl], a
    ld a, a
    ld d, l
    ld e, l
    ld [hl], a
    ld [hl], $3e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld l, h
    ld e, h
    ld e, e
    ld h, a
    ld a, $21
    ld l, $31
    rla
    add hl, de
    ld [de], a
    rra
    ld [$0808], sp
    ld [$0e0e], sp
    dec bc
    dec c
    db $fd
    rst $30
    cpl
    dec sp
    dec [hl]
    cpl
    ld e, $1e
    rra
    and d
    ld d, d
    nop
    nop
    rra
    rra
    ccf
    cpl
    ld [hl], l
    ld e, e
    add sp, -$49
    pop af
    cp a
    rst $38
    cp a
    push af
    cp e
    nop
    nop
    cp $fe
    rst $28
    dec [hl]
    rst $30
    sbc d
    xor $df
    ldh [$ffdf], a
    db $e3
    rst $18
    push hl
    sbc $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, d
    jp nz, $c5c7

    db $ed
    ld l, a
    add sp, -$49
    pop af
    cp a
    cp a
    ret nz

    rst $38
    rst $38
    ld d, [hl]
    ld a, a
    ld a, a
    ld d, [hl]
    ld a, a
    ld l, b
    ccf
    ccf
    db $eb
    db $dd
    ld [$cadd], a
    dec a
    db $eb
    db $fd
    dec h
    cp $e3
    ccf
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    or a
    push af
    xor a
    ld [$fabe], a
    cp [hl]
    db $fc
    ld [hl], h
    or h
    db $fc
    ld a, b
    add sp, -$18
    ld hl, sp+$00
    nop
    ld bc, $0e01
    rrca
    db $10
    rra
    ccf
    jr nz, jr_013_534c

    ccf
    nop
    nop
    nop
    nop
    ld d, $1a
    rst $30
    rst $38
    jr @+$01

    jr nz, @+$01

    rst $38
    ld b, b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret nc

    or b
    sbc b
    ld hl, sp+$64
    db $fc
    db $fc
    inc b
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld c, $0a
    sbc d
    sbc [hl]
    ld a, [hl]
    xor $6c
    call c, $b4dc
    call nc, $f87c
    cp b
    ld hl, sp-$58
    add sp, -$48
    ldh a, [$ffb0]
    ldh a, [$ff50]

jr_013_534c:
    ret nc

    ldh a, [$ffe0]
    ldh [$ffa0], a
    ld h, b
    inc e
    rra
    jr nz, jr_013_5395

    ld a, a
    ld b, b
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
    ld sp, $40ff
    rst $38
    rst $38
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
    jr nc, @-$0e

    ret z

    ld hl, sp-$08
    ld [$f8f8], sp
    nop
    nop
    nop
    nop
    nop
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

    ld b, b
    ret nz

    jp nz, $cfc2

    ld c, l
    db $fd
    or a
    rst $30

jr_013_5395:
    xor a
    db $ed
    cp a
    push af
    or a
    rst $20
    ld h, l
    rst $00
    push bc
    ld b, a
    push bc
    push bc
    rst $00
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec c
    rrca
    jr nc, jr_013_53eb

    ld b, b
    ld a, a
    rst $38
    add c
    rst $38
    rst $38
    rst $00
    rst $00
    call Call_013_694b
    rst $28
    or [hl]
    rst $38
    ld b, b
    rst $38
    add e
    db $fc
    rst $38
    inc bc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    cp $fe
    rst $28
    dec [hl]
    rst $30
    sbc d
    xor $df
    ldh [$ffdf], a
    db $e3
    rst $18
    push hl
    sbc $eb
    db $dd
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b

jr_013_53eb:
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$ffa0], a
    ld [$cadd], a
    dec a
    db $eb
    db $fd
    dec h
    cp $e3
    ccf
    ret nz

    ld a, a
    rst $38
    rst $38
    ld bc, $e001
    and b
    ldh [$ffa0], a
    ldh [$ffa0], a
    ret nc

    ld [hl], b
    ret z

    cp b
    db $e4
    call c, $eeb6
    sbc c
    ld a, a
    db $ed
    db $db
    ccf
    ld [hl], $0f
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    add b
    add b
    adc $4e
    di
    cp l
    ld c, e
    db $fd
    db $eb
    ld e, l
    di
    db $fd
    inc hl
    db $fd
    and e
    db $fd
    sub e
    db $fd
    sub e
    db $fd
    ld d, e
    ld a, l
    ld c, e
    ld a, l
    cpl
    dec a
    dec de
    dec de
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    cpl
    ld a, a
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    push af
    cp e
    nop
    nop
    rra
    rra
    ccf
    cpl
    ld a, a
    ld e, a
    rst $38
    cp a
    push af
    cp e
    add sp, -$49
    pop af
    cp a
    rst $38
    cp a
    push af
    cp e
    cp a
    ret nz

    rst $38
    rst $38
    ld d, [hl]
    ld a, a
    ld a, a
    ld d, [hl]
    ld a, a
    ld l, b
    ccf
    ccf
    nop
    nop
    rra
    rra
    dec sp
    ld h, $32
    cpl
    ld [hl+], a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    jr c, jr_013_54bc

    ld l, b
    ld e, b
    db $fc
    db $fc
    or h
    call z, $fcfc
    ld l, b
    ld e, b
    jr c, jr_013_54c8

    nop
    nop
    ld [de], a
    sub l
    ld d, h
    nop
    nop
    nop
    nop
    ld [$1c08], sp
    inc d
    ld [hl], $2e
    ld a, [hl-]
    ld a, $6d
    ld [hl], e
    ld [hl], a
    ld c, a
    nop
    nop
    inc b
    inc b
    rrca
    dec bc
    dec de
    rla
    dec e
    rra
    ld [hl], $3b
    ld a, [hl-]
    daa
    cpl
    ccf
    db $db
    cp h
    db $ed
    di
    or [hl]
    rst $08
    db $db

jr_013_54bc:
    inc a
    ld l, l
    di
    rst $38
    rst $38
    or $0f
    ld l, c
    sbc a
    add b
    add b
    sub b

jr_013_54c8:
    sub b
    ld hl, sp+$68
    ld l, h
    call c, $fcb4
    jp c, $eee6

    sbc [hl]
    or $fa
    ld e, a
    ld a, [hl]
    ld [hl], e
    ld c, [hl]
    ld [hl], d
    ld c, a
    ld d, e
    ld l, a
    dec h
    ccf
    dec e
    rra
    ld [bc], a
    inc bc

jr_013_54e3:
    ld bc, $f701
    ld sp, hl
    db $fd
    or e
    ei
    ld b, a
    rst $38
    rst $38
    xor $19
    xor $19
    db $dd
    or e
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, c
    add a
    ld a, c
    add a
    ld a, c
    add a
    or d
    adc $fc
    db $fc
    jr nz, jr_013_54e3

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [$1408], sp
    inc e
    ld l, $32
    ld [hl], $2e
    ld e, e
    ld a, l
    ld l, l
    ld [hl], e
    nop
    nop
    inc b
    inc b
    dec bc
    rrca
    rla
    add hl, de
    dec de
    rla
    ld l, $3f
    ld [hl], $3b
    dec sp
    daa
    or [hl]
    rst $08
    db $db
    cp h
    ld l, l
    di
    or [hl]
    rst $08
    db $db
    inc a
    rst $38
    rst $38
    or $0f
    ld l, c
    sbc a
    add b
    add b
    sub b
    sub b
    add sp, -$08
    call c, $6c64
    call c, $fab6
    jp c, $eee6

    sbc [hl]
    nop
    nop
    nop
    nop
    ld [$1408], sp
    inc e
    ld a, [hl-]
    ld a, $2e
    ld [hl-], a
    ld [hl], a
    ld c, a
    ld e, e
    ld a, l
    nop
    nop
    inc b
    inc b
    dec bc
    rrca
    dec e
    rra
    rla
    add hl, de
    ld a, [hl-]
    daa
    ld l, $3f
    inc sp
    ccf
    db $ed
    di
    or [hl]
    rst $08
    db $db
    inc a
    ld l, l
    di
    or [hl]
    rst $08
    rst $38
    rst $38
    or $0f
    ld l, c
    sbc a
    add b
    add b
    sub b
    sub b
    ld l, b
    ld hl, sp-$0c
    db $fc
    call c, $ee64
    sbc [hl]
    or [hl]
    ld a, [$e6da]
    inc [hl]
    add hl, hl
    inc [hl]
    add hl, hl
    ld d, $18
    ld a, [de]
    inc d
    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $6301
    ld d, l
    ld h, e
    ld d, l
    ld [hl], a
    ld c, c
    ld [hl], $2a
    ld a, $22
    inc e
    inc d
    ld [$0008], sp
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    jp hl


    sub a
    call $95b7
    rst $38
    xor e
    rst $38
    sbc $fe
    ld a, h
    ld a, h
    inc h
    cp b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_55f0

    ld c, b
    ld a, b
    add h
    db $fc
    add h
    db $fc
    ld e, h
    ld a, h
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    cp [hl]
    ldh [c], a
    ld l, a
    ld [hl], c
    daa
    ccf
    ld d, $1f
    inc c
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $be01
    pop bc
    jp nz, $c1bd

    cp [hl]
    cp h
    rst $38

jr_013_55f0:
    rst $20
    rst $38
    db $db
    and [hl]
    db $d3
    rst $28
    rst $20
    rst $38
    sub h
    db $fc
    ld [hl], h
    db $fc
    inc [hl]
    db $fc
    ld [hl], h
    call c, $dcf4
    ld hl, sp-$48
    ldh [$ffe0], a
    ldh a, [$fff0]
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    inc c
    inc sp
    ld a, $59
    ld h, a
    or b
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, a
    ldh a, [$ff30]
    pop hl
    ld hl, $43c2
    ld b, d
    jp $8181


    ld b, d
    jp $c3c3


    ldh a, [$fff0]
    ld hl, sp-$38
    ld a, b
    adc b
    ldh a, [$ff30]
    call z, $9a7c
    and $0d
    di
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    rra
    dec d
    rra
    inc de
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rra
    inc de
    inc e
    inc e
    ld bc, $e201
    db $e3
    db $fc
    rra
    db $ec
    sbc a
    adc h
    rst $38
    ld e, $ff
    db $e3
    db $e3
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
    ld bc, $0101
    ld bc, $c3bf
    call nz, $cfbf
    cp b
    rst $38
    db $fc
    db $e4
    rst $38
    rst $18
    and a
    db $d3
    rst $28
    rst $20
    rst $38
    ld a, $fe
    cp $fe
    call z, Call_013_747c

Call_013_567f:
    call z, $9ce4
    ld [$f0f8], sp
    ldh a, [$fff0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    ld b, $05
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    dec c
    dec bc
    dec d
    rra
    dec hl
    ccf
    dec h
    ccf
    ld l, $fe
    ccf
    rst $38
    dec a
    cp $79
    sbc $fb
    rst $18
    db $fc
    cp a
    ld [$fcef], a
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    inc hl
    ccf
    rra
    ld e, $07
    inc b
    rrca
    inc c
    inc sp
    ld a, $59
    ld h, a
    or b
    rst $08
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    bit 7, b
    adc b
    ldh a, [$ff30]
    call z, $9a7c
    and $0d
    di
    rst $38
    rst $38
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    dec c
    dec bc
    dec d
    rra

Call_013_56f4:
    dec hl
    ccf
    dec h
    ccf
    cp [hl]
    pop bc
    jp nz, $c1bd

    cp [hl]
    cp h
    rst $38
    db $db
    and [hl]
    db $d3
    rst $28
    rst $20
    rst $38
    nop
    nop
    ld l, $fe
    ccf
    rst $38
    dec a
    sbc $79
    sbc $fb
    cp a
    db $fc
    rst $38
    ld a, [$fcff]
    rst $38
    inc hl
    ld a, $1f
    inc e
    rrca
    inc c
    inc sp
    ld a, $59
    ld h, a
    or b
    rst $08
    rst $38
    rst $38
    nop
    nop
    db $fc
    rst $08
    ld a, e
    adc e
    ldh a, [$ff30]
    call z, $9a7c
    and $0d
    di
    rst $38
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [rSVBK], a
    ld d, b
    jr c, jr_013_5768

    rra
    rla
    inc c
    dec bc
    dec bc
    inc c
    dec bc
    inc c
    nop
    nop
    ld bc, $1201
    inc de
    dec hl
    ld a, [hl-]
    rra
    ld d, $0d
    ld a, [bc]
    dec sp
    inc a
    ld e, a
    ld h, b
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $7b
    ld a, h
    cp a
    ret nz

jr_013_5768:
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    xor b
    add sp, -$53
    db $ed
    xor e
    rst $28
    sbc [hl]
    ei
    ld d, [hl]
    cp e
    ld d, [hl]
    cp c
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    rst $20
    rst $38
    xor d
    rst $30
    dec hl
    or $ba
    push bc
    xor d
    rst $10
    xor [hl]
    db $d3
    xor e
    or $aa
    push af
    ld [hl], $7d
    ld d, l
    ld e, a
    ld d, a
    ld e, a
    db $db
    inc h
    db $db
    inc h
    rst $38
    nop
    cp l
    ld b, d
    cp l
    ld b, d
    xor c
    ld d, [hl]
    ld a, [hl+]
    rst $30
    ld l, d
    or a
    ld a, [de]
    dec de
    inc de
    inc de
    inc de
    inc de
    ld bc, $0a01
    dec bc
    ld l, $2f
    ld a, [hl+]
    cpl
    ld a, [hl-]
    ccf
    xor b
    cp a
    xor e
    cp h
    ld [hl], e
    db $ec
    ld a, [hl]
    pop bc
    ld a, $45
    dec l
    rst $10
    ld h, l
    rst $18
    ld l, c
    reti


    ld b, b
    ld b, b
    ld h, a
    ld h, a
    ld a, l
    ld e, e
    ld a, d
    ld b, [hl]
    ld l, d
    ld e, [hl]
    db $db
    or a

jr_013_57d4:
    or a
    db $fc
    db $f4
    db $eb
    dec sp
    ld h, $6e
    ld e, l
    ld d, l
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    add b
    ret nz

    ret nz

    jr nz, jr_013_57d4

    and b
    ldh [$ff60], a
    ld h, b
    ld b, $fb
    ld d, a
    inc b
    inc b
    ld c, $0a
    ld c, $0a
    dec d
    dec de
    ld l, $3f
    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    rst $38
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    adc b
    adc a
    ld d, b
    rst $18
    jr nc, @+$01

    jr c, @+$01

    call c, $bee3
    pop bc
    rst $38
    rst $38
    rst $38
    xor h
    rst $38
    pop de
    cp [hl]
    rst $38
    ld sp, hl
    rst $00

jr_013_5829:
    rst $38
    rst $38

jr_013_582b:
    or h
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$11
    rst $38
    rst $28
    cp l
    db $e3
    or d
    cp $3c
    db $fc
    inc c
    db $fc
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

    jr nz, jr_013_5829

    jr nz, jr_013_582b

    and b
    ldh [$ff60], a
    ldh [$ffa0], a
    ldh [$ffbc], a
    db $fc
    ld l, d
    or $d1
    rst $28
    pop de
    rst $28
    ld b, a
    rst $38
    ld b, $5e
    ld e, b
    ld [$1c08], sp
    inc d
    ld a, $3e
    ld a, [hl+]
    ld [hl], $1e
    ld e, $3d
    scf
    ld a, l
    ld d, [hl]
    ei
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$900f], sp
    sbc a
    ret nc

    ld e, a
    ld hl, sp+$3f
    rst $30
    sbc c
    rst $38
    jp $ffff


    rst $30
    rst $28
    rst $20
    cp $fe
    cp l
    cp l
    jp $ffff


    db $f4
    cp a
    ldh a, [$ffbf]
    ld hl, sp-$51
    rst $38
    ld l, a
    cp l
    db $e3
    or d
    cp $3c
    db $fc
    inc c
    db $fc
    nop
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
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$ffa0], a
    ldh [$ffa0], a
    ldh [$ffa0], a
    db $fc
    ld a, h
    ld [$d1f6], a
    rst $28
    pop de
    rst $28
    ld b, a
    rst $38
    ld hl, $58c1
    jr jr_013_58db

    inc [hl]
    inc l
    ld h, $3e
    dec de
    dec e
    ld a, [bc]
    rrca
    dec b
    ld b, $07
    dec b
    ld a, [bc]
    rrca
    jr c, jr_013_590b

    ld d, h
    ld l, h
    ld a, h
    ld a, h
    cp e
    rst $00
    cp $39

jr_013_58db:
    rst $10
    xor $39
    rst $00
    ld a, h
    add e
    dec bc
    rrca
    dec bc
    ld c, $3b
    dec a
    ld a, l
    ld b, [hl]
    ldh [c], a
    sbc a
    or e
    call $e39f
    ld c, [hl]
    ld [hl], l
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    ld de, $feff
    cp $01
    ld b, l
    cp e
    cp e
    rst $38
    sub $ef
    ccf
    jr z, jr_013_5921

    ld a, [de]
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop

jr_013_590b:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    add $ff
    ld a, h
    add $45
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_5921:
    dec bc
    rrca
    dec bc
    ld c, $0b
    dec c
    add hl, bc
    ld c, $06
    rlca
    ccf
    dec a
    ld a, [hl]
    ld b, l
    db $e3
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    ld de, $feff
    cp $01
    ld b, l
    cp e
    cp d
    rst $38
    rst $10
    rst $28
    di
    adc l
    rst $18
    and e
    ld c, [hl]
    ld [hl], l
    ccf
    jr z, jr_013_5967

    ld a, [de]
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    cp e
    rst $00
    ld a, l
    ld a, l
    add d
    add e
    ld b, l
    add $c7
    ld b, h
    add $45
    rst $00
    rst $00
    nop
    nop
    dec bc
    rrca
    dec bc
    ld c, $0b
    dec c

jr_013_5967:
    add hl, bc
    ld c, $06
    rlca
    rlca
    dec b
    ld c, $0f
    rra
    ld de, $2738
    inc a
    inc hl
    scf
    jr z, @+$15

    dec e
    rrca
    ld a, [bc]
    rlca
    ld b, $03
    inc bc
    nop
    nop
    cp d
    rst $00
    ld a, h
    rst $38
    rst $00
    add $ab
    ld l, l
    rst $10
    jr c, jr_013_5a09

    sub d
    add hl, sp
    rst $10
    cp $fe
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld a, e
    ld b, l
    ld e, c
    ld h, a
    ld e, c
    ld h, a
    ld e, c
    ld h, a
    cp a
    rst $38
    cp a
    and $bf
    pop de
    sbc a
    rst $28
    rst $28
    ldh a, [$fff4]
    ld e, e
    ld l, e
    rst $18
    db $fd
    xor $5d
    ld h, e
    ld a, a
    ld e, l
    ld a, a
    ld h, e
    ld l, l
    ld d, e
    ld a, [hl+]
    ld [hl], $2a
    ld [hl], $1c
    inc d
    ld [$1b08], sp
    inc e
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
    nop
    dec bc
    rrca
    dec bc
    ld c, $0f
    rrca
    rra
    ld de, $223d
    inc l
    inc sp
    inc l
    inc sp
    inc l
    inc sp
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    ld de, $ffff
    rst $38
    add d
    add $bb
    cp d
    rst $38
    sub $ef
    ld a, [hl-]
    ld b, a
    ld a, a
    ld a, [hl]
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld d, b
    ld [hl], b
    add hl, hl
    add hl, sp
    dec e
    dec d
    rla
    dec de

jr_013_5a09:
    rrca
    add hl, bc
    rlca
    inc b
    dec c
    ld c, $0e
    dec bc
    add d
    add d
    rst $00
    ld b, l
    rst $00
    ld b, l
    ld l, l
    xor e
    rst $28
    xor e
    rst $38
    sub d
    add hl, sp
    add $ba
    ld b, l
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $05
    ld b, $85
    add [hl]
    ld c, e
    call z, $bcfb
    ei
    call c, Call_013_6c57
    dec hl
    inc [hl]
    jr c, jr_013_5a6b

    ld a, b
    ld l, b
    db $ec
    call nc, Call_000_38d8
    and e
    db $e3
    ld [hl], h
    ld d, a
    add hl, hl
    ld l, $5b
    ld a, h
    inc bc
    inc bc
    dec b
    ld b, $3b
    dec a
    ld d, [hl]
    ld l, d
    ld a, [$3af6]
    or $ac
    ld [hl], h
    sub $6a
    ld a, e

jr_013_5a62:
    ld e, h
    dec l
    ld a, $33
    dec l
    rra
    inc de
    dec c
    dec c

jr_013_5a6b:
    nop
    nop
    nop
    nop
    nop
    nop
    db $eb
    rra
    sub a
    halt
    add hl, hl
    ld sp, hl
    ld hl, sp-$18
    ret c

    ld l, b
    add sp, -$68
    sub b
    ldh a, [$ff60]
    ld h, b
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
    add hl, bc
    add hl, bc
    ld d, $1f
    add hl, hl
    add hl, hl
    ld [hl], e
    ld d, e
    ld [hl], h
    ld d, a
    add hl, hl
    ld a, $17
    jr jr_013_5a62

    ret nz

    and b
    ld h, b
    ldh [$ffa0], a
    ldh a, [$ffb0]
    add sp, -$08
    inc a
    db $f4
    sbc [hl]
    ld [hl], d
    db $ec
    inc [hl]
    dec bc
    inc c
    add hl, bc
    ld c, $14
    rra
    rra
    rla
    dec sp
    daa
    ld l, a
    ld e, l
    or d
    ldh a, [c]
    ld b, b
    ld b, b
    call c, $f8e4
    ld [$e838], sp
    call nc, $c8dc
    ld c, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld hl, $5ad4
    nop
    nop
    ccf
    ccf
    ld a, l
    ld b, d
    ld a, a
    ld a, a
    ld [hl], h
    ld c, e

jr_013_5ade:
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld e, $1e
    db $ed
    di
    ccf
    rst $38
    cp h
    db $e3
    cp [hl]
    pop hl
    or d
    db $ed
    db $fd
    db $e3
    rst $38
    cp a
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_013_5ade

    ldh a, [$fff0]
    ld l, b
    sbc b
    db $f4
    db $ec
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld a, a
    ld a, a
    ld a, l
    ld b, d
    ccf
    ccf
    sub $b9
    cp a
    rst $38
    push af
    rst $28
    xor [hl]
    db $fd
    cp h
    ei
    cp h
    ld [hl], e
    ld a, c
    and $ff
    rst $38
    call nc, $f4bc
    db $ec
    ld l, b
    sbc b
    ldh a, [$fff0]
    ld l, b
    sbc b
    ld hl, sp+$68
    cp h
    db $f4
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$1f1f], sp
    add hl, sp
    ld h, $72
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$fff8], a
    sbc b
    ld [hl], h
    db $ec
    inc d
    db $fc
    inc bc
    ld [bc], a
    rlca
    inc b
    ld c, $09
    ld e, $1f
    dec a
    inc hl
    ld a, a
    ld e, [hl]
    cp a
    rst $38
    jp nz, $90c3

    ld l, a
    inc hl
    rst $18
    ld b, l
    cp [hl]
    adc e
    ld a, l
    adc [hl]
    rst $38
    ld [hl], l
    rst $38
    rst $28
    sbc b
    cp $71
    ldh [$ffa0], a
    ld b, b
    ret nz

    ldh [$ffe0], a
    db $10
    ldh a, [$ff88]
    ld hl, sp-$34
    ld a, h
    ld a, [$ddb6]
    ei
    rrca
    rrca
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    rlca
    rlca
    dec bc
    dec c
    rla
    dec de
    rra
    rra
    cp $ff
    or $6f
    push af
    ld l, a
    xor $9d
    db $fc
    ei
    cp h
    di
    ld sp, hl
    and $ff
    rst $38
    call nc, $f4bc
    ld a, h
    ld l, b
    sbc b
    ldh a, [$fff0]
    ld l, b
    sbc b
    ld hl, sp+$68
    cp h
    db $f4
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
    rrca
    rrca
    ld d, $19
    cpl
    ccf
    ld e, a
    ld a, a
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
    cp $c1
    ccf
    rst $38
    jp nz, Jump_000_00ff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    sbc b
    ld a, b
    cp $fe
    pop de
    ccf
    ld a, a
    ld a, a
    ld bc, $0101
    ld bc, $0302
    dec b
    ld b, $07
    dec b
    dec bc
    inc c
    rla
    jr @+$01

    rst $38
    db $db
    rst $20
    rst $38
    rst $38
    ld a, c
    add a
    db $fc
    add e
    db $e4
    db $db
    ei
    add a
    push af
    ld c, $3f
    rst $38
    ldh [$ffe0], a
    and b
    ldh [$ffe0], a
    and b
    ldh [$ffa0], a
    and b
    ldh [$fff0], a
    ldh a, [$ffa8]
    ld hl, sp-$0c
    ld e, h
    or h
    ld l, h
    ld l, b
    sbc b
    ldh a, [$fff0]
    ld l, b
    sbc b
    ld hl, sp+$68
    cp h
    db $f4
    db $fc
    db $fc
    ld bc, $0201
    inc bc
    rrca
    rrca
    inc de
    inc e
    cpl
    inc [hl]
    ccf
    ld l, $5f
    ld h, h
    cp a
    ret nz

    rst $20

jr_013_5c35:
    rst $20
    db $db
    inc a
    rst $30
    rst $38
    rst $08
    ccf
    db $e3
    rra
    cpl
    rst $18
    push de
    dec sp
    xor e
    ld [hl], a
    ldh a, [$fff0]
    ret z

    jr c, jr_013_5c35

    call c, $dcb4
    or [hl]
    jp c, $feda

    ei
    db $ed
    db $ed
    rst $30
    db $ed
    ld e, e
    cp a
    ld a, a
    ld e, a
    cp a
    rst $38
    rst $38
    ld l, e
    sbc e
    ei
    ld l, e
    cp l
    push af
    db $fd
    db $fd
    ld e, b
    add sp, -$18
    ld hl, sp-$14
    or h
    or h
    call c, $def6
    sbc $ea
    ldh [c], a
    cp $9c
    sbc h
    jr nz, jr_013_5cb5

    ld e, a
    ld h, b
    xor a
    rst $18
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a

Call_013_5c7f:
    ld a, a
    dec hl
    scf
    rra
    rra
    nop
    rst $38
    rst $30
    rrca
    rst $28
    rra
    ei
    rst $38
    db $fd
    rst $30
    rst $30
    db $fd
    ld l, e
    sbc a
    rst $38
    rst $38
    inc b
    db $fc
    ld a, [$fdfe]
    rst $38
    or a
    ld a, a
    ld a, [$eeee]
    ld a, [$bc74]
    ld hl, sp-$08
    rra
    rra
    jr nz, jr_013_5ce7

    ld e, a
    ld h, b
    xor a
    rst $18
    rst $38
    rst $38
    ld d, [hl]
    ld l, a
    ld a, a
    ld a, a
    dec hl
    scf
    rst $38

jr_013_5cb5:
    rst $38
    nop
    rst $38
    rst $30
    rrca
    db $eb
    rra
    rst $30
    db $fd
    db $dd
    scf
    ei
    rst $38
    ld l, a
    sbc a
    db $fc
    db $fc
    inc b
    db $fc
    ld a, [$75fe]
    cp a
    rst $28
    ei
    ld a, [$b6ee]
    ld a, [hl]
    db $fc
    db $fc
    nop
    nop
    sbc $de
    ccf
    rst $38
    cp h
    db $e3
    cp [hl]
    pop hl
    or d
    db $ed
    db $fd
    db $e3
    rst $38
    cp a
    ld d, $e7
    ld e, h

jr_013_5ce7:
    rlca
    rlca
    rra
    jr jr_013_5d29

    cpl
    ld [hl], d
    ld e, a
    ld l, l
    ld [hl], d
    db $ed
    cp a
    db $ed
    rst $38
    jp nc, $e0bf

    ldh [$fff8], a
    jr @-$2a

    db $ec
    ld a, [hl+]
    or $da
    ld [hl], $d5
    cp e
    rst $18
    cp a
    dec l
    di
    rst $28
    db $fd
    sub $b9
    sub [hl]
    ld sp, hl
    ld l, [hl]
    ld [hl], c
    ld a, a
    ld a, a
    ccf
    inc sp
    ld e, $19
    rlca
    rlca
    reti


    rst $38
    or l
    ld l, a
    and l
    ld a, a

jr_013_5d1d:
    sbc d
    ld a, [hl]
    cp $fe
    inc [hl]
    db $fc
    jr jr_013_5d1d

    ldh [$ffe0], a
    nop
    nop

jr_013_5d29:
    nop
    nop
    nop
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
    dec c
    rrca
    ld a, [de]
    rra
    dec [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    ld [hl], l
    ld e, a
    ld [hl], l
    ld e, a
    ld [hl], l
    ld a, d
    ld l, d
    ld e, a
    or b
    ldh a, [rBCPS]
    ret c

    or h
    ld l, h
    xor h
    ld [hl], h
    xor d
    or $aa
    or $be
    ld a, [hl]
    ld e, d
    and $77
    ld a, a
    ld l, [hl]
    ld e, c
    ld l, [hl]
    ld e, c
    ld c, [hl]
    ld a, c
    halt
    ld a, c
    ccf
    ccf
    rra
    inc de
    ld c, $0d

jr_013_5d67:
    or d
    cp $ea
    ld e, [hl]
    ld [$ca5e], a
    ld a, [hl]
    or d
    ld a, [hl]
    db $fc
    db $fc
    jr c, @-$06

    jr nc, jr_013_5d67

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
    ld bc, $0001
    nop
    rrca
    rrca
    ccf
    jr nc, jr_013_5e09

    ld e, a
    rst $30
    xor h
    rst $38
    rst $38
    rst $38
    ld e, e
    db $e4
    ccf
    nop
    nop
    ldh a, [$fff0]
    db $fc
    inc c
    jp c, $2de6

    di
    db $fd
    di
    sbc $b1
    ld l, $f1
    rst $38
    rst $38
    call c, $9cb3
    di
    rst $38
    rst $38
    ld a, a
    ld [hl], e
    ld [hl], $39
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    or h
    ld l, a
    and l
    ld a, a
    rst $38
    rst $38
    ld [hl-], a
    cp $0c
    db $fc
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec c
    dec bc
    rra
    rra
    dec a
    cpl
    dec sp
    inc h
    ld h, h
    ld a, a
    ld a, a
    ld e, a
    db $fc
    db $fc
    ld [$95f6], a
    ld a, e
    push af
    ei
    push de
    cp e
    xor l
    ld [hl], e
    ld a, a
    rst $38
    jp hl


    rst $18
    db $dd
    or d
    cp d
    push hl
    db $f4
    set 7, a
    rst $38
    db $fc
    rst $08
    sub b
    rst $28

Call_013_5df3:
    ld c, b
    ld [hl], a
    ccf
    ccf
    ld [$929e], a
    cp $64
    db $fc
    db $fc
    db $fc
    ret c

    ld hl, sp+$30
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    ccf
    ccf

jr_013_5e09:
    ld b, b
    ld a, a
    rst $38
    xor $91
    rst $38
    ret c

    or a
    rst $38
    rst $38
    rst $30

jr_013_5e14:
    cp [hl]
    or $ed
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ret z

    jr c, jr_013_5e14

    adc h
    db $f4
    call z, $c67a
    ld a, [hl]
    cp $fb
    cp a
    halt
    ld a, c
    ld l, e
    ld e, h
    dec h
    ld a, $17
    rra
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    add e
    rst $38
    sbc c
    ld a, a
    ld h, l
    cp a
    and l
    ld a, a
    rst $20
    rst $38
    db $dd
    rst $38
    add d
    ld a, [hl]
    db $fc
    db $fc
    ld d, $4a
    ld e, [hl]
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
    ld a, b
    ld b, a
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_5e60:
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    jr jr_013_5e60

    call nc, Call_013_5f3c
    ld h, b
    ld c, a
    ld [hl], b
    inc hl
    inc a
    jr nz, jr_013_5eb1

    rla
    rra
    ld a, $29
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    jp c, $dd36

    inc sp
    cp a
    ld h, c
    ld b, [hl]
    ld sp, hl
    add e
    db $fc
    sbc l
    cp $6f
    di
    ld a, c
    rst $30
    sbc $e9
    cp a
    rst $38
    cp $ff
    ld a, a
    ld a, a
    ld [hl], a
    ld a, a
    dec sp
    scf
    dec e
    dec de
    rlca
    rlca
    reti


    rst $28
    ld d, a
    rst $28
    xor e
    ld [hl], a
    ld e, [hl]
    cp [hl]
    or h
    call z, $f8f8
    ldh a, [$fff0]
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    add b

jr_013_5eb1:
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

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
    ld a, a
    ld a, a
    db $fc
    add e
    rst $38
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
    add b
    add b
    ld [hl], b
    ldh a, [$ffac]
    ld a, h
    cp a
    ret nz

    cp a
    ret nz

    ld e, a
    ld h, b
    ld b, a
    ld a, b
    jr nz, jr_013_5f23

    rla
    rra
    ld a, $29
    ld a, a
    ld d, [hl]
    cp d
    ld h, [hl]
    cp l
    ld h, e
    ld e, a
    pop hl
    ld b, [hl]
    ld sp, hl
    add d
    db $fd
    nop
    rst $38
    sbc l
    rst $38
    ld l, a
    di
    ld a, a
    ld d, [hl]
    sbc $e9
    cp a
    rst $38
    cp $ff
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a
    ld a, $39
    rra
    rra
    ld a, c
    rst $30
    reti


    rst $28
    ld d, a
    rst $28
    xor e
    ld [hl], a
    ld e, [hl]
    cp [hl]
    or h
    call z, $f8f8
    ldh a, [$fff0]
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b

jr_013_5f23:
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec bc
    inc c
    rra
    db $10
    rla
    jr @+$0b

    ld c, $06
    rlca
    ccf
    ccf

Call_013_5f3c:
    call nz, $f3ff
    ld c, $fb
    ld b, $fb
    ld b, $fb
    ld b, $f2
    rrca
    ld [bc], a
    rst $38
    ldh [$ffe0], a
    jr @-$06

    and $1e
    push af
    rrca
    rst $08
    dec [hl]
    rlca
    db $fd
    dec a
    rst $38
    ld e, a
    rst $20
    add $ff
    cp l
    cp $ff
    xor h
    cp [hl]
    pop de
    cp a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl-]
    dec a
    rra
    rra
    pop de
    rst $28
    ld [hl], e
    rst $38
    ld e, l
    rst $28
    xor e
    rst $30
    ld e, [hl]
    cp [hl]
    or h
    call z, $f8f8
    ldh a, [$fff0]
    add $ff
    cp l
    cp $ff
    xor h
    cp [hl]
    pop de
    cp a
    rst $38
    ld a, a
    ld a, a
    daa
    ccf
    dec e
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], e
    adc h
    db $fc
    ld a, [hl-]
    add $4d
    or e
    add a
    ld a, b
    nop
    nop
    ld [hl], c
    ld [hl], e
    adc h
    db $fc
    ld a, [hl-]
    add $4d
    or e
    ld a, [hl-]
    add $8c
    db $fc
    ld [hl], c
    ld [hl], e
    dec de
    xor l
    ld e, a
    ld [$1c08], sp
    inc d
    inc e
    inc d
    inc e
    inc d
    inc e
    inc d
    ld a, [hl+]
    ld [hl], $2a
    ld [hl], $7f
    ld a, a
    dec b
    ld b, $0f
    rrca
    ld d, $19
    inc l
    inc sp
    jr z, jr_013_5ffe

    ld b, b

jr_013_5fc8:
    ld a, a
    ld c, a
    ld a, a
    ld e, a
    ld a, c
    ret nc

    jr nc, jr_013_5fc8

    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $02
    cp $01
    rst $38
    pop af
    rst $38
    ld sp, hl
    rra
    ld e, a
    halt
    ld a, a
    halt
    cp a
    reti


    sbc a
    rst $28
    push hl
    cp $f6
    rst $38
    ld a, e
    ld a, e
    add hl, sp
    add hl, sp
    ld sp, hl
    rst $08
    ld sp, hl
    rst $08
    ld a, [$fc1e]
    db $fc
    call nc, $a26c
    sbc $02
    cp $fe
    cp $bf

jr_013_5ffe:
    db $ed
    cp a
    db $ed
    ld a, a
    ld [hl], d
    ld a, a
    ld a, a
    ld l, e
    ld e, h
    call nz, $83bf
    rst $38
    db $fc
    db $fc
    ldh a, [c]
    sbc [hl]
    ldh a, [c]
    sbc [hl]
    db $f4
    inc a
    db $fc
    db $fc
    ld d, h
    db $ec
    and d
    sbc $02
    cp $fe
    cp $0b
    inc c
    rra
    rra
    inc l
    inc sp
    jr c, jr_013_604c

    ld d, b
    ld l, a
    ld b, b
    ld a, a
    ld e, a
    ld a, a
    cp a
    db $f4
    and b
    ld h, b
    ldh a, [$fff0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $c2
    cp $e2
    ld a, [hl]
    cp a
    db $eb
    cp a
    db $eb
    ld e, a
    ld [hl], h
    ld a, a
    ld a, a
    dec sp
    inc l
    ld h, l
    ld e, [hl]
    ld b, e
    ld a, a
    ccf

jr_013_604c:
    ccf
    ldh [c], a
    ld a, $ee
    ld a, $f5
    ld a, e
    jp hl


    rst $30
    ld b, a
    rst $38
    adc $7e
    db $fc
    db $fc
    jr c, jr_013_6095

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    db $ed
    cp a
    db $ed
    ld a, a
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    sbc [hl]
    ldh a, [c]
    sbc [hl]
    db $f4
    inc a
    ccf
    ccf
    inc bc
    inc bc
    rrca
    inc c
    rla
    dec de
    rrca
    rrca
    rrca
    inc c
    rla
    dec de
    rrca
    rrca
    ld hl, sp-$08
    and b
    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

jr_013_6095:
    and b
    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

    and b
    ld h, b
    rrca
    inc c
    rla
    dec de
    rrca
    rrca
    dec sp
    inc a
    ld l, e
    ld e, h
    call nz, $83bf
    rst $38
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    ld a, b
    ld hl, sp+$54
    db $ec

jr_013_60b7:
    and d
    sbc $02
    cp $fe
    cp $bf
    db $ed
    cp a
    db $ed
    ld a, a
    ld [hl], d
    ccf
    ccf
    dec bc
    dec c
    rlca
    ld b, $07
    inc b
    rrca
    add hl, bc
    ldh a, [c]
    sbc [hl]
    ldh a, [c]
    sbc [hl]

jr_013_60d1:
    db $f4
    inc a
    ld hl, sp-$08
    jr nz, jr_013_60b7

    ret nz

    ld b, b
    add b
    add b

jr_013_60db:
    add b
    add b
    inc de
    rra
    rrca
    rrca
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    add hl, bc
    inc de
    rra
    dec c
    dec c
    inc bc
    ld [bc], a
    ret nz

    ret nz

    jr nz, jr_013_60d1

    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_013_60db

    ret nz

    ld b, b
    rlca
    inc b
    rrca
    add hl, bc
    rla
    rra
    dec sp
    inc a
    ld l, e
    ld e, h
    call nz, $83bf
    rst $38
    db $fc
    db $fc
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    ld a, b
    ld hl, sp+$54
    db $ec
    and d
    sbc $02
    cp $fe
    cp $00
    nop
    nop
    nop
    dec bc
    inc c
    rra
    rra
    inc l
    inc sp
    ld e, b
    ld h, a
    ld d, b
    ld l, a
    add b
    rst $38
    nop
    nop
    nop
    nop
    and b
    ld h, b
    ldh a, [$fff0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $9f
    rst $38
    cp a
    db $ed
    cp a
    ldh a, [c]
    cp a
    rst $38
    ld l, e
    ld e, h
    call nz, $83bf
    rst $38
    db $fc
    db $fc
    ldh [c], a
    cp $f2
    sbc [hl]
    ldh a, [c]
    ld a, $f2
    cp $54
    db $fc
    xor d
    sbc $02
    cp $fe
    cp $27
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld e, $1f
    dec a
    dec sp
    add hl, hl
    ccf
    ld d, [hl]
    ld l, a
    cp c
    add $00
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, @-$06

    inc [hl]
    db $ec
    and h
    ld a, h
    jp c, $e13e

    rra
    inc bc
    inc bc
    ld b, $07
    ld a, [bc]
    rrca
    ld a, [de]
    rla
    ld a, [de]
    rla
    add hl, de
    rla
    dec c
    dec bc
    rlca
    rlca
    rst $38
    rst $38
    dec l
    di
    push de
    dec sp
    push af
    ei
    push af
    db $db
    or d
    sbc $ea
    ld [hl], $fc
    db $fc
    rst $38
    rst $38
    ld l, e
    sbc h
    or a
    ret c

    or a
    ret c

    or a
    ret c

    or c
    sbc $68
    sbc a
    rst $38
    rst $38
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    add b
    ld b, $07
    dec c
    dec bc
    ld e, $11
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
    ld a, [$8407]
    rst $38
    ld a, l
    cp $e7
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @-$0e

    add sp, $18
    db $f4
    inc c
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
    rst $38
    rst $38
    or c
    rst $18
    xor [hl]
    pop af
    xor [hl]
    pop af
    cp a
    rst $38
    ld a, [hl]
    db $ed
    ld e, l
    di
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    rst $18
    xor [hl]
    pop af
    cp a
    ldh [$ffbf], a
    ldh [$ff6e], a
    pop af
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, e
    sbc h
    or a
    ret c

    or a
    ret c

    or a
    ret c

    or c
    sbc $7c
    sbc a
    db $e3
    rst $38
    ld a, [bc]
    rrca
    dec e
    inc de
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
    db $fc
    rlca
    add l
    cp $ff
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
    add sp, $18
    db $f4
    inc c
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
    nop
    nop
    cpl
    jr nc, jr_013_6283

    ccf
    cpl
    ccf
    ld a, [hl-]
    ld h, $3a
    ld h, $1a
    ld d, $1a
    ld d, $0c
    inc c
    cp b
    ld a, b
    ld b, h
    db $fc
    call nc, Call_013_74ec
    ld c, h
    ld [hl], h
    ld c, h
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    jr nc, @+$32

    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, de
    rra
    dec sp
    ld l, $56
    ld a, e
    ld l, l
    ld [hl], e
    sbc [hl]
    pop hl
    nop
    nop
    nop

jr_013_6283:
    nop
    ldh [$ffe0], a
    sbc b
    ld hl, sp+$5c
    db $f4
    ld l, d
    sbc $b6
    adc $79
    add a
    rrca
    rrca
    dec e
    inc de
    ccf
    ld hl, $213f
    dec a
    inc hl
    cpl
    scf
    ld de, $0e1f
    ld c, $ff
    rst $38
    or h
    rst $08
    xor e
    call c, $dfaf
    xor [hl]
    db $db
    ld c, l
    ld a, e
    ld d, a
    ld l, h
    ccf
    ccf
    rlca
    rlca
    rrca
    add hl, bc
    rra
    ld de, $111f
    rra
    ld de, $1b17
    ld [$070f], sp
    rlca
    rst $38
    rst $38
    or c
    rst $18
    xor h
    di
    cp a
    rst $38
    or a
    cp $7e
    ld l, l
    ld e, l
    ld [hl], e
    ccf
    ccf
    rst $38
    rst $38
    add e
    rst $38
    or l
    adc $bb
    call z, $ccbb
    ld e, c
    ld l, [hl]
    ld d, h
    ld l, a
    ccf
    ccf
    rst $38
    rst $38
    ret nc

    ccf
    ld [$ea1d], a
    dec e
    ld [$881d], a
    ld a, a
    ld de, $fffe
    rst $38
    rst $38
    rst $38
    ld bc, $f5ff
    dec bc
    push af
    dec bc
    push af
    dec bc
    ldh a, [c]
    ld c, $6a
    sub [hl]
    db $fc
    db $fc
    rst $38
    rst $38
    add b
    rst $38
    and a
    ret c

    and a
    ret c

    and a
    ret c

    ld b, a
    ld a, b
    ld d, e
    ld l, h
    ccf
    ccf
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    inc [hl]
    cpl
    dec h
    ld a, $5b
    ld a, h
    and a
    ret c

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld a, b
    ld hl, sp-$24
    cp h
    sub h
    db $fc
    ld h, d
    cp $99
    ld h, a
    rst $38
    rst $38
    or b
    rst $38
    ld [$fadd], a
    cp l
    ld a, [$50bd]
    ld a, a
    ld h, c
    ld a, [hl]
    ccf
    ccf
    rst $38
    rst $38
    add c
    rst $38
    cp d
    rst $00
    or l
    rst $08
    or l
    rst $08
    ld e, d
    ld h, a
    ld e, l
    ld h, e
    ccf
    ccf
    rst $38
    rst $38
    ld l, l
    sbc a
    or a
    db $db
    cp a
    db $dd
    cp a
    db $dd
    xor d
    sbc $46
    cp [hl]
    db $fc
    db $fc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, $05
    rrca
    ld [$0f0f], sp
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ei
    rlca
    add a
    cp $7c
    rst $38
    rla
    rst $30
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [hl], h
    adc h
    cp h
    ld a, h
    ldh a, [$fff0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    cpl
    inc sp
    ld a, [hl-]
    dec a
    ld c, $0f
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_013_63a1:
    rst $38
    ld a, c
    add a
    jp nz, Jump_013_7dff

    cp $eb
    db $ec
    rrca
    rrca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

jr_013_63b3:
    ret nz

    ld h, b
    ldh [$ffd0], a
    jr nc, jr_013_63a1

    jr jr_013_63b3

    ld hl, sp+$00
    nop
    nop
    nop
    ldh [$ffe0], a
    sub b
    ld [hl], b
    db $ec
    inc e
    ld [$8a1e], a
    ld a, [hl]
    call z, $30fc
    ldh a, [$ffc0]
    ret nz

    inc h
    db $d3
    ld h, e
    db $fc
    db $fc
    sub h
    db $fc
    or h
    call c, $9cf4
    call nc, $8abc
    cp $5f
    ld h, a
    ld a, h
    ld b, e
    ccf
    ccf
    dec a
    daa
    dec [hl]
    cpl
    dec h
    ccf
    dec l
    scf
    ld [hl], l
    ld c, a
    ld [$ca9e], a
    ld a, $39
    ld h, $3f
    ccf
    ccf
    dec l
    dec l
    ld [hl-], a
    ld [de], a
    rra
    rrca
    rrca
    cp l
    add $7f
    ld a, a
    sub h
    ld a, h
    db $fc
    db $fc
    db $f4
    sbc h
    call nc, Call_000_283c
    ld hl, sp-$10
    ldh a, [$ffba]
    add $fc
    db $fc
    ld e, l
    ld h, e
    ld a, [hl+]
    ld [hl], $1c
    inc e
    ld a, $22
    ld a, $22
    ld a, $22
    inc e
    inc e
    nop
    nop
    add hl, sp
    ld h, $3f
    ccf
    ccf
    dec l
    dec l
    ld [hl-], a
    ld [de], a
    rra
    rrca
    rrca
    dec bc
    inc c
    rrca
    rrca
    sub h
    ld a, h
    db $fc
    db $fc
    db $f4
    sbc h
    call nc, Call_000_283c
    ld hl, sp-$10
    ldh a, [$ffa0]
    ld h, b
    ldh [$ffe0], a
    add hl, sp
    ld h, $3f
    ccf
    ccf
    dec l
    dec l
    ld [hl-], a
    ld [de], a
    rra
    rrca
    rrca
    cp e
    add $7f
    ld a, a
    sub h
    ld a, h
    db $fc
    db $fc
    db $f4
    sbc h
    call nc, Call_000_283c
    ld hl, sp-$10
    ldh a, [$ff7a]
    add $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    rlca
    rlca
    add hl, sp
    ld h, $3f
    ccf
    ccf
    dec l
    dec l
    ld [hl-], a
    ld [de], a
    rra
    rrca
    rrca
    push af
    ld c, $ff
    rst $38
    sub h
    ld a, h
    db $fc
    db $fc
    db $f4
    sbc h
    call nc, Call_000_283c
    ld hl, sp-$10
    ldh a, [$ff5f]
    ldh [rIE], a

jr_013_6492:
    rst $38
    ld e, l
    ld h, e
    ld a, [hl+]
    ld [hl], $1c
    inc e
    ld [hl+], a
    ld a, $22
    ld a, $22
    ld a, $1c
    inc e
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [rSVBK], a
    ld d, b
    jr c, jr_013_64d3

    rra
    rla
    inc c
    dec bc
    dec bc
    inc c
    dec bc
    inc c
    nop
    nop
    ld bc, $1201
    inc de
    dec hl
    ld a, [hl-]
    rra
    ld d, $0d
    ld a, [bc]
    dec sp
    inc a
    ld e, a
    ld h, b
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $7b
    ld a, h
    cp a
    ret nz

jr_013_64d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec bc
    rrca
    ld d, $1b
    dec e
    ld d, $06
    ld b, $0b

Jump_013_64e6:
    dec c
    ld d, $1a
    inc l
    inc [hl]
    ld a, b
    ld c, b
    ldh a, [$ff90]
    ret nc

    jr nc, jr_013_6492

    ld h, b
    dec hl
    inc [hl]
    ld [hl], $29
    ld e, h
    ld h, e
    ld a, e
    ld b, h
    cp [hl]
    pop bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld a, h
    db $fc
    jp c, Jump_013_64e6

    sbc h
    sbc b
    ld a, b
    ld a, [hl]
    cp $e1
    rra
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
    call nz, $f83c
    ld hl, sp+$01
    ld bc, $0203
    inc bc
    ld [bc], a
    ld b, $05
    rrca
    add hl, bc
    dec c
    dec bc
    rra
    inc de
    add hl, de
    ld d, $80
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    and c
    ld h, c
    ld c, a
    adc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    sub b
    ld [hl], b
    ld h, b
    ldh [$ff80], a
    add b
    ld a, [hl-]
    dec h
    ld a, $21
    ld a, h
    ld b, e
    ld a, e
    ld b, h
    cp $81
    cp $81
    rst $38
    add b
    rst $38
    rst $38
    cp [hl]
    or c
    ld sp, hl
    rst $00
    and $1e
    sbc b
    ld a, b
    ld h, b
    ldh [rNR34], a
    cp $f1
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    dec b
    rlca
    dec b
    ld b, b
    ld b, b
    ldh [$ffa0], a
    or b
    ret nc

    ld e, b
    ld l, b
    ld l, $36
    dec e
    inc de
    ld c, $09
    rlca
    inc b
    rlca
    dec b
    ld c, e
    ld c, l
    xor e
    db $ed
    db $db
    cp l
    db $db
    cp l
    xor a
    reti


    rst $28
    reti


    ld d, a
    jp hl


    dec b
    ld b, $06
    rlca
    dec bc
    dec c
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    ld l, c
    rst $18
    ld hl, $916f
    cp a
    ld b, c
    ld a, a
    add c
    rst $18
    pop hl
    scf
    add hl, sp
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
    inc b
    inc b
    ld a, [bc]
    ld c, $0a
    ld c, $0d
    dec bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    or $f5
    ld b, e
    jp Jump_013_67a5


    and l
    ld h, a
    push de
    scf
    rst $10
    or l
    db $eb
    sbc l
    ld l, e
    ld e, l
    di
    call $9eef
    ld a, d
    ld h, a
    ld e, $11
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    db $ed
    rst $18
    ld hl, $916f
    rst $38
    ld bc, $01ff
    rst $38
    pop bc
    ccf
    ld sp, $0f0f
    ld e, $16
    ld h, [hl]
    rra
    rra
    ld h, a
    ld a, b
    rst $18
    ldh [$ffb7], a
    ld hl, sp-$61
    rst $38
    sbc d
    rst $30
    cp l
    db $e3
    cp l
    db $e3
    ldh a, [$fff0]
    call z, $f63c
    ld c, $da
    ld a, $f2
    xor $d2
    ld l, $52
    xor [hl]
    ld d, d
    xor [hl]
    ld e, d
    ld [hl], a
    rst $38
    rst $38
    sbc a
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
    call z, $fe3c
    cp $f2
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
    sub a
    add sp, -$41
    rst $38
    xor l
    di
    sbc a
    rst $38
    ld h, a
    ld a, b
    rra
    rra
    dec bc
    inc c
    rlca
    rlca
    jp nc, $d22e

    ld l, $d2
    ld l, $d2
    ld l, $cc
    inc a
    ldh a, [$fff0]
    and b
    ld h, b
    ret nz

    ret nz

    sub a
    add sp, -$41
    rst $38
    xor l
    di
    sbc a
    rst $38
    ld h, a
    ld a, b
    rra
    rra
    nop
    nop
    nop
    nop
    jp nc, $d22e

    ld l, $d2
    ld l, $d2
    ld l, $cc
    inc a
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    ld e, d
    ld [hl], a
    ld a, a
    ld a, a
    sbc a
    rst $38
    ld h, a
    ld a, b
    sbc a
    rst $38
    ld l, a
    ld [hl], b
    sbc a
    rst $38
    ld h, a
    ld a, b
    call z, $fc3c
    db $fc
    ldh a, [c]
    cp $cc
    inc a
    ldh a, [c]
    cp $ec
    inc e
    ldh a, [c]
    cp $cc
    inc a
    rst $38
    rst $38
    sbc a
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
    ld e, d
    ld [hl], a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    and b
    rst $18
    ld l, a
    ld [hl], b
    ld e, a
    ld a, a
    and b
    rst $18
    ld l, a
    ld [hl], b
    call z, $fc3c
    db $fc
    db $f4
    db $fc
    ld a, [bc]
    or $ec
    inc e
    db $f4
    db $fc
    ld a, [bc]
    or $ec
    inc e
    ld e, a
    ld a, a
    and b
    rst $18
    ld l, a
    ld [hl], b
    ld e, a
    ld a, a
    and b
    rst $18
    ld c, a
    ld [hl], b
    rst $38
    rst $38
    sbc a
    rst $38
    nop
    nop
    nop

jr_013_66f9:
    nop
    rlca
    rlca
    ld [$150f], sp
    ld e, $2e
    ccf

jr_013_6702:
    ld d, l
    ld a, e
    ld e, a
    ld [hl], c
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$ffd0], a
    jr nc, jr_013_66f9

    jr jr_013_6787

    adc h
    cp d
    add $0e
    rrca
    inc de
    rra
    add hl, de
    rla
    inc d
    dec de
    dec de
    inc e

jr_013_6720:
    inc l
    ccf
    ld h, a
    ld e, a
    ld e, c
    ld h, a
    xor d
    rst $18
    push af
    ei
    adc a
    ldh a, [$ffde]
    pop hl
    ld h, l
    ld a, [$7f98]
    daa
    rst $18
    set 6, a
    ld l, b
    sbc b
    adc b
    ld hl, sp+$68
    ld hl, sp-$70
    ld [hl], b
    jr nz, jr_013_6720

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    add hl, bc
    ld c, $06
    rlca
    rlca
    rlca
    ld [$170f], sp
    jr jr_013_6759

    rrca
    rlca
    rlca

jr_013_6754:
    rlca
    rlca
    sbc a
    ld a, a
    ld a, c

jr_013_6759:
    add a
    rst $38
    rst $38
    dec e
    db $e3
    and $1f
    dec sp
    db $fd
    rst $28
    di
    ld d, $ef
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_013_6754

    ret nc

    jr nc, jr_013_6702

    rst $30
    rst $28
    sbc a
    ld a, l
    ld a, [hl]
    daa
    dec sp
    dec d
    ld e, $0b
    rrca
    inc b
    rlca
    inc bc
    inc bc
    xor l

jr_013_6787:
    db $d3
    ld [hl], l
    adc e
    ei
    rst $00
    or a
    ld l, a
    ld [$96de], a
    ld a, d
    ld l, h
    db $f4
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$150f], sp
    ld e, $22
    ccf
    ld c, c
    ld [hl], a
    ld d, [hl]

Jump_013_67a5:
    ld l, c
    ld a, d
    add a
    ld [hl], a
    adc a
    xor d
    db $dd
    rst $08
    ld hl, sp+$6a
    db $fd
    sbc a
    ld a, a
    inc h
    rst $18

jr_013_67b4:
    set 6, a
    ld l, b
    sbc b
    ld [$e8f8], sp
    ld hl, sp-$70
    ldh a, [$ffa0]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b

jr_013_67d0:
    ret nz

    ret nz

    jr nz, jr_013_67b4

    ret nc

    ldh a, [$ff8b]
    rst $30
    rst $28
    sbc a
    ld a, l
    ld a, [hl]
    inc hl
    inc a
    dec d
    ld a, [de]
    ld a, [bc]
    dec c
    inc b
    rlca
    inc bc
    inc bc
    or l
    rst $38
    ld a, c
    rst $28
    or e
    rst $18
    rst $30
    ld l, a
    ld [$961e], a

jr_013_67f1:
    ld a, d
    ld l, h
    db $f4
    ld hl, sp-$08
    jr jr_013_67f1

    ld h, a
    ld bc, $0201
    inc bc
    inc bc

jr_013_67fe:
    inc bc
    ld [bc], a
    inc bc
    inc bc

jr_013_6802:
    inc bc
    rrca
    rrca
    dec e
    ld d, $32
    dec l
    ldh [$ffe0], a
    ret nc

    jr nc, jr_013_67fe

jr_013_680e:
    ldh a, [$ffd0]
    jr nc, jr_013_6802

    ldh a, [$ffcc]
    db $fc
    ld a, [hl+]
    or $15
    ei
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$0f0b], sp
    dec e
    ld d, $1d
    ld d, $fe
    rst $38
    ld a, [$f567]
    adc [hl]
    ei
    db $fc
    db $fd
    inc bc
    ei
    or $ee
    dec e
    rst $30
    dec c
    and b
    ld h, b
    ret nc

    jr nc, jr_013_680e

    jr nc, jr_013_67d0

    ld [hl], b
    ret nc

    ldh a, [$ffb0]
    ld [hl], b
    ldh a, [$fff0]
    db $10
    ldh a, [$ff2e]
    dec sp
    dec a
    daa
    dec sp
    daa
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push af
    rrca
    add e
    rst $38
    cp $fe
    ld d, h
    ld l, h
    jr c, jr_013_689b

    jr z, jr_013_689d

    jr c, jr_013_688f

    jr c, @+$2a

    ld l, b
    sbc b
    ld a, b
    adc b
    cp b
    ret z

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
    jr z, jr_013_68b3

    jr c, jr_013_68b5

    ld [hl], h
    ld c, h
    ld a, [$fa86]
    add [hl]
    or d
    adc $44
    ld a, h
    jr c, jr_013_68c1

    ld bc, $5f01
    ld h, d
    ccf
    ccf

jr_013_688f:
    dec b
    ld b, $07
    rlca
    rra
    rra
    ld a, [hl-]
    dec l
    ld h, h
    ld e, e
    add b
    add b

jr_013_689b:
    ld e, l
    db $e3

jr_013_689d:
    cp $fe
    and b
    ld h, b
    ldh [$ffe0], a
    sbc b
    ld hl, sp+$54
    db $ec
    ld a, [hl+]
    or $1e
    dec de
    dec e
    rla
    rrca
    rrca
    nop
    nop
    nop
    nop

jr_013_68b3:
    nop
    nop

jr_013_68b5:
    nop
    nop
    nop
    nop
    push af
    rrca
    add e
    rst $38
    cp $fe
    ld d, h
    ld l, h

jr_013_68c1:
    jr c, jr_013_68fb

    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ldh [$ffa0], a
    ld [hl], b
    sub b
    ld [hl], b
    sub b
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
    dec b
    rlca
    ld e, $1e
    ld l, $32
    ld e, a
    ld h, c
    ld e, a
    ld h, c
    ld c, l
    ld [hl], e
    ld [hl+], a
    ld a, $1c
    inc e
    nop
    nop
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    jr jr_013_6913

jr_013_68fb:
    or l
    ld l, [hl]
    rst $38
    rst $38
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld sp, hl
    rst $38
    and l
    sbc $42
    cp a
    nop
    nop
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop

jr_013_6913:
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    push af
    rrca
    add e
    rst $38
    cp $fe
    ld d, h
    ld l, h
    jr c, jr_013_695b

    ld d, b
    ld [hl], b
    ldh [$ffa0], a
    ret nz

    ld b, b
    rlca
    dec b
    ld a, [hl-]
    ld a, $74
    ld c, h
    ld a, [$fa86]
    add [hl]
    or d
    adc $44
    ld a, h
    jr c, jr_013_6971

    nop
    nop
    ld e, l
    ld h, e
    ccf
    ccf
    ld [bc], a
    inc bc
    inc bc

jr_013_6942:
    inc bc
    rrca
    rrca
    dec e
    ld d, $32
    dec l
    ret nz

    ret nz

Call_013_694b:
    cp l
    ld h, e
    cp $fe
    ret nc

    jr nc, jr_013_6942

    ldh a, [$ffcc]
    db $fc
    ld a, [hl+]
    or $15
    ei
    push af
    rrca

jr_013_695b:
    add e
    rst $38
    cp $fe
    ld d, h
    ld l, h
    jr c, jr_013_699b

    inc d
    inc e
    inc e
    inc d
    ld c, $0a
    push af
    rrca
    add e
    rst $38
    cp $fe
    ld d, h
    ld l, h

jr_013_6971:
    jr c, jr_013_69ab

    inc d
    inc e
    ld c, $0a
    rlca
    dec b
    jr jr_013_69f7

    ld l, c
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$ff90]
    cp b
    ret z

    ld c, h
    ld a, h
    ld a, [hl-]
    ld a, $17
    add hl, de
    dec bc
    inc c
    ld h, b
    ld h, b
    ldh a, [$ff90]
    cp b
    ret z

    ld c, h
    ld a, h
    ld a, [hl-]
    ld a, $17
    add hl, de
    dec bc
    inc c
    add l

jr_013_699b:
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_69a3:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

jr_013_69ab:
    ld b, b
    ld e, h
    ld h, h
    ld l, $32
    rla
    add hl, de
    dec bc
    inc c
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    cpl
    inc sp
    rla
    add hl, de
    ld l, e
    ld a, h
    db $dd
    and $7e
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    xor l
    ret nz

    ret nz

    ldh a, [$ff30]
    ld hl, sp-$08
    call nz, $aa7c
    halt
    ld l, $f2
    db $dd
    db $e3
    ccf
    pop bc
    dec sp
    dec l
    cpl
    ccf
    jr jr_013_6a01

jr_013_69e2:
    rla
    rra
    dec c
    ld c, $02
    inc bc
    ld bc, $0601
    rlca
    rst $10
    jr c, jr_013_69e2

    db $fc
    dec bc
    db $fc
    jp hl


    cp $fc
    rra
    dec de

jr_013_69f7:
    rst $20
    rst $20
    rst $38
    db $fd
    dec de
    ldh a, [rNR10]
    ret nc

    jr nc, @-$1e

jr_013_6a01:
    jr nz, jr_013_69a3

    ld h, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    inc de
    inc e
    ccf
    ccf
    ld e, a
    ld h, b
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
    sub d
    ld a, [hl]
    adc [hl]
    cp $55
    rst $28
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
    ld e, d
    ld h, [hl]
    inc a
    inc a
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc a
    inc a
    inc h
    inc a
    ld e, d
    ld h, [hl]
    ld bc, $0601
    rlca
    dec c
    ld c, $1b
    inc e
    cpl
    ccf
    jr nc, jr_013_6a87

    ld e, a
    ld a, a
    ld a, a
    ld d, l
    ld a, [$7efe]
    add [hl]
    rst $20
    rra
    ld hl, sp+$3f
    db $d3
    db $fc
    rla
    ld hl, sp-$19
    ld hl, sp-$11
    or b
    dec e
    inc de
    ld a, [hl-]
    ld h, $74
    ld c, h
    adc b
    ld hl, sp+$50
    ldh a, [$ffe0]
    ld h, b
    and b
    ld h, b
    ldh [rNR41], a
    ld b, $06
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    rrca
    rrca
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c

jr_013_6a87:
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    rrca
    dec bc
    ld a, [bc]
    rrca
    dec c
    ld c, $17
    rra
    jr jr_013_6ab7

    cpl
    ccf
    ccf
    ld a, [hl+]
    ei
    ld a, [$c63f]
    and $1f
    ei
    rra
    add sp, -$01
    inc de

jr_013_6aa7:
    db $fc
    rst $30
    ld hl, sp-$09
    ret c

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$ffe0], a
    jr nz, jr_013_6aa7

jr_013_6ab7:
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]

Call_013_6abc:
    dec sp
    dec l
    cpl
    ccf
    jr jr_013_6ae1

jr_013_6ac2:
    rla
    rra
    dec c
    ld c, $02
    inc bc
    ld bc, $0001
    nop
    rst $10
    jr c, jr_013_6ac2

    db $fc
    dec bc
    db $fc
    jp hl


    cp $dc
    ccf
    ld a, e
    add a
    add e
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld bc, $0301

jr_013_6ae1:
    inc bc
    dec c
    ld c, $13
    inc e
    ccf
    ccf
    ld e, a
    ld h, b
    ccf
    ccf
    db $f4
    adc h
    ld h, h
    sbc h
    call z, $fafc
    ld [hl], $92
    ld a, [hl]
    adc [hl]
    cp $55
    rst $28
    rst $38
    rst $38
    ld sp, $6aff
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $2d
    inc sp
    ld l, $31
    rla
    jr jr_013_6b19

    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_013_6b19:
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ldh a, [$ff98]
    ld hl, sp+$24
    db $fc
    call nc, Call_013_4cec
    ld [hl], h
    jr c, jr_013_6b63

    nop
    nop
    nop
    nop
    ld d, b
    ldh a, [$ff90]
    ldh a, [rNR41]
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
    db $10
    db $10
    jr c, jr_013_6b6b

    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld b, h
    ld a, h
    ld a, h
    ld a, h
    ld d, h
    ld l, h
    jr c, jr_013_6b8f

    ld d, h
    ld l, h
    ld d, h
    ld l, h
    jr z, jr_013_6b95

    db $10
    db $10
    ld b, h
    ld a, h
    ld a, h
    ld a, h

jr_013_6b63:
    ld d, h
    ld l, h
    jr c, jr_013_6b9f

    nop
    nop
    nop
    nop

jr_013_6b6b:
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
    ld b, b
    ld a, a
    rst $38
    add b
    ld b, b
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    db $ec
    ld d, d
    cp $7d
    db $d3
    ld d, d
    cp $ec
    db $ec
    nop
    nop

jr_013_6b8f:
    nop
    nop
    nop
    nop
    ldh [$ffe0], a

jr_013_6b95:
    ld d, b
    ldh a, [rSVBK]
    ret nc

    ld d, b
    ldh a, [$ffe0]
    ldh [rP1], a
    nop

jr_013_6b9f:
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    rrca
    inc c
    ld e, $19
    inc a
    dec hl

jr_013_6baf:
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    db $fc
    rst $08
    ld a, $02
    rst $38
    ld bc, $1fff
    cp $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    jr nz, jr_013_6baf

    inc l
    ccf
    ld l, a
    ld e, e
    ld a, a
    ld e, d
    ld e, l
    ld [hl], a
    or a
    ei
    rst $10
    cp b
    call c, $fcbb
    and a
    ld [hl], $ed
    or $cd
    db $ec
    rst $18
    inc e
    rst $30
    or $ef

jr_013_6be9:
    db $e3
    rra
    ld e, $ff
    dec sp
    rst $20
    jr jr_013_6be9

    inc d
    db $fc
    ld a, [de]
    cp $1a
    cp $29
    rst $38
    db $db
    db $ed
    db $eb
    dec e
    rla
    ld sp, hl
    rst $38
    ei
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, $1f
    rlca
    rlca
    nop
    nop
    nop
    nop
    db $fd
    ei
    db $fc
    ld a, a
    cp $ff
    rra
    rst $38
    ld l, [hl]
    rst $28
    add c
    add c
    nop
    nop
    nop
    nop
    db $ed
    di

jr_013_6c21:
    sbc [hl]
    ldh [c], a
    cp d
    add $74
    adc h
    jr jr_013_6c21

    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    inc l
    ccf
    ld l, a
    ld e, e
    ld a, a
    ld e, d
    ld e, l
    ld [hl], a
    scf
    dec sp
    rla
    jr @+$1e

    dec de
    inc a
    daa
    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$18
    ld hl, sp+$28
    ld hl, sp-$28
    add sp, -$18
    jr jr_013_6c5e

    ldh a, [$ff7f]
    ld a, e
    ld a, l
    ld a, a
    ccf
    ccf
    rra
    rra

Call_013_6c57:
    ld c, $0e
    nop
    nop
    nop
    nop
    nop

jr_013_6c5e:
    nop
    db $fd
    ei
    db $fc
    ld a, a
    cp $ff
    rra
    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
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
    nop
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
    ld a, [hl]
    rst $38
    add c
    ei
    db $fd
    rlca
    ld b, $0e
    add hl, bc
    inc e
    inc de
    jr z, jr_013_6cde

    jr nz, jr_013_6ce8

    ld a, a
    ld e, a
    ld a, a
    ld e, e
    ld d, h
    ld a, a
    sbc l
    ld a, [hl]
    add hl, bc
    cp $07
    rst $38
    ld l, h
    ei
    ld hl, sp-$49
    ld hl, sp+$37
    or b
    ld a, a
    ld [hl], b
    rst $18
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$ff60], a
    ldh [$ff7f], a
    ld l, a
    ld a, a
    ld h, b
    jr nc, jr_013_6d04

    jr @+$19

    rra
    rra
    scf
    ld l, $21
    ccf
    rra

jr_013_6cde:
    rra
    ld hl, sp-$21
    rst $08
    ccf
    sbc d
    ld a, l
    ld [hl], h
    cp e
    db $e3

jr_013_6ce8:
    rst $38
    and a
    ld a, a
    cp $fe
    call c, $a0dc
    ldh [$ff60], a
    and b
    and b
    ldh [$ffc0], a
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

jr_013_6d04:
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
    db $fc
    db $fc
    cp $02
    rst $38
    ld sp, hl
    rrca
    ld c, $1e
    add hl, de
    inc a
    inc sp
    ld a, b
    ld d, a
    ld e, b
    ld a, a

jr_013_6d29:
    rst $18
    or a

jr_013_6d2b:
    rst $38
    or l
    cp d

jr_013_6d2e:
    rst $28
    sbc a
    ld a, l
    dec b
    cp $03
    rst $38
    ld a, $fd
    ld l, h
    db $db
    db $ec
    sbc e
    ret c

    cp a

jr_013_6d3d:
    jr c, jr_013_6d2e

jr_013_6d3f:
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_013_6d29

    jr nz, jr_013_6d2b

    jr nc, jr_013_6d3d

    jr nc, jr_013_6d3f

    rst $28
    rst $30
    rst $28
    or b
    ld a, b
    ld d, a
    ld e, b
    ld a, a
    ccf
    ccf
    scf
    ld l, $21
    ccf
    rra
    rra
    db $ec
    rst $18
    rst $08
    ccf
    ld c, l
    cp [hl]
    ccf
    rst $18
    db $f4
    ei
    xor b
    ld [hl], a
    ldh [rIE], a
    rst $18
    rst $18
    ld d, b
    ldh a, [$ffb0]
    ret nc

    ret nc

    jr nc, jr_013_6dd6

    ldh [$ffc0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    rst $28
    rst $30
    ld l, a
    ld [hl], b
    cp b
    rst $10
    sub b
    rst $38
    rst $28
    rst $38
    rst $30
    db $fc
    ld a, e
    ld a, a
    inc a
    inc a
    db $ec
    rst $18
    rst $08
    ccf
    ld c, l
    cp [hl]
    ld a, $ff
    jp hl


    rst $30
    ld d, b
    rst $28
    ret nz

    rst $38
    ccf
    ccf
    ld d, b
    ldh a, [$ffb0]
    ret nc

    ret nc

    jr nc, jr_013_6dc6

    ldh [$ffc0], a
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld h, b
    ld h, b
    sub b
    ldh a, [$fff0]
    sub b
    add sp, -$68
    xor b
    ret c

    or h
    call z, Call_013_4c74
    ld e, h
    ld h, h
    ld e, [hl]
    ld l, [hl]
    ld a, [hl-]
    ld a, $2e

jr_013_6dc6:
    ld [hl], $1d
    rra
    rla
    add hl, de
    rla
    add hl, de
    ld c, $0e
    ld e, h
    ld h, h
    ld e, [hl]
    ld l, [hl]
    ld a, [hl-]
    ld a, $2e

jr_013_6dd6:
    ld [hl], $1c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, c
    ld b, a
    ld e, a
    ld h, b

jr_013_6de5:
    scf
    jr c, @+$0e

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

    jr nc, jr_013_6de5

jr_013_6df5:
    xor $3e
    ld sp, hl
    ld l, a
    rst $18
    ld sp, hl
    ld [hl], a
    ld a, c
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_013_6df5

    add sp, $38
    ld hl, sp+$68
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    ld c, $12
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_013_6e36

    ld a, $36
    cpl
    dec [hl]
    rra
    add hl, de
    inc de
    ld e, $0d
    rrca
    ld b, $07
    inc b
    rlca
    rrca
    rrca
    dec bc
    inc c
    ld d, $19
    add c
    add c
    add c
    add c

jr_013_6e36:
    ei
    ei
    rlca
    cp $0b
    rst $38
    adc l
    ei
    ld b, a
    rst $38
    ld hl, $18ff
    jr @+$7e

    ld l, h
    db $f4
    xor h
    ld hl, sp-$68
    ret z

    ld a, b
    or b
    ld [hl], b
    ldh [$ffe0], a
    add b
    add b
    rra
    rra
    rra
    dec d
    rrca
    ld a, [bc]
    rlca
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    pop hl
    rst $38
    pop hl
    cp a
    jp nz, $867e

    cp $cd
    ccf
    ld sp, hl
    rst $38
    ld h, c
    sbc a
    ld h, d
    cp $b6
    sbc $fc
    adc h
    add sp, -$68
    ret nc

    or b
    and b
    ldh [$ffc0], a
    ret nz

    add b
    add b
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
    rrca
    rrca
    dec bc
    inc c
    ld d, $19
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, $fe
    add hl, bc
    rst $38
    adc a
    ei
    ld b, a
    cp $23
    rst $38
    add b
    add b
    ldh [$ffe0], a
    ldh a, [$ff30]
    ld a, b
    ret z

    cp b
    ret c

    cp h
    db $e4
    ld l, h
    ld a, h
    jr jr_013_6eca

    rra
    rra
    rra
    dec d
    ccf
    ld a, [hl+]
    ccf
    ccf
    ld a, [de]
    dec de

Call_013_6ebc:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, [hl]
    ld [hl], a

jr_013_6eca:
    db $fc
    rst $10
    rst $18
    rst $38
    ld a, e
    ld a, h
    ld d, $19
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    rst $38
    dec bc
    cp $8e
    ei
    ld b, a
    rst $38
    ld hl, $00ff
    nop
    nop
    nop
    ld a, b
    ld a, b
    cp $ae
    rst $38
    xor e
    xor e
    rst $38
    xor [hl]
    cp $78
    ld a, b
    inc l
    push af
    ld l, [hl]
    ld c, $0e
    dec e
    inc de
    inc sp
    ld l, $37
    inc l
    daa
    inc a
    dec de
    inc e
    rlca
    rlca
    ld b, $07
    ld a, [hl]
    ld a, [hl]
    call $dbbb
    ld h, $bb
    sub $bd

jr_013_6f0e:
    ld b, e
    cp [hl]
    ld b, c
    rst $38
    rst $38
    ei
    ld b, a
    ldh [$ffe0], a
    ldh a, [rNR10]
    adc b
    ld a, b
    ld [$90f8], sp
    ld [hl], b
    ldh [$ffe0], a
    ret nz

    ret nz

    ret nz

    ret nz

    rlca
    rlca
    dec a
    ccf
    ld l, a
    ld e, [hl]
    rst $10
    cp a
    xor e
    db $fc
    xor a
    ld sp, hl
    ld d, a
    ld a, e
    ld d, a
    ld a, b
    rst $38
    rst $38
    db $fd
    or e
    ei
    ld b, a
    db $fc
    rst $38
    ret nz

    ccf
    db $ec
    rla
    db $ec
    rra
    db $ec
    inc de
    db $fc
    db $fc
    jp c, $bde6

    jp $c3bd


    sbc c
    rst $20
    add c
    rst $38
    jp nz, $bcfe

    db $fc
    ld d, a
    ld a, b
    ld c, e
    ld a, h
    ld h, $3f
    ld hl, $143f
    dec de
    dec bc
    inc c

jr_013_6f61:
    inc b
    rlca
    inc bc
    inc bc
    db $ec
    inc de
    jp hl


    rla
    add $3f
    ld hl, sp-$01
    ld [bc], a
    db $fd
    cp $01
    ld hl, sp+$07
    ld bc, $84ff
    db $fc
    inc b
    db $fc
    ld c, b
    cp b
    ret z

    jr c, jr_013_6f0e

    ld [hl], b
    jr nz, jr_013_6f61

    ld b, b
    ret nz

    add b
    add b
    ccf
    ccf
    ld e, [hl]
    ld h, c
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
    rst $38
    rst $38
    cp $83
    ld a, c
    add a
    or d

jr_013_6f9c:
    adc $44
    ld a, h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    rra
    rra
    dec d
    ld e, $17
    dec de
    dec bc
    inc c
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ldh a, [rNR10]
    adc b
    ld a, b
    ld [$90f8], sp

jr_013_6fbe:
    ld [hl], b
    ldh [$ffe0], a
    ret nz

    ret nz

    db $fc
    db $fc
    rlca
    rlca
    dec b
    rlca
    ccf
    ld a, $77
    ld e, a
    db $eb
    cp h
    xor a
    ld sp, hl
    rst $10
    ei
    ld d, a
    ld a, b
    jp c, $bde6

    jp $c3bd


    sbc c
    rst $20
    add c
    rst $38
    jp nz, $bcfe

    db $fc
    add h
    db $fc
    ccf
    ccf
    ld e, l
    ld h, e
    ccf
    ld a, $0b
    inc c
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    call nc, $d83c
    jr c, jr_013_6f9c

    ld h, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld l, l
    ld e, a
    rst $08
    cp [hl]
    rst $10
    cp a
    xor e
    db $fc
    ld l, a
    ld a, c

jr_013_7011:
    ld d, a
    ld a, e
    ld d, a
    ld a, b
    ret nz

    ret nz

    db $fc
    db $fc
    jp c, $bde6

    jp $c3bd


    sbc c
    rst $20
    add c
    rst $38
    jp nz, $bcfe

    db $fc
    inc b
    db $fc
    ld c, b
    cp b
    ret z

    jr c, jr_013_6fbe

    ld [hl], b
    jr nz, jr_013_7011

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    jr jr_013_7053

    scf
    cpl
    ld l, [hl]
    ld e, c
    ld e, l
    ld [hl], d
    dec a
    ld [hl-], a
    rra
    rra
    nop
    nop
    nop
    nop
    jr jr_013_7063

    db $fc
    db $e4
    ldh a, [c]
    ld c, [hl]
    ld h, d
    sbc $24
    db $fc

jr_013_7053:
    ld hl, sp-$08
    ccf
    dec [hl]
    ld a, a
    ld e, d
    rst $18
    cp a
    or a
    ld hl, sp+$57
    ld a, b
    ld d, a
    ld a, h
    ld c, e
    ld a, h

jr_013_7063:
    daa
    ccf
    db $fc
    cp h
    cp $72
    ld sp, hl
    rst $20
    or c
    ld l, a
    sbc d
    halt
    sbc [hl]
    cp $22
    cp $d4
    db $ec
    cpl
    jr nc, jr_013_708f

    jr jr_013_70f9

    ld a, a
    or l
    adc $7f
    ld a, a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    cpl
    jr nc, jr_013_709f

    jr jr_013_7099

    rrca
    dec b
    ld b, $03
    inc bc

jr_013_708f:
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_013_7099:
    jr jr_013_70b3

    db $fc
    db $e4
    ldh a, [c]
    ld c, [hl]

jr_013_709f:
    ld h, d
    sbc $24
    db $fc
    db $fc
    db $fc
    rra
    dec d
    ccf
    ld a, [hl-]
    ld a, a
    ld e, a
    rst $30
    cp b
    rst $10
    ld hl, sp+$57
    ld a, h
    ld c, e
    ld a, h

jr_013_70b3:
    daa
    ccf
    cp $b2
    ld sp, hl
    ld h, a
    pop af
    rst $28
    sbc d
    halt
    sbc [hl]
    ld a, [hl]
    sub d
    cp $22
    cp $d4
    db $ec
    cpl
    jr nc, jr_013_70df

    jr jr_013_70d9

    rrca
    dec d
    dec de
    rrca
    rrca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    db $f4
    inc c
    add sp, $18

jr_013_70d9:
    ldh a, [$fff0]
    xor b
    ld a, b
    ldh a, [$fff0]

jr_013_70df:
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
    jr jr_013_7103

    scf
    cpl
    ld l, [hl]
    ld e, c
    ld e, l
    ld [hl], d
    dec a
    ld [hl-], a
    ccf
    ccf
    ld a, a
    ld d, l
    rst $18
    cp d

jr_013_70f9:
    sbc a
    rst $38
    ld [hl], a
    ld a, b
    ld d, a
    ld a, b
    ld d, a
    ld a, h
    ld c, e
    ld a, h

jr_013_7103:
    daa
    ccf
    ld hl, sp-$48
    db $fc
    ld a, h
    cp $f2
    cp c
    ld h, a
    or c
    ld l, a
    sbc d
    or $2e
    cp $d4
    db $ec
    inc c
    inc c
    dec de
    rla
    ld d, $1d
    rra
    rra
    ccf
    ld a, [hl+]
    daa
    ccf
    dec de
    inc e
    dec bc
    inc c
    jr nc, jr_013_7157

    add sp, -$28
    ld c, b
    ld hl, sp-$08
    ld hl, sp-$04
    and h
    db $f4
    db $ec
    sbc b
    ld a, b
    sub b
    ld [hl], b
    inc c
    inc c
    dec de
    rla
    ld d, $1d
    ccf
    cpl
    cpl
    ld a, [hl-]
    rra
    rra
    dec bc
    inc c
    dec bc
    inc c
    jr nc, jr_013_7177

    add sp, -$28
    ld c, b
    ld hl, sp-$10
    ldh a, [$fff8]
    cp b
    db $fc
    db $e4
    or h
    ld l, h
    sbc b
    ld a, b
    inc c
    inc c

jr_013_7157:
    dec de
    rla
    ld d, $1d
    rrca
    rrca
    rra
    ld a, [de]
    scf
    cpl
    dec hl
    inc a
    dec de
    inc e
    jr nc, jr_013_7197

    add sp, -$28
    ld a, b
    ld hl, sp-$04
    db $e4
    db $f4
    xor h

jr_013_716f:
    ld hl, sp-$08
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    ld d, d
    ld l, [hl]

jr_013_7177:
    ld h, [hl]
    ld a, [hl]
    db $db
    cp l
    halt
    ld l, [hl]
    jr jr_013_7197

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld l, [hl]
    halt
    ld a, [hl]
    ld l, d
    ld e, [hl]
    inc [hl]
    inc a
    jr jr_013_71a7

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld l, [hl]

jr_013_7197:
    ld a, [hl]
    ld a, [hl]
    inc [hl]
    inc l
    inc a
    inc a
    jr jr_013_71b7

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld l, [hl]

jr_013_71a7:
    ld l, [hl]
    ld a, [hl]
    ld d, [hl]
    ld a, d
    inc a
    inc l
    jr jr_013_71c7

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_716f

jr_013_71b7:
    ld [hl], c
    ld h, b
    ld h, b
    ld [hl], e
    ld d, e
    ld a, l
    ld e, [hl]
    ld a, e
    ld c, l
    ld a, a
    ld b, [hl]
    ld a, [hl]
    ld h, c
    ld e, h
    ld [hl], e
    ld a, a

jr_013_71c7:
    ld a, a
    jr nc, jr_013_71fa

    ldh a, [$ffd0]
    ret nc

    or b
    sbc b
    ld a, b
    inc h
    db $fc
    ld b, h
    db $fc
    add h
    db $fc
    xor $fa
    dec bc
    rrca
    dec bc
    rrca
    ld b, $07
    rrca
    add hl, bc
    rra
    db $10
    daa
    ld a, [hl-]
    ccf
    daa
    inc hl
    ccf
    cp $f7
    cp [hl]
    rst $30
    ld [bc], a
    rst $38
    ld [hl], e
    rst $38
    add a
    db $fc
    ld a, a
    ld sp, hl
    adc a
    ld [hl], c
    rst $18
    ld hl, $a0e0

jr_013_71fa:
    and b
    ldh [$ffc0], a
    ret nz

    ldh [rNR41], a
    sub b
    ld [hl], b
    ld [$f8f8], sp
    ret z

    adc b
    ld hl, sp+$23
    ccf
    dec e
    dec e
    inc bc
    ld [bc], a
    inc b
    rlca
    inc e
    rra
    jr c, jr_013_723b

    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld bc, $83ff
    ld a, l
    rst $00

jr_013_721d:
    jr c, jr_013_721d

    ld de, $ab6c
    ld b, h
    rst $00
    ld b, h
    rst $00
    rst $00
    rst $00
    ld b, $06
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    rra
    rra
    inc h
    ccf
    dec h
    ccf
    cpl
    inc sp
    ld b, $06
    sbc [hl]

jr_013_723b:
    sbc d
    ld a, [$e666]
    ld e, $c9
    ccf
    ld sp, hl
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    db $e4
    db $fc
    call nz, $e47c
    ld a, h
    ld a, b
    ret z

    dec de
    rla
    ld [de], a
    rra
    ld a, [bc]
    rrca
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $ff06
    ld h, d
    rst $38
    ld [hl], e
    rst $38
    scf
    db $fc
    rst $38
    ld hl, sp+$27
    ret c

    adc a
    ld [hl], c
    rst $18
    ld hl, $f888
    sub b
    ldh a, [$ffa0]
    ld h, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc b
    rlca
    inc e
    rra
    jr c, jr_013_72bb

    ld b, b
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc a
    inc a
    cpl
    dec sp
    ld c, a
    ld a, c
    ld b, a
    ld a, h
    ccf
    ld l, $1b
    rra
    nop
    nop
    ld a, h
    ld a, h
    sbc a
    rst $30
    inc [hl]
    rst $28
    ld l, b
    rst $18
    ret z

    cp a
    sub l
    ld a, [hl]
    cp l
    ld a, [hl]

jr_013_72b8:
    inc c
    inc c
    ld [de], a

jr_013_72bb:
    ld e, $21
    ccf

jr_013_72be:
    or c
    cp a
    ld [hl], d
    cp $dc
    ld h, h
    jr z, jr_013_72be

    jr nc, jr_013_72b8

    ld e, a
    ld a, [hl]
    ccf
    ccf
    rrca
    rrca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    ld [$fbf5], sp
    db $d3
    ld a, a
    sub a
    rst $38
    ccf
    ld sp, hl
    rst $20
    reti


    adc a
    ld [hl], c
    db $dd
    inc hl
    ld [hl], c
    adc a
    ld e, $11
    daa
    jr c, jr_013_7310

    inc a
    ld hl, $723f
    ld c, [hl]
    add d
    cp $86
    cp $78
    ld a, b
    ld [bc], a
    cp $02
    cp $cf
    pop af
    ccf
    ld hl, $213f
    cpl
    ld sp, $3e22
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld c, h
    ld [hl], h
    ld c, h
    ld [hl], h

jr_013_7310:
    ld b, h
    ld a, h
    jr c, jr_013_734c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, a
    ld b, e
    ld b, a
    ld a, d
    ccf
    ld a, $05
    rlca
    rlca
    rlca
    jr jr_013_7342

    inc l
    inc [hl]
    rst $38
    rst $38
    ld e, a
    or b
    cp $a7
    db $fd
    ld c, a
    ld hl, sp+$1f
    rst $38
    cp a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld sp, hl
    adc a
    adc c
    rst $38

jr_013_7342:
    cp $fe
    ld b, b
    ret nz

    ret nz

    ret nz

    ccf
    cpl
    ccf
    dec hl

jr_013_734c:
    ccf
    inc [hl]
    dec hl
    ccf
    ccf
    ccf
    rla
    dec de
    rrca
    rrca
    ld c, $0d
    ret z

    ld a, b
    ret z

    ld a, b
    sub h
    db $fc
    inc d
    db $fc
    ld hl, sp-$08
    ret nc

    ldh a, [rNR10]
    ldh a, [$ff60]
    ldh [$ff15], a
    dec de
    rrca
    rrca
    rrca
    rrca
    ld a, [hl]
    ld a, e
    ld sp, hl
    or a
    ld a, d
    ld a, a
    rlca
    rlca
    inc b
    rlca
    ldh [$ffe0], a
    sub b
    ldh a, [$fff0]
    ldh a, [$ff3e]
    cp $7d
    rst $38
    ld a, $fe
    ldh a, [$fff0]
    ret nc

    jr nc, jr_013_73c7

    ld a, $22
    ld a, $32
    ld l, $32
    ld l, $32
    ld l, $3e
    ld [hl+], a
    inc e
    inc d
    ld [$3f08], sp
    cpl
    ccf
    dec hl
    ccf
    inc [hl]
    dec hl
    ccf
    ccf
    ccf
    ld a, [hl]
    ld a, e
    ld sp, hl
    or a
    ld a, d
    ld a, a
    ret z

    ld a, b
    ret z

    ld a, b
    sub h
    db $fc
    inc d
    db $fc
    ld hl, sp-$08
    ld a, $fe
    ld a, l
    rst $38
    ld a, $fe
    cp $fe
    sbc d
    and $7c
    ld a, h
    ld b, h
    ld a, h
    ld h, h
    ld e, h
    ld a, h
    ld b, h
    jr c, jr_013_73ee

    db $10

jr_013_73c7:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], a
    ld d, a
    ld a, b
    ld e, a
    ld a, c
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    ldh a, [$ffd0]
    ret nc

    or b
    sbc b
    ld a, b
    ld a, a
    ld b, [hl]
    ld a, [hl]
    ld h, c
    ld e, h
    ld [hl], e

jr_013_73ee:
    ld a, a
    ld a, a
    cp a
    rst $38
    cp e
    rst $38
    ld h, b
    ld a, a
    ld [hl], a
    ld e, a
    inc h
    db $fc
    ld b, h
    db $fc
    add h
    db $fc
    xor $fa
    xor $7a
    ld [$3c7e], a
    db $fc
    ld a, [hl]
    and $03
    ld [bc], a
    rlca
    inc b
    ld a, a
    ld a, [hl]
    adc a
    rst $38
    sbc e
    cp $8b
    cp $7d
    ld a, a
    rrca
    rrca
    db $e3
    ld a, [hl]
    rst $38
    inc a
    rst $38
    rst $38
    ld e, $f3
    cp [hl]
    rst $20
    ld sp, hl
    ld c, a
    ldh a, [$ff1f]
    rst $38
    cp a
    db $fc
    ld b, h
    cp $f2
    dec sp
    db $fd
    ld [hl], a
    db $ed
    ld h, [hl]
    cp $3c
    db $fc
    db $e4
    db $fc
    cp b
    ld hl, sp+$03
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    rrca
    ld d, $1b
    ld [de], a
    rra
    rrca
    rrca
    rra
    rla
    rrca
    rrca
    db $fd
    rst $30
    db $fd
    or a
    rst $38
    ld c, a
    cp e
    db $fc
    cp $f9
    rst $28
    cp a

jr_013_7454:
    sub a
    ld a, a
    and e
    rst $38
    inc c
    db $f4
    jr jr_013_7454

    sub b
    ldh a, [$ff30]
    ldh a, [rNR10]
    ldh a, [$fff0]
    ldh a, [$ffd0]
    ldh a, [$ffe0]
    ldh [$ff7f], a
    ld e, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld l, c
    ld d, [hl]
    ld a, a
    ld h, b
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld a, $3d
    and c
    rst $38
    and c
    rst $38

Call_013_747c:
    ld l, a
    pop af
    ld a, [hl]
    jp nz, $c2fe

    cp $c6
    ld b, d
    cp $e2
    cp $35
    dec sp
    ld l, a
    ld e, a
    ld c, a
    ld a, a
    ld a, [hl]
    ld a, e
    ld sp, hl
    or a
    ld a, d
    ld a, a
    rlca
    rlca
    inc b
    rlca
    pop hl
    rst $38
    pop af
    rst $28
    ldh [c], a
    sbc $26
    cp $7d
    rst $38
    ld a, $fe
    ldh a, [$fff0]
    ret nc

    jr nc, jr_013_74e5

    inc a
    ld a, [hl]
    ld b, d
    jp hl


    sub a
    call $95b7
    rst $38
    xor e
    rst $38
    sbc $fe
    ld a, h
    ld a, h
    ld e, b
    cp e
    ld [hl], h
    jp nz, $dd3e

    cp a
    pop bc
    cp a
    rst $00
    add hl, sp
    sbc a
    ld h, a
    ld a, $de
    cp $fe
    cp $fe
    ccf
    ccf
    ccf
    jr c, jr_013_74e7

    dec e
    rrca
    add hl, bc
    ccf
    add hl, sp
    ld e, a
    ld a, l
    xor a
    rst $18
    adc a
    rst $38
    pop hl
    rst $38
    ret nz

    cp a
    ldh [c], a
    ld e, a
    db $ed
    ld e, a
    pop hl
    ld e, a

jr_013_74e5:
    add $bf

jr_013_74e7:
    rst $38
    cp $3e
    dec sp
    ret nz

Call_013_74ec:
    ret nz

    ret nz

    ret nz

    ldh [$ffe0], a
    or b
    ret nc

    ld [hl], b
    ldh a, [$ffe8]
    jr @-$06

    ld [$1cf4], sp
    sbc d
    cp $69
    ld [hl], a
    inc h
    dec sp
    jr c, jr_013_7542

    ld l, l
    ld e, a
    add l
    rst $38
    rst $38
    rst $38
    nop
    nop
    rla
    add hl, de
    ld e, $11
    adc a
    adc a
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    cp h
    db $e4
    jp c, Jump_000_3ae6

    ld [hl], $0e
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $da3c
    cp [hl]
    jp nz, $cebe

    ld [hl-], a
    sbc a
    ld l, a
    ccf
    rst $38
    rst $00
    rst $38
    db $e3
    sbc a
    ccf
    daa
    ld a, $27
    ccf
    inc hl
    rra

jr_013_7542:
    inc de
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    ld sp, hl
    rst $30
    inc e
    rst $38
    ldh a, [$ffde]
    pop af
    cp b
    rst $38
    rst $38
    rst $38
    sbc [hl]
    cp $f6
    adc [hl]
    ld [hl], a
    adc a
    ldh a, [c]
    xor [hl]
    or $ae
    db $f4
    xor h
    xor b
    ret c

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    or l
    rst $08
    ld l, h
    ld e, e
    ld a, $31
    rla
    jr jr_013_7593

    inc e
    dec sp
    ld h, $7d
    ld b, e
    ld a, [hl]
    ld a, [hl]
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$ffe0], a
    and b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    db $fc
    inc sp
    call $cc7b
    ld a, e
    db $fc
    inc sp

jr_013_7593:
    ld sp, hl
    add [hl]
    ld b, e
    rst $38
    ld a, a
    rst $38
    sbc a
    sub c
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ldh a, [$fff0]
    sbc b
    ld hl, sp+$28
    ret c

    ld a, b
    adc b
    rst $38
    adc e
    db $fd
    add a
    db $fd
    add a
    ld a, d
    ld c, [hl]
    inc a
    inc a
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    rst $38
    cp h
    jp $ffff


    ld c, a
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a

jr_013_75c7:
    sbc $3f
    db $db
    ld a, $bf
    xor b
    sbc a
    sub b
    sbc a
    sub b
    rst $28
    jp hl


    rst $18
    rst $38
    jr nc, jr_013_75c7

    db $10
    ldh a, [$ff38]
    ld hl, sp-$08
    xor b
    ld hl, sp-$58
    ld hl, sp-$58
    ldh a, [$ff90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld a, a
    inc a
    dec sp
    ld e, $19
    daa
    inc a
    ld a, e
    ld b, [hl]
    cp d
    rst $00
    rst $38
    rst $38
    nop
    nop
    ret


    rst $38
    or c
    cp a
    ld c, l
    rst $08
    ld b, e
    jp $e0a0


    and b
    ldh [$ffe0], a
    ldh [rP1], a
    nop
    ld hl, sp+$67
    sbc e
    rst $30
    sbc b
    rst $30
    ld sp, hl
    ld h, [hl]
    di
    adc l
    ld b, [hl]
    rst $38

jr_013_7617:
    ld a, c
    cp $ff
    call nz, $8080
    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [$ff60], a
    ldh a, [$fff0]
    jr nc, jr_013_7617

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_013_766b

    ccf
    cpl
    ccf
    ld [hl], a
    ld c, a
    ld a, e
    ld b, a
    ld a, a
    ld a, a
    ld l, $31
    ld e, $19
    daa
    inc a
    rst $38
    rst $38
    sbc $e1
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    ld b, b
    ret nz

    ld b, b
    ret nz

    rst $38
    and d
    rst $38
    jp nz, $c2ff

    rst $38
    and $ff
    rst $38
    rst $30
    db $fc
    ld a, e
    ld a, h
    rra
    inc e
    ret nc

    or b
    ldh [$ffa0], a
    ldh [$ffa0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [$ffb0], a
    ld [hl], b
    ret z

    ld a, b

jr_013_766b:
    ld [hl], e
    ld c, [hl]
    ld a, [$ff87]
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
    and b
    ldh [$ffa0], a
    ldh [$ffe0], a
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
    rrca
    dec bc
    inc c
    rrca
    inc c
    rrca
    rrca
    dec bc
    rra
    inc e
    ld a, $3f
    inc hl
    ccf
    ld e, a
    ld h, a
    cp a
    db $ec
    inc sp
    cp $73
    cp $ff
    xor h
    cp $11
    ret z

    ccf
    adc a
    rst $38
    add hl, sp
    ld sp, hl
    db $10
    ldh a, [rBCPS]
    ld hl, sp+$08
    ld hl, sp+$38
    ret z

    ld [hl], b
    or b
    db $fc
    ld a, h
    ldh [c], a
    cp $cd
    di
    ld a, a
    ld c, b
    ld a, a
    ld d, c
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ccf
    add hl, sp
    ld c, $0e
    nop
    nop
    nop
    nop
    sbc a
    sbc a
    rst $10
    ld e, b
    rst $18
    rst $18
    cp a
    cp a
    ccf
    ccf
    ld l, [hl]
    ld e, [hl]
    halt
    ld c, [hl]
    ldh a, [c]
    adc [hl]
    di
    ldh a, [c]
    sub a
    ld [hl], l
    rst $30
    or $fb
    ld a, [$f9f9]
    db $ec
    db $f4
    call c, $9ee4
    ldh [c], a
    rst $38
    ld hl, $15ff
    rst $38
    dec d
    rst $38
    dec d
    cp $32
    db $ec
    db $ec
    nop
    nop
    nop
    nop
    dec bc
    dec c
    rra
    ld e, $1f
    db $10
    rra
    inc e
    inc hl
    ld a, $79
    ld b, a
    db $fd
    add e
    rst $38
    rst $38
    rst $28
    rst $28
    xor e
    ld l, h
    xor e
    ld l, h
    xor e
    ld l, h
    xor e
    ld l, h
    ld d, l
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    dec b
    rlca
    inc b
    rlca
    dec b
    cpl
    ld sp, $3f32
    rst $38
    rst $28
    db $fc
    rra
    cp $c9
    rst $38
    inc d
    rst $38
    call nc, $94ff
    ld a, [hl]
    ei
    ld a, a
    add e
    ei
    rst $08
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld [hl], a
    rst $38
    dec c
    rst $38
    jp hl


    rra
    dec b
    rst $38
    db $e3
    sbc a
    pop af
    rst $28
    ld a, [$fcf6]
    db $fc
    db $f4
    db $fc
    xor $f2
    inc bc
    ld [bc], a
    rlca
    rlca
    dec c
    ld c, $1b
    inc e
    daa
    inc a
    ld [hl], e
    ld c, [hl]
    ld a, [$ff87]
    rst $38
    cp $79
    rst $38
    rst $08
    rst $18
    ld l, a
    xor h
    ld a, h
    ldh a, [rSVBK]
    and b
    ldh [$ffa0], a
    ldh [$ffe0], a
    ldh [$ff3f], a
    rst $38
    rst $38
    rst $38
    add c
    add c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    sbc $e2
    cp $fe
    ld [hl], h
    adc h
    ld a, b
    sbc b
    db $e4
    inc a
    adc $72
    ld e, a
    pop hl
    rst $38
    rst $38
    rrca
    rrca
    ld e, $1f
    ld a, a
    ld a, a
    sbc a
    rst $38
    rst $28
    sbc a
    ei
    sub a
    cp h
    db $e3
    ld a, [hl]
    ld h, c
    rst $38
    ld sp, hl
    rst $30
    inc e
    rst $38
    ldh a, [$fffe]
    pop af
    ld hl, sp-$01
    ccf
    ccf
    cp a
    cp a
    ld d, a

Jump_013_77ba:
    rst $18
    cpl
    jr nc, jr_013_77d1

    inc e
    rrca
    ld c, $09
    rrca
    ld c, $09
    dec c
    dec bc
    ld a, [bc]
    ld c, $0c
    inc c
    ld d, l

jr_013_77cc:
    db $db
    or [hl]

jr_013_77ce:
    ld sp, hl
    or a
    ld sp, hl

jr_013_77d1:
    rst $08
    adc $8b
    adc h
    dec b
    ld b, $03
    inc bc
    ld [bc], a
    inc bc
    add b
    add b
    ret nz

    ret nz

    and b

jr_013_77e0:
    ld h, b
    ret nc

    jr nc, jr_013_77cc

    jr jr_013_77ce

    jr jr_013_77e0

    adc b
    ld [hl], b
    ret nc

    adc h
    db $fc
    add sp, -$68
    ldh a, [$ff90]
    ldh [$ffa0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp a
    rst $00
    cp $ff
    db $fc

Call_013_7802:
    rst $38
    ld sp, hl
    cp $89
    adc [hl]
    ld c, a
    adc $4f
    set 7, h
    db $fc
    sbc h

jr_013_780e:
    db $fc
    rrca
    rst $38
    rra
    ld hl, sp-$55
    ld a, l
    db $db
    cp [hl]
    db $fd
    ld e, [hl]
    rst $28
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$ffe0], a
    or b
    ld [hl], b
    ret c

    jr c, jr_013_780e

    inc a
    cp a
    ldh a, [$ffbf]
    db $f4
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
    push hl
    rst $20
    push bc
    ld b, a
    rst $00
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
    ccf
    ccf
    ld e, [hl]
    ld [hl], c
    ld c, a
    ld a, h
    inc sp
    ld a, $0f
    ld c, $07
    ld b, $06
    dec b
    inc bc
    inc bc
    db $fc
    db $fc
    db $e3
    sbc a
    pop af
    ld c, a
    pop af
    ld c, a
    db $e3
    ld e, a
    ld b, a
    rst $38
    ld hl, sp-$08
    nop
    nop
    db $fd
    or a
    call $c8fa
    rst $38
    db $fc
    or a
    rst $38
    set 7, l
    ldh a, [c]
    ld [hl], l
    ld a, d
    jr jr_013_789a

    nop
    nop
    db $e3
    db $e3
    ld a, a
    ld e, [hl]
    cpl
    inc [hl]
    rla
    dec e
    rrca
    inc c
    rlca
    ld b, $07
    dec b
    db $fc
    db $fc
    ld [$d11e], a
    ccf
    cp a
    ld a, [hl]
    cp h
    ld h, e
    and e
    ld a, a
    ld a, a
    rst $38
    db $fd

jr_013_789a:
    and $00
    nop
    inc a
    inc a
    add sp, -$28
    or b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    ldh a, [$fff0]
    adc h
    ld a, h
    rlca
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    ld a, e
    rst $28
    ld a, h
    sbc a
    inc e
    rst $38
    dec hl
    rst $38
    db $fd
    or $fa
    rlca
    pop af
    ld e, a
    inc bc
    rst $38
    nop
    nop
    db $e3
    db $e3
    ld a, a
    ld e, [hl]
    cpl
    inc [hl]
    rla
    dec e
    rrca
    inc c
    rrca
    ld c, $1f
    dec d
    db $fc
    db $fc
    ld [$d11e], a
    ccf
    cp a
    ld a, [hl]
    cp h
    ld h, e
    and e
    ld a, a
    ld a, l
    cp $fd
    rst $20
    nop
    nop
    inc a
    inc a
    add sp, -$28
    or b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    ld hl, sp-$08
    and $1e
    db $fd
    or a
    call $c8fa
    rst $38
    db $fc
    or a
    ld a, a
    ld c, e
    ld a, l
    ld [hl], d
    dec [hl]
    ld a, [hl-]
    jr jr_013_792a

    rst $28
    cp e
    call z, Call_013_5c7f
    rst $38
    cp a
    db $eb
    rst $38
    call nz, Call_000_0ff2
    db $e3
    cp a
    rrca
    rst $38
    nop
    nop
    db $e3
    db $e3
    ld a, a
    ld e, [hl]
    cpl
    inc [hl]
    rla
    dec e
    rrca
    inc c
    ccf
    ld a, $7f

jr_013_792a:
    ld b, l
    db $fc
    db $fc
    ld [$d11e], a
    ccf
    cp a
    ld a, [hl]
    cp h
    ld h, e
    and e
    ld a, a
    ld a, l
    cp $fd
    and $00
    nop
    inc a
    inc a
    add sp, -$28
    or b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    db $fc
    db $fc
    ei
    add a
    rst $38
    or l
    rst $08
    ld a, [$fbce]
    rst $38
    or e
    ld a, [$65c7]
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld b, a
    ld a, c
    rst $28
    ld [hl], e
    sbc a
    rla
    db $fd
    cpl
    ld sp, hl
    rst $38
    ldh a, [$ffbf]
    ld b, b
    cp [hl]
    ld d, l
    ld bc, $7fff
    ld e, d
    ld h, a
    ld a, l
    ld h, a
    ld a, l
    ld a, a
    ld e, c
    ld a, l
    ld h, e
    inc sp
    ld a, $3e
    ccf
    ccf
    daa
    cp l
    rst $30
    cp c
    ld c, a
    dec bc
    rst $38
    sub a
    db $fd
    rst $38
    ld a, b
    cp [hl]
    ld b, c
    cp h
    ld d, a
    ld bc, $f7ff
    ld e, [hl]
    rst $30
    xor c
    pop hl
    cp a
    ldh a, [c]
    ccf
    cp a
    ld l, a
    ld [hl], a
    ret z

    rst $10
    ld [$3f20], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ccf
    cpl
    rla
    ld a, [de]
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
    push af
    adc a
    add sp, $1f
    rst $18
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
    ld e, $1e
    db $f4
    db $ec
    ret c

    jr c, jr_013_79d7

    ld c, $07
    ld b, $03
    inc bc
    rlca
    ld b, $0f
    ld a, [bc]
    rra
    rla

jr_013_79d7:
    dec a
    cpl
    dec sp
    dec l
    sbc $b1
    pop de
    ccf
    cp [hl]
    ld a, a
    cp $f3
    cp h
    rst $30
    cp c
    ld c, a
    dec bc
    cp $97
    cp $60
    ldh [$ffc0], a
    ret nz

    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp-$78
    db $fc
    ld h, h
    jp c, $b2e6

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1c00], sp
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld [$2800], sp
    nop
    stop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$4000], sp
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
    dec b
    ld a, $7a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc a
    ccf
    ld a, c
    ld c, [hl]
    db $eb
    sbc h
    db $d3
    cp h
    sub a
    ld hl, sp+$00
    nop
    jr c, jr_013_7a8a

    call c, $bee4

Jump_013_7a55:
    jp nz, $c2be

    sbc d
    and $c4
    ld a, h
    db $fc
    inc a
    ld d, a
    ld a, b
    inc sp
    inc a
    add hl, bc
    ld c, $04
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop

jr_013_7a6e:
    db $f4
    inc c
    db $e4
    inc e
    adc b
    ld a, b
    jr c, jr_013_7a6e

    ret c

    add sp, $38
    ret z

    ld [hl], b
    sub b
    ldh [$ffe0], a
    ld c, $0e
    ld a, a
    ld a, c
    rst $28
    cp c
    cp a
    rst $20
    ld l, d
    halt
    ld a, $3e

jr_013_7a8a:
    ld d, $1a
    inc c
    inc c
    ld b, $91
    ld a, d
    rst $38
    rst $38
    sub a
    add sp, -$69
    add sp, -$01
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    ld a, a
    ld a, a
    ld h, [hl]
    ld e, a
    ld [hl], c
    cp $fe
    jp nc, $d22e

    ld l, $fe
    cp $fe
    cp $cc
    db $fc
    db $fc
    call z, Call_000_1cf4
    ld c, [hl]
    ld a, a
    rst $38
    rst $38
    sub a
    add sp, -$01
    rst $38
    ld e, e
    ld l, h
    dec l
    ld [hl], $17
    ld e, $09
    add hl, bc
    db $e4
    db $fc
    cp $fe
    jp nc, $fe2e

    cp $b4
    ld l, h
    ld l, b
    ret c

    ret nc

    ldh a, [rNR41]
    jr nz, jr_013_7b20

    ld a, a
    rst $38
    rst $38
    sub a
    add sp, -$01
    rst $38
    ld d, a
    ld a, b
    ld a, [hl+]
    dec a
    dec e
    rra
    ld a, [bc]
    ld a, [bc]
    db $e4
    db $fc
    cp $fe
    jp nc, $fe2e

    cp $6c
    call c, $b8d8
    or b
    ldh a, [$ff60]
    ld h, b
    rlca
    db $f4
    ld a, d
    ccf
    ccf
    ld d, a
    ld l, b
    xor a
    ret nc

    xor a
    ret nc

    cp a
    call c, $ffff
    ld l, e
    ld [hl], h
    rst $38
    rst $38
    ccf
    ccf
    ld d, a
    ld l, b
    xor a
    ret nc

    xor a
    ret nc

    rst $28
    rst $30
    rst $38
    rst $38
    ld l, e
    ld [hl], h
    rst $38
    rst $38
    xor a
    ret nc

    rst $38
    rst $38
    ld c, [hl]
    ld [hl], e
    and l
    cp $d5
    cp [hl]
    rst $38
    rst $38

jr_013_7b20:
    xor l
    sbc $77
    ld [hl], a
    or e
    call z, $fc8b
    ld [hl], h
    ld [hl], a
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
    ld l, e
    ld e, h
    rst $30
    adc b
    rst $30
    adc b
    and e
    call c, $5e69
    ld d, l
    halt
    ld [hl+], a
    inc hl
    ld bc, $0001
    nop
    jr nz, jr_013_7b68

    ld [hl], c
    ld d, c
    ld d, d
    ld [hl], e
    inc hl
    ld [hl+], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0801
    ld [$141c], sp
    inc d
    inc e
    adc b
    adc b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld de, $7b67
    rst $38

jr_013_7b68:
    rst $38
    sub a
    add sp, -$21
    rst $28
    rst $18
    rst $28
    sub a
    add sp, $7f
    ld a, a
    ld [de], a
    dec e
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rla
    rst $28
    sbc a
    rst $28
    sbc a
    jp hl


    rla
    cp $fe
    ld c, b
    cp b
    ldh a, [$fff0]
    rst $38
    rst $38
    sub a
    add sp, -$61
    db $fc
    sbc a
    db $fc
    sub a
    add sp, $7f
    ld a, a
    ld [de], a
    dec e
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_013_7bb6:
    rst $38
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_013_7bef

    jr nc, jr_013_7c01

    jr nz, jr_013_7c23

    ld h, b
    ld a, a
    ld b, b
    nop

jr_013_7bc8:
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    sub h
    ld l, h
    call z, $c634
    ld a, [hl-]
    add $3a
    ld a, a
    ld b, b
    ld d, a
    ld l, b
    jr nc, jr_013_7c0c

    jr z, jr_013_7c16

    inc d
    dec de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    add d
    ld a, [hl]
    ld [bc], a
    cp $04
    db $fc
    inc b
    db $fc

jr_013_7bef:
    ld [$30f8], sp
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0f
    ld [$1817], sp
    rra
    db $10

jr_013_7c01:
    cpl
    jr nc, jr_013_7c43

    jr nz, jr_013_7c45

    jr nz, jr_013_7bc8

    ret nz

    and b
    ld h, b
    ret nc

jr_013_7c0c:
    jr nc, jr_013_7bb6

    ld e, b
    ret c

    jr z, @-$32

    inc [hl]
    call z, $cc34

jr_013_7c16:
    inc [hl]
    ccf
    jr nz, jr_013_7c59

    jr nz, jr_013_7c4b

    jr nc, jr_013_7c3a

    inc de
    inc d
    dec de
    ld a, [bc]
    dec c

jr_013_7c23:
    dec b
    ld b, $03
    inc bc
    add h
    ld a, h
    add h
    ld a, h
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$ffa0]
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop

jr_013_7c3a:
    nop
    rlca
    rlca
    dec de
    inc e

Jump_013_7c3f:
    cpl
    jr nc, jr_013_7cc1

    ld b, b

jr_013_7c43:
    cp a

jr_013_7c44:
    ret nz

jr_013_7c45:
    rst $38
    add b
    nop
    nop
    nop
    nop

jr_013_7c4b:
    ldh [$ffe0], a
    ret c

    jr c, jr_013_7c44

    inc c
    jp c, $e526

    dec de
    db $e3
    dec e
    rst $38
    add b

jr_013_7c59:
    cp a
    ret nz

    ld e, b
    ld h, a
    inc l
    inc sp
    dec de
    inc e
    rlca
    rlca
    nop
    nop
    nop
    nop
    jp $013d


    rst $38
    ld [bc], a
    cp $04
    db $fc

jr_013_7c6f:
    sbc b
    ld a, b
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    dec bc
    ld a, d
    ld a, h
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc bc
    inc bc
    inc bc
    inc bc
    dec de
    dec de
    ld a, $3e
    pop bc
    rst $38
    jr nz, jr_013_7c6f

    ld h, b
    sbc a
    ld l, a
    sub b
    rst $38
    rrca
    halt
    rst $38
    ld [hl], h
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    xor [hl]
    ldh [c], a
    ld a, $25
    dec a
    dec [hl]
    dec l
    ld a, e
    ld b, a
    ld a, d
    halt
    ld a, e
    ld [hl], a
    ld a, e
    ld b, [hl]
    ld a, e
    ld b, [hl]
    ld a, e
    ld b, [hl]
    db $fc
    sbc e
    db $fc
    inc bc
    db $fd
    add a
    rst $38

jr_013_7cc1:
    adc [hl]
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    add b
    cp $c1
    db $e4
    inc a
    ret c

    ld a, b
    ldh [$ffe0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $f4
    db $ec
    and d
    cp [hl]
    xor d
    cp [hl]
    ld a, e
    ld b, a
    ld a, d
    ld b, [hl]
    ld a, d
    ld b, [hl]
    dec [hl]
    dec l
    ld h, $3f
    inc e
    rra
    db $10
    rra
    rra
    rra
    ld b, b
    ld a, a
    ld b, e
    ld a, h
    rst $38
    add b
    rst $38
    jr jr_013_7d59

    and l
    ld [hl+], a
    db $e3
    ld [hl+], a
    db $e3
    db $e3
    db $e3
    xor d
    cp [hl]
    xor d
    cp [hl]
    and d
    cp [hl]
    ld d, h
    call c, $e828
    inc e
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    and b
    ldh [rNR41], a
    ldh [$ff3c], a
    ret nz

    ld a, a
    ld sp, hl
    rst $38
    or $16
    ld hl, sp+$08
    db $f4
    db $ec
    and d
    cp [hl]
    xor d
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_7d59:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_013_7dff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
