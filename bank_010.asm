; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_010_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_010_403f

    jr nc, @+$22

    jp Jump_010_4231


    jp Jump_010_423f


    jp Jump_010_4192


    jp Jump_010_4964


    jp Jump_010_5d8c


    jp Jump_010_6cb5


    jp Jump_010_6bd7


    jp Jump_010_6e5e


    jp Jump_010_403b


    jp Jump_010_403a


    jp Jump_010_7357


    jp Jump_010_77a5


    jp Jump_010_796d


    jp Jump_010_544d


Jump_010_403a:
    ret


Jump_010_403b:
    ld hl, $60fe
    ld a, b

jr_010_403f:
    and $0f
    cp $0a
    jr c, jr_010_404a

    sub $0a
    ld hl, $620e

jr_010_404a:
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld bc, $0010
    jp Jump_000_0183


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_406b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_4080:
    ld b, $00

jr_010_4082:
    ld a, [hl]
    cp d
    ret z

    cp e
    jr z, jr_010_408b

    add hl, bc
    jr jr_010_4082

jr_010_408b:
    scf
    ret


Call_010_408d:
    call Call_000_01c8
    ld hl, $de94
    ld a, [$de91]
    cp [hl]
    ld [hl], a
    jr z, jr_010_40a6

    ld a, [$de92]
    ld [$de95], a
    ld a, $10
    ld [$de93], a
    ret


jr_010_40a6:
    ld hl, $de93
    ld a, [hl]
    or a
    jr nz, jr_010_40b4

    ld [hl], $03
    ld a, [$de91]
    jr jr_010_40b6

jr_010_40b4:
    dec [hl]
    xor a

jr_010_40b6:
    ld [$de95], a
    ret


Call_010_40ba:
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
    jr z, jr_010_40df

    ld a, h
    and $80
    jr z, jr_010_40df

    ld a, $2d
    ld [$d8b0], a
    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc hl

jr_010_40df:
    ld e, l
    ld d, h
    ld b, c
    ld a, c
    add a
    ld hl, $414c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_010_40ed:
    push bc
    dec hl
    dec hl
    ld c, $ff

jr_010_40f2:
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
    jr nc, jr_010_40f2

    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    ld a, c
    or a
    jr z, jr_010_4121

    ld a, [$d8af]
    inc a
    ld [$d8af], a
    cp $01
    jr nz, jr_010_4121

    ld a, [$d8b0]
    cp $2d
    jr nz, jr_010_4121

    push bc
    ld c, $2d
    call Call_010_4137
    pop bc

jr_010_4121:
    pop af
    ld b, a
    cp $01
    jr nz, jr_010_412e

    ld a, [$d8af]
    inc a
    ld [$d8af], a

jr_010_412e:
    push bc
    call Call_010_4137
    pop bc
    dec b
    jr nz, jr_010_40ed

    ret


Call_010_4137:
    push hl
    push de
    ld a, [$d8af]
    ld b, a
    call Call_010_4143
    pop de
    pop hl
    ret


Call_010_4143:
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
    inc b
    nop
    ld bc, $0200
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc bc
    ld bc, $0010
    inc b
    nop
    inc b
    nop
    jr nz, jr_010_416a

jr_010_416a:
    ld [$0500], sp
    nop
    nop
    ld [bc], a
    stop
    add hl, bc
    nop
    nop
    dec b
    jr nz, jr_010_4178

jr_010_4178:
    ld a, [bc]
    ld [$0800], sp
    ld b, b
    nop
    dec bc
    nop
    nop
    db $10
    add b
    nop
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0000
    add b
    nop
    nop
    ld [bc], a
    rlca
    nop

Jump_010_4192:
    xor a
    ld hl, $df0c
    ld [hl+], a
    ld [hl+], a
    ld a, [$df0a]
    cp $0b
    ret nc

    ld e, a
    ld d, $00
    ld hl, $4150
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $de9c
    ld a, [de]
    inc de
    or [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    or [hl]
    ld [hl+], a
    ld hl, $df35
    ld a, [de]
    inc de
    or [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    or [hl]
    ld [hl+], a
    ld a, [$de31]
    or a
    ret nz

    ld hl, $df0c
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ret


    dec [hl]
    rst $18
    ld [$df36], sp
    ld bc, $df37
    inc b
    ld a, d
    rst $18
    ld bc, $df7b
    ld bc, $df7c
    ld bc, $df7d
    ld bc, $df38
    dec b
    ld a, [hl-]
    rst $18
    inc bc
    dec sp
    rst $18
    ld bc, $df3c
    ld bc, $df3d
    ld a, [bc]
    nop
    jp z, $0003

    nop

Jump_010_41f9:
    ld a, [$df37]
    and $0f
    jr z, jr_010_4205

    ld hl, $def0
    set 1, [hl]

Call_010_4205:
jr_010_4205:
    ld hl, $4156
    ld c, $00

jr_010_420a:
    push hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$df35]
    and [hl]
    jr nz, jr_010_421c

    inc hl
    ld a, [$df36]
    and [hl]
    jr z, jr_010_4225

jr_010_421c:
    ld hl, $de9c
    ld a, [hl]
    or e
    ld [hl+], a
    ld a, [hl]
    or d
    ld [hl], a

jr_010_4225:
    pop hl
    ld de, $0006
    add hl, de
    inc c
    ld a, c
    cp $0a
    jr c, jr_010_420a

    ret


Jump_010_4231:
    ld a, [$df34]
    sub $03
    jr nc, jr_010_4239

    xor a

jr_010_4239:
    ld [$ca00], a
    jp Jump_010_46fc


Jump_010_423f:
    call Call_010_4567
    ld a, [$ca00]
    add $03
    ld [$df34], a
    jp Jump_010_41f9


Call_010_424d:
    ld a, [$df3d]
    ld e, a
    ld a, [$df3e]
    ld d, a
    ld hl, $03e7
    call Call_010_6dd9
    jr c, jr_010_4294

    ld a, [$df38]
    cp $11
    jr nc, jr_010_4294

    ld a, [$df3a]
    cp $05
    jr nc, jr_010_4294

    ld a, [$df35]
    and $0f
    cp $0f
    jr z, jr_010_4284

    ld a, [$df36]
    bit 0, a
    jr nz, jr_010_4294

    ld a, [$df35]
    and $f0
    jr nz, jr_010_4294

    jr jr_010_4292

jr_010_4284:
    ld a, [$df36]
    bit 0, a
    jr nz, jr_010_4292

    ld a, [$df35]
    and $f0
    jr nz, jr_010_4294

jr_010_4292:
    xor a
    ret


jr_010_4294:
    scf
    ret


    xor a
    ld [$ca01], a
    ld a, [$cc2b]
    or a
    bit 1, a
    ret z

    xor a
    ld [$ca02], a
    ld a, $01
    ld [$ca01], a
    call Call_010_42c9
    scf
    ret


    ld a, [$de92]
    bit 2, a
    ret z

    ld a, [$ca01]
    or a
    ret z

    xor a
    ld [$de92], a
    ld hl, $ca02
    inc [hl]
    ld a, [hl]
    cp $07
    jr c, jr_010_42c9

    ld [hl], $00

Call_010_42c9:
jr_010_42c9:
    call Call_010_42e0
    push hl
    call Call_010_4954
    pop de
    ld hl, $99e2
    call Call_010_4938
    call Call_010_472b
    call Call_010_47dc
    rst $08
    daa
    ret


Call_010_42e0:
    ld a, [$ca02]
    ld hl, $4342
    call Call_000_016e
    ld b, $08

jr_010_42eb:
    ld a, [hl+]
    rra
    rr c
    dec b
    jr nz, jr_010_42eb

    ld a, c
    ld [$df35], a
    ld a, [hl+]
    ld [$df36], a
    ld b, $04

jr_010_42fc:
    ld a, [hl+]
    rra
    rr c
    dec b
    jr nz, jr_010_42fc

    ld a, c
    swap a
    and $0f
    ld [$df37], a
    ld a, [hl+]
    ld [$df7a], a
    ld a, [hl+]
    ld [$df7b], a
    ld a, [hl+]
    ld [$df7c], a
    ld a, [hl+]
    ld [$df7d], a
    ld a, [hl+]
    ld [$df38], a
    ld a, [hl+]
    ld [$df3a], a
    ld a, [hl+]
    ld [$df3b], a
    ld a, [hl+]
    ld [$df3c], a
    ld a, [hl+]
    ld [$df3d], a
    ld a, [hl+]
    ld [$df3e], a
    ld a, [hl+]
    add $01
    ld [$df34], a
    sub $03
    jr nc, jr_010_433e

    xor a

jr_010_433e:
    ld [$ca00], a
    ret


    ld d, b
    ld b, e
    ld a, c
    ld b, e
    sbc l
    ld b, e
    ret nz

    ld b, e
    jp hl


    ld b, e
    ld [de], a
    ld b, h
    dec sp
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_010_438a

    ld b, c
    ld c, h
    ld c, h
    jr nz, @+$32

    jr nz, jr_010_4391

    jr nz, jr_010_4393

    jr nz, jr_010_4395

    jr nz, @+$22

    jr nz, jr_010_4379

jr_010_4379:
    ld bc, $0101
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

jr_010_438a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_010_4391:
    jr nz, jr_010_43d7

jr_010_4393:
    ld c, l
    ld c, a

jr_010_4395:
    ld c, [hl]
    jr nz, @+$4f

    ld c, c
    ld c, [hl]
    ld c, c
    jr nz, jr_010_439d

jr_010_439d:
    ld bc, $0101
    ld bc, $0000
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
    inc b
    ld bc, $e701
    inc bc
    add hl, bc
    jr nz, @+$46

    ld c, l
    ld c, a
    ld c, [hl]
    jr nz, @+$4f

    ld b, c
    ld e, b
    jr nz, jr_010_43c0

jr_010_43c0:
    ld bc, $0101
    ld bc, $0000
    nop
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

jr_010_43d7:
    ld [bc], a
    jr nz, jr_010_4425

    ld c, a
    ld d, l
    ld c, b
    ld b, c
    ld c, [hl]
    jr nz, jr_010_442e

    ld c, c
    ld c, [hl]
    ld c, c
    jr nz, jr_010_4406

    jr nz, jr_010_4408

    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    ld bc, $0410
    ld bc, $e701
    inc bc
    add hl, bc
    jr nz, jr_010_444e

    ld c, a
    ld d, l
    ld c, b

jr_010_4406:
    ld b, c
    ld c, [hl]

jr_010_4408:
    jr nz, jr_010_4457

    ld b, c
    ld e, b
    jr nz, jr_010_442e

    jr nz, @+$22

    jr nz, jr_010_4412

jr_010_4412:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_010_4425:
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nz, @+$47

    ld b, c
    ld d, d

jr_010_442e:
    ld d, h
    jr nz, jr_010_4451

    jr nz, jr_010_4480

    ld c, c
    ld c, [hl]
    jr nz, jr_010_4457

    jr nz, @+$22

    jr nz, jr_010_443b

jr_010_443b:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    inc b

jr_010_444e:
    ld bc, $e701

jr_010_4451:
    inc bc
    add hl, bc
    jr nz, jr_010_449a

    ld b, c
    ld d, d

jr_010_4457:
    ld d, h
    jr nz, jr_010_447a

    jr nz, @+$4f

    ld b, c
    ld e, b
    jr nz, jr_010_4480

    jr nz, @+$22

    jr nz, jr_010_4464

jr_010_4464:
    call Call_000_01d1
    call Call_000_01c5
    rst $08
    nop

Call_010_446c:
    call Call_000_01d1
    xor a
    ld [$de96], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_01c5

jr_010_447a:
    ld hl, $9800
    ld bc, $0400

jr_010_4480:
    xor a
    call Call_000_0186
    xor a
    ld [$d7d1], a
    ldh [rSCX], a
    ld [$d7d2], a
    ldh [rSCY], a
    ld [$de2c], a
    ld a, $90
    ldh [rWY], a
    xor a
    ld hl, $de37

jr_010_449a:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_010_44a1:
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $1b
    ldh [rBGP], a
    ld [$de96], a
    ld a, $d0
    ldh [rOBP0], a
    ld a, $e3
    ld [$de87], a
    ldh [rLCDC], a
    ei
    ret


Call_010_44bc:
    ld a, l
    ld [$d900], a
    ld a, h
    ld [$d901], a
    xor a
    ld [$d902], a
    ret


Call_010_44c9:
    push hl
    push de
    ld c, $00
    or a
    jr z, jr_010_44ff

    ld b, a
    ld a, [$d902]
    ld e, a
    ld a, [$d903]
    ld d, a

jr_010_44d9:
    ld a, e
    or a
    jr nz, jr_010_44ef

    ld hl, $d900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$d900], a
    ld a, h
    ld [$d901], a
    ld e, $08

jr_010_44ef:
    rl d
    rl c
    dec e
    dec b
    jr nz, jr_010_44d9

    ld a, e
    ld [$d902], a
    ld a, d
    ld [$d903], a

jr_010_44ff:
    ld a, c
    pop de
    pop hl
    ret


Jump_010_4503:
    push de
    call Call_010_44bc
    pop de
    push de
    ld a, e
    call Call_010_44c9
    pop de
    ld a, d
    call Call_010_44c9
    ret


Call_010_4513:
    ld b, $07
    xor a

Call_010_4516:
    push hl
    push de
    push bc
    ld d, a
    ld a, $08
    sub b

jr_010_451d:
    jr z, jr_010_4524

    rl d
    dec a
    jr jr_010_451d

jr_010_4524:
    ld a, [$d902]
    ld e, a
    ld a, [$d903]
    ld c, a

jr_010_452c:
    rl d
    rl c
    inc e
    ld a, e
    cp $08
    jr c, jr_010_4548

    ld hl, $d900
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], c
    inc hl
    ld a, l
    ld [$d900], a
    ld a, h
    ld [$d901], a
    ld e, $00

jr_010_4548:
    dec b
    jr nz, jr_010_452c

    ld a, e
    ld [$d902], a
    ld a, c
    ld [$d903], a
    pop bc
    pop de
    pop hl
    ret


Call_010_4557:
jr_010_4557:
    push bc
    call Call_000_01c5
    call Call_000_01c8
    pop bc
    ld a, [$de92]
    and b
    jr z, jr_010_4557

    ret


Call_010_4566:
    ret


Call_010_4567:
    ld de, $46fc
    call Call_010_495e
    rst $08
    ld a, e
    ld de, $9800
    ld hl, $4fd0
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_010_6e41
    rst $28
    cpl
    call Call_010_44a1
    call Call_000_01c8
    ld a, [$de91]
    ld [$cc2b], a
    xor a
    ld hl, $cc00
    ld bc, $002a
    call Call_000_0174
    ld hl, $cc07
    ld bc, $0018
    ld a, $03
    call Call_000_0174
    ld a, $04
    call Call_000_01a4
    ld [$cc28], a
    call Call_010_4a5d
    ld a, $d0
    ldh [rOBP0], a
    ld hl, $99e2
    ld de, $4904
    call Call_010_4938
    call Call_010_4989
    call Call_000_01d1
    call Call_000_01c5
    call Call_010_4631
    ccf
    ld a, $00
    adc a
    ld [$cc00], a
    or a
    jr z, jr_010_45e8

    ld hl, $99e2
    ld de, $48d1
    call Call_010_4938
    ld b, $1e
    call Call_000_023a
    ld hl, $4916
    ld de, $48d1
    ld bc, $5a1e
    call Call_010_4616
    ret


