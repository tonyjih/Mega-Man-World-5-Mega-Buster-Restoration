; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld sp, $fffe
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    xor a
    ld hl, $c000
    ld bc, $2000
    call Call_000_1a5e
    xor a
    ld hl, $8000
    ld bc, $2000
    call $1bad
    ld e, $00
    call Call_000_04a8
    call Call_000_186b
    ld a, [$de91]
    ld [$df03], a
    ld sp, $fffe
    di
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_18f8
    call Call_000_19e1
    xor a
    ldh [rNR50], a
    ldh [rNR51], a
    ldh [rNR52], a
    ld a, $02
    ld [$df02], a
    ld hl, $8000
    ld bc, $2000
    xor a
    call $1bad
    ld hl, $c000
    ld bc, $1f00
    xor a
    call Call_000_1a5e
    ld hl, $ff8a
    ld bc, $0072
    xor a
    call Call_000_1a5e
    call Call_001_40cb
    ld a, $01
    rst $20
    call Call_000_18e0
    ld d, $ff
    call Call_000_049c
    call Call_000_186b
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    call Call_000_08b6
    di
    xor a
    ldh [rSTAT], a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $81
    ld [$de87], a
    ei
    call Call_000_0b38
    ld hl, $df82
    ld a, [hl]
    or a
    jr nz, jr_001_40b1

    ld [hl], $01
    ld e, $01
    call Call_000_04a8
    call Call_000_04ac

jr_001_40ae:
    call Call_000_04d6

jr_001_40b1:
    ld sp, $fffe
    di
    call Call_000_08b6
    ei
    rst $08
    halt
    call Call_000_0851
    call Call_000_04b0
    ld a, [$df46]
    or a
    jr z, jr_001_40ae

    di
    jp Jump_000_08f8


Call_001_40cb:
    ld hl, $c0a4
    ld bc, $005c
    ld a, $c9
    jp Jump_000_1a5e


    dec c
    dec de
    ld b, b
    ld bc, $7501
    ld b, l
    nop
    inc b
    jr jr_001_4121

    ld [bc], a
    inc b
    dec de
    ld b, b
    inc bc
    inc b
    ld e, $40
    inc b
    dec c
    ld [de], a
    ld b, b
    rlca
    inc b
    ld hl, $0840
    dec c
    ccf
    ld b, b
    ld a, [bc]
    ld e, $1d
    ld b, b
    ld a, [hl-]
    dec c
    ld e, $40
    dec bc
    dec c
    ld hl, $1640
    dec c
    inc h
    ld b, b
    rla
    dec c
    daa
    ld b, b
    ld a, [de]
    dec c
    ld a, [hl+]
    ld b, b
    dec de
    dec c
    dec l
    ld b, b
    inc e
    dec c
    ld b, l
    ld b, b
    ld e, $0d
    jr nc, jr_001_4159

    jr nz, jr_001_4138

    db $10
    ld b, b
    ld [hl+], a
    dec c
    inc sp
    ld b, b

jr_001_4121:
    ld d, $0d
    ld [hl], $40
    ld e, $1d
    inc de
    ld b, b
    inc hl
    dec e
    ld d, $40
    jr z, jr_001_4132

    ld b, $40
    dec e

jr_001_4132:
    dec e
    inc e
    ld b, b
    add hl, hl
    dec e
    add hl, de

jr_001_4138:
    ld b, b
    ld c, b
    dec c
    ld e, $40
    dec bc
    dec e
    rra
    ld b, b
    ld h, h
    dec e
    ld [hl+], a
    ld b, b
    ld h, l
    dec e
    dec h
    ld b, b
    ld h, [hl]
    ld c, $15
    ld b, b
    ld [hl], c
    dec c
    add hl, sp
    ld b, b
    ld [hl], b
    dec e
    jr z, jr_001_4195

    ld h, a
    dec d
    add hl, de
    ld b, b

jr_001_4159:
    ld l, b
    dec e
    dec hl
    ld b, b
    ld l, c
    ld c, $12
    ld b, b
    add hl, bc
    dec c
    ld e, $40
    dec bc
    dec e
    ld l, $40
    ld [de], a
    dec e
    ld sp, $1340
    dec e
    inc [hl]
    ld b, b
    inc d
    dec e
    scf
    ld b, b
    dec d
    dec e
    ld a, [hl-]
    ld b, b
    inc h
    ld [de], a
    db $10
    ld b, b
    dec h
    ld [de], a
    ld [hl+], a
    ld b, b
    inc l
    ld [de], a
    inc de
    ld b, b
    ld h, e
    ld [de], a
    ld d, $40
    ld h, d
    ld [de], a
    dec h
    ld b, b
    cpl
    ld [de], a
    jr z, jr_001_41d1

    jr nc, jr_001_41a8

    db $10
    ld b, b

jr_001_4195:
    ccf
    dec d
    inc de
    ld b, b
    ld b, d
    dec d
    ld d, $40
    ld [hl], a
    ld [de], a
    dec hl
    ld b, b
    ld c, c
    ld [de], a
    add hl, de
    ld b, b
    ld e, d
    ld [de], a
    inc e

jr_001_41a8:
    ld b, b
    ld e, c
    inc bc
    add hl, bc
    ld b, b
    ld a, [hl+]
    inc bc
    inc c
    ld b, b
    dec hl
    ld [de], a
    ld l, $40
    rrca
    dec c
    ld e, $40
    dec bc
    inc bc
    rrca
    ld b, b
    dec l
    add hl, bc
    ld b, $40
    ld [hl-], a
    add hl, bc
    add hl, bc
    ld b, b
    inc sp
    inc bc
    ld [de], a
    ld b, b
    dec [hl]
    add hl, bc
    inc c
    ld b, b
    scf
    add hl, bc
    rrca
    ld b, b

jr_001_41d1:
    ld b, c
    add hl, bc
    ld [de], a
    ld b, b
    jr c, jr_001_41e4

    inc bc
    ld b, b
    ld d, a
    add hl, bc
    dec d
    ld b, b
    add hl, sp
    ld [de], a
    rra
    ld b, b
    ld e, b
    ld c, $00

jr_001_41e4:
    ld b, b
    ld e, e
    dec e
    dec a
    ld b, b
    ld e, h
    dec bc
    ld b, $40
    nop
    ld d, $14
    ld b, b
    ld e, a
    dec c
    ld e, $40
    dec bc
    dec c
    ld e, $40
    dec bc
    ld c, $0f
    ld b, b
    adc e
    ld c, $03
    ld b, b
    ld l, h
    dec c
    ld b, $40
    ld l, $0d
    ld b, d
    ld b, b
    ld l, [hl]
    dec c
    inc a
    ld b, b
    ld l, a
    add hl, bc
    jr jr_001_4251

    add hl, sp
    ld c, $06
    ld b, b
    nop
    ld c, $09
    ld b, b
    nop
    ld e, $1a
    ld b, b
    ld a, [hl-]
    ld c, $0c
    ld b, b
    adc a
    rlca
    ld a, [bc]
    ld b, b
    inc b
    add hl, hl
    ld b, b
    inc b
    dec hl
    ld b, b
    inc b
    dec l
    ld b, b
    inc de
    db $10
    ld b, b
    rlca
    inc b
    ld b, b
    rlca
    ld b, $40
    inc b
    cpl
    ld b, b
    inc b
    ld e, c
    ld b, b
    inc b
    ld d, c
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    inc b
    ld sp, $0440
    inc sp
    ld b, b
    inc b
    dec [hl]
    ld b, b
    rlca
    ld [hl], $40
    rlca
    inc a

jr_001_4251:
    ld b, b
    rlca
    ld a, $40
    inc de
    inc l
    ld b, b
    inc de
    ld l, $40
    inc de
    jr nc, jr_001_429e

    inc de
    ld [hl-], a
    ld b, b
    rlca
    inc c
    ld b, b
    rlca
    ld c, $40
    rlca
    db $10
    ld b, b
    rlca
    ld [de], a
    ld b, b
    rlca
    inc d
    ld b, b
    rlca
    ld d, $40
    rlca
    jr jr_001_42b6

    ld a, [de]
    inc de
    ld b, b
    rlca
    inc e
    ld b, b
    rlca
    ld [$0740], sp
    ld e, $40
    rlca
    ld a, [de]
    ld b, b
    rlca
    jr nz, jr_001_42c8

    inc de
    inc d
    ld b, b
    inc de
    inc [hl]
    ld b, b
    inc de
    ld [hl], $40
    ld a, [de]
    dec d
    ld b, b
    ld a, [de]
    rla
    ld b, b
    inc de
    ld d, $40
    inc de
    ld a, [de]
    ld b, b
    ld a, [de]

jr_001_429e:
    add hl, de
    ld b, b
    ld a, [de]
    dec de
    ld b, b
    rlca
    ld [hl+], a
    ld b, b
    ld a, [de]
    dec e
    ld b, b
    ld a, [de]
    rra
    ld b, b
    inc de
    ld b, d
    ld b, b
    inc de
    ld b, h
    ld b, b
    ld a, [de]
    ld hl, $1a40

jr_001_42b6:
    inc hl
    ld b, b
    ld a, [de]
    dec h
    ld b, b
    ld a, [de]
    daa
    ld b, b
    ld a, [de]
    dec hl
    ld b, b
    ld a, [de]
    add hl, hl
    ld b, b
    ld a, [de]
    dec l
    ld b, b
    ld a, [de]

jr_001_42c8:
    ld sp, $1a40
    inc sp
    ld b, b
    ld e, $10
    ld b, b
    ld e, $12
    ld b, b
    ld e, $14
    ld b, b
    ld e, $16
    ld b, b
    ld e, $18
    ld b, b
    inc de
    ld b, [hl]
    ld b, b
    inc c
    add hl, de
    ld b, b
    ld a, [de]
    cpl
    ld b, b
    inc de
    ld c, b
    ld b, b
    inc de
    ld c, d
    ld b, b
    inc b
    ld c, l
    ld b, b
    inc b
    ld c, c
    ld b, b
    inc b
    ld c, e
    ld b, b
    inc b
    ld c, a
    ld b, b
    inc de
    jr jr_001_433a

    rlca
    inc [hl]
    ld b, b
    inc b
    dec a
    ld b, b
    inc b
    ccf
    ld b, b
    inc b
    ld b, c
    ld b, b
    inc b
    ld b, e
    ld b, b
    inc b
    ld b, l
    ld b, b
    inc e
    add hl, de
    ld b, b
    inc b
    ld b, a
    ld b, b
    inc e
    dec de
    ld b, b
    rlca
    ld b, h
    ld b, b
    inc e
    dec e
    ld b, b
    inc b
    ld e, e
    ld b, b
    inc b
    dec sp
    ld b, b
    rlca
    ld a, [hl-]
    ld b, b
    inc de
    ld c, h
    ld b, b
    inc de
    ld b, b
    ld b, b
    inc de
    ld a, $40
    inc de
    inc a
    ld b, b
    inc de
    ld c, [hl]
    ld b, b
    inc de
    ld d, b
    ld b, b
    dec b
    dec bc
    ld b, b
    rlca

jr_001_433a:
    ld [bc], a
    ld b, b
    rlca
    nop
    ld b, b
    inc b
    scf
    ld b, b
    inc b
    add hl, sp
    ld b, b
    inc de
    ld a, [hl-]
    ld b, b
    inc de
    jr c, jr_001_438b

    inc de
    inc e
    ld b, b
    inc de
    ld e, $40
    inc de
    jr nz, jr_001_4394

    inc de
    ld [hl+], a
    ld b, b
    inc de
    inc h
    ld b, b
    inc de
    ld h, $40
    inc de
    jr z, jr_001_43a0

    inc de
    ld a, [hl+]
    ld b, b
    inc de
    ld d, d
    ld b, b
    inc b
    ld d, l
    ld b, b
    rlca
    ld a, [hl+]
    ld b, b
    rlca
    jr z, jr_001_43af

    rlca
    ld h, $40
    rlca
    inc h
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    inc de
    ld [de], a
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    ld a, [bc]
    ld b, $40
    jr jr_001_4395

    ld b, b
    rlca
    jr nc, @+$42

    rlca
    ld [hl-], a
    ld b, b
    dec c

jr_001_438b:
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c

jr_001_4394:
    ld c, [hl]

jr_001_4395:
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c

jr_001_43a0:
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c

jr_001_43af:
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    dec c
    ld c, [hl]
    ld b, b
    rlca
    ld b, d
    ld b, b
    rlca
    jr c, @+$42

    ld [$4007], sp
    ld [$4007], sp
    rlca
    inc l
    ld b, b
    rlca
    ld l, $40
    inc c
    inc de
    ld b, b
    rlca
    ld b, b
    ld b, b
    nop
    inc b
    ld bc, $eb01
    ld c, h
    db $eb
    ld c, h
    nop
    pop hl
    ld c, d
    nop
    inc b
    ld [bc], a
    ld bc, $4d32
    ld b, e
    ld c, l
    nop
    ldh a, [rWY]
    nop
    ld bc, $0006
    ld b, $4d
    dec bc
    ld c, l
    nop
    db $f4
    ld c, d
    nop
    inc b
    inc bc
    ld bc, $4d10
    ld hl, $004d
    ei
    ld c, d
    nop
    ld bc, $0006
    db $fc
    ld c, h
    ld bc, $004d
    rst $38
    ld c, d
    inc c
    inc b
    ld [bc], a
    ld bc, $4d66
    ld [hl], a
    ld c, l
    ld bc, $4ac9
    dec c
    inc b
    nop
    ld bc, $4d88
    sbc c
    ld c, l
    ld bc, $4ac1
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld b, $02
    ld d, h
    ld c, l
    ld e, l
    ld c, l
    nop
    ld h, c
    ld c, d
    ld h, b
    inc b
    ld [bc], a
    inc bc
    xor d
    ld c, l
    cp e
    ld c, l
    ld bc, $4a87
    ld h, c
    ld [bc], a
    dec b
    nop
    call z, $d54d
    ld c, l
    ld bc, $4a8b
    ld c, $10
    ld bc, $0001
    ld [bc], a
    dec [hl]
    inc b
    ld bc, $4ab8
    ld c, $10
    ld bc, $0001
    ld [bc], a
    dec [hl]
    inc b
    ld bc, $4ab8
    ld c, $10
    ld bc, $0001
    ld [bc], a
    dec [hl]
    inc b
    ld bc, $4ab8
    ld c, $10
    ld bc, $0001
    ld [bc], a
    dec [hl]
    inc b
    ld bc, $4ab8
    push de
    ld b, e
    ldh [rSCX], a
    db $eb
    ld b, e
    or $43
    ld bc, $0c44
    ld b, h
    rla
    ld b, h
    ld [hl+], a
    ld b, h
    dec l
    ld b, h
    jr c, @+$46

    ld b, e
    ld b, h
    ld c, [hl]
    ld b, h
    ld e, c
    ld b, h
    ld h, h
    ld b, h
    ld l, a
    ld b, h
    ld e, d
    ld e, e
    ld e, [hl]
    halt
    add b
    and b

Call_001_449e:
    and $0f
    ld hl, $4478
    call Call_000_1cff
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


    ld a, b
    or a
    ld de, $ff40
    jr z, jr_001_44b5

    ld de, $00c0

jr_001_44b5:
    ld a, e
    ld [$d4b5], a
    ld a, d
    ld [$d4b6], a
    ld a, $00
    ld [$d4b1], a
    ld a, $fd
    ld [$d4b2], a
    ld a, $fe
    ld [$d4b0], a
    ld a, $40
    ld [$d4b7], a
    call Call_000_1a96
    ld b, $07
    cp $80
    jr c, jr_001_44ee

    ld b, $06
    cp $a0
    jr c, jr_001_44ee

    ld b, $01
    cp $c0
    jr c, jr_001_44ee

    ld b, $02
    cp $e0
    jr c, jr_001_44ee

    ld b, $04

jr_001_44ee:
    ld de, $fffe
    jp Jump_001_46a6


    ld a, b
    or a
    ld de, $ff40
    jr z, jr_001_44fe

    ld de, $00c0

jr_001_44fe:
    ld a, e
    ld [$d4b5], a
    ld a, d
    ld [$d4b6], a
    ld a, $60
    ld [$d4b1], a
    ld a, $fc
    ld [$d4b2], a
    ld a, $ff
    ld [$d4b0], a
    ld a, $40
    ld [$d4b7], a
    call Call_000_1a96
    ld b, $06
    cp $11
    jr c, jr_001_4531

    ld b, $01
    cp $2c
    jr c, jr_001_4531

    ld b, $02
    cp $91
    jr c, jr_001_4531

    ld b, $04

jr_001_4531:
    ld de, $ffff
    jp Jump_001_46a6


    ld hl, $d40b
    ld a, l
    ld [$d414], a
    ld b, $09
    ld a, $15

jr_001_4542:
    ld [hl+], a
    add $11
    dec b
    jr nz, jr_001_4542

    xor a
    ld [$d40a], a
    ret


    ld hl, $ded4
    ld a, [hl]
    or a
    jr nz, jr_001_455f

    dec [hl]
    ld a, $bd
    ld [$d4bc], a
    xor a
    ld [$d4f3], a
    ret


jr_001_455f:
    ld a, [$d4bc]
    ld b, a
    ld hl, $d4bf

jr_001_4566:
    ld a, l
    cp b
    ret nc

    ld a, [hl]
    cp $02
    jr z, jr_001_4570

    ld [hl], $00

jr_001_4570:
    inc l
    inc l
    inc l
    jr jr_001_4566

    jp Jump_001_4580


    nop
    ld [$0007], sp
    nop
    add h
    rlca
    nop

Jump_001_4580:
    dec b
    jr z, jr_001_45d8

    dec b
    jr z, jr_001_45d8

    dec b
    jr z, jr_001_45d8

    dec b
    jr nz, jr_001_4597

    ld a, [$c3c4]
    and $0f
    cp $06
    ret c

    jp Jump_001_4769


jr_001_4597:
    ld a, $18
    add c
    ld l, a
    ld [hl], $0a
    add $f5
    ld l, a
    ld a, [hl]
    ldh [$ff8a], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9f]
    add [hl]
    ldh [$ff8b], a
    ld a, $02
    add c
    ld l, a
    ld e, [hl]
    add $06
    ld l, a
    ld a, [hl]
    ldh [$ff8c], a
    and $0f
    cp $08
    jr z, jr_001_45d8

    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $f0
    ld d, a
    ld a, [$de8f]
    and $0f
    or d
    ld d, a
    ld a, e
    ld [$d4b3], a
    ld a, d
    ld [$d4b4], a
    call Call_001_45db

jr_001_45d8:
    ld b, $00
    ret


Call_001_45db:
    call Call_001_4640
    jr nc, jr_001_45f4

    ld a, [$d4bc]
    cp $f3

jr_001_45e5:
    jr nc, jr_001_45e5

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $01
    inc l
    ld a, l
    ld [$d4bc], a
    jr jr_001_45f8

jr_001_45f4:
    ld a, [hl]
    or a
    ret nz

    inc [hl]

jr_001_45f8:
    ldh a, [$ff8a]
    ld b, a
    ld a, [$d7c2]
    add b
    ld [$d3eb], a
    ldh a, [$ff8c]
    ld b, a
    ld e, $02
    call Call_001_449e
    ldh a, [$ff8b]
    add [hl]
    ld [$d3ec], a
    ld a, $ff
    ld [$d4b0], a
    ld a, $00
    ld [$d4b7], a
    ld a, $00
    ld [$d4b1], a
    ld a, $00
    ld [$d4b2], a
    ld a, [$d4b3]
    ld e, a
    ld a, [$d4b4]
    ld d, a
    call Call_001_469c
    ret


Call_001_4630:
    push bc
    call Call_001_4640
    pop bc
    ret c

    ld a, b
    or a
    ld d, $00
    jr z, jr_001_463e

    ld d, $02

jr_001_463e:
    ld [hl], d
    ret


Call_001_4640:
    ld a, [$d4bc]
    ld b, a
    ld hl, $d4bd

jr_001_4647:
    ld a, l
    cp b
    jr nc, jr_001_4659

    ld a, [hl+]
    cp e
    jr nz, jr_001_4655

    ld a, [hl+]
    cp d
    jr nz, jr_001_4656

    or a
    ret


jr_001_4655:
    inc l

jr_001_4656:
    inc l
    jr jr_001_4647

jr_001_4659:
    scf
    ret


    ld a, [$d40a]
    cp $09
    ret nc

    ld hl, $4498
    call Call_000_1a96
    cp [hl]
    ret c

    ld b, $01
    inc hl
    cp [hl]
    jr c, jr_001_4685

    inc b
    inc hl
    cp [hl]
    jr c, jr_001_4685

    inc b
    inc hl
    cp [hl]
    jr c, jr_001_4685

    inc b
    inc hl
    cp [hl]
    jr c, jr_001_4685

    inc b
    inc hl
    cp [hl]
    jr c, jr_001_4685

    ld b, $09

jr_001_4685:
    ld a, $fd
    ld [$d4b0], a
    ld a, $40
    ld [$d4b7], a
    ld a, $60
    ld [$d4b1], a
    ld a, $fc
    ld [$d4b2], a
    ld de, $fff8

Call_001_469c:
    ld a, $00
    ld [$d4b5], a
    ld a, $00
    ld [$d4b6], a

Jump_001_46a6:
    ld a, e
    ld [$d4b3], a
    ld a, d
    ld [$d4b4], a
    ld a, b
    ld [$d4ae], a
    call Call_001_47d4
    ld a, [$d3eb]
    ld e, a
    ld a, [$d3ec]
    ld d, a
    ld a, [$d4ae]
    call Call_001_4bc7
    ld a, [$d4b0]
    cp $fe
    jr nc, jr_001_46ee

    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff95]
    call Call_000_0d95
    ret c

    ldh a, [$ff94]
    ld e, a
    ldh a, [$ff95]
    call Call_000_0d95
    ret c

    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff96]
    call Call_000_0d95
    ret c

    ldh a, [$ff94]
    ld e, a
    ldh a, [$ff96]
    call Call_000_0d95
    ret c

