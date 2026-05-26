; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    jp Jump_003_79fc


    jp Jump_003_7aa3


    jp Jump_003_4778


    jp Jump_003_68ac


    jp Jump_003_51a1


    jp Jump_003_5b36


    jp Jump_003_712e


    jp Jump_003_79c9


    jp Jump_003_79c9


    call Call_003_4106
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
    call Call_003_41bf
    pop de

Call_003_403d:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_003_405f

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
    jr nz, jr_003_4055

    inc a

jr_003_4055:
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


Jump_003_405f:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_003_4066:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_003_4070:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_003_4078:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_003_4080:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_003_409c

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_003_4092

    inc a

jr_003_4092:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_003_409c:
jr_003_409c:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_003_40a6:
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
    jr jr_003_40ba

    ld a, $1f
    add c
    ld l, a

jr_003_40ba:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_003_40c4

    inc d

jr_003_40c4:
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


Call_003_40ec:
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


Call_003_4106:
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
    jr nz, jr_003_4121

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_003_4121

    ld de, $0350

jr_003_4121:
    ld [hl], d
    dec l
    ld [hl], e
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
    jr nz, jr_003_415b

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_003_4146

    xor a

jr_003_4146:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_003_415b

    ld a, [de]
    add b
    cp $d0
    jr c, jr_003_4154

    xor a

jr_003_4154:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_003_415b:
    or a
    ret


    push de
    call Call_003_4106
    pop de
    call Call_003_4176
    ret z

    bit 0, a
    jr z, jr_003_416e

    ld a, $1d
    jr jr_003_4170

jr_003_416e:
    ld a, $1f

jr_003_4170:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_003_4176:
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


Call_003_41bf:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_003_41d0

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_003_41d1

jr_003_41d0:
    inc d

jr_003_41d1:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_003_41d7:
Jump_003_41d7:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_003_41e7

    cp $90
    jr nc, jr_003_41fc

jr_003_41e7:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_003_41f4

    cp $c0
    jr nc, jr_003_41fc

jr_003_41f4:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_003_41fc:
    xor a
    ld b, a
    ret


    xor a
    ld [$d771], a
    ld [$d76e], a
    ld [$de29], a
    ret


Call_003_420a:
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


Call_003_426e:
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


    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$c3f0]
    sub b
    ret nc

    cpl
    inc a
    scf
    ret


    ldh [$ff8a], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ldh [$ff8b], a
    ld a, [$c3ef]
    ldh [$ff8c], a
    ld a, $1f
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    call Call_000_016b
    ldh a, [$ff8b]
    ld b, a
    ldh a, [$ff8c]
    sub b
    jr nc, jr_003_42b5

    cpl
    inc a
    scf

jr_003_42b5:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_003_4395
    ld c, l
    ld b, h
    ldh a, [$ff8a]
    ld e, a
    ld d, $00
    call Call_000_0285
    srl h
    rr l
    ld e, l
    ld d, h
    pop hl
    ld c, l
    pop af
    call c, Call_000_016b
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_003_42dc:
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


Call_003_42f6:
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


Call_003_4309:
    xor a
    jr jr_003_430e

Call_003_430c:
    ld a, $ff

jr_003_430e:
    ld l, $01
    jr jr_003_4319

Call_003_4312:
    xor a
    jr jr_003_4317

Call_003_4315:
    ld a, $01

jr_003_4317:
    ld l, $00

jr_003_4319:
    ldh [$ff8a], a
    ld a, l
    ldh [$ff8c], a
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
    jr nz, jr_003_4336

    inc de

jr_003_4336:
    inc de
    ld a, [de]
    add [hl]
    ld d, a
    ldh a, [$ff8a]
    add d
    ld d, a
    ld e, c
    call Call_000_0216
    pop hl
    ld c, l
    and $03
    ret z

    scf
    ret


    push de
    call Call_003_4315
    pop de
    jr c, jr_003_435e

jr_003_4350:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_003_4315
    pop de
    jr nc, jr_003_4350

    or a
    ret


jr_003_435e:
    push de
    call Call_003_4312
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_003_435e

    push de
    call Call_003_430c
    pop de
    jr c, jr_003_4380

jr_003_4372:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_003_430c
    pop de
    jr nc, jr_003_4372

    or a
    ret


jr_003_4380:
    push de
    call Call_003_4309
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_003_4380

Call_003_438d:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_003_4395:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_003_439e:
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
    jr nc, jr_003_43b2

    add hl, bc
    jr jr_003_43b3

jr_003_43b2:
    inc de

jr_003_43b3:
    pop af
    dec a
    jr nz, jr_003_439e

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


    ldh a, [$ff8f]
    or a
    ret z

    ld a, $26
    add c
    ld l, a
    ld a, [hl]
    cp b
    scf
    ret z

    or a
    ret


    xor a
    ld [$de2c], a
    ld [$cc6c], a
    ld a, $80
    ld [$cc6b], a
    ld a, [$de96]
    ld [$cc6f], a
    ld a, $01
    ld [$cc6d], a
    ret


    ld a, [$cc6a]
    ld b, a
    ld a, [$d7d2]
    sub b
    ld [$d8ac], a
    ld a, $7f
    ld [$d8ad], a
    ld a, $08
    ld [$de2c], a
    ret


    xor a
    ld [$cc81], a
    xor a
    ld [$cc6a], a
    ld a, [$d7d2]
    ld [$d8ac], a
    ret


    ld a, [$c3ef]
    ld e, a
    ld a, [$c3f0]
    ld d, a
    jr jr_003_441b

    ld a, [$d72f]
    ld e, a
    ld a, [$d730]
    ld d, a

jr_003_441b:
    ld a, e
    cp [hl]
    ret c

    inc hl
    cp [hl]
    ccf
    ret c

    inc hl
    ld a, d
    cp [hl]
    ret c

    inc hl
    cp [hl]
    ccf
    ret


Call_003_442a:
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
    ld a, $09
    add c
    ld l, a
    ld [hl], $00
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


    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    ld a, [de]
    add b
    ldh [$ff8a], a
    inc de
    ld b, [hl]
    ld a, [de]
    add b
    ldh [$ff8b], a
    inc de
    inc l
    inc l
    ld b, [hl]
    ld a, [de]
    add b
    ldh [$ff8c], a
    inc de
    ld b, [hl]
    ld a, [de]
    add b
    ldh [$ff8d], a
    ld a, [$df08]
    and $01
    jr nz, jr_003_44cd

    ld hl, $d742
    ldh a, [$ff8b]
    cp [hl]
    jr c, jr_003_44cd

    inc hl
    ldh a, [$ff8a]
    cp [hl]
    jr nc, jr_003_44cd

    inc hl
    ldh a, [$ff8d]
    cp [hl]
    jr c, jr_003_44cd

    inc hl
    ldh a, [$ff8c]
    cp [hl]
    jr nc, jr_003_44cd

    pop hl
    ld c, l
    scf
    ret


jr_003_44cd:
    pop hl
    ld c, l
    xor a
    ret


Call_003_44d1:
    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_003_44e4

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_003_44e4

    ld b, $20

Call_003_44e4:
jr_003_44e4:
    ld a, b
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


Call_003_452b:
    ld a, e
    swap a
    and $0f
    ld e, a
    ld a, d
    and $f0
    or e
    ld l, a
    ld h, $c1
    ret


    push af
    push bc
    call Call_000_0201
    pop bc
    pop af
    ld [$cc2d], a
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
    ld a, $2b
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld b, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $00
    add c
    ld l, a
    ld [hl], $dc
    inc l
    ld [hl], $45
    inc l
    inc l
    ld a, [de]
    inc de
    ld [hl+], a
    inc l
    inc l
    inc l
    ld a, [de]
    inc de
    ld [hl], a
    ld a, $13
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $18
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    call Call_000_017a
    call Call_003_403d
    ld a, $2f
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 2, a
    jr z, jr_003_45bf

    ld l, c
    push hl
    call Call_000_024f
    ld b, a
    ld a, $1e
    add c
    ld l, a
    ld d, [hl]
    dec l
    ld e, [hl]
    ld a, b
    call Call_000_024c
    pop hl
    ld c, l

jr_003_45bf:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    push af
    push hl
    call Call_003_460d
    pop hl
    pop af
    ld [hl], a
    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $ff
    or a
    ret


    dec b
    jr z, jr_003_45e5

    dec b
    jr nz, jr_003_460a

jr_003_45e2:
    ld b, $00
    ret


jr_003_45e5:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_45e2

    ld a, $32
    add c
    ld l, a
    ld a, [$deaf]
    and [hl]
    jr nz, jr_003_460a

    ld a, $2f
    add c
    ld l, a
    bit 1, [hl]
    push hl
    call nz, Call_003_4106
    pop hl
    bit 0, [hl]
    call nz, Call_003_40ec
    call Call_003_460d
    jr c, jr_003_45e2

jr_003_460a:
    jp Jump_003_41d7


Call_003_460d:
    ld a, $2b
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [hl]
    or a
    jr nz, jr_003_461e

    call Call_000_015f
    or a
    ret


jr_003_461e:
    ld a, $26
    add c
    ld l, a
    ld b, [hl]
    push hl
    push bc
    call Call_000_015f
    pop bc
    pop hl
    ldh a, [$ff8b]
    or a
    ret z

    push hl
    ld a, $2d
    add c
    ld l, a
    or a
    dec [hl]
    pop hl
    ret nz

    ld [hl], b
    ld a, $17
    add c
    ld l, a
    ldh a, [$ff8e]
    ld [hl], a
    scf
    ret


Call_003_4641:
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
    ld de, $468c
    call Call_003_403d
    ld a, $01
    ld [$d703], a
    ret


    nop
    nop
    nop
    inc bc

Call_003_4690:
    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_003_46ac

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


jr_003_46ac:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $02
    ld [$dd00], a
    ret


Call_003_46b8:
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


Call_003_46cd:
    ld a, [$ccc1]
    or a
    jr nz, jr_003_46e0

    ld a, $01
    ld [$ccc1], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $0a
    xor a
    ret


jr_003_46e0:
    call Call_003_4176
    and $02
    ret


Jump_003_46e6:
    push hl
    push bc
    call Call_003_46cd
    pop bc
    pop hl
    or a
    jr z, jr_003_4707

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
    jr jr_003_470d

jr_003_4707:
    ld b, l
    ld a, $17
    add c
    ld l, a
    ld [hl], b

jr_003_470d:
    call Call_000_025e
    ld b, $01
    ret


Jump_003_4713:
    push de
    call Call_003_42dc
    pop de
    call Call_003_42f6
    jr nz, jr_003_470d

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_003_473b

    ld a, $01
    ld [$dee9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$d74a], a
    call Call_000_015c
    jr jr_003_470d

jr_003_473b:
    call Call_003_4690
    jr jr_003_470d

    or $0a
    db $ec
    ld [$f9e8], sp
    jr @-$05

    dec c
    ld c, $0f
    ld c, $0d
    ld c, $0f
    ld c, $0d
    dec b
    inc b
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc b
    dec b
    nop
    db $fd
    nop
    cp $00
    rst $38

jr_003_4760:
    ldh a, [$fffe]
    jr nz, jr_003_4760

    jr nz, @+$01

    nop
    nop
    ldh [rP1], a
    ld a, b
    ld a, [$0000]
    nop
    nop
    adc $08
    rlca
    inc de
    ld [bc], a
    ld h, l
    rst $18
    nop

Jump_003_4778:
    ld a, b
    dec b
    jr z, jr_003_47bf

    dec b
    jr z, jr_003_478a

    dec b
    jp z, Jump_003_47e9

    dec b
    jp z, Jump_003_478d

    or a
    jr z, jr_003_47ae

jr_003_478a:
    ld b, $00
    ret


Jump_003_478d:
    ld a, $4a
    call Call_000_020a
    ld [$ca02], a
    ld a, $26
    call Call_000_020a
    ld [$ca09], a
    ld a, $27
    call Call_000_020a
    ld [$ca08], a
    ld a, $61
    call Call_000_020a
    ld [$ca07], a
    ret


jr_003_47ae:
    ld d, $f8
    call Call_003_438d
    call Call_000_025e
    call Call_003_4641
    ld de, $4e48
    jp Jump_000_01dd


jr_003_47bf:
    ld a, [$deaf]
    and $27
    jp nz, Jump_003_47e9

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_003_4829

    dec a
    jp z, Jump_003_48e6

    dec a
    jp z, Jump_003_498f

    ld a, b
    or a
    jr z, jr_003_47fa

    dec a
    jr z, jr_003_4804

    ld a, $17
    add c
    ld l, a
    ld [hl], $01

Jump_003_47e6:
jr_003_47e6:
    call Call_000_025e

Jump_003_47e9:
    call Call_003_46b8
    ld a, $18
    add c
    ld l, a
    ld b, [hl]
    ld a, $35
    add c
    ld l, a
    ld a, b
    ld [hl], a
    ld b, $01
    ret


jr_003_47fa:
    ld b, $00
    ld l, $02
    ld de, $4740
    jp Jump_003_46e6


jr_003_4804:
    ld de, $4dec
    jp Jump_003_4713


Call_003_480a:
    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    and $fe
    ld [hl], a
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $1e
    add $fe
    ld l, a
    ld [hl], $02
    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    ret


jr_003_4829:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_4839

    dec a
    jr z, jr_003_484a

    dec a
    jr z, jr_003_4858

    jr jr_003_4891

jr_003_4839:
    call Call_003_480a
    ld a, $18
    add c
    ld l, a
    ld b, [hl]
    ld a, $35
    add c
    ld l, a
    ld a, b
    ld [hl], a
    jp Jump_003_47e6


jr_003_484a:
    ld de, $4e34
    call Call_003_42dc
    jr nc, jr_003_47e6

    call Call_003_480a
    jp Jump_003_47e6


jr_003_4858:
    ld a, $18
    add c
    ld l, a
    ld b, [hl]
    ld a, $35
    add c
    ld l, a
    ld a, [hl]
    cp b
    jr nz, jr_003_4883

    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_47e6

    ld [hl], $1e
    call Call_003_4bb1
    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $09
    jp nz, Jump_003_47e6

jr_003_4883:
    call Call_000_015c
    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    or $01
    ld [hl], a
    jp Jump_003_4932


jr_003_4891:
    ld de, $4e10
    call Call_003_42dc
    jp nc, Jump_003_47e6

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    xor a
    ld [$ca00], a
    ld [$ca01], a
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_003_48cf

    ld de, $475a
    call Call_003_4080
    call Call_003_4078
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    jp Jump_003_47e6


jr_003_48cf:
    call Call_003_4982
    ld a, $34
    add c
    ld l, a
    ld [hl], $76
    ld a, $02
    call Call_003_4a50
    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    jp Jump_003_47e6


Jump_003_48e6:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_48f3

    dec a
    jr z, jr_003_493a

    jr jr_003_4950

jr_003_48f3:
    ld de, $4e24
    ld a, [$ca00]
    cp $02
    jr c, jr_003_4900

    ld de, $4e2c

