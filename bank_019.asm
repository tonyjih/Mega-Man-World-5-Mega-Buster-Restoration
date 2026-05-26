; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_019_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_019_403f

    add hl, sp
    db $20, $c3
    xor d
    ld b, c
    jp Jump_019_45c0


Call_019_4016:
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_019_401b:
    ld c, l
    xor a
    ldh [$ff8b], a
    ldh [$ff8f], a
    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a
    ld a, $01
    add c
    ld l, a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr nc, jr_019_403e

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_019_403e:
    ld a, e

jr_019_403f:
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $02
    add c
    ld l, a

jr_019_4048:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_019_4067

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
    call Call_019_41a8
    pop bc
    pop hl
    jr jr_019_4071

jr_019_4067:
    cp $ff
    jr nz, jr_019_4079

jr_019_406b:
    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a

jr_019_4071:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_019_4048

jr_019_4079:
    ld b, a
    ld a, $00
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff8e], a
    ld [hl], b
    ld a, b
    ret


    call Call_000_019e

Call_019_4087:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_019_4091:
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
    jr jr_019_4091

Call_019_40b7:
    call Call_000_01c8
    ld hl, $de94
    ld a, [$de91]
    cp [hl]
    ld [hl], a
    jr z, jr_019_40d0

    ld a, [$de92]
    ld [$de95], a
    ld a, $10
    ld [$de93], a
    ret


jr_019_40d0:
    ld hl, $de93
    ld a, [hl]
    or a
    jr nz, jr_019_40de

    ld [hl], $03
    ld a, [$de91]
    jr jr_019_40e0

jr_019_40de:
    dec [hl]
    xor a

jr_019_40e0:
    ld [$de95], a
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


Call_019_40f2:
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
    set 2, [hl]
    ld hl, $ccaf
    ld [hl], $01
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    ei
    ret


jr_019_411d:
    ld a, [$cca8]
    and $07
    jr nz, jr_019_411d

jr_019_4124:
    ld hl, $ccab
    ldh a, [rBGP]
    cp [hl]
    jr nz, jr_019_4124

    ret


    ld e, $00
    ld d, $01
    ld a, e
    ld hl, $de39
    ld [hl+], a
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld [hl+], a
    ret


    xor a
    ld hl, $de39
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_019_414d:
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
    jr nc, jr_019_4161

    add hl, bc
    jr jr_019_4162

jr_019_4161:
    inc de

jr_019_4162:
    pop af
    dec a
    jr nz, jr_019_414d

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


Call_019_416d:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Call_019_4171:
jr_019_4171:
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
    jr nz, jr_019_4171

    ret


jr_019_4186:
    call Call_019_4192
    inc hl
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_019_4186

    ret


Call_019_4192:
    ldh a, [rLCDC]
    and $80
    jr z, jr_019_41a5

    di

jr_019_4199:
    ldh a, [rSTAT]
    and $03
    jr z, jr_019_4199

jr_019_419f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_019_419f

jr_019_41a5:
    ld a, [hl]
    ei
    ret


Call_019_41a8:
    push de
    ret


    ld sp, $fffe
    ld hl, $df67
    ld a, [hl]
    ld [hl], $00
    dec a
    jp z, Jump_019_42bd

    call Call_000_01d1
    rst $28
    ld l, $0e
    inc b
    call Call_019_4248
    call Call_000_01c5
    call Call_019_41e0
    ld c, $04
    call Call_019_4251
    rst $28
    inc sp
    ld a, $01
    ld [$c61e], a
    call Call_019_42db
    call Call_000_01c5
    xor a
    ld [$df2f], a
    jp Jump_000_02b5


Call_019_41e0:
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld [$de42], a
    ld a, $a0
    ldh [rWY], a
    ld a, $e3
    ld [$de87], a
    ld hl, $d165
    ld bc, $0020
    xor a
    call Call_000_0174
    ld hl, $c600
    ld bc, $0032
    xor a
    call Call_000_0174
    call Call_019_44eb
    call Call_019_457e
    call Call_000_019b
    ld a, $28
    call Call_000_01a4
    ld [$c61a], a
    xor a
    call Call_000_0222
    ld a, [$c602]
    call Call_000_0222
    call Call_000_01c5
    call Call_019_4841
    ld a, [$c619]
    or a
    ld hl, $489a
    jr z, jr_019_4234

    ld hl, $48a2

jr_019_4234:
    ld c, $00
    ld b, $19
    call Call_000_023d
    ld a, $70
    ld [$df30], a
    ld a, $01
    ld [$df2f], a
    ret


    ld c, $0f

Call_019_4248:
    ld a, $00
    ld e, a
    ld d, a
    jp Jump_019_4259


    ld c, $0f

Call_019_4251:
    call Call_019_45f5
    ld d, a
    ld a, $1b
    ld e, $d0

Jump_019_4259:
    ld [$c62d], a
    ld a, e
    ld [$c62e], a
    ld a, d
    ld [$c62f], a
    ld a, c
    ld [$c631], a
    ld hl, $c630
    ld [hl], $00

jr_019_426d:
    call Call_000_01c5
    ld hl, $c630
    call Call_000_01e9
    jr nz, jr_019_426d

    xor a
    ldh [$ff8a], a
    ld a, [$c631]
    ld [hl], a
    ld a, [$c62d]
    ld d, a
    ld a, [$de96]
    call Call_000_022b
    ld [$de96], a
    ld [$df11], a
    jr nc, jr_019_4295

    ld hl, $ff8a
    inc [hl]

jr_019_4295:
    ld a, [$c62e]
    ld d, a
    ldh a, [rOBP0]
    call Call_000_022b
    ldh [rOBP0], a
    jr nc, jr_019_42a6

    ld hl, $ff8a
    inc [hl]

jr_019_42a6:
    ld a, [$c62f]
    ld d, a
    ldh a, [rOBP1]
    call Call_000_022b
    ldh [rOBP1], a
    ld hl, $ff8a
    jr nc, jr_019_42b7

    inc [hl]

jr_019_42b7:
    ld a, [hl]
    cp $03
    jr c, jr_019_426d

    ret


Jump_019_42bd:
    ld c, $04
    call Call_019_4248
    call Call_000_01c5
    xor a
    ld [$de2c], a
    ld a, $10
    jp Jump_000_0297


Call_019_42ce:
    ld a, [$c619]
    and $01
    ld e, a
    ld d, $00
    ld hl, $dedd
    add hl, de
    ret


Call_019_42db:
    call Call_019_42f6
    call Call_019_43c3
    call Call_019_42e7
    call Call_019_4675

Call_019_42e7:
    ld a, [$cb00]
    ld hl, $48b1
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$df0a], a
    ret


Call_019_42f6:
Jump_019_42f6:
    call Call_019_45e3
    call Call_019_40b7
    ld a, [$de92]
    and $09
    jr z, jr_019_4306

    rst $08
    jr @-$35

jr_019_4306:
    ld a, [$de92]
    bit 2, a
    jp nz, Jump_019_42bd

    bit 1, a
    jr z, jr_019_431d

    ld a, [$c617]
    or a
    jr z, jr_019_431d

    call Call_019_4459
    jr jr_019_4373

jr_019_431d:
    ld a, [$de95]
    and $f0
    jr z, jr_019_4373

    ld b, a
    ld a, [$c604]
    ld e, a
    ld d, $00
    ld hl, $c60d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rl b
    jr c, jr_019_4345

    add hl, de
    rl b
    jr c, jr_019_4345

    add hl, de
    rl b
    jr c, jr_019_4345

    add hl, de
    rl b
    jr c, jr_019_4345

    add hl, de

jr_019_4345:
    ld a, [$c615]
    dec a
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_019_4373

    ld [$c615], a
    call Call_019_42ce
    ld a, [$c615]
    ld [hl], a
    xor a
    ld [$c616], a
    ld a, $19
    call Call_000_0222
    call Call_019_43d6
    call Call_000_01c5
    ld hl, $c61b
    call Call_019_4016
    ld a, $01
    ld [$c616], a

jr_019_4373:
    jp Jump_019_42f6


Jump_019_4376:
    ld a, [$c616]
    bit 7, a
    ret nz

    ld hl, $c61b
    ld de, $7da0
    call Call_019_401b
    ld a, [$c604]
    ld b, a
    ld c, $00

jr_019_438b:
    push bc
    ld hl, $c605
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ldh [$ff9b], a
    ld a, [hl+]
    ldh [$ff9c], a
    ld a, [$c616]
    cp $01
    jr nz, jr_019_43b7

    ld a, [$c615]
    dec a
    cp c
    jr nz, jr_019_43b7

    ld a, [$c61b]
    ld hl, $7da8
    call Call_000_016e
    ld c, l
    ld b, h
    jr jr_019_43ba

jr_019_43b7:
    ld bc, $7dd0

jr_019_43ba:
    call Call_019_4087
    pop bc
    inc c
    dec b
    jr nz, jr_019_438b

    ret


Call_019_43c3:
    ld hl, $c609
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c615]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$cb00], a
    ret


Call_019_43d6:
    xor a
    ld [$c61e], a
    call Call_019_45e3
    call Call_000_01c5
    call Call_019_43ee
    ld a, $01
    ld [$c61e], a
    call Call_019_45f5
    ldh [rOBP1], a
    ret


Call_019_43ee:
    xor a
    ld [$c62a], a
    ld [$c62b], a
    ld a, $01
    ld [$c62c], a
    xor a
    ld [$c61f], a
    call Call_019_43c3
    or a
    jr z, jr_019_4429

    sub $05
    jr c, jr_019_4429

    call Call_000_0261
    ld a, [wCrystalCollectedFlags]
    and b
    jr z, jr_019_4429

    ld a, [$cb00]
    sub $04
    ld [$c61f], a
    dec a
    ld hl, $7ed5
    call Call_000_016e
    ld de, $8030
    ld bc, $0040
    call Call_000_0183

jr_019_4429:
    ld b, $00
    call Call_000_0162
    call Call_019_4434
    jp Jump_019_45e3


Call_019_4434:
    ld a, [$c61e]
    or a
    jr z, jr_019_4444

    ld a, [$c61e]
    ld b, a
    call Call_000_0162
    call Call_019_4445

jr_019_4444:
    ret


Call_019_4445:
    ld a, [$c61f]
    or a
    ret z

    ld bc, $7edd
    ld a, $22
    ldh [$ff9b], a
    ld a, $2e
    ldh [$ff9c], a
    call Call_019_4087
    ret


Call_019_4459:
    call Call_000_01d1
    call Call_000_01c5
    call Call_019_4471
    ld a, [$c619]
    xor $01
    and $01
    inc a
    ld [$ded8], a
    call Call_019_44eb
    ret


Call_019_4471:
    ld a, [$c619]
    and $01
    jr nz, jr_019_44b2

jr_019_4478:
    call Call_000_01c5

jr_019_447b:
    ldh a, [rLY]
    cp $70
    jr c, jr_019_447b

    ld a, [$48a6]
    ld b, a
    ld hl, $df16
    ld a, [hl]
    sub $02
    ld [hl], a
    cp b
    ld d, $00
    jr nc, jr_019_4493

    ld [hl], b
    inc d

jr_019_4493:
    ld a, [$48a7]
    ld b, a
    ld hl, $df17
    ld a, [hl]
    sub $02
    ld [hl], a
    inc a
    cp b
    ld d, $00
    jr nc, jr_019_44a6

    ld [hl], b
    inc d

jr_019_44a6:
    push de
    ld c, $01
    call Call_000_023d
    pop de
    ld a, d
    or a
    jr z, jr_019_4478

    ret


jr_019_44b2:
    call Call_000_01c5

jr_019_44b5:
    ldh a, [rLY]
    cp $70
    jr c, jr_019_44b5

    ld a, [$489f]
    ld b, a
    ld hl, $df17
    ld a, [hl]
    add $02
    ld [hl], a
    cp b
    ld d, $00
    jr c, jr_019_44cd

    ld [hl], b
    inc d

jr_019_44cd:
    ld a, [$489e]
    ld b, a
    ld hl, $df16
    ld a, [hl]
    add $02
    ld [hl], a
    cp b
    ld d, $00
    jr c, jr_019_44df

    ld [hl], b
    inc d

jr_019_44df:
    push de
    ld c, $01
    call Call_000_023d
    pop de
    ld a, d
    or a
    jr z, jr_019_44b2

    ret


Call_019_44eb:
    ld c, $01
    ld a, [$ded8]
    or a
    jr z, jr_019_44f9

    cp $01
    jr z, jr_019_4502

    jr jr_019_451a

jr_019_44f9:
    ld a, [wDarkMoonClearFlag]
    bit 0, a
    jr nz, jr_019_451a

    ld c, $00

jr_019_4502:
    ld e, $00
    ld b, $00
    ld a, [wStardroidClearFlags]
    and $0f
    cp $0f
    jr nz, jr_019_4529

    ld a, [wDarkMoonClearFlag]
    bit 0, a
    jr nz, jr_019_4529

    ld b, $01
    jr jr_019_4529

jr_019_451a:
    ld e, $01
    ld a, [wStardroidClearFlags]
    and $f0
    cp $f0
    ld b, $02
    jr nz, jr_019_4529

    ld b, $03

jr_019_4529:
    ld a, c
    ld [$c617], a
    ld a, e
    ld [$c619], a
    ld a, b
    ld [$c618], a
    cp $01
    ld hl, $dedd
    jr z, jr_019_4541

    cp $03
    jr nz, jr_019_4543

    inc hl

jr_019_4541:
    ld [hl], $05

jr_019_4543:
    ld a, [$c618]
    ld hl, $48bc
    call Call_000_016e
    ld de, $c602
    ld bc, $000d
    call Call_000_0180
    call Call_019_42ce
    ld a, [$c604]
    ld e, a
    ld a, [hl]
    or a
    jr nz, jr_019_4561

    inc a

jr_019_4561:
    dec a
    cp e
    jr c, jr_019_4566

    xor a

jr_019_4566:
    inc a
    ld [$c615], a
    ld hl, $c61b
    call Call_019_4016
    ld a, $01
    ld [$c616], a
    call Call_019_43ee
    call Call_019_45f5
    ldh [rOBP1], a
    ret


Call_019_457e:
    call Call_019_45c0
    ld hl, $49a4
    ld c, $14
    ld b, $20
    ld de, $9800
    call Call_019_4171
    ld hl, $9c00
    ld bc, $0400
    ld a, $03
    call Call_000_0186
    ld hl, $5650
    ld c, $0c
    ld b, $04
    ld de, $9c00
    call Call_019_4171
    ld hl, $5680
    ld c, $0c
    ld b, $04
    ld de, $9dc0
    call Call_019_4171
    ld hl, $7d70
    ld bc, $0030
    ld de, $8000
    call Call_000_0183
    ret


Call_019_45c0:
Jump_019_45c0:
    ld hl, $4c24
    ld bc, $0800
    ld de, $9000
    call Call_000_0183
    ld hl, $5424
    ld bc, $01d0
    ld de, $8800
    jp Jump_000_0183


Call_019_45d8:
jr_019_45d8:
    ld a, b
    or a
    ret z

    dec b
    push bc
    call Call_019_45e3
    pop bc
    jr jr_019_45d8

Call_019_45e3:
Jump_019_45e3:
    call Call_000_01c5
    call Call_000_01d1
    ld a, [$c61a]
    call Call_000_019e
    call Call_019_4434
    jp Jump_019_4376


Call_019_45f5:
    ld a, [$cb00]
    cp $09
    jr nc, jr_019_4601

    call Call_019_464e
    jr nz, jr_019_4605

jr_019_4601:
    ld a, $d0
    jr jr_019_4607

jr_019_4605:
    ld a, $ff

jr_019_4607:
    ld [$c629], a
    ret


    ld d, l
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld d, l
    nop
    nop
    nop
    nop
    ld a, [$c62c]
    cp $01
    jr z, jr_019_462a

    cp $02
    jr z, jr_019_4627

    ld a, [$c629]
    jr jr_019_464b

jr_019_4627:
    xor a
    jr jr_019_464b

jr_019_462a:
    ld hl, $c62a
    inc [hl]
    ld a, $03
    cp [hl]
    jr nc, jr_019_4640

    ld [hl], $00
    ld hl, $c62b
    ld a, [hl]
    inc a
    cp $0c
    jr c, jr_019_463f

    xor a

jr_019_463f:
    ld [hl], a

jr_019_4640:
    ld a, [$c62b]
    ld e, a
    ld d, $00
    ld hl, $460b
    add hl, de
    ld a, [hl]

jr_019_464b:
    ldh [rOBP1], a
    ret


Call_019_464e:
    ld a, [$cb00]
    cp $09
    ld hl, wStardroidClearFlags
    jr c, jr_019_465d

    sub $08
    ld hl, wDarkMoonClearFlag

jr_019_465d:
    dec a
    call Call_000_0261
    and [hl]
    ret


Call_019_4663:
    ld a, [$cb00]
    cp $09
    jr nc, jr_019_4673

    dec a
    call Call_000_0261
    ld a, [wStardroidClearFlags]
    and b
    ret z

jr_019_4673:
    scf
    ret


Call_019_4675:
    ld a, $01
    ld [$c610], a
    ld [$c613], sp
    ld a, $84
    ld [$c611], a
    ld a, $47
    ld [$c612], a
    ld hl, $c616
    set 7, [hl]
    xor a
    ld [$c61f], a
    ld [$c62c], a
    call Call_019_4663
    jr nc, jr_019_46b3

    call Call_019_4858
    ld b, $3c

jr_019_469d:
    call Call_019_4863
    jr nz, jr_019_469d

    ld a, $1b
    ld [$de96], a
    xor a
    ld [$c624], a
    ld b, $3c
    call Call_000_023a
    jp Jump_019_4784


jr_019_46b3:
    call Call_019_4858
    ld b, $1e

jr_019_46b8:
    call Call_019_4863
    jr nz, jr_019_46b8

    rst $08
    ld l, [hl]
    ld b, $3a

jr_019_46c1:
    call Call_019_4863
    jr nz, jr_019_46c1

    ld a, $1b
    ld [$de96], a
    xor a
    ld [$c624], a
    ld a, $a7
    ld e, a
    ldh [rWX], a
    xor a
    ldh [rWY], a

jr_019_46d7:
    push de
    call Call_019_45e3
    pop de
    ld a, e
    add $fd
    ld e, a
    ldh [rWX], a
    cp $48
    jr nc, jr_019_46d7

    rst $28
    inc [hl]
    ld b, $14
    call Call_019_45d8
    ld hl, $c60b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c615]
    dec a
    add a
    ld e, a
    add a
    add e
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld h, a
    ld l, b
    ld de, $98c8
    call Call_019_416d
    ld hl, $5636
    ld de, $9888
    call Call_019_416d
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push de
    pop hl
    ld de, $9040
    call Call_000_0183
    ld de, $8800
    call Call_000_025b
    ld b, $01
    call Call_019_45d8
    ld hl, $48aa
    ld c, $00
    ld b, $19
    call Call_000_023d
    ld a, $a0
    ldh [rWY], a

