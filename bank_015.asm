; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_015_406b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$33

    dec [hl]
    db $20, $c3
    ret c

    ld c, h
    jp Jump_015_53be


    jp Jump_015_58ac


    jp Jump_015_5d58


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
    ld [hl], $bf
    inc l
    ld [hl], $40
    inc l
    inc l
    ld a, [de]
    inc de
    ld [hl+], a

jr_015_406b:
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
    call Call_015_4146
    ld a, $2f
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 2, a
    jr z, jr_015_40a2

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

jr_015_40a2:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    push af
    push hl
    call Call_015_40f0
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
    jr z, jr_015_40c8

    dec b
    jr nz, jr_015_40ed

jr_015_40c5:
    ld b, $00
    ret


jr_015_40c8:
    ld a, [$ccc2]
    or a
    jr nz, jr_015_40c5

    ld a, $32
    add c
    ld l, a
    ld a, [$deaf]
    and [hl]
    jr nz, jr_015_40ed

    ld a, $2f
    add c
    ld l, a
    bit 1, [hl]
    push hl
    call nz, Call_015_420f
    pop hl
    bit 0, [hl]
    call nz, Call_015_41f5
    call Call_015_40f0
    jr c, jr_015_40c5

jr_015_40ed:
    jp Jump_015_42e0


Call_015_40f0:
    ld a, $2b
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [hl]
    or a
    jr nz, jr_015_4101

    call Call_000_015f
    or a
    ret


jr_015_4101:
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


    call Call_015_420f
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
    call Call_015_42c8
    pop de

Call_015_4146:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_015_4168

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
    jr nz, jr_015_415e

    inc a

jr_015_415e:
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


Jump_015_4168:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_015_416f:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_015_4179:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_015_4181:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_015_4189:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_015_41a5

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_015_419b

    inc a

jr_015_419b:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_015_41a5:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_015_41af:
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
    jr jr_015_41c3

Call_015_41bf:
    ld a, $1f
    add c
    ld l, a

jr_015_41c3:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_015_41cd

    inc d

jr_015_41cd:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_015_41d1:
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


Call_015_41e3:
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


Call_015_41f5:
Jump_015_41f5:
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


Call_015_420f:
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
    jr nz, jr_015_422a

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_015_422a

    ld de, $0350

jr_015_422a:
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
    jr nz, jr_015_4264

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_015_424f

    xor a

jr_015_424f:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_015_4264

    ld a, [de]
    add b
    cp $d0
    jr c, jr_015_425d

    xor a

jr_015_425d:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_015_4264:
    or a
    ret


    push de
    call Call_015_420f
    pop de
    call Call_015_427f
    ret z

    bit 0, a
    jr z, jr_015_4277

    ld a, $1d
    jr jr_015_4279

jr_015_4277:
    ld a, $1f

jr_015_4279:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_015_427f:
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


Call_015_42c8:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_015_42d9

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_015_42da

jr_015_42d9:
    inc d

jr_015_42da:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_015_42e0:
Jump_015_42e0:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_015_42f0

    cp $90
    jr nc, jr_015_4305

jr_015_42f0:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_015_42fd

    cp $c0
    jr nc, jr_015_4305

jr_015_42fd:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_015_4305:
    xor a
    ld b, a
    ret


    ld a, [$ccbb]
    or a
    jr z, jr_015_4326

    ld a, $0a
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8b], a
    ld l, c
    push hl
    call Call_000_02ca
    pop hl
    ld c, l
    ld a, [$cc98]
    or a
    ld e, a
    jr nz, jr_015_4328

jr_015_4326:
    ld e, $30

jr_015_4328:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ret


    ld a, [$c3ef]
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    cp b
    jr nc, jr_015_434e

    ldh a, [$ff8b]
    ld l, a
    ld a, b
    add d
    ld e, a
    cp l
    jr c, jr_015_4360

    ld e, l
    jr jr_015_4360

jr_015_434e:
    ldh a, [$ff8a]
    ld l, a
    ld a, b
    sub d
    ld e, a
    bit 7, a
    jr z, jr_015_435c

    ld e, $00
    jr jr_015_4360

jr_015_435c:
    cp l
    jr nc, jr_015_4360

    ld e, l

jr_015_4360:
    ld a, e
    sub $30
    ret


    ld l, c
    push hl
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    ld a, $04
    call Call_000_01cb
    pop hl
    ld c, l
    ret


    ld a, $0f
    add c
    ld l, a
    ld a, [$c3f0]
    ld b, a
    ld a, [hl]
    add $30
    cp b
    ret


    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ret z

    jp Jump_000_016b


Call_015_438d:
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


    ld b, $24
    ld a, $0d
    add c
    ld l, a
    ld e, $01
    ld a, [hl]
    cp $50
    jr c, jr_015_4403

    cp $e8
    jr nc, jr_015_4403

    dec e

jr_015_4403:
    ld a, b
    add c
    ld l, a
    ld a, e
    ld [hl], a
    or a
    ret


Call_015_440a:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $fc
    ret nc

    cp $e0
    jr c, jr_015_441a

    ld b, $00
    scf
    ret


jr_015_441a:
    ld b, $01
    cp $a4
    ccf
    ret


    ld e, b
    push de
    call Call_015_440a
    pop de
    ret nc

    ld a, e
    xor b
    and $01
    ret nz

    scf
    ret


    push bc
    call Call_015_443c
    pop bc
    ld a, $00
    adc a
    ld e, a
    ld a, c
    add b
    ld l, a
    ld [hl], e
    ret


Call_015_443c:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc l
    ld a, [hl]
    ldh [$ff8b], a
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
    jr nz, jr_015_447d

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_015_4468

    xor a

jr_015_4468:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_015_447d

    ld a, [de]
    add b
    cp $d0
    jr c, jr_015_4476

    xor a

jr_015_4476:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_015_447d:
    or a
    ret


    ld a, c
    add b
    ld l, a
    bit 0, [hl]
    ret z

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
    ret


    ld a, $0d
    add c
    ld l, a
    ld a, [$c3e7]
    ld [hl+], a
    inc l
    ld a, [$c3e8]
    ld [hl], a
    ret


    ld a, e
    ldh [$ff8a], a
    ld a, d
    ldh [$ff8b], a
    ld a, [$d742]
    ld e, a
    ld a, [$d744]
    ld d, a
    call Call_015_44fb
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d744]
    ld d, a
    call Call_015_44fb
    ret c

    ld a, [$d742]
    ld e, a
    ld a, [$d745]
    ld d, a
    call Call_015_44fb
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d745]
    ld d, a

Call_015_44fb:
    ldh a, [$ff8a]
    add e
    ld e, a
    ldh a, [$ff8b]
    add d
    ld d, a
    jp Jump_000_0165


    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ld b, a
    ld a, [$d72f]
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


Call_015_4528:
    push af
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ffa4], a
    inc l
    ld a, [hl]
    ldh [$ffa6], a
    pop af
    add c
    ld l, a
    ld a, [hl]
    ld [$cc46], a
    push hl
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e2], a
    call Call_000_021f
    ld a, [$c3e2]
    ld [hl], a
    pop hl
    ld a, [$cc46]
    ld [hl], a
    ret


Call_015_4551:
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


Call_015_456b:
    ld l, c
    push hl
    ld a, $1d
    add c
    ld l, a
    ld a, b
    call Call_000_024c
    pop hl
    ld c, l
    ret


jr_015_4578:
    push de
    call Call_015_49e2
    pop de
    ret z

    ret c

    push hl
    push bc
    push de
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    ld a, $04
    call Call_000_01cb
    pop de
    pop bc
    pop hl
    ld a, [hl]
    or a
    jr z, jr_015_4578

    ret


    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_015_45a8

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_015_45a8

    ld b, $20

jr_015_45a8:
    ld a, b
    ld [$d3ea], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ffa4], a
    inc l
    ld a, [hl]
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


Call_015_45e5:
    ldh [$ff8a], a
    ld a, [$c3ef]
    ldh [$ff8c], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    ldh [$ff8b], a
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
    jr nc, jr_015_460a

    cpl
    inc a
    scf

jr_015_460a:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_015_4631
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


Call_015_4631:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_015_463a:
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
    jr nc, jr_015_464e

    add hl, bc
    jr jr_015_464f

jr_015_464e:
    inc de

jr_015_464f:
    pop af
    dec a
    jr nz, jr_015_463a

    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    ret


    ld a, [$cc9e]
    ld e, a
    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9f]
    add [hl]
    sub e
    ld [hl], a
    ret


    ld a, $0f
    add c
    ld l, a
    ld a, [$cc9e]
    add [hl]
    ld [hl], a
    ret


    ld l, $00
    jr jr_015_4679

    ld l, $01

jr_015_4679:
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
    jr nz, jr_015_469a

    inc de

jr_015_469a:
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
    jr z, jr_015_46a9

    ld e, b

jr_015_46a9:
    ld a, d
    call Call_000_0165
    pop hl
    ld c, l
    ret


Call_015_46b0:
    xor a
    jr jr_015_46b5

Call_015_46b3:
    ld a, $ff

jr_015_46b5:
    ld l, $01
    jr jr_015_46c0

Call_015_46b9:
    xor a
    jr jr_015_46be

Call_015_46bc:
    ld a, $01

jr_015_46be:
    ld l, $00

jr_015_46c0:
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
    jr nz, jr_015_46dd

    inc de

jr_015_46dd:
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


Call_015_46f0:
    push de
    call Call_015_46bc
    pop de
    jr c, jr_015_4705

jr_015_46f7:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_015_46bc
    pop de
    jr nc, jr_015_46f7

    or a
    ret


jr_015_4705:
    push de
    call Call_015_46b9
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_015_4705

    push de
    call Call_015_46b3
    pop de
    jr c, jr_015_4727

jr_015_4719:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_015_46b3
    pop de
    jr nc, jr_015_4719

    or a
    ret


jr_015_4727:
    push de
    call Call_015_46b0
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_015_4727

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    ret nz

    ld a, [hl-]
    or a
    ret z

    ld b, $00
    ld [hl], b
    ld a, $0e
    add c
    ld l, a
    ld [hl], b
    add $0f
    ld l, a
    ld [hl], b
    inc l
    ld [hl], b

jr_015_474c:
    push de
    call Call_015_427f
    pop de
    ret z

    ld a, $20
    add c
    ld l, a
    dec [hl]
    ret z

    jr jr_015_474c

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $a0
    ccf
    ret nc

    add $30
    ld l, a
    ld a, [de]
    add l
    push af
    inc de
    ld a, [de]
    add l
    ld b, a
    pop af
    xor b
    and $80
    ret z

    scf
    ret


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
    ld a, [de]
    ld b, $10
    call Call_000_01b0
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


