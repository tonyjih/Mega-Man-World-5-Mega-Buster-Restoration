; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, @+$64

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$33

    ld b, h
    db $20, $c3
    dec d
    ld c, e
    jp Jump_01d_4e51


    jp Jump_01d_5236


    jp Jump_01d_5353


    jp Jump_01d_561e


    jp Jump_01d_5b28


    jp Jump_01d_5e63


    jp Jump_01d_62b2


    jp Jump_01d_6820


    jp Jump_01d_6b77


    jp Jump_01d_6e7c


    jp Jump_01d_7286


    jp Jump_01d_7729


    jp Jump_01d_78ea


    jp Jump_01d_7ae8


    jp Jump_01d_7d3e


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
    ld [hl], $e3
    inc l
    ld [hl], $40
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
    call Call_01d_416a
    ld a, $2f
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 2, a
    jr z, jr_01d_40c6

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

jr_01d_40c6:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [$cc2d]
    push af
    push hl
    call Call_01d_4114
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
    jr z, jr_01d_40ec

    dec b
    jr nz, jr_01d_4111

jr_01d_40e9:
    ld b, $00
    ret


jr_01d_40ec:
    ld a, [$ccc2]
    or a
    jr nz, jr_01d_40e9

    ld a, $32
    add c
    ld l, a
    ld a, [$deaf]
    and [hl]
    jr nz, jr_01d_4111

    ld a, $2f
    add c
    ld l, a
    bit 1, [hl]
    push hl
    call nz, Call_01d_4233
    pop hl
    bit 0, [hl]
    call nz, Call_01d_4219
    call Call_01d_4114
    jr c, jr_01d_40e9

jr_01d_4111:
    jp Jump_01d_4304


Call_01d_4114:
    ld a, $2b
    add c
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [hl]
    or a
    jr nz, jr_01d_4125

    call Call_000_015f
    or a
    ret


jr_01d_4125:
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


Call_01d_4148:
    call Call_01d_4233
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


Call_01d_4165:
    push de
    call Call_01d_42ec
    pop de

Call_01d_416a:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_01d_418c

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
    jr nz, jr_01d_4182

    inc a

jr_01d_4182:
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


Jump_01d_418c:
    ld a, $1d
    add c
    ld l, a
    jp Jump_000_017a


Call_01d_4193:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01d_419d:
    ld a, $1d
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01d_41a5:
    ld a, $1f
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01d_41ad:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_01d_41c9

    ld a, [de]
    cpl
    ld l, a
    inc de
    ld a, [de]
    cpl
    inc l
    jr nz, jr_01d_41bf

    inc a

jr_01d_41bf:
    ld d, a
    ld e, l
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


jr_01d_41c9:
    ld a, $1d
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_01d_41d3:
    ld a, $1f
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_01d_41dd:
    ld a, $1d
    add c
    ld l, a
    jr jr_01d_41e7

Call_01d_41e3:
    ld a, $1f
    add c
    ld l, a

jr_01d_41e7:
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc e
    jr nz, jr_01d_41f1

    inc d

jr_01d_41f1:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_01d_41f5:
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


Call_01d_4207:
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


Call_01d_4219:
Jump_01d_4219:
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


Call_01d_4233:
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
    jr nz, jr_01d_424e

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_01d_424e

    ld de, $0350

jr_01d_424e:
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
    jr nz, jr_01d_4288

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_01d_4273

    xor a

jr_01d_4273:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_01d_4288

    ld a, [de]
    add b
    cp $d0
    jr c, jr_01d_4281

    xor a

jr_01d_4281:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_01d_4288:
    or a
    ret


    push de
    call Call_01d_4233
    pop de
    call Call_01d_42a3
    ret z

    bit 0, a
    jr z, jr_01d_429b

    ld a, $1d
    jr jr_01d_429d

jr_01d_429b:
    ld a, $1f

jr_01d_429d:
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01d_42a3:
Jump_01d_42a3:
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


Call_01d_42ec:
    ld d, $00
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $c0
    jr nc, jr_01d_42fd

    ld a, [$c3ed]
    cp [hl]
    jr c, jr_01d_42fe

jr_01d_42fd:
    inc d

jr_01d_42fe:
    ld a, $24
    add c
    ld l, a
    ld [hl], d
    ret


Call_01d_4304:
Jump_01d_4304:
    call Call_000_025e
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $f0
    jr nc, jr_01d_4314

    cp $90
    jr nc, jr_01d_4329

jr_01d_4314:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $e0
    jr nc, jr_01d_4321

    cp $c0
    jr nc, jr_01d_4329

jr_01d_4321:
    ld a, $01
    ld [$cc44], a
    ld b, a
    or a
    ret


jr_01d_4329:
    xor a
    ld b, a
    ret


    ld a, [$c3ef]
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $30
    cp b
    jr nc, jr_01d_4346

    ldh a, [$ff8b]
    ld l, a
    ld a, b
    add d
    ld e, a
    cp l
    jr c, jr_01d_4358

    ld e, l
    jr jr_01d_4358

jr_01d_4346:
    ldh a, [$ff8a]
    ld l, a
    ld a, b
    sub d
    ld e, a
    bit 7, a
    jr z, jr_01d_4354

    ld e, $00
    jr jr_01d_4358

jr_01d_4354:
    cp l
    jr nc, jr_01d_4358

    ld e, l

jr_01d_4358:
    ld a, e
    sub $30
    ret


Call_01d_435c:
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


Call_01d_4385:
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
    jr c, jr_01d_43fb

    cp $e8
    jr nc, jr_01d_43fb

    dec e

jr_01d_43fb:
    ld a, b
    add c
    ld l, a
    ld a, e
    ld [hl], a
    or a
    ret


Call_01d_4402:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $fc
    ret nc

    cp $e0
    jr c, jr_01d_4412

    ld b, $00
    scf
    ret


jr_01d_4412:
    ld b, $01
    cp $a4
    ccf
    ret


Call_01d_4418:
    ld e, b
    push de
    call Call_01d_4402
    pop de
    ret nc

    ld a, e
    xor b
    and $01
    ret nz

    scf
    ret


Call_01d_4426:
    ld a, [$d88c]
    cp $0a
    jp nz, Jump_01d_42a3

    ld a, $1e
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_01d_443a

    ld b, $01
    jr jr_01d_443c

jr_01d_443a:
    ld b, $00

jr_01d_443c:
    push de
    call Call_01d_4418
    pop de
    jp nc, Jump_01d_42a3

    ld a, $01
    ldh [$ffa9], a
    or a
    scf
    ret


Call_01d_444b:
    push bc
    call Call_01d_4459
    pop bc
    ld a, $00
    adc a
    ld e, a
    ld a, c
    add b
    ld l, a
    ld [hl], e
    ret


Call_01d_4459:
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
    jr nz, jr_01d_449a

    ldh a, [$ff8a]
    ld b, a
    dec de
    ld a, [de]
    dec de
    add b
    cp $d0
    jr c, jr_01d_4485

    xor a

jr_01d_4485:
    ld l, a
    ld a, [$d742]
    cp l
    jr nc, jr_01d_449a

    ld a, [de]
    add b
    cp $d0
    jr c, jr_01d_4493

    xor a

jr_01d_4493:
    ld l, a
    ld a, [$d743]
    cp l
    ccf
    ret


jr_01d_449a:
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
    call Call_01d_4518
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d744]
    ld d, a
    call Call_01d_4518
    ret c

    ld a, [$d742]
    ld e, a
    ld a, [$d745]
    ld d, a
    call Call_01d_4518
    ret c

    ld a, [$d743]
    ld e, a
    ld a, [$d745]
    ld d, a

Call_01d_4518:
    ldh a, [$ff8a]
    add e
    ld e, a
    ldh a, [$ff8b]
    add d
    ld d, a
    jp Jump_000_0165


Call_01d_4523:
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


Call_01d_4534:
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


Call_01d_455d:
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


Call_01d_4577:
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


jr_01d_4584:
    push de
    call Call_01d_4938
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
    jr z, jr_01d_4584

    ret


    ld b, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_01d_45b4

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_01d_45b4

    ld b, $20

jr_01d_45b4:
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


Call_01d_45f1:
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
    jr nc, jr_01d_4616

    cpl
    inc a
    scf

jr_01d_4616:
    push af
    ld l, c
    push hl
    ld h, a
    ld l, $00
    call Call_01d_463d
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


Call_01d_463d:
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld hl, $0000
    ld a, $10

jr_01d_4646:
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
    jr nc, jr_01d_465a

    add hl, bc
    jr jr_01d_465b

jr_01d_465a:
    inc de

jr_01d_465b:
    pop af
    dec a
    jr nz, jr_01d_4646

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
    jr jr_01d_4685

Call_01d_4683:
    ld l, $01

jr_01d_4685:
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
    jr nz, jr_01d_46a6

    inc de

jr_01d_46a6:
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
    jr z, jr_01d_46b5

    ld e, b

jr_01d_46b5:
    ld a, d
    call Call_000_0165
    pop hl
    ld c, l
    ret


Call_01d_46bc:
    xor a
    jr jr_01d_46c1

Call_01d_46bf:
    ld a, $ff

jr_01d_46c1:
    ld l, $01
    jr jr_01d_46cc

Call_01d_46c5:
    xor a
    jr jr_01d_46ca

Call_01d_46c8:
    ld a, $01

jr_01d_46ca:
    ld l, $00

jr_01d_46cc:
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
    jr nz, jr_01d_46e9

    inc de

jr_01d_46e9:
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


Call_01d_46fc:
    push de
    call Call_01d_46c8
    pop de
    jr c, jr_01d_4711

jr_01d_4703:
    ld a, $0f
    add c
    ld l, a
    inc [hl]
    push de
    call Call_01d_46c8
    pop de
    jr nc, jr_01d_4703

    or a
    ret


Call_01d_4711:
jr_01d_4711:
    push de
    call Call_01d_46c5
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    dec [hl]
    jr jr_01d_4711

Call_01d_471e:
    push de
    call Call_01d_46bf
    pop de
    jr c, jr_01d_4733

jr_01d_4725:
    ld a, $0f
    add c
    ld l, a
    dec [hl]
    push de
    call Call_01d_46bf
    pop de
    jr nc, jr_01d_4725

    or a
    ret


jr_01d_4733:
    push de
    call Call_01d_46bc
    pop de
    ret nc

    ld a, $0f
    add c
    ld l, a
    inc [hl]
    jr jr_01d_4733

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

jr_01d_4758:
    push de
    call Call_01d_42a3
    pop de
    ret z

    ld a, $20
    add c
    ld l, a
    dec [hl]
    ret z

    jr jr_01d_4758

Call_01d_4766:
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


Call_01d_4780:
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


    push hl
    call Call_01d_47fb
    pop hl
    ret nc

    ret z

    push af
    ldh a, [$ff9b]
    ld e, a
    ld d, l
    call Call_000_026d
    pop af
    ret


Call_01d_47f0:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ff9c], a

Call_01d_47fb:
    ldh a, [$ff9b]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d747]
    cp b
    jr c, jr_01d_483b

    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d746]
    cp b
    jr nc, jr_01d_483b

    inc de
    ldh a, [$ff9c]
    ld l, a
    ld a, [de]
    add l
    add $30
    ld b, a
    ld a, [$d749]
    cp b
    jr nc, jr_01d_482b

    inc a
    cp b
    jr nz, jr_01d_483b

    xor a
    scf
    ret


jr_01d_482b:
    inc de
    ld a, [de]
    add l
    add $31
    ld b, a
    ld a, [$d748]
    cp b
    jr nc, jr_01d_483b

    xor a
    inc a
    scf
    ret


jr_01d_483b:
    or a
    ret


    ld a, $06
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_01d_484d

    ld d, $08
    call Call_01d_485e
    call Call_000_025e

jr_01d_484d:
    ld a, $06
    add c
    ld l, a
    bit 0, [hl]
    ret z

    ld d, $08

Call_01d_4856:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_01d_485e:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_01d_4866:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    sla a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
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


Jump_01d_488b:
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
    jr jr_01d_48b3

    ld a, $1e
    add c
    ld l, a

jr_01d_48b3:
    ld a, [hl-]
    bit 7, a
    jr nz, jr_01d_48c1

    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    ret c

    ld [hl], d
    dec l
    ld [hl], e
    ret


jr_01d_48c1:
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_01d_48cb

    inc d

jr_01d_48cb:
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

jr_01d_48d8:
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
    jr nz, jr_01d_48d8

    ret


    call Call_000_019e
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_01d_4902:
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
    jr jr_01d_4902

    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_01d_4938:
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
    jr z, jr_01d_494d

    dec [hl]
    xor a
    sub $01
    ret


jr_01d_494d:
    inc l

jr_01d_494e:
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
    jr nz, jr_01d_4963

    ldh [$ff8c], a
    ld l, b
    ld [hl], $01
    xor a
    ret


jr_01d_4963:
    cp $ff
    jr nz, jr_01d_4973

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_01d_494e

jr_01d_4973:
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


    call Call_01d_4938
    jr z, jr_01d_4998

    jr c, jr_01d_4996

    ldh a, [$ff8a]
    ld l, a
    ldh a, [$ff8b]
    ld h, a
    or l
    call nz, Call_01d_499a

jr_01d_4996:
    or a
    ret


jr_01d_4998:
    scf
    ret


Call_01d_499a:
    jp hl


Call_01d_499b:
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


Call_01d_49b3:
jr_01d_49b3:
    ld a, [$cca8]
    and $07
    jr nz, jr_01d_49b3

    ret


jr_01d_49bb:
    ld a, [$cca8]
    and $07
    jp z, Jump_000_01c5

    call Call_000_01c5
    jr jr_01d_49bb

    ld b, $00
    ld e, b
    ld d, b
    ld c, $01
    call Call_01d_499b
    call Call_01d_49b3
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


Call_01d_49f8:
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
    jr c, jr_01d_4a20

    dec hl
    ld b, [hl]
    jr jr_01d_4a6e

jr_01d_4a20:
    ld [hl], $00
    inc hl
    ld a, e
    ldh [$ff8e], a
    ld a, d
    ldh [$ff8f], a

jr_01d_4a29:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    cp $cd
    jr nz, jr_01d_4a4f

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
    call Call_01d_49f8
    pop bc
    pop hl

jr_01d_4a47:
    ldh a, [$ff8e]
    ld e, a
    ldh a, [$ff8f]
    ld d, a
    jr jr_01d_4a29

jr_01d_4a4f:
    cp $fe
    jr c, jr_01d_4a67

    ld a, $01
    ldh [$ff8b], a
    jr z, jr_01d_4a5d

    ld [hl], $00
    jr jr_01d_4a47

jr_01d_4a5d:
    ld a, $01
    ldh [$ff8a], a
    dec hl
    dec hl
    ld b, [hl]
    scf
    jr jr_01d_4a6f

jr_01d_4a67:
    inc [hl]
    ld a, $01
    ldh [$ff8d], a
    dec hl
    dec hl

jr_01d_4a6e:
    or a

jr_01d_4a6f:
    ld [hl], b
    ret


    ld a, [$ce53]
    ld e, a
    ld a, [$ce54]
    ld d, a
    ld a, b
    jp Jump_000_0171


Call_01d_4a7d:
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01d_4a82:
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
    call Call_01d_4ab3
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
    jp Jump_01d_4219


Call_01d_4ab3:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    inc [hl]
    ld a, e
    or a
    jr z, jr_01d_4ac1

    dec a
    cp [hl]
    jr nc, jr_01d_4ae9

jr_01d_4ac1:
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
    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_01d_4ae9

    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_01d_4ae9

    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_01d_4ae9:
    pop bc
    pop hl
    ld a, [hl]
    ret


    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
    nop
    nop
    db $fd
    ldh a, [rP1]
    ld a, [$f608]
    dec b
    ld a, [$f20a]
    rrca
    ld hl, sp+$09
    ld a, [$ee08]
    add hl, bc
    ld hl, sp+$07
    ld a, [$cb08]
    ld [$1807], sp
    inc bc
    dec h
    ld b, a
    nop
    ld a, b
    dec b
    jr z, jr_01d_4b43

    dec b
    jr z, jr_01d_4b25

    dec b
    jp z, Jump_01d_4c01

    dec b
    ret z

    or a
    jr z, jr_01d_4b28

jr_01d_4b25:
    ld b, $00
    ret


jr_01d_4b28:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_000_015c
    call Call_01d_42ec
    ld de, $4b01
    call Call_01d_46fc
    ld de, $4d6b
    jp Jump_000_01dd


jr_01d_4b43:
    ld de, $4b01
    call Call_01d_4766
    jp c, Jump_01d_4304

    ld a, [$deaf]
    or a
    jp nz, Jump_01d_4bf2

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_01d_4c04

    dec a
    jp z, Jump_01d_4c3b

    dec a
    jp z, Jump_01d_4c8b

    ld de, $4d57
    call Call_000_015f
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $4b05
    call Call_01d_4683
    jr nc, jr_01d_4b9a

    ld de, $4aed
    call Call_01d_416a
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_4b95

    ld de, $4b01
    push de
    call Call_01d_42a3
    pop de
    jr z, jr_01d_4ba2

    bit 1, a
    jr nz, jr_01d_4ba2

    jr jr_01d_4b9a

jr_01d_4b95:
    call Call_01d_41f5
    jr jr_01d_4ba2

jr_01d_4b9a:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_01d_4ba2:
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $15
    jr nc, jr_01d_4bf2

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld d, $f9
    jr z, jr_01d_4bb7

    ld d, $07