jr_010_45e8:
    rst $08
    nop
    rst $08
    inc de
    call Call_000_01c5
    ld a, $05

jr_010_45f1:
    push af
    ld hl, $48e2
    ld de, $48d1
    ld bc, $0202
    call Call_010_4616
    ld hl, $48e2
    ld de, $48d1
    ld bc, $1e0c
    call Call_010_4616
    pop af
    dec a
    jr nz, jr_010_45f1

    ld b, $3c
    call Call_000_023a
    jp Jump_000_02a0


Call_010_4616:
    push de
    push bc
    ld e, l
    ld d, h
    ld hl, $99e2
    call Call_010_4938
    pop bc
    call Call_000_023a
    pop de
    ld hl, $99e2
    push bc
    call Call_010_4938
    pop bc
    ld b, c
    jp Jump_000_023a


Call_010_4631:
    ld hl, $cc00
    call Call_010_44bc
    ld hl, $cc07
    ld c, $18

jr_010_463c:
    ld a, [hl+]
    ld b, $02
    call Call_010_4516
    dec c
    jr nz, jr_010_463c

    ld b, $06
    ld hl, $cc00
    ld de, $48cb

jr_010_464d:
    ld a, [de]
    inc de
    cpl
    inc a
    add [hl]
    ld [hl+], a
    dec b
    jr nz, jr_010_464d

    ld hl, $cc05
    call Call_010_44bc
    ld a, $03
    call Call_010_44c9
    ld [$cc21], a
    ld a, $05
    call Call_010_44c9
    ld [$cc22], a

jr_010_466c:
    sub $28
    jr nc, jr_010_466c

    add $28
    ld c, a

jr_010_4673:
    jr z, jr_010_4688

    ld b, $05
    ld a, [$cc00]
    ld hl, $cc04
    rl a

jr_010_467f:
    rl [hl]
    dec hl
    dec b
    jr nz, jr_010_467f

    dec c
    jr jr_010_4673

jr_010_4688:
    call Call_010_481d
    ld a, [$cc22]
    cp d
    jp nz, Jump_010_46f0

    call Call_010_4805
    ld a, [$cc21]
    cp d
    jp nz, Jump_010_46f4

    call Call_010_47f5
    ld hl, $cc00
    call Call_010_44bc
    ld hl, $41d0

jr_010_46a8:
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld d, a
    or e
    jr z, jr_010_46e3

    ld a, d
    and e
    cp $ff
    jr z, jr_010_46d2

    ld c, [hl]
    inc hl

jr_010_46b7:
    ld b, c
    ld a, c
    cp $09
    jr c, jr_010_46bf

    ld b, $08

jr_010_46bf:
    ld a, c
    sub b
    ld c, a
    push bc
    ld a, b
    call Call_010_44c9
    ld [de], a
    pop bc
    ld a, c
    or a
    jr z, jr_010_46d0

    inc de
    jr jr_010_46b7

jr_010_46d0:
    jr jr_010_46a8

jr_010_46d2:
    ld d, [hl]
    inc hl
    ld a, $01
    call Call_010_44c9
    and $01
    jr z, jr_010_46d0

    ld a, d
    call Call_010_4566
    jr jr_010_46d0

jr_010_46e3:
    call Call_010_424d
    jp c, Jump_010_46f8

    ret


    ld hl, $cc00
    jp Jump_010_4503


Jump_010_46f0:
    ld e, $01
    scf
    ret


Jump_010_46f4:
    ld e, $02
    scf
    ret


Jump_010_46f8:
    ld e, $03
    scf
    ret


Jump_010_46fc:
    call Call_010_495e
    ld de, $9800
    ld hl, $513a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_010_6e41
    ld hl, $99e2
    ld de, $48f3
    call Call_010_4938
    call Call_010_472b
    call Call_010_47dc
    rst $28
    cpl
    call Call_010_44a1
    ld b, $3c
    call Call_000_023a
    ld b, $0f
    call Call_010_4557
    ret


Call_010_472b:
    xor a
    ld hl, $cc00
    ld bc, $002a
    call Call_000_0174
    ld hl, $cc00
    call Call_010_44bc
    ld hl, $41d0

jr_010_473e:
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld d, a
    or e
    jr z, jr_010_4775

    ld a, d
    and e
    cp $ff
    jr z, jr_010_4765

    ld c, [hl]
    inc hl

jr_010_474d:
    ld b, c
    ld a, c
    cp $09
    jr c, jr_010_4755

    ld b, $08

jr_010_4755:
    ld a, c
    sub b
    ld c, a
    ld a, [de]
    call Call_010_4516
    ld a, c
    or a
    jr z, jr_010_4763

    inc de
    jr jr_010_474d

jr_010_4763:
    jr jr_010_473e

jr_010_4765:
    ld a, [hl+]
    call Call_010_4566
    ld a, $00
    jr z, jr_010_476e

    inc a

jr_010_476e:
    ld b, $01
    call Call_010_4516
    jr jr_010_4763

jr_010_4775:
    call Call_010_4513
    call Call_010_47f5
    ld hl, $cc05
    call Call_010_44bc
    call Call_010_4805
    ld b, $03
    ld [$cc21], a
    call Call_010_4516
    call Call_010_481d
    ld b, $05
    ld [$cc22], a
    call Call_010_4516
    ld a, [$cc22]

jr_010_479a:
    sub $28
    jr nc, jr_010_479a

    add $28
    ld c, a

jr_010_47a1:
    jr z, jr_010_47b6

    ld b, $05
    ld a, [$cc04]
    ld hl, $cc00
    rr a

jr_010_47ad:
    rr [hl]
    inc hl
    dec b
    jr nz, jr_010_47ad

    dec c
    jr jr_010_47a1

jr_010_47b6:
    ld b, $06
    ld hl, $cc00
    ld de, $48cb

jr_010_47be:
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    dec b
    jr nz, jr_010_47be

    ld hl, $cc00
    call Call_010_44bc
    ld hl, $cc07
    ld b, $18

jr_010_47d0:
    push bc
    ld a, $02
    call Call_010_44c9
    pop bc
    ld [hl+], a
    dec b
    jr nz, jr_010_47d0

    ret


Call_010_47dc:
    ld c, $00

jr_010_47de:
    ld b, $00

jr_010_47e0:
    push bc
    call Call_010_48ab
    call Call_010_485d
    pop bc
    inc b
    ld a, b
    cp $05
    jr c, jr_010_47e0

    inc c
    ld a, c
    cp $05
    jr c, jr_010_47de

    ret


Call_010_47f5:
    ld b, $05
    ld hl, $cc00
    ld de, $48c6

jr_010_47fd:
    ld a, [de]
    inc de
    xor [hl]
    ld [hl+], a
    dec b
    jr nz, jr_010_47fd

    ret


Call_010_4805:
    ld b, $05
    ld hl, $cc00
    xor a

jr_010_480b:
    ld e, [hl]
    inc hl
    ld c, $08

jr_010_480f:
    rl e
    adc $00
    dec c
    jr nz, jr_010_480f

    dec b
    jr nz, jr_010_480b

    and $07
    ld d, a
    ret


Call_010_481d:
    ld b, $05
    ld hl, $cc00
    ld d, $00

jr_010_4824:
    ld e, [hl]
    inc hl
    ld a, e
    swap a
    and $0f
    add d
    ld d, a
    ld a, e
    and $0f
    add d
    ld d, a
    dec b
    jr nz, jr_010_4824

    ld a, d
    and $1f
    ld d, a
    ret


    inc d
    dec d
    ld a, [de]
    dec de
    ld d, $17
    inc e
    dec e
    jr jr_010_485d

    ld e, $1f
    dec b
    ld b, $07
    ld [$2120], sp
    jr z, jr_010_4877

    ld [hl+], a
    inc hl
    ld bc, $2402
    dec h
    inc bc
    inc b
    ld h, $27
    ld a, [bc]
    dec bc

Call_010_485a:
    call Call_010_48a6

Call_010_485d:
jr_010_485d:
    push de
    ld a, c
    add a
    add $01
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, b
    add a
    add $02
    ld e, a
    ld d, $00
    add hl, de
    ld de, $9800
    add hl, de
    pop de

Call_010_4877:
jr_010_4877:
    ld a, l
    ldh [$ff8a], a
    ld a, h
    ldh [$ff8b], a
    ld a, d
    and $07
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $483a
    add hl, de
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    push de
    ld bc, $0002
    call Call_000_0183
    pop de
    ld a, $20
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld bc, $0002
    call Call_000_0183
    ret


Call_010_48a6:
    call Call_010_48b1
    ld [hl], d
    ret


Call_010_48ab:
    call Call_010_48b1
    ld a, [hl]
    ld d, a
    ret


Call_010_48b1:
    push de
    push bc
    ld hl, $cc07
    ld de, $0005
    ld a, b
    or a

jr_010_48bb:
    jr z, jr_010_48c1

    add hl, de
    dec b
    jr jr_010_48bb

jr_010_48c1:
    ld e, c
    add hl, de
    pop bc
    pop de
    ret


    ld e, c
    ld d, h
    ld e, b
    inc hl
    ld [$3412], sp
    ld d, [hl]
    ld a, b
    sbc d
    cp h
    jr nz, jr_010_48f3

    jr nz, jr_010_48f5

    jr nz, jr_010_48f7

    jr nz, jr_010_48f9

    jr nz, jr_010_48fb

    jr nz, jr_010_48fd

    jr nz, jr_010_48ff

    jr nz, jr_010_4901

    nop
    jr nz, jr_010_4904

    jr nz, jr_010_4906

    jr nz, jr_010_492d

    ld d, d
    ld d, d
    ld c, a
    ld d, d
    jr nz, jr_010_490e

    jr nz, jr_010_4910

    jr nz, jr_010_4912

    nop

jr_010_48f3:
    jr nz, @+$22

jr_010_48f5:
    jr nz, @+$22

jr_010_48f7:
    ld d, b
    ld b, c

jr_010_48f9:
    ld d, e
    ld d, e

jr_010_48fb:
    ld d, a
    ld c, a

jr_010_48fd:
    ld d, d
    ld b, h

jr_010_48ff:
    jr nz, jr_010_4921

jr_010_4901:
    jr nz, jr_010_4923

    nop

jr_010_4904:
    ld c, c
    ld c, [hl]

jr_010_4906:
    ld d, b
    ld d, l
    ld d, h
    jr nz, @+$52

    ld b, c
    ld d, e
    ld d, e

jr_010_490e:
    ld d, a
    ld c, a

jr_010_4910:
    ld d, d
    ld b, h

jr_010_4912:
    jr nz, @+$22

    jr nz, jr_010_4916

jr_010_4916:
    jr nz, jr_010_4938

    jr nz, jr_010_493a

    jr nz, jr_010_493c

    jr nz, jr_010_496d

    ld c, e
    jr nz, @+$22

jr_010_4921:
    jr nz, @+$22

jr_010_4923:
    jr nz, @+$22

    jr nz, jr_010_4927

jr_010_4927:
    jr nz, @+$22

    jr nz, @+$49

    ld c, a
    ld c, a

jr_010_492d:
    ld b, h
    jr nz, jr_010_497c

    ld d, l
    ld b, e
    ld c, e
    jr nz, @+$22

    jr nz, jr_010_4957

    nop

Call_010_4938:
Jump_010_4938:
jr_010_4938:
    ld a, [de]
    inc de

jr_010_493a:
    or a
    ret z

jr_010_493c:
    cp $20
    jr nz, jr_010_4944

    ld a, $c0
    jr jr_010_494e

jr_010_4944:
    cp $3a
    jr nc, jr_010_494c

    add $91
    jr jr_010_494e

jr_010_494c:
    add $8a

jr_010_494e:
    call Call_000_0189
    inc hl
    jr jr_010_4938

Call_010_4954:
    ld hl, $99e2

jr_010_4957:
    ld de, $48d1
    call Call_010_4938
    ret


Call_010_495e:
    call Call_010_446c
    call Call_000_019b

Jump_010_4964:
    ld hl, $4fb0
    ld de, $8010
    ld bc, $0020

jr_010_496d:
    call Call_000_0183
    ld hl, $4ab0
    ld bc, $02a0
    ld de, $9000
    call Call_000_0183

Call_010_497c:
jr_010_497c:
    ld hl, $4d50
    ld bc, $0260
    ld de, $8c00
    call Call_000_0183
    ret


Call_010_4989:
jr_010_4989:
    call Call_000_01c5
    call Call_010_408d
    call Call_010_4a17
    call Call_010_4a5c
    ld a, [$de92]
    bit 0, a
    jr nz, jr_010_49bb

    bit 1, a
    jr nz, jr_010_49ce

    bit 3, a
    jr nz, jr_010_49de

    ld a, [$de95]
    swap a
    rrc a
    jr c, jr_010_49f1

    rrc a
    jr c, jr_010_49df

    rrc a
    jr c, jr_010_49fd

    rrc a
    jr c, jr_010_4a0b

jr_010_49b9:
    jr jr_010_4989

jr_010_49bb:
    ld a, [$cc25]
    ld b, a
    ld a, [$cc26]
    ld c, a
    ld a, [$cc27]
    ld d, a
    call Call_010_485a
    rst $08
    dec c
    jr jr_010_49b9

jr_010_49ce:
    ld a, [$cc27]
    inc a
    and $03
    ld [$cc27], a
    call Call_010_4a5d
    rst $08
    add hl, de
    jr jr_010_49b9

jr_010_49de:
    ret


jr_010_49df:
    ld a, [$cc25]
    dec a
    cp $05
    jr c, jr_010_49e8

    xor a

jr_010_49e8:
    ld [$cc25], a

jr_010_49eb:
    xor a
    ld [$cc22], a
    jr jr_010_49b9

jr_010_49f1:
    ld a, [$cc25]
    inc a
    cp $05
    jr c, jr_010_49fb

    ld a, $04

jr_010_49fb:
    jr jr_010_49e8

jr_010_49fd:
    ld a, [$cc26]
    dec a
    cp $05
    jr c, jr_010_4a06

    xor a

jr_010_4a06:
    ld [$cc26], a
    jr jr_010_49eb

jr_010_4a0b:
    ld a, [$cc26]
    inc a
    cp $05
    jr c, jr_010_4a15

    ld a, $04

jr_010_4a15:
    jr jr_010_4a06

Call_010_4a17:
    ld hl, $cc21
    ld a, [hl]
    inc [hl]
    inc hl
    or a
    jr nz, jr_010_4a24

    ld [hl], $00
    jr jr_010_4a33

jr_010_4a24:
    cp $06
    jr nz, jr_010_4a2c

    ld [hl], $01
    jr jr_010_4a33

jr_010_4a2c:
    cp $0c
    jr c, jr_010_4a33

    dec hl
    ld [hl], $00

jr_010_4a33:
    ld a, [$cc25]
    ld b, a
    ld a, [$cc26]
    ld c, a
    call Call_010_4a49
    ld a, [$cc22]
    ld b, a
    ld a, [$cc28]
    call Call_010_4a8d
    ret


Call_010_4a49:
    ld a, b
    add a
    add $02
    add a
    add a
    add a
    ldh [$ff9b], a
    ld a, c
    add a
    add $01
    add a
    add a
    add a
    ldh [$ff9c], a
    ret


Call_010_4a5c:
    ret


Call_010_4a5d:
    ld e, $00

jr_010_4a5f:
    push de
    ld b, $07
    ld a, [$cc27]
    ld c, e
    ld d, e
    set 2, d
    cp e
    jr nz, jr_010_4a6d

    ld d, e