jr_003_4900:
    call Call_000_015f
    ld de, $4740
    call Call_003_4176
    and $01
    jr nz, jr_003_4929

    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $09
    jr nz, jr_003_491d

    xor a
    call Call_003_4a50
    jr jr_003_4937

jr_003_491d:
    cp $19
    jp nz, Jump_003_47e6

    ld a, $01
    call Call_003_4a50
    jr jr_003_4937

jr_003_4929:
    call Call_003_4070
    ld a, $34
    add c
    ld l, a
    ld [hl], $5a

Jump_003_4932:
    ld a, $32
    add c
    ld l, a
    inc [hl]

jr_003_4937:
    jp Jump_003_47e6


jr_003_493a:
    ld de, $4e2c
    call Call_000_015f
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_47e6

    ld a, $03
    ld [$ca00], a
    jp Jump_003_4932


jr_003_4950:
    ld de, $4e24
    ld a, [$ca01]
    cp $01
    jr nc, jr_003_495d

    ld de, $4e2c

jr_003_495d:
    call Call_000_015f
    ld a, [$ca01]
    cp $02
    jp nz, Jump_003_47e6

Jump_003_4968:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    jp Jump_003_47e6


Call_003_4982:
    ld de, $4760
    call Call_003_4080
    ld de, $4762
    call Call_003_40a6
    ret


Jump_003_498f:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_499f

    dec a
    jr z, jr_003_49b5

    dec a
    jr z, jr_003_49bd

    jr jr_003_49ef

jr_003_499f:
    ld de, $4e24
    call Call_000_015f
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_47e6

    ld a, $03
    call Call_003_4a50
    jp Jump_003_4932


jr_003_49b5:
    call Call_003_4a00
    jr z, jr_003_49c2

    jp Jump_003_4932


jr_003_49bd:
    call Call_003_4a26
    jr nz, jr_003_49d0

jr_003_49c2:
    ld a, [$ca01]
    cp $01
    jp nz, Jump_003_47e6

    call Call_003_4a38
    jp nc, Jump_003_47e6

jr_003_49d0:
    ld a, $0d
    add c
    ld l, a
    ld a, [$ca03]
    sub $08
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$ca04]
    sub $08
    ld [hl], a
    call Call_000_015c
    ld a, $02
    ld [$ca01], a
    jp Jump_003_4932


jr_003_49ef:
    ld de, $4e24
    call Call_000_015f
    ld a, [$ca01]
    cp $03
    jp nz, Jump_003_47e6

    jp Jump_003_4968


Call_003_4a00:
    ld de, $4e40
    call Call_000_015f
    call Call_003_4106
    ld de, $4740
    call Call_003_4176
    ret z

    bit 0, a
    jr nz, jr_003_4a1c

    bit 1, a
    ret z

    call Call_003_4982
    xor a
    ret


jr_003_4a1c:
    call Call_000_015c
    call Call_003_4070
    ld a, $01
    or a
    ret


Call_003_4a26:
    ld de, $4e40
    call Call_000_015f
    call Call_003_4106
    ld de, $4740
    call Call_003_4176
    and $02
    ret


Call_003_4a38:
    ld a, $0d
    add c
    ld l, a
    ld a, [$ca03]
    sub [hl]
    cp $10
    jr c, jr_003_4a45

    ret


jr_003_4a45:
    ld a, $0f
    add c
    ld l, a
    ld a, [$ca04]
    sub [hl]
    cp $10
    ret


Call_003_4a50:
    ld l, c
    push hl
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    ld a, $df
    ld [$cc00], a
    ld a, $4d
    ld [$cc01], a
    call Call_003_442a
    jr c, jr_003_4a75

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    call Call_003_4a8b
    xor a

jr_003_4a75:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_4ace

    dec b
    jr z, jr_003_4a88

    dec b
    jp z, Jump_003_4aec

    dec b
    ret z

    or a
    jr z, jr_003_4a8b

Jump_003_4a88:
jr_003_4a88:
    ld b, $00
    ret


Call_003_4a8b:
jr_003_4a8b:
    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_000_015c
    ld de, $4e48
    call Call_000_01dd
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $d6
    ld l, a
    ld b, [hl]
    add $22
    ld l, a
    ld [hl], b
    ld a, b
    or a
    jr z, jr_003_4ab5

    dec a
    jr z, jr_003_4aba

    dec a
    jr z, jr_003_4aca

    jr jr_003_4ac4

jr_003_4ab5:
    ld de, $475c
    jr jr_003_4abd

jr_003_4aba:
    ld de, $475e

jr_003_4abd:
    call Call_003_4080
    call Call_003_4078
    ret


jr_003_4ac4:
    ld a, $34
    add c
    ld l, a
    ld [hl], $76

jr_003_4aca:
    call Call_003_4982
    ret


jr_003_4ace:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_4a88

    ld a, [$deaf]
    or a
    jp nz, Jump_003_4aec

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_4af2

    dec a
    jr z, jr_003_4af2

    dec a
    jr z, jr_003_4b15

    jp Jump_003_4b6d


Jump_003_4aec:
jr_003_4aec:
    call Call_000_025e
    ld b, $01
    ret


jr_003_4af2:
    ld de, $4e2c
    call Call_000_015f
    ld a, [$ca00]
    cp $03
    jp nz, Jump_003_4aec

    ld de, $4740
    call Call_003_4176
    and $01
    jp z, Jump_003_4aec

    ld a, [$ca01]
    inc a
    ld [$ca01], a
    jp Jump_003_4a88


jr_003_4b15:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_4b23

    dec a
    jr z, jr_003_4b31

    dec a
    jr z, jr_003_4b5c

jr_003_4b23:
    call Call_003_4a00
    jp z, Jump_003_4aec

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    jr jr_003_4aec

jr_003_4b31:
    call Call_003_4a26
    jp z, Jump_003_4aec

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $08
    ld [$ca03], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add $08
    ld [$ca04], a
    ld a, $01
    ld [$ca01], a
    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $02
    jp Jump_003_4aec


jr_003_4b5c:
    ld de, $4e2c
    call Call_000_015f
    ld a, [$ca01]
    cp $02
    jp nz, Jump_003_4aec

    jp Jump_003_4a88


Jump_003_4b6d:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_4b7a

    dec a
    jr z, jr_003_4b91

    jr jr_003_4b9e

jr_003_4b7a:
    ld de, $4e2c
    call Call_000_015f
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_4aec

    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    jp Jump_003_4aec


jr_003_4b91:
    call Call_003_4a00
    jr z, jr_003_4ba3

    ld a, $32
    add c
    ld l, a
    ld [hl], $02
    jr jr_003_4ba3

jr_003_4b9e:
    call Call_003_4a26
    jr nz, jr_003_4ba9

jr_003_4ba3:
    call Call_003_4a38
    jp nc, Jump_003_4aec

jr_003_4ba9:
    ld a, $03
    ld [$ca01], a
    jp Jump_003_4a88


Call_003_4bb1:
    ld l, c
    push hl
    ld a, $33
    add c
    ld l, a
    ld b, [hl]
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_4bc5

    ld de, $4751
    jr jr_003_4bc8

jr_003_4bc5:
    ld de, $4748

jr_003_4bc8:
    ld a, b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    ld de, $4744
    ld a, $35
    ld [$cc00], a
    ld a, $50
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_4be7

    call Call_003_4bf5
    xor a

jr_003_4be7:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_4c15

    dec b
    jp nz, Jump_003_4c34

Jump_003_4bf2:
jr_003_4bf2:
    ld b, $00
    ret


Call_003_4bf5:
    ld a, $05
    add c
    ld l, a
    ld a, [$ca02]
    ld [hl], a
    ld de, $02c0
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
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
    ret


jr_003_4c15:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_4bf2

    ld a, [$deaf]
    or a
    jp nz, Jump_003_4c34

    ld de, $5042
    call Call_000_015f
    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_4c37

    call Call_003_40ec

Jump_003_4c34:
    jp Jump_003_41d7


jr_003_4c37:
    ld a, $0d
    add c
    ld l, a
    ld a, [$d722]
    ld [hl], a
    ld a, $0f
    add c
    ld l, a
    ld a, [$d725]
    ld [hl], a
    ld a, $80
    ld [$ca06], a
    ld a, $36
    add c
    ld l, a
    ld [hl], $00
    call Call_000_0168
    and $03
    jr z, jr_003_4cca

    dec a
    jr z, jr_003_4c8b

    dec a
    jr z, jr_003_4ca6

    jr jr_003_4c70

Call_003_4c61:
    ld a, $36
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $05
    ret


Jump_003_4c6a:
    call Call_003_4c61
    jp z, Jump_003_4bf2

jr_003_4c70:
    ld a, [wWTankCount]
    or a
    jr z, jr_003_4c85

    dec a
    ld [wWTankCount], a
    ld a, [$ca08]
    ld [$ca06], a
    ld a, $03
    jp Jump_003_4d2d


jr_003_4c85:
    call Call_003_4c61
    jp z, Jump_003_4bf2

jr_003_4c8b:
    ld a, [wETankAndPieceCount]
    or a
    jr z, jr_003_4ca0

    dec a
    ld [wETankAndPieceCount], a
    ld a, [$ca07]
    ld [$ca06], a
    ld a, $01
    jp Jump_003_4d2d


jr_003_4ca0:
    call Call_003_4c61
    jp z, Jump_003_4bf2

jr_003_4ca6:
    ld a, [wPChipCountLow]
    ld e, a
    ld a, [wPChipCountHigh]
    ld d, a
    ld a, e
    sub $02
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    jr c, jr_003_4cc4

    ld a, e
    ld [wPChipCountLow], a
    ld a, d
    ld [wPChipCountHigh], a
    ld a, $04
    jr jr_003_4d2d

jr_003_4cc4:
    call Call_003_4c61
    jp z, Jump_003_4bf2

jr_003_4cca:
    ld a, [wSTankCount]
    or a
    jr z, jr_003_4cde

    dec a
    ld [wSTankCount], a
    ld a, [$ca09]
    ld [$ca06], a
    ld a, $02
    jr jr_003_4d2d

jr_003_4cde:
    call Call_003_4c61
    jp z, Jump_003_4bf2

    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    ld a, $37
    add c
    ld l, a
    ld a, [$de9c]
    srl a
    ld [hl], a
    ld b, $00
    ld de, $de9f

jr_003_4cf9:
    ld a, $37
    add c
    ld l, a
    srl [hl]
    jr nc, jr_003_4d0d

    ld a, [de]
    sub $10
    jr c, jr_003_4d0d

    ld [de], a
    ld a, $33
    add c
    ld l, a
    ld [hl], $01

jr_003_4d0d:
    inc de
    inc b
    ld a, b
    cp $07
    jr nz, jr_003_4d1e

    push af
    ld a, $37
    add c
    ld l, a
    ld a, [$de9d]
    ld [hl], a
    pop af

jr_003_4d1e:
    cp $0c
    jr nz, jr_003_4cf9

    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_003_4c6a

    ld a, $00

Jump_003_4d2d:
jr_003_4d2d:
    ld [$ca05], a
    call Call_003_4d36
    jp Jump_003_4bf2


Call_003_4d36:
    ld l, c
    push hl
    ld b, a
    add a
    add $9c
    ld e, a
    ld a, $50
    adc $00
    ld d, a
    ld a, [de]
    ld [$cc00], a
    inc de
    ld a, [de]
    ld [$cc01], a
    ld de, $476c
    call Call_003_420a
    jr c, jr_003_4d5d

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    call Call_003_4d6b
    xor a

jr_003_4d5d:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_4d9e

    dec b
    jp nz, Jump_003_4ddc

jr_003_4d68:
    ld b, $00
    ret


Call_003_4d6b:
    ld a, $24
    add c
    ld l, a
    ld [hl], $00
    call Call_000_0168
    and $03
    or a
    jr z, jr_003_4d81

    dec a
    jr z, jr_003_4d86

    call Call_003_4070
    jr jr_003_4d8c

jr_003_4d81:
    ld de, $4764
    jr jr_003_4d89

jr_003_4d86:
    ld de, $4768

jr_003_4d89:
    call Call_003_409c

jr_003_4d8c:
    ld de, $476a
    call Call_003_40a6
    ld a, $05
    add c
    ld l, a
    ld a, [$ca06]
    ld [hl], a
    call Call_000_015c
    ret


jr_003_4d9e:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_4d68

    ld a, [$deaf]
    or a
    jp nz, Jump_003_4ddc

    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_4dc1

    dec a
    jr z, jr_003_4dc6

    dec a
    jr z, jr_003_4dcb

    dec a
    jr z, jr_003_4dd0

    ld de, $515f
    jr jr_003_4dd3

jr_003_4dc1:
    ld de, $50b3
    jr jr_003_4dd3

jr_003_4dc6:
    ld de, $50dc
    jr jr_003_4dd3

jr_003_4dcb:
    ld de, $510d
    jr jr_003_4dd3

jr_003_4dd0:
    ld de, $5136

jr_003_4dd3:
    call Call_000_015f
    call Call_003_4106
    call Call_003_40ec

Jump_003_4ddc:
    jp Jump_003_41d7


    ld a, b
    ld c, d
    ld e, a
    dec h
    nop
    ld c, b
    ld c, [hl]
    ld bc, $4101
    ld [bc], a
    inc bc
    jp Jump_003_4e48


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
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0708], sp
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    ld c, b
    ld c, [hl]
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
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$48ff], sp
    ld c, [hl]
    ld b, $06
    rlca
    ld [$ff07], sp
    ld c, b
    ld c, [hl]
    ld b, $09
    ld a, [bc]
    dec bc
    ld a, [bc]
    rst $38
    ld c, b
    ld c, [hl]
    inc b
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    nop
    rst $38
    ld c, b
    ld c, [hl]
    ld b, $0c
    dec c
    ld c, $0d
    rst $38

Jump_003_4e48:
    ld h, [hl]
    ld c, [hl]
    and e
    ld c, [hl]
    ldh [$ff4e], a
    ld de, $3e4f
    ld c, a
    ld h, a
    ld c, a
    add h
    ld c, a
    and c
    ld c, a
    cp [hl]
    ld c, a
    rst $10
    ld c, a
    db $e4
    ld c, a
    push af
    ld c, a
    ld b, $50
    inc de
    ld d, b
    inc h
    ld d, b
    db $f4
    dec bc
    db $ed
    ld [$f8ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06e8], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld [$0ae8], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    nop
    ld [$100d], sp
    add b
    pop af
    inc b
    rst $28
    ld [$f3ea], sp
    nop
    stop
    ld [$1001], sp
    ld [$10f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1009], sp
    ld [$0de9], sp
    jr nc, jr_003_4ecc

jr_003_4ecc:
    ld [$300c], sp
    nop
    ld [$300b], sp
    nop
    ld [$300a], sp
    ldh a, [c]
    rst $18
    ld c, $10
    nop
    ld [$100f], sp
    add b
    db $f4
    dec bc
    ld [$ea08], a
    ld hl, sp+$13