jr_001_46ee:
    ld a, [$d280]
    cp $80
    ret nc

    ld h, $d4
    ld a, [$d414]
    ld l, a
    inc a
    ld [$d414], a
    ld c, [hl]
    ld l, $0a
    ld a, [hl]
    inc [hl]
    ld l, a
    ld [hl], c
    push bc
    ld a, [$d4ae]
    ld e, $01
    call Call_001_449e
    call Call_000_30c1
    pop bc
    ld [$d28a], a
    ld h, $d4
    ld l, c
    ld a, [$d4b0]
    ld [hl], a
    inc l
    ld b, $00
    ld a, [$d4b5]
    ld [hl+], a
    ld [hl], b
    inc l
    ld a, [$d4b6]
    ld [hl+], a
    ld a, [$d3eb]
    ld [hl+], a
    ld a, [$d4b1]
    ld [hl+], a
    ld [hl], b
    inc l
    ld a, [$d4b2]
    ld [hl+], a
    ld a, [$d3ec]
    ld [hl+], a
    ld a, [$d4ae]
    ld [hl+], a
    ld a, [$d28a]
    ld [hl+], a
    ld a, [$d4b7]
    ld [hl+], a
    ld a, $0c
    add c
    ld l, a
    ld [hl], b
    add $04
    ld l, a
    ld [hl], b
    ld a, $0d
    add c
    ld l, a
    ld a, [$d4b3]
    ld [hl+], a
    ld a, [$d4b4]
    ld [hl+], a
    ld a, [$d4ae]
    push hl
    push bc
    call Call_001_4769
    pop bc
    pop hl
    ld b, a
    ld [hl], b
    ret


Call_001_4769:
Jump_001_4769:
    push af
    ld e, $00
    call Call_001_449e
    pop de
    or a
    jp nz, Jump_000_202a

    ld a, $7f
    ret


    xor a
    ld [$d3ea], a
    ld a, [$deaf]
    bit 1, a
    call nz, Call_001_4b28
    ld e, $00
    ld a, [$d73a]
    cp $5a
    jr nc, jr_001_4793

    ld a, [$d739]
    or a
    jr nz, jr_001_4793

    inc e

jr_001_4793:
    ld a, e
    ld [$d4af], a
    ld hl, $d40a
    ld a, [hl]
    or a
    ret z

    ld b, a
    ld l, $00

jr_001_47a0:
    ld h, $d4
    ld a, [hl+]
    ld c, l
    push bc
    ld l, a
    call Call_001_47f7
    ld a, b
    or a
    jr nz, jr_001_47ce

    pop bc
    dec c
    push bc
    ld l, $0a
    dec [hl]
    ld l, [hl]
    ld a, [hl]
    ld l, c
    ld b, [hl]
    ld [hl], a
    ld a, [$d414]
    dec a
    ld l, a
    ld [hl], b
    ld [$d414], a
    ld l, c
    push hl
    ld a, $0a
    add b
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_30f7
    pop hl

jr_001_47ce:
    pop bc
    ld l, c
    dec b
    jr nz, jr_001_47a0

    ret


Call_001_47d4:
    ld [$d297], a
    and $0f
    ld l, c
    push hl
    ld e, $03
    call Call_001_449e
    ld de, $d28f
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop hl
    ld c, l
    ret


Call_001_47f7:
    ld c, l
    ld a, c
    ld [$d4b4], a
    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    call Call_001_47d4
    ld a, [$d297]
    cp $0c
    jr c, jr_001_4819

    cp $10
    jr nc, jr_001_4819

    call Call_001_4a53
    ld a, [de]
    and b
    jr z, jr_001_4819

    ld b, $00
    ret


jr_001_4819:
    ld a, $04
    add c
    ld l, a
    ld a, [$d7c3]
    add [hl]
    ldh [$ff98], a
    ld [hl], a
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff99], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9a], a
    ld a, $0b
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffa0], a
    ld a, [$deaf]
    and $67
    jp nz, Jump_001_486e

    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    cp $fe
    jr nc, jr_001_484e

    dec [hl]
    jp z, Jump_001_49b8

jr_001_484e:
    ldh a, [$ffa0]
    rlca
    jr c, jr_001_486e

    rlca
    jr c, jr_001_4861

    ld a, $08
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    jr jr_001_486e

jr_001_4861:
    call Call_001_4ca3
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl], a

Jump_001_486e:
jr_001_486e:
    call Call_001_4bbb
    ld h, $d4
    ld a, [$deaf]
    and $67
    call z, Call_001_49bd
    ldh a, [$ffa0]
    bit 7, a
    jr nz, jr_001_488a

    bit 6, a
    jr z, jr_001_488a

    push bc
    call Call_001_4c0e
    pop bc

jr_001_488a:
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ld a, e
    cp $c0
    jr c, jr_001_489a

    cp $e0
    jp c, Jump_001_499b

jr_001_489a:
    ld a, d
    cp $b0
    jr nc, jr_001_48a4

    cp $88
    jp nc, Jump_001_499b

jr_001_48a4:
    ld a, [$d4af]
    or a
    jr z, jr_001_48fe

    ld a, [$deaf]
    bit 1, a
    jr nz, jr_001_48fe

    ld b, $30
    ld hl, $d746
    ldh a, [$ff94]
    add b
    cp [hl]
    jr c, jr_001_48fe

    inc hl
    ldh a, [$ff93]
    add b
    cp [hl]
    jr nc, jr_001_48fe

    inc hl
    ld b, $30
    ldh a, [$ff96]
    add b
    cp [hl]
    jr c, jr_001_48fe

    inc hl
    ldh a, [$ff95]
    add b
    cp [hl]
    jr nc, jr_001_48fe

    ld h, $d4
    ld a, [$d297]
    ld [$cca5], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $ff
    jr nz, jr_001_48eb

    ld a, $01
    ld [$d4f3], a
    jr jr_001_48f4

jr_001_48eb:
    cp $fe
    jr nz, jr_001_48f4

    ld a, $01
    ld [$ccc8], a

jr_001_48f4:
    ld l, c
    push hl
    call Call_001_4ace
    pop hl
    ld c, l
    jp Jump_001_499f


jr_001_48fe:
    ld a, [$deae]
    or a
    jr z, jr_001_491b

    ld hl, $ff93
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    ld [$dec9], a
    ldh a, [$ff9c]
    ld [$deca], a
    call Call_001_7bfd

jr_001_491b:
    ld h, $d4
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    cp $50
    jr nc, jr_001_492a

    and $04
    jr nz, jr_001_4995

jr_001_492a:
    ld a, $10
    ldh [$ffab], a
    ld a, [$de74]
    or a
    call nz, Call_000_3b2a
    ld h, $d4
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    push af
    ld hl, $d290
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld d, a
    cp $03
    jr nc, jr_001_4973

    cp $01
    jr z, jr_001_4955

    jr jr_001_4963

jr_001_4955:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d4b4]
    ld c, a
    ld h, $d4
    call Call_001_4dde
    jr jr_001_497d

jr_001_4963:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d4b4]
    ld c, a
    ld h, $d4
    pop af
    ld b, a
    call Call_000_0332
    jr jr_001_4995

jr_001_4973:
    ld a, [$d76d]
    and $08
    jr z, jr_001_497d

    ld e, [hl]
    inc hl
    ld d, [hl]

jr_001_497d:
    ld c, e
    ld b, d
    ld a, [$d294]
    or a
    jr nz, jr_001_498b

    pop af
    call Call_001_78a0
    jr jr_001_4995

jr_001_498b:
    ldh a, [$ffab]
    xor $10
    ldh [$ffab], a
    pop af
    call Call_000_31f8

jr_001_4995:
    ld h, $d4
    ld b, $01
    ret


    nop

Jump_001_499b:
    ld b, $00
    jr jr_001_49a1

Jump_001_499f:
    ld b, $01

jr_001_49a1:
    ld h, $d4
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    cp $ff
    jr nz, jr_001_49b8

    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    push bc
    call Call_001_4630
    pop bc

Jump_001_49b8:
jr_001_49b8:
    ld h, $d4
    ld b, $00
    ret


Call_001_49bd:
    ld a, [$c2c5]
    or a
    jr z, jr_001_49c9

    dec a
    jr z, jr_001_49ec

    dec a
    jr z, jr_001_49e4

jr_001_49c9:
    ld a, $0b
    add c
    ld l, a
    ldh a, [$ffa0]
    bit 7, a
    jr z, jr_001_49da

    set 6, [hl]
    push hl
    call Call_001_4a38
    pop hl

jr_001_49da:
    res 7, [hl]

jr_001_49dc:
    ret


jr_001_49dd:
    ld a, $0b
    add c
    ld l, a
    set 7, [hl]

jr_001_49e3:
    ret


jr_001_49e4:
    ldh a, [$ffa0]
    bit 7, [hl]
    jr z, jr_001_49dc

    jr jr_001_49c9

jr_001_49ec:
    ldh a, [$ffa0]
    bit 7, a
    jr z, jr_001_4a0a

    ld a, $04
    add c
    ld l, a
    ld a, [$c2ca]
    add [hl]
    ld [hl], a
    ldh [$ff9b], a
    ld a, $08
    add c
    ld l, a
    ld a, [$c2cb]
    add [hl]
    ld [hl], a
    ldh [$ff9c], a
    jr jr_001_49e3

jr_001_4a0a:
    ldh a, [$ff93]
    add $30
    ld b, a
    ld a, [$c2c7]
    cp b
    jr c, jr_001_49dc

    ldh a, [$ff94]
    add $30
    ld b, a
    ld a, [$c2c6]
    cp b
    jr nc, jr_001_49dc

    ldh a, [$ff95]
    add $30
    ld b, a
    ld a, [$c2c9]
    cp b
    jr c, jr_001_49dc

    ldh a, [$ff96]
    add $30
    ld b, a
    ld a, [$c2c8]
    cp b
    jr nc, jr_001_49dc

    jr jr_001_49dd

Call_001_4a38:
    ld a, $03
    add c
    ld l, a
    ld a, [$c2ca]
    sra a
    ld [hl-], a
    dec l
    ld [hl], $00
    ld a, $07
    add c
    ld l, a
    ld a, [$c2cb]
    sra a
    ld [hl-], a
    dec l
    ld [hl], $00
    ret


Call_001_4a53:
    ld a, [$d297]
    sub $0c
    and $03
    call Call_000_1e3d
    ld de, wCrystalCollectedFlags
    ret


    ld a, $02

jr_001_4a63:
    ld e, a
    ld d, $00
    ld hl, wPChipCountLow
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, l
    add hl, de
    ld de, $03e8
    call Call_001_79a6
    jr c, jr_001_4a79

    ld hl, $03e7

jr_001_4a79:
    ld a, l
    ld [wPChipCountLow], a
    ld a, h
    ld [wPChipCountHigh], a
    ld a, l
    cp b
    ret z

    rst $08
    rla
    ret


    ld a, $08
    jr jr_001_4a63

    ld b, $01

Jump_001_4a8d:
    ld a, [wETankAndPieceCount]
    push af
    call Call_001_4aac
    pop de
    ld a, [wETankAndPieceCount]
    cp d
    ret z

    ld hl, $df39
    ld b, [hl]
    srl a
    srl a
    ld [hl], a
    cp b
    jr nz, jr_001_4aa9

    rst $08
    rla
    ret


jr_001_4aa9:
    rst $08
    ld [de], a
    ret


Call_001_4aac:
    ld a, b
    ld hl, wETankAndPieceCount
    add [hl]
    ld [hl], a
    cp $11
    ret c

    ld [hl], $10
    ret


    call Call_001_4a53
    ld a, [de]
    or b
    ld [de], a
    rst $08
    inc hl
    ret


    ld l, c
    push hl
    call Call_001_5142
    pop hl
    ld c, l
    ret


    ld b, $04
    jp Jump_001_4a8d


Call_001_4ace:
    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    ld l, c
    push hl
    ld e, $09
    call Call_001_449e
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld c, l
    push de
    ret


    ld hl, $df34
    inc [hl]
    ld a, [hl]
    cp $0b
    jr c, jr_001_4aed

    ld [hl], $0a
    ret


jr_001_4aed:
    rst $08
    ld [de], a
    ret


    ld d, $0a
    jr jr_001_4af6

    ld d, $02

jr_001_4af6:
    ld hl, $de9e
    jr jr_001_4b11

    ld d, $0a
    jr jr_001_4b01

    ld d, $02

jr_001_4b01:
    ld a, [$de9b]
    or a
    jr z, jr_001_4b57

    add $9e
    ld l, a
    ld h, $de
    ld a, [hl]
    cp $98
    jr nc, jr_001_4b57

Call_001_4b11:
Jump_001_4b11:
jr_001_4b11:
    ld a, d
    ld [$d4bb], a
    ld a, l
    ld [$d4b9], a
    ld a, h
    ld [$d4ba], a
    ld hl, $deaf
    set 1, [hl]
    xor a
    ld [$d4b8], a
    jr jr_001_4b32

Call_001_4b28:
    ld hl, $d4b8
    inc [hl]
    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [hl], a

jr_001_4b32:
    ld hl, $d4bb
    ld a, [hl]
    or a
    jr z, jr_001_4b51

    dec [hl]
    ld hl, $d4b9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $98
    jr nc, jr_001_4b51

    rst $08
    rla
    ld a, $08
    add [hl]
    ld [hl], a
    cp $98
    ret c

    ld [hl], $98
    ret


jr_001_4b51:
    ld hl, $deaf
    res 1, [hl]
    ret


jr_001_4b57:
    ld a, [wEnergyBalancerUnlocked]
    or a
    ret z

    push bc
    push de
    ld a, $00
    ldh [$ff8a], a
    ld a, $00
    ldh [$ff8b], a
    ld c, $99
    ld b, $0c
    ld hl, $de9f
    ld a, [$de9c]
    ld e, a
    ld a, [$de9d]
    ld d, a
    srl d
    rr e

jr_001_4b79:
    srl d
    rr e
    jr nc, jr_001_4b8a

    ld a, [hl]
    cp c
    jr nc, jr_001_4b8a

    ld c, a
    ld a, l
    ldh [$ff8a], a
    ld a, h
    ldh [$ff8b], a

jr_001_4b8a:
    inc hl
    dec b
    jr nz, jr_001_4b79

    pop de
    pop bc
    ld hl, $ff8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    ret z

    jp Jump_001_4b11


    ld hl, $d40a
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    ld b, a
    ld l, $00

jr_001_4ba7:
    ld a, [hl+]
    ld c, l
    push bc
    add $0a
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_30f7
    ld h, $d4
    pop bc
    ld l, c
    dec b
    jr nz, jr_001_4ba7

    ret


Call_001_4bbb:
Jump_001_4bbb:
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    ld a, [$d297]

Call_001_4bc7:
    push bc
    ld b, a
    ld a, e
    ldh [$ff9b], a
    ld a, d
    ldh [$ff9c], a
    ld a, [$d28f]
    or a
    jr nz, jr_001_4bdd

    ld de, $02fc
    ld bc, $02fc
    jr jr_001_4bf9

jr_001_4bdd:
    dec a
    jr nz, jr_001_4be8

    ld de, $06f8
    ld bc, $06f8
    jr jr_001_4bf9

jr_001_4be8:
    dec a
    jr nz, jr_001_4bf3

    ld de, $05fa
    ld bc, $03fc
    jr jr_001_4bf9

jr_001_4bf3:
    ld de, $06f8
    ld bc, $07fe

jr_001_4bf9:
    ld hl, $ff93
    ldh a, [$ff9b]
    add e
    ld [hl+], a
    ldh a, [$ff9b]
    add d
    ld [hl+], a
    ldh a, [$ff9c]
    add c
    ld [hl+], a
    ldh a, [$ff9c]
    add b
    ld [hl+], a
    pop bc
    ret


Call_001_4c0e:
    ld a, $07
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_001_4c3c

    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff95]
    call Call_001_4c9b
    jr c, jr_001_4c29

    ldh a, [$ff94]
    ld e, a
    ldh a, [$ff95]
    call Call_001_4c9b
    ret nc

jr_001_4c29:
    ld a, $05
    add c
    ld l, a
    ld [hl], $00
    inc l
    ldh a, [$ff99]
    ld [hl+], a
    ld [hl], $00
    inc l
    ldh a, [$ff9a]
    ld [hl], a
    jp Jump_001_4c8d


jr_001_4c3c:
    ldh a, [$ff93]
    ld b, a
    ld e, a
    ldh a, [$ff96]
    inc a
    call Call_001_4c9b
    jr c, jr_001_4c53

    ldh a, [$ff94]
    ld b, a
    ld e, a
    ldh a, [$ff96]
    inc a
    call Call_001_4c9b
    ret nc

jr_001_4c53:
    call Call_001_4c8d
    push bc
    ldh a, [$ff96]

jr_001_4c59:
    ld c, a
    ld e, b
    call Call_001_4c9b
    jr nc, jr_001_4c69

    ld a, c
    dec a
    cp $ff
    jr nz, jr_001_4c59

    ldh a, [$ff96]
    ld c, a

jr_001_4c69:
    ldh a, [$ff96]
    sub c
    ld d, a
    pop bc
    ld h, $d4
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    sub d
    ld [hl], a
    ldh a, [$ff9c]
    sub d
    ldh [$ff9c], a
    ld a, $01
    add c
    ld l, a
    xor a
    ld [hl+], a
    inc l
    ld [hl+], a
    ld a, $05
    add c
    ld l, a
    xor a
    ld [hl+], a
    inc l
    ld [hl+], a
    ret


Call_001_4c8d:
Jump_001_4c8d:
    ld a, $04
    add c
    ld l, a
    ldh a, [$ff98]
    ld d, a
    sub [hl]
    add b
    ld b, a
    ld [hl], d
    jp Jump_001_4bbb


Call_001_4c9b:
    push bc
    call Call_000_0d95
    pop bc
    ld h, $d4
    ret


Call_001_4ca3:
    ld a, [$ccbb]
    or a
    jr z, jr_001_4cd0

    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ld e, a
    ld d, $00
    cp $d0
    jr c, jr_001_4cb6

    dec d

jr_001_4cb6:
    ld a, [$d711]
    add e
    ldh [$ff8a], a
    ld a, [$d712]
    adc d
    ldh [$ff8b], a
    ld l, c
    push hl
    call $0466
    pop hl
    ld c, l
    ld a, [$cc98]
    or a
    ld e, a
    jr nz, jr_001_4cd2

jr_001_4cd0:
    ld e, $30

jr_001_4cd2:
    ld a, $05
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    inc l
    ld a, [hl]
    adc $00
    ld d, a
    ld [hl], d
    dec l
    dec l
    ld [hl], e
    inc l
    ld a, [hl]
    add e
    ld [hl+], a
    inc l
    ld a, [hl]
    adc d
    ld [hl], a
    ret


    ld hl, sp-$08
    add a
    stop
    ld [$3087], sp
    ld [$89f8], sp
    stop
    ld [$3089], sp
    add b
    db $fc
    db $fc
    add d
    db $10
    add b
    db $fc
    db $fc
    add e
    db $10
    add b
    db $fc
    db $fc
    add h
    db $10
    add b
    db $fc
    db $fc
    add l
    db $10
    add b
    ld hl, sp-$08
    add [hl]
    stop
    ld [$3086], sp
    ld [$86f8], sp
    ld d, b
    nop
    ld [$7086], sp
    add b
    ld hl, sp-$08
    adc b
    stop
    ld [$3088], sp
    ld [$88f8], sp
    ld d, b
    nop
    ld [$7088], sp
    add b
    ld hl, sp-$08
    add b
    stop
    ld [$3080], sp
    ld [$80f8], sp
    ld d, b
    nop
    ld [$7080], sp
    add b
    ld hl, sp-$08
    add c
    stop
    ld [$3081], sp
    ld [$81f8], sp
    ld d, b
    nop
    ld [$7081], sp
    add b
    db $fc
    ld a, [$108a]
    nop
    ld [$108b], sp
    add b
    db $fc
    ld a, [$108c]
    nop
    ld [$108b], sp
    add b
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$00f8], sp
    ld d, b
    nop
    ld [$5001], sp
    add b
    ld hl, sp-$08
    ld [bc], a
    stop
    ld [$3002], sp
    ld [$02f8], sp
    ld d, b
    nop
    ld [$7002], sp
    add b
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$01f8], sp
    ld [hl], b
    nop
    ld [$7000], sp
    add b
    ld hl, sp-$08
    ld [bc], a
    stop
    ld [$3002], sp
    ld [$02f8], sp
    ld d, b
    nop
    ld [$7002], sp
    add b
    ei
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    add b
    ei
    ld hl, sp+$04
    stop
    ld [$3004], sp
    ld [$04f8], sp
    ld d, b
    nop
    ld [$7004], sp
    add b
    db $fc
    db $fc
    nop
    db $10
    ld [$0200], sp
    db $10
    add b
    db $fc
    db $fc
    ld bc, $0810
    nop
    ld [bc], a
    db $10
    add b

Call_001_4dde:
    push hl
    ld a, [de]
    inc de
    ldh [$ff8a], a
    ld a, [de]
    inc de
    ldh [$ff8b], a
    ld a, $10
    add c
    ld l, a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr nc, jr_001_4dfb

    ld [hl], $00
    ld a, $0c
    add c
    ld l, a
    inc [hl]
    jr jr_001_4dff

jr_001_4dfb:
    ld a, $0c
    add c
    ld l, a

jr_001_4dff:
    push de
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    pop de
    cp $80
    jr c, jr_001_4e11

    ld [hl], $00
    jr jr_001_4dff

jr_001_4e11:
    ld e, a
    ld d, $00
    ld hl, $ff8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


    ld a, $ff
    ld hl, $4e40
    ld b, $00
    jp Jump_001_4fef


    ld a, [$d3eb]
    ld e, a
    ld a, [$d3ec]
    ld d, a
    ld a, $ff
    ld hl, $4e40
    ld b, $00
    call Call_001_4fef
    rst $08
    rra
    ret


    nop
    nop
    ld [bc], a
    ld hl, $d30c
    ld a, [hl]
    or a
    ret z

    ld b, a
    ld l, $00

jr_001_4e4c:
    ld h, $d3
    ld a, [hl+]
    ld c, l
    push bc
    ld c, a
    ld a, [$d3f2]
    or a
    jr nz, jr_001_4e61

    call Call_001_4e8d
    ld h, $d3
    ld a, b
    or a
    jr nz, jr_001_4e82

jr_001_4e61:
    pop bc
    dec c
    push bc
    ld l, $0c
    dec [hl]
    ld l, [hl]
    ld a, [hl]
    ld l, c
    ld b, [hl]
    ld [hl], a
    ld a, [$d319]
    dec a
    ld l, a
    ld [hl], b
    ld [$d319], a
    ld l, c
    push hl
    ld a, $00
    add b
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_30f7
    pop hl

jr_001_4e82:
    pop bc
    ld l, c
    dec b
    jr nz, jr_001_4e4c

    ld hl, $d3f2
    ld [hl], $00
    ret


Call_001_4e8d:
    ld a, [$deaf]
    and $fb
    jr nz, jr_001_4ec8

    ld l, c
    inc l
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld e, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld d, a
    ld a, e
    add $20
    cp $e0
    jp nc, Jump_001_4f65

    ld a, d
    add $10
    cp $c0
    jp nc, Jump_001_4f65

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_001_4ec8

    ld a, c
    swap a
    ld e, a
    ld a, [$d76d]
    and e
    ld b, $01
    xor b
    ret z