jr_010_4a6d:
    push de
    ld l, e
    ld h, $00
    add hl, hl
    ld d, $00
    add hl, de
    ld e, $01
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9811
    add hl, de
    pop de
    call Call_010_4877
    pop de
    inc e
    ld a, e
    cp $04
    jr c, jr_010_4a5f

    ret


Call_010_4a8d:
    push af
    ld a, b
    xor $01
    and $01
    ldh [$ffac], a
    xor a
    ldh [$ffab], a
    ld [$ce56], a
    pop af
    ld hl, $4aa2
    jp Jump_000_01aa


    nop
    nop
    ld de, $0801
    nop
    add c
    nop
    ld [$0841], sp
    ld [$80c1], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    cp c
    add [hl]
    or [hl]
    adc a
    adc a
    adc c
    adc c
    adc c
    xor c
    ld b, $86
    add b
    jr nc, jr_010_4acf

jr_010_4acf:
    jr c, jr_010_4ad1

jr_010_4ad1:
    sbc [hl]
    ld h, b
    ld h, [hl]
    ldh a, [$fff0]
    jr nc, jr_010_4b09

    jr nc, jr_010_4b0c

    ldh [$ffe1], a
    nop
    rlca
    nop
    rrca
    adc b
    xor d
    adc b
    adc d
    sub b
    sbc c
    and a
    cp a
    adc b
    adc b
    ld [bc], a
    and e
    add b
    jr c, jr_010_4af0

    dec a

jr_010_4af0:
    ld b, b
    ld a, l
    ld b, b
    ld h, b
    jr @-$06

    add e
    rst $08
    ret nz

    ldh [rP1], a
    ld bc, $1606
    add hl, bc
    xor c
    ld e, a
    ccf
    add b
    nop
    nop
    cp a
    add b
    cp a
    add b

jr_010_4b09:
    cp a
    add b
    cp a

jr_010_4b0c:
    add b
    cp a
    add b
    cp a
    ld a, [$01fc]
    nop
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
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
    cp a
    add b
    nop
    ld b, b
    ccf
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld bc, $0200
    db $fc
    ld a, h
    cp $38
    cp $10
    cp $10
    xor $38
    add $7c
    add d
    cp $00
    nop
    nop
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
    add b
    add b
    nop

jr_010_4b5e:
    ld b, b
    ccf
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0200
    db $fc
    add d
    ld a, h
    add $38
    xor $10
    xor $00
    add $00
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    rst $10
    rst $10
    db $fc
    rst $38
    rst $38
    jr z, jr_010_4b5e

    rst $10
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
    rst $38
    nop
    nop

jr_010_4b9d:
    nop
    nop
    nop
    nop
    nop
    xor b
    sub $d6
    ld a, [hl]
    cp $fe
    jr z, jr_010_4c00

    sub $00
    nop
    nop
    nop
    nop
    inc [hl]
    ld a, b
    ld a, b
    nop
    inc [hl]
    ld a, b
    ld a, b
    nop
    inc [hl]
    ld a, b
    inc [hl]
    ld a, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    ld [hl], h
    ld d, b
    inc [hl]
    ld a, b
    inc [hl]
    ld a, b
    ld c, b
    jr nc, jr_010_4c0d

    ld a, b
    ld c, b
    jr nc, jr_010_4c11

    ld a, b
    nop
    nop
    ld b, h
    jr c, jr_010_4b9d

    ld l, h
    ld l, h
    xor $44
    add d
    ld l, h
    xor $ba
    ld l, h
    ld b, h
    jr c, jr_010_4bef

jr_010_4bef:
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld d, a
    rra
    ld c, [hl]
    rra
    ld e, h
    inc e
    ld e, c
    inc e
    ld d, c
    inc e

jr_010_4c00:
    nop
    nop
    rst $38
    nop
    rlca
    nop
    dec bc
    ld hl, sp+$15
    db $fc
    dec c
    inc e
    jp hl


jr_010_4c0d:
    inc c
    pop hl
    inc c
    nop

jr_010_4c11:
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld d, a
    rra
    ld c, [hl]
    rra
    ld e, h
    rra
    ld e, b
    rra
    ld d, b
    rra
    nop
    nop
    rst $38
    nop
    ld bc, $0900
    db $fc
    dec d
    db $fc
    ld bc, $0f00
    nop
    xor a
    ldh [rP1], a
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld d, a
    rra
    ld c, [hl]
    rra
    ld e, h
    rra
    ld b, b
    inc bc
    ld a, h
    ld bc, $0000
    rst $38
    nop
    ld bc, $0900
    db $fc
    dec d
    db $fc
    dec l
    db $fc
    ld b, c
    ldh [$ff9f], a
    ret nz

    ld b, b
    inc e
    ld b, d
    rra
    ld b, l
    rra
    ld c, b
    inc e
    ld d, l
    inc e
    ld c, l
    inc e
    ld b, c
    nop
    ld a, a
    nop
    ld bc, $c31c
    ld hl, sp-$79
    ldh a, [rNR13]
    ld a, b
    and l
    inc a
    call $c11c
    nop
    rst $38
    nop
    ld b, c
    rra
    ld b, d
    rra
    ld b, l
    rra
    ld c, e
    rra
    ld d, [hl]
    rra
    ld c, h
    rra
    ld b, b
    nop
    ld a, a
    nop
    ld l, a
    ldh [rIF], a
    nop
    ld a, a
    nop
    ld bc, $2500
    db $fc
    ld c, l
    db $fc
    ld bc, $ff00
    nop
    ld a, l
    ld bc, $017c
    ld a, l
    ld bc, $017d
    ld a, h
    ld bc, $017c
    ld a, h
    nop
    ld a, a
    nop
    ld e, a
    ret nz

    rst $18
    ret nz

    sbc a
    ret nz

    rra
    ret nz

    rra
    ret nz

    ld e, a
    ret nz

    rra
    nop
    rst $38
    nop
    ld e, a
    ccf
    add b
    nop
    ld [bc], a
    cp d
    add b
    cp b
    add e
    cp e
    add b
    or h
    add b
    or a
    add [hl]
    or a
    ld a, [$00fc]
    nop
    inc b
    dec d
    inc c
    db $ed
    inc b
    ld [hl], l
    nop
    di
    ld h, b
    db $fd
    ldh a, [$fffd]
    ld e, a
    ccf
    add b
    nop
    ld [$939f], sp
    cp e
    add b
    add e
    sub b
    cp e
    sub b
    cp b
    sub b
    cp a
    ld a, [$00fc]
    nop
    nop
    db $fc
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    ld a, $00
    cp $5f
    ccf
    add b
    nop
    nop
    or l
    add b
    or h
    add b
    or c
    add [hl]
    or [hl]
    add b
    or c
    add l
    and a
    ld a, [$00fc]
    nop
    db $10
    db $db
    jr nz, jr_010_4d3b

    nop
    sub e
    nop
    db $e3
    nop
    di
    sbc b
    ei
    ld e, a
    ccf
    add b
    nop
    nop
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
    add b
    ld a, [$01fc]
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    add l
    add l
    add c
    and c
    adc a
    adc a
    sbc a
    sbc a
    adc h
    xor h
    nop

jr_010_4d3b:
    or b
    add e
    dec sp
    nop
    inc a
    jr nc, jr_010_4d7f

    jr nc, @+$35

    ld hl, sp-$08
    sbc b
    sbc d
    ld hl, $5a21
    ld e, e
    add d
    add d
    ld [bc], a
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
    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    ld l, e
    ld l, e
    ld [hl], e
    ld [hl], e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    jr jr_010_4d8c

    jr c, jr_010_4dae

    jr jr_010_4d90

    jr jr_010_4d92

    jr jr_010_4d94

    jr jr_010_4d96

    inc a

jr_010_4d7f:
    inc a
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld c, $0e
    jr jr_010_4da4

jr_010_4d8c:
    jr nc, jr_010_4dbe

    ld a, a
    ld a, a

jr_010_4d90:
    nop
    nop

jr_010_4d92:
    ld a, $3e

jr_010_4d94:
    ld h, e
    ld h, e

jr_010_4d96:
    inc bc
    inc bc
    ld e, $1e
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld b, $06

jr_010_4da4:
    ld c, $0e
    ld d, $16
    ld h, $26
    ld a, a
    ld a, a
    ld b, $06

jr_010_4dae:
    rrca
    rrca
    nop
    nop
    ld a, a
    ld a, a
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld h, e
    ld h, e

jr_010_4dbe:
    ld a, $3e
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld h, [hl]
    ld h, [hl]
    inc c
    inc c
    jr jr_010_4df4

    jr jr_010_4df6

    jr jr_010_4df8

    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, $3e

jr_010_4df4:
    ld h, e
    ld h, e

jr_010_4df6:
    ld h, e
    ld h, e

jr_010_4df8:
    ccf
    ccf
    inc bc
    inc bc
    ld b, $06
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    scf
    scf
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    scf
    scf
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    inc sp
    inc sp
    dec [hl]
    dec [hl]
    inc a
    inc a
    dec [hl]
    dec [hl]
    inc sp
    inc sp
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    inc sp
    inc sp
    dec [hl]
    dec [hl]
    inc a
    inc a
    inc [hl]
    inc [hl]
    jr nc, jr_010_4e8e

    ld a, b
    ld a, b
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld e, $1e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_010_4e8e:
    ld e, $1e
    nop
    nop
    rrca
    rrca
    ld b, $06
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, a
    ld h, a
    nop
    nop
    ld a, h
    ld a, h
    jr nc, jr_010_4ee6

    jr nc, jr_010_4ee8

    jr nc, jr_010_4eea

    ld sp, $3331
    inc sp
    ld a, a
    ld a, a
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld h, e
    ld h, e
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e

jr_010_4ee6:
    ld h, e
    ld h, e

jr_010_4ee8:
    ld h, e
    ld h, e

jr_010_4eea:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    inc a

Jump_010_4f03:
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, a
    ld h, a
    nop
    nop
    ld a, $3e
    ld [hl], e
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld a, $3e
    rlca
    rlca
    ld h, a
    ld h, a
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    ld e, e
    ld e, e
    ld e, c
    ld e, c
    jr jr_010_4f52

    jr jr_010_4f54

    jr jr_010_4f56

    inc a
    inc a
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    scf
    scf
    ld e, $1e
    nop
    nop

jr_010_4f52:
    ld h, e
    ld h, e

jr_010_4f54:
    ld h, e
    ld h, e

jr_010_4f56:
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, $3e
    inc e
    inc e
    ld [$0008], sp
    nop
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, e
    ld d, e
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld h, a
    ld h, a
    ld b, e
    ld b, e
    nop
    nop
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    ld a, $3e
    inc e
    inc e
    inc a
    inc a
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    jr jr_010_4fa4

    jr jr_010_4fa6

    jr jr_010_4fa8

    nop
    nop
    ld a, a
    ld a, a
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_010_4fd4

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_010_4fa4:
    nop
    nop

jr_010_4fa6:
    nop
    nop

jr_010_4fa8:
    nop
    nop
    nop
    nop
    jr nc, jr_010_4fde

    jr nc, jr_010_4fe0

    rst $38
    rst $38
    ldh [$ffe0], a
    ret nz

    ret nz

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
    rst $38
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    inc d
    ld [de], a
    inc c
    inc de

jr_010_4fd4:
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f

jr_010_4fde:
    inc de
    inc c

jr_010_4fe0:
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    db $10
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $10
    inc c
    inc c
    inc c
    db $10
    jr nz, @+$23

    db $10
    inc c
    ld de, $0807
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    ld de, $0c0c
    inc c
    ld [de], a
    jr z, jr_010_5036

    ld [de], a
    inc c
    ld [de], a
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $12
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    db $10
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0c10], sp
    inc c
    inc c
    db $10
    ld [hl+], a
    inc hl
    db $10

jr_010_5036:
    inc c
    ld de, $0605
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $11
    inc c
    inc c
    inc c
    ld [de], a
    ld bc, $1202
    inc c
    ld de, $0807
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    ld de, $0c0c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    ld [de], a
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $12
    inc c
    inc c
    inc c
    db $10
    inc h
    dec h
    db $10
    inc c
    db $10
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0c10], sp
    inc c
    inc c
    ld [de], a
    inc bc
    inc b
    ld [de], a
    inc c
    ld de, $0605
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $11
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    ld [de], a
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0c12], sp
    inc c
    inc c
    db $10
    ld h, $27
    db $10
    inc c
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de
    inc c
    inc c
    inc c
    ld [de], a
    ld a, [bc]
    dec bc
    ld [de], a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de
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
    nop
    nop
    nop
    nop
    db $10
    ld de, $d300
    ret c

    jp c, $dedf

    nop
    jp c, $ddcb

    db $dd
    pop hl
    reti


    call c, Call_000_00ce
    nop
    nop
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de
    inc d
    ld [de], a
    inc c
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    db $10
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $10
    inc c
    inc c
    inc c
    db $10
    jr nz, @+$23

    db $10
    inc c
    ld de, $0807
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    ld de, $0c0c
    inc c
    ld [de], a
    jr z, jr_010_51a0

    ld [de], a
    inc c
    ld [de], a
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $12
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    db $10
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0c10], sp
    inc c
    inc c
    db $10
    ld [hl+], a
    inc hl
    db $10

jr_010_51a0:
    inc c
    ld de, $0605
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $11
    inc c
    inc c
    inc c
    ld [de], a
    ld bc, $1202
    inc c
    ld de, $0807
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    ld de, $0c0c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    ld [de], a
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $12
    inc c
    inc c
    inc c
    db $10
    inc h
    dec h
    db $10
    inc c
    db $10
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0c10], sp
    inc c
    inc c
    ld [de], a
    inc bc
    inc b
    ld [de], a
    inc c
    ld de, $0605
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $11
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc c
    ld [de], a
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0c12], sp
    inc c
    inc c
    db $10
    ld h, $27
    db $10
    inc c
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de
    inc c
    inc c
    inc c
    ld [de], a
    ld a, [bc]
    dec bc
    ld [de], a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc de
    dec c
    rrca
    inc de
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de
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
    nop
    nop
    nop
    nop
    db $10
    ld de, $0000
    nop
    nop
    nop
    jp c, $ddcb

    db $dd
    pop hl
    reti


    call c, Call_000_00ce
    nop
    nop
    nop
    nop
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    dec c
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0e
    rrca
    dec c
    ld c, $0f
    inc de

jr_010_52a4:
    ld de, $06d6

jr_010_52a7:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_010_52a7

    dec bc
    ld a, b
    or c
    jr nz, jr_010_52a4

    ret


Call_010_52b5:
    di
    ld a, $ff
    ld [$dfad], a
    call Call_010_545a
    call Call_010_5490
    xor a
    ld [$dfad], a
    ei
    ret


    di
    ld a, $ff
    ld [$dfad], a
    call Call_010_5302
    call Call_010_5490
    xor a
    ld [$dfad], a
    ei
    ret


    push bc
    push de
    ld a, $c9
    ld [$c0f0], a
    call Call_000_01c5
    pop de
    pop bc
    ld a, $ff
    ld [$dfad], a
    ld hl, $c0f3
    ld [hl], b
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], $c3
    call Call_000_01c5
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$dfad], a
    ret


Call_010_5302:
    di
    push de
    call Call_000_0270
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    ld bc, $1000
    call Call_010_555e
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_010_531e:
    ld b, $14