Call_015_47d3:
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
    jr c, jr_015_481e

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_015_481e

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_015_480e

    inc a
    cp b
    jr nz, jr_015_481e

    xor a
    scf
    ret


jr_015_480e:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_015_481e

    xor a
    inc a
    scf
    ret


jr_015_481e:
    or a
    ret


    ld a, $06
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_015_4830

    ld d, $08
    call Call_015_4841
    call Call_000_025e

jr_015_4830:
    ld a, $06
    add c
    ld l, a
    bit 0, [hl]
    ret z

    ld d, $08

Call_015_4839:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_015_4841:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_015_4849:
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    ld b, [hl]
    add b
    ld b, a
    inc l
    inc l
    inc de
    ld a, [de]
    ld e, [hl]
    add e
    ld d, a
    ld e, b
    ld l, c
    push hl
    call Call_000_0165
    pop hl
    ld c, l
    ret


    ld a, $39
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    and $08
    jr z, jr_015_4874

    xor a
    ld [$cca6], a
    ld a, $1c
    ldh [rOBP0], a
    ret


jr_015_4874:
    ld a, $01
    ld [$cca6], a
    ld a, $7c
    ldh [rOBP0], a
    ret


    xor a
    ld [$cca6], a
    ld a, $1c
    ldh [rOBP0], a
    ret


Call_015_4887:
    ldh [$ff8a], a
    xor a
    ld [$d8ab], a
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld a, l
    ld hl, $d711
    sub [hl]
    ld e, a
    ld a, [$d7d1]
    add e
    ld e, a
    ld a, d
    add a
    add a
    add a
    add a
    ld d, a
    ld a, [$d7d2]
    add d
    ld d, a
    push de
    call Call_015_4927
    pop de
    ldh a, [$ff8a]
    ld [hl], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$d890]
    ld c, a
    ld a, [$d891]
    ld b, a
    add hl, bc
    push de
    ld a, [$df01]
    ld b, a
    ld c, $04
    ld de, $ff8a
    call Call_000_02b8
    pop de
    ld hl, $ff8a
    ld a, [hl+]
    ld [$d8a7], a
    ld a, [hl+]
    ld [$d8a9], a
    ld a, [hl+]
    ld [$d8a8], a
    ld a, [hl+]
    ld [$d8aa], a
    call Call_015_4910
    res 0, l
    ld e, l
    ld d, h
    push de
    ld bc, $0002
    ld hl, $d8a7
    call Call_000_0183
    pop de
    push hl
    ld hl, $0020
    add hl, de
    ld a, h
    and $03
    or $98
    ld d, a
    ld e, l
    pop hl
    ld bc, $0002
    ld hl, $d8a9
    call Call_000_0183
    ld a, $01
    ld [$d8ab], a
    ret


Call_015_4910:
    ld a, e
    srl a
    srl a
    srl a
    ld e, a
    ld h, $00
    ld l, d
    add hl, hl
    add hl, hl
    ld a, l
    and $e0
    add e
    ld l, a
    ld de, $9800
    add hl, de
    ret


Call_015_4927:
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


    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    push hl
    call Call_000_0213
    pop hl
    ld [hl], d
    dec hl
    ld [hl], e
    ret


    ld a, $1d
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ld e, a
    adc d
    ld [hl], a
    xor e
    and $80
    ret


    ld a, $20
    add c
    ld l, a
    jr jr_015_495d

    ld a, $1e
    add c
    ld l, a

jr_015_495d:
    ld a, [hl-]
    bit 7, a
    jr nz, jr_015_496b

    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret c

    ld [hl], d
    dec l
    ld [hl], e
    ret


jr_015_496b:
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_015_4975

    inc d

jr_015_4975:
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret nc

    ld [hl], d
    dec l
    ld [hl], e
    ret


    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_015_4982:
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
    jr nz, jr_015_4982

    ret


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_015_49ac:
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
    jr jr_015_49ac

    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_015_49e2:
    ld b, l
    ld a, e
    ldh [$ff8f], a
    ld a, d
    ldh [$ff90], a
    xor a
    ldh [$ff8c], a
    ldh [$ff8d], a
    ld a, [hl]
    or a
    jr z, jr_015_49f7

    dec [hl]
    xor a
    sub $01
    ret


jr_015_49f7:
    inc l

jr_015_49f8:
    ld a, [hl]
    add a
    add [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $fe
    jr nz, jr_015_4a0d

    ldh [$ff8c], a
    ld l, b
    ld [hl], $01
    xor a
    ret


jr_015_4a0d:
    cp $ff
    jr nz, jr_015_4a1d

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_015_49f8

jr_015_4a1d:
    inc [hl]
    dec l
    ld [hl], a
    ld a, $01
    ldh [$ff8d], a
    inc de
    ld a, [de]
    ldh [$ff8a], a
    inc de
    ld a, [de]
    ldh [$ff8b], a
    xor a
    inc a
    ret


    call Call_015_49e2
    jr z, jr_015_4a42

    jr c, jr_015_4a40

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_015_4a44

jr_015_4a40:
    or a
    ret


jr_015_4a42:
    scf
    ret


Call_015_4a44:
    jp hl


Call_015_4a45:
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


Call_015_4a5d:
jr_015_4a5d:
    ld a, [$cca8]
    and $07
    jr nz, jr_015_4a5d

    ret


jr_015_4a65:
    ld a, [$cca8]
    and $07
    jp z, Jump_000_01c5

    call Call_000_01c5
    jr jr_015_4a65

    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_015_4a45
    call Call_015_4a5d
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


Call_015_4aa2:
    push de
    ret


    inc hl
    ld a, $fe
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    xor a
    ldh [$ff8a], a
    ldh [$ff8b], a
    ldh [$ff8d], a
    ld a, [hl+]
    ldh [$ff8c], a
    ld a, [de]
    inc de
    ld [$ce53], a
    ld a, [de]
    inc de
    ld [$ce54], a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr c, jr_015_4aca

    dec hl
    ld b, [hl]
    jr jr_015_4b18

jr_015_4aca:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_015_4ad3:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_015_4af9

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
    call Call_015_4aa2
    pop bc
    pop hl

jr_015_4af1:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_015_4ad3

jr_015_4af9:
    cp $fe
    jr c, jr_015_4b11

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_015_4b07

    ld [hl], $00
    jr jr_015_4af1

jr_015_4b07:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_015_4b19

jr_015_4b11:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_015_4b18:
    or a

jr_015_4b19:
    ld [hl], b
    ret


    ld a, [$ce53]
    ld e, a
    ld a, [$ce54]
    ld d, a
    ld a, b
    jp Jump_000_0171


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
    call Call_015_4b5d
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
    jp Jump_015_41f5


Call_015_4b5d:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    inc [hl]
    ld a, e
    or a
    jr z, jr_015_4b6b

    dec a
    cp [hl]
    jr nc, jr_015_4b9e

jr_015_4b6b:
    ld [hl], $00
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
    jr nz, jr_015_4b85

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_015_4b9e

jr_015_4b85:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_015_4b9e

    dec a
    ld e, $01
    jr z, jr_015_4b98

    ld e, $ff

jr_015_4b98:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_015_4b9e:
    pop bc
    pop hl
    ld a, [hl]
    ret


Call_015_4ba2:
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


Call_015_4bb5:
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
    ld de, $4c00
    call Call_015_4146
    ld a, $01
    ld [$d703], a
    ret


    nop
    nop
    nop
    inc bc

Call_015_4c04:
    ld a, $01
    ld [$dd00], a
    ld a, [$dd01]
    cp $98
    jr nc, jr_015_4c20

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


jr_015_4c20:
    ld a, $18
    add c
    ld l, a
    ld [hl], $13
    ld a, $02
    ld [$dd00], a
    ret


Call_015_4c2c:
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


Call_015_4c41:
    ld a, [$ccc1]
    or a
    jr nz, jr_015_4c54

    ld a, $01
    ld [$ccc1], a
    ld a, $0f
    add c
    ld l, a
    ld [hl], $0a
    xor a
    ret


jr_015_4c54:
    call Call_015_427f
    and $02
    ret


Jump_015_4c5a:
    push hl
    push bc
    call Call_015_4c41
    pop bc
    pop hl
    or a
    jr z, jr_015_4c7b

    ld a, $17
    add c
    ld l, a

jr_015_4c68:
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
    jr jr_015_4c81

jr_015_4c7b:
    ld b, l
    ld a, $17
    add c
    ld l, a
    ld [hl], b

jr_015_4c81:
    call Call_000_025e
    ld b, $01
    ret


Jump_015_4c87:
    push de
    call Call_015_4551
    pop de
    call Call_015_4ba2
    jr nz, jr_015_4c81

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $78
    jr c, jr_015_4caf

    ld a, $01
    ld [$dee9], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    xor a
    ld [$d74a], a
    call Call_000_015c
    jr jr_015_4c81

jr_015_4caf:
    call Call_015_4c04
    jr jr_015_4c81

    ret nc

    or b
    jr nc, jr_015_4c68

    nop
    ld [$0180], sp
    add b
    ei
    db $fc
    inc bc
    db $fc
    inc bc
    add b
    ei
    ld hl, sp+$07
    db $f4
    ld [$09f6], sp
    xor $08
    or $09
    or $08
    call z, Call_000_0708
    inc de
    inc bc
    ld h, l
    rst $18
    nop
    ld a, b
    dec b
    jr z, jr_015_4d3a

    dec b
    jr z, jr_015_4ce8

    dec b
    jp z, Jump_015_4d5d

    dec b
    ret z

    or a
    jr z, jr_015_4cf0

jr_015_4ce8:
    ld b, $36
    call Call_000_01b3
    ld b, $00
    ret


jr_015_4cf0:
    ld a, $0f
    ld [$de2e], a
    ld a, $01
    ld [$de2f], a
    ld d, $f8
    call Call_015_4841
    call Call_000_025e
    call Call_015_4bb5
    ld a, $19
    add c
    ld l, a
    set 1, [hl]
    add $19
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    ld b, $36
    ld a, $04
    call Call_000_01b0
    ld l, c
    push hl
    ld hl, $ca00
    ld bc, $0017
    xor a
    call Call_000_0174
    pop hl
    ld c, l
    ld de, $5268
    jp Jump_000_01dd


jr_015_4d3a:
    ld a, [$deaf]
    and $27
    jp nz, Jump_015_4d5d

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_015_4d76

    dec a
    jp z, Jump_015_4e21

    ld a, b
    or a
    jr z, jr_015_4d66

    dec a
    jr z, jr_015_4d70

Jump_015_4d57:
jr_015_4d57:
    call Call_000_025e
    call Call_015_5002

Jump_015_4d5d:
    call Call_015_51c0
    call Call_015_4c2c
    ld b, $01
    ret


jr_015_4d66:
    ld b, $00
    ld l, $02
    ld de, $4cc4
    jp Jump_015_4c5a


jr_015_4d70:
    ld de, $5236
    jp Jump_015_4c87


jr_015_4d76:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_015_4dad

    dec a
    jr z, jr_015_4de3

    ld de, $5231
    call Call_000_015f
    ld a, [$ca04]
    or a
    call z, Call_015_4ebe
    ld a, [$ca01]
    or a
    jr z, jr_015_4d57

    ld a, $33
    add c
    ld l, a
    ld [hl], $08
    ld de, $4cc2
    call Call_015_41af
    call Call_015_4179

Jump_015_4da3:
jr_015_4da3:
    ld a, $32
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    jr jr_015_4d57

jr_015_4dad:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_4db8

    dec [hl]
    jr jr_015_4d57

jr_015_4db8:
    ld a, [$ca04]
    cp $02
    jr nz, jr_015_4dcc

    ld de, $5258
    call Call_000_015f
    ld d, $08
    call Call_015_4839
    jr jr_015_4da3

jr_015_4dcc:
    ld de, $522c
    call Call_000_015f
    call Call_015_420f
    call Call_015_41e3
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$ca02], a
    jp Jump_015_4d57