jr_01d_4bb7:
    call Call_01d_485e
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $14
    add $ef
    ld l, a
    set 1, [hl]
    add $01
    ld l, a
    ld [hl], $01
    ld de, $4b09
    call Call_01d_46fc
    call Call_01d_435c
    call Call_000_015c
    call Call_01d_42ec
    ld de, $4d65
    call Call_000_015f
    ld de, $4af5
    push de
    call Call_01d_41ad
    pop de
    inc de
    inc de
    call Call_01d_41d3
    jr jr_01d_4c01

Jump_01d_4bf2:
jr_01d_4bf2:
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nc, jr_01d_4c01

    ld de, $4af9
    call Call_01d_4cb1

Jump_01d_4c01:
jr_01d_4c01:
    jp Jump_01d_4304


Jump_01d_4c04:
    call Call_01d_4d4d
    bit 1, a
    jr z, jr_01d_4c39

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $05
    jr nc, jr_01d_4c21

    inc [hl]
    call Call_01d_41e3
    ld a, $1f
    add c
    ld l, a
    call Call_01d_4d10
    jr jr_01d_4c36

jr_01d_4c21:
    call Call_000_01e6
    jr nz, jr_01d_4c39

    ld a, $2a
    add c
    ld l, a
    ld [hl], $20
    add $01
    ld l, a
    inc [hl]
    inc l
    ld [hl], $00
    call Call_000_015c

jr_01d_4c36:
    call Call_01d_4d00

Jump_01d_4c39:
jr_01d_4c39:
    jr jr_01d_4c01

Jump_01d_4c3b:
    call Call_000_01e6
    jr nz, jr_01d_4c50

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $03
    add $ff
    ld l, a
    ld [hl], $f0
    jr jr_01d_4c8b

jr_01d_4c50:
    ld de, $4d5d
    call Call_000_015f
    call Call_01d_4ce3

jr_01d_4c59:
    ld de, $4b09
    call Call_01d_42a3
    jr z, jr_01d_4c86

    bit 1, a
    jr nz, jr_01d_4c81

    ld de, $4b09
    call Call_01d_46c8
    jr nc, jr_01d_4c7b

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_01d_41dd
    jp Jump_01d_4c39


jr_01d_4c7b:
    call Call_01d_419d
    jp Jump_01d_4c39


jr_01d_4c81:
    call Call_01d_41a5
    jr jr_01d_4c39

jr_01d_4c86:
    call Call_01d_4d3d
    jr jr_01d_4c39

Jump_01d_4c8b:
jr_01d_4c8b:
    ld de, $4d65
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_4c59

    ld a, $18
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    set 6, [hl]
    jr jr_01d_4c39

    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_000_01f2
    ld b, $00
    ret


Call_01d_4cb1:
    ld a, [$de9b]
    cp $0a
    jr nz, jr_01d_4cbd

    ld a, [$d783]
    or a
    ret nz

jr_01d_4cbd:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_01d_4cc8

    ld a, $20

jr_01d_4cc8:
    ld [$d3ea], a
    ld b, $25
    ld a, $02
    ld [$cc47], a
    ld a, $03
    ld [$c3e0], a
    ld a, $36
    add c
    ld l, a
    ld [hl], $01
    ld a, $36
    call Call_01d_4534
    ret


Call_01d_4ce3:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld de, $fff0
    jr z, jr_01d_4cf1

    ld de, $0010

jr_01d_4cf1:
    ld a, $1d
    add c
    ld l, a
    ld a, $00
    ldh [$ff8b], a
    ld a, $02
    ldh [$ff8c], a
    jp Jump_01d_488b


Call_01d_4d00:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld de, $ffe0
    jr z, jr_01d_4cf1

    ld de, $0020
    jr jr_01d_4cf1

Call_01d_4d10:
    ld e, [hl]
    inc l
    ld d, [hl]
    sra d
    rr e
    sra d
    rr e
    dec l
    ld a, [hl]
    sub e
    ld e, a
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld d, a
    ld [hl-], a
    bit 7, a
    jr z, jr_01d_4d31

    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    jr nz, jr_01d_4d31

    inc d

jr_01d_4d31:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $10
    ret nc

    xor a
    ld [hl+], a
    ld [hl], a
    scf
    ret


Call_01d_4d3d:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl+]
    add $30
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_01d_4d4d:
    call Call_01d_4233
    ld de, $4b09
    call Call_01d_42a3
    ret


    ld l, e
    ld c, l
    ld b, $00
    ld bc, $6bff
    ld c, l
    inc b
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    ld l, e
    ld c, l
    inc b
    ld [bc], a
    inc bc
    rst $38
    ld [hl], a
    ld c, l
    xor b
    ld c, l
    reti


    ld c, l
    ldh a, [c]
    ld c, l
    dec bc
    ld c, [hl]
    inc h
    ld c, [hl]
    ld hl, sp+$05
    db $eb
    ld [$f8eb], sp
    nop
    stop
    ld [$1001], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    ld [$0a00], sp
    stop
    ld hl, sp+$09
    stop
    ld hl, sp+$08
    db $10
    add b
    ld hl, sp+$05
    ld [$ea08], a
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$0400], sp
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$0b
    db $10
    ld [$0c00], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    ld [$1100], sp
    stop
    ld hl, sp+$10
    stop
    ld hl, sp+$0f
    db $10
    add b
    ld hl, sp+$02
    ld hl, sp+$08
    ldh a, [c]
    ld hl, sp+$12
    db $10
    ld [$1408], sp
    stop
    ld hl, sp+$13
    db $10
    ld [$1500], sp
    stop
    ld [$1016], sp
    add b
    ld hl, sp+$02
    ld hl, sp+$08
    ldh a, [c]
    ld hl, sp+$12
    db $10
    ld [$1808], sp
    stop
    ld hl, sp+$17
    db $10
    ld [$1900], sp
    stop
    ld [$101a], sp
    add b
    ld hl, sp+$02
    ld hl, sp+$08
    ldh a, [c]
    ld hl, sp+$12
    db $10
    ld [$1b08], sp
    stop
    ld hl, sp+$17
    db $10
    ld [$1900], sp
    stop
    ld [$101c], sp
    add b
    ld hl, sp+$02
    ld hl, sp+$08
    ldh a, [c]
    ld hl, sp+$12
    db $10
    ld [$1808], sp
    stop
    ld hl, sp+$17
    db $10
    ld [$1900], sp
    stop
    ld [$101d], sp
    add b
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    push af
    dec bc
    ldh a, [c]
    ld c, $cd
    ld [$0600], sp
    ld b, $25
    ld b, a
    nop

Jump_01d_4e51:
    ld a, b
    dec b
    jr z, jr_01d_4e95

    dec b
    jr z, jr_01d_4e61

    dec b
    jp z, Jump_01d_4eea

    dec b
    ret z

    or a
    jr z, jr_01d_4e69

Jump_01d_4e61:
jr_01d_4e61:
    ld b, $34
    call Call_000_01b3
    ld b, $00
    ret


jr_01d_4e69:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    call Call_01d_42ec
    call Call_000_015c
    ld de, $4e45
    call Call_01d_46fc
    ld de, $4e3d
    call Call_01d_4faf
    ld a, $31
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld b, $34
    ld a, $04
    call Call_000_01b0
    ld de, $50ce
    jp Jump_000_01dd


jr_01d_4e95:
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_01d_4ea5

    push hl
    push bc
    call Call_01d_4fba
    pop bc
    pop hl

jr_01d_4ea5:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_4eea

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_4ef3

    dec a
    jr z, jr_01d_4f18

    dec a
    jp z, Jump_01d_4f55

    ld de, $5098
    call Call_01d_455d
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    cp $01
    jr nz, jr_01d_4eea

    call Call_01d_4233
    call Call_01d_4207
    ld a, $20
    add c
    ld l, a
    ld a, [hl]
    bit 7, a
    jr z, jr_01d_4eda

    jr jr_01d_4eea

jr_01d_4eda:
    call Call_000_015c
    ld de, $4e41
    call Call_01d_4faf
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    jr jr_01d_4eea

Jump_01d_4eea:
jr_01d_4eea:
    call Call_01d_4304
    ld a, b
    or a
    ret nz

    jp Jump_01d_4e61


jr_01d_4ef3:
    ld de, $509f
    call Call_01d_455d
    call Call_01d_4233
    ld de, $4e45
    call Call_01d_42a3
    bit 1, a
    jr nz, jr_01d_4f0e

    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    jr jr_01d_4eea

jr_01d_4f0e:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    jr jr_01d_4eea

jr_01d_4f18:
    ld de, $50a6
    call Call_01d_455d
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    cp $b0
    jr nc, jr_01d_4f52

    push hl
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    sub $08
    pop hl
    cp [hl]
    jr nc, jr_01d_4f52

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $06
    ld l, a
    res 0, [hl]
    add $e6
    ld l, a
    ld [hl], $03
    add $02
    ld l, a
    set 1, [hl]
    add $11
    ld l, a
    ld [hl], $28
    jp Jump_01d_4eea


jr_01d_4f52:
    jp Jump_01d_4eea


Jump_01d_4f55:
    ld de, $50ae
    call Call_01d_455d
    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_4f92

    call Call_000_01e6
    jr nz, jr_01d_4f7f

    call Call_01d_5053
    ld a, $32
    add c
    ld l, a
    set 0, [hl]
    add $e7
    ld l, a
    res 1, [hl]
    add $11
    ld l, a
    ld [hl], $78
    jp Jump_01d_4eea


jr_01d_4f7f:
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $0b
    jp nc, Jump_01d_4eea

    ld a, $17
    add c
    ld l, a
    ld [hl], $05
    jp Jump_01d_4eea


jr_01d_4f92:
    call Call_000_01e6
    jp nz, Jump_01d_4eea

    call Call_000_015c
    ld de, $4e3d
    call Call_01d_4faf
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $07
    ld l, a
    res 0, [hl]
    jp Jump_01d_4eea


Call_01d_4faf:
    push de
    call Call_01d_41ad
    pop de
    inc de
    inc de
    call Call_01d_41d3
    ret


Call_01d_4fba:
    ld a, $31
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_4fdc

    ld a, $31
    add c
    ld l, a
    set 0, [hl]
    add $fc
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $2e
    add c
    ld l, a
    ld [hl], $e0
    jr jr_01d_4fdc

    ld b, $00
    ret


jr_01d_4fdc:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_4fe5

    call Call_01d_501f

jr_01d_4fe5:
    call Call_01d_4feb
    jp Jump_01d_4304


Call_01d_4feb:
    ld l, c
    push hl
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ld a, $00
    ldh [$ffab], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    add a
    swap a
    ld [$d3ea], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $34
    add c
    ld l, a
    ld a, [hl]
    ld bc, $521d
    call Call_000_0210
    pop hl
    ld c, l
    ret


Call_01d_501f:
    call Call_01d_5034
    ld a, $2d
    add c
    ld l, a
    ld a, $2f
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
    ret


Call_01d_5034:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl+]
    add $30
    ld e, a
    ld a, $00
    adc [hl]
    ld d, a
    bit 7, a
    jr nz, jr_01d_504f

    ld a, $50
    sub e
    ld a, $03
    sbc d
    jr nc, jr_01d_504f

    ld de, $0350

jr_01d_504f:
    ld [hl], d
    dec l
    ld [hl], e
    ret


Call_01d_5053:
    ld b, $01

jr_01d_5055:
    push hl
    push bc
    ld de, $00c0
    call Call_01d_506f
    pop bc
    pop hl
    inc b
    inc b
    ld a, b
    cp $09
    jr z, jr_01d_506b

    cp $10
    jr c, jr_01d_5055

    ret


jr_01d_506b:
    inc b
    inc b
    jr jr_01d_5055

Call_01d_506f:
    ld a, b
    dec a
    ldh [$ff8a], a
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    add $13
    ld b, a
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld a, [hl]
    sub $09
    ld d, a
    ld l, $03
    ldh a, [$ff8a]
    call Call_000_0159
    ret


    adc $50
    ld a, [bc]
    nop
    ld [bc], a
    ld bc, $ceff
    ld d, b
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    adc $50
    ld a, [bc]
    ld [bc], a
    nop
    nop
    nop
    rst $38
    adc $50
    ld a, [bc]
    inc bc
    inc b
    dec b
    nop
    rst $38
    adc $50
    ld [$ff06], sp
    adc $50
    ld [$ff07], sp
    adc $50
    ld a, [bc]
    nop
    ld [bc], a
    ld bc, $0200
    nop
    inc bc
    inc b
    dec b
    nop
    rst $38
    sbc $50
    dec bc
    ld d, c
    jr c, @+$53

    ld h, l
    ld d, c
    sbc [hl]
    ld d, c
    rst $10
    ld d, c
    db $10
    ld d, d
    add hl, de
    ld d, d
    push af
    dec bc
    ldh a, [c]
    rrca
    ldh a, [c]
    db $f4
    nop
    stop
    db $10
    ld bc, $0810
    nop
    inc b
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    ld [$08fc], sp
    jr nc, jr_01d_5107

jr_01d_5107:
    ld hl, sp+$08
    db $10
    add b
    push af
    dec bc
    ldh a, [rIF]
    ldh a, [$fff4]
    nop
    stop
    db $10
    ld bc, $0810
    nop
    inc b
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    ld [$09fc], sp
    jr nc, jr_01d_5134

jr_01d_5134:
    ld hl, sp+$09
    db $10
    add b
    push af
    dec bc
    db $f4
    rrca
    db $f4
    db $f4
    nop
    stop
    db $10
    ld bc, $0810
    nop
    inc b
    stop
    ld hl, sp+$03
    stop
    ld hl, sp+$02
    db $10
    ld [$0500], sp
    stop
    ld [$1006], sp
    nop
    ld [$1007], sp
    ld [$0afc], sp
    jr nc, jr_01d_5161

jr_01d_5161:
    ld hl, sp+$0a
    db $10
    add b
    push af
    dec bc
    ldh a, [rIF]
    db $ec
    ld hl, sp+$0b
    stop
    ld [$100c], sp
    ld [$0f04], sp
    stop
    ld hl, sp+$0e
    stop
    ld hl, sp+$0d
    db $10
    ld [$1000], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$05
    db $10
    ld [$0a04], sp
    stop
    ld [$300a], sp
    add b
    push af
    dec bc
    ldh a, [rIF]
    db $ec
    ld hl, sp+$0b
    stop
    ld [$100c], sp
    ld [$0f04], sp
    stop
    ld hl, sp+$0e
    stop
    ld hl, sp+$0d
    db $10
    ld [$1100], sp
    stop
    ld [$1012], sp
    nop
    ld [$1004], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$05
    db $10
    ld [$0a04], sp
    stop
    ld [$300a], sp
    add b
    push af
    dec bc
    ldh a, [rIF]
    db $ec
    ld hl, sp+$18
    stop
    ld [$1019], sp
    ld [$0f04], sp
    stop
    ld hl, sp+$1b
    stop
    ld hl, sp+$1a
    db $10
    ld [$1100], sp
    stop
    ld [$1012], sp
    nop
    ld [$1004], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$05
    db $10
    ld [$0a04], sp
    stop
    ld [$300a], sp
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld d, $10
    nop
    ld [$1017], sp
    ld [$1700], sp
    ld d, b
    nop
    ld hl, sp+$16
    ld d, b
    add b
    call nz, Call_000_0708
    ld bc, $2504
    ld b, a
    nop

Jump_01d_5236:
    ld a, b
    dec b
    jr z, jr_01d_5264

    dec b
    jr z, jr_01d_5245

    dec b
    jr z, jr_01d_5288

    dec b
    ret z

    or a
    jr z, jr_01d_5248

jr_01d_5245:
    ld b, $00
    ret


jr_01d_5248:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    ld [hl], $00
    inc l
    xor a
    call Call_01d_4a7d
    call Call_000_015c
    call Call_01d_42ec
    ld de, $52fe
    jp Jump_000_01dd


Call_01d_5264:
jr_01d_5264:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_5288

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_528b

    ld de, $52f7
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_5288

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld [hl], $78

jr_01d_5288:
    jp Jump_01d_4304


jr_01d_528b:
    ld de, $52f7
    call Call_000_015f
    ld de, $00d0
    ld a, $2c
    add c
    ld l, a
    ld b, $59
    call Call_01d_4a82
    call Call_000_01e6
    jr nz, jr_01d_52ab

    call Call_01d_52b7
    ld a, $2a
    add c
    ld l, a
    ld [hl], $78

jr_01d_52ab:
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_5288

    call Call_01d_42ec
    jr jr_01d_5288

Call_01d_52b7:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    inc b
    call Call_01d_52c9
    dec b
    dec b
    ld a, b
    or a
    jr nz, jr_01d_52c9

    ld b, $10

Call_01d_52c9:
jr_01d_52c9:
    push hl
    push bc
    ld de, $00c0
    call Call_01d_52d4
    pop bc
    pop hl
    ret


Call_01d_52d4:
    ld a, b
    dec a
    ldh [$ff8a], a
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld b, $15
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld a, [hl]
    add $04
    ld d, a
    ld l, $02
    ldh a, [$ff8a]
    call Call_000_0159
    ret


    cp $52
    ld [$0100], sp
    ld [bc], a
    rst $38
    inc b
    ld d, e
    add hl, de
    ld d, e
    ld l, $53
    ld hl, sp+$03
    ld sp, hl
    dec b
    rst $30
    push af
    nop
    stop
    ld [$1001], sp
    ld [$0303], sp
    stop
    ld hl, sp+$02
    db $10
    add b
    ld hl, sp+$03
    ld a, [$f806]
    ld hl, sp+$04
    stop
    ld [$1005], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    db $10
    add b
    ld hl, sp+$03
    ei
    rlca
    ld sp, hl
    ld hl, sp+$08
    stop
    ld [$1009], sp
    ld [$0b00], sp
    stop
    ld hl, sp+$0a
    db $10
    add b
    jr nz, @+$01

    add b
    cp $03
    di
    db $fd
    di
    rrc b
    rlca
    add hl, bc
    inc b
    dec h
    ld b, a
    nop