jr_001_4ec8:
    ld a, $04
    add c
    ld l, a
    ld a, [$d7c3]
    add [hl]
    ld [hl], a
    ldh [$ff9b], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $0a
    add c
    ld l, a
    ld l, [hl]
    ld a, [$deaf]
    and $71
    ld a, l
    jr nz, jr_001_4f09

    ld a, $09
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_001_4ef2

    xor a

jr_001_4ef2:
    ld [hl], a
    push af
    ld a, $0a
    add c
    ld l, a
    pop af
    ld a, [hl+]
    jr nz, jr_001_4f09

    cp [hl]
    jr nz, jr_001_4f04

    inc l
    dec [hl]
    jr z, jr_001_4f65

    dec l

jr_001_4f04:
    dec l
    inc a
    and $03
    ld [hl], a

jr_001_4f09:
    ld d, a
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    ld l, c
    push hl
    push af
    ld a, d
    ld hl, $4f24
    call Call_000_1cff
    ld c, l
    ld b, h
    pop af
    call Call_001_78d8
    pop hl
    ld c, l
    ld b, $01
    ret


    inc l
    ld c, a
    ld sp, $424f
    ld c, a
    ld d, e
    ld c, a
    db $fc
    db $fc
    ld h, [hl]
    db $10
    add b
    ld hl, sp-$08
    ld h, e
    stop
    ld [$3063], sp
    ld [$63f8], sp
    ld d, b
    nop
    ld [$7063], sp
    add b
    ld hl, sp-$08
    ld h, h
    stop
    ld [$3064], sp
    ld [$64f8], sp
    ld d, b
    nop
    ld [$7064], sp
    add b
    ld hl, sp-$08
    ld h, l
    stop
    ld [$3065], sp
    ld [$65f8], sp
    ld d, b
    nop
    ld [$7065], sp
    add b
    nop

Jump_001_4f65:
jr_001_4f65:
    ld h, $d3
    ld b, $00
    ret


Jump_001_4f6a:
    ld hl, $d30d
    ld a, l
    ld [$d319], a
    ld b, $0c
    ld a, $1a

jr_001_4f75:
    ld [hl+], a
    add $10
    dec b
    jr nz, jr_001_4f75

    ld hl, $d31a
    ld de, $0010
    ld b, $0c

jr_001_4f83:
    ld [hl], $40
    add hl, de
    dec b
    jr nz, jr_001_4f83

    xor a
    ld [$d30c], a
    ret


Call_001_4f8e:
    rst $08
    inc d
    ld a, [$d725]
    cp $80
    ret nc

    ld d, a
    ld a, [$d722]
    ld e, a
    ld b, $0c
    push bc
    push de
    call $5122
    pop de
    pop bc

jr_001_4fa4:
    push bc
    push de
    ld a, $0c
    sub b
    add a
    add a
    add $bf
    ld l, a
    ld a, $4f
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, $01
    call Call_001_4fef
    pop de
    pop bc
    dec b
    jr nz, jr_001_4fa4

    ret


    stop
    inc bc
    inc a
    inc d
    nop
    inc bc
    inc a
    jr jr_001_4fc9

jr_001_4fc9:
    inc bc
    inc a
    inc e
    nop
    inc bc
    inc a
    ld [de], a
    ld bc, $3c00
    ld d, $01
    nop
    inc a
    ld a, [de]
    ld bc, $3c00
    ld e, $01
    nop
    inc a
    nop
    nop
    inc bc
    inc a
    inc b
    nop
    inc bc
    inc a
    ld [$0300], sp
    inc a
    inc c
    nop
    inc bc
    inc a

Call_001_4fef:
Jump_001_4fef:
    ldh [$ff8a], a
    ld a, b
    ld [$d3e7], a
    ld a, e
    ld [$d3de], a
    ld a, d
    ld [$d3e2], a
    ld de, $d3e4
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld hl, $d30c
    ld a, [hl]
    cp $0c
    ccf
    ret c

    inc [hl]
    ld c, a
    push bc
    ld a, $04
    call Call_000_30c1
    ld [$d3da], a
    ldh a, [$ff8a]
    call Call_001_504c
    ld de, $d3db
    ld b, $04

jr_001_5025:
    ld a, [hl+]
    ld [de], a
    inc e
    inc e
    dec b
    jr nz, jr_001_5025

    ld a, $80
    ld [$d3dc], a
    ld [$d3e0], a
    pop bc
    ld h, $d3
    ld a, [$d319]
    ld l, a
    inc a
    ld [$d319], a
    ld b, [hl]
    ld l, c
    ld [hl], b
    ld e, b
    ld d, h
    ld hl, $d3da
    call Call_000_1a2d
    or a
    ret


Call_001_504c:
    cp $ff
    jr nz, jr_001_5054

    ld hl, $505e
    ret


jr_001_5054:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $5062
    add hl, de
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    ld sp, $8a00
    rst $38
    ld e, e
    nop
    and [hl]
    rst $38
    halt
    nop
    rst $08
    rst $38
    add b
    nop
    nop
    nop
    halt
    nop
    ld sp, $5b00
    nop
    ld e, d
    nop
    ld sp, $7600
    nop
    nop
    nop
    add b
    nop
    rst $08
    rst $38
    halt
    nop
    and [hl]
    rst $38
    ld e, e
    nop
    adc d
    rst $38
    ld sp, $8000
    rst $38
    nop
    nop
    adc d
    rst $38
    rst $08
    rst $38
    and l
    rst $38
    and [hl]
    rst $38
    rst $08
    rst $38
    adc d
    rst $38
    nop
    nop
    nop
    rst $38
    ld h, d
    nop
    inc d
    rst $38
    or [hl]
    nop
    ld c, h
    rst $38
    db $ec
    nop
    sbc [hl]
    rst $38
    nop
    ld bc, $0000
    db $ec
    nop
    ld h, d
    nop
    or [hl]
    nop
    or h
    nop
    ld h, d
    nop
    db $ec
    nop
    nop
    nop
    nop
    ld bc, $ff9e
    db $ec
    nop
    ld c, h
    rst $38
    or [hl]
    nop
    inc d
    rst $38
    ld h, d
    nop
    nop
    rst $38
    nop
    nop
    inc d
    rst $38
    sbc [hl]
    rst $38
    ld c, d
    rst $38
    ld c, h
    rst $38
    sbc [hl]
    rst $38
    inc d
    rst $38
    nop
    nop
    add b
    cp $93
    nop
    sbc [hl]
    cp $11
    ld bc, $fef2
    ld h, d
    ld bc, $ff6d
    add b
    ld bc, $0000
    ld h, d
    ld bc, $0093
    ld de, $0e01
    ld bc, $0093
    ld h, d
    ld bc, $0000
    add b
    ld bc, $ff6d
    ld h, d
    ld bc, $fef2
    ld de, $9e01
    cp $93
    nop
    add b
    cp $00
    nop
    sbc [hl]
    cp $6d
    rst $38
    rst $28
    cp $f2
    cp $6d
    rst $38
    sbc [hl]
    cp $21
    inc c
    db $d3
    ld a, [hl]
    or a
    ret z

    ld b, a
    ld hl, $d300

jr_001_512c:
    ld a, [hl+]
    push hl
    push bc
    ld c, a
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_30f7
    pop bc
    pop hl
    dec b
    jr nz, jr_001_512c

    jp Jump_001_4f6a


Call_001_5142:
    ld a, $01
    jr jr_001_5147

Call_001_5146:
    xor a

jr_001_5147:
    ld [$d1f0], a
    ld a, [$df83]
    or a
    jr z, jr_001_5155

    ld a, $01
    ld [$dd31], a

jr_001_5155:
    ld a, $66
    ld [$d1f3], a
    ld hl, $dd32
    ld a, [$de96]
    ld [hl+], a
    ld a, [$c0f0]
    ld [hl+], a
    ld a, [$de2c]
    ld [hl+], a
    ld hl, $c0f0
    ld de, $dff3
    ld bc, $0004
    call Call_000_1a22
    rst $08
    ld a, [de]
    call Call_000_3289
    call Call_001_58b3
    xor a
    ld [$de42], a
    ld a, [$dd31]
    or a
    jr z, jr_001_51b6

    call Call_000_19ae
    ld hl, $c0f3
    ld [hl], $01
    dec hl
    ld [hl], $58
    dec hl
    ld [hl], $d5
    dec hl
    ld [hl], $c3
    call Call_000_19ae
    ld b, $07
    call Call_001_58b5
    ld a, [$df83]
    or a
    jr z, jr_001_51a8

    rst $28
    inc l

jr_001_51a8:
    call Call_001_53d8
    ld a, $00
    ldh [rWY], a
    ld c, $1b
    call Call_001_586b
    jr jr_001_51dc

jr_001_51b6:
    call Call_000_19ae
    call Call_001_53d8
    call Call_000_19ae
    ld b, $80

jr_001_51c1:
    call Call_000_19ae

jr_001_51c4:
    ldh a, [rLY]
    cp $80
    jr c, jr_001_51c4

    ld a, b
    inc a
    ldh [rWY], a
    ld a, b
    cp $00
    jr c, jr_001_51d8

    sub $08
    ld b, a
    jr nc, jr_001_51c1

jr_001_51d8:
    ld a, $00
    ldh [rWY], a

jr_001_51dc:
    ld a, $1b
    ld [$de96], a
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ld a, [$df83]
    or a
    jr z, jr_001_51f2

    rst $28
    inc hl

jr_001_51f2:
    ld a, [$d1f0]
    dec a
    jp z, Jump_001_57fd

    ld a, [$de9b]
    ld [$d1ed], a
    ld [$d1ee], a
    xor a
    ld [$d1ef], a

jr_001_5206:
    call Call_000_19ae
    call Call_001_7873
    call ToggleMegaBusterModeOnPauseSelect
    and $09
    jr nz, jr_001_521f

    ld a, [$de92]
    bit 1, a
    jr nz, jr_001_5226

    call Call_001_52e4
    jr jr_001_5206

jr_001_521f:
    ld a, [$d1ed]
    cp $0d
    jr nz, jr_001_522f

jr_001_5226:
    xor a
    ld [wPauseMenuDefaultWeaponOnly], a
    call Call_001_5a88
    jr jr_001_5206

jr_001_522f:
    ld hl, $d1f2
    bit 0, [hl]
    ld [hl], $00
    jr nz, jr_001_5241

    ld a, [$d1ed]
    ld hl, $de9b
    cp [hl]
    jr z, jr_001_5256

jr_001_5241:
    ld a, $01
    ld [$d788], a
    call $0446
    ld a, [$d1ed]
    ld [$de9b], a
    call Call_000_043a
    xor a
    ld [$d788], a

Jump_001_5256:
jr_001_5256:
    ld a, [$dd31]
    or a
    call z, Call_001_5897
    ld a, [$d1f3]
    cp $66
    jr z, jr_001_5267

    ld [$de96], a

jr_001_5267:
    call Call_000_19ae
    rst $08
    ld a, [de]
    ld a, [$dd31]
    or a
    jr nz, jr_001_529f

    ld b, $08
    call Call_000_1973
    ld b, $00

jr_001_5279:
    call Call_000_19ae

jr_001_527c:
    ldh a, [rLY]
    cp $80
    jr c, jr_001_527c

    ld a, b
    inc a
    ldh [rWY], a
    ld a, b
    cp $80
    jr nc, jr_001_5290

    add $08
    ld b, a
    jr jr_001_5279

jr_001_5290:
    ld a, $80
    ldh [rWY], a
    call Call_001_553e
    ld a, $01
    ld [$de42], a
    jp Jump_001_7873


jr_001_529f:
    ld b, $08
    call Call_000_1973
    rst $28
    inc l
    ld a, [$de96]
    push af
    ld c, $00
    call Call_001_586b
    call Call_001_553e
    call Call_000_04a4
    ld a, $80
    ldh [rWY], a
    ld a, [$df83]
    or a
    jr nz, jr_001_52c4

    ld b, $08
    call Call_000_1973

jr_001_52c4:
    di
    pop af
    ld [$de96], a
    call Call_001_5897
    ei
    ld a, $80
    ldh [rWY], a
    ld a, $01
    ld [$de42], a
    ld a, [$df83]
    or a
    jr z, jr_001_52e1

    ld b, $02
    call Call_000_1973

jr_001_52e1:
    jp Jump_001_7873


Call_001_52e4:
    ld a, [$df0a]
    cp $0c
    ld a, $00
    jr nz, jr_001_52ee

    inc a

jr_001_52ee:
    ld [wPauseMenuDefaultWeaponOnly], a
    ld hl, $d1ee
    ld a, [$d1ed]
    cp [hl]
    ld [hl], a
    ld c, a
    jr z, jr_001_52fe

    rst $08
    add hl, de

jr_001_52fe:
    ld a, [$de95]
    rlca
    jr c, jr_001_5346

    rlca
    jr c, jr_001_5358

    rlca
    jr c, jr_001_532b

    rlca
    jp nc, Jump_001_5375

    ld a, c
    cp $07
    jr nc, jr_001_536d

    call Call_001_53bd
    jr z, jr_001_536d

    ld a, c
    add $07
    cp $0e
    jr nc, jr_001_536d

    ld c, a
    call Call_001_5448
    jr nz, jr_001_5369

    ld a, c
    ld [$d1ed], a
    jr jr_001_5346

jr_001_532b:
    ld a, c
    cp $07
    jr c, jr_001_536d

    ld a, c
    cp $0d
    ld a, $06
    jr z, jr_001_533a

    ld a, c
    sub $07

jr_001_533a:
    ld c, a
    call Call_001_5448
    jr nz, jr_001_5369

    ld a, c
    ld [$d1ed], a
    jr jr_001_5358

jr_001_5346:
    ld a, [$d1ed]

jr_001_5349:
    inc a
    cp $0e
    jr c, jr_001_534f

    xor a

jr_001_534f:
    ld c, a
    call Call_001_5448
    ld a, c
    jr z, jr_001_5349

    jr jr_001_5369

jr_001_5358:
    ld a, [$d1ed]

jr_001_535b:
    dec a
    bit 7, a
    jr z, jr_001_5362

    ld a, $0d

jr_001_5362:
    ld c, a
    call Call_001_5448
    ld a, c
    jr z, jr_001_535b

jr_001_5369:
    ld a, c
    ld [$d1ed], a

jr_001_536d:
    ld a, [$d1ee]
    ld b, $01
    call Call_001_538b

Jump_001_5375:
    ld hl, $d1ef
    inc [hl]
    ld a, [hl]
    cp $06
    ld b, $00
    jr c, jr_001_5388

    cp $11
    ld b, $01
    jr c, jr_001_5388

    ld [hl], $00

jr_001_5388:
    ld a, [$d1ed]

Call_001_538b:
    push af
    ld de, $d080
    push de
    call $54be
    ld hl, $5522
    call Call_000_1cff
    ld e, l
    ld d, h
    pop hl
    pop af
    cp $0d
    ld bc, $0002
    jr nz, jr_001_53a7

    ld bc, $0004

jr_001_53a7:
    call Call_000_1c39
    ret


    ld a, [$de9c]
    and $7f

Call_001_53b0:
    ld e, a
    xor a
    ld d, $07

jr_001_53b4:
    rrc e
    adc $00
    dec d
    jr nz, jr_001_53b4

    or a
    ret


Call_001_53bd:
    ld a, [$de9c]
    ld e, a
    ld a, [$de9d]
    and $1f
    rlc e
    rl a
    call Call_001_53b0
    ld e, a
    ld a, [$df39]
    or a
    ld a, e
    jr z, jr_001_53d6

    inc a

jr_001_53d6:
    or a
    ret


Call_001_53d8:
    call Call_000_0431
    ld hl, $de9d
    ld a, [hl]
    and $1f
    ld [hl], a
    ld hl, $9c40
    ld b, $10

jr_001_53e7:
    push hl
    push bc
    ld a, $03
    ld bc, $0014
    call $1bad
    pop bc
    pop hl
    ld de, $0020
    add hl, de
    dec b
    jr nz, jr_001_53e7

    ld hl, $d080
    ld a, $03
    ld bc, $0014
    call Call_000_1a5e
    xor a

jr_001_5406:
    push af
    call Call_001_5411
    pop af
    inc a
    cp $0e
    jr c, jr_001_5406

    ret


Call_001_5411:
    ld de, $d080
    push de
    push af
    call Call_001_5427
    pop af
    ld de, $5522
    call Call_000_1d0a
    pop hl
    ld bc, $0008
    jp Jump_000_1c39


Call_001_5427:
    push af
    call Call_001_545c
    ld b, $00
    jr z, jr_001_5432

    inc b
    jr jr_001_5432

jr_001_5432:
    pop af
    push af
    call $54be
    pop af
    cp $0d
    ret z

    ld hl, $de9e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    jp Jump_001_5480


Call_001_5448:
Jump_001_5448:
    push de
    ld d, a
    ld a, [wPauseMenuDefaultWeaponOnly]
    or a
    ld a, d
    pop de
    jr z, jr_001_545c

    cp $00
    jr z, jr_001_5460

    cp $0d
    jr z, jr_001_5460

    xor a
    ret


Call_001_545c:
jr_001_545c:
    cp $0d
    jr nz, jr_001_5464

jr_001_5460:
    ld a, $01
    or a
    ret


jr_001_5464:
    call Call_001_5469
    and [hl]
    ret


Call_001_5469:
    ld hl, $de9c
    cp $08
    jr c, jr_001_5473

    sub $08
    inc hl

jr_001_5473:
    push hl
    ld hl, $0061
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    pop hl
    ret


Call_001_5480:
Jump_001_5480:
    add $07
    srl a
    srl a
    srl a
    ld c, a
    ld a, b
    or a
    jr nz, jr_001_5497

    ld l, e
    ld h, d
    ld a, $03
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


jr_001_5497:
    ld b, $05

jr_001_5499:
    ld a, c
    cp $04
    ld a, $04
    jr nc, jr_001_54a3

    ld a, c
    and $03

jr_001_54a3:
    add $b9
    ld l, a
    ld a, $00
    adc $54
    ld h, a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, c
    sub $04
    jr nc, jr_001_54b4

    xor a

jr_001_54b4:
    ld c, a
    dec b
    jr nz, jr_001_5499

    ret


    nop
    db $fd
    db $fc
    ei
    ld a, [$0dfe]
    jr z, jr_001_54e4

    push af
    ld l, a
    ld a, b
    or a
    jr nz, jr_001_54cf

    ld a, $03
    ld [de], a
    inc de
    ld [de], a
    jr jr_001_54dd

jr_001_54cf:
    ld h, $00
    add hl, hl
    push de
    ld de, $5504
    add hl, de
    pop de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

jr_001_54dd:
    inc de
    ld a, $03
    ld [de], a
    inc de
    pop af
    ret


jr_001_54e4:
    push af
    push de
    push bc
    ld l, e
    ld h, d
    ld bc, $0008
    ld a, $03
    call Call_000_1a5e
    pop bc
    pop de
    ld a, b
    or a
    jr z, jr_001_5502

    ld hl, $551e
    push bc
    ld bc, $0004
    call Call_000_1a22
    pop bc

jr_001_5502:
    pop af
    ret


    rst $28
    inc bc
    pop af
    ldh [c], a
    db $ec
    db $e4
    push af
    db $e4
    db $ec
    ldh [$ffed], a
    db $e4
    di
    ldh [$ffe4], a
    ldh [$fff1], a
    jp hl


    jp hl


    db $f4
    ldh a, [c]
    ldh [$ffef], a
    db $eb
    db $f4
    pop af
    db $ed
    db $e4
    rst $30
    di
    ld h, d
    sbc h
    and d
    sbc h
    ldh [c], a
    sbc h
    ld [hl+], a
    sbc l
    ld h, d
    sbc l
    and d
    sbc l
    ldh [c], a
    sbc l
    ld l, e
    sbc h
    xor e
    sbc h
    db $eb
    sbc h
    dec hl
    sbc l
    ld l, e
    sbc l
    xor e
    sbc l
    dec bc
    sbc [hl]

Call_001_553e:
    call Call_001_79f8
    ld hl, $c3c6

jr_001_5544:
    ld a, [hl+]
    or a
    ret z

    ld b, [hl]
    inc hl
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8000
    add hl, de
    ld e, l
    ld d, h
    call Call_000_1fe8
    pop hl
    jr jr_001_5544

    xor a
    ld [$dd31], a
    xor a
    ld [$dd2d], a
    ld [$dd30], a
    call Call_001_56d6
    ld a, [$d897]
    bit 4, a
    jr z, jr_001_5577

    ld a, $a0
    ldh [rWY], a
    ret


jr_001_5577:
    call Call_000_0421
    xor a
    ld [$dd00], a
    call Call_001_559f
    call Call_001_559f
    call Call_001_559f
    ld hl, $dd03
    ld de, $9c00
    ld bc, $0014
    push bc
    call Call_000_1c39
    pop bc
    ld de, $9c20
    call Call_000_1c39
    call Call_000_042d
    ret


Call_001_559f:
    ld a, [$d897]
    bit 4, a
    ret nz

    ld a, [$deaf]
    bit 0, a
    ret nz

    ld hl, $dd30
    ld a, [hl]
    or a
    jr z, jr_001_55d9

    cp $ff
    ret z

    ld [hl], $00
    call $5616
    call Call_001_5642
    call Call_001_5665
    ld hl, $55d5
    ld de, $9c0c
    call Call_001_55cf
    ld hl, $55d7
    ld de, $9c2c

Call_001_55cf:
    ld bc, $0002
    jp Jump_000_1c39


    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a

jr_001_55d9:
    ld hl, $dd02
    ld a, [hl]
    inc a
    cp $03
    jr c, jr_001_55e3

    xor a

jr_001_55e3:
    ld [hl], a
    jr z, @+$32

    dec a
    jr z, jr_001_5642

    jr jr_001_5665

Jump_001_55eb:
jr_001_55eb:
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    push hl
    push de
    call Call_000_1c39
    pop de
    pop hl
    ld a, e
    add $20
    ld e, a
    ld bc, $0014
    add hl, bc
    pop bc
    jp Jump_000_1c39


    rlca
    nop
    sbc h
    inc bc
    db $dd
    rlca
    rlca
    sbc h
    ld a, [bc]
    db $dd
    ld b, $0e
    sbc h
    ld de, $fadd
    sbc e
    sbc $47
    ld hl, $de9e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld de, $dd03
    call Call_001_568d
    ld hl, $dd08
    ld [hl], $72
    inc hl
    ld [hl], $73
    ld hl, $dd1c
    ld [hl], $70
    inc hl
    ld [hl], $71
    ld hl, $5607
    ld bc, $0007
    jr jr_001_55eb