jr_019_473e:
    call Call_019_45e3
    ld d, $04
    ld hl, $df14
    ld a, [hl]
    sub d
    ld [hl+], a
    add $50
    ld [hl], a

jr_019_474c:
    ldh a, [rLY]
    cp $78
    jr c, jr_019_474c

    ld c, $01
    call Call_000_023d
    ld a, [$df14]
    cp $21
    jr nc, jr_019_473e

    call Call_019_47c1
    ld a, $02
    ld [$c61e], a
    ld a, $00
    ld [$cb01], a

jr_019_476b:
    call Call_019_45e3
    call Call_019_47d6
    ld a, [$cb02]
    cp $01
    jr nz, jr_019_476b

    ld a, [$c628]
    cp $02
    jr nz, jr_019_476b

    ld b, $b4
    call Call_019_45d8

Jump_019_4784:
    xor a
    ld [$c610], a
    ld a, $02
    ld [$c624], a
    ld hl, $c613
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    rst $28
    ld a, [hl-]
    ld b, $ff
    ld e, b
    ld d, b
    ld c, $0f
    call Call_019_40f2
    ld a, $01
    ld [$ccac], a
    ld [$ccaf], a

jr_019_47a7:
    call Call_019_45e3
    ld a, [$cca8]
    and $07
    jr nz, jr_019_47a7

    call Call_019_45e3
    call Call_000_01d1
    xor a
    ld [$de2c], a
    ld a, $c9
    ld [$c0f4], a
    ret


Call_019_47c1:
    ld a, $80
    ld [$c625], a
    ld a, $00
    ld [$c626], a
    ld hl, $c627
    ld [hl], $00
    ld hl, $c628
    ld [hl], $00
    ret


Call_019_47d6:
    ld hl, $c625
    call Call_000_01ec
    ret nz

    ld [hl], $08
    ld hl, $c627
    ld a, [hl]
    cp $08
    jr nc, jr_019_4814

    ld a, [hl]
    inc [hl]
    ld c, a
    ld a, [$cb00]
    dec a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $55f6
    add hl, de
    ld b, $00
    add hl, bc
    ld d, [hl]
    ld hl, $98aa
    add hl, bc
    ld a, d
    cp $20
    jr nz, jr_019_4809

    ld a, $02
    jr jr_019_480b

jr_019_4809:
    add $3f

jr_019_480b:
    call Call_000_0189
    ld a, $01
    ld [$c628], a
    ret


jr_019_4814:
    ld hl, $c628
    ld [hl], $02
    ret


    ld a, [$c624]
    or a
    jr nz, jr_019_4829

    ld a, [$de96]
    ldh [rBGP], a
    ld [$df11], a
    ret


jr_019_4829:
    dec a
    jr nz, jr_019_4838

    ld a, [$c623]
    ldh [rBGP], a
    ld [$de96], a
    ld [$df11], a
    ret


jr_019_4838:
    ld a, [$de96]
    ldh [rBGP], a
    ld [$df11], a
    ret


Call_019_4841:
    ld a, $c9
    ld [$c0f4], a
    call Call_000_01c5
    ld hl, $c0f7
    ld [hl], $19
    dec hl
    ld [hl], $48
    dec hl
    ld [hl], $1a
    dec hl
    ld [hl], $c3
    ret


Call_019_4858:
    ld a, $01
    ld [$c621], a
    ld a, $00
    ld [$c622], a
    ret


Call_019_4863:
    push bc
    call Call_019_45e3
    pop bc
    ld a, b
    or a
    jr z, jr_019_4884

    dec b
    ld hl, $c621
    call Call_000_01e9
    jr nz, jr_019_4884

    ld [hl], $04
    ld hl, $c622
    inc [hl]
    ld a, [hl]
    cp $02
    jr c, jr_019_4882

    ld [hl], $00

jr_019_4882:
    xor a
    inc a

jr_019_4884:
    push af
    ld a, [$c622]
    ld e, a
    ld d, $00
    ld hl, $55f4
    add hl, de
    ld a, [hl]
    ld [$c623], a
    ld a, $01
    ld [$c624], a
    pop af
    ret


    jr nz, jr_019_490c

    jr nz, @+$72

    sub b
    ldh [rP1], a
    dec de
    jr nz, jr_019_4914

    jr nz, jr_019_4916

    jr nz, jr_019_4918

    nop
    dec de
    jr nz, jr_019_491c

    ld [hl], b
    ret nz

    jr nz, jr_019_4920

    nop
    dec de
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    call nz, Call_000_1348
    ld c, c
    inc [hl]
    ld c, c
    add e
    ld c, c
    ld e, c
    nop
    inc b
    pop de
    ld c, b
    db $db
    ld c, b
    ldh [rOBP0], a
    push hl
    ld c, b
    inc bc
    ld c, c
    ld e, h
    ld c, b

jr_019_48d3:
    ld a, h
    ld b, h
    ld c, [hl]
    ld h, b
    adc h
    ld h, b
    ld l, h
    ld d, h
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    add hl, bc
    or b
    ld d, [hl]
    ret nz

    ld e, c
    ld h, b
    inc b
    ld [de], a
    ld d, a
    jr nz, jr_019_494d

    ret nz

    inc b
    ld [hl], h
    ld d, a
    ldh [$ff62], a
    and b
    inc bc
    sub $57
    add b
    ld h, [hl]
    ld d, b
    inc b
    sub $57
    add b
    ld h, [hl]
    ld d, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_019_490c:
    ld bc, $0204
    ld [bc], a
    inc b
    ld bc, $5903

jr_019_4914:
    nop
    dec b

jr_019_4916:
    pop de
    ld c, b

jr_019_4918:
    db $db
    ld c, b
    ldh [rOBP0], a

jr_019_491c:
    push hl
    ld c, b
    jr nz, jr_019_4969

jr_019_4920:
    nop
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
    ld bc, $0204
    inc bc
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0059
    inc b
    ld b, c
    ld c, c
    ld c, e
    ld c, c
    ld d, b
    ld c, c
    ld d, l
    ld c, c
    ld [hl], e
    ld c, c
    ld c, h
    jr nc, jr_019_48d3

    jr nc, jr_019_499b

    ld e, c
    adc e
    ld e, h
    ld [hl], b
    ld c, b
    nop
    nop

jr_019_494d:
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$380a], sp
    ld e, b
    ret nc

    ld l, d
    sub b
    inc b
    sbc d
    ld e, b
    ld h, b
    ld l, a
    ld [hl], b
    inc b
    db $fc
    ld e, b
    ret nc

    ld [hl], e
    ldh [rDIV], a
    ld e, [hl]
    ld e, c

jr_019_4969:
    or b
    ld a, b
    ret nz

    inc b
    sub $57
    add b
    ld h, [hl]
    ld d, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0204
    ld [bc], a
    inc b
    ld bc, $5903
    nop
    dec b
    ld b, c
    ld c, c
    ld c, e
    ld c, c
    ld d, b
    ld c, c
    ld d, l
    ld c, c
    sub b
    ld c, c
    nop
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

jr_019_499b:
    ld bc, $0204
    inc bc
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0504
    ld b, $07
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$0a09], sp
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $1211
    inc de
    inc d
    inc bc
    ld b, b
    inc bc
    ld b, b
    dec d
    ld d, $17
    jr jr_019_4a1e

    ld [bc], a

jr_019_4a1e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2120
    ld [hl+], a
    inc bc
    inc a
    inc bc
    inc bc
    inc bc
    inc hl
    inc h
    dec h
    ld h, $01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2f2e
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    jr nc, jr_019_4a72

    ld [hl-], a
    inc sp
    inc [hl]
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $033f
    inc bc
    inc bc
    inc bc
    add hl, sp
    ld a, [hl-]
    inc bc
    inc bc
    ld b, b
    dec sp
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    dec a
    ld a, $03
    inc bc
    inc bc
    ccf
    ld b, b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_019_4a72:
    ld [bc], a
    ld bc, $0e03
    rrca
    db $10
    ld b, b
    inc bc
    inc bc
    inc bc
    dec bc
    inc c
    dec c
    dec sp
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $1d03
    ld e, $1f
    inc bc
    inc bc
    inc bc
    ccf
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2b40
    inc l
    dec l
    ccf
    inc bc
    inc bc
    inc bc
    daa
    jr z, jr_019_4ad0

    ld a, [hl+]
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $3b3c
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    dec [hl]
    ld [hl], $37
    jr c, jr_019_4abe

    ld [bc], a

jr_019_4abe:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $3f03
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc a

jr_019_4ad0:
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0340
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc a
    ccf
    ld b, b
    inc bc
    inc bc
    inc bc
    dec sp
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    ld b, b
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $4003
    inc bc
    inc bc
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    inc bc
    inc a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0340
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $4948
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc bc
    ld b, b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $5352
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $5e5d
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $6a69
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $7776
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $8483
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $9190
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
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
    rst $38
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
    nop
    rst $38
    rst $38
    nop
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    nop
    ld c, c
    nop
    inc [hl]
    add b
    jp c, Jump_019_7720

    ret c

    xor c
    or $68
    rst $18
    ld d, [hl]
    dec l
    xor e
    ld d, h
    ld d, c
    xor [hl]
    xor l
    ld b, e
    ld d, d
    dec h
    ld hl, $5f1a
    db $10
    xor d
    inc c
    ld b, l
    xor [hl]
    ld c, d
    sub b
    rst $08
    ld h, b
    xor [hl]
    ld [hl], c
    ld d, l
    xor d
    ld a, [hl+]
    db $fd
    sub c
    ld a, [hl]
    call $a63e
    ld e, a
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ret nz

    nop
    add b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
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
    inc bc
    nop
    rrca
    nop
    dec e
    ld [bc], a
    ld a, [hl-]
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    nop
    ld [$dd00], a
    jr nz, jr_019_4d2b

    sub h
    or l
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    ld d, d
    nop
    and b
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    jp z, $f820

    inc b
    ld l, a
    sub b
    sub [hl]
    ld l, c
    nop
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
    ld d, b
    nop
    add sp, $00
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld a, [bc]
    ld bc, $021d
    ld a, [de]
    dec b
    inc l
    inc bc
    nop
    nop
    ld a, h
    nop
    pop hl
    ld e, $45
    cp a
    jp c, $2f7f

    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b

jr_019_4d2b:
    add b
    and b
    ret nz

    ld d, b
    ldh [$ffa0], a
    ldh a, [$ffc8]
    ldh a, [$ff9b]
    ld [hl], $75
    dec bc
    ld [hl-], a
    add hl, bc
    jr jr_019_4d41

    dec b
    ld a, [bc]
    sub d
    dec b
    push hl

jr_019_4d41:
    ld [bc], a
    xor e
    ret nc

    inc sp
    push bc
    sub [hl]
    ld l, c
    ret


    db $f4
    ld h, c
    cp $34
    rst $38
    sbc l
    rst $38
    ld l, e
    db $dd
    ld h, $ef
    ld d, c
    xor a
    ret z

    sub a
    ldh a, [c]
    ld l, l
    ld e, b
    or a
    db $e4
    dec de
    ld de, $bdae
    add $54
    xor $40
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop

jr_019_4d80:
    ld [bc], a
    ld bc, $0106
    ld d, h
    dec hl
    ldh [$ff1f], a
    db $d3
    cpl
    adc h
    ld a, a
    ld a, [de]
    rst $38
    ld [hl], h
    rst $38
    jr @+$01

    or e
    rst $38
    ld a, [bc]
    push af
    and c
    cp $00
    rst $38
    nop
    rst $38
    ld [$55ff], sp
    rst $38
    ld [$d0ff], a
    rst $38
    or b
    nop
    ld h, h
    add b
    ret c

    nop
    ld [hl], h
    add b
    add hl, sp
    ret nz

    ld [hl+], a
    ret nz

    ld b, e
    add h
    sbc [hl]
    nop
    ld de, $040c
    ld a, [de]
    ld [hl-], a
    dec c
    jr z, jr_019_4ddb

    ld b, $3f
    ld l, l
    rra
    ld b, a
    ccf
    rrca
    ld a, a
    swap h
    call nc, $ab03
    nop
    ld [hl], d
    add c
    ld a, [hl+]
    ret nz

    db $dd
    and b
    ld b, [hl]
    ld hl, sp-$4f
    cp $b4
    ld b, b
    ret z

    jr nc, jr_019_4e55

    add b
    ld a, [hl+]

jr_019_4ddb:
    call nc, $e817
    ld a, [hl+]
    ld d, h
    rst $20
    jr jr_019_4d80

    ld [bc], a
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
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld [hl-], a
    dec c
    ld d, l
    ld a, [bc]
    ld a, [hl+]
    inc d
    ld d, l
    ld a, [bc]
    ld a, [hl+]
    dec b
    ld d, l
    nop
    ld a, [hl+]
    inc b
    dec d
    nop
    sbc a
    ld a, a
    ld e, a
    ccf
    cp l
    ld a, a
    ld e, a
    rst $38
    adc l
    rst $38
    ld d, [hl]
    xor a

jr_019_4e10:
    and l
    ld e, e
    ld e, b
    and a
    and b
    ld hl, sp-$2c
    ld hl, sp-$14
    ldh a, [$ffc4]
    ld hl, sp+$54
    add sp, -$74
    ldh a, [$ff50]
    xor b
    xor b
    ld d, b
    sbc e
    db $e4
    ld b, h
    cp d
    sub d
    ld l, l
    ld a, c
    sbc [hl]
    xor d
    rst $18
    ld b, l
    rst $38
    or h
    ld e, a
    ld e, c
    xor a
    xor e
    ld d, a
    db $dd
    dec hl
    add h
    ld a, a
    and e
    ld e, l
    ld c, d
    or l
    and h
    ld c, e
    add hl, bc
    or $42
    rst $38
    and d
    db $fc
    inc c
    ld hl, sp-$30
    cp b
    adc b
    ld [hl], b
    ret nc

    ld h, b
    jr nz, jr_019_4e10

    ld b, b
    add b
    add b
    nop
    dec b

jr_019_4e55:
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [de], a
    ld bc, $0162
    pop bc
    nop
    ld l, a
    rst $38
    cp l
    rst $38
    ld a, [$fdff]
    rst $38
    or b
    rst $38
    ld l, d
    db $fc
    ld bc, $42f0
    add c

jr_019_4e74:
    jr nz, jr_019_4e74

    call nz, $83f8
    pop af
    dec h
    jp nz, $0b95

    ld d, e
    cpl
    ld c, a
    cp a
    cp [hl]
    ld a, a
    ld d, l
    ld l, $aa
    ld e, h
    ld a, l
    cp [hl]
    halt
    db $fc
    ei
    db $fc
    xor $f8
    ld [hl], c
    db $fc
    sub $f8
    ld d, e
    ccf
    jr z, jr_019_4ef7

    ld d, h
    ccf
    dec bc
    ccf
    inc h
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld [$f907], sp
    rst $38
    or h
    rst $38
    ld e, l
    rst $38
    ld [hl-], a
    rst $38
    xor a
    rst $38
    ld d, d
    rst $38
    ld a, c
    rst $38
    sub [hl]
    rst $38
    dec hl
    call nc, $faa5
    ld e, d
    push af
    adc l
    ld a, [$f4ef]
    call nc, $a9fa
    ld [hl], h
    or $88
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld a, [bc]
    ld bc, $0015
    ld a, [bc]
    nop
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
    or l
    ld a, [bc]
    db $eb
    inc d
    or a
    ld [$005d], sp
    xor e
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    ld d, b
    and b
    or b

jr_019_4ef7:
    ld b, b
    ld h, b
    nop
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
    db $ec
    rla
    ld [hl], l
    ld a, [bc]
    xor $15
    ld d, l
    ld a, [bc]
    xor a
    nop
    ld e, b

Jump_019_4f0f:
    nop
    nop
    nop
    nop
    nop
    push de
    ld l, $1c
    ldh a, [$ffb8]
    ld b, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld c, $00
    inc e
    nop
    ld [hl], $00
    ld a, l
    nop
    ld a, a
    nop
    add hl, sp
    ld b, $00
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld e, h
    inc bc
    db $f4
    ld [$6080], sp
    nop
    nop
    inc c
    inc bc
    dec sp
    rlca
    rst $30
    rra
    xor d
    rra
    add hl, de
    rlca
    ld b, $01
    ld bc, $0000
    nop
    rst $38
    rst $38
    rst $20
    rst $38
    sbc l
    rst $38
    dec hl
    cp $58
    rst $30
    add a
    ld a, b
    db $fc
    nop
    nop
    nop
    db $f4
    add sp, $68
    ret nc

    sub b
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
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
    ld l, c
    rst $38
    inc de
    cp $ca
    dec [hl]
    ld a, l
    ld [bc], a
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ret nc

    ld c, d
    and b
    sub b
    ld b, b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_019_4fb5:
    nop
    ld [de], a
    dec c
    inc l
    rla
    ld e, a
    ccf
    cp [hl]
    ld a, a
    db $dd
    ld a, a
    dec hl
    cp $54
    ld sp, hl
    ld h, b
    add b
    cp b
    ld b, b
    ld d, h
    and b
    inc l
    ret nc

    jp c, Jump_019_6be0

    db $f4
    sub [hl]
    add sp, $4b
    db $f4
    nop
    nop
    ld b, b
    jr nz, jr_019_5039

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
    ld [$0c3a], sp
    inc l
    ld d, $32
    inc c
    inc e
    nop
    nop
    nop
    nop
    nop
    cp d
    ld h, e
    ld c, l
    or a
    and d
    dec e
    push de
    ld a, [hl+]
    ld d, a
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld [bc], a
    nop
    sbc d
    ldh [$ff75], a
    adc b
    xor d
    db $10
    push de
    jr nz, jr_019_4fb5

    nop
    ld d, d
    nop
    jr z, jr_019_5012

jr_019_5012:
    sub b
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
    inc b
    inc bc
    ld [bc], a
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
    nop

