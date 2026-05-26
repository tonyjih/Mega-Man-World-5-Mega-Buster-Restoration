; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld e, b
    ld b, d
    ld b, d
    ld e, c
    nop
    ld l, e
    ld sp, hl
    ld [hl], l

Call_00a_4008:
    push de
    ret


Call_00a_400a:
    inc hl
    ld a, $fe
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ret


    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a

Call_00a_401c:
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
    jr nc, jr_00a_4035

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_00a_4035:
    ld a, e
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $02
    add c
    ld l, a

jr_00a_403f:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_00a_405e

Jump_00a_404b:
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
    call Call_00a_4008
    pop bc
    pop hl
    jr jr_00a_407e

jr_00a_405e:
    cp $ff
    jr nz, jr_00a_406a

    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a
    jr jr_00a_407e

jr_00a_406a:
    cp $fe
    jr nz, jr_00a_4086

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
    jr jr_00a_4087

jr_00a_407e:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_00a_403f

jr_00a_4086:
    or a

jr_00a_4087:
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
    ret


    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a

Call_00a_409f:
    ldh a, [$ff9b]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d747]
    cp b
    jr c, jr_00a_40df

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_00a_40df

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_00a_40cf

    inc a
    cp b
    jr nz, jr_00a_40df

    xor a
    scf
    ret


jr_00a_40cf:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_00a_40df

    xor a
    inc a
    scf
    ret


jr_00a_40df:
    or a
    ret


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_00a_40ee:
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
    jr jr_00a_40ee

Call_00a_4120:
Jump_00a_4120:
    ld hl, $cc00
    call Call_00a_412d
    ld hl, $c3e5
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00a_412d:
    push hl
    call Call_00a_415c
    pop hl
    ld c, l
    jp Jump_00a_4185


Call_00a_4136:
    ld a, [$de8f]
    ld b, a

jr_00a_413a:
    ld a, [hl+]
    or a
    jr z, jr_00a_4143

    cp b
    jr nz, jr_00a_413a

    ld a, $01

jr_00a_4143:
    ld [$d161], a
    ret


Call_00a_4147:
    ld a, [$d161]
    or a
    ret z

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    or c
    jr nz, jr_00a_4174

    push de
    call Call_000_0219
    pop de

Call_00a_415c:
    ld a, l
    ld [$c3e5], a
    ld a, h
    ld [$c3e6], a
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $00
    ret


    ld c, l

jr_00a_4174:
    ld a, [$deaf]
    and $ff
    jp nz, Jump_00a_41da

    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_00a_41da

Jump_00a_4185:
jr_00a_4185:
    ld a, $2c
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    push hl
    ld l, [hl]
    ld h, $00
    ld b, l
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    cp $fe
    jr z, jr_00a_41dc

    cp $ff
    jr nz, jr_00a_41ad

    ld [hl], $00
    jr jr_00a_4185

jr_00a_41ad:
    inc [hl]
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ldh [$ff8a], a
    ld l, e
    ld h, d
    pop de
    ld a, b
    or c
    call nz, Call_000_0183
    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    ld a, $2b
    add c
    ld l, a
    ldh a, [$ff8a]
    ld [hl], a
    or a
    jr z, jr_00a_4185

Jump_00a_41da:
jr_00a_41da:
    xor a
    ret


jr_00a_41dc:
    scf
    ret


    ld a, e
    ld [$de75], a
    ld a, d
    ld [$de76], a
    ld a, $12
    ld [$de73], a
    ld a, $42
    ld [$de74], a
    ret


Call_00a_41f1:
    ld a, [$de74]
    or a
    jr z, jr_00a_420e

    xor a
    ldh [$ffab], a
    ld a, [$d70d]
    ldh [$ff8a], a
    ld a, [$d70e]
    ldh [$ff8b], a
    ld a, [$d725]
    ldh [$ff8c], a
    call Call_00a_4212
    ldh a, [$ffab]

jr_00a_420e:
    ld [$d70b], a
    ret


Call_00a_4212:
    ldh a, [$ff8c]
    ld b, a
    cp $f0
    jr c, jr_00a_421b

    ld b, $00

jr_00a_421b:
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    bit 7, d
    jr z, jr_00a_4228

    ld d, $00
    ld e, d

jr_00a_4228:
    ld hl, $de75
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00a_422e:
    ld a, [hl+]
    ld c, a
    and [hl]
    inc a
    ret z

    ld a, e
    sub c
    ld a, d
    sbc [hl]
    jr c, jr_00a_4251

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_00a_4253

    inc hl
    ld a, b
    cp [hl]
    jr c, jr_00a_4254

    inc hl
    cp [hl]
    jr nc, jr_00a_4255

    ldh a, [$ffab]
    set 7, a
    ldh [$ffab], a
    ret


jr_00a_4251:
    inc hl
    inc hl

jr_00a_4253:
    inc hl

jr_00a_4254:
    inc hl

jr_00a_4255:
    inc hl
    jr jr_00a_422e

    ld e, h
    ld b, d
    ld h, d
    ld b, d
    ld h, a
    ld b, d
    ld [hl], l
    ld b, d
    add e
    ld b, d
    ld a, [de]
    inc b
    inc de
    inc b
    rst $38
    nop
    adc d
    ld d, d
    jp $4553


    ld b, l
    ld de, $4146
    nop
    ld h, e
    sub c
    ld b, d
    nop
    adc d
    ld d, d
    jp $4553


    ld b, l
    ld de, $4746
    nop
    ld b, e
    di
    ld b, h
    nop
    adc d
    ld d, d
    jp $4c53


    ld b, l
    ld de, $4746
    nop
    ld h, e
    ld bc, $0145
    cp $45
    ld e, $46
    nop
    nop
    nop
    inc hl
    add hl, bc
    ld bc, $429f
    nop
    ld [bc], a
    xor $45
    ld [hl], b
    ld b, [hl]
    and b
    nop
    dec h
    dec sp
    ld bc, $42c9
    nop
    inc l
    add hl, bc
    jr nz, jr_00a_42b0

jr_00a_42b0:
    ld [hl+], a
    dec c
    ld d, b
    nop
    inc l
    rla
    jr nz, jr_00a_42b8

jr_00a_42b8:
    ld [hl+], a
    ld e, $20
    nop
    inc l
    add hl, hl
    jr nz, jr_00a_42c0

jr_00a_42c0:
    ld [hl+], a
    ld [hl-], a
    ld b, b
    nop
    ld [hl+], a
    jr c, jr_00a_42d7

    nop
    nop
    inc bc
    xor $45
    ld d, d
    ld c, b
    and b
    dec b
    dec h
    add hl, bc
    ld bc, $42db
    nop
    inc l

jr_00a_42d7:
    ld [$0020], sp
    nop
    inc b
    xor $45
    and h
    ld c, b
    ld b, b
    ld b, $16
    inc de
    ld bc, $42f1
    nop
    dec h
    ld b, $10
    nop
    ld [hl+], a
    ld de, $0060
    nop
    dec b
    xor $45
    ld b, [hl]
    ld c, c
    add b
    rlca
    ld d, $09
    ld bc, $4303
    nop
    daa
    ld [$0060], sp
    nop
    ld b, $ee
    ld b, l
    sbc b
    ld c, c
    jr nz, jr_00a_4312

    daa
    rlca
    ld [bc], a
    scf
    ld b, e
    ld hl, $0109

jr_00a_4312:
    adc a
    ld b, h
    ld [bc], a
    ld bc, $0b20
    ld [hl+], a
    ld [bc], a
    jr nz, jr_00a_431c

jr_00a_431c:
    nop
    add [hl]
    cp h
    ld b, l
    sbc b
    ld c, c
    jr nz, jr_00a_432c

    daa
    rlca
    ld [bc], a
    scf
    ld b, e
    ld hl, $0109

jr_00a_432c:
    adc a
    ld b, h
    ld [bc], a
    ld bc, $0b20
    ld [hl+], a
    ld [bc], a
    jr nz, jr_00a_4336

jr_00a_4336:
    nop
    add a
    cp $45
    ld [$2049], a
    ld [$0127], sp
    ld [bc], a
    ld d, l
    ld b, e
    jr nz, jr_00a_434c

    add b
    inc bc
    ld b, e
    ld [bc], a
    ld bc, $0220

jr_00a_434c:
    ld [bc], a
    ld [bc], a
    jr nz, jr_00a_435a

    ld l, $03
    stop
    nop
    ld [$45fe], sp
    inc a
    ld c, d

jr_00a_435a:
    jr nz, jr_00a_4364

    ld d, $1d
    ld bc, $44f3
    nop
    rra
    rlca

jr_00a_4364:
    ld h, b
    nop
    ld [hl+], a
    rlca
    jr nc, jr_00a_436a

jr_00a_436a:
    inc l
    db $10
    stop
    ld [hl+], a
    add hl, de
    ld b, b
    nop
    nop
    add hl, bc
    xor $45
    ld l, $4b
    and b
    ld a, [bc]
    jr nz, jr_00a_4383

    add b
    add l
    ld b, e
    nop
    daa
    ld b, $40

jr_00a_4383:
    nop
    nop
    adc d
    cp $45
    add b
    ld c, e
    and b
    ld a, [bc]
    ld hl, $0109
    xor e
    ld b, e
    daa
    rlca
    ld [bc], a
    ld [hl], e
    ld b, e
    ld [bc], a
    ld bc, $0920
    ld [bc], a
    ld bc, $0b40
    ld [bc], a
    ld bc, $0260
    ld [hl+], a
    inc bc
    jr nc, jr_00a_43a6

jr_00a_43a6:
    ld [bc], a
    inc bc
    ld h, b
    add hl, bc
    nop
    dec bc
    xor $45
    jp nc, Jump_00a_404b

    dec bc
    dec h
    inc de
    ld bc, $43c5
    nop
    rra
    rlca
    ld h, b
    nop
    dec h
    ld a, [bc]
    jr nz, jr_00a_43c0

jr_00a_43c0:
    rra
    db $10
    jr nc, jr_00a_43c4

jr_00a_43c4:
    nop
    inc c
    xor $45
    ld [hl], h
    ld c, h
    add b
    inc c
    daa
    rlca
    ld [bc], a
    db $db
    ld b, e
    nop
    ld [bc], a
    ld bc, $0b20
    ld l, $07
    jr nz, jr_00a_43da

jr_00a_43da:
    nop
    dec c
    cp $45
    add $4c
    add b
    inc c
    inc [hl]
    add hl, bc
    ld bc, $43ed
    nop
    rra
    inc b
    ld h, b
    nop
    nop
    ld c, $ee
    ld b, l
    jr @+$4f

    jr nz, jr_00a_4401

    dec h
    dec e
    ld bc, $4453
    db $10
    inc e
    add b
    and c
    ld b, h
    rra
    ld b, $30

jr_00a_4401:
    nop
    ld [hl+], a
    ld c, $50
    nop
    rra
    ld d, $50
    nop
    nop
    ld c, $fe
    ld b, l
    ld a, [bc]
    ld c, [hl]
    ld h, b
    ld c, $27
    rlca
    ld [bc], a
    ld hl, $1044
    ld [$a180], sp
    ld b, h
    rra
    inc bc
    ld d, b
    nop
    nop
    rrca
    cp $45
    ld e, h
    ld c, [hl]
    ld h, b
    ld c, $87
    ld bc, $2f02
    ld b, h
    nop
    nop
    db $10
    cp $45
    xor [hl]
    ld c, [hl]
    ld h, b
    ld c, $47
    ld bc, $3d02
    ld b, h
    nop
    nop
    sub c
    or $45
    nop
    ld c, a
    ld h, b
    ld c, $25
    add hl, bc
    ld bc, $4453
    inc hl
    nop
    inc bc
    ld [hl], c
    ld b, h
    ld l, $07
    stop
    nop
    ld [de], a
    ld e, l
    ld b, l
    ld d, d
    ld c, a
    nop
    rrca
    inc sp
    inc e
    ld bc, $4501
    nop
    rra
    dec b
    ld h, b
    nop
    ld [hl+], a
    ld [$0050], sp
    daa
    ld de, $0050
    ld [hl+], a
    ld a, [de]
    ld d, b
    nop
    nop
    sub l
    call c, $f045
    ld d, b
    ret nz

    dec c
    inc hl
    add hl, bc
    ld bc, $443d
    nop
    rra
    ld bc, $0010
    ld [bc], a
    ld bc, $0c60
    ld [bc], a
    rlca
    db $10
    add hl, bc
    ld [bc], a
    ld [$0510], sp
    nop
    sub [hl]
    or $45
    ld b, d
    ld d, c
    ret nz

    ld [$0021], sp
    inc bc
    dec e
    ld b, e
    nop
    ld b, c
    rlca
    ld b, b
    ld bc, $9700
    cp $45
    sub h
    ld d, c
    ld h, b
    ld c, $80
    ld bc, $bb80
    ld b, h
    rla
    ld [$0b02], sp
    ld b, h
    ld [bc], a
    ld bc, $0460
    rra
    inc b
    ld [hl], b
    nop
    nop
    sbc b
    cp $45
    and $51
    ld h, b
    ld c, $80
    ld bc, $d980
    ld b, h
    add a
    ld bc, $a102
    ld b, h
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, $2e
    ld bc, $0020
    ld [bc], a
    ld [$0140], sp
    nop
    sbc c
    cp $45
    jr c, jr_00a_4530

    ld h, b
    ld c, $00
    add a
    ld bc, $bb02
    ld b, h
    ld [hl+], a
    ld bc, $0030
    ld [bc], a
    rlca
    jr nc, jr_00a_44f8

    ld [bc], a
    ld [$0a30], sp
    nop
    ld a, [de]
    xor $45
    ld b, [hl]
    ld c, c

jr_00a_44f8:
    nop
    ld a, [bc]
    ld d, $09
    ld bc, $4373
    nop
    nop
    inc de
    ld [hl], d
    ld b, l
    ld b, h
    ld d, b
    ldh [rNR10], a
    inc sp
    ld [$1d01], sp
    ld b, l
    nop
    nop
    inc de
    ld l, a
    ld b, l
    ld b, h
    ld d, b
    ldh [rNR10], a
    inc sp
    add hl, bc
    ld bc, $451d
    nop
    nop
    call nc, Call_00a_4589
    sub [hl]
    ld d, b
    add b
    ld de, $0000
    rst $38
    add b
    dec a
    add hl, bc
    ld h, b
    nop
    nop
    inc bc
    dec e
    inc bc

jr_00a_4530:
    jr z, @+$26

    inc h
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    inc bc
    jr z, jr_00a_4562

    inc h
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld de, $542a
    jp Jump_00a_4120


    ret


    ld de, $542a
    call Call_00a_4120
    ld a, $33
    ld [$d85c], a
    ld a, $45
    ld [$d85d], a
    ret


    ld a, $2d
    ld [$d858], a

jr_00a_4562:
    ld a, $45
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jp $4607


    jp Jump_00a_457c


    ld a, $33
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a

Jump_00a_457c:
    ld a, $39
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    jp $4607


Call_00a_4589:
    call $5795
    ld a, $3f
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a
    ld a, $40
    ld [$d768], a
    ld a, $fa
    ld [$d769], a
    ld a, $28
    ld [$d76a], a
    ld a, $58
    ld [$d823], a
    ld a, $00
    ld [$d824], a
    ld a, $58
    ld [$d825], a
    ld a, $00
    ld [$d826], a
    jp $4607


    ld hl, $4601
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    ld a, $fe
    ld [$d820], a
    ld a, $90
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    jp $4607


    ld a, $fe
    ld [$d820], a
    ld a, $90
    ld [$d821], a
    ld a, $ff
    ld [$d822], a
    jp $4607


    ld a, $40
    ld [$d821], a
    jp $4607


    ld a, $50
    ld [$d821], a
    jp $4607


    jp $4607


    add hl, bc
    ld bc, $0201
    ld sp, $cd2e
    ld d, l
    ld e, b
    ld hl, $5411
    call Call_00a_4136
    ret


    call Call_00a_585f
    ld de, $5440
    call Call_00a_4147
    call Call_00a_41f1
    ret


    ld a, [bc]
    ld [$1514], sp
    ld d, $14
    dec d
    ld d, $14
    dec d
    ld c, $0f
    dec c
    ld sp, $2831
    ld sp, $3131
    ld sp, $1831
    jr nz, @+$30

    ld l, $24
    ld l, $2e
    ld l, $2e
    ld l, $19
    rrca
    ld l, $2e
    inc h
    ld hl, $2323
    ld hl, $2823
    jr nz, jr_00a_466d

    ld hl, $2924
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec hl
    inc h
    dec c
    add hl, hl
    dec hl
    inc h
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec hl
    rla
    rla
    inc hl
    ld hl, $2124
    inc hl
    inc hl
    ld hl, $1817
    jr jr_00a_4676

    rrca
    db $10
    ld a, [de]
    dec de
    inc e

jr_00a_466d:
    ld c, $0f
    ld c, $3c
    ld [$4332], sp
    ld b, e
    ld b, c

jr_00a_4676:
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    scf
    jr jr_00a_46f3

    rra
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, c
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e

Jump_00a_46c7:
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    rra
    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    add hl, de
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_46f3:
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rra
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld a, [de]
    inc e
    jr nz, jr_00a_4768

    ld a, [de]
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    ld c, $0f
    ld [hl-], a
    ld [hl-], a
    rla
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    ld c, $0f
    rla
    ld b, e
    ld c, $43
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_4768:
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    rra
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    dec l
    ld [hl-], a
    scf
    ld c, $0f
    jr jr_00a_47a6

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    jr jr_00a_47d1

    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    scf
    inc c
    dec c
    jr jr_00a_47e0

    add hl, de
    rla
    db $10
    jr nz, jr_00a_47e5

    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_47a6:
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    ld [hl-], a
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld a, [de]
    inc e
    ld [hl-], a
    jr nc, jr_00a_47f2

    ld [hl-], a
    scf
    ld b, b
    ld b, e
    rra
    ld b, e
    ld b, e
    ld [hl], $20
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [de]
    dec de

jr_00a_47d1:
    inc e
    ld b, e
    ld b, e
    ld [hl-], a
    jr nc, jr_00a_4809

    jr jr_00a_481c

    ld b, e
    jr jr_00a_47f6

    inc e
    ld b, e
    ld b, e
    ld [hl-], a

jr_00a_47e0:
    rla
    ld b, e
    ld b, d
    ld b, e
    ld b, e

jr_00a_47e5:
    ld b, e
    ld [hl-], a
    ld c, $0f
    ld [hl-], a
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    inc c
    dec c
    ld b, e
    ld b, b

jr_00a_47f2:
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_47f6:
    dec l
    ld c, $0f
    rla
    ld c, $0f
    rla
    scf
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    dec l
    ld c, $32
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_4809:
    ld b, e
    ld b, e
    ld c, $0f
    rla
    ld b, e
    ld b, e
    ld [hl], $2f
    ld [hl-], a
    jr jr_00a_4858

    ld b, e
    rrca
    ld [hl-], a
    ld [hl-], a
    ld b, e
    ld b, e
    inc c

jr_00a_481c:
    dec c
    ld b, e
    ld b, e
    ld c, $0f
    ld b, e
    inc c
    dec c
    jr nc, jr_00a_483d

    dec l
    ld [hl-], a
    db $10
    ld de, $0f0e
    ld [hl-], a
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    db $10
    ld de, $0f0e
    jr jr_00a_4843

    dec c
    ld c, $0f
    ld [hl-], a
    ld [hl-], a
    rla

jr_00a_483d:
    ld c, $0f
    jr nz, jr_00a_4859

    ld b, e
    ld b, e

jr_00a_4843:
    ld c, $0f
    ld b, e
    ld b, e
    inc c
    ld [hl-], a
    jr jr_00a_488e

    ld b, e
    ld a, [de]
    dec de
    inc e
    jr @+$10

    rrca
    ld a, [bc]
    ld [$1514], sp
    ld d, $14

