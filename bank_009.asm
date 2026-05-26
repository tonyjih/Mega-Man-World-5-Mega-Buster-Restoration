; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    jp Jump_009_7c9a


    jp Jump_009_7ee4


    jp Jump_009_42c3


    jp Jump_009_464e


    jp Jump_009_4ca0


    jp Jump_009_5574


    jp Jump_009_5d28


    jp Jump_009_6650


    jp Jump_009_7802


Call_009_401b:
    ld [$d703], a
    ld hl, $d72b
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    ld hl, $d725
    ld a, [hl]
    add b
    ld [hl], a
    ld a, [$d74b]
    cp $01
    ret nz

    xor a
    ld [$d74b], a
    ld hl, $d729
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    adc [hl]
    ld [hl+], a
    ret


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_009_4051:
    ld a, [bc]
    cp $80
    ret z

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
    push hl
    ld hl, $ffac
    add [hl]
    pop hl
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_009_4051

Call_009_407d:
    push bc
    call Call_000_0201
    pop bc
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ld [$cc05], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld [$cc24], a
    call Call_000_01e3
    ret c

    ld a, $07
    add c
    ld l, a
    ld [hl], $80
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    ld a, [$cc05]
    ld [hl], a
    ld a, $24
    add c
    ld l, a
    ld a, [$cc24]
    ld [hl], a
    ld a, [$cc00]
    ld e, a
    ld a, [$cc01]
    ld d, a
    ld a, $00
    add c
    ld l, a
    call Call_000_017d
    inc l
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $13
    add c
    ld l, a
    call Call_000_0177
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $1c
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    ld a, $21
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc l
    ld [hl+], a
    ld [hl+], a
    ret


Call_009_40e1:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$c3ef]
    sub b
    ret nc

    cpl
    inc a
    scf
    ret


Call_009_40f2:
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


Call_009_410c:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_009_4114:
Jump_009_4114:
    ld b, h
    ld hl, $d725
    ld a, [hl]
    add d
    ld [hl], a
    ld hl, $d732
    ld a, [hl]
    add e
    ld [hl], a
    ld h, b
    ret


    ld l, $00
    jr jr_009_4129

Call_009_4127:
    ld l, $01

jr_009_4129:
    xor a
    ldh [$ff8c], a
    ld a, l
    ldh [$ff8a], a
    ld a, b
    ldh [$ff8b], a
    ld l, c
    push hl
    ld a, $0f
    add c
    ld l, a
    push hl
    add $fe
    ld l, a
    ld a, [de]
    add [hl]
    ld c, a
    inc de
    ld a, [de]
    add [hl]
    ld b, a
    pop hl
    ldh a, [$ff8c]
    or a
    jr nz, jr_009_414a

    inc de

jr_009_414a:
    inc de
    ld a, [de]
    add [hl]
    ld d, a
    ldh a, [$ff8a]
    add d
    ld d, a
    ld e, c
    ldh a, [$ff8b]
    or a
    jr z, jr_009_4159

    ld e, b

jr_009_4159:
    ld a, d
    call Call_000_0165
    pop hl
    ld c, l
    ret


    ld a, [$f806]
    inc c

Call_009_4164:
    call Call_009_41a6
    ret nc

    push af
    call Call_009_4190
    pop af
    ret


Call_009_416e:
    call Call_009_41a6
    ret nc

    push af
    call Call_009_4178
    pop af
    ret


Call_009_4178:
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    ld b, a
    ld a, [hl+]
    sub b
    ld e, a
    inc l
    ld a, [$d725]
    add $04
    ld b, a
    ld a, [hl]
    sub b
    ld d, a
    jp Jump_009_4114


Call_009_4190:
    ld a, [$c3e7]
    ld e, a
    ld a, [$c3e8]
    ld d, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    sub e
    ld e, a
    inc l
    ld a, [hl]
    sub d
    ld d, a
    jp Jump_009_4114


Call_009_41a6:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    ldh a, [$ff9b]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d747]
    cp b
    jr c, jr_009_41f1

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_009_41f1

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_009_41e1

    inc a
    cp b
    jr nz, jr_009_41f1

    xor a
    scf
    ret


jr_009_41e1:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_009_41f1

    xor a
    inc a
    scf
    ret


jr_009_41f1:
    or a
    ret


Call_009_41f3:
    xor a
    ld [$d3ea], a
    ld a, e
    ldh [$ffa4], a
    ld a, d
    ldh [$ffa6], a
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
    ld a, $13
    add c
    ld l, a
    ld b, [hl]
    ret


Call_009_422b:
    ld b, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $50
    jr nc, jr_009_4238

    ld b, $01

jr_009_4238:
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    ret


Call_009_423e:
    ld a, $01
    ld [$ca00], a
    ld [$cca6], a
    ld a, e
    ld [$ca01], a
    ld a, d
    ld [$ca02], a
    ld a, [$deaf]
    set 3, a
    ld [$deaf], a
    xor a
    ld [$d77a], a
    rst $08
    ld b, h
    ret


Call_009_425d:
jr_009_425d:
    xor a
    ld [$cca6], a
    ld [$ca00], a
    ld [$ca01], a
    ld [$ca02], a
    ld a, [$deaf]
    res 3, a
    ld [$deaf], a
    ld a, $1b
    ld [$de96], a
    ld a, $1c
    ldh [rOBP0], a
    ret


Call_009_427c:
    ld a, [$ca00]
    or a
    ret z

    ld a, [$ca01]
    ld e, a
    ld a, [$ca02]
    ld d, a
    or e
    jr z, jr_009_425d

    dec de
    ld a, e
    or d
    jr z, jr_009_425d

    ld a, e
    ld [$ca01], a
    ld a, d
    ld [$ca02], a
    ld a, [$d739]
    ld d, a
    ld a, [$d73a]
    or d
    jr nz, jr_009_425d

    ld b, $1c
    bit 2, e
    jr z, jr_009_42ab

    ld b, $d0

jr_009_42ab:
    ld a, b
    ldh [rOBP0], a
    ret


    nop
    rst $38
    ld a, b
    db $fc
    db $f4
    dec bc
    ld sp, hl
    rlca
    db $f4
    dec bc
    ld sp, hl
    add hl, bc
    rst $00
    ld [$0407], sp
    inc bc
    dec h
    ld b, a
    nop

Jump_009_42c3:
    ld a, b
    dec b
    jr z, jr_009_42f0

    dec b
    jr z, jr_009_42d3

    dec b
    jp z, Jump_009_4404

    dec b
    ret z

    or a
    jr z, jr_009_42d6

jr_009_42d3:
    ld b, $00
    ret


jr_009_42d6:
    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $d6
    ld l, a
    ld a, [hl]
    add a
    ld b, a
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    ld de, $445c
    jp Jump_000_01dd


jr_009_42f0:
    ld a, [$deaf]
    and $27
    jp nz, Jump_009_4404

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    dec a
    jr z, jr_009_4370

    dec a
    jp z, Jump_009_43ec

    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_432f

    dec a
    jr z, jr_009_4342

    dec a
    jr z, jr_009_4354

    ld de, $4407
    call Call_000_015f
    call Call_009_40e1
    cp $40
    jp nc, Jump_009_4404

    call Call_009_7945
    call Call_000_015c

Jump_009_4327:
jr_009_4327:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_4404


jr_009_432f:
    ld de, $440d
    call Call_009_40f2
    jp nc, Jump_009_4404

    call Call_000_015c
    ld a, $03
    call Call_000_01e0
    jr jr_009_4327

jr_009_4342:
    call Call_009_7a35
    ld de, $42b7
    call Call_009_7a6d
    bit 1, a
    jp z, Jump_009_4404

    rst $08
    ld b, [hl]
    jr jr_009_4327

jr_009_4354:
    ld de, $4414
    call Call_009_40f2
    jp nc, Jump_009_4404

    call Call_000_015c
    call Call_009_7945

Jump_009_4363:
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    inc [hl]
    jp Jump_009_4404


jr_009_4370:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_4398

    dec a
    jr z, jr_009_43c5

    dec a
    jr z, jr_009_43d9

    ld de, $4447
    call Call_009_40f2
    jr nc, jr_009_4404

    call Call_000_015c
    ld de, $42af
    call Call_009_7977
    ld de, $42b1
    call Call_009_799d
    jp Jump_009_4327


jr_009_4398:
    call Call_009_7a35
    ld de, $42b3
    call Call_009_7a6d
    bit 1, a
    jr z, jr_009_43b1

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_009_43c0

    ld [hl], $00
    jr jr_009_4404

jr_009_43b1:
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_009_4404

    add $f7
    ld l, a
    ld [hl], $04
    jr jr_009_4404

jr_009_43c0:
    rst $08
    ld b, [hl]
    jp Jump_009_4327


jr_009_43c5:
    ld de, $444f
    call Call_009_40f2
    jr nc, jr_009_4404

    call Call_000_015c
    ld a, $33
    add c
    ld l, a
    ld [hl], $3c
    jp Jump_009_4327


jr_009_43d9:
    ld de, $441d
    call Call_000_015f
    call Call_000_015c
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_4404

    jp Jump_009_4363


Jump_009_43ec:
    ld de, $4423
    call Call_000_015f
    call Call_009_40e1
    cp $40
    jr nc, jr_009_4404

    call Call_009_7945
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    dec [hl]

Jump_009_4404:
jr_009_4404:
    jp Jump_009_7ab6


    ld e, h
    ld b, h
    ld c, $00
    ld bc, $5cff
    ld b, h
    ld c, $00
    ld bc, $ff02
    ld e, h
    ld b, h
    inc b
    inc b
    dec b
    ld b, $07
    ld b, $ff
    ld e, h
    ld b, h
    ld c, $06
    rlca
    rst $38
    ld e, h
    ld b, h
    inc c
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$5cff], sp
    ld b, h
    inc b
    dec bc
    inc c
    dec c
    ld c, $ff
    ld e, h
    ld b, h
    ld b, $0f
    inc b
    dec b
    dec bc
    inc c
    ld [$0808], sp
    ld [$7cff], sp
    ld b, h
    sbc c
    ld b, h
    cp d
    ld b, h
    rst $10
    ld b, h
    db $f4
    ld b, h
    ld de, $2e45
    ld b, l
    ld c, e
    ld b, l
    ld l, h
    ld b, l
    adc c
    ld b, l
    ld l, h
    ld b, l
    adc c
    ld b, l
    and [hl]
    ld b, l
    rst $00
    ld b, l
    db $e4
    ld b, l
    dec b
    ld b, [hl]
    db $f4
    dec bc
    ld sp, hl
    rlca
    ld hl, sp-$0c
    inc bc
    ld d, b
    nop
    ld [$5004], sp
    nop
    ld [$5005], sp
    ld [$00f0], sp
    ld d, b
    nop
    ld [$5001], sp
    nop
    ld [$5002], sp
    add b
    di
    inc c
    ld sp, hl
    ld b, $ff
    di
    nop
    ld d, b
    nop
    ld [$5006], sp
    nop
    ld [$5007], sp
    ld hl, sp-$10
    ld [$0050], sp
    ld [$5009], sp
    nop
    ld [$500a], sp
    nop
    ld [$500b], sp
    add b
    ld hl, sp+$07
    ld sp, hl
    inc c
    ld hl, sp-$08
    rrca
    ld d, b
    nop
    ld [$5010], sp
    ld [$0df8], sp
    ld d, b
    nop
    ld [$500e], sp
    ld [$0cf8], sp
    ld d, b
    nop
    ld [$700c], sp
    add b
    ld hl, sp+$07
    rst $30
    dec bc
    rst $30
    ld hl, sp+$13
    ld d, b
    nop
    ld [$5014], sp
    ld [$11f8], sp
    ld d, b
    nop
    ld [$5012], sp
    ld [$0cf8], sp
    ld d, b
    nop
    ld [$700c], sp
    add b
    push af
    ld [$08fc], sp
    ld a, [$15f4]
    stop
    ld [$1016], sp
    nop
    ld [$3015], sp
    ld [$17f0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    add b
    ld hl, sp+$07
    push af
    ld [$f8f2], sp
    inc c
    stop
    ld [$300c], sp
    ld [$11f8], sp
    stop
    ld [$1012], sp
    ld [$13f8], sp
    stop
    ld [$1014], sp
    add b
    db $f4
    dec bc
    ld a, [$fa08]
    db $f4
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
    di
    inc c
    ei
    ld [$f3fb], sp
    nop
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    ld [$08f0], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    db $f4
    dec bc
    ld a, [$fa08]
    db $f4
    nop
    stop
    ld [$101a], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$101b], sp
    nop
    ld [$1005], sp
    add b
    db $f4
    dec bc
    ld a, [$fa08]
    db $f4
    nop
    stop
    ld [$101a], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$101c], sp
    nop
    ld [$1005], sp
    add b
    di
    inc c
    ei
    ld [$f3fb], sp
    nop
    stop
    ld [$101d], sp
    nop
    ld [$1007], sp
    ld [$08f0], sp
    stop
    ld [$101e], sp
    nop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    ld hl, sp+$07
    push af
    ld [$f8f2], sp
    rra
    stop
    ld [$1020], sp
    ld [$21f8], sp
    stop
    ld [$1022], sp
    ld [$0ff8], sp
    stop
    ld [$1010], sp
    add b
    rst $30
    add hl, bc
    db $f4
    ld [$f4f9], sp
    inc hl
    stop
    ld [$1024], sp
    nop
    ld [$1025], sp
    ld [$26f6], sp
    stop
    ld [$1027], sp
    ldh a, [$fff5]
    rra
    stop
    ld [$1020], sp
    add b
    rst $30
    add hl, bc
    db $f4
    ld [$f4fc], sp
    inc hl
    ld d, b
    nop
    ld [$5024], sp
    nop
    ld [$5025], sp
    ld hl, sp-$0a
    ld h, $50
    nop
    ld [$5027], sp
    db $10
    push af
    rra
    ld d, b
    nop
    ld [$5020], sp
    add b
    jr nz, @+$01

    nop
    ld bc, $0ff0
    ld sp, hl
    ld [$fd00], sp
    nop
    db $fd
    db $fc
    rst $38
    inc bc
    rst $38
    ld sp, hl
    ld b, $fe
    dec bc
    ld hl, sp+$07
    db $fd
    inc c
    db $f4
    dec bc
    pop af
    ld [$04fc], sp
    db $fc
    inc b
    ret z

    db $10
    rlca
    ld b, $03
    dec b
    ld b, a
    nop

Jump_009_464e:
    ld a, b
    dec b
    jr z, jr_009_468f

    dec b
    jr z, jr_009_465e

    dec b
    jp z, Jump_009_472d

    dec b
    ret z

    or a
    jr z, jr_009_4661

jr_009_465e:
    ld b, $00
    ret


jr_009_4661:
    call Call_000_015c
    ld b, $00
    ld a, $17
    add c
    ld l, a
    ld [hl], b
    add $1c
    ld l, a
    ld [hl], $01
    add $f7
    ld l, a
    ld [hl], $00
    add $de
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_009_4680

    ld a, $34
    jr jr_009_4682

jr_009_4680:
    ld a, $36

jr_009_4682:
    push hl
    push bc
    call Call_000_020a
    pop bc
    pop hl
    jr c, jr_009_468c

    ret


Jump_009_468c:
jr_009_468c:
    jp Jump_009_468c


jr_009_468f:
    ld a, [$deaf]
    and $27
    jp nz, Jump_009_472d

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_46c7

    dec a
    jr z, jr_009_46dc

    dec a
    jr z, jr_009_4703

    dec a
    jr z, jr_009_4717

    ld de, $49bf
    call Call_000_015f
    call Call_009_7945
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_472d

    call Call_000_015c

Jump_009_46bc:
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_009_472d


jr_009_46c7:
    ld de, $49c7
    call Call_009_40f2
    jp nc, Jump_009_472d

    call Call_000_015c
    ld a, $33
    add c
    ld l, a
    ld [hl], $1e
    jp Jump_009_46bc


jr_009_46dc:
    ld de, $49d2
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_472d

    ld a, [$ccb6]
    add a
    ld b, a
    ld a, [$ccb5]
    add b
    cp $02
    jr nc, jr_009_46fa

    call Call_009_4730

jr_009_46fa:
    ld a, $33
    add c
    ld l, a
    ld [hl], $1e
    jp Jump_009_46bc


jr_009_4703:
    ld de, $49d2
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_472d

    call Call_000_015c
    jp Jump_009_46bc


jr_009_4717:
    ld de, $49d7
    call Call_009_40f2
    jr nc, jr_009_472d

    call Call_000_015c
    ld a, $33
    add c
    ld l, a
    ld [hl], $3c
    add $f7
    ld l, a
    ld [hl], $00

Jump_009_472d:
jr_009_472d:
    jp Jump_009_7ab6


Call_009_4730:
    ld l, c
    push hl
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    add a
    ld b, a
    jr nz, jr_009_475d

    ld de, $462e
    ld a, $c8
    ld [$cc00], a
    ld a, $4a
    ld [$cc01], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or b
    ld b, a
    call Call_009_407d
    jr c, jr_009_4784

    ld a, [$ccb5]
    inc a
    ld [$ccb5], a
    jr jr_009_477d

jr_009_475d:
    ld de, $4632
    ld a, $9d
    ld [$cc00], a
    ld a, $4b
    ld [$cc01], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or b
    ld b, a
    call Call_009_407d
    jr c, jr_009_4784

    ld a, [$ccb6]
    inc a
    ld [$ccb6], a

jr_009_477d:
    call Call_009_47af
    xor a
    pop hl
    ld c, l
    ret


jr_009_4784:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_009_4804

    dec b
    jp nz, Jump_009_493a

Jump_009_4790:
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_47a1

    ld a, [$ccb5]
    dec a
    ld [$ccb5], a
    jr jr_009_47a8

jr_009_47a1:
    ld a, [$ccb6]
    dec a
    ld [$ccb6], a

jr_009_47a8:
    ld b, $00
    xor a
    ld [$cc94], a
    ret


Call_009_47af:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $ed
    ld l, a
    ld [hl], b
    add $1d
    ld l, a
    ld [hl], $e0
    inc hl
    ld [hl], $01
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld a, b
    and $01
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld a, b
    srl a
    and $01
    ld [hl], a
    or a
    jr nz, jr_009_47e8

    ld a, $36
    add c
    ld l, a
    ld [hl], $36
    inc l
    ld [hl], $46
    ld a, $34
    jr jr_009_47f3