jr_019_5039:
    nop
    nop
    nop
    inc bc
    nop
    rra
    nop
    ld a, h
    inc bc
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    di
    inc c
    add c
    ld a, a
    ld b, $ff
    ld bc, $00ff
    nop
    rst $38
    nop
    pop hl
    rra
    ld a, c
    add [hl]
    ccf
    ret nz

    add a
    ld hl, sp-$80
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ld e, h
    rst $38
    rst $28
    ccf
    or d
    ld c, a
    db $fd
    rlca
    sbc d
    ld a, a
    dec l
    rst $38
    nop
    nop
    nop
    nop
    ld [hl], b
    add b
    ld l, e
    db $fc
    sub $ff
    pop af
    cp $c3
    rst $38
    ld h, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    ret nz

    ld b, h
    cp b
    add hl, hl
    sub $92
    db $ed
    nop
    nop
    nop
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
    and b
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ld e, $01
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh [$ff1f], a
    ld d, b
    xor a
    and b
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ld d, c
    xor a
    xor d
    ld d, a
    ld e, $ff
    ld [bc], a
    rst $38
    ld e, l
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add hl, hl
    rst $18
    ld d, $ff
    db $ed
    rst $38
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    cp $dc
    rst $38
    xor b
    rst $38
    ld d, [hl]
    rst $38
    cp l
    rst $38
    ld d, d
    rst $38
    sbc l
    ldh [c], a
    ld a, a
    add b
    rst $18
    jr nz, @+$42

    rst $38
    db $10
    ldh [$ff81], a
    rst $38
    ld a, e
    rst $38
    and d
    db $dd
    ld e, l
    and d
    ld a, a
    nop
    ld hl, sp+$00
    ld d, h
    and b
    ldh [rP1], a
    ld b, l
    ld a, [$fff4]
    ld [$1dff], a
    rst $38
    ld hl, sp+$07
    xor l
    inc bc
    ld d, $01
    add hl, hl
    ld b, $48
    or b
    ld [hl-], a
    call z, $f689
    ld d, b
    rst $38
    xor c
    cp $54
    rst $38
    and c
    cp $c8
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    sub b
    ld h, b
    ld c, b
    or b
    call nz, $a538
    ld a, [hl]
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp $01
    ld b, c
    cp a
    and b
    ld e, a
    ld b, b
    cp a
    ld a, [bc]
    push af
    dec b
    ld a, [$fc03]
    ld c, d
    or h
    sub l
    ld l, b
    ld e, e
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rlca
    rst $38
    ld h, c
    sbc [hl]
    sub [hl]
    ld [$002c], sp
    inc a
    nop
    ld d, l
    ld a, [$f4e9]
    add a
    ld hl, sp+$47
    cp b
    or e
    inc c
    ld a, [hl-]
    rlca
    ld e, $01
    ld [bc], a
    inc c
    ld sp, hl
    nop
    ld b, b
    nop
    and e
    nop
    ld [$b101], a
    nop
    sbc b
    nop
    ld [hl], h
    nop
    ld l, b
    nop
    ld c, b
    nop
    db $f4
    nop
    jp z, Jump_000_2c30

    ldh a, [$ffba]
    ld b, b
    sbc b
    ld h, b
    ld [hl], h
    jr c, @+$5d

    inc a
    rra
    nop
    ld d, a
    nop
    ld l, $01
    ld d, e
    nop
    ld h, $01
    dec b
    inc bc
    ld c, $01
    add hl, de
    inc bc
    ld l, a
    ldh a, [$ff33]
    db $fc
    ld sp, hl
    cp $41
    cp $ca
    push af
    xor c
    cp $d3
    db $fc
    and $f8
    ret nc

    ccf
    jp c, $b43d

    ld a, a
    cp d
    ld a, a
    push de
    ccf
    ld a, [$7c0f]
    rlca
    cp e
    inc b
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3e

    sub b
    ldh [$ffc8], a
    ldh a, [$ffb4]
    ld hl, sp+$52
    db $fc
    and l
    ld e, [hl]
    rrca
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld [hl], l
    nop
    jr z, jr_019_5204

jr_019_5204:
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    ld [$f715], a
    ld [$00ff], sp
    ld a, a
    nop
    rst $38
    nop
    ld c, [hl]
    or b
    sbc e
    ld h, h
    inc c
    di
    adc d
    ld a, a
    push de
    ccf
    adc e
    ld a, a
    adc a
    ld a, a
    sub $3f
    sbc b
    nop
    jr nc, jr_019_5228

jr_019_5228:
    ret c

    jr nz, @-$56

    ldh a, [rOBP0]
    ldh a, [$ff94]
    ldh [rBCPS], a
    ret nc

    inc e
    ldh [$ff0e], a

jr_019_5235:
    nop
    dec d
    ld [$1807], sp
    inc c
    db $10
    add hl, bc
    db $10
    jr z, jr_019_5250

    ld [$5030], sp
    jr nz, jr_019_5235

    nop
    call nc, Call_019_6a00
    nop
    push de
    nop
    ld h, d
    nop
    ld [hl], l
    nop

jr_019_5250:
    ld h, d
    nop
    or b
    nop
    or l
    ld e, $7e
    inc bc
    rst $38
    nop
    push hl
    nop
    adc d
    nop
    add hl, de
    nop
    jr jr_019_5262

jr_019_5262:
    ld sp, $cf00
    ld sp, $bfea
    ld e, l
    rst $38
    xor a
    ld a, a
    sbc a
    ld a, a
    rrca
    ld a, a
    and a
    ld e, a
    cpl
    rst $38
    ld a, h
    ldh a, [$ffe9]
    cp $54
    rst $38
    cp b
    rst $08
    ld l, l
    db $d3
    ld a, [$97c1]
    ldh [$ffa8], a
    jp $0758


    cp h
    inc bc
    ld [hl], c
    adc a
    ld a, b
    rst $00
    sbc h
    db $e3
    ld sp, hl
    rst $00
    inc de
    rst $28
    sub l
    ld l, a
    ret c

    cpl
    ld l, h
    sub a
    push de
    ld l, $c2
    dec a
    pop hl
    sbc [hl]
    ret nc

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    nop
    nop
    add b
    ld b, b
    add b
    and b
    ld b, b
    ld d, b
    and b
    and b
    ld d, b
    ld e, b
    or b
    and b
    ld e, b
    ld d, c
    nop
    xor c
    nop
    inc bc
    nop
    sbc a
    nop
    rst $08
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

jr_019_52c9:
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $10
    jr z, jr_019_52c9

    rlca
    ldh a, [rIF]
    add sp, $1f
    ret nc

    cpl
    add sp, $17
    call nc, $a82b
    ld d, a
    ld b, c
    cp [hl]
    ld [de], a
    db $ed
    add b
    ld a, a
    ld a, b
    add b
    inc [hl]
    ret nz

    ld e, b
    and b
    inc [hl]
    ret nz

    ld c, e
    and b
    ld [hl], $c1
    db $ec
    inc bc
    ld d, b
    add a
    ld [hl], b
    nop
    and b
    ld b, b
    ldh [rP1], a
    ld b, b
    add b
    ld b, h
    add b
    jp z, $bc00

    nop
    ld hl, sp+$00
    ld h, b
    nop
    dec [hl]
    nop
    ld d, d
    nop
    rlca
    nop
    dec b
    nop
    ld a, [bc]
    nop
    ld [$1000], sp
    nop
    inc sp
    nop
    jr nz, jr_019_5318

jr_019_5318:
    ld bc, $8b00
    nop
    add l
    nop
    ld c, e
    nop
    rla
    nop
    add hl, hl
    ld [bc], a
    ld d, a
    rst $38
    xor a
    ld a, a
    ld a, $ff
    sub l
    ld a, a
    ld c, d
    cp a
    add $39
    ld [hl], b
    adc a
    adc e
    ld [hl], h
    ld d, l
    and b
    ld hl, $bdc0
    ret nz

    ld h, [hl]
    sbc b
    inc de
    db $fc
    dec c
    cp $78
    add a
    sbc [hl]
    ld h, c
    adc [hl]
    ld a, a
    add l
    ld a, a
    ld sp, $9acf
    ld l, a
    xor c
    ld a, [hl]
    inc bc
    db $fc
    inc bc
    db $fc
    inc hl
    call c, $ffd0
    and b
    rst $38
    db $10
    rst $28
    ld a, [$2c05]
    db $d3
    ld d, b
    xor a
    ld a, [bc]
    push af
    sub b
    ld l, a
    ld d, h
    xor b
    or d
    ld c, h
    ld a, h
    add d
    ld l, c
    sub [hl]
    inc d
    db $eb
    ld l, $d1
    ld d, $e9
    rrca
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
    add b
    nop
    add b
    nop
    ld b, b
    add b
    cp $01
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    ld a, a
    nop
    daa
    nop
    rlca
    nop
    daa
    nop
    ldh [$ff1f], a
    adc [hl]
    ld [hl], c
    sbc l
    ld h, d
    ld [hl-], a
    call $ce31
    inc hl
    call c, $40bf
    push bc
    ld a, [hl-]
    ld [bc], a
    db $fd
    add hl, bc
    or $17
    add sp, -$43
    ld b, b
    adc [hl]
    ld [hl], c
    jp hl


    rla
    jp nc, Jump_019_552f

    cp a
    pop af
    ld c, $a3
    inc e
    ld l, h
    db $10
    cp l
    ld b, b
    inc h
    ret c

    ld h, h
    sbc b
    ld a, [bc]
    pop af
    dec a
    jp Jump_000_0080


    ld b, b
    nop
    rlca
    nop
    dec d
    ld [$003e], sp
    inc a
    nop
    ld a, [$7700]
    add b
    nop
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    add b
    nop
    inc e
    nop
    halt
    nop
    ld [$3714], a
    nop
    dec bc
    nop
    sub a
    nop
    rra
    nop
    cpl
    nop
    ld e, a
    jr nz, jr_019_544f

    ld hl, $11ae
    db $fc
    inc bc
    cp a
    ld b, b
    call z, $f233
    dec c
    call nz, $a63f

jr_019_53ff:
    ld e, a
    rst $10
    cpl
    ld [$a717], a
    ld e, b
    ld c, e
    or h
    add c
    ld a, [hl]
    ld b, e
    cp h
    rlca
    ld hl, sp+$47
    ld hl, sp+$41
    cp $80
    rst $38
    ld b, e
    db $fc
    ld bc, $21fe
    cp $01
    cp $54
    cp e
    add h
    ld a, e
    ld a, [bc]
    db $fd
    add e
    ld a, h
    sub b
    ld a, a
    xor b
    ld [hl], a
    sub b
    ld a, a
    call nz, $c23f
    ccf
    and h
    rra
    or h
    rrca
    ldh a, [c]
    rrca
    rla
    add sp, $2f
    ldh a, [rVBK]
    ldh a, [$ff2f]
    ldh a, [$ff1f]
    ldh [rNR22], a
    add sp, $2e
    pop de
    rla
    add sp, $40
    add b
    add b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ret nc

    jr nz, jr_019_53ff

jr_019_544f:
    ld h, b
    ldh a, [rNR41]
    ld b, b
    ldh a, [rIF]
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    jp nz, $943d

    ld l, e
    xor c
    ld d, [hl]
    ld [bc], a
    db $fd
    ld bc, $2ffe
    ret nc

    rst $38
    nop
    ld sp, hl
    ld b, $40
    rst $38
    xor e
    ld d, h
    ld [hl], e
    adc h
    rst $38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    dec h
    jp c, Jump_000_09f6

    cp $01
    adc b
    ld [hl], b
    ldh a, [rP1]
    cp [hl]
    ld b, b
    ld a, e
    add b
    sub l
    ld l, d
    ld a, [hl+]
    call nc, Call_000_08f6
    add $00
    dec c
    nop
    jr nz, jr_019_549a

jr_019_549a:
    ret nz

    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $d3
    inc c
    ld a, [hl+]
    inc d
    ld d, a
    ld [$100e], sp
    cp l
    nop
    ld d, l
    nop
    jr nz, jr_019_54b2

jr_019_54b2:
    nop
    nop
    ld e, a
    jr nz, @+$01

    nop
    push de
    ld a, [hl+]
    db $eb
    inc d
    ld sp, hl
    ld b, $24
    dec de
    ld [hl-], a
    dec c
    ld a, h
    inc bc
    ld sp, $e0cf
    rra
    and d
    ld e, l
    ld b, l
    cp d
    adc [hl]
    ld [hl], c
    or a
    ld c, b
    ccf
    ret nz

    ld a, a
    add b
    ld [$10ff], sp
    rst $38
    add c
    ld a, a
    ld b, b
    cp a
    ld l, b
    sub a
    call nc, $a82b
    ld e, a
    ld d, [hl]
    xor a
    ld b, e
    cp h
    add d
    ld a, h
    rlca
    db $fc
    rrca
    db $fc
    dec c
    cp $4d
    cp [hl]
    xor c
    ld e, [hl]
    ld h, c
    sbc [hl]
    or $0f
    db $fd
    rlca
    cp d
    ld b, a
    ccf
    rst $00
    cp e
    ld b, a
    ld a, [$f807]
    rlca
    call c, Call_000_0a23
    push af
    rlca
    ld hl, sp-$76
    push af
    ld d, [hl]
    xor c
    ld a, [bc]
    push af
    ld h, $d9
    ld b, a
    cp b
    daa
    ret c

    xor b
    ldh a, [$ff58]
    ldh a, [$ff78]
    ldh a, [$ffb0]
    ld hl, sp+$74
    ld hl, sp+$7c
    ld hl, sp+$5c
    ld hl, sp+$6c
    ld hl, sp+$7d
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld [$f500], a

Jump_019_552f:
    nop
    ld a, [hl+]
    nop
    ld de, $be00
    ld b, c
    sbc $21
    ld [$fff7], sp
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    dec de
    nop
    ld h, e
    sbc h
    nop
    rst $38
    rlca
    ld hl, sp+$1a
    ldh [$ffb1], a
    ld c, [hl]
    ld [$d400], a
    nop
    and d
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    xor h
    nop
    db $db
    jr nz, @+$22

    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld d, b
    add b
    xor b
    ld b, b
    ld d, b
    nop
    jr nz, jr_019_5574

jr_019_5574:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    nop
    ld bc, $1900
    nop
    dec de
    nop
    ld a, h
    inc bc
    rrca
    jr nc, jr_019_55de

    ld a, [hl+]
    or $09
    cp c
    ld b, [hl]
    sbc h
    ld h, e
    dec e
    ldh [c], a
    add a
    ld a, b
    db $fc
    inc bc
    ret


    scf
    and d
    ld e, a
    ld b, a
    cp a
    cpl
    rst $18
    adc $3f
    sbc $3f
    cp a
    ld a, a
    rla
    rst $28
    ldh [rIE], a
    ret z

    rst $30
    ld [$82f7], sp
    ld a, l
    add h
    ld a, e
    add d
    db $fd
    ld sp, $70cf
    adc a

jr_019_55b6:
    call nc, $e42f
    rra
    ret z

    ccf
    ld c, [hl]
    cp a
    sub [hl]
    rst $38
    ld [$d2ff], a
    rst $38
    ld sp, hl
    ld [bc], a
    or d
    ld b, c
    ld e, a
    and b
    cp [hl]
    ld b, c
    ld e, a
    and b
    ccf
    ret nz

    rra
    ldh [$ff1f], a
    ldh [rHDMA5], a
    xor d
    and d
    ld e, l
    ld [hl], h
    adc e
    ld a, [$3805]
    rst $00

jr_019_55de:
    db $ed
    ld [bc], a
    rst $10
    jr nz, jr_019_55b6

    jr nz, jr_019_5621

    ld hl, sp+$28
    db $fc

jr_019_55e8:
    ld d, b
    db $fc
    jr z, jr_019_55e8

    ld d, h
    db $fc
    ld e, d
    db $fc
    or [hl]
    ld a, h
    sbc d
    ld a, h
    dec de
    ret c

    jr nz, jr_019_5645

    ld b, l
    ld d, d
    ld b, e
    ld d, l
    ld d, d
    ld e, c
    jr nz, jr_019_5656

    ld b, l
    ld c, [hl]
    ld d, l
    ld d, e
    jr nz, @+$22

    jr nz, jr_019_5655

    ld b, c
    ld d, d
    ld d, e
    jr nz, @+$22

    jr nz, @+$22

    ld c, [hl]
    ld b, l
    ld d, b
    ld d, h
    ld d, l
    ld c, [hl]
    ld b, l
    jr nz, jr_019_5662

    ld d, l
    ld d, b
    ld c, c
    ld d, h
    ld b, l
    ld d, d
    jr nz, jr_019_5673

    ld b, c

jr_019_5621:
    ld d, h
    ld d, l
    ld d, d
    ld c, [hl]
    jr nz, jr_019_5647

    ld d, b
    ld c, h
    ld d, l
    ld d, h
    ld c, a
    jr nz, jr_019_564e

    jr nz, jr_019_5685

    ld d, d
    ld b, c
    ld c, [hl]
    ld d, l
    ld d, e
    jr nz, jr_019_5643

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

jr_019_5643:
    ld [bc], a
    ld [bc], a

jr_019_5645:
    ld [bc], a
    ld [bc], a

jr_019_5647:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_019_564e:
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_019_5655:
    inc bc

jr_019_5656:
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

jr_019_5662:
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

jr_019_5673:
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
    nop
    nop
    nop
    nop
    nop

jr_019_5685:
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    ld [$0404], sp
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
    ld [$0a09], sp
    dec bc
    inc b
    inc b
    inc b
    inc c
    inc b
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    inc b
    dec d
    ld d, $0c
    rla
    jr jr_019_56f4

    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    dec d
    ld e, $1f
    ld d, $20
    ld hl, $2322
    inc h
    dec h
    ld h, $15
    ld e, $27
    jr z, jr_019_570f

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_019_56f4:
    dec l
    ld l, $2f
    jr nc, jr_019_5720

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_573b

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

jr_019_570f:
    ld b, a
    ld c, b
    ld c, c
    inc c
    ld [$0404], sp
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

jr_019_5720:
    dec b
    ld b, $07
    ld [$0404], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    inc b
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    inc b
    inc b
    ld d, $17
    jr jr_019_5754

jr_019_573b:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc b
    inc b
    jr nz, jr_019_5766

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    inc b
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_019_5754:
    jr nc, jr_019_5787

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_5797

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_019_5766:
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
    ld c, [hl]
    ld c, a
    inc c
    ld [$0404], sp
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
    inc b

jr_019_5787:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10

jr_019_5797:
    ld [$0808], sp
    ld de, $1211
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_019_57b5

    ld de, $1911
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_019_57ca

    add hl, de
    ld hl, $2121

jr_019_57b5:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_57e6

    ld hl, $2a2a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp

jr_019_57ca:
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc c
    ld [$0404], sp
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

jr_019_57e6:
    dec b
    inc b
    inc b
    ld b, $04
    rlca
    inc b
    inc b
    inc b
    inc b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld [$0810], sp
    ld [$1211], sp
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_019_581e

    ld a, [de]
    dec de
    ld de, $1d1c
    ld e, $1f
    jr nz, jr_019_582f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1c
    daa
    daa
    jr z, jr_019_5841

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_019_581e:
    jr nc, jr_019_5851

    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_019_582f:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc c
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    inc b

jr_019_5841:
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
    ld [$0409], sp

jr_019_5851:
    inc b
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0a12
    dec bc
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    inc de
    inc d
    dec e
    ld e, $1f
    jr nz, jr_019_5890

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_58a0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_019_58b0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_58c0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_019_5890:
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
    inc c
    ld [$0404], sp
    inc b
    inc b

jr_019_58a0:
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
    ld [$0a09], sp

jr_019_58b0:
    dec bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0412
    inc b
    inc b

jr_019_58c0:
    inc de
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_019_58e1

    inc de
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    jr nz, jr_019_58f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_5902

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_019_58e1:
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_5924

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_019_58f3:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc c
    ld [$0404], sp
    inc b
    inc b

jr_019_5902:
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
    ld [$0409], sp
    inc b
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17

jr_019_5924:
    jr jr_019_593f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_019_594f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_595f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_019_596f

    ld [hl-], a

jr_019_593f:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_019_594f:
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
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc c

jr_019_595f:
    ld [$0404], sp
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