jr_00a_4858:
    dec d

jr_00a_4859:
    ld d, $14
    dec d
    ld d, $14
    jr nc, jr_00a_4891

    ld sp, $2c34
    inc l
    inc [hl]
    ld sp, $0e31
    inc e
    add hl, hl
    dec hl
    ld [hl+], a
    ld e, $1e
    ld [hl+], a
    add hl, hl
    dec hl
    inc c
    rrca
    add hl, hl
    dec hl

Jump_00a_4875:
    ld [hl+], a
    ld l, $2e
    ld [hl+], a
    add hl, hl
    dec hl
    ld a, [de]
    add hl, de
    ld l, $2e
    ld [hl+], a
    ld l, $2e
    ld a, [de]
    inc e
    ld l, $19
    jr z, jr_00a_48b6

    ld l, $22
    ld l, $2d
    ld c, $0f

jr_00a_488e:
    ld l, $28
    inc h

jr_00a_4891:
    inc hl
    ld hl, $2d22
    ld c, $0f
    jr nz, jr_00a_48ba

    inc h
    ld c, $0f
    ld a, [de]
    dec de
    inc e
    db $10
    ld de, $0e17
    rrca
    inc d
    ld [$1615], sp
    inc d
    dec d
    inc d
    dec d
    add hl, de
    ld d, $14
    dec d
    ld d, $14
    dec d
    ld d, $14
    dec d

jr_00a_48b6:
    ld d, $14
    dec d
    scf

jr_00a_48ba:
    rrca
    ld sp, $2831
    daa
    dec [hl]
    daa
    daa
    ld b, [hl]
    daa
    jr z, jr_00a_4900

    ld a, [hl-]
    daa
    daa
    ld a, [hl-]
    ld a, [hl-]
    jr z, jr_00a_48f4

    add hl, de
    dec c
    ld l, $2e
    inc h
    nop
    dec e
    nop
    nop
    ld b, l
    nop
    inc h
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    inc h
    nop
    ld a, [de]
    inc e
    ld l, $2e
    inc h
    nop
    dec e
    nop
    nop
    ld b, l
    nop
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc hl
    ld hl, $3a3a
    inc h

jr_00a_48f4:
    ld hl, $300e
    nop
    nop
    inc h
    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    rla

jr_00a_4900:
    rla
    ld a, [hl-]
    ld a, [hl-]
    ld l, $2e
    ld a, [hl-]
    ld a, [hl-]
    inc h
    ld l, $17
    inc [hl]
    inc hl
    ld hl, $2124
    rla
    ld c, $0f
    ld a, [de]
    dec de
    inc e
    ld a, [hl-]
    ld a, [hl-]
    ld l, $2e
    ld a, [hl-]
    ld a, [hl-]
    inc h
    ld l, $19
    ld [hl+], a
    ld h, $26
    ld h, $26
    add hl, de
    ld [hl], $0e
    rrca
    ld a, [de]
    inc e
    ld a, [hl-]
    ld a, [hl-]
    rla
    jr nz, @+$3c

    ld a, [hl-]
    ld h, $26
    inc [hl]
    ld c, $0f
    ld a, [hl-]
    dec l
    cpl
    ld a, [de]
    inc e
    rla
    inc c
    dec c
    rla
    ld a, [hl-]
    ld a, [hl-]
    ld c, $0f
    ld a, [hl-]
    ld a, [hl-]
    ld c, $0f
    rla
    ld a, [bc]
    ld [$0e36], sp
    rrca
    ld a, [de]
    dec de
    dec de
    inc e
    ld c, $0f
    jr nc, @+$19

    inc d
    dec d
    ld d, $14
    dec d
    ld d, $14
    dec d
    rla
    inc e
    ld sp, $2c28
    inc l
    inc l
    inc l
    jr z, jr_00a_4996

    jr @+$11

    ld l, $24
    ld e, $1e
    ld e, $1e
    inc h
    ld l, $18
    scf
    ld l, $24
    ld e, $1e
    ld e, $1e
    inc h
    ld l, $19
    jr nc, @+$30

    inc h
    add hl, hl
    ld a, [de]
    inc e
    dec hl
    inc h
    ld l, $36
    jr z, @+$23

    inc h
    ld c, $0f
    ld c, $0f
    inc h
    inc hl
    jr c, @+$1c

    inc e
    ld c, $0f
    inc de
    inc de
    ld c, $0f

jr_00a_4996:
    ld a, [de]
    inc e
    ld a, [bc]
    ld [$1514], sp
    ld d, $14
    dec d
    ld d, $14
    dec d
    ld d, $0e
    rla
    ld sp, $3128
    ld sp, $3131
    jr z, jr_00a_49de

    ld c, h
    add hl, de
    ld l, $24
    ld l, $2e
    ld l, $2e
    inc h
    ld l, $4d
    ld a, [de]
    inc e
    ld [bc], a
    inc sp
    ld l, $2e
    ld l, $02
    ld a, [de]
    inc e
    scf
    add hl, sp
    ld bc, $2139
    inc hl
    ld hl, $3801
    ld [hl], $30
    ld l, $28
    ld l, $2e
    ld l, $2e
    jr z, @+$30

    ld c, $39
    ld hl, $2124
    inc hl
    ld hl, $2423

jr_00a_49de:
    ld hl, $1a12
    inc e
    ld c, $0f
    rla
    ld a, [de]
    inc e
    inc h
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [$102d], sp
    inc c
    dec c
    add hl, de
    cpl
    jr nc, jr_00a_4a18

    ld bc, $0c12
    cpl
    jr nc, jr_00a_4a2b

    ld sp, $3131
    inc h
    ld bc, $300e
    daa
    jr z, jr_00a_4a32

    ld l, $2e
    ld l, $24
    ld bc, $1a0c
    dec de
    dec de
    inc e
    ld [bc], a
    ld l, $2e
    inc h
    ld sp, $170e
    ld sp, $3128

jr_00a_4a18:
    ld bc, $2e2e
    inc h
    ld l, $17
    add hl, de
    ld hl, $2324
    jr c, @+$25

    ld hl, $2124
    jr jr_00a_4a38

    dec hl
    inc h

jr_00a_4a2b:
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc h
    add hl, hl
    add hl, de

jr_00a_4a32:
    rla
    dec hl
    inc h
    ld a, [de]
    inc e
    inc de

jr_00a_4a38:
    inc de
    ld c, $0f
    jr nc, jr_00a_4a5b

    ld [$4319], sp
    ld b, e
    ld [hl], $1a
    dec de
    inc e
    add hl, de
    jr nc, jr_00a_4a7a

    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_4a5b:
    scf
    jr nc, jr_00a_4aa1

    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, b
    ld b, e
    rra
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de

jr_00a_4a7a:
    rrca
    ld b, e
    rra
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [de]
    dec c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_4aa1:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, $12
    ld b, e
    ld b, e
    ld a, [de]
    dec de
    inc e
    cpl
    ld c, $0f
    ld b, e
    rra
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    ld [de], a
    ld b, b
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    jr nz, jr_00a_4b26

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    ld [hl-], a
    jr nz, jr_00a_4b34

    add hl, de
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    ld b, e
    ld b, e
    ld b, e
    jr jr_00a_4b32

    jr nz, jr_00a_4b45

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    jr nz, jr_00a_4b4c

    ld b, e
    ld b, e
    ld c, $0f
    scf
    ld b, e
    ld b, e
    inc e
    dec l
    cpl
    ld c, $0f
    ld [hl-], a
    ld c, $0f
    jr jr_00a_4b34

    dec de
    inc e
    jr @+$34

    ld a, [de]
    dec de
    dec de
    inc e
    ld b, e
    ld b, e
    jr jr_00a_4b58

jr_00a_4b26:
    ld b, c
    ld b, e
    ld b, e
    ld [hl-], a
    ld a, [de]
    dec de
    inc e
    rla
    ld a, [bc]
    ld [$3617], sp

jr_00a_4b32:
    ld a, [de]
    dec de

jr_00a_4b34:
    dec de
    dec de
    inc e
    add hl, de
    ld bc, $1817
    inc l
    inc l
    jr z, jr_00a_4b70

    ld sp, $3131
    ld bc, $1919

jr_00a_4b45:
    ld e, $1e
    inc h
    ld l, $2e
    ld l, $2e

jr_00a_4b4c:
    ld sp, $320e
    ld e, $1e
    inc h
    ld l, $2e
    ld l, $2e
    ld l, $0c

jr_00a_4b58:
    scf
    ld e, $1e
    inc h
    ld a, [de]
    inc e
    ld l, $2e
    ld l, $1a
    jr nc, @+$20

    ld e, $0e
    rrca
    ld c, $0f
    ld l, $2e
    db $10
    jr z, jr_00a_4b8c

    dec l
    ld a, [de]

jr_00a_4b70:
    dec de
    dec de
    inc e
    jr nz, @+$23

    inc c
    ld c, $0f
    rla
    ld c, $0f
    db $10
    ld de, $0f0e
    rla
    ld a, [bc]
    ld [$1618], sp
    ld d, $14
    dec d
    ld d, $14
    dec d
    ld d, $14

jr_00a_4b8c:
    add hl, de
    ld sp, $3131
    ld sp, $2831
    inc l
    inc l
    jr z, @+$1e

    inc hl
    inc hl
    ld hl, $2123
    inc h
    ld hl, $2423
    rla
    inc sp
    add hl, bc
    nop
    nop
    nop
    inc h
    nop
    ld [bc], a
    db $10
    rrca
    daa
    add hl, bc
    ld c, $0f
    nop
    inc h
    nop
    ld bc, $0d2d
    inc sp
    add hl, bc
    inc c
    dec c
    nop
    inc h
    ld l, $01
    rla
    rrca
    daa
    add hl, bc
    daa
    daa
    nop
    inc h
    ld l, $01
    add hl, de
    db $10
    ld de, $0f0e
    db $10
    ld c, $0f
    rla
    ld bc, $141a
    ld [$1615], sp
    inc d
    dec d
    ld d, $14
    dec d
    ld d, $14
    dec d
    add hl, de
    inc d
    dec d
    ld d, $14
    dec d
    ld d, $14
    dec d
    jr nz, jr_00a_4c11

    ld a, [hl-]
    jr z, jr_00a_4c1d

    ld sp, $3131
    jr z, jr_00a_4c2b

    inc [hl]
    inc l
    jr z, @+$3c

    jr z, @+$33

    ld sp, $3131
    jr z, jr_00a_4c06

    inc h
    ld a, [hl-]
    inc h
    ld l, $2e
    ld l, $2e
    inc h
    ld a, [hl-]
    ld [hl+], a

jr_00a_4c06:
    ld e, $24
    ld a, [hl-]
    inc h
    ld l, $2e
    ld l, $2e
    inc h
    inc c
    rla

jr_00a_4c11:
    ld a, [hl-]
    inc h
    ld l, $2e
    ld l, $2e
    inc h
    ld a, [hl-]
    ld [hl+], a
    ld e, $24
    ld a, [hl-]

jr_00a_4c1d:
    inc h
    ld hl, $2123
    inc hl
    inc h
    scf
    jr nc, jr_00a_4c60

    inc h
    ld l, $2e
    ld l, $2e

jr_00a_4c2b:
    inc h
    ld a, [hl-]
    ld [hl+], a
    ld e, $24
    ld a, [hl-]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec hl
    inc h
    add hl, de
    jr nz, jr_00a_4c74

    inc h
    ld hl, $2123
    inc hl
    inc h
    ld a, [hl-]
    ld h, $26
    ld h, $3a
    inc c
    dec c
    inc c
    dec c
    dec hl
    inc h
    inc a
    scf
    ld a, [hl-]
    ld h, $26
    ld h, $26
    ld h, $26
    ld a, [hl-]
    ld a, [bc]
    dec bc
    dec sp
    ld a, [hl-]
    scf
    ld a, [de]
    inc e
    jr nz, jr_00a_4c7f

    inc h
    add hl, hl

jr_00a_4c60:
    inc e
    ld a, [hl-]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [hl-]
    inc c
    dec c
    scf
    ld a, [hl-]
    scf
    db $10
    ld de, $0a3b
    dec bc
    rla

jr_00a_4c74:
    ld a, [bc]
    ld [$302d], sp
    inc d
    dec d
    ld d, $14
    dec d
    ld d, $14

jr_00a_4c7f:
    dec d
    dec bc
    jr z, jr_00a_4cb4

    ld sp, $2831
    inc l
    inc l
    inc l
    rla
    dec c
    inc h
    ld l, $2e
    ld l, $24
    ld e, $1e
    ld e, $18
    ld a, [de]
    inc e
    ld l, $2e
    ld l, $24
    ld e, $1e
    ld e, $18
    jr nc, @+$2a

    ld hl, $2123
    ld a, [bc]
    dec bc
    inc hl
    ld hl, $3e19
    inc h
    ld l, $2e
    dec l
    ld a, [de]
    inc e
    add hl, hl
    dec hl
    db $10
    dec hl
    inc h

jr_00a_4cb4:
    ld l, $0e
    rrca
    inc c
    dec c
    ld l, $2e
    ld [hl], $20
    ld c, $0f
    inc c
    ld a, [de]
    dec de
    inc e
    ld l, $2e
    dec l
    ld a, [bc]
    ld [$1937], sp
    add hl, de
    ld [hl], $1a
    dec de
    inc e
    ld l, $2e
    scf
    rla
    jr z, jr_00a_4d01

    inc l
    inc l
    inc [hl]
    ld sp, $2e2e
    scf
    add hl, de
    inc h
    ld e, $1e
    ld e, $22
    ld l, $2e
    ld l, $37
    rrca
    inc h
    ld e, $1e
    ld e, $22
    ld l, $2d
    ld [hl-], a
    dec h
    dec c
    inc h
    ld e, $1a
    dec de
    dec de
    inc e
    jr nc, jr_00a_4d37

    jr z, jr_00a_4d12

    inc h
    ld e, $2c
    inc l
    inc [hl]
    inc a

jr_00a_4d01:
    dec a
    dec hl
    inc h
    add hl, de
    inc h
    ld e, $1e
    ld e, $22
    inc hl
    ld hl, $2423
    ld a, [de]
    dec de
    inc e
    db $10

jr_00a_4d12:
    ld de, $0f0e
    inc de
    jr nz, @+$19

    ld e, $08
    ld [hl-], a
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    cpl
    jr nc, jr_00a_4d38

jr_00a_4d37:
    dec l

jr_00a_4d38:
    scf
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    rra
    ld b, e
    ld b, e
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    rra
    ld b, e
    ld bc, $170e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld bc, $1936
    ld b, e
    rra
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rra
    ld b, e
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    dec l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [bc]
    dec bc
    ld b, e
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ccf
    ld b, e
    ld [hl-], a
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    inc c
    dec c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    dec l
    ld [hl-], a
    ld [hl-], a
    ld b, e
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [bc]
    dec bc
    rla
    ld [hl-], a
    ld [hl-], a
    db $10
    ld a, [de]
    dec de
    dec de
    inc e
    ld b, e
    ld b, c
    ld [hl-], a
    ld b, e
    ld b, c
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld c, $0f
    ld b, e
    ld b, e
    ld a, [bc]
    dec bc
    dec sp
    ld b, e
    ld b, c
    inc c
    dec c
    jr jr_00a_4e0a

    dec c
    ld a, [de]
    dec de
    dec de
    inc e
    jr nc, @+$0a

    ld [$3217], sp
    ld [hl-], a
    rla

jr_00a_4e0a:
    ld a, [bc]
    ld [$2f36], sp
    cpl
    cpl
    cpl
    cpl
    cpl
    jr nc, jr_00a_4e16

    dec l

jr_00a_4e16:
    ld b, e
    ccf
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    rra
    ld b, e
    ld bc, $430e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld bc, $0b36
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    dec l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    ld a, [de]
    dec de
    dec de
    inc e
    ld b, e
    ld b, c
    ld [hl-], a
    ld b, e
    ld b, c
    ld [hl-], a
    dec de
    dec de
    inc e
    jr nc, @+$0a

    ld [$4317], sp
    ld b, e
    rla
    ld a, [bc]
    ld [$1417], sp
    dec d
    ld d, $0e
    rrca
    add hl, de
    add hl, hl
    dec hl
    add hl, de
    ld c, $0f
    inc l
    inc l
    inc l
    ld [hl], $30
    ld l, $2e
    ld [de], a
    ld [de], a
    inc [hl]
    ld e, $1e
    ld e, $2c
    jr z, jr_00a_4ea8

    ld l, $12
    ld [de], a
    ld [hl+], a
    inc hl
    ld hl, $2123
    inc h
    ld l, $2e
    ld c, $20
    ld [hl+], a
    add hl, hl
    ld a, [hl+]
    dec hl
    dec hl
    inc h
    nop
    nop
    inc c
    rrca
    ld [hl+], a
    add hl, hl
    ld a, [hl+]
    dec hl
    dec hl
    inc h
    inc hl
    ld hl, $0d37
    ld [hl+], a
    inc hl
    ld hl, $2123
    inc h
    add hl, hl
    dec hl
    ld [hl], $30
    ld [hl+], a
    ld l, $2e

jr_00a_4ea8:
    ld l, $2e
    inc h
    add hl, hl
    dec hl
    ld c, $0a
    ld [$220f], sp
    ld l, $2e
    ld l, $2e
    inc h
    ld e, $1e
    inc c
    ld [de], a
    ld [hl+], a
    ld l, $2e
    ld l, $2e
    inc h
    ld e, $1e
    rla
    ld [de], a
    ld [hl+], a
    inc hl
    ld hl, $2123
    inc h
    ld l, $2e
    add hl, de
    rrca
    ld [hl+], a
    ld e, $1e
    ld e, $1e
    inc h
    ld l, $2e
    ld [de], a
    dec c
    ld [hl+], a
    ld e, $1e
    ld e, $1e
    inc h
    ld l, $2e
    ld [de], a
    jr nc, jr_00a_4f06

    dec e
    dec e
    dec e
    dec e
    inc h
    ld l, $2e
    ld c, $20
    ld [hl+], a
    dec e
    dec e
    dec e
    ld c, $0f
    inc hl
    ld hl, $120c
    ld [hl+], a
    ld e, $1e
    ld e, $0c
    dec c
    ld [$1708], sp
    ld a, [bc]
    ld [$000f], sp
    nop
    nop

jr_00a_4f06:
    nop
    ld [hl], $2f
    ld c, $0f
    add hl, de
    rla
    ld hl, $2123
    inc hl
    jr c, jr_00a_4f3b

    ld sp, $0e31
    add hl, de
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    dec hl
    inc h
    ld e, $1e
    dec l
    daa
    nop
    nop
    nop
    nop
    nop
    inc h
    ld e, $1e
    add hl, de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc h
    add hl, hl
    dec hl
    ld [hl-], a
    ld a, [de]
    inc e
    inc hl
    ld hl, $0b0a
    inc h

jr_00a_4f3b:
    add hl, hl
    ld a, [hl+]
    ld a, $0d
    jr nz, @+$0a

    ld [$0d0c], sp
    inc h
    add hl, hl
    ld a, [hl+]
    dec hl
    jr nc, jr_00a_4f61

    inc de
    inc de
    scf
    rla
    db $10
    ld de, $0f0e
    ld e, $08
    jr nz, jr_00a_4f6f

    cpl
    cpl
    cpl
    ld a, [de]
    dec de
    inc e
    cpl
    jr nc, jr_00a_4f96

    inc d
    dec d

jr_00a_4f61:
    ld d, $14
    dec d
    ld d, $14
    dec d
    jr nz, @+$16

    dec d
    ld d, $14
    dec d
    inc d
    dec d

jr_00a_4f6f:
    ld d, $04
    dec b
    rrca
    ld sp, $3131
    ld sp, $3a28
    ld a, [hl-]
    inc [hl]
    ld sp, $3137
    ld sp, $3131
    ld sp, $3131
    ld sp, $3a37
    jr z, @+$33

    jr z, @+$3c

    ld a, [hl-]
    inc [hl]
    ld sp, $0706
    rla
    ld l, $2e
    ld l, $2e
    inc h