jr_015_4de3:
    ld de, $5258
    call Call_000_015f
    call Call_015_420f
    ld de, $4cc4
    call Call_015_427f
    bit 1, a
    jp z, Jump_015_4d57

    ld a, $19
    add c
    ld l, a
    res 1, [hl]
    add $1a
    ld l, a
    ld [hl], $c8
    add $04
    ld l, a
    ld [hl], $14
    ld a, $2a
    add c
    ld l, a
    inc [hl]

Jump_015_4e0c:
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $03
    ld l, a
    ld [hl], $00
    xor a
    ld [$ca06], a
    call Call_000_015c
    jp Jump_015_4d57


Jump_015_4e21:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_015_4e57

    call Call_015_4f7c
    ld a, [$ca05]
    or a
    jr nz, jr_015_4e38

    ld a, $35
    add c
    ld l, a
    ld [hl], $00

jr_015_4e38:
    ld de, $525d
    call Call_000_015f
    call Call_015_4e7c
    ld a, $33
    add c
    ld l, a
    dec [hl]
    jp nz, Jump_015_4d57

    ld de, $fb80
    ld a, $30
    call Call_015_45e5
    call Call_015_42c8
    jp Jump_015_4da3


jr_015_4e57:
    ld de, $5258
    call Call_000_015f
    call Call_015_4e7c
    call Call_015_420f
    ld de, $4cc4
    call Call_015_427f
    bit 1, a
    jp z, Jump_015_4d57

    ld a, $33
    add c
    ld l, a
    ld [hl], $c8
    add $04
    ld l, a
    ld [hl], $14
    jp Jump_015_4e0c


Call_015_4e7c:
    ld de, $4cc8
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jr z, jr_015_4e8b

    ld de, $4ccc

jr_015_4e8b:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_015_4e96

    ld a, $20

jr_015_4e96:
    ld [$d3ea], a
    ld b, $65
    ld a, $02
    ld [$cc47], a
    ld a, $03
    ld [$c3e0], a
    ld a, $38
    add c
    ld l, a
    ld [hl], $01
    ld a, $38
    call Call_015_4528
    ret


    rst $20
    ld c, [hl]
    ld b, a
    push hl
    nop
    ld l, b
    ld d, d
    inc bc
    ld bc, $0342
    dec d
    ret z

Call_015_4ebe:
    ld a, $01
    ld [$ca04], a
    ld l, c
    push hl
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $4cb4
    ld a, $b1
    ld [$cc00], a
    ld a, $4e
    ld [$cc01], a
    call Call_015_438d
    jr c, jr_015_4ee3

    call Call_015_4efa
    xor a
    pop hl
    ld c, l
    ret


jr_015_4ee3:
    scf
    pop hl
    ld c, l
    ret


    ld a, b
    dec b
    jr z, jr_015_4f0e

    dec b
    jp nz, Jump_015_4f75

Jump_015_4eef:
jr_015_4eef:
    ld a, $00
    ld [$ca01], a
    ld [$ca02], a
    ld b, $00
    ret


Call_015_4efa:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $de
    ld l, a
    ld b, [hl]
    add $1c
    ld l, a
    ld [hl], b
    call Call_015_416f
    jp Jump_000_015c


jr_015_4f0e:
    ld a, [$ccc2]
    or a
    jr nz, jr_015_4eef

    ld a, [$deaf]
    or a
    jp nz, Jump_015_4f75

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_015_4f4f

    ld de, $524c
    call Call_000_015f
    call Call_015_420f
    call Call_015_41e3
    ld de, $4cb8
    call Call_015_4849
    jr nc, jr_015_4f75

    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    ld a, [$ca01]
    inc a
    ld [$ca01], a
    ld de, $4cba
    call Call_015_4146
    call Call_000_015c
    jr jr_015_4f75

jr_015_4f4f:
    ld de, $5251
    call Call_015_4551
    ld a, $0d
    add c
    ld l, a
    ld a, [$ca02]
    cp [hl]
    jr nz, jr_015_4f66

    ld a, $02
    ld [$ca04], a
    jr jr_015_4eef

jr_015_4f66:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $04
    jr z, jr_015_4f75

    call Call_015_420f
    call Call_015_41f5

Jump_015_4f75:
jr_015_4f75:
    call Call_015_42e0
    jp z, Jump_015_4eef

    ret


Call_015_4f7c:
    ld a, [$ca06]
    cp $03
    ret nc

    ld a, $37
    add c
    ld l, a
    call Call_000_01e9
    ret nz

    ld a, $35
    add c
    ld l, a
    ld a, [hl]
    cp $02
    ret nc

    inc [hl]
    ld a, [$ca05]
    and $01
    jr z, jr_015_4fcb

    ld a, [$ca07]
    or a
    jr nz, jr_015_5001

    ld a, $03
    ld [$ca07], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$ca08], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$ca0a], a
    xor a
    ld [$ca09], a
    ld [$ca0b], a
    ld [$ca0c], a
    ld a, $00
    ld [$ca0d], a
    ld a, $fe
    ld [$ca0e], a
    jr jr_015_4ffa

jr_015_4fcb:
    ld a, [$ca0f]
    or a
    jr nz, jr_015_5001

    ld a, $03
    ld [$ca0f], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$ca10], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$ca12], a
    xor a
    ld [$ca11], a
    ld [$ca13], a
    ld [$ca14], a
    ld a, $00
    ld [$ca15], a
    ld a, $fd
    ld [$ca16], a

jr_015_4ffa:
    ld a, [$ca05]
    inc a
    ld [$ca05], a

jr_015_5001:
    ret


Call_015_5002:
    ld l, c
    push hl
    ld a, [$ca07]
    or a
    call nz, Call_015_5015
    ld a, [$ca0f]
    or a
    call nz, Call_015_50b6
    pop hl
    ld c, l
    ret


Call_015_5015:
    ld hl, $ca0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $00c0
    add hl, de
    ld a, l
    ld [$ca0b], a
    ld a, h
    ld [$ca0c], a
    ld hl, $ca0d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0030
    add hl, de
    ld a, l
    ld [$ca0d], a
    ld a, h
    ld [$ca0e], a
    ld a, [$ca09]
    ld e, a
    ld a, [$ca0a]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca09], a
    ld a, h
    ld [$ca0a], a
    ld a, h
    cp $70
    jr nc, jr_015_5085

    ld a, [$ca0c]
    ld e, a
    ld a, [$ca07]
    bit 0, a
    jr z, jr_015_5069

    ld a, [$ca08]
    add e
    push af
    push bc
    call Call_015_5174
    pop bc
    pop af
    cp $90
    jr nc, jr_015_5081

jr_015_5069:
    ld a, [$ca07]
    bit 1, a
    ret z

    ld a, [$ca08]
    sub e
    push af
    push bc
    call Call_015_5174
    pop bc
    pop af
    cp $10
    ret nc

    ld l, $02
    jr jr_015_509c

jr_015_5081:
    ld l, $01
    jr jr_015_509c

jr_015_5085:
    ld a, [$ca05]
    dec a
    ld [$ca05], a
    or a
    jr nz, jr_015_5096

    ld a, [$ca06]
    inc a
    ld [$ca06], a

jr_015_5096:
    ld a, [$ca07]
    and $03
    ld l, a

jr_015_509c:
    ld a, l
    cpl
    ld b, a
    ld a, [$ca07]
    and b
    ld [$ca07], a
    ld a, [$ca0a]
    ld d, a
    ld a, [$ca0c]
    ld b, a
    ld a, [$ca08]
    ld e, a
    call Call_015_5157
    ret


Call_015_50b6:
    ld hl, $ca13
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0040
    add hl, de
    ld a, l
    ld [$ca13], a
    ld a, h
    ld [$ca14], a
    ld hl, $ca15
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0030
    add hl, de
    ld a, l
    ld [$ca15], a
    ld a, h
    ld [$ca16], a
    ld a, [$ca11]
    ld e, a
    ld a, [$ca12]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca11], a
    ld a, h
    ld [$ca12], a
    ld a, h
    cp $70
    jr nc, jr_015_5126

    ld a, [$ca14]
    ld e, a
    ld a, [$ca0f]
    bit 0, a
    jr z, jr_015_510a

    ld a, [$ca10]
    add e
    push af
    push bc
    call Call_015_5180
    pop bc
    pop af
    cp $90
    jr nc, jr_015_5122

jr_015_510a:
    ld a, [$ca0f]
    bit 1, a
    ret z

    ld a, [$ca10]
    sub e
    push af
    push bc
    call Call_015_5180
    pop bc
    pop af
    cp $10
    ret nc

    ld l, $02
    jr jr_015_513d

jr_015_5122:
    ld l, $01
    jr jr_015_513d