Jump_01d_5353:
    ld a, b
    dec b
    jr z, jr_01d_537f

    dec b
    jr z, jr_01d_5363

    dec b
    jp z, Jump_01d_53ad

    dec b
    ret z

    or a
    jr z, jr_01d_5366

jr_01d_5363:
    ld b, $00
    ret


jr_01d_5366:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $50
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_01d_42ec
    ld de, $54f1
    jp Jump_000_01dd


jr_01d_537f:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_53ad

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_53b0

    dec a
    jr z, jr_01d_53c9

    ld de, $54e0
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_53aa

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    ld a, [$cc96]
    or a
    jr z, jr_01d_53aa

    inc [hl]

jr_01d_53aa:
    call Call_01d_42ec

Jump_01d_53ad:
jr_01d_53ad:
    jp Jump_01d_4304


jr_01d_53b0:
    ld de, $54e9
    call Call_01d_455d
    jr nc, jr_01d_53aa

    ld l, c
    push hl
    call $545e
    pop hl
    ld c, l
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    jr jr_01d_53aa

jr_01d_53c9:
    ld de, $54e0
    call Call_000_015f
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_53fc

    inc l
    inc [hl]
    ld a, [hl]
    cp $50
    jr z, jr_01d_53f7

    cp $a0
    jr z, jr_01d_53f7

    cp $f0
    jr z, jr_01d_53f7

    jr c, jr_01d_53aa

    ld a, $2a
    add c
    ld l, a
    ld [hl], $f0
    add $02
    ld l, a
    inc [hl]
    inc l
    ld [hl], $00
    jr jr_01d_53aa

jr_01d_53f7:
    call Call_01d_541a
    jr jr_01d_53aa

jr_01d_53fc:
    call Call_000_01e6
    jr nz, jr_01d_5408

    ld a, $2c
    add c
    ld l, a
    dec [hl]
    jr jr_01d_53aa

jr_01d_5408:
    ld a, [$cc96]
    or a
    jr nz, jr_01d_53aa

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    inc l
    dec [hl]
    jr jr_01d_53aa

Call_01d_541a:
    ld l, c
    push hl
    ld a, $80
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld a, $24
    add c
    ld l, a
    ld b, [hl]
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add $f9
    bit 0, b
    jr z, jr_01d_5438

    sub $f2

jr_01d_5438:
    ld e, a
    inc l
    inc l
    ld a, [hl]
    add $06
    ld d, a
    ld l, $02
    ld a, $0c
    bit 0, b
    jr z, jr_01d_5449

    ld a, $04

jr_01d_5449:
    ld b, $15
    call Call_000_0159
    pop hl
    ld c, l
    ret


    sub d
    ld d, h
    ld b, a
    dec h
    nop
    pop af
    ld d, h
    nop
    ld bc, $0400
    dec e
    call nz, Call_01d_4711
    ld d, e
    ld a, $51
    ld [$cc00], a
    ld a, $54
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $14
    add $01
    ld l, a
    ld [hl], $00
    inc l
    xor a
    call Call_01d_4a7d
    ld a, [$cc96]
    inc a
    ld [$cc96], a
    call Call_01d_42ec
    ld de, $5343
    call Call_01d_416a
    jp Jump_000_015c


    dec b
    jr z, jr_01d_54a2

    dec b
    jr nz, jr_01d_54c9

jr_01d_5498:
    ld a, [$cc96]
    dec a
    ld [$cc96], a
    ld b, $00
    ret


jr_01d_54a2:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_54c9

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_54d1

    ld de, $54d9
    call Call_000_015f
    call Call_01d_4219
    call Call_000_01e6
    jr nz, jr_01d_54c9

    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld [hl], $78

jr_01d_54c9:
    call Call_01d_4304
    ld a, b
    or a
    ret nz

    jr jr_01d_5498

jr_01d_54d1:
    call Call_01d_5264
    ld a, b
    or a
    ret nz

    jr jr_01d_5498

    pop af
    ld d, h
    ld [$0100], sp
    ld [bc], a
    rst $38
    pop af
    ld d, h
    ld [$0303], sp
    inc bc
    inc bc
    inc b
    rst $38
    pop af
    ld d, h
    ld [$0504], sp
    dec b
    ld b, $ff
    rst $38
    ld d, h
    inc d
    ld d, l
    add hl, hl
    ld d, l
    ld a, $55
    ld h, a
    ld d, l
    sub b
    ld d, l
    cp c
    ld d, l
    ld hl, sp+$03
    ld sp, hl
    dec b
    rst $30
    push af
    nop
    stop
    ld [$1001], sp
    ld [$0303], sp
    stop
    ld hl, sp+$02
    db $10
    add b
    ld hl, sp+$03
    ld a, [$f806]
    ld hl, sp+$04
    stop
    ld [$1005], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    db $10
    add b
    ld hl, sp+$03
    ei
    rlca
    ld sp, hl
    ld hl, sp+$08
    stop
    ld [$1009], sp
    ld [$0b00], sp
    stop
    ld hl, sp+$0a
    db $10
    add b
    db $f4
    add hl, bc
    ld sp, hl
    add hl, bc
    ldh a, [c]
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$1300], sp
    stop
    ld hl, sp+$12
    stop
    ld hl, sp+$11
    db $10
    ld [$1400], sp
    stop
    ld [$1015], sp
    nop
    ld [$1016], sp
    add b
    db $f4
    add hl, bc
    ld sp, hl
    add hl, bc
    ldh a, [c]
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$1300], sp
    stop
    ld hl, sp+$18
    stop
    ld hl, sp+$17
    db $10
    ld [$1400], sp
    stop
    ld [$1015], sp
    nop
    ld [$1016], sp
    add b
    db $f4
    add hl, bc
    ei
    add hl, bc
    db $f4
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld b, $00
    dec de
    stop
    ld hl, sp+$1a
    stop
    ld hl, sp+$19
    db $10
    ld [$1c00], sp
    stop
    ld [$101d], sp
    nop
    ld [$101e], sp
    add b
    db $f4
    add hl, bc
    ld sp, hl
    add hl, bc
    ld [$00f5], a
    stop
    ld [$1001], sp
    ld [$2107], sp
    stop
    ld hl, sp+$20
    stop
    ld hl, sp+$1f
    db $10
    ld [$1100], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$1600], sp
    stop
    ld hl, sp+$15
    stop
    ld hl, sp+$14
    db $10
    add b
    add b
    cp $00
    nop
    nop
    cp $00
    db $fc
    nop
    db $fd
    nop
    db $fd
    add b
    db $fd
    nop
    nop
    ld b, b
    cp $00
    nop
    nop
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    or $fd
    ld a, [bc]
    db $fd
    rst $30
    db $fd
    add hl, bc
    db $fd
    db $fd
    cp $03
    cp $f7
    dec bc
    di
    ld [$08c9], sp
    rlca
    ld [bc], a
    inc b
    dec b
    ld b, a
    nop

Jump_01d_561e:
    ld a, b
    dec b
    jr z, jr_01d_5659

    dec b
    jr z, jr_01d_562e

    dec b
    jp z, Jump_01d_56c5

    dec b
    ret z

    or a
    jr z, jr_01d_5631

jr_01d_562e:
    ld b, $00
    ret


jr_01d_5631:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    call Call_000_015c
    call Call_01d_42ec
    ld de, $5612
    call Call_01d_46fc
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $03
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    ld de, $5991
    jp Jump_000_01dd


jr_01d_5659:
    ld a, [$deaf]
    or a
    jp nz, Jump_01d_56c5

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_56c8

    dec a
    jp z, Jump_01d_5704

    dec a
    jp z, Jump_01d_579e

    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_56a5

    ld de, $5970
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    call Call_01d_4523
    cp $30
    jr c, jr_01d_56b2

    call Call_000_01e6
    jr nz, jr_01d_56c5

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $02
    ld l, a
    set 0, [hl]
    add $fd
    ld l, a
    ld [hl], $0c
    jr jr_01d_56c5

jr_01d_56a5:
    ld de, $5969
    call Call_000_015f
    call Call_01d_4523
    cp $30
    jr nc, jr_01d_56c5

jr_01d_56b2:
    call Call_01d_42ec
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc [hl]
    add $02
    ld l, a
    set 1, [hl]
    add $fd
    ld l, a
    ld [hl], $30

Jump_01d_56c5:
jr_01d_56c5:
    jp Jump_01d_4304


jr_01d_56c8:
    ld de, $5970
    call Call_01d_455d
    call Call_000_01e6
    jr nz, jr_01d_56f9

    ld l, c
    push hl
    call $57cb
    pop hl
    ld c, l
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 1, a
    jr nz, jr_01d_56ed

    ld a, $2b
    add c
    ld l, a
    dec [hl]
    jr jr_01d_56c5

jr_01d_56ed:
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $30
    jr jr_01d_573e

jr_01d_56f9:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 1, a
    jr nz, jr_01d_573e

    jr jr_01d_56c5

Jump_01d_5704:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_5738

    ld de, $5970
    call Call_000_015f
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    call Call_01d_4523
    cp $30
    jr c, jr_01d_573e

    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    call Call_01d_42ec
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $ff
    ld l, a
    ld [hl], $0c
    jr jr_01d_573e

jr_01d_5738:
    ld de, $5969
    call Call_000_015f

Jump_01d_573e:
jr_01d_573e:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $5612
    call Call_01d_4683
    jr nc, jr_01d_576c

    ld de, $55ea
    call Call_01d_416a
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_5767

    ld de, $5612
    call Call_01d_42a3
    jr z, jr_01d_5774

    bit 1, a
    jr nz, jr_01d_5774

    jr jr_01d_576c

jr_01d_5767:
    call Call_01d_41f5
    jr jr_01d_5774

jr_01d_576c:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_01d_5774:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jp z, Jump_01d_56c5

    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jp nz, Jump_01d_56c5

    call Call_000_01e6
    jp nz, Jump_01d_56c5

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $03
    ld l, a
    set 0, [hl]
    jp Jump_01d_56c5


Jump_01d_579e:
    ld de, $5978
    call Call_01d_455d
    jr nc, jr_01d_573e

    call Call_01d_5893
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $03
    ld l, a
    res 0, [hl]
    add $fc
    ld l, a
    ld [hl], $30
    jp Jump_01d_573e


    db $eb
    ld d, a
    ld b, a
    add l
    nop
    sub c
    ld e, c
    dec bc
    ld bc, $0300
    dec e
    call nz, Call_000_0611
    ld d, [hl]
    ld a, $be
    ld [$cc00], a
    ld a, $57
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld a, $2f
    add c
    ld l, a
    ld [hl], $00
    ld de, $55ee
    call Call_01d_416a
    jp Jump_000_015c


    dec b
    jr z, jr_01d_57f4

    dec b
    jr nz, jr_01d_5811

    ld b, $00
    ret


jr_01d_57f4:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_5811

    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $10
    jr nc, jr_01d_5814

    ld de, $5987
    call Call_000_015f

jr_01d_580b:
    call Call_01d_4233
    call Call_01d_4219

jr_01d_5811:
    jp Jump_01d_4304


jr_01d_5814:
    cp $18
    jr nz, jr_01d_581d

    push af
    call Call_01d_5832
    pop af

jr_01d_581d:
    jr nc, jr_01d_5827

    ld de, $598c
    call Call_000_015f
    jr jr_01d_580b

jr_01d_5827:
    ld de, $597f
    call Call_01d_455d
    jr nc, jr_01d_5811

    ld b, $00
    ret


Call_01d_5832:
    push hl
    push bc
    ld a, $0e
    ld [$d881], a
    ld a, $56
    ld [$d882], a
    ld a, $f6
    ld [$d883], a
    ld a, $55
    ld [$d884], a
    call Call_01d_58af
    ld a, $0e
    ld [$d881], a
    ld a, $56
    ld [$d882], a
    ld a, $fa
    ld [$d883], a
    ld a, $55
    ld [$d884], a
    call Call_01d_58af
    ld a, $0e
    ld [$d881], a
    ld a, $56
    ld [$d882], a
    ld a, $fe
    ld [$d883], a
    ld a, $55
    ld [$d884], a
    call Call_01d_58af
    ld a, $0e
    ld [$d881], a
    ld a, $56
    ld [$d882], a
    ld a, $02
    ld [$d883], a
    ld a, $56
    ld [$d884], a
    call Call_01d_58af
    pop bc
    pop hl
    ret


Call_01d_5893:
    push hl
    push bc
    ld a, $0a
    ld [$d881], a
    ld a, $56
    ld [$d882], a
    ld a, $f2
    ld [$d883], a
    ld a, $55
    ld [$d884], a
    call Call_01d_58af
    pop bc
    pop hl
    ret


Call_01d_58af:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    add $15
    ld l, a
    ld b, [hl]
    push hl
    ld hl, $d881
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    add d
    ld d, a
    pop hl
    ld b, $00
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    and $01
    ld [$cc95], a
    ld a, $24
    ld [$cc00], a
    ld a, $59
    ld [$cc01], a
    call Call_01d_4780
    ret c

    call Call_01d_5944
    ld hl, $d883
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$cc95]
    or a
    jr z, jr_01d_5906

    call Call_000_016b

jr_01d_5906:
    push bc
    ld a, [$cc42]
    ld c, a
    ld a, [$cc43]
    ld h, a
    ld a, $1d
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ret


    ld sp, $0759
    add l
    db $10
    ld e, h
    ld e, c
    nop
    ld bc, $020c
    dec e
    ld bc, $0578
    jr z, jr_01d_594b

    dec b
    jr z, jr_01d_5941

    dec b
    jp z, Jump_01d_5959

    dec b
    ret z

    or a
    jr z, jr_01d_5944

jr_01d_5941:
    ld b, $00
    ret


Call_01d_5944:
jr_01d_5944:
    ld a, $05
    add c
    ld l, a
    ld [hl], $15
    ret


jr_01d_594b:
    ld a, [$deaf]
    or a
    jp nz, Jump_01d_5959

    call Call_01d_4148
    xor a
    call Call_000_01e0

Jump_01d_5959:
    jp Jump_01d_4304


    ld h, b
    ld e, c
    ld h, b
    ld e, c
    db $fd
    inc bc
    cp $02
    db $fc
    db $fc
    ld de, $8000
    sub c
    ld e, c
    inc b
    nop
    ld bc, $ff02
    sub c
    ld e, c
    inc b
    inc bc
    inc b
    dec b
    ld b, $ff
    sub c
    ld e, c
    inc b
    nop
    ld bc, $ff06
    sub c
    ld e, c
    inc bc
    rlca
    ld [$0a09], sp
    rst $38
    sub c
    ld e, c
    ld a, [bc]
    dec bc
    rst $38
    sub c
    ld e, c
    ld a, [bc]
    inc c
    rst $38
    xor e
    ld e, c
    call z, $ed59
    ld e, c
    ld c, $5a
    scf
    ld e, d
    ld h, b
    ld e, d
    adc c
    ld e, d
    and [hl]
    ld e, d
    xor a
    ld e, d
    call nz, $d95a
    ld e, d
    xor $5a
    inc bc
    ld e, e
    db $f4
    ld a, [bc]
    ld sp, hl
    ld [$f4f2], sp
    nop
    db $10
    ld [$0100], sp
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
    db $f4
    ld a, [bc]
    ld sp, hl
    ld [$f4f2], sp
    nop
    db $10
    ld [$0100], sp
    stop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    add b
    db $f4
    ld a, [bc]
    ld sp, hl
    ld [$f4f2], sp
    nop
    db $10
    ld [$0100], sp
    stop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$0af0], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    add b
    xor $0a
    ldh a, [c]
    ld [$ecfa], sp
    ld [de], a
    stop
    ld [$1013], sp
    nop
    ld [$1002], sp
    nop
    ld [$1003], sp
    ld [$04f0], sp
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    ldh a, [$ffea]
    ld c, $10
    nop
    ld [$100f], sp
    add b
    rst $28
    ld a, [bc]
    di
    ld [$fcfa], sp
    rla
    stop
    ld [$1003], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    pop af
    db $eb
    ld c, $10
    nop
    ld [$1014], sp
    ld [$15f8], sp
    stop
    ld [$1016], sp
    add b
    ldh a, [$ff0a]
    db $f4
    ld [$fcfa], sp
    rla
    stop
    ld [$1003], sp
    ld [$0af0], sp
    stop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ldh a, [c]
    db $ec
    ld c, $10
    nop
    ld [$100f], sp
    ld [$18f8], sp
    stop
    ld [$1019], sp
    add b
    db $f4
    ld a, [bc]
    ld a, [$fa08]
    db $f4
    dec c
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
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld e, $10
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rra
    stop
    ld [$7020], sp
    ld [$20f8], sp
    stop
    ld [$701f], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld hl, $0010
    ld [$3021], sp
    ld [$21f8], sp
    ld d, b
    nop
    ld [$7021], sp
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [hl+], a
    stop
    ld [$3022], sp
    ld [$22f8], sp
    ld d, b
    nop
    ld [$7022], sp
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld c, $10
    nop
    ld [$100f], sp
    ld [$10f8], sp
    stop
    ld [$1011], sp
    add b
    ld hl, sp+$07
    ld a, [$f805]
    ld hl, sp+$1a
    stop
    ld [$101b], sp
    ld [$1cf8], sp
    stop
    ld [$101d], sp
    add b
    nop
    cp $80
    nop
    ld sp, hl
    rlca
    db $fc
    rlca
    jp z, Jump_000_0708

    inc bc
    inc bc
    dec b
    rlca
    nop