jr_009_47e8:
    ld a, $36
    add c
    ld l, a
    ld [hl], $3e
    inc l
    ld [hl], $46
    ld a, $36

jr_009_47f3:
    ld b, a
    ld a, $05
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    jp Jump_000_015c


jr_009_4804:
    ld a, [$ccc2]
    or a
    jp nz, Jump_009_4790

    xor a
    ld [$cc94], a
    ld a, [$deaf]
    or a
    jp nz, Jump_009_493a

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_4852

    dec a
    jp z, Jump_009_4924

    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_482f

    ld de, $4ad5
    jr jr_009_4832

jr_009_482f:
    ld de, $4bb7

jr_009_4832:
    call Call_009_40f2
    jp nc, Jump_009_4902

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    ld de, $4626
    call Call_009_7977
    call Call_009_796f
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_009_4902


jr_009_4852:
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_485f

    ld de, $4adb
    jr jr_009_4862

jr_009_485f:
    ld de, $4baa

jr_009_4862:
    call Call_000_015f
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_009_48d5

    ld a, $38
    add c
    ld l, a
    ld [hl], $00
    ld a, $36
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    call Call_009_7a6d
    bit 0, a
    jr z, jr_009_4897

    ld a, $38
    add c
    ld l, a
    ld [hl], $01
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld de, $4626
    call Call_009_7977
    jr jr_009_4902

jr_009_4897:
    ld a, $38
    add c
    ld l, a
    ld [hl], $02
    ld a, $36
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    push de
    call Call_009_4127
    pop de
    jr c, jr_009_4902

    ld a, $38
    add c
    ld l, a
    ld [hl], $03
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld b, a
    call Call_009_4127
    jr c, jr_009_4902

    ld a, $38
    add c
    ld l, a
    ld [hl], $04
    ld de, $4628
    call Call_009_799d
    call Call_009_7967
    jr jr_009_48f8

jr_009_48d5:
    ld a, $38
    add c
    ld l, a
    ld [hl], $80
    ld a, $36
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    call Call_009_7a6d
    bit 1, a
    jr z, jr_009_4902

    ld a, $38
    add c
    ld l, a
    ld [hl], $81
    ld de, $4626
    call Call_009_7977
    call Call_009_796f

jr_009_48f8:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_009_4902

Jump_009_4902:
jr_009_4902:
    call Call_009_4947
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_493a

    inc hl
    dec [hl]
    bit 7, [hl]
    jr z, jr_009_493a

    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    call Call_000_015c
    jp Jump_009_493a


Jump_009_4924:
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_4931

    ld de, $4ae3
    jr jr_009_4934

jr_009_4931:
    ld de, $4bb2

jr_009_4934:
    call Call_009_40f2
    jp c, Jump_009_4790

Jump_009_493a:
jr_009_493a:
    call Call_009_7ab6
    xor a
    ld [$ccc6], a
    ld a, b
    or a
    ret nz

    jp Jump_009_4790


Call_009_4947:
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_496f

    ld de, $463a
    call Call_009_4164
    ret nc

    ld a, $13
    add c
    ld l, a
    ld [hl], $26
    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    inc l
    ld b, [hl]
    ld c, a
    ld hl, $463a
    call Call_000_01bc
    pop hl
    ld c, l
    ret


jr_009_496f:
    ld de, $4642
    call Call_009_416e
    jr nc, jr_009_49be

    ld a, $13
    add c
    ld l, a
    ld [hl], $24
    ld a, $01
    ld [$cc94], a
    ld a, [$ccc6]
    ld b, a
    ld e, $03
    ld a, [$c2f0]
    cp b
    jr c, jr_009_499c

    dec e
    ld a, [$c2ef]
    cp b
    jr c, jr_009_499c

    dec e
    ld a, [$d740]
    and $03
    ret z

jr_009_499c:
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_009_49bd

    ld a, $03
    add c
    ld l, a
    ld a, [hl]
    and $1f
    ld b, a
    ld a, $21
    add c
    ld l, a
    ld [hl], b
    rst $08
    dec d
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    sub e
    jr nc, jr_009_49bc

    xor a

jr_009_49bc:
    ld [hl], a

jr_009_49bd:
    ret


jr_009_49be:
    ret


    sbc $49
    ld a, [bc]
    nop
    ld bc, $0200
    rst $38
    sbc $49
    ld [$0300], sp
    nop
    inc bc
    nop
    inc b
    dec b
    rst $38
    sbc $49
    ld a, [bc]
    dec b
    rst $38
    sbc $49
    ld [$0405], sp
    nop
    rst $38
    ld [$0f49], a
    ld c, d
    inc [hl]
    ld c, d
    ld e, c
    ld c, d
    ld a, [hl]
    ld c, d
    and e
    ld c, d
    ldh a, [rIF]
    ld a, [$fa08]
    ldh a, [rP1]
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
    add b
    ldh a, [rIF]
    ld a, [$fa08]
    ldh a, [$ff0b]
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$0fe8], sp
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    add b
    ldh a, [rIF]
    ld a, [$fa08]
    ldh a, [rNR13]
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    ld [$1016], sp
    ld [$17e8], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    add b
    ldh a, [$ff0e]
    ei
    ld [$f1fa], sp
    inc de
    stop
    rlca
    dec de
    stop
    ld [$101c], sp
    nop
    rlca
    ld c, $10
    ld [$1de9], sp
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    nop
    ld [$1020], sp
    add b
    ldh a, [rIF]
    ld a, [$fa08]
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$04e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1006], sp
    nop
    ld [$1007], sp
    add b
    ldh a, [rIF]
    ld a, [$fa08]
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$04e8], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    nop
    ld [$1007], sp
    add b
    adc b
    ld b, a
    ld b, a
    ld h, $00
    pop af
    ld c, d
    nop
    inc bc
    ld b, d
    nop
    add hl, bc
    call nz, Call_009_4af1
    ld [$0503], sp
    rst $38
    pop af
    ld c, d
    ld [$0405], sp
    dec b
    ld b, $ff
    pop af
    ld c, d
    ld [$0705], sp
    rst $38
    pop af
    ld c, d
    ld [$0001], sp
    ld bc, $ff02

Call_009_4af1:
    ld bc, $164b
    ld c, e
    dec hl
    ld c, e
    ld b, b
    ld c, e
    ld c, c
    ld c, e
    ld e, [hl]
    ld c, e
    ld [hl], e
    ld c, e
    adc b
    ld c, e
    ld hl, sp+$07
    ld a, [$f805]
    ld hl, sp+$01
    stop
    ld [$1002], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    db $10
    add b
    ld sp, hl
    ld b, $f9
    ld b, $f8
    ld hl, sp+$05
    stop
    ld [$1006], sp
    ld [$0800], sp
    stop
    ld hl, sp+$07
    db $10
    add b
    ld a, [$f805]
    rlca
    ld hl, sp-$08
    add hl, bc
    stop
    ld [$100a], sp
    ld [$0c00], sp
    stop
    ld hl, sp+$0b
    db $10
    add b
    db $fc
    inc bc
    inc b
    dec bc
    inc b
    db $fc
    nop
    db $10
    add b
    ld hl, sp+$07
    nop
    dec bc
    cp $f8
    ld bc, $0010
    ld [$1002], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    db $10
    add b
    ld sp, hl
    ld b, $fe
    dec bc
    db $fd
    ld hl, sp+$05
    stop
    ld [$1006], sp
    ld [$0800], sp
    stop
    ld hl, sp+$07
    db $10
    add b
    ld a, [$fc05]
    dec bc
    db $fc
    ld hl, sp+$09
    stop
    ld [$100a], sp
    ld [$0c00], sp
    stop
    ld hl, sp+$0b
    db $10
    add b
    ld sp, hl
    ld b, $fe
    dec bc
    db $fd
    ld hl, sp+$0d
    stop
    ld [$300d], sp
    ld [$0d00], sp
    ld [hl], b
    nop
    ld hl, sp+$0d
    ld d, b
    add b
    adc b
    ld b, a
    ld c, d
    inc h
    nop
    cp l
    ld c, e
    nop
    inc b
    ld b, b
    nop
    add hl, bc
    ret z

    cp l
    ld c, e
    ld [$0100], sp
    nop
    ld [bc], a
    rst $38
    cp l
    ld c, e
    inc b
    inc bc
    rst $38
    cp l
    ld c, e
    ld [$0004], sp
    rst $38
    rst $00
    ld c, e
    db $ec
    ld c, e
    ld de, $364c
    ld c, h
    ld e, e
    ld c, h
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    db $10
    inc bc
    jr nc, jr_009_4be8

    ldh a, [rSC]
    ld [hl], b
    nop
    ld [$5001], sp
    nop

jr_009_4be8:
    ld [$5002], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f1], sp
    inc b
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07f0], sp
    stop
    db $10
    rlca
    jr nc, jr_009_4c0d

    ldh a, [rTMA]
    ld [hl], b
    nop
    ld [$5005], sp
    nop

jr_009_4c0d:
    ld [$5006], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f3], sp
    ld [$0010], sp
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0bf0], sp
    stop
    db $10
    dec bc
    jr nc, jr_009_4c32

    ldh a, [$ff0a]
    ld [hl], b
    nop
    ld [$5009], sp
    nop

jr_009_4c32:
    ld [$500a], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f4f2], sp
    inc c
    stop
    ld [$100d], sp
    nop
    ld [$300c], sp
    ld [$0ef0], sp
    stop
    db $10
    ld c, $30
    ld [$0cf0], sp
    ld d, b
    nop
    ld [$500d], sp
    nop
    ld [$700c], sp
    add b
    ld hl, sp+$07
    ld sp, hl
    ld [$f8fb], sp
    nop
    stop
    ld [$1002], sp
    ld [$02f8], sp
    ld [hl], b
    nop
    ld [$5002], sp
    add b
    add b
    db $fc
    add b
    ei
    xor e

jr_009_4c75:
    db $fd
    jr nc, jr_009_4c75

    ldh [$fffe], a
    or b
    ei
    db $f4
    dec bc
    db $e4
    ld [$0af4], sp
    ldh a, [c]
    ld [$f8f6], sp
    ld a, [bc]
    ld hl, sp-$0a
    ldh a, [$ff0a]
    ldh a, [$ffb4]
    nop
    ldh a, [rP1]
    ld l, b
    ld bc, $01e0
    dec de
    ld l, a
    or e
    rst $00
    jp nc, Jump_000_0708

    inc de
    inc bc
    ld h, l
    rst $18
    ld b, b

Jump_009_4ca0:
    ld a, b
    dec b
    jr z, jr_009_4ce4

    dec b
    jr z, jr_009_4cb0

    dec b
    jp z, Jump_009_4d28

    dec b
    ret z

    or a
    jr z, jr_009_4cb6

jr_009_4cb0:
    call Call_009_425d
    ld b, $00
    ret


jr_009_4cb6:
    ld d, $f8
    call Call_009_410c
    call Call_000_025e
    call Call_009_7b69
    call Call_000_015c
    xor a
    ld [$ca03], a
    ld [$ca04], a
    ld [$ca0c], a
    ld b, a
    ld a, $32
    add c
    ld l, a
    ld [hl], b
    add $04
    ld l, a
    ld [hl], b
    inc hl
    ld [hl], b
    add $02
    ld l, a
    ld [hl], b
    ld de, $526a
    jp Jump_000_01dd


jr_009_4ce4:
    ld a, [$deaf]
    and $27
    jp nz, Jump_009_4d28

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jp z, Jump_009_4d79

    dec a
    jp z, Jump_009_4eb9

    dec a
    jp z, Jump_009_4fb0

    ld a, b
    or a
    jr z, jr_009_4d2e

    dec a
    jr z, jr_009_4d38

    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_009_4d0c:
    ld a, [$d740]
    bit 1, a
    jr z, jr_009_4d19

    ld a, $38
    add c
    ld l, a
    ld [hl], $01

jr_009_4d19:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr c, jr_009_4d25

    call Call_009_427c

jr_009_4d25:
    call Call_000_025e

Jump_009_4d28:
    call Call_009_7be0
    ld b, $01
    ret


jr_009_4d2e:
    ld b, $03
    ld l, $00
    ld de, $4c7c
    jp Jump_009_7c0e


jr_009_4d38:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_4d69

    dec a
    jr z, jr_009_4d73

    ld de, $523c
    call Call_009_40f2
    jp nc, Jump_009_7c35

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    add $f8
    ld l, a
    ld a, [hl]
    ld [$ca06], a
    ld b, $80
    call Call_009_50b0

Jump_009_4d61:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_7c35


jr_009_4d69:
    ld a, [$ca03]
    or a
    jp nz, Jump_009_7c35

    jp Jump_009_4d61


jr_009_4d73:
    ld de, $5244
    jp Jump_009_7c3b


Jump_009_4d79:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_4dd4

    dec a
    jr z, jr_009_4df6

    dec a
    jp z, Jump_009_4e16

    dec a
    jp z, Jump_009_4ea9

    ld a, [$ca0c]
    or a
    jr nz, jr_009_4d99

    inc a
    ld [$ca0c], a
    call Call_009_425d

jr_009_4d99:
    ld de, $5251
    call Call_009_40f2
    jr c, jr_009_4dba

    ld a, [$ca03]
    or a
    jp nz, Jump_009_4d0c

    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jp nz, Jump_009_4d0c

    ld b, $00
    call Call_009_50b0
    jp Jump_009_4d0c


jr_009_4dba:
    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $04
    ld de, $4c70
    call Call_009_7977
    call Call_009_796f

Jump_009_4dcc:
jr_009_4dcc:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_4d0c


jr_009_4dd4:
    ld de, $4c7c
    call Call_009_7a6d
    bit 0, a
    jp z, Jump_009_4d0c

    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    add $f6
    ld l, a
    ld a, [hl]
    ld [$ca04], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_009_4dcc

jr_009_4df6:
    ld a, [$ca03]
    or a
    jp nz, Jump_009_4d0c

    ld b, $00
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_009_4e09

    ld b, $a0

jr_009_4e09:
    ld a, b
    ld [$ca04], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    jp Jump_009_4dcc


Jump_009_4e16:
    ld de, $5258
    call Call_009_40f2
    jp nc, Jump_009_4d0c

    call Call_000_015c
    ld a, $38
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_4e38

    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    add $1b
    ld l, a
    ld [hl], $00
    jp Jump_009_4d0c


jr_009_4e38:
    ld [hl], $00
    call Call_000_0168
    cp $56
    jr nc, jr_009_4e64

    call Call_009_422b
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld de, $4c74
    call Call_009_7977
    ld de, $4c72
    call Call_009_799d
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_009_4d0c


jr_009_4e64:
    call Call_000_0168
    and $03
    ld de, $4c8c
    call Call_000_0171
    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    add $08
    ld l, a
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    add $e2
    ld l, a
    ld b, [hl]
    add $19
    ld l, a
    ld [hl], b
    call Call_009_501f
    jp Jump_009_4d0c


Jump_009_4e8e:
    call Call_009_422b
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    add $1c
    ld l, a
    ld [hl], $1e
    add $f7
    ld l, a
    ld [hl], $02
    add $08
    ld l, a
    ld [hl], $04
    jp Jump_009_4d0c


Jump_009_4ea9:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_4d0c

    add $ff
    ld l, a
    ld [hl], $00
    jp Jump_009_4d0c


Jump_009_4eb9:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_4f05

    dec a
    jr z, jr_009_4f30

    dec a
    jp z, Jump_009_4f60

    dec a
    jp z, Jump_009_4f85

    dec a
    jp z, Jump_009_4f9c

    call Call_009_7a35
    call Call_009_79e3
    xor a
    ld [$ca0b], a
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    ld a, $24
    add c
    ld l, a
    ld a, b
    bit 0, [hl]
    jr nz, jr_009_4ef1

    cp $50
    jp nc, Jump_009_4d0c

    ld b, $50
    jr jr_009_4ef8

jr_009_4ef1:
    cp $50
    jp c, Jump_009_4d0c

    ld b, $50

jr_009_4ef8:
    ld a, $0d
    add c
    ld l, a
    ld [hl], b
    add $26
    ld l, a
    ld [hl], $28
    jp Jump_009_4dcc


jr_009_4f05:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_4d0c

    ld a, [$d73a]
    or a
    jp z, Jump_009_4f1c

    ld a, $33
    add c
    ld l, a
    inc [hl]
    jp Jump_009_4d0c


Jump_009_4f1c:
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $1c
    ld l, a
    ld [hl], $3c
    ld de, $00f0
    call Call_009_423e
    jp Jump_009_4dcc


jr_009_4f30:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr z, jr_009_4f46

    ld b, $18
    bit 2, [hl]
    jr z, jr_009_4f3f

    ld b, $1b

jr_009_4f3f:
    ld a, b
    ld [$de96], a
    jp Jump_009_4d0c


jr_009_4f46:
    ld a, $1b
    ld [$de96], a
    call Call_009_7945
    ld a, $34
    add c
    ld l, a
    ld [hl], $00
    ld a, $33
    add c
    ld l, a
    ld [hl], $08
    call Call_009_51be
    jp Jump_009_4dcc


Jump_009_4f60:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_4d0c

    ld [hl], $08
    call Call_009_51be
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    cp $0f
    jp c, Jump_009_4d0c

    ld a, $33
    add c
    ld l, a
    ld [hl], $1e
    add $e4
    ld l, a
    ld [hl], $00
    jp Jump_009_4dcc


Jump_009_4f85:
    call Call_009_7945
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_4d0c

    ld de, $4c74
    call Call_009_7977
    call Call_009_796f
    jp Jump_009_4dcc


Jump_009_4f9c:
    call Call_009_7945
    call Call_009_7a35
    ld de, $4c7c
    call Call_009_7a6d
    bit 1, a
    jp z, Jump_009_4d0c

    jp Jump_009_4e8e


Jump_009_4fb0:
    ld de, $525d
    call Call_000_015f
    ld a, $31
    add c
    ld l, a
    ld b, [hl]
    add $e7
    ld l, a
    ld a, [hl]
    cp b
    jr nz, jr_009_4fe7

    ld a, $36
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_4fcf

    inc hl
    ld a, [hl]
    or a
    jr z, jr_009_4fef

    dec [hl]