jr_00a_4f96:
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    ld l, $37
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    scf
    ld a, [hl-]
    inc h
    ld l, $24
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    ld l, $1a
    inc e
    add hl, de
    ld l, $2e
    ld l, $2e
    inc h
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    ld l, $37
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    scf
    ld a, [hl-]
    inc h
    ld l, $24
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    ld l, $28
    inc bc
    ld [hl-], a
    add hl, hl
    add hl, hl
    ld a, [hl+]
    dec hl
    inc h
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    ld hl, $2144
    inc hl
    ld hl, $0b0a
    inc hl
    ld hl, $4423
    ld a, [hl-]
    inc h
    nop
    inc h
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    ld hl, $0324
    inc [hl]
    add hl, hl
    add hl, hl
    ld a, [hl+]
    dec hl
    inc h
    ld a, [hl-]
    ld a, [hl-]
    ld h, $26
    ld a, [hl-]
    ld h, $26
    ld a, [bc]
    inc c
    dec c
    dec bc
    ld h, $26
    ld a, [hl-]
    ld a, [hl-]
    inc h
    ld hl, $3a24
    ld a, [hl-]
    ld h, $26
    inc h
    inc bc
    ld h, $26
    ld h, $26
    ld h, $26
    ld a, [hl-]
    ld a, [hl-]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    add hl, de
    db $10
    dec c
    dec bc
    ld a, [bc]
    dec bc
    ld a, [hl-]
    ld h, $26
    ld h, $3a
    ld a, [hl-]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [hl-]
    ld a, [hl-]
    inc c
    dec c
    db $10
    ld de, $1c1a
    ld [hl], $1a
    dec de
    inc e
    inc c
    dec c
    ld a, [hl-]
    ld a, [bc]
    dec bc
    dec sp
    ld a, [hl-]
    ld a, [hl-]
    inc c
    dec c
    inc c
    dec c
    ld a, [bc]
    ld [$3744], sp
    ld c, $0f
    add hl, de
    dec l
    inc c
    dec c
    inc sp
    scf
    rla
    ld [hl], $2f
    cpl
    cpl
    db $10
    ld c, $0f
    cpl
    jr nc, jr_00a_506f

    dec d
    ld d, $14
    dec d
    ld d, $14
    dec d
    ld d, $0e
    jr z, @+$3e

    dec a
    ld a, $3d
    inc a
    dec a
    dec a
    ld a, $03
    inc h

jr_00a_506f:
    add hl, hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc bc
    inc h
    ld hl, $2123
    inc hl
    ld hl, $2123
    inc hl
    inc bc
    ld c, $0f
    inc de
    ld c, $0f
    rla
    ld c, $0f
    inc de
    ld c, $36
    db $10
    ld de, $0d0c
    jr jr_00a_509f

    dec c
    cpl
    ld c, $0b
    ld [$0e2d], sp
    rrca
    inc c
    dec c
    ld [hl], $0e

jr_00a_509f:
    rrca
    inc sp
    ld [hl], $20
    rla
    jr z, jr_00a_50db

    ld b, [hl]
    dec [hl]
    inc [hl]
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    jr z, jr_00a_50b8

    rrca
    inc h
    dec e
    ld b, l
    dec e
    ld [hl+], a
    ld b, l
    dec e
    ld b, l
    inc h

jr_00a_50b8:
    inc c
    jr z, @+$26

    dec e
    ld b, l
    dec e
    ld [hl+], a
    ld b, l
    dec e
    ld b, l
    inc h
    ld [hl], $24
    inc h
    add hl, hl
    ld a, [hl+]
    dec hl
    ld [hl+], a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc h
    ld a, [bc]
    inc h
    inc h
    ld l, $2e
    ld l, $22
    ld l, $2e
    ld l, $24
    inc c
    rrca

jr_00a_50db:
    inc h
    inc hl
    ld hl, $2223
    inc hl
    ld hl, $2423
    ld c, $0f
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$2e0f], sp
    ld [hl+], a
    ld a, [hl-]
    ld a, [hl-]
    inc h
    ld l, $2e
    ld [hl+], a
    ld c, $0b
    ld hl, $3a22
    ld a, [hl-]
    inc h
    inc hl
    ld hl, $3722
    dec c
    add hl, bc
    ld [bc], a
    ld c, $0f
    ld [bc], a
    ld c, $0f
    db $10
    jr nc, jr_00a_511c

    add hl, bc
    ld bc, $3a3a
    ld bc, $2727
    inc [hl]
    daa
    dec c
    add hl, bc

jr_00a_511c:
    ld bc, $3a3a
    jr z, jr_00a_514f

    ld l, $22
    ld l, $17
    add hl, bc
    inc [hl]
    ld a, [hl-]
    ld a, [hl-]
    inc h
    inc hl
    ld hl, $0f0e
    rrca
    ld h, $26
    ld a, [hl-]
    ld a, [hl-]
    ld h, $26
    ld h, $37
    inc c
    jr nc, @+$0c

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    dec c
    ld a, [bc]
    ld [$1a0f], sp
    dec de
    inc e
    cpl
    cpl
    ld a, [de]
    dec de
    inc e
    jr nz, jr_00a_5177

jr_00a_514f:
    ld sp, $3131
    ld sp, $3131
    ld sp, $0e31
    inc h
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc c
    jr nz, jr_00a_518d

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    db $10
    rla
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0f

jr_00a_5177:
    jr nz, jr_00a_5179

jr_00a_5179:
    nop
    nop
    nop
    nop
    ld c, $0f
    dec l
    rla
    scf
    ld hl, $2123
    inc hl
    ld hl, $0d0c
    scf
    jr jr_00a_519c

    ld a, [de]

jr_00a_518d:
    dec de
    dec de
    dec de
    inc e
    jr nc, jr_00a_51c5

    jr nc, jr_00a_519f

    ld [$2220], sp
    ld e, $1e
    ld e, $01

jr_00a_519c:
    inc h
    add hl, hl
    dec hl

jr_00a_519f:
    ld [hl], $0f
    ld [hl+], a
    ld e, $1e
    ld e, $01
    inc h
    ld l, $2e
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld e, $1e
    ld e, $2c
    inc h
    ld l, $2e
    ld [de], a
    ld [de], a
    ld [hl+], a
    inc hl
    ld hl, $2123
    inc h
    ld l, $2e
    ld c, $12
    ld [hl+], a
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [de]
    dec de

jr_00a_51c5:
    inc e
    ld [bc], a
    inc c
    ld [de], a
    ld [hl+], a
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, $28
    rla
    ld bc, $1237
    ld [hl+], a
    ld [hl-], a
    inc hl
    ld hl, $2423
    jr @+$03

    ld [hl], $0f
    ld a, [de]
    dec de
    dec de
    dec de
    dec de
    inc e
    add hl, de
    ld bc, $0a0e
    ld [$220f], sp
    nop
    nop
    jr @+$03

    jr jr_00a_521e

    ld l, $19
    rla
    ld [hl+], a
    inc hl
    inc hl
    jr @+$03

    jr @+$30

    ld l, $12
    jr @+$24

    ld a, [hl+]
    dec hl
    add hl, de
    ld bc, $2e19
    ld l, $12
    jr @+$24

    ld l, $2e
    ld [hl-], a
    ld bc, $2e32
    ld l, $32
    add hl, de
    ld [hl+], a
    ld l, $2e
    daa
    ld bc, $2928
    dec hl
    scf
    ld [hl-], a
    ld [hl+], a
    ld a, [de]
    dec de

jr_00a_521e:
    inc e
    ld bc, $2f32
    ld [hl-], a
    ld a, [de]
    dec c
    ld [hl+], a
    ld sp, $3131
    ld bc, $3128
    ld sp, $3036
    ld [hl+], a
    ld l, $2e
    ld l, $01
    inc h
    ld l, $2e
    ld c, $0a
    ld [$1615], sp
    inc d
    dec d
    ld d, $14
    dec d
    ld d, $14
    dec d
    ld [de], a
    ld sp, $3131
    ld sp, $2831
    ld sp, $1731
    ld [de], a
    ld l, $2e
    ld l, $2e
    ld l, $24
    ld l, $2e
    jr jr_00a_5268

    ld hl, $2123
    inc hl
    ld hl, $2e24
    ld l, $18
    dec c
    add hl, bc
    ld a, [de]
    dec de
    inc e
    ld [bc], a

jr_00a_5268:
    rla
    add hl, bc
    add hl, bc
    add hl, de
    jr nc, jr_00a_5277

    db $10
    ld de, $0130
    jr @+$0b

    add hl, bc
    ld c, $20