Jump_01d_5b28:
    ld a, b
    dec b
    jr z, jr_01d_5b4e

    dec b
    jr z, jr_01d_5b37

    dec b
    jr z, jr_01d_5b9b

    dec b
    ret z

    or a
    jr z, jr_01d_5b3d

jr_01d_5b37:
    call Call_01d_5c7b
    ld b, $00
    ret


jr_01d_5b3d:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    ld de, $5cb1
    jp Jump_000_01dd


jr_01d_5b4e:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_5b9b

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_5b9e

    dec a
    jp z, Jump_01d_5bdd

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $a0
    jr nc, jr_01d_5b9b

    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_5b85

    ld de, $5c8e
    call Call_01d_455d
    jr nc, jr_01d_5b9b

    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    call Call_000_015c
    jr jr_01d_5b9b

jr_01d_5b85:
    ld de, $5c93
    call Call_01d_455d
    jr nc, jr_01d_5b9b

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_000_015c
    ld de, $5b18
    call Call_01d_41d3

Jump_01d_5b9b:
jr_01d_5b9b:
    jp Jump_01d_4304


jr_01d_5b9e:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 1, a
    jr nz, jr_01d_5bba

    ld de, $5c9b
    call Call_01d_455d
    jr nc, jr_01d_5b9b

    ld a, $2d
    add c
    ld l, a
    set 1, [hl]
    call Call_000_015c
    jr jr_01d_5b9b

jr_01d_5bba:
    ld de, $5ca3
    call Call_000_015f
    call Call_01d_4207
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    cp $80
    jr c, jr_01d_5b9b

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $e8
    ld l, a
    res 2, [hl]
    add $17
    ld l, a
    ld [hl], $1e
    jr jr_01d_5b9b

Jump_01d_5bdd:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 2, a
    jr nz, jr_01d_5c08

    call Call_000_01e6
    jr nz, jr_01d_5b9b

    ld a, $13
    add c
    ld l, a
    set 2, [hl]
    ld de, $5b1a
    call Call_01d_41d3
    call Call_01d_419d
    call Call_01d_5c56
    ld a, $2d
    add c
    ld l, a
    set 2, [hl]
    call Call_000_015c
    jr jr_01d_5b9b

jr_01d_5c08:
    ld de, $5ca9
    call Call_000_015f
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    cp $40
    jr c, jr_01d_5c21

    ld de, $5b1c
    call Call_01d_42a3
    jr nz, jr_01d_5c7b

    jr jr_01d_5c24

jr_01d_5c21:
    call Call_01d_4207

jr_01d_5c24:
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_5c3e

    ld a, $0d
    add c
    ld l, a
    ld a, [$c3ed]
    cp [hl]
    jr z, jr_01d_5c3e

    ld d, $ff
    jr c, jr_01d_5c3b

    ld d, $01

jr_01d_5c3b:
    call Call_01d_485e

jr_01d_5c3e:
    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld a, [$df08]
    and $60
    jp nz, Jump_01d_5b9b

    ld de, $5b1c
    call Call_01d_47f0
    jr c, jr_01d_5c7b

    jp Jump_01d_5b9b


Call_01d_5c56:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $80
    jr c, jr_01d_5c61

    jr jr_01d_5c6a

jr_01d_5c61:
    call Call_000_0168
    and $01
    ld d, $20
    jr nz, jr_01d_5c6c

jr_01d_5c6a:
    ld d, $e0

jr_01d_5c6c:
    call Call_01d_485e
    cp $a0
    ret c

    ld a, d
    cpl
    inc a
    add a
    ld d, a
    call Call_01d_485e
    ret


Call_01d_5c7b:
jr_01d_5c7b:
    ld a, $2c
    add c
    ld l, a

jr_01d_5c7f:
    ld [hl], $00
    add $e1
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_000_01f2
    ld b, $00
    ret


    or c
    ld e, h
    inc a
    nop
    rst $38
    or c
    ld e, h
    inc b
    ld bc, $0100
    nop
    rst $38
    or c
    ld e, h
    ld b, $00
    ld [bc], a
    inc bc
    inc b
    rst $38
    or c
    ld e, h
    ld b, $05
    ld b, $ff
    or c
    ld e, h
    rrca
    ld [$0907], sp
    rlca
    rst $38
    push bc
    ld e, h
    ldh [c], a
    ld e, h
    rst $38
    ld e, h
    jr nz, jr_01d_5d16

    ld c, c
    ld e, l
    ld [hl], d
    ld e, l
    sub a
    ld e, l
    cp h
    ld e, l
    jp hl


    ld e, l
    ld d, $5e
    ld sp, hl
    rlca
    ldh a, [c]
    ld [$f9f2], sp
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5cda

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5cda:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, @-$7e

    ld sp, hl
    rlca
    pop af
    rlca
    pop af
    ld sp, hl
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5cf7

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5cf7:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, jr_01d_5c7f

    ld sp, hl
    rlca
    ldh a, [c]
    ld [$f9f2], sp
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5d14

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5d14:
    push af
    inc b

jr_01d_5d16:
    stop
    ld [$1005], sp
    nop
    ld [$1006], sp
    add b
    ld sp, hl
    rlca
    jp hl


    rst $38
    jp hl


    ld sp, hl
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5d35

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5d35:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, jr_01d_5d45

    push af
    rlca
    stop
    ld [$1008], sp
    nop

jr_01d_5d45:
    rlca
    rlca
    jr nc, @-$7e

    ld sp, hl
    rlca
    jp hl


    rst $38
    jp hl


    ld sp, hl
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5d5e

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5d5e:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, jr_01d_5d6e

    push af
    add hl, bc
    stop
    ld [$100a], sp
    nop

jr_01d_5d6e:
    rlca
    add hl, bc
    jr nc, @-$7e

    ld sp, hl
    rlca
    jp hl


    rst $38
    jp hl


    ld sp, hl
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5d87

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5d87:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, jr_01d_5d97

    ld sp, hl
    dec bc
    stop
    rlca
    dec bc
    jr nc, @-$7e

jr_01d_5d97:
    ld sp, hl
    rlca
    jp hl


    rst $38
    jp hl


    ld sp, hl
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_5dac

    ld sp, hl
    ld bc, $0010
    rlca
    ld bc, $0830

jr_01d_5dac:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, @+$09

    ld sp, hl
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, @-$7e

    ld sp, hl
    rlca
    jp hl


    ld [$f9f9], sp
    ld bc, $0050
    rlca
    ld bc, $0870
    ld sp, hl
    nop
    ld d, b
    nop
    rlca
    nop
    ld [hl], b
    add sp, -$0b
    inc c
    stop
    ld [$100d], sp
    nop
    rlca
    inc c
    jr nc, jr_01d_5de5

    pop af
    ld c, $10
    nop
    ld [$100f], sp
    nop

jr_01d_5de5:
    rlca
    ld c, $30
    add b
    ld a, [$e807]
    rlca
    ld hl, sp-$07
    ld d, $10
    nop
    ld [$1017], sp
    ld [$18f8], sp
    stop
    ld [$1019], sp
    add sp, -$0b
    db $10
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    ld [$13f0], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    add b
    ld sp, hl
    ld b, $e8
    rlca
    ld hl, sp-$08
    rla
    jr nc, jr_01d_5e1f

jr_01d_5e1f:
    ld [$3016], sp
    ld [$19f8], sp
    jr nc, jr_01d_5e27

jr_01d_5e27:
    ld [$3018], sp
    add sp, -$0d
    ld [de], a
    jr nc, jr_01d_5e2f

jr_01d_5e2f:
    ld [$3011], sp
    nop
    ld [$3010], sp
    ld [$15f0], sp
    jr nc, jr_01d_5e3b

jr_01d_5e3b:
    ld [$3014], sp
    nop
    ld [$3013], sp
    add b
    nop
    rst $38
    nop
    db $fd
    ld b, b
    rst $38
    db $10
    db $fd
    add b
    rst $38
    db $10
    db $fc
    rst $30
    ld [$08f2], sp
    cp $00
    cp $00
    ld a, [$0606]
    ld b, $c9
    inc b
    rlca
    ld b, $06
    dec b
    ld b, a
    nop

Jump_01d_5e63:
    ld a, b
    dec b
    jp z, Jump_01d_5e91

    dec b
    jr z, jr_01d_5e74

    dec b
    jp z, Jump_01d_5ef1

    dec b
    ret z

    or a
    jr z, jr_01d_5e77

jr_01d_5e74:
    ld b, $00
    ret


jr_01d_5e77:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_01d_42ec
    ld de, $6157
    jp Jump_000_01dd


Jump_01d_5e91:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_5ef1

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_5ef4

    dec a
    jp z, Jump_01d_5f54

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_5ecc

    ld de, $612b
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_5ef1

    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    add $ed
    ld l, a
    set 1, [hl]
    add $11
    ld l, a
    ld [hl], $64
    jr jr_01d_5ef1

jr_01d_5ecc:
    ld de, $613e
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_5ef1

    call Call_000_015c
    call Call_01d_42ec
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $01
    ld l, a
    res 0, [hl]
    add $ed
    ld l, a
    res 1, [hl]
    add $11
    ld l, a
    ld [hl], $3c

Jump_01d_5ef1:
jr_01d_5ef1:
    jp Jump_01d_4304


jr_01d_5ef4:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_5f2e

    ld de, $6146
    call Call_01d_455d
    jr nc, jr_01d_5ef1

    ld a, [$df0a]
    cp $05
    jr c, jr_01d_5f1c

    call Call_000_0168
    cp $55
    jr nc, jr_01d_5f1c

    ld l, c
    push hl
    call Call_01d_6023
    pop hl
    ld c, l
    jr jr_01d_5f23

jr_01d_5f1c:
    ld l, c
    push hl
    call Call_01d_6038
    pop hl
    ld c, l

jr_01d_5f23:
    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jr jr_01d_5ef1

jr_01d_5f2e:
    ld de, $612b
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_5ef1

    call Call_000_015c
    call Call_01d_42ec
    call Call_01d_5fe2
    ld de, $5e43
    call Call_01d_416a
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $02
    ld l, a
    res 0, [hl]
    jr jr_01d_5ef1

Jump_01d_5f54:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_5fa2

    ld de, $6130
    call Call_01d_455d
    call Call_01d_4233
    ld de, $5e4f
    call Call_01d_42a3
    bit 0, a
    jr z, jr_01d_5f76

    call Call_01d_419d
    jp Jump_01d_5ef1


jr_01d_5f76:
    bit 1, a
    jr z, jr_01d_5f99

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_01d_5f88

    xor a
    ld [hl-], a
    ld [hl], a
    jp Jump_01d_5ef1


jr_01d_5f88:
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    add $fe
    ld l, a
    ld [hl], $3c
    jp Jump_01d_5ef1


jr_01d_5f99:
    ld de, $5e43
    call Call_01d_41ad
    jp Jump_01d_5ef1


jr_01d_5fa2:
    ld de, $6137
    call Call_01d_455d
    call Call_000_01e6
    jp nz, Jump_01d_5ef1

    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    res 0, [hl]
    add $02
    ld l, a
    ld a, [hl]
    cp $02
    jr nc, jr_01d_5fcf

    inc [hl]
    call Call_01d_42ec
    call Call_01d_5fe2
    ld de, $5e43
    call Call_01d_416a
    jp Jump_01d_5ef1


jr_01d_5fcf:
    ld [hl], $00
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $ff
    ld l, a
    ld [hl], $3c
    call Call_01d_42ec
    jp Jump_01d_5ef1


Call_01d_5fe2:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld d, $e0
    jr z, jr_01d_5fee

    ld d, $20

jr_01d_5fee:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld e, a
    inc l
    inc l
    ld d, [hl]
    ld l, c
    push hl
    call Call_000_0165
    pop hl
    ld c, l
    ret nc

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    ld e, l
    ld h, b
    ld b, a
    dec h
    nop
    ld d, a
    ld h, c
    rlca
    inc bc
    ld b, b
    ld b, $1d
    pop bc
    ld e, l
    ld h, b
    ld b, a
    dec h
    nop
    ld d, a
    ld h, c
    ld [$4003], sp
    inc bc
    dec e
    pop bc

Call_01d_6023:
    ld b, $00
    ld de, $5e57
    ld a, $09
    ld [$cc00], a
    ld a, $60
    ld [$cc01], a
    call Call_01d_4385
    ret c

    jr jr_01d_604b

Call_01d_6038:
    ld b, $01
    ld de, $5e57
    ld a, $16
    ld [$cc00], a
    ld a, $60
    ld [$cc01], a
    call Call_01d_4385
    ret c

jr_01d_604b:
    ld a, $2f
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    ld de, $5e47
    call Call_01d_416a
    jp Jump_000_015c


    dec b
    jr z, jr_01d_6069

    dec b
    jr nz, jr_01d_60d3

    call Call_01d_610d
    ld b, $00
    ret


jr_01d_6069:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_60d3

    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    cp $a0
    jp z, Jump_01d_610d

    inc [hl]
    ld de, $6152
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_01d_6088

    ld de, $614c

jr_01d_6088:
    call Call_000_015f
    call Call_01d_60d6
    jr z, jr_01d_60c9

    bit 0, a
    jr nz, jr_01d_60be

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_01d_60a1

    call Call_01d_41e3
    jr jr_01d_60c9

jr_01d_60a1:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    inc [hl]
    cp $01
    jr z, jr_01d_60b6

    cp $02
    jr nz, jr_01d_60b1

    ld [hl], $00

jr_01d_60b1:
    ld de, $5e47
    jr jr_01d_60b9

jr_01d_60b6:
    ld de, $5e4b

jr_01d_60b9:
    call Call_01d_416a
    jr jr_01d_60c9

jr_01d_60be:
    call Call_01d_41dd
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_01d_60c9:
    ld a, $1a
    add c
    ld l, a
    bit 7, [hl]
    res 7, [hl]
    jr nz, jr_01d_610d

jr_01d_60d3:
    jp Jump_01d_4304


Call_01d_60d6:
    call Call_01d_4233
    ld de, $5e53
    call Call_01d_42a3
    ret


    ld e, [hl]
    inc l
    ld d, [hl]
    sra d
    rr e
    sra d
    rr e
    dec l
    ld a, [hl]
    sub e
    ld e, a
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld d, a
    ld [hl-], a
    bit 7, a
    jr z, jr_01d_6101

    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    jr nz, jr_01d_6101

    inc d

jr_01d_6101:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $10
    ret nc

    xor a
    ld [hl+], a
    ld [hl], a
    scf
    ret


Call_01d_610d:
Jump_01d_610d:
jr_01d_610d:
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_01d_6123

    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_000_01f2
    ld b, $00
    ret


jr_01d_6123:
    rst $08
    rra
    call Call_01d_435c
    ld b, $00
    ret


    ld d, a
    ld h, c
    ld [$ff00], sp
    ld d, a
    ld h, c
    ld [$0100], sp
    ld [bc], a
    rst $38
    ld d, a
    ld h, c
    ld [$0100], sp
    nop
    rst $38
    ld d, a
    ld h, c
    inc b
    inc bc
    inc b
    dec b
    inc b
    rst $38
    ld d, a
    ld h, c
    ld a, [bc]
    nop
    ld b, $ff
    ld d, a
    ld h, c
    inc c
    rlca
    ld [$57ff], sp
    ld h, c
    inc a
    rlca
    rst $38
    ld l, c
    ld h, c
    sub d
    ld h, c
    cp e
    ld h, c
    db $e4
    ld h, c
    dec c
    ld h, d
    ld [hl], $62
    ld e, a
    ld h, d
    adc b
    ld h, d
    sub c
    ld h, d
    db $f4
    dec bc
    ldh a, [c]
    ld [$f4f2], sp
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
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    di
    ld [$f4f3], sp
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
    ld [$09f0], sp
    stop
    ld [$100a], sp
    nop
    ld [$100b], sp
    add b
    db $f4
    dec bc
    di
    ld [$f4f3], sp
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
    ld [$0cf0], sp
    stop
    ld [$100d], sp
    nop
    ld [$100e], sp
    add b
    db $f4
    dec bc
    ldh a, [c]
    ld [$f4f2], sp
    ld d, $10
    nop
    ld [$1017], sp
    nop
    ld [$1002], sp
    ld [$18f0], sp
    stop
    ld [$1019], sp
    nop
    ld [$1005], sp
    ld [$1af0], sp
    stop
    ld [$101b], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    ldh a, [c]
    ld [$f4f2], sp
    rrca
    stop
    ld [$1010], sp
    nop
    ld [$1011], sp
    ld [$12f0], sp
    stop
    ld [$1013], sp
    nop
    ld [$1005], sp
    ld [$14f0], sp
    stop
    ld [$1015], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    ldh a, [c]
    ld [$f4f2], sp
    inc e
    stop
    ld [$101d], sp
    nop
    ld [$1002], sp
    ld [$1ef0], sp
    stop
    ld [$101f], sp
    nop
    ld [$1005], sp
    ld [$20f0], sp
    stop
    ld [$1021], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    ldh a, [c]
    ld [$f4f2], sp
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
    ld [$23f0], sp
    stop
    ld [$1024], sp
    nop
    ld [$1008], sp
    add b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    ld [hl+], a
    db $10
    add b
    db $fd
    ld bc, $01fd
    db $fc
    db $fc
    dec h
    db $10
    add b
    add b
    cp $00
    nop
    add b
    ld bc, $0000
    push af
    ld c, $f3
    ld [$0008], sp
    ld hl, sp+$00
    jp z, Jump_000_0708

    ld [$0504], sp
    ld b, a
    nop

Jump_01d_62b2:
    ld a, b
    dec b
    jr z, jr_01d_62e9

    dec b
    jr z, jr_01d_62c2

    dec b
    jp z, Jump_01d_6344

    dec b
    ret z

    or a
    jr z, jr_01d_62ca