Call_001_5642:
jr_001_5642:
    ld de, $dd0a
    ld b, $01
    ld a, [$de9e]
    call Call_001_568d
    ld hl, $dd0f
    ld [hl], $7c
    inc hl
    ld [hl], $7d
    ld hl, $dd23
    ld [hl], $7e
    inc hl
    ld [hl], $7f
    ld hl, $560c
    ld bc, $0006
    jr jr_001_55eb

Call_001_5665:
jr_001_5665:
    ld a, [$df34]
    ld hl, $dd2d
    cp [hl]
    jr z, jr_001_5672

    ld [hl], a
    call Call_001_57ca

jr_001_5672:
    ld a, [$dd7d]
    or a
    ret nz

    ld a, [$dd00]
    ld b, a
    ld a, [$dd01]
    ld de, $dd12
    call Call_001_568d
    ld hl, $5611
    ld bc, $0006
    jp Jump_001_55eb


Call_001_568d:
    add $07
    srl a
    srl a
    srl a
    ld c, a
    ld a, b
    or a
    jr nz, jr_001_56ad

    ld l, e
    ld h, d
    ld a, $03
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0014
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


jr_001_56ad:
    ld b, $05

jr_001_56af:
    ld a, c
    cp $04
    ld a, $04
    jr nc, jr_001_56b9

    ld a, c
    and $03

jr_001_56b9:
    add a
    add $ec
    ld l, a
    ld a, $00
    adc $56
    ld h, a
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    ld hl, $0014
    add hl, de
    ld [hl], a
    inc de
    ld a, c
    sub $04
    jr nc, jr_001_56d1

    xor a

jr_001_56d1:
    ld c, a
    dec b
    jr nz, jr_001_56af

    ret


Call_001_56d6:
    ld a, $e9
    ld [$de97], a
    ld a, $7f
    ldh [rLYC], a
    ld [$de2d], a
    ld a, $01
    ld [$de42], a
    ld a, $44
    ldh [rSTAT], a
    ret


    nop
    nop
    ld a, d
    ld a, e
    ld a, b
    ld a, c
    halt
    ld [hl], a
    ld [hl], h
    ld [hl], l
    add hl, bc
    dec bc
    nop
    ld bc, $0302
    ld [bc], a
    inc b
    dec b
    ld b, $07
    inc b
    rlca
    ld [$0109], sp
    ld a, [bc]
    ld [$010a], sp
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    push bc
    push bc
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    add e
    add e
    and e
    and e
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    cp a
    cp a
    jp $81c3


    add c
    rst $38
    rst $38
    push bc
    push bc
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    add l
    add l
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, l
    ld a, l
    add e
    add e
    push bc
    push bc
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    ld b, a
    ld b, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    add e
    add e
    ld b, l
    ld b, l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, c
    ld a, c
    add l
    add l
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    ld b, l
    ld b, l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, l
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    ld b, l
    ld b, l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, l
    ld a, l
    add e
    add e
    ld a, l
    ld a, l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, c
    ld a, c
    add l
    add l
    inc bc
    inc bc
    rst $38
    rst $38

Call_001_57ca:
    ld hl, $56f6
    dec a
    call Call_000_1cff
    push hl
    ld a, l
    ld de, $96e0
    call Call_001_57ec
    pop hl
    ld a, h
    ld de, $96f0
    call Call_001_57ec
    ld a, $6e
    ld [$dd11], a
    ld a, $6f
    ld [$dd25], a
    ret


Call_001_57ec:
    add a
    add a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $570a
    add hl, bc
    ld bc, $0010
    jp Jump_000_1c39


Jump_001_57fd:
    call Call_001_580a
    rst $08
    ld [de], a
    ld b, $3c
    call Call_000_1973
    jp Jump_001_5256


Call_001_580a:
    ld b, $06
    call Call_000_1973
    xor a
    ld c, $00

jr_001_5812:
    ld b, a
    call Call_001_5469
    and [hl]
    ld a, b
    jr z, jr_001_5824

    push af
    push bc
    call Call_001_582d
    pop bc
    jr nc, jr_001_5823

    inc c

jr_001_5823:
    pop af

jr_001_5824:
    inc a
    cp $0d
    jr c, jr_001_5812

    ld a, c
    ldh [$ff8a], a
    ret


Call_001_582d:
    ld [$d1f1], a
    add $9e
    ld l, a
    ld a, $00
    adc $de
    ld h, a
    ld a, [hl]
    cp $98
    ret nc

    ld d, $20
    call Call_001_4b11
    call Call_000_19ae

jr_001_5844:
    call Call_001_4b28
    ld a, [$d1f1]
    push af
    call Call_001_5411
    pop af
    or a
    jr nz, jr_001_5857

    call Call_001_5642
    jr jr_001_585f

jr_001_5857:
    ld b, a
    ld a, [$de9b]
    cp b
    call z, $5616

jr_001_585f:
    call Call_000_19ae
    ld a, [$deaf]
    bit 1, a
    jr nz, jr_001_5844

    scf
    ret


Call_001_586b:
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ld a, [$df83]
    or a
    jr z, jr_001_5881

    ld a, c
    ld [$de96], a
    jp Jump_000_19ae


jr_001_5881:
    di
    ld hl, $cca8
    ld [hl], $01
    inc hl
    xor a
    ld [hl+], a
    ld [hl], $04
    inc hl
    ld [hl], c
    ei

jr_001_588f:
    ld a, [$cca8]
    and $01
    jr nz, jr_001_588f

    ret


Call_001_5897:
    ld hl, $dff6
    ld de, $c0f3
    ld bc, $0004
    call Call_001_58ca
    ld hl, $dd32
    ld a, [hl+]
    ld [$de96], a
    ld a, [hl+]
    ld [$c0f0], a
    ld a, [hl+]
    ld [$de2c], a
    ret


Call_001_58b3:
    ld b, $01

Call_001_58b5:
    ld a, [$df83]
    or a
    ret nz

    jp Jump_000_1973


jr_001_58bd:
    call Call_000_19ae
    call Call_000_186b
    ld a, [$de92]
    or a
    ret nz

    jr jr_001_58bd

Call_001_58ca:
    push af

jr_001_58cb:
    ld a, [hl-]
    ld [de], a
    dec de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_58cb

    pop af
    ret


    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ldh [rBGP], a
    ld [$de96], a
    ret


    db $f4
    ld e, b
    inc b
    ld e, c
    add hl, bc
    ld e, c

jr_001_58ea:
    rla
    ld e, c
    rra
    ld e, c
    dec l
    ld e, c
    dec [hl]
    ld e, c
    ld b, e
    ld e, c
    nop
    nop
    inc b
    ld [bc], a
    ld l, e
    ld e, e
    nop
    nop
    nop
    dec c
    db $10
    ld c, [hl]
    ld b, l