jr_009_4fcf:
    ld b, $01
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    sub [hl]
    bit 7, a
    jr nz, jr_009_4fdf

    ld b, $ff

jr_009_4fdf:
    ld e, b
    ld d, $00
    call Call_009_4114
    jr jr_009_5002

jr_009_4fe7:
    ld a, $36
    add c
    ld l, a
    ld a, $00
    ld [hl+], a
    ld [hl], a

jr_009_4fef:
    ld a, $19
    add c
    ld l, a
    ld [hl], $40
    add $01
    ld l, a
    ld [hl], $03
    ld a, $1b
    ld [$de96], a
    jp Jump_009_4e8e


jr_009_5002:
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    srl a
    srl a
    and $03
    add $94
    ld e, a
    ld a, $4c
    adc $00
    ld d, a
    ld a, [de]
    ld [$de96], a
    call Call_009_501f
    jp Jump_009_4d0c


Call_009_501f:
    ld a, [$de9b]
    cp $09
    jr nz, jr_009_5032

    ld a, $19
    add c
    ld l, a
    ld [hl], $40
    add $01
    ld l, a
    ld [hl], $03
    ret


jr_009_5032:
    ld a, $19
    add c
    ld l, a
    ld [hl], $41
    add $01
    ld l, a
    ld [hl], $06
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$ca05], a
    inc hl
    ld a, [hl]
    ld [$ca06], a
    ld l, c
    push hl
    ld c, $3b

jr_009_504e:
    ld h, $c2
    ld a, c
    ld [$c2bd], a
    ld a, h
    ld [$c2be], a
    ld l, c
    ld a, [hl]
    or a
    jr z, jr_009_5060

    call Call_009_506d

jr_009_5060:
    ld a, [$c2bd]
    add $20
    ld c, a
    cp $bb
    jr c, jr_009_504e

    pop hl
    ld c, l
    ret


Call_009_506d:
    ld l, c
    push hl
    ld a, [$ca05]
    ldh [$ff8a], a
    ld a, [$ca06]
    ldh [$ff8b], a
    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    call Call_000_0252
    ld de, $0300
    ld hl, $ca07
    call Call_000_024c
    pop hl
    ld c, l
    ld de, $ca07
    ld a, $02
    add c
    ld l, a
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    inc hl
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    inc hl
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    inc hl
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld a, $00
    add c
    ld l, a
    set 6, [hl]
    ret


Call_009_50b0:
    ld l, c
    push hl
    ld de, $4c84
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or b
    ld b, a
    bit 7, a
    jr z, jr_009_50c3

    ld de, $4c88

jr_009_50c3:
    ld a, $19
    ld [$cc00], a
    ld a, $52
    ld [$cc01], a
    call Call_009_407d
    jr c, jr_009_50e6

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    ld a, [$ca03]
    inc a
    ld [$ca03], a
    call Call_009_50fb
    xor a
    pop hl
    ld c, l
    ret


jr_009_50e6:
    scf
    pop hl
    ld c, l
    ret


    dec b
    jr z, jr_009_5132

    dec b
    jp nz, Jump_009_5198

Jump_009_50f1:
jr_009_50f1:
    ld a, [$ca03]
    dec a
    ld [$ca03], a
    ld b, $00
    ret


Call_009_50fb:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $08
    ld l, a
    ld [hl], b
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    ld a, $24
    add c
    ld l, a
    ld a, b
    and $01
    ld [hl], a
    bit 7, b
    jr nz, jr_009_5126

    ld de, $4c78
    call Call_009_7977
    ld de, $4c76
    call Call_009_799d
    jp Jump_000_015c


jr_009_5126:
    call Call_009_7967
    ld de, $4c7a
    call Call_009_799d
    jp Jump_000_015c


jr_009_5132:
    ld a, [$ccc2]
    or a
    jr nz, jr_009_50f1

    ld a, [$deaf]
    and $27
    jp nz, Jump_009_5198

    ld a, $08
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_009_516d

    ld de, $5264
    call Call_000_015f
    call Call_009_519f
    ld de, $4c80
    call Call_009_79e3
    ld a, $0d
    add c
    ld l, a
    ld a, [$ca04]
    sub [hl]
    bit 7, a
    jr z, jr_009_5166

    xor $ff
    inc a

jr_009_5166:
    cp $10
    jp c, Jump_009_50f1

    jr jr_009_5198

jr_009_516d:
    ld de, $5264
    call Call_000_015f
    call Call_009_7a35
    ld de, $4c80
    call Call_009_79d1
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_009_5198

    ld a, $0f
    add c
    ld l, a
    ld a, [$ca06]
    sub [hl]
    bit 7, a
    jr z, jr_009_5193

    xor $ff
    inc a

jr_009_5193:
    cp $10
    jp c, Jump_009_50f1

Jump_009_5198:
jr_009_5198:
    call Call_009_7ab6
    ret nz

    jp Jump_009_50f1


Call_009_519f:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $10
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    bit 7, a
    jr nz, jr_009_51ba

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_009_51ba

    ld de, $0350

jr_009_51ba:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_009_51be:
    ld l, c
    push hl
    ld a, $00
    ld [$cddb], a
    ld a, $04
    ld [$cddc], a
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    add a
    ld b, a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or b
    add $fb
    ld e, a
    ld a, $51
    adc $00
    ld d, a
    ld a, [de]
    dec a
    push af
    ld b, $15
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    pop af
    ld l, $02
    call Call_000_0159
    pop hl
    ld c, l
    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    ret


    ld a, [bc]
    ld [$070b], sp
    inc c
    ld b, $0d
    dec b
    ld c, $04
    rrca
    inc bc
    db $10
    ld [bc], a
    ld bc, $0201
    db $10
    inc bc
    rrca
    inc b
    ld c, $05
    dec c
    ld b, $0c
    rlca
    dec bc
    ld [$ea0a], sp
    ld d, b
    ld b, a
    dec h
    nop
    ld l, d
    ld d, d
    ld a, [bc]
    ld bc, $0442
    add hl, bc
    add $6a
    ld d, d
    ld [$0303], sp
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $ff
    ld l, d
    ld d, d
    ld [$0303], sp
    inc bc
    inc bc
    rst $38
    ld l, d
    ld d, d
    ld [$0303], sp
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $ff
    ld l, d
    ld d, d
    db $10
    inc bc
    inc bc
    dec b
    rst $38
    ld l, d
    ld d, d
    inc d
    inc bc
    rst $38
    ld l, d
    ld d, d
    inc b
    rlca
    ld [$ff09], sp
    ld l, d
    ld d, d
    ld [$0b0a], sp
    rst $38
    add d
    ld d, d
    bit 2, d
    jr jr_009_52c3

    ld c, l
    ld d, e
    add d
    ld d, e
    jp $0c53


    ld d, h
    ld d, l
    ld d, h
    sub [hl]
    ld d, h
    rst $10
    ld d, h
    jr @+$57

    dec [hl]
    ld d, l
    db $f4
    dec bc
    db $e4
    ld [$f7e2], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f5], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$05f0], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
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
    ld [$0ffa], sp
    stop

jr_009_52c3:
    ld [$1010], sp
    ld [$0806], a
    db $10
    add b
    db $f4
    dec bc
    db $e4
    ld [$f7e2], sp
    nop
    stop
    ld [$1001], sp
    ld [$4af3], sp
    stop
    ld [$104b], sp
    nop
    ld [$104c], sp
    ld [$4ff0], sp
    stop
    ld [$1050], sp
    nop
    ld [$1051], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$0cf2], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$0ffa], sp
    stop
    ld [$1010], sp
    pop hl
    inc b
    ld c, l
    stop
    ld [$104e], sp
    add b
    db $f4
    dec bc
    db $ec
    ld [$f6ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$1ef5], sp
    stop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$21f0], sp
    stop
    ld [$1022], sp
    nop
    ld [$1023], sp
    ld [$24f0], sp
    stop
    ld [$1025], sp
    nop
    ld [$1026], sp
    nop
    ld [$1027], sp
    add b
    db $f4
    dec bc
    db $ec
    ld [$f6ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f5], sp
    stop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$28f0], sp
    stop
    ld [$1029], sp
    nop
    ld [$102a], sp
    ld [$2bf0], sp
    stop
    ld [$102c], sp
    nop
    ld [$102d], sp
    nop
    ld [$1027], sp
    add b
    db $f4
    dec bc
    db $f4
    ld [$04ec], sp
    ld l, $10
    ld [$2fec], sp
    stop
    ld [$1030], sp
    nop
    ld [$1031], sp
    nop
    ld [$1032], sp
    ld [$33e0], sp
    stop
    ld [$1034], sp
    nop
    ld [$1035], sp
    nop
    ld [$1036], sp
    nop
    ld [$1037], sp
    ld [$38e0], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    ld [$103b], sp
    nop
    ld [$103c], sp
    add b
    di
    ld a, [bc]
    add sp, $08
    and $ed
    dec a
    stop
    add hl, bc
    nop
    stop
    ld [$1001], sp
    ld [$3eed], sp
    stop
    ld [$103f], sp
    nop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$40f0], sp
    stop
    ld [$1041], sp
    nop
    ld [$1042], sp
    ld [$43f0], sp
    stop
    ld [$1044], sp
    nop
    ld [$1045], sp
    ld [$47f0], sp
    stop
    ld [$1048], sp
    nop
    ld [$1049], sp
    db $fc
    ld [$1046], sp
    add b
    ld sp, hl
    db $10
    rst $20
    ld [$fee5], sp
    nop
    stop
    ld [$1001], sp
    ld [$4af3], sp
    stop
    ld [$104b], sp
    nop
    ld [$104c], sp
    ld [$4ff0], sp
    stop
    ld [$1050], sp
    nop
    ld [$1051], sp
    ld [$53f0], sp
    stop
    ld [$1054], sp
    nop
    ld [$1055], sp
    ld [$56f0], sp
    stop
    ld [$1057], sp
    nop
    ld [$1058], sp
    jp hl


    ld [$104d], sp
    nop
    ld [$104e], sp
    inc d
    ret c

    ld d, d
    db $10
    add b
    ldh a, [rTAC]
    db $ec
    ld [$f6ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$59ee], sp
    stop
    ld [$105a], sp
    nop
    ld [$105b], sp
    nop
    ld [$105c], sp
    ld [$5de8], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    nop
    ld [$1060], sp
    ld [$61e8], sp
    stop
    ld [$1062], sp
    nop
    ld [$1063], sp
    nop
    ld [$1064], sp
    nop
    ld [$1065], sp
    add b
    ldh a, [rTAC]
    db $ec
    ld [$f6ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$66ee], sp
    stop
    ld [$1067], sp
    nop
    ld [$105b], sp
    nop
    ld [$105c], sp
    ld [$68e8], sp
    stop
    ld [$1069], sp
    nop
    ld [$105f], sp
    nop
    ld [$1060], sp
    ld [$6ae8], sp
    stop
    ld [$106b], sp
    nop
    ld [$1063], sp
    nop
    ld [$1064], sp
    nop
    ld [$1065], sp
    add b
    ldh a, [rTAC]
    db $ec
    ld [$f6ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$6cee], sp
    stop
    ld [$106d], sp
    nop
    ld [$105b], sp
    nop
    ld [$105c], sp
    ld [$14e8], sp
    stop
    ld [$1015], sp
    nop
    ld [$105f], sp
    nop
    ld [$1060], sp
    ld [$16e8], sp
    stop
    ld [$1017], sp
    nop
    ld [$1063], sp
    nop
    ld [$1064], sp
    nop
    ld [$1065], sp
    add b
    db $f4
    ld a, [bc]
    or $05
    or $f4
    jr jr_009_5530

    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    ld [$1bf0], sp
    stop
    ld [$101c], sp

jr_009_5530:
    nop
    ld [$101d], sp
    add b
    db $f4
    ld a, [bc]
    or $05
    or $f4
    ld a, [de]
    jr nc, jr_009_553e

jr_009_553e:
    ld [$3019], sp
    nop
    ld [$3018], sp
    ld [$1df0], sp
    jr nc, jr_009_554a

jr_009_554a:
    ld [$301c], sp
    nop
    ld [$301b], sp
    add b
    add b
    db $fd
    nop
    db $fd
    add b
    ei
    add b
    cp $b0
    cp $ec
    ld [bc], a
    inc d
    ld [bc], a
    db $ec
    or $14
    or $f4
    cp $0c
    cp $f1
    dec bc
    pop af
    ld [$08d1], sp
    rlca
    inc de
    inc bc
    ld b, l
    rst $18
    nop

Jump_009_5574:
    ld a, b
    dec b
    jr z, jr_009_55a0

    dec b
    jr z, jr_009_5584

    dec b
    jp z, Jump_009_55c4

    dec b
    ret z

    or a
    jr z, jr_009_5587

jr_009_5584:
    ld b, $00
    ret


jr_009_5587:
    ld d, $f8
    call Call_009_410c
    call Call_000_025e
    call Call_009_7b69
    ld a, $00
    ld [$ca00], a
    call Call_000_015c
    ld de, $5965
    jp Jump_000_01dd


jr_009_55a0:
    ld a, [$deaf]
    and $27
    jp nz, Jump_009_55c4

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_009_55da

    dec a
    jp z, Jump_009_565b

    dec a
    jp z, Jump_009_571e

    ld a, b
    or a
    jr z, jr_009_55ca

    dec a
    jr z, jr_009_55d4

Jump_009_55c1:
jr_009_55c1:
    call Call_000_025e

Jump_009_55c4:
    call Call_009_7be0
    ld b, $01
    ret


jr_009_55ca:
    ld b, $00
    ld l, $04
    ld de, $5568
    jp Jump_009_7c0e


jr_009_55d4:
    ld de, $590a
    jp Jump_009_7c3b


jr_009_55da:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_5617

    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1d
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $28
    jp c, Jump_009_55c1

    ld [hl], $10
    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    add $1e
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_009_560f

    call Call_000_0168
    and $01
    inc a
    ld b, a
    ld a, $35
    add c
    ld l, a
    ld [hl], b
    dec b
    ld a, b

jr_009_560f:
    and $01
    call Call_009_578d
    jp Jump_009_566e


jr_009_5617:
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_55c1

    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $02
    jr nc, jr_009_5631

    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    jp Jump_009_55c1


jr_009_5631:
    ld de, $5554
    call Call_009_7977
    call Call_009_796f
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1d
    ld l, a
    ld [hl], $5a
    add $ff
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $00
    add $f5
    ld l, a
    inc [hl]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_009_55c1


Jump_009_565b:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_5676

    dec b
    jr z, jr_009_5697

    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_55c1

Jump_009_566e:
jr_009_566e:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_55c1


jr_009_5676:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_009_568a

    ld de, $5932
    call Call_009_40f2
    jp nc, Jump_009_55c1

    call Call_000_015c

jr_009_568a:
    ld a, $1a
    add c
    ld l, a
    ld [hl], $03
    add $ff
    ld l, a
    ld [hl], $46
    jr jr_009_566e

jr_009_5697:
    ld de, $5938
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_009_56a5

    ld de, $593e

jr_009_56a5:
    call Call_000_015f
    ld de, $5568
    call Call_009_7a6d
    bit 0, a
    jp z, Jump_009_55c1

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $1a
    add c
    ld l, a
    ld [hl], $03
    add $ff
    ld l, a
    ld [hl], $00
    add $1a
    ld l, a
    ld a, [hl]
    inc [hl]
    or a
    jr z, jr_009_56d4

    dec a
    jr z, jr_009_56ea

    dec a
    jr z, jr_009_5700

jr_009_56d4:
    ld de, $5556
    call Call_009_7977
    ld de, $5558
    call Call_009_799d
    ld a, $34
    add c
    ld l, a
    ld [hl], $1e
    ld b, $00
    jr jr_009_5711

jr_009_56ea:
    ld de, $5556
    call Call_009_7977
    ld de, $555a
    call Call_009_799d
    ld a, $34
    add c
    ld l, a
    ld [hl], $06
    ld b, $06
    jr jr_009_5711

jr_009_5700:
    ld a, $34
    add c
    ld l, a
    ld [hl], $08
    add $f6
    ld l, a
    inc [hl]
    add $09
    ld l, a
    ld [hl], $00
    ld b, $06

jr_009_5711:
    ld a, $17
    add c
    ld l, a
    ld [hl], b
    add $1b
    ld l, a
    ld [hl], $00
    jp Jump_009_55c1


Jump_009_571e:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_573c

    dec b
    jr z, jr_009_5764

    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_55c1

    add $e3
    ld l, a
    ld [hl], $07
    call Call_009_57c1
    jp Jump_009_566e


jr_009_573c:
    ld de, $595b
    call Call_009_40f2
    jp nc, Jump_009_55c1

    call Call_000_015c
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    cp $03
    jp nc, Jump_009_5758

    call Call_009_57c1
    jp Jump_009_55c1


Jump_009_5758:
    call Call_009_795d
    ld a, $17
    add c
    ld l, a
    ld [hl], $04
    jp Jump_009_566e


jr_009_5764:
    call Call_009_7a35
    ld de, $5568
    call Call_009_7a6d
    bit 1, a
    jp z, Jump_009_55c1

    call Call_009_795d
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $ed
    ld l, a
    ld [hl], $00
    add $1b
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    jp Jump_009_55c1


Call_009_578d:
    ld l, c
    push hl
    ld b, a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld de, $555c
    bit 0, b
    jr z, jr_009_579f

    ld de, $5560

Jump_009_579f:
jr_009_579f:
    ld b, a
    ld a, $f3
    ld [$cc00], a
    ld a, $58
    ld [$cc01], a
    call Call_009_407d
    jr c, jr_009_57bd

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_009_57e7
    xor a
    pop hl
    ld c, l
    ret


jr_009_57bd:
    scf
    pop hl
    ld c, l
    ret


Call_009_57c1:
    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or $80
    ld de, $5564
    jp Jump_009_579f


    dec b
    jp z, Jump_009_5861

    dec b
    jp nz, Jump_009_58d5