jr_015_5126:
    ld a, [$ca05]
    dec a
    ld [$ca05], a
    or a
    jr nz, jr_015_5137

    ld a, [$ca06]
    inc a
    ld [$ca06], a

jr_015_5137:
    ld a, [$ca0f]
    and $03
    ld l, a

jr_015_513d:
    ld a, l
    cpl
    ld b, a
    ld a, [$ca0f]
    and b
    ld [$ca0f], a
    ld a, [$ca12]
    ld d, a
    ld a, [$ca14]
    ld b, a
    ld a, [$ca10]
    ld e, a
    call Call_015_5157
    ret


Call_015_5157:
    rst $08
    rra
    bit 0, l
    jr z, jr_015_5169

    push hl
    push de
    push bc
    ld a, e
    add b
    ld e, a
    call Call_015_516f
    pop bc
    pop de
    pop hl

jr_015_5169:
    bit 1, l
    ret z

    ld a, e
    sub b
    ld e, a

Call_015_516f:
    ld a, $04
    jp Jump_000_01cb


Call_015_5174:
    ld b, a
    ld a, [$d76d]
    bit 0, a
    ret nz

    ld a, [$ca0a]
    jr jr_015_518a

Call_015_5180:
    ld b, a
    ld a, [$d76d]
    bit 0, a
    ret z

    ld a, [$ca12]

jr_015_518a:
    ld l, c
    push hl
    push de
    call Call_015_5197
    call Call_000_021f
    pop de
    pop hl
    ld c, l
    ret


Call_015_5197:
    ldh [$ffa6], a
    ld a, b
    ldh [$ffa4], a
    ld b, $a5
    ld a, $01
    ld [$cc46], a
    ld a, $40
    ld [$cc47], a
    ld a, $02
    ld [$c3e0], a
    ld a, $df
    ld [$c3e1], a
    ld a, $00
    ld [$c3e2], a
    ld a, $20
    ld [$d3ea], a
    ld de, $4cbe
    ret


Call_015_51c0:
    ld l, c
    push hl
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    call Call_000_019e
    ld a, $00
    ldh [$ffab], a
    xor a
    ld [$d3ea], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, [$ca07]
    and $03
    jr z, jr_015_51f0

    ld l, a
    ld a, [$ca0a]
    ld d, a
    ld a, [$ca0c]
    ld b, a
    ld a, [$ca08]
    ld e, a
    call Call_015_520a

jr_015_51f0:
    ld a, [$ca0f]
    and $03
    jr z, jr_015_5207

    ld l, a
    ld a, [$ca12]
    ld d, a
    ld a, [$ca14]
    ld b, a
    ld a, [$ca10]
    ld e, a
    call Call_015_520a

jr_015_5207:
    pop hl
    ld c, l
    ret


Call_015_520a:
    bit 0, l
    jr z, jr_015_521a

    push hl
    push de
    push bc
    ld a, e
    add b
    ld e, a
    call Call_015_5220
    pop bc
    pop de
    pop hl

jr_015_521a:
    bit 1, l
    ret z

jr_015_521d:
    ld a, e
    sub b
    ld e, a

Call_015_5220:
    ld a, e
    ldh [$ff9b], a
    ld a, d
    ldh [$ff9c], a
    ld bc, $5397
    jp Jump_000_02be


    ld l, b
    ld d, d
    ld [$ff02], sp
    ld l, b
    ld d, d
    ld [$ff00], sp
    ld l, b
    ld d, d
    ld [$0000], sp
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_015_5246:
    ld bc, $0101
    ld bc, $ff01
    ld l, b
    ld d, d
    ld [$ff03], sp
    ld l, b
    ld d, d
    inc b
    inc b
    inc bc
    inc bc
    rst $38
    ld l, b
    ld d, d
    ld [$ff05], sp
    ld l, b
    ld d, d
    ld [$0506], sp
    rst $38
    ld l, b
    ld d, d
    inc b
    rlca
    rst $38
    ld a, b
    ld d, d
    sbc l
    ld d, d
    add $52
    db $eb
    ld d, d
    db $10
    ld d, e
    dec l
    ld d, e
    ld h, d
    ld d, e
    sub e
    ld d, e
    ld hl, sp+$07
    db $f4
    ld [$f8f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$02f4], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$05f0], sp
    stop
    ld [$1006], sp
    nop
    rlca
    dec b
    jr nc, jr_015_521d

    ld hl, sp+$07
    db $f4
    ld [$f4f2], sp
    rlca
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld [$0af0], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ld [$0df0], sp
    stop
    ld [$1006], sp
    nop
    rlca
    dec c
    jr nc, jr_015_5246

    ld hl, sp+$07
    db $f4
    ld [$f4f2], sp
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f3], sp
    stop
    ld [$1012], sp
    ld [$13f8], sp
    stop
    ld [$1014], sp
    ld [$1500], sp
    db $10
    add b
    ld hl, sp+$07
    db $ec
    ld [$f4ea], sp
    ld d, $10
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$19f4], sp
    stop
    ld [$101a], sp
    ld [$1bf8], sp
    stop
    ld [$101c], sp
    ld [$1dfb], sp
    db $10
    add b
    ld hl, sp+$08
    db $f4
    add hl, bc
    ldh a, [c]
    db $f4
    ld d, $10
    nop
    ld [$1017], sp
    nop
    ld [$1018], sp
    ld [$1ef4], sp
    stop
    ld [$101f], sp
    ld [$20fc], sp
    db $10
    add b
    ld hl, sp+$07
    ldh [$ff08], a
    jp c, $21fa

    stop
    ld [$1022], sp
    ld [$23f8], sp
    stop
    ld [$1024], sp
    ld [$25f2], sp
    stop
    ld [$1026], sp
    nop
    ld [$1027], sp
    ld [$2bf5], sp
    stop
    ld [$102c], sp
    ld [$2df8], sp
    stop
    ld [$102e], sp
    ld [$1dfa], sp
    db $10
    add b
    ld hl, sp+$07
    add sp, $08
    ldh [c], a
    ld a, [$1021]
    nop
    ld [$1022], sp
    ld [$23f8], sp
    stop
    ld [$1024], sp
    ld [$25f2], sp
    stop
    ld [$1026], sp
    nop
    ld [$1027], sp
    ld [$28f0], sp
    stop
    ld [$1029], sp
    nop
    ld [$102a], sp
    ld [$20f8], sp
    db $10
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    cpl
    db $10
    add b
    db $f4
    inc b
    inc c
    inc b
    db $f4
    db $fc
    inc c
    db $fc
    ld h, b
    cp $ec
    inc de
    db $ec
    ld [$09f6], sp
    db $ec
    ld [$00ea], sp
    dec d
    nop
    db $fc
    inc b
    db $fc
    inc b
    rla
    ld [$1307], sp
    inc bc
    ld h, l
    rst $18
    nop

Jump_015_53be:
    ld a, b
    dec b
    jp z, Jump_015_5405

    dec b
    jr z, jr_015_53d0

    dec b
    jp z, Jump_015_5431

    dec b
    jr z, jr_015_53d3

    or a
    jr z, jr_015_53d9

jr_015_53d0:
    ld b, $00
    ret


jr_015_53d3:
    ld a, $43
    call Call_000_020a
    ret


jr_015_53d9:
    ld a, $0f
    ld [$de2e], a
    ld a, $01
    ld [$de2f], a
    ld a, $32
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld d, $f0
    call Call_015_4841
    call Call_000_025e
    call Call_015_4bb5
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ld de, $5631
    jp Jump_000_01dd


Jump_015_5405:
    ld a, [$deaf]
    or a
    jp nz, Jump_015_5431

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jp z, Jump_015_5447

    dec a
    jp z, Jump_015_548c

    dec a
    jp z, Jump_015_54e9

    dec a
    jp z, Jump_015_551e

    dec a
    jp z, Jump_015_5554

    ld a, b
    or a
    jr z, jr_015_5437

    dec a
    jr z, jr_015_5441

Jump_015_542e:
    call Call_000_025e

Jump_015_5431:
    call Call_015_4c2c
    ld b, $01
    ret


jr_015_5437:
    ld b, $07
    ld l, $05
    ld de, $53aa
    jp Jump_015_4c5a


jr_015_5441:
    ld de, $5618
    jp Jump_015_4c87


Jump_015_5447:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_015_5461

    ld a, $34
    add c
    ld l, a
    ld [hl], $00
    call Call_000_0168
    and $03
    inc a
    ld b, a
    ld a, $32
    add c
    ld l, a
    ld [hl], b

jr_015_5461:
    dec [hl]
    call Call_015_42c8
    call Call_000_0168
    and $01
    jr z, jr_015_5471

    ld de, $fac0
    jr jr_015_5474

jr_015_5471:
    ld de, $fb80

jr_015_5474:
    ld a, $34
    call Call_015_45e5
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $ed
    ld l, a
    ld [hl], $03
    add $1c
    ld l, a
    ld [hl], $00
    jp Jump_015_542e


Jump_015_548c:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    cp $08
    jr c, jr_015_54dc

    jr z, jr_015_54d0

    cp $10
    jr c, jr_015_54dc

    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_54ac

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    jp Jump_015_542e


jr_015_54ac:
    ld a, $17
    add c
    ld l, a
    ld [hl], $07
    add $1c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $2e
    jp c, Jump_015_542e

    ld [hl], $00
    call Call_015_4181
    call Call_015_42c8
    call Call_015_55d5
    ld a, $2a
    add c
    ld l, a
    ld [hl], $04
    jp Jump_015_542e


jr_015_54d0:
    call Call_015_55eb
    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    jp Jump_015_542e


jr_015_54dc:
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    add $1c
    ld l, a
    inc [hl]
    jp Jump_015_542e


Jump_015_54e9:
    ld de, $5610
    call Call_000_015f
    ld de, $53ae
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_54fd

    ld de, $53b0

jr_015_54fd:
    call Call_015_4849
    jr c, jr_015_5508

    call Call_015_41d1
    jp Jump_015_542e


jr_015_5508:
    call Call_015_42c8
    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    add $09
    ld l, a
    ld [hl], $00
    add $e4
    ld l, a
    ld [hl], $07
    jp Jump_015_542e


Jump_015_551e:
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    cp $3c
    jr nc, jr_015_552b

    inc [hl]
    jp Jump_015_542e


jr_015_552b:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $30
    jr c, jr_015_5541

    cp $70
    jr nc, jr_015_5541

    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    jp Jump_015_542e