jr_00a_5277:
    add hl, hl
    dec a
    ld a, $17
    ld bc, $2318
    ld hl, $120c
    add hl, hl
    ld a, [hl+]
    dec hl
    jr @+$03

    jr jr_00a_52b6

    ld l, $17
    ld c, [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    rrca
    db $10
    db $10
    rrca
    rrca
    db $10
    db $10
    dec c
    dec c
    ld c, $0e
    add hl, de
    add hl, de
    inc b
    rlca
    dec b
    ld [$0906], sp
    add hl, de
    inc hl
    ld a, [bc]
    ld [hl+], a
    dec bc
    ld [hl+], a
    inc c
    ld [hl+], a
    ld l, d
    ld l, h
    ld l, e
    ld l, l
    ld d, b
    ld d, d
    ld d, c
    ld d, e
    ld de, $1215

jr_00a_52b6:
    ld d, $13
    rla
    inc d
    jr jr_00a_52d5

    add hl, de
    ld a, [de]
    ld e, $1b
    rra
    inc e
    jr nz, jr_00a_52ee

    ld l, $2b
    cpl
    inc l
    jr nc, jr_00a_52f7

    ld sp, $3532
    inc sp
    ld [hl], $34
    scf
    jr c, jr_00a_5312

    ld b, l
    ld b, l

jr_00a_52d5:
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, [hl+]
    dec e
    dec hl
    ld b, b
    inc l
    ld b, b
    dec l
    ld b, b
    dec [hl]
    ld b, b
    ld [hl], $1d
    ld c, c
    ld b, a
    ld c, d
    ld c, b
    ld b, a
    ld b, a
    ld c, b

jr_00a_52ee:
    ld c, b
    ld b, a
    ld c, c
    ld c, b
    ld c, d
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, a

jr_00a_52f7:
    ld l, b
    ld l, c
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld d, [hl]
    ld d, a
    ld c, e
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, h
    ld e, [hl]
    ld e, l
    ld e, a
    ld [hl+], a
    ld h, $26
    add hl, de
    inc bc
    ld e, d
    inc bc

jr_00a_5312:
    ld e, e
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    inc bc
    ld e, d
    inc bc
    ld e, d
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    inc h
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld b, e
    ld [bc], a
    ld b, e
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, [hl]
    add hl, sp
    add hl, sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    add hl, sp
    add hl, sp
    ld [bc], a
    ld c, a
    ld [bc], a
    ld c, a
    dec h
    add hl, de
    ld [hl+], a
    dec h
    ld e, b
    ld e, b
    ld e, c
    ld e, c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    ld [hl+], a
    ld hl, $0224
    ld e, b
    ld [bc], a
    ld e, c
    ld h, d
    ld h, h
    ld h, e
    ld h, l
    ld [hl+], a
    ld [hl+], a
    ld h, $24
    ld [bc], a
    ld b, c
    ld [bc], a
    ld b, c
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld hl, $2323
    ld [hl+], a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld [bc], a
    ld e, d
    ld [bc], a
    ld e, e
    ld [bc], a
    ld e, d
    ld [bc], a
    ld e, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $1115
    dec d
    ld [bc], a
    add hl, sp
    ld [bc], a
    dec sp
    ld [bc], a
    dec sp
    ld [bc], a
    dec sp
    ld [bc], a
    dec sp
    ld [bc], a
    add hl, sp
    nop
    add hl, hl
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00a_5398

jr_00a_5398:
    nop
    nop
    nop
    ld hl, $2123
    inc h
    ld c, l
    ld c, e
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld c, e
    ld [bc], a
    ld c, h
    dec h
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld h, [hl]
    ld l, b
    ld h, a
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, l
    ld l, b
    ld h, [hl]
    ld l, c
    ld h, a
    ld l, h
    ld l, d
    ld l, l
    ld l, e
    ld a, [hl-]
    dec a
    inc a
    ld a, $3a
    dec a
    inc a

jr_00a_53c2:
    ld a, $00
    nop
    ld [bc], a
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
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop

jr_00a_53ed:
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop

jr_00a_5402:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1512
    ld d, $17
    jr jr_00a_5441

    ld a, [de]
    nop
    jr nz, jr_00a_53c2

    ld b, b
    nop
    sub l
    ld d, h
    nop
    ld h, b
    sub [hl]
    ld b, b
    nop
    sub l
    ld d, l
    nop
    and b
    sub [hl]
    ld b, b
    nop
    sub l
    ld d, [hl]
    ld bc, $20ff

jr_00a_5441:
    sub [hl]
    ld b, b
    nop
    sub l
    ld d, h
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    sub l
    ld d, l
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    sub l
    ld d, [hl]
    ld [bc], a
    jr nz, jr_00a_53ed

    ld b, b
    nop
    push de
    ld d, h
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    push de
    ld d, l
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    push de
    ld d, [hl]
    ld [bc], a
    jr nz, jr_00a_5402

    ld b, b
    nop
    dec d
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    dec d
    ld d, [hl]
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    dec d
    ld d, a
    ld [bc], a
    jr nz, @-$68

    ld b, b
    nop
    ld d, l
    ld d, l
    ld [bc], a
    ld h, b
    sub [hl]
    ld b, b
    nop
    ld d, l
    ld d, [hl]
    ld [bc], a
    and b
    sub [hl]
    ld b, b
    nop
    ld d, l
    ld d, a
    ld [bc], a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld b, b
    ld c, h
    ld b, b
    ld d, d
    ld c, h
    ld d, d
    ld c, h
    ld c, h
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    ld a, h
    cp $42
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, b
    ld c, h
    ld c, h
    ld e, [hl]
    ld e, [hl]
    ld a, a
    ld e, [hl]
    ld a, a
    ld c, h
    ld e, [hl]
    ld b, b
    ld c, h
    ccf
    ld b, b
    nop
    nop
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld a, $40
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, h
    ld b, b
    ld d, d
    ld c, h
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld d, d
    ld c, h
    ld c, h
    ld b, b
    nop
    nop
    ld a, h
    cp $42
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld c, h
    ld b, b
    ld d, d
    ld c, h
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld d, d
    ld c, h
    ld c, h
    ld b, b
    ccf
    ld b, b
    nop
    nop
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld a, $40
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld c, h
    ld c, h
    ld e, [hl]
    ld e, [hl]
    ld a, a
    ld e, [hl]
    ld a, a
    ld c, h
    ld e, [hl]
    ld b, b
    ld c, h
    nop
    nop
    ld a, h
    cp $42
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, b
    ld b, b
    ld c, h
    ld b, b
    ld d, d
    ld c, h
    ld d, d
    ld c, h
    ld c, h
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld b, b
    nop
    nop
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld a, $40
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, h
    ld b, b
    ld d, d
    ld c, h
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld d, d
    ld c, h
    ld c, h
    ld b, b
    nop
    nop
    ld a, h
    cp $42
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld c, h
    ld b, b
    ld d, d
    ld c, h
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld d, d
    ld c, h
    ld c, h
    ld b, b
    ccf
    ld b, b
    nop
    nop
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld b, d
    ld b, h
    ld e, d
    ld b, h
    ld a, $40
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, b
    nop
    nop
    ld b, b
    ret nz

    ld b, b
    ld h, b
    ret nz

    sub b
    ldh [$ffd0], a
    and b
    jr nz, @-$7e

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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [bc]
    inc bc
    dec c
    inc bc
    inc bc
    dec b
    nop
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc d
    nop
    and b
    inc d
    inc e
    or h
    or $bc
    xor c
    cp $5d
    ld [$48e2], a
    ld [$4040], sp
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld hl, $0a00
    ld hl, $2b31
    xor a
    dec sp
    jp c, $353f

    ld e, [hl]
    ld c, $54
    ld d, b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add d
    add d
    rst $00
    add d
    add d
    rst $00
    db $ed
    rst $00
    ld d, a
    db $ed
    xor b
    ld a, l
    ld a, l
    jr c, jr_00a_563a

    jr c, jr_00a_5664

    db $10
    db $10
    stop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop

jr_00a_563a:
    nop
    ld d, b
    nop
    ld bc, $d050
    ld d, c
    ld a, e
    pop de
    pop de
    ei
    xor d
    ei
    rst $38
    xor d
    add b
    xor [hl]
    ld l, $84
    add h
    inc b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
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

jr_00a_5664:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00a_5669:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
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

jr_00a_5683:
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    nop
    add b
    ld b, b
    ld h, b
    jr nc, jr_00a_5713

    jr nc, @+$38

    ld c, $2e
    inc c
    dec e
    add hl, bc
    dec de
    inc bc
    rlca
    nop
    ld bc, $0602
    inc c
    ld e, $0c
    ld l, h
    ld [hl], b
    ld [hl], h
    jr nc, jr_00a_5669

    sub b
    ret c

    ret nz

    ldh [$ff03], a
    rlca
    add hl, bc
    dec de
    inc c
    dec e
    ld c, $2e
    jr nc, jr_00a_56f5

    jr nc, jr_00a_5739

    ld b, b
    ld h, b
    nop
    add b
    ret nz

    ldh [$ff90], a
    ret c

    jr nc, jr_00a_5683

    ld [hl], b
    ld [hl], h
    inc c
    ld l, h
    inc c
    ld e, $02
    ld b, $00
    ld bc, $0080
    jr nz, jr_00a_5719

    ld l, b
    jr nc, jr_00a_56f2

    jr nc, jr_00a_5706

    ld c, $15
    inc c
    ld [de], a
    add hl, bc
    dec b
    inc bc
    ld bc, $0400
    ld [bc], a
    ld d, $0c
    ld l, b
    inc c
    inc d
    ld [hl], b
    xor b
    jr nc, jr_00a_573a

jr_00a_56f2:
    sub b
    and b
    ret nz

jr_00a_56f5:
    dec b
    inc bc
    ld [de], a
    add hl, bc
    dec d
    inc c
    jr z, @+$10

    ld d, $30
    ld l, b
    jr nc, jr_00a_5722

    ld b, b
    add b
    nop
    and b

jr_00a_5706:
    ret nz

    ld c, b
    sub b
    xor b

jr_00a_570a:
    jr nc, jr_00a_5720

    ld [hl], b
    ld l, b
    inc c
    ld d, $0c
    inc b
    ld [bc], a

jr_00a_5713:
    ld bc, $8000
    nop
    ld h, b
    nop

jr_00a_5719:
    ld e, b
    jr nz, jr_00a_5742

    db $10
    ld h, $08
    add hl, de

jr_00a_5720:
    inc b
    dec de

jr_00a_5722:
    nop
    ld b, $01
    ld bc, $0600
    nop
    ld a, [de]
    inc b
    ld h, h
    ld [$1064], sp
    sbc b
    jr nz, jr_00a_570a

    nop
    ld h, b
    add b
    ld b, $01
    dec de
    nop

jr_00a_5739:
    add hl, de

jr_00a_573a:
    inc b
    ld h, $08
    ld h, $10
    ld e, b

jr_00a_5740:
    jr nz, jr_00a_57a2

jr_00a_5742:
    nop
    add b
    nop
    ld h, b
    add b
    ret c

    nop
    sbc b
    jr nz, jr_00a_57b0

    db $10
    ld h, h
    ld [$041a], sp
    ld b, $00
    ld bc, $8000
    nop
    jr nz, @+$42

    ld l, b
    jr nc, jr_00a_5772

    jr nc, jr_00a_5786

    ld c, $15
    inc c
    ld [de], a
    add hl, bc
    dec b
    inc bc
    ld bc, $0400
    ld [bc], a
    ld d, $0c
    ld l, b
    inc c
    inc d
    ld [hl], b
    xor b

jr_00a_5770:
    jr nc, jr_00a_57ba

jr_00a_5772:
    sub b
    and b
    ret nz

    dec b
    inc bc
    ld [de], a
    add hl, bc
    dec d
    inc c
    jr z, @+$10

    ld d, $30
    ld l, b
    jr nc, jr_00a_57a2

    ld b, b
    add b
    nop
    and b

jr_00a_5786:
    ret nz

    ld c, b
    sub b
    xor b
    jr nc, @+$16

    ld [hl], b
    ld l, b
    inc c
    ld d, $0c
    inc b
    ld [bc], a
    ld bc, $2100
    and c
    ld d, a
    ld bc, $0080
    ld de, $9660
    jp Jump_000_0183


    ei

jr_00a_57a2:
    ld sp, hl
    add $c3
    xor h
    sbc [hl]
    ld e, h
    jr c, jr_00a_5740

    adc a
    call $92c0
    and d
    rrca

jr_00a_57b0:
    ld c, a
    rrca
    adc a
    ld d, a
    daa
    dec bc
    inc de
    sub a
    ld h, a
    adc a

jr_00a_57ba:
    rrca
    ld d, c
    pop hl
    ld a, [hl+]
    inc e
    jp nz, Jump_00a_46c7

    ld b, $a1
    sbc b
    set 0, a
    ld a, [hl+]
    inc e
    xor c
    ld [hl], c
    ld a, [hl+]
    inc e
    jp z, $f5c7

    di
    dec d
    ld c, $68
    ldh a, [rSCX]
    add e
    add hl, bc
    ld de, $e9e5
    adc e
    sub e
    ld d, a
    daa
    ld c, a
    adc a
    ld b, e
    db $e3
    ld d, h
    jr c, jr_00a_5770

    add a
    pop af
    ldh a, [$ffe9]
    and $d0
    ret z

    ld [$f0e4], a
    pop af
    ldh a, [$fff2]
    ld c, c
    ld b, l
    or e
    inc bc
    ld l, c
    pop af
    ld a, [hl-]
    inc e
    dec [hl]
    ld a, c
    ld h, e
    jp $9fdf


    ldh a, [c]
    pop af
    ld [$d1e4], a
    ret


    and a
    sub a
    ret nc

    ret z

    ldh [c], a
    pop hl
    ld d, $0f
    xor b
    ld [hl], b
    xor a
    rst $08
    ld d, e
    db $e3
    ld d, h
    jr c, @-$69

    adc [hl]
    ld d, h
    jr c, @-$2b

    db $e3
    add l
    add hl, de
    ld [bc], a
    ld h, b
    ld a, [bc]
    dec bc
    dec sp
    nop
    ld [bc], a
    jr @+$0a

    jr @+$10

    jr jr_00a_582c

jr_00a_582c:
    nop

Call_00a_582d:
    xor a
    ld [$ccbb], a
    ld [$cc97], a
    ld [$cc98], a
    ld hl, $5825

jr_00a_583a:
    ld a, [hl]
    or a
    ret z

    ld a, [$de8f]
    cp [hl]
    jr z, jr_00a_5847

    inc hl
    inc hl
    jr jr_00a_583a

jr_00a_5847:
    inc hl
    ld a, $ff
    ld [$ccbb], a
    ld a, [hl]
    ld [$cc97], a
    ld [$cc98], a
    ret


    call Call_00a_582d
    ld hl, $5883
    call Call_00a_588a
    ret


Call_00a_585f:
    ld a, [$cca4]
    or a
    ld de, $5885
    call nz, Call_00a_589c
    ld a, $01
    ld [$d898], a
    ld hl, $5821

jr_00a_5871:
    ld a, [hl]
    or a
    ret z

    ld a, [$d893]
    cp [hl]
    jr z, jr_00a_587d

    inc hl
    jr jr_00a_5871

jr_00a_587d:
    ld a, $02
    ld [$d898], a
    ret


    ld b, $00
    ld c, h
    ld sp, $2e4d
    nop

Call_00a_588a:
    xor a
    ld [$cca4], a
    ld a, [$de8f]
    ld c, a

jr_00a_5892:
    ld a, [hl+]
    or a
    ret z

    cp c
    jr nz, jr_00a_5892

    ld [$cca4], a
    ret


Call_00a_589c:
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a
    ld a, [$de9b]
    cp $0b
    ret nz

    ld a, [$d779]
    or a
    ret z

    ld a, [$d703]
    or a
    ld e, $f8
    jr z, jr_00a_58b7

    ld e, $08

jr_00a_58b7:
    ld d, $00
    push de
    call Call_00a_58c0
    pop de
    ld d, $f8

Call_00a_58c0:
    ld a, [$d722]
    add e
    ld e, a
    ldh [$ff9b], a
    ld a, [$d725]
    add d
    ld d, a
    ldh [$ff9c], a
    call Call_000_027f
    ldh [$ff8c], a
    ld b, a
    ld hl, $ff8e
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00a_58da:
    ld a, [hl+]
    or a
    ret z

    cp b
    jr z, jr_00a_58e3

    inc hl
    jr jr_00a_58da

jr_00a_58e3:
    ld a, [hl]
    ldh [$ff8d], a
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ldh a, [$ff9b]
    add e
    push af
    and $f0
    add $07
    ldh [$ffa3], a
    ld c, a
    sub e
    ldh [$ff9b], a
    pop af
    ld a, $00
    adc d
    ldh [$ffa4], a
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    ld a, c
    ldh [$ff98], a
    ldh a, [$ff9c]
    and $f0
    add $07
    ld d, a
    ldh [$ff9c], a
    swap a
    and $0f
    ldh [$ff9a], a
    ldh a, [$ff98]
    ld e, a
    ldh a, [$ff9a]
    ld d, a
    ld c, $01
    ld b, $01
    ld hl, $ff8d
    call Call_000_0246
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    ret


    ld b, [hl]
    ld e, c
    ld c, h
    ld e, c
    ld d, c
    ld e, c
    ld e, a
    ld e, c
    ld l, l
    ld e, c
    ld a, [bc]
    ld b, $15
    inc bc
    rst $38
    nop
    ld l, c
    ld h, [hl]
    ld l, $68
    pop bc
    ld e, e
    ld h, [hl]
    ld e, h
    daa
    nop
    ld h, e
    ld a, e
    ld e, c
    nop
    ld l, c
    ld h, [hl]
    ld l, $68
    pop bc
    ld e, e
    ld h, [hl]
    ld e, h
    scf
    nop
    ld h, e
    ld d, e
    ld e, d
    nop
    ld l, c
    ld h, [hl]
    ld l, $68
    ret z

    ld e, e
    ld h, [hl]
    ld e, h
    scf
    nop
    ld h, e
    ld a, l
    ld e, e
    ld bc, $5c55
    add e
    ld e, h
    nop
    nop
    nop
    daa
    inc b
    ld [bc], a
    adc c
    ld e, c
    nop
    ld [bc], a
    ld d, l
    ld e, h
    push de
    ld e, h
    nop
    nop
    nop
    rla
    ld bc, $9b02
    ld e, c
    ld h, $02
    ld h, b
    nop
    nop
    add e
    ld d, l
    ld e, h
    daa
    ld e, l
    nop
    nop
    nop
    rla
    ld [$ad02], sp
    ld e, c
    rra
    rlca
    ld h, b
    nop
    nop
    inc b
    ld d, l
    ld e, h
    ld a, c
    ld e, l
    nop
    nop
    nop
    rla
    ld bc, $bf02
    ld e, c
    jr z, jr_00a_59be

    ld b, b
    nop

jr_00a_59be:
    nop
    add l
    ld d, l
    ld e, h
    bit 3, l
    nop
    nop
    nop
    dec h
    add hl, bc
    ld bc, $59d9
    ld [bc], a
    rlca
    jr nz, jr_00a_59d9

    ld [bc], a
    ld [$0220], sp
    rra
    rlca
    ld h, b
    nop
    nop

jr_00a_59d9:
    add [hl]
    ld b, b
    ld e, h
    dec e
    ld e, [hl]
    and b
    nop
    nop
    ld b, d
    dec e
    ld bc, $5a65
    ld [bc], a
    inc bc
    jr nc, jr_00a_59f4

    jr z, @+$0b

    ld b, b
    nop
    inc l
    db $10
    jr nc, jr_00a_59f2

jr_00a_59f2:
    inc l
    dec e

jr_00a_59f4:
    jr nc, jr_00a_59f6

jr_00a_59f6:
    nop
    add a
    ld b, b
    ld e, h
    rrca
    ld e, a
    jr nz, @+$05

    rla
    ld bc, $4902
    ld e, e
    add b
    ld bc, $2380
    ld e, d
    ld h, $07
    ld h, b
    nop
    nop
    add a
    ld [hl-], a
    ld e, h
    rrca
    ld e, a
    jr nz, @+$05

    rla
    ld bc, $4902
    ld e, e
    add b
    ld bc, $2380
    ld e, d
    ld h, $07
    ld h, b
    nop
    nop
    ld [$5c55], sp
    ld h, c
    ld e, a
    jr nz, @+$05

    add a
    ld bc, $f702
    ld e, c
    ld h, b
    ld bc, $3d80
    ld e, d
    ld [bc], a
    inc bc
    ld d, b
    ld a, [bc]
    inc l
    ld [bc], a
    jr nz, jr_00a_5a3c

jr_00a_5a3c:
    nop
    adc c
    ld d, l
    ld e, h
    or e
    ld e, a
    jr nz, @+$05

    ld h, a
    ld bc, $2302
    ld e, d
    db $10
    ld bc, $5380
    ld e, d
    ld [bc], a
    ld [$0a20], sp
    nop
    ld a, [bc]
    ld d, l
    ld e, h
    dec b
    ld h, b
    jr nz, @+$05

    rla
    ld bc, $3d02
    ld e, d
    ld b, d
    add hl, bc
    ld bc, $5a77
    nop
    dec bc
    ld b, a
    ld e, h
    ld d, a
    ld h, b
    add b
    ld [bc], a
    nop
    ld b, d
    add hl, bc
    ld bc, $59f7
    ld hl, $6006
    nop
    nop
    adc h
    ld b, b
    ld e, h
    xor c
    ld h, b
    ret nz

    inc bc
    nop
    daa
    dec h
    ld [bc], a
    sub l
    ld e, d
    inc l
    add hl, bc
    jr nz, jr_00a_5a88

jr_00a_5a88:
    jr z, jr_00a_5a97

    ld h, b
    nop
    ld [bc], a
    rra
    jr nc, jr_00a_5a93

    ld [bc], a
    inc hl
    ld h, b

jr_00a_5a93:
    inc b
    nop
    adc l
    ld d, l

jr_00a_5a97:
    ld e, h
    db $eb
    ld h, c
    and b
    dec b
    nop
    dec h
    add hl, bc
    ld bc, $5aaf
    ld [bc], a
    ld bc, $0a20
    rra
    inc b
    jr nc, jr_00a_5aaa

jr_00a_5aaa:
    rra
    ld b, $60
    nop
    nop
    adc [hl]
    ld b, b
    ld e, h
    dec a
    ld h, d
    ld b, b
    ld b, $00
    daa
    ld de, $c502
    ld e, d
    ld h, $06
    ld h, b
    nop
    jr z, jr_00a_5ad2

    ld h, b
    nop
    nop
    adc a
    ld d, l
    ld e, h
    rst $18
    ld h, d
    ldh [rTMA], a
    nop
    add a
    ld bc, $d702
    ld e, d

jr_00a_5ad2:
    ld [bc], a
    ld [$0a50], sp
    nop
    sub b
    ld d, l
    ld e, h
    ld sp, $e063
    ld b, $00
    dec h
    add hl, bc
    ld bc, $5af5
    ld [bc], a
    inc bc
    ld h, b
    ld a, [bc]
    ld [bc], a
    inc b
    ld h, b
    inc bc
    ld [bc], a
    ld b, $60
    dec b
    jr z, jr_00a_5af9

    ld b, b
    nop
    nop
    sub c
    ld b, b
    ld e, h
    add e

jr_00a_5af9:
    ld h, e
    add b
    rlca
    nop
    ld b, d
    dec e
    ld bc, $5b0f
    ld h, $07
    ld h, b
    nop
    jr z, jr_00a_5b13

    jr nz, jr_00a_5b0a

jr_00a_5b0a:
    inc l
    ld de, $0020
    nop
    ld [de], a
    ld c, [hl]
    ld e, h
    ld d, a

jr_00a_5b13:
    ld h, b
    ld h, b
    add hl, bc
    nop
    rla
    ld [$2102], sp
    ld e, e
    ld hl, $6006
    ld bc, $1300
    ld d, l
    ld e, h
    ld [hl], l
    ld h, h
    ld h, b
    add hl, bc
    nop
    rla
    ld bc, $3302
    ld e, e
    ld b, c
    ld [bc], a
    inc [hl]
    nop
    nop
    inc d
    reti


    ld e, e
    rst $00
    ld h, h
    ld h, b
    add hl, bc
    db $10
    ld bc, $2180
    ld e, e
    inc [hl]
    ld [$7d01], sp
    ld e, e
    ld h, $07
    ld h, b
    nop
    nop
    sub a
    ld d, l
    ld e, h
    push bc
    ld h, l
    jr nz, @+$05

    db $10
    ld bc, $0d80
    ld e, d
    ld d, a
    inc bc
    ld [bc], a
    ld e, a
    ld e, e
    ld [bc], a
    rlca
    jr nc, jr_00a_5b61

    nop
    sbc b
    ld d, l

jr_00a_5b61:
    ld e, h
    rla
    ld h, [hl]
    jr nz, jr_00a_5b69

    ld d, b
    inc bc
    add b

jr_00a_5b69:
    ld c, c
    ld e, e
    nop
    ld [bc], a
    ld [$0540], sp
    ld [bc], a
    rlca
    ld h, b
    ld a, [bc]
    ld [bc], a
    ld [$0160], sp
    ld [bc], a
    ld bc, $0e40
    nop
    dec d
    db $ed
    ld e, e
    add hl, de
    ld h, l
    nop
    ld a, [bc]
    nop
    inc [hl]
    ld [$9901], sp
    ld e, e
    nop
    dec d
    db $eb
    ld e, e
    add hl, de
    ld h, l
    nop
    ld a, [bc]
    nop
    inc [hl]
    ld [$9901], sp
    ld e, e
    nop
    sub $03
    ld e, h
    ld l, e
    ld h, l
    and b
    ld a, [bc]
    nop
    nop
    rst $38
    add b
    ccf
    add hl, bc
    ld h, b
    nop
    nop
    inc bc
    add hl, bc
    inc b
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    inc b
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    ld de, $68b8
    jp Jump_00a_4120


    ret


    ld de, $68b8
    call Call_00a_4120
    ld a, $af
    ld [$d85c], a
    ld a, $5b
    ld [$d85d], a
    ret


    ld a, $a9
    ld [$d858], a
    ld a, $5b
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jp $5c5c


    jr jr_00a_5bf7

    ld a, $af
    ld [$d85a], a
    ld a, $5b
    ld [$d85b], a

jr_00a_5bf7:
    ld a, $b5
    ld [$d858], a
    ld a, $5b
    ld [$d859], a
    jr @+$5b

    ld a, $bb
    ld [$d85a], a
    ld a, $5b
    ld [$d85b], a
    ld a, $40
    ld [$d768], a
    ld a, $fa
    ld [$d769], a
    ld a, $28
    ld [$d76a], a
    ld a, $58
    ld [$d823], a
    ld a, $00
    ld [$d824], a
    ld a, $58
    ld [$d825], a
    ld a, $00
    ld [$d826], a
    jr @+$2c

    ld hl, $5c57
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    ld a, $40
    ld [$d821], a
    jr @+$17

    ld a, $40
    ld [$d821], a
    jr @+$10

    ld a, $40
    ld [$d821], a
    jr @+$09

    jr @+$07

    ld bc, $0106
    ld bc, $2100
    sbc a
    ld l, b
    call Call_00a_4136
    call Call_00a_7065
    ret


    call Call_00a_706c
    ld de, $68c7
    call Call_00a_4147
    call Call_00a_41f1
    ret


    nop
    nop
    sub b
    nop
    nop
    add b
    rst $38
    rst $38
    nop
    nop
    sub b
    nop
    nop
    add b
    rst $38
    rst $38
    ld a, [bc]
    ld [$3535], sp
    dec [hl]
    ld [hl], $2a
    dec hl
    ld l, $34
    dec [hl]
    dec [hl]
    ld [hl-], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc a
    inc a
    ld de, $1111
    ld de, $1111
    ld de, $3e11
    ld a, $18
    dec e
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, [bc]
    ccf
    ccf
    ld [de], a
    dec de
    ld d, $1e
    rra
    ld e, $1f
    rra
    dec a
    dec a
    ld [de], a
    dec de
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    dec d
    add hl, sp
    ld [hl+], a
    inc hl
    jr nz, jr_00a_5ce6

    ld [de], a
    ld [de], a
    ld l, $41
    ld b, d
    ld b, e
    ld a, [hl+]
    dec hl
    jr z, @+$2b

    inc de
    inc de
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld a, [bc]
    ld [$3535], sp
    dec [hl]
    ld [hl], $00
    nop
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld l, $10
    db $10
    db $10
    db $10

jr_00a_5ce6:
    db $10
    db $10
    db $10
    db $10
    inc a
    ld [hl-], a
    ld de, $1111
    ld de, $1111
    ld de, $3e47
    jr nc, jr_00a_5cf7

jr_00a_5cf7:
    ld e, $1f
    rra
    ld e, $1f
    inc e
    ld b, [hl]
    ccf
    inc a
    rrca
    jr jr_00a_5d1b

    rrca
    jr jr_00a_5d23

    ld a, [de]
    ld b, [hl]
    dec a
    ld a, $13
    nop
    nop
    inc d
    inc d
    dec de
    ld a, [de]
    ld b, [hl]
    cpl
    ccf
    ld d, $00
    nop
    dec d
    dec d
    dec de
    ld a, [de]

jr_00a_5d1b:
    ld b, [hl]
    add hl, sp
    dec a
    ld [de], a
    jr nz, jr_00a_5d42

    jr nz, jr_00a_5d44

jr_00a_5d23:
    ld b, d
    ld b, e
    ld l, $25
    ld a, [bc]
    ld [$1330], sp
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $4a
    ld c, e
    jr z, jr_00a_5d5c

    inc a
    nop
    nop
    nop
    ld d, a
    ld d, a
    ld e, $1e
    rra
    ld sp, $0a3e
    rrca
    ld a, [bc]
    ld b, [hl]

jr_00a_5d42:
    ld b, [hl]
    rrca

jr_00a_5d44:
    ld a, [bc]
    rrca
    inc a
    ccf
    ld e, $1f
    rra
    ld b, [hl]
    ld b, [hl]
    db $10
    db $10
    db $10
    ld a, $3d
    ld e, e
    ld e, h
    ld e, l
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld de, $3f11
    ld a, [hl-]

jr_00a_5d5c:
    nop
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    dec d
    ld [de], a
    dec a
    jr z, @+$0a

    ld [$2008], sp
    ld hl, $2120
    ld [de], a
    ld l, $22
    inc hl
    ld b, d
    ld b, e
    jr z, jr_00a_5d9d

    ld [hl+], a
    inc hl
    inc d
    dec h
    ld a, [bc]
    ld [$2b2a], sp
    ld c, d
    ld c, e
    jr z, jr_00a_5daa

    ld c, d
    ld c, e
    nop
    jr z, @+$3e

    nop
    nop
    nop
    nop
    ld d, a
    nop
    nop
    nop
    ld sp, $183e
    jr jr_00a_5dab

    jr jr_00a_5ddb

    ld e, $1f
    rra
    jr nc, jr_00a_5dd9

    ld [de], a
    ld [de], a
    ld [de], a

jr_00a_5d9d:
    ld [de], a
    ld b, [hl]
    inc e
    rrca
    jr jr_00a_5ddf

    dec a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, [hl]
    ld a, [de]

jr_00a_5daa:
    ld [de], a

jr_00a_5dab:
    inc de
    ld a, $30
    ld [de], a
    ld b, d
    ld b, e
    ld l, $46
    ld a, [de]
    inc de
    inc de
    ccf
    ld a, [hl-]
    ld [de], a
    ld c, d
    ld c, e
    jr z, jr_00a_5ddd

    ld hl, $0013
    dec a
    jr z, @+$16

    ld l, $44
    ld b, l
    jr z, jr_00a_5df1

    jr nz, @+$23

    add hl, sp
    ld a, [bc]
    ld [$003c], sp
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $25
    jr z, jr_00a_5dff

    ld a, $3e
    db $10

jr_00a_5dd9:
    db $10
    db $10

jr_00a_5ddb:
    db $10
    db $10

jr_00a_5ddd:
    db $10
    ld d, a

jr_00a_5ddf:
    db $10
    ccf
    ccf
    ld de, $1111
    ld de, $1111
    ld b, [hl]
    ld de, $3d3d
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    scf

jr_00a_5df1:
    ld l, $44
    ld b, l
    dec h
    inc a
    ld e, $1e
    rra
    scf
    nop
    ld e, c
    ld d, a
    rla
    add hl, sp

jr_00a_5dff:
    ld a, $16
    nop
    scf
    ld e, b
    ld e, d
    ld a, [de]
    ld b, [hl]
    ld [de], a
    rla
    ccf
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    ld d, d
    ld a, [de]
    ld b, [hl]
    ld [de], a
    ld [de], a
    dec a
    ld b, h
    ld b, l
    ld l, $53
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld e, $08
    ld a, $22
    inc hl
    jr z, jr_00a_5e6e

    ld c, e
    add hl, sp
    ld l, $2e
    ld [hl+], a
    inc hl
    ld l, $2f
    ld b, b
    ld b, c
    inc l
    dec l
    inc l
    dec l
    ld a, [hl+]
    dec hl
    ld l, $48
    ld c, c
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $48
    ld l, $3f
    ld a, [hl+]
    dec hl
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $2a
    dec hl
    ld b, h
    ld b, l
    ld c, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$5257], sp
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, a
    ld b, b
    dec a
    jr z, jr_00a_5e86

    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, a
    ld l, $57
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d