jr_003_4ee7:
    stop
    ld [$1014], sp
    ld [$15f4], sp
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
    rlca
    dec de
    jr nc, @-$7e

    db $f4
    dec bc
    rst $28
    ld [$fcea], sp
    dec e
    db $10
    ld [$1ef8], sp
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
    add b
    db $f4
    dec bc
    push af
    ld [$f8f2], sp
    daa
    stop
    ld [$1028], sp
    ld [$29f4], sp
    stop
    ld [$102a], sp
    nop
    ld [$102b], sp
    ld [$2cec], sp
    stop
    ld [$102d], sp
    nop
    ld [$102e], sp
    nop
    rlca
    inc l
    jr nc, jr_003_4ee7

    ldh a, [rIF]
    cp $08
    ld a, [$2ff8]
    stop
    ld [$302f], sp
    ld [$30f0], sp
    stop
    ld [$1031], sp
    nop
    ld [$3031], sp
    nop
    ld [$3030], sp
    add b
    db $f4
    dec bc
    db $fc
    ld [$f4fa], sp
    ld [hl-], a
    stop
    ld [$1033], sp
    nop
    ld [$3032], sp
    ld [$34f0], sp
    stop
    ld [$1035], sp
    nop
    ld [$3034], sp
    add b
    or $09
    ld a, [$fa08]
    db $f4
    ld [hl], $10
    nop
    ld [$1037], sp
    nop
    ld [$3036], sp
    ld [$38f0], sp
    stop
    ld [$1039], sp
    nop
    ld [$3038], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$08
    ldh a, [c]
    db $fc
    ld a, [hl-]
    db $10
    ld [$3bfc], sp
    stop
    ld [$303b], sp
    ld [$3cf8], sp
    stop
    ld [$303c], sp
    add b
    ld hl, sp+$07
    ld [bc], a
    ld [$f802], sp
    dec a
    stop
    ld [$303d], sp
    add b
    ld a, [$0005]
    ld [$fcfa], sp
    ld a, $10
    ld [$3ffc], sp
    stop
    ld [$303f], sp
    add b
    ei
    inc b
    cp $08
    ld a, [$40fc]
    db $10
    ld [$41fc], sp
    stop
    ld [$3041], sp
    add b
    ld hl, sp+$07
    ld [bc], a
    ld [$f802], sp
    dec a
    stop
    ld [$303d], sp
    add b
    ld a, [$0105]
    add hl, bc
    ei
    db $fc
    ld a, $10
    ld [$3ffc], sp
    stop
    ld [$303f], sp
    add b
    ei
    inc b
    nop
    ld a, [bc]
    db $fc
    db $fc
    ld b, b
    db $10
    ld [$41fc], sp
    stop
    ld [$3041], sp
    add b
    ld [$474b], a
    and l
    nop
    ld c, h
    ld d, b
    ld bc, $4001
    ld [bc], a
    inc bc
    call nz, Call_003_504c
    ld [bc], a
    nop
    ld bc, $0002
    ld bc, $ff03

Call_003_504c:
    ld d, h
    ld d, b
    ld e, l
    ld d, b
    ld [hl], d
    ld d, b
    add a
    ld d, b
    db $fc
    inc bc
    ei
    inc b
    db $fc
    db $fc
    nop
    db $10
    add b
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp-$08
    ld bc, $0010
    rlca
    ld bc, $0730
    ld sp, hl
    ld bc, $0050
    rlca
    ld bc, $8070
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp-$08
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, jr_003_5086

    ld sp, hl
    ld [bc], a
    ld d, b
    nop
    rlca
    ld [bc], a
    ld [hl], b

jr_003_5086:
    add b
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp-$08
    inc bc
    stop
    rlca
    inc bc
    jr nc, jr_003_509b

    ld sp, hl
    inc bc
    ld d, b
    nop
    rlca
    inc bc
    ld [hl], b

jr_003_509b:
    add b
    and [hl]
    ld d, b
    rst $08
    ld d, b
    nop
    ld d, c
    add hl, hl
    ld d, c
    ld d, d
    ld d, c
    ld h, b
    ld c, l
    ld b, a
    and h
    nop
    ld c, h
    ld d, b
    ld bc, $c001
    ld bc, $c103
    cp c
    ld d, b
    inc b
    nop
    ld bc, $bdff
    ld d, b
    add $50
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld [bc], a
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    inc bc
    db $10
    add b
    ld h, b
    ld c, l
    ld b, a
    and h
    nop
    ldh [c], a
    ld d, b
    ld bc, $c001
    ld bc, $c203
    ldh [c], a
    ld d, b
    inc b
    nop
    ld bc, $e6ff
    ld d, b
    di
    ld d, b
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    db $fc
    nop
    db $10
    ld [$0200], sp
    db $10
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    db $fc
    ld bc, $0810
    nop
    ld [bc], a
    db $10
    add b
    ld h, b
    ld c, l
    ld b, a
    and h
    nop
    ld [de], a
    ld d, c
    ld bc, $c001
    ld bc, $c403
    ld [de], a
    ld d, c
    stop
    rst $38
    inc d
    ld d, c
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$01f8], sp
    ld [hl], b
    nop
    ld [$7000], sp
    add b
    ld h, b
    ld c, l
    ld b, a
    and h
    nop
    dec sp
    ld d, c
    ld bc, $c001
    ld bc, $c403
    dec sp
    ld d, c
    stop
    rst $38
    dec a
    ld d, c
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    ld [$3000], sp
    ld [$01f8], sp
    stop
    ld [$3001], sp
    add b
    ld h, b
    ld c, l
    ld b, a
    and h
    nop
    ld h, l
    ld d, c
    ld bc, $c001
    ld bc, $c203
    ld h, l
    ld d, c
    inc b
    nop
    ld bc, $69ff
    ld d, c
    halt
    ld d, c
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld a, [$100a]
    nop
    ld [$100b], sp
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld a, [$100c]
    nop
    ld [$100b], sp
    add b
    or $09
    ldh a, [$ff08]
    nop
    ldh a, [c]
    ld a, b
    db $fc
    ld [hl], h
    ld a, [$f8f8]
    ld [$faf8], sp
    ld b, $fa
    ld b, $f8
    ld [$08f8], sp
    jp nc, Jump_000_0708

    inc de
    inc bc
    ld h, l
    rst $18
    nop

Jump_003_51a1:
    ld a, b
    dec b
    jr z, jr_003_51de

    dec b
    jr z, jr_003_51b3

    dec b
    jp z, Jump_003_5204

    dec b
    jp z, Jump_003_51b6

    or a
    jr z, jr_003_51bf

jr_003_51b3:
    ld b, $00
    ret


Jump_003_51b6:
    ld a, $4c
    call Call_000_020a
    ld [$ca02], a
    ret


jr_003_51bf:
    ld d, $f8
    call Call_003_438d
    call Call_000_025e
    call Call_003_4641
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    ld a, $00
    ld [$ca00], a
    ld [$ca01], a
    ld de, $5795
    jp Jump_000_01dd


jr_003_51de:
    ld a, [$deaf]
    and $27
    jp nz, Jump_003_5204

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_003_521a

    dec a
    jp z, Jump_003_52d9

    ld a, b
    or a
    jr z, jr_003_520a

    dec a
    jr z, jr_003_5214

    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_003_5201:
    call Call_000_025e

Jump_003_5204:
    call Call_003_46b8
    ld b, $01
    ret


jr_003_520a:
    ld b, $00
    ld l, $02
    ld de, $5183
    jp Jump_003_46e6


jr_003_5214:
    ld de, $5767
    jp Jump_003_4713


jr_003_521a:
    ld de, $578d
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $09
    jr nz, jr_003_525e

    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_003_5264

    ld [hl], $01
    ld de, $5187
    call Call_003_4080
    call Call_003_4078
    ld de, $5183
    call Call_003_4176
    bit 0, a
    jr z, jr_003_5264

    call Call_000_015c
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $0a
    add $1b
    ld l, a
    ld [hl], $00
    jr jr_003_5264

jr_003_525e:
    ld a, $32
    add c
    ld l, a
    ld [hl], $00

jr_003_5264:
    ld a, [$d783]
    or a
    jp z, Jump_003_5201

    call Call_003_41bf
    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    add $1b
    ld l, a
    ld [hl], $01
    call Call_000_0168
    bit 7, a
    jr nz, jr_003_5296

    ld a, $34
    add c
    ld l, a
    ld [hl], $00
    ld de, $5189
    call Call_003_40a6
    ld a, $03
    call Call_003_53bf
    jr jr_003_52c8

jr_003_5296:
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $09
    jr c, jr_003_52a7

    ld a, $34
    add c
    ld l, a
    ld [hl], $01
    jr jr_003_52bd

jr_003_52a7:
    ld a, $34
    add c
    ld l, a
    ld [hl], $02
    call Call_003_5511
    jr c, jr_003_52bd

    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $1b
    ld l, a
    ld [hl], $00

jr_003_52bd:
    ld de, $518b
    call Call_003_40a6
    ld a, $02
    call Call_003_53bf

jr_003_52c8:
    ld a, $1d
    add c
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    jp Jump_003_5201


Jump_003_52d9:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_530b

    dec a
    jr z, jr_003_5343

    dec a
    jr z, jr_003_535d

    dec a
    jp z, Jump_003_538a

    dec a
    jp z, Jump_003_53a9

    jr jr_003_52f1

jr_003_52f1:
    ld de, $5783
    call Call_003_42dc
    jp nc, Jump_003_5201

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    add $1b
    ld l, a
    ld [hl], $01
    jp Jump_003_5201


jr_003_530b:
    call Call_003_41bf
    call Call_003_4106
    ld de, $5183
    call Call_003_4176
    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jp nz, Jump_003_5201

    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_003_5330

    call Call_003_53fc
    jr c, jr_003_534f

    jr jr_003_5335

jr_003_5330:
    call Call_003_5511
    jr c, jr_003_534f

jr_003_5335:
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    add $1b
    ld l, a
    ld [hl], $02
    jp Jump_003_5201


jr_003_5343:
    ld de, $5788
    call Call_003_42dc
    jp nc, Jump_003_5201

    call Call_000_015c

jr_003_534f:
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    add $1b
    ld l, a
    ld [hl], $03
    jp Jump_003_5201


jr_003_535d:
    call Call_003_41bf
    call Call_003_4106
    ld de, $5183
    call Call_003_4176
    bit 1, a
    jp z, Jump_003_5201

    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_003_5396

    call Call_003_5511
    jr c, jr_003_5396

    ld a, $17
    add c
    ld l, a
    ld [hl], $01
    add $1b
    ld l, a
    ld [hl], $04
    jp Jump_003_5201


Jump_003_538a:
    ld de, $5783
    call Call_003_42dc
    jp nc, Jump_003_5201

    call Call_000_015c

jr_003_5396:
    ld a, $33
    add c
    ld l, a
    ld [hl], $32
    add $e4
    ld l, a
    ld [hl], $00
    add $1b
    ld l, a
    ld [hl], $05
    jp Jump_003_5201


Jump_003_53a9:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_5201

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_003_5201


Call_003_53bf:
    ld l, c
    push hl
    push af
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    ld a, [$d722]
    sub b
    ld e, a
    bit 7, a
    jr z, jr_003_53d4

    ld d, $ff

jr_003_53d4:
    ld a, e
    ld [$ca06], a
    ld a, d
    ld [$ca07], a
    pop af
    ld c, a
    ld l, e
    ld h, d

jr_003_53e0:
    add hl, de
    ld e, l
    ld d, h
    dec a
    jr nz, jr_003_53e0

    ld a, c
    cp $03
    jr nz, jr_003_53f9

    ld a, [$ca06]
    ld e, a
    ld a, [$ca07]
    ld d, a
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc d
    ld d, a

jr_003_53f9:
    pop hl
    ld c, l
    ret


Call_003_53fc:
    ld l, c
    push hl
    ld a, [$ca00]
    or a
    jr nz, jr_003_5426

    ld b, $00
    ld de, $518d
    ld a, $26
    ld [$cc00], a
    ld a, $56
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_5426

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_003_543c
    xor a
    pop hl
    ld c, l
    ret


jr_003_5426:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_545e

    dec b
    jp nz, Jump_003_550e

Jump_003_5432:
jr_003_5432:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_003_543c:
    ld a, $05
    add c
    ld l, a
    ld a, [$ca02]
    ld [hl], a
    ld de, $012c
    ld a, e
    ld [$ca04], a
    ld a, d
    ld [$ca05], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $13
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ret


jr_003_545e:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_5432

    ld a, [$deaf]
    or a
    jp nz, Jump_003_550e

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5486

    dec a
    jr z, jr_003_54c4

    ld de, $5667
    call Call_003_42dc
    jr nc, jr_003_548c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    jr jr_003_548c

jr_003_5486:
    ld de, $566e
    call Call_000_015f

jr_003_548c:
    ld a, [$ca04]
    ld e, a
    ld a, [$ca05]
    ld d, a
    dec de
    ld a, e
    ld [$ca04], a
    ld a, d
    ld [$ca05], a
    ld a, e
    or d
    jr z, jr_003_54b6

    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $7f
    jr nz, jr_003_54b6

    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_54b6

    jp Jump_003_550e


jr_003_54b6:
    ld b, $36
    call Call_000_01f8
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    jp Jump_003_550e


jr_003_54c4:
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    res 2, [hl]

Jump_003_54cc:
    ld de, $5642
    ld b, $36
    call Call_000_01fb
    or a
    jr z, jr_003_5505

    ldh a, [$ff8f]
    or a
    jp nz, Jump_003_5432

    ld a, b
    add a
    add $55
    ld e, a
    ld a, $56
    adc $00
    ld d, a
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld b, a
    inc de
    ld a, $0f
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld d, a
    ld e, b
    call Call_003_5603
    ld a, $37
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_003_54cc

    jr jr_003_550b

jr_003_5505:
    ld a, $1a
    add c
    ld l, a
    ld [hl], $00

jr_003_550b:
    ld b, $01
    ret


Jump_003_550e:
    jp Jump_003_41d7


Call_003_5511:
    ld l, c
    push hl
    ld a, [$ca01]
    cp $03
    jr nc, jr_003_553a

    ld de, $518d
    ld a, $33
    ld [$cc00], a
    ld a, $56
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_553a

    ld a, [$ca01]
    inc a
    ld [$ca01], a
    call Call_003_554f
    xor a
    pop hl
    ld c, l
    ret


jr_003_553a:
    scf
    pop hl
    ld c, l
    ret


Call_003_553e:
    dec b
    jr z, jr_003_5582

    dec b
    jp nz, Jump_003_55fc

Jump_003_5545:
jr_003_5545:
    ld a, [$ca01]
    dec a
    ld [$ca01], a
    ld b, $00
    ret


Call_003_554f:
    ld a, $05
    add c
    ld l, a
    ld a, [$ca02]
    ld [hl], a
    ld b, $00
    ld a, $17
    add c
    ld l, a
    ld [hl], b
    add $13
    ld l, a
    ld [hl], b
    add $08
    ld l, a
    ld [hl], b
    call Call_000_024f
    dec b
    ld a, $35
    add c
    ld l, a
    ld [hl], b
    inc b
    ld de, $00aa
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_000_015c