jr_001_5901:
    ld e, b
    ld d, h
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    jr c, jr_001_58ea

    ld bc, $6e03
    ld e, e
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld b, l
    ld c, [hl]
    nop
    ld [bc], a
    inc bc
    dec bc
    ld [bc], a
    dec b
    inc bc
    pop bc
    ld e, h
    ld a, [hl-]
    rst $18
    ld [bc], a
    inc b
    and h
    ld e, e
    nop
    nop
    nop
    ld [bc], a
    ld b, $57
    ld d, b
    nop
    ld [bc], a
    ld b, $0b
    ld [bc], a
    dec b
    ld b, $f4
    ld e, h
    dec sp
    rst $18
    inc bc
    ld bc, $5bf6
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    ld d, e
    ld d, b
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld [bc], a
    dec b
    add hl, bc
    db $10
    ld e, l
    nop
    nop
    nop
    nop
    sub c
    nop
    nop
    nop
    sub c
    nop
    sub c
    nop
    sub c
    sub c
    sub c
    nop
    adc l
    adc [hl]
    adc a
    sub b
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [hl], b
    adc e
    ld [hl], a
    ld e, c
    or b
    adc e
    or a
    ld e, c
    ldh a, [$ff8b]
    rst $30
    ld e, c
    jr nc, jr_001_5901

    scf
    ld e, d
    ld hl, sp-$08
    pop af
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $18
    rra
    cpl
    rrca
    rlca
    rla
    inc bc
    dec bc
    inc bc
    dec bc
    ld bc, $0105
    dec b
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
    ret nz

    ret nz

    ldh [$ffe0], a
    pop af
    ldh a, [rSB]
    dec b
    ld bc, $0105
    dec b
    inc bc
    dec bc
    inc bc
    dec bc
    rlca
    rla
    cpl
    rrca
    rst $18
    rra
    ld hl, sp-$08
    pop af
    ldh a, [$ffe0]
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
    ccf
    ccf
    rst $18
    rra
    cpl
    rrca
    rlca
    rla
    inc bc
    dec bc
    ld bc, $0105
    dec b
    ld bc, $0005
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
    pop af
    ldh a, [$fff8]
    ld hl, sp+$01
    dec b
    ld bc, $0105
    dec c
    inc bc
    dec bc
    rlca
    rla
    cpl
    rrca
    rst $18
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff0]
    pop hl
    ldh [$ffc0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $28
    rrca
    rla
    rlca
    inc bc
    dec bc
    ld bc, $0105
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld hl, sp-$08
    db $fd
    db $fc
    cp $fe
    ld bc, $0305
    dec bc
    rla
    rlca
    cpl
    rrca
    ld e, a
    rra
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fd
    db $fc
    ld a, [$f0f8]
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, a
    ld a, a
    cp a
    ccf
    rra
    ld e, a
    rrca
    cpl
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rla
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld a, [$fdf8]
    db $fc
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rrca
    cpl
    rra
    ld e, a
    cp a
    ccf
    ld a, a
    ld a, a

Call_001_5a77:
    ld a, [$d902]
    dec a
    add a
    add d
    ld hl, $58e4
    call Call_000_1cff
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


Call_001_5a88:
    ld [$d900], sp
    ld a, [$de9b]
    ld [$d905], a
    ld a, [$de2c]
    ld [$d90f], a
    ldh a, [rLYC]
    ld [$d910], a
    ld a, [$d1ed]
    ld [$d911], a
    ld [$d912], a
    rst $08
    ld a, [de]
    call Call_001_5da1
    call Call_001_5ace

Jump_001_5aad:
    rst $08
    ld a, [de]
    di
    ld a, [$d910]
    ld a, [$d90f]
    ei
    ld a, [$d905]
    ld [$de9b], a
    ld a, [$de9b]
    ld [$d1ed], a
    ld hl, $d900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    call Call_001_5d92
    ret


Call_001_5ace:
    ld a, [wETankAndPieceCount]
    call Call_000_10c6
    ld a, $01
    ld [$d902], a

Jump_001_5ad9:
jr_001_5ad9:
    xor a
    ld [$d904], a

jr_001_5add:
    ld hl, $d904
    inc [hl]
    ld a, [hl]
    cp $06
    jr nc, jr_001_5aeb

    call Call_001_5c53
    jr jr_001_5af2

jr_001_5aeb:
    cp $11
    jr nc, jr_001_5ad9

    call Call_001_5c3d

jr_001_5af2:
    call Call_000_19ae
    call Call_001_7873
    ld a, [$de92]
    bit 1, a
    ret nz

    ld a, [$de95]
    bit 0, a
    jr nz, jr_001_5b13

    bit 3, a
    jr nz, jr_001_5b13

    bit 6, a
    jr nz, jr_001_5b31

    bit 7, a
    jr nz, jr_001_5b54

    jr jr_001_5add

jr_001_5b13:
    ld e, $04
    ld d, $00
    call Call_001_5a77
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_0332

jr_001_5b20:
    call Call_001_5c2c
    jr nc, jr_001_5ad9

    ld e, $03
    ld d, $00
    call Call_001_5a77
    ld [$d902], a
    jr jr_001_5b20

jr_001_5b31:
    call Call_001_5c3d
    ld a, [$d902]
    push af

jr_001_5b38:
    ld e, $02
    ld d, $00
    call Call_001_5a77
    ld [$d902], a
    call Call_001_5c2c
    jr c, jr_001_5b38

    pop hl
    ld a, [$d902]
    cp h
    jp z, Jump_001_5ad9

    rst $08
    add hl, de
    jp Jump_001_5ad9


jr_001_5b54:
    call Call_001_5c3d

jr_001_5b57:
    ld e, $03
    ld d, $00
    call Call_001_5a77
    ld [$d902], a
    call Call_001_5c2c
    jr c, jr_001_5b57

    rst $08
    add hl, de
    jp Jump_001_5ad9


    jp Jump_001_5aad


    ld a, [$de9e]
    cp $98
    ret nc

    ld hl, $df39
    ld a, [hl]
    or a
    ret z

    ld a, [$df07]
    or a
    jr nz, jr_001_5b8b

    ld a, [wETankAndPieceCount]
    sub $04
    call Call_000_10c6
    call Call_001_5cac

jr_001_5b8b:
    ld hl, $de9e
    ld d, $20
    call Call_001_4b11

jr_001_5b93:
    call Call_000_19ae
    call Call_001_4b28
    call Call_001_5642
    ld a, [$deaf]
    bit 1, a
    jr nz, jr_001_5b93

    ret


    ld hl, $de9d
    ld a, [hl-]
    and $1f
    jr nz, jr_001_5bb0

    ld a, [hl]
    and $fe
    ret z

jr_001_5bb0:
    call Call_001_5d92

jr_001_5bb3:
    call Call_001_5eae
    ld a, [$de95]
    and $09
    jr z, jr_001_5bda

    ld a, [$d911]
    cp $0d
    jr z, jr_001_5bda

    ld hl, $de9e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $98
    jr nc, jr_001_5bb3

    call Call_001_5be6
    ld b, $1e
    call Call_000_1973

jr_001_5bda:
    ld a, [$d902]
    push af
    call Call_001_5da1
    pop af
    ld [$d902], a
    ret


Call_001_5be6:
    ld a, [$d911]
    call Call_001_582d
    ld a, [$df07]
    or a
    ret nz

    ld hl, wWTankCount
    dec [hl]
    ret


    call Call_001_5d92
    call Call_001_580a
    ld a, c
    or a
    jr z, jr_001_5c0c

    rst $08
    ld [de], a
    ld a, [$df07]
    or a
    jr nz, jr_001_5c0c

    ld hl, wSTankCount
    dec [hl]

jr_001_5c0c:
    push bc
    ld b, $3c
    call Call_000_1973
    pop bc
    ld a, [$d902]
    push af
    call Call_001_5da1
    pop af
    ld [$d902], a
    ret


Call_001_5c1f:
    call Call_001_5c2c
    jp c, Jump_001_5c69

    call nz, Call_001_5cac
    call Call_001_5c3d
    ret


Call_001_5c2c:
    ld e, $00
    ld d, $00
    call Call_001_5a77
    inc hl
    ld h, [hl]
    ld l, a
    or h
    ret z

    ld a, [hl]
    or a
    ret nz

    scf
    ret


Call_001_5c3d:
    ld e, $09
    ld d, $00
    call Call_001_5a77
    call Call_001_5c9e

jr_001_5c47:
    ld a, [de]
    or a
    ret z

    add $9f
    call Call_000_1c15
    inc hl
    inc de
    jr jr_001_5c47

Call_001_5c53:
    ld e, $09
    ld d, $00
    call Call_001_5a77
    call Call_001_5c9e

jr_001_5c5d:
    ld a, [de]
    or a
    ret z

    ld a, $03
    call Call_000_1c15
    inc hl
    inc de
    jr jr_001_5c5d

Jump_001_5c69:
    ld e, $00
    ld d, $01
    call Call_001_5a77
    cp $ff
    ret z

    call Call_001_5c9e
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld e, l
    ld d, h

Jump_001_5c7d:
jr_001_5c7d:
    push bc
    ld b, $00
    ld hl, $5c93
    push de
    call Call_000_1c39
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop bc
    dec b
    jr nz, jr_001_5c7d

    ret


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

Call_001_5c9e:
    ld a, [hl+]
    ldh [$ff9b], a
    ld e, a
    ld a, [hl+]
    ldh [$ff9c], a
    ld d, a
    push hl
    call Call_001_5e75
    pop de
    ret


Call_001_5cac:
    ld e, $04
    ld d, $01
    call Call_001_5a77
    cp $ff
    ret z

    ldh [$ff9b], a
    inc hl
    ld a, [hl+]
    ldh [$ff9c], a
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ret


    ld b, $04
    ld a, [wETankAndPieceCount]
    ld c, a

jr_001_5cc7:
    ld a, c
    or a
    jr z, jr_001_5ce8

    sub $04
    ld c, a
    jr nc, jr_001_5ce3

    ld hl, $5957
    inc a
    jr z, jr_001_5cdf

    ld hl, $5953
    inc a
    jr z, jr_001_5cdf

    ld hl, $594f

jr_001_5cdf:
    ld c, $00
    jr jr_001_5ceb

jr_001_5ce3:
    ld hl, $595b
    jr jr_001_5ceb

jr_001_5ce8:
    ld hl, $594b

jr_001_5ceb:
    push bc
    call Call_001_5d22
    pop bc
    dec b
    jr nz, jr_001_5cc7

    ret


    ld b, $04
    ld a, [wWTankCount]
    ld c, a

jr_001_5cfa:
    ld a, c
    or a
    jr z, jr_001_5d04

    dec c
    ld hl, $595f
    jr jr_001_5d07

jr_001_5d04:
    ld hl, $594b

jr_001_5d07:
    push bc
    call Call_001_5d22
    pop bc
    dec b
    jr nz, jr_001_5cfa

    ret


    ld a, [wSTankCount]
    or a
    jr z, jr_001_5d1b

    ld hl, $5963
    jr jr_001_5d1e

jr_001_5d1b:
    ld hl, $594b

jr_001_5d1e:
    call Call_001_5d22
    ret


Call_001_5d22:
    push hl
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    call Call_001_5e75
    pop hl
    call Call_001_5d37
    ldh a, [$ff9b]
    add $02
    ldh [$ff9b], a
    ret


Call_001_5d37:
    push de
    ld bc, $0002
    call Call_000_1c39
    pop de
    push hl
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld bc, $0002
    jp Jump_000_1c39


Call_001_5d4d:
    ld a, [$df83]
    or a
    jp z, Jump_001_5d71

    xor a
    ld [$de96], a
    rst $28
    inc l
    ret


Call_001_5d5b:
    ld a, [$df83]
    or a
    jp z, Jump_001_5d68

    ld a, $1b
    ld [$de96], a
    ret


Jump_001_5d68:
    ld d, $1b
    ld b, $01
    call Call_001_5d75
    xor a
    ret


Jump_001_5d71:
    ld d, $00
    ld b, $01

Call_001_5d75:
    ld a, [$de96]
    ld [$d90e], a

jr_001_5d7b:
    push de
    ld a, [$de96]
    push bc
    call Call_000_1f51
    pop bc
    ld [$de96], a
    push af
    push bc
    call Call_000_1973
    pop bc
    pop af
    pop de
    jr nc, jr_001_5d7b

    ret


Call_001_5d92:
    call Call_001_5d4d
    call Call_001_553e
    call Call_001_53d8
    call Call_001_5d5b
    rst $28
    inc hl
    ret


Call_001_5da1:
    call Call_001_5d4d
    call Call_000_04b8
    ld a, [wETankAndPieceCount]
    call Call_000_10c6
    call Call_001_5dd9
    call Call_001_5dff
    call Call_001_5e0d
    call Call_001_5e1b
    call Call_001_5e29
    call DrawPauseMegaBusterMkIIIconAndPChips
    call Call_001_5dc8
    call Call_001_5d5b
    rst $28
    inc h
    ret


Call_001_5dc8:
    ld a, $01

jr_001_5dca:
    ld [$d902], a
    call Call_001_5c1f
    ld a, [$d902]
    inc a
    cp $05
    jr c, jr_001_5dca

    ret


Call_001_5dd9:
    ld hl, $5967
    ld b, $04
    ld a, [wCrystalCollectedFlags]
    ld c, a

jr_001_5de2:
    push hl
    rr c
    jr c, jr_001_5df6

    push bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0040
    call Call_000_1c39
    pop bc

jr_001_5df6:
    pop hl
    ld de, $0004
    add hl, de
    dec b
    jr nz, jr_001_5de2

    ret


Call_001_5dff:
    ld a, [wEnergyBalancerUnlocked]
    or a
    ret nz

    ld bc, $0206
    ld de, $9d84
    jp Jump_001_5c7d


Call_001_5e0d:
    ld a, [wPowerGeneratorUnlocked]
    or a
    ret nz

    ld bc, $0205
    ld de, $9d8b
    jp Jump_001_5c7d


Call_001_5e1b:
    ld a, [wMegaArmUpgradeMHUnlocked]
    or a
    ret nz

    ld bc, $0205
    ld de, $9d28
    jp Jump_001_5c7d


Call_001_5e29:
    ld a, [wMegaArmUpgradeCLUnlocked]
    or a
    ret nz

    ld bc, $0205
    ld de, $9d2e
    jp Jump_001_5c7d


Call_001_5e37:
    ld a, $e7
    ldh [$ff8a], a
    ld a, $9d
    ldh [$ff8b], a
    ld hl, wPChipCountLow
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    ld a, $04
    ld de, $5e5e
    call Call_001_790a
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld hl, $5c93
    ld bc, $0003
    jp Jump_000_1c39


    ld a, b
    or c
    ret z

    ld hl, $ff8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add $9b
    call Call_000_1c15
    inc hl
    ld a, l
    ldh [$ff8a], a
    ld a, h
    ldh [$ff8b], a
    ret


Call_001_5e75:
    sla e
    sla e
    sla e
    sla d
    sla d
    sla d
    ld a, d
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
    ld de, $9c00
    add hl, de
    ld e, l
    ld d, h
    ret


jr_001_5e99:
    push bc
    push de
    ld b, $00
    call Call_000_1c39
    pop de
    push hl
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec b
    jr nz, jr_001_5e99

    ret


Call_001_5eae:
    xor a
    ld [$d913], a
    ld a, [$d911]
    call Call_001_5fa9
    call z, Call_001_5f26

jr_001_5ebb:
    call Call_000_19ae
    call Call_001_7873
    ld a, [$de95]
    and $03
    jr nz, jr_001_5ecd

    call Call_001_5ece
    jr jr_001_5ebb

jr_001_5ecd:
    ret


Call_001_5ece:
    ld a, [$d911]
    ld [$d912], a
    ld c, a
    ld a, [$de95]
    and $f0
    jr z, jr_001_5ede

    rst $08
    inc h

jr_001_5ede:
    ld a, [$de95]
    rlca
    jr c, jr_001_5f26

    rlca
    jr c, jr_001_5f38

    rlca
    jr c, jr_001_5f0b

    rlca
    jp nc, Jump_001_5f55

    ld a, c
    cp $07
    jr nc, jr_001_5f4d

    call Call_001_53bd
    jr z, jr_001_5f4d

    ld a, c
    add $07
    cp $0e
    jr nc, jr_001_5f4d

    ld c, a
    call Call_001_5fa9
    jr nz, jr_001_5f49

    ld a, c
    ld [$d911], a
    jr jr_001_5f26

jr_001_5f0b:
    ld a, c
    cp $07
    jr c, jr_001_5f4d

    ld a, c
    cp $0d
    ld a, $06
    jr z, jr_001_5f1a

    ld a, c
    sub $07

jr_001_5f1a:
    ld c, a
    call Call_001_5fa9
    jr nz, jr_001_5f49

    ld a, c
    ld [$d911], a
    jr jr_001_5f38

Call_001_5f26:
jr_001_5f26:
    ld a, [$d911]

jr_001_5f29:
    inc a
    cp $0e
    jr c, jr_001_5f2f

    xor a

jr_001_5f2f:
    ld c, a
    call Call_001_5fa9
    ld a, c
    jr z, jr_001_5f29

    jr jr_001_5f49

jr_001_5f38:
    ld a, [$d911]

jr_001_5f3b:
    dec a
    bit 7, a
    jr z, jr_001_5f42

    ld a, $0d

jr_001_5f42:
    ld c, a
    call Call_001_5fa9
    ld a, c
    jr z, jr_001_5f3b

jr_001_5f49:
    ld a, c
    ld [$d911], a

jr_001_5f4d:
    ld a, [$d912]
    ld b, $01
    call Call_001_5f6f

Jump_001_5f55:
    ld hl, $d913
    inc [hl]
    ld a, [hl]
    cp $06
    ld b, $00
    jr c, jr_001_5f68

    cp $11
    ld b, $01
    jr c, jr_001_5f68

    ld [hl], $00

jr_001_5f68:
    ld a, [$d911]
    call Call_001_5f6f
    ret


Call_001_5f6f:
    push af
    ld de, $d080
    push de
    call $54be
    push af
    cp $0d
    jr z, jr_001_5f89

    ld hl, $de9e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_001_5480

jr_001_5f89:
    pop af
    ld hl, $5522
    call Call_000_1cff
    ld e, l
    ld d, h
    pop hl
    pop af
    cp $0d
    jr nz, jr_001_5f9d

    ld bc, $0004
    jr jr_001_5fa6

jr_001_5f9d:
    inc hl
    inc hl
    inc hl
    inc de
    inc de
    inc de
    ld bc, $0005

jr_001_5fa6:
    jp Jump_000_1c39


Call_001_5fa9:
    or a
    scf
    ret z

    jp Jump_001_5448


    ld hl, $d73d
    ld [hl], $40
    jp Jump_001_6ece


    ld hl, $d702
    ld [hl], $01
    ld a, $00
    ld [$d70a], a
    ld a, [$d897]
    bit 2, a
    ld a, $01
    jr z, jr_001_5fcb

    dec a

jr_001_5fcb:
    ld [$d703], a
    xor a
    ld [$d70b], a
    ld [$df08], a
    ld hl, $de9c
    set 0, [hl]
    set 6, [hl]
    jp Jump_001_6ece


    ld a, $01
    ldh [$ffaa], a
    ld a, [$d77e]
    bit 0, a
    jp nz, Jump_001_6051

    call Call_000_0fc5
    ld a, [$d725]
    ld [$d71f], a
    ld a, [$d722]
    ld [$d71d], a
    ld a, [$d721]
    ld [$d71c], a
    call Call_001_60d8
    call Call_001_663d
    ld a, [$deaf]
    and $f3
    jr nz, jr_001_604a

    ld hl, $d76d
    inc [hl]
    ld a, [$d81c]
    or a
    jr nz, jr_001_604a

    ld a, [$cc52]
    or a
    jr z, jr_001_6047

    ld a, [$dece]
    or a
    jr nz, jr_001_604a

    ld a, [$d702]
    dec a
    jr nz, jr_001_604a

    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    ld d, a
    ld hl, $cc64
    push de
    call Call_000_1079
    pop de
    ld a, [hl+]
    and $01
    jr z, jr_001_6047

    inc [hl]
    ld a, [hl]
    and $7f
    call z, Call_000_0488
    ld a, $01

jr_001_6047:
    ld [$d899], a

jr_001_604a:
    ld a, [$d702]
    cp $01
    jr nz, jr_001_6060

Jump_001_6051:
    call Call_001_6b75
    call Call_001_6ebb
    call Call_001_645b
    call Call_001_711b
    call Call_001_60c6

jr_001_6060:
    xor a
    ldh [$ffaa], a
    ret


Call_001_6064:
    ld a, [$deaf]
    and $41
    ret nz

    ld hl, $c201
    ld a, [hl]
    or a
    jr z, jr_001_6072

    dec [hl]

jr_001_6072:
    ld a, [$d76e]
    or a
    jr z, jr_001_6087

    ld a, [$cca6]
    or a
    jr nz, jr_001_6082

    ld a, $1c
    ldh [rOBP0], a

jr_001_6082:
    xor a
    ld [wBusterChargeCounter], a
    ret


jr_001_6087:
    ld a, [$d73a]
    cp $5a
    jr nc, jr_001_60b6

    ld a, [$d74a]
    or a
    jr nz, jr_001_60b6

    ld a, [$d163]
    or a
    jr nz, jr_001_60b6

    ld a, [$deaf]
    ld b, a
    and $2e
    jr nz, jr_001_60b6

    call $044e
    ld a, [$d767]
    and $02
    jr nz, jr_001_60b6

    ld a, [$d706]
    or a
    jr nz, jr_001_60b6

    xor a
    ld [wBusterChargeCounter], a

jr_001_60b6:
    ld hl, wBusterChargeCounter
    ld a, [$d767]
    and $02
    jr z, jr_001_60c5

    ld a, [hl]
    inc a
    jr z, jr_001_60c5

    ld [hl], a

jr_001_60c5:
    ret


Call_001_60c6:
    ld a, [$de9b]
    or a
    jp z, $0452

    cp $06
    jp z, $0456

    cp $0b
    jp z, $045a

    ret


Call_001_60d8:
    xor a
    ld [$d741], a
    ld [$d740], a
    ld [$d893], a
    ld a, [$d771]
    cp $20
    ld a, [$de91]
    jr nz, jr_001_60ef

    ld a, [$d773]

jr_001_60ef:
    ld [$d767], a
    ld a, [$d81c]
    or a
    jp nz, Jump_001_631b

    ld hl, $de31
    ld a, [hl]
    and $01
    jr z, jr_001_611b

    ld a, [$d74b]
    or a
    jr z, jr_001_611b

    ld a, [$de36]
    or a
    jr z, jr_001_6113

    dec a
    ld [$de36], a
    jr jr_001_611b

jr_001_6113:
    ld [hl], $80
    call Call_000_0d6b
    jp Jump_001_6149


jr_001_611b:
    ld hl, $d702
    ld a, [hl]
    cp $01
    jr z, jr_001_6149

    cp $02
    jr nz, jr_001_613a

    inc [hl]
    call Call_000_2d2d
    rst $08
    dec bc
    call Call_001_4f8e
    ld a, $f0
    ld [$d784], a
    xor a
    ld [$d7c2], a
    ret


jr_001_613a:
    ld hl, $d784
    dec [hl]
    ret nz

    ld a, [$deaf]
    and $01
    ret nz

    pop hl
    jp Jump_000_0b6d


Jump_001_6149:
jr_001_6149:
    ld a, [$deaf]
    and $41
    ret nz

    ld a, [$dece]
    or a
    jp nz, Jump_001_6c35

    ld hl, $de2a
    ld a, [hl]
    or a
    jr z, jr_001_615e

    dec [hl]

jr_001_615e:
    call Call_001_6372
    call Call_001_6064
    ld a, [$c2f3]
    cp $01
    ret z

    ld a, [$de92]
    bit 3, a
    jr z, jr_001_618a

    ld a, [$de29]
    or a
    jr nz, jr_001_618a

    ld a, [$de2a]
    or a
    jr nz, jr_001_618a

    ld a, [$deaf]
    and $bb
    jr nz, jr_001_618a

    call Call_001_5146
    jp Jump_001_62f2


jr_001_618a:
    ld a, [$deaf]
    and $be
    jr z, jr_001_619a

    ld a, [$d70a]
    cp $2a
    call z, Call_001_6511
    ret


jr_001_619a:
    ld hl, $d77f
    ld a, [hl]
    or a
    jr z, jr_001_61c1

    call Call_001_7185
    ld a, [$d780]
    ld b, a
    and $11
    cp $11
    jr z, jr_001_61b7

    ld a, b
    and $22
    cp $22
    jr z, jr_001_61b7

    jr jr_001_61c1

jr_001_61b7:
    ld hl, $d739
    ld [hl], $14
    inc hl
    ld [hl], $00
    jr jr_001_6221

jr_001_61c1:
    ld a, [$d725]
    cp $b0
    jr nc, jr_001_6221

    cp $90
    jr c, jr_001_6221

    ld de, $0bc5
    ld a, [$ccb3]
    or a
    jr nz, jr_001_61de

    ld a, [$ccb4]
    or a
    jr z, jr_001_61f2

    ld de, $0bcc

jr_001_61de:
    ld b, a
    ld hl, $ccb2
    inc [hl]
    ld a, [hl]
    cp $08
    ld a, b
    ret c

    push af
    push de
    call Call_000_3289
    pop de
    pop af
    jp Jump_000_0332


jr_001_61f2:
    ld hl, $d739
    ld a, [$df09]
    or a
    jr nz, jr_001_6207

    ld [hl], $1f
    inc hl
    ld [hl], $00
    ld a, $90
    ld [$d725], a
    jr jr_001_6221

jr_001_6207:
    ld [hl], $00
    ld de, $f880
    ld a, [$de91]
    bit 0, a
    jr nz, jr_001_6216

    ld de, $fc00

jr_001_6216:
    ld a, e
    ld [$d729], a
    ld a, d
    ld [$d72a], a
    jp Jump_001_667e


Jump_001_6221:
jr_001_6221:
    ld hl, $d739
    ld a, [hl+]
    or [hl]
    jp nz, Jump_001_638b

Jump_001_6229:
    call Call_001_6aba
    ld a, [$d74b]
    or a
    jp z, Jump_001_667e

    cp $02
    jp z, Jump_001_677c

    ld a, [$d163]
    or a
    jp nz, Jump_001_6d75

    ld a, [$d740]
    bit 0, a
    jr z, jr_001_6258

    ld a, [$d779]
    bit 7, a
    jr nz, jr_001_6258

    ld a, [$d741]
    bit 7, a
    jp nz, Jump_001_6d3b

    jp Jump_001_6664


Jump_001_6258:
jr_001_6258:
    ld a, [$d741]
    bit 7, a
    jr z, jr_001_626f

    call Call_001_69ad
    ld a, b
    cp $02
    jr nz, jr_001_626f

    ld a, [$c2f3]
    and $03
    jp z, Jump_001_64d1

jr_001_626f:
    xor a
    ld [$d705], a
    ld hl, $d72b
    ld a, [hl+]
    or [hl]
    ld hl, $d718
    or [hl]
    inc hl
    or [hl]
    ld hl, $d709
    jr nz, jr_001_6287

    xor a
    ld [hl], a
    jr jr_001_62e2

jr_001_6287:
    ld a, [hl]
    cp $03
    jr nc, jr_001_62d2

    ld a, [$d73a]
    cp $5a
    jr nc, jr_001_62de

    inc [hl]
    ld a, $01
    ld [$d708], a
    ld a, [hl]
    cp $01
    jr nz, jr_001_62c5

    ld hl, $d721
    xor a
    ld [hl+], a
    ld a, [$d719]
    bit 7, a
    jr nz, jr_001_62b6

    ld a, $00
    ld [$d72b], a
    ld a, $01
    ld [$d72c], a
    jr jr_001_62c0

jr_001_62b6:
    ld a, $00
    ld [$d72b], a
    ld a, $ff
    ld [$d72c], a

jr_001_62c0:
    ld a, $08
    ld [$d770], a

jr_001_62c5:
    ld a, $01
    ld [$d705], a
    xor a
    ld hl, $d72b
    ld [hl+], a
    ld [hl+], a
    jr jr_001_62e2

jr_001_62d2:
    ld a, [$d741]
    and $30
    jr z, jr_001_62e2

    ld a, $02
    ld [$d705], a

jr_001_62de:
    xor a
    ld [$d770], a

jr_001_62e2:
    call Call_001_6a0f
    call Call_001_6930
    call Call_001_6978
    xor a
    ld [$d72a], a
    call Call_001_62f5

Jump_001_62f2:
jr_001_62f2:
    jp Jump_001_650b


Call_001_62f5:
    call Call_001_69b9
    ld a, [$d74b]
    or a
    jp nz, Jump_001_68cb

    xor a
    ld [$d72a], a
    ld hl, $d725
    inc [hl]
    ld a, $01
    ld [$d74b], a
    call Call_001_69b9
    ld a, [$d74b]
    or a
    jp nz, Jump_001_68cb

    ld hl, $d725
    dec [hl]
    ret


Jump_001_631b:
    ld a, [$d739]
    cp $14
    jr c, jr_001_6332

    ld a, [$df09]
    or a
    jr nz, jr_001_6332

    xor a
    ld [$d820], a
    ld [$d73a], a
    jp Jump_001_6221


jr_001_6332:
    ld a, [$d81e]
    or a
    jr z, jr_001_62f2

    xor a
    ld [$d762], a
    ld [$d752], a
    ld [$c201], a
    ld a, $01
    ld [$d718], a
    ld a, $02
    ld [$d705], a
    ld hl, $d72a
    bit 7, [hl]
    jr z, jr_001_6356

    xor a
    ld [hl-], a
    ld [hl-], a

jr_001_6356:
    ld a, [$d163]
    or a
    jp nz, Jump_001_6362

    call Call_001_69b9
    jr jr_001_62f2

Jump_001_6362:
    call Call_001_6e99
    jr c, jr_001_636c

    call Call_001_6dc7
    jr jr_001_62f2

jr_001_636c:
    call Call_001_6db1
    jp Jump_001_62f2


Call_001_6372:
    ld a, [$d771]
    or a
    jp nz, Jump_001_6f43

Jump_001_6379:
    ld a, [$d74a]
    or a
    ret nz

    ld a, [$de92]
    ld [$d740], a
    ld a, [$de91]
    ld [$d741], a
    ret


Jump_001_638b:
    ld a, [$ccc2]
    dec a
    jr nz, jr_001_639c

    xor a
    ld [hl-], a
    ld [hl], a
    ld a, $01
    ld [$ccc4], a
    jp Jump_001_6229


jr_001_639c:
    ld a, [hl]
    or a
    jr z, jr_001_63d7

    dec [hl]
    ld a, [hl]
    cp $59
    jr c, jr_001_63d0

Jump_001_63a6:
    ld a, [$d735]
    ld [$d72b], a
    ld a, [$d736]
    ld [$d72c], a
    ld e, a
    ld a, [$d163]
    or a
    jr nz, jr_001_63c9

    bit 7, e
    ld a, $01
    jr nz, jr_001_63c6

    ld a, [$d735]
    or e
    jr z, jr_001_63c9

    xor a

jr_001_63c6:
    ld [$d703], a

jr_001_63c9:
    xor a
    ld [$d740], a
    ld [$d741], a

jr_001_63d0:
    xor a
    ld [$d739], a
    jp Jump_001_6229


jr_001_63d7:
    dec hl
    ld a, [$df09]
    dec a
    jr z, jr_001_63e7

    dec a
    jr nz, jr_001_63e9

    xor a
    ld [hl+], a
    ld [hl-], a
    jp Jump_001_6229


jr_001_63e7:
    ld [hl], $00

jr_001_63e9:
    ld a, [hl]
    add a
    add a
    add a
    ld b, a
    ld hl, $de9e
    ld a, [hl]
    sub b
    jr z, jr_001_63f7

    jr nc, jr_001_641d

jr_001_63f7:
    ld a, [$ccc2]
    dec a
    jr nz, jr_001_6401

    ld [hl], $01
    jr jr_001_63d0

jr_001_6401:
    ld a, $01
    ld [$de90], a
    ld [$de34], a
    xor a
    ld [$d81c], a
    ld a, [$df08]
    or $40
    ld [$df08], a
    ld a, $02
    ld [$d702], a
    xor a
    ld [hl], a
    ret


jr_001_641d:
    ld [hl], a
    call Call_001_643e
    rst $08
    inc de
    ld a, $88
    ld [$d73a], a
    ld hl, $d74b
    ld a, [hl]
    cp $02
    jr nz, jr_001_6437

    ld [hl], $00
    ld hl, $d706
    ld [hl], $00

jr_001_6437:
    xor a
    ld [$c201], a
    jp Jump_001_63a6


Call_001_643e:
    ld hl, $d73b
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, [hl]
    cp $40
    jr c, jr_001_6451

    ld a, $03
    push hl
    call Call_000_30c1
    pop hl

jr_001_6451:
    ld [hl+], a
    ld a, [$d722]
    ld [hl+], a
    ld a, [$d725]
    ld [hl+], a
    ret


Call_001_645b:
    ld hl, $d73c
    ld a, [hl]
    or a
    ret z

    ld a, [$deaf]
    and $21
    jr nz, jr_001_6483

    dec hl
    inc [hl]
    ld a, [hl]
    cp $14
    jr c, jr_001_6483

    ld [hl], $00
    inc hl
    inc [hl]
    ld a, [hl]
    cp $04
    jr c, jr_001_6483

    ld [hl], $00
    ld hl, $d73d
    ld a, [hl]
    ld [hl], $40
    jp Jump_000_30f7


jr_001_6483:
    ld a, [$d722]
    ldh [$ff9b], a
    ld a, [$d725]
    ldh [$ff9c], a
    ld a, [$d73c]
    ld hl, $64b0
    dec a
    jr z, jr_001_649f

    ld hl, $64bb
    dec a
    jr z, jr_001_649f

    ld hl, $64c6

jr_001_649f:
    ld a, [$d70b]
    and $80
    ldh [$ffab], a
    ld a, $60
    ldh [$ffac], a
    ld a, [$d73d]
    jp Jump_000_2de8


    ldh a, [c]
    pop af
    ld de, $0a00
    cp $00
    inc d
    nop
    nop
    add b
    ldh a, [c]
    pop af
    ld de, $0a01
    cp $01
    inc d
    nop
    ld bc, $f280
    pop af
    ld de, $0a02
    cp $02
    inc d
    nop
    ld [bc], a
    add b

Jump_001_64d1:
    ld hl, $d725
    ld a, [hl]
    add $06
    ld [hl], a
    ld a, $08
    ld [$d706], a
    xor a
    ld [$d707], a
    call Call_001_6762
    jp Jump_001_62f2


jr_001_64e7:
    ld c, a
    ld a, [$d81c]
    or a
    jr z, jr_001_64f0

    set 2, c

jr_001_64f0:
    ld a, c
    cp $5a
    jr nc, jr_001_6500

    ld a, [$de83]
    ld b, $2a
    bit 2, a
    jr z, jr_001_6508

    jr jr_001_6511

jr_001_6500:
    ld b, $1a
    bit 2, c
    jr nz, jr_001_6508

    ld b, $1c

jr_001_6508:
    jp Jump_001_659b


Jump_001_650b:
    ld a, [$d73a]
    or a
    jr nz, jr_001_64e7

Call_001_6511:
jr_001_6511:
    ld a, [$d74b]
    or a
    jp z, Jump_001_6600

    cp $02
    jp z, Jump_001_65c2

    ld a, [$d163]
    or a
    jr z, jr_001_6528

    ld b, $32
    jp Jump_001_659b


jr_001_6528:
    ld a, [$d779]
    or a
    jp nz, Jump_001_6623

    ld hl, $d718
    ld a, [hl+]
    or [hl]
    jr z, jr_001_6579

    xor a
    ld [wPlayerIdleShotTimer], a
    ld a, [$d705]
    cp $02
    jr nc, jr_001_6550

    ld hl, $d770
    ld a, [hl]
    or a
    ld b, $00
    jr z, jr_001_659b

    dec [hl]
    ld b, $04
    dec a
    jr jr_001_659b

jr_001_6550:
    xor a
    ld [$d770], a
    ld hl, $d708
    inc [hl]
    ld a, [hl]
    srl a
    srl a
    srl a
    and $03
    ld l, a
    ld a, [$c201]
    or a
    jr z, jr_001_6570

    ld a, [wPlayerShotAnimType]
    or a
    jr z, jr_001_6570

    set 2, l

jr_001_6570:
    ld de, $661b
    ld h, $00
    add hl, de
    ld b, [hl]
    jr jr_001_659b

jr_001_6579:
    ld hl, $d727
    ld a, [hl+]
    or [hl]
    ld b, $00
    jr nz, jr_001_659b

    ld hl, wPlayerIdleShotTimer
    inc [hl]
    ld a, [hl]
    cp $d7
    jr nc, jr_001_6599

    cp $c8
    jr c, jr_001_659b

    ld a, [$c201]
    or a
    jr nz, jr_001_6599

    ld b, $02
    jr jr_001_659b

jr_001_6599:
    ld [hl], $00

Jump_001_659b:
jr_001_659b:
    ld a, b
    ld [$d70a], a
    cp $00
    ret nz

    ld a, [$c201]
    ld c, a
    or a
    ret z

    ld a, [wPlayerShotAnimType]
    or a
    ret z

    ld b, $1e
    dec a
    jr z, jr_001_65bd

    ld b, $22
    ld a, [$de9b]
    cp $09
    jr nz, jr_001_65bd

    ld b, $4a

jr_001_65bd:
    ld a, b
    ld [$d70a], a
    ret


Jump_001_65c2:
    xor a
    ld [wPlayerIdleShotTimer], a
    ld a, [$d706]
    or a
    jr z, jr_001_65d0

    ld b, $18
    jr jr_001_659b

jr_001_65d0:
    ld a, [$c201]
    or a
    jr z, jr_001_65e5

    ld a, [wPlayerShotAnimType]
    or a
    jr z, jr_001_65e5

    ld b, $14
    dec a
    jr z, jr_001_659b

    ld b, $16
    jr jr_001_659b

jr_001_65e5:
    ld a, [$d81c]
    or a
    jr nz, jr_001_65f9

    ld a, [$d725]

jr_001_65ee:
    srl a
    srl a
    and $02
    add $10
    ld b, a
    jr jr_001_659b

jr_001_65f9:
    ld a, [$de83]
    srl a
    jr jr_001_65ee

Jump_001_6600:
    xor a
    ld [wPlayerIdleShotTimer], a
    ld b, $0c
    ld a, [$c201]
    or a
    jr z, jr_001_659b

    ld a, [wPlayerShotAnimType]
    or a
    jr z, jr_001_65bd

    ld b, $0e
    dec a
    jr z, jr_001_65bd

    ld b, $20
    jr jr_001_65bd

    ld b, $08
    ld a, [bc]
    ld [$2624], sp
    jr z, @+$28

Jump_001_6623:
    ld hl, $d708
    inc [hl]
    ld a, [hl]
    srl a
    srl a
    and $03
    ld l, a
    ld h, $00
    ld de, $6639
    add hl, de
    ld b, [hl]
    jp Jump_001_659b


    ld c, h
    ld c, [hl]
    ld d, b
    ld c, [hl]

Call_001_663d:
    ld a, [$d71d]
    ld e, a
    ld a, [$d722]
    sub e
    ld e, a
    ld d, $00
    jr nc, jr_001_664b

    dec d

jr_001_664b:
    ld hl, $d70d
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ret


Call_001_6655:
    xor a
    ld [$d762], a
    ld a, $80
    ld [$d729], a
    ld a, $fa
    ld [$d72a], a
    ret


Jump_001_6664:
    xor a
    ld [$d74b], a
    ld [$d753], a
    ld [$d754], a
    ld a, $0a
    ld [$d752], a
    ld a, [$d899]
    or a
    jr z, jr_001_667e

    ld a, $01
    ld [$d76f], a

Jump_001_667e:
jr_001_667e:
    xor a
    ld [$d163], a
    ld hl, $d752
    ld a, [hl]
    or a
    jr z, jr_001_66e1

    dec [hl]
    jr z, jr_001_66b3

    ld de, $ffb7
    ld a, [$d899]
    or a
    jr z, jr_001_66a3

    ld a, [$d76d]
    bit 0, a
    ld de, $ffd5
    jr nz, jr_001_66a3

    ld de, $0000
    inc [hl]

jr_001_66a3:
    ld hl, $d753
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld a, [$d741]
    bit 0, a
    jr nz, jr_001_66c5

jr_001_66b3:
    xor a
    ld [$d752], a
    ld a, [$d753]
    ld [$d729], a
    ld a, [$d754]
    ld [$d72a], a
    jr jr_001_66e1

jr_001_66c5:
    ld a, [$d899]
    or a
    jr nz, jr_001_66d7

    ld a, $20
    ld [$d729], a
    ld a, $fd
    ld [$d72a], a
    jr jr_001_66e1

jr_001_66d7:
    ld a, $50
    ld [$d729], a
    ld a, $fd
    ld [$d72a], a

jr_001_66e1:
    ld a, [$d899]
    or a
    call nz, Call_001_70db
    ld a, [$d762]
    or a
    call nz, Call_001_6655
    call Call_001_686a
    ld hl, $d733
    ld e, [hl]
    inc hl
    ld d, [hl]
    xor a
    ld [hl-], a
    ld [hl], a
    ld hl, $d729
    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl], a
    call Call_001_6858
    call Call_001_68cb
    ld hl, $d718
    ld a, [hl+]
    or [hl]
    jr z, jr_001_6716

    ld a, $03
    ld [$d709], a