Jump_009_57dd:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_009_57e7:
    ld b, $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $08
    ld l, a
    ld [hl], b
    add $d6
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    bit 7, b
    jr z, jr_009_584f

    ld a, $33
    add c
    ld l, a
    ld [hl], $10
    add $e4
    ld l, a
    ld [hl], $0e
    call Call_000_024f
    ld a, $36
    add c
    ld l, a
    dec b
    ld [hl], b
    inc b
    add $ee
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_009_5828

    ld a, b
    cp $09
    jr c, jr_009_5831

    cp $0d
    jr c, jr_009_5837

    ld b, $0c
    jr jr_009_5837

jr_009_5828:
    ld a, b
    cp $06
    jr c, jr_009_5835

    cp $0a
    jr c, jr_009_5837

jr_009_5831:
    ld b, $09
    jr jr_009_5837

jr_009_5835:
    ld b, $06

jr_009_5837:
    ld a, $36
    add c
    ld l, a
    dec b
    ld [hl], b
    inc b
    ld de, $0320
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jr jr_009_5858

jr_009_584f:
    ld de, $5552
    call Call_009_7977
    call Call_009_796f

jr_009_5858:
    ld a, $34
    add c
    ld l, a
    ld [hl], $06
    jp Jump_000_015c


Jump_009_5861:
    ld a, [$ccc2]
    or a
    jp nz, Jump_009_57dd

    ld a, [$deaf]
    and $27
    jp nz, Jump_009_58d5

    ld a, $08
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_009_587d

    ld de, $5944
    jr jr_009_58cf

jr_009_587d:
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_5889

    ld [hl], $06
    call Call_009_58dc

jr_009_5889:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_009_58c7

    dec [hl]
    jr nz, jr_009_58cc

    call Call_000_024f
    dec b
    ld a, $36
    add c
    ld l, a
    ld e, [hl]
    ld a, b
    sub e
    and $0f
    jr z, jr_009_58ab

    cp $08
    jr nc, jr_009_58aa

    inc e
    jr jr_009_58ab

jr_009_58aa:
    dec e

jr_009_58ab:
    ld a, e
    and $0f
    ld b, a
    ld a, $36
    add c
    ld l, a
    ld [hl], b
    inc b
    ld de, $0320
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    call Call_000_015c

jr_009_58c7:
    ld de, $5953
    jr jr_009_58cf

jr_009_58cc:
    ld de, $594b

jr_009_58cf:
    call Call_000_015f
    call Call_009_79e3

Jump_009_58d5:
    call Call_009_7ab6
    ret nz

    jp Jump_009_57dd


Call_009_58dc:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld e, a
    inc hl
    ld a, [hl]
    add $fe
    ld d, a
    push bc
    push hl
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    pop bc
    ret


    push de
    ld d, a
    ld b, a
    and l
    nop
    ld h, l
    ld e, c
    inc c
    ld bc, $0244
    add hl, bc
    call nz, Call_009_5965
    ld [$ff04], sp
    ld h, l
    ld e, c
    ld [$ff00], sp
    ld h, l
    ld e, c
    inc b
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
    ld [bc], a
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
    inc bc
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
    rst $38
    ld h, l
    ld e, c
    inc b
    nop
    ld bc, $65ff
    ld e, c
    ld b, $08
    add hl, bc
    rst $38
    ld h, l
    ld e, c
    ld b, $0a
    dec bc
    rst $38
    ld h, l
    ld e, c
    inc b
    inc c
    inc c
    dec c
    rst $38
    ld h, l
    ld e, c
    ld b, $0e
    rrca
    db $10
    rrca
    rst $38
    ld h, l
    ld e, c
    inc bc
    ld c, $0f
    db $10
    rrca
    rst $38
    ld h, l
    ld e, c
    rrca
    rlca
    ld b, $06
    ld b, $06
    ld b, $ff

Call_009_5965:
    add a
    ld e, c
    ret z

    ld e, c
    db $fd
    ld e, c
    ld a, $5a
    ld a, a
    ld e, d
    ret z

    ld e, d
    dec c
    ld e, e
    ld b, [hl]
    ld e, e
    ld a, a
    ld e, e
    xor h
    ld e, e
    reti


    ld e, e
    ld [de], a
    ld e, h
    ld c, e
    ld e, h
    ld h, b
    ld e, h
    ld [hl], l
    ld e, h
    adc d
    ld e, h
    sbc a
    ld e, h
    db $fc
    dec bc
    pop af
    ld [$fcea], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f4], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06e0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    rst $28
    ld b, $f9
    ld [$eff2], sp
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12ec], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$16e8], sp
    stop
    ld [$1017], sp
    nop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    add b
    rst $28
    ld b, $f1
    ld [$ebea], sp
    dec de
    stop
    ld [$101c], sp
    ld [$1df8], sp
    stop
    ld [$101e], sp
    ld [$1ff8], sp
    stop
    ld [$1020], sp
    ld [$21f8], sp
    stop
    ld [$1022], sp
    add sp, $0f
    inc hl
    db $10
    ld [$2400], sp
    db $10
    ld [$25f9], sp
    stop
    ld [$1026], sp
    ld [$27f8], sp
    stop
    ld [$1028], sp
    nop
    ld [$101a], sp
    add b
    rst $28
    ld b, $f1
    ld [$ebeb], sp
    dec de
    stop
    ld [$101c], sp
    ld [$1df8], sp
    stop
    ld [$101e], sp
    ld [$1ff8], sp
    stop
    ld [$1020], sp
    rlca
    ld hl, sp+$21
    stop
    ld [$1022], sp
    add sp, $0f
    inc hl
    db $10
    ld [$2400], sp
    db $10
    ld [$25f9], sp
    stop
    ld [$1026], sp
    ld [$27f8], sp
    stop
    ld [$1028], sp
    nop
    ld [$101a], sp
    add b
    ld hl, sp+$07
    push hl
    inc b
    ldh [c], a
    ldh a, [$ff29]
    stop
    ld [$1000], sp
    nop
    ld [$1001], sp
    nop
    ld [$3029], sp
    ld [$2ae8], sp
    stop
    ld [$102b], sp
    nop
    ld [$102c], sp
    nop
    ld [$302a], sp
    ld [$2de8], sp
    stop
    ld [$102e], sp
    nop
    ld [$102f], sp
    nop
    ld [$1030], sp
    ld [$31e8], sp
    stop
    ld [$1032], sp
    nop
    ld [$1033], sp
    ld [$34f6], sp
    stop
    ld [$1035], sp
    add b
    ldh a, [c]
    add hl, bc
    pop af
    ld [$f4ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$36ea], sp
    stop
    ld [$1037], sp
    nop
    ld [$1038], sp
    nop
    ld [$1039], sp
    nop
    ld [$103a], sp
    ld [$3be0], sp
    stop
    ld [$103c], sp
    nop
    ld [$103d], sp
    nop
    ld [$103e], sp
    nop
    ld [$103f], sp
    ld [$0ee9], sp
    jr nc, jr_009_5b01

jr_009_5b01:
    ld [$300d], sp
    nop
    rlca
    ld b, b
    stop
    ld [$1041], sp
    add b
    db $fc
    dec bc
    pop af
    ld [$08e6], sp
    ld b, d
    db $10
    ld [$43f0], sp
    stop
    ld [$1044], sp
    nop
    ld [$1045], sp
    ld [$46e8], sp
    stop
    ld [$1047], sp
    nop
    ld [$1048], sp
    nop
    ld [$1049], sp
    ld [$4af0], sp
    stop
    ld [$104b], sp
    nop
    ld [$104c], sp
    ld [$4df3], sp
    stop
    dec c
    ld c, [hl]
    db $10
    add b
    db $fc
    dec bc
    pop af
    ld [$08e6], sp
    ld b, d
    db $10
    ld [$43f0], sp
    stop
    ld [$1044], sp
    nop
    ld [$1045], sp
    ld [$46e8], sp
    stop
    ld [$104f], sp
    nop
    ld [$1048], sp
    nop
    ld [$1049], sp
    ld [$50e8], sp
    stop
    ld [$1051], sp
    nop
    ld [$1052], sp
    nop
    ld [$104c], sp
    ld [$4e00], sp
    db $10
    add b
    db $f4
    inc bc
    ld sp, hl
    ld [$f2f2], sp
    ld e, l
    ld d, b
    nop
    ld [$505e], sp
    nop
    ld [$505f], sp
    ld [$5af0], sp
    ld d, b
    nop
    ld [$505b], sp
    nop
    ld [$505c], sp
    ld [$56ee], sp
    ld d, b
    nop
    ld [$5057], sp
    nop
    ld [$5058], sp
    nop
    ld [$5059], sp
    add b
    db $f4
    inc bc
    ld sp, hl
    ld [$f2f2], sp
    ld l, b
    ld d, b
    nop
    ld [$5069], sp
    ld [$64f6], sp
    ld d, b
    nop
    ld [$5065], sp
    nop
    ld [$5066], sp
    nop
    ld [$5067], sp
    ld [$60e8], sp
    ld d, b
    nop
    ld [$5061], sp
    nop
    ld [$5062], sp
    nop
    ld [$5063], sp
    add b
    ldh a, [rTAC]
    pop af
    inc b
    xor $f0
    ld d, e
    stop
    ld [$1054], sp
    nop
    ld [$1055], sp
    ld [$56f0], sp
    stop
    ld [$1057], sp
    nop
    ld [$1058], sp
    nop
    ld [$1059], sp
    ld [$5aea], sp
    stop
    ld [$105b], sp
    nop
    ld [$105c], sp
    ld [$5df0], sp
    stop
    ld [$105e], sp
    nop
    ld [$105f], sp
    add b
    ldh a, [rTAC]
    pop af
    inc b
    xor $f0
    ld d, e
    stop
    ld [$1054], sp
    nop
    ld [$1055], sp
    ld [$60f0], sp
    stop
    ld [$1061], sp
    nop
    ld [$1062], sp
    nop
    ld [$1063], sp
    ld [$64e8], sp
    stop
    ld [$1065], sp
    nop
    ld [$1066], sp
    nop
    ld [$1067], sp
    ld [$68ea], sp
    stop
    ld [$1069], sp
    add b
    ld sp, hl
    ld b, $f7
    inc bc
    or $f8
    ld l, d
    stop
    ld [$106b], sp
    ld [$6cf8], sp
    stop
    ld [$106d], sp
    add b
    ld sp, hl
    ld b, $f7
    inc bc
    push af
    ld hl, sp+$6c
    ld d, b
    nop
    ld [$506d], sp
    ld [$6af8], sp
    ld d, b
    nop
    ld [$506b], sp
    add b
    ld sp, hl
    dec b
    rst $30
    inc bc
    or $f8
    ld l, [hl]
    stop
    rlca
    ld l, [hl]
    jr nc, jr_009_5c89

    ld sp, hl
    ld l, [hl]
    ld d, b
    nop
    rlca
    ld l, [hl]
    ld [hl], b

jr_009_5c89:
    add b
    ei
    inc bc
    ld sp, hl
    ld bc, $f8f6
    ld l, a
    stop
    rlca
    ld l, a
    jr nc, jr_009_5c9e

    ld sp, hl
    ld l, a
    ld d, b
    nop
    rlca
    ld l, a
    ld [hl], b

jr_009_5c9e:
    add b
    db $fd
    ld bc, $fffb
    ld a, [$70fc]
    db $10
    add b
    inc b
    cp $02
    db $fc
    nop
    ld [bc], a
    rst $38
    ld bc, $00fe
    ld hl, sp+$07
    jp hl


    add hl, bc
    nop
    nop
    ld a, b
    db $fc
    inc b
    ld [bc], a
    rrca
    nop
    ld h, b
    db $fc
    db $10
    db $fd
    inc b
    ld bc, $011e
    nop
    nop
    add b
    db $fd
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ret nz

    ei
    ld [bc], a
    add c
    ld bc, $0002
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0000
    nop
    ret nz

    ei
    inc b
    ld bc, $0301
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0004
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0000
    nop
    add b
    db $fd
    inc b
    ld [bc], a
    ld bc, $0000
    nop
    add b
    db $fd
    inc b
    ld [bc], a
    ld bc, $8005
    db $fc
    ld [bc], a
    inc bc
    rlca
    ld [$0b0a], sp
    rrca
    db $10
    ld hl, sp+$00
    ld [$fc00], sp
    db $db
    inc b
    db $db
    ld hl, sp+$17
    ld [$0417], sp
    inc b
    db $fc
    inc b
    push de
    ld [$1307], sp
    ld b, $45
    rst $18
    nop

Jump_009_5d28:
    ld a, b
    dec b
    jr z, jr_009_5d8d

    dec b
    jr z, jr_009_5d39

    dec b
    jp z, Jump_009_5dc2

    dec b
    jr z, jr_009_5d5e

    or a
    jr z, jr_009_5d64

jr_009_5d39:
    ld l, c
    push hl
    ld a, $00
    ld [$cca2], a
    ld de, $659c
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_009_5d4e

    ld de, $65e4

jr_009_5d4e:
    push de
    ld de, $0001
    ld bc, $0809
    pop hl
    call Call_000_0246
    pop hl
    ld c, l
    ld b, $00
    ret


jr_009_5d5e:
    ld a, $4e
    call Call_000_020a
    ret


jr_009_5d64:
    ld a, $00
    ld [$cca2], a
    ld d, $00
    call Call_009_410c
    call Call_000_025e
    call Call_009_7b69
    ld a, $00
    ld [$ca00], a
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    add $e4
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ld de, $6352
    jp Jump_000_01dd


jr_009_5d8d:
    ld a, $01
    ld [$d77f], a
    ld a, [$deaf]
    and $27
    jp nz, Jump_009_5dc2

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_009_5df1

    dec a
    jp z, Jump_009_5ec5

    dec a
    jp z, Jump_009_6036

    dec a
    jp z, Jump_009_605b

    ld a, b
    or a
    jr z, jr_009_5dc8

    dec a
    jr z, jr_009_5deb

jr_009_5db7:
    call Call_009_6333

Jump_009_5dba:
jr_009_5dba:
    ld a, $2f
    add c
    ld l, a
    inc [hl]
    call Call_000_025e

Jump_009_5dc2:
    call Call_009_7be0
    ld b, $01
    ret


jr_009_5dc8:
    ld b, $00
    ld l, $01
    ld de, $5cb2
    call Call_009_7c0e
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $01
    ret nz

    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$ca0d], a
    ld a, $36
    add c
    ld l, a
    ld [hl], $07
    jp Jump_009_5e47


jr_009_5deb:
    ld de, $6344
    jp Jump_009_7c3b


jr_009_5df1:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_5e1b

    dec b
    jr z, jr_009_5e34

    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $3c
    jr c, jr_009_5dba

    ld [hl], $00
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    call $61d7
    call Call_009_60fc
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jr jr_009_5db7

jr_009_5e1b:
    ld de, $6349
    call Call_009_40f2
    jr nc, jr_009_5db7

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_009_5e2c:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_5dba


jr_009_5e34:
    ld a, [$ca00]
    or a
    jp nz, Jump_009_5dba

    ld a, $36
    add c
    ld l, a
    ld [hl], $00
    ld a, $39
    add c
    ld l, a
    ld [hl], $0c

Jump_009_5e47:
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    add a
    add a
    add a
    add $b6
    ld e, a
    ld a, $5c
    adc $00
    ld d, a
    push hl
    ld b, $08
    ld hl, $ca05

jr_009_5e5d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_009_5e5d

    pop hl
    ld a, $34
    add c
    ld l, a
    ld a, [$ca0a]
    ld b, a
    and $7f
    ld [hl], a
    ld a, $31
    add c
    ld l, a
    ld a, b
    and $80
    ld [hl], a
    ld a, $37
    add c
    ld l, a
    ld a, [$ca0b]
    ld [hl], a
    ld a, [$ca05]
    ld b, a
    ld a, [$ca07]
    or b
    jr nz, jr_009_5e9b

    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1b
    ld l, a
    ld [hl], $02
    add $06
    ld l, a
    ld [hl], $01
    jr jr_009_5eb7

jr_009_5e9b:
    ld de, $ca05
    call Call_009_7977
    ld de, $ca07
    call Call_009_799d
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    add $1b
    ld l, a
    ld [hl], $00
    add $06
    ld l, a
    ld [hl], $08

jr_009_5eb7:
    ld a, $33
    add c
    ld l, a
    ld [hl], $01
    add $f7
    ld l, a
    ld [hl], $03
    jp Jump_009_5dba


Jump_009_5ec5:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_5ee6

    dec b
    jp z, Jump_009_5f5e

    dec b
    jp z, Jump_009_5fdb

    ld a, $38
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_5dba

    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    jp Jump_009_5e2c


jr_009_5ee6:
    call Call_009_7a35
    ld de, $5cb2
    call Call_009_7a6d
    push af
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $18
    jr nc, jr_009_5efd

    ld a, $18
    jr jr_009_5f03

jr_009_5efd:
    cp $88
    jr c, jr_009_5f04

    ld a, $88

jr_009_5f03:
    ld [hl], a

jr_009_5f04:
    pop af
    bit 1, a
    jp nz, Jump_009_5f1d

    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $90
    jp c, Jump_009_5dba

    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    jp Jump_009_5dba


Jump_009_5f1d:
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_009_5f2a

    ld [hl], $00
    jp Jump_009_5dba


jr_009_5f2a:
    call Call_009_612e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$ca0d], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    add $21
    ld l, a
    ld [hl], $08
    add $fd
    ld l, a
    ld [hl], $00
    add $fe
    ld l, a
    ld [hl], $04
    ld a, $04
    call Call_009_6320
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_009_5e2c

    call Call_009_612e
    jp Jump_009_5e2c


Jump_009_5f5e:
    ld a, $38
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_009_5f6f

    dec [hl]
    jr nz, jr_009_5f6f

    ld a, $17
    add c
    ld l, a
    ld [hl], $00

jr_009_5f6f:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr z, jr_009_5f82

    ld a, $31
    add c
    ld l, a
    bit 7, [hl]
    call nz, Call_009_6092
    jp Jump_009_5dba


jr_009_5f82:
    ld a, $33
    add c
    ld l, a
    ld [hl], $04
    add $02
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $05
    jr c, jr_009_5f9a

    ld [hl], $00
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jr z, jr_009_5fbb

jr_009_5f9a:
    ld de, $5ca8
    ld a, $09
    add c
    ld l, a
    ld b, [hl]
    ld a, $35
    add c
    ld l, a
    ld a, [hl]
    bit 2, b
    jr nz, jr_009_5fae

    ld de, $5cad