jr_003_5582:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_5545

    ld a, [$deaf]
    or a
    jp nz, Jump_003_55fc

    ld de, $5676
    call Call_000_015f
    ld a, $32
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0a
    jr nz, jr_003_55cf

    ld [hl], $00
    call Call_000_024f
    dec b
    ld a, $35
    add c
    ld l, a
    ld e, [hl]
    ld a, b
    sub e
    and $0f
    cp $08
    jr nc, jr_003_55b5

    inc e
    jr jr_003_55b6

jr_003_55b5:
    dec e

jr_003_55b6:
    ld a, e
    and $0f
    ld b, a
    ld a, $35
    add c
    ld l, a
    ld [hl], b
    inc b
    ld a, $1d
    add c
    ld l, a
    ld a, b
    ld de, $00aa
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl

jr_003_55cf:
    call Call_003_40ec
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $7f
    jr nz, jr_003_55e4

    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_003_55fc

jr_003_55e4:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    ld a, $0f
    add c
    ld l, a
    ld d, [hl]
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    res 2, [hl]
    call Call_003_5603
    jp Jump_003_5545


Jump_003_55fc:
jr_003_55fc:
    call Call_003_41d7
    ret nz

    jp Jump_003_5545


Call_003_5603:
    push bc
    push de
    push hl
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    pop de
    pop bc
    ld a, $1a
    add c
    ld l, a
    ld [hl], $06
    call Call_003_44d1
    ld a, $00
    ld [$c3e2], a
    ld b, $25
    ld de, $5195
    jp Jump_000_021f


    ld a, [hl+]
    ld d, h
    ld b, a
    dec h
    nop
    ld a, h
    ld d, [hl]
    nop
    ld a, a
    ld b, b
    nop
    inc bc
    call nz, Call_003_553e
    ld b, a
    dec h
    nop
    ld a, h
    ld d, [hl]
    nop
    ld a, a
    ld b, b
    ld [bc], a
    inc bc
    jp $5195


    nop
    nop
    nop
    ld bc, $0501
    nop
    ld [bc], a
    ld bc, $0006
    inc bc
    ld bc, $0007
    inc b
    ld bc, $ff08
    nop
    nop
    nop
    ldh a, [$ff0b]
    push af
    stop
    dec bc
    dec bc
    nop
    db $10
    push af
    dec bc
    ldh a, [rP1]
    push af
    push af
    ld a, h
    ld d, [hl]
    inc d
    nop
    ld bc, $ff02
    ld a, h
    ld d, [hl]
    ld [$0302], sp
    ld [bc], a
    inc b
    rst $38
    ld a, h
    ld d, [hl]
    stop
    ld bc, $92ff
    ld d, [hl]
    sbc e
    ld d, [hl]
    xor h
    ld d, [hl]
    pop bc
    ld d, [hl]
    sub $56
    db $eb
    ld d, [hl]
    nop
    ld d, a
    ld de, $2657
    ld d, a
    scf
    ld d, a
    ld c, h
    ld d, a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $10
    add b
    ei
    inc b
    db $fc
    inc b
    ei
    ei
    ld bc, $0010
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    ld hl, sp+$07
    ld hl, sp+$06
    rst $30
    ld hl, sp+$04
    stop
    ld [$1005], sp
    ld [$06f8], sp
    stop
    ld [$1007], sp
    add b
    ld hl, sp+$08
    ld hl, sp+$07
    ld hl, sp-$08
    ld [$0010], sp
    ld [$1009], sp
    ld [$0af8], sp
    stop
    ld [$100b], sp
    add b
    rst $30
    dec b
    ld hl, sp+$07
    ld hl, sp-$09
    inc c
    stop
    ld [$100d], sp
    ld [$0ef8], sp
    stop
    ld [$100f], sp
    add b
    ld sp, hl
    ld b, $f9
    inc b
    ld hl, sp-$08
    db $10
    stop
    ld [$1011], sp
    rlca
    ld hl, sp+$12
    stop
    ld [$1013], sp
    add b
    ei
    inc bc
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ei
    ld bc, $0010
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    rst $30
    db $10
    stop
    ld [$1011], sp
    rlca
    ld hl, sp+$12
    stop
    ld [$1013], sp
    add b
    ld sp, hl
    nop
    ei
    inc b
    ei
    ld hl, sp+$01
    stop
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    ei
    ld b, $f9
    inc b
    ld sp, hl
    ld sp, hl
    db $10
    stop
    ld [$1011], sp
    rlca
    ld hl, sp+$12
    stop
    ld [$1013], sp
    add b
    rst $38
    ld b, $fb
    inc b
    ei
    cp $01
    stop
    ld [$1002], sp
    ld [$03f8], sp
    db $10
    add b
    sub l
    ld d, a
    ld [$ff02], sp
    sub l
    ld d, a
    ld [$ff00], sp
    sub l
    ld d, a
    ld b, $00
    dec b
    nop
    inc b
    nop
    dec b
    nop
    inc b
    ld bc, $0706
    ld bc, $0608
    ld [$0601], sp
    ld [$0806], sp
    ld b, $08
    ld b, $01
    rst $38
    sub l
    ld d, a
    ld e, $01
    rst $38
    sub l
    ld d, a
    ld e, $03
    rst $38
    sub l
    ld d, a
    ld b, $0a
    inc c
    add hl, bc
    dec bc
    rst $38
    xor a
    ld d, a
    ldh a, [$ff57]
    add hl, hl
    ld e, b
    ld [hl], d
    ld e, b
    xor a
    ld e, b
    db $f4
    ld e, b
    ld b, c
    ld e, c
    ld a, d
    ld e, c
    or e
    ld e, c
    db $ec
    ld e, c
    ld sp, $7e5a
    ld e, d
    rst $00
    ld e, d
    or $09
    ldh a, [$ff08]
    ld [$00f0], a
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
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
    add b
    push af
    ld [$08f0], sp
    db $eb
    ldh a, [rIF]
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12f1], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18ee], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    add b
    or $09
    add sp, $08
    db $e4
    pop af
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
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$1cea], sp
    stop
    ld [$101d], sp
    nop
    ld [$101e], sp
    nop
    ld [$101f], sp
    ld [$20e9], sp
    stop
    rrca
    jr nz, @+$32

    add b
    or $09

jr_003_5874:
    add sp, $08
    db $e4
    ldh a, [c]
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12f1], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$21f0], sp
    stop
    ld [$101d], sp
    nop
    ld [$101e], sp
    ld [$20f1], sp
    stop
    rrca
    jr nz, @+$32

    add b
    or $09
    ldh a, [c]
    ld [$f0ec], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$22f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1023], sp
    ld [$24e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1025], sp
    nop
    ld [$1026], sp
    ld [$27e3], sp
    stop
    ld [$1028], sp
    nop
    ld [$1029], sp
    nop
    ld [$102a], sp
    nop
    rlca
    daa
    jr nc, jr_003_5874

    or $09
    xor $08
    add sp, -$10
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$2bf0], sp
    stop
    ld [$1004], sp
    nop
    ld [$102c], sp
    nop
    ld [$102d], sp
    ld [$2ee8], sp
    stop
    ld [$1008], sp
    nop
    ld [$102f], sp
    nop
    ld [$1030], sp
    ld [$31e8], sp
    stop
    ld [$1032], sp
    nop
    ld [$1033], sp
    nop
    ld [$1034], sp
    ld [$35eb], sp
    stop
    ld [$1036], sp
    nop
    rlca
    dec [hl]
    jr nc, @-$7e

    push af
    ld [$08f0], sp
    db $eb
    ldh a, [$ff37]
    stop
    ld [$1010], sp
    nop
    ld [$1038], sp
    ld [$12f1], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18ee], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    add b
    push af
    ld [$08f0], sp
    db $eb
    ldh a, [$ff39]
    stop
    ld [$1010], sp
    nop
    ld [$103a], sp
    ld [$12f1], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18ee], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    add b
    push af
    ld [$08f0], sp
    db $eb
    ldh a, [$ff3b]
    stop
    ld [$1010], sp
    nop
    ld [$103c], sp
    ld [$12f1], sp
    stop
    ld [$1013], sp
    nop
    ld [$1014], sp
    ld [$15f0], sp
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$18ee], sp
    stop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    add b
    ei
    ld c, $f2
    ld [$f5ec], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$22f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1023], sp
    ld [$24e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1025], sp
    nop
    ld [$1026], sp
    ld [$27e3], sp
    stop
    ld [$1028], sp
    nop
    ld [$1029], sp
    nop
    ld [$102a], sp
    nop
    rlca
    daa
    jr nc, @-$7e

    db $f4
    rlca
    xor $08
    add sp, -$12
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$2bf0], sp
    stop
    ld [$1004], sp
    nop
    ld [$102c], sp
    nop
    ld [$102d], sp
    ld [$2ee8], sp
    stop
    ld [$1008], sp
    nop
    ld [$102f], sp
    nop
    ld [$1030], sp
    ld [$31e8], sp
    stop
    ld [$1032], sp
    nop
    ld [$1033], sp
    nop
    ld [$1034], sp
    ld [$35eb], sp
    stop
    ld [$1036], sp
    nop
    rlca
    dec [hl]
    jr nc, @-$7e

    db $f4
    rlca
    db $ec
    ld b, $e8
    rst $28
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$3df0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$103e], sp
    ld [$3fe8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1040], sp
    nop
    ld [$1041], sp
    ld [$42e8], sp
    stop
    ld [$1043], sp
    nop
    ld [$1044], sp
    nop
    ld [$1045], sp
    ld [$46e8], sp
    stop
    ld [$1047], sp
    add b
    pop af
    inc b
    db $ec
    ld b, $e8
    db $ed
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$3df0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$103e], sp
    ld [$48e8], sp
    stop
    ld [$1049], sp
    nop
    ld [$104a], sp
    nop
    ld [$1041], sp
    ld [$4be8], sp
    stop
    ld [$104c], sp
    nop
    ld [$104d], sp
    nop
    ld [$104e], sp
    ld [$47f5], sp
    jr nc, jr_003_5b0c

jr_003_5b0c:
    ld [$3046], sp
    add b
    nop
    db $fd
    ld [$f8ec], sp
    db $ec
    ld [$16fc], a
    db $fc
    jr nz, @-$02

    and $f3
    ld a, [de]
    di
    nop
    cp $00
    nop
    nop
    nop
    or $09
    add sp, $08
    ld hl, sp+$08
    ld hl, sp+$08
    push de
    ld [$1307], sp
    ld b, $65
    rst $18
    nop

Jump_003_5b36:
    ld a, b
    dec b
    jr z, jr_003_5b82

    dec b
    jr z, jr_003_5b48

    dec b
    jp z, Jump_003_5bb7

    dec b
    jp z, Jump_003_5b4b

    or a
    jr z, jr_003_5b60

jr_003_5b48:
    ld b, $00
    ret


Jump_003_5b4b:
    ld a, $4d
    call Call_000_020a
    ld a, $1f
    call Call_000_020a
    ld a, $2e
    call Call_000_020a
    ld a, $31
    call Call_000_020a
    ret


jr_003_5b60:
    ld d, $f6
    call Call_003_438d
    call Call_000_025e
    call Call_003_4641
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    ld a, $34
    add c
    ld l, a
    ld [hl], $00
    ld a, $00
    ld [$ca00], a
    ld de, $620a
    jp Jump_000_01dd


jr_003_5b82:
    ld a, [$deaf]
    and $27
    jp nz, Jump_003_5bb7

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jp z, Jump_003_5bcd

    dec a
    jp z, Jump_003_5c26

    dec a
    jp z, Jump_003_5c74

    dec a
    jp z, Jump_003_5c26

    dec a
    jp z, Jump_003_5d32

    dec a
    jp z, Jump_003_5d7d

    dec a
    jp z, Jump_003_5c74

    ld a, b
    or a
    jr z, jr_003_5bbd

    dec a
    jr z, jr_003_5bc7

Jump_003_5bb4:
    call Call_000_025e

Jump_003_5bb7:
    call Call_003_46b8
    ld b, $01
    ret


jr_003_5bbd:
    ld b, $00
    ld l, $0b
    ld de, $5b26
    jp Jump_003_46e6


jr_003_5bc7:
    ld de, $616c
    jp Jump_003_4713


Jump_003_5bcd:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5be5

    dec a
    jr z, jr_003_5bfd

    dec a
    jr z, jr_003_5c17

    ld a, [$ca00]
    or a
    jp nz, Jump_003_5bb4

    jp Jump_003_5d43


jr_003_5be5:
    ld de, $61a4
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    call Call_003_5fb0
    ld a, $34
    add c
    ld l, a
    ld [hl], $03
    jp Jump_003_5d43


jr_003_5bfd:
    ld de, $61b8
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp z, Jump_003_5d43

    call Call_003_5fb0
    jp Jump_003_5bb4


jr_003_5c17:
    ld de, $61c8
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    jp Jump_003_5c61


Jump_003_5c26:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5c4c

    ld a, [$ca00]
    or a
    jp nz, Jump_003_5bb4

    ld a, $32
    add c
    ld l, a
    inc [hl]
    add $02
    ld l, a
    ld [hl], $08
    add $e3
    ld l, a
    ld [hl], $0a
    add $1c
    ld l, a
    ld [hl], $1e
    jp Jump_003_5bb4


jr_003_5c4c:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_5bb4

    ld [hl], $14
    call Call_003_5f26
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_5bb4

Jump_003_5c61:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_003_5bb4


Jump_003_5c74:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5c9e

    dec a
    jr z, jr_003_5cd0

    dec a
    jr z, jr_003_5d01

    ld a, [$ca00]
    or a
    jp nz, Jump_003_5bb4

    ld b, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $50
    jr nc, jr_003_5c96

    ld b, $01

jr_003_5c96:
    ld a, $24
    add c
    ld l, a
    ld [hl], b
    jp Jump_003_5d43


jr_003_5c9e:
    ld de, $61dc
    call Call_003_42dc
    push af
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $0b
    jr nz, jr_003_5cb4

    ld a, $19
    add c
    ld l, a
    set 1, [hl]

jr_003_5cb4:
    pop af
    jp nc, Jump_003_5bb4

    call Call_000_015c
    call Call_003_6083
    ld de, $5b10
    call Call_003_4080
    call Call_003_4078
    ld a, $33
    add c
    ld l, a
    ld [hl], $3c
    jp Jump_003_5d43


jr_003_5cd0:
    ld de, $61f0
    call Call_000_015f
    ld de, $5b26
    call Call_003_4176
    bit 0, a
    jr nz, jr_003_5cf3

    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr z, jr_003_5cf3

    ld a, [hl]
    cp $27
    jp nz, Jump_003_5bb4

    call Call_003_6083
    jp Jump_003_5bb4


jr_003_5cf3:
    call Call_000_015c
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_003_5d43


jr_003_5d01:
    ld a, [$ca00]
    or a
    jp nz, Jump_003_5bb4

    ld de, $61f6
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $08
    jp nz, Jump_003_5c61

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_003_5bb4