jr_019_596f:
    inc b
    dec b
    ld b, $04
    inc b
    inc b
    inc b
    rlca
    ld [$0a09], sp
    inc b
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_019_59a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_019_59b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_59c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_019_59d3

    ld [hl-], a

jr_019_59a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_59e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_019_59b3:
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
    ld c, [hl]
    ld c, a
    rst $38
    rst $38
    rst $38

jr_019_59c3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_59cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_59d3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ei
    ei
    ld sp, hl

jr_019_59e3:
    ld sp, hl
    ld a, [$f9fa]
    ei
    ld a, [$faf9]
    ld hl, sp-$07
    ld hl, sp-$06
    ld sp, hl
    rst $38
    rst $38
    db $fc
    db $fc
    db $e3
    ldh [$ff0c], a
    rra
    ld b, e
    ccf
    cp l
    ld a, a
    ld a, [hl]
    rst $38
    cp $ff
    rst $38

Call_019_5a01:
    rst $38
    rrca
    rrca
    pop af
    ld bc, $008e
    ld h, e
    add b
    jr c, jr_019_59cc

    cp h
    ret nz

    sbc [hl]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    rst $18
    rra
    ld l, b
    ld [$0335], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [c], a
    pop hl
    dec d
    ld c, $ba
    ld a, h
    push hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    ld e, a
    rra
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    scf
    rst $38
    sbc e
    rst $38
    ld c, l
    rst $38
    ld h, $ff
    ld hl, sp-$06
    db $fd
    db $fd
    db $fd
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], d
    ld [hl], c
    dec b
    add e
    sub l
    jp $9721


    adc b
    daa
    ld l, c
    daa
    ld l, h
    inc hl
    inc d
    ld h, e
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    ld [$f0ff], sp
    rst $38
    nop
    rst $18
    sbc [hl]
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh [$ff3f], a
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add b
    cp $00
    inc sp
    inc bc
    jr jr_019_5a95

    ld a, [de]

jr_019_5a95:
    nop
    ld de, $0302
    ld b, $0d
    ld b, $15
    ld c, $29
    ld e, $9b
    db $e3
    scf
    rst $00
    ld l, a
    adc a
    ld e, a
    rra
    ccf
    ccf
    add b
    nop
    or b
    rrca
    add a
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
    db $f4
    ld hl, sp-$6d
    db $e3
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    or $ff
    db $ec
    rst $38

jr_019_5ada:
    reti


    rst $38
    or d
    rst $38
    ld h, h
    rst $38
    inc de
    rst $38
    add hl, bc

jr_019_5ae3:
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    nop
    ld bc, $bd9d
    push de
    call $e5e9
    db $f4
    pop af
    ld d, $71
    dec bc
    ld [hl], b
    inc c
    ld a, b
    ld b, $7d
    ld [bc], a
    ld a, a
    nop
    ld a, [hl]
    jr nz, jr_019_5b6b

    jr nc, jr_019_5b5d

    inc hl
    adc h
    scf
    ld h, b
    dec de
    ldh a, [$ff0c]
    ld hl, sp+$17
    rrca
    jr z, jr_019_5ae3

    ret nc

    rst $20
    sub b
    rst $20
    db $fc
    nop
    pop af
    nop
    add l
    inc bc
    cpl
    rra
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, c
    ld a, $61
    cp $c1
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld sp, hl
    cp [hl]
    ccf
    cp c
    ld a, $a4
    jr c, jr_019_5ada

    inc hl
    adc a
    rrca
    rra
    rra
    rst $28
    rrca
    scf
    rst $00
    ld c, a
    adc a
    ccf
    ccf
    rst $38

jr_019_5b55:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_5b5d:
    rst $38
    rst $38
    rst $38
    ret z

    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b

jr_019_5b69:
    rst $38
    nop

jr_019_5b6b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_019_5b55

    sub b
    ld l, a
    ld c, b
    or a
    and h
    ld e, e
    jp nc, $e92d

    ld d, $79
    ld sp, hl
    cp h
    db $fd
    db $dd
    db $fc
    ld l, [hl]
    cp $36
    cp $9b
    rst $38
    ld c, l
    rst $38
    ld h, $ff
    add hl, hl
    ld b, h
    ld h, $40
    dec hl
    ld c, b
    ld c, c
    inc l
    add h
    inc l
    inc b
    inc h
    add b
    and l
    add d
    xor d
    jr nc, jr_019_5b69

    add sp, $07
    db $10
    rrca
    pop hl
    ld e, $08
    ldh a, [$ffc5]
    inc bc
    rla
    rrca
    ld e, a
    rra
    nop
    rst $38
    inc b
    ld hl, sp+$22
    pop bc
    ld [de], a
    rla
    sub [hl]
    ld d, [hl]
    call nz, $d0d6
    call nz, $e8e0
    add c
    dec de
    ld c, e
    inc de
    ld b, e
    rla
    ld b, a
    rla
    ld d, a
    rlca
    ld b, e
    rrca
    ld c, b
    rlca
    ld b, a
    ld [$e797], sp
    and a
    rst $00
    res 2, e
    dec d
    cp c
    cp d
    inc a
    dec e
    ld a, [hl]
    ld b, [hl]
    ccf
    ld sp, $ff0f
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
    cp a
    ccf
    ld e, a
    sbc a
    ld bc, $02fe
    db $fd
    inc b
    ei
    add hl, bc
    or $12
    db $ed
    dec h
    jp c, $b44b

    sub a
    ld l, b
    db $f4
    dec bc
    ld a, [$fd05]
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc de
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    cp $01
    ldh a, [$ff08]
    rst $00
    add hl, hl
    add e
    adc c
    call nz, $c3cd
    ld h, h
    ldh [c], a
    inc sp
    rst $30
    rlca
    inc bc
    push bc
    inc bc
    pop hl
    inc bc
    rla
    ld l, a
    call $73f3
    db $fc
    rst $38
    ld a, a
    ld a, [hl]
    ld a, a
    cp $ff
    ld a, $7f
    rlca
    add a
    db $e4
    ldh a, [$ffac]
    ret nz

    ret z

    jr nc, jr_019_5c5f

    ldh [$ff31], a
    ret nz

    ld sp, $1ac0
    ldh [rNR24], a
    ldh [rOBP0], a
    rlca
    xor a
    nop
    or a
    nop
    or b
    nop
    ld h, a
    nop
    ld c, a
    nop
    sbc c
    inc b
    add hl, sp

jr_019_5c5f:
    nop
    rrca
    nop
    add b
    nop
    inc bc
    inc bc
    ld a, l
    ld bc, $00f2
    rst $08
    nop
    cp [hl]
    nop
    ld a, b
    nop
    ld l, $cf
    dec b
    rlca
    ei
    rst $38
    or $ff
    db $ec
    rst $38
    ld b, b
    ld h, b
    rra
    nop
    pop bc
    ld a, $c8
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    cpl
    ret nc

    ld e, a
    and b
    cp a
    ld b, b
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
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    ld l, a
    nop
    scf
    nop
    sbc e
    nop
    ld c, l
    nop
    ld h, $00
    db $f4
    dec bc
    ld a, [$fc05]
    ld [bc], a
    db $fd
    nop
    db $fc
    ld bc, $01fa
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    and [hl]
    rra
    ld e, e
    ccf
    cp l
    ld a, a
    ld a, h
    cp $fc
    db $fc
    ld hl, sp-$04
    ld sp, hl
    ld hl, sp-$0d
    ld hl, sp+$42
    add c
    inc b
    add c
    ld [bc], a
    inc c
    nop
    ld e, $40
    ld e, $81
    ld a, $80
    ccf
    ccf
    ld a, a
    xor e
    db $db
    jp c, $7ce7

    rst $38
    ld sp, $887e
    jr nc, jr_019_5d32

    inc bc
    ld e, h
    ccf
    and d
    inc e
    inc [hl]
    ret nz

    ld [hl+], a
    ret nz

    ld c, h
    add c
    jr z, jr_019_5d0b

    ret nc

    ld h, a
    jr nz, @-$2f

    add b
    rra
    ld e, a
    ccf
    nop
    ld a, [hl]
    db $fd
    nop

jr_019_5d04:
    ld h, e
    ret c

    ld h, a
    sub b
    rrca
    ldh a, [rNR34]

jr_019_5d0b:
    ldh [$ff3c], a
    ret nz

    cp h
    ret nz

    ldh a, [c]
    ld bc, $03e5
    rlc a
    sub a
    rrca
    rrca
    rra
    cpl
    rra
    rra
    ccf
    rra
    ccf
    jr c, @+$01

    call c, $ecff
    rst $38
    db $ed
    cp $ed
    cp $eb
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    ld a, [hl]
    add b

jr_019_5d32:
    ccf
    ret nz

    pop af
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ret nc

    ld e, a
    jr nz, jr_019_5d04

    nop
    rst $18
    nop
    rst $18
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    or $00
    db $ec
    nop
    reti


    nop
    or d
    nop
    ld h, h
    nop
    inc de
    nop
    add hl, bc
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    inc bc
    or [hl]
    ld bc, $00d7
    ld h, l
    nop
    ld [hl-], a
    nop
    sub d
    nop
    ld c, c
    inc b
    inc h
    ld [bc], a
    db $e3
    ldh a, [rDIV]
    ldh a, [c]
    add h
    ld h, d
    ld [$6804], a
    dec b
    add hl, bc
    dec b
    ld de, $950d
    add hl, bc
    nop
    ld a, a
    ld a, a
    rst $38
    ldh a, [$fff8]
    rst $20
    ldh a, [rIE]
    rst $38
    ret nz

    ldh [$ff9f], a
    ret nz

    rst $38
    rst $38
    ld b, c
    add b
    cp [hl]
    pop bc
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    cp $01
    rst $38
    rst $38
    add b
    ld a, a
    ld a, [hl]
    rst $38
    ld e, $3f
    cp l
    ld a, [hl]
    ei
    db $fc
    ld a, e
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp+$78
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret z

    nop
    ret c

    nop
    sbc b
    nop
    inc a
    nop
    ld e, a
    ccf
    rra
    ld a, a
    rra
    ld a, a
    ld l, $7f
    ld d, c
    ccf
    ld c, [hl]
    ccf
    ld b, b
    ccf
    ld h, b
    rra
    or c
    cp $b1
    cp $63
    db $fc
    jp $83fc


    db $fc
    ld b, $f8
    dec b
    ld sp, hl
    add hl, bc
    di
    add b
    nop
    add b
    nop
    add b
    nop
    inc c
    rra
    jr nc, jr_019_5e72

    call nz, $94e3
    rst $08
    dec hl
    sbc a
    ld [hl], $00
    dec [hl]
    nop
    inc sp
    nop
    sub [hl]
    nop
    inc h
    ld b, b
    sub c
    nop
    ld a, [hl+]
    ret nz

    sub b
    ldh [$ffc8], a
    nop
    sub b
    nop
    jr nz, jr_019_5e16

jr_019_5e16:
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_019_5e22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    jp $24c3


    jr jr_019_5e22

    ld a, $9e
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    adc [hl]
    ld a, a
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    ccf
    ccf
    cp a
    ccf
    cp a
    cp a
    ccf
    rst $38
    rst $38

jr_019_5e72:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    jp $24c3


    jr @-$31

    ld a, $9e
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
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
    ld a, a
    ld a, a
    cp a
    ccf
    ccf
    cp a
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
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
    pop hl
    ld e, $ff
    nop
    inc a
    nop
    add b
    add b
    ret nz

    jp nz, $ccd4

    ldh [$ffe1], a
    ld [$7fe6], a
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
    ld a, a
    ld a, a
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    jr c, jr_019_5f07

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_5f07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld b, a
    add a
    db $fd
    db $fc
    db $fd
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_5f1e:
    cp $fe
    adc [hl]
    ld a, a
    ret nz

    ccf
    pop hl
    ld e, $ff
    nop
    inc a
    nop
    inc bc
    ld b, e
    rla
    daa
    ld b, a
    rst $00
    ccf
    cp a
    cp a
    ccf
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$faff]
    rst $38
    db $f4
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rla
    rst $38
    ld d, $fe
    ld d, $fe
    ld a, [bc]
    cp $0a
    cp $ff
    rst $38
    ldh [$ffe0], a
    adc [hl]
    add b
    ld d, e
    jr nz, jr_019_5f1e

    ld a, b
    ld b, d
    ret nz

    sub h
    jr c, @+$22

    ld h, b
    ldh a, [$fff0]
    push af
    di
    jr c, jr_019_5fae

    ld e, d
    add hl, de
    ld c, b
    ld [$00b5], sp
    xor h
    nop
    ld e, [hl]
    nop
    add hl, hl
    add b
    ld b, l
    ld l, b
    sbc c
    db $dd
    ld a, [de]
    sbc c
    ld [$c47b], sp
    inc sp
    ret z

    rlca
    jr nc, jr_019_5f9f

    ret nz

    ccf
    ld a, b
    rst $38
    cp $ff
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_019_5f9f:
    rst $38
    add hl, bc
    pop af
    ld [bc], a
    db $fc
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    pop af
    rst $38

jr_019_5fae:
    ld a, e
    rst $38
    ld hl, sp-$07
    ld b, b
    ld b, c
    or d
    ld b, $c1
    sbc e
    add sp, -$33
    ldh a, [$ffe6]
    ret


    ldh a, [c]
    push bc
    ld hl, sp+$2f
    ld c, a
    sbc a
    sbc a
    ld e, a
    sbc a
    ccf
    ccf
    cp b
    jr c, jr_019_6032

    ld h, b
    ld c, h
    ld b, b
    inc de
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
    ccf
    ccf
    ld e, a
    rra
    sbc a
    rra
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    add sp, -$01
    add sp, -$01
    add sp, -$01
    ret nc

    rst $38
    ret nc

    rst $38
    ld a, [bc]
    cp $04
    cp $05
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld b, h
    ret c

    sub c
    ld [hl-], a
    inc h
    ld l, h
    ld c, d
    dec de
    sub h
    add [hl]
    ld b, b
    call $e369
    or h
    ldh a, [c]
    ccf
    nop
    ld c, [hl]
    ld bc, $2196
    ld c, b
    inc de
    db $10
    res 1, b
    or e
    jr nz, jr_019_6099

    ld [hl], h
    di
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $05
    db $fc
    ld a, [bc]
    ld hl, sp+$0a
    ld hl, sp+$00
    rst $38

jr_019_6032:
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    ccf
    rlca
    ld e, a
    rlca
    ld l, a
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    db $fc
    add c
    cp $01
    cp $20
    rst $38
    jr nc, @+$01

    ld [hl-], a
    ei
    dec [hl]
    pop af
    dec [hl]
    pop af
    ld hl, $0e00
    nop
    ld d, h
    inc bc
    ld c, c
    inc hl
    add c
    dec h
    ld [de], a
    or [hl]
    ld d, b
    sub d
    inc de
    ret c

    rrca
    rst $08
    ld c, a
    rst $28
    rrca
    ld l, a
    xor a
    adc a
    rra
    sbc a
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld b, b

jr_019_6099:
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    ld b, d
    and c
    ld de, $468f
    ccf
    add hl, de
    rra
    ld c, b

jr_019_60b1:
    pop hl
    dec l
    ldh [c], a
    ld d, $c1
    jr jr_019_60b8

jr_019_60b8:
    rrca
    ldh [$ff87], a
    ldh a, [$ff73]
    ld hl, sp-$07
    db $fc
    ld h, b
    rst $30
    ld [$90e7], sp
    rrca
    ld h, b
    rra
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld a, [de]
    ld hl, sp+$14
    pop af
    inc d
    pop af
    inc d
    pop af
    inc d
    pop af
    dec d
    ldh a, [$ff15]
    ldh a, [$ff15]
    ldh a, [rNR44]
    ld [hl], e
    ld sp, $3c7d
    ld a, h
    inc a
    ld a, l
    dec a
    cp l
    inc e
    cp l
    dec e
    cp h
    ld e, $de
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    db $10
    rra
    ld [$616f], sp
    ld [hl], e
    ld [hl], b
    ld a, h
    ld hl, sp-$08
    ld h, d
    add sp, $6a
    add sp, $4a
    ret c

    jp c, $92d8

    cp b
    ld [hl-], a
    jr nc, jr_019_613f

    or b
    and d
    jr nc, jr_019_60b1

    ret z

    add h
    add sp, -$6c
    pop hl
    sub c
    db $e3
    sbc d
    db $e3
    adc e
    di
    adc l
    pop af
    adc l
    pop af

Call_019_6120:
    rst $38
    rst $38
    rra
    rra
    ld h, a
    add a
    adc e
    di
    ld h, l
    ld sp, hl
    sbc d
    db $fc
    db $e4
    cp $f8
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
    rst $38
    cp $ff
    ld sp, hl

jr_019_613f:
    rst $38
    ld a, [$f4ff]
    rst $38
    add sp, -$01
    ret nc

    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $02
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$fa05]
    add a
    ld l, a
    inc bc
    rla
    dec b
    dec bc
    inc bc
    dec b
    ld b, $01
    ld bc, $2b02
    db $10
    add h
    ld a, c
    db $fd
    db $fc
    db $fc
    cp $fe
    cp $f8
    cp $e6
    rst $38
    sbc h
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld a, [de]
    ld hl, sp+$0d
    db $fc
    ld [hl], $de
    inc de
    rst $08
    ld bc, $00ff
    rst $38
    ld b, $fb
    ld [bc], a
    ld sp, hl
    adc a
    ld e, a
    ld b, a
    cpl
    and c
    rla
    ld d, b
    ld [$83ac], sp
    sub $c0
    ld l, c
    ldh [$ff36], a
    ldh a, [$fff2]
    ld hl, sp-$20
    or $c6
    add sp, $11
    nop
    inc c
    add b
    ld h, e
    inc e
    add b
    ld a, a
    ld b, b
    ccf
    ld h, d
    ld l, b
    ld c, d
    ldh [rTIMA], a
    pop de
    dec d
    ld hl, $036a
    inc d
    rlca
    adc e
    dec c
    add hl, bc
    adc h
    adc l
    pop af
    adc h
    pop af
    push bc
    ld a, c
    ld b, [hl]
    jr c, jr_019_61df

    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06

jr_019_61df:
    ld hl, sp-$04
    cp $7e
    db $fc
    sbc b
    db $fd
    pop hl

jr_019_61e7:
    db $fd
    jr c, jr_019_61e7

    inc c
    ld sp, hl
    nop
    ei
    adc b
    ld [hl], e
    and $ff
    sbc b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    ldh a, [rP1]
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
    add e
    ld a, h
    nop
    call $0b3e
    db $f4
    dec bc
    db $f4
    rla
    add sp, $2f
    ret nc

    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    nop
    ld a, c
    inc e
    ld a, $ec
    ld a, [$e074]
    sbc d
    pop hl
    jp z, $e885

    add l
    jr nc, jr_019_6244

    and b
    ld bc, $837e
    inc a
    adc h
    ld [hl-], a
    or d
    inc c
    ld c, [hl]
    db $10
    ld e, l
    nop
    ld e, l
    nop
    ld e, e
    nop
    ld b, b
    ccf
    ld b, b
    ccf