jr_015_5541:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    add $09
    ld l, a
    ld [hl], $01
    inc l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jp Jump_015_542e


Jump_015_5554:
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_5561

    dec a
    jr z, jr_015_557d

    jr jr_015_5583

jr_015_5561:
    call Call_015_42c8
    ld a, $01
    ld [$ccc3], a
    ld a, $36
    add c
    ld l, a
    inc [hl]
    add $e1
    ld l, a
    ld [hl], $06
    ld l, c
    push hl
    call Call_015_5760
    pop hl
    ld c, l
    jp Jump_015_542e


jr_015_557d:
    call Call_015_5599
    jp Jump_015_542e


jr_015_5583:
    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $b4
    jp c, Jump_015_542e

    ld [hl], $00
    ld a, $2a
    add c
    ld l, a
    ld [hl], $02
    jp Jump_015_542e


Call_015_5599:
    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $08
    jr z, jr_015_55b7

    cp $10
    jr z, jr_015_55c5

    cp $5a
    ret nz

    ld a, $36
    add c
    ld l, a
    ld [hl], $02
    add $e1
    ld l, a
    ld [hl], $07
    jr jr_015_55c5

jr_015_55b7:
    ld d, $02
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_55d1

    ld d, $fe
    jr jr_015_55d1

jr_015_55c5:
    ld d, $ff
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_55d1

    ld d, $01

jr_015_55d1:
    call Call_015_4841
    ret


Call_015_55d5:
    ld de, $53a4
    call Call_015_4189
    ret


    ld a, $0d
    add c
    ld l, a
    ld a, [$c3ed]
    sub [hl]
    bit 7, a
    ret z

    xor $ff
    inc a
    ret


Call_015_55eb:
    call Call_015_420f
    ld de, $53a6
    call Call_015_427f
    bit 0, a
    push af
    call nz, Call_015_4179
    pop af
    bit 1, a
    ret z

    ld a, $33
    add c
    ld l, a
    ld [hl], $09
    ret


    ld sp, $0856
    dec b
    rst $38
    ld sp, $0856
    inc bc
    rlca
    rst $38
    ld sp, $0656
    nop
    ld bc, $0102
    rst $38
    ld sp, $0856
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc b
    inc b
    inc b
    rst $38
    ld sp, $1056
    ld b, $ff
    ld b, c
    ld d, [hl]
    ld h, a
    ld d, [hl]
    add a
    ld d, [hl]
    and a
    ld d, [hl]
    jp nc, $f056

    ld d, [hl]
    inc de
    ld d, a
    dec hl
    ld d, a
    ld hl, sp+$07
    db $ec
    ld [$ebf3], sp
    ld [hl-], a
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    inc b
    db $10
    ld bc, $100c
    ld [bc], a
    inc d
    db $10
    inc bc
    inc b
    jr jr_015_565e

    inc c
    jr @+$07

    inc d

jr_015_565e:
    jr jr_015_5666

    rst $38
    ld hl, sp+$54
    ld [$54f8], sp

jr_015_5666:
    add b
    ld hl, sp+$07
    db $ec
    ld [$f2f6], sp
    inc sp
    ld b, h
    ld b, l
    rlca
    ld [$0a09], sp
    rst $38
    dec bc
    inc c
    cp $f8
    ld b, c
    ld b, $f8
    ld b, d
    ld c, $f8
    ld b, e
    db $fd
    ldh a, [rHDMA4]
    ld b, $f0
    ld d, h
    add b
    ld hl, sp+$07
    db $ec
    ld [$ebf5], sp
    ld b, e
    ld b, [hl]
    ld b, a
    ld c, b
    rst $38
    ld c, c
    ld c, d
    dec c
    ld c, $0f
    db $10
    ld de, $0512
    jr jr_015_56b0

    dec c
    jr @+$16

    rst $38
    ld hl, sp+$54
    ld [$54f8], sp
    add b
    ld a, [$f20b]
    ld [$f7f4], sp
    ld b, d
    ld c, e
    ld c, h

jr_015_56b0:
    dec d
    ld d, $17
    jr jr_015_56ce

    ld a, [de]
    ld bc, $46f8
    add hl, bc
    ld hl, sp+$42
    ld de, $48f8
    nop
    db $10
    dec de
    ld [$1c10], sp
    rrca
    db $10
    sbc h
    rla
    db $10
    sbc e
    nop
    ldh a, [rHDMA4]

jr_015_56ce:
    add hl, bc
    ldh a, [rHDMA4]
    add b
    ld a, [$f20b]
    ld [$eff3], sp
    ld b, h
    inc a
    dec a
    ld a, $ff
    ccf
    ld b, b
    nop
    rst $38
    rla
    inc [hl]
    dec [hl]
    ld [hl], $1b
    scf
    jr c, @-$63

    rst $38
    ld hl, sp+$54
    ld [$54f8], sp
    add b
    ld a, [$ec0b]
    inc c
    rst $30
    ldh a, [c]
    inc sp
    ld b, h
    ld b, l
    rlca
    ld l, $2f
    ld a, [bc]
    jr nc, @+$33

    ld [hl-], a
    cp $f8
    ld b, c
    ld b, $f8
    ld b, d
    ld c, $f8
    ld b, e
    ld c, $18
    inc sp
    db $fd
    ldh a, [rHDMA4]
    ld b, $f0
    ld d, h
    add b
    ld a, [$f011]
    ld [$eaf4], sp
    ld b, h
    rst $38
    ld c, [hl]
    ld c, a
    ld d, b
    rst $38
    ld d, c
    ld d, d
    ld d, e
    ld h, $27
    jr z, jr_015_574f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    add b
    ld a, [$ec0b]
    ld [$f2f4], sp
    ld b, d
    dec e
    ld c, l
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc b
    ld hl, sp+$46
    inc c
    ld hl, sp+$42
    inc d
    ld hl, sp+$48
    inc b
    db $10
    inc h
    inc c
    db $10
    dec h
    inc de
    db $10
    and h
    inc bc
    ldh a, [rHDMA4]

jr_015_574f:
    inc c
    ldh a, [rHDMA4]
    add b
    jp $2757


    dec b
    nop
    jr nc, @+$5a

    nop
    ld bc, $0650
    dec d
    inc b

Call_015_5760:
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld de, $539c
    ld a, [$ccc3]
    cp $02
    jr z, jr_015_5772

    ld de, $53a0

jr_015_5772:
    ld a, $53
    ld [$cc00], a
    ld a, $57
    ld [$cc01], a
    call Call_015_438d
    jp c, Jump_015_57ca

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $43
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    ld a, $32
    add c
    ld l, a
    ld a, [$ccc3]
    ld [hl+], a
    xor a
    ld [hl], a
    ld [$ccc3], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_57af

    ld b, $05
    jr jr_015_57b1

jr_015_57af:
    ld b, $0d

jr_015_57b1:
    ld a, $1d
    add c
    ld l, a
    ld a, b
    ld de, $0280
    push hl
    push bc
    call Call_000_024c
    pop bc
    pop hl
    jp Jump_000_015c


    dec b
    jr z, jr_015_57cd

    dec b
    jp nz, Jump_015_581e

Jump_015_57ca:
jr_015_57ca:
    ld b, $00
    ret


jr_015_57cd:
    ld a, [$ccc2]
    or a
    jr nz, jr_015_57ca

    ld a, [$deaf]
    or a
    jp nz, Jump_015_581e

    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_015_57f3

    call Call_015_5821
    jr c, jr_015_5812

    ld a, $33
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    or a
    jr z, jr_015_5812

    jr jr_015_5818

jr_015_57f3:
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_015_5804

    call Call_015_41d1
    call Call_015_5821
    jr c, jr_015_5812

    jr jr_015_5818

jr_015_5804:
    ld de, $53b2
    call Call_015_427f
    bit 0, a
    jr nz, jr_015_5812

    bit 1, a
    jr z, jr_015_5818

jr_015_5812:
    ld a, $18
    add c
    ld l, a
    ld [hl], $00

jr_015_5818:
    ld de, $5828
    call Call_000_015f

Jump_015_581e:
    jp Jump_015_42e0


Call_015_5821:
    ld de, $53b2
    call Call_015_47d3
    ret


    jr nc, jr_015_5882

    inc b
    nop
    ld bc, $0302
    rst $38
    ld b, b
    ld e, b
    ld c, h
    ld e, b
    ld e, b
    ld e, b
    ld h, h
    ld e, b
    ld [hl], b
    ld e, b
    ld a, c
    ld e, b
    add d
    ld e, b
    adc e
    ld e, b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld [hl+], a
    nop
    ld bc, $0302
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld [hl+], a
    add c
    add b
    add e
    add d
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld [hl+], a
    jp $c1c2


    ret nz

    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld [hl+], a
    ld b, d
    ld b, e
    ld b, b
    ld b, c
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld de, $8004
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld de, $8084

jr_015_5882:
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld de, $80c4
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld de, $8044
    or $0a
    ldh a, [$ff08]
    nop
    ld a, [bc]
    db $f4
    nop
    inc c
    nop
    nop
    db $fd
    ret nz

    db $fd
    nop
    ei
    db $10
    db $10
    rlca
    inc d
    inc bc
    ld h, l
    rst $18
    nop

Jump_015_58ac:
    ld a, b
    dec b
    jr z, jr_015_58f2

    dec b
    jr z, jr_015_58bd

    dec b
    jp z, Jump_015_591d

    dec b
    jr z, jr_015_58c0

    or a
    jr z, jr_015_58c6

jr_015_58bd:
    ld b, $00
    ret


jr_015_58c0:
    ld a, $78
    call Call_000_020a
    ret


jr_015_58c6:
    ld a, $0f
    ld [$de2e], a
    ld a, $01
    ld [$de2f], a
    ld a, $32
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld d, $f0
    call Call_015_4841
    call Call_000_025e
    call Call_015_4bb5
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    call Call_000_015c
    ld de, $5bc3
    jp Jump_000_01dd


jr_015_58f2:
    ld a, [$deaf]
    or a
    jp nz, Jump_015_591d

    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    sub $02
    jr z, jr_015_5933

    dec a
    jp z, Jump_015_597b

    dec a
    jp z, Jump_015_59e9

    dec a
    jp z, Jump_015_5a3a

    dec a
    jp z, Jump_015_5aae

    ld a, b
    or a
    jr z, jr_015_5923

    dec a
    jr z, jr_015_592d

Jump_015_591a:
jr_015_591a:
    call Call_000_025e