jr_01d_62c2:
    ld a, $00
    ld [$cc96], a
    ld b, $00
    ret


jr_01d_62ca:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_000_015c
    call Call_01d_42ec
    ld de, $65be
    jp Jump_000_01dd


jr_01d_62e9:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_6344

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_6347

    dec a
    jp z, Jump_01d_637e

    dec a
    jp z, Jump_01d_63c6

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $aa
    jr nc, jr_01d_6344

    ld de, $6571
    call Call_000_015f
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_01d_631b

    call Call_000_01e6
    jr jr_01d_6322

jr_01d_631b:
    call Call_01d_4523
    sub $31
    jr c, jr_01d_6338

jr_01d_6322:
    ld a, [$cc96]
    cp $01
    jr nc, jr_01d_6344

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $05
    ld l, a
    ld [hl], $00
    jr jr_01d_6344

jr_01d_6338:
    call Call_000_015c
    call Call_01d_42ec
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc [hl]

Jump_01d_6344:
jr_01d_6344:
    jp Jump_01d_4304


jr_01d_6347:
    ld de, $6579
    call Call_01d_455d
    jr nc, jr_01d_6359

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    jr jr_01d_6344

jr_01d_6359:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    cp $0f
    jr nz, jr_01d_6377

    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld a, $03
    jr z, jr_01d_636e

    ld a, $0f

jr_01d_636e:
    ldh [$ff97], a
    ld l, c
    push hl
    call $6462
    pop hl
    ld c, l

jr_01d_6377:
    ld a, $30
    add c
    ld l, a
    inc [hl]
    jr jr_01d_6344

Jump_01d_637e:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_01d_63a2

    ld de, $6580
    call Call_01d_455d
    jr nc, jr_01d_6344

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $3c
    add $ef
    ld l, a
    set 1, [hl]
    jr jr_01d_6344

jr_01d_63a2:
    ld de, $6587
    call Call_01d_455d
    jr nc, jr_01d_6344

    call Call_01d_42ec
    call Call_000_015c
    ld a, $2a
    add c
    ld l, a
    ld [hl], $3c
    add $01
    ld l, a
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    jp Jump_01d_6344


Jump_01d_63c6:
    ld de, $658e
    call Call_000_015f
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_63ea

    dec a
    jr z, jr_01d_6427

    call Call_000_01e6
    jp nz, Jump_01d_6344

    ld a, $2f
    add c
    ld l, a
    inc [hl]
    add $fb
    ld l, a
    ld [hl], $3c
    jp Jump_01d_6344


jr_01d_63ea:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $62a2
    call Call_01d_4683
    jr nc, jr_01d_6411

    ld de, $629a
    call Call_01d_416a
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_640c

    call Call_01d_6444
    jr z, jr_01d_6419

    jr jr_01d_6411

jr_01d_640c:
    call Call_01d_41f5
    jr jr_01d_6419

jr_01d_6411:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_01d_6419:
    call Call_000_01e6
    jp nz, Jump_01d_6344

    ld a, $2f
    add c
    ld l, a
    inc [hl]
    jp Jump_01d_6344


jr_01d_6427:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    cp $1e
    jr z, jr_01d_6434

    inc [hl]
    jp Jump_01d_6344


jr_01d_6434:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $ee
    ld l, a
    res 1, [hl]
    jp Jump_01d_6344


Call_01d_6444:
    ld de, $62a2
    push de
    call Call_01d_42a3
    pop de
    ret z

    push af
    bit 1, a
    call nz, Call_01d_46fc
    pop af
    ret


    adc h
    ld h, h
    rlca
    dec b
    nop
    cp [hl]
    ld h, l
    ld [$0001], sp
    ld [bc], a
    dec e
    jp nz, $a611

    ld h, d
    ld a, $55
    ld [$cc00], a
    ld a, $64
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld a, $2c
    add c
    ld l, a
    ldh a, [$ff97]
    call Call_01d_4a7d
    ld a, [$cc96]
    inc a
    ld [$cc96], a
    call Call_000_015c
    ld de, $65be
    jp Jump_000_01dd


    dec b
    jr z, jr_01d_649c

    dec b
    jr nz, jr_01d_64ca

jr_01d_6492:
    ld a, [$cc96]
    dec a
    ld [$cc96], a
    ld b, $00
    ret


jr_01d_649c:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_64ca

    ld a, [$cc96]
    or a
    jr z, jr_01d_64d2

    ld de, $00a0
    ld a, $2c
    add c
    ld l, a
    ld b, $0f
    call Call_01d_64da
    call Call_01d_6550
    ld a, $1a
    add c
    ld l, a
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_01d_64ca

    ld a, [$cc96]
    dec a
    ld [$cc96], a
    jr jr_01d_64d2

jr_01d_64ca:
    call Call_01d_4304
    ld a, b
    or a
    ret nz

    jr jr_01d_6492

jr_01d_64d2:
    rst $08
    rra
    call Call_01d_435c
    ld b, $00
    ret


Call_01d_64da:
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
    call Call_01d_650b
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
    jp Jump_01d_4219


Call_01d_650b:
    push hl
    push bc
    ld c, l
    inc l
    inc l
    inc [hl]
    ld a, e
    or a
    jr z, jr_01d_6519

    dec a
    cp [hl]
    jr nc, jr_01d_654c

jr_01d_6519:
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
    jr nz, jr_01d_6533

    ld [hl], d
    inc l
    ld [hl], $00
    jr jr_01d_654c

jr_01d_6533:
    call Call_000_0255
    ld l, c
    inc l
    ld [hl], a
    ld l, c
    inc l
    ld a, [hl]
    or a
    jr z, jr_01d_654c

    dec a
    ld e, $02
    jr z, jr_01d_6546

    ld e, $fe

jr_01d_6546:
    ld l, c
    ld d, [hl]
    call Call_000_0258
    ld [hl], e

jr_01d_654c:
    pop bc
    pop hl
    ld a, [hl]
    ret


Call_01d_6550:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    srl a
    ld de, $6561
    call Call_000_0171
    jp Jump_000_015f


    sub [hl]
    ld h, l
    sbc e
    ld h, l
    and b
    ld h, l
    and l
    ld h, l
    xor d
    ld h, l
    xor a
    ld h, l
    or h
    ld h, l
    cp c
    ld h, l
    cp [hl]
    ld h, l
    stop
    ld bc, $0102
    rst $38
    cp [hl]
    ld h, l
    ld [$0703], sp
    ld [$beff], sp
    ld h, l
    ld a, [bc]
    inc bc
    inc b
    dec b
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    dec b
    inc b
    inc bc
    rst $38
    cp [hl]
    ld h, l
    rlca
    dec b
    add hl, bc
    ld b, $09
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    ld a, [bc]
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    dec bc
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    inc c
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    dec c
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    ld c, $ff
    cp [hl]
    ld h, l
    ld a, [bc]
    rrca
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    db $10
    rst $38
    cp [hl]
    ld h, l
    ld a, [bc]
    ld de, $e2ff
    ld h, l
    rrca
    ld h, [hl]
    inc a
    ld h, [hl]
    ld l, c
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    jp $ec66


    ld h, [hl]
    dec d
    ld h, a
    ld b, d
    ld h, a
    ld l, a
    ld h, a
    sbc h
    ld h, a
    xor c
    ld h, a
    or [hl]
    ld h, a
    jp $d067


    ld h, a
    db $dd
    ld h, a
    ld [$f767], a
    ld h, a
    ldh a, [rIF]
    di
    ld [$f8f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$1009], sp
    ld sp, hl
    add sp, $02
    db $10
    ld [$0600], sp
    db $10
    add b
    ldh a, [rIF]
    di
    ld [$f8f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$100b], sp
    ld sp, hl
    add sp, $0a
    db $10
    ld [$0600], sp
    db $10
    add b
    ldh a, [rIF]
    di
    ld [$f8f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$100d], sp
    ld sp, hl
    add sp, $0c
    db $10
    ld [$0600], sp
    db $10
    add b
    ldh a, [rIF]
    di
    ld [$f8f2], sp
    nop
    stop
    ld [$1001], sp
    ld [$03f8], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$07f0], sp
    stop
    ld [$1008], sp
    nop
    ld [$100b], sp
    ld sp, hl
    add sp, $02
    db $10
    ld [$0600], sp
    db $10
    add b
    ldh a, [c]
    ld c, $f4
    ld [$f8f3], sp
    nop
    stop
    ld [$1001], sp
    ld [$16f0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$17e8], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    nop
    ld [$1018], sp
    add b
    ld sp, hl
    ld a, [bc]
    ld a, [$f608]
    ld hl, sp+$00
    stop
    ld [$1001], sp
    ld [$19f0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$1af0], sp
    stop
    ld [$101b], sp
    nop
    ld [$101c], sp
    add b
    ld sp, hl
    ld a, [bc]
    ld a, [$f608]
    db $fc
    ld bc, $0030
    ld [$3000], sp
    ld [$05f0], sp
    jr nc, jr_01d_66fd

jr_01d_66fd:
    ld [$3004], sp
    nop
    ld [$3003], sp
    nop
    ld [$3019], sp
    ld [$1ce8], sp
    jr nc, jr_01d_670d

jr_01d_670d:
    ld [$301b], sp
    nop

Call_01d_6711:
    ld [$301a], sp
    add b
    ldh a, [rIF]
    db $f4
    ld [$f8f3], sp
    nop
    stop
    ld [$1001], sp
    ld [$0ef0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$100f], sp
    ld [$10e8], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    nop
    ld [$1013], sp
    add b
    ldh a, [rIF]
    db $f4
    ld [$f8f3], sp
    nop
    stop
    ld [$1001], sp
    ld [$0ef0], sp
    stop
    ld [$1003], sp
    nop
    ld [$1004], sp
    nop
    ld [$1014], sp
    ld [$10e8], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    nop
    ld [$1015], sp
    add b
    ld sp, hl
    ld a, [bc]
    ld a, [$f508]
    or $1d
    stop
    ld [$101e], sp
    nop
    ld [$301d], sp
    ld [$1fec], sp
    stop
    ld [$1020], sp
    nop
    ld [$3020], sp
    nop
    ld [$301f], sp
    ld [$21ec], sp
    stop
    ld [$1022], sp
    nop
    ld [$3021], sp
    add b
    cp $04
    ld hl, sp+$05
    ld hl, sp-$03
    dec h
    db $10
    ld [$2600], sp
    db $10
    add b
    db $fc
    rlca
    ld a, [$f904]
    ld bc, $3027
    inc b
    ei
    jr z, jr_01d_67e5

    add b
    db $fc
    add hl, bc
    db $fd
    inc bc
    db $fc
    ld a, [$3024]
    nop
    ld [$3023], sp
    add b
    db $fd
    rlca
    db $fc
    ld b, $fc
    db $fd
    jr z, jr_01d_683b

    inc b
    inc b
    daa
    ld [hl], b
    add b
    cp $04
    ei
    ld [$fdf9], sp
    ld h, $50
    ld [$2500], sp
    ld d, b
    add b
    ei
    dec b
    db $fc
    ld b, $fc
    cp $28
    ld d, b

jr_01d_67e5:
    inc b
    db $fc
    daa
    ld d, b
    add b
    ld sp, hl
    ld b, $fd
    inc bc
    db $fc
    ld sp, hl
    inc hl
    stop
    ld [$1024], sp
    add b
    ei
    dec b
    ld a, [$f904]
    ld a, [$1027]
    inc b
    inc b
    jr z, jr_01d_6813

    add b
    nop
    rst $38
    add b
    db $fd
    nop
    cp $00
    nop
    ld a, [$f305]
    ld [$05fa], sp
    db $fc

jr_01d_6813:
    ld [bc], a
    ld hl, sp-$07
    ld [$c9f9], sp
    ld [$0407], sp
    inc bc
    dec b
    ld b, a
    nop

Jump_01d_6820:
    ld a, b
    dec b
    jr z, jr_01d_6854

    dec b
    jr z, jr_01d_6830

    dec b
    jp z, Jump_01d_688d

    dec b
    ret z

    or a
    jr z, jr_01d_6833

jr_01d_6830:
    ld b, $00
    ret


jr_01d_6833:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $16
    add $01

jr_01d_683b:
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_01d_42ec
    ld de, $680c
    call Call_01d_46fc
    ld de, $6a56
    jp Jump_000_01dd


jr_01d_6854:
    ld a, [$deaf]
    or a
    jp nz, Jump_01d_688d

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_6890

    dec a
    jp z, Jump_01d_691d

    ld de, $6a35
    call Call_000_015f
    call Call_000_01e6
    ld a, $2a
    add c
    ld l, a
    ld a, [hl]
    cp $15
    jr nc, jr_01d_688d

    call Call_000_015c
    call Call_01d_42ec
    call Call_01d_69aa
    ld de, $6804
    call Call_01d_416a
    ld a, $2b
    add c
    ld l, a
    inc [hl]

Jump_01d_688d:
jr_01d_688d:
    jp Jump_01d_4304


jr_01d_6890:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_68ed

    ld de, $6a3a
    call Call_01d_455d
    call Call_000_01e6
    jr nz, jr_01d_688d

    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    call nz, Call_01d_69d1
    call Call_01d_4233
    ld de, $680c
    call Call_01d_42a3
    bit 0, a
    jr z, jr_01d_68c0

    call Call_01d_419d
    jr jr_01d_688d

jr_01d_68c0:
    bit 1, a
    jr z, jr_01d_68e5

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_01d_68d7

    xor a
    ld [hl-], a
    ld [hl], a
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]
    jr jr_01d_688d

jr_01d_68d7:
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    inc l
    res 0, [hl]
    jr jr_01d_688d

jr_01d_68e5:
    ld de, $6804
    call Call_01d_41ad
    jr jr_01d_688d

jr_01d_68ed:
    ld de, $6a43
    call Call_01d_455d
    jr nc, jr_01d_688d

    call Call_000_015c
    call Call_01d_42ec
    ld a, $2c
    add c
    ld l, a
    res 0, [hl]
    call Call_01d_4523
    cp $50
    jr nc, jr_01d_6910

    ld a, $2b
    add c
    ld l, a
    inc [hl]
    jp Jump_01d_688d


jr_01d_6910:
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $ff
    ld l, a
    ld [hl], $1e
    jp Jump_01d_688d


Jump_01d_691d:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_697b

    ld de, $6a35
    call Call_000_015f
    ld a, $2e
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $28
    jr z, jr_01d_6968

    cp $50
    jr z, jr_01d_6968

    cp $78
    jr z, jr_01d_6968

    cp $a0
    jr z, jr_01d_6968

    cp $c8
    jp c, Jump_01d_688d

jr_01d_6947:
    call Call_000_015c
    call Call_01d_42ec
    call Call_01d_69aa
    ld de, $6804
    call Call_01d_416a
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $03
    ld l, a
    ld [hl], $00
    add $fc
    ld l, a
    ld [hl], $16
    jp Jump_01d_688d


jr_01d_6968:
    call Call_01d_4523
    cp $50
    jr nc, jr_01d_6947

    call Call_000_015c
    call Call_01d_42ec
    ld a, $2d
    add c
    ld l, a
    set 0, [hl]

jr_01d_697b:
    ld de, $6a49
    call Call_01d_455d
    jp nc, Jump_01d_6995

    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    res 0, [hl]
    add $02
    ld l, a
    ld [hl], $00
    jp Jump_01d_688d


Jump_01d_6995:
    ld a, $2f
    add c
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $0a
    jp nz, Jump_01d_688d

    ld l, c
    push hl
    call $69e5
    pop hl
    ld c, l
    jp Jump_01d_688d


Call_01d_69aa:
    ld a, $24
    add c
    ld l, a
    bit 0, [hl]
    ld d, $e8
    jr z, jr_01d_69b6

    ld d, $18

jr_01d_69b6:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    add d
    ld e, a
    inc l
    inc l
    ld d, [hl]
    ld l, c
    push hl
    call Call_000_0165
    pop hl
    ld c, l
    ret nc

    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Call_01d_69d1:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    ret


    rst $38
    ld l, c
    ld b, a
    dec b
    nop
    ld d, [hl]
    ld l, d
    ld b, $01
    nop
    ld [bc], a
    dec e
    jp nz, $1411

    ld l, b
    ld a, $d8
    ld [$cc00], a
    ld a, $69
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld de, $6808
    call Call_01d_416a
    jp Jump_000_015c


    dec b
    jr z, jr_01d_6a0b

    dec b
    jr nz, jr_01d_6a2a

    call Call_01d_6a2d
    ld b, $00
    ret


jr_01d_6a0b:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_6a2a

    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_6a22

    ld de, $6810
    call Call_01d_42a3
    jr nz, jr_01d_6a2d

    jr jr_01d_6a25

jr_01d_6a22:
    call Call_01d_41f5

jr_01d_6a25:
    call Call_01d_47f0
    jr c, jr_01d_6a2d

jr_01d_6a2a:
    jp Jump_01d_4304