Jump_003_5d32:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5d4b

    dec a
    jr z, jr_003_5d5c

    ld a, $34
    add c
    ld l, a
    ld [hl], $03

Jump_003_5d43:
jr_003_5d43:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_003_5bb4


jr_003_5d4b:
    ld de, $61a4
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    call Call_003_5fb0
    jr jr_003_5d43

jr_003_5d5c:
    ld de, $61c8
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    inc [hl]
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_5bb4

    jp Jump_003_5c61


Jump_003_5d7d:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5d9a

    ld de, $6188
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $03
    jp nz, Jump_003_5bb4

    call Call_003_5db4
    jr jr_003_5d43

jr_003_5d9a:
    ld de, $6188
    call Call_003_42dc
    jp nc, Jump_003_5bb4

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $01
    add $f8
    ld l, a
    ld [hl], $06
    jp Jump_003_5bb4


Call_003_5db4:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5b12
    ld a, $2d
    ld [$cc00], a
    ld a, $66
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_5ddb

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_003_5df1
    xor a
    pop hl
    ld c, l
    ret


jr_003_5ddb:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_5e3a

    dec b
    jp nz, Jump_003_5ee2

Jump_003_5de7:
jr_003_5de7:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_003_5df1:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $1f
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], $2c
    inc hl
    ld [hl], $01
    ld b, $0f
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_003_5e1f

    ld b, $03

jr_003_5e1f:
    dec b
    ld a, $36
    add c
    ld l, a
    ld [hl], b
    add $e7
    ld l, a
    inc b
    ld a, b
    ld de, $0100
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    call Call_000_015c
    jp Jump_003_5f16


jr_003_5e3a:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_5de7

    ld a, [$deaf]
    or a
    jp nz, Jump_003_5ee2

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_5e74

    call Call_003_40ec
    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0c
    jr c, jr_003_5eb2

    ld a, $13
    add c
    ld l, a
    ld [hl], $25
    add $06
    ld l, a
    ld [hl], $40
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    add $09
    ld l, a
    ld [hl], $0a
    jr jr_003_5e7d

jr_003_5e74:
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jr nz, jr_003_5eaf

    ld [hl], $0a

jr_003_5e7d:
    call Call_000_024f
    dec b
    ld a, $36
    add c
    ld l, a
    ld e, [hl]
    ld a, b
    sub e
    and $0f
    jr z, jr_003_5e94

    cp $08
    jr nc, jr_003_5e93

    inc e
    jr jr_003_5e94

jr_003_5e93:
    dec e

jr_003_5e94:
    ld a, e
    and $0f
    ld b, a
    ld a, $36
    add c
    ld l, a
    ld [hl], b
    inc b
    add $e7
    ld l, a
    ld a, b
    ld de, $0120
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_003_5eb2


jr_003_5eaf:
    call Call_003_40ec

Jump_003_5eb2:
jr_003_5eb2:
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $7f
    jr nz, jr_003_5ed4

    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_5ed4

    call Call_003_5f16
    ld a, $37
    add c
    ld l, a
    dec [hl]
    jr nz, jr_003_5ee2

    inc hl
    dec [hl]
    bit 7, [hl]
    jr z, jr_003_5ee2

jr_003_5ed4:
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    res 2, [hl]
    call Call_003_613b
    jp Jump_003_5de7


Jump_003_5ee2:
jr_003_5ee2:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_003_5ef9

    cp $e0
    jr c, jr_003_5ef3

    ld [hl], $f0
    jr jr_003_5ef9

jr_003_5ef3:
    cp $90
    jr c, jr_003_5ef9

    ld [hl], $90

jr_003_5ef9:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_003_5f10

    cp $d0
    jr c, jr_003_5f0a

    ld [hl], $e0
    jr jr_003_5f10

jr_003_5f0a:
    cp $c0
    jr c, jr_003_5f10

    ld [hl], $c0

jr_003_5f10:
    call Call_000_025e
    ld b, $01
    ret


Call_003_5f16:
Jump_003_5f16:
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    srl a
    ld de, $661d
    call Call_000_0171
    jp Jump_000_015f


Call_003_5f26:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5b16
    ld a, $5a
    ld [$cc00], a
    ld a, $67
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_5f4d

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_003_5f63
    xor a
    pop hl
    ld c, l
    ret


jr_003_5f4d:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_5f91

    dec b
    jp nz, Jump_003_5faa

jr_003_5f59:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_003_5f63:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $31
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    add $f3
    ld l, a
    ld [hl], $00
    ld de, $5b1a
    call Call_003_4080
    call Call_003_4078
    jp Jump_000_015c


jr_003_5f91:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_5f59

    ld a, [$deaf]
    or a
    jp nz, Jump_003_5faa

    ld a, $1e
    add c
    ld l, a
    ld b, [hl]
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [hl], a

Jump_003_5faa:
    call Call_003_41d7
    jr z, jr_003_5f59

    ret


Call_003_5fb0:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5b1c
    ld a, $72
    ld [$cc00], a
    ld a, $67
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_5fd7

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_003_5fed
    xor a
    pop hl
    ld c, l
    ret


jr_003_5fd7:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_6017

    dec b
    jp nz, Jump_003_607c

Jump_003_5fe3:
jr_003_5fe3:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_003_5fed:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $4d
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    add $f3
    ld l, a
    ld [hl], $00
    add $1c
    ld l, a
    ld [hl], $00
    jp Jump_000_015c


jr_003_6017:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_5fe3

    ld a, [$deaf]
    or a
    jp nz, Jump_003_607c

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_6050

    ld de, $677f
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0a
    jr c, jr_003_607c

    call Call_000_015c
    ld de, $5b20
    call Call_003_4080
    call Call_003_4078
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_003_607c


jr_003_6050:
    ld de, $6786
    call Call_000_015f
    ld de, $ffe0
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_003_6064

    ld de, $0020

jr_003_6064:
    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    add e
    ld e, a
    ld [hl], a
    inc hl
    ld a, [hl]
    adc d
    ld d, a
    ld [hl], a
    ld a, $0c
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    inc hl
    ld a, [hl]
    add d
    ld [hl], a

Jump_003_607c:
jr_003_607c:
    call Call_003_41d7
    jp z, Jump_003_5fe3

    ret


Call_003_6083:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $5b22
    ld a, $fc
    ld [$cc00], a
    ld a, $67
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_60aa

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_003_60c0
    xor a
    pop hl
    ld c, l
    ret


jr_003_60aa:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_60e3

    dec b
    jp nz, Jump_003_6134

Jump_003_60b6:
jr_003_60b6:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_003_60c0:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $2e
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ld a, $33
    add c
    ld l, a
    ld [hl], $b4
    jp Jump_000_015c


jr_003_60e3:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_60b6

    ld a, [$deaf]
    or a
    jp nz, Jump_003_6134

    ld b, $00
    ld a, $33
    add c
    ld l, a
    dec [hl]
    ld a, [hl]
    cp $78
    jr nc, jr_003_610a

    inc b
    cp $3c
    jr nc, jr_003_610a

    inc b
    cp $0a
    jr nc, jr_003_610a

    inc b
    or a
    jr z, jr_003_6126

jr_003_610a:
    ld a, b
    ld de, $6809
    call Call_000_0171
    call Call_000_015f
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $7f
    jr nz, jr_003_6126

    ld a, $1a
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_003_6134

jr_003_6126:
    ld a, $13
    add c
    ld l, a
    set 7, [hl]
    res 2, [hl]
    call Call_003_613b
    jp Jump_003_60b6


Jump_003_6134:
jr_003_6134:
    call Call_003_41d7
    jp z, Jump_003_60b6

    ret


Call_003_613b:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc hl
    inc hl
    ld d, [hl]
    push bc
    push hl
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    pop bc
    ld a, $1a
    add c
    ld l, a
    ld [hl], $06
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc hl
    inc hl
    ld d, [hl]
    call Call_003_44d1
    ld a, $00
    ld [$c3e2], a
    ld b, $25
    ld de, $5b2a
    jp Jump_000_021f


    ld a, [bc]
    ld h, d
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    nop
    dec b
    ld b, $05
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld h, d
    inc b
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
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0aff
    ld h, d
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $ff
    ld a, [bc]
    ld h, d
    inc b
    rlca
    ld [$0609], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rst $38
    ld a, [bc]
    ld h, d
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $05
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [bc]
    ld h, d
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rst $38
    ld a, [bc]
    ld h, d
    ld b, $0b
    inc c
    rst $38
    ld a, [bc]
    ld h, d
    inc b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld b, $05
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc h
    ld h, d
    ld a, c
    ld h, d
    adc $62
    inc hl
    ld h, e
    ld a, h
    ld h, e
    pop de
    ld h, e
    ld e, $64
    ld h, a
    ld h, h
    or b
    ld h, h
    db $fd
    ld h, h
    ld b, [hl]
    ld h, l
    sub a
    ld h, l
    ret c

    ld h, l
    or $09
    add sp, $08
    ldh [c], a
    ldh a, [rP1]
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
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
    nop
    ld [$100f], sp
    ld [$10e8], sp
    stop
    ld [$1011], sp
    nop
    ld [$3011], sp
    nop
    ld [$3010], sp
    add b
    or $09
    jp hl


    ld [$f0e3], sp
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
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$16e8], sp
    stop
    ld [$1017], sp
    nop
    ld [$3017], sp
    nop
    ld [$3016], sp
    add b
    or $09
    db $eb
    ld [$f0e5], sp
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
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    or $09
    db $eb
    ld [$f0e5], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$101e], sp
    nop
    ld [$101f], sp
    ld [$03e8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1020], sp
    nop
    ld [$1021], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    or $09
    db $eb
    ld [$f0e5], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1022], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1023], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    or $09
    db $eb
    ld [$f4e3], sp
    inc h
    db $10
    ld [$25fc], sp
    stop
    ld [$1026], sp
    nop
    ld [$1027], sp
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1028], sp
    nop
    ld [$1029], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    nop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld [$16e8], sp
    stop
    ld [$1017], sp
    nop
    ld [$3017], sp
    nop
    ld [$3016], sp
    add b
    or $09
    rst $28
    ld [$f0ed], sp
    ld a, [hl+]
    stop
    ld [$102b], sp
    nop
    ld [$102c], sp
    nop
    ld [$1006], sp
    ld [$2de8], sp
    stop
    ld [$102e], sp
    nop
    ld [$102f], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    or $09
    rst $28
    ld [$f0ed], sp
    dec [hl]
    stop
    ld [$1036], sp
    nop
    ld [$102c], sp
    nop
    ld [$1006], sp
    ld [$37e8], sp
    stop
    ld [$102e], sp
    nop
    ld [$102f], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    or $09
    rst $28
    ld [$eaed], sp
    jr nc, jr_003_64c8

    nop
    ld [$1031], sp
    nop
    ld [$1032], sp
    nop
    ld [$102c], sp
    nop
    ld [$1006], sp

jr_003_64c8:
    ld [$33e8], sp
    stop
    ld [$1034], sp
    nop
    ld [$102f], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    or $09
    rst $28
    ld [$f1ed], sp
    dec [hl]
    stop
    ld [$1036], sp
    nop
    ld [$102c], sp
    nop
    ld [$1006], sp
    ld [$37e8], sp
    stop
    ld [$102e], sp
    nop
    ld [$102f], sp
    nop
    ld [$100a], sp
    ld [$0be0], sp
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop
    ld [$101b], sp
    ld [$1ce8], sp
    stop
    ld [$101d], sp
    nop
    ld [$301d], sp
    nop
    ld [$301c], sp
    add b
    ldh a, [c]
    dec b
    jp hl


    ld [$ece3], sp
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
    nop
    ld [$1006], sp
    ld [$07e8], sp
    stop
    ld [$1038], sp
    nop
    ld [$1039], sp
    nop
    ld [$103a], sp
    ld [$3be6], sp
    stop
    ld [$103c], sp
    nop
    ld [$103d], sp
    nop
    ld [$103e], sp
    ld [$3fec], sp
    stop
    ld [$1040], sp
    nop
    ld [$1041], sp
    nop
    ld [$1042], sp
    add b
    or $09
    rst $28
    ld [$f0ed], sp
    ld a, [hl+]
    stop
    ld [$102b], sp
    nop
    ld [$102c], sp
    nop
    ld [$1006], sp
    ld [$43e8], sp
    stop
    ld [$102e], sp
    nop
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
    ld [$4aec], sp
    stop
    ld [$104b], sp
    nop
    ld [$104c], sp
    add b
    or $09
    rst $28
    ld [$efed], sp
    ld a, [hl+]
    stop
    ld [$102b], sp
    nop
    ld [$102c], sp
    nop
    ld [$1006], sp
    ld [$43e8], sp
    stop
    ld [$102e], sp
    nop
    ld [$1044], sp
    nop
    ld [$1045], sp
    ld [$46e8], sp
    stop
    ld [$1047], sp
    nop
    ld [$1048], sp
    nop
    ld [$104d], sp
    ld [$4aec], sp
    stop
    ld [$104b], sp
    nop
    ld [$104e], sp
    nop
    ld [$104f], sp
    add b
    ld a, [hl-]
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    ld c, h
    ld h, [hl]
    ld d, d
    ld h, [hl]
    ld e, b
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld h, h
    ld h, [hl]
    rst $18
    ld e, l
    daa
    inc h
    nop
    ld l, d
    ld h, [hl]
    nop
    ld a, a
    ld b, b
    ld [bc], a
    inc bc
    jp nz, Jump_003_666a

    inc b
    nop
    ld [$6aff], sp
    ld h, [hl]
    inc b
    ld bc, $ff09
    ld l, d
    ld h, [hl]
    inc b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld l, d
    ld h, [hl]
    inc b
    inc bc
    dec bc
    rst $38
    ld l, d
    ld h, [hl]
    inc b
    inc b
    inc c
    rst $38
    ld l, d
    ld h, [hl]
    inc b
    dec b
    dec c
    rst $38
    ld l, d
    ld h, [hl]
    inc b
    ld b, $0e
    rst $38
    ld l, d
    ld h, [hl]
    inc b
    rlca
    rrca
    rst $38

Jump_003_666a:
    adc d
    ld h, [hl]
    and h
    ld h, [hl]
    cp [hl]
    ld h, [hl]
    ret c

    ld h, [hl]
    ldh a, [c]
    ld h, [hl]
    inc c
    ld h, a
    ld h, $67
    ld b, b
    ld h, a
    sub a
    ld h, [hl]
    or c
    ld h, [hl]
    bit 4, [hl]
    push hl
    ld h, [hl]
    rst $38
    ld h, [hl]
    add hl, de
    ld h, a
    inc sp
    ld h, a
    ld c, l
    ld h, a
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
    jr nc, jr_003_66c7

jr_003_66c7:
    ld sp, hl
    inc bc
    db $10
    rst $38
    ld a, [$fa05]
    dec b
    db $fc
    nop
    nop
    jr nc, jr_003_66d4