Jump_015_591d:
    call Call_015_4c2c
    ld b, $01
    ret


jr_015_5923:
    ld b, $04
    ld l, $00
    ld de, $5894
    jp Jump_015_4c5a


jr_015_592d:
    ld de, $5b8c
    jp Jump_015_4c87


jr_015_5933:
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    cp $1e
    jr nc, jr_015_5945

    inc [hl]
    ld a, $17
    add c
    ld l, a
    ld [hl], $04
    jr jr_015_591a

jr_015_5945:
    ld de, $5ba5
    call Call_015_4551
    jr nc, jr_015_591a

    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    inc l
    call Call_000_0168
    and $01
    add $02
    ld [hl], a
    inc l
    push hl
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    pop hl
    ld [hl], a
    call Call_000_015c
    ld de, $589e
    call Call_015_41af
    ld a, $2a
    add c
    ld l, a
    ld [hl], $03
    add $ef
    ld l, a
    set 1, [hl]
    jr jr_015_591a

Jump_015_597b:
    ld de, $5bad
    call Call_000_015f
    call Call_015_420f
    call Call_015_41e3
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_015_59b5

    ld de, $5898
    call Call_015_4849
    jr nc, jr_015_591a

    ld de, $589e
    call Call_015_41af
    ld a, $33
    add c
    ld l, a
    ld a, [hl]
    or a
    dec [hl]
    jp nz, Jump_015_591a

    call Call_000_0168
    ld b, $04
    and $01
    jr z, jr_015_59c1

    ld a, $32
    add c
    ld l, a
    inc [hl]

jr_015_59b5:
    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jp nz, Jump_015_591a

    ld b, $14

jr_015_59c1:
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    sub b
    ld b, a
    ld [hl], $00
    ld a, $0f
    add c
    ld l, a
    ld [hl], b
    call Call_015_42c8
    ld de, $58a0
    call Call_015_4189
    call Call_015_4181
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    add $f8
    ld l, a
    ld [hl], $04
    jp Jump_015_591a


Jump_015_59e9:
    ld de, $5bad
    call Call_000_015f
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_015_5a09

    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0a
    jp c, Jump_015_591a

    ld [hl], $00
    ld a, $32
    add c
    ld l, a
    inc [hl]

jr_015_5a09:
    ld de, $589a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_015_5a16

    inc de
    inc de

jr_015_5a16:
    call Call_015_4849
    jr c, jr_015_5a21

    call Call_015_41d1
    jp Jump_015_591a


jr_015_5a21:
    call Call_000_015c
    call Call_015_4179
    ld a, $2a
    add c
    ld l, a
    ld [hl], $05
    add $ef
    ld l, a
    res 1, [hl]
    add $19
    ld l, a
    ld [hl], $00
    jp Jump_015_591a


Jump_015_5a3a:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_015_5a5e

    dec a
    jr z, jr_015_5a7e

    ld de, $5bb3
    call Call_015_4551
    jp nc, Jump_015_591a

    call Call_015_42c8
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    add $1b
    ld l, a
    inc [hl]
    jp Jump_015_591a


jr_015_5a5e:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    call Call_015_420f
    call Call_015_41e3
    ld de, $5898
    call Call_015_4849
    jp nc, Jump_015_591a

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    inc [hl]
    jp Jump_015_591a


jr_015_5a7e:
    ld de, $5b87
    call Call_015_4551
    jp nc, Jump_015_591a

    call Call_000_015c
    ld de, $58a2
    call Call_015_41af
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    inc l
    call Call_000_0168
    and $03
    add $02
    cp $05
    jr nz, jr_015_5aa4

    ld a, $03

jr_015_5aa4:
    ld [hl], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $06
    jp Jump_015_591a


Jump_015_5aae:
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_015_5aef

    ld de, $5bba
    call Call_015_4551
    call Call_015_42c8
    call Call_015_420f
    call Call_015_41e3
    ld a, $34
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $18
    jr nz, jr_015_5ad6

    ld l, c
    push hl
    call $5b2e
    pop hl
    ld c, l

jr_015_5ad6:
    ld de, $5898
    call Call_015_4849
    jp nc, Jump_015_591a

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    inc [hl]
    add $02
    ld l, a
    ld [hl], $00
    jp Jump_015_591a


jr_015_5aef:
    ld de, $5b87
    call Call_015_4551
    jp nc, Jump_015_591a

    call Call_000_015c
    ld a, $32
    add c
    ld l, a
    ld [hl], $00
    inc l
    dec [hl]
    ld a, [hl]
    jr z, jr_015_5b0f

    ld de, $58a2
    call Call_015_41af
    jp Jump_015_591a


jr_015_5b0f:
    ld a, $33
    add c
    ld l, a
    ld [hl], $00
    add $f7
    ld l, a
    ld [hl], $02
    jp Jump_015_591a


    ld e, a
    ld e, e
    ld bc, $0025
    db $f4
    ld e, h
    nop
    ld bc, $0342
    dec d
    inc b
    or $fa
    ld a, [bc]
    ld a, [$2a11]
    ld e, e
    ld a, $1d
    ld [$cc00], a
    ld a, $5b
    ld [$cc01], a
    call Call_015_438d
    ret c

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    ld a, $05
    add c
    ld l, a
    push hl
    push bc
    ld a, $78
    call Call_000_0207
    pop bc
    pop hl
    ld [hl], a
    call Call_000_024f
    ld de, $0280
    call Call_015_456b
    jp Jump_000_015c


    dec b
    jr z, jr_015_5b69

    dec b
    jp nz, Jump_015_5b7f

jr_015_5b66:
    ld b, $00
    ret


jr_015_5b69:
    ld a, [$ccc2]
    or a
    jr nz, jr_015_5b66

    ld a, [$deaf]
    or a
    jp nz, Jump_015_5b7f

    ld de, $5cee
    call Call_000_015f
    call Call_015_41f5

Jump_015_5b7f:
    jp Jump_015_42e0


    jp Jump_000_085b


    inc b
    rst $38
    jp Jump_000_085b


    inc bc
    rst $38
    jp Jump_000_045b


    inc bc
    inc bc
    inc b
    inc b
    dec b

jr_015_5b94:
    dec b
    dec b
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
    inc bc
    rst $38
    jp Jump_000_085b


    inc b
    ld b, $07
    ld [$c3ff], sp
    ld e, e
    inc b
    add hl, bc
    ld a, [bc]
    rst $38
    jp Jump_000_085b


    ld [$0607], sp
    rst $38
    jp Jump_000_085b


jr_015_5bbd:
    nop
    nop
    ld bc, $0002
    rst $38
    reti


    ld e, e
    push af
    ld e, e
    inc d
    ld e, h
    dec a
    ld e, h
    ld d, l
    ld e, h
    ld l, l
    ld e, h
    sub b
    ld e, h
    xor d
    ld e, h
    cp e
    ld e, h
    call z, $dd5c
    ld e, h
    or $06
    ld [$f008], a
    ldh [c], a
    ld b, l
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    rst $38
    inc c
    dec c
    rst $38
    rst $38
    ld c, $0f
    rst $38
    add b
    or $06
    ld [$f008], a
    ldh [c], a
    ld b, l
    rst $38
    ld bc, $ff02
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rst $38
    inc c
    dec c
    rst $38
    rst $38
    ld c, $0f
    rst $38

jr_015_5c10:
    jr @+$16

    jr jr_015_5b94

    or $06
    ld [$e008], a
    ldh [c], a
    ld h, l
    rst $38
    rst $38
    nop
    ld bc, $ff02
    add hl, de
    ld a, [de]
    inc b
    ld de, $1312
    rst $38
    rst $38
    rst $38

jr_015_5c2a:
    add hl, bc
    dec de

jr_015_5c2c:
    rla
    rst $38

jr_015_5c2e:
    rst $38
    rst $38

jr_015_5c30:
    inc c
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $0f
    rst $38
    jr z, @+$16

    jr jr_015_5bbd

    or $06
    ldh a, [$ff08]
    ldh a, [$ffee]
    ld b, h
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    inc e
    dec e
    ld e, $1f
    jr nz, jr_015_5c73

    and c
    and b
    add b
    or $06
    ldh a, [$ff08]
    ldh a, [$ffea]
    ld b, h
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$2322], sp
    dec bc
    inc h
    dec h
    ld h, $27
    add b
    ld a, [$f00a]
    ld [$eaf4], sp

jr_015_5c73:
    ld b, e
    rst $38
    ld bc, $ff02
    db $10
    ld de, $1312
    jr z, @+$17

    add hl, hl
    rla
    db $fd
    jr jr_015_5c2a

    dec b
    jr jr_015_5c2c

    dec c
    jr jr_015_5c2e

    dec d
    jr jr_015_5c30

    jr jr_015_5ca2

    jr jr_015_5c10

    ld hl, sp+$08
    ldh a, [$ff08]
    ldh a, [$ffee]
    ld b, e
    rst $38
    ld bc, $ff02
    db $10
    ld de, $1312
    ld a, [hl+]
    dec hl
    inc l

jr_015_5ca2:
    rla
    rlca
    jr jr_015_5cd3

    rrca
    jr jr_015_5cd7

    add b
    ld hl, sp+$08
    ldh a, [$ff08]
    push af
    ldh a, [c]
    inc sp
    cpl
    jr nc, jr_015_5ce5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    add b
    ld a, [$f208]
    ld [$f2f4], sp
    inc sp
    rst $38
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc [hl]
    rst $38
    inc a
    dec a
    add b
    or $0a
    or $08
    db $f4
    ldh a, [c]
    inc sp

jr_015_5cd3:
    ld a, $3f
    ld b, b
    ld b, c

jr_015_5cd7:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    add b
    or $0a
    db $f4
    ld [$f2f4], sp
    inc sp
    ld b, a