jr_019_6244:
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $05
    db $fc
    add hl, bc
    ld hl, sp+$0a
    ld hl, sp+$2c
    db $e3
    ld e, b
    rst $00
    and b
    adc a
    ld h, c
    db $10
    ret nz

    ld a, $c1
    ccf
    add c
    ld a, a
    ld b, e
    ccf
    nop
    add b
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    nop
    rst $38
    rst $38
    rst $38

jr_019_627d:
    rst $38
    rst $38
    rst $38
    inc h
    ld b, a
    ld [de], a
    db $e3
    ld bc, $c5f1
    ret


    and h
    jr c, jr_019_627d

    db $fc
    ldh a, [c]
    db $fc
    ld hl, sp-$02
    ld b, $f8

jr_019_6292:
    ld b, $f8
    ld c, $f0
    ld c, $f0
    adc [hl]
    ldh a, [$ff9e]
    ldh [$ff5e], a
    ld h, b
    ld a, [hl]
    ld b, b
    ld h, h
    sub c
    sub h
    ld h, c
    ld [$d504], a
    ld [$18a2], sp
    ld c, d
    jr nc, jr_019_6292

    db $10
    ldh [$ff15], a
    add hl, bc
    ret nz

    ld [hl-], a
    ld bc, $03c4
    add hl, hl
    rlca
    add e
    ld l, a
    ld d, a
    rst $08
    add a
    rst $18
    and a
    sbc a
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $10
    rst $28
    cp a
    nop
    sbc a
    nop
    ld e, a
    nop
    cpl
    ret nz

    sub a
    ldh [$ffc6], a
    ldh a, [$ffe9]
    ldh a, [$fffa]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    or $f0
    pop af
    db $f4
    db $ec
    db $ed
    db $eb
    db $eb
    db $db
    db $db
    rst $00
    rst $10
    or c
    or a
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    rra
    ld h, a
    add a
    sbc c
    pop hl
    db $e4
    ld hl, sp-$07
    db $fc
    ld hl, sp-$07
    rst $38
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
    sbc a
    rra
    ld h, a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    adc [hl]
    xor a
    inc bc
    ld l, a
    ld b, b
    rra
    sbc b
    add a
    ld c, $c1
    inc bc
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    ld a, e

jr_019_6341:
    ei
    sub e
    di
    rst $20
    rst $30
    ld hl, $0ee7
    rst $28
    add e
    ld c, a
    ret nz

    rra
    jr jr_019_6357

    sbc b
    ldh [$ffe4], a
    ld hl, sp-$08
    db $fd
    ld sp, hl

jr_019_6357:
    ld sp, hl
    ld a, e
    ei
    sub e
    di
    rst $20
    rst $30
    inc hl
    rst $20
    ld a, a
    ld a, a
    adc a
    rrca
    ld [hl], b
    add b
    dec de
    ldh [$ffc0], a
    ei
    push hl
    di
    push hl
    di
    set 4, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    rrca
    sub b
    ld hl, $9c4a
    sub [hl]
    rst $28
    ret


    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rlca
    cp b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $08
    rst $08
    jr nz, jr_019_6341

    ld e, b
    dec sp
    or h
    ld a, c
    ld l, h
    ld [hl], c
    nop
    rst $38
    nop
    rst $38
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
    ld c, $c1
    inc bc
    ldh a, [$fffc]
    nop
    nop

jr_019_63c7:
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    rst $28
    add e
    ld c, a
    ret nz

    rra
    jr jr_019_63de

    dec a
    nop
    sbc d
    ld bc, $03a4

jr_019_63de:
    db $d3
    inc c
    sub a
    rst $08
    ld l, $9f
    ld e, h
    ccf
    or c
    ld a, [hl]
    ld b, [hl]
    ld hl, sp-$63
    ldh [$ff72], a
    add c
    jp z, $2707

    ret z

    ld c, h
    add b
    sub b
    inc bc
    rrca
    nop
    ld b, c
    ld a, $00
    rst $38
    nop
    rst $38
    jr nz, jr_019_63c7

    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    call c, Call_019_6120
    sub e
    inc b
    call Call_000_3012
    push hl

jr_019_6411:
    inc bc
    inc bc
    scf
    db $db
    dec de
    db $ec
    dec c
    db $f4
    ld b, $78
    inc bc

jr_019_641c:
    ld a, h
    ld bc, $80be
    sbc b
    and e
    sub b
    rst $00
    cpl
    ret nz

    ld h, b
    adc a
    rst $18
    nop
    ccf
    nop
    cp a
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc $00
    pop hl
    nop
    dec bc
    rlca
    pop hl
    inc bc
    nop
    rla
    ld b, $08
    add hl, de
    ld bc, $0703
    dec l
    rra
    ld a, d
    db $fc
    ret


    pop af
    dec h
    rst $00
    adc l
    rra
    ld l, l
    ld a, a
    db $ed
    rst $38
    db $ec
    cp $80
    ld d, $04
    ld [hl], d
    ld bc, $00fa
    ei
    ld [bc], a
    ld sp, hl
    nop
    push hl
    dec d
    add h
    ld b, b
    ld a, [hl+]
    ld c, h
    ret nz

    inc sp
    add b
    ld c, h
    ld b, b
    inc de
    ld b, b
    xor h
    jr nz, jr_019_647e

    and b
    ld d, b
    sub b

jr_019_647e:
    inc bc
    jp $803e


    ld e, a
    ld b, b
    rra
    ld b, b
    cpl
    jr nz, jr_019_6411

    jr nz, jr_019_6492

    rlca
    ld a, l
    ld a, a
    adc e
    rst $38
    cp a
    nop

jr_019_6492:
    inc bc
    nop
    or h
    jr c, jr_019_641c

    ld b, $01
    ld bc, $fcfc
    db $e3
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    add b
    nop
    nop
    ret nz

    ret nz

    ld a, b
    ld hl, sp+$00
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
    nop
    rst $38
    nop
    dec bc
    rra
    dec hl
    rra
    dec hl
    rra
    ld a, [hl+]
    ld e, $a9
    jr jr_019_64eb

    ld [bc], a
    sbc b
    ld [bc], a
    ld hl, sp+$03
    add sp, -$08
    ldh [$ffe2], a
    sub d
    adc d
    ld e, b
    ld a, [hl-]
    ld a, d
    ld hl, sp-$03
    db $fd
    ld a, a
    rst $38
    ld a, [hl]
    ld a, a
    ld b, d
    ld [$edc0], a
    pop bc
    db $dd
    add $d8
    adc l
    pop de
    sbc e

jr_019_64eb:
    and e
    scf
    add a
    ld l, a
    rrca
    adc [hl]
    ld c, a
    inc a
    ccf
    ld a, b
    ld a, a
    ldh a, [rIE]
    pop hl
    rst $38
    jp nz, $85ff

    rst $38
    dec bc
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld e, [hl]
    rst $38
    cp h
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    inc c
    rst $38
    add hl, de
    rst $38
    inc sp

Jump_019_651d:
    rst $38
    ld h, a
    rst $38
    adc $fe
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    or $ff
    nop
    nop
    add b
    add b
    ret nz

jr_019_6535:
    ret nz

    ld h, b

jr_019_6537:
    ldh [$ffd7], a
    ldh a, [$ff88]
    ld hl, sp+$05
    db $fc
    ld [bc], a
    cp $ff
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
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [$fc01]
    ld bc, $00fd
    cp $00
    nop
    db $fc
    ld a, [$0203]
    db $f4
    inc b
    jp hl


    jr c, jr_019_65e0

    dec b
    cp b
    nop
    ret nz

    or c
    ld b, e
    rst $00
    rrca
    rra
    ccf
    ld l, [hl]
    rst $38
    xor $fe
    sbc $1f
    inc e
    rra
    jr c, jr_019_6535

    jr nc, jr_019_6537

    ld h, c
    ld a, a
    ld b, d
    ld a, a
    ld b, l
    ld a, a
    adc e
    rst $38
    rla

jr_019_6581:
    rst $38
    cpl
    rst $38
    ld e, [hl]
    rst $38
    cp h
    rst $38
    ld a, b
    cp $f1
    db $fc
    pop hl
    db $fc
    jp nz, $80f9

    db $fc
    nop
    db $e3
    rlca
    sbc a
    ld e, a
    ccf
    cp b
    ld a, a
    ld h, b
    ld hl, sp+$44
    db $e3
    sub b
    adc a
    rlca
    inc bc
    nop
    ld hl, sp-$07
    cp $fe
    rst $38
    rrca
    rst $38
    inc bc
    rrca
    ld sp, $0cc3
    pop af
    db $ec
    rst $38
    ret c

    ld a, a
    jr nc, jr_019_65d5

    ld d, b
    adc a
    jr z, jr_019_6581

    sub b
    rst $20
    sub l
    ldh [c], a
    jp z, Jump_000_06f1

    ld a, [$f709]
    ld de, $21ef
    sbc $42
    cp l
    add l
    ld a, d
    dec bc
    db $f4
    rla
    add sp, -$01
    nop
    ld a, a
    nop
    ld a, a

jr_019_65d5:
    nop
    cp a
    add b
    add b
    cp a
    sbc a
    add b
    ret nz

    ld e, a
    ret nz

    ld e, a

jr_019_65e0:
    nop
    rst $38
    nop
    rst $38
    nop

jr_019_65e5:
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
    rst $38
    add hl, bc
    db $e3
    ld [bc], a
    db $e3
    ld [de], a
    jp $c702


jr_019_65f8:
    add $c7
    ld b, $c7
    add l
    adc [hl]
    and h
    sbc b
    ld l, [hl]
    cp $6e
    cp $6c
    cp $65
    ld sp, hl
    ld de, $45e1
    adc l
    dec e
    dec a
    ld a, l
    db $fd
    sub a
    rst $38
    xor a
    rst $38
    sbc $ff
    cp h
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add d
    ld sp, hl
    ld [bc], a
    ld sp, hl
    inc b
    ldh a, [c]
    inc b
    ldh a, [c]
    inc b
    ldh a, [c]
    dec d
    ldh a, [$ff34]
    pop af
    ld h, d
    pop af
    daa
    rra
    ld c, a
    ccf
    rra
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    ld hl, sp-$39
    ld hl, sp-$3d
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    add e
    db $fc
    ld c, b
    di
    ld c, d
    ld [hl], c
    inc c
    ld [hl], c
    adc l
    jr nc, jr_019_65e5

    ld sp, $209d
    sbc l
    jr nz, jr_019_65f8

jr_019_665f:
    jr nz, jr_019_6690

    ret nc

    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ret nz

    ld c, a
    ret nz

    ld c, a
    ldh [$ff27], a
    ldh [$ff27], a
    xor e
    ld h, e
    jr z, jr_019_665f

    dec h
    jp hl


    ld h, l
    xor c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_6690:
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $20
    rst $20
    rst $20
    rst $20
    rst $10
    rst $00
    rst $10
    rst $00
    set 0, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
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
    nop
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
    rst $38
    nop
    rst $38
    ei
    ei
    and e
    adc e
    add e
    xor e
    nop
    xor l
    and c
    xor l
    and c
    xor l
    nop
    xor [hl]
    ld [bc], a
    xor [hl]
    add e
    xor [hl]
    rst $38
    rst $38
    adc a
    adc a
    nop
    pop hl
    db $f4
    ldh a, [$ffe2]
    pop hl
    inc e
    add c
    ld hl, $421c
    inc a
    cp $fe
    cp $fe
    ld bc, $7cfc
    ld a, l
    sbc e
    add hl, de
    ld h, b
    add b
    ld [hl], $c0
    dec sp
    ret nz

    and a
    rla
    ld sp, $b099
    sbc [hl]
    cp b
    sbc a
    ld l, $9f
    or a
    rrca
    jr jr_019_6724

    adc h
    ld bc, $ffff
    rst $30
    rst $30

jr_019_6724:
    nop
    ld h, [hl]
    ld de, $2381
    adc a
    ld e, $5f
    dec e
    sbc [hl]
    add d
    inc e
    rst $20
    rst $20
    add a
    sub a
    ld d, b
    rlca
    dec hl
    and e
    adc e
    inc hl
    jr nz, jr_019_6789

    ld d, h
    ld c, l
    ld d, h
    adc $ff
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
    nop
    rst $38
    add b
    add b
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
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    ld [bc], a
    ld hl, sp+$00
    ld a, [$fa01]
    nop
    db $fd
    ld [hl+], a
    xor a
    ld [hl-], a
    xor a
    dec hl
    or a
    dec hl
    or a
    add hl, de
    or a
    dec [hl]
    sbc e
    dec d
    dec de
    sbc d
    dec e
    ld [bc], a
    ld a, h
    add [hl]
    jr c, jr_019_67c1

    add b
    ld d, c
    add b
    ld [hl+], a

jr_019_6789:
    pop bc
    inc a
    db $e3
    jr nz, @+$01

    jr nc, @+$01

    dec l
    ret nc

    ld l, $d0
    cpl
    ret nc

    dec l
    jp nc, $d22d

    ld l, $d0
    dec l
    ret nc

    ld a, [hl+]
    ret nc

    jp nz, $e301

    ld b, $44
    ld c, $8a
    inc e
    jr jr_019_67e6

    dec [hl]
    ld a, b
    jr nc, jr_019_6827

    adc d
    ld sp, $001e
    ld e, h
    ld bc, $4108
    add c
    ld b, e
    add c
    ld h, e
    add e
    ld h, a
    add d
    ld [hl], a
    add d
    ld [hl], e
    adc [hl]

jr_019_67c1:
    rst $18
    adc $9f
    xor a
    sbc a
    cpl
    sbc a
    ld h, $9f
    or h
    ld c, $39
    dec b
    add hl, de
    nop
    nop
    ld a, h
    inc bc
    or c
    ld [bc], a
    jp $9814


    ld a, [bc]
    ld [hl-], a
    sub b
    add $9a
    ldh [$ff59], a
    sbc l
    ld b, a
    ld h, $93
    ld e, h
    jr z, jr_019_6816

jr_019_67e6:
    ld d, b
    ld h, b
    jr nz, jr_019_682a

    ret nz

    add b
    nop
    add b
    add b
    nop
    nop
    ld a, a
    add b
    ccf
    ld b, b
    sbc a
    nop
    ld e, a
    jr nz, jr_019_6849

    jr nz, jr_019_680b

    nop
    cpl
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38

jr_019_6808:
    nop
    rst $38
    rst $38

jr_019_680b:
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $01fd
    db $fd
    cp $00

jr_019_6816:
    nop
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp+$5a
    sbc l
    cp b
    sbc $dc
    cp $7c

jr_019_6827:
    rst $38
    inc a
    ld a, a

jr_019_682a:
    db $10
    rrca
    ldh [c], a
    ld bc, $0000
    jr nc, @+$01

    jr c, @+$01

    cp b
    ld a, a
    ld e, b
    ccf
    add hl, hl
    sbc [hl]
    sub d
    call z, $e14c
    ld [bc], a
    nop
    jr nc, jr_019_6808

    ld l, $c7
    ld d, a
    sub e
    add e

jr_019_6847:
    dec hl
    ld [hl+], a

jr_019_6849:
    ld [hl], e
    ld [hl], d
    cp $fd
    cp $7e
    db $fd
    ld b, d
    add c
    ld [hl+], a
    ld b, c
    inc sp
    ld b, b
    ld de, $5960
    ld h, b
    ld c, b
    ldh a, [$ffa0]
    ld [hl], b
    ldh a, [c]
    pop af
    add b
    ld a, e
    ld b, c
    cp h
    ld b, b
    cp [hl]
    jr nz, jr_019_6847

    sbc b
    ld h, a
    rst $20
    jr jr_019_686d

jr_019_686d:
    nop
    ccf
    rst $38
    ld [de], a
    rlca
    ld b, $0f
    ld bc, $1006
    jr c, jr_019_688d

    sbc b
    dec b
    db $e3
    nop
    nop
    db $e4
    ld hl, sp+$01
    add hl, de
    ld d, d
    ld h, e
    ld [hl], e
    ldh [c], a
    inc b
    and $a4
    ld b, [hl]
    ld d, $84
    ld b, l

jr_019_688d:
    inc b
    add hl, bc
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
    add b
    nop
    ldh [rP1], a
    jr nz, jr_019_68b1

    jr nz, jr_019_68b3

    cpl
    nop
    nop
    cpl
    jr nz, jr_019_68b9

    cpl
    nop
    cpl
    nop
    jr nz, jr_019_68bf

    rst $38

jr_019_68b1:
    nop
    rst $38

jr_019_68b3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_019_68b9:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_019_68bf:
    nop
    inc d
    ld c, $e0
    nop
    ld a, [$fd01]
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    add d
    ld l, c
    ld d, h
    ld sp, $1988
    ld b, l
    add e
    ld h, a
    adc a
    or a
    ld b, a
    inc sp
    ld b, a
    jr nc, jr_019_6920

    ld e, l
    dec sp
    sbc e
    rst $00
    rst $28
    cp $fc
    cp $f9
    db $fc
    ldh a, [c]
    ld sp, hl
    nop
    add b
    ccf
    ld a, a
    push af
    di
    sbc d
    ld sp, $1810
    sub b
    jr @+$5a

    sub b
    sbc c
    jr nc, jr_019_691e

    ld [hl], b
    db $d3
    ldh [$fff1], a
    cp $30
    ret nz

    ld b, $01
    ld l, b
    rla
    ret nc

    ld l, $d0
    inc l
    and b
    ld e, h
    and b
    ld e, b
    add b
    ld [bc], a

jr_019_6912:
    inc c
    cpl
    dec b
    adc [hl]
    ld a, [bc]
    ld b, h
    or b
    ret c

    ld a, b
    cp h
    cp c
    dec a

jr_019_691e:
    rla
    add hl, sp

jr_019_6920:
    add hl, hl
    inc c
    inc c
    add hl, bc
    dec hl
    ld c, c
    sub d
    ret c

    ld d, b
    sbc c
    add hl, de
    inc de
    inc de
    sub a
    add e
    rst $10
    jr jr_019_6912

    add [hl]
    adc b
    inc d
    ld h, l
    ld c, c
    di
    jp hl


    di
    db $e3
    rst $30
    db $d3
    rst $20
    and e
    rst $00
    rlca
    nop
    ld c, e
    ld [hl], b
    db $e3
    ld hl, sp-$1b
    ld hl, sp-$37
    db $f4
    call nc, $84e0
    pop hl
    xor c
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    dec bc
    jr nc, jr_019_69d0

    ld hl, sp-$07
    db $fc
    ld sp, hl
    db $fc
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
    nop
    nop
    ld hl, sp+$00
    push hl
    ld b, $12
    db $10
    jr z, @+$32

    dec e
    ld b, $2b
    ld b, a
    ld h, a
    rrca
    ld b, a
    rrca
    rlca
    daa
    ld h, d
    ld b, a
    nop
    add d
    db $10
    jr nz, jr_019_6997

    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop

jr_019_6997:
    rst $38
    inc de
    inc c
    adc a
    ret nz

    sub [hl]
    ret nz

    sbc b
    ret nz

    jp $a3e0


    ret nz

    ld d, e
    add b
    ret


    db $10
    or b
    inc e
    inc c
    ld b, $43
    ld hl, $20a8
    and b
    ld e, b
    ld b, h
    or b
    ld b, h
    or b
    ld b, h
    or b
    ld c, h
    and b
    ld c, h
    jr nz, @+$10

    and b
    adc $40
    adc e
    inc de
    add c
    inc hl
    ld h, b
    ld [hl], c
    ld [de], a
    ld h, [hl]
    ld h, [hl]
    rlca
    ld bc, $4206
    jr nz, jr_019_69f7

    inc c

jr_019_69d0:
    add h
    db $d3
    ld b, e
    sub b
    sub h
    nop
    ld [bc], a
    dec d
    dec d
    ld [bc], a
    ld d, $41
    ld e, e
    ld b, b
    ret


    ldh [rHDMA1], a
    add a
    sub h
    inc bc
    ld e, e
    ld b, b
    ld l, h
    ldh [$ff2b], a
    rst $20
    add d
    ld h, c
    ld c, b
    add [hl]
    sub [hl]
    ld c, a
    dec bc
    jp $8753


    add c
    rlca
    ld h, h

jr_019_69f7:
    inc bc
    sub e
    ldh [rBCPS], a
    ldh a, [$ff96]
    ld a, b
    inc h
    sbc c

Call_019_6a00:
    add sp, -$04
    push de
    add sp, -$5c
    ret


    ld c, c
    sub c
    add b
    ld bc, $1c22
    cp l
    ld a, [hl]
    ld sp, hl
    cp $00
    nop
    add b
    nop
    ld c, [hl]
    add b
    sub c
    adc $a0
    sbc a
    ld c, [hl]
    ccf
    cp [hl]
    ld a, l
    ld a, h
    ld sp, hl
    nop
    nop
    nop
    nop
    nop

jr_019_6a25:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    ld b, e
    ld h, h
    cp c
    ret z

    ld a, [bc]
    inc e
    add l
    ret


    ld sp, $4851
    inc e
    rlca
    add hl, bc
    ld de, $c201
    jp z, $c4a6

    ld d, b
    inc d
    adc c
    sub b
    ld b, c
    add b
    jr c, jr_019_6a25

    inc d
    add hl, de
    call $9980
    ret nz

    ld d, [hl]
    push bc
    ret nc

    ld b, b
    inc bc
    ld c, l
    ld b, e
    inc c
    add e
    inc c
    add b
    add b
    ld b, b
    rst $18
    ld d, c
    db $db
    dec bc
    cp e
    ld h, e
    ld [hl], a
    scf
    rst $30
    rlca
    rst $28
    rrca
    sbc a
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    ld [hl], $10
    rlca
    ret nz

    adc a
    ldh a, [$ff8c]
    ldh a, [$ff88]
    ldh a, [rNR12]
    pop hl
    dec d
    db $e3
    inc hl
    rst $00
    inc h
    ld c, $02
    inc b
    nop
    nop
    nop
    nop
    jr nz, jr_019_6a8b

    ret nz

jr_019_6a8b:
    db $10
    ld h, b
    adc b
    xor b
    ret nz

    jr z, jr_019_6ad2

    adc c
    inc bc
    ld b, e
    add a
    ld b, e
    rlca
    add l
    inc bc
    ld b, d
    add c
    nop
    nop
    ld [bc], a
    nop
    rrca
    rrca
    sub e
    db $e3
    push hl
    ld sp, hl
    ld a, [$fafc]
    db $fc
    ld [hl], d
    db $fc
    push bc
    jr c, jr_019_6ab2

    nop
    ret nz

    ld sp, hl

jr_019_6ab2:
    jp hl


    ldh a, [$fff4]
    ldh [c], a
    jp z, $e7e7

    rst $08
    ld e, a
    rst $08
    ld c, a
    rst $18
    cp [hl]
    ld e, a
    push af
    ld a, [$f06a]
    sub d
    ld h, b
    ld bc, $e50c
    ld hl, sp-$40
    ld hl, sp-$78
    ldh a, [rNR10]
    ldh [rIE], a
    rst $38

jr_019_6ad2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    db $fc
    ld a, [$f8f8]
    ld a, [$faf8]
    db $f4
    ldh a, [c]
    ldh a, [$fff6]
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    ccf
    cp a
    ccf
    rst $18
    rra
    rst $18
    rra
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ldh a, [c]
    pop af
    db $ed
    db $e3
    sbc b
    add a
    rst $38
    rst $38
    rst $08
    rst $08
    xor a
    adc a
    ld c, a
    cpl
    rrca
    rst $08
    cpl
    adc a
    xor a
    rrca
    ld l, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38

jr_019_6b3e:
    db $fc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    ldh [$ff0c], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    jr jr_019_6b6c

jr_019_6b6c:
    ld e, c
    ld a, $bc
    ld a, a
    ld [hl], b
    or $68
    and $61
    db $ec
    ld [hl+], a
    add sp, $14
    ret nz

    ld [bc], a
    pop bc
    ld [$9007], sp
    rrca
    ret nz

    rrca
    rra
    ccf
    nop
    ld a, a
    nop
    add b

jr_019_6b88:
    ld d, d
    inc l
    dec h
    rst $18
    ld b, l
    cp a
    add l
    ld a, a
    add hl, de
    pop bc
    ld h, $80
    ld e, a
    nop
    cp a
    nop
    ccf
    nop
    ld c, a
    add b
    sub a
    ldh [$ff8b], a
    ldh a, [$ff73]
    ld c, $e4
    ld e, $46
    inc a
    adc c
    ld a, h
    adc l
    jr c, jr_019_6b3e

    jr c, jr_019_6b88

    db $10
    rst $10
    db $10
    ld e, a
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    cp a
    ccf
    cp a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38

Jump_019_6be0:
    db $fc
    db $fc
    pop af
    ldh a, [$ffea]
    pop hl
    push de
    jp nz, $d5c2

    and h
    sub e
    sub b
    and a
    sub c
    and a
    jp nc, Jump_000_2808

    sub d
    sub d
    add hl, hl
    dec h
    sbc h
    ld a, [bc]
    sbc $57
    rst $18
    xor a
    rst $28
    ld a, e
    rst $30
    sbc c
    ld a, [hl]
    ld b, e
    inc a
    ld a, $00
    add b
    add b
    ld b, b
    ldh [$ffaa], a
    inc d
    pop bc
    ret nz

    and h
    ld sp, hl
    and c
    ld e, $02
    dec a
    ld b, l
    dec sp
    add hl, bc
    ld [hl], a
    sub l
    ld l, a
    ld a, [hl+]
    rst $18
    ld c, d
    cp a
    ld e, d
    cp a
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld d, $ff
    ld d, $ff
    ld d, $ff
    inc d
    rst $38
    add l
    ld hl, sp+$09
    db $fc
    ld c, $fc
    inc c
    cp $1a
    db $fc
    inc d
    ld hl, sp+$11
    ldh [rNR50], a
    pop bc
    rst $00
    db $10
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    adc $00
    or [hl]
    nop
    ld c, d
    jr nc, jr_019_6c6f

    ld l, c
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $c1
    cp $81
    cp $83
    db $fc
    add e

jr_019_6c6f:
    db $fc
    add e
    ld a, a
    add e
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    ccf
    ldh [rNR10], a
    inc bc
    rlca
    and d
    sbc e
    and c
    sbc e
    adc b
    cp l
    sub $de
    rst $08
    rst $18
    add a
    rst $28
    inc bc
    ld [hl], a
    ld bc, $fe9b
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    ld a, [hl]
    rst $38
    ld a, $7f
    sbc l
    cp a
    push bc
    rst $08
    ldh a, [$fff1]
    and h
    ld sp, hl
    adc d
    ld sp, $c340
    sub c
    ld [$ea91], a
    dec h
    jp nc, $d522

    ld d, e
    and l
    sbc d
    ld a, a
    sub h
    ld a, a
    sub h
    ld a, a
    inc [hl]
    rst $38
    or h
    rst $38
    xor b
    rst $38
    xor c
    cp $6a
    db $fc
    inc l
    rst $38
    dec l
    cp $24
    ld hl, sp+$28
    ldh a, [c]
    ld [hl+], a
    add $46
    sbc [hl]
    cpl
    rrca
    rst $00
    scf
    add c
    dec d
    ld de, $3135
    or l
    or c
    or l
    ld hl, $a5b5
    add hl, hl
    ld b, l
    ld h, c
    add d

jr_019_6cdf:
    db $db
    jr nz, jr_019_6d4b

    jr nz, jr_019_6d4d

    jr nz, jr_019_6d4f

    ld c, b
    jr nc, @+$34

    add b
    ld c, l
    add b
    ld e, $a0
    xor h
    db $10
    add e
    ld a, a
    add e
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    ld b, b
    jr c, jr_019_6cfe

    nop
    or [hl]
    nop

jr_019_6cfe:
    ld l, h
    ld [bc], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add $c0
    ld d, $0f
    cpl
    rra
    and [hl]
    rra
    db $10
    adc a
    add e
    ld a, a
    add e
    ld a, a
    add c
    ld a, a
    ld bc, $413f
    adc a
    jr nz, jr_019_6cdf

    ld h, b
    add c
    ret nz

    nop
    nop
    db $fc
    ld [bc], a
    ld a, [$f405]
    inc bc
    ldh a, [$ff0b]
    add sp, $0a
    add sp, $0a
    add sp, $05
    db $ec
    add sp, -$0f
    ld a, [de]
    inc e
    db $ed
    ld c, $94
    rlca
    ld h, h
    rlca
    call nz, $9437
    ld [hl], a
    inc l
    ld l, a
    ret nz

    push hl
    ld l, d
    ldh a, [$ff75]
    ld a, b
    jr nc, @+$7e

    cp d
    inc a
    cp d

jr_019_6d4b:
    inc a
    cp d

jr_019_6d4d:
    inc a
    cp d

jr_019_6d4f:
    inc a
    ld a, [$74fe]
    rst $38
    inc d
    ccf
    pop bc
    ld b, $70
    nop
    xor b
    rlca
    sub b

jr_019_6d5d:
    rrca
    pop bc
    ld e, $17
    ld bc, $41a3
    cp e
    ld b, c
    ld a, e
    add c
    ld a, h
    ld bc, $8001
    cp h
    ld b, b
    ld a, e
    add b
    ld l, c
    ldh a, [rRP]
    pop hl
    ld b, h
    add e
    sub h
    inc bc
    ld a, [bc]
    ld b, c
    ld a, [bc]
    ld bc, $00a5
    halt
    nop
    nop
    ei
    nop
    db $fc
    nop
    ei
    nop
    rst $38
    ld h, b
    sbc a
    sbc c
    ld b, $26
    ld b, b
    reti


    ld h, c
    ld a, [bc]
    inc sp
    dec d
    and $2a
    call z, $9855
    xor e
    jr nc, jr_019_6df1

    ld h, b
    xor [hl]
    ret nz

    ld d, l
    adc b
    ld [de], a
    jr z, @+$07

    jr nc, @-$79

    jr nc, jr_019_6df3

    ld hl, $6409
    adc b
    ld h, l
    inc b
    ld [$ea04], a
    jp z, $a424

    ld c, e
    ld b, b
    or a
    add c
    ld [hl], a
    ld c, $fb
    rla
    db $fd
    cpl
    cp $5f
    rst $38
    adc a
    ld b, b
    ld h, b
    jr nz, jr_019_6d5d

    cp b
    halt
    rst $08
    rst $38
    ldh a, [$fffe]
    rst $38
    cp [hl]
    ld a, a
    or $8f
    add d
    nop
    ld [bc], a
    inc b
    inc b
    jr @-$6b

    ldh [$ff87], a
    ld [$f48b], sp
    add l
    ld a, [$fa84]
    ld c, $c6
    inc de
    rst $00
    inc b
    db $d3
    ld a, [bc]
    pop de
    inc d
    ret z

    ld h, c
    adc [hl]
    ld l, b
    add a
    ld [hl], h
    add e
    add hl, de

jr_019_6df1:
    ld e, $f1

jr_019_6df3:
    cp $03
    db $fc
    ld c, $f0
    ld hl, sp+$01
    inc bc
    rlca
    nop
    rst $38
    nop

jr_019_6dff:
    rst $38
    cp d
    inc a
    ld [hl-], a
    ld a, h
    ld [hl], d
    ld a, h
    ld h, [hl]
    ld hl, sp-$3b
    ld hl, sp+$0c
    pop af
    ld a, [de]
    pop hl
    ld [hl], h
    add e
    jp nz, Jump_019_651d

    adc d
    dec hl
    call nz, $c827
    rla
    ldh [rNR21], a
    ldh [$ff15], a
    ldh [rNR13], a
    ldh [$fff7], a
    nop
    rst $28
    nop
    sbc $00
    cp [hl]
    nop
    ld a, $40
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld h, e
    db $10
    ld l, c
    db $10
    ld l, b
    db $10
    dec h
    jr jr_019_6e5d

    jr jr_019_6e5d

    inc e
    inc sp
    inc c
    ld d, c
    ld c, $c0
    ld a, a
    and e
    ld a, h
    db $ec
    jr nc, jr_019_6e99

    ld hl, $0788
    pop hl
    ld e, $64
    jr jr_019_6dff

    inc bc
    xor h
    ld de, $3348
    sub b
    ld h, a
    inc h
    rst $08
    ld c, h
    sbc a
    add hl, de
    ld a, $3a

jr_019_6e5d:
    db $fc
    db $f4
    ld hl, sp+$28
    rst $00
    ld b, c
    add a
    ld bc, $9287
    inc bc
    jr jr_019_6e6b

    inc e

jr_019_6e6b:
    nop
    adc [hl]
    db $10
    add l
    jr jr_019_6eb0

    ld a, a
    rra
    cp a
    ld c, a
    rst $18
    rst $20
    rst $28
    pop af
    di
    ld a, h
    db $fc
    ccf
    ld a, a
    rra
    ccf
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    add e
    add a
    ld hl, sp-$08
    add b
    ld bc, $fda2
    and d
    db $fd
    and c
    cp $a1

jr_019_6e99:
    cp $a1
    cp $a0
    cp $00
    ld bc, $00f7
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00

jr_019_6ea8:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a

jr_019_6eb0:
    ld bc, $fffe
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    add sp, $07
    ret nc

    rrca
    jr nc, jr_019_6ed5

    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    scf
    ret nz

    scf
    ret nz

    ld l, a

jr_019_6ed5:
    add b
    rst $28
    nop
    rst $00
    nop
    add a
    nop
    rlca
    nop
    inc bc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ld d, b
    rrca
    ld d, b
    rrca
    ld c, b
    rlca
    ld [$1507], sp
    ld [bc], a
    ld h, $00
    ld [de], a
    nop
    ld a, [de]
    nop
    jp Jump_019_4f0f


    cp a
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [$e1fc]
    ld hl, sp-$0a
    ldh [$ffea], a
    ldh a, [$ffd6]
    ldh [$ffa6], a
    ret nz

    ld d, [hl]
    add b
    inc [hl]
    nop
    pop af
    inc bc
    call nz, $180f
    ccf
    add l
    jr jr_019_6ea8

    jr jr_019_6ea8

    jr c, jr_019_6f32

    ld [hl], b
    rla
    ldh [$ff2e], a
    ret nz

    ld e, [hl]
    add b
    cp [hl]
    nop
    rlca
    ld c, a

jr_019_6f32:
    jr nz, jr_019_6fa5

    ld h, $70
    daa
    ld [hl], b
    daa
    ld [hl], b
    and a
    ld [hl], b
    and a
    ld [hl], b
    and e
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    ldh [rP1], a
    ldh a, [c]
    ld bc, $00f1
    pop af
    nop
    ldh [rP1], a
    add sp, -$01
    add sp, -$01
    add sp, -$01
    nop
    nop
    ld d, $e8
    dec bc
    db $f4
    dec bc
    db $f4
    add l
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [c]
    pop af
    db $ec
    db $e3
    jp c, $ffc5

    rst $38
    ld hl, sp-$08
    push bc
    jp $1f2f


    xor a
    ld a, a
    cpl
    rst $38
    rla
    rst $38
    dec d
    cp $80
    add b
    ld e, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$10
    inc b
    inc bc
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_019_6fa5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    db $fc
    rrca
    rrca
    ret nc

    ldh [$fff5], a
    cp $f4
    rst $38
    add sp, -$01
    add sp, -$01
    ld l, b
    ccf
    sub b
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    inc hl
    jp $f008


    ld a, [bc]
    db $f4
    rla
    add sp, $17
    add sp, -$01
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

jr_019_6fdc:
    rra
    rra
    adc a
    rrca
    jp c, $dac5

    push bc
    jp z, $edc5

    ldh [c], a
    db $ed
    ldh [c], a
    push hl
    ldh [c], a
    or $f1
    or $f1
    db $10
    ldh [rOBP0], a
    add a
    daa
    sbc a
    ld l, $9f
    dec h
    sbc a
    ld d, d
    adc a
    sub b
    ld c, a
    adc b
    rlca
    add b
    ld a, a
    and c
    rst $38
    ld b, e
    rst $38
    add a
    rst $38
    ld c, $ff
    dec e
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], h
    rst $38
    jp hl


    cp $d3
    db $fc
    and [hl]
    ld hl, sp+$4d
    ldh a, [$ff9a]
    pop hl
    jr nc, jr_019_6fdc

    ld l, e
    add a
    rst $10
    rrca
    sub b
    ccf
    ld d, b
    ccf
    and b
    ld a, a
    jr nz, @+$01

    and b
    rst $38
    db $10
    rrca
    ld b, c
    ldh [rLCDC], a
    cp $17
    add sp, $2f
    ret nc

    cpl
    ret nc

    ld l, $d0
    ld e, [hl]
    and b
    ld e, h
    and b
    ld e, h
    and b
    jr c, jr_019_7080

    adc a
    rrca
    rra
    rra
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
    rst $38
    rst $38
    cp e
    rst $38
    xor $ff
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    or d
    ldh a, [$ffe9]
    ld hl, sp+$53
    ld hl, sp-$57
    ld hl, sp+$45
    db $fc
    ld de, $00fc
    db $fc
    nop
    cp $14
    ld h, e
    ld b, l
    or e
    ld c, d
    or c
    ld b, l
    cp b
    and c
    ld e, h
    xor d
    ld b, h
    sub l
    ld b, d
    ret nc

    inc bc