jr_009_5fae:
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    call Call_009_6320
    jp Jump_009_5dba


jr_009_5fbb:
    ld a, $00
    ld [$cca2], a
    ld a, $31
    add c
    ld l, a
    bit 7, [hl]
    call nz, Call_009_60a1
    ld a, [$ca0c]
    dec a
    jp nz, Jump_009_5e2c

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_009_5e2c


Jump_009_5fdb:
    ld a, $37
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_5dba

    add $ff
    ld l, a
    inc [hl]
    ld a, [$ca0c]
    sub $02
    jp c, Jump_009_5e47

    jr z, jr_009_5ffa

    dec a
    jr z, jr_009_600f

    dec a
    jr z, jr_009_6022

    dec a
    jr z, jr_009_600b

jr_009_5ffa:
    ld b, $04

jr_009_5ffc:
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    add $0f
    ld l, a
    ld b, [hl]
    add $fa
    ld l, a
    ld [hl], b
    jr jr_009_602d

jr_009_600b:
    ld b, $01
    jr jr_009_5ffc

jr_009_600f:
    ld b, $05
    ld a, $2a
    add c
    ld l, a
    ld [hl], b
    ld b, $03
    add $0f
    ld l, a
    ld [hl], b
    add $fa
    ld l, a
    ld [hl], b
    jr jr_009_602d

jr_009_6022:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $09
    ld l, a
    ld [hl], $00

jr_009_602d:
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    jp Jump_009_5dba


Jump_009_6036:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_5dba

    add $06
    ld l, a
    ld a, [hl]
    srl a
    cp $02
    jr nc, jr_009_604a

    ld a, $02

jr_009_604a:
    ld [hl], a
    ld b, a
    ld a, $33
    add c
    ld l, a
    ld [hl], b
    ld a, $01
    ld [$d77f], a
    ld de, $619f
    jr jr_009_606e

Jump_009_605b:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_5dba

    add $06
    ld l, a
    ld b, [hl]
    add $fa
    ld l, a
    ld [hl], b
    ld de, $61bb

jr_009_606e:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_009_60ab
    push af
    ld a, $32
    add c
    ld l, a
    inc [hl]
    pop af
    bit 7, a
    jp z, Jump_009_5dba

    ld a, $00
    ld [$d77f], a
    jp Jump_009_5e47


Call_009_6092:
    push de
    ld a, $2f
    add c
    ld l, a
    bit 2, [hl]
    jr z, jr_009_60a2

    ld e, $9f
    ld d, $61
    jr jr_009_60a6

Call_009_60a1:
    push de

jr_009_60a2:
    ld e, $9b
    ld d, $61

jr_009_60a6:
    call Call_009_60ab
    pop de
    ret


Call_009_60ab:
    ld b, $06
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $50
    jr c, jr_009_60b8

    ld b, $01

jr_009_60b8:
    ld a, b
    ldh [$ff8a], a
    call Call_009_60c9
    bit 6, a
    jr nz, jr_009_60c8

    ld a, b
    ldh [$ff8a], a
    call Call_009_60c9

jr_009_60c8:
    ret


Call_009_60c9:
    push hl
    push bc
    ld a, [de]
    ldh [$ff8b], a
    inc de
    ld a, [de]
    inc de
    push de
    add a
    ld b, a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or b
    add a
    add a
    add $57
    ld e, a
    ld a, $61
    adc $00
    ld d, a
    ld l, e
    ld h, d
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld bc, HeaderLogo
    push af
    bit 5, a
    jr nz, jr_009_60f7

    call Call_000_0246

jr_009_60f7:
    pop af
    pop de
    pop bc
    pop hl
    ret


Call_009_60fc:
    ld b, $07
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_009_6108

    ld b, $03

jr_009_6108:
    ld a, b
    ld [$ca03], a
    ld e, a
    ld a, $06
    ld [$ca04], a
    ld d, a
    ld l, c
    push hl
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_6122

    ld hl, $6167
    jr jr_009_6125

jr_009_6122:
    ld hl, $616b

jr_009_6125:
    ld bc, $0101
    call Call_000_0246
    pop hl
    ld c, l
    ret


Call_009_612e:
    ld de, $0601
    ld l, c
    push hl
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr nz, jr_009_6140

    ld hl, $6177
    jr jr_009_6143

jr_009_6140:
    ld hl, $6189

jr_009_6143:
    ld bc, $0209
    call Call_000_0246
    pop hl
    ld c, l
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $56
    jr c, jr_009_6156

    ld [hl], $56

jr_009_6156:
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
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
    add hl, bc
    add hl, bc
    ld bc, $4201
    ld [bc], a
    ld bc, $4203
    ld bc, $0302
    ld b, e
    ld bc, $0303
    ld b, h
    ld bc, $0304
    ld b, l
    ld bc, $0345
    nop
    nop
    ld b, [hl]
    inc bc
    nop
    nop
    rst $00
    inc bc
    nop
    nop
    ld b, b
    ld [bc], a
    nop
    nop
    ld b, c
    ld [bc], a
    nop
    nop
    ld b, d
    ld [bc], a
    nop
    nop
    ld b, e
    ld [bc], a
    nop
    nop
    ld b, h
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0245
    nop
    inc bc
    pop bc
    ld bc, $e569
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5d10
    ld a, $60
    ld [$cc00], a
    ld a, $65
    ld [$cc01], a
    call Call_009_407d
    jr c, jr_009_61fe

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_009_6252

jr_009_61fa:
    xor a
    pop hl
    ld c, l
    ret


jr_009_61fe:
    scf
    pop hl
    ld c, l
    ret


Call_009_6202:
    ld de, $5d08
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_009_6210

    ld de, $5d0c

jr_009_6210:
    ld b, $04

jr_009_6212:
    ld a, [de]
    inc de
    push bc
    push de
    call Call_009_621f
    pop de
    pop bc
    dec b
    jr nz, jr_009_6212

    ret


Call_009_621f:
    ld l, c
    push hl
    ld b, a
    ld de, $5d1c
    ld a, $6d
    ld [$cc00], a
    ld a, $65
    ld [$cc01], a
    call Call_009_407d
    jr c, jr_009_61fe

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_009_62e6
    jr jr_009_61fa

    ld a, b
    dec b
    jr z, jr_009_626b

    dec b
    jp nz, Jump_009_62c0

Jump_009_6248:
jr_009_6248:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_009_6252:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $db
    ld l, a
    push hl
    push bc
    ld a, $4e
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    ret


jr_009_626b:
    ld a, [$ccc2]
    or a
    jr nz, jr_009_6248

    ld a, [$deaf]
    or a
    jp nz, Jump_009_62c0

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_6298

    dec a
    jr z, jr_009_62b1

    ld a, [$ca02]
    cp $04
    jr nz, jr_009_62c0

    ld de, $5d14
    call Call_009_62c7

Jump_009_6290:
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_009_62c0


jr_009_6298:
    ld a, [$ca02]
    cp $05
    jr nz, jr_009_62c0

    ld de, $5d18
    call Call_009_62c7
    ld de, $5d06
    call Call_009_7977
    call Call_009_796f
    jp Jump_009_6290


jr_009_62b1:
    ld de, $657e
    call Call_009_7a6d
    bit 0, a
    jr z, jr_009_62c0

    call Call_009_6202
    jr jr_009_6248

Jump_009_62c0:
jr_009_62c0:
    call Call_009_7ab6
    jp z, Jump_009_6248

    ret


Call_009_62c7:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_009_62d1

    inc de
    inc de

jr_009_62d1:
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    inc hl
    ld a, [de]
    add [hl]
    ld [hl], a
    ret


Call_009_62de:
    ld a, b
    dec b
    jr z, jr_009_6308

    dec b
    jp nz, Jump_009_6319

Call_009_62e6:
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $4e
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $15
    ld l, a
    ld de, $0380
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    ret


jr_009_6308:
    ld a, [$ccc2]
    or a
    jp nz, Jump_009_6248

    ld a, [$deaf]
    or a
    jp nz, Jump_009_6319

    call Call_009_79e3

Jump_009_6319:
    call Call_009_7ab6
    jp z, Jump_009_6248

    ret


Call_009_6320:
    ld [$cca0], a
    ld b, a
    ld a, $03
    ld [$cca2], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$ca0d]
    add b
    ld [hl], a
    ret


Call_009_6333:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld [$ca02], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld [$ca01], a
    ret


    ld d, d
    ld h, e
    ld [$ff00], sp
    ld d, d
    ld h, e
    db $10
    inc bc
    inc b
    inc b
    dec b
    dec b
    rst $38
    ld e, [hl]
    ld h, e
    xor a
    ld h, e
    ld [$5964], sp
    ld h, h
    xor [hl]
    ld h, h
    inc bc
    ld h, l
    ld hl, sp+$07
    jp hl


    add hl, bc
    ldh [c], a
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ed], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07eb], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0be8], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$0fe6], sp
    stop
    ld [$1010], sp
    nop
    ld a, [bc]
    db $10
    jr nc, jr_009_63ab

jr_009_63ab:
    ld [$300f], sp
    add b
    ld hl, sp+$07
    push hl
    add hl, bc
    sbc $f0
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ed], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07eb], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$11e8], sp
    stop
    ld [$100c], sp
    nop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$14ea], sp
    stop
    ld [$1015], sp
    nop
    ld [$3014], sp
    ld [$16f0], sp
    stop
    ld [$1017], sp
    nop
    ld [$3016], sp
    add b
    ld hl, sp+$07
    db $eb
    add hl, bc
    db $e4
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ed], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07eb], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$18e8], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld b, $1d
    jr nc, jr_009_6455

jr_009_6455:
    ld [$301c], sp
    add b
    push af
    inc b
    db $ec
    add hl, bc
    push hl
    db $ed
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$1eed], sp
    stop
    ld [$1004], sp
    nop
    ld [$101f], sp
    nop
    ld [$1020], sp
    ld [$21eb], sp
    stop
    ld [$1008], sp
    nop
    ld [$1022], sp
    nop
    ld [$1023], sp
    ld [$24e8], sp
    stop
    ld [$1025], sp
    nop
    ld [$1026], sp
    nop
    ld [$1027], sp
    ld [$28e8], sp
    stop
    ld [$1029], sp
    nop
    ld [$102a], sp
    nop
    ld [$102b], sp
    nop
    ld [$102c], sp
    add b
    ld hl, sp+$07
    push hl
    add hl, bc
    ldh [c], a
    add sp, $2d
    stop
    ld [$102e], sp
    nop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$2fed], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$30eb], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$31e8], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$0fe6], sp
    stop
    ld [$1010], sp
    nop
    ld a, [bc]
    db $10
    jr nc, jr_009_64ff

jr_009_64ff:
    ld [$300f], sp
    add b
    push af
    inc b
    db $eb
    add hl, bc
    push hl
    db $ed
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03ed], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$32e3], sp
    stop
    ld [$1033], sp
    nop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$34e0], sp
    stop
    ld [$1035], sp
    nop
    ld [$1036], sp
    nop
    ld [$1037], sp
    nop
    ld [$1038], sp
    ld [$39e8], sp
    stop
    ld [$103a], sp
    nop
    ld [$103b], sp
    nop
    ld [$103c], sp
    nop
    ld [$102c], sp
    add b
    ld b, b
    ld h, d
    ld b, a
    and l
    nop
    ld a, d
    ld h, l
    nop
    inc bc
    ld b, b
    ld [bc], a
    add hl, bc
    call nz, Call_009_62de
    ld b, a
    and l
    nop
    ld a, d
    ld h, l
    ld bc, $4003
    ld [bc], a
    add hl, bc
    pop bc
    ld a, [hl]
    ld h, l
    sub e
    ld h, l
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    inc d
    stop
    ld [$3014], sp
    ld [$14f8], sp
    ld d, b
    nop
    ld [$7014], sp
    add b
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    db $fc
    dec d
    db $10
    add b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
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
    ld bc, $ff00
    ldh [$fffd], a
    ret nz

    nop
    ld a, b
    db $fc
    ld [bc], a
    ei
    ld hl, sp+$07
    db $e4
    ld [$fd9a], sp
    ldh a, [rIE]
    ret c

    nop
    jr z, jr_009_6644

jr_009_6644:
    ret c

    cp $28
    cp $d4
    ld [$1307], sp
    dec b
    ld b, l
    rst $18
    nop

Jump_009_6650:
    ld a, b
    dec b
    jr z, jr_009_66b1

    dec b
    jr z, jr_009_6661

    dec b
    jp z, Jump_009_66f8

    dec b
    jr z, jr_009_666f

    or a
    jr z, jr_009_6676

jr_009_6661:
    push hl
    ld hl, $de9c
    set 7, [hl]
    pop hl
    ld a, $00
    ld [$d76e], a
    ld b, a
    ret


jr_009_666f:
    ld a, [$c3b4]
    ld [$ca04], a
    ret


jr_009_6676:
    ld a, c
    ld [$ca06], a
    ld a, h
    ld [$ca07], a
    call Call_009_425d
    ld d, $f8
    call Call_009_410c
    call Call_000_025e
    xor a
    ld [$d1e0], a
    call Call_009_7b69
    ld a, $00
    ld [$ca03], a
    ld [$ca05], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $0d
    add $1b
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ld de, $6c22
    jp Jump_000_01dd


jr_009_66b1:
    ld a, [$deaf]
    and $27
    jp nz, Jump_009_66f8

    push hl
    ld hl, $ca0b
    inc [hl]
    pop hl
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jp z, Jump_009_68b7

    dec a
    jp z, Jump_009_69eb

    dec a
    jp z, Jump_009_6a70

    ld a, b
    or a
    jr z, jr_009_66fe

    dec a
    jp z, Jump_009_68b1

Jump_009_66da:
    ld a, [$ca03]
    or a
    jr nz, jr_009_66e5

    ld a, $00
    ld [$ca05], a

Jump_009_66e5:
jr_009_66e5:
    call Call_000_025e
    ld a, [$df0a]
    cp $19
    jr nz, jr_009_66f8

    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    ld b, $01
    ret


Jump_009_66f8:
jr_009_66f8:
    call Call_009_7be0
    ld b, $01
    ret


jr_009_66fe:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_6778

    dec b
    jp z, Jump_009_678a

    dec b
    jp z, Jump_009_6799

    dec b
    jp z, Jump_009_67ae

    dec b
    jp z, Jump_009_67df

    dec b
    jp z, Jump_009_6807

    dec b
    jp z, Jump_009_6824

    dec b
    jp z, Jump_009_6859

    ld a, [$df0a]
    cp $19
    jr nz, jr_009_6733

    call Call_009_6efe
    cp $01
    jp nz, Jump_009_6880

    jr jr_009_673a

jr_009_6733:
    ld a, [$dece]
    or a
    jp nz, Jump_009_6880

jr_009_673a:
    ld a, $ff
    ld [$d74a], a
    inc a
    ld [$d75c], a
    inc a
    ld [$de29], a
    ld [$d76e], a
    ld a, $33
    add c
    ld l, a
    ld a, [$def0]
    bit 3, a
    jr nz, jr_009_6760

    ld a, [$df0a]
    cp $19
    jr z, jr_009_6762

    ld [hl], $5a
    jr jr_009_6770

jr_009_6760:
    rst $08
    ld h, b

jr_009_6762:
    ld a, $33
    add c
    ld l, a
    ld [hl], $78
    add $ff
    ld l, a
    ld [hl], $03
    jp Jump_009_6880


Jump_009_6770:
jr_009_6770:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_6880


jr_009_6778:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_6880

    ld [hl], $3c
    ld a, $35
    call Call_009_6b17
    jp Jump_009_6770


Jump_009_678a:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_6880

    ld [hl], $78
    rst $08
    ld h, b
    jp Jump_009_6770


Jump_009_6799:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_6880

    ld [hl], $30
    call Call_009_7967
    ld de, $662c
    call Call_009_799d
    jr jr_009_6770

Jump_009_67ae:
    ld a, $33
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_009_67c7

    jr nc, jr_009_67c7

    ld l, c
    push hl
    ld a, $01
    ld b, $ff
    ld de, $662e
    call Call_009_401b
    pop hl
    ld c, l

jr_009_67c7:
    call Call_009_7a35
    ld de, $6638
    call Call_009_7a6d
    or a
    jp z, Jump_009_6880

    ld a, $17
    add c
    ld l, a
    ld [hl], $0e
    call Call_000_015c
    jr jr_009_6770

Jump_009_67df:
    ld de, $6bcc
    call Call_009_40f2
    jp nc, Jump_009_6880

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1c
    ld l, a
    ld a, [$def0]
    bit 3, a
    jr nz, jr_009_682c

    ld a, [$df0a]
    cp $19
    jr z, jr_009_682c

    ld [hl], $5a
    jp Jump_009_6770


Jump_009_6807:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_6880

    ld a, $36
    call Call_009_6b17
    ld a, [$def0]
    set 3, a
    ld [$def0], a
    ld a, $33
    add c
    ld l, a
    ld [hl], $3c
    jp Jump_009_6770


Jump_009_6824:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_6880

jr_009_682c:
    ld a, [$df0a]
    cp $19
    jr nz, jr_009_683c

    ld a, $32
    add c
    ld l, a
    ld [hl], $08
    jp Jump_009_6859


jr_009_683c:
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    add $08
    ld l, a
    ld [hl], $00
    add $f9
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$de29], a
    ld [$d76e], a
    call Call_009_689a
    jp Jump_009_6880


Jump_009_6859:
    call Call_009_6efe
    cp $08
    jr nz, jr_009_6880

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $08
    ld l, a
    ld [hl], $00
    add $e5
    ld l, a
    ld [hl], $00
    call Call_000_015c
    xor a
    ld [$de29], a
    ld [$d76e], a
    call Call_009_6883
    call Call_009_689a

Jump_009_6880:
jr_009_6880:
    jp Jump_009_7c35


Call_009_6883:
    ld l, c
    push hl
    xor a
    ld [$c3c6], a
    ld [$c3c7], a
    ld a, [$c3b5]
    ld [$c3b4], a
    ld a, $39
    call Call_000_020a
    pop hl
    ld c, l
    ret


Call_009_689a:
    ld l, c
    push hl
    xor a
    ld [$c3c8], a
    ld [$c3c9], a
    ld a, [$ca04]
    ld [$c3b4], a
    ld a, $50
    call Call_000_020a
    pop hl
    ld c, l
    ret