jr_015_5ce5:
    ld c, b
    ld c, c
    ld c, d
    jp nz, $4c4b

    ld c, l
    ld c, [hl]
    add b
    db $f4
    ld e, h
    inc b
    nop
    ld bc, $f8ff
    ld e, h
    inc b
    ld e, l
    ld a, [$fa06]
    ld b, $f8
    ld hl, sp+$22
    nop
    ld bc, $0302
    add b
    ld a, [$fa06]
    ld b, $f8
    ld hl, sp+$22
    inc b
    dec b
    ld b, $07
    add b
    ld b, b
    rst $38
    push af
    dec bc
    db $f4
    ld [$03fc], sp
    db $fc
    inc bc
    ld [hl+], a
    ld e, l
    ld h, $5d
    ld a, [hl+]
    ld e, l
    ld l, $5d
    ld hl, sp+$08
    db $f4
    cp $f8
    ld [$fef4], sp
    ld hl, sp+$08
    inc bc
    dec c
    ld hl, sp+$08
    inc bc
    dec c
    ld a, $5d
    ld b, b
    ld e, l
    ld b, d
    ld e, l
    ld b, h
    ld e, l
    ld b, [hl]
    ld e, l
    ld c, b
    ld e, l
    nop
    ld [$f900], sp
    nop
    cp $00
    inc bc
    nop
    stop
    di
    add hl, bc
    ld [bc], a
    nop
    ld [$0006], sp
    ret


    ld [$0907], sp
    ld b, $15
    ld b, a
    nop

Jump_015_5d58:
    ld a, b
    dec b
    jp z, Jump_015_5dd7

    dec b
    jr z, jr_015_5d69

    dec b
    jp z, Jump_015_5e65

    dec b
    ret z

    or a
    jr z, jr_015_5d9e

jr_015_5d69:
    ld b, $34
    call Call_000_01b3
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    inc hl
    ld a, [hl]
    ldh [$ff8b], a
    ld de, $6354
    ld b, $15
    call Call_000_02d6
    rst $08
    dec h
    ld a, $01
    ld [$c3e9], a
    ld a, $2b
    add c
    ld l, a
    set 7, [hl]
    add $ed
    ld l, a
    ld [hl], $01
    add $fb
    ld l, a
    set 7, [hl]
    add $17
    ld l, a
    ld [hl], $3c
    ret


jr_015_5d9e:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, c
    push hl
    ld hl, $c900
    ld bc, $0016
    xor a
    call Call_000_0174
    pop hl
    ld c, l
    ld b, $34
    ld a, $04
    call Call_000_01b0
    ld de, $5d12
    call Call_015_46f0
    ld d, $16
    call Call_015_4839
    call Call_000_015c
    ld de, $6382
    call Call_000_015f
    call Call_015_42c8
    ld de, $6397
    jp Jump_000_01dd


Jump_015_5dd7:
    ld a, [$deaf]
    or a
    jp nz, Jump_015_5e65

    ld a, $2b
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_015_5e18

    call Call_000_01e6
    jr nz, jr_015_5e0e

    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    and $03
    or a
    jr nz, jr_015_5e01

    ld a, [$c901]
    cp $04
    jr z, jr_015_5e11

    ld hl, $5d4a
    jr jr_015_5e0b

jr_015_5e01:
    ld a, [$c901]
    cp $02
    jr z, jr_015_5e11

    ld hl, $5d4d

jr_015_5e0b:
    call Call_015_6008

jr_015_5e0e:
    ld b, $01
    ret


jr_015_5e11:
    xor a
    ld [$c901], a
    ld b, $00
    ret


jr_015_5e18:
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_015_5e6e

    dec a
    jp z, Jump_015_5eda

    dec a
    jp z, Jump_015_5f22

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_015_5e3f

    ld [hl], $01
    ld a, $2a
    add c
    ld l, a
    ld [hl], $50
    ld b, $14
    call Call_015_5fb5
    jr jr_015_5e4d

jr_015_5e3f:
    call Call_015_5faa
    ld a, $2a
    add c
    ld l, a
    ld [hl], $b4
    ld b, $78
    call Call_015_5fb5

jr_015_5e4d:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc l
    ld a, [hl]
    dec a
    ld [$c904], a
    xor a
    ld [$c905], a

Jump_015_5e5f:
jr_015_5e5f:
    call Call_015_42c8
    call Call_015_612e

Jump_015_5e65:
    call Call_015_5fc2
    call Call_015_62e8
    jp Jump_015_42e0


jr_015_5e6e:
    call Call_015_6065
    ld a, [$c902]
    or a
    jr nz, jr_015_5e7d

    ld a, $36
    add c
    ld l, a
    ld [hl], $00

jr_015_5e7d:
    call Call_000_01e6
    jr nz, jr_015_5e5f

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr z, jr_015_5ea6

    ld de, $6382
    call Call_000_015f
    ld b, $00
    call Call_015_5f98
    jr nc, jr_015_5ec1

    ld a, [$d76d]
    bit 0, a
    jr nz, jr_015_5e5f

    ld d, $ff
    call Call_015_4839
    jr jr_015_5e5f

jr_015_5ea6:
    ld de, $6390
    call Call_000_015f
    ld b, $00
    call Call_015_5f98
    jr nc, jr_015_5ec1

    ld a, [$d76d]
    bit 0, a
    jr nz, jr_015_5e5f

    ld d, $01
    call Call_015_4839
    jr jr_015_5e5f

jr_015_5ec1:
    ld de, $5d10
    call Call_015_41af
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc l
    ld a, [hl]
    cp $02
    jr nz, jr_015_5e5f

    call Call_015_41bf
    jr jr_015_5e5f

Jump_015_5eda:
    ld de, $637b
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_015_5ee9

    ld de, $6389

jr_015_5ee9:
    call Call_000_015f
    call Call_015_41e3
    ld b, $02
    call Call_015_5f98
    jp nc, Jump_015_5e5f

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $3c
    ld b, $0a
    call Call_015_5fb5
    ld a, $02
    ld [$c905], a
    xor a
    ld [$c904], a
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $01
    jp nz, Jump_015_5e5f

    ld [$c904], a
    jp Jump_015_5e5f


Jump_015_5f22:
    call Call_015_6065
    ld a, [$c902]
    or a
    jr nz, jr_015_5f31

    ld a, $36
    add c
    ld l, a
    ld [hl], $00

jr_015_5f31:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr z, jr_015_5f65

    ld de, $6382
    call Call_000_015f
    call Call_000_01e6
    jp nz, Jump_015_5e5f

    ld b, $04
    call Call_015_5f98
    jr c, jr_015_5f5d

    ld a, [$d76d]
    bit 0, a
    jp nz, Jump_015_5e5f

    ld d, $ff
    call Call_015_4839
    jp Jump_015_5e5f


jr_015_5f5d:
    ld a, $2c
    add c
    ld l, a
    ld [hl], $02
    jr jr_015_5f8e

jr_015_5f65:
    ld de, $6390
    call Call_000_015f
    call Call_000_01e6
    jp nz, Jump_015_5e5f

    ld b, $04
    call Call_015_5f98
    jr c, jr_015_5f88

    ld a, [$d76d]
    bit 0, a
    jp nz, Jump_015_5e5f

    ld d, $01
    call Call_015_4839
    jp Jump_015_5e5f


jr_015_5f88:
    ld a, $2c
    add c
    ld l, a
    ld [hl], $01

jr_015_5f8e:
    dec l
    ld [hl], $00
    ld a, $2a
    add c
    ld l, a
    jp Jump_015_5e5f


Call_015_5f98:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    sub $01
    add b
    ld de, $5d32
    call Call_000_0171
    call Call_015_4849
    ret


Call_015_5faa:
    ld a, $0d
    add c
    ld l, a
    ld a, [$c3ef]
    sub $30
    ld [hl], a
    ret


Call_015_5fb5:
    ld a, $36
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], b
    xor a
    ld [$c903], a
    ret


Call_015_5fc2:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ld b, $00
    cp $03
    jr c, jr_015_5fdb

    ld b, $01
    cp $06
    jr c, jr_015_5fdb

    ld b, $02
    cp $09
    jr c, jr_015_5fdb

    ld b, $03

jr_015_5fdb:
    ld a, b
    ld de, $5d1a
    call Call_000_0171
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_015_5fed

    ld a, $20

jr_015_5fed:
    ld [$d3ea], a
    ld b, $65
    ld a, $02
    ld [$cc47], a
    ld a, $06
    ld [$c3e0], a
    ld a, $38
    add c
    ld l, a
    ld [hl], $01
    ld a, $38
    call Call_015_4528
    ret


Call_015_6008:
    ld a, [$c900]
    inc a
    ld [$c900], a
    cp $04
    ret nz

    xor a
    ld [$c900], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c901]
    add d
    ld d, a
    ld a, b
    push bc
    push de
    push hl
    call Call_015_4887
    pop hl
    pop de
    pop bc
    ld l, c
    push hl
    call Call_015_6040
    ld a, $04
    call Call_000_01cb
    rst $08
    rra
    pop hl
    ld c, l
    ld a, [$c901]
    inc a
    ld [$c901], a
    ret


Call_015_6040:
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld a, l
    ld hl, $d711
    sub [hl]
    add $08
    ld e, a
    ld a, d
    add a
    add a
    add a
    add a
    add $08
    ld d, a
    ret


    ld h, c
    ld h, b
    ld h, d
    ld h, b
    ld h, e
    ld h, b
    ld h, h
    ld h, b
    db $f4
    ld [de], a
    inc b
    ld [bc], a

Call_015_6065:
    ld a, [$c903]
    cp $02
    ret nc

    ld a, $37
    add c
    ld l, a
    call Call_000_01e9
    ret nz

    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    cp $02
    ret nc

    inc [hl]
    ld a, [$c902]
    and $01
    jr z, jr_015_60d6

    ld a, [$c906]
    or a
    jp nz, Jump_015_612d

    ld a, $03
    ld [$c906], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$c907], a
    ld a, [$c904]
    ld b, a
    ld a, [$c905]
    add b
    ld de, $6059
    call Call_000_0171
    ld a, [de]
    ld b, a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [$c909], a
    xor a
    ld [$c908], a
    ld [$c90a], a
    ld [$c90b], a
    ld a, $00
    ld [$c90c], a
    ld a, $fe
    ld [$c90d], a
    ld a, [$c904]
    or a
    jr z, jr_015_6126

    ld a, $40
    ld [$c90c], a
    ld a, $ff
    ld [$c90d], a
    jr jr_015_6126

jr_015_60d6:
    ld a, [$c90e]
    or a
    jr nz, jr_015_612d

    ld a, $03
    ld [$c90e], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ld [$c90f], a
    ld a, [$c904]
    ld b, a
    ld a, [$c905]
    add b
    ld de, $6059
    call Call_000_0171
    ld a, [de]
    ld b, a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add b
    ld [$c911], a
    xor a
    ld [$c910], a
    ld [$c912], a
    ld [$c913], a
    ld a, $00
    ld [$c914], a
    ld a, $fd
    ld [$c915], a
    ld a, [$c904]
    or a
    jr z, jr_015_6126

    ld a, $40
    ld [$c914], a
    ld a, $00
    ld [$c915], a