jr_010_5320:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_010_5320

    add hl, de
    dec c
    jr nz, jr_010_531e

    ld a, $81
    ldh [rLCDC], a
    call Call_010_5490
    pop hl
    call Call_010_545a
    call Call_010_5490
    ret


    di
    push de
    call Call_000_0270
    ld a, $e4
    ldh [rBGP], a
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_010_534b:
    ld b, $14

jr_010_534d:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_010_534d

    add hl, de
    dec c
    jr nz, jr_010_534b

    ld a, $01
    ldh [rLCDC], a
    call Call_010_5490
    pop hl
    call Call_010_52b5
    ret


    ld hl, $9800
    ld a, $80
    ld c, $0e

jr_010_5369:
    ld b, $14

jr_010_536b:
    push af
    push hl
    push bc
    call Call_000_0189
    pop bc
    pop hl
    pop af
    inc hl
    inc a
    dec b
    jr nz, jr_010_536b

    ld de, $000c
    add hl, de
    dec c
    jr nz, jr_010_5369

    ret


Call_010_5381:
jr_010_5381:
    push bc
    ld bc, $0010
    call Call_000_0183
    push hl
    push de
    ld l, e
    ld h, d
    ld a, $ff
    ld bc, $0010
    call Call_000_0186
    pop de
    ld hl, $0010
    add hl, de
    ld e, l
    ld d, h
    pop hl
    pop bc
    push hl
    ld hl, $fff0
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld a, b
    or c
    jr nz, jr_010_5381

    ret


jr_010_53aa:
    call Call_000_01c5
    call Call_000_01c8
    ld a, [$de92]
    or a
    jr z, jr_010_53aa

    ret


    add b
    nop
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld bc, $010d
    ld c, $01
    rrca
    inc bc
    db $10
    inc bc
    ld de, $1200
    nop
    inc de
    nop
    inc d
    ld bc, $0115
    ld d, $02
    rla
    inc bc
    jr jr_010_53ec

    add hl, de
    nop
    ld a, [de]

jr_010_53ec:
    nop
    dec de
    ld [bc], a
    inc e
    ld bc, $021d
    ld e, $01
    rra
    ld bc, $0220
    ld hl, $2201
    ld bc, $0223
    inc h
    ld bc, $0125
    ld h, $03
    daa
    nop
    jr z, jr_010_5409

jr_010_5409:
    add hl, hl
    ld bc, $002a
    dec hl
    inc bc
    inc l
    nop
    dec l
    inc bc
    ld l, $00
    cpl
    nop
    jr nc, jr_010_541b

    add b
    nop

jr_010_541b:
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld bc, $0105
    ld b, $01
    rlca
    ld [bc], a
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    inc c
    inc bc
    dec c
    ld [bc], a
    ld c, $03
    rrca
    inc bc
    db $10
    ld bc, $0011
    ld [de], a
    ld bc, $0213
    inc d
    nop
    dec d
    inc bc
    ld d, $02
    rla
    nop
    jr jr_010_544b

jr_010_544b:
    add hl, de
    nop

Jump_010_544d:
    ld hl, $7605
    ld bc, $01a0
    ld de, $8880
    call Call_010_5381
    ret


Call_010_545a:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00

jr_010_5461:
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

jr_010_546a:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_010_546e:
    bit 0, d
    ld a, $10
    jr nz, jr_010_5476

    ld a, $20

jr_010_5476:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, jr_010_546e

    dec b
    jr nz, jr_010_546a

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    ret z

    call Call_010_5490
    jr jr_010_5461

Call_010_5490:
    ld de, $1b58

jr_010_5493:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_010_5493

    ret


    ld hl, $5501
    call Call_010_545a
    call Call_010_5490
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_010_54e6

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_010_54e6

    ld hl, $54f1
    call Call_010_545a
    call Call_010_5490
    sub a
    ret


jr_010_54e6:
    ld hl, $54f1
    call Call_010_545a
    call Call_010_5490
    scf
    ret


    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
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
    ldh a, [rP1]
    ld b, $04
    ld c, a
    jr jr_010_551c

Jump_010_5518:
    ldh a, [rP1]
    cp c
    ret z

jr_010_551c:
    cpl
    and $03
    sla a
    ld d, $00
    ld e, a
    ld hl, $de91
    add hl, de
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld d, a
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or d
    ld d, a
    ld a, [hl+]
    xor d
    and d
    ld [hl-], a
    ld a, d
    ld [hl], a
    ld a, $30
    ldh [rP1], a
    dec b
    jp nz, Jump_010_5518

    ret


Call_010_555e:
    jp Jump_000_0180


    ret


    nop
    nop
    add d
    ld d, l
    ld b, [hl]
    sbc h
    ld [$0010], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    ld b, d
    sbc h
    ld c, l
    ld b, l
    ld d, d
    ld b, e
    nop
    nop
    nop
    xor c
    ld d, l
    ld h, [hl]
    sbc h
    ld [$0018], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    ld h, d
    sbc h
    ld d, [hl]
    ld b, l
    ld c, [hl]
    ld d, e
    nop
    nop
    nop
    ret nc

    ld d, l
    add [hl]
    sbc h
    ld [$0020], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    add d
    sbc h
    ld c, l
    ld b, c
    ld d, d
    ld d, e
    nop
    nop
    nop
    rst $30
    ld d, l
    and [hl]
    sbc h
    ld [$0028], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    and d
    sbc h
    ld c, [hl]
    ld b, l
    ld d, b
    ld d, h
    nop
    nop
    nop
    ld e, $56
    and $9c
    ld [$0038], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    ldh [c], a
    sbc h
    ld c, d
    ld d, l
    ld d, b
    ld c, c
    nop
    nop
    nop
    ld b, l
    ld d, [hl]
    ld b, $9d
    ld [$0040], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    ld [bc], a
    sbc l
    ld d, e
    ld b, c
    ld d, h
    ld c, [hl]
    nop
    nop
    nop
    ld l, h
    ld d, [hl]
    ld h, $9d
    ld [$0048], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    ld [hl+], a
    sbc l
    ld d, b
    ld c, h
    ld d, l
    ld d, h
    nop
    nop
    nop
    sub e
    ld d, [hl]
    ld b, [hl]
    sbc l
    ld [$0050], sp
    nop
    jp nc, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop de
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $dd
    ld d, [hl]
    ld h, c
    ld d, l
    ld b, d
    sbc l
    ld d, l
    ld d, d
    ld b, c
    ld c, [hl]
    nop
    nop
    nop
    cp d
    ld d, [hl]
    add [hl]
    sbc l
    ld [$0060], sp
    nop
    jp nz, $4256

    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    pop bc
    ld d, [hl]
    pop bc
    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    ret


    ld d, [hl]
    ld h, c
    ld d, l
    add d
    sbc l
    ld b, h
    ld c, l
    ld c, a
    ld c, [hl]
    nop
    ret


    xor a
    ld de, $df36
    jp Jump_010_5720


    xor a
    ld de, $df36
    jp Jump_010_572b


    ret


    ret


    ld a, [$df49]
    sub $00
    ld de, $df35
    jp Jump_010_5720


    ld a, [$df49]
    sub $00
    ld de, $df35
    jp Jump_010_572b


    nop
    nop
    ld [$a657], sp
    sbc l
    ld [$0068], sp
    nop
    jr jr_010_574b

    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    rla
    ld d, a
    rla
    ld d, a
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    rrca
    ld d, a
    ld h, c
    ld d, l
    and d
    sbc l
    ld b, l
    ld b, c
    ld d, d
    ld d, h
    nop
    ld a, $01
    ld de, $df36
    jp Jump_010_572b


    ret


    ld a, $01
    ld de, $df36
    jp Jump_010_5720


Jump_010_5720:
    push de
    call Call_000_0261
    pop de
    ld a, [de]
    xor b
    ld [de], a
    jp Jump_010_5e9b


Jump_010_572b:
    push de
    call Call_000_0261
    pop de
    ld a, [de]
    and b
    ld a, $fe
    jr nz, jr_010_5738

    ld a, $ff

jr_010_5738:
    push af
    ld c, $04
    call Call_010_5f9f
    pop af
    jp Jump_000_0189


    nop
    nop
    ld h, d
    ld d, a
    pop af
    sbc l
    ld b, b
    ld a, b
    nop

jr_010_574b:
    nop
    ld l, b
    ld d, a
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ld l, b
    ld d, a
    ld l, b
    ld d, a
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    ld a, h
    ld d, a
    ld h, c
    ld d, l
    jp hl


    sbc l
    ld b, d
    ld c, e
    ld c, c
    nop
    call Call_010_579e
    dec b
    ld de, $0001
    jr z, jr_010_5774

    ld de, $1fff

jr_010_5774:
    ld a, e
    ld [$de9c], a
    ld a, d
    ld [$de9d], a
    call Call_010_579e
    ld a, b
    ld de, $5795
    or a
    jr z, jr_010_578f

    ld de, $5798
    dec a
    jr z, jr_010_578f

    ld de, $579b

jr_010_578f:
    ld hl, $9df1
    jp Jump_010_4938


    ld c, [hl]
    ld c, h
    nop
    ld b, [hl]
    ld c, h
    nop
    jr nz, jr_010_57bd

    nop

Call_010_579e:
    ld hl, $de9c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0001
    call Call_010_6dd9
    ld b, $00
    ret z

    ld de, $1fff
    call Call_010_6dd9
    ld b, $01
    ret z

    ld b, $02
    ret


    inc sp
    rst $18
    reti


    ld d, a

jr_010_57bd:
    dec b
    sbc [hl]
    nop
    add b
    rst $18
    ld d, a
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ldh [c], a
    ld d, a
    add sp, $57
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ld bc, $4e9e
    ld d, d
    ld b, d
    nop
    nop
    ld [bc], a
    rst $38
    call Call_010_57ee
    jp Jump_010_5ec9


    call Call_010_57ee
    jp Jump_010_5ee1


Call_010_57ee:
    ld hl, $de9b
    ld a, [hl]
    or a
    ret nz

    ld a, $01
    ld [$d1f2], a
    ret


    inc [hl]
    rst $18
    ld a, [de]
    ld e, b
    ld d, c
    sbc l
    ld l, b
    ld d, b
    rra
    ld e, b
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld [hl+], a
    ld e, b
    dec hl
    ld e, b
    ld h, c
    ld d, l
    ld c, [hl]
    sbc l
    ld e, d
    ld b, c
    nop
    ld bc, $ff0a
    ld hl, $df34
    ld a, [hl]
    or a
    ret nz

    ld [hl], $01
    ret


    ld a, [$df34]
    dec a
    jp Jump_010_5eaa


    nop
    nop
    ld d, d
    ld e, b
    ld c, e
    sbc h
    ld b, b
    stop
    nop
    ret z

    ld e, b
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    rst $00
    ld e, b
    add $58
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $d3
    ld e, b
    ld h, c
    ld d, l
    ld c, c
    sbc h
    ld b, e
    ld sp, $0000
    nop
    ld [hl], a
    ld e, b
    ld l, e
    sbc h
    ld b, b
    jr jr_010_5860

jr_010_5860:
    nop
    ret z

    ld e, b
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    rst $00
    ld e, b
    add $58
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $d3
    ld e, b
    ld h, c
    ld d, l
    ld l, c
    sbc h
    ld b, e
    ld [hl-], a
    nop
    nop
    nop
    sbc h
    ld e, b
    adc e
    sbc h
    ld b, b
    jr nz, jr_010_5885

jr_010_5885:
    nop
    ret z

    ld e, b
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    rst $00
    ld e, b
    add $58
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $d3
    ld e, b
    ld h, c
    ld d, l
    adc c
    sbc h
    ld b, e
    inc sp
    nop
    nop
    nop
    pop bc
    ld e, b
    xor e
    sbc h
    ld b, b
    jr z, jr_010_58aa

jr_010_58aa:
    nop
    ret z

    ld e, b
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    rst $00
    ld e, b
    add $58
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    db $d3
    ld e, b
    ld h, c
    ld d, l
    xor c
    sbc h
    ld b, e
    inc [hl]
    nop
    ret


    ret


    ld a, [$df49]
    sub $0c
    ld de, $df37
    jp Jump_010_5720


    ld a, [$df49]
    sub $0c
    ld de, $df37
    jp Jump_010_572b


    sbc b
    rst $18
    cp $58
    db $eb
    sbc h
    jr c, @+$3a

    inc b
    ld e, c
    ld [$1159], sp
    ld e, c
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    rlca
    ld e, c
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    add sp, -$64
    ld d, e
    ld d, e
    ld b, c
    nop
    nop
    jr nc, @+$01

    ret


    ld d, $00
    ld a, [$df98]
    ld e, a
    jp Jump_000_02f1


    ld d, $ff
    call Call_000_02f1
    ret


    sbc c
    rst $18
    scf
    ld e, c
    dec bc
    sbc l
    jr c, jr_010_595f

    dec a
    ld e, c
    ld b, c
    ld e, c
    ld de, $6159
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]

jr_010_592b:
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld b, b
    ld e, c
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ld [$539d], sp
    ld d, e
    ld b, d
    nop
    nop
    add hl, de
    rst $38
    ret


    ld d, $80
    ld a, [$df99]
    ld e, a
    jp Jump_000_02f1


    jr c, jr_010_592b

    ld l, d
    ld e, c
    ld d, c
    sbc h
    ld l, b
    db $10
    ld l, a
    ld e, c
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl

jr_010_595f:
    ld e, [hl]
    ld sp, hl
    ld e, [hl]

jr_010_5962:
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ld c, [hl]
    sbc h
    ld c, l
    ld b, l
    nop
    nop
    db $10
    rst $38
    ld a, [hl-]
    rst $18
    sub d
    ld e, c
    ld [hl], c
    sbc h
    ld l, b
    jr @-$67

    ld e, c
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ld l, [hl]
    sbc h
    ld d, a
    ld d, b
    nop
    nop
    inc b
    rst $38
    dec sp
    rst $18
    cp d
    ld e, c
    sub c
    sbc h
    ld l, b
    jr nz, jr_010_5962

    ld e, c
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]

jr_010_59b2:
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    adc [hl]
    sbc h
    ld d, e
    ld d, b
    nop
    nop
    ld bc, $3cff
    rst $18
    ldh [c], a
    ld e, c
    or c
    sbc h
    ld l, b
    jr z, jr_010_59b2

    ld e, c
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    xor [hl]
    sbc h
    ld b, l
    ld b, d
    nop
    nop
    ld bc, $7bff
    rst $18
    ld a, [bc]
    ld e, d
    pop de
    sbc h
    ld l, b
    jr nc, jr_010_5a02

    ld e, d
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]

jr_010_5a02:
    inc b
    ld e, a
    ld h, c

jr_010_5a05:
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    adc $9c
    ld b, e
    ld c, h
    nop
    nop
    ld bc, $7aff
    rst $18
    ld [hl-], a
    ld e, d
    pop af
    sbc h
    ld l, b
    jr c, jr_010_5a52

    ld e, d
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    xor $9c
    ld c, l
    ld c, b
    nop
    nop
    ld bc, $7cff
    rst $18
    ld e, d
    ld e, d
    ld de, $689d
    ld b, b
    ld e, a
    ld e, d
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]