jr_019_7080:
    jp hl


    cp $d3
    db $fc
    and [hl]
    ld hl, sp+$4d
    ldh a, [rNR30]
    pop hl
    or l
    ld b, e
    ld l, e
    rlca
    ld d, a
    rrca
    xor a
    rra
    ld e, [hl]
    ccf
    cp [hl]
    ld a, a
    ld a, h
    cp $f9
    db $fc
    ldh [c], a
    ldh a, [$ffcc]
    ldh [rNR10], a
    add d
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    ld a, [hl]
    and c
    ld a, $51
    ld e, $29
    adc [hl]
    ld d, $c5
    sbc b
    nop
    and b
    ld b, c
    and c
    ld b, c
    ld l, h
    add c
    ld b, b
    add e
    ld e, c
    add e
    ld b, b
    add e
    or b
    rlca
    cp e
    rst $38
    xor $ff
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, h
    cp $11
    ld hl, sp+$00
    rst $20
    nop
    sbc [hl]
    cp e
    rst $38
    db $ec
    db $fc
    ld b, d
    ldh [$ff8f], a
    sub b
    db $10
    ld l, b
    ld bc, $86e7
    rra
    jr jr_019_715f

    cp e
    rst $38
    ld c, $1f
    dec b
    rrca
    ld [bc], a
    rlca
    ld h, h
    rst $20
    add c
    rst $30
    nop
    rst $30
    nop
    rst $30
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
    cp $00
    cp $00
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
    and d
    add hl, bc
    add hl, hl
    inc c
    jr z, jr_019_7122

    inc l
    ld c, $2e
    ld c, $06
    adc [hl]
    ld d, $86
    ld d, $86
    xor [hl]
    rra

jr_019_7122:
    ld e, b
    cp h
    inc sp
    ld hl, sp-$3c
    ld h, b
    jr jr_019_716d

    inc hl
    rlca
    add a
    sub a
    inc bc
    or a
    ld h, d
    rrca
    adc a
    rra
    rla
    ld [hl], a
    ld h, e
    db $eb
    ld [$eaeb], a
    ld [$eae0], a
    add sp, -$1f
    ld b, $65
    ld [de], a
    ld h, l
    ld [de], a
    ld h, l
    dec d
    ld h, d
    dec d
    ld h, d
    dec h

jr_019_714b:
    jp nz, $c82e

    dec h
    ret z

    add b
    rlca
    or b
    rlca
    nop
    rrca
    ld h, b
    rrca
    nop
    rrca
    nop
    rra
    and b
    ld c, a
    ld d, b

jr_019_715f:
    and $00
    rst $38
    nop
    db $fc
    nop
    ei
    nop
    rst $30
    nop
    adc $21
    cp l
    ld d, d

jr_019_716d:
    ld [hl], e
    add sp, -$11
    nop
    ld a, c
    ld bc, $06e7
    rst $18
    jr jr_019_71b7

    ld h, b
    rst $38
    add b
    cp $00
    ld sp, hl
    nop
    or $60

jr_019_7181:
    rst $38
    add b
    ld sp, hl
    dec b

jr_019_7185:
    pop hl
    jr jr_019_714b

    dec sp
    inc bc
    ld [hl], a
    rlca
    ld l, h
    rrca
    db $e3
    rrca
    jr nz, jr_019_7181

    ret nz

    rst $28
    jr nz, jr_019_7185

    ret nz

    rst $18
    ret nz

    rst $18
    nop
    cp a
    add b
    cp a
    nop
    ld a, a
    ld b, h
    cp e
    ld de, $aaee
    ld d, l
    ld d, l
    xor d
    cp e
    ld b, h
    xor $11
    rst $38
    nop
    rst $38
    nop
    ld b, h
    cp e
    ld de, $aaee
    ld d, l
    ld d, l

jr_019_71b7:
    xor d
    cp e
    ld b, h
    xor $11
    cp $00
    cp $00
    ld h, $86
    inc bc
    rst $00
    adc c
    ld b, e
    ld d, b
    add b
    sbc b
    dec b
    ld [hl-], a
    inc c
    and c
    sbc [hl]
    jr nz, @-$5f

    add c
    dec sp
    ld bc, $017d
    cp [hl]
    ld [bc], a
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$fff0], a
    ld b, b
    adc a
    add c
    ld a, [hl]
    nop
    ldh a, [rSB]
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    call z, Call_019_5a01
    sub c
    adc c
    inc de
    add hl, hl
    inc sp
    call nz, $c2f3
    or [hl]
    add b
    dec [hl]
    ld de, $a0e3
    sub c
    inc de
    sub a
    ld b, [hl]
    ld c, $1c
    dec a
    jr nc, jr_019_727d

    ld h, b
    rst $28
    jp $8cdf


    cp a
    ret nz

    rst $18
    nop
    cp a
    ld [bc], a
    ld a, [hl]
    dec c
    db $fc
    inc sp
    ld hl, sp-$3a
    pop af
    cpl
    ldh [$ff9e], a
    add b
    inc b
    jp z, $ac91

    dec hl
    ld d, b
    ld d, e
    xor b
    or [hl]
    ld b, b
    xor $00
    add sp, $00
    nop
    nop
    call z, $b01f
    ld a, $82
    inc a
    dec c
    ld [hl], b
    ld sp, $c2c0
    ld bc, $0000
    rrca
    nop
    ld b, h
    dec sp
    ld de, $aaee
    ld d, l
    ld d, l
    xor d
    cp e
    ld b, h
    xor $11
    rlca
    nop
    ret


    jr nc, @+$01

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
    nop
    rst $38
    nop
    ret nz

jr_019_727d:
    nop
    nop
    nop
    ld b, b
    rra
    ld d, b
    ld c, a
    jr nz, jr_019_72d5

    xor b
    daa
    sub b
    daa
    call nc, Call_000_0813
    inc de
    nop
    dec bc
    inc b
    ld hl, sp+$22
    jp $0f92


    nop
    ret nz

    nop
    rst $38
    db $10
    rst $08
    jr nz, jr_019_727d

    nop
    rst $38
    add h
    ld [hl], l
    ld d, b
    dec h
    ld c, c
    dec hl
    adc c
    ld l, d
    ld [$28ea], sp
    ret


    add hl, hl
    bit 4, e
    add a
    inc bc
    rst $20
    ld c, $de
    sbc c
    add hl, sp
    inc [hl]
    ld [hl], a
    ld h, e
    rst $28
    rst $08
    rst $18
    cp h
    cp a
    ld [hl], e
    ld a, a
    inc sp
    ld a, a
    adc $fe
    inc a
    db $fc
    ldh a, [$fff8]
    jp Jump_000_0fe0


    ret nz

    cp a
    add b
    ld a, [hl]
    ld bc, $0040
    nop
    nop
    rra

jr_019_72d5:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$ff1f], a
    nop
    rst $38
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    ld hl, sp+$06
    ldh [rNR23], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rTIMA], a
    ret z

    ld bc, HeaderLogo
    inc b
    ld bc, $0504
    nop
    inc bc
    ld [$0803], sp
    inc bc
    ld [$00bb], sp
    xor $00
    ld d, l
    nop
    xor d
    nop
    ld b, h
    nop
    ld de, $0000
    nop
    nop
    nop
    and c
    nop
    adc h
    inc bc
    jr nz, @+$21

    ld b, b
    ccf
    nop
    ld a, a
    ld b, b
    ccf
    jr nc, jr_019_737d

    ld c, h
    inc sp
    cp $00
    ld a, a
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld bc, $00e1
    ld hl, sp+$00
    db $fd
    nop
    ld a, [de]
    ldh [rSC], a
    ldh a, [$ff0d]
    ldh [$ff15], a
    ret nz

    jr nz, @-$1f

    inc de
    call z, RST_00
    ld c, a
    nop
    adc [hl]
    ld b, b
    inc h
    pop bc
    ld d, c
    db $e3
    inc hl
    rst $30
    add $0e
    dec c
    dec e
    sbc b
    dec sp
    inc sp
    ld [hl], a
    ld l, h
    rst $28
    ret nc

    rst $18
    add b
    cp a
    inc bc
    ld a, a
    call z, $31fe
    db $fc
    pop bc
    ld hl, sp+$01
    ldh a, [rP1]
    pop hl
    nop
    pop bc
    inc h

jr_019_737d:
    add c
    ld c, h
    ld bc, $1fe0
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
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$ff7c]
    add e
    ldh a, [rIF]
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc e
    add b
    rra
    add b
    dec b
    sbc d
    inc bc
    ld [$000a], sp
    dec b
    db $10
    ld [bc], a
    db $10
    inc b
    db $10
    ld de, $2000
    nop
    ret nz

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
    db $fd
    db $fd
    ld a, [$f3f8]
    db $f4
    db $eb
    db $e4
    push hl
    xor $dd
    adc $cc
    sbc $a8
    sbc l
    cp $fe
    ld hl, sp-$08
    ld h, h
    ld h, b
    sbc d
    ld bc, $03b4
    ld l, b
    rlca
    ret nc

    rrca
    and b
    rra
    rlca
    rlca
    scf
    rlca
    add a
    ld [hl], a
    rlca
    rst $30
    rlca
    rst $30
    dec bc
    di
    inc sp
    ei
    ld [hl], l
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ld a, [$f9f9]
    ld a, [$f2f4]
    rst $08
    rst $08
    and a
    add a
    ld d, e
    dec bc
    cp l
    dec b
    or c
    add hl, bc
    ld h, h
    inc d
    ld c, d
    ld h, $92
    ld c, [hl]
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    cp a
    rst $38
    ld d, l
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $fe
    db $dd
    db $fc
    ei
    ld hl, sp+$53
    ld hl, sp-$0a
    pop af
    ld d, [hl]
    pop af
    add [hl]
    pop af
    or c
    add d
    ld a, [bc]
    inc b
    or $08
    call $4d30
    or b
    sbc d
    ld h, c
    sub b
    ld h, b
    add b
    nop
    ld b, b
    ccf
    add c
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rrca
    db $10
    rlca
    ldh [c], a
    db $fc
    call nz, $8eff
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    ld b, $2e
    call nz, $cc24
    dec e
    call z, $dd08
    ld de, $4cdd
    sbc c
    ld e, c
    sbc b
    and b
    inc e
    ld b, d
    ld a, [hl-]
    ld [hl+], a
    ld b, $06
    ld e, $ac
    inc e
    ld [hl-], a
    sub d
    add [hl]
    adc [hl]
    xor h
    sbc l
    push af
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    ld a, [$55ff]
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    and c
    ld e, a
    nop
    rst $38
    xor b
    ld d, a
    nop
    rst $38
    xor d
    ld d, l
    ld d, b
    xor a
    xor d
    ld d, l
    push de

jr_019_74ff:
    ld a, [hl+]
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    add l
    ld a, a
    nop
    rst $38
    xor c
    ld d, a
    ld b, b
    cp a
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    cp e
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld [$55ff], sp
    rst $38
    ld hl, sp-$01
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    and b
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld d, h
    ldh a, [c]
    inc c

jr_019_7533:
    ldh [$ff4c], a
    ldh [$ff0c], a
    ldh [$ff0c], a
    ldh [$ff0c], a
    ldh [$ff0c], a
    ldh [$ff0c], a
    ldh [c], a
    ld [$1607], sp
    rrca
    sub a

jr_019_7545:
    rrca
    xor [hl]
    rra
    xor l
    ld e, $aa
    inc e
    and h
    jr @+$2b

    ld de, $0389
    ld c, c
    add e
    ld b, e
    sub a
    add e
    rla
    rlca
    cpl
    ld c, a
    ld e, a
    sbc a
    cp a
    rra
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    cp $e1
    cp $e3
    db $fc
    add $f8
    adc l
    ldh a, [rNR23]
    ldh [$ffd8], a
    jr jr_019_7533

    jr jr_019_7545

    jr jr_019_74ff

    jr jr_019_75b9

    jr jr_019_758b

    ld c, b
    nop
    ld c, b
    inc c
    ld b, b
    dec a
    sbc l
    nop
    add e
    xor c
    dec de
    ld c, b
    dec sp
    nop
    rlca
    ld d, b

jr_019_758b:
    scf
    and b
    ld l, a
    dec d
    ld a, [bc]
    ld d, l
    rst $38
    jr nz, @+$01

    ld d, h
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    ld bc, $08fe
    rst $30
    ld b, l
    cp d
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$ff00], a
    ld d, l
    xor d
    dec hl
    call nc, $a857
    xor d
    ld d, l
    db $fd
    ld [bc], a
    xor d
    ld d, l
    rst $38
    nop
    xor d

jr_019_75b9:
    ld d, l
    rst $38
    nop
    xor $11
    rst $38
    nop
    xor d
    ld d, l
    ld d, b
    xor [hl]
    xor d
    ld d, h
    db $f4
    ld a, [bc]
    xor d
    ld d, h
    ld a, h
    ld [bc], a
    ld a, [hl+]
    ld d, h
    ld a, [hl]
    nop
    ld d, l
    rst $38
    nop
    rst $38
    dec d
    rst $38
    nop
    rst $38
    add c
    ld a, a
    nop
    ld a, a
    jr z, jr_019_7635

    nop
    ld a, a
    ld d, h
    rst $38
    nop
    rst $38
    ld d, h
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $24fe
    jp nc, $f106

    xor d
    ld d, c
    inc de
    add sp, -$57
    ld d, b
    ld d, d
    xor b
    xor d
    ld d, b
    ld [hl], b
    adc b
    jr nc, jr_019_7604

    jr nz, jr_019_7609

jr_019_7604:
    add hl, bc
    inc bc
    ld sp, $8887

jr_019_7609:
    ld b, a
    add sp, $07
    ld l, b
    rlca
    xor c
    ld b, $3e
    rst $38
    cp h
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    cp $c4
    ld hl, sp+$10
    pop hl
    ld c, c
    add l
    dec l
    inc e
    inc sp
    ret nz

    ld h, b
    add e
    add b
    nop
    nop
    inc bc
    ld b, c
    inc bc
    db $10
    ld b, b
    add hl, bc
    ld d, e
    ld hl, $141b
    ld b, b
    ld de, $1448

jr_019_7635:
    ld c, h
    dec b
    ld l, [hl]
    dec bc
    ld h, h
    ld b, $70
    jr nz, jr_019_76b6

    dec [hl]
    ld a, d
    add b
    ccf
    dec d
    ld a, [hl+]
    ld a, [hl+]
    dec d
    ccf
    nop
    ld a, [hl+]
    dec d
    ld e, $20
    cp c
    nop
    ld h, l
    inc bc
    ld a, [hl+]
    push de
    ld d, a
    xor b
    xor d
    ld d, l
    rst $38
    nop
    xor a
    ld d, b
    ld a, [bc]
    nop
    ld d, b
    add b
    and h
    inc bc
    xor c
    ld d, h
    rst $38
    nop
    sub l
    ld b, b
    cp $00
    ld d, h
    nop
    xor d
    nop
    nop
    nop
    adc d
    nop
    rst $38
    nop
    xor a
    nop
    rst $38
    nop
    adc d
    nop
    ld e, a
    nop
    adc d
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld a, [hl+]
    inc d
    ld a, $00
    ld a, [hl-]
    inc b
    ld a, $00
    ld c, d
    nop
    ld e, $40
    ld a, [bc]
    ld b, b
    dec h
    ld b, b
    xor d

jr_019_7691:
    dec d
    db $10
    xor a
    ld c, d
    sub l
    dec d
    jp z, $c56a

    ld c, a
    ldh [$fff2], a
    ld h, l
    daa
    ld [hl], b
    xor d
    ld d, l
    dec b
    ld a, [$55aa]
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, a
    and b
    xor d
    ld d, l
    rst $38
    nop
    xor d
    ld d, b
    ld hl, sp+$02
    xor h
    ld d, b

jr_019_76b6:
    db $fc
    ld bc, $51ac
    cp $00
    cp [hl]
    ld b, b
    rst $38
    nop
    call z, $8100
    ld b, b
    ld b, d
    ld d, b
    jr nz, jr_019_772b

    dec d
    inc sp
    dec bc

jr_019_76cb:
    rlca
    rrca
    sbc a
    ld b, e
    rrca
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    inc a
    cp $5c
    jr c, jr_019_7691

    add $fe
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    nop
    cp b
    ld e, c
    dec sp
    add hl, de
    dec de

Jump_019_76e6:
    jr c, jr_019_7718

    ld [hl-], a
    halt
    ld [bc], a
    ld d, $21
    jr nc, jr_019_774f

    ld [hl], l
    dec [hl]
    ld a, d
    ld [hl], $78
    inc [hl]

jr_019_76f5:
    ld a, b
    xor b
    ld [hl], b
    ld d, c
    ldh [$ff2a], a
    pop bc
    ld e, b
    add e
    adc b
    inc de
    ld d, [hl]
    rrca
    cpl
    ld e, $5c
    ld a, $be
    ld a, h
    ld a, [hl]
    db $fd
    push bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld d, l
    ld c, $2a
    inc e
    ld e, h
    jr c, jr_019_76cb

    ld a, e

jr_019_7718:
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_019_7720:
    ld b, b
    nop
    ld l, $1f
    cp l
    ld a, [hl]
    ld a, [$e4fc]
    ld hl, sp-$36

jr_019_772b:
    pop af
    set 6, a
    adc a
    rst $38
    ld d, l
    nop
    ld [bc], a
    db $10
    ld b, l
    stop
    db $10
    dec b
    db $10
    ld [$0110], sp
    jr jr_019_7753

    ld [$600a], sp
    ld [hl], h
    jr nz, jr_019_776f

    jr nc, jr_019_775b

    jr c, jr_019_7783

    inc e
    inc c
    ld e, $51
    inc c
    ld a, [bc]

jr_019_774f:
    ld bc, $713a
    ld d, c

jr_019_7753:
    jr c, jr_019_76f5

    db $10
    ld [$2f07], sp
    rra
    cp [hl]

jr_019_775b:
    ld a, h
    ld a, [hl]
    rst $38
    db $e3
    rst $00
    xor e
    ld d, h
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    xor a
    ret nz

    rla
    ld h, b
    and c
    nop
    ld b, [hl]

jr_019_776f:
    add b
    cp a
    ld b, b
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    push af
    nop
    rst $38
    nop
    ld d, l
    nop
    cp $00
    add a
    rla
    add [hl]

jr_019_7783:
    ld c, $48
    inc b
    and h
    ld [bc], a
    ld d, d
    ld bc, $00a1
    ld d, h
    nop
    and b
    nop
    scf
    ld [hl], a
    rla
    sub a
    ld b, a
    daa
    and [hl]
    ld h, a
    ld h, [hl]
    halt
    inc c
    adc [hl]
    ld a, $fc
    cp b
    ld a, h
    ld de, $0004
    jr z, jr_019_77c5

    ld b, c
    ld c, c
    rlca
    sub e
    rrca
    ld h, $1f
    inc l
    ld e, $49
    dec a
    ld b, b
    dec de
    ret nc

    dec bc
    add hl, de
    and d
    dec bc
    or b
    dec bc
    ld [hl], b
    ld b, a
    ld [hl], b
    ld h, a
    ldh a, [rNR52]
    pop af
    nop
    rst $38
    inc bc
    rst $38
    rst $20