jr_00a_5e6e:
    ld d, d
    ld d, d
    ld b, [hl]
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld b, [hl]
    nop
    add hl, sp
    ld b, h
    ld b, l
    ld de, $1111
    ld de, $4611
    nop
    ld b, [hl]
    ld a, [bc]
    rrca

jr_00a_5e86:
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, [bc]
    ld b, [hl]
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, [bc]
    ld b, [hl]
    nop
    ld l, $34
    dec [hl]
    ld [hl], $1c
    rrca
    jr jr_00a_5eae

    ld b, [hl]
    nop
    ld b, [hl]
    inc e
    jr jr_00a_5ec2

    nop
    ld e, $1f
    rra
    ld e, $1f
    nop
    ld b, [hl]
    nop

jr_00a_5eae:
    ld e, $1e
    rra
    inc e
    jr jr_00a_5efa

    dec e
    nop
    nop
    rla
    ld d, a
    ld a, [de]
    ld [de], a
    ld [de], a
    ld [de], a
    ld sp, $3238
    ld a, [de]
    ld [de], a

jr_00a_5ec2:
    dec de
    nop
    scf
    nop
    nop
    nop
    scf
    nop
    ld b, [hl]
    inc e
    jr jr_00a_5ee6

    jr nz, jr_00a_5ef1

    ld [de], a
    ld b, [hl]
    dec de
    dec d
    dec d
    ld [de], a
    ld b, [hl]
    ld a, [de]
    ld [de], a
    ld l, $41
    ld a, [hl-]
    inc a
    inc a
    inc h
    ld l, $25
    nop
    nop
    nop
    scf
    nop

jr_00a_5ee6:
    nop
    nop
    ld b, b
    ld b, c
    ld [de], a
    ld [de], a
    jr z, jr_00a_5f17

    ld [de], a
    ld b, [hl]
    ld b, c

jr_00a_5ef1:
    ld d, e
    ld d, h
    jr nz, @+$23

    ld b, d
    ld b, e
    ld c, b
    ld c, c
    cpl

jr_00a_5efa:
    ld a, $3e
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, c
    ld b, d
    ld b, e
    ld d, e
    ld d, h
    ld b, d
    ld b, e
    ld c, c
    ld a, [bc]
    ld [$1028], sp
    db $10
    ld bc, $1010

jr_00a_5f17:
    ld bc, $4610
    inc a
    jr z, jr_00a_5f2e

    ld b, a
    ld bc, $1111
    ld bc, $4611
    ld a, $00
    rrca
    ld b, [hl]
    ld bc, $4c4c
    ld bc, $464c

jr_00a_5f2e:
    ccf
    nop
    nop
    ld b, [hl]
    ld bc, $0d00
    ld bc, $460a
    dec a
    nop
    rrca
    ld b, [hl]
    nop
    nop
    ld a, [de]
    rla
    dec d
    ld b, [hl]
    inc a
    nop
    nop
    ld b, [hl]
    inc e
    jr jr_00a_5f61

    dec e
    ld [de], a
    ld b, [hl]
    ld a, $28
    add hl, bc
    ld b, [hl]
    ld a, [de]
    ld [de], a
    jr nz, @+$23

    jr nz, jr_00a_5f77

    ccf
    jr z, @+$04

    ld hl, $2120
    jr z, jr_00a_5f87

    jr z, @+$2b

    dec a

jr_00a_5f61:
    ld a, [bc]
    ld [$0028], sp
    nop
    cpl
    ld c, b
    ld c, c
    ld bc, $2b2a
    ld l, $32
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $1010
    dec h

jr_00a_5f77:
    ld b, b
    ld b, a
    ld de, $1111
    ld de, $1101
    ld de, $3c3c
    ld b, [hl]
    ld a, [bc]
    rrca
    ld a, [bc]
    inc e

jr_00a_5f87:
    ld bc, $0a0f
    ld a, $3e
    ld b, [hl]
    ld e, $1f
    rra
    ld a, [de]
    ld bc, $0016
    ccf
    ccf
    ld b, [hl]
    jr @+$1a

    dec e
    dec sp
    ld bc, $1919
    dec a
    dec a
    ld b, [hl]
    ld [de], a
    ld [bc], a
    dec de
    inc e
    ld bc, $1818
    jr nc, jr_00a_5fe4

    ld b, [hl]
    add hl, de
    ld bc, $3b33
    ld bc, $1919
    ld l, $0a
    ld [$0140], sp
    ld l, $49
    inc l
    dec l
    ld b, b
    dec h
    inc [hl]
    dec [hl]
    ld l, $01
    db $10
    db $10
    ld d, a
    db $10
    db $10
    db $10
    db $10
    ld sp, $003c
    ld de, $4611
    ld de, $1111
    ld de, $3e2e
    nop
    nop
    nop
    ld b, [hl]
    rrca
    ld c, $00
    jr z, jr_00a_6005

    ccf
    ld e, e
    ld e, l
    nop
    ld b, [hl]
    nop
    inc c

jr_00a_5fe4:
    nop
    nop
    inc a
    dec a
    nop
    nop
    ld e, e
    ld e, l
    inc e
    jr @+$39

    jr jr_00a_602f

    ld a, [hl-]
    nop
    nop
    nop
    ld b, [hl]
    dec sp
    add hl, de
    add hl, de
    add hl, de
    ccf
    ld l, $00
    nop
    jr nz, jr_00a_6021

    ld b, c
    ld [bc], a
    ld [hl+], a
    inc hl
    dec a

jr_00a_6005:
    ld a, [bc]
    ld [$1232], sp
    ld [de], a
    dec de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld b, b
    jr nc, jr_00a_6025

    ld [de], a
    dec de
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld l, $3c
    add hl, de
    add hl, de
    inc sp
    ld b, [hl]
    ld a, [bc]

jr_00a_6021:
    rrca
    ld a, [bc]
    ld b, [hl]
    nop

jr_00a_6025:
    ld a, $46
    ld d, d
    ld d, d
    ld b, [hl]
    ld e, d
    ld e, d
    ld e, d
    ld b, [hl]
    nop

jr_00a_602f:
    ccf
    ld b, [hl]
    rrca
    ld a, [bc]
    ld b, [hl]
    ld e, $1f
    rra
    ld b, [hl]
    nop
    dec a
    ld b, [hl]
    nop
    nop
    ld b, [hl]
    ld c, h
    ld c, h
    ld c, h
    ld b, [hl]
    nop
    ld l, $02
    ld [hl+], a
    inc hl
    ld d, e
    ld d, h
    jr z, jr_00a_606d

    inc hl
    dec h
    dec h
    ld bc, $2b2a
    ld d, l
    ld d, [hl]
    ld l, $2a
    dec hl
    ld l, $0a
    ld [$7064], sp
    ld l, c
    ld l, a
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, d
    ld l, e
    ld l, e
    ld l, h
    ld l, d
    ld l, h

jr_00a_606d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00a_6078

jr_00a_6078:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00a_6082

jr_00a_6082:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00a_608c

jr_00a_608c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00a_60fa

    ld h, l
    ld h, [hl]
    daa
    ld h, h
    ld h, [hl]
    ld h, h
    ld h, [hl]
    daa
    daa
    ld l, d
    ld l, e
    ld l, h
    ld h, h
    ld [hl], b
    ld l, c
    ld l, d
    ld l, h
    daa
    daa
    jr z, jr_00a_60b3

    ld b, b
    ld b, c
    ld l, $2f
    ld e, e
    ld e, h
    ld e, l
    ld b, h

jr_00a_60b3:
    ld b, l
    ld c, d
    ld c, e
    ld l, $25
    inc h
    ld l, $37
    scf
    scf
    ld a, [hl+]
    dec hl
    ld l, $49
    scf
    ld e, e
    ld e, l
    inc a
    inc a
    ld sp, $3e32
    inc a
    dec h
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    dec hl
    ld l, $3e
    ld c, b
    ld c, c
    db $10
    db $10
    db $10
    db $10
    ld d, a
    nop
    nop
    nop
    ld d, a
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, a
    ld a, $3e
    inc a
    jr nc, @+$41

    ld a, $00
    nop
    nop
    ld e, c
    ld e, $1e
    rra
    rra

jr_00a_60fa:
    ccf
    nop
    ld d, a
    ld de, $1111
    ld de, $0a46
    rrca
    ld a, [bc]
    ld b, [hl]
    ld a, [hl+]
    dec hl
    ld d, a
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld b, [hl]
    ld e, $1f
    ld e, $1f
    ld b, [hl]
    ccf
    ccf
    ld a, $2e
    dec a
    ccf
    rrca
    dec e
    nop
    ld a, [de]
    ld d, $17
    ld e, $1f
    dec a
    nop
    ld b, [hl]
    ld e, $1e
    ld e, $1f
    ld b, [hl]
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld e, $46
    rra
    ld e, $1e
    rra
    rra
    ld b, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld b, [hl]
    dec a
    dec a
    ccf
    ld b, b
    ld b, c
    dec a
    ld [de], a
    dec de
    ld [bc], a
    ld [hl+], a
    inc hl
    ld [hl-], a
    ld d, $15
    ld l, $00
    ld b, [hl]
    inc c
    jr jr_00a_615f

    jr jr_00a_6198

    nop
    nop
    nop
    ld b, [hl]
    rrca
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]

jr_00a_615f:
    nop
    ld l, $00
    nop
    ld b, [hl]
    ld [hl+], a
    inc hl
    dec a
    ld c, b
    ld c, c
    ld [hl+], a
    inc hl
    dec de
    ld bc, $2b2a
    ld l, $14
    ld [de], a
    inc a
    nop
    ld b, [hl]
    inc c
    jr nz, jr_00a_6199

    ld b, d
    ld b, e
    scf
    scf
    scf
    ld b, [hl]
    ld d, $00
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, b
    ld b, c
    ld d, d
    ld d, d
    ld b, [hl]
    ld a, [hl+]
    dec hl
    ld l, $2c
    dec l
    ld c, [hl]
    ld c, a
    dec de
    nop
    ld e, c
    rla
    inc h

jr_00a_6198:
    nop

jr_00a_6199:
    inc d
    ld a, $2e
    ld b, d
    ld b, e
    jr z, jr_00a_61c9

    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    ld b, [hl]
    ld d, $16
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld [hl+], a
    inc hl
    ld a, [bc]
    ld a, [bc]
    ld b, [hl]
    ld e, c
    rla
    rla
    rla
    rla
    rla
    rla
    dec de
    nop
    dec sp
    add hl, de
    ld b, b
    dec d
    dec d
    ccf
    dec h
    ld c, d
    ld c, e
    ld d, e
    ld d, h
    ld d, e

jr_00a_61c9:
    ld d, h
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld e, e
    ld e, l
    scf
    ld e, e
    ld e, l
    inc h
    ld a, [hl+]
    dec hl
    ld l, $20
    ld hl, $4342
    ld b, d
    ld b, e
    jr nz, jr_00a_6203

    jr nz, @+$23

    ld b, d
    ld b, e
    ld l, $41
    ld [de], a
    ld [de], a
    dec a
    ld a, [bc]
    ld [$2829], sp
    add hl, hl
    ld c, d
    ld c, e
    ld b, b
    ld c, c
    inc d
    ld [de], a
    jr nc, @+$2a

    db $10
    db $10
    db $10
    ld d, a
    nop
    ld e, c
    nop
    ld [de], a
    ld b, b
    ld l, $11

jr_00a_6203:
    ld de, $4611
    nop
    dec sp
    add hl, de
    add hl, de
    jr z, jr_00a_6241

    ld [hl], $0a
    ld a, [bc]
    ld b, [hl]
    ld e, $1e
    rra
    rra
    ld l, $3c
    rla
    scf
    scf
    jr nz, jr_00a_623c

    jr nz, jr_00a_623e

    dec h
    ld a, [hl-]
    ld a, $12
    ld d, $16
    ld d, a
    ld h, $52
    ld d, d
    ld d, d
    ld d, d
    ccf
    ld [de], a
    ld [de], a
    ld d, $46
    inc c
    nop
    nop
    nop
    nop
    dec a
    dec [hl]
    ld [hl], $22
    inc hl
    ld l, $53
    ld d, h
    ld d, e

jr_00a_623c:
    ld d, h
    inc d

jr_00a_623e:
    ld [$412e], sp

jr_00a_6241:
    ld [hl+], a
    inc hl
    ld d, e
    ld d, h
    ld [hl+], a
    inc hl
    jr z, jr_00a_6289

    ld b, c
    ld l, $3a
    ld d, e
    ld d, h
    ld [hl+], a
    inc hl
    ld a, $3e
    inc a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld d, l
    ld d, [hl]
    ld c, d
    ld c, e
    jr z, jr_00a_62a5

    ld c, c
    dec h
    jr z, jr_00a_62b6

    ld d, [hl]
    ld a, [hl+]
    dec hl
    ccf
    ccf
    ld a, $44
    ld b, l
    inc [hl]
    dec [hl]
    ld [hl], $37
    scf
    scf
    ld l, $3a
    ld e, e
    ld e, h
    ld e, l
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $3d
    dec a
    ccf
    jr nc, jr_00a_62d4

    rla
    rla
    ld e, b
    db $10
    db $10
    ld e, c
    rla
    ld d, a
    nop
    nop
    nop
    nop

jr_00a_6289:
    ld d, a
    db $10
    db $10
    db $10
    db $10
    dec a
    ld l, $46
    ld [de], a
    ld [de], a
    dec de
    ld de, $1a11
    ld [de], a
    ld b, [hl]
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    ld b, [hl]
    ld de, $1111
    ld de, $5230
    ld b, [hl]

jr_00a_62a5:
    add hl, de
    add hl, de
    inc sp
    ld e, $1f
    inc e
    rrca
    ld b, [hl]
    nop
    ld e, $1f
    rra
    ld b, [hl]
    rrca
    jr @+$1a

    rrca