Jump_009_68b1:
    ld de, $6bd3
    jp Jump_009_7c3b


Jump_009_68b7:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_68dd

    dec b
    jr z, jr_009_68ef

    dec b
    jr z, jr_009_6933

    dec b
    jr z, jr_009_6947

    dec b
    jp z, Jump_009_69ca

    dec b
    jp z, Jump_009_69d5

    xor a
    ld [$d76e], a
    ld a, $33
    add c
    ld l, a
    ld [hl], $20
    jp Jump_009_693f


jr_009_68dd:
    ld a, [$df0a]
    cp $19
    jr nz, jr_009_68ec

    call Call_009_6efe
    cp $02
    jp nz, Jump_009_66e5

jr_009_68ec:
    jp Jump_009_693f


jr_009_68ef:
    ld de, $6be9
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_66e5

    ld a, [$df0a]
    cp $19
    jr z, jr_009_691b

    ld a, [$ca0a]
    or a
    jr z, jr_009_690f

    ld a, [$ca00]
    jr nz, jr_009_691b

jr_009_690f:
    call Call_000_0168
    cp $80
    jr nc, jr_009_6922

    call Call_009_74ef
    jr jr_009_6925

jr_009_691b:
    ld a, [$ca08]
    inc a
    ld [$ca08], a

jr_009_6922:
    call Call_009_6f07

jr_009_6925:
    ld a, $34
    add c
    ld l, a
    ld [hl], $3c
    ld a, $01
    ld [$ca05], a
    jp Jump_009_693f


jr_009_6933:
    ld de, $6be9
    call Call_009_40f2
    jp nc, Jump_009_66e5

    call Call_000_015c

Jump_009_693f:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_66e5


jr_009_6947:
    call Call_009_7945
    ld a, [$df0a]
    cp $19
    jr nz, jr_009_696d

    ld a, [$ca03]
    or a
    jp nz, Jump_009_66da

    ld a, [$ca08]
    cp $02
    jr c, jr_009_6987

    ld a, $32
    add c
    ld l, a
    ld [hl], $05
    add $e5
    ld l, a
    ld [hl], $00
    jp Jump_009_66da


jr_009_696d:
    ld a, [$ca0a]
    or a
    jr z, jr_009_6981

    ld a, $32
    add c
    ld l, a
    ld [hl], $06
    add $01
    ld l, a
    ld [hl], $50
    jp Jump_009_66da


jr_009_6981:
    ld a, [$ca03]
    or a
    jr nz, jr_009_6995

jr_009_6987:
    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    ld [hl], $20
    jp Jump_009_66da


jr_009_6995:
    call Call_009_40e1
    cp $40
    jp nc, Jump_009_66da

    ld de, $6632
    call Call_009_7977
    ld a, $1d
    add c
    ld l, a
    ld d, h
    ld e, l
    add $18
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld de, $6634
    call Call_009_799d
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $08
    ld l, a
    ld [hl], $00
    add $e5
    ld l, a
    ld [hl], $01
    jp Jump_009_66da


Jump_009_69ca:
    call Call_009_6efe
    cp $0f
    jp nz, Jump_009_66da

    ld b, $00
    ret


Jump_009_69d5:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr z, jr_009_6987

    ld a, [hl]
    cp $3c
    jp nc, Jump_009_66da

    ld a, [$ca00]
    or a
    jr nz, jr_009_6987

    jp Jump_009_66da


Jump_009_69eb:
    ld a, $1d
    add c
    ld l, a
    ld d, h
    ld e, l
    add $18
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_009_7a35
    ld de, $6638
    call Call_009_7a6d
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $0c
    jr nc, jr_009_6a0f

    ld [hl], $0c
    jr jr_009_6a15

jr_009_6a0f:
    cp $94
    jr c, jr_009_6a1b

    ld [hl], $94

jr_009_6a15:
    ldh a, [$ffa9]
    set 0, a
    ldh [$ffa9], a

jr_009_6a1b:
    ldh a, [$ffa9]
    bit 1, a
    jp z, Jump_009_66da

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_009_6a2f

    ld [hl], $00
    jp Jump_009_66da


jr_009_6a2f:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $88
    jr nc, jr_009_6a3c

    cp $18
    jr nc, jr_009_6a42

jr_009_6a3c:
    ldh a, [$ffa9]
    bit 0, a
    jr nz, jr_009_6a55

Jump_009_6a42:
jr_009_6a42:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $08
    ld l, a
    ld [hl], $04
    add $e5
    ld l, a
    ld [hl], $00
    jp Jump_009_66da


jr_009_6a55:
    call Call_009_7967
    ld de, $6636
    call Call_009_799d
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $13
    ld l, a
    inc [hl]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_009_66da


Jump_009_6a70:
    ld a, $32
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_6aa3

    dec b
    jr z, jr_009_6ac2

    dec b
    jr z, jr_009_6ae6

    dec b
    jp z, Jump_009_6b03

    call Call_009_7a35
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_009_6a96

    ld de, $6638
    call Call_009_7a6d
    jp Jump_009_66da


jr_009_6a96:
    call Call_009_796f
    ld a, $13
    add c
    ld l, a
    ld [hl], $c4
    add $1f
    ld l, a
    inc [hl]

jr_009_6aa3:
    ld de, $6bf1
    call Call_009_40f2
    jp nc, Jump_009_66da

    call Call_000_015c
    ld a, $33
    add c
    ld l, a
    ld [hl], $50
    add $e0
    ld l, a
    ld [hl], $c0

Jump_009_6aba:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_009_66da


jr_009_6ac2:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_009_66da

    add $e0
    ld l, a
    ld [hl], $c4
    ld b, $20
    ld a, [$d722]
    cp $50
    jr nc, jr_009_6ada

    ld b, $80

jr_009_6ada:
    ld a, $0d
    add c
    ld l, a
    ld [hl], b
    inc hl
    inc hl
    ld [hl], $20
    jp Jump_009_6aba


jr_009_6ae6:
    call Call_009_7945
    ld de, $6c16
    call Call_009_40f2
    jp nc, Jump_009_66da

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $fc
    ld l, a
    ld [hl], $45
    jp Jump_009_6aba


Jump_009_6b03:
    call Call_009_7945
    call Call_009_7a35
    ld de, $6638
    call Call_009_7a6d
    bit 1, a
    jp z, Jump_009_66da

    jp Jump_009_6a42


Call_009_6b17:
    ld l, c
    push hl
    push af
    call Call_009_6b4a
    pop af
    ld d, a
    xor a
    ld [$cf7d], a
    ld a, $00
    ld [$cf7e], a
    ld a, d
    inc a
    ld [$cf7b], a
    ld a, $03
    ld [$cf7c], a
    ld de, $6b9a
    ld hl, $cf7f
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $09
    call Call_000_02d3
    call Call_009_6b4f
    call Call_009_6883
    pop hl
    ld c, l
    ret


Call_009_6b4a:
    ld de, $6b5e
    jr jr_009_6b52

Call_009_6b4f:
    ld de, $6b7c

jr_009_6b52:
    push de
    pop hl
    ld de, $0000
    ld bc, $030a
    call Call_000_0246
    ret


    jr jr_009_6b79

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec e
    ld e, $1f

Call_009_6b74:
    rra
    rra
    rra
    rra
    rra

jr_009_6b79:
    rra
    rra
    jr nz, @+$12

    nop
    ld d, $00
    ld c, $00
    rla
    ld d, $0f
    ld d, $15
    ld c, $0f
    inc de
    db $10
    ld [de], a
    ld d, $10
    rla
    dec d
    nop
    rla
    ld c, $11
    dec c
    ld c, $0f
    nop
    rrca
    ld c, $c5
    push de
    push hl
    ld a, [$ca06]
    ld c, a
    ld a, [$ca07]
    ld h, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc hl
    ld a, [hl]
    ldh [$ff9c], a
    xor a
    ldh [$ffab], a
    ld [$d3ea], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    ld bc, $6c46
    call Call_000_0210
    pop hl
    pop de
    pop bc
    ret


    ld [hl+], a
    ld l, h
    inc b
    ld c, $0f
    dec c
    rst $38
    ld [hl+], a
    ld l, h
    ld [$0000], sp
    nop
    nop
    nop
    nop
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
    rst $38
    ld [hl+], a
    ld l, h
    stop
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    ld [hl+], a
    ld l, h
    inc bc
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    add hl, bc
    dec bc
    add hl, bc
    rst $38
    ld [hl+], a
    ld l, h
    db $10
    dec c
    rst $38
    ld [hl+], a
    ld l, h
    db $10
    ld c, $ff
    ld [hl+], a
    ld l, h
    db $10
    rrca
    rst $38
    ld [hl+], a
    ld l, h
    inc bc
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    rst $38
    ld b, d
    ld l, h
    sub e
    ld l, h
    ldh [$ff6c], a
    ld hl, $766d
    ld l, l
    adc e
    ld l, l
    ret nz

    ld l, l
    push af
    ld l, l
    ld [de], a
    ld l, [hl]
    daa
    ld l, [hl]
    jr nc, jr_009_6ca6

    ld b, l
    ld l, [hl]
    ld e, d
    ld l, [hl]
    and a
    ld l, [hl]
    cp h
    ld l, [hl]
    jp hl


    ld l, [hl]
    ldh a, [c]
    ld bc, $08e8
    and $ee
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$06f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1007], sp
    ld [$08ee], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    nop
    ld [$100b], sp
    ld [$0de8], sp
    stop
    ld [$100e], sp
    nop
    ld [$104f], sp
    nop
    ld [$1050], sp
    ld [$51e8], sp
    stop
    ld [$1052], sp
    nop
    ld [$1053], sp
    nop
    ld [$1054], sp
    db $f4
    ld [$100c], sp
    add b
    ld hl, sp+$07
    db $e4
    ld [$f4e2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp

jr_009_6ca6:
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$0ff0], sp
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$14e8], sp
    stop
    ld [$1015], sp
    nop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18e8], sp
    stop
    ld [$1019], sp
    ld [$1a00], sp
    db $10
    rst $28
    ldh a, [rNR13]
    db $10
    add b
    ld [$eaf9], a
    ld [$e5ea], sp
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
    ld [$1bf2], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    ld [$20f2], sp
    stop
    ld [$1021], sp
    nop
    ld [$1022], sp
    nop
    ld [$1055], sp
    rst $30
    sub $56
    stop
    ld [$1057], sp
    add b
    ld hl, sp+$07
    db $e4
    ld [$f4e5], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$28f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$2af0], sp
    stop
    ld [$1010], sp
    nop
    ld [$101e], sp
    nop
    ld [$101f], sp
    ld [$2be8], sp
    stop
    ld [$102c], sp
    nop
    ld [$102d], sp
    nop
    ld [$102e], sp
    ld [$26df], sp
    jr nc, jr_009_6d62

jr_009_6d62:
    ld [$3025], sp
    nop
    ld [$3024], sp
    nop
    ld [$3023], sp
    and $e8
    daa
    db $10
    ld [$2900], sp
    db $10
    add b
    ld hl, sp+$08
    pop af
    ld bc, $f8f2
    cpl
    stop
    rlca
    cpl
    jr nc, jr_009_6d8a

    ld sp, hl
    cpl
    ld d, b
    nop
    rlca
    cpl
    ld [hl], b

jr_009_6d8a:
    add b
    or $0a
    rst $28
    inc bc
    ld [$30f8], a
    stop
    rlca
    jr nc, jr_009_6dc7

    ld [$31f1], sp
    stop
    ld [$1032], sp
    nop
    rlca
    ld [hl-], a
    jr nc, jr_009_6da4

jr_009_6da4:
    ld [$3031], sp
    rlca
    jp hl


    ld sp, $0050
    ld [$5032], sp
    nop
    rlca
    ld [hl-], a
    ld [hl], b
    nop
    ld [$7031], sp
    ld [$30f1], sp
    ld d, b
    nop
    rlca
    jr nc, jr_009_6e2f

    add b
    ldh a, [rNR10]
    jp hl


    add hl, bc
    ld [$33f0], a

jr_009_6dc7:
    stop
    ld [$1034], sp
    nop
    rlca
    inc [hl]
    jr nc, jr_009_6dd1

jr_009_6dd1:
    ld [$3033], sp
    ld [$35e9], sp
    stop
    rla
    dec [hl]
    jr nc, jr_009_6de4

    jp hl


    dec [hl]
    ld d, b
    nop
    rla
    dec [hl]
    ld [hl], b

jr_009_6de4:
    ld [$33e9], sp
    ld d, b
    nop
    ld [$5034], sp
    nop
    rlca
    inc [hl]
    ld [hl], b
    nop
    ld [$7033], sp
    add b
    ld hl, sp+$08
    jp hl


    add hl, bc
    ld [$36fc], a
    db $10
    ld [$37fc], sp
    stop
    rlca
    scf
    jr nc, jr_009_6e0d

    ld sp, hl
    scf
    ld d, b
    nop
    rlca
    scf
    ld [hl], b

jr_009_6e0d:
    ld [$36fd], sp
    ld d, b
    add b
    db $fc
    inc b
    jp hl


    add hl, bc
    ld [$38fc], a
    db $10
    ld [$3900], sp
    db $10
    rlca
    nop
    add hl, sp
    ld d, b
    ld [$3800], sp
    ld d, b
    add b
    db $fc
    inc b
    push af
    db $fd
    or $fc
    ld a, [hl-]
    db $10

jr_009_6e2f:
    add b
    ld hl, sp+$08
    pop af
    ld bc, $f8f2
    dec sp
    stop
    rlca
    dec sp
    jr nc, jr_009_6e44

    ld sp, hl
    dec sp
    ld d, b
    nop
    rlca
    dec sp
    ld [hl], b

jr_009_6e44:
    add b
    ld hl, sp+$08
    pop af
    ld bc, $f8f2
    inc a
    stop
    rlca
    inc a
    jr nc, jr_009_6e59

    ld sp, hl
    inc a
    ld d, b
    nop
    rlca
    inc a
    ld [hl], b

jr_009_6e59:
    add b
    ld hl, sp+$07
    pop hl
    add hl, bc
    ldh [c], a
    db $f4
    dec a
    stop
    ld [$103e], sp
    nop
    ld [$103f], sp
    ld [$40f0], sp
    stop
    ld [$1041], sp
    nop
    ld [$1042], sp
    ld [$43f0], sp
    stop
    ld [$1044], sp
    nop
    ld [$1045], sp
    nop
    ld [$1046], sp
    ld [$48e8], sp
    stop
    ld [$1049], sp
    nop
    ld [$104a], sp
    nop
    ld [$104b], sp
    ld [$4ce8], sp
    stop
    ld [$104d], sp
    ld [$4e00], sp
    db $10
    rst $28
    ldh a, [rBGP]
    db $10
    add b
    or $08
    or $08
    ld [$58fc], a
    db $10
    ld [$5800], sp
    db $10
    ld [$5800], sp
    db $10
    ld [$5800], sp
    db $10
    add b
    or $08
    or $08
    ldh a, [c]
    db $f4
    ld e, c
    stop
    ld [$105a], sp
    nop
    ld [$3059], sp
    ld [$59f0], sp
    stop
    ld [$105a], sp
    nop
    ld [$3059], sp
    ld [$5bf0], sp
    stop
    ld [$105c], sp
    nop
    ld [$305b], sp
    add sp, -$08
    ld e, d
    db $10
    add b
    or $08
    or $08
    ld [bc], a
    db $f4
    ld e, e
    stop
    ld [$105c], sp
    nop
    ld [$305b], sp
    ld hl, sp-$08
    ld e, d
    db $10
    add b

Call_009_6efe:
    push hl
    ld hl, $d165
    ld a, [hl]
    ld [hl], $00
    pop hl
    ret


Call_009_6f07:
    xor a
    ld [$ca0a], a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $6644
    ld a, $20
    ld [$cc00], a
    ld a, $74
    ld [$cc01], a
    call Call_009_407d
    jr c, jr_009_6f32

    call Call_009_6f36

Jump_009_6f27:
    ld a, [$ca03]
    inc a
    ld [$ca03], a
    xor a
    pop hl
    ld c, l
    ret


Jump_009_6f32:
jr_009_6f32:
    scf
    pop hl
    ld c, l
    ret


Call_009_6f36:
    ld l, c
    push hl
    ld a, $04
    call Call_000_01a4
    ld [$ca2a], a
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    ld b, $01
    jr z, jr_009_6f5f

    ld b, $00

jr_009_6f5f:
    ld a, $00
    ld [$ca0c], a
    ld a, b
    ld [$ca0d], a
    xor a
    ld [$ca1c], a
    ld b, $00
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    add $0c
    ld l, a
    ld [hl], b
    add $e7
    ld l, a
    ld [hl], $00
    add $ee
    ld l, a
    ld a, [$ca04]
    ld [hl], a
    call Call_000_015c
    ret


    ld a, b
    dec b
    jr z, jr_009_6fa9

    dec b
    jp nz, Jump_009_6fcf

jr_009_6f8f:
    ld l, c
    push hl
    ld a, [$ca2a]
    call Call_000_01a7
    pop hl
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $04
    ld a, [$ca03]
    dec a
    ld [$ca03], a
    ld b, $00
    ret


jr_009_6fa9:
    ld a, [$ccc2]
    or a
    jr nz, jr_009_6f8f

    ld a, [$deaf]
    and $27
    jp nz, Jump_009_6fcf

    call Call_009_7395
    ld a, $2b
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_7007

    dec b
    jp z, Jump_009_7057

    ld a, $2c
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_009_6fde

Jump_009_6fcf:
jr_009_6fcf:
    ld l, c
    push hl
    call Call_009_71a9
    pop hl
    ld c, l
    call Call_009_7ab6
    jr z, jr_009_6f8f

    ld b, $01
    ret


jr_009_6fde:
    ld de, $0304
    ld a, [$df0a]
    cp $19
    jr nz, jr_009_6feb

    ld de, $0114

jr_009_6feb:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp d
    jr nc, jr_009_6f8f

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    ld [hl], $06
    add $03
    ld l, a
    ld [hl], e
    call Call_009_7073
    jr jr_009_6fcf

jr_009_7007:
    ld a, $2c
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_009_7051

    ld a, $2f
    add c
    ld l, a
    call Call_000_01e9
    jr z, jr_009_7023

    ld a, [$ca1c]
    set 3, a
    ld [$ca1c], a
    jr jr_009_7051