jr_010_5a52:
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ld c, $9d
    ld d, b
    ld b, a
    nop
    nop
    ld bc, $4bff
    rst $18
    add d
    ld e, d
    jr nc, jr_010_5a05

    ld l, b
    ld c, b
    add a
    ld e, d
    sbc [hl]
    ld e, d
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    adc d
    ld e, d
    sbc a
    ld e, d
    ld h, c
    ld d, l
    ld l, $9d
    ld d, b
    ld b, e
    nop
    nop
    ld sp, hl
    rst $38
    ld hl, $df3d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ld [$df4b], a
    jr jr_010_5a9f

    ret


jr_010_5a9f:
    ld c, $04
    call Call_010_5f9f
    ld a, l
    ldh [$ffa7], a
    ld a, h
    ldh [$ffa8], a
    ld a, [$df4b]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, $03
    ld b, $00
    ld de, $5adf
    call Call_010_40ba
    ret


    call Call_010_5f9d
    ld a, h
    or l
    ret z

    ld a, [hl]
    push af
    ld c, $04
    call Call_010_5f9f
    ld a, l
    ldh [$ffa7], a
    ld a, h
    ldh [$ffa8], a
    pop af
    ld h, $00
    ld l, a
    ld a, $02
    ld b, $00
    ld de, $5adf
    call Call_010_40ba
    ret


    ld a, c
    or b
    jr nz, jr_010_5ae7

    ld a, $c0
    jr jr_010_5aea

jr_010_5ae7:
    ld a, c
    add $c1

jr_010_5aea:
    push af
    ld hl, $ffa7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_0189
    inc hl
    ld a, l
    ldh [$ffa7], a
    ld a, h
    ldh [$ffa8], a
    ret


    rlca
    rst $18
    dec e
    ld e, e
    ld [hl], c
    sbc l
    ld b, b
    ld e, b
    dec h
    ld e, e
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ld l, c
    sbc l
    ld c, b
    ld b, l
    ld d, d
    ld b, c
    ld e, d
    nop
    nop
    ld bc, $09ff
    rst $18
    ld c, b
    ld e, e
    sub c
    sbc l
    ld b, b
    ld h, b
    ld d, d
    ld e, e
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    adc c
    sbc l
    ld c, l
    ld d, l
    ld d, h
    ld b, l
    ld c, e
    ld c, c
    ld c, l
    nop
    nop
    ld [bc], a
    rst $38
    adc d
    sbc $75
    ld e, e
    or c
    sbc l
    ld b, b
    ld l, b
    ld e, b
    rst $18
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    or a
    ld e, e
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    add [hl]
    ld e, e
    and e
    ld e, [hl]
    and a
    ld e, e
    xor c
    sbc l
    ld b, e
    ld c, [hl]
    ld d, h
    ld c, [hl]
    ld d, l
    ld d, b
    ld d, h
    nop
    dec c
    rrca
    db $10
    inc b
    ld a, [bc]
    ld [bc], a
    rst $38

Call_010_5b86:
    ld hl, $5b7f
    ld a, [$df4a]
    ld d, a
    ld c, $02
    ld e, $ff
    call Call_010_4080
    ld a, $02
    jr c, jr_010_5b9a

    inc hl
    ld a, [hl]

jr_010_5b9a:
    ld hl, $df58
    ld [hl], $00
    inc hl
    ld [hl], a
    inc hl
    ld [hl], $ff
    jp Jump_010_5ea3


    call Call_010_5b86
    ld b, $01
    jp Jump_010_5f0f


Call_010_5baf:
    rst $08
    nop
    ld hl, $ded4
    ld [hl], $00
    ret


    call Call_010_5d24
    xor a
    ld [$df0b], a
    ld [$dedb], a
    ld a, [$df4a]
    ld [$df0a], a
    call Call_010_5baf
    ld a, [$de8a]
    jp Jump_000_029a


    ld c, d
    rst $18
    ldh a, [$ff5b]
    pop de
    sbc l
    ld b, b
    ld [hl], b
    ld c, e
    nop
    ld h, c
    ld d, l
    ld b, d
    ld e, l
    ld h, c
    ld d, l
    ld b, $5c
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld sp, hl
    ld e, e
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    ret


    sbc l
    ld d, e
    ld d, h
    ld b, c
    ld b, a
    ld b, l
    ld b, h
    nop
    ld a, [$df0a]
    or a
    jr nz, jr_010_5c00

    inc a

jr_010_5c00:
    ld [$df4a], a
    jp Jump_010_5ea3


    call Call_010_5d24
    call Call_010_5baf
    xor a
    ld [$dedb], a
    ld a, [$df4a]
    jp Jump_000_0297


    ld c, h
    rst $18
    ld [hl], $5c
    rrca
    sbc [hl]
    ld b, b
    add b
    ld [hl], d
    nop
    ld b, c
    ld e, h
    ld a, $5c
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld b, a
    ld e, h
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    add hl, bc
    sbc [hl]
    ld d, e
    ld c, [hl]
    ld b, h
    ld c, [hl]
    ld c, a
    nop
    rst $08
    nop
    ret


    ld a, [$df4c]
    jp Jump_000_0222


    ret


    ld a, e
    rst $08
    ld l, b
    ld e, h
    and $9d
    nop
    ld a, b
    ld [hl], b
    ld e, h
    ld a, b
    ld e, h
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ret


    ld e, [hl]
    pop hl
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld [hl], e
    ld e, h
    ldh a, [$ff5c]
    ld [hl], e
    ld e, h
    pop hl
    sbc l
    ld c, l
    ld d, e
    ld b, a
    ld c, [hl]
    ld c, a
    nop
    ld bc, $ff3c
    ld b, $00
    jp Jump_010_5f0f


    call Call_000_01d1
    call Call_000_01c5
    ld hl, $9c00
    ld bc, $0240
    ld a, $c0
    call Call_000_0186
    ld a, [$cf7b]
    push af
    ld a, $80
    ld [$cf7b], a
    call Call_010_5cc6
    pop af
    ld [$cf7b], a
    call Call_010_5cc6
    ld a, [$cf89]
    or a
    jr nz, jr_010_5cba

    ld hl, $5ced
    ld bc, $0003
    ld de, $9d28
    call Call_000_0183

jr_010_5cae:
    call Call_000_01c5
    call Call_000_01c8
    ld a, [$de92]
    or a
    jr z, jr_010_5cae

jr_010_5cba:
    ld hl, $cf7b
    inc [hl]
    ld b, $00
    call Call_010_5f15
    jp Jump_010_5da7


Call_010_5cc6:
    ld a, $a0
    ld [$cf86], a
    ld a, $3c
    ld [$de88], a
    ld a, $05
    ld [$cf7c], a
    xor a
    ld [$cf7d], a
    ld [$cf7e], a
    ld de, $0000
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    call Call_000_02d3
    xor a
    ld [$de88], a
    ret


    rst $08
    ret c

    adc $fa
    ld a, e
    rst $08
    dec a
    jp Jump_010_5eaa


    nop
    nop
    rla
    ld e, l
    ld [hl], $9e
    ld [hl], b
    adc b
    nop
    nop
    ld e, $5d
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ld e, $5d
    ld h, c
    ld d, l
    ld h, c
    ld d, l
    ld sp, hl
    ld e, [hl]
    inc b
    ld e, a
    ld h, c
    ld d, l
    and e
    ld e, [hl]
    ld h, c
    ld d, l
    cpl
    sbc [hl]
    jr nz, jr_010_5d6d

    ld b, l
    ld d, h
    nop
    call Call_010_5d24
    jp Jump_010_5e07


Call_010_5d24:
    xor a
    ld [$deea], a
    ld [$dee3], a
    ld [$dee9], a
    ld a, [$df4b]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    ld [$df3d], a
    ld a, h
    ld [$df3e], a
    call Call_010_4205
    ret


    ld a, $21
    ld [$df49], a
    ret


    ld h, d
    ld d, l
    adc c
    ld d, l
    or b
    ld d, l
    rst $10
    ld d, l
    cp $55
    dec h
    ld d, [hl]
    ld c, h
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    sbc d
    ld d, [hl]
    add sp, $56
    ld c, b
    ld e, h
    cp c
    ld d, a
    ld [hl-], a
    ld e, b
    ld d, a
    ld e, b
    ld a, h
    ld e, b
    and c
    ld e, b
    sbc $58
    rla
    ld e, c
    ld c, d

jr_010_5d6d:
    ld e, c
    ld [hl], d
    ld e, c
    sbc d
    ld e, c
    jp nz, $ea59

    ld e, c
    ld [de], a
    ld e, d
    ld a, [hl-]
    ld e, d
    ld h, d
    ld e, d
    ld a, [$fd57]
    ld e, d
    jr z, jr_010_5ddd

    ld d, l
    ld e, e
    ret nc

    ld e, e
    ld b, d
    ld d, a
    ld d, $5c
    rst $30
    ld e, h

Jump_010_5d8c:
    ld [$df47], sp
    ld a, [$de87]
    ld hl, $df52
    ld [hl+], a
    ldh a, [rOBP0]
    ld [hl+], a
    ld a, [$de96]
    ld [hl+], a
    ldh a, [rWY]
    ld [hl+], a
    ldh a, [rWX]
    ld [hl+], a
    ld a, [$de42]
    ld [hl+], a

Jump_010_5da7:
    ld hl, $df47
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    call Call_000_01d1
    ld a, [$de87]
    ld a, $e3
    ld [$de87], a
    ld a, $1c
    ldh [rOBP0], a
    ld a, $07
    ldh [rWX], a
    ld a, $00
    ldh [rWY], a
    ld [$de42], a
    call Call_010_5fb5
    call Call_010_5e37

jr_010_5dce:
    call Call_000_01c5
    call Call_000_01d1
    call Call_010_5e7b
    call Call_010_408d
    ld a, [$de95]

jr_010_5ddd:
    ld c, $0a
    ld b, $08

jr_010_5de1:
    rrca
    jr c, jr_010_5deb

    inc c
    inc c
    dec b
    jr nz, jr_010_5de1

    jr jr_010_5dce

jr_010_5deb:
    ld a, [$df49]
    push af
    call Call_010_5f9f
    call Call_010_5e2d
    pop af
    ld b, a
    ld a, [$df49]
    cp b
    jr z, jr_010_5dce

    ld c, $1e
    call Call_010_5f9f
    call Call_010_5e2d
    jr jr_010_5dce

Jump_010_5e07:
    call Call_000_01d1
    call Call_010_408d
    ld hl, $df52
    ld a, [hl+]
    ld [$de87], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ld [$de96], a
    ld a, [hl+]
    ldh [rWY], a
    ld a, [hl+]
    ldh [rWX], a
    ld a, [hl+]
    ld [$de42], a
    ld hl, $df47
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ret


Call_010_5e2d:
Jump_010_5e2d:
    jp hl


    rlca
    sbc h
    ld d, h
    ld b, l
    ld c, l
    ld c, a
    ld d, d
    ld c, c
    nop

Call_010_5e37:
    ld hl, $9c00
    ld bc, $0240
    ld a, $c0
    call Call_000_0186
    ld a, [$df49]
    push af
    ld de, $5e2e
    call Call_010_5e72
    xor a

jr_010_5e4d:
    ld [$df49], a
    ld c, $02
    call Call_010_5f9f
    ld e, l
    ld d, h
    call Call_010_5e72
    ld c, $1a
    call Call_010_5f9f
    call Call_010_5e2d
    call Call_010_5e9b
    ld a, [$df49]
    inc a
    cp $22
    jr c, jr_010_5e4d

    pop af
    ld [$df49], a
    ret


Call_010_5e72:
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    jp Jump_010_4938


Call_010_5e7b:
    ld c, $06
    call Call_010_5f9f
    ld a, h
    add $10
    ld [$c09c], a
    ld a, l
    add $08
    ld [$c09d], a
    ld a, $fd
    ld [$c09e], a
    ld a, [$de82]
    rlca
    and $10
    ld [$c09f], a
    ret


Call_010_5e9b:
Jump_010_5e9b:
    ld c, $1c
    call Call_010_5f9f
    jp Jump_010_5e2d


Jump_010_5ea3:
    call Call_010_5f9d
    ld a, h
    or l
    ret z

    ld a, [hl]

Jump_010_5eaa:
    push af
    ld c, $04
    call Call_010_5f9f
    pop af
    ld b, a
    swap a
    call Call_010_5eb8
    ld a, b

Call_010_5eb8:
    push bc
    and $0f
    add $c1
    call Call_000_0189
    pop bc
    inc hl
    ret


    or a
    ret


    ret


    ret


    or a
    ret


Jump_010_5ec9:
    ld a, [$de91]
    and $03
    ld b, $01
    jr z, jr_010_5ed4

    ld b, $10

jr_010_5ed4:
    push bc
    call Call_010_5f9d
    pop bc
    ld a, [hl]
    add b
    ld [hl], a
    ld b, $00
    jp Jump_010_5f0f


Jump_010_5ee1:
    ld a, [$de91]
    and $03
    ld b, $01
    jr z, jr_010_5eec

    ld b, $10

jr_010_5eec:
    push bc
    call Call_010_5f9d
    pop bc
    ld a, [hl]
    sub b
    ld [hl], a
    ld b, $ff
    jp Jump_010_5f0f


    ld hl, $df49
    dec [hl]
    ld a, [hl]
    cp $22
    ret c

    ld [hl], $21
    ret


    ld hl, $df49
    inc [hl]
    ld a, [hl]
    cp $22
    ret c

    ld [hl], $00
    ret


Jump_010_5f0f:
    call Call_010_5f15
    jp Jump_010_5e9b


Call_010_5f15:
    ld a, b
    ld [$df4d], a
    call Call_010_5f9d
    push hl
    ld c, $08
    call Call_010_5f9f
    pop de
    ld a, h
    or l
    ret z

    ld a, l
    ld [$df4e], a
    ld a, h
    ld [$df4f], a
    call Call_010_5f7f
    ret nc

    ld hl, $df4e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$df4d]
    or a
    jr nz, jr_010_5f53

jr_010_5f3e:
    ld a, [hl]
    cp $ff
    jr z, jr_010_5f4b

    ld a, [de]
    cp [hl]
    jr c, jr_010_5f7c

    inc hl
    inc hl
    jr jr_010_5f3e

jr_010_5f4b:
    ld hl, $df4e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_010_5f7c

jr_010_5f53:
    ld a, [hl]
    cp $ff
    jr z, jr_010_5f5c

    inc hl
    inc hl
    jr jr_010_5f53

jr_010_5f5c:
    dec hl
    ld a, l
    ld [$df50], a
    ld a, h
    ld [$df51], a
    ld a, [$df4e]
    dec a
    ld b, a

jr_010_5f6a:
    ld a, l
    cp b
    jr z, jr_010_5f76

    ld a, [de]
    cp [hl]
    jr nc, jr_010_5f7c

    dec hl
    dec hl
    jr jr_010_5f6a

jr_010_5f76:
    ld hl, $df50
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_010_5f7c:
    ld a, [hl]
    ld [de], a
    ret


Call_010_5f7f:
    ld b, $00

jr_010_5f81:
    ld a, [hl]
    cp $ff
    jr nz, jr_010_5f8b

    ld a, b
    or a
    ret z

    scf
    ret


jr_010_5f8b:
    ld a, [de]
    cp [hl]
    jr c, jr_010_5f98

    inc hl
    ld c, [hl]
    inc c
    ret z

    cp c
    jr nc, jr_010_5f99

    or a
    ret


jr_010_5f98:
    inc hl

jr_010_5f99:
    inc hl
    inc b
    jr jr_010_5f81

Call_010_5f9d:
    ld c, $00