jr_00a_62b6:
    add hl, sp
    nop
    ld b, [hl]
    nop
    ld e, $1f
    rra
    nop
    ld a, [de]
    ld [de], a
    ld b, [hl]
    ld e, $1f
    rra
    nop
    ld b, [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, $20
    ld hl, $5453
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld [hl+], a

jr_00a_62d4:
    inc hl
    ld l, $20
    ld hl, $2120
    ld b, d
    ld b, e
    ld [de], a
    ld [de], a
    jr z, jr_00a_62ea

    ld [$443c], sp
    ld b, l
    jr z, jr_00a_630f

    ld a, [hl+]
    dec hl
    inc de
    inc d

jr_00a_62ea:
    ld [hl+], a
    ld a, $00
    ld e, b
    nop
    nop
    nop
    nop
    nop
    dec d
    ld a, [hl+]
    ccf
    dec d
    dec de
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $2e
    dec a
    add hl, de
    inc sp
    nop
    nop
    nop
    nop
    nop
    ld d, a
    inc a
    ld b, b
    scf
    scf
    scf
    scf
    scf

jr_00a_630f:
    scf
    dec d
    ld b, [hl]
    ld a, $3c
    ld d, a
    nop
    nop
    nop
    ld a, [de]
    ld [de], a
    ld [de], a
    ld b, [hl]
    ccf
    ld a, $46
    nop
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $3d
    ccf
    ld b, [hl]
    nop
    nop
    nop
    ld e, c
    rla
    rla
    ld d, a
    ld b, b
    ld a, [bc]
    ld [$463d], sp
    ld d, d
    ld d, d
    ld d, d
    dec sp
    add hl, de
    add hl, de
    ld b, [hl]

Jump_00a_633c:
    jr nc, jr_00a_636e

    ld b, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, b
    add hl, sp
    ld a, [hl-]
    ld b, [hl]
    ld de, $1111
    ld de, $1111
    ld de, $2e28
    ld b, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc e
    rrca
    dec e
    ld [hl+], a
    inc a
    rrca
    jr jr_00a_637c

    nop
    nop
    ld a, [de]
    ld [de], a
    dec de
    ld a, [hl+]
    ld a, $12
    ld b, h
    ld b, l
    add hl, bc
    add hl, bc
    ld l, $32
    dec de

jr_00a_636e:
    ld d, d
    ccf
    ld [de], a
    jr nc, jr_00a_638e

    nop
    nop
    ld a, [de]
    jr nc, jr_00a_6393

    nop
    dec a
    jr z, jr_00a_63b5

jr_00a_637c:
    ld [hl+], a
    inc hl
    jr nz, jr_00a_63a1

    jr nc, @+$22

    ld hl, $081e
    ld l, $2f
    ld c, d
    ld c, e
    jr z, jr_00a_63b3

    ld c, [hl]
    ld c, a
    ld c, [hl]

jr_00a_638e:
    ld c, a
    inc l
    dec l
    inc l
    dec l

jr_00a_6393:
    ld a, [hl+]
    dec hl
    ld l, $34
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $2e
    ld b, h
    ld b, l
    ld c, c
    add hl, hl

jr_00a_63a1:
    jr z, jr_00a_63cc

    ld a, [hl-]
    rla
    rla
    rla
    ld d, a
    ld e, $1e
    rra
    nop
    nop
    nop
    ld d, a
    nop
    ld d, a
    nop
    nop

jr_00a_63b3:
    nop
    nop

jr_00a_63b5:
    nop
    ld d, a
    ld d, a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, a
    inc l
    dec l
    inc l
    add hl, hl
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, [hl]
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c

jr_00a_63cc:
    ld b, [hl]
    nop
    ld b, [hl]
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld b, [hl]
    ld b, [hl]
    ld de, $1111
    ld de, $4611
    ld e, $1f
    ld d, a
    inc hl
    ld [de], a
    ld [de], a
    ld [bc], a
    ld l, $5b
    ld e, l
    inc h
    dec h
    scf
    ld l, $32
    nop
    ld b, [hl]
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld b, [hl]
    ld b, [hl]
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, [hl]
    dec hl
    add hl, de
    add hl, de
    ld bc, $1757
    rla
    ld e, b
    nop
    ld e, c
    rla
    add hl, sp
    ld l, $2f
    scf
    scf
    scf
    nop
    nop
    ld b, [hl]
    ld b, c
    nop
    scf
    nop
    nop
    nop
    ld b, [hl]
    ld a, [bc]
    rrca
    ld b, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld b, [hl]
    add hl, de
    add hl, de
    inc sp
    nop
    dec sp
    add hl, de
    ld d, a
    nop
    ld d, a
    nop
    ld e, $1f
    ld e, $1f
    ld b, [hl]
    ld l, $1c
    dec e
    nop
    ld e, e
    ld e, l
    ld b, [hl]
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld d, d
    ld d, d
    dec bc
    nop
    inc c
    ld d, d
    ld b, [hl]
    nop
    ld b, [hl]
    ld [de], a
    rla
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc e
    jr jr_00a_646e

    nop
    nop
    ld b, [hl]
    jr nz, @+$23

    jr nz, jr_00a_6479

    cpl
    ld l, $22
    inc hl
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    jr nz, jr_00a_6485

    ld b, d
    ld b, e
    ld b, b
    ld b, c
    nop
    nop
    ld a, [hl+]
    dec hl
    dec sp
    add hl, de

jr_00a_646e:
    inc sp
    nop
    nop
    ld b, [hl]
    jr z, jr_00a_649d

    jr z, jr_00a_6480

    ld [$4132], sp

jr_00a_6479:
    ld l, $40
    inc l
    dec l
    inc l
    dec l
    nop

jr_00a_6480:
    ld a, $30
    db $10
    db $10
    db $10

jr_00a_6485:
    db $10
    db $10
    ld e, c
    rla
    ld [de], a
    ccf
    inc a
    ld de, $1111
    ld b, a
    ld de, $121a
    ld [de], a
    dec a
    ld a, $4c
    ld c, h
    ld c, h
    ld b, [hl]
    ld c, h
    dec sp
    add hl, de

jr_00a_649d:
    add hl, de
    jr nc, jr_00a_64df

    jr nz, jr_00a_64c4

    inc hl
    ld b, [hl]
    nop
    nop
    rrca
    ld b, [hl]
    inc a
    dec a
    jr z, jr_00a_64d6

    dec hl
    ld b, [hl]
    nop
    nop
    nop
    ld b, [hl]
    ld a, $2e
    jr z, @+$30

    jr nz, jr_00a_64d9

    jr nz, jr_00a_64db

    nop
    ld b, [hl]
    ccf
    ld c, c
    jr z, jr_00a_64f9

    ld b, h
    ld b, l
    jr z, @+$2b

jr_00a_64c4:
    jr nz, jr_00a_64e7

    dec a
    ld a, [bc]
    ld [$193c], sp
    ld b, b
    inc h
    ld l, $39
    jr c, jr_00a_6509

    ld b, b
    ld b, c
    ld a, $10
    db $10

jr_00a_64d6:
    db $10
    db $10
    db $10

jr_00a_64d9:
    db $10
    db $10

jr_00a_64db:
    ld l, $49
    ccf
    ld b, a

jr_00a_64df:
    ld de, $1111
    ld de, $1111
    inc b
    dec b

jr_00a_64e7:
    dec a
    ld b, [hl]
    ld e, $1f
    rra
    ld e, $1f
    rra
    ld b, $07
    jr nc, jr_00a_6539

    nop
    inc e
    rrca
    jr jr_00a_6507

    dec e

jr_00a_64f9:
    nop
    inc bc
    ld a, [hl-]
    ld b, [hl]
    ld b, [hl]
    ld a, [de]
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    nop
    inc bc
    ld l, $46

jr_00a_6507:
    ld b, [hl]
    ld a, [de]

jr_00a_6509:
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    nop
    inc bc
    ld [hl+], a
    inc hl
    ld [hl-], a
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    inc h
    ld l, $3c
    ld a, [bc]
    ld [$412e], sp
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld [hl+], a
    inc hl
    inc a
    inc a
    ld c, b
    ld c, c
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    dec hl
    ld a, $3e
    ld l, $2f
    ld [hl+], a
    inc hl
    jr z, jr_00a_655e

    jr z, jr_00a_6565

    ccf
    ccf

jr_00a_6539:
    inc l
    dec l
    ld c, [hl]
    ld c, a
    inc l
    dec l
    inc l
    dec l
    dec a
    dec a
    nop
    ld e, c
    rla
    rla
    rla
    rla
    rla
    rla
    ld e, b
    inc bc
    nop
    ld a, [de]
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    inc bc
    nop
    ld a, [de]
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a

jr_00a_655e:
    ld [de], a
    dec de
    inc bc
    ld [hl+], a
    inc hl
    ld d, e
    ld d, h

jr_00a_6565:
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld [hl+], a
    inc hl
    dec bc
    ld [$603c], sp
    ld h, d
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld h, c
    ld h, e
    ld [hl+], a
    ld a, $46
    ld [de], a
    ld d, $00
    ld a, [de]
    rla
    dec d
    ld [de], a
    ld b, [hl]
    ld a, [hl+]
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld b, [hl]
    inc a
    dec a
    ld b, [hl]
    ld e, $1e
    rra
    inc e
    rrca
    jr jr_00a_65a6

    ld b, [hl]
    ld a, $00
    ld b, [hl]
    inc e
    rrca
    jr @+$3d

    add hl, de
    add hl, de
    add hl, de
    ld b, [hl]
    ccf
    nop
    ld b, [hl]

jr_00a_65a6:
    ld a, [de]
    ld [de], a
    ld [de], a
    inc d
    ld [de], a
    dec de
    nop
    ld b, [hl]
    dec a
    nop
    ld b, [hl]
    ld a, [de]
    inc d
    nop
    nop
    inc d
    dec de
    nop
    ld b, [hl]
    add hl, sp
    inc h
    ld b, c
    jr nz, jr_00a_65df

    jr nz, jr_00a_65e1

    ld b, d
    ld b, e
    jr nz, @+$23

    ld l, $0a
    ld [$0132], sp
    ld [hl+], a
    inc hl
    jr z, jr_00a_65f6

    jr z, jr_00a_65f8

    inc a
    add hl, hl
    jr nc, jr_00a_65d4

    ld a, [hl+]

jr_00a_65d4:
    dec hl
    inc l
    dec l
    inc l
    dec l
    ld a, $3c
    ld a, [hl-]
    ld bc, $3737

jr_00a_65df:
    scf
    ld b, [hl]

jr_00a_65e1:
    db $10
    db $10
    ccf
    ld a, $2e
    ld bc, $0f0a
    ld a, [bc]
    ld b, [hl]
    ld de, $3d11
    ccf
    ld [hl-], a
    ld d, a
    nop
    ld e, $1f
    scf
    scf

jr_00a_65f6:
    jr z, jr_00a_6628

jr_00a_65f8:
    dec a
    inc a
    ld b, [hl]
    ld e, $1e
    rra
    ld b, [hl]
    ld [de], a
    rla
    ld l, $30
    ld a, $46
    nop
    nop
    nop
    ld b, [hl]
    ld [de], a
    ld [de], a
    ld c, b
    ld b, b
    ccf
    ld b, b
    ld b, c
    scf
    scf
    ld [hl+], a
    inc hl
    ld [bc], a
    ld d, e
    ld d, h
    ld a, [bc]
    ld [$2e3d], sp
    ld c, c
    nop
    nop
    ld a, [hl+]
    dec hl
    ld bc, $5655
    inc a
    rla
    nop
    nop
    ld d, a

jr_00a_6628:
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    jr z, jr_00a_666c

    ld [de], a
    ld d, $15
    ld b, [hl]
    jr jr_00a_6643

    jr jr_00a_664e

    dec h
    ccf
    ld d, c
    ld d, c
    ld d, c
    ld b, [hl]
    inc de
    inc d
    inc [hl]
    dec [hl]
    dec [hl]
    dec a
    ld a, [bc]

jr_00a_6643:
    ld a, [bc]
    ld a, [bc]
    ld b, [hl]
    nop
    inc d
    rla
    rla
    ld l, $54
    jr z, jr_00a_6685

jr_00a_664e:
    nop
    ld b, [hl]
    add hl, bc
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld d, [hl]
    nop
    nop
    nop
    ld b, [hl]
    add hl, bc
    nop
    nop
    nop
    ld [hl+], a
    jr z, jr_00a_6669

    ld [$0808], sp
    jr nz, jr_00a_6687

    jr nz, jr_00a_6689

    ld a, [hl+]

jr_00a_6669:
    ld [hl], c
    nop
    nop

jr_00a_666c:
    nop
    nop
    inc de
    inc de
    inc d
    inc d
    inc de
    inc de
    inc d
    inc d
    dec c
    dec c
    ld c, $0e
    add hl, hl
    daa
    inc b
    rlca
    dec b
    ld [$0906], sp
    daa
    dec hl
    ld a, [bc]

jr_00a_6685:
    jr z, jr_00a_6692

jr_00a_6687:
    jr z, jr_00a_6695

jr_00a_6689:
    inc l
    ld h, c
    ld h, e
    ld h, d
    ld h, h
    rrca
    ld de, $1210

jr_00a_6692:
    dec d
    nop
    dec d

jr_00a_6695:
    nop
    ld d, $16
    nop
    nop
    nop
    nop
    ld d, $16
    ld d, $16
    dec d
    nop
    dec d
    nop
    ld d, $16
    dec d
    ld hl, $2215
    nop
    dec de
    nop
    inc e
    dec e
    nop
    ld e, $00
    jr nz, jr_00a_66d4

    jr nz, jr_00a_66d6

    jr nz, jr_00a_66d8

    jr nz, jr_00a_66ba

jr_00a_66ba:
    jr nz, jr_00a_66bc

jr_00a_66bc:
    jr nz, @+$22

    nop
    jr nz, jr_00a_66e1

    jr nz, jr_00a_66e3

    jr nz, jr_00a_66c5

jr_00a_66c5:
    jr nz, jr_00a_66c7

jr_00a_66c7:
    jr nz, jr_00a_66c9

jr_00a_66c9:
    jr nz, @+$17

    jr nz, @+$17

    jr nz, @+$22

    dec d
    jr nz, jr_00a_66e7

    ld d, $16

jr_00a_66d4:
    jr nz, jr_00a_66f6

jr_00a_66d6:
    jr nz, jr_00a_66f8

jr_00a_66d8:
    ld d, $16
    ld d, $16
    dec d
    jr nz, jr_00a_66f4

    jr nz, jr_00a_66f7

jr_00a_66e1:
    ld d, $00

jr_00a_66e3:
    inc hl
    nop
    inc h
    nop

jr_00a_66e7:
    ld h, $00
    dec h
    dec l
    jr nc, @+$30

    ld sp, $322d
    ld l, $33
    ld b, h
    ld c, b

jr_00a_66f4:
    ld b, l
    inc a

jr_00a_66f6:
    ld b, [hl]

jr_00a_66f7:
    dec a

jr_00a_66f8:
    ld b, a
    cpl
    ld b, h
    ld c, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, a
    cpl
    nop
    nop
    nop
    ld d, $40
    ld b, d
    ld b, c
    ld b, e
    inc [hl]
    jr c, jr_00a_6742

    add hl, sp
    ld [hl], $3a
    scf
    dec sp
    daa
    dec hl
    ld a, $28
    ccf
    ld b, h
    ld b, l
    ld c, c
    jr nc, jr_00a_6749

    ld sp, $322e
    dec l
    inc sp
    ld l, $69
    ld l, e
    ld l, d
    ld l, h
    ld b, h
    ld c, b
    ld b, a
    cpl
    daa
    daa
    daa
    daa
    add hl, hl
    daa
    jr z, jr_00a_675b

    jr z, jr_00a_675e

    ld a, [hl+]
    daa
    jr nz, @+$17

    ld d, $16
    ld c, d
    ld c, h
    ld c, e
    ld c, l
    ld c, [hl]
    ld d, b
    ld c, e
    ld c, l

jr_00a_6742:
    ld c, [hl]
    ld d, b
    ld c, a
    ld d, c
    ld e, l
    nop
    ld e, [hl]

jr_00a_6749:
    nop
    jr z, jr_00a_6774

    jr z, jr_00a_6776

    daa
    dec hl
    dec hl
    jr z, jr_00a_677f

    jr z, jr_00a_677c

    inc l
    ld d, $16
    jr nz, jr_00a_676f

    ld d, h

jr_00a_675b:
    ld d, d
    ld d, l
    ld d, e

jr_00a_675e:
    ld e, b
    ld d, [hl]
    ld e, c
    ld d, a
    ld h, l
    ld h, [hl]
    ld l, b
    ld h, a
    ld h, a
    ld l, b
    ld h, [hl]
    ld h, l
    inc a
    ld a, $3d
    ccf
    ld b, [hl]

jr_00a_676f:
    ld b, l
    ld b, a
    cpl
    dec l
    ld b, h

jr_00a_6774:
    ld l, $3c

jr_00a_6776:
    dec l
    dec a
    ld l, $47
    ld b, h
    ld c, b

jr_00a_677c:
    inc a
    ld a, $3d

jr_00a_677f:
    ccf
    ld b, l
    ld c, c
    rla
    add hl, de
    jr jr_00a_67a0

    dec e
    add hl, de
    ld e, $1a
    ld b, h
    ld c, b
    ld b, h
    ld c, c
    ld c, c
    jr z, jr_00a_67b8

    inc l
    ld c, c
    jr nc, jr_00a_67d3

    ld sp, $323f
    ld c, c
    inc sp
    rra
    nop
    rra
    nop
    dec e
    nop

jr_00a_67a0:
    ld e, $16
    ld c, b
    dec l
    ld a, $2e
    ccf
    dec l
    cpl
    ld l, $17
    dec de
    jr jr_00a_67ca

    dec de
    dec e
    inc e
    ld e, $00
    rra
    nop
    rra
    jr nc, jr_00a_67ec

jr_00a_67b8:
    ld sp, $3235
    ld [hl], $33
    scf
    jr c, jr_00a_67f0

    add hl, sp
    ld sp, $323a
    dec sp
    inc sp
    nop
    add hl, de
    nop
    ld a, [de]

jr_00a_67ca:
    nop
    jr nz, jr_00a_67cd

jr_00a_67cd:
    ld d, $00
    ld d, $00
    jr nz, jr_00a_67f2

jr_00a_67d3:
    rra
    rra
    rra
    ld e, l
    nop
    ld h, b
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld e, a
    nop
    ld e, [hl]
    nop
    jr nc, jr_00a_67e4

jr_00a_67e4:
    ld sp, $3200
    nop
    inc sp
    nop
    ld l, e
    nop

jr_00a_67ec:
    ld l, h
    nop
    dec hl
    nop

jr_00a_67f0:
    jr z, jr_00a_67f2

jr_00a_67f2:
    jr z, jr_00a_67f4

jr_00a_67f4:
    inc l
    nop
    jr z, jr_00a_67f8

jr_00a_67f8:
    jr z, jr_00a_67fa

jr_00a_67fa:
    ld e, h
    ld e, e
    ld e, d
    ld b, b
    ld e, d
    ld b, c
    ld e, d
    ld b, b
    ld e, d
    ld b, c
    ld e, h
    ld e, e
    ld e, e
    ld e, e
    ld b, d
    ld b, b
    ld b, e
    ld b, c
    ld b, d
    ld b, b
    ld b, e
    ld b, c
    ld e, e
    ld e, e
    ld e, e
    ld e, h
    ld b, d
    ld e, d
    ld b, e
    ld e, d
    ld b, d
    ld e, d
    ld b, e
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld b, b
    ld e, d
    ld b, c
    ld b, d
    ld e, d
    ld b, e
    ld e, d
    ld b, d
    ld b, b
    ld b, e
    ld b, c
    ld e, h
    ld b, c
    ld b, d
    ld b, b
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    nop

Call_00a_6875:
Jump_00a_6875:
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_00a_68b8

jr_00a_68b8:
    ld d, b
    sub [hl]
    ld b, b
    nop
    nop
    ld l, c
    nop
    sub b
    sub [hl]
    ld b, b
    nop
    ld b, b
    ld l, c
    ld bc, $50ff
    sub [hl]
    ld b, b
    nop
    nop
    ld l, c
    inc b
    sub b
    sub [hl]
    ld b, b
    nop
    ld b, b
    ld l, c
    inc b
    ld d, b
    sub [hl]
    ld b, b
    nop
    add b
    ld l, c
    inc b
    sub b
    sub [hl]
    ld b, b
    nop
    ret nz

    ld l, c
    inc b
    ld d, b
    sub [hl]
    ld b, b
    nop
    nop
    ld l, d
    inc b
    sub b
    sub [hl]
    ld b, b
    nop
    ld b, b
    ld l, d
    inc b
    ld d, b
    sub [hl]
    ld b, b
    nop
    add b
    ld l, d
    inc b
    sub b
    sub [hl]
    ld b, b
    nop
    ret nz

    ld l, d
    inc b
    rst $38
    jr z, jr_00a_6912

    jr z, jr_00a_6914

    jr z, jr_00a_6916

    jr z, jr_00a_6918

    jr z, jr_00a_691a

    jr z, jr_00a_691c

    jr z, jr_00a_691e

    jr z, jr_00a_6920

    jr z, jr_00a_6922

jr_00a_6912:
    jr z, jr_00a_6924

jr_00a_6914:
    jr z, jr_00a_6926

jr_00a_6916:
    jr z, jr_00a_6928

jr_00a_6918:
    jr z, jr_00a_692a

jr_00a_691a:
    jr z, jr_00a_692c

jr_00a_691c:
    jr z, jr_00a_692e

jr_00a_691e:
    jr z, jr_00a_6930

jr_00a_6920:
    jr z, jr_00a_6932

jr_00a_6922:
    jr z, @+$12

jr_00a_6924:
    jr z, jr_00a_6936

jr_00a_6926:
    jr z, jr_00a_6938

jr_00a_6928:
    jr z, jr_00a_693a

jr_00a_692a:
    jr z, jr_00a_693c

jr_00a_692c:
    jr z, jr_00a_693e

jr_00a_692e:
    jr z, jr_00a_6940

jr_00a_6930:
    ld a, h
    nop

jr_00a_6932:
    ld d, h
    jr c, jr_00a_69b1

    nop

jr_00a_6936:
    sub $38

jr_00a_6938:
    cp d
    ld [hl], h

jr_00a_693a:
    cp d
    ld h, h

jr_00a_693c:
    sub $38

jr_00a_693e:
    ld a, h
    nop

jr_00a_6940:
    nop
    nop
    ld a, a
    rst $38
    sbc b
    and b
    xor e
    call nz, $8ed5
    call nc, $8a8e
    add [hl]
    or b
    add b
    nop
    nop
    db $fc
    cp $62
    jr jr_00a_6969

    inc c
    ld l, d
    inc b
    sbc d
    ld h, h
    ld h, d
    db $f4
    sub d
    db $e4
    and h
    sbc h
    sbc c
    cp l
    db $e4
    sbc c
    jp c, $a381

jr_00a_6969:
    ret nz

    sbc b
    and b
    ld a, a
    add b
    nop
    nop
    ld [hl-], a
    inc b
    ld b, d
    add h
    xor d
    call nz, $c4aa
    ld d, d
    adc h
    ld h, d

jr_00a_697b:
    jr jr_00a_697b

    nop
    nop
    nop
    jr z, jr_00a_6992

    jr z, jr_00a_6994

    jr z, jr_00a_6996

    jr z, jr_00a_6998

    jr z, jr_00a_699a

    jr z, jr_00a_699c

    jr z, jr_00a_699e

    jr z, jr_00a_69a0

    jr z, jr_00a_69a2

jr_00a_6992:
    jr z, @+$12

jr_00a_6994:
    jr z, jr_00a_69a6

jr_00a_6996:
    jr z, jr_00a_69a8

jr_00a_6998:
    jr z, jr_00a_69aa

jr_00a_699a:
    jr z, jr_00a_69ac

jr_00a_699c:
    jr z, jr_00a_69ae

jr_00a_699e:
    jr z, jr_00a_69b0

jr_00a_69a0:
    ld a, h
    nop

jr_00a_69a2:
    ld d, h
    jr c, jr_00a_6a21

    nop

jr_00a_69a6:
    sub $38

jr_00a_69a8:
    cp d

jr_00a_69a9:
    ld [hl], h

jr_00a_69aa:
    cp d
    ld h, h

jr_00a_69ac:
    sub $38

jr_00a_69ae:
    ld a, h
    nop

jr_00a_69b0:
    or d

jr_00a_69b1:
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    nop
    nop
    ld a, a
    rst $38
    sbc b
    and b
    xor l
    ret nz

    db $dd
    adc b
    add sp, -$63
    xor c
    sbc l
    sub h
    adc h
    nop
    nop
    db $fc
    cp $62
    jr jr_00a_69a9

    inc c
    ld a, [hl+]
    call nz, $e4fa
    ld [hl-], a
    call nz, $0402
    add b
    add b
    or d
    adc [hl]
    db $fc
    sbc [hl]
    jp nc, $ae8c

    ret nz

    sbc b
    and b
    ld a, a
    add b
    nop
    nop
    or d
    call nz, $e452
    ld e, d
    db $e4
    ld [$d244], a
    inc c
    ld h, d

jr_00a_69fb:
    jr jr_00a_69fb

    nop
    nop
    nop
    jr z, jr_00a_6a12

    jr z, @+$12

    jr z, jr_00a_6a16

    jr z, jr_00a_6a18

    jr z, jr_00a_6a1a

    jr z, jr_00a_6a1c

    jr z, jr_00a_6a1e

    jr z, jr_00a_6a20

    ld a, h
    nop

jr_00a_6a12:
    ld d, h
    jr c, @+$7e

    nop

jr_00a_6a16:
    sub $38

jr_00a_6a18:
    cp d
    ld [hl], h

jr_00a_6a1a:
    cp d
    ld h, h

jr_00a_6a1c:
    sub $38

jr_00a_6a1e:
    ld a, h
    nop

jr_00a_6a20:
    or d

jr_00a_6a21:
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    nop
    nop
    ld a, a
    rst $38
    sbc b
    and b
    and c
    ret nz

    jp c, $e381

    sbc c
    sub c
    cp l
    xor h
    sbc h
    nop
    nop
    db $fc
    cp $62
    jr jr_00a_6aa9

    adc h
    xor d
    call nz, $c42a
    ld [bc], a
    add h
    ld h, d
    inc b
    sbc b
    add b
    add d
    add [hl]
    db $d3
    adc [hl]
    push de
    adc [hl]
    xor d

jr_00a_6a69:
    call nz, $a098
    ld a, a
    add b
    nop
    nop
    jp nc, Jump_000_22e4

    db $f4
    ld a, [de]
    ld h, h
    ld l, d
    inc b
    ld [de], a
    inc c
    ld h, d

jr_00a_6a7b:
    jr jr_00a_6a7b

    nop
    nop
    nop
    jr z, jr_00a_6a92

    jr z, jr_00a_6a94

    jr z, jr_00a_6a96

    jr z, jr_00a_6a98

    jr z, jr_00a_6a9a

    jr z, jr_00a_6a9c

    jr z, jr_00a_6a9e

    jr z, jr_00a_6aa0

    jr z, jr_00a_6aa2

jr_00a_6a92:
    jr z, @+$12

jr_00a_6a94:
    jr z, jr_00a_6aa6

jr_00a_6a96:
    jr z, jr_00a_6aa8

jr_00a_6a98:
    jr z, jr_00a_6aaa

jr_00a_6a9a:
    jr z, jr_00a_6aac

jr_00a_6a9c:
    jr z, jr_00a_6aae

jr_00a_6a9e:
    jr z, jr_00a_6ab0

jr_00a_6aa0:
    ld a, h
    nop

jr_00a_6aa2:
    ld d, h
    jr c, @+$7e

    nop

jr_00a_6aa6:
    sub $38

jr_00a_6aa8:
    cp d

jr_00a_6aa9:
    ld [hl], h

jr_00a_6aaa:
    cp d
    ld h, h

jr_00a_6aac:
    sub $38

jr_00a_6aae:
    ld a, h
    nop

jr_00a_6ab0:
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    or d
    ld a, h
    nop
    nop
    ld a, a
    rst $38
    sbc b
    and b
    and l
    jp $87ca


    jp nc, $ab87

    sub d
    and h
    cp b
    nop
    nop
    db $fc
    cp $62
    jr jr_00a_6a69

    inc c
    ld c, d
    add h
    xor d
    inc b
    ld [de], a
    ld h, h
    ldh [c], a
    db $f4
    sbc h
    cp h
    and e
    sbc c
    push de
    add e
    ret


    add a
    and [hl]
    jp $a098


    ld a, a
    add b
    nop
    nop
    sub d
    ld [hl], h
    ld d, d
    inc h
    ld a, [hl+]
    add h
    ld c, d
    add h
    sub d
    inc c
    ld h, d

jr_00a_6afb:
    jr jr_00a_6afb

    nop
    nop
    nop
    ld d, [hl]
    rrca
    dec b
    ld l, e
    nop
    dec a
    nop
    ld d, b
    dec l
    sub c
    ld a, e
    xor a
    ld a, e
    sbc l
    ld [hl], a
    xor a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld c, a
    db $fc
    nop
    ld c, $f0
    ld d, h
    ld hl, sp-$56
    db $fc
    call nc, $eaf8
    call c, $e8e4
    ldh [$fff0], a
    rra
    ccf
    xor d
    ld e, a
    push bc
    ccf
    jr z, jr_00a_6b84

    sub l
    ld a, [hl+]
    ld d, h
    ld bc, $002a
    nop
    nop
    sub $e8
    xor h
    ldh a, [rSC]
    ld hl, sp+$2c
    ret nc

    ld e, d
    and b
    sub h
    ld b, b
    xor b
    nop

jr_00a_6b43:
    nop
    nop
    inc bc
    ld bc, $011b
    ld [hl], a
    jr jr_00a_6b43

    ld e, e
    or h
    ld e, e
    ld [hl], a
    jr jr_00a_6b6d

    ld bc, $0103
    ld b, b
    add b
    ld e, b
    add b
    or $18
    rst $30
    jp c, $da35

    or $18
    ld e, b
    add b
    ld b, b
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $30
    nop

jr_00a_6b6d:
    rst $20
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc [hl]
    nop
    inc h
    nop
    inc a
    nop
    inc a
    nop
    inc a

jr_00a_6b84:
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld a, a
    nop
    ld l, [hl]
    nop
    ld c, b
    nop
    ld [hl], b
    nop
    ld c, $00
    ld a, [hl-]
    nop
    ldh a, [c]
    nop
    xor $00
    adc [hl]
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld [hl], b
    nop
    ld l, b
    nop
    ld c, [hl]
    nop
    ld a, a
    nop
    ld [hl], e
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    adc [hl]
    nop
    xor $00
    ld a, [$3200]
    nop
    ld c, $00
    nop
    nop
    rst $38
    nop
    rst $18
    nop
    sbc a
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    jr nc, jr_00a_6bd3

jr_00a_6bd3:
    jr c, jr_00a_6bd5

jr_00a_6bd5:
    nop
    nop
    rst $38
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld b, $00
    ld c, $00
    inc c
    nop
    inc e
    nop
    jr jr_00a_6be7

jr_00a_6be7:
    inc e
    nop
    inc c
    nop
    ld c, $00
    db $fd
    nop
    ld sp, hl
    nop
    rst $38
    nop
    nop
    nop
    jr jr_00a_6bf7

jr_00a_6bf7:
    jr c, jr_00a_6bf9

jr_00a_6bf9:
    jr nc, jr_00a_6bfb

jr_00a_6bfb:
    ld [hl], b
    nop
    rst $18
    nop
    sbc a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    pop hl
    nop
    jp $8700


    nop
    nop
    nop
    add c
    nop
    jp nz, $2c00

    nop
    jr jr_00a_6c1d

jr_00a_6c1d:
    jr jr_00a_6c1f

jr_00a_6c1f:
    inc [hl]
    nop
    ld b, d
    nop
    add e
    nop
    ccf
    nop
    nop
    nop
    inc de
    nop
    inc de
    nop
    ld [$0600], sp
    nop
    ld bc, $0000
    nop
    cp $00
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    ret c

    nop
    jr nc, jr_00a_6c41

jr_00a_6c41:
    ret nz

    nop
    nop
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    rst $18
    nop
    ret nz

    nop
    call c, $c600
    nop
    ld [bc], a
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    cp $00
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
    nop
    nop
    nop
    nop
    ld d, [hl]
    jr c, @+$58

    jr c, jr_00a_6cc6

    nop
    ld d, [hl]
    jr c, jr_00a_6ce4

    jr c, jr_00a_6ccc

    nop
    ld d, [hl]
    jr c, jr_00a_6cea

    jr c, jr_00a_6c96

jr_00a_6c96:
    nop
    db $db
    nop
    inc h
    db $db
    rst $38
    db $db
    inc h
    db $db
    rst $38
    nop
    db $db
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld sp, $670e
    ld e, $4f
    ld a, $59
    ld a, $5a
    inc a
    inc a
    nop
    nop
    nop
    ld a, b
    nop
    adc h
    ld [hl], b
    and $78
    ldh a, [c]
    ld a, h
    sbc d
    ld a, h
    ld e, d
    inc a
    inc a
    nop
    inc a

jr_00a_6cc6:
    nop
    ld e, d
    inc a
    ld e, c
    ld a, $4f

jr_00a_6ccc:
    ld a, $67
    ld e, $31
    ld c, $1e
    nop
    nop
    nop
    inc a
    nop
    ld e, d
    inc a
    sbc d
    ld a, h
    ldh a, [c]
    ld a, h
    and $78
    adc h
    ld [hl], b
    ld a, b
    nop
    nop

jr_00a_6ce4:
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a

jr_00a_6cea:
    rst $38
    ret nz

    rst $18
    nop
    sbc a
    add b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    cp $09
    ld a, [$f201]
    inc bc
    db $fc
    cp $00
    nop
    nop
    ld [bc], a
    db $fc
    ld [$061c], a
    inc c
    ld [de], a
    db $e4
    ld [$0610], a
    ld [$e412], sp
    cp $00
    rra
    nop
    dec [hl]
    ld c, $6f
    rra
    ld e, d
    ccf
    ld [hl], h
    ccf
    ld e, c
    ld l, $6b
    inc d
    ccf
    nop
    add c
    nop
    ldh [c], a
    ld bc, $43a5
    ld [hl], h
    add e
    or [hl]
    ld b, c
    ld [hl], a
    add b

jr_00a_6d31:
    or $01
    db $e3
    nop
    adc h
    ld [hl], b
    ld [hl], d
    db $fc
    db $eb
    db $fc
    add e
    db $fc
    ld c, a
    ldh a, [$ff33]
    call z, $f0ee
    db $fc
    nop
    nop
    nop
    inc e
    nop
    ld a, [hl+]
    inc e
    ld e, l
    ld a, $c9
    ld a, $ab
    ld [hl], h
    rst $10
    jr z, @+$80

    nop
    jr c, jr_00a_6d57

jr_00a_6d57:
    ld l, l
    jr nc, jr_00a_6d31

    ld a, c
    and h
    ld a, e
    sbc $63
    adc [hl]
    ld [hl], c
    db $fc
    inc bc
    halt
    ld bc, $00fd
    xor [hl]
    ld a, b
    ld [hl], e
    db $fc
    xor l
    cp $db
    cp $6b
    db $fc
    sub a
    ld a, b
    rst $18
    ldh [$fff3], a
    nop
    inc e
    inc bc
    dec [hl]
    rrca
    ld l, e
    rra
    ld e, a
    ccf
    ld a, a
    ccf
    cp a
    ld a, a
    sbc h
    ld a, a
    db $ec
    nop
    ld a, b
    add b
    inc e
    ldh [$ffce], a
    ldh a, [$ffe6]
    ld hl, sp-$29
    ld hl, sp+$27
    ld hl, sp-$31
    ldh a, [$ff03]
    nop
    dec a
    nop
    ld l, e
    inc e
    ld d, a
    ld a, $6d
    ld a, $73
    inc e
    ccf
    nop
    rrca
    nop
    inc hl
    db $fc
    add $38
    ld a, h
    nop

jr_00a_6dab:
    adc h
    nop
    jp c, $f70c

    inc e
    xor e
    inc e
    ld e, $00
    jp $cc3f


    ccf
    db $f4
    dec bc
    ld l, c
    rra
    ld [hl], b
    rrca
    ld a, [hl-]
    dec b
    rra
    nop
    rlca
    nop
    rra
    ldh [$ff2f], a
    ret nc

    rst $08
    jr nc, jr_00a_6dab

    ldh [$ff3f], a
    ret nz

    rst $38
    nop
    cp $00
    ld hl, sp+$00
    nop
    nop

jr_00a_6dd7:
    ld a, [hl]
    db $fc
    add d
    db $fc
    add d
    call c, $f08f
    sub b
    ldh [$ffa8], a
    rst $00
    add b
    ret nz

    nop
    nop
    db $fc
    cp $82
    db $fc
    add d
    db $f4
    ldh [c], a
    inc a
    ld [hl-], a
    inc e
    ld a, [hl-]
    call z, $0c1a
    ld d, b
    adc a
    nop
    nop
    add sp, -$39
    or b
    ldh [$ff9f], a
    ldh a, [$ff8e]
    call c, $fc82
    ld a, a
    add b
    ld e, $e0
    ld [de], a
    nop
    jr c, jr_00a_6dd7

    ld [hl-], a
    inc e
    ldh [c], a
    inc a
    jp nz, $82f4

    db $fc
    ld a, [hl]
    nop
    rst $38
    nop
    ldh [$ff1f], a
    sbc [hl]
    ld a, a
    ld a, l
    rst $38
    cp $ff
    sbc $ff
    or b
    rst $38
    ld c, h
    rst $38
    rst $38
    nop
    db $e3
    inc e
    ld e, l
    cp [hl]
    sub c
    cp $89
    cp $23
    call c, $807f
    rst $38
    nop
    ld [hl], a
    xor b
    adc b
    ld [hl], a
    db $e3
    inc e
    rst $38
    nop
    di
    inc a
    jp hl


    ld a, [hl]
    or c
    ld a, [hl]
    jp Jump_00a_633c


    sbc h
    cp l
    ld a, [hl]
    ld a, d
    rst $38
    ld e, [hl]
    rst $38
    ld h, l
    cp d
    sbc b
    ld a, a
    db $d3
    inc l
    rst $38
    nop
    nop
    nop
    ld a, d
    db $fc
    add d
    db $fc
    and d
    ld hl, sp-$4e
    ld hl, sp-$46
    ldh [$ff82], a
    ret nz

    add d
    db $fc
    nop
    nop
    ld b, h
    nop
    xor d
    call z, $ccaa
    xor d
    call z, $ccaa
    xor d
    call z, $ccaa
    nop
    nop
    ld a, a
    rst $38
    add b
    rst $38
    cp l
    ei
    cp l
    jp $fbbd


    cp h
    jp $ff80


    nop
    nop
    db $fc
    cp $02
    db $fc
    ld a, [$06fc]
    ld hl, sp+$76
    adc b
    ld [bc], a
    nop
    ld [bc], a
    db $fc
    add d
    db $fc
    cp [hl]
    add sp, -$42
    add sp, -$42
    add sp, -$42
    add sp, -$56
    call nc, $fc82
    ld a, [hl]
    add b
    xor d

jr_00a_6ea6:
    call z, $ccaa
    nop
    nop
    ld [hl+], a
    call z, $ccaa
    xor d
    call z, $ccaa
    xor $00
    ld a, [hl]
    nop
    adc e
    ld [hl], h
    cp $05

jr_00a_6ebb:
    adc a
    ld [hl], l
    ld a, [$fb75]
    ld [hl], h
    rst $38
    ld [hl], b
    ld a, [$0071]
    nop
    rst $38
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
    ld bc, $03bd
    adc d
    ld [hl], c
    rst $38
    ld [hl], b
    adc e
    ld [hl], h
    adc [hl]
    ld [hl], l
    rst $38
    dec b
    adc d
    ld [hl], l
    ei
    inc b
    ld a, [hl]
    nop
    ld e, e
    add a
    cp [hl]
    rst $00
    rst $00
    jr c, jr_00a_6ea6

    ld a, l
    db $eb
    ld l, l
    jp z, $834d

    ld a, h
    ld a, h
    nop
    ld a, h
    nop
    add e
    ld a, h
    ld [$cb6d], a
    ld c, l
    ld a, [$c77d]
    jr c, jr_00a_6ebb

    add $a6
    rst $08
    db $fc
    nop
    and d
    ld e, h
    cp $40
    ldh [c], a
    ld e, h
    cp [hl]
    ld e, h
    cp [hl]
    ld e, h
    cp $1c
    cp [hl]
    inc e
    ld c, e
    add a
    sbc l
    inc bc
    rst $38
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
    and d
    inc e
    cp $1c
    and d
    ld e, h
    ldh [c], a
    ld e, h
    cp $40
    and d
    ld e, h
    cp [hl]
    ld b, b
    db $fc
    nop
    rst $10
    dec l
    rst $30
    ld c, l
    rst $38
    ld b, c
    di
    ld b, c
    sub $2d
    rst $30
    ld c, $d7
    cpl
    nop
    nop
    ld e, e
    and h
    ld d, a
    xor d
    ld a, a
    add d
    ld b, a
    add d
    ld e, e
    and h
    rst $18
    ld h, b
    ld d, a
    add sp, $00
    nop
    ld a, a
    nop
    or c
    ld a, [hl]
    rst $38
    nop
    ld d, d
    inc a
    ld a, a
    nop
    rst $10
    cpl
    rst $10
    cpl
    rst $30
    ld c, $fe
    nop
    or c
    ld a, [hl]
    rst $38
    nop
    ld e, d
    inc a
    cp $00
    ld d, a
    add sp, $57
    add sp, -$21
    ld h, b
    rst $30
    ld c, $d7
    cpl
    rst $10
    cpl
    ld a, a
    nop
    ld d, d
    inc a
    rst $38
    nop
    or c
    ld a, [hl]
    ld a, a
    nop
    rst $18
    ld h, b
    ld d, a
    add sp, $57
    add sp, -$02
    nop
    ld e, d
    inc a
    rst $38
    nop
    or c
    ld a, [hl]
    cp $00
    nop
    nop
    rst $10
    cpl
    rst $30
    ld c, $d6
    dec l
    di
    ld b, c
    rst $38
    ld b, c
    rst $30
    ld c, l
    rst $10
    dec l
    nop
    nop
    ld d, a
    add sp, -$21
    ld h, b
    ld e, e
    and h
    ld b, a
    add d
    ld a, a
    add d
    ld d, a
    xor d
    ld e, e
    and h
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ei
    rst $30
    ei
    rst $20
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    db $db
    inc [hl]
    db $db
    inc h
    jp $db3c


    inc a
    db $db
    inc a
    rst $38
    nop
    jp $bd3c


    ld a, [hl]
    cp l
    halt
    cp l
    ld h, [hl]
    add c
    ld a, [hl]
    jp $ff3c


    nop
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    jr @+$3e

    db $10
    jr jr_00a_7000

    jr jr_00a_6ff2

jr_00a_6ff2:
    inc a
    ccf
    ld a, a
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    jr nc, jr_00a_7075

    db $10
    jr nc, jr_00a_7010

jr_00a_7000:
    jr nc, jr_00a_7002

jr_00a_7002:
    ld a, b

jr_00a_7003:
    ld hl, sp-$04
    nop
    nop
    rst $38
    rst $38
    nop

jr_00a_700a:
    nop
    jr c, jr_00a_7089

    db $10
    jr c, jr_00a_7020

jr_00a_7010:
    jr c, jr_00a_7012

jr_00a_7012:
    ld a, h
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    jr c, @+$7e

    db $10
    jr c, jr_00a_7030

jr_00a_7020:
    jr c, jr_00a_7022

jr_00a_7022:
    ld a, h
    rst $38
    rst $38
    ld bc, $0000
    ld bc, $2113
    ld a, [hl-]
    ld de, $0c1b
    inc b

jr_00a_7030:
    dec bc
    dec sp
    rlca
    xor d
    ld [hl], a
    nop
    nop
    nop
    nop
    sub b
    ld [$10b8], sp
    or b
    ld h, b
    ld b, b
    and b
    jr c, jr_00a_7003

    ld l, d
    sbc h
    jr c, @+$09

    rlca
    ld [$0c1b], sp
    ld a, [hl-]
    ld de, $2113
    nop
    ld bc, $0001
    nop
    nop
    ld hl, sp+$00
    ret nz

    jr nz, jr_00a_700a

    ld h, b
    cp b
    db $10
    sub b
    ld [$0000], sp
    nop
    nop
    nop
    nop

Call_00a_7065:
    ld hl, $738f
    call Call_00a_71fc
    ret


Call_00a_706c:
    ld a, [$d81c]
    or a
    ret nz

    ld a, [$d140]
    or a

jr_00a_7075:
    call nz, Call_00a_7254
    ret


Call_00a_7079:
    ld a, $00
    add c
    ld l, a
    ld a, [$d711]
    ld e, a
    ld a, [hl]
    sub e
    ldh [$ff9b], a
    ld a, [$deaf]
    or a

jr_00a_7089:
    jp nz, Jump_00a_7124

    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_00a_70be

    ld a, $13
    add c
    ld l, a
    call Call_000_01e9
    jp nz, Jump_00a_7124

    or a
    jr z, jr_00a_70a6

    call $732f
    jr jr_00a_7124

jr_00a_70a6:
    ld a, $0a
    add c
    ld l, a
    call Call_00a_735a
    jr nc, jr_00a_7124

    ld a, $1d
    add c
    ld l, a
    ld [hl], $01
    ld a, $0c
    add c
    ld l, a
    call Call_00a_734f
    jr jr_00a_7124

jr_00a_70be:
    ld a, $0c
    add c
    ld l, a
    call Call_00a_735a
    xor a
    ld [$c933], a
    ld a, [$d74b]
    or a
    jr z, jr_00a_70f1

    ld a, $1c
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_00a_70f1

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $18
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    call Call_00a_409f
    jr nc, jr_00a_70f1

    jr nz, jr_00a_70f1

    ld a, $01
    ld [$c933], a

jr_00a_70f1:
    ld a, $1c
    add c
    ld l, a
    set 0, [hl]
    ld de, $0030
    ld a, $14
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld e, a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld d, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld b, a
    adc d
    ld [hl], a
    cp $90
    jr nc, jr_00a_714f

    sub b
    ld d, a
    cp $02
    jr nc, jr_00a_7124

    ld a, [$c933]
    or a
    jr z, jr_00a_7124

    ld a, [$d725]
    add d
    ld [$d725], a

Jump_00a_7124:
jr_00a_7124:
    ld a, $1c
    add c
    ld l, a
    bit 2, [hl]
    jr z, jr_00a_714d

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    call Call_00a_71d4
    xor a
    ld [$d3ea], a
    ldh [$ffab], a
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    push af
    ld a, $1a
    add c
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    call Call_000_0210

jr_00a_714d:
    or a
    ret


jr_00a_714f:
    ld l, c
    push hl
    ld a, $12
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_01a7
    pop hl
    ld c, l
    scf
    ret


Call_00a_715f:
    ld a, $05
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $09
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ld a, $17
    add c
    ld l, a
    ld [hl], d
    ld a, $14
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $12
    add c
    ld l, a
    push hl
    push bc
    ld a, $09
    add c
    ld l, a
    ld a, [hl]
    call Call_000_01a4
    pop bc
    pop hl
    ld [hl], a
    ld a, [$d730]
    ld d, a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    add $30
    cp d
    ld b, $86
    ld e, $14
    jr nc, jr_00a_71bc

    ld b, $85
    ld e, $04

jr_00a_71bc:
    ld a, $1c
    add c
    ld l, a
    ld [hl], b
    ld a, $13
    add c
    ld l, a
    ld [hl], e
    ld a, $1d
    add c
    ld l, a
    ld [hl], $00
    ld a, $0a
    add c
    ld l, a
    call Call_00a_734f
    ret


Call_00a_71d4:
    ld l, c
    push hl
    ld a, $18
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $1c
    add c
    ld l, a
    ld b, [hl]
    ldh a, [$ff9b]
    ldh [$ffa4], a
    ldh a, [$ff9c]
    ldh [$ffa6], a
    ld a, $0e
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e0], a
    xor a
    ld [$d3ea], a
    call Call_000_021f
    pop hl
    ld c, l
    ret