jr_009_7023:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    ld a, [$ca1c]
    set 1, a
    res 2, a
    ld [$ca1c], a
    ld a, $0d
    add c
    ld l, a
    ld a, [$ca25]
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$ca26]
    ld [hl], a
    call Call_000_015c
    ld a, [$ca1c]
    res 3, a
    ld [$ca1c], a
    jp Jump_009_7057


jr_009_7051:
    call Call_009_7132
    jp Jump_009_6fcf


Jump_009_7057:
    call Call_009_7132
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_009_7065

    jp Jump_009_6fcf


jr_009_7065:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $3c
    jp Jump_009_6fcf


Call_009_7073:
    ld l, c
    push hl
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    inc [hl]
    or a
    jr z, jr_009_7090

    call Call_000_024f
    dec a
    ld de, $73b0
    call Call_000_0171
    ld a, e
    ld [$ca0c], a
    ld a, d
    ld [$ca0d], a

jr_009_7090:
    ld a, [$ca0c]
    ld hl, $73d0
    call Call_000_016e
    ld de, $ca0e
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
    inc de
    call Call_009_7117
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_009_7117
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_009_7117
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld l, c
    ld h, b
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [$ca1a], a
    ld a, b
    ld [$ca1b], a
    call Call_009_7320
    pop hl
    ld c, l
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$ca25], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$ca26], a
    ld b, $00
    ld a, $1d
    add c
    ld l, a
    ld [hl], b
    add $ef
    ld l, a
    ld [hl], b
    add $13
    ld l, a
    ld [hl], b
    inc hl
    ld [hl], b
    ld a, $0e
    add c
    ld l, a
    ld [hl], b
    ld a, $06
    ld [$ca1c], a
    ld a, $01
    ldh [$ff8a], a
    call Call_009_7179
    ld a, $05
    ld [$ca1c], a
    ret


Call_009_7117:
    dec de
    dec de
    ld a, [$ca0d]
    bit 0, a
    jr z, jr_009_7124

    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_009_7124:
    inc de
    ld a, [$ca0d]
    bit 1, a
    jr z, jr_009_7130

    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_009_7130:
    inc de
    ret


Call_009_7132:
    ld a, $1d
    add c
    ld l, a
    ld a, [$ca0e]
    add [hl]
    ld [hl], a
    push af
    ld a, $0c
    add c
    ld l, a
    pop af
    ld a, [$ca0f]
    adc [hl]
    ld [hl], a
    or a
    jr z, jr_009_718f

    ld [hl], $00
    ldh [$ff8a], a
    ld e, a
    ld a, $1f
    add c
    ld l, a
    ld a, [$ca1c]
    bit 1, a
    jr nz, jr_009_7169

    ld a, [$ca10]
    ld b, a
    ld a, [hl]
    add e
    cp b
    jr c, jr_009_7163

    ld a, b

jr_009_7163:
    ld [hl], a
    call Call_009_7190
    jr jr_009_7172

jr_009_7169:
    ld a, [hl]
    sub e
    jr nc, jr_009_716e

    xor a

jr_009_716e:
    ld [hl], a
    call Call_009_7190

jr_009_7172:
    ld a, [$ca1c]
    bit 2, a
    jr z, jr_009_718f

Call_009_7179:
    push hl
    ldh a, [$ff8a]
    ld b, a
    ld hl, $ca25
    ld de, $ca16

jr_009_7183:
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    dec b
    jr nz, jr_009_7183

    pop hl

jr_009_718f:
    ret


Call_009_7190:
    ld a, [$ca11]
    ld b, a
    ld a, [hl]
    ld e, $00

jr_009_7197:
    sub b
    jr c, jr_009_719d

    inc e
    jr jr_009_7197

jr_009_719d:
    add b
    ld b, a
    ld a, $0e
    add c
    ld l, a
    ld [hl], b
    add $12
    ld l, a
    ld [hl], e
    ret


Call_009_71a9:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $10
    ldh [$ffab], a
    ld a, [$ca2a]
    call Call_000_019e
    ldh a, [$ff92]
    cp $fe
    ret z

    ld a, $0e
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff90], a
    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff91], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, [$ca1c]
    bit 3, a
    jr nz, jr_009_7208

    ld a, $30
    add c
    ld l, a
    ld b, [hl]
    add $e7
    ld l, a
    ld [hl], b
    ld a, [$ca04]
    add [hl]
    ld d, a
    ldh a, [$ff92]
    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff9c]
    add $0c
    ld [hl+], a
    ldh a, [$ff9b]
    add $04
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ldh a, [$ffab]
    ld [hl+], a

jr_009_7208:
    ld a, [$ca1c]
    bit 0, a
    ret z

    ld a, [$ca0d]
    rrca
    rrca
    rrca
    and $60
    ld b, a
    ld de, $ffab
    ld a, [de]
    and $90
    or b
    ld [de], a
    ld hl, $ca12
    ld a, [$ca0d]
    ld b, a
    bit 0, b
    ld a, [$ca25]
    jr z, jr_009_722f

    sub $07

jr_009_722f:
    add [hl]
    ldh [$ff9b], a
    inc hl
    bit 1, b
    ld a, [$ca26]
    jr z, jr_009_723c

    sub $07

jr_009_723c:
    add [hl]
    ldh [$ff9c], a
    ldh a, [$ff90]
    or a
    jp z, Jump_009_72be

    ld hl, $ca18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff90]
    dec a
    call Call_000_016e
    call Call_009_7368
    ld a, e
    ld [$ca1d], a
    ld a, d
    ld [$ca1e], a
    ld a, c
    ld [$ca1f], a
    ld a, b
    ld [$ca20], a
    push hl
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    call Call_009_734a
    pop bc
    ldh a, [$ff92]
    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff9c]
    ld d, a
    ld a, [$ca0d]
    bit 1, a
    ld a, [bc]
    jr z, jr_009_7289

    cpl
    inc a

jr_009_7289:
    add d
    ldh [$ff9c], a
    add $10
    ld [hl+], a
    ldh a, [$ff9b]
    ld e, a
    inc bc
    ld a, [$ca0d]
    bit 0, a
    ld a, [bc]
    jr z, jr_009_729d

    cpl
    inc a

jr_009_729d:
    add e
    ldh [$ff9b], a
    add $08
    ld [hl+], a
    inc bc
    ld a, [bc]
    push bc
    ld b, a
    ld a, [$ca04]
    add b
    ld [hl+], a
    pop bc
    ldh a, [$ffab]
    ld [hl+], a
    ld hl, $ca14
    ldh a, [$ff9b]
    add [hl]
    ldh [$ff9b], a
    inc hl
    ldh a, [$ff9c]
    add [hl]
    ldh [$ff9c], a

Jump_009_72be:
    ldh a, [$ff91]
    or a
    ret z

    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a

Jump_009_72c8:
    push de
    call Call_009_7334
    pop de
    ld a, [$ca1a]
    ld c, a
    ld a, [$ca1b]
    ld b, a
    ldh a, [$ff92]
    ld l, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld a, [$ca0d]
    bit 1, a
    ld a, [bc]
    jr z, jr_009_72ec

    cpl
    inc a

jr_009_72ec:
    add d
    ld d, a
    add $10
    ld [hl+], a
    inc bc
    ld a, [$ca0d]
    bit 0, a
    ld a, [bc]
    jr z, jr_009_72fc

    cpl
    inc a

jr_009_72fc:
    add e
    ld e, a
    add $08
    ld [hl+], a
    inc bc
    ld a, [bc]
    push bc
    ld b, a
    ld a, [$ca04]
    add b
    ld [hl+], a
    pop bc
    ldh a, [$ffab]
    ld [hl+], a
    ld hl, $ca14
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    add d
    ld d, a
    ldh a, [$ff91]
    dec a
    ldh [$ff91], a
    jp nz, Jump_009_72c8

    ret


Call_009_7320:
    call Call_009_7368
    ld a, e
    ld [$ca21], a
    ld a, d
    ld [$ca22], a
    ld a, c
    ld [$ca23], a
    ld a, b
    ld [$ca24], a
    ret


Call_009_7334:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $1a
    add c
    ld l, a
    ld [hl], $03
    call Call_009_41f3
    ld de, $ca21
    jr jr_009_735e

Call_009_734a:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $1a
    add c
    ld l, a
    ld [hl], $03
    call Call_009_41f3
    ld de, $ca1d

jr_009_735e:
    xor a
    ld [$c3e2], a
    ld b, $85
    call Call_000_021f
    ret


Call_009_7368:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [$ca0d]
    push hl
    ld h, a
    bit 0, h
    jr z, jr_009_7384

    ld a, e
    cpl
    add $07
    ld l, a
    ld a, d
    cpl
    add $07
    ld e, a
    ld d, l

jr_009_7384:
    bit 1, h
    jr z, jr_009_7393

    ld a, c
    cpl
    add $07
    ld l, a
    ld a, b
    cpl
    add $07
    ld c, a
    ld b, l

jr_009_7393:
    pop hl
    ret


Call_009_7395:
    ld a, $25
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $04
    jr nc, jr_009_73a5

    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    ret


jr_009_73a5:
    ld [hl], $00
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    ld bc, $0102
    ld bc, $0001
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    jp c, $e873

    ld [hl], e
    or $73
    inc b
    ld [hl], h
    ld [de], a
    ld [hl], h
    nop
    ld [bc], a
    inc c
    inc b
    nop
    rst $38
    rst $38
    inc bc
    ld [bc], a
    nop
    call Call_009_6b74
    ld [hl], h
    xor d
    ld bc, $030a
    nop
    nop
    ld bc, $0202
    ld bc, $74d5
    add b
    ld [hl], h
    ld d, l
    ld bc, $0308
    nop
    nop
    ld bc, $0201
    ld [bc], a
    db $db
    ld [hl], h
    sub l
    ld [hl], h
    xor d
    ld bc, $030a
    nop
    nop
    ld [bc], a
    ld bc, $0201
    pop hl
    ld [hl], h
    xor d
    ld [hl], h
    nop
    ld [bc], a
    inc c
    inc b
    rst $38
    nop
    inc bc
    rst $38
    nop
    ld [bc], a
    rst $20
    ld [hl], h
    add $74
    add a
    ld l, a
    rlca
    add l
    nop
    add hl, sp
    ld [hl], h
    nop
    ld bc, $0344
    add hl, bc
    ret nz

    add hl, sp
    ld [hl], h
    inc b
    nop
    ld bc, $39ff
    ld [hl], h
    inc b
    ld bc, $ff02
    ccf
    ld [hl], h
    ld b, h
    ld [hl], h
    ld c, l
    ld [hl], h
    ld bc, $0100
    nop
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld bc, $8010
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    db $fd
    inc bc
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    ei
    inc b
    ld sp, hl
    nop
    rst $38
    ld [bc], a
    db $fd
    ld sp, hl
    dec b
    db $fd
    nop
    db $fd
    nop
    db $fd
    db $fd
    ld b, $fb
    nop
    db $fc
    nop
    db $fc
    ei
    ld b, $f9
    nop
    ei
    nop
    ei
    ld sp, hl
    ld [$00fd], sp
    db $fd
    nop
    db $fd
    db $fd
    add hl, bc
    ei
    nop
    ei
    nop
    ei
    ei
    ld a, [bc]
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    ld sp, hl
    dec bc
    db $fd
    nop
    db $fd
    nop
    db $fd
    db $fd
    inc c
    db $fc
    nop
    ei
    nop
    ei
    db $fc
    dec c
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    ei
    ld c, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    db $fd
    rrca
    rst $38
    ld [bc], a
    db $fd
    nop
    db $fd
    db $fd
    db $10
    rst $38
    ld [bc], a
    ei
    nop
    ei
    db $fd
    ld de, $02ff
    ld sp, hl
    nop
    ld sp, hl
    db $fd
    ld [de], a
    ld d, [hl]
    ld [hl], h
    ld e, l
    ld [hl], h
    ld h, h
    ld [hl], h
    ld l, e
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld a, c
    ld [hl], h
    add b
    ld [hl], h
    add a
    ld [hl], h
    adc [hl]
    ld [hl], h
    sub l
    ld [hl], h
    sbc h
    ld [hl], h
    and e
    ld [hl], h
    xor d
    ld [hl], h
    or c
    ld [hl], h
    cp b
    ld [hl], h
    cp a
    ld [hl], h
    add $74

Call_009_74ef:
    ld a, $01
    ld [$ca0a], a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $6640
    ld a, $15
    ld [$cc00], a
    ld a, $75
    ld [$cc01], a
    call Call_009_407d
    jp c, Jump_009_6f32

    call Call_009_7543
    jp Jump_009_6f27


    ld [hl+], a
    ld [hl], l
    ld b, a
    add b
    nop
    add hl, sp
    ld [hl], h
    nop
    ld bc, $0044
    add hl, bc
    ret nz

    dec b
    jp z, Jump_009_759f

    dec b
    jp nz, Jump_009_763b

Jump_009_752a:
    call Call_009_425d
    ld l, c
    push hl
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    call Call_000_01a7
    pop hl
    ld c, l
    ld a, [$ca03]
    dec a
    ld [$ca03], a
    ld b, $00
    ret


Call_009_7543:
    ld l, c
    push hl
    ld a, $03
    call Call_000_01a4
    pop hl
    ld c, l
    ld b, a
    ld a, $30
    add c
    ld l, a
    ld [hl], b
    ld a, $05
    add c
    ld l, a
    ld a, [$ca04]
    ld [hl], a
    call Call_009_795d
    ld a, $24
    add c
    ld e, a
    add $e4
    ld l, a
    ld a, [hl]
    ld l, e
    ld [hl], a
    ld de, $ca38
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    inc l
    ld a, [hl]
    ld [de], a
    inc de
    xor a
    ld [de], a
    ld a, $2c
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld [hl], $1e
    add $02
    ld l, a
    ld [hl], $02
    add $fd
    ld l, a
    ld [hl], $00
    add $ed
    ld l, a
    ld [hl], $01
    add $17
    ld l, a
    ld [hl], $40
    inc l
    ld [hl], $00
    jp Jump_000_015c


Jump_009_759f:
    ld a, [$ccc2]
    or a
    jp nz, Jump_009_752a

    ld a, [$deaf]
    and $27
    jp nz, Jump_009_763b

    call Call_009_427c
    push hl
    ld hl, $ca2c
    call Call_000_01e9
    pop hl
    ld b, $1b
    jr z, jr_009_75ce

    ld a, [$ca00]
    or a
    jr z, jr_009_75ce

    ld b, $18
    ld a, [$ca2c]
    bit 2, a
    jr z, jr_009_75ce

    ld b, $1b

jr_009_75ce:
    ld a, b
    ld [$de96], a
    ld a, $2a
    add c
    ld l, a
    ld b, [hl]
    dec b
    jr z, jr_009_7600

    dec b
    jp z, Jump_009_7647

    ld b, $05
    ld de, $001a
    call Call_009_7654
    jr c, jr_009_762b

    ld a, $2b
    add c
    ld l, a
    dec [hl]
    jr nz, jr_009_75fe

    add $ff
    ld l, a
    inc [hl]
    add $03
    ld l, a
    ld [hl], $02
    ld de, $663c
    call Call_009_791c

jr_009_75fe:
    jr jr_009_762b

jr_009_7600:
    ld a, [$ca37]
    or a
    jr nz, jr_009_7620

    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    ld l, c
    push hl
    call Call_000_01a7
    pop hl
    ld c, l
    ld a, $30
    add c
    ld l, a
    ld [hl], $40
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_009_7647


jr_009_7620:
    call Call_009_79e3
    ld b, $20
    ld de, $0018
    call Call_009_7654

jr_009_762b:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$ca38], a
    inc l
    ld a, [hl]
    ld [$ca3a], a
    call Call_009_7663

Jump_009_763b:
    call Call_009_7680
    call Call_009_7769
    call Call_009_7ab6

jr_009_7644:
    ld b, $01
    ret


Jump_009_7647:
    ld a, [$ca00]
    ld b, a
    ld a, [$ca2c]
    or b
    jr nz, jr_009_7644

    jp Jump_009_752a


Call_009_7654:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl-]
    cp b
    ret nc

    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    scf
    ret


Call_009_7663:
    ld a, $2d
    add c
    ld l, a
    ld e, [hl]
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, b
    jr nz, jr_009_7679

    add e
    jr jr_009_767a

jr_009_7679:
    sub e

jr_009_767a:
    and $3f
    ld [hl], a
    inc a
    ld b, a
    ret


Call_009_7680:
    xor a
    ld [$ca37], a
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    push af
    call Call_009_76d4
    jr nz, jr_009_769e

    ld a, $01
    ld [$ca37], a
    ldh a, [$ff9b]
    ld [$ca31], a
    ldh a, [$ff9c]
    ld [$ca32], a

jr_009_769e:
    pop af
    add $15
    push af
    call Call_009_76d4
    jr nz, jr_009_76b9

    ld a, [$ca37]
    or $02
    ld [$ca37], a
    ldh a, [$ff9b]
    ld [$ca33], a
    ldh a, [$ff9c]
    ld [$ca34], a

jr_009_76b9:
    pop af
    add $15
    call Call_009_76d4
    jr nz, jr_009_76d3

    ld a, [$ca37]
    or $04
    ld [$ca37], a
    ldh a, [$ff9b]
    ld [$ca35], a
    ldh a, [$ff9c]
    ld [$ca36], a

jr_009_76d3:
    ret


Call_009_76d4:
    ld l, c
    push hl
    and $3f
    inc a
    ld b, a
    xor a
    ldh [$ff91], a
    ld a, $2e
    add c
    ld l, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $ca2d
    ld a, b
    call Call_000_02e5
    push de
    ld l, c
    ld h, b
    call Call_009_7734
    ld a, [$ca38]
    ld c, a
    ld a, [$ca39]
    ld b, a
    add hl, bc
    call Call_009_7744
    jr c, jr_009_7703

    ld a, $01
    ldh [$ff91], a

jr_009_7703:
    pop hl
    call Call_009_7734
    ld a, [$ca3a]
    ld e, a
    ld d, $00
    bit 7, e
    jr z, jr_009_7712

    dec d