Call_010_5f9f:
    push bc
    ld a, [$df49]
    ld hl, $5d48
    call Call_000_016e
    pop bc
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_010_5fb5:
    call Call_010_497c
    ld hl, $5fc5
    ld de, $8fd0
    ld bc, $0030
    call Call_000_0183
    ret


    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $20
    add c
    jp $c381


    add c
    rst $20
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld [hl+], a
    ld [hl+], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]

Call_010_5ff5:
    ld hl, $5ffe
    ld bc, $0400
    jp Jump_000_0183


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    add b
    rst $38
    ret


    rst $38
    ret


    rst $38
    add b
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    pop bc
    rst $38
    sub [hl]
    rst $38
    rst $00
    rst $38
    pop af
    rst $38
    or h
    rst $38
    pop bc
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    xor b
    rst $38
    add c
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    adc d
    rst $38
    sbc b
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    call nz, $baff
    rst $38
    cp l
    rst $38
    jp nz, $ffff

    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push de
    rst $38
    db $e3
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    push de
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
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
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    sub h
    rst $38
    adc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $ffff


    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop af
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    reti


    rst $38
    add b
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    sbc c
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    jp $ffff


    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    jp $99ff


    rst $38
    sbc c
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    and d
    rst $38
    xor [hl]
    rst $38
    xor [hl]
    rst $38
    and d
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    db $dd
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    add c
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    sbc h
    rst $38
    jp nz, $ffff

    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    jp $ffff


    rst $38
    sbc h
    rst $38
    sbc c
    rst $38
    sub e
    rst $38
    add a
    rst $38
    sub e
    rst $38
    sbc c
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    add b
    rst $38
    sub h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    adc h
    rst $38
    add h
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sub h
    rst $38
    sbc b
    rst $38
    sbc l
    rst $38
    jp nz, $ffff

    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    pop bc
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sub h
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    sbc c
    rst $38
    jp $e7ff


    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    jp $f3ff


    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    jp $ffff


    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $c3ff


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    inc d
    ld [de], a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$6209], sp
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld d, $17
    jr jr_010_645c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_010_646c

    ld [hl+], a
    inc hl
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc h
    dec h
    ld h, $27
    jr z, jr_010_6482

    ld a, [hl+]
    dec hl
    inc l

jr_010_645c:
    dec l
    ld l, $2f
    jr nc, jr_010_6492

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_010_646c:
    jr c, jr_010_64a7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, d
    ld b, a
    ld c, b
    ld c, c

jr_010_6482:
    ld c, d
    ld c, e
    ld c, h
    ld b, d
    ld c, l
    ld h, d
    ld c, [hl]
    ld b, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d

jr_010_6492:
    ld h, d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d

jr_010_64a7:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld e, h
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    and a
    and c
    xor l
    and l
    ld h, d
    or e
    or h
    and c
    or d
    or h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    or b
    and c
    or e
    or e
    ld h, d
    or a
    xor a
    or d
    and h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    and b
    and e
    and c
    or b
    and e
    xor a
    xor l
    ld h, d
    sub c
    sbc c
    sbc c
    sub h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    and b
    and e
    and c
    or b
    and e
    xor a
    xor l
    ld h, d
    or l
    adc [hl]
    or e
    adc [hl]
    and c
    adc [hl]
    adc h
    xor c
    xor [hl]
    and e
    adc [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    sub c
    sbc c
    sbc c
    sub h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d

Call_010_6568:
    ld hl, $65a7
    ld bc, $0630
    ld de, $9000
    call Call_000_0183
    ld hl, $5ffe
    ld bc, $0400
    ld de, $8800
    call Call_000_0183
    ld hl, $9800
    ld bc, $0400
    ld a, $62
    call Call_000_0186
    ld hl, $6597
    ld de, $8000
    ld bc, $0010
    jp Jump_000_0183


    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    ld a, b
    ld c, b
    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
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
    ld hl, sp-$05
    rst $30
    ldh a, [$ffe0]
    ldh [$ffde], a
    ret nz

    cp [hl]
    add b
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    ld [hl], b
    ld [hl], b
    ld l, a
    ld h, b
    ld e, a
    ld b, b
    ccf
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    cp $00
    jr nz, jr_010_65f9

    adc a
    nop
    adc a
    nop
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ccf
    nop
    ld bc, $fc01
    nop
    db $fc
    nop
    add b
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    db $fc
    nop
    add b
    add b

jr_010_65f9:
    ccf
    nop
    ccf
    nop
    inc a
    nop
    nop
    inc a
    dec a
    ld bc, $3d01
    ld a, $00
    ld e, $1e
    ret nz

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    ld a, b
    ld a, h
    nop
    nop
    ld a, h
    ld a, $00
    rra
    rra
    rst $20
    rlca
    ei
    inc bc
    db $fd
    ld bc, $fe00
    ccf
    nop
    nop
    rra
    adc a
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
    ld a, a
    ld a, a
    rra
    sbc a
    rst $28
    rrca
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
    db $fd
    ei
    ei
    rst $30
    rst $30
    ldh [$ffef], a
    ret nz

    rst $18
    add b
    cp a
    ld a, [hl]
    ld a, [hl]
    nop
    db $fc
    ld hl, sp-$08
    pop af
    pop af
    db $e3
    db $e3
    nop
    rst $18
    nop
    sbc a
    nop
    rra
    ld e, $1e
    ld b, b
    ld e, h
    ret c

    ret c

    pop de
    pop de
    jp Jump_000_00c3


    sbc $00
    sbc [hl]
    nop
    ld e, $3c
    inc a
    nop
    inc a
    cp h
    cp h
    cp h
    cp h
    ld a, b
    ld a, b
    nop
    ccf
    nop
    ld a, $00
    ld a, $7c
    ld a, h
    nop
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    ld a, $00
    ld a, $00
    ld a, $3f
    ccf
    nop
    ccf
    ccf
    ccf
    rra
    rra
    sbc a
    sbc a
    nop
    inc a
    nop
    ld c, $80
    adc [hl]
    ld c, a
    ld c, a
    ld b, b
    ld b, a
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, $00
    ld a, $00
    ccf
    rra
    rra
    nop
    rra
    rra
    rra
    adc a
    adc a
    adc a
    adc a
    ret nz

    rst $00
    nop
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    cp a
    cp a
    rst $18
    rst $18
    rlca
    rst $30
    inc bc
    ei
    ld bc, $fefd
    cp $00
    ccf
    rra
    rra
    adc a
    adc a
    rst $00
    rst $00
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
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
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
    ldh [$ffef], a
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    rst $00
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    inc bc
    inc bc
    db $e3
    inc bc
    db $e3
    inc bc
    inc bc
    db $e3
    rst $00
    rst $00
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff0]
    rst $28
    ldh [$ffdf], a
    ret nz

    add b
    cp a
    nop
    ld a, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    ld hl, sp-$05
    nop
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    sbc a
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    ld a, $be
    ld a, $1e
    sbc $00
    adc a
    nop
    nop
    jr nz, jr_010_67bd

    rst $38
    rst $38
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    nop
    ccf
    rra
    rst $18
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rra
    rra
    rst $20
    rlca
    ld sp, hl
    ld bc, $fe00
    ldh [$ffe3], a
    ldh a, [$fff0]
    ld hl, sp-$08

jr_010_67bd:
    rst $38
    rst $38
    ret nz

    ret nz

    db $e3
    ldh [$fff1], a
    ldh a, [$ff78]
    ld a, b
    rlca
    rst $30
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    ld bc, $00fe
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
    ld a, a
    ld a, a
    db $fd
    db $fc
    ei
    ld hl, sp-$10
    rst $30
    rst $28
    ldh [$ffdf], a
    ret nz

    add b
    cp a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ei
    nop
    nop
    di
    nop
    db $e3
    nop
    db $e3
    pop af
    ld bc, $00f0
    nop
    pop af
    di
    nop
    rst $30
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $7f
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $18
    nop
    nop
    sbc a
    nop
    rra
    nop
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    pop af
    ld bc, $f101
    ld bc, $01f1
    pop af
    ei
    ld hl, sp-$09
    ldh a, [$fff0]
    rst $30
    rst $28
    ldh [$ffef], a
    ldh [$ffc0], a
    rst $18
    ret nz

    rst $18
    add b
    cp a
    rst $38
    nop
    cp $00
    nop
    cp $fc
    nop
    db $fc
    nop
    nop
    ld hl, sp+$01
    ld sp, hl
    nop
    ldh a, [rIE]
    nop
    ld a, a
    nop
    nop
    ld a, a
    ccf
    nop
    ccf
    nop
    nop
    rra
    add b
    sbc a
    nop
    rrca
    rst $18
    rra
    rst $28
    rrca
    rrca
    rst $28
    rst $30
    rlca
    rst $30
    rlca
    inc bc
    ei
    inc bc
    ei
    ld bc, $1ffd
    nop
    rra
    nop
    nop
    rra
    adc a
    add b
    adc a
    add b
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $30
    nop
    nop
    pop af
    nop
    ld hl, sp+$00
    ld hl, sp-$64
    inc e
    and $06
    ld bc, $fef9
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    ld a, a
    nop
    ccf
    nop
    nop
    rra
    rrca
    nop
    add a
    nop
    nop
    db $e3
    nop
    ld sp, hl
    nop
    rst $38
    cp a
    ccf
    rst $18
    rra
    rrca
    rst $28
    rst $30
    rlca
    ei
    inc bc
    ld bc, $00fd
    cp $00
    cp $fe
    cp $fd
    db $fd
    ld hl, sp-$05
    rst $30
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    ret nz

    rst $18
    add b
    cp a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    ld hl, sp+$01
    pop af
    nop
    jp $8b8b


    jr jr_010_6908

    add hl, sp
    add hl, sp
    ld a, c
    ld a, c
    ld a, l
    ld a, l
    db $fc
    db $fd
    db $fc
    db $fc
    nop
    db $fc
    ld hl, sp-$08
    ld bc, $e3f1
    db $e3
    rst $00
    rst $00
    adc a
    adc a
    rra
    rra
    ccf
    ccf
    ld b, b

jr_010_6908:
    ld e, a
    cp a
    cp a
    add b
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $e3f1
    db $e3
    inc bc
    db $e3
    ldh [c], a
    ldh [c], a
    ldh [c], a
    ldh [c], a
    pop hl
    pop hl
    inc b
    push bc
    nop
    jp $bf80


    ld a, a
    ld a, a
    nop
    ld a, a

jr_010_692d:
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    rrca
    adc a
    rra
    rra
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_010_694f:
    inc bc
    inc bc
    ld bc, $f001
    pop af
    ld hl, sp-$08
    ld bc, $fefd
    cp $00
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$ffe3], a
    db $e3
    db $e3
    ldh a, [$fff1]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    cp b
    cp b
    jr c, jr_010_692d

    jr jr_010_694f

    nop
    db $fc
    db $fd
    db $fd
    nop
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    add c
    add c
    ldh [$ffe0], a
    ld hl, sp-$08
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    cp a
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    rra
    rra
    rlca
    rlca
    add c
    add c
    ldh [$ffe0], a
    ld hl, sp-$08
    nop
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
    nop
    ld a, a
    nop
    rra
    ld a, a
    ld a, a
    cp a
    cp a
    rra
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    inc bc
    ei
    ld bc, $00fd
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
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
    cp $fe
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
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld a, a
    nop
    ld a, a
    nop
    nop
    rst $38
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $fe01
    nop
    cp $00
    nop
    rst $38
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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
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
    rst $38
    nop
    nop
    add b
    add b
    ldh [$ffe0], a
    rst $38
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
    cp $fe
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
    cp $fe
    cp $fe
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
    nop
    rrca
    nop
    nop
    rrca
    rlca
    nop
    rst $20
    ldh [$ffe0], a
    db $e3
    ldh a, [$fff3]
    ldh a, [$fff1]
    rst $38
    nop
    ret nz

    nop
    nop
    ret nz

    ldh [rP1], a
    rst $28
    rrca
    rlca
    rst $30
    rlca
    rst $30
    inc bc
    ei
    rst $38
    nop
    inc bc
    nop
    nop
    inc bc
    rlca
    nop
    rst $30
    ldh a, [$ffe0]
    rst $28
    ldh [$ffef], a
    ret nz

    rst $18
    rst $38
    nop
    ldh a, [rP1]
    nop
    ldh a, [$ffe0]
    nop
    rst $20
    rlca
    rlca
    rst $00
    rrca
    rst $08
    rrca
    adc a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    db $fc
    db $fc
    ei
    ei
    ld hl, sp-$07
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    nop
    nop
    rst $38
    rst $38
    inc bc
    ei
    ld bc, $fdfd
    db $fd
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    ret nz

    rst $18
    add b
    cp a
    cp a
    cp a
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rra
    sbc a
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    ccf
    ccf
    rst $18
    rst $18
    ei
    ei
    ldh a, [$fff7]
    ldh a, [$fff7]
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff0]
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    di
    di
    push af
    pop af
    or $f0
    push af
    pop af
    di
    di
    rst $30
    rst $30
    rst $38
    rst $38
    pop bc
    pop bc
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    daa
    daa
    ld d, a
    ld d, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_010_6bd7:
    ld hl, $620e
    ld bc, $01a0
    jp Jump_000_0183


Call_010_6be0:
    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_010_6e04
    call Call_010_6e1c
    call Call_000_01c5
    call Call_000_01d1
    call Call_010_6568
    ld de, $9800
    ld hl, $63fe
    call Call_010_6e3d
    jp Jump_010_6c0e


    or e
    and c
    xor l
    or b
    xor h
    and l
    and h
    and l
    or [hl]
    and l
    xor h
    xor a
    or b

Jump_010_6c0e:
    ld a, $83
    ld [$de87], a
    call Call_010_6c9b
    ret


    ld c, $00
    ld b, $10
    ld hl, $6c93
    call Call_000_023d
    call Call_010_6c9b

jr_010_6c24:
    call Call_010_6c82
    jr nz, jr_010_6c6e

    call Call_010_6ca9
    ld hl, $df14
    ld a, [hl]
    cp $09
    jr c, jr_010_6c42

    sub $08
    ld [hl+], a
    ld a, [hl]
    add $08
    ld [hl+], a
    ld c, $01
    call Call_000_023d
    jr jr_010_6c24

jr_010_6c42:
    ld [hl], $08
    ld b, $3c

jr_010_6c46:
    call Call_010_6c7d
    jr nz, jr_010_6c6e

    dec b
    jr nz, jr_010_6c46

jr_010_6c4e:
    call Call_010_6c7d
    jr nz, jr_010_6c6e

jr_010_6c53:
    ldh a, [rLY]
    cp $88
    jr c, jr_010_6c53

    ld hl, $df17
    ld a, [hl]
    cp $88
    jr nc, jr_010_6c6b

    add $08
    ld [hl], a
    ld c, $01
    call Call_000_023d
    jr jr_010_6c4e

jr_010_6c6b:
    call Call_010_6c7d

jr_010_6c6e:
    ldh a, [rLY]
    cp $88
    jr c, jr_010_6c6e

    xor a
    ld [$de2c], a
    ld hl, $df31
    inc [hl]
    ret


Call_010_6c7d:
    push bc
    call Call_010_6ca9
    pop bc

Call_010_6c82:
    push bc
    call Call_000_01c8
    pop bc
    ld a, [$de92]
    and $0f
    ret z

    ld a, $80
    ld [$df31], a
    ret


    ld [$4888], sp
    ld c, b
    ld [$004c], sp
    dec de

Call_010_6c9b:
    ld b, $1b
    ld e, $e4
    ld d, $00
    ld c, $01
    call Call_010_6e04
    jp Jump_010_6e1c