jr_001_6716:
    call Call_001_6a0f
    call Call_001_6930
    call Call_001_6978
    ld a, [$d741]
    bit 6, a
    jr z, jr_001_6744

    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    cp $80
    jr nc, jr_001_6744

    call Call_000_0d95
    dec b
    jr nz, jr_001_6744

    ld a, [$c2f3]
    and $03
    jr nz, jr_001_6744

    call Call_001_6762
    jp Jump_001_62f2


jr_001_6744:
    call Call_001_69b9
    jp z, Jump_001_62f2

    xor a
    ld [$d729], a
    ld [$d72a], a
    jp Jump_001_62f2


    xor a
    ld [$d729], a
    ld [$d72a], a
    ld [$d727], a
    ld [$d728], a
    ret


Call_001_6762:
    ld a, $02
    ld [$d74b], a
    ld hl, $d722
    ld a, [$d7d1]
    ld d, a
    add [hl]
    and $f0
    sub d
    add $08
    ld [hl], a
    xor a
    ld hl, $d727
    ld [hl+], a
    ld [hl], a
    ret


Jump_001_677c:
    ld hl, $d72b
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $d731
    ld [hl+], a
    ld [hl], a
    ld hl, $d706
    ld a, [hl]
    or a
    jr z, jr_001_67b7

    dec [hl]
    jp nz, Jump_001_6855

    xor a
    ld hl, $d729
    ld [hl+], a
    ld [hl+], a
    ld a, [$d707]
    or a
    jr nz, jr_001_67a8

    ld a, [$d725]
    add $0e
    ld [$d725], a
    jr jr_001_67b7

jr_001_67a8:
    ld a, [$d725]
    and $f0
    or $03
    ld [$d725], a
    ld e, $01
    jp Jump_001_683a


jr_001_67b7:
    ld a, [$c201]
    or a
    jp z, Jump_001_67c6

    ld a, [$d741]
    and $0f
    ld [$d741], a

Jump_001_67c6:
    ld a, [$d740]
    bit 0, a
    jr nz, jr_001_6838

    call Call_001_6b56
    call Call_001_6858
    ld hl, $d729
    ld a, [hl+]
    or [hl]
    jr z, jr_001_6855

    ld a, [hl]
    and $80
    jr nz, jr_001_67fb

    call Call_001_69ad
    jr nc, jr_001_67ed

    ld a, b
    cp $02
    jr z, jr_001_67ed

    ld a, $01
    jr jr_001_684e

jr_001_67ed:
    call Call_000_0d82
    ld a, b
    cp $01
    jr z, jr_001_6855

    cp $02
    jr z, jr_001_6855

    jr jr_001_6838

jr_001_67fb:
    call Call_000_0d82
    ld a, b
    cp $01
    jr z, jr_001_681f

    cp $02
    jr nz, jr_001_6838

    ld a, [$d725]
    bit 3, a
    jr nz, jr_001_6855

    sub $0d
    ld [$d725], a
    ld a, $08
    ld [$d706], a
    ld a, $01
    ld [$d707], a
    jr jr_001_6855

jr_001_681f:
    call Call_001_69a1
    jr nc, jr_001_6855

    ld a, b
    cp $02
    jr z, jr_001_6855

    ld a, [$d71f]
    ld [$d725], a
    xor a
    ld [$d729], a
    ld [$d72a], a
    jr jr_001_6855

jr_001_6838:
    ld e, $00

Jump_001_683a:
    xor a
    ld hl, $d718
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d727
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, e

jr_001_684e:
    ld [$d74b], a
    xor a
    ld [$d752], a

Jump_001_6855:
jr_001_6855:
    jp Jump_001_62f2


Call_001_6858:
    ld hl, $d724
    ld a, [$d729]
    add [hl]
    ld [hl+], a
    ld a, [$d72a]
    adc [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ret


Call_001_686a:
    ld a, [$d899]
    or a
    jr z, jr_001_6874

    ld e, $08
    jr jr_001_687d

jr_001_6874:
    ld a, [$cc97]
    or a
    ld e, $34
    jr z, jr_001_687d

    ld e, a

jr_001_687d:
    ld hl, $d729
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc $00
    ld d, a
    ld a, [$d77d]
    bit 1, a
    jr nz, jr_001_68b2

    bit 7, d
    jr nz, jr_001_68b2

    ld a, [$d899]
    or a
    jr nz, jr_001_68a5

    ld a, $40
    sub e
    ld a, $03
    sbc d
    jr nc, jr_001_68b2

    ld de, $0340
    jr jr_001_68b2

jr_001_68a5:
    ld a, $80
    sub e
    ld a, $01
    sbc d
    jr nc, jr_001_68b2

    ld de, $0180
    jr jr_001_68b2

jr_001_68b2:
    ld a, e
    ld [$d729], a
    ld a, d
    ld [$d72a], a
    ret


    ld a, [$06f8]
    ld hl, sp-$06
    inc c
    ld b, $0c
    ld a, [$06fd]
    db $fd
    ld a, [$0605]
    dec b

Call_001_68cb:
Jump_001_68cb:
    xor a
    ld [$d755], a

jr_001_68cf:
    ld a, [$d72a]
    bit 7, a
    jr z, jr_001_6913

    ld a, [$d725]
    cp $e0
    jr nc, jr_001_68e1

    cp $c0
    jr nc, jr_001_68f1

jr_001_68e1:
    ld hl, $68bb
    call Call_000_0d8b
    jr c, jr_001_68f1

    ld hl, $68bd
    call Call_000_0d8b
    jr nc, jr_001_6923

jr_001_68f1:
    xor a
    ld [$d752], a
    ld a, [$d755]
    inc a
    ld [$d755], a
    ld hl, $d725
    ld a, [$d72a]
    bit 7, a
    jr z, jr_001_6909

    inc [hl]
    jr jr_001_690a

jr_001_6909:
    dec [hl]

jr_001_690a:
    ld a, [$d755]
    cp $80
    jr nc, jr_001_6923

    jr jr_001_68cf

jr_001_6913:
    ld hl, $68bf
    call Call_000_0d8b
    jr c, jr_001_68f1

    ld hl, $68c1
    call Call_000_0d8b
    jr c, jr_001_68f1

jr_001_6923:
    ld a, [$d755]
    or a
    ret z

    xor a
    ld [$d729], a
    ld [$d72a], a
    ret


Call_001_6930:
    ld a, [$d728]
    bit 7, a
    jr nz, jr_001_6967

    ld hl, $68bd
    call Call_000_0d8b
    jr c, jr_001_6946

    ld hl, $68c1
    call Call_000_0d8b
    ret nc

Jump_001_6946:
jr_001_6946:
    ld a, $01
    ld [$d766], a
    ld a, [$d71d]
    ld [$d722], a
    ld a, [$d71c]
    ld [$d721], a
    xor a
    ld [$d727], a
    ld [$d728], a
    xor a
    ld [$d72b], a
    ld [$d72c], a
    scf
    ret


jr_001_6967:
    ld hl, $68bb
    call Call_000_0d8b
    jr c, jr_001_6946

    ld hl, $68bf
    call Call_000_0d8b
    jr c, jr_001_6946

    ret


Call_001_6978:
    ld a, [$d728]
    bit 7, a
    jr nz, jr_001_6990

    ld hl, $68c5
    call Call_000_0d8b
    jr c, jr_001_698e

    ld hl, $68c9
    call Call_000_0d8b
    ret nc

jr_001_698e:
    jr jr_001_6946

jr_001_6990:
    ld hl, $68c3
    call Call_000_0d8b
    jr c, jr_001_698e

    ld hl, $68c7
    call Call_000_0d8b
    jr c, jr_001_698e

    ret


Call_001_69a1:
    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    add $f8
    jp Jump_000_0d95


Call_001_69ad:
    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    add $0d
    jp Jump_000_0d95


Call_001_69b9:
    call Call_001_69f2

Call_001_69bc:
    jr c, jr_001_69c1

jr_001_69be:
    xor a
    jr jr_001_69df

jr_001_69c1:
    ld a, [$d72a]
    and $80
    jr nz, jr_001_69be

    ld [$d729], a
    ld [$d72a], a
    ld a, [$d74e]
    ld [$d893], a
    ld a, [$d74b]
    cp $01
    jr z, @+$04

    rst $08
    ld de, $013e

jr_001_69df:
    ld [$d74b], a
    or a
    ret


Call_001_69e4:
    ld a, [$d722]
    add [hl]
    inc hl
    ld e, a
    ld a, [$d725]
    inc a
    add [hl]
    jp Jump_000_0d95


Call_001_69f2:
    ld hl, $68bf
    call Call_001_69e4
    jr nc, jr_001_6a01

    ld a, [$d74e]
    ld [$d894], a
    ret


jr_001_6a01:
    ld hl, $68c1
    call Call_001_69e4
    ret nc

    ld a, [$d74e]
    ld [$d895], a
    ret


Call_001_6a0f:
    ld hl, $d72b

Call_001_6a12:
    ld a, [$d718]
    add [hl]
    ld e, a
    ld a, [$d719]
    inc hl
    adc [hl]
    ld d, a
    call Call_001_6a5a
    ld hl, $d721
    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl+], a
    ld hl, $d72c
    ld a, [hl-]
    ld b, a
    ld c, [hl]
    or c
    jr z, jr_001_6a59

    ld a, [$d74b]
    or a
    jr z, jr_001_6a3b

    ld a, [$d898]

jr_001_6a3b:
    add a
    bit 7, b
    jr nz, jr_001_6a41

    inc a

jr_001_6a41:
    add a
    add $4a
    ld e, a
    ld a, $6b
    adc $00
    ld d, a
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl], a
    xor b
    and $80
    jr z, jr_001_6a59

    xor a
    ld [hl-], a
    ld [hl], a

jr_001_6a59:
    ret


Call_001_6a5a:
    ld a, [$d77d]
    bit 0, a
    jr nz, jr_001_6a9d

    ld a, [$d163]
    or a
    jr nz, jr_001_6a75

    ld bc, $00f0
    ld a, [$d899]
    or a
    jr z, jr_001_6a81

    ld bc, $00ce
    jr jr_001_6a81

jr_001_6a75:
    ld bc, $0200
    ld a, [$d899]
    or a
    jr z, jr_001_6a81

    ld bc, $01e0

jr_001_6a81:
    bit 7, d
    jr nz, jr_001_6a8f

    ld a, c
    sub e
    ld a, b
    sbc d
    jr nc, jr_001_6a9d

    ld e, c
    ld d, b
    jr jr_001_6a9d

jr_001_6a8f:
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_001_6a9d

    ld e, c
    ld d, b

jr_001_6a9d:
    ld a, e
    ld [$d72b], a
    ld a, d
    ld [$d72c], a
    ld hl, $d731
    ld a, [hl]
    ld [hl], $00
    inc hl
    add e
    ld e, a
    ld [$d727], a
    ld a, [hl]
    ld [hl], $00
    adc d
    ld d, a
    ld [$d728], a
    ret


Call_001_6aba:
    ld a, [$d779]
    or a
    jr z, jr_001_6ac6

    ld a, [$d703]
    ld b, a
    jr jr_001_6af8

jr_001_6ac6:
    ld a, [$d741]
    ld c, a
    ld a, [$d74b]
    or a
    jr z, jr_001_6ae1

    ld a, [$c201]
    or a
    jr z, jr_001_6ae1

    ld a, [wPlayerShotAnimType]
    cp $02
    jr nz, jr_001_6ae1

    ld a, c
    and $0f
    ld c, a

jr_001_6ae1:
    ld a, c
    ld b, $00
    and $20
    jr nz, jr_001_6af8

    inc b
    bit 4, c
    jr nz, jr_001_6af8

jr_001_6aed:
    ld a, $00
    ld [$d718], a
    ld a, $00
    ld [$d719], a
    ret


jr_001_6af8:
    ld hl, $d703
    ld a, [hl]
    xor b
    and $01
    jr z, jr_001_6b1b

    ld a, [$c201]
    cp $0c
    jr c, jr_001_6b17

    ld a, [$de9b]
    cp $09
    jr nz, jr_001_6aed

    ld a, [$d74b]
    or a
    jr nz, jr_001_6aed

    jr jr_001_6b21

jr_001_6b17:
    xor a
    ld [$c201], a

jr_001_6b1b:
    ld a, [hl]
    xor b
    ld [$d765], a
    ld [hl], b

jr_001_6b21:
    ld a, [$d74b]
    or a
    jr z, jr_001_6b2a

    ld a, [$d898]

jr_001_6b2a:
    add a
    add b
    add a
    add $3e
    ld l, a
    ld a, $6b
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$d718], a
    ld a, [hl+]
    ld [$d719], a
    ret


    ret nz

    rst $38
    ld b, b
    nop
    ret nz

    rst $38
    ld b, b
    nop
    ld hl, sp-$01
    ld [$0600], sp
    nop
    ld a, [$28ff]
    nop
    ret c

    rst $38
    ld [bc], a
    nop
    cp $ff

Call_001_6b56:
    ld a, [$d741]
    ld c, a
    ld de, $ff60
    and $40
    jr nz, jr_001_6b6c

    ld de, $00a0
    ld a, c
    and $80
    jr nz, jr_001_6b6c

    ld de, $0000

jr_001_6b6c:
    ld a, e
    ld [$d729], a
    ld a, d
    ld [$d72a], a
    ret


Call_001_6b75:
    ld a, [$d785]
    or a
    jr z, jr_001_6b87

    ld b, a
    ld a, [$d786]
    ld e, a
    ld a, [$d787]
    ld d, a
    jp $0326


jr_001_6b87:
    ld a, [$d70b]
    ldh [$ffab], a
    ld a, [$d70a]
    ld l, a
    ldh [$ff8a], a
    ld a, [$c2ea]
    or a
    jr z, jr_001_6b9d

    ld de, $7252
    jr jr_001_6ba7

jr_001_6b9d:
    ld a, [$c2f3]
    cp $02
    jr nz, jr_001_6bb0

    ld de, $7284

jr_001_6ba7:
    srl l
    ld h, $00
    add hl, de
    ld a, [hl]
    ld l, a
    ldh [$ff8a], a

jr_001_6bb0:
    ld de, $71f4
    ld h, $00
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$d722]
    add $08
    ld e, a
    ld a, [$d725]
    add $12
    ld d, a
    ld hl, $c000
    ldh a, [$ff8a]
    cp $10
    jr c, jr_001_6bd2

    cp $14
    jr c, jr_001_6bd9

jr_001_6bd2:
    ld a, [$d703]
    or a
    jp nz, Jump_001_6c08

jr_001_6bd9:
    ld a, [bc]
    cp $80
    jr z, jr_001_6bfa

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
    inc bc
    ld hl, $ffab
    xor [hl]
    pop hl
    ld [hl+], a
    ld a, l
    cp $28
    jr c, jr_001_6bd9

    jr jr_001_6c07

jr_001_6bfa:
    ld de, $0004

jr_001_6bfd:
    ld a, l
    cp $28
    jr nc, jr_001_6c07

    ld [hl], $c0
    add hl, de
    jr jr_001_6bfd

jr_001_6c07:
    ret


Jump_001_6c08:
    ldh a, [$ffab]
    xor $20
    ldh [$ffab], a
    ld a, e
    sub $07
    ld e, a

jr_001_6c12:
    ld a, [bc]
    cp $80
    jr z, jr_001_6bfa

    inc bc
    add d
    ld d, a
    ld [hl+], a
    ld a, [bc]
    inc bc
    sub e
    cpl
    inc a
    ld e, a
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    push hl
    ld a, [bc]
    inc bc
    ld hl, $ffab
    xor [hl]
    pop hl
    ld [hl+], a
    ld a, l
    cp $28
    jr c, jr_001_6c12

    jr jr_001_6c07

Jump_001_6c35:
    xor a
    ld [$d77e], a
    ld a, [$deaf]
    bit 5, a
    ret nz

    ld a, [$dece]
    dec a
    jr z, jr_001_6c55

    dec a
    jr z, jr_001_6c9e

    dec a
    jp z, Jump_001_6cf6

    dec a
    jp z, Jump_001_6cfd

    ld e, $2a
    jp Jump_001_6cf1


jr_001_6c55:
    ld a, [$decf]
    or a
    jr nz, jr_001_6c7e

    ld a, [$de2b]
    ld b, a
    ld hl, $d725
    ld a, [hl]
    cp $f0
    jr nc, jr_001_6c97

    cp b
    jr c, jr_001_6c97

    ld b, $06

jr_001_6c6c:
    ld hl, $d725
    inc [hl]
    push bc
    call Call_001_69ad
    pop bc
    jr c, jr_001_6c7e

    dec b
    jr nz, jr_001_6c6c

    ld e, $2c
    jr jr_001_6c92

jr_001_6c7e:
    call Call_001_6d05
    jr nc, jr_001_6c92

Jump_001_6c83:
    xor a
    ld [$d739], a
    ld a, $01
    ld [$d74b], a
    rst $08
    dec de
    xor a
    ld [$dece], a

jr_001_6c92:
    ld a, e
    ld [$d70a], a
    ret


jr_001_6c97:
    add $06
    ld [hl], a
    ld e, $2c
    jr jr_001_6c92

jr_001_6c9e:
    call Call_001_6d05
    jr nc, jr_001_6cf1

    push de
    ld hl, $d729
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff40
    add hl, de
    ld de, $f800
    call Call_001_79a6
    jr c, jr_001_6cbe

    ld a, l
    ld [$d729], a
    ld a, h
    ld [$d72a], a

jr_001_6cbe:
    ld a, [$d724]
    ld e, a
    ld a, [$d725]
    ld d, a
    add hl, de
    ld a, l
    ld [$d724], a
    ld a, h
    ld [$d725], a
    pop de
    cp $90
    jr c, jr_001_6cf1

    cp $f0
    jr nc, jr_001_6cf1

jr_001_6cd8:
    ld a, $01
    ld [$de35], a
    ld a, $5a
    ld [$decc], a
    ld a, $00
    ld [$decd], a
    ld a, $14
    ld [$d771], a
    ld a, $ff
    ld [$dece], a

Jump_001_6cf1:
jr_001_6cf1:
    ld a, e
    ld [$d70a], a
    ret


Jump_001_6cf6:
    call Call_001_6d20
    jr c, jr_001_6cd8

    jr jr_001_6cf1

Jump_001_6cfd:
    call Call_001_6d20
    jr nc, jr_001_6c92

    jp Jump_001_6c83


Call_001_6d05:
    ld hl, $decf
    inc [hl]
    ld a, [hl]
    ld e, $2e
    cp $04
    jr c, jr_001_6d1e

    ld e, $30
    cp $08
    jr c, jr_001_6d1e

    ld e, $2c
    cp $0c
    jr c, jr_001_6d1e

    scf
    ret


jr_001_6d1e:
    or a
    ret


Call_001_6d20:
    ld hl, $decf
    inc [hl]
    ld a, [hl]
    ld e, $2e
    cp $03
    jr c, jr_001_6d1e

    ld e, $30
    cp $06
    jr c, jr_001_6d1e

    ld e, $38
    cp $07
    jr c, jr_001_6d1e

    scf
    ret


    nop
    nop