jr_009_7712:
    add hl, de
    ld a, h
    or a
    ld a, l
    ldh [$ff9c], a
    jr nz, jr_009_7720

    cp $84
    jr nc, jr_009_772d

    jr jr_009_7727

jr_009_7720:
    inc h
    jr nz, jr_009_772d

    cp $fc
    jr c, jr_009_772d

jr_009_7727:
    ldh a, [$ff91]
    set 1, a
    ldh [$ff91], a

jr_009_772d:
    ldh a, [$ff91]
    cp $03
    pop hl
    ld c, l
    ret


Call_009_7734:
    bit 7, h
    jr nz, jr_009_773e

    rl h
    ld l, h
    ld h, $00
    ret


jr_009_773e:
    rl h
    ld l, h
    ld h, $ff
    ret


Call_009_7744:
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc d
    jr nz, jr_009_775a

    ld a, e
    cp $a4
    jr nc, jr_009_7767

    jr jr_009_7762

jr_009_775a:
    inc a
    jr nz, jr_009_7767

    ld a, e
    cp $fc
    jr c, jr_009_7767

jr_009_7762:
    ld a, e
    ldh [$ff9b], a
    xor a
    ret


jr_009_7767:
    scf
    ret


Call_009_7769:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    ld l, c
    push hl
    call Call_000_019e
    ld de, $ca31
    ld a, [$ca37]
    bit 0, a
    call nz, Call_009_7797
    ld de, $ca33
    ld a, [$ca37]
    bit 1, a
    call nz, Call_009_7797
    ld de, $ca35
    ld a, [$ca37]
    bit 2, a
    call nz, Call_009_7797
    pop hl
    ld c, l
    ret


Call_009_7797:
    ld a, [de]
    ld b, a
    add $04
    ldh [$ff8f], a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    push de
    add $0c
    ldh [$ff8e], a
    ld a, [$ca04]
    ld b, a
    ld a, [$ca0b]
    bit 2, a
    jr z, jr_009_77b2

    inc b

jr_009_77b2:
    ld a, b
    ldh [$ff90], a
    ld a, $10
    ldh [$ff91], a
    call Call_000_01a1
    pop de
    ld a, [$df09]
    cp $02
    ret z

    ld hl, $d739
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, [$ca00]
    or a
    ret nz

    ld a, [$cccd]
    or a
    ret nz

    ld a, $44
    ld [$ce53], a
    ld a, $74
    ld [$ce54], a
    xor a
    ldh [$ffa9], a
    ld [$d3ea], a
    call Call_000_0276
    call Call_000_0279
    ret nc

    ld a, $1e
    ld [$ca2c], a
    ld de, $012c
    call Call_009_423e
    ret


    nop
    inc b
    nop
    db $fd
    call nc, Call_000_0708
    ld bc, $2500
    ld b, a
    ld b, b

Jump_009_7802:
    ld a, b
    dec b
    jr z, jr_009_783e

    dec b
    jr z, jr_009_7812

    dec b
    jp z, Jump_009_7873

    dec b
    ret z

    or a
    jr z, jr_009_7815

jr_009_7812:
    ld b, $00
    ret


jr_009_7815:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $f9
    ld l, a
    ld [hl], $01
    add $ef
    ld l, a
    res 2, [hl]
    add $fa
    ld l, a
    ld [hl], $18
    add $02
    ld l, a
    ld [hl], $ec
    call Call_000_025e
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld de, $6c22
    jp Jump_000_01dd


jr_009_783e:
    ld a, $01
    ld [$dd31], a
    ld a, [$deaf]
    or a
    jp nz, Jump_009_7873

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_009_7876

    dec a
    jr z, jr_009_78a4

    dec a
    jr z, jr_009_78c4

    ld a, [$d141]
    cp $01
    jr nz, jr_009_7873

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    ld a, $13
    add c
    ld l, a
    set 2, [hl]
    ld de, $77f6
    call Call_009_799d

Jump_009_7873:
jr_009_7873:
    ld b, $01
    ret


jr_009_7876:
    ld de, $78f0
    call Call_000_015f
    call Call_009_79d1
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_009_78a2

    ld b, $36
    cp b
    jr c, jr_009_78a2

    ld [hl], b
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    call Call_000_015c
    ld de, $77f8
    call Call_009_799d

jr_009_78a2:
    jr jr_009_7873

jr_009_78a4:
    ld de, $78f5
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_009_78c2

    ld a, $02
    ld [$d141], a
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    call Call_000_015c

jr_009_78c2:
    jr jr_009_7873

jr_009_78c4:
    ld a, [$d141]
    cp $03
    jr nz, jr_009_78ee

    call Call_000_01e6
    jr nz, jr_009_78c2

    ld de, $78f0
    call Call_000_015f
    call Call_009_79d1
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr c, jr_009_78ee

    cp $e8
    jr nc, jr_009_78ee

    ld a, $04
    ld [$d141], a
    ld b, $00
    ret


jr_009_78ee:
    jr jr_009_7873

    ld [hl+], a
    ld l, h
    ld [$ff01], sp
    ld [hl+], a
    ld l, h
    ld [$ff00], sp
    call Call_009_7a35
    ld a, $0c
    add c
    ld l, a
    ld a, $1d
    add c
    ld e, a
    ld d, h
    ld a, [de]
    inc e
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc e
    adc [hl]
    ld [hl+], a
    ld a, [de]
    inc e
    add [hl]
    ld [hl+], a
    ld a, [de]
    inc e
    adc [hl]
    ld [hl+], a
    ret


    push de
    call Call_009_7945
    pop de

Call_009_791c:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_009_793e

    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    inc de
    cpl
    ld b, a
    ld a, [de]
    inc de
    cpl
    inc b
    jr nz, jr_009_7934

    inc a

jr_009_7934:
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


Jump_009_793e:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_009_7945:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_009_7956

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_009_7957

jr_009_7956:
    inc d

jr_009_7957:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_009_795d:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_009_7967:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_009_796f:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_009_7977:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_009_7993

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_009_7989

    inc a

jr_009_7989:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_009_7993:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_009_799d:
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
    ld l, a
    jr jr_009_79b1

    ld a, $1f
    add c
    ld l, a

jr_009_79b1:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_009_79bb

    inc d

jr_009_79bb:
    ld [hl], d
    dec l
    ld [hl], e
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


Call_009_79d1:
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


Call_009_79e3:
Jump_009_79e3:
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


    ld a, [$d74b]
    or a
    ret z

    inc de
    inc de
    ld a, [de]
    ld l, a
    ldh a, [$ff8b]
    add l
    sub $0d
    ld l, a
    ld a, [$d725]
    cp l
    jr nz, jr_009_7a33

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_009_7a1e

    xor a

jr_009_7a1e:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_009_7a33

    ld a, [de]
    add b
    cp $d0
    jr c, jr_009_7a2c

    xor a

jr_009_7a2c:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_009_7a33:
    or a
    ret


Call_009_7a35:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $30
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    bit 7, a
    jr nz, jr_009_7a50

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_009_7a50

    ld de, $0350

jr_009_7a50:
    ld [hl], d
    dec l
    ld [hl], e
    ret


    push de
    call Call_009_7a35
    pop de
    call Call_009_7a6d
    ret z

    bit 0, a
    jr z, jr_009_7a65

    ld a, $1d
    jr jr_009_7a67

jr_009_7a65:
    ld a, $1f

jr_009_7a67:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_009_7a6d:
    ld a, e
    ldh [$ffa7], a
    ld a, d
    ldh [$ffa8], a
    ld l, c
    push hl
    ld a, $1d
    add c
    ld l, a
    ld de, $ff9f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, $0c
    add c
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ldh [$ff98], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ldh [$ff9a], a
    call Call_000_01d4
    pop hl
    ld c, l
    ld a, $0c
    add c
    ld l, a
    ld de, $ffa3
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ldh a, [$ffa9]
    or a
    ret


Call_009_7ab6:
Jump_009_7ab6:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_009_7ac6

    cp $90
    jr nc, jr_009_7adb

jr_009_7ac6:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_009_7ad3

    cp $c0
    jr nc, jr_009_7adb

jr_009_7ad3:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_009_7adb:
    xor a
    ld b, a
    ret


    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


    push de
    push hl
    ld a, [$c3ef]
    ldh [$ff8a], a
    ld a, [$c3f0]
    ldh [$ff8b], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add $30
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    add $30
    ldh [$ff9c], a
    ld e, b
    pop hl
    call Call_009_7b14
    pop de
    ld b, a
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_009_79e3


Call_009_7b14:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    ld a, [hl]
    or a
    jr z, jr_009_7b20

    dec [hl]
    jr jr_009_7b52

jr_009_7b20:
    ld [hl], e
    ldh a, [$ff9b]
    ld e, a
    ldh a, [$ff9c]
    ld d, a
    ld l, c
    push hl
    call Call_000_0252
    pop hl
    ld c, l
    ld d, b
    ld a, [hl]
    or a
    jr nz, jr_009_7b39

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_009_7b52

jr_009_7b39:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_009_7b52

    dec a
    ld e, $01
    jr z, jr_009_7b4c

    ld e, $ff

jr_009_7b4c:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_009_7b52:
    pop bc
    pop hl
    ld a, [hl]
    ret


Call_009_7b56:
    ld a, $26
    add c
    ld l, a
    inc de
    inc de
    inc de
    inc de
    ld a, e
    add [hl]
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    cp $ff
    ret


Call_009_7b69:
    xor a
    ld [$ccc2], a
    ld [$ccc3], a
    ld [$dd00], a
    ld [$dd01], a
    ld [$ccc1], a
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
    add $0f
    ld l, a
    ld [hl], $01
    add $f5
    ld l, a
    ld [hl], $80
    add $02
    ld l, a
    ld e, [hl]
    ld [hl], $b0
    add $2c
    ld l, a
    ld [hl], e
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, [$d1e0]
    or a
    call nz, Call_000_0222
    ld a, $ff
    ld [$d74a], a
    ld [$de34], a
    ld de, $7bb4
    call Call_009_791c
    ld a, $01
    ld [$d703], a
    ret


    nop
    nop
    nop
    inc bc

Call_009_7bb8:
    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_009_7bd4

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


jr_009_7bd4:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $02
    ld [$dd00], a
    ret


Call_009_7be0:
    ld a, [$dd00]
    cp $02
    ret nz

    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    sla a
    sla a
    sla a
    ld [$dd01], a
    ret


Call_009_7bf5:
    ld a, [$ccc1]
    or a
    jr nz, jr_009_7c08

    ld a, $01
    ld [$ccc1], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $0a
    xor a
    ret


jr_009_7c08:
    call Call_009_7a6d
    and $02
    ret


Call_009_7c0e:
Jump_009_7c0e:
    push hl
    push bc
    call Call_009_7bf5
    pop bc
    pop hl
    or a
    jr z, jr_009_7c2f

    ld a, $17
    add c
    ld l, a
    ld [hl], b
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_009_7c35

jr_009_7c2f:
    ld b, l
    ld a, $17
    add c
    ld l, a
    ld [hl], b

Jump_009_7c35:
jr_009_7c35:
    call Call_000_025e
    ld b, $01
    ret


Jump_009_7c3b:
    push de
    call Call_009_40f2
    pop de
    call Call_009_7b56
    jr nz, jr_009_7c35

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_009_7c63

    ld a, $01
    ld [$dee9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$d74a], a
    call Call_000_015c
    jr jr_009_7c35

jr_009_7c63:
    call Call_009_7bb8
    jr jr_009_7c35

    ld h, $52
    ld d, c
    ld d, e
    dec e
    ld h, $52
    ld d, c
    ld d, e
    dec hl
    ld h, $52
    ld d, c
    ld d, e
    dec l
    ld h, $52
    ld d, c
    ld d, e
    ld a, [hl+]
    ld h, $52
    ld d, c
    ld d, e
    dec [hl]
    ld h, $52
    ld d, c
    ld d, e
    scf
    ld a, [bc]
    ld e, c
    adc e
    ld e, c
    ld b, c
    ret nc

    ld a, [hl]
    ld h, d
    ld h, e
    jr c, @-$2b

    ld l, e
    ld b, [hl]
    ld l, h
    add hl, sp
    db $d3
    ld l, e
    ld b, [hl]
    ld l, h
    add hl, sp

Jump_009_7c9a:
    ld h, $c8
    ld c, $00
    ld a, b
    or a
    jr z, jr_009_7ca7

    dec a
    jr z, jr_009_7cd5

    jr jr_009_7ce8

jr_009_7ca7:
    call Call_009_7d39
    ld a, b
    ld de, $8070
    ld l, c
    push hl
    call Call_000_020d
    pop hl
    ld c, l
    ld a, $5a
    ld [$cb01], a
    call Call_000_015c
    ld a, [$cb00]
    cp $06
    jr nz, jr_009_7cc9

    call Call_009_7d57
    jr jr_009_7cd0

jr_009_7cc9:
    cp $08
    jr nz, jr_009_7cd0

    call Call_009_7e2f

jr_009_7cd0:
    xor a
    ld [$cb02], a
    ret


jr_009_7cd5:
    call Call_009_7d39
    ld a, $22
    ldh [$ff9b], a
    ld a, $57
    ldh [$ff9c], a
    ldh a, [$ff8a]
    ld c, a
    ldh a, [$ff8b]
    ld b, a
    jr jr_009_7d2a

jr_009_7ce8:
    ld a, [$cb01]
    or a
    jr z, jr_009_7cf4

    dec a
    ld [$cb01], a
    jr jr_009_7d0e

jr_009_7cf4:
    ld a, [$cb00]
    cp $06
    jp z, Jump_009_7d93

    cp $08
    jp z, Jump_009_7e5b

    call Call_009_7d39
    call Call_009_40f2
    jr nc, jr_009_7d0e

    ld a, $01
    ld [$cb02], a

jr_009_7d0e:
    ld a, $22
    ldh [$ff9b], a

Jump_009_7d12:
    ld a, $57
    ldh [$ff9c], a

Jump_009_7d16:
    ld a, $15
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    add $02
    ld l, a
    ld a, [hl]
    call Call_000_0171
    ld hl, $0004
    add hl, de
    ld c, l
    ld b, h

jr_009_7d2a:
    ld a, $00
    ldh [$ffab], a
    xor a
    ld [$d3ea], a
    ld a, $07
    ldh [$ffac], a
    jp Jump_000_02be


Call_009_7d39:
    push hl
    ld a, [$cb00]
    dec a
    ld b, a
    add a
    add a
    add b
    add $68
    ld l, a
    ld a, $00
    adc $7c
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8b], a
    ld b, [hl]
    pop hl
    ret


Call_009_7d57:
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    ld l, c
    push hl
    ld hl, $c880
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    ld de, $4c7a
    call Call_009_799d
    ld a, $0d
    add c
    ld l, a
    ld a, [$4c88]
    add $22
    ld [hl+], a
    inc l
    ld a, [$4c89]
    add $57
    ld [hl], a
    ld a, $57
    ld [$ca06], a
    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld a, [$5267]
    ld [hl], a
    pop hl
    ld c, l
    ret


Jump_009_7d93:
    call Call_009_7dbc
    ld hl, $c800
    ld c, l
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_009_7daf

    ld de, $7e11
    call Call_009_40f2
    jr nc, jr_009_7daf

    ld a, $01
    ld [$cb02], a

jr_009_7daf:
    ld a, $20
    ldh [$ff9b], a
    jp Jump_009_7d12


Call_009_7db6:
    ld a, $01
    ld [$c8ab], a
    ret


Call_009_7dbc:
    ld hl, $c880
    ld c, l
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    cp $01
    ret nz

    ld de, $5264
    call Call_000_015f
    call Call_009_7a35
    call Call_009_79d1
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_009_7e03

    ld a, $0f
    add c
    ld l, a
    ld a, [$ca06]
    sub [hl]
    bit 7, a
    jr z, jr_009_7deb

    xor $ff
    inc a

jr_009_7deb:
    cp $08
    jr nc, jr_009_7e03

    xor a
    ld [$c82d], a
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$c82d], a
    ld a, $03
    ld [$c817], a
    ret


jr_009_7e03:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl+]
    ldh [$ff9c], a
    jp Jump_009_7d16


    ld l, d
    ld d, d
    ld [$0303], sp
    inc bc
    inc bc
    call Call_009_7db6
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $ff
    nop
    db $fd
    add b
    ei

Call_009_7e2f:
    ld a, $2e
    add c
    ld l, a
    ld [hl], $00
    ld b, [hl]

Call_009_7e36:
    ld a, b
    or a
    ld de, $7e2b
    jr z, jr_009_7e40

    ld de, $7e2d

jr_009_7e40:
    call Call_009_799d
    ld a, $0e
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], $57
    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $2d
    add c
    ld l, a
    ld [hl], $00
    ret


Jump_009_7e5b:
    ld hl, $c800
    ld c, l
    call Call_009_7e8d
    ld de, $7ed0
    call Call_009_40f2
    jr nc, jr_009_7e7f

    ld a, $2e
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    ld b, a
    cp $02
    jr nc, jr_009_7e7a

    call Call_009_7e36
    jr jr_009_7e7f

jr_009_7e7a:
    ld a, $01
    ld [$cb02], a

jr_009_7e7f:
    ld a, $22
    ldh [$ff9b], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    jp Jump_009_7d16


Call_009_7e8d:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $01
    jr nz, jr_009_7eb9

    call Call_009_7a35
    call Call_009_79d1
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_009_7ebf

    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $57
    jr c, jr_009_7ebf

    ld a, $2d
    add c
    ld l, a
    ld [hl], $01
    ld a, $25
    add c
    ld l, a
    ld [hl], $fe

jr_009_7eb9:
    ld a, $0f
    add c
    ld l, a
    ld [hl], $57

jr_009_7ebf:
    ret


    ld a, $2d
    add c
    ld l, a
    bit 0, [hl]
    ret nz

    ld a, $26
    add c
    ld l, a
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ret


    ld d, d
    ld h, e
    ld [$0200], sp
    ld bc, $c0cd
    ld a, [hl]
    ld [bc], a
    nop
    rst $38
    bit 2, d
    db $fd
    ld e, c
    inc bc
    ld h, l
    ldh [$ff6c], a

Jump_009_7ee4:
    ld a, b
    sub $06
    ld de, $7edc
    jp Jump_000_0171


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