Call_00a_71fc:
    xor a
    ld [$d140], a

jr_00a_7200:
    ld a, [hl]
    or a
    ret z

    ld a, [$de8f]
    cp [hl]
    jr z, jr_00a_720e

    inc hl
    inc hl
    inc hl
    jr jr_00a_7200

jr_00a_720e:
    push hl
    ld hl, $c900
    ld bc, $0034
    xor a
    call Call_000_0174
    pop hl
    inc hl
    ld de, $c928
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $01
    ld [$d140], a
    ld hl, $c928
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld [$c92e], a
    ld a, $08
    cp [hl]
    jr c, jr_00a_7239

    ld a, [hl]

jr_00a_7239:
    dec a
    ld [$c92f], a
    inc hl
    ld a, [hl+]
    ld [$c92a], a
    ld a, l
    ld [$c92b], a
    ld a, h
    ld [$c92c], a
    ld a, [$c92a]
    call Call_000_020a
    ld [$c932], a
    ret


Call_00a_7254:
    ld a, [$deaf]
    or a
    call z, Call_00a_7294
    ld a, $10
    ldh [$ffab], a
    ld a, [$c932]
    ldh [$ffac], a
    ld b, $00
    ld hl, $c900

jr_00a_7269:
    ld a, [hl]
    or a
    jr z, jr_00a_728b

    push bc
    push hl
    call Call_00a_7318
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld c, l
    call Call_00a_7079
    pop hl
    pop bc
    jr nc, jr_00a_728b

    ld [hl], $00
    ld a, [$c92d]
    dec a
    ld [$c92d], a