Jump_001_6d3b:
    call Call_001_6e67
    jp c, Jump_001_6258

    ld a, $01
    ld [$d163], a
    ld a, $20
    ld [$d756], a
    ld hl, $d757
    ld [hl], $01
    inc hl
    ld a, [$d703]
    ld [hl+], a
    ld a, [$d722]
    ld [hl+], a
    ld a, [$d725]
    ld [hl], a
    ld a, [$d75b]
    cp $40
    jr nz, jr_001_6d72

    ld a, [$d164]
    or a
    jr nz, jr_001_6d72

    ld a, $01
    call Call_000_30c1
    ld [$d75b], a

jr_001_6d72:
    jp Jump_001_6d84


Jump_001_6d75:
    ld hl, $d756
    ld a, [hl]
    or a
    jr z, jr_001_6dd4

    dec [hl]
    ld a, [$d740]
    and $71
    jr nz, jr_001_6ddf

Jump_001_6d84:
jr_001_6d84:
    ld de, $0000
    ld a, [$d73a]
    cp $5a
    jr nc, jr_001_6d9a

    ld a, [$d703]
    or a
    ld de, $fe40
    jr z, jr_001_6d9a

    ld de, $01c0

jr_001_6d9a:
    ld a, e
    ld [$d718], a
    ld a, d
    ld [$d719], a
    ld hl, $6d39
    call Call_001_6a12
    call Call_001_6e0d
    call Call_001_6db1
    jp Jump_001_62f2


Call_001_6db1:
    call Call_001_6e3b
    call Call_001_69bc
    ld a, [$d74b]
    or a
    jr z, jr_001_6dc7

jr_001_6dbd:
    call Call_001_6e67
    ret nc

    ld hl, $d725
    dec [hl]
    jr jr_001_6dbd

Call_001_6dc7:
jr_001_6dc7:
    xor a
    ld [$d756], a
    ld [$d163], a
    ld a, $03
    ld [$d709], a
    ret


jr_001_6dd4:
    call Call_001_6e99
    jr c, jr_001_6d84

    call Call_001_6dc7
    jp Jump_001_62f2


jr_001_6ddf:
    bit 0, a
    jr nz, jr_001_6df1

    bit 6, a
    jr nz, jr_001_6dd4

    ld a, [$d765]
    and $01
    jr nz, jr_001_6dd4

    jp Jump_001_6d84


jr_001_6df1:
    ld a, [$d741]
    bit 7, a
    jp nz, Jump_001_6d84

    ld a, [$d756]
    cp $1c
    jp nc, Jump_001_6d84

    call Call_001_6e99
    jp c, Jump_001_6d84

    call Call_001_6dc7
    jp Jump_001_6664


Call_001_6e0d:
    ld a, [$d728]

Call_001_6e10:
    bit 7, a
    jr nz, jr_001_6e2a

    ld hl, $6eb3
    call Call_000_0d8b
    jr c, jr_001_6e23

    ld hl, $6eb7
    call Call_000_0d8b
    ret nc

jr_001_6e23:
    xor a
    ld [$d756], a
    jp Jump_001_6946


jr_001_6e2a:
    ld hl, $6eb1
    call Call_000_0d8b
    jr c, jr_001_6e23

    ld hl, $6eb5
    call Call_000_0d8b
    jr c, jr_001_6e23

    ret


Call_001_6e3b:
    ld hl, $6ead
    call Call_001_69e4
    jr nc, jr_001_6e4a

    ld a, [$d74e]
    ld [$d894], a
    ret


jr_001_6e4a:
    ld hl, $6eaf
    call Call_001_69e4
    jr nc, jr_001_6e59

    ld a, [$d74e]
    ld [$d895], a
    ret


jr_001_6e59:
    ld hl, $6eb9
    call Call_001_69e4
    ret nc

    ld a, [$d74e]
    ld [$d896], a
    ret


Call_001_6e67:
    ld de, $6ea9
    ld a, [$d703]
    or a
    jr z, jr_001_6e81

    ld hl, $0002
    call Call_001_6e92
    jr c, jr_001_6e90

    ld hl, $0006
    call Call_001_6e92
    ret nc

    jr jr_001_6e90

jr_001_6e81:
    ld hl, $0000
    call Call_001_6e92
    jr c, jr_001_6e90

    ld hl, $0004
    call Call_001_6e92
    ret nc

jr_001_6e90:
    scf
    ret


Call_001_6e92:
Jump_001_6e92:
    add hl, de
    push de
    call Call_000_0d8b
    pop de
    ret


Call_001_6e99:
    ld de, $68bb
    ld hl, $0002
    call Call_001_6e92
    ret c

    ld hl, $0000
    jp Jump_001_6e92


    ld hl, sp-$02
    ld [$f8fe], sp
    inc c
    ld [$f80c], sp
    db $fd
    ld [$f8fd], sp
    dec b
    ld [$0005], sp
    inc c

Call_001_6ebb:
    ld hl, $d757
    ld a, [hl]
    or a
    ret z

    ld a, [$deaf]
    and $21
    jr nz, jr_001_6ede

    inc [hl]
    ld a, [hl]
    cp $24
    jr c, jr_001_6ede

Jump_001_6ece:
    ld a, [$d75b]
    call Call_000_30f7
    ld a, $40
    ld [$d75b], a
    xor a
    ld [$d757], a
    ret


jr_001_6ede:
    ld hl, $d759
    ld a, [$d7c3]
    add [hl]
    ld [hl+], a
    ldh [$ff9b], a
    ld a, [hl+]
    ldh [$ff9c], a
    ld a, [$d757]
    ld b, $00
    cp $0c
    jr c, jr_001_6efc

    ld b, $02
    cp $18
    jr c, jr_001_6efc

    ld b, $04

jr_001_6efc:
    ld a, [$d758]
    add b
    ld hl, $6f19
    call Call_000_1cff
    ld a, [$d70b]
    and $80
    or $10
    ldh [$ffab], a
    ld a, $66
    ldh [$ffac], a
    ld a, [$d75b]
    jp Jump_000_2de8


    dec h
    ld l, a
    inc [hl]
    ld l, a
    ld a, [hl+]
    ld l, a
    add hl, sp
    ld l, a
    cpl
    ld l, a
    ld a, $6f
    db $10
    inc b
    ld de, $8001
    db $10
    inc b
    ld de, $8002
    db $10
    inc b
    ld de, $8003
    ldh a, [rDIV]
    ld de, $8081
    ldh a, [rDIV]
    ld de, $8082
    ldh a, [rDIV]
    ld de, $8083

Jump_001_6f43:
    ld a, [$d771]
    cp $10
    jr c, jr_001_6f5d

    cp $20
    jr c, jr_001_6f60

    jr nz, jr_001_6f5d

    ld a, [$d774]
    ld [$d740], a
    ld a, [$d773]
    ld [$d741], a
    ret


jr_001_6f5d:
    jp Jump_001_6379


jr_001_6f60:
    cp $10
    jr z, jr_001_6f6c

    cp $11
    jp z, Jump_001_7012

    jp Jump_001_7039


jr_001_6f6c:
    ld a, [$d30c]
    or a
    ret nz

    ld a, [$db0d]
    or a
    ret nz

    ld hl, $d772
    ld a, [hl]
    or a
    jr z, jr_001_6f7f

    dec [hl]
    ret


jr_001_6f7f:
    ld a, [$d722]
    ld hl, $d781
    cp [hl]
    ld [hl+], a
    jr nz, jr_001_6f99

    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_001_6f9b

    ld a, $01
    ld [$d163], a
    ld a, $04
    ld [$d756], a

jr_001_6f99:
    ld [hl], $00

jr_001_6f9b:
    ld a, [$d722]
    cp $50
    jr z, jr_001_6fd7

    ld b, $20
    ld c, $00
    jr nc, jr_001_6fac

    ld b, $10
    ld c, $01

jr_001_6fac:
    ld a, [$d74b]
    or a
    jr nz, jr_001_6fbb

    ld a, [$de83]
    and $03
    jr z, jr_001_6fbb

    ld b, $00

jr_001_6fbb:
    ld a, b
    ld [$d741], a
    xor a
    ld [$d766], a
    ld a, c
    ld [$d703], a
    xor $01
    rrca
    call Call_001_6e10
    ld a, [$d766]
    or a
    ret z

    ld de, $fd00
    jr jr_001_6ff0

jr_001_6fd7:
    call Call_001_7001
    ld a, [$d74b]
    or a
    ret z

    ld a, $11
    ld [$d771], a
    xor a
    ld [$d0a7], a
    ld a, [$d768]
    ld e, a
    ld a, [$d769]
    ld d, a

jr_001_6ff0:
    xor a
    ld [$d74b], a
    ld [$d752], a
    ld [$d762], a
    ld hl, $d729
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_001_7001:
    xor a
    ld hl, $d718
    ld [hl+], a
    ld [hl+], a
    ld hl, $d72b
    ld [hl+], a
    ld [hl+], a
    ld hl, $d727
    ld [hl+], a
    ld [hl+], a
    ret


Jump_001_7012:
    ld a, [$d72a]
    bit 7, a
    ret nz

    ld a, [$d76a]
    ld b, a
    ld a, [$d725]
    cp b
    ret c

    ld a, $08
    ld [$d0a4], a

jr_001_7026:
    ld a, [$de30]
    cp $02
    call nz, Call_001_79ad
    ld a, $3c
    ld [$d0a3], a
    ld a, $12
    ld [$d771], a
    ret


Jump_001_7039:
    ld a, [$de30]
    cp $02
    jr z, jr_001_706d

    ld hl, $d0a0
    ld a, [hl+]
    or [hl]
    jr z, jr_001_704d

    call Call_001_7059
    jp Jump_001_79c8


jr_001_704d:
    ld hl, $d0a4
    ld a, [hl]
    or a
    jr z, jr_001_7063

    dec [hl]
    jr nz, jr_001_7026

    jr jr_001_7063

Call_001_7059:
jr_001_7059:
    ld hl, $d729
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$d724], a
    ret


jr_001_7063:
    ld hl, $d0a3
    ld a, [hl]
    or a
    jr z, jr_001_706d

    dec [hl]
    jr jr_001_7059

jr_001_706d:
    ld a, [$d74b]
    or a
    ret z

    ld a, [$df0a]
    cp $0a
    jr z, jr_001_7081

    ld a, $13
    ld [$d771], a
    jp Jump_000_0d65


jr_001_7081:
    jp Jump_001_7084


Jump_001_7084:
    call Call_000_19ae
    ld b, $ff
    ld e, b
    ld d, b
    ld c, $06
    call Call_001_7824
    ld a, $3c
    ld [$cca9], a
    ld [$ccac], a
    ld [$ccaf], a
    call Call_001_7863
    ld b, $3c
    call Call_000_1973
    jp Jump_000_0ac7


    xor a
    ld [$de31], a
    ld a, [$de32]
    and $40
    ret z

    ld a, [$df0a]
    cp $09
    ret nc

    ld hl, $0060
    call Call_000_1cf7
    ld b, [hl]
    ld a, [wStardroidClearFlags]
    and b
    ret z

    ld a, $01
    ld [$de31], a
    ld [$d76e], a
    ld [$d74a], a
    ld [$de29], a
    ld a, $3c
    ld [$de36], a
    ld a, $1c
    ldh [rOBP0], a
    scf
    ret


Call_001_70db:
    ld hl, $d72a
    bit 7, [hl]
    jr z, jr_001_70f6

    ld a, [hl-]
    cp $fd
    jr c, jr_001_70ee

    jr nz, jr_001_70f6

    ld a, [hl]
    cp $00
    jr nc, jr_001_70f6

jr_001_70ee:
    ld a, $f0
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a

jr_001_70f6:
    ld hl, $d76f
    ld a, [hl]
    or a
    ret z

    ld a, [$de91]
    bit 0, a
    ret nz

    ld [hl], $00
    ld hl, $d72a
    bit 7, [hl]
    ret z

    dec hl
    ld a, $80
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl-], a
    bit 7, a
    jr nz, jr_001_711a

    xor a
    ld [hl+], a
    ld [hl+], a

jr_001_711a:
    ret


Call_001_711b:
    ld a, [$d722]
    ld [$c3ed], a
    add $30
    ld [$d72f], a
    ld [$c3ef], a
    ld a, [$d725]
    ld [$c3ee], a
    add $30
    ld [$d730], a
    ld [$c3f0], a
    ld a, [$d163]
    or a
    ld de, $7179
    jr z, jr_001_7143

    ld de, $717d

jr_001_7143:
    ld a, [$d722]
    ld c, a
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
    ld a, [$d725]
    ld c, a
    ld a, [de]
    inc de
    add c
    add $30
    ld [$d748], a
    add $d0
    cp $f0
    jr c, jr_001_716f

    xor a

jr_001_716f:
    ld [hl+], a
    ld a, [de]
    add c
    ld [hl+], a
    add $30
    ld [$d749], a
    ret


    ld a, [$f806]
    inc c
    ld hl, sp+$08
    cp $0c
    ld a, [$fe06]
    inc c

Call_001_7185:
    call Call_001_71cf
    xor a
    ld [$d780], a
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff95]
    ld d, a
    call Call_000_0d96
    jr nc, jr_001_719c

    ld hl, $d780
    set 0, [hl]

jr_001_719c:
    ldh a, [$ff94]
    ld e, a
    ldh a, [$ff95]
    ld d, a
    call Call_000_0d96
    jr nc, jr_001_71ac

    ld hl, $d780
    set 1, [hl]

jr_001_71ac:
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff96]
    inc a
    ld d, a
    call Call_000_0d96
    jr nc, jr_001_71bd

    ld hl, $d780
    set 4, [hl]

jr_001_71bd:
    ldh a, [$ff94]
    ld e, a
    ldh a, [$ff96]
    inc a
    ld d, a
    call Call_000_0d96
    jr nc, jr_001_71ce

    ld hl, $d780
    set 5, [hl]

jr_001_71ce:
    ret


Call_001_71cf:
    ld a, [$d163]
    or a
    ld hl, $7179
    jr z, jr_001_71db

    ld hl, $7181

jr_001_71db:
    ld a, [$d722]
    ld c, a
    ld a, [hl+]
    add c
    ldh [$ff93], a
    ld a, [hl+]
    add c
    ldh [$ff94], a
    ld a, [$d725]
    ld c, a
    ld a, [hl+]
    add c
    ldh [$ff95], a
    ld a, [hl+]
    add c
    ldh [$ff96], a
    ret


    add hl, bc
    ld [hl], e
    ld a, [hl+]
    ld [hl], e
    ld c, e
    ld [hl], e
    or [hl]
    ld [hl], d
    db $d3
    ld [hl], d
    add sp, $72
    db $ec
    ld [hl], e
    dec c
    ld [hl], h
    ld a, h
    ld [hl], h
    adc b
    ld [hl], l
    sbc c
    ld [hl], h
    cp d
    ld [hl], h
    db $db
    ld [hl], h
    ldh a, [$ff74]
    db $fd
    ld [hl], l
    ld l, h
    ld [hl], e
    ld [hl-], a
    ld [hl], h
    ld d, a
    ld [hl], h
    sub c
    ld [hl], e
    or d
    ld [hl], e
    bit 6, e
    db $fd
    ld [hl], l
    and l
    ld [hl], l
    jp $ec75


    ld [hl], l
    add hl, de
    ld [hl], l
    ld a, $75
    ld h, e
    ld [hl], l
    or [hl]
    ld [hl], l
    cp $75
    rra
    halt
    inc a
    halt
    ld e, l
    halt
    ld a, d
    halt
    adc a
    halt
    xor h
    halt
    call $ee76
    halt
    inc de
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld e, c
    ld [hl], a
    ld a, [hl]
    ld [hl], a
    sbc a
    ld [hl], a
    cp h
    ld [hl], a
    push de
    ld [hl], a
    ldh a, [c]
    ld [hl], a
    inc de
    ld a, b
    ld b, [hl]
    ld b, [hl]
    ld c, b
    ld b, b
    ld b, d
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    db $10
    ld [de], a
    inc a
    ld d, $18
    ld a, [de]
    inc e
    ld a, $20
    ld [hl+], a
    ld b, b
    ld b, d
    ld b, h
    ld a, [hl+]
    inc l
    ld l, $30
    ld [hl-], a
    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    inc a
    ld a, $40
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, b
    ld c, d
    ld c, h
    ld c, [hl]
    ld d, b
    ld d, d
    ld d, h
    ld d, [hl]
    ld e, b
    ld e, d
    ld e, h
    nop
    nop
    nop
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    ld d, [hl]
    ld e, b
    ld e, d
    ld c, $10
    ld [de], a
    inc d
    ld d, $18
    ld a, [de]
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $30
    ld [hl-], a
    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    inc a
    ld a, $40
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, b
    ld c, d
    ld c, h
    ld c, [hl]
    ld d, b
    ld d, d
    ld d, h
    ld d, [hl]
    ld e, b
    ld e, d
    ld e, h
    nop
    nop
    nop
    db $fc
    push af
    inc bc
    nop
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    ld hl, sp-$0b
    ld bc, $0000
    ld [$0002], sp
    db $10
    ld a, [$0006]
    nop
    ld [$0007], sp
    add b
    db $f4
    ld a, [$0008]
    nop
    ld [$0009], sp
    ld [$0af8], sp
    nop
    nop
    ld [$000b], sp
    ld [$0cfd], sp
    nop
    add b
    db $fc
    ld hl, sp+$0f
    nop
    nop
    ld [$0010], sp
    nop
    ld [$0011], sp
    ld [$12f0], sp
    nop
    nop
    ld [$0013], sp
    nop
    ld [$0014], sp
    ldh a, [$fff2]
    ld bc, $0000
    ld [$000e], sp
    add b
    db $fc
    di
    rla
    nop
    nop
    ld [$0018], sp
    nop
    ld [$0019], sp
    ld [$1af0], sp
    nop
    nop
    ld [$001b], sp
    nop
    ld [$001c], sp
    ldh a, [$fff7]
    ld [$0000], sp
    ld [$0016], sp
    add b
    db $fc
    di
    rla
    nop
    nop
    ld [$001e], sp
    nop
    ld [$0019], sp
    ld [$1af0], sp
    nop
    nop
    ld [$001b], sp
    nop
    ld [$001c], sp
    ldh a, [$fff7]
    dec e
    nop
    nop
    ld [$0016], sp
    add b
    db $fc
    di
    rla
    nop
    nop
    ld [$0018], sp
    nop
    ld [$0019], sp
    ld [$1ff0], sp
    nop
    nop
    ld [$0020], sp
    nop
    ld [$001c], sp
    ldh a, [$fff7]
    ld [$0000], sp
    ld [$0016], sp
    add b
    db $fc
    db $f4
    ld [hl+], a
    nop
    nop
    ld [$0023], sp
    nop
    ld [$0024], sp
    ld [$25f0], sp
    nop
    nop
    ld [$0026], sp
    nop
    ld [$0027], sp
    ld hl, sp-$17
    ld hl, $f800
    add hl, bc
    ld [$0000], sp
    ld [$0009], sp
    add b
    db $fc
    push af
    jr z, jr_001_7395

jr_001_7395:
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    ld hl, sp-$0b
    ld bc, $0000
    ld [$0002], sp
    ld [$21ef], sp
    nop
    ld [$060b], sp
    nop
    nop
    ld [$0007], sp
    add b
    db $f4
    ld a, [$0008]
    nop
    ld [$0009], sp
    ld [$29f8], sp
    nop
    nop
    ld [$000b], sp
    nop
    pop af
    ld hl, $0800
    inc c
    inc c
    nop
    add b
    db $fc
    ld hl, sp+$2a
    nop
    nop
    ld [$002b], sp
    ld [$12f8], sp
    nop
    nop
    ld [$0013], sp
    nop
    ld [$0014], sp
    ld hl, sp-$17
    ld hl, $f800
    add hl, bc
    ld bc, $0000
    ld [$000e], sp
    add b
    db $f4
    push af
    inc l
    nop
    nop
    ld [$002d], sp
    nop
    ld [$002e], sp
    ld [$2ff4], sp
    nop
    nop
    ld [$0030], sp
    ld [$31f5], sp
    nop
    nop
    ld [$0032], sp
    ld [$33ff], sp
    nop
    add b
    db $f4
    push af
    inc [hl]
    nop
    nop
    ld [$002d], sp
    nop
    ld [$002e], sp
    ld [$21ed], sp
    nop
    nop
    rlca
    dec [hl]
    nop
    nop
    ld [$0030], sp
    ld [$31f5], sp
    nop
    nop
    ld [$0032], sp
    ld [$33ff], sp
    nop
    add b
    db $f4
    push af
    inc [hl]
    nop
    nop
    ld [$002d], sp
    nop
    ld [$002e], sp
    ld [$59ed], sp
    nop
    nop
    rlca
    dec [hl]
    nop
    nop
    ld [$0030], sp
    ld [$31f5], sp
    nop
    nop
    ld [$0032], sp
    ld [$33ff], sp
    nop
    add b
    db $fc
    db $f4
    ld b, b
    nop
    nop
    ld [$0023], sp
    nop
    ld [$0024], sp
    ld [$41e8], sp
    nop
    nop
    ld [$0042], sp
    nop
    ld [$0026], sp
    nop
    ld [$0027], sp
    ldh a, [$fff2]
    ld [$0000], sp
    ld [$0009], sp
    add b
    db $f4
    ld hl, sp+$4a
    nop
    nop
    ld [$004b], sp
    ld [$4cf8], sp
    nop
    nop
    ld [$004d], sp
    ld [$4ef8], sp
    nop
    nop
    ld [$004f], sp
    ld [$50f8], sp
    nop
    add b
    db $f4
    ld hl, sp+$51
    nop
    nop
    ld [$0052], sp
    ld [$53f8], sp
    nop
    nop
    ld [$0054], sp
    ld [$4ef8], sp
    nop
    nop
    ld [$004f], sp
    ld [$50f8], sp
    nop
    ldh a, [$fff9]
    ld hl, $8000
    db $f4
    ld hl, sp+$51
    nop
    nop
    ld [$0052], sp
    ld [$53f8], sp
    nop
    nop
    ld [$0054], sp
    ld [$4ef8], sp
    nop
    nop
    ld [$004f], sp
    ld [$50f8], sp
    nop
    ldh a, [$fff9]
    ld e, c
    nop
    add b
    db $fc
    ld hl, sp+$55
    nop
    nop
    ld [$2055], sp
    ld [$56f8], sp
    nop
    nop
    ld [$0057], sp
    ld [$58f8], sp
    nop
    add b
    db $f4
    db $f4
    ld [hl], $00
    nop
    ld [$0037], sp
    nop
    ld [$0038], sp
    ld [$39f0], sp
    nop
    nop
    ld [$003a], sp
    nop
    ld [$003b], sp
    ld [$3cf0], sp
    nop
    nop
    ld [$003d], sp
    nop
    ld [$003e], sp
    ld [$3ff9], sp
    nop
    add b
    cp $f6
    ld b, e
    nop
    nop
    ld [$0044], sp
    nop
    ld [$0045], sp