jr_003_66d4:
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
    ld d, c
    ld e, a
    ld b, a
    dec h
    nop
    ld h, a
    ld h, a
    nop
    ld bc, $0240
    inc bc
    pop bc
    ld l, c
    ld h, a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $10
    add b
    db $db
    ld e, a
    ld b, a
    dec h
    nop
    adc l
    ld h, a
    nop
    ld bc, $0441
    inc bc
    add $8d
    ld h, a
    ld [bc], a
    nop
    ld bc, $ff02
    adc l
    ld h, a
    inc b
    ld [bc], a
    inc bc
    inc b
    rst $38
    sub a
    ld h, a
    and h
    ld h, a
    or l
    ld h, a
    add $67
    db $e3
    ld h, a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$00
    stop
    ld [$1001], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$02
    stop
    ld [$1003], sp
    nop
    ld [$1006], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$04
    stop
    ld [$1005], sp
    nop
    ld [$1007], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$00
    stop
    ld [$1001], sp
    db $fc
    ld [$1008], sp
    ld [$0900], sp
    db $10
    db $fc
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld hl, sp+$02
    stop
    ld [$1003], sp
    db $fd
    ld [$5009], sp
    ld [$0800], sp
    ld d, b
    ei
    ld [$100b], sp
    add b
    xor [hl]
    ld h, b
    ld b, a
    dec h
    nop
    dec hl
    ld l, b
    ld bc, $c07f
    ld b, $03
    jp nz, Jump_003_6811

    ld d, $68
    dec e
    ld l, b
    inc h
    ld l, b

Jump_003_6811:
    dec hl
    ld l, b
    inc b
    nop
    rst $38
    dec hl
    ld l, b
    ld [$0201], sp
    inc bc
    rst $38
    dec hl
    ld l, b
    inc b
    ld bc, $0302
    rst $38
    dec hl
    ld l, b
    ld [bc], a
    ld bc, $0302
    rst $38
    inc sp
    ld l, b
    ld b, b
    ld l, b
    ld c, l
    ld l, b
    ld e, d
    ld l, b
    ld hl, sp+$07
    inc bc
    ld [$f801], sp
    nop
    stop
    ld [$3000], sp
    add b
    ld hl, sp+$07
    inc bc
    ld [$f801], sp
    ld bc, $0010
    ld [$3001], sp
    add b
    ld hl, sp+$07
    inc bc
    ld [$f801], sp
    ld [bc], a
    stop
    ld [$3002], sp
    add b
    ld hl, sp+$07
    inc bc
    ld [$f801], sp
    inc bc
    stop
    ld [$3003], sp
    add b
    db $e3
    ld a, [$fa1d]
    nop
    nop
    nop
    nop
    jr nz, @+$01

    or b
    ei
    jr c, @+$01

    ld b, b
    ld a, [$07f4]
    db $ec
    ld [$fdc0], sp
    inc e
    rst $38
    ld a, b
    db $fd
    ldh [$fffe], a
    ld b, b
    rst $38
    add sp, -$01

jr_003_6887:
    jr nz, jr_003_6887

    ld h, b
    db $fd
    ret nc

    db $fc
    ld a, [$f905]
    ld b, $f8
    ld [$06f9], sp
    ld a, [$f905]
    ld b, $fc
    inc bc

jr_003_689b:
    db $fc
    inc bc
    jr nz, jr_003_689b

    cp $01
    rst $38
    ld [bc], a
    nop
    rst $08
    ld [$1310], sp
    inc b
    ld h, l
    rst $18
    nop

Jump_003_68ac:
    ld a, b
    dec b
    jr z, jr_003_68eb

    dec b
    jr z, jr_003_68be

    dec b
    jp z, Jump_003_6915

    dec b
    jp z, Jump_003_68c6

    or a
    jr z, jr_003_68cf

jr_003_68be:
    ld a, $00
    ld [$cca2], a
    ld b, $00
    ret


Jump_003_68c6:
    ld a, $4b
    call Call_000_020a
    ld [$ca02], a
    ret


jr_003_68cf:
    ld d, $f8
    call Call_003_438d
    call Call_000_025e
    call Call_003_4641
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    ld [hl], $00
    ld de, $6eb9
    jp Jump_000_01dd


jr_003_68eb:
    ld a, [$deaf]
    and $27
    jp nz, Jump_003_6915

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_003_692b

    dec a
    jp z, Jump_003_6a5d

    dec a
    jp z, Jump_003_6aa4

    ld a, b
    or a
    jr z, jr_003_691b

    dec a
    jr z, jr_003_6925

    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_003_6912:
jr_003_6912:
    call Call_000_025e

Jump_003_6915:
    call Call_003_46b8
    ld b, $01
    ret


jr_003_691b:
    ld b, $00
    ld l, $02
    ld de, $6877
    jp Jump_003_46e6


jr_003_6925:
    ld de, $6e85
    jp Jump_003_4713


jr_003_692b:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_6956

    dec a
    jr z, jr_003_69aa

    dec a
    jp z, Jump_003_6a17

    dec a
    jp z, Jump_003_6a30

    jr jr_003_6940

jr_003_6940:
    call Call_003_41bf

Jump_003_6943:
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    ld a, $34
    add c
    ld l, a
    ld [hl], $02

Jump_003_694f:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jr jr_003_6912

jr_003_6956:
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jr nz, jr_003_6912

    add $f0
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_003_696f

    ld a, [$d722]
    sub $08
    jr nc, jr_003_6978

    ld a, $15
    jr jr_003_6978

jr_003_696f:
    ld a, [$d722]
    add $08
    jr nc, jr_003_6978

    ld a, $8b

jr_003_6978:
    ld [$ca00], a
    call Call_000_0168
    bit 0, a
    jr nz, jr_003_6990

    ld de, $686f
    call Call_003_4080
    ld de, $6871
    call Call_003_40a6
    jr jr_003_699c

jr_003_6990:
    ld de, $6873
    call Call_003_4080
    ld de, $6875
    call Call_003_40a6

jr_003_699c:
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    add $1d
    ld l, a
    ld [hl], $00
    jp Jump_003_694f


jr_003_69aa:
    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jp nz, Jump_003_69d1

    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $01
    jr z, jr_003_69cb

    cp $08
    jr nz, jr_003_69d1

    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    jr jr_003_69d1

jr_003_69cb:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_003_69d1:
jr_003_69d1:
    call Call_003_6d8f
    bit 1, a
    jr nz, jr_003_69e5

    bit 0, a
    jr nz, jr_003_69df

    jp Jump_003_6912


jr_003_69df:
    call Call_003_4070
    jp Jump_003_694f


jr_003_69e5:
    ld a, $0d
    add c
    ld l, a
    ld b, [hl]
    add $17
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_003_69f9

    ld a, [$ca00]
    cp b
    jr c, jr_003_6a00

    jr jr_003_6a09

jr_003_69f9:
    ld a, [$ca00]
    cp b
    jp c, Jump_003_6a09

jr_003_6a00:
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    jp Jump_003_6943


Jump_003_6a09:
jr_003_6a09:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1d
    ld l, a
    ld [hl], $01
    jp Jump_003_694f


Jump_003_6a17:
    call Call_003_6d8f
    bit 1, a
    jp z, Jump_003_6912

    call Call_003_41bf
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1d
    ld l, a
    ld [hl], $0a
    jp Jump_003_694f


Jump_003_6a30:
    call Call_003_41bf
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_6912

    call Call_000_015c
    ld a, $00
    ld [$ca01], a
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    inc [hl]
    call Call_003_426e
    cp $46
    jp c, Jump_003_6912

    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jp Jump_003_6912


Jump_003_6a5d:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_6a6b

    dec a
    jr z, jr_003_6a81

    dec a
    jr z, jr_003_6a90

jr_003_6a6b:
    ld de, $6e9f
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $04
    jp nz, Jump_003_6912

    call Call_003_6bca
    jp Jump_003_694f


jr_003_6a81:
    ld de, $6e9f
    call Call_003_42dc
    jp nc, Jump_003_6912

    call Call_000_015c
    jp Jump_003_694f


jr_003_6a90:
    ld a, [$ca01]
    or a
    jp nz, Jump_003_6912

    ld a, $2a
    add c
    ld l, a
    dec [hl]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_003_6912


Jump_003_6aa4:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_6add

    dec a
    jr z, jr_003_6afe

    dec a
    jp z, Jump_003_6b45

    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$ca06], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    add $1d
    ld l, a
    ld [hl], $10
    add $f7
    ld l, a
    ld [hl], $08
    add $01
    ld l, a
    ld [hl], $18
    add $01
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $04
    jp Jump_003_694f


jr_003_6add:
    ld a, $34
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_6b64

    ld [hl], $01
    call Call_003_4070
    ld de, $689d
    call Call_003_40a6
    ld a, $17
    add c
    ld l, a
    ld [hl], $02
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_003_6b64


jr_003_6afe:
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_003_6b0b

    add $f7
    ld l, a
    ld [hl], $03

jr_003_6b0b:
    call Call_003_4106
    ld de, $6877
    call Call_003_4176
    bit 1, a
    jp z, Jump_003_6b64

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_003_6b27

    call Call_003_4078
    jp Jump_003_6b64


jr_003_6b27:
    ld a, $39
    add c
    ld l, a
    ld [hl], $01
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_6b3d

    ld a, $32
    add c
    ld l, a
    dec [hl]
    jp Jump_003_6b64


jr_003_6b3d:
    ld a, $00
    call Call_003_6baf
    jp Jump_003_694f


Jump_003_6b45:
    ld a, $00
    ld [$cca2], a
    ld a, [$ca01]
    or a
    jp nz, Jump_003_6912

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $08
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $01
    jp Jump_003_6912


Jump_003_6b64:
    ld a, $39
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_003_6912

    ld a, $2e
    add c
    ld l, a
    dec [hl]
    jr nz, jr_003_6b81

    ld [hl], $04
    add $ff
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $05
    jr c, jr_003_6b81

    ld [hl], $00

jr_003_6b81:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    add $9f
    ld e, a
    ld a, $68
    adc $00
    ld d, a
    ld a, [de]
    call Call_003_6baf
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_003_6912

    ld a, $2c
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_6912

    ld [hl], $18
    add $ff
    ld l, a
    dec [hl]
    call Call_003_6da7
    jp Jump_003_6912


Call_003_6baf:
    ld [$cca0], a
    ld b, a
    ld a, $03
    ld [$cca2], a
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    cp $02
    ret z

    ld a, $0f
    add c
    ld l, a
    ld a, [$ca06]
    add b
    ld [hl], a
    ret


Call_003_6bca:
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $6867
    ld a, $18
    ld [$cc00], a
    ld a, $70
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_6bee

    call Call_003_6c04
    ld a, [$ca01]
    inc a
    ld [$ca01], a
    xor a

jr_003_6bee:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jp z, Jump_003_6c35

    dec b
    jp nz, Jump_003_6cae

Jump_003_6bfa:
    ld a, [$ca01]
    dec a
    ld [$ca01], a
    ld b, $00
    ret


Call_003_6c04:
    ld a, $05
    add c
    ld l, a
    ld a, [$ca02]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    ld de, $687d
    call Call_003_4080
    ld de, $687f
    call Call_003_40a6
    ld b, $00
    ld a, $17
    add c
    ld l, a
    ld [hl], b
    add $13
    ld l, a
    ld [hl], b
    add $0c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    ret


Jump_003_6c35:
    ld a, [$ccc2]
    or a
    jp nz, Jump_003_6bfa

    ld a, [$deaf]
    or a
    jp nz, Jump_003_6cae

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_6c98

    dec a
    jr z, jr_003_6ca3

    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_6c59

    call Call_003_4106

jr_003_6c59:
    ld de, $688d
    call Call_003_4176
    jr z, jr_003_6cae

    bit 1, a
    jr nz, jr_003_6c79

    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    add $fa
    ld l, a
    ld a, [hl]
    xor $01
    ld [$ca05], a
    call Call_003_6cb4
    jr jr_003_6cae

jr_003_6c79:
    ld de, $6891
    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_003_6c86

    jr jr_003_6c86

jr_003_6c86:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    add $fa
    ld l, a
    ld a, [hl]
    ld [$ca05], a
    call Call_003_6cb4
    jr jr_003_6cae

jr_003_6c98:
    ld de, $703e
    call Call_003_42dc
    jr nc, jr_003_6cae

    jp Jump_003_6bfa


jr_003_6ca3:
    ld de, $7037
    call Call_003_42dc
    jr nc, jr_003_6cae

    jp Jump_003_6bfa


Jump_003_6cae:
jr_003_6cae:
    call Call_000_025e
    ld b, $01
    ret


Call_003_6cb4:
    ld b, $00
    call Call_003_6cc0
    ld b, $02
    call Call_003_6cc0
    ld b, $04

Call_003_6cc0:
    ld l, c
    push hl
    ld a, [$ca05]
    add b
    ld b, a
    ld de, $686b
    ld a, $25
    ld [$cc00], a
    ld a, $70
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_6ce4

    call Call_003_6cef
    ld a, [$ca01]
    inc a
    ld [$ca01], a
    xor a

jr_003_6ce4:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_6d36

    dec b
    jp nz, Jump_003_6d6a

Call_003_6cef:
    ld a, $05
    add c
    ld l, a
    ld a, [$ca02]
    ld [hl], a
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
    ld a, [hl]
    and $fe
    add $81
    ld e, a
    ld a, $68
    adc $00
    ld d, a
    call Call_003_4080
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    and $fe
    add $87
    ld e, a
    ld a, $68
    adc $00
    ld d, a
    call Call_003_40a6
    ld a, $17
    add c
    ld l, a
    ld [hl], $07
    add $13
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ret


jr_003_6d36:
    ld a, [$ccc2]
    or a
    jp nz, Jump_003_6bfa

    ld a, [$deaf]
    or a
    jp nz, Jump_003_6d6a

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_6d5f

    call Call_003_4106
    ld de, $6899
    call Call_003_4176
    jr z, jr_003_6d6a

    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    jr jr_003_6d6a

jr_003_6d5f:
    ld de, $704a
    call Call_003_42dc
    jr nc, jr_003_6d6a

    jp Jump_003_6bfa


Jump_003_6d6a:
jr_003_6d6a:
    call Call_000_025e
    ld b, $01
    ret


Call_003_6d70:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $3a
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    bit 7, a
    jr nz, jr_003_6d8b

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_003_6d8b

    ld de, $0350

jr_003_6d8b:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_003_6d8f:
    ld a, $37
    add c
    ld l, a
    ld e, l
    ld d, h
    add $e6
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_003_6d70
    ld de, $6877
    call Call_003_4176
    ret


Call_003_6da7:
    ld l, c
    push hl
    ld a, $05
    add c
    ld l, a
    ld b, [hl]
    ld de, $686b
    ld a, $78
    ld [$cc00], a
    ld a, $6e
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_6dcb

    call Call_003_6dd6
    ld a, [$ca01]
    inc a
    ld [$ca01], a
    xor a

jr_003_6dcb:
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_003_6e14

    dec b
    jp nz, Jump_003_6e72