jr_00a_728b:
    inc hl
    inc b
    ld a, [$c92f]
    cp b
    jr nc, jr_00a_7269

    ret


Call_00a_7294:
    ld de, $c908
    ld hl, $c92b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d70d]
    ld c, a
    ld a, [$d70e]
    ld b, a

jr_00a_72a5:
    push de
    push hl
    ld a, [de]
    or a
    jr nz, jr_00a_72dc

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    inc a
    jr z, jr_00a_72e5

    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    bit 7, a
    jr z, jr_00a_72c6

    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    jr nz, jr_00a_72c6

    inc d

jr_00a_72c6:
    ld a, d
    or a
    jr nz, jr_00a_72dc

    ld a, e
    cp [hl]
    jr nc, jr_00a_72dc

    dec hl
    dec hl
    push bc
    call Call_00a_72e8
    pop bc
    pop hl
    pop de
    ld a, $01
    ld [de], a
    push de
    push hl

jr_00a_72dc:
    pop hl
    ld de, $0009
    add hl, de
    pop de
    inc de
    jr jr_00a_72a5

jr_00a_72e5:
    pop hl
    pop de
    ret


Call_00a_72e8:
    push hl
    ld b, $08
    ld hl, $c900

jr_00a_72ee:
    ld a, [hl+]
    or a
    jr z, jr_00a_72f5

    dec b
    jr nz, jr_00a_72ee

jr_00a_72f5:
    dec hl
    ld [hl], $01
    ld b, l
    call Call_00a_7318
    ld e, l
    ld d, h
    ld a, e
    ld [$c930], a
    ld a, d
    ld [$c931], a
    ld hl, $c92d
    inc [hl]
    pop hl
    push de
    ld bc, $0009
    call Call_000_0180
    pop hl
    ld c, l
    call Call_00a_715f
    ret


Call_00a_7318:
    ld a, b
    ld hl, $731f
    jp Jump_000_016e


    ld [hl], b
    jp z, $caa0

    ret nc

    jp z, $cb00

    jr nc, @-$33

    ld h, b
    res 2, b
    set 0, b
    bit 5, c
    push hl
    ld a, $03
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $07
    add c
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    add d
    ld d, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_000_0246
    pop hl
    ld c, l
    ret


Call_00a_734f:
    push hl
    ld a, $0f
    add c
    ld l, a
    ld [hl], $00
    call Call_00a_400a
    pop hl

Call_00a_735a:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    push hl
    push de
    inc de
    inc de
    ld a, $0f
    add c
    ld l, a
    call Call_00a_401c
    pop de
    pop hl
    ld c, l
    ld l, a
    push af
    ldh a, [$ff8f]
    or a
    jr z, jr_00a_738d

    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    ld a, l
    call Call_000_0171
    ld a, $18
    add c
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $04
    add e
    ld [hl+], a
    ld a, $00
    adc d
    ld [hl], a

jr_00a_738d:
    pop af
    ret


    inc bc
    or d
    ld [hl], e
    dec b
    cp a
    ld [hl], e
    ld b, $de
    ld [hl], e
    add hl, bc
    db $fd
    ld [hl], e
    inc c
    inc e
    ld [hl], h
    dec c
    adc h
    ld [hl], h
    ld c, $a2
    ld [hl], h
    rrca
    jp z, Jump_000_1174

    inc b
    ld [hl], l
    rla
    ld b, a
    ld [hl], l
    jr @-$74

    ld [hl], l
    nop
    nop
    ld bc, $2875
    nop
    ld a, [bc]
    ld bc, $a304
    ld [hl], l
    ldh a, [c]
    ld [hl], l
    rst $38
    rst $38
    inc bc
    ld [hl], l
    jr c, jr_00a_73c3

jr_00a_73c3:
    db $10
    inc bc
    dec b
    sub a
    ld [hl], l
    jp nc, Jump_00a_4875

    nop
    db $10
    inc b
    inc b
    sub a
    ld [hl], l
    jp nc, $5875

    nop
    db $10
    dec b
    inc bc
    sub a
    ld [hl], l
    rst $10
    ld [hl], l
    rst $38
    rst $38
    inc bc
    ld [hl], l
    ld hl, sp+$00
    db $10
    rrca
    dec b
    sub a
    ld [hl], l
    jp nc, Jump_000_1875

    ld bc, $1110
    ld b, $97
    ld [hl], l
    jp nc, Jump_000_3875

    ld bc, $1310
    dec b
    sub a
    ld [hl], l
    jp nc, $ff75

    rst $38
    inc bc
    ld [hl], l
    jr nz, jr_00a_7401

jr_00a_7401:
    ld e, $01
    inc b
    sbc l
    ld [hl], l
    and $75
    ld b, b
    nop
    ld e, $03
    dec b
    sbc l
    ld [hl], l
    db $ec
    ld [hl], l
    ld a, b
    nop
    ld a, [bc]
    rlca
    dec b
    sub a
    ld [hl], l
    pop hl
    ld [hl], l
    rst $38
    rst $38
    inc c
    ld [hl], l
    ld e, b
    nop
    ld e, $04
    nop
    and e
    ld [hl], l
    ldh a, [c]
    ld [hl], l
    ld a, b
    nop
    ld [hl+], a
    rlca
    dec b
    sub a
    ld [hl], l
    jp nc, $8875

    nop
    ld [hl+], a
    ld [$9705], sp
    ld [hl], l
    jp nc, $9875

    nop
    ld [hl+], a
    add hl, bc
    dec b
    sub a
    ld [hl], l
    jp nc, $f075

    nop
    inc d
    ld c, $07
    sbc l
    ld [hl], l
    and $75
    ld [$1401], sp
    db $10
    rlca
    sub a
    ld [hl], l
    jp nc, Jump_000_2075

    ld bc, $1114
    rlca
    sbc l
    ld [hl], l
    and $75
    ld hl, sp+$00
    ld a, [de]
    rrca
    nop
    sub a
    ld [hl], l
    jp nc, $0875

    ld bc, $101a
    nop
    sub a
    ld [hl], l
    jp nc, Jump_000_1875

    ld bc, $111a
    nop
    sub a
    ld [hl], l
    jp nc, Jump_00a_6875

    ld bc, $162a
    nop
    sub a
    ld [hl], l
    jp nc, $8075

    ld bc, $1718
    nop
    sbc l
    ld [hl], l
    and $75
    rst $38
    rst $38
    ld [bc], a
    ld [hl], l
    jr z, jr_00a_7490

jr_00a_7490:
    jr jr_00a_7494

    inc b
    sub a

jr_00a_7494:
    ld [hl], l
    jp nc, Jump_000_3875

    nop
    jr jr_00a_749e

    inc b
    sub a
    ld [hl], l

jr_00a_749e:
    jp nc, $ff75

    rst $38
    inc b
    ld [hl], l
    ld e, b
    nop
    jr @+$07

    ld [bc], a
    sub a
    ld [hl], l
    jp nc, Jump_00a_6875

    nop
    jr nz, jr_00a_74b7

    ld [bc], a
    sub a
    ld [hl], l
    jp nc, Jump_00a_7875

jr_00a_74b7:
    nop
    jr z, jr_00a_74c1

    ld [bc], a
    sub a
    ld [hl], l
    jp nc, $b875

    nop

jr_00a_74c1:
    jr nz, @+$0c

    ld [bc], a
    and e
    ld [hl], l
    ldh a, [c]
    ld [hl], l
    rst $38
    rst $38
    ld b, $75
    jr jr_00a_74ce

jr_00a_74ce:
    inc e
    ld bc, $9704
    ld [hl], l
    jp nc, $2875

    nop
    inc e
    ld [bc], a
    inc b
    sub a
    ld [hl], l
    jp nc, Jump_000_3875

    nop
    dec e
    inc bc
    inc b
    sub a
    ld [hl], l
    jp nc, Jump_00a_4875

    nop
    ld e, $04
    inc b
    sub a
    ld [hl], l
    jp nc, $5875

    nop
    rra
    dec b
    inc b
    sub a
    ld [hl], l
    jp nc, Jump_00a_6875

    nop
    jr nz, jr_00a_7503

    inc b
    sub a
    ld [hl], l
    jp nc, $ff75

jr_00a_7503:
    rst $38
    rlca
    ld [hl], l
    ld h, b
    nop
    inc d
    dec b
    inc bc
    sbc l
    ld [hl], l
    and $75
    sbc b
    nop
    inc d
    add hl, bc
    inc bc
    sub a
    ld [hl], l
    jp nc, $e875

    nop
    dec c
    ld c, $04
    sub a
    ld [hl], l
    jp nc, $f875

    nop
    rra
    rrca
    inc b
    sub a
    ld [hl], l
    jp nc, $0875

    ld bc, $1031
    inc b
    sub a
    ld [hl], l
    jp nc, Jump_00a_6875

    ld bc, $1614
    inc b
    sub a
    ld [hl], l
    jp nc, $9075

    ld bc, $1820
    dec b
    sbc l
    ld [hl], l
    and $75
    rst $38
    rst $38
    rlca
    ld [hl], l
    jr z, jr_00a_754b

jr_00a_754b:
    ld c, $02
    ld [bc], a
    sub a
    ld [hl], l
    jp nc, Jump_000_3875

    nop
    ld c, $03
    ld [bc], a
    sub a
    ld [hl], l
    jp nc, Jump_00a_4875

    nop
    ld c, $04
    ld [bc], a
    sub a
    ld [hl], l
    jp nc, Jump_000_3875

    nop
    inc c
    inc bc
    rlca
    sub a
    ld [hl], l
    jp nc, Jump_00a_4875

    nop
    inc c
    inc b
    rlca
    sub a
    ld [hl], l
    jp nc, $5875

    nop
    inc c
    dec b
    inc b
    sub a
    ld [hl], l
    call c, Call_00a_6875
    nop
    inc c
    ld b, $04
    sub a
    ld [hl], l
    jp nc, $ff75

    rst $38
    ld bc, $2875
    nop
    ld a, [bc]
    ld [bc], a
    dec b
    sub a
    ld [hl], l
    jp nc, $ff75

    rst $38
    inc b
    xor c
    ld [hl], l
    or b
    ld [hl], l
    ld [bc], a
    ld [$75b5], sp
    cp [hl]
    ld [hl], l
    inc bc
    inc c
    jp $cd75


    ld [hl], l
    inc b
    ld c, h
    halt
    inc b
    ld bc, $0100
    cp $4c
    halt
    ldh a, [rP1]
    rst $38
    ld c, h
    halt
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $4c
    halt
    ldh a, [rSC]
    rst $38
    ld c, h
    halt
    inc b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    cp $4c
    halt
    inc b
    inc b
    rst $38
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0a01
    nop
    nop
    ld bc, $4601
    nop
    nop
    ld bc, $1801
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $4600
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    dec b
    db $fc
    ld [hl], l
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
    rst $38
    rst $38
    cp a
    ret nz

    ld a, a
    ld a, a
    ld e, e
    ld h, a
    scf
    cpl
    scf
    cpl
    ld b, e
    ld a, a
    cp a
    ret nz

    cp $fe
    ld a, [$fc06]
    db $fc
    or h
    call z, $e8d8
    ret c

    add sp, -$7c
    db $fc
    ld a, [$ff06]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    cp e
    rst $00
    rst $10
    rst $28
    rst $10
    rst $28
    add e
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    cp e
    rst $00
    rst $10
    rst $28
    rst $10
    rst $28
    add e
    rst $38
    rst $38
    nop
    ld e, b
    halt
    ld l, l
    halt
    add d
    halt
    and a
    halt
    call z, $0176
    ld [hl], a
    ld hl, sp+$05
    ld hl, sp+$00
    ld hl, sp-$08
    ld bc, $0010
    ld [$1002], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    add b
    ld hl, sp+$05
    ld hl, sp+$00
    ld hl, sp-$09
    ld bc, $0010
    ld [$1002], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    add b
    ldh a, [$ff0d]
    ld hl, sp+$00
    ld hl, sp-$10
    ld bc, $0010
    ld [$1003], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    ld hl, sp+$08
    inc b
    stop
    ld [$1002], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    add b
    ldh a, [$ff0d]
    ld hl, sp+$00
    ld hl, sp-$11
    ld bc, $0010
    ld [$1003], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    ld hl, sp+$08
    inc b
    stop
    ld [$1002], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    add b
    jp hl


    ld d, $f8
    nop
    ld hl, sp-$18
    ld bc, $0010
    ld [$1003], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    ld hl, sp+$08
    inc b
    stop
    ld [$1003], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    ld hl, sp+$08
    inc b
    stop
    ld [$1002], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    add b
    jp hl


    ld d, $f8
    nop
    ld hl, sp-$19
    ld bc, $0010
    ld [$1003], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    ld hl, sp+$08
    inc b
    stop
    ld [$1003], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
    ld hl, sp+$08
    inc b
    stop
    ld [$1002], sp
    ld [$00f8], sp
    stop
    ld [$1000], sp
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

Jump_00a_7875:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