jr_019_77c5:
    rra
    rst $08
    ccf
    adc [hl]
    ld a, a
    sub b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_77d4:
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sbc a
    cp $bc
    ld hl, sp-$02
    db $fc
    rst $38
    cp $07
    rst $38
    and b
    pop bc
    jp nc, $ebe0

    ldh a, [$ff0a]
    inc c
    dec b
    ld c, $0e
    rlca
    inc bc
    rlca
    inc bc
    rlca
    dec b
    inc bc
    ld bc, $0203
    ld bc, $0345
    dec bc
    rlca
    sub [hl]
    inc c
    cpl
    sbc a
    sbc a
    cp a
    ld a, a
    ccf
    cpl
    ld a, a
    inc sp
    ld l, a
    jp hl


    di
    push af
    ld sp, hl
    ld a, b
    ld a, l
    sbc [hl]
    inc a
    ret z

    sbc [hl]
    ldh [$ffce], a
    ret nz

    xor $d2
    db $e4
    adc c
    add $56
    adc a
    ld l, $9f
    sbc l
    ld a, $78
    ld a, $72
    inc a
    ld b, l
    jr c, @+$2c

    ld de, $0055
    xor d
    nop
    dec d
    add b
    ld b, b
    add b

Call_019_7838:
    dec d
    ret nz

    nop
    ret nz

    inc d
    ret nz

    nop
    ret nz

    ld d, h
    nop
    add c
    nop
    ld d, e
    ld bc, $0306
    dec bc
    inc b
    db $10
    ld [$0000], sp
    nop
    nop
    ld c, b
    jr nc, jr_019_77d4

    nop
    dec a
    ret nz

    cp $00
    xor $10
    ld e, a
    jr nz, @-$02

    ld b, e
    add hl, sp
    add $53
    dec sp
    ld h, a
    rlca
    adc a
    rra
    xor a
    ld a, a
    ld [hl], $ff
    ld d, l
    ld a, $a2
    inc e
    call $9600
    pop hl
    call z, $ade3
    jp nz, $845b

    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    jp Jump_000_07f8


    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$ff1f], a
    db $e3
    inc e
    rst $08
    jr nc, @-$40

    ld b, b
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [hl], c
    adc a
    db $e3
    rra
    add a
    rrca
    ld e, h
    rrca
    add h
    ret


    ret nz

    pop hl
    ld h, c
    push de
    call nz, $d6c3
    pop bc
    db $d3
    call nz, $c2d5
    ld h, d
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
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    db $fd
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    ld e, a
    sbc a
    sbc a
    rst $18
    xor a
    rst $08
    xor a
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    rst $38
    adc $ff
    jr c, @+$01

    db $fc
    rst $38
    di
    rst $38
    adc $ff
    jr c, @+$01

    db $e3
    db $fc
    adc a
    ldh a, [$ff3c]
    ret nz

    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ld de, $f2e1
    db $fc
    cp $ff
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
    ccf
    ccf
    ld b, a
    add a
    ld hl, $92c1
    db $e4
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
    ld a, [$85f9]
    add e
    ld a, [$f5f9]
    di
    ld [$96e7], a
    adc a
    ld e, l
    ld a, $7a
    db $fc
    db $f4
    ld sp, hl
    add sp, -$10
    xor a
    rst $08
    rra
    rst $18
    ld e, a
    sbc a
    cp a
    ccf
    ld a, a
    ld a, a
    rrca
    rrca
    ld b, b
    add b
    dec c
    ld e, $ff
    rst $38
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
    rlca
    rrca
    rst $38
    rst $38
    sbc a
    sbc a
    ld c, a
    rrca
    daa
    rst $00
    sub e

jr_019_7969:
    db $e3
    add c
    pop af
    jp z, $c3f0

    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f2
    cp $ce
    cp $38
    ld a, [hl]
    ldh a, [$fff1]
    jp $8ec7


    xor a
    ld [$c36f], sp
    ld l, h
    ld d, a
    ldh [rLY], a
    ldh a, [$ffe8]
    ld [hl], b
    db $e3
    db $fc
    adc a
    ldh a, [$ff3c]
    ret nz

    ldh a, [rP1]
    jp $0c00


    nop
    jr nc, jr_019_799e

jr_019_799e:
    ret nz

    nop
    jp $0c00


    nop
    jr nc, jr_019_79a6

jr_019_79a6:
    ret nz

    nop
    nop
    nop
    ld b, b
    nop
    nop

jr_019_79ad:
    ld b, b
    nop
    ld b, b
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    ld c, $ff
    ld e, $ff
    adc b
    di
    add h
    ld sp, hl
    add d
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$78
    ld a, b
    nop
    add b
    nop
    ret nz

    ld hl, $1340
    ld h, b
    sbc b
    jr nz, jr_019_7969

    jr nc, jr_019_79ad

    db $10
    ld h, c
    rla
    dec bc
    rlca
    ld b, e
    rrca
    sub a
    rrca
    rlca
    rra
    ld b, a
    rra
    rst $00
    rra
    rst $00
    rra
    db $d3
    db $e3
    ldh [$ffc0], a
    add b
    rst $18
    sub b
    rst $08
    inc e
    jp $c01f


    ld l, $c0
    sub c
    ldh [$ffa0], a
    ret nz

    jr z, jr_019_7a35

    ld c, d
    adc h
    inc d
    and $08
    pop af
    add c
    inc bc
    ld d, c
    inc hl
    ld a, [bc]
    pop af
    rrca
    rra
    dec e
    cp l
    add hl, sp
    ld a, c
    ld e, c
    ret c

    sbc b
    sbc h
    sbc $8c
    adc h
    adc $ea
    add $85
    sbc b
    pop de
    adc h
    add d
    call z, $c6a8
    ld b, c
    and $c0
    ld h, a
    ld d, h
    ld h, e
    nop
    ld [hl], e
    and e
    inc a
    rst $08
    db $10
    sbc h

jr_019_7a35:
    nop
    and b
    nop
    ld b, e
    nop
    ld d, h
    nop
    ld h, b

jr_019_7a3d:
    nop
    xor b
    nop
    dec h
    ld a, b
    ld d, d
    inc a
    add hl, hl
    ld e, $dc
    rrca
    ld b, $0f
    ld c, $07
    inc bc
    rlca
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    nop
    ret nz

    ld hl, $22c0
    pop bc
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_019_7a68:
    ld b, b
    ld b, b
    ldh [rLCDC], a
    ld d, b
    ldh [$ffe8], a
    ldh a, [$ff3c]
    rst $38
    ld hl, sp-$01
    ldh a, [$fffc]
    jp nz, Jump_000_05f9

    ldh a, [c]
    ld a, [bc]
    db $e4
    add hl, bc
    call c, $d91c
    rrca
    ldh a, [rP1]
    nop
    add b
    ld a, a
    ld [bc], a
    add c
    ld b, h
    jr c, jr_019_7a3d

    ld a, h
    ld a, c
    cp $fd
    cp $ce
    db $10
    ld c, a
    db $10
    add a
    nop
    dec bc
    ldh a, [$ff03]
    nop
    sub c
    ld h, b
    jr z, jr_019_7b0e

    ld [hl], l
    jr c, jr_019_7a68

    rra
    ld d, e
    rrca
    ld h, e
    rrca
    and e
    rrca
    xor c
    rlca
    or c
    rlca
    ld d, h
    inc bc
    sbc d
    ld bc, $f8a4
    pop de
    cp $d8
    rst $38
    db $ec
    rst $38
    or $ff
    ld sp, hl
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    db $f4
    ld sp, hl
    ld b, c
    ld a, h
    cp [hl]
    inc a
    inc a
    cp [hl]
    ld e, a
    sbc [hl]
    ld e, $df
    ld e, $df
    ld e, [hl]
    sbc a
    jp Jump_019_76e6


    rst $20
    adc h
    ld [hl], a
    db $10
    rrca
    ld [bc], a
    ld bc, $3400
    inc b
    dec [hl]
    db $10
    dec [hl]
    ld d, b
    inc sp
    ld a, [hl-]
    ld sp, $39b0
    ldh a, [$ffb9]
    db $f4
    ld sp, hl
    or d
    ld a, l
    jr nz, jr_019_7b0d

    ld [$29c7], sp
    add b
    inc [hl]
    add b
    inc [hl]
    add b
    ld d, h
    add b
    ld e, l
    add b
    ld e, b
    add c
    ret c

    ld bc, $05d1
    sub e
    ld [hl], a
    ld c, $07
    ld b, $0f
    ld e, $0f
    dec l
    rra
    ld e, l
    ccf
    ld a, [hl-]

jr_019_7b0d:
    ld a, a

jr_019_7b0e:
    or [hl]
    ccf
    rla
    rst $20
    ld [de], a
    pop hl
    sub c
    ldh [$ff90], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ld a, [hl+]
    call nz, $fefd
    add sp, -$10
    ld d, b
    ldh [$ffe0], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    ld [de], a
    cp c
    ld sp, $29bb
    ld [hl], e
    ld [hl], c
    ld h, e
    pop bc
    db $e3
    ld h, c
    jp $fb71


    ld a, e
    db $fd
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$ffe1], a
    sub c
    inc a
    sbc d
    inc a
    sbc b
    ld a, $1c
    cp [hl]
    dec e
    cp [hl]
    ld a, [hl]
    cp a
    cp $ff
    rst $38
    rst $38
    ld b, l
    add b
    ld a, [de]
    ret nz

    dec h
    ret z

    jp z, Jump_000_3164

    ld h, [hl]
    jr nz, @+$79

    inc h
    ld [hl], e
    add sp, $73
    add b
    ld a, a
    ldh [$ff1f], a
    ccf
    nop
    adc a
    ld b, b
    nop
    ld [hl], b
    ld b, d
    add hl, sp
    ld b, c
    inc a
    ld c, b
    ld a, $50
    sbc a
    cp c
    ld a, $ac
    ld a, $42
    ld a, h
    ld b, c
    cp h
    dec a
    ret nz

    pop bc
    jr c, jr_019_7c00

jr_019_7b8f:
    nop
    dec d
    ld de, $1b0b
    rlca
    ld c, a
    db $e3
    daa
    ld [hl-], a
    pop de
    jr @-$16

    rrca
    ldh a, [rTMA]
    ld sp, hl
    db $d3
    ldh [$ffe4], a
    ld hl, sp-$0e
    db $fc
    db $f4
    ld hl, sp-$20
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    di
    rst $38
    pop bc
    dec c
    add hl, bc
    dec l
    dec de
    add hl, de
    ld [hl], d
    ld a, c
    ld h, c
    jr nc, jr_019_7bbb

jr_019_7bbb:
    nop
    add d
    db $fc
    ld bc, $0cfe
    cp a
    sbc b
    cp a
    ld sp, $83be
    inc a
    ld c, $30
    inc a
    ld bc, $0331
    inc bc
    rrca
    ld d, d
    adc h
    call $9c1e
    ccf
    inc a
    ld a, a
    ld a, l
    rst $38
    db $fd
    ld a, a
    ld sp, hl
    cp a
    ei
    cp a
    add b
    nop
    jr nz, jr_019_7c24

    sub b
    jr nz, jr_019_7b8f

    db $10
    ld c, b
    sub b
    ld c, h
    sub b
    ld e, h
    add b
    inc l
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ld a, a

jr_019_7c00:
    ld hl, sp-$02
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
    rst $38
    rst $38
    ccf
    ld a, a
    rlca
    adc a
    ret nz

    ldh a, [$fff0]
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$fffb], a
    ret nz

    ei

jr_019_7c24:
    inc b
    ld a, e
    nop
    cp a
    nop
    rst $00
    nop
    ei
    nop
    rst $38
    ld bc, $a4fe
    rra
    and [hl]
    rra
    and e
    rra
    or b
    rrca
    or b
    rrca
    cp b
    rlca
    sbc h
    inc hl
    inc e
    ld h, b
    ld bc, $3080
    ret nz

    adc h
    ldh a, [$ffe3]
    db $fc
    jr c, @+$01

    rrca
    rst $38
    inc bc
    rlca
    nop
    ld bc, $7b85
    rst $00
    dec sp
    ld [hl], a
    dec bc
    rra
    inc bc
    jp $3800


    ret nz

    add $f8
    pop af
    cp $e6
    rst $38
    call z, $98ff
    rst $38
    jr nc, @+$01

    rst $38
    nop
    db $fc
    inc bc
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    ld bc, $00fe
    nop
    rst $38
    nop
    xor a
    rra
    add a
    rrca
    and c
    inc bc
    or b
    ld bc, $00b8
    inc a
    nop
    ld e, [hl]
    jr nz, @-$30

    jr nc, @-$2c

    rst $18
    call nz, $cadc
    db $db
    nop
    db $e3
    jr c, @+$01

    nop
    ld a, a
    nop
    jr c, jr_019_7ca0

    inc e

jr_019_7ca0:
    inc l
    ret nz

    inc h
    ret z

    inc h
    ld c, b
    ld h, h
    ld [$800c], sp
    ret z

    jr nc, jr_019_7cf5

    jr nc, jr_019_7cc7

    add b
    rrca
    ld a, a
    rlca
    ld a, a
    rlca
    ccf
    inc bc
    ccf
    ld bc, $001f
    rrca
    sub b
    rlca
    ret


    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7cc7:
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    dec c
    ldh a, [rNR31]
    ldh [rPCM34], a
    add b
    rst $28
    nop
    ld de, $0260
    ld h, c
    dec d

jr_019_7cf5:
    jp $8325


    dec b
    and e
    ld b, d
    ld hl, $6021
    ld h, $60
    ret nz

    nop
    inc h
    ret nz

    sub $e0
    push de
    ldh [c], a
    sub $e3
    daa
    jp $03c7


    inc bc
    rlca
    ld a, b
    rst $38
    inc a
    ld a, a
    ld a, $3f
    rra
    ccf
    rra
    rra
    adc a
    rra
    rrca
    sbc a
    rlca
    sbc a
    nop
    rst $38
    add b
    ld hl, sp+$60
    ld hl, sp+$30
    rst $38
    sbc a
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$1a
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    ldh [$fff8], a
    ld b, $07
    nop
    nop
    nop
    nop
    ldh a, [$ffcf]
    jr nc, jr_019_7daa

    sbc b
    scf
    ret z

    ld e, e
    inc h
    ld c, e
    inc [hl]
    adc a
    ld [hl], b
    ld b, a
    jr c, @+$29

    jr jr_019_7d57

    ld [$0106], sp
    add b
    rlca
    add b

jr_019_7d57:
    inc bc
    adc h
    nop
    sub b
    inc c
    adc d
    add hl, de
    or c
    dec de
    inc d
    and b
    inc [hl]
    ld b, b
    ld h, h
    add b
    ld [$d404], a
    ld c, $2c
    ld e, $8d
    ld e, $44
    adc a
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    dec de
    inc l
    ccf
    dec sp
    inc l
    ld d, a
    ld a, b
    ld [hl], a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0f
    dec bc
    ld d, $1f
    dec e
    ld d, $3c
    inc a
    ld e, d
    ld h, [hl]
    cp l
    db $db
    rst $38
    cp l
    rst $38
    cp l
    cp l
    db $db
    ld e, d
    ld h, [hl]
    inc a
    inc a
    xor b
    ld a, l
    ld b, $00
    ld bc, $0102
    rst $38
    xor [hl]
    ld a, l

jr_019_7daa:
    cp a
    ld a, l
    ret nc

    ld a, l
    ld hl, sp-$08
    nop
    nop
    nop
    ld [$2000], sp
    ld [$00f8], sp
    ld b, b

jr_019_7dba:
    nop
    ld [$6000], sp
    add b
    ld hl, sp-$08

jr_019_7dc1:
    ld bc, $0000
    ld [$2001], sp
    ld [$01f8], sp
    ld b, b
    nop
    ld [$6001], sp
    add b
    db $fc
    db $fc
    ld [bc], a
    nop
    add b
    rlca
    nop
    rrca
    rlca
    rra
    ld [$103f], sp
    ld l, a
    jr nc, jr_019_7e5f

    jr nz, jr_019_7dc1

    ld h, b
    sbc $61
    ret nz

    nop
    ldh [$ffc0], a
    or b
    ld h, b
    ret c

    jr nc, jr_019_7dba

    jr c, @-$12

    jr jr_019_7e58

    sbc h

jr_019_7df3:
    ld h, $dc
    sbc $61
    sbc $61
    adc $71
    ld l, a
    jr nc, @+$69

    jr c, jr_019_7e33

    inc e
    jr @+$11

    rrca
    rlca
    ld h, $dc
    ld b, $fc
    ld h, $dc
    ld l, h
    sbc b
    call z, $9838
    ld [hl], b
    jr nc, jr_019_7df3

    ldh [$ffc0], a
    rlca
    nop
    rrca
    rlca
    rra
    ld [$1c33], sp
    ld h, c
    ld a, $df
    ld h, b
    push bc
    ld a, d
    bit 6, h
    ret nz

jr_019_7e26:
    nop
    ldh [$ffc0], a
    ld [hl], b
    and b
    cp b
    ld d, b
    call c, $fe28
    inc b

jr_019_7e31:
    cp [hl]
    ld b, h

jr_019_7e33:
    halt
    adc h
    add $79
    call $df72
    ld h, b
    ld l, [hl]
    ld sp, $1837

jr_019_7e3f:
    jr @+$11

    rrca
    rlca
    rlca
    nop
    and $1c
    add $3c
    cp $0c
    call z, Call_019_7838
    sub b
    jr nc, jr_019_7e31

    ldh [$ffc0], a
    ret nz

    nop
    nop
    nop
    nop

jr_019_7e58:
    nop
    rrca
    nop
    rra
    rrca
    ld [hl-], a
    dec e

jr_019_7e5f:
    ld h, a
    jr c, jr_019_7e31

    ld [hl], b
    cp h
    jp RST_00


    nop
    nop
    ldh [rP1], a
    ldh a, [$ffe0]
    jr c, jr_019_7e3f

    sbc h
    ld l, b
    adc $34
    ld b, $fa
    rst $00
    ld a, b
    ld h, a
    jr c, jr_019_7ead

    inc e
    dec de
    inc c
    dec c

jr_019_7e7e:
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    ld e, $e4
    inc e
    add sp, $38
    ret nc

    ld [hl], b
    and b

jr_019_7e8d:
    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    inc bc
    ld bc, $0306
    dec c
    ld b, $1b
    inc c
    scf
    jr jr_019_7ed7

    jr jr_019_7ed9

    jr jr_019_7edb

    jr jr_019_7e26

    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nc, jr_019_7e8d

jr_019_7ead:
    ld e, b
    or b
    ld e, b
    or b
    ld e, b
    or b
    ld e, b
    or b
    scf
    jr jr_019_7eef

    jr jr_019_7ef1

    jr jr_019_7eee

    dec e
    add hl, de
    ld c, $0d
    ld b, $06
    inc bc
    inc bc
    ld bc, $b058
    ld e, b
    or b
    ld e, b
    or b
    ret c

    jr nc, jr_019_7e7e

    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    push de
    ld a, l

jr_019_7ed7:
    dec d
    ld a, [hl]

jr_019_7ed9:
    ld d, l
    ld a, [hl]

jr_019_7edb:
    sub l
    ld a, [hl]
    ld hl, sp-$08
    inc bc
    nop
    nop
    ld [$0004], sp
    ld [$05f8], sp
    nop
    nop
    ld [$0006], sp
    add b

jr_019_7eee:
    rst $38

jr_019_7eef:
    rst $38
    rst $38

jr_019_7ef1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