jr_015_6126:
    ld a, [$c902]
    inc a
    ld [$c902], a

Jump_015_612d:
jr_015_612d:
    ret


Call_015_612e:
    ld l, c
    push hl
    ld a, [$c906]
    or a
    call nz, Call_015_6141
    ld a, [$c90e]
    or a
    call nz, Call_015_61e0
    pop hl
    ld c, l
    ret


Call_015_6141:
    ld hl, $c90a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0100
    add hl, de
    ld a, l
    ld [$c90a], a
    ld a, h
    ld [$c90b], a
    ld hl, $c90c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0030
    add hl, de
    ld a, l
    ld [$c90c], a
    ld a, h
    ld [$c90d], a
    ld a, [$c908]
    ld e, a
    ld a, [$c909]
    ld d, a
    add hl, de
    ld a, l
    ld [$c908], a
    ld a, h
    ld [$c909], a
    ld a, h
    cp $60
    jr nc, jr_015_61af

    ld a, [$c90b]
    ld e, a
    ld a, [$c906]
    bit 0, a
    jr z, jr_015_6195

    ld a, [$c907]
    add e
    push af
    push bc
    call Call_015_629c
    pop bc
    pop af
    cp $90
    jr nc, jr_015_61ab

jr_015_6195:
    ld a, [$c906]
    bit 1, a
    ret z

    ld a, [$c907]
    sub e
    push af
    push bc
    call Call_015_629c
    pop bc
    pop af
    ret


    ld l, $02
    jr jr_015_61c6

jr_015_61ab:
    ld l, $01
    jr jr_015_61c6

jr_015_61af:
    ld a, [$c902]
    dec a
    ld [$c902], a
    or a
    jr nz, jr_015_61c0

    ld a, [$c903]
    inc a
    ld [$c903], a

jr_015_61c0:
    ld a, [$c906]
    and $03
    ld l, a

jr_015_61c6:
    ld a, l
    cpl
    ld b, a
    ld a, [$c906]
    and b
    ld [$c906], a
    ld a, [$c909]
    ld d, a
    ld a, [$c90b]
    ld b, a
    ld a, [$c907]
    ld e, a
    call Call_015_627f
    ret


Call_015_61e0:
    ld hl, $c912
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, l
    ld [$c912], a
    ld a, h
    ld [$c913], a
    ld hl, $c914
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0030
    add hl, de
    ld a, l
    ld [$c914], a
    ld a, h
    ld [$c915], a
    ld a, [$c910]
    ld e, a
    ld a, [$c911]
    ld d, a
    add hl, de
    ld a, l
    ld [$c910], a
    ld a, h
    ld [$c911], a
    ld a, h
    cp $60
    jr nc, jr_015_624e

    ld a, [$c913]
    ld e, a
    ld a, [$c90e]
    bit 0, a
    jr z, jr_015_6234

    ld a, [$c90f]
    add e
    push af
    push bc
    call Call_015_62a8
    pop bc
    pop af
    cp $90
    jr nc, jr_015_624a

jr_015_6234:
    ld a, [$c90e]
    bit 1, a
    ret z

    ld a, [$c90f]
    sub e
    push af
    push bc
    call Call_015_62a8
    pop bc
    pop af
    ret


    ld l, $02
    jr jr_015_6265

jr_015_624a:
    ld l, $01
    jr jr_015_6265

jr_015_624e:
    ld a, [$c902]
    dec a
    ld [$c902], a
    or a
    jr nz, jr_015_625f

    ld a, [$c903]
    inc a
    ld [$c903], a

jr_015_625f:
    ld a, [$c90e]
    and $03
    ld l, a

jr_015_6265:
    ld a, l
    cpl
    ld b, a
    ld a, [$c90e]
    and b
    ld [$c90e], a
    ld a, [$c911]
    ld d, a
    ld a, [$c913]
    ld b, a
    ld a, [$c90f]
    ld e, a
    call Call_015_627f
    ret


Call_015_627f:
    rst $08
    rra
    bit 0, l
    jr z, jr_015_6291

    push hl
    push de
    push bc
    ld a, e
    add b
    ld e, a
    call Call_015_6297
    pop bc
    pop de
    pop hl

jr_015_6291:
    bit 1, l
    ret z

    ld a, e
    sub b
    ld e, a

Call_015_6297:
    ld a, $04
    jp Jump_000_01cb


Call_015_629c:
    ld b, a
    ld a, [$d76d]
    bit 0, a
    ret nz

    ld a, [$c909]
    jr jr_015_62b2

Call_015_62a8:
    ld b, a
    ld a, [$d76d]
    bit 0, a
    ret z

    ld a, [$c911]

jr_015_62b2:
    ld l, c
    push hl
    push de
    call Call_015_62bf
    call Call_000_021f
    pop de
    pop hl
    ld c, l
    ret


Call_015_62bf:
    ldh [$ffa6], a
    ld a, b
    ldh [$ffa4], a
    ld b, $a5
    ld a, $01
    ld [$cc46], a
    ld a, $40
    ld [$cc47], a
    ld a, $02
    ld [$c3e0], a
    ld a, $df
    ld [$c3e1], a
    ld a, $00
    ld [$c3e2], a
    ld a, $20
    ld [$d3ea], a
    ld de, $5d16
    ret


Call_015_62e8:
    ld l, c
    push hl
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    call Call_000_019e
    ld a, $00
    ldh [$ffab], a
    xor a
    ld [$d3ea], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, [$c906]
    and $03
    jr z, jr_015_6318

    ld l, a
    ld a, [$c909]
    ld d, a
    ld a, [$c90b]
    ld b, a
    ld a, [$c907]
    ld e, a
    call Call_015_6332

jr_015_6318:
    ld a, [$c90e]
    and $03
    jr z, jr_015_632f

    ld l, a
    ld a, [$c911]
    ld d, a
    ld a, [$c913]
    ld b, a
    ld a, [$c90f]
    ld e, a
    call Call_015_6332

jr_015_632f:
    pop hl
    ld c, l
    ret


Call_015_6332:
    bit 0, l
    jr z, jr_015_6342

    push hl
    push de
    push bc
    ld a, e
    add b
    ld e, a
    call Call_015_6348
    pop bc
    pop de
    pop hl

jr_015_6342:
    bit 1, l
    ret z

    ld a, e
    sub b
    ld e, a

Call_015_6348:
    ld a, e
    ldh [$ff9b], a
    ld a, d
    ldh [$ff9c], a
    ld bc, $6559
    jp Jump_000_02be


    inc b
    rst $38
    add b
    nop
    ld c, $f8

jr_015_635a:
    nop
    nop
    ldh a, [rP1]
    ldh a, [c]
    ld hl, sp+$00
    ldh a, [c]
    ld [$0000], sp
    db $10
    inc b
    ld c, $08
    cp $97
    ld h, e
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    rst $38
    sub a
    ld h, e
    dec b
    nop
    ld bc, $ff02
    sub a
    ld h, e
    inc bc
    inc bc
    inc b
    dec b
    rst $38
    sub a
    ld h, e
    dec b
    ld b, $07
    ld [$97ff], sp
    ld h, e
    inc bc
    add hl, bc
    ld a, [bc]
    dec bc
    rst $38
    or c
    ld h, e
    jp c, $ff63

    ld h, e
    jr nz, jr_015_6403

    ld b, c
    ld h, h
    ld h, d
    ld h, h
    add e
    ld h, h
    xor h
    ld h, h
    pop de
    ld h, h
    ldh a, [c]
    ld h, h
    inc de
    ld h, l
    inc [hl]
    ld h, l
    ld d, l
    ld h, l
    push af
    dec bc
    inc b
    add hl, bc
    ldh a, [c]
    db $fc
    nop
    db $10
    ld [$01f8], sp
    stop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$0ff5], sp
    stop
    rlca
    rrca
    jr nc, jr_015_635a

    push af
    dec bc
    inc b
    add hl, bc
    ldh a, [c]
    db $fc
    rlca
    db $10
    ld [$08f8], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ld [$10f8], sp
    db $10
    add b
    push af
    dec bc
    inc b
    add hl, bc

jr_015_6403:
    ldh a, [c]
    db $fc
    dec bc
    db $10
    ld [$0cf8], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    add b
    push af
    dec bc
    inc b
    ld [$fcf2], sp
    nop
    db $10
    ld [$01f8], sp
    stop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    add b
    or $0c
    inc b
    ld [$fdf2], sp
    rlca
    db $10
    ld [$08f8], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    add b
    push af
    dec bc
    inc b
    ld [$fcf2], sp
    dec bc
    db $10
    ld [$0cf8], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    add b
    push af
    dec bc
    ld hl, sp-$03
    ld hl, sp-$0c
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$01f0], sp
    ld d, b
    nop
    ld [$5002], sp
    nop
    ld [$5003], sp
    ld [$00f8], sp
    ld d, b
    add sp, -$03
    rrca
    ld d, b
    nop
    rlca
    rrca
    ld [hl], b
    add b
    push af
    dec bc
    ld hl, sp-$03
    ld hl, sp-$0c
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$08f0], sp
    ld d, b
    nop
    ld [$5009], sp
    nop
    ld [$500a], sp
    ld [$07f8], sp
    ld d, b
    add sp, $00
    db $10
    ld d, b
    add b
    push af
    dec bc
    ld hl, sp-$03
    ld hl, sp-$0c
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$0cf0], sp
    ld d, b
    nop
    ld [$500d], sp
    nop
    ld [$500e], sp
    ld [$0bf8], sp
    ld d, b
    add b
    push af
    dec bc
    db $fc
    db $fd
    ld hl, sp-$0c
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$01f0], sp
    ld d, b
    nop
    ld [$5002], sp
    nop
    ld [$5003], sp
    ld [$00f8], sp
    ld d, b
    add b
    or $0c
    db $fc
    db $fd
    ld hl, sp-$0b
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$08f0], sp
    ld d, b
    nop
    ld [$5009], sp
    nop
    ld [$500a], sp
    ld [$07f8], sp
    ld d, b
    add b
    push af
    dec bc
    db $fc
    db $fd
    ld hl, sp-$0c
    inc b
    ld d, b
    nop
    ld [$5005], sp
    nop
    ld [$5006], sp
    ld [$0cf0], sp
    ld d, b
    nop
    ld [$500d], sp
    nop
    ld [$500e], sp
    ld [$0bf8], sp
    ld d, b
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld de, $8010
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