Call_003_6dd6:
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    add $fd
    ld l, a
    ld [hl], b
    ld a, $0f
    add c
    ld l, a
    ld a, [$cca0]
    add $0b
    ld [hl], a
    call Call_000_0168
    ld b, a
    ld a, $0d
    add c
    ld l, a
    bit 0, b
    jr z, jr_003_6dfa

    ld a, [$d722]
    jr jr_003_6e01

jr_003_6dfa:
    call Call_000_0168
    and $7f
    add $18

jr_003_6e01:
    ld [hl], a
    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    add $13
    ld l, a
    ld [hl], $00
    call Call_000_015c
    call Call_000_025e
    ret


jr_003_6e14:
    ld a, [$ccc2]
    or a
    jp nz, Jump_003_6bfa

    ld a, [$deaf]
    or a
    jp nz, Jump_003_6e72

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_6e4c

    dec a
    jr z, jr_003_6e67

    ld a, $0f
    add c
    ld l, a
    ld a, [$cca0]
    add $0b
    ld [hl], a
    ld de, $6eab
    call Call_003_42dc
    jr nc, jr_003_6e72

    call Call_003_4066

jr_003_6e42:
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    inc [hl]
    jr jr_003_6e72

jr_003_6e4c:
    ld a, $05
    add c
    ld l, a
    ld a, [$ca02]
    ld [hl], a
    ld de, $7045
    call Call_000_015f
    call Call_003_4106
    ld de, $6899
    call Call_003_4176
    jr z, jr_003_6e72

    jr jr_003_6e42

jr_003_6e67:
    ld de, $704a
    call Call_003_42dc
    jr nc, jr_003_6e72

    jp Jump_003_6bfa


Jump_003_6e72:
jr_003_6e72:
    call Call_000_025e
    ld b, $01
    ret


    adc $6d
    ld b, a
    and l
    nop
    cp c
    ld l, [hl]
    dec b
    ld bc, $0245
    inc bc
    pop bc
    cp c
    ld l, [hl]
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    cp c
    ld l, [hl]
    ld [$0100], sp
    inc bc
    inc b
    inc b
    inc b
    ld bc, $ff00
    cp c
    ld l, [hl]
    inc bc
    dec b
    ld b, $07
    ld b, $05
    ld b, $07
    ld b, $08
    ld b, $ff
    bit 5, [hl]
    ld [$456f], sp
    ld l, a
    ld a, d
    ld l, a
    cp e
    ld l, a
    db $f4
    ld l, a
    db $fd
    ld l, a
    ld b, $70
    rrca
    ld [hl], b
    db $f4
    dec bc
    pop af
    ld [$f0f2], sp
    ld [bc], a
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$3002], sp
    ld [$05e8], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    nop
    ld [$3005], sp
    ld [$08e8], sp
    stop
    ld [$1009], sp
    nop
    ld [$3009], sp
    nop
    ld [$3008], sp
    add sp, -$11
    nop
    stop
    ld [$1001], sp
    add b
    db $f4
    rlca
    db $ec
    ld [$f2ef], sp
    ld a, [bc]
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ld [$0df0], sp
    stop
    ld [$100e], sp
    nop
    ld [$100f], sp
    ld [$10f1], sp
    stop
    ld [$1011], sp
    nop
    ld [$3010], sp
    ld [$12f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$3012], sp
    ldh [$fff4], a
    nop
    stop
    ld [$1001], sp
    add b
    db $f4
    rlca
    db $ec
    ld [$f2ec], sp
    ld a, [bc]
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ld [$0df0], sp
    stop
    ld [$100e], sp
    nop
    ld [$100f], sp
    ld [$14f5], sp
    stop
    ld [$3014], sp
    ld [$15f8], sp
    stop
    ld [$3015], sp
    ldh [$fff8], a
    nop
    stop
    ld [$1001], sp
    add b
    db $f4
    dec bc
    db $f4
    rlca
    ldh a, [c]
    db $ec
    rla
    stop
    ld [$1018], sp
    nop
    ld [$1019], sp
    nop
    ld [$101a], sp
    nop

jr_003_6f8f:
    ld [$3017], sp
    ld [$1be0], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    nop
    ld [$101e], sp
    nop
    ld [$301b], sp
    ld [$1fe4], sp
    stop
    ld [$1020], sp
    nop
    ld [$3020], sp
    nop
    ld [$301f], sp
    add sp, -$0e
    ld d, $10
    add b
    db $f4
    rlca
    db $f4
    ld [$ecf2], sp
    ld hl, $0010
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
    ld [$28ed], sp
    stop
    ld [$1029], sp
    nop
    ld [$102a], sp
    nop
    ld [$102b], sp
    nop
    ld [$102c], sp
    add sp, -$16
    ld d, $10
    add b
    rst $38
    ld bc, $01ff
    db $fc
    db $fc
    dec l
    db $10
    add b
    rst $38
    ld bc, $01ff
    db $fc
    db $fc
    ld l, $10
    add b
    rst $38
    ld bc, $01ff
    db $fc
    db $fc
    dec l
    jr nc, jr_003_6f8f

    rst $38
    ld bc, $01ff
    db $fc
    db $fc
    cpl
    db $10
    add b
    pop af
    ld l, e
    ld b, a
    and l
    nop
    ld d, d
    ld [hl], b
    ld bc, $4101
    ld [bc], a
    inc bc
    push bc
    rst $20
    ld l, h
    ld b, a
    and l
    nop
    ld d, d
    ld [hl], b
    ld bc, $4101
    ld [bc], a
    inc bc
    pop bc
    ld d, d
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld d, d
    ld [hl], b
    ld b, $01
    ld [bc], a
    inc bc
    rst $38
    ld d, d
    ld [hl], b
    ld b, $04
    dec b
    ld b, $ff
    ld d, d
    ld [hl], b
    ldh a, [rTAC]
    rst $38
    ld d, d
    ld [hl], b
    inc b
    ld [$0907], sp
    ld a, [bc]
    rst $38
    ld l, d
    ld [hl], b
    ld a, a
    ld [hl], b
    sub b
    ld [hl], b
    xor c
    ld [hl], b
    cp d
    ld [hl], b
    bit 6, b
    db $e4
    ld [hl], b
    pop af
    ld [hl], b
    ld a, [$0370]
    ld [hl], c
    inc c
    ld [hl], c
    dec d
    ld [hl], c
    ld a, [$f905]
    ld b, $f8
    ld hl, sp+$01
    jr nc, jr_003_7073

jr_003_7073:
    ld [$1001], sp
    ld [$01f8], sp
    ld [hl], b
    nop
    ld [$1002], sp
    add b
    db $f4
    dec bc
    nop
    rlca
    nop
    db $f4
    inc bc
    stop
    ld [$1004], sp
    nop
    ld [$3003], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$0c
    dec b
    stop
    ld [$1006], sp
    ld [$07f8], sp
    stop
    ld [$1008], sp
    nop
    ld [$3007], sp
    add b
    db $f4
    dec bc
    nop
    rlca
    nop
    db $f4
    add hl, bc
    stop
    ld [$100a], sp
    nop
    ld [$3009], sp
    add b
    ld hl, sp+$00
    db $f4
    dec bc
    db $f4
    ld hl, sp+$0b
    db $10
    ld [$0c00], sp
    db $10
    ld [$0b00], sp
    ld d, b
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    db $f4
    ld hl, sp+$0d
    stop
    ld [$100e], sp
    ld [$0ff8], sp
    stop
    ld [$1010], sp
    ld [$0df8], sp
    ld d, b
    add b
    ld hl, sp+$00
    db $fc
    dec bc
    db $fc
    ld hl, sp+$11
    db $10
    ld [$1200], sp
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    inc de
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    inc d
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    dec d
    db $10
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
    nop
    nop
    nop
    nop
    add b
    ld hl, sp+$07
    add sp, $08
    ld [hl], b
    rst $38
    nop
    inc b
    nop
    ld [$0800], sp
    pop de
    ld [$1307], sp
    inc b
    ld h, l
    rst $18
    nop

Jump_003_712e:
    ld a, b
    dec b
    jr z, jr_003_7183

    dec b
    jr z, jr_003_713e

    dec b
    jp z, Jump_003_71b2

    dec b
    ret z

    or a
    jr z, jr_003_7153

jr_003_713e:
    ld a, $37
    add c
    ld l, a
    ld a, [$ca01]
    ld [hl], a
    ld b, $37
    call Call_000_01b3
    ld a, $40
    ld [$ca01], a
    ld b, $00
    ret


jr_003_7153:
    ld a, $01
    ld [$dd31], a
    ld d, $f8
    call Call_003_438d
    call Call_000_025e
    call Call_003_4641
    ld a, $00
    ld [$ca00], a
    ld a, $40
    ld [$ca01], a
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    ld [hl], $00
    add $fe
    ld l, a
    ld [hl], $40
    ld de, $760f
    jp Jump_000_01dd


jr_003_7183:
    ld a, [$deaf]
    and $27
    jp nz, Jump_003_71b2

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_003_71d3

    dec a
    jp z, Jump_003_7221

    dec a
    jp z, Jump_003_7388

    ld a, b
    or a
    jr z, jr_003_71c3

    dec a
    jr z, jr_003_71cd

    ld a, $17
    add c
    ld l, a
    ld [hl], $00

Jump_003_71aa:
jr_003_71aa:
    call Call_000_025e
    ld a, $38
    add c
    ld l, a
    inc [hl]

Jump_003_71b2:
    ld a, $39
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_003_71bd

    call Call_003_749a

jr_003_71bd:
    call Call_003_46b8
    ld b, $01
    ret


jr_003_71c3:
    ld b, $00
    ld l, $01
    ld de, $711a
    jp Jump_003_46e6


jr_003_71cd:
    ld de, $75b6
    jp Jump_003_4713


jr_003_71d3:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_71e9

    call Call_000_015c
    call Call_003_4066

Jump_003_71e1:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_003_71aa


jr_003_71e9:
    ld de, $75de
    call Call_000_015f
    call Call_003_747b
    ld de, $711a
    call Call_003_4176
    bit 1, a
    jr z, jr_003_71aa

Jump_003_71fc:
    call Call_003_4066
    ld a, $33
    add c
    ld l, a
    ld [hl], $50
    add $fd
    ld l, a
    ld [hl], $08
    add $ff
    ld l, a
    ld [hl], $01
    add $06
    ld l, a
    ld [hl], $00
    add $fd
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    ld [hl], $03
    jp Jump_003_71aa


Jump_003_7221:
    call Call_003_41bf
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_7267

    dec a
    jp z, Jump_003_7300

    dec a
    jp z, Jump_003_7349

    dec a
    jp z, Jump_003_735f

    dec a
    jp z, Jump_003_736e

    ld de, $75de
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    call Call_000_01e9
    push af
    call Call_003_73e9
    pop af
    jp nz, Jump_003_71aa

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    and $0f
    jp nz, Jump_003_71aa

    ld a, $33
    add c
    ld l, a
    ld [hl], $01
    call Call_000_015c
    jp Jump_003_71e1


jr_003_7267:
    ld de, $75e5
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_71aa

    ld [hl], $78
    ld b, $37
    ld a, $02
    call Call_000_01b0
    ld a, $37
    add c
    ld l, a
    ld a, [hl]
    ld [$ca01], a
    ld a, $03
    ld [$ca03], a
    ld a, $38
    add c
    ld l, a
    ld [hl], $01
    add $d5
    ld l, a
    ld a, [hl]
    add $08
    cp $10
    jr nc, jr_003_729f

    ld a, $10
    jr jr_003_72a5

jr_003_729f:
    cp $a0
    jr c, jr_003_72a5

    ld a, $90

jr_003_72a5:
    push af
    push hl
    ld e, a
    ld a, [$d7d1]
    add e
    sub $10
    ld e, a
    ld a, [$d7d2]
    add $30
    ld d, a
    call Call_003_452b
    ld a, [hl]
    ld [$ca04], a
    call Call_003_72fa
    ld [$ca05], a
    call Call_003_72fa
    ld [$ca06], a
    call Call_003_72fa
    ld [$ca07], a
    pop hl
    pop af
    srl a
    srl a
    srl a
    srl a
    and $0f
    ld [$ca02], a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld a, $00
    ld [$ca03], a
    ld a, $19
    add c
    ld l, a
    ld [hl], $02
    add $01
    ld l, a
    ld [hl], $06
    add $1f
    ld l, a
    ld [hl], $01
    jp Jump_003_71e1


Call_003_72fa:
    ld a, l
    add $10
    ld l, a
    ld a, [hl]
    ret


Jump_003_7300:
    ld de, $75e5
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_71aa

    ld a, $19
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $04
    add $1f
    ld l, a
    ld [hl], $00
    ld a, $37
    add c
    ld l, a
    ld a, [$ca01]
    ld [hl], a
    ld b, $37
    call Call_000_01b3
    ld a, $40
    ld [$ca01], a
    ld l, c
    push hl
    ld a, [$ca02]
    ld e, a
    ld d, $03
    ld bc, $0401
    ld hl, $ca04
    call Call_000_0246
    pop hl
    ld c, l
    call Call_000_015c
    jp Jump_003_71e1


Jump_003_7349:
    ld de, $75f7
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $10
    jp nz, Jump_003_71aa

    call Call_003_752d
    jp Jump_003_71e1


Jump_003_735f:
    ld de, $75f7
    call Call_003_42dc
    jp nc, Jump_003_71aa

    call Call_000_015c
    jp Jump_003_71e1


Jump_003_736e:
    ld a, [$ca00]
    or a
    jp nz, Jump_003_71aa

    ld a, $33
    add c
    ld l, a
    ld [hl], $08
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    inc [hl]
    jp Jump_003_71aa


Jump_003_7388:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_003_73b9

    call Call_003_41bf
    ld de, $75de
    call Call_000_015f
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_003_71aa

    call Call_000_015c
    ld a, $17
    add c
    ld l, a
    ld [hl], $06
    ld de, $711e
    call Call_003_4080
    ld de, $7120
    call Call_003_40a6
    jp Jump_003_71e1


jr_003_73b9:
    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_003_73c8

    ld de, $75de
    call Call_000_015f

jr_003_73c8:
    call Call_003_747b
    ld de, $711a
    call Call_003_4176
    bit 1, a
    jp z, Jump_003_71aa

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_003_73e3

    ld [hl], $00
    jp Jump_003_71aa


jr_003_73e3:
    call Call_000_015c
    jp Jump_003_71fc


Call_003_73e9:
    ld b, a
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_7458

    ld a, $2f
    add c
    ld l, a
    dec [hl]
    jr nz, jr_003_746d

    ld [hl], $0a
    call Call_003_426e
    ld b, $00
    jr c, jr_003_7404

    ld b, $01

jr_003_7404:
    ld e, $00
    or a
    jr z, jr_003_7419

    inc e
    cp $08
    jr c, jr_003_7419

    inc e
    cp $10
    jr c, jr_003_7419

    inc e
    cp $20
    jr c, jr_003_7419

    inc e

jr_003_7419:
    ld a, $08
    bit 0, b
    jr nz, jr_003_7423

    add e
    ld b, a
    jr jr_003_7425

jr_003_7423:
    sub e
    ld b, a