jr_001_7525:
    ld [$46e8], sp
    nop
    nop
    ld [$0047], sp
    nop
    ld [$0048], sp
    nop
    ld [$0049], sp
    ldh a, [$fff4]
    nop
    nop
    nop
    ld [$005f], sp
    add b
    cp $f6
    ld b, e
    nop
    nop
    ld [$0044], sp
    nop
    ld [$0045], sp
    ld [$46e8], sp
    nop
    nop
    ld [$0047], sp
    nop
    ld [$0048], sp
    nop
    ld [$0049], sp
    ldh a, [$fff4]
    nop
    nop
    nop
    ld [$005f], sp
    add b
    cp $f6
    ld b, e
    nop
    nop
    ld [$0044], sp
    nop
    ld [$0045], sp
    ld [$46e8], sp
    nop
    nop
    ld [$0047], sp
    nop
    ld [$0048], sp
    nop
    ld [$0049], sp
    ldh a, [$fff4]
    nop
    nop
    nop
    ld [$005f], sp
    add b
    db $f4
    rst $30
    ld c, e
    jr nz, jr_001_758d

jr_001_758d:
    ld [$204a], sp
    ld [$4df8], sp
    jr nz, jr_001_7595

jr_001_7595:
    ld [$204c], sp
    ld [$4ff8], sp
    jr nz, jr_001_759d

jr_001_759d:
    ld [$204e], sp
    ld [$5000], sp
    jr nz, jr_001_7525

    db $ec
    db $fc
    ld e, d
    nop
    ld [$5a00], sp
    nop
    ld [$5a00], sp
    nop
    ld [$5a00], sp
    nop
    add b
    db $f4
    db $fc
    ld e, d
    nop
    ld [$5a00], sp
    nop
    ld [$5a00], sp
    nop
    add b
    db $f4
    db $f4
    ld e, e
    nop
    nop
    ld [$005c], sp
    nop
    ld [$205b], sp
    ld [$5bf0], sp
    nop
    nop
    ld [$005c], sp
    nop
    ld [$205b], sp
    ld [$5df0], sp
    nop
    nop
    ld [$005e], sp
    nop
    ld [$205d], sp
    add sp, -$08
    ld e, h
    nop
    add b
    inc b
    db $f4
    ld e, l
    nop
    nop
    ld [$005e], sp
    nop
    ld [$205d], sp
    ld hl, sp-$08
    ld e, h
    nop
    add b
    add b
    db $f4
    push af
    inc [hl]
    nop
    nop
    ld [$002d], sp
    nop
    ld [$002e], sp
    ld [$35f4], sp
    nop
    nop
    ld [$0030], sp
    ld [$31f5], sp
    nop
    nop
    ld [$0032], sp
    ld [$33ff], sp
    nop
    add b
    db $f4
    ld hl, sp+$51
    nop
    nop
    ld [$0052], sp
    ld [$53f8], sp
    nop
    nop
    ld [$0054], sp
    ld [$4ef8], sp
    nop
    nop
    ld [$004f], sp
    ld [$50f8], sp
    nop
    add b
    db $fc
    db $f4
    ld [hl+], a
    nop
    nop
    ld [$0023], sp
    nop
    ld [$0024], sp
    ld [$25f0], sp
    nop
    nop
    ld [$0026], sp
    nop
    ld [$0027], sp
    ldh a, [$fff2]
    ld [$0000], sp
    ld [$0009], sp
    add b
    db $fc
    push af
    jr z, jr_001_7661

jr_001_7661:
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    ld hl, sp-$0b
    ld bc, $0000
    ld [$0002], sp
    db $10
    ld a, [$0006]
    nop
    ld [$0007], sp
    add b
    db $f4
    ld a, [$0008]
    nop
    ld [$0009], sp
    ld [$29f8], sp
    nop
    nop
    ld [$000b], sp
    ld [$0cfd], sp
    nop
    add b
    db $fc
    ld hl, sp+$2a
    nop
    nop
    ld [$002b], sp
    ld [$12f8], sp
    nop
    nop
    ld [$0013], sp
    nop
    ld [$0014], sp
    ldh a, [$fff2]
    ld bc, $0000
    ld [$000e], sp
    add b
    db $fc
    di
    ld [hl], a
    nop
    nop
    ld [$0078], sp
    nop
    ld [$0019], sp
    ld [$79f0], sp
    nop
    nop
    ld [$007a], sp
    nop
    ld [$001c], sp
    ldh a, [$fff7]
    ld [$0000], sp
    ld [$0016], sp
    add b
    db $fc
    di
    ld [hl], a
    nop
    nop
    ld [$0078], sp
    nop
    ld [$0019], sp
    ld [$7bf0], sp
    nop
    nop
    ld [$007c], sp
    nop
    ld [$001c], sp
    ldh a, [$fff7]
    ld [$0000], sp
    ld [$0016], sp
    add b
    db $fc
    db $f4
    ld [hl+], a
    nop
    nop
    ld [$0023], sp
    nop
    ld [$0024], sp
    ld [$25f0], sp
    nop
    nop
    ld [$0026], sp
    nop
    ld [$0027], sp
    ld hl, sp-$17
    ld e, c
    nop
    ld hl, sp+$09
    ld [$0000], sp
    ld [$0009], sp
    add b
    di
    db $f4
    ld l, d
    nop
    nop
    ld [$006b], sp
    nop
    ld [$006c], sp
    ld [$6df0], sp
    nop
    nop
    ld [$006e], sp
    nop
    ld [$006f], sp
    ld [$75f8], sp
    nop
    nop
    ld [$0076], sp
    add b
    di
    db $f4
    ld l, d
    nop
    nop
    ld [$006b], sp
    nop
    ld [$006c], sp
    ld [$70f0], sp
    nop
    nop
    ld [$0071], sp
    nop
    ld [$006f], sp
    ld [$77f8], sp
    nop
    nop
    ld [$0078], sp
    nop
    ld [$0079], sp
    add b
    di
    db $f4
    ld l, d
    nop
    nop
    ld [$006b], sp
    nop
    ld [$006c], sp
    ld [$72f0], sp
    nop
    nop
    ld [$0073], sp
    nop
    ld [$0074], sp
    ld [$7af8], sp
    nop
    nop
    ld [$007b], sp
    nop
    ld [$007c], sp
    add b
    db $fc
    di
    ld l, h
    nop
    nop
    ld [$006d], sp
    nop
    ld [$0019], sp
    ld [$6ef0], sp
    nop
    nop
    ld [$006f], sp
    nop
    ld [$001c], sp
    ldh a, [$fff3]
    ld l, d
    nop
    nop
    ld [$006b], sp
    add b
    db $fc
    push af
    ld [hl], d
    nop
    nop
    ld [$0004], sp
    nop
    ld [$0005], sp
    ld hl, sp-$0d
    ld [hl], b
    nop
    nop
    ld [$0071], sp
    db $10
    db $fc
    ld b, $00
    nop
    ld [$0007], sp
    add b
    db $f4
    ld hl, sp+$73
    nop
    nop
    ld [$0074], sp
    ld [$75f2], sp
    nop
    nop
    ld [$0076], sp
    nop
    ld [$000b], sp
    ld [$0cfd], sp
    nop
    add b
    db $fc
    ld hl, sp+$79
    nop
    nop
    ld [$007a], sp
    ld [$12f8], sp
    nop
    nop
    ld [$0013], sp
    nop
    ld [$0014], sp
    ldh a, [$fff0]
    ld [hl], a
    nop
    nop
    ld [$0078], sp
    add b
    db $f4
    push af
    ld a, e
    nop
    nop
    ld [$007c], sp
    nop
    ld [$002e], sp
    ld [$7df4], sp
    nop
    nop
    ld [$0030], sp
    ld [$31f5], sp
    nop
    nop
    ld [$0032], sp
    ld [$33ff], sp
    nop
    add b
    db $fc
    ld hl, sp+$55
    nop
    nop
    ld [$2055], sp
    ld [$57f8], sp
    jr nz, jr_001_7820

jr_001_7820:
    ld [$0057], sp
    add b

Call_001_7824:
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


    di
    ld hl, $cca8
    set 0, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    ei
    ret


    di
    ld hl, $cca8
    set 1, [hl]
    set 2, [hl]
    inc hl
    inc hl
    inc hl
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


Call_001_7863:
jr_001_7863:
    ld a, [$cca8]
    and $07
    jr nz, jr_001_7863

jr_001_786a:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_001_786a

    ret


Call_001_7873:
Jump_001_7873:
    call Call_000_186b

Call_001_7876:
    ld hl, $de94
    ld a, [$de91]
    cp [hl]
    ld [hl], a
    jr z, jr_001_788c

    ld a, [$de92]
    ld [$de95], a
    ld a, $10
    ld [$de93], a
    ret


jr_001_788c:
    ld hl, $de93
    ld a, [hl]
    or a
    jr nz, jr_001_789a

    ld [hl], $08
    ld a, [$de91]
    jr jr_001_789c

jr_001_789a:
    dec [hl]
    xor a

jr_001_789c:
    ld [$de95], a
    ret


Call_001_78a0:
    call Call_000_317f
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_001_78ad:
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
    ld a, [bc]
    cp $80
    ret z

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
    jr jr_001_78ad

Call_001_78d8:
    call Call_000_317f
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_001_78e5:
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
    ld a, [bc]
    cp $80
    ret z

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
    jr jr_001_78e5

Call_001_790a:
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
    jr z, jr_001_792f

    ld a, h
    and $80
    jr z, jr_001_792f

    ld a, $2d
    ld [$d8b0], a
    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc hl

jr_001_792f:
    ld e, l
    ld d, h
    ld b, c
    ld a, c
    add a
    ld hl, $799c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_001_793d:
    push bc
    dec hl
    dec hl
    ld c, $ff

jr_001_7942:
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
    jr nc, jr_001_7942

    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    ld a, c
    or a
    jr z, jr_001_7971

    ld a, [$d8af]
    inc a
    ld [$d8af], a
    cp $01
    jr nz, jr_001_7971

    ld a, [$d8b0]
    cp $2d
    jr nz, jr_001_7971

    push bc
    ld c, $2d
    call Call_001_7987
    pop bc

jr_001_7971:
    pop af
    ld b, a
    cp $01
    jr nz, jr_001_797e

    ld a, [$d8af]
    inc a
    ld [$d8af], a

jr_001_797e:
    push bc
    call Call_001_7987
    pop bc
    dec b
    jr nz, jr_001_793d

    ret


Call_001_7987:
    push hl
    push de
    ld a, [$d8af]
    ld b, a
    call Call_001_7993
    pop de
    pop hl
    ret


Call_001_7993:
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

Call_001_79a6:
    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


Call_001_79ad:
    call Call_000_0498
    ld a, $80
    ld [$d0a0], a
    ld a, $01
    ld [$d0a1], a
    xor a
    ld [$d0a2], a
    ld hl, $d0a7
    inc [hl]
    bit 0, [hl]
    nop
    rst $08
    add hl, hl
    ret


Jump_001_79c8:
    ld a, [$deaf]
    and $f7
    jp nz, Jump_001_79eb

    ld hl, $d0a1
    ld a, [hl-]
    or [hl]
    ret z

    ld a, [hl]
    sub $12
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    jr nc, jr_001_79e3

    xor a
    ld [hl-], a
    ld [hl], a

jr_001_79e3:
    ld a, [$d0a2]
    add $fe
    ld [$d0a2], a

Jump_001_79eb:
    ret


    xor a
    ld [$df09], a
    ret


    xor a
    ld [$deae], a
    ld [$deaf], a

Call_001_79f8:
    ld a, [$0027]
    bit 0, a
    jr z, jr_001_7a0b

    ld hl, $7a1e
    ld de, $8f70
    ld bc, $0090
    call Call_000_1c39

jr_001_7a0b:
    ld a, $50
    ld [$deb0], a
    ld a, $40
    ld [$deb1], a
    ld a, $fe
    ld [$debe], a
    ld [$dec2], a
    ret


    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    nop
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    nop
    nop
    xor $fe
    xor $fe
    xor $fe
    nop
    cp $ee
    cp $ee
    cp $ee
    cp $c6
    cp $10
    rst $38
    db $10
    rst $38
    ld de, $ffff
    rst $38
    ld de, $10ff
    rst $38
    db $10
    rst $38
    nop
    nop
    db $10
    cp $10
    cp $10
    cp $fe
    cp $10
    cp $10
    cp $10
    cp $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    jr c, @+$3a

    ld l, h
    ld l, h
    ld b, h
    ld b, h
    ld l, h
    ld l, h
    jr c, jr_001_7ac2

    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_001_7a92

jr_001_7a92:
    ld l, h
    nop
    ld b, h
    nop
    ld l, h
    nop
    jr c, jr_001_7a9a

jr_001_7a9a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $fe
    ld de, $8001
    cp $fa
    ld de, $8041
    ld a, [$11fe]
    add c
    add b
    ld a, [$11fa]
    pop bc
    add b

jr_001_7ac2:
    db $fd
    db $fd
    ld de, $8001
    ld a, $01
    ld [$deae], a
    ld hl, $deaf
    set 0, [hl]
    ld a, $01
    call Call_000_30c1
    ld [$debe], a
    ld a, $01
    call Call_000_30c1
    ld [$debf], a
    ld a, $01
    call Call_000_30c1
    ld [$dec0], a
    ld a, $01
    call Call_000_30c1
    ld [$dec1], a
    ld a, $01
    call Call_000_30c1
    ld [$dec2], a
    ld a, $01
    call Call_000_30c1
    ld [$dec3], a
    ld a, $01
    call Call_000_30c1
    ld [$dec4], a
    ret


    ld hl, $deaf
    set 0, [hl]
    call Call_001_7876
    ld a, [$de95]
    bit 3, a
    jr z, jr_001_7b27

    ld hl, $deaf
    res 0, [hl]
    ld a, [$de92]
    and $f3
    ld [$de92], a
    ret


jr_001_7b27:
    ld a, [$de92]
    bit 2, a
    jr z, jr_001_7b6c

    xor a
    ld [$deae], a
    ld hl, $deaf
    res 0, [hl]
    ld a, [$debe]
    call Call_000_30f7
    ld a, [$debf]
    call Call_000_30f7
    ld a, [$dec0]
    call Call_000_30f7
    ld a, [$dec1]
    call Call_000_30f7
    ld a, [$dec2]
    call Call_000_30f7
    ld a, [$dec3]
    call Call_000_30f7
    ld a, [$dec4]
    call Call_000_30f7
    ld a, $fe
    ld [$debe], a
    ld a, $01
    ld [$dd30], a
    ret


jr_001_7b6c:
    call Call_001_7bdf
    ld a, [$de80]
    and $08
    ld a, $fc
    jr nz, jr_001_7b79

    inc a

jr_001_7b79:
    ldh [$ffac], a
    ld a, [$de91]
    bit 0, a
    jr z, jr_001_7b85

    ld a, [$de92]

jr_001_7b85:
    ld de, $0100
    rlca
    jr c, jr_001_7ba0

    ld de, $ff00
    rlca
    jr c, jr_001_7ba0

    ld de, $00ff
    rlca
    jr c, jr_001_7ba0

    ld de, $0001
    rlca
    jr c, jr_001_7ba0

    ld de, $0000

jr_001_7ba0:
    ldh a, [$ff9b]
    ld l, a
    ldh a, [$ff9c]
    ld h, a
    push hl
    ld hl, $deb0
    ld a, e
    add [hl]
    ld [hl+], a
    ldh [$ff9b], a
    ld a, d
    add [hl]
    ld [hl+], a
    ldh [$ff9c], a
    xor a
    ldh [$ffab], a
    ld hl, $7ac2
    ld a, [$dec4]
    call Call_000_2de8
    pop hl
    ld a, l
    ldh [$ff9b], a
    ld a, h
    ldh [$ff9c], a
    ret


    push hl
    ld a, [$deb0]
    ld e, a
    ld a, [$deb1]
    ld d, a
    call Call_000_0d96
    ld a, $00
    jr c, jr_001_7bda

    ld a, $02

jr_001_7bda:
    pop hl
    jp Jump_000_1c15


    ret


Call_001_7bdf:
    call Call_001_711b
    ld hl, $d746
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, a
    ld l, b
    ld a, [$d722]
    ld [$dec9], a
    ld a, [$d725]
    ld [$deca], a
    jp Jump_001_7c0d


Call_001_7bfd:
    ld a, e
    add $30
    ld e, a
    ld a, l
    add $30
    ld l, a
    ld a, d
    add $30
    ld d, a
    ld a, h
    add $30
    ld h, a

Jump_001_7c0d:
    push hl
    push de
    push bc
    inc l
    inc h
    ld a, [$d3ea]
    push af
    xor a
    ld [$d3ea], a
    ldh a, [$ff8a]
    ld c, a
    ldh a, [$ff8b]
    ld b, a
    push bc
    ldh a, [$ff8c]
    ld c, a
    ldh a, [$ff8d]
    ld b, a
    push bc
    ldh a, [$ff9b]
    ld c, a
    ldh a, [$ff9c]
    ld b, a
    push bc
    ld a, [$deb0]
    add $30
    cp l
    jr nc, jr_001_7c6c

    cp e
    jr c, jr_001_7c6c

    ld a, [$deb1]
    add $30
    cp h
    jr nc, jr_001_7c6c

    cp d
    jr c, jr_001_7c6c

    ld a, l
    add $d0
    ld [$debb], a
    ld [$debd], a
    ld a, e
    add $d0
    ld [$deb7], a
    ld [$deb9], a
    ld a, h
    add $d0
    ld [$deb8], a
    ld [$debc], a
    ld a, d
    add $d0
    ld [$deb6], a
    ld [$deba], a
    call Call_001_7c89

jr_001_7c6c:
    pop bc
    ld a, c
    ldh [$ff9b], a
    ld a, b
    ldh [$ff9c], a
    pop bc
    ld a, c
    ldh [$ff8c], a
    ld a, b
    ldh [$ff8d], a
    pop bc
    ld a, c
    ldh [$ff8a], a
    ld a, b
    ldh [$ff8b], a
    pop af
    ld [$d3ea], a
    pop bc
    pop de
    pop hl
    ret


Call_001_7c89:
    ld a, [$debe]
    cp $fe
    ret z

    ldh a, [$ffac]
    ld e, a
    ldh a, [$ffab]
    ld d, a
    push de
    ld a, [$de80]
    and $08
    ld a, $fa
    jr nz, jr_001_7ca0

    inc a

jr_001_7ca0:
    ldh [$ffac], a
    xor a
    ldh [$ffab], a
    ld a, [$deb7]
    ldh [$ff9b], a
    ld a, [$deb6]
    ldh [$ff9c], a
    ld hl, $7aae
    ld a, [$debe]
    call Call_000_2de8
    ld a, [$deb9]
    ldh [$ff9b], a
    ld a, [$deb8]
    ldh [$ff9c], a
    ld hl, $7ab3
    ld a, [$debf]
    call Call_000_2de8
    ld a, [$debb]
    ldh [$ff9b], a
    ld a, [$deba]
    ldh [$ff9c], a
    ld hl, $7ab8
    ld a, [$dec0]
    call Call_000_2de8
    ld a, [$debd]
    ldh [$ff9b], a
    ld a, [$debc]
    ldh [$ff9c], a
    ld hl, $7abd
    ld a, [$dec1]
    call Call_000_2de8
    pop de
    ld a, e
    ldh [$ffac], a
    ld a, d
    ldh [$ffab], a
    ret


    db $fd
    db $fd
    ld de, $8001
    db $fd
    db $fd
    ld de, $8002
    ld a, [hl]
    or a
    ret nz

    inc [hl]
    ret


ToggleMegaBusterModeOnPauseSelect:
    ld a, [wJoypadPressed]
    bit 2, a
    jr z, .done

    ld a, [wPauseMenuDefaultWeaponOnly]
    or a
    jr nz, .done

    ld a, [wMegaBusterMkIIUnlocked]
    or a
    jr z, .done

    ld hl, wPrimaryWeaponModeFlags
    ld a, [hl]
    xor $80
    ld [hl], a
    ld b, $0d
    bit PRIMARY_WEAPON_MEGA_BUSTER_F, a
    jr nz, .queueSfx

    ld b, $0f

.queueSfx:
    ld hl, wPauseWeaponMenuForceReload
    set 0, [hl]
    ld a, b
    call Call_000_0222

.done:
    ld a, [wMenuInputPressedRepeat]
    ret


DrawPauseMegaBusterMkIIIconAndPChips:
    call DrawPauseMegaBusterMkIIIcon
    jp Call_001_5e37


DrawPauseMegaBusterMkIIIcon:
    ld hl, PauseMegaBusterMkIIIconGfx
    ld bc, $0040
    ld de, $8c70
    call Call_000_1c39
    ld a, [wMegaBusterMkIIUnlocked]
    or a
    jr z, .hide

    ld hl, PauseMegaBusterMkIIIconTilemapTop
    ld bc, $0002
    ld de, $9d91
    call Call_000_1c39
    ld hl, PauseMegaBusterMkIIIconTilemapBottom
    ld bc, $0002
    ld de, $9db1
    call Call_000_1c39
    ld hl, PauseMegaBusterMkIILabelGfx
    ld bc, $0020
    ld de, $8cb0
    call Call_000_1c39
    ld hl, PauseMegaBusterMkIILabelTilemap
    ld bc, $0002
    ld de, $9d8e
    jp Jump_000_1c39

.hide:
    ld bc, $0202
    ld de, $9d91
    jp Jump_001_5c7d

PauseMegaBusterMkIIIconTilemapTop:
    db $c7, $c8

PauseMegaBusterMkIIIconTilemapBottom:
    db $c9, $ca

PauseMegaBusterMkIILabelTilemap:
    db $cb, $cc

PauseMegaBusterMkIIIconGfx:
    INCBIN "gfx/mkii_icon.2bpp"

PauseMegaBusterMkIILabelGfx:
    db %01111110, %01111110
    db %00111100, %00111100
    db %01011010, %01011010
    db %01100110, %01100110
    db %01111110, %01111110
    db %01111110, %01111110
    db %01111110, %01111110
    db %11111111, %11111111

    db %10000011, %10000011
    db %01111101, %01111101
    db %11111101, %11111101
    db %11110011, %11110011
    db %11001111, %11001111
    db %10111111, %10111111
    db %00000001, %00000001
    db %11111111, %11111111