Call_01d_6a2d:
jr_01d_6a2d:
    rst $08
    rra
    call Call_01d_435c
    ld b, $00
    ret


    ld d, [hl]
    ld l, d
    inc b
    nop
    rst $38
    ld d, [hl]
    ld l, d
    ld a, [bc]
    nop
    ld bc, $0302
    nop
    rst $38
    ld d, [hl]
    ld l, d
    ld a, [bc]
    ld bc, $ff00
    ld d, [hl]
    ld l, d
    inc b
    nop
    inc b
    dec b
    nop
    rst $38
    ld d, [hl]
    ld l, d
    ld a, [bc]
    ld b, $ff
    ld h, h
    ld l, d
    adc l
    ld l, d
    or [hl]
    ld l, d
    rst $18
    ld l, d
    ld [$316b], sp
    ld l, e
    ld e, d
    ld l, e
    db $f4
    dec bc
    push af
    ld [$f4f4], sp
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
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    push af
    dec bc
    rst $30
    ld [$f5f6], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$1009], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$100a], sp
    ld [$0bf0], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    add b
    xor $07
    di
    ld [$eef2], sp
    nop
    stop
    ld [$1001], sp
    nop
    ld [$100e], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$100f], sp
    ld [$10f8], sp
    stop
    ld [$1011], sp
    nop
    ld [$1012], sp
    add b
    and $05
    ld [$ea08], a
    xor $13
    stop
    ld [$1014], sp
    ld [$15f8], sp
    stop
    ld [$1016], sp
    ld [$1700], sp
    stop
    ld [$1018], sp
    ld [$1900], sp
    db $10
    rst $20
    add sp, $00
    db $10
    ld [$0300], sp
    db $10
    add b
    db $f4
    dec bc
    push af
    ld [$f4f4], sp
    ld a, [de]
    stop

Call_01d_6b11:
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    db $f4
    dec bc
    push af
    ld [$f4f4], sp
    dec de
    stop
    ld [$1001], sp
    nop
    ld [$1002], sp
    ld [$1cf0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    ld [$06f0], sp
    stop
    ld [$1007], sp
    nop
    ld [$1008], sp
    add b
    ld a, [$fc05]
    ld [bc], a
    db $fc
    ld hl, sp+$1d
    stop
    ld [$101e], sp
    add b
    db $f4
    nop
    inc c
    nop
    nop
    cp $00
    nop
    call z, Call_000_0510
    inc b
    inc b
    dec b
    ld b, a
    nop

Jump_01d_6b77:
    ld a, b
    dec b
    jr z, jr_01d_6bb7

    dec b
    jr z, jr_01d_6b88

    dec b
    jp z, Jump_01d_6bed

    dec b
    jr z, jr_01d_6b8b

    or a
    jr z, jr_01d_6b92

jr_01d_6b88:
    ld b, $00
    ret


jr_01d_6b8b:
    ld a, [$c3c3]
    call Call_01d_6c49
    ret


jr_01d_6b92:
    ld l, c
    push hl
    call Call_01d_6c44
    pop hl
    ld c, l
    call Call_000_015c
    call Call_01d_42ec
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $2a
    add c
    ld l, a
    ld [hl], $1e
    add $ed
    ld l, a
    ld [hl], $02
    ld de, $6cc6
    jp Jump_000_01dd


jr_01d_6bb7:
    ld a, [$deaf]
    or a
    jp nz, Jump_01d_6bed

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_6bf0

    dec a
    jr z, jr_01d_6c37

    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $aa
    jr nc, jr_01d_6bea

    call Call_000_01e6
    jr nz, jr_01d_6bea

jr_01d_6bd7:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $ff
    ld l, a
    ld [hl], $78
    add $ef
    ld l, a
    set 1, [hl]

jr_01d_6bea:
    call Call_01d_42ec

Jump_01d_6bed:
jr_01d_6bed:
    jp Jump_01d_4304


jr_01d_6bf0:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_6c1b

    ld de, $6c9d
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_6bea

    ld l, c
    push hl
    call $6c62
    pop hl
    ld c, l
    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    add $ed
    ld l, a
    res 1, [hl]
    jr jr_01d_6bed

jr_01d_6c1b:
    ld de, $6ca5
    call Call_01d_455d
    jr nc, jr_01d_6bed

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $01
    ld l, a
    res 0, [hl]
    add $fe
    ld l, a
    ld [hl], $b4
    jr jr_01d_6bed

jr_01d_6c37:
    ld de, $6caa
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_6bea

    jr jr_01d_6bd7

Call_01d_6c44:
    ld a, $06
    add c
    ld l, a
    ld a, [hl]

Call_01d_6c49:
    bit 0, a
    ld a, $6a
    jr z, jr_01d_6c51

    ld a, $6b

jr_01d_6c51:
    call Call_000_020a
    ret


    add d
    ld l, h
    ld h, a
    dec b
    nop
    add $6c
    dec b
    ld bc, $0202
    dec e
    call nz, Call_01d_6711
    ld l, e
    ld a, $55
    ld [$cc00], a
    ld a, $6c
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld a, $07
    add c
    ld l, a
    ld [hl], $81
    ld de, $6b6b
    call Call_01d_416a
    jp Jump_000_015c


    dec b
    jr z, jr_01d_6c8b

    dec b
    jr nz, jr_01d_6c9a

    ld b, $00
    ret


jr_01d_6c8b:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_6c9a

    ld de, $6cb0
    call Call_000_015f
    call Call_01d_41f5

jr_01d_6c9a:
    jp Jump_01d_4304


    add $6c
    inc bc
    nop
    inc b
    nop
    ld [$c6ff], sp
    ld l, h
    ld [$ff01], sp
    add $6c
    jr jr_01d_6cb0

    inc bc
    rst $38

jr_01d_6cb0:
    add $6c
    inc b
    dec b
    ld b, $07
    ld b, $ff
    add $6c
    ld [$0400], sp
    nop
    inc b
    ld bc, $0201

jr_01d_6cc2:
    inc bc
    ld [bc], a
    inc bc
    rst $38
    ret c

    ld l, h
    dec c
    ld l, l
    ld b, d
    ld l, l
    ld [hl], a
    ld l, l
    xor h
    ld l, l
    pop hl
    ld l, l
    or $6d
    dec bc
    ld l, [hl]
    jr nz, jr_01d_6d46

    push af
    dec b
    rst $28
    dec bc
    db $ec
    ldh a, [rP1]
    stop
    ld [$1024], sp
    nop
    ld [$1025], sp
    inc bc
    ld [$1001], sp
    dec b
    ld hl, sp+$27
    stop
    ld hl, sp+$26
    stop
    ld hl, sp+$02
    db $10
    ld [$0308], sp
    stop
    ld [$1004], sp
    ld [$0700], sp
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$05
    db $10
    add b
    ldh a, [rSC]
    rst $28
    dec bc
    db $ec
    push af
    inc h
    stop
    ld [$1028], sp
    ld [$2900], sp
    stop
    ld hl, sp+$26
    db $10
    inc bc
    ld hl, sp+$09
    stop
    ld hl, sp+$08
    db $10
    dec b
    ld [$100a], sp
    nop
    ld [$100b], sp
    nop
    ld [$100c], sp
    ld [$0503], sp
    jr nc, jr_01d_6d3a

jr_01d_6d3a:
    ld hl, sp+$06
    jr nc, jr_01d_6d3e

jr_01d_6d3e:
    ld hl, sp+$07
    jr nc, jr_01d_6cc2

    push af
    rlca
    rst $28
    dec bc

jr_01d_6d46:
    db $ec
    ld hl, sp+$24
    stop
    ld [$1028], sp
    ld [$2900], sp
    stop
    ld hl, sp+$26
    stop
    ld hl, sp+$0d
    db $10
    ld [$0e00], sp
    stop
    ld [$1003], sp
    nop
    ld [$100f], sp
    ld bc, $1008
    db $10
    rlca
    ld hl, sp+$12
    stop
    ld hl, sp+$06
    stop
    ld hl, sp+$11
    db $10
    add b
    push af
    rlca
    ldh a, [$ff0c]
    db $ed
    ld hl, sp+$24
    stop
    ld [$1028], sp
    ld [$2900], sp
    stop
    ld hl, sp+$26
    stop
    ld hl, sp+$0d
    db $10
    ld [$1300], sp
    stop
    ld [$1014], sp
    nop
    ld [$1015], sp
    ld bc, $1008
    db $10
    rlca
    ld hl, sp+$17
    db $10
    rst $38
    ld hl, sp+$06
    db $10
    ld bc, $16f8
    db $10
    add b
    ldh a, [c]
    add hl, bc
    db $eb
    ld a, [bc]
    db $eb
    ldh a, [c]
    dec de
    stop
    ld [$101c], sp
    nop
    ld [$301b], sp
    ld [$1df0], sp
    stop
    ld [$101e], sp
    nop
    ld [$301d], sp
    ld [$1ff0], sp
    stop
    ld [$501e], sp
    nop
    ld [$301f], sp
    ld [$20f0], sp
    stop
    ld [$701c], sp
    nop
    ld [$3020], sp
    add b
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp-$08
    jr jr_01d_6df9

    nop
    rlca
    jr jr_01d_6e1d

    rlca
    nop
    jr jr_01d_6e61

    nop
    ld sp, hl
    jr jr_01d_6e45

    add b
    ld sp, hl
    dec b
    ld sp, hl

jr_01d_6df9:
    dec b
    ld hl, sp-$08
    add hl, de
    stop
    rlca
    add hl, de
    jr nc, jr_01d_6e0a

    nop
    add hl, de
    ld [hl], b
    nop
    ld sp, hl
    add hl, de
    ld d, b

jr_01d_6e0a:
    add b
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp-$08
    ld a, [de]
    stop
    rlca
    ld a, [de]
    jr nc, jr_01d_6e1f

    nop
    ld a, [de]
    ld [hl], b
    nop
    ld sp, hl

jr_01d_6e1d:
    ld a, [de]
    ld d, b

jr_01d_6e1f:
    add b
    xor $0b
    db $eb
    ld a, [bc]
    ld [$21ed], a
    db $10
    ld [$2200], sp
    db $10
    db $fc
    ld [$1023], sp
    nop
    ld [$3023], sp
    db $fc
    ld [$3021], sp
    ld [$2200], sp
    jr nc, jr_01d_6e49

    db $eb
    ld [hl+], a
    ld d, b
    ld [$2100], sp
    ld d, b
    db $fc

jr_01d_6e45:
    ld [$5023], sp
    nop

jr_01d_6e49:
    inc bc
    inc hl
    ld [hl], b
    db $fc
    ld [$7022], sp
    ld [$2100], sp
    ld [hl], b
    add b
    nop
    ld [bc], a
    db $f4
    ld a, [bc]
    ld a, [$f60d]
    ld [$0a02], sp
    nop
    ld [de], a

jr_01d_6e61:
    nop
    ld [de], a
    nop
    ld a, [$fa00]
    nop
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    dec bc
    rlca
    ld [$0a09], sp
    call z, Call_000_0508
    ld b, $04
    dec h
    ld b, a
    nop

Jump_01d_6e7c:
    ld a, b
    dec b
    jr z, jr_01d_6eb1

    dec b
    jr z, jr_01d_6e8c

    dec b
    jp z, Jump_01d_6f2d

    dec b
    ret z

    or a
    jr z, jr_01d_6e8f

jr_01d_6e8c:
    ld b, $00
    ret


jr_01d_6e8f:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_01d_42ec
    ld de, $6e57
    call Call_01d_471e
    ld de, $7120
    jp Jump_000_01dd


jr_01d_6eb1:
    ld a, [$deaf]
    or a
    jp nz, Jump_01d_6f2d

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_6f30

    dec a
    jp z, Jump_01d_6f9b

    ld a, $30
    add c
    ld l, a
    call Call_000_01e9
    ld a, $0d
    add c
    ld l, a
    ld a, [hl]
    cp $aa
    jr nc, jr_01d_6f2d

    ld de, $70fd
    call Call_000_015f
    call Call_01d_701e
    jr nz, jr_01d_6f03

    ld a, [$d163]
    or a
    jr nz, jr_01d_6eec

    ld a, [$d740]
    bit 0, a
    jr nz, jr_01d_6f03

jr_01d_6eec:
    call Call_01d_4523
    cp $38
    jr nc, jr_01d_6f24

    call Call_000_01e6
    jr nz, jr_01d_6f2a

jr_01d_6ef8:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    jr jr_01d_6f2a

jr_01d_6f03:
    ld a, $30
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_01d_6ef8

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $ef
    ld l, a
    ld [hl], $06
    ld de, $6e55
    call Call_01d_41d3
    call Call_01d_419d
    jr jr_01d_6f2a

jr_01d_6f24:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $01

Jump_01d_6f2a:
jr_01d_6f2a:
    call Call_01d_42ec

Jump_01d_6f2d:
jr_01d_6f2d:
    jp Jump_01d_4304


jr_01d_6f30:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_01d_6f5a

    ld de, $7102
    call Call_01d_455d
    jr c, jr_01d_6f6a

    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    cp $10
    jr nz, jr_01d_6f53

    ld l, c
    push hl
    call Call_01d_7032
    call $7051
    pop hl
    ld c, l

jr_01d_6f53:
    ld a, $2d
    add c
    ld l, a
    inc [hl]
    jr jr_01d_6f2d

jr_01d_6f5a:
    call Call_000_01e6
    jr nz, jr_01d_6f2a

    ld a, $2f
    add c
    ld l, a
    ld [hl], $00
    call Call_000_015c
    jr jr_01d_6f2a

jr_01d_6f6a:
    ld a, $30
    add c
    ld l, a
    ld [hl], $00
    add $fd
    ld l, a
    ld [hl], $00
    inc l
    ld a, [hl]
    cp $04
    jr z, jr_01d_6f86

    inc [hl]
    inc l
    inc [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $0a
    jr jr_01d_6f2a

Jump_01d_6f86:
jr_01d_6f86:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $03
    ld l, a
    ld [hl], $00
    add $fc
    ld l, a
    ld [hl], $0a
    call Call_000_015c
    jr jr_01d_6f2a

Jump_01d_6f9b:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_6fd0

    dec a
    jr z, jr_01d_6feb

    ld de, $710c
    call Call_01d_455d
    call Call_01d_4207
    ld a, [$d76d]
    bit 0, a
    jp nz, Jump_01d_6f2d

    ld de, $6e5f
    call Call_01d_4866
    jp nc, Jump_01d_6f2d

    ld a, $2c
    add c
    ld l, a
    inc [hl]
    add $fe
    ld l, a
    ld [hl], $1e
    call Call_01d_41e3
    jp Jump_01d_6f2a


jr_01d_6fd0:
    ld a, $17
    add c
    ld l, a
    ld [hl], $04
    call Call_000_01e6
    jp nz, Jump_01d_6f2a

    ld a, $2c
    add c
    ld l, a
    inc [hl]
    ld l, c
    push hl
    call $7099
    pop hl
    ld c, l
    jp Jump_01d_6f2a


jr_01d_6feb:
    ld a, $17
    add c
    ld l, a
    ld [hl], $00
    call Call_01d_4207
    ld a, [$d76d]
    bit 0, a
    jp nz, Jump_01d_6f2d

    ld de, $6e63
    call Call_01d_4866
    jp nc, Jump_01d_6f2d

    ld a, $2c
    add c
    ld l, a
    ld [hl], $00
    add $04
    ld l, a
    ld [hl], $78
    add $ea
    ld l, a
    ld [hl], $04
    ld de, $6e57
    call Call_01d_471e
    jp Jump_01d_6f86


Call_01d_701e:
    call Call_01d_4523
    ld a, [$d703]
    jr c, jr_01d_702b

    or a
    jr z, jr_01d_702d

    xor a
    ret


jr_01d_702b:
    or a
    ret z

jr_01d_702d:
    ld a, [$d783]
    or a
    ret


Call_01d_7032:
    ld de, $6e6f
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]

jr_01d_703a:
    or a
    jr z, jr_01d_7041

    dec a
    inc de
    jr jr_01d_703a

jr_01d_7041:
    ld a, [de]
    ld b, a
    ret


    ld [hl], c
    ld [hl], b
    ld b, a
    add l
    nop
    jr nz, @+$73

    dec b
    ld bc, $0300
    dec e
    call nz, Call_01d_6711
    ld l, [hl]
    ld a, $44
    ld [$cc00], a
    ld a, $70
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $0200
    call Call_01d_4577
    jp Jump_000_015c


    dec b
    jr z, jr_01d_707a

    dec b
    jr nz, jr_01d_7089

    ld b, $00
    ret


jr_01d_707a:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_7089

    ld de, $7112
    call Call_000_015f
    call Call_01d_4219

jr_01d_7089:
    jp Jump_01d_4304


    cp [hl]
    ld [hl], b
    ld b, a
    add l
    nop
    jr nz, jr_01d_7104

    ld [$0001], sp
    ld b, $1d
    call nz, Call_01d_6b11
    ld l, [hl]
    ld a, $8c
    ld [$cc00], a
    ld a, $70
    ld [$cc01], a
    call Call_01d_4385
    ret c

    ld a, $2a
    add c
    ld l, a
    ld [hl], $78
    add $08
    ld l, a
    ld [hl], $01
    ld de, $6e5b
    call Call_01d_46fc
    jp Jump_000_015c


    dec b
    jr z, jr_01d_70c7

    dec b
    jr nz, jr_01d_70f7

    ld b, $00
    ret


jr_01d_70c7:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_70f7

    call Call_000_01e6
    jr z, jr_01d_70fa

    ld de, $711a
    call Call_000_015f
    ld a, [$d76d]
    bit 0, a

jr_01d_70dd:
    jr z, jr_01d_70f7

    ld a, $32
    add c
    ld l, a
    ld a, [hl]
    cp $02
    jr nc, jr_01d_70f0

    inc [hl]
    ld d, $f0
    call Call_01d_485e
    jr jr_01d_70f7

jr_01d_70f0:
    xor a
    ld [hl], a
    ld d, $20
    call Call_01d_485e

jr_01d_70f7:
    jp Jump_01d_4304


jr_01d_70fa:
    ld b, $00
    ret


    jr nz, @+$73

    ld [$ff00], sp
    jr nz, @+$73

jr_01d_7104:
    ld [$0100], sp
    inc bc
    ld [bc], a
    ld bc, $ff00
    jr nz, @+$73

    ld [$0400], sp
    rst $38
    jr nz, @+$73

    ld [$0605], sp
    rlca
    ld b, $ff
    jr nz, jr_01d_718d

    ld [$0908], sp
    rst $38
    inc [hl]
    ld [hl], c
    ld e, l
    ld [hl], c
    add [hl]
    ld [hl], c
    xor a
    ld [hl], c
    ldh [$ff71], a
    add hl, bc
    ld [hl], d
    ld e, $72
    daa

jr_01d_712f:
    ld [hl], d
    inc a
    ld [hl], d
    ld c, l
    ld [hl], d
    db $f4
    ld a, [bc]
    ld a, [$fa0d]
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    rlca
    nop
    jr nc, jr_01d_714d

    nop
    ld [bc], a
    jr nc, jr_01d_7149

jr_01d_7149:
    ld sp, hl
    inc bc
    stop

jr_01d_714d:
    ld hl, sp+$02
    db $10
    ld [$0400], sp
    stop
    ld [$1005], sp
    nop
    rlca
    inc b
    jr nc, jr_01d_70dd

    db $f4
    ld a, [bc]
    ld a, [$fa10]
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    rlca
    nop
    jr nc, jr_01d_7176

    nop
    ld b, $30
    nop
    ld sp, hl
    rlca
    stop

jr_01d_7176:
    ld hl, sp+$06
    db $10
    ld [$0800], sp
    stop
    ld [$1009], sp
    nop
    rlca
    ld [$8030], sp
    or $08
    ld a, [$fa11]
    db $f4
    nop

jr_01d_718d:
    stop
    ld [$1001], sp
    nop
    rlca
    nop
    jr nc, jr_01d_719f

    nop
    ld a, [bc]
    jr nc, jr_01d_719b

jr_01d_719b:
    ld sp, hl
    rlca
    stop

jr_01d_719f:
    ld hl, sp+$0a
    db $10
    ld [$0b00], sp
    stop
    ld [$100c], sp
    nop
    rlca
    dec bc
    jr nc, jr_01d_712f

    pop af
    dec c
    ld a, [$fa11]
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    rlca
    nop
    jr nc, jr_01d_71c8

    inc b
    dec c
    jr nc, jr_01d_71c4

jr_01d_71c4:
    ld hl, sp+$0e
    jr nc, jr_01d_71c8

jr_01d_71c8:
    ld sp, hl
    ld c, $10
    nop
    ld hl, sp+$0d
    db $10
    ld [$0f00], sp
    stop
    ld [$1010], sp
    nop
    rlca
    db $10
    jr nc, jr_01d_71dc

jr_01d_71dc:
    ld [$300f], sp
    add b
    or $08
    ld a, [$fa11]
    db $f4
    nop
    stop
    ld [$1001], sp
    nop
    rlca
    nop
    jr nc, jr_01d_71f9

    nop
    ld de, $0030
    ld sp, hl
    ld [de], a
    stop

jr_01d_71f9:
    ld hl, sp+$11
    db $10
    ld [$0f01], sp
    stop
    rlca
    inc de
    stop
    ld b, $0f
    jr nc, @-$7e

    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    jr jr_01d_7221

    nop
    ld [$1019], sp
    ld [$1b00], sp
    stop
    ld hl, sp+$1a
    db $10
    add b
    db $fc
    inc bc
    db $fc

jr_01d_7221:
    inc bc
    db $fc
    db $fc
    inc e
    db $10
    add b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    dec e
    stop
    ld [$101e], sp
    ld [$2000], sp
    stop
    ld hl, sp+$1f
    db $10
    add b
    or $08
    ld [bc], a
    dec bc
    inc bc
    db $f4
    inc d
    stop
    ld [$1015], sp
    nop
    rlca
    inc d
    jr nc, @-$7e

    rst $30
    rlca
    db $fc
    dec bc
    ei
    ld hl, sp+$16
    stop
    rlca
    ld d, $30
    ld [$1700], sp
    jr nc, jr_01d_725e

jr_01d_725e:
    ld sp, hl
    rla
    db $10
    add b
    ret nz

    rst $38
    nop
    nop
    add b
    nop
    nop
    cp $00
    db $fd
    nop
    db $fd
    ldh a, [c]
    ld bc, $08f1
    db $f4
    ld bc, $08fa
    db $f4
    dec bc
    ldh a, [c]
    ld [$09f5], sp
    ld a, [$cc08]
    ld [$0307], sp
    ld [$4705], sp
    nop

Jump_01d_7286:
    ld a, b
    dec b
    jr z, jr_01d_72c7

    dec b
    jr z, jr_01d_7296

    dec b
    jp z, Jump_01d_737d

    dec b
    ret z

    or a
    jr z, jr_01d_7299

jr_01d_7296:
    ld b, $00
    ret


jr_01d_7299:
    ld a, $2a
    add c
    ld l, a
    ld [hl], $5a
    add $ee
    ld l, a
    ld a, [hl]
    add $14
    ld [hl], a
    ld a, $36
    add c
    ld l, a
    ld [hl], $14
    add $f5
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_01d_42ec
    ld de, $7276
    call Call_01d_46fc
    ld de, $753c
    jp Jump_000_01dd


jr_01d_72c7:
    ld de, $7276
    call Call_01d_4766
    jp c, Jump_01d_4304

    ld a, [$deaf]
    or a
    jp nz, Jump_01d_736d

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_01d_7380

    dec a
    jp z, Jump_01d_73a9

    dec a
    jp z, Jump_01d_73e5

    dec a
    jp z, Jump_01d_73ff

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_72fa

    ld de, $750a
    jr jr_01d_72fd

jr_01d_72fa:
    ld de, $7516

jr_01d_72fd:
    call Call_000_015f
    call Call_000_01e6
    jr z, jr_01d_732f

Jump_01d_7305:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $7276
    call Call_01d_4683
    jr nc, jr_01d_7325

    ld de, $7262
    call Call_01d_416a
    ld de, $7276
    call Call_01d_4426
    jr z, jr_01d_733a

    bit 1, a
    jr nz, jr_01d_733a

jr_01d_7325:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_01d_733a

jr_01d_732f:
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    inc l
    set 1, [hl]
    call Call_000_015c

jr_01d_733a:
    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    cp $15
    jr nc, jr_01d_736d

    rst $08
    rra
    call Call_01d_435c
    call Call_01d_42ec
    ld de, $7266
    call Call_01d_4165
    call Call_000_015c
    ld a, $18
    add c
    ld l, a
    ld [hl], $04
    add $13
    ld l, a
    ld [hl], $02
    inc l
    ld [hl], $00
    inc l
    push hl
    ld a, $36
    add c
    ld l, a
    ld a, [hl]
    pop hl
    ld [hl], a
    jr jr_01d_737d

Jump_01d_736d:
jr_01d_736d:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_737d

    bit 1, a
    jr nz, jr_01d_737d

    call Call_01d_7459

Jump_01d_737d:
jr_01d_737d:
    jp Jump_01d_4304


Jump_01d_7380:
    ld de, $7510
    call Call_01d_455d
    jp nc, Jump_01d_7305

    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $01
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_739a

    set 0, [hl]
    jr jr_01d_739c

jr_01d_739a:
    res 0, [hl]

jr_01d_739c:
    res 1, [hl]
    ld a, $2a
    add c
    ld l, a
    ld [hl], $5a
    call Call_000_015c
    jr jr_01d_733a

Jump_01d_73a9:
    ld de, $751c
    call Call_000_015f
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_73d0

    call Call_01d_4233
    ld de, $727a
    call Call_01d_42a3
    bit 1, a
    jr z, jr_01d_736d

    ld a, $2e
    add c
    ld l, a
    inc [hl]
    add $fc
    ld l, a
    ld [hl], $78
    jr jr_01d_73dd

jr_01d_73d0:
    call Call_000_01e6
    jr nz, jr_01d_73dd

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]