jr_003_7425:
    ld a, $31
    add c
    ld l, a
    ld [hl], b
    ld a, $30
    add c
    ld l, a
    ld e, [hl]
    ld a, b
    sub e
    and $0f
    jr z, jr_003_743d

    cp $08
    jr nc, jr_003_743c

    inc e
    jr jr_003_743d

jr_003_743c:
    dec e

jr_003_743d:
    ld a, e
    and $0f
    ld [hl], a
    inc a
    ld b, a
    ld a, $1d
    add c
    ld l, a
    ld a, b
    ld de, $0120
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    call Call_003_4078
    jp Jump_003_746d


jr_003_7458:
    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_003_7467

    ld a, $ff
    ld [hl-], a
    ld a, $80
    jr jr_003_746c

jr_003_7467:
    ld a, $00
    ld [hl-], a
    ld a, $80

jr_003_746c:
    ld [hl], a

Jump_003_746d:
jr_003_746d:
    ld de, $711a
    call Call_003_4176
    bit 0, a
    jr z, jr_003_747a

    call Call_003_4070

jr_003_747a:
    ret


Call_003_747b:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $e6
    ld e, a
    ld a, $ff
    adc [hl]
    ld d, a
    bit 7, a
    jr z, jr_003_7496

    ld a, $00
    sub e
    ld a, $fe
    sbc d
    jr nc, jr_003_7496

    ld de, $fe00

jr_003_7496:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_003_749a:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $00
    ldh [$ff9b], a
    ld e, a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add $3e
    ldh [$ff9c], a
    ld d, a
    push hl
    push bc
    push de
    ld a, $38
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_003_74cb

    cp $02
    jr c, jr_003_74f2

    ld [hl], $00
    ld a, [$ca03]
    inc a
    cp $04
    jr c, jr_003_74c8

    xor a

jr_003_74c8:
    ld [$ca03], a

jr_003_74cb:
    ld a, [$ca03]
    add a
    add a
    ld b, a
    ld a, $08
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_003_74dd

    ld a, b
    add $10
    ld b, a

jr_003_74dd:
    ld a, b
    add $0d
    ld l, a
    ld a, $75
    adc $00
    ld h, a
    ld a, [$ca02]
    ld e, a
    ld d, $03
    ld bc, $0401
    call Call_000_0246

jr_003_74f2:
    pop de
    pop bc
    pop hl
    ld a, $1a
    add c
    ld l, a
    ld [hl], $06
    ld b, $00
    call Call_003_44e4
    ld a, $00
    ld [$c3e2], a
    ld b, $25
    ld de, $7894
    jp Jump_000_021f


    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add c
    add c
    add c
    add c

Call_003_752d:
    ld b, $07
    call Call_003_753e
    ld b, $08
    call Call_003_753e
    ld b, $0a
    call Call_003_753e
    ld b, $0b

Call_003_753e:
    ld l, c
    push hl
    ld de, $7122
    ld a, $a9
    ld [$cc00], a
    ld a, $75
    ld [$cc01], a
    call Call_003_420a
    jr c, jr_003_7560

    ld a, [$ca00]
    inc a
    ld [$ca00], a
    call Call_003_7575
    xor a
    pop hl
    ld c, l
    ret


jr_003_7560:
    scf
    pop hl
    ld c, l
    ret


    dec b
    jr z, jr_003_758c

    dec b
    jp nz, Jump_003_75a2

Jump_003_756b:
jr_003_756b:
    ld a, [$ca00]
    dec a
    ld [$ca00], a
    ld b, $00
    ret


Call_003_7575:
    ld de, $0340
    ld a, $08
    add c
    ld l, a
    ld b, [hl]
    ld a, $1d
    add c
    ld l, a
    ld a, b
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_000_015c


jr_003_758c:
    ld a, [$ccc2]
    or a
    jr nz, jr_003_756b

    ld a, [$deaf]
    or a
    jp nz, Jump_003_75a2

    ld de, $75ef
    call Call_000_015f
    call Call_003_40ec

Jump_003_75a2:
    call Call_003_41d7
    ret nz

    jp Jump_003_756b


    ld h, h
    ld [hl], l
    ld b, a
    dec h
    nop
    rrca
    halt
    dec bc
    ld bc, $0242
    inc bc
    pop bc
    rrca
    halt
    inc b
    nop
    nop
    nop
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    nop
    nop
    inc b
    ld c, $04
    ld c, $07
    inc b
    ld c, $04
    ld c, $08
    inc b
    ld c, $04
    ld c, $07
    inc b
    ld c, $04
    ld c, $04
    inc b
    inc b
    rst $38
    rrca
    halt
    inc bc
    ld bc, $0302
    rst $38
    rrca
    halt
    inc bc
    dec b
    rrca
    rlca
    dec b
    rrca
    ld [$0fff], sp
    halt
    ld b, $0b
    inc c
    dec bc
    dec c
    rst $38
    rrca
    halt
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    db $10
    ld de, $ff05
    inc sp
    halt
    ld [hl], h
    halt
    cp c
    halt
    cp $76
    ld b, e
    ld [hl], a
    add b
    ld [hl], a
    pop bc
    ld [hl], a
    ld a, [bc]
    ld a, b
    ld c, a
    ld a, b
    sub h
    ld a, b
    and c
    ld a, b
    xor [hl]
    ld a, b
    or a
    ld a, b
    ret nz

    ld a, b
    ret


    ld a, b
    ld b, $79
    ld b, a
    ld a, c
    adc b
    ld a, c
    db $f4
    dec bc
    xor $08
    ld [$00f0], a
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
    ld [$08e8], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    nop
    ld [$100b], sp
    ld [$0ce9], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    db $f4
    dec bc
    db $ed
    ld [$f0e8], sp
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13e8], sp
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
    ld [$1bea], sp
    stop
    ld [$101c], sp
    nop
    ld [$101d], sp
    ld [$1eff], sp
    db $10
    add b
    db $f4
    dec bc
    db $ed
    ld [$f0e8], sp
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13e8], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    ld [$1016], sp
    ld [$17e8], sp
    stop
    ld [$101f], sp
    nop
    ld [$1020], sp
    nop
    ld [$101a], sp
    ld [$1bea], sp
    stop
    ld [$1021], sp
    nop
    ld [$1022], sp
    ld [$1eff], sp
    db $10
    add b
    db $f4
    dec bc
    db $ed
    ld [$f0e8], sp
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13e8], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    ld [$1016], sp
    ld [$17e8], sp
    stop
    ld [$101f], sp
    nop
    ld [$1023], sp
    nop
    ld [$1024], sp
    ld [$25ea], sp
    stop
    ld [$1026], sp
    nop
    ld [$1027], sp
    ld [$1eff], sp
    db $10
    add b
    db $f4
    dec bc
    pop af
    ld [$f8ea], sp
    jr z, jr_003_775b

    nop
    ld [$1029], sp
    ld [$2af0], sp
    stop
    ld [$102b], sp
    nop
    ld [$102c], sp

jr_003_775b:
    nop
    ld [$102d], sp
    nop
    ld [$102e], sp
    ld [$2fe0], sp
    stop
    ld [$1030], sp
    nop
    ld [$1031], sp
    ld [$32f0], sp
    stop
    ld [$1033], sp
    nop
    ld [$1034], sp
    nop
    ld [$1035], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8e6], sp
    ld [hl], $10
    nop
    ld [$1037], sp
    ld [$38f0], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    rlca
    jr c, @+$32

    ld [$3bf1], sp
    stop
    ld [$103c], sp
    ld [$3df4], sp
    stop
    ld [$103e], sp
    nop
    ld [$103f], sp
    ld [$40ec], sp
    stop
    ld [$1041], sp
    nop
    rlca
    ld b, c
    jr nc, jr_003_77bd

jr_003_77bd:
    ld [$3040], sp
    add b
    db $f4
    dec bc
    ldh a, [rTAC]
    add sp, -$10
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13e8], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    nop
    ld [$1016], sp
    ld [$42e8], sp
    stop
    ld [$1043], sp
    nop
    ld [$1044], sp
    nop
    ld [$101a], sp
    ld [$45e7], sp
    stop
    ld [$1046], sp
    nop
    ld [$1047], sp
    ld [$48f1], sp
    stop
    ld [$1049], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8e2], sp
    ld c, h
    stop
    ld [$104d], sp
    ld [$4ef8], sp
    stop
    ld [$104f], sp
    inc c
    inc c
    ld d, h
    stop
    ld [$1055], sp
    ld [$56f8], sp
    stop
    ld [$1057], sp
    inc c
    ldh [c], a
    ld c, a
    ld [hl], b
    nop
    ld [$704e], sp
    ld [$4df8], sp
    ld [hl], b
    nop
    ld [$704c], sp
    db $e4
    db $e4
    ld d, a
    ld [hl], b
    nop
    ld [$7056], sp
    ld [$55f8], sp
    ld [hl], b
    nop
    ld [$7054], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$08e6], sp
    ld d, b
    stop
    ld [$1051], sp
    ld [$52f8], sp
    stop
    ld [$1053], sp
    jr @-$06

    ld d, d
    ld d, b
    nop
    ld [$5053], sp
    ld [$50f8], sp
    ld d, b
    nop
    ld [$5051], sp
    ld hl, sp-$28
    ld d, e
    ld [hl], b
    nop
    ld [$7052], sp
    ld [$51f8], sp
    ld [hl], b
    nop
    ld [$7050], sp
    ret c

    ld hl, sp+$51
    jr nc, jr_003_7888

jr_003_7888:
    ld [$3050], sp
    ld [$53f8], sp
    jr nc, jr_003_7890

jr_003_7890:
    ld [$3052], sp
    add b
    db $fc
    inc bc
    ret nz

    ld [$f802], sp
    ld c, l
    stop
    ld [$104e], sp
    add b
    db $fc
    inc bc
    ret nz

    ld [$f802], sp
    ld c, [hl]
    jr nc, jr_003_78aa

jr_003_78aa:
    ld [$304d], sp
    add b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    db $fc
    ld e, c
    db $10
    add b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    db $fc
    ld e, d
    db $10
    add b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    db $fc
    ld e, e
    db $10
    add b
    db $f4
    dec bc
    pop af
    ld [$f8ea], sp
    ld e, h
    stop
    ld [$105d], sp
    ld [$5ef0], sp
    stop
    ld [$105f], sp
    nop
    ld [$1060], sp
    nop
    ld [$1061], sp
    nop
    ld [$1062], sp
    ld [$63e0], sp
    stop
    ld [$1064], sp
    nop
    ld [$1065], sp
    ld [$66f0], sp
    stop
    ld [$1067], sp
    nop
    ld [$1068], sp
    nop
    ld [$1069], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8e6], sp
    ld l, d
    stop
    ld [$106b], sp
    ld [$6cf0], sp
    stop
    ld [$106d], sp
    nop
    ld [$106e], sp
    nop
    rlca
    ld l, h
    jr nc, @+$0a

    pop af
    ld l, a
    stop
    ld [$1070], sp
    ld [$71f4], sp
    stop
    ld [$1072], sp
    nop
    ld [$1073], sp
    ld [$74ec], sp
    stop
    ld [$1075], sp
    nop
    rlca
    ld [hl], l
    jr nc, jr_003_7943

jr_003_7943:
    ld [$3074], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8e4], sp
    ld [hl], $10
    nop
    ld [$1037], sp
    ld [$38f0], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    rlca
    jr c, @+$32

    ld [$3bf1], sp
    stop
    ld [$103c], sp
    ld [$3df4], sp
    stop
    ld [$103e], sp
    nop
    ld [$103f], sp
    ld [$40ec], sp
    stop
    ld [$1041], sp
    nop
    rlca
    ld b, c
    jr nc, jr_003_7984

jr_003_7984:
    ld [$3040], sp
    add b
    db $f4
    dec bc
    pop af
    ld [$f8e5], sp
    ld [hl], $10
    nop
    ld [$1037], sp
    ld [$38f0], sp
    stop
    ld [$1039], sp
    nop
    ld [$103a], sp
    nop
    rlca
    jr c, jr_003_79d4

    ld [$3bf1], sp
    stop
    ld [$103c], sp
    ld [$3df4], sp
    stop
    ld [$103e], sp
    nop
    ld [$103f], sp
    ld [$40ec], sp
    stop
    ld [$1041], sp
    nop
    rlca
    ld b, c
    jr nc, jr_003_79c5

jr_003_79c5:
    ld [$3040], sp
    add b

Jump_003_79c9:
    ret


    db $ec
    ld c, l
    ld l, d
    ld c, [hl]
    dec e
    ld h, a
    ld d, a
    or e
    ld d, a
    dec hl

jr_003_79d4:
    ld l, h
    ld h, c
    jr z, jr_003_7a3a

    dec l
    add l
    ld l, [hl]
    rst $08
    ld l, [hl]
    ld a, [hl+]
    or [hl]

jr_003_79df:
    ld [hl], l
    scf
    halt
    dec [hl]
    db $ec
    ld c, l
    ld l, d
    ld c, [hl]
    scf
    db $ec
    ld c, l
    ld l, d
    ld c, [hl]
    ld b, c
    db $ec
    ld c, l
    ld l, d
    ld c, [hl]
    jr c, jr_003_79df

    ld c, l
    ld l, d
    ld c, [hl]
    add hl, sp
    db $ec
    ld c, l
    ld l, d
    ld c, [hl]
    add hl, sp

Jump_003_79fc:
    ld h, $c8
    ld c, $00
    ld a, b
    or a
    jr z, jr_003_7a09

    dec a
    jr z, jr_003_7a24

    jr jr_003_7a37

jr_003_7a09:
    call Call_003_7a7b
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
    xor a
    ld [$cb02], a
    ret


jr_003_7a24:
    call Call_003_7a7b
    ld a, $22
    ldh [$ff9b], a
    ld a, $57
    ldh [$ff9c], a
    ldh a, [$ff8a]
    ld c, a
    ldh a, [$ff8b]
    ld b, a
    jr jr_003_7a6c

jr_003_7a37:
    ld a, [$cb01]

jr_003_7a3a:
    or a
    jr z, jr_003_7a43

    dec a
    ld [$cb01], a
    jr jr_003_7a50

jr_003_7a43:
    call Call_003_7a7b
    call Call_003_42dc
    jr nc, jr_003_7a50

    ld a, $01
    ld [$cb02], a

jr_003_7a50:
    ld a, $22
    ldh [$ff9b], a
    ld a, $57
    ldh [$ff9c], a
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

jr_003_7a6c:
    ld a, $00
    ldh [$ffab], a
    xor a
    ld [$d3ea], a
    ld a, $07
    ldh [$ffac], a
    jp Jump_000_02be


Call_003_7a7b:
    push hl
    ld a, [$cb00]
    dec a
    ld b, a
    add a
    add a
    add b
    add $ca
    ld l, a
    ld a, $00
    adc $79
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


    and e
    ld c, [hl]
    or e
    ld e, c
    adc $62
    ld a, d
    ld l, a
    ld b, e
    ld [hl], a

Jump_003_7aa3:
    ld a, b
    dec a
    ld de, $7a99
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