Call_010_6ca9:
    ld a, [$de82]
    ld b, a

jr_010_6cad:
    halt
    ld a, [$de82]
    cp b
    jr z, jr_010_6cad

    ret


Jump_010_6cb5:
    rst $28
    jr nz, @-$4f

    ld [$d7d1], a
    ld [$d7d2], a
    ld [$d18d], a
    call Call_000_01d1
    call Call_010_6be0
    ld a, $1b
    ld [$de96], a
    ld a, $e4
    ldh [rOBP0], a
    rst $28
    dec hl
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ei
    ld a, $01
    ld [$df46], a
    ld a, $fc
    ld [$ca00], a
    ld a, $05
    ld [$ca01], a
    ld b, $1e
    call Call_000_023a
    call Call_000_01c8

jr_010_6cf1:
    call Call_000_01c5
    call Call_000_01c8
    call Call_010_6d16
    ld a, [$de92]
    and $09
    jr nz, jr_010_6d0f

    ld hl, $ca00
    call Call_000_01ec
    jr nz, jr_010_6cf1

    xor a
    ld [$df46], a
    jr jr_010_6d15

jr_010_6d0f:
    ld a, [$de91]
    ld [$df04], a

jr_010_6d15:
    ret


Call_010_6d16:
    call Call_010_6d34
    ld hl, $df46
    ld a, [hl]
    dec a
    and $01
    ld d, $60
    jr z, jr_010_6d26

    ld d, $68

jr_010_6d26:
    ld hl, $c000
    ld [hl], d
    inc l
    ld [hl], $30
    inc l
    ld [hl], $00
    inc l
    ld [hl], $00
    ret


Call_010_6d34:
    ld hl, $df46
    ld a, [$de92]
    and $c4
    ret z

    bit 2, a
    jr nz, jr_010_6d4f

    bit 6, a
    jr nz, jr_010_6d4b

    ld a, [hl]
    cp $02
    ret z

    jr jr_010_6d4f

jr_010_6d4b:
    ld a, [hl]
    cp $01
    ret z

jr_010_6d4f:
    ld a, $03
    sub [hl]
    ld [hl], a
    rst $08
    add hl, de
    ret


Call_010_6d56:
    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_010_6e04
    call Call_010_6e1c
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

jr_010_6d93:
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
    jr jr_010_6d93

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


Call_010_6dd9:
    ld a, h
    cp d
    ret c

    ret nz

    ld a, l
    cp e
    ret


    di
    ld hl, $cca8
    ld [hl], $01
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
    ld [hl], $05
    inc hl
    xor a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], d
    ei
    ret


Call_010_6e04:
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


Call_010_6e1c:
Jump_010_6e1c:
jr_010_6e1c:
    ld a, [$cca8]
    and $07
    jr nz, jr_010_6e1c

    ret


Call_010_6e24:
jr_010_6e24:
    push de
    ld a, [$de96]
    call Call_000_022b
    ld [$de96], a
    push af
    ld b, $06
    call Call_000_023a
    pop af
    pop de
    jr nc, jr_010_6e24

    ret


    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

Call_010_6e3d:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Call_010_6e41:
Jump_010_6e41:
jr_010_6e41:
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
    jr nz, jr_010_6e41

    ret


Jump_010_6e5e:
    ld hl, $6e77
    ld bc, $1014
    ld de, $9c40
    call Call_010_6e41
    ld hl, $6fb7
    ld de, $88d0
    ld bc, $03a0
    call Call_000_0183
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
    db $e4
    db $ed
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    or a
    cp b
    cp e
    cp h
    inc bc
    inc bc
    inc bc
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
    inc bc
    cp c
    cp d
    cp l
    cp [hl]
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
    cp a
    ret nz

    jp $03c4


    inc bc
    inc bc
    inc bc
    or $ef
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    pop bc
    jp nz, $c6c5

    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ldh a, [c]
    rst $28
    inc bc
    nop
    nop
    inc bc
    db $ec
    rst $20
    inc bc
    xor a
    or b
    inc bc
    ldh [c], a
    db $eb
    inc bc
    or e
    or h
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    or c
    or d
    inc bc
    inc bc
    inc bc
    inc bc
    or l
    or [hl]
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
    inc bc
    inc bc
    inc bc
    inc bc
    db $e4
    pop hl
    inc bc
    and l
    and [hl]
    and a
    inc bc
    rst $28
    and $03
    xor e
    xor h
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
    xor b
    xor c
    xor d
    inc bc
    inc bc
    inc bc
    inc bc
    xor l
    xor [hl]
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $28
    ldh [c], a
    inc bc
    sbc d
    inc bc
    sbc e
    sbc e
    sbc e
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
    inc bc
    inc bc
    db $ed
    db $e4
    rst $30
    di
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
    inc bc
    inc bc
    nop
    nop
    dec bc
    ld a, a
    add b
    add b
    sub a
    cp a
    sub b
    or b
    sub b
    or b
    sub e
    or e
    sub b
    or b
    nop
    nop
    ret nc

    cp $01
    ld bc, $fde9
    add hl, bc
    dec c
    add hl, bc
    dec c
    jp hl


    db $fd
    add hl, bc
    dec e
    sub b
    or b
    sub e
    or e
    sub b
    or b
    sub b
    or b
    sub a
    cp a
    add b
    add b
    dec bc
    ld a, a
    nop
    nop
    add hl, bc
    dec e
    jp hl


    db $fd
    add hl, bc
    dec c
    add hl, bc
    dec c
    jp hl


    db $fd
    ld bc, $d001
    cp $00
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld e, h
    nop
    ld b, h
    nop
    ld e, h
    nop
    ld b, h
    nop
    ld a, h
    nop
    nop
    nop
    nop
    dec bc
    ld a, a
    add b
    add b
    sub a
    cp a
    add a
    and a
    add a
    and a
    add [hl]
    and [hl]
    add h
    and h
    nop
    nop
    ret nc

    cp $01
    ld bc, $fde9
    pop hl
    push hl
    pop hl
    push hl
    ld h, c
    ld h, l
    ld hl, $8025
    and b
    add c
    and c
    add e
    and e
    add a
    and a
    sub a
    cp a
    add b
    add b
    dec bc
    ld a, a
    nop
    nop
    ld bc, $8105
    add l
    pop bc
    push bc
    pop hl
    push hl
    jp hl


    db $fd
    ld bc, $d001
    cp $00
    nop
    nop
    nop
    dec bc
    ld a, a
    add b
    add b
    sub a
    cp a
    sub b
    cp b
    sub c
    or c
    sub c
    or c
    sub b
    cp b
    nop
    nop
    ret nc

    cp $01
    ld bc, $fde9
    add hl, bc
    dec e
    adc c
    adc l
    ret


    call Call_010_7d69
    sub [hl]
    cp [hl]
    sub e
    or e
    sub c
    or c
    sub b
    cp b
    sub a
    cp a
    add b
    add b
    dec bc
    ld a, a
    nop
    nop
    add hl, bc
    dec e
    adc c
    adc l
    adc c
    adc l
    add hl, bc
    dec e
    jp hl


    db $fd
    ld bc, $d001
    cp $00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99ff


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp $e7ff


    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $e3ff


    rst $38
    ret


    rst $38
    ret


    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl

jr_010_70d3:
    rst $38
    reti


    rst $38
    db $e3

jr_010_70d7:
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $d3
    rst $38
    or e
    rst $38
    or e
    rst $38
    add c
    rst $38
    di
    rst $38
    di
    rst $38
    pop bc
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    jp $f9ff


    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    call $cfff
    rst $38
    jp $c9ff


    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    ret


    rst $38
    ret


    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    db $e3
    ldh [$ffe0], a
    rst $08
    rst $18
    add b
    and b
    db $10
    ld c, a
    ld b, $5f
    ld [$005f], sp
    ld e, a
    nop
    ld e, a
    ld [$c108], sp
    di
    ld [$1970], sp
    inc hl
    add hl, sp
    add e
    jr nc, jr_010_70d3

    dec h
    adc [hl]
    jr nz, jr_010_70d7

    ccf
    ccf
    cp a
    ccf
    ccf
    ccf
    sbc a
    rra
    adc a
    rrca
    cpl
    rrca
    ld b, e
    inc bc
    xor c
    dec a
    db $10
    ld c, a
    add b
    and b
    adc a
    sbc a
    ret nz

    ret nz

    rst $08
    jp c, $dfca

    rst $20
    db $ed
    ldh a, [$fff0]
    ld h, $0f
    add hl, hl
    ld c, a
    rrca
    ret


    add hl, hl
    add hl, bc
    and [hl]
    rst $08
    or a
    ret nz

    ret c

    ld h, b
    nop
    nop
    jp $ef03


    rrca
    jp $9503


    add hl, hl
    jp Jump_010_4f03


    rrca
    rrca
    rrca
    rra
    rra
    ld hl, sp-$08
    di
    rst $30
    ldh [$ffe0], a
    call nz, $88d6
    xor h
    nop
    nop
    rla
    ld a, a
    rla
    ld a, a
    ccf
    ccf
    sbc a
    rst $18
    rrca
    rrca
    ld b, a
    rst $10
    inc hl
    ld l, e
    ld bc, $d101
    db $fd
    pop de
    db $fd
    inc b
    inc h
    nop
    nop
    adc e
    cp a
    nop
    nop
    rla
    ld a, a
    rla
    ld a, a
    rla
    ccf
    add b
    add b
    ld b, c
    ld c, c
    ld bc, $a301
    ei
    ld bc, $d101
    db $fd
    pop de
    db $fd
    pop de
    ld sp, hl
    inc bc
    inc bc
    ld hl, sp-$08
    db $e3
    rst $20
    ret z

    ret z

    sub c
    sub c
    sbc e
    sbc e
    dec d
    ld d, l
    ld d, c
    ld d, c
    ld d, c
    ld d, l
    rra
    rra
    rst $00
    rst $20
    inc de
    dec de
    ld bc, $0505
    ld h, l
    nop
    ld [hl], d
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, h
    ld b, b
    ld c, a
    nop
    ld c, a
    and b
    and a
    add b
    and b
    ret z

    ret c

    db $e3
    rst $20
    ld hl, sp-$08
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld a, b
    ld a, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    inc bc
    inc bc
    rst $00
    rst $20
    rra
    rra
    ld hl, sp-$08
    pop hl
    pop hl
    adc $ce
    sub c
    sub c
    sub b
    sub [hl]
    db $10
    ld d, [hl]
    ld d, c
    ld d, c
    ld c, [hl]
    ld c, [hl]
    rra
    rra
    rst $00
    rst $20
    inc de
    dec de
    ld bc, $0505
    ld h, l
    nop
    ld [hl], d
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld [de], a
    ld b, b
    ld b, c
    ld b, b
    ld c, a
    nop
    ld c, a
    and b
    and a
    add b
    and b
    ret z

    ret c

    db $e3
    rst $20
    ld hl, sp-$08
    ld b, d
    ld d, d
    ld b, d
    ld d, d
    ld b, b
    ld d, d
    ld b, c
    ld b, c
    ld a, c
    ld a, c
    inc bc
    inc bc
    rst $00
    rst $20
    rra
    rra
    rst $38
    rst $38
    ld hl, sp-$08
    rst $30
    rst $30
    rst $28
    rst $28
    rst $08
    rst $18
    rst $18
    rst $18
    sbc a
    cp a
    sbc [hl]
    cp a
    rst $38
    rst $38
    ccf
    ccf
    sbc a
    rst $18
    rst $08
    rst $28
    rst $00
    rst $30
    rst $20
    rst $30
    ld h, e
    ei
    inc hl
    ei
    sbc [hl]
    cp a
    sbc [hl]
    cp a
    adc [hl]
    cp a
    rst $08
    rst $18
    rst $00
    rst $18
    db $e3
    rst $28
    ldh a, [$fff7]
    ld hl, sp-$08
    inc hl
    ei
    inc bc
    ei
    inc hl
    ei
    ld h, a
    rst $30
    rst $00
    rst $30
    adc a
    rst $28
    rra
    rst $18
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    rst $30
    rst $30
    db $e3
    rst $28
    pop bc
    rst $18
    sbc a
    cp a
    add l
    cp a
    adc e
    cp a
    rst $38
    rst $38
    ccf
    ccf
    ld e, a
    rst $18
    xor a
    rst $28
    rst $10
    rst $30
    ei
    ei
    cp e
    ei
    ld [hl], e
    ei
    add [hl]
    cp a
    adc l
    cp a
    sbc a
    cp a
    adc $df
    rst $20
    rst $28
    ldh a, [$fff7]
    ld hl, sp-$08
    rst $38
    rst $38
    db $e3
    ei
    jp $f3fb


    di
    rst $00
    rst $30
    ld l, a
    rst $28
    rra
    rst $18
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff0]
    ldh [c], a
    rst $28
    rst $00
    rst $18
    adc a
    cp a
    inc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    cpl
    rst $28
    sub a
    rst $30
    set 7, e
    dec b
    db $fd
    add a
    cp a
    rst $00
    rst $18
    db $e3
    rst $28
    di
    rst $30
    ld sp, hl
    ei
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    dec de
    ei
    rla
    rst $30
    cpl
    rst $28
    ld e, a
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fd
    ld sp, hl
    ei
    di
    rst $30
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    rst $18
    ld c, a
    rst $28
    ld c, a
    rst $28
    ld c, a
    rst $28
    ld c, a
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    ldh [c], a
    rst $28
    pop af
    rst $30
    ld sp, hl
    ei
    db $fc
    db $fd
    cp $fe
    ld c, a
    rst $28
    ld c, a
    rst $28
    ld c, a
    rst $28
    rst $08
    rst $28
    sbc a
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38

Jump_010_7357:
    ld a, $00
    ld [$de96], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    xor a
    ld hl, $c000
    ld bc, $00a0
    call Call_000_0174
    rst $28
    ld l, $cd
    db $e3
    ld [hl], e
    xor a
    ld [$d7d1], a
    ldh [rSCX], a
    ld [$d7d2], a
    ldh [rSCY], a
    ld a, $a0
    ldh [rWY], a
    ld a, $d9
    ld [$c0a4], a
    ei
    xor a
    ld [$ded3], a
    ld b, $00
    ld a, $01
    call Call_010_75c1
    ld a, $01
    ld [$ded3], a
    ld b, $00
    ld a, $01
    call Call_010_75c1
    ld d, $1b
    call Call_010_6e24
    rst $28
    ld sp, $3c06
    call Call_000_023a
    call Call_000_01c8
    xor a
    ld [$ded3], a
    ld b, $00
    xor a
    call Call_010_75c1
    ld a, $01
    ld [$ded3], a
    ld b, $00
    xor a
    call Call_010_75c1

jr_010_73c1:
    call Call_000_01c5
    call Call_000_01c8
    ld a, [$de92]
    bit 0, a
    jr nz, jr_010_73d4

    bit 1, a
    jr nz, jr_010_73d8

    jr jr_010_73c1

jr_010_73d4:
    ld a, $00
    jr jr_010_73da

jr_010_73d8:
    ld a, $01