jr_01d_73dd:
    call Call_01d_42ec
    call Call_01d_7495
    jr jr_01d_736d

Jump_01d_73e5:
    ld de, $7536
    call Call_01d_455d
    jr nc, jr_01d_73dd

    call Call_01d_74aa
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $ff
    ld l, a
    ld [hl], $78
    jr jr_01d_73dd

Jump_01d_73ff:
    ld a, $2f
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_7423

    dec a
    jr z, jr_01d_743a

    ld de, $7521
    call Call_01d_455d
    jp nc, Jump_01d_737d

    call Call_000_015c
    ld a, $2f
    add c
    ld l, a
    inc [hl]
    add $fb
    ld l, a
    ld [hl], $04
    jp Jump_01d_737d


jr_01d_7423:
    ld de, $7529
    call Call_000_015f
    call Call_000_01e6
    jp nz, Jump_01d_737d

    call Call_000_015c
    ld a, $2f
    add c
    ld l, a
    inc [hl]
    jp Jump_01d_737d


jr_01d_743a:
    ld de, $752e
    call Call_01d_455d
    jp nc, Jump_01d_737d

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $04
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    ld [hl], $04
    jp Jump_01d_737d


Call_01d_7459:
    ld de, $726e
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    cp $02
    ld a, $02
    jr c, jr_01d_746c

    ld de, $7272
    ld a, $00

jr_01d_746c:
    ld [$cc47], a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_01d_747a

    ld a, $20

jr_01d_747a:
    ld [$d3ea], a
    ld b, $25
    ld a, $08
    ld [$c3e0], a
    ld a, $85
    ld [$cc4a], a
    ld a, $36
    add c
    ld l, a
    ld [hl], $14
    ld a, $36
    call Call_01d_4534
    ret


Call_01d_7495:
    ld a, $36
    add c
    ld l, a
    ld b, [hl]
    add $f7
    ld l, a
    ld a, [hl]
    cp b
    ret z

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $04
    ret


Call_01d_74aa:
    ld l, c
    push hl
    ld de, $fc80
    ld a, $30
    call Call_01d_45f1
    ld a, $1d
    add c
    ld l, a
    ld a, l
    ld [$cc00], a
    ld a, h
    ld [$cc01], a
    ld de, $726a
    call Call_000_0201
    ld b, $15
    ld a, $00
    ld [$cddb], a
    ld a, $01
    ld [$cddc], a
    ld l, $02
    call Call_01d_74da
    pop hl
    ld c, l
    ret


Call_01d_74da:
    ld a, $80
    ld [$cde1], a
    push hl
    push de
    push bc
    xor a
    call Call_000_0159
    ld a, [$cc00]
    ld e, a
    ld a, [$cc01]
    ld d, a
    ld a, [$cde2]
    ld c, a
    ld h, $cd
    ld a, $01
    add c
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    pop bc
    pop de
    pop hl
    ret


    inc a
    ld [hl], l
    ld [$0100], sp
    rst $38
    inc a
    ld [hl], l
    ld [$0302], sp
    rst $38
    inc a
    ld [hl], l
    ld [$0504], sp
    rst $38
    inc a
    ld [hl], l
    ld a, [bc]
    ld b, $ff
    inc a
    ld [hl], l
    ld bc, $0706
    ld [$ff09], sp
    inc a
    ld [hl], l
    ld a, [bc]
    add hl, bc
    rst $38
    inc a
    ld [hl], l
    ld [$0809], sp
    rlca
    ld b, $ff
    inc a
    ld [hl], l
    ld [$0a06], sp
    rst $38
    ld d, d
    ld [hl], l
    ld a, e
    ld [hl], l
    and h
    ld [hl], l
    push de
    ld [hl], l
    ld b, $76
    dec sp
    halt
    ld [hl], b
    halt
    adc l
    halt
    or d
    halt
    db $db
    halt
    db $fc
    halt
    cp $0b
    ldh a, [c]
    ld [$f4f2], sp
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
    ld [$1af0], sp
    stop
    ld [$101b], sp
    nop
    ld [$101c], sp
    add b
    cp $0b
    di
    ld [$f4f3], sp
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
    rlca
    ldh a, [rNR33]
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    add b
    ldh a, [c]
    dec bc
    db $ed
    ld [$f8ea], sp
    ld b, $10
    nop
    ld [$1007], sp
    ld [$08f2], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0bf2], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    ld [$1af0], sp
    stop
    ld [$101b], sp
    nop
    ld [$101c], sp
    add b
    ldh a, [c]
    dec bc
    xor $08
    db $eb
    ld hl, sp+$06
    stop
    ld [$1007], sp
    ld [$08f2], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0bf2], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    rlca
    ldh a, [rNR33]
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    add b
    db $f4
    inc c
    xor $08
    ld [$0ef5], a
    stop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$0bef], sp
    stop
    ld [$100c], sp
    nop
    ld [$1014], sp
    ld [$1af0], sp
    stop
    ld [$101b], sp
    nop
    ld [$101c], sp
    add b
    db $f4
    inc c
    rst $28
    ld [$f5eb], sp
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$0bef], sp
    stop
    ld [$100c], sp
    nop
    ld [$1014], sp
    rlca
    ldh a, [rNR33]
    stop
    ld [$101e], sp
    nop
    ld [$101f], sp
    add b
    inc bc
    add hl, bc
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
    ldh a, [c]
    add hl, bc
    push af
    ld [$f8f2], sp
    ld b, $10
    nop
    ld [$1007], sp
    ld [$08f2], sp
    stop
    ld [$1009], sp
    nop
    ld [$100a], sp
    ld [$0bf2], sp
    stop
    ld [$100c], sp
    nop
    ld [$100d], sp
    add b
    or $0c
    or $08
    ldh a, [c]
    push af
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f0], sp
    stop
    ld [$1012], sp
    nop
    ld [$1013], sp
    ld [$0bef], sp
    stop
    ld [$100c], sp
    nop
    ld [$1014], sp
    add b
    rst $30
    ld [de], a
    ld a, [$fa08]
    ld hl, sp+$15
    stop
    ld [$1016], sp
    nop
    ld [$1017], sp
    ld [$0bec], sp
    stop
    ld [$100c], sp
    nop
    ld [$1018], sp
    nop
    ld [$1019], sp
    add b
    push af
    add hl, bc
    ei
    ld [$f4fa], sp
    nop
    stop
    ld [$1020], sp
    nop
    ld [$1002], sp
    ld [$03f0], sp
    stop
    ld [$1004], sp
    nop
    ld [$1005], sp
    add b
    nop
    rst $38
    ld b, b
    cp $f9
    ld b, $fb
    ld a, [bc]
    add $08
    dec b
    inc bc
    ld b, $25
    ld b, a
    nop

Jump_01d_7729:
    ld a, b
    dec b
    jr z, jr_01d_7756

    dec b
    jr z, jr_01d_7738

    dec b
    jr z, jr_01d_777e

    dec b
    ret z

    or a
    jr z, jr_01d_773b

jr_01d_7738:
    ld b, $00
    ret


jr_01d_773b:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_000_015c
    call Call_01d_42ec
    ld de, $7719
    call Call_01d_416a
    ld de, $7830
    jp Jump_000_01dd


jr_01d_7756:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_777e

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_7781

    ld de, $7812
    call Call_000_015f

jr_01d_776a:
    ld de, $771d
    call Call_01d_42a3
    bit 0, a
    call nz, Call_01d_77bb
    ldh a, [$ffa9]
    bit 1, a
    jr z, jr_01d_777e

    call Call_01d_77dc

jr_01d_777e:
    jp Jump_01d_4304


jr_01d_7781:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_77a1

    bit 1, a
    jr nz, jr_01d_77a6

    call Call_01d_77f6
    call Call_01d_455d
    jr nc, jr_01d_776a

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    jr jr_01d_776a

jr_01d_77a1:
    ld de, $7817
    jr jr_01d_77a9

jr_01d_77a6:
    call Call_01d_7804

jr_01d_77a9:
    call Call_01d_455d
    jr nc, jr_01d_777e

    call Call_000_015c
    ld a, $2c
    add c
    ld l, a
    res 0, [hl]
    res 1, [hl]
    jr jr_01d_777e

Call_01d_77bb:
    call Call_000_015c
    call Call_01d_41dd
    ld de, $7817
    call Call_01d_455d
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    set 0, [hl]
    res 1, [hl]
    add $f8
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Call_01d_77dc:
    call Call_000_015c
    call Call_01d_41e3
    call Call_01d_7804
    call Call_01d_455d
    ld a, $2b
    add c
    ld l, a
    ld [hl], $01
    add $01
    ld l, a
    res 0, [hl]
    set 1, [hl]
    ret


Call_01d_77f6:
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    ld de, $7826
    ret z

    ld de, $782b
    ret


Call_01d_7804:
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    ld de, $781c
    ret z

    ld de, $7821
    ret


    jr nc, @+$7a

    ld [$ff00], sp
    jr nc, jr_01d_7891

    inc b
    ld bc, $30ff
    ld a, b
    inc b
    ld [bc], a
    rst $38
    jr nc, jr_01d_789b

    inc b
    inc bc
    rst $38
    jr nc, @+$7a

    ld [$ff04], sp
    jr nc, @+$7a

    ld [$ff05], sp
    inc a
    ld a, b
    ld d, c
    ld a, b
    ld l, [hl]
    ld a, b
    adc e
    ld a, b
    xor b
    ld a, b
    cp l
    ld a, b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    ld [$1001], sp
    ld [$0300], sp
    stop
    ld hl, sp+$02
    db $10
    add b
    ld sp, hl
    ld b, $f7
    ld [$faf0], sp
    inc b
    db $10
    ld [$0606], sp
    stop
    ld hl, sp+$05
    db $10
    ld [$0700], sp
    stop
    ld [$1008], sp
    ld [$04fa], sp
    ld d, b
    add b
    ld hl, sp+$09
    ld a, [$fb07]
    pop af
    add hl, bc
    db $10
    cp $08
    ld a, [bc]
    stop
    ld [$100b], sp
    ld [bc], a
    ld [$3009], sp
    ld b, $f8
    dec c
    stop
    ld hl, sp+$0c
    db $10
    add b
    ld hl, sp+$09
    cp $0b
    rst $38
    pop af

jr_01d_7891:
    add hl, bc
    db $10
    cp $08
    ld a, [bc]
    stop
    ld [$100b], sp

jr_01d_789b:
    ld [bc], a
    ld [$3009], sp
    ld b, $f8
    dec c
    stop
    ld hl, sp+$0c
    db $10
    add b
    ld hl, sp+$07
    ld a, [$fa09]
    ld hl, sp+$0e
    stop
    ld [$100f], sp
    ld [$1100], sp
    stop
    ld hl, sp+$10
    db $10
    add b
    ld hl, sp+$07
    db $fc
    dec bc
    db $fc
    ld hl, sp+$12
    stop
    ld [$1013], sp
    ld [$1500], sp
    stop
    ld hl, sp+$14
    db $10
    add b
    ld b, b
    rst $38
    nop
    nop
    nop
    db $fd
    nop
    nop
    db $f4
    dec c
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ret z

    ld [$0207], sp
    inc bc
    dec b
    ld b, a
    nop

Jump_01d_78ea:
    ld a, b
    dec b
    jr z, jr_01d_791b

    dec b
    jr z, jr_01d_78fa

    dec b
    jp z, Jump_01d_797c

    dec b
    ret z

    or a
    jr z, jr_01d_7900

jr_01d_78fa:
    call Call_01d_79ec
    ld b, $00
    ret


jr_01d_7900:
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    call Call_000_015c
    call Call_01d_42ec
    ld de, $78da
    call Call_01d_46fc
    ld de, $7a0a
    jp Jump_000_01dd


jr_01d_791b:
    ld a, [$deaf]
    or a
    jr nz, jr_01d_797c

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_797f

    ld de, $79f8
    call Call_000_015f
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld b, a
    ld de, $78da
    call Call_01d_4683
    jr nc, jr_01d_795d

    ld de, $78d2
    call Call_01d_416a
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_7958

    ld de, $78da
    call Call_01d_42a3
    jr z, jr_01d_7965

    bit 1, a
    jr nz, jr_01d_7965

    jr jr_01d_795d

jr_01d_7958:
    call Call_01d_41f5
    jr jr_01d_7965

jr_01d_795d:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_01d_7965:
    call Call_01d_4523
    cp $40
    jr nc, jr_01d_797c

    call Call_000_015c
    call Call_01d_42ec
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $3c

Jump_01d_797c:
jr_01d_797c:
    jp Jump_01d_4304


jr_01d_797f:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_79ac

    ld de, $79fe
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_797c

    call Call_000_015c
    call Call_01d_42ec
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    add $ee
    ld l, a
    ld [hl], $06
    ld de, $78d6
    call Call_01d_416a
    jr jr_01d_797c

jr_01d_79ac:
    ld de, $7a04
    call Call_000_015f
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_79ca

    ld de, $78de
    call Call_01d_42a3
    jr z, jr_01d_79d5

    bit 0, a
    jr nz, jr_01d_79da

    call Call_01d_41a5
    jr jr_01d_797c

jr_01d_79ca:
    call Call_01d_41f5
    ld de, $78de
    call Call_01d_47f0
    jr c, jr_01d_79da

jr_01d_79d5:
    call Call_01d_4233
    jr jr_01d_797c

jr_01d_79da:
    ld a, $2c
    add c
    ld l, a
    res 0, [hl]
    add $ec
    ld l, a
    ld [hl], $00
    add $01
    ld l, a
    set 6, [hl]
    jr jr_01d_797c

Call_01d_79ec:
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    inc l
    inc l
    ld d, [hl]
    call Call_000_01f2
    ret


    ld a, [bc]
    ld a, d
    inc c
    nop
    ld bc, $0aff
    ld a, d
    ld b, $04
    dec b
    rst $38
    ld a, [bc]
    ld a, d
    ld b, $02
    inc bc
    rst $38
    ld d, $7a
    scf
    ld a, d
    ld e, b
    ld a, d
    ld [hl], c
    ld a, d
    adc [hl]
    ld a, d
    and a
    ld a, d
    db $fc
    dec c
    or $08
    ldh a, [c]
    db $fc
    nop
    stop
    ld [$1001], sp
    ld [$02f8], sp
    stop
    ld [$1003], sp
    ld [$04f8], sp
    stop
    ld [$1005], sp
    ld a, [$0608]
    db $10
    add b
    db $fc
    dec c
    rst $30
    ld [$fcf2], sp
    rlca
    stop
    ld [$1008], sp
    ld [$09f8], sp
    stop
    ld [$100a], sp
    ld [$0bf8], sp
    stop
    ld [$100c], sp
    ld a, [$0d08]
    db $10
    add b
    rst $30
    dec bc
    ld sp, hl
    ld [$f4f9], sp
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$13f7], sp
    stop
    ld [$1012], sp
    add b
    rst $30
    dec bc
    ld a, [$fa08]
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f7], sp
    stop
    ld [$1012], sp
    ld hl, sp+$09
    dec d
    db $10
    add b
    rst $30
    dec bc
    ld a, [$fa08]
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f7], sp
    stop
    ld [$1012], sp
    add b
    rst $30
    dec bc
    ld a, [$fa08]
    db $f4
    ld c, $10
    nop
    ld [$100f], sp
    nop
    ld [$1010], sp
    ld [$11f7], sp
    stop
    ld [$1012], sp
    or $09
    inc d
    db $10
    rlca
    nop
    inc d
    ld d, b
    add b
    ld h, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    add b
    rst $38
    nop
    inc b
    ld hl, sp+$06
    ld hl, sp+$0f
    ld hl, sp+$06
    ld hl, sp+$1a
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    ret


    ld [$0407], sp
    inc b
    dec b
    ld b, a
    nop

Jump_01d_7ae8:
    ld a, b
    dec b
    jr z, jr_01d_7b16

    dec b
    jr z, jr_01d_7af8

    dec b
    jp z, Jump_01d_7b99

    dec b
    ret z

    or a
    jr z, jr_01d_7afb

jr_01d_7af8:
    ld b, $00
    ret


jr_01d_7afb:
    ld a, $2b
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_015c
    call Call_01d_42ec
    ld de, $7ad4
    call Call_01d_471e
    ld de, $7c64
    jp Jump_000_01dd


jr_01d_7b16:
    ld a, [$deaf]
    or a
    jp nz, Jump_01d_7b99

    call Call_01d_7c0e
    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jp z, Jump_01d_7b9c

    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    jr nz, jr_01d_7b69

    ld de, $7c4f
    call Call_000_015f
    ld de, $7ac8
    call Call_01d_416a
    ld de, $7ad4
    call Call_01d_46bf
    jr nc, jr_01d_7b60

    ld a, [$d76d]
    bit 0, a
    jr nz, jr_01d_7b5b

    ld de, $7ad4
    call Call_01d_42a3
    jr z, jr_01d_7b71

    bit 0, a
    jr nz, jr_01d_7b83

    jr jr_01d_7b60

jr_01d_7b5b:
    call Call_01d_41f5
    jr jr_01d_7b71

jr_01d_7b60:
    ld a, $2c
    add c
    ld l, a
    set 0, [hl]
    call Call_01d_4193

jr_01d_7b69:
    call Call_01d_4233
    call Call_01d_4207
    jr jr_01d_7b99

jr_01d_7b71:
    ld de, $7adc
    call Call_01d_4866
    jr c, jr_01d_7b83

    call Call_01d_4523
    jr nz, jr_01d_7b99

    ld de, $7acc
    jr jr_01d_7b89

jr_01d_7b83:
    call Call_01d_7c2c
    ld de, $7ad0

jr_01d_7b89:
    call Call_01d_416a
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    add $ff
    ld l, a
    ld [hl], $0f

Jump_01d_7b99:
jr_01d_7b99:
    jp Jump_01d_4304


Jump_01d_7b9c:
    ld a, $2d
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_7bb9

    dec a
    jr z, jr_01d_7bcf

    ld de, $7c57
    call Call_01d_455d
    call Call_000_01e6
    jr nz, jr_01d_7b99

    ld a, $2d
    add c
    ld l, a
    inc [hl]
    jr jr_01d_7b99

jr_01d_7bb9:
    ld de, $7c57
    call Call_01d_455d
    call Call_01d_7c1f
    ld de, $7ad8
    call Call_01d_42a3
    push af
    call Call_01d_7c3f
    pop af
    jr jr_01d_7be4

jr_01d_7bcf:
    ld de, $7c5e
    call Call_01d_455d
    ld a, $17
    add c
    ld l, a
    ld [hl], $03
    call Call_01d_7c1f
    ld de, $7ad8
    call Call_01d_42a3

jr_01d_7be4:
    jr z, jr_01d_7b99

    bit 0, a
    jr nz, jr_01d_7b99

    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    jr nz, jr_01d_7bf7

    xor a
    ld [hl-], a
    ld [hl], a
    jr jr_01d_7b99

jr_01d_7bf7:
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    ld [hl], $00
    add $02
    ld l, a
    ld [hl], $00
    ld de, $7ad4
    call Call_01d_471e
    jp Jump_01d_7b99


Call_01d_7c0e:
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    cp $5a
    jr z, jr_01d_7c19

    inc [hl]
    ret


jr_01d_7c19:
    xor a
    ld [hl], a
    call Call_01d_42ec
    ret


Call_01d_7c1f:
    ld a, $1f
    add c
    ld l, a
    ld a, [hl]
    add $d0
    ld [hl+], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ret


Call_01d_7c2c:
    call Call_01d_419d
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    ld d, $ff
    or a
    jr nz, jr_01d_7c3b

    ld d, $01

jr_01d_7c3b:
    call Call_01d_485e
    ret


Call_01d_7c3f:
    ld a, $20
    add c
    ld l, a
    bit 7, [hl]
    ret z

    call Call_000_015c
    ld a, $2d
    add c
    ld l, a
    inc [hl]
    ret


    ld h, h
    ld a, h
    ld b, $01
    nop
    ld bc, $ff02
    ld h, h
    ld a, h
    ld [$0501], sp
    inc b
    rst $38
    ld h, h
    ld a, h
    ld [$0304], sp
    rst $38
    ld [hl], b
    ld a, h
    adc c
    ld a, h
    and d
    ld a, h
    cp e
    ld a, h
    db $e4
    ld a, h
    dec c
    ld a, l
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp-$08
    inc bc
    ld d, b
    nop
    ld [$5004], sp
    ld [$0200], sp
    ld d, b
    nop
    ld hl, sp+$01
    ld d, b
    ld [$0004], sp
    ld d, b
    add b
    ld hl, sp+$06
    ld hl, sp+$0f
    ld hl, sp-$08
    dec b
    ld d, b
    nop
    ld [$5006], sp
    ld [$02ff], sp
    ld d, b
    nop
    ld hl, sp+$01
    ld d, b
    ld [$0004], sp
    ld d, b
    add b
    rst $30
    ld b, $f8
    rrca
    ld hl, sp-$09
    add hl, bc
    ld d, b
    nop
    ld [$500a], sp
    ld [$0800], sp
    ld d, b
    nop
    ld hl, sp+$07
    ld d, b
    ld [$0003], sp
    ld d, b
    add b
    ld hl, sp+$06
    ld hl, sp+$1a
    ld hl, sp-$08
    rrca
    ld d, b
    nop
    ld [$5010], sp
    ld [$0e00], sp
    ld d, b
    nop
    ld hl, sp+$0d
    ld d, b
    ld [$0b00], sp
    ld d, b
    nop
    ld [$500c], sp
    inc bc
    rst $38
    ld [bc], a
    ld d, b
    nop
    ld hl, sp+$01
    ld d, b
    ld [$0004], sp
    ld d, b
    add b
    ld hl, sp+$06
    ld hl, sp+$1f
    ld hl, sp-$08
    dec d
    ld d, b
    nop
    ld [$5016], sp
    ld [$1400], sp
    ld d, b
    nop
    ld hl, sp+$13
    ld d, b
    ld [$1100], sp
    ld d, b
    nop

jr_01d_7cfd:
    ld [$5012], sp
    ld [$02ff], sp
    ld d, b
    nop
    ld hl, sp+$01
    ld d, b
    ld [$0004], sp
    ld d, b
    add b
    ld hl, sp+$06
    ld hl, sp+$0d
    ld hl, sp-$08
    add hl, de
    ld d, b
    nop
    ld [$501a], sp
    ld [$1800], sp
    ld d, b
    nop
    ld hl, sp+$17
    ld d, b
    ld b, $03
    nop
    ld d, b
    add b
    ld hl, sp+$06
    ld hl, sp+$07
    add b
    cp $00
    rst $38
    add b
    rst $38
    sbc a
    ld c, a
    inc de
    inc c
    db $10
    jr nz, jr_01d_7cfd

    add hl, bc
    rlca
    ld bc, $a604
    rlca
    nop

Jump_01d_7d3e:
    ld a, b
    dec b
    jr z, jr_01d_7d76

    dec b
    jr z, jr_01d_7d4d

    dec b
    jr z, jr_01d_7da5

    dec b
    ret z

    or a
    jr z, jr_01d_7d50

jr_01d_7d4d:
    ld b, $00
    ret


jr_01d_7d50:
    call Call_01d_7e0d
    ld de, $7d26
    call Call_01d_46fc
    ld d, $0f
    call Call_01d_4856
    push af
    ld a, $2d
    add c
    ld l, a
    pop af
    ld [hl], a
    ld a, $13
    add c
    ld l, a
    set 4, [hl]
    add $18
    ld l, a
    ld [hl], $00
    inc l
    ld [hl], $00
    jp Jump_000_015c


jr_01d_7d76:
    ld de, $7d26
    ld b, $2c
    call Call_01d_444b
    ld a, [$deaf]
    or a
    jr nz, jr_01d_7da5

    ld a, $2b
    add c
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_01d_7dab

    ld de, $7e53
    call Call_000_015f
    call Call_000_01e6
    jr nz, jr_01d_7da5

    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    inc [hl]
    call Call_01d_7e25
    call Call_01d_7e3b

jr_01d_7da5:
    call Call_01d_7df0
    jp Jump_01d_4304


jr_01d_7dab:
    ld de, $7e59
    call Call_000_015f
    call Call_01d_4207
    ld a, $13
    add c
    ld l, a
    ld a, [hl]
    bit 4, a
    jr z, jr_01d_7dc8

    call Call_000_01e6
    jr nz, jr_01d_7dc8

    ld a, $13
    add c
    ld l, a
    res 4, [hl]

jr_01d_7dc8:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add $0f
    cp $90
    jr c, jr_01d_7da5

    call Call_01d_7e0d
    call Call_000_015c
    ld a, $2b
    add c
    ld l, a
    dec [hl]
    add $e8
    ld l, a
    set 4, [hl]
    add $1a
    ld l, a
    ld a, [hl]
    push af
    ld a, $0f
    add c
    ld l, a
    pop af
    ld [hl], a
    jr jr_01d_7da5

Call_01d_7df0:
    ld a, $2c
    add c
    ld l, a
    ld a, [hl]
    bit 0, a
    ret z

    ld a, [$c3e8]
    cp $80
    ret nc

    ld b, a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    sub b
    push hl
    ld hl, $d725
    add [hl]
    ld [hl], a
    pop hl
    ret


Call_01d_7e0d:
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $03
    ld de, $7d30

jr_01d_7e17:
    or a
    jr z, jr_01d_7e1e

    dec a
    inc de
    jr jr_01d_7e17

jr_01d_7e1e:
    ld a, $2a
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    ret


Call_01d_7e25:
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $03
    ld de, $7d2a

jr_01d_7e2f:
    or a
    jr z, jr_01d_7e37

    dec a
    inc de
    inc de
    jr jr_01d_7e2f

jr_01d_7e37:
    call Call_01d_41d3

jr_01d_7e3a:
    ret


Call_01d_7e3b:
    ld a, $06
    add c
    ld l, a
    ld a, [hl]
    and $03
    ld de, $7d33

jr_01d_7e45:
    or a
    jr z, jr_01d_7e4c

    dec a
    inc de
    jr jr_01d_7e45

jr_01d_7e4c:
    ld a, $2a
    add c
    ld l, a
    ld a, [de]
    ld [hl], a
    ret


    ld h, c
    ld a, [hl]
    inc b
    nop
    inc b
    rst $38
    ld h, c
    ld a, [hl]
    inc b
    nop
    ld bc, $0302
    rst $38
    ld l, e
    ld a, [hl]
    add b
    ld a, [hl]
    sbc l
    ld a, [hl]
    cp d
    ld a, [hl]
    rst $10
    ld a, [hl]
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_7e80

    ld sp, hl
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, @-$7e

jr_01d_7e80:
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    stop
    rlca
    nop
    jr nc, jr_01d_7e95

    ld sp, hl
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, jr_01d_7e9d

jr_01d_7e95:
    ld sp, hl
    inc bc
    stop
    rlca
    inc bc
    jr nc, @-$7e

jr_01d_7e9d:
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp-$08
    ld bc, $0010
    rlca
    ld bc, $0830
    ld sp, hl
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, jr_01d_7eba

    ld sp, hl
    inc b
    stop
    rlca
    inc b
    jr nc, jr_01d_7e3a

jr_01d_7eba:
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp-$08
    ld bc, $0010
    rlca
    ld bc, $0830
    ld sp, hl
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, jr_01d_7ed9

    ld sp, hl
    dec b
    stop
    ld [$1006], sp
    add b
    ld hl, sp+$06

jr_01d_7ed9:
    rst $30
    ld b, $f7
    ld hl, sp+$00
    stop
    rlca
    nop
    jr nc, jr_01d_7eec

    ld sp, hl
    ld [bc], a
    stop
    rlca
    ld [bc], a
    jr nc, @-$7e

jr_01d_7eec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