jr_010_73da:
    ld [$ded3], a
    call Call_010_7597
    rst $08
    nop
    ret


    call Call_000_0153
    ld hl, $7605
    ld bc, $01a0
    ld de, $9040
    call Call_000_0183
    ld de, $9200
    call Call_010_5ff5
    ld de, $9800
    ld hl, $7405
    ld c, $14
    ld b, $12
    jp Jump_010_6e41


    dec b
    dec b
    ld b, $0a
    ld d, $17
    add hl, de
    dec bc
    inc b
    dec b
    dec b
    ld b, $0a
    ld d, $17
    add hl, de
    dec bc
    inc b
    dec b
    dec b
    rla
    jr jr_010_7435

    ld c, $0f
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
    db $10
    ld d, $17
    add hl, de
    dec de
    inc e
    dec e
    ld de, $2020
    jr nz, jr_010_7455

jr_010_7435:
    jr nz, jr_010_7457

    jr nz, @+$22

    jr nz, jr_010_745b

    jr nz, jr_010_745d

    ld [de], a
    ld a, [de]
    dec de
    dec e
    dec b
    dec b
    ld b, $11
    jr nz, jr_010_748e

    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_010_749b

    ld d, [hl]
    ld b, l
    ld d, d
    jr nz, jr_010_7471

    ld [de], a
    inc b
    dec b
    dec b

jr_010_7455:
    ld d, $17

jr_010_7457:
    add hl, de
    ld de, $2020

jr_010_745b:
    jr nz, jr_010_747d

jr_010_745d:
    jr nz, jr_010_747f

    jr nz, jr_010_7481

    jr nz, jr_010_7483

    jr nz, jr_010_7485

    ld [de], a
    ld d, $17
    jr jr_010_7484

    dec de
    dec e
    inc de
    inc d
    inc d
    inc d
    inc d

jr_010_7471:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld a, [de]
    dec de
    inc e

jr_010_747d:
    rla
    add hl, de

jr_010_747f:
    inc c
    ld a, [de]

jr_010_7481:
    dec de
    dec e

jr_010_7483:
    dec c

jr_010_7484:
    inc b

jr_010_7485:
    dec b
    dec b
    dec b
    dec b
    ld b, $0c
    ld a, [de]
    dec de
    dec e

jr_010_748e:
    dec c
    ld d, $17
    dec de
    dec e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_010_74b9

    jr nz, @+$22

jr_010_749b:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld a, [de]
    dec de
    rlca
    rlca
    jr nz, @+$43

    jr nz, jr_010_74ed

    ld d, l
    ld d, h
    ld d, h
    ld c, a
    ld c, [hl]
    jr nz, @+$22

    jr nz, jr_010_74d4

    jr nz, jr_010_74d6

    jr nz, @+$09

    rlca

jr_010_74b9:
    ld [$2008], sp
    jr nz, jr_010_74de

    jr nz, jr_010_74e0

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_010_74d4

    ld [$0909], sp
    jr nz, jr_010_74f1

    jr nz, jr_010_7526

    ld d, h

jr_010_74d4:
    ld b, c
    ld b, a

jr_010_74d6:
    ld b, l
    jr nz, jr_010_752c

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h

jr_010_74de:
    jr nz, jr_010_74e9

jr_010_74e0:
    add hl, bc
    jr jr_010_74fc

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_010_7509

jr_010_74e9:
    jr nz, jr_010_750b

    jr nz, jr_010_750d

jr_010_74ed:
    jr nz, jr_010_750f

    jr nz, jr_010_7511

jr_010_74f1:
    jr nz, jr_010_7513

    ld d, $17
    inc e
    dec e
    jr nz, jr_010_753b

    jr nz, jr_010_753d

    ld d, l

jr_010_74fc:
    ld d, h
    ld d, h
    ld c, a
    ld c, [hl]
    jr nz, jr_010_7522

    jr nz, jr_010_7524

    jr nz, jr_010_7526

    jr nz, jr_010_7522

    dec de

jr_010_7509:
    rlca
    rlca

jr_010_750b:
    jr nz, @+$22

jr_010_750d:
    jr nz, @+$22

jr_010_750f:
    jr nz, @+$22

jr_010_7511:
    jr nz, jr_010_7533

jr_010_7513:
    jr nz, jr_010_7535

    jr nz, jr_010_7537

    jr nz, jr_010_7539

    jr nz, jr_010_753b

    rlca
    rlca
    ld [$2008], sp
    jr nz, @+$22

jr_010_7522:
    jr nz, jr_010_7544

jr_010_7524:
    ld b, e
    ld c, a

jr_010_7526:
    ld c, [hl]
    ld d, h
    ld c, c
    ld c, [hl]
    ld d, l
    ld b, l

jr_010_752c:
    jr nz, jr_010_754e

    jr nz, @+$0a

    ld [$0908], sp

jr_010_7533:
    jr nz, jr_010_7555

jr_010_7535:
    jr nz, @+$22

jr_010_7537:
    jr nz, @+$22

jr_010_7539:
    jr nz, jr_010_755b

jr_010_753b:
    jr nz, jr_010_755d

jr_010_753d:
    jr nz, jr_010_755f

    jr nz, @+$22

    jr nz, jr_010_7563

    add hl, bc

jr_010_7544:
    ld [$1608], sp
    rla
    jr jr_010_7563

    inc b
    dec b
    ld b, $16

jr_010_754e:
    rla
    jr jr_010_756a

    inc b
    dec b
    ld b, $16

jr_010_7555:
    rla
    jr jr_010_7571

    ld [$1a08], sp

jr_010_755b:
    dec de
    inc e

jr_010_755d:
    dec e
    inc b

jr_010_755f:
    dec b
    ld b, $1a
    dec de

jr_010_7563:
    inc e
    dec e
    inc b
    dec b
    ld b, $1a
    dec de

jr_010_756a:
    inc e
    dec e
    ld [$494c], sp
    ld b, a
    ld c, b

jr_010_7571:
    ld d, h
    jr nz, jr_010_75c0

    ld b, c
    ld b, d
    jr nz, jr_010_7598

    jr nz, @+$05

    sbc c
    ld [$74a8], sp
    ld b, l
    sbc c
    inc c
    ld l, l
    ld [hl], l
    inc bc
    sbc c
    ld [$74a8], sp
    ld b, l
    sbc c
    inc c
    jp nc, $8374

    sbc c
    ld [$74f8], sp
    rst $00
    sbc c
    ld [$7524], sp

Call_010_7597:
    rst $08

jr_010_7598:
    ld a, [de]
    ld c, $02

jr_010_759b:
    push bc
    ld b, $0a
    ld a, $01
    call Call_010_75c1
    ld b, $14
    ld a, $00
    call Call_010_75c1
    pop bc
    dec c
    jr nz, jr_010_759b

    ld b, $14
    xor a
    call Call_010_75c1
    rst $28
    ld l, $16
    rst $38
    call Call_010_6e24
    ld b, $0a
    call Call_000_023a

jr_010_75c0:
    ret


Call_010_75c1:
    ld [$d080], a
    ld c, $02
    push bc
    call Call_000_01c5
    ld a, [$ded3]
    or a
    ld hl, $758d
    jr nz, jr_010_75df

    ld a, [$def4]
    or a
    ld hl, $7583
    jr z, jr_010_75df

    ld hl, $7579

jr_010_75df:
    pop bc

jr_010_75e0:
    push bc
    push hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d080]
    or a
    jr z, jr_010_75f4

    ld hl, $74bb

jr_010_75f4:
    ld b, $00
    call Call_000_0183
    pop hl
    ld de, $0005
    add hl, de
    pop bc
    dec c
    jr nz, jr_010_75e0

    jp Jump_000_023a


    nop
    nop
    ld [hl], l
    nop
    add b
    ld [hl], d
    ld [hl], l
    push af
    add b
    ld [hl], d
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    nop
    xor d
    ld d, l
    ld d, l
    nop
    xor d
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    ld bc, $4eae
    ld c, a
    ld bc, $4eae
    nop
    nop
    nop
    nop
    nop
    jr z, @+$12

    ld d, h
    jr c, jr_010_768e

    jr c, @+$56

    jr c, jr_010_763e

jr_010_763e:
    nop
    nop
    jr z, jr_010_7696

    stop
    jr z, @+$56

    stop
    jr z, jr_010_769e

    stop
    jr z, jr_010_76a2

    stop
    jr z, jr_010_76a6

    stop
    jr z, jr_010_76aa

jr_010_7656:
    stop
    jr z, @+$56

    stop
    nop
    ld d, h
    jr c, jr_010_76b4

    jr c, jr_010_76b6

    jr c, jr_010_768c

    stop
    nop
    ld d, a
    ld h, b
    ld [$5767], sp
    rrca
    inc l
    rra
    ld e, e
    inc a
    ld d, [hl]
    jr c, jr_010_76c8

    jr c, jr_010_7676

jr_010_7676:
    nop
    ld [$1006], a
    and $ea
    ldh a, [$ff34]
    ld hl, sp-$26
    inc a
    ld l, d
    inc e
    ld a, [hl+]
    inc e
    ld d, h
    jr c, jr_010_76de

    jr c, jr_010_76e5

    inc a
    inc l

jr_010_768c:
    rra
    ld d, a

jr_010_768e:
    rrca
    ld [$5767], sp
    ld h, b
    nop
    nop
    ld a, [hl+]

jr_010_7696:
    inc e
    ld l, d
    inc e
    jp c, $343c

    ld hl, sp-$16

jr_010_769e:
    ldh a, [rNR10]
    and $ea

jr_010_76a2:
    ld b, $00
    nop
    nop

jr_010_76a6:
    nop
    ld de, $2626

jr_010_76aa:
    ld l, a
    ld c, b
    inc e
    ld de, $5238
    ld sp, $3355
    inc hl

jr_010_76b4:
    rla
    nop

jr_010_76b6:
    nop
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    adc b

jr_010_76c8:
    ld h, h
    ld h, h
    or $12
    jr c, jr_010_7656

    inc e
    ld c, d
    adc h
    xor d
    call z, $e8c4
    ld d, e
    scf
    ld d, e
    scf
    ld d, e
    scf
    ld d, e
    scf
    ld d, e

jr_010_76de:
    scf
    ld d, e
    scf
    ld d, e
    scf
    ld d, e
    scf

jr_010_76e5:
    jp z, $caec

    db $ec
    jp z, $caec

    db $ec
    jp z, $caec

    db $ec
    jp z, $caec

    db $ec
    dec h
    inc de
    ld d, d
    ld sp, $1029
    ld d, h
    ld [$6629], sp
    ld d, $20

jr_010_7701:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    and h
    ret z

    ld c, d
    adc h
    sub h
    ld [$102a], sp
    sub h
    ld h, [hl]
    ld l, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $2626
    ld l, a
    ld c, b
    inc e
    ld de, $5238
    ld sp, $3355
    ld d, l
    inc sp
    nop
    nop
    nop
    rst $38

jr_010_7739:
    rst $38
    rst $38
    nop
    nop
    push bc
    inc bc
    jr nz, jr_010_7701

    push de
    and e
    ret nc

    ld h, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld d, a
    adc a
    nop
    nop
    ld d, a
    adc a
    nop
    nop
    nop
    nop
    adc b
    ld h, h
    ld h, h
    or $12
    jr c, jr_010_77a6

    sbc h
    ld a, [bc]
    inc c
    ld c, d
    adc h
    ld a, [bc]
    inc c
    ld d, l
    ld [hl-], a
    ld d, d
    ld sp, $1029
    ld d, h
    ld [$6629], sp
    ld d, $20
    nop
    nop
    nop
    nop
    push de
    db $e3
    jr nz, jr_010_7739

    push bc
    inc bc
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld d, a
    adc a
    nop
    nop
    ld d, a
    adc a
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld c, d
    adc h
    ld a, [bc]
    inc c
    ld d, h
    adc b
    ld a, [hl+]
    db $10
    sub h
    ld h, [hl]
    ld l, b

jr_010_77a0:
    inc b
    nop
    nop
    nop
    nop

Jump_010_77a5:
    xor a

jr_010_77a6:
    ld [$df67], a
    ld hl, $df68
    ld a, [hl]
    ld [hl], $00
    or a
    ret z

    call Call_010_6d56
    rst $28
    ld l, $cd
    rst $00
    ld [bc], a
    ld de, $9800
    ld hl, $77f5
    ld c, $14
    ld b, $12
    call Call_010_6e41
    ld b, $1b
    ld c, $01
    call Call_010_6e04
    call Call_010_6e1c
    rst $28
    jr nc, jr_010_77a0

    push bc
    ld bc, $c8cd
    ld bc, $92fa
    sbc $e6
    inc bc
    jr z, @-$0b

    bit 0, a
    ld a, $00
    jr nz, jr_010_77e7

    ld a, $01

jr_010_77e7:
    ld [$df67], a
    ld b, $00
    ld c, $01
    call Call_010_6e04
    call Call_010_6e1c
    ret


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
    inc de
    dec c
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    rrca
    inc de
    add hl, bc
    add hl, bc
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
    nop
    nop
    db $10
    add hl, bc
    add hl, bc
    ld de, $cb00
    nop
    call z, $dedf
    sbc $d9
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0909
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0909
    ld de, $0000
    nop
    db $dd
    sbc $cb
    pop de
    rst $08
    nop
    db $dd
    rst $08
    sub $cf
    call Call_000_00de
    ld de, $0909
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
    ld [de], a
    add hl, bc
    add hl, bc
    inc de
    dec c
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    rrca
    inc de
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
    inc de
    dec c
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    rrca
    inc de
    add hl, bc
    add hl, bc
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
    nop
    nop
    db $10
    add hl, bc
    add hl, bc
    ld de, $cc00
    nop
    call z, $dedf
    sbc $d9
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0909
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0909
    ld de, $0000
    nop
    sub $d3
    pop de
    jp nc, Jump_000_00de

    sub $cb
    call z, RST_00
    nop
    nop
    ld de, $0909
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
    ld [de], a
    add hl, bc
    add hl, bc
    inc de
    ld c, $0e
    ld c, $0f
    inc de
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    inc de
    dec c
    ld c, $0e
    ld c, $13
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    jr nc, jr_010_799d

Jump_010_796d:
    xor a
    ld [$de96], a
    call Call_000_01c5
    ld a, [$df83]
    or a
    jr z, jr_010_797f

    ld b, $3c
    call Call_000_023a

jr_010_797f:
    call Call_010_6568
    ld hl, $9800
    ld bc, $0400
    ld a, $62
    call Call_000_0186
    ld hl, $79d2
    call Call_010_79b5
    ld a, $81
    ld [$de87], a
    ld d, $1b
    call Call_010_6e24

jr_010_799d:
    ld b, $78

jr_010_799f:
    push bc
    call Call_000_01c5
    call Call_000_01c8
    pop bc
    dec b
    jr nz, jr_010_799f

    ld d, $ff
    call Call_010_6e24
    ld b, $1e
    call Call_000_023a
    ret


Call_010_79b5:
    ld e, l
    ld d, h

jr_010_79b7:
    ld a, [de]
    inc de
    or a
    ld l, a
    jr nz, jr_010_79c0

    ld a, [de]
    or a
    ret z

jr_010_79c0:
    ld a, [de]
    inc de
    ld h, a
    call Call_010_79c8
    jr jr_010_79b7

Call_010_79c8:
jr_010_79c8:
    ld a, [de]
    inc de
    or a
    ret z

    call Call_000_0189
    inc hl
    jr jr_010_79c8

    nop
    sbc c
    xor h
    xor c
    and e
    and l
    xor [hl]
    or e
    and l
    and h
    ld h, d
    and d
    cp c
    ld h, d
    xor [hl]
    xor c
    xor [hl]
    or h
    and l
    xor [hl]
    and h
    xor a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_010_7d69:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
