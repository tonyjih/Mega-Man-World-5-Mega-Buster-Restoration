; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    ld [hl], e
    ld b, d
    ld l, $6f
    sbc b
    ld [hl], b
    or c
    ld [hl], d
    cp e
    ld a, b
    ld d, d
    ld [hl], h
    cp b
    ld d, [hl]
    ld b, b
    ld a, d
    dec [hl]
    ld a, h
    ld [$db0b], a
    ld [$db0c], a
    ret


    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_011_401d:
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
    jr z, jr_011_4032

    dec [hl]
    xor a
    sub $01
    ret


jr_011_4032:
    inc l

jr_011_4033:
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
    jr nz, jr_011_4046

    ldh [$ff8c], a
    ld l, b
    xor a
    ret


jr_011_4046:
    cp $ff
    jr nz, jr_011_4056

    ldh [$ff8c], a
    ld [hl], $00
    ldh a, [$ff8f]
    ld e, a
    ldh a, [$ff90]
    ld d, a
    jr jr_011_4033

jr_011_4056:
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


Call_011_4068:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_011_406c:
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
    jr nz, jr_011_406c

    ret


Call_011_4089:
    push de
    ret


Call_011_408b:
    ld a, e
    ld [$d776], a
    ld a, d
    ld [$d777], a
    ld a, $01
    ld [$de29], a
    xor a
    ld [$d773], a
    ld [$d775], a

Call_011_409f:
    ld a, $20
    ld [$d771], a
    ld a, [$dece]
    or a
    jr nz, jr_011_40b2

    ld hl, $d775
    ld a, [hl]
    or a
    jr z, jr_011_40b8

    dec [hl]

jr_011_40b2:
    ld a, [$d773]
    ld d, a
    jr jr_011_40f9

jr_011_40b8:
    ld hl, $d776
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_011_40be:
    ld a, [hl+]
    or a
    jr nz, jr_011_40c9

    ld d, $00
    call Call_011_40f9
    scf
    ret


jr_011_40c9:
    cp $fe
    jr nz, jr_011_40eb

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $d778
    res 0, [hl]
    push hl
    call Call_011_4089
    pop hl
    bit 0, [hl]
    pop hl
    jr nz, jr_011_40b2

    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a
    jr jr_011_40be

jr_011_40eb:
    dec a
    ld [$d775], a
    ld d, [hl]
    inc hl
    ld a, l
    ld [$d776], a
    ld a, h
    ld [$d777], a

Call_011_40f9:
jr_011_40f9:
    ld a, [$d773]
    cpl
    and d
    ld [$d774], a
    ld a, d
    ld [$d773], a
    ret


Jump_011_4106:
    ld hl, $d778
    set 0, [hl]
    ret


Jump_011_410c:
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


    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Jump_011_4128:
jr_011_4128:
    push bc
    push af
    push hl
    ld b, $00
    call Call_000_0186
    pop hl
    ld bc, $0020
    add hl, bc
    pop af
    pop bc
    dec b
    jr nz, jr_011_4128

    ret


    ld a, e
    ld [$de75], a
    ld a, d
    ld [$de76], a
    ld a, $6f
    ld [$de73], a
    ld a, $41
    ld [$de74], a
    ret


Call_011_414e:
    ld a, [$de74]
    or a
    jr z, jr_011_416b

    xor a
    ldh [$ffab], a
    ld a, [$d70d]
    ldh [$ff8a], a
    ld a, [$d70e]
    ldh [$ff8b], a
    ld a, [$d725]
    ldh [$ff8c], a
    call Call_011_416f
    ldh a, [$ffab]

jr_011_416b:
    ld [$d70b], a
    ret


Call_011_416f:
    ldh a, [$ff8c]
    ld b, a
    cp $f0
    jr c, jr_011_4178

    ld b, $00

jr_011_4178:
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    bit 7, d
    jr z, jr_011_4185

    ld d, $00
    ld e, d

jr_011_4185:
    ld hl, $de75
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_011_418b:
    ld a, [hl+]
    ld c, a
    and [hl]
    inc a
    ret z

    ld a, e
    sub c
    ld a, d
    sbc [hl]
    jr c, jr_011_41ae

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_011_41b0

    inc hl
    ld a, b
    cp [hl]
    jr c, jr_011_41b1

    inc hl
    cp [hl]
    jr nc, jr_011_41b2

    ldh a, [$ffab]
    set 7, a
    ldh [$ffab], a
    ret


jr_011_41ae:
    inc hl
    inc hl

jr_011_41b0:
    inc hl

jr_011_41b1:
    inc hl

jr_011_41b2:
    inc hl
    jr jr_011_418b

Call_011_41b5:
Jump_011_41b5:
    ld hl, $cc00
    call Call_011_41c2
    ld hl, $c3e5
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_011_41c2:
    push hl
    call Call_011_41f1
    pop hl
    ld c, l
    jp Jump_011_421a


Call_011_41cb:
    ld a, [$de8f]
    ld b, a

jr_011_41cf:
    ld a, [hl+]
    or a
    jr z, jr_011_41d8

    cp b
    jr nz, jr_011_41cf

    ld a, $01

jr_011_41d8:
    ld [$d161], a
    ret


Call_011_41dc:
Jump_011_41dc:
    ld a, [$d161]
    or a
    ret z

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    or c
    jr nz, jr_011_4209

    push de
    call Call_000_0219
    pop de

Call_011_41f1:
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

jr_011_4209:
    ld a, [$deaf]
    and $ff
    jp nz, Jump_011_426f

    ld a, $2b
    add c
    ld l, a
    call Call_000_01e9
    jr nz, jr_011_426f

Jump_011_421a:
jr_011_421a:
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
    jr z, jr_011_4271

    cp $ff
    jr nz, jr_011_4242

    ld [hl], $00
    jr jr_011_421a

jr_011_4242:
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
    jr z, jr_011_421a

Jump_011_426f:
jr_011_426f:
    xor a
    ret


jr_011_4271:
    scf
    ret


    ld [hl], a
    ld b, d
    ld a, l
    ld b, d
    add d
    ld b, d
    sub b
    ld b, d
    sbc [hl]
    ld b, d
    add hl, bc
    rlca
    rla
    ld bc, $00ff
    ld [hl], e
    ld d, c
    call z, Call_011_4a52
    ld b, l
    db $d3
    ld b, l
    ld d, b
    nop
    ld h, e
    xor h
    ld b, d
    nop
    ld [hl], e
    ld d, c
    call z, Call_011_4a52
    ld b, l
    db $d3
    ld b, l
    ld [hl], a
    nop
    ld h, e
    cp [hl]
    ld b, e
    nop
    ld [hl], e
    ld d, c
    call z, Call_011_5152
    ld b, l
    db $d3
    ld b, l
    scf
    nop
    ld b, e
    ld [$8145], sp
    jp z, $fd45

    ld b, l
    nop
    nop
    daa
    ld bc, $ba02
    ld b, d
    nop
    nop
    ld [bc], a
    jp z, Jump_011_4f45

    ld b, [hl]
    nop
    nop
    jr nz, jr_011_42c4

    add b

jr_011_42c4:
    xor h
    ld b, d
    daa
    ld de, $dc02
    ld b, d
    ld c, h
    dec b
    ld h, b
    ld l, [hl]
    jr nz, @+$0b

    jr nc, jr_011_42d3

jr_011_42d3:
    ld c, h
    inc c
    ld h, b
    ld l, [hl]
    dec de
    rrca
    jr nz, jr_011_42db

jr_011_42db:
    nop
    inc bc
    jp z, $f145

    ld b, [hl]
    and b
    nop
    jr nz, jr_011_42ec

    add b
    cp d
    ld b, d
    daa
    ld bc, $f202

jr_011_42ec:
    ld b, d
    dec e
    inc b
    ld h, b
    nop
    nop
    inc b
    jp z, Jump_011_4345

    ld b, a
    and b
    nop
    jr nz, jr_011_42fc

    add b

jr_011_42fc:
    call c, Call_000_2142
    dec e
    ld bc, $431c
    jr nz, @+$0b

    ld d, b
    nop
    inc sp
    inc c
    ld b, b
    nop
    ld b, l
    ld de, $0062
    ld b, l
    inc d
    ld d, c
    nop
    dec de
    rla
    ld d, b
    nop
    ld b, l
    ld a, [de]
    ld d, b
    nop
    nop
    dec b
    cp l
    ld b, l
    dec [hl]
    ld c, b
    add b
    ld [bc], a
    nop
    rla
    ld [$3a02], sp
    ld b, e
    ld [bc], a
    inc bc
    jr nc, @+$05

    ld [bc], a
    inc b
    jr nc, @+$05

    jr nz, jr_011_433a

    jr nc, jr_011_4335

jr_011_4335:
    ld [bc], a
    ld [$0a30], sp
    nop

jr_011_433a:
    ld b, $ca
    ld b, l
    add a
    ld c, b
    add b
    ld [bc], a
    db $10
    ld [$1c80], sp

Jump_011_4345:
    ld b, e
    rla
    ld bc, $5802
    ld b, e
    ld [bc], a
    ld [bc], a
    jr nz, jr_011_4359

    ld [bc], a
    inc bc
    jr nz, jr_011_435c

    jr nz, jr_011_4358

    ld h, b
    nop
    nop

jr_011_4358:
    rlca

jr_011_4359:
    jp z, $d945

jr_011_435c:
    ld c, b
    add b
    ld [bc], a
    db $10
    ld bc, $3a80
    ld b, e
    ld [hl], b
    ld sp, $9601
    ld b, e
    ld c, h
    inc b
    ld h, b
    ld b, [hl]
    jr nz, jr_011_4375

    ld h, b
    nop
    inc sp
    inc c
    ld h, b
    nop

jr_011_4375:
    ld c, h
    rrca
    ld h, b
    ld e, $02
    ld de, $0220
    ld c, h
    ld [de], a
    ld h, b
    ld l, [hl]
    inc sp
    jr jr_011_43c4

    nop
    ld b, l
    dec e
    ld h, d
    nop
    ld b, l
    ld [hl+], a
    ld h, d
    nop
    ld b, l
    dec h
    ld h, c
    nop
    dec de
    add hl, hl
    ld h, b
    nop
    nop
    ld [$45ba], sp
    ld l, e
    ld c, d
    and b
    dec b
    nop
    ld b, b
    add hl, bc
    ld bc, $43a8
    ld c, e
    nop
    nop
    inc a
    nop
    add hl, bc
    cp l
    ld b, l
    cp l
    ld c, d
    ld b, b
    ld b, $00
    daa
    rlca
    ld [bc], a
    cp [hl]
    ld b, e
    ld c, h
    rlca
    jr nz, jr_011_43ff

    ld [bc], a
    ld [$0620], sp
    nop
    ld a, [bc]
    jp z, $0f45

    ld c, e
    ld b, b

jr_011_43c4:
    ld b, $20
    rlca
    add b
    xor b
    ld b, e
    ld d, a
    ld bc, $d002
    ld b, e
    nop
    dec bc
    jp z, Jump_011_6145

    ld c, e
    ld b, b
    ld b, $50
    ld bc, $be80
    ld b, e
    add a
    ld bc, $ee02
    ld b, e
    ld [bc], a
    ld bc, $0360
    ld [bc], a
    ld [bc], a
    jr nc, jr_011_43ec

    ld [bc], a
    ld [bc], a
    ld d, b

jr_011_43ec:
    inc bc
    nop
    inc c
    jp z, $b345

    ld c, e
    ld b, b
    ld b, $80
    ld bc, $d080
    ld b, e
    add a
    ld bc, $0402
    ld b, h

jr_011_43ff:
    ld [bc], a
    ld [$0a30], sp
    nop
    dec c
    jp z, Jump_000_0545

    ld c, h
    ld b, b
    ld b, $80
    ld bc, $ee80
    ld b, e
    inc hl
    add hl, bc
    ld bc, $4422
    ld c, h
    inc bc
    ld h, b
    ld l, [hl]
    ld c, h
    dec b
    ld h, b
    ld l, [hl]
    dec e
    ld [$0060], sp
    nop
    ld c, $c3
    ld b, l
    ld d, a
    ld c, h
    ldh [rTMA], a
    nop
    daa
    ld de, $3c02
    ld b, h
    ld b, l
    rlca
    ld h, b
    nop
    ld b, l
    add hl, bc
    ld h, d
    nop
    inc e
    db $10
    ld d, b
    nop
    nop
    rrca
    jp z, $f945

    ld c, h
    add b
    rlca
    jr nz, @+$09

    add b
    ld [hl+], a
    ld b, h
    dec h
    add hl, bc
    ld bc, $4452
    inc sp
    ld [bc], a
    ld h, b
    nop
    nop
    db $10
    cp l
    ld b, l
    ld c, e
    ld c, l
    jr nz, jr_011_4461

    nop
    jr nz, jr_011_4463

    add b
    ld h, h
    ld b, h
    inc e
    rlca

jr_011_4461:
    ld b, b
    nop

jr_011_4463:
    nop
    ld de, $45ca
    sbc l
    ld c, l
    jr nz, jr_011_4473

    daa
    rlca
    ld [bc], a
    ld d, d
    ld b, h
    jr nz, jr_011_4473

    add b

jr_011_4473:
    ld a, d
    ld b, h
    jr nz, jr_011_4479

    ld h, b
    nop

jr_011_4479:
    nop
    ld [de], a
    jp z, $ef45

    ld c, l
    jr nz, @+$0a

    daa
    ld bc, $6402
    ld b, h
    daa
    ld de, $9c02
    ld b, h
    ld c, h
    dec b
    ld h, b
    ld l, [hl]
    dec e
    rlca
    ld h, b
    nop
    dec de
    dec c
    ld h, b
    nop
    ld [bc], a
    ld [de], a
    jr nz, jr_011_44a1

    nop
    inc de
    jp z, $9145

    ld c, [hl]

jr_011_44a1:
    ret nz

    ld [$0720], sp
    add b
    ld a, d
    ld b, h
    daa
    ld bc, $b202
    ld b, h
    dec de
    inc bc
    ld h, b
    nop
    nop
    inc d
    cp l
    ld b, l
    db $e3
    ld c, [hl]
    ret nz

    ld [$0120], sp
    add b
    sbc h
    ld b, h
    ld [hl], b
    add hl, bc
    ld bc, $44d0
    ld c, h
    inc bc
    ld h, b
    ld b, [hl]
    ld c, h
    ld b, $60
    ld b, [hl]
    dec e
    ld [$0060], sp
    nop
    dec d
    cp d
    ld b, l
    ld l, e
    ld c, d
    ld h, b
    add hl, bc
    nop
    ld b, b
    add hl, bc
    ld bc, $44e2
    ld c, e
    nop
    nop
    or h
    nop
    ld d, $62
    ld b, l
    dec [hl]
    ld c, a
    nop
    ld a, [bc]
    nop
    inc sp
    jr nc, @+$03

    ld [$1b45], sp
    dec b
    ld b, b
    nop
    dec de
    inc c
    ld h, b
    nop
    inc sp
    inc d
    ld h, b
    nop
    inc sp
    ld a, [de]
    ld b, b
    nop
    ld [bc], a
    dec h
    jr nc, jr_011_450d

    inc e
    ld l, $50
    nop
    nop
    rla
    ld [hl], l
    ld b, l
    rst $00
    ld d, b

jr_011_450d:
    jr nz, @+$0f

    nop
    ld sp, $0108
    inc h
    ld b, l
    nop
    rla
    ld [hl], e
    ld b, l
    rst $00
    ld d, b
    jr nz, jr_011_452a

    nop
    ld sp, $0109
    inc h
    ld b, l
    nop
    ret c

    adc e
    ld b, l
    add hl, de
    ld d, c
    ret nz

jr_011_452a:
    dec c
    nop
    nop
    ld a, [hl-]
    add hl, bc
    ld h, b
    nop
    nop
    inc bc
    ld sp, $0003
    nop
    nop
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $232e
    dec h
    inc bc
    nop
    ld bc, $0303
    inc bc
    ld de, $5333
    jp Jump_011_41b5


    ret


    ld de, $5333
    call Call_011_41b5
    ld a, $38
    ld [$d85c], a
    ld a, $45
    ld [$d85d], a
    ret


    ld a, $32
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    ld a, $40
    ld [$d821], a
    jr jr_011_45cc

    jr jr_011_457f

    ld a, $38
    ld [$d85a], a
    ld a, $45
    ld [$d85b], a

jr_011_457f:
    ld a, $3e
    ld [$d858], a
    ld a, $45
    ld [$d859], a
    jr jr_011_45cc

    ld a, $44
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
    jr jr_011_45cc

    call $56b3
    ld a, $40
    ld [$d821], a
    ret


    ld a, $60
    ld [$d821], a
    jr jr_011_45cc

    jr jr_011_45cc

jr_011_45cc:
    ld hl, $5322
    call Call_011_41cb
    ret


    ld de, $5342
    call Call_011_41dc
    call Call_011_414e
    ret


    ldh [rP1], a
    ret nc

    ld bc, $8000
    rst $38
    rst $38
    and b
    ld bc, $0280
    nop
    add b
    rst $38
    rst $38
    ld b, b
    nop
    ret nz

    nop
    nop
    add b
    rst $38
    rst $38
    or b
    ld bc, $0210
    nop
    add b
    rst $38
    rst $38
    ld a, [bc]
    ld [$0f0e], sp
    ld [de], a
    inc de
    ld [hl+], a
    dec h
    ld [de], a
    inc de
    ld c, $0f
    dec d
    ld a, $3e
    dec l
    jr nz, jr_011_4632

    ld a, $3e
    cpl
    dec d
    ld d, $00
    nop
    ld h, $22
    dec h
    nop
    nop
    inc h
    ld d, $17
    nop
    nop
    ld h, $22
    dec h
    nop
    nop
    ld h, $17
    inc d
    dec sp
    dec sp
    inc h
    jr nz, jr_011_4650

    ccf
    ccf
    inc h
    inc d
    dec d

jr_011_4632:
    daa
    daa
    ld h, $22
    dec h
    ld a, [hl-]
    ld a, [hl-]
    ld h, $15
    ld d, $27
    daa
    ld [de], a
    inc de
    jr jr_011_4654

    inc de
    jr jr_011_465b

    rla
    daa
    daa
    ld a, [bc]
    dec bc
    add hl, de
    ld a, [bc]
    dec bc
    add hl, de
    rla
    inc d

jr_011_4650:
    ld [$2713], sp
    daa

jr_011_4654:
    inc c
    dec c
    inc d
    inc c
    dec c
    inc d
    ld [de], a

jr_011_465b:
    inc de
    dec h
    ld h, $25
    ld h, $22
    dec h
    daa
    daa
    dec d
    dec d
    daa
    daa
    cpl
    dec hl
    ld l, $41
    ld b, c
    cpl
    dec hl
    ld l, $25
    ld h, $25
    inc h
    jr nz, jr_011_4699

    daa
    daa
    ld d, $16
    inc a
    inc a
    inc h
    jr nz, jr_011_46a2

    ld b, b
    ld b, b
    inc h
    jr nz, jr_011_46a7

    dec h
    ld h, $25
    ld h, $22
    dec h
    inc a
    inc a
    rla
    rla
    nop
    nop
    ld h, $22
    dec h
    nop
    nop
    ld h, $22
    dec h
    dec h

jr_011_4699:
    ld h, $02
    inc d
    add hl, sp
    inc d
    nop
    nop
    ld [de], a
    inc de

jr_011_46a2:
    nop
    nop
    ld h, $22
    dec h

jr_011_46a7:
    nop
    nop
    ld h, $14
    add hl, sp
    dec h
    ld h, $01
    dec l
    add hl, hl
    inc l
    nop
    nop
    jr jr_011_46cb

    dec sp
    dec sp
    inc h
    jr nz, jr_011_46de

    ccf
    ccf
    inc h
    ld a, [bc]
    dec bc
    dec h
    ld h, $2e
    ld h, $22
    dec h
    dec sp
    dec sp
    add hl, de
    ld d, $27

jr_011_46cb:
    daa
    ld h, $22
    dec h
    ld a, [hl-]
    ld [de], a
    inc de
    inc c
    dec c
    dec h
    ld h, $25
    ld h, $22
    dec h
    daa
    daa
    ld a, [bc]
    rla

jr_011_46de:
    inc d
    add hl, sp
    ld c, $0f
    ld [hl], $15
    ld c, $0f
    ld a, [bc]
    dec bc
    jr @+$38

    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    daa
    daa
    inc c
    ld a, [bc]
    ld [$190d], sp
    rla
    ld [de], a
    inc de
    inc c
    dec c
    daa
    daa
    ld [de], a
    jr @+$32

    jr nc, jr_011_4730

    ld b, c
    dec hl
    ld l, $27
    daa
    dec d
    add hl, de
    inc a
    inc a
    inc h
    ld hl, $2320
    inc a
    inc a
    ld d, $13
    nop
    nop
    ld h, $3a
    ld [hl+], a
    dec h
    nop
    nop
    rla
    dec d
    nop
    nop
    inc h
    ld hl, $2320
    nop
    nop
    ld [de], a
    ld d, $3b
    dec sp
    ld h, $3a
    ld [hl+], a
    dec h
    dec sp
    dec sp
    jr jr_011_4747

jr_011_4730:
    daa
    daa
    inc h
    ld hl, $2320
    daa
    daa
    add hl, de
    inc de
    daa
    daa
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    ld b, d
    inc de
    ld e, $08
    inc d
    daa

jr_011_4747:
    daa
    ld [de], a
    inc de
    ld c, $0f
    inc d
    ld c, $0f
    rla
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    ld [$0808], sp
    rla
    rla
    dec d
    inc a
    inc a
    cpl
    ld l, $00
    nop
    cpl
    dec hl
    ld b, c
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $00
    nop
    inc h
    inc hl
    nop
    nop
    inc h
    jr nz, jr_011_47ac

    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    nop
    ld h, $25
    nop
    nop
    ld h, $22
    ld a, [hl-]
    dec h
    nop
    nop

jr_011_47ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    inc de
    dec sp
    dec sp
    inc h
    inc hl
    nop
    nop
    inc h
    jr nz, jr_011_47e8

    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $18
    daa
    daa
    ld h, $25
    nop
    nop
    ld h, $22
    ld a, [hl-]
    dec h
    ld [de], a
    inc de

jr_011_47e8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    rla
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    nop
    nop
    ld b, e
    ld b, e
    jr jr_011_480e

    dec bc
    jr jr_011_4807

jr_011_4807:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a

jr_011_480e:
    nop
    nop
    ld [de], a
    inc de
    nop
    ld [hl-], a
    dec d
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    dec d
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    add hl, de
    inc c
    dec c
    add hl, de
    ld [de], a
    inc de
    nop
    nop
    ld [hl-], a
    ld a, [bc]
    dec bc
    inc sp
    nop
    nop
    dec d
    dec d
    nop
    inc sp
    ld d, $0c
    dec c
    ld a, [bc]
    ld [$1312], sp
    db $10
    ld c, $0f
    ld de, $0d0c
    add hl, de
    dec d
    cpl
    ld b, c
    dec hl
    ld l, $00
    nop
    ld b, a
    jr nc, jr_011_487a

    rla
    inc h
    ld hl, $2320
    nop
    nop
    ld b, l
    daa
    daa
    jr jr_011_486b

    ld a, [hl-]
    ld [hl+], a
    dec h
    nop
    nop
    ld b, l
    daa
    daa
    add hl, de
    rla
    ld hl, $1220
    inc de
    nop
    ld b, l
    ld [de], a
    ld b, d
    inc de
    inc d
    ld a, [hl-]

jr_011_486b:
    ld [hl+], a
    ld l, $00
    nop
    ld b, l
    jr nc, jr_011_48a2

    dec d
    dec d
    ld hl, $2320
    nop
    nop
    ld b, l

jr_011_487a:
    daa
    daa
    ld d, $17
    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    jr jr_011_488e

    dec bc
    ld [bc], a
    rla
    ld a, [bc]
    ld [$0e10], sp
    rrca
    inc c
    dec c

jr_011_488e:
    add hl, de
    inc c
    dec c
    ld bc, $1815
    ld a, [hl+]
    add hl, hl
    inc l
    nop
    nop
    ld b, a
    jr nc, @+$03

    ld d, $19
    ld a, [hl-]
    ld [hl+], a
    dec h
    nop

jr_011_48a2:
    nop
    ld b, l
    daa
    jr nc, @+$19

    inc de
    ld hl, $1312
    nop
    nop
    ld b, l
    daa
    daa
    ld [de], a
    dec d
    ld a, [hl-]
    dec hl
    ld l, $00
    nop
    ld b, l
    daa
    daa
    dec d
    ld d, $21
    jr nz, jr_011_48e2

    nop
    nop
    ld b, l
    daa
    daa
    ld d, $17
    ld a, [hl-]
    ld [hl+], a
    dec h
    nop
    nop
    ld b, l
    daa
    daa
    rla
    inc de
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    ld [hl-], a
    ld [$0115], sp
    inc c
    dec c
    ld c, $0f
    inc c

jr_011_48e2:
    dec c
    db $10
    ld c, $0f
    ld de, $1312
    db $10
    ld c, $0f
    ld de, $1312
    db $10
    ld c, $17
    ld [$0808], sp
    rla
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $3a
    ld [hl+], a
    dec h
    ld d, $01
    dec hl
    ld l, $00
    nop
    ld b, a
    jr nc, jr_011_4946

    jr nc, jr_011_4947

    ld b, c
    dec hl
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    inc h
    ld hl, $2320
    rla
    ld bc, $2320
    nop
    nop
    ld b, l

jr_011_4946:
    daa

jr_011_4947:
    daa
    daa
    inc h
    ld hl, $2320
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $3a
    ld [hl+], a
    dec h
    inc de
    ld b, c
    ld [hl+], a
    dec h
    nop
    nop
    ld b, l
    daa
    daa
    daa
    ld h, $3a
    ld [hl+], a
    dec h
    nop
    ld [bc], a
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ld hl, $2320
    jr z, jr_011_49c6

    jr nz, jr_011_49ca

    nop
    nop
    ld b, l
    daa
    daa
    daa
    inc h
    ld hl, $2320
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
    nop
    nop
    nop
    nop

jr_011_49c6:
    nop
    nop
    nop
    nop

jr_011_49ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $3a
    ld [hl+], a
    dec h
    jr z, jr_011_4a1a

    ld b, e
    ld b, e
    nop
    nop
    ld c, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ld hl, $2320
    jr z, jr_011_4a09

jr_011_4a09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_4a1a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    dec d
    dec d
    nop
    nop
    nop
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
    ld a, [hl-]
    ld [hl+], a
    dec h
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    ld [hl], $0a
    dec bc
    db $10
    ld c, $0f
    ld de, $0b0a
    ld [de], a
    inc de
    ld [hl], $0a
    dec bc
    ld [hl], $00
    dec d
    dec d
    dec d
    nop
    ld [de], a

Call_011_4a52:
    inc de
    ld a, [bc]
    dec bc
    nop
    ld [hl-], a
    nop
    ld d, $16
    nop
    ld [hl-], a
    ld [de], a
    inc de
    ld [hl-], a
    nop
    nop
    dec d
    ld de, $0015
    nop
    ld a, [bc]
    dec bc
    ld c, $0f
    dec d
    ld a, [bc]
    ld [$3a3a], sp
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld c, d
    ld c, e
    ld c, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, b
    ld d, c
    ld d, d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, e
    ld d, h
    ld d, l
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld [de], a
    ld b, d
    inc de
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [de]
    inc e
    dec e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld e, $1f
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$3a26], sp
    ld [hl+], a
    dec h
    ld [de], a
    inc de
    db $10
    ld c, $0f
    ld de, $2124
    jr nz, jr_011_4af0

    nop
    nop
    ld b, a
    jr nc, jr_011_4b02

    dec d
    ld h, $3a
    ld [hl+], a
    dec h
    nop
    nop
    ld b, l
    daa
    daa
    rla
    inc h
    ld hl, $2320
    nop
    nop
    ld b, l
    jr c, jr_011_4af8

    inc de
    dec d
    ld a, [hl-]
    ld [hl+], a
    dec h
    nop
    nop
    ld b, l
    jr nc, @+$32

jr_011_4af0:
    jr jr_011_4b08

    ld a, [bc]
    dec bc
    inc hl
    nop
    nop
    ld b, l

jr_011_4af8:
    daa
    daa
    add hl, de
    rla
    inc c
    dec c
    ld [de], a
    inc de
    nop
    ld b, l

jr_011_4b02:
    daa
    daa
    ld [de], a
    ld a, [bc]
    dec bc
    ld [de], a

jr_011_4b08:
    inc de
    ld a, [bc]
    dec bc
    add hl, sp
    daa
    daa
    add hl, sp
    ld a, [bc]
    ld [$0d0c], sp
    ld c, $0f
    inc c
    dec c
    inc d
    daa
    daa
    ld [de], a
    inc de
    jr nc, @+$48

    ld b, a
    jr nc, jr_011_4b67

    ld b, a
    daa
    daa
    dec d
    jr jr_011_4b4e

    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    ld d, $19
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    rla
    inc de
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    ld [de], a
    dec d
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    jr @+$18

jr_011_4b4e:
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    add hl, de
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld a, [bc]
    dec bc
    ld c, $0f
    ld a, [bc]
    ld [$2713], sp
    ld b, h
    ld b, l

jr_011_4b67:
    daa
    ld b, h
    inc c
    dec c
    ld [de], a
    inc de
    dec d
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, a
    jr nc, jr_011_4ba6

    dec d
    ld d, $27
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    rla
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    jr jr_011_4b9f

    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    add hl, de
    dec d
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    dec d

jr_011_4b9f:
    ld d, $27
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l

jr_011_4ba6:
    daa
    daa
    rla
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    ld [de], a
    ld a, [bc]
    ld [$2715], sp
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    dec d
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    rla
    inc de
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    dec d
    dec d
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    rla
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    ld [de], a
    inc de
    inc de
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    jr nc, @+$14

    dec d
    ld [$4544], sp
    ld [$4544], sp
    ld [$1527], sp
    rla
    jr nc, jr_011_4c42

    ld b, l
    jr nc, jr_011_4c45

    ld b, l
    jr nc, jr_011_4c2b

    rla
    ld a, [bc]
    ld [$2713], sp
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    inc d
    dec d
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    dec d
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    rla
    inc de
    daa
    ld b, h
    ld b, l
    daa
    ld b, h

jr_011_4c2b:
    ld b, l
    daa
    daa
    ld b, [hl]
    dec d
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    ld b, h
    rla
    daa
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa

jr_011_4c42:
    dec d
    inc de
    daa

jr_011_4c45:
    ld b, h
    ld b, l
    daa
    ld b, h
    ld b, l
    daa
    daa
    rla
    ld a, [bc]
    dec bc
    dec d
    scf
    dec d
    scf
    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    inc d
    ld [$1215], sp
    inc de
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    db $10
    ld c, $0f
    ld de, $0d0c
    ld [de], a
    inc de
    db $10
    ld c, $0f
    ld de, $1615
    jr nc, jr_011_4cb6

    inc c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    nop
    cpl
    ld b, c
    dec hl
    ld l, $16
    rla
    daa
    ld b, h
    nop
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
    nop
    inc h
    ld hl, $2320
    rla
    ld b, a
    daa
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
    ld h, $3a
    ld [hl+], a
    dec h
    ld [de], a
    ld b, l
    daa
    ld b, h
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_4cb6:
    nop
    nop
    inc h
    ld hl, $2320
    dec d
    ld a, [de]
    inc e
    dec e
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    ld h, $3a
    ld [hl+], a
    dec h
    ld d, $18
    ld e, $1f
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    jr nz, @+$25

    rla
    add hl, de
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    inc d
    dec d
    ld [hl-], a
    dec d
    ld [hl-], a
    inc d
    add hl, sp
    ld c, $0f
    ld de, $0d0c
    ld [hl+], a
    dec h
    ld [de], a
    ld a, [bc]
    ld [$1013], sp
    ld c, $0f
    ld de, $1312
    jr nz, jr_011_4d27

    jr jr_011_4d1e

    jr nc, jr_011_4d38

    ld b, [hl]
    nop
    cpl
    ld b, c
    ld [hl+], a
    dec h
    add hl, de
    add hl, de
    daa
    daa
    ld b, h
    nop
    inc h
    ld hl, $2320
    dec d
    inc de
    daa
    daa
    ld b, h
    nop

jr_011_4d1e:
    ld h, $3a
    ld [hl+], a
    dec h
    ld d, $18
    daa
    daa
    ld b, h

jr_011_4d27:
    inc d
    db $10
    ld c, $0f
    ld de, $1917
    daa
    daa
    ld b, h
    nop
    cpl
    ld b, c
    dec hl
    ld l, $00
    inc de

jr_011_4d38:
    daa
    daa
    ld b, h
    nop
    inc h
    ld hl, $2320
    nop
    ld a, [bc]
    dec bc
    dec d
    ld a, [bc]
    dec bc
    jr @+$0c

    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$1015], sp
    ld c, $0f
    ld de, $0d0c
    nop
    ld bc, $1715
    cpl
    ld b, c
    dec hl
    ld l, $29
    inc l
    nop
    ld bc, $1417
    ld h, $3a
    ld [hl+], a
    dec h
    ld [hl+], a
    dec h
    nop
    ld bc, $1512
    inc h
    ld hl, $2320
    ld [hl+], a
    dec h
    nop
    nop
    dec d
    rla
    ld h, $3a
    ld [hl+], a
    dec h
    ld [hl+], a
    dec h
    nop
    nop
    rla
    nop
    ld h, $3a
    ld [hl+], a
    dec h
    jr nz, jr_011_4da9

    ld a, [de]
    inc e
    dec e
    nop
    inc h
    ld hl, $2320
    ld [hl+], a
    dec h
    nop
    ld e, $1f
    ld [de], a
    inc de
    dec d
    ld [de], a
    inc de
    dec d
    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$0113], sp
    nop
    inc c
    dec c
    rla
    inc c
    dec c
    ld [de], a
    inc de

jr_011_4da9:
    jr jr_011_4dac

    nop

jr_011_4dac:
    ld b, a
    jr nc, jr_011_4ddf

    ld b, [hl]
    nop
    nop
    jr jr_011_4dcd

    ld bc, $4500
    daa
    daa
    ld b, h
    nop
    nop
    add hl, de
    inc de
    ld bc, $4500
    daa
    daa
    ld b, h
    nop
    nop
    ld [de], a
    jr jr_011_4dc9

jr_011_4dc9:
    nop
    ld b, l
    daa
    daa

jr_011_4dcd:
    ld b, h
    nop
    nop
    jr @+$1b

    nop
    nop
    ld b, l
    daa
    daa
    ld b, h
    nop
    nop
    add hl, de
    dec d
    nop
    nop
    ld b, l

jr_011_4ddf:
    daa
    daa
    ld b, h
    nop
    nop
    dec d
    rla
    db $10
    ld c, $0f
    ld de, $0b0a
    nop
    ld [bc], a
    rla
    inc d
    ld [$0a13], sp
    dec bc
    rla
    inc c
    dec c
    db $10
    ld c, $0f
    add hl, de
    inc c
    dec c
    db $10
    ld c, $0f
    ld de, $0d0c
    db $10
    ld c, $15
    inc c
    dec c
    jr jr_011_4e3a

    jr nc, jr_011_4e3c

    ld [$0046], sp
    ld [$2e2b], sp
    nop
    nop
    ld [$002c], sp
    nop
    jr jr_011_4e30

    ld a, [bc]
    dec bc
    add hl, de
    daa
    daa
    daa
    jr nc, jr_011_4e66

    nop
    dec l
    jr nz, jr_011_4e49

    nop
    nop
    cpl
    dec h
    nop
    nop
    add hl, de
    rla
    inc c
    dec c

jr_011_4e30:
    inc d
    ld [bc], a
    ld [de], a
    inc de
    daa
    ld [de], a
    inc de
    ld h, $14
    dec h

jr_011_4e3a:
    inc d
    db $10

jr_011_4e3c:
    ld c, $0f
    inc d
    db $10
    ld de, $0013
    nop
    ld b, a
    ld bc, $3030
    daa

jr_011_4e49:
    ld b, [hl]
    nop
    ld h, $2b
    dec h
    nop
    nop
    dec l
    inc l
    nop
    nop
    dec d
    dec d
    nop
    nop
    ld b, l
    jr nc, jr_011_4e82

    daa
    daa
    ld b, h
    nop
    inc h
    jr nz, jr_011_4e85

    nop
    nop
    ld h, $25

jr_011_4e66:
    nop
    nop
    ld d, $16
    nop
    nop
    ld b, l
    daa
    daa
    daa
    daa
    ld b, h
    nop
    ld h, $22
    dec h
    nop
    nop
    inc h
    inc hl
    nop
    nop
    rla
    rla
    ld [bc], a
    nop
    ld a, [bc]
    dec bc

jr_011_4e82:
    ld [hl], $0a
    dec bc

jr_011_4e85:
    add hl, sp
    ld [de], a
    ld b, d
    inc de
    ld a, [bc]
    dec bc
    dec d
    ld a, [bc]
    dec bc
    nop
    nop
    ld [de], a
    ld a, [bc]
    ld [$1312], sp
    inc c
    dec c
    rla
    inc c
    dec c
    nop
    nop
    jr jr_011_4eb6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld [de], a
    inc de
    nop
    nop
    ld b, l
    daa

jr_011_4eb6:
    daa
    ld b, h
    nop
    nop
    jr jr_011_4ed4

    nop
    nop
    ld b, l
    daa
    daa
    ld b, h
    nop
    nop
    add hl, de
    add hl, de
    nop
    nop
    ld b, l
    daa
    daa
    ld b, h
    nop
    ld a, [de]
    inc e
    dec bc
    dec a
    dec a
    dec a
    dec a

jr_011_4ed4:
    dec a
    ld a, [de]
    inc e
    dec e
    ld e, $0d
    nop
    nop
    db $10
    ld c, $0f
    ld de, $1f1e
    jr z, jr_011_4eee

    ld [$0013], sp
    nop
    ld b, a
    jr nc, @+$32

    cpl
    dec hl
    ld b, c

jr_011_4eee:
    ld l, $15
    nop
    nop
    ld b, l
    daa
    daa
    inc h
    jr nz, @+$23

    inc hl
    rla
    dec a
    dec a
    dec a
    dec a
    dec a
    ld h, $22
    ld a, [hl-]
    dec h
    inc de
    nop
    nop
    nop
    nop
    nop
    inc h
    jr nz, jr_011_4f2d

    inc hl
    dec d
    nop
    nop
    nop
    nop
    nop
    ld h, $22
    ld a, [hl-]
    dec h
    rla
    ld a, $3e
    ld a, $3e
    ld a, $24
    jr nz, jr_011_4f41

    inc hl
    inc de
    nop
    nop
    ld b, l
    daa
    daa
    ld h, $22
    ld a, [hl-]
    dec h
    dec d
    db $10

jr_011_4f2d:
    ld c, $36
    db $10
    ld c, $36
    db $10
    ld c, $15
    ld [hl-], a
    ld [$2226], sp
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_4f41:
    nop
    nop
    nop
    nop

Jump_011_4f45:
    nop
    nop
    inc c
    dec c
    db $10
    ld c, $0f
    ld de, $0d0c
    db $10
    ld c, $0f
    ld de, $1312
    db $10
    ld c, $0f
    inc d
    ld c, $0f
    dec d
    ld c, $0f
    ld de, $0e17
    rrca
    ld [de], a
    inc de
    db $10
    ld c, $0f
    ld de, $2417
    jr nz, jr_011_4f8f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    jr nc, jr_011_4fad

    jr nc, jr_011_4faf

    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$341a], sp
    dec [hl]
    rla
    cpl

jr_011_4f8f:
    dec hl
    ld b, c
    ld l, $30
    jr nc, @+$2f

    ld a, [hl+]
    add hl, hl
    inc l
    nop
    inc b
    dec b
    ld h, $22
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l

jr_011_4fad:
    daa
    daa

jr_011_4faf:
    daa
    daa
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
    ld a, [de]
    inc e
    dec e
    jr jr_011_4fe5

    jr nz, jr_011_4fe4

    inc hl
    daa
    daa
    ld h, $3a
    ld [hl+], a
    dec h
    nop
    ld b, $07
    inc h
    jr nz, @+$25

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    daa
    daa
    daa
    daa
    ld b, h

jr_011_4fe4:
    nop

jr_011_4fe5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    add hl, de
    ld h, $22
    ld a, [hl-]
    dec h
    daa
    daa
    inc h
    ld hl, $2320
    nop
    nop
    inc bc
    add hl, sp
    jr jr_011_5017

    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    daa
    daa
    daa
    daa
    ld b, h
    nop

jr_011_5017:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    ld c, $0f
    inc d
    jr nz, jr_011_5048

    inc hl
    daa
    daa
    ld h, $3a
    ld [hl+], a
    dec h
    nop
    nop
    inc bc
    jr z, jr_011_504c

    rla
    nop
    nop
    dec d
    nop
    nop
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, c

jr_011_5048:
    nop
    nop
    inc [hl]
    dec [hl]

jr_011_504c:
    nop
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
    ld [hl+], a
    ld a, [hl-]
    dec h
    daa
    daa
    inc h
    ld hl, $2320
    nop
    nop
    inc bc
    ld c, $0f
    add hl, sp
    nop
    nop
    ld d, $00
    nop
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    inc e
    dec e
    jr z, jr_011_507f

jr_011_507f:
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    inc e
    dec e
    jr jr_011_50af

    jr nz, @+$23

    inc d
    daa
    daa
    inc d
    ld a, [hl-]
    ld [hl+], a
    inc d
    dec d
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec d
    nop
    nop
    ld d, $00
    nop
    ld d, $12
    inc de
    nop
    dec d
    nop
    nop
    nop
    ld e, $1f
    db $10
    ld c, $0f
    ld de, $0015
    ld e, $1f

jr_011_50af:
    jr z, @+$3b

    nop
    nop
    ld [de], a
    inc de
    nop
    nop
    ld e, $1f
    add hl, de
    db $10
    ld c, $0f
    ld de, $0e10
    rrca
    ld de, $0b0a
    ld d, $0c
    dec c
    ld a, [bc]
    ld [$0e15], sp
    rrca
    ld a, [bc]
    dec bc
    db $10
    ld c, $0f
    ld de, $1617
    ld a, [bc]
    dec bc
    inc c
    dec c
    nop
    cpl
    ld b, c
    dec hl
    inc bc
    rla
    inc c
    dec c
    jr nc, @+$48

    nop
    inc h
    ld hl, $0320
    nop
    ld b, a
    jr nc, jr_011_5112

    ld b, h
    nop
    ld h, $3a
    ld [hl+], a
    inc bc
    nop
    ld b, l
    daa
    daa
    ld b, h
    ld a, [de]
    inc e
    dec e
    ld a, [bc]
    dec bc
    nop
    ld b, l
    daa
    ld a, [de]
    inc e
    dec e
    ld e, $1f
    inc c
    dec c
    dec d
    ld a, [bc]
    dec bc
    jr nc, @+$20

    rra
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld d, $0c
    dec c

jr_011_5112:
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc c
    dec c
    dec bc
    ld [$1017], sp
    ld c, $0f
    inc c
    dec c
    rla
    ld c, $0f
    ld de, $3e15
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $17
    nop
    ld h, $22
    dec h
    nop
    nop
    nop
    ld h, $22
    dec h
    ld [de], a
    nop
    inc h
    jr nz, jr_011_5163

    ld a, $3e
    ld a, $26
    ld [hl+], a
    dec h
    dec d
    dec d
    ld h, $22
    dec h
    daa
    daa
    daa
    inc h
    jr nz, jr_011_5174

    rla

Call_011_5152:
    ld d, $26
    ld [hl+], a
    dec h
    daa
    daa
    daa
    ld h, $22
    dec h
    ld [de], a
    inc d
    dec a
    dec a
    dec a
    dec a
    dec a

jr_011_5163:
    dec a
    dec a
    dec a
    dec a
    dec d
    dec d
    ld [hl], $36
    scf
    ld [hl], $36
    ld [hl], $37
    ld [hl], $36
    rla
    ld d, [hl]

jr_011_5174:
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    dec c
    dec c
    ld c, $0e
    rrca
    inc de
    inc b
    rlca
    dec b
    ld [$0906], sp
    rla
    dec de
    ld a, [bc]
    inc e
    dec bc
    dec e
    inc c
    ld e, $58
    ld e, d
    ld e, c
    ld e, e
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $130f
    db $10
    inc d
    ld de, $1215
    ld d, $17
    dec de
    jr jr_011_51c4

    add hl, de
    dec e
    ld a, [de]
    ld e, $1f
    inc hl
    jr nz, jr_011_51d4

    ld hl, $2225
    ld h, $1f
    inc hl
    ld h, $22
    inc hl
    rra
    ld [hl+], a
    ld h, $27
    ld a, [hl+]
    jr z, jr_011_51eb

    jr z, jr_011_51ed

    add hl, hl
    inc l

jr_011_51c4:
    daa
    ld a, [hl+]
    add hl, hl
    inc l
    dec l
    cpl
    ld l, $30
    cpl
    cpl
    jr nc, jr_011_5200

    cpl
    ld sp, $3230

jr_011_51d4:
    ld l, b
    ld l, d
    ld l, c
    ld l, e
    ld l, h
    inc sp
    ld l, l
    inc [hl]
    dec [hl]
    dec sp
    ld [hl], $3c
    ld [hl], $3c
    ld [hl], $3c
    scf
    dec a
    jr c, jr_011_5226

    add hl, sp
    ccf
    ld a, [hl-]

jr_011_51eb:
    ld b, b
    ld b, c

jr_011_51ed:
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, a
    ld b, h
    ld c, b
    ld c, c
    ld c, a
    ld c, d
    ld d, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld bc, $5301
    ld d, e

jr_011_5200:
    ld c, e
    ld c, e
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, e
    ld c, e
    ld bc, $4c01
    ld c, h
    ld c, h
    ld c, h
    ld bc, $4d01
    ld d, c
    ld c, [hl]
    ld d, d
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    nop
    ld c, a
    nop
    ld d, b
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld bc, $5300
    nop
    ld c, e

jr_011_5226:
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, e
    nop
    ld bc, $4c00
    nop
    ld c, h
    nop
    ld bc, $5100
    nop
    ld d, d
    nop
    ld d, h
    nop
    ld bc, $5e5c
    ld e, l
    ld e, a
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld e, a
    ld h, b
    ld h, h
    ld h, c
    ld h, l
    ld h, d
    ld h, [hl]
    ld h, e
    ld h, a
    nop
    dec l
    nop
    ld l, $00
    inc hl
    nop
    ld [hl+], a
    nop
    rra
    nop
    ld h, $2d
    ld sp, $322e
    ld bc, $0101
    ld bc, $5154
    ld d, h
    ld d, d
    ld c, l
    ld d, h
    ld c, [hl]
    ld d, h
    ld d, h
    nop
    ld d, h
    nop
    nop
    ld d, h
    nop
    ld d, h
    ld d, h
    ld bc, $0154
    ld bc, $0154
    ld d, h
    nop
    ld bc, $0100
    jr z, jr_011_52a9

    jr z, jr_011_52ab

    ld d, l
    nop
    ld d, l
    nop
    ld c, h
    ld c, h
    nop
    nop
    nop
    nop
    ld c, h
    ld c, h
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    nop
    ld d, l
    nop
    ld d, l
    nop
    nop
    nop
    ld bc, $8d92
    sub e
    adc [hl]
    sub h
    adc a
    sub l
    sub b
    sub [hl]
    sub c
    sub a
    sbc b

jr_011_52a9:
    sbc [hl]
    sbc c

jr_011_52ab:
    sbc a
    sbc d
    and b
    sbc e
    and c
    sbc h
    and d
    sbc l
    and e
    and h
    xor d
    and l
    xor e
    and [hl]
    xor h
    and a
    xor l
    xor b
    xor [hl]
    xor c
    xor a
    ld bc, $b0b5
    or [hl]
    or c
    or a
    or d
    cp b
    or e
    cp c
    or h
    cp d
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
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
    nop
    inc bc
    inc bc
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    add hl, bc
    ld a, [bc]
    dec bc
    ld c, $0f
    ld de, $1312
    ld d, $00
    add b
    sub [hl]
    ld b, b
    nop
    or e
    ld d, e
    nop
    ret nz

    sub [hl]
    jr nz, jr_011_533e

jr_011_533e:
    di
    ld d, e
    ld bc, $80ff
    sub [hl]
    ld b, b
    nop
    or e
    ld d, e
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_011_534d

jr_011_534d:
    di
    ld d, e
    inc b
    add b
    sub [hl]
    ld b, b
    nop
    inc de
    ld d, h
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_011_535b

jr_011_535b:
    ld d, e
    ld d, h
    inc b
    add b
    sub [hl]
    ld b, b
    nop
    ld [hl], e
    ld d, h
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_011_5369

jr_011_5369:
    or e
    ld d, h
    inc b
    add b
    sub [hl]

jr_011_536e:
    ld b, b
    nop
    db $d3
    ld d, h
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_011_5377

jr_011_5377:
    inc de
    ld d, l
    inc b
    add b
    sub [hl]
    ld b, b
    nop
    inc sp
    ld d, l
    ld [bc], a
    ret nz

    sub [hl]

jr_011_5383:
    jr nz, jr_011_5385

jr_011_5385:
    ld [hl], e
    ld d, l
    inc b
    add b
    sub [hl]
    ld b, b
    nop
    sub e
    ld d, l
    ld [bc], a
    ret nz

jr_011_5390:
    sub [hl]
    jr nz, jr_011_5393

jr_011_5393:
    db $d3
    ld d, l
    inc b
    add b
    sub [hl]
    ld b, b
    nop
    di
    ld d, l
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_011_53a1

jr_011_53a1:
    inc sp
    ld d, [hl]
    inc b
    add b
    sub [hl]
    ld b, b
    nop
    ld d, e
    ld d, [hl]
    ld [bc], a
    ret nz

    sub [hl]
    jr nz, jr_011_53af

jr_011_53af:
    sub e
    ld d, [hl]
    inc b
    rst $38
    db $fc
    nop
    pop af
    inc bc
    db $e4
    inc c
    ret nz

    inc de
    ret nc

    rla
    add b
    cpl
    and b
    cpl
    and b
    cpl
    ccf
    nop
    adc a
    ret nz

    daa
    jr nc, jr_011_53cd

    ret z

jr_011_53cb:
    dec bc
    adc b

jr_011_53cd:
    ld bc, $0594
    db $f4
    dec b
    db $f4
    add b
    add hl, hl
    sub b
    ld de, $1380
    and h
    inc c
    add c
    inc hl
    adc h
    jr nz, jr_011_536e

    jr nz, jr_011_5390

    nop

jr_011_53e3:
    ld bc, $21c4
    or b
    ld de, $21a0
    inc b
    ld b, c
    inc b

jr_011_53ed:
    ld b, l
    nop
    sub c
    inc b
    sub c
    inc b
    adc [hl]
    jr nz, jr_011_5383

    ld hl, $2188
    xor d
    nop
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca
    ld sp, $3504
    add b
    sub c
    inc b
    ld d, c
    inc b
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    ldh a, [c]
    inc bc
    add sp, $0c
    ret nc

    inc de
    ret nz

    rla
    and b
    cpl
    add b

jr_011_5420:
    inc hl
    add b
    inc hl
    ccf
    nop
    ld c, a
    ret nz

    rla
    jr nc, jr_011_5435

    ret z

    inc bc

jr_011_542c:
    add sp, $05
    db $f4
    ld bc, $01c4
    call nz, $2fa0

jr_011_5435:
    add b
    ld d, $91
    ld de, $2d88
    add c
    jr nz, jr_011_53cb

    jr nz, jr_011_53ed

    nop
    adc l

jr_011_5442:
    jr nz, jr_011_5449

    db $f4
    ld bc, $0968
    adc b

jr_011_5449:
    sub c
    inc [hl]
    ld bc, $3104
    inc b
    dec [hl]
    nop
    ld sp, $8d04
    jr nz, jr_011_53e3

    jr nz, @-$51

    ld bc, $2188
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca

jr_011_5463:
    ld sp, $3104
    inc b
    dec [hl]
    add b
    sub c
    inc b
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    pop af
    inc bc
    db $e4
    inc c
    ret nz

    inc de
    ret nc

    ld de, $2980
    and b
    cpl
    and b
    cpl
    ccf
    nop
    adc a
    ret nz

    daa
    jr nc, @+$05

    ret z

    dec bc
    add sp, $01
    db $f4
    dec b
    db $f4
    dec b
    db $f4
    add b
    inc hl
    adc b
    dec c
    add h
    add hl, bc
    add b
    jr nz, jr_011_5420

    jr nz, jr_011_5442

jr_011_549e:
    nop
    adc d
    jr nz, jr_011_542c

    jr nz, jr_011_54a5

    sub h

jr_011_54a5:
    add hl, bc
    adc b
    ld bc, $25c8
    jr nc, @-$7d

    call nz, Call_000_0431
    ld [hl], c
    inc b
    ld [hl], l
    nop
    adc l
    jr nz, jr_011_5463

    ld bc, $2188
    adc d
    jr nz, jr_011_54bc

jr_011_54bc:
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca
    ld [hl], c
    inc b
    ld sp, $9184
    inc b
    ld d, l
    nop
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    ldh a, [c]
    inc bc
    add sp, $0c
    ret nc

    ld [de], a
    ret nz

    ld d, $a0
    daa
    sub b
    dec de
    adc b
    inc de
    ccf
    nop
    ld c, a
    ret nz

    rla

jr_011_54e8:
    jr nc, @+$0d

    ld c, b
    inc bc
    ld l, b
    dec b
    db $f4
    ld bc, $01f4
    db $f4
    xor b
    ld hl, $0088
    sub h
    db $10
    add h
    jr nz, jr_011_549e

    nop
    adc d
    jr nz, @-$71

    ld hl, $2188
    dec b
    db $f4
    ld bc, $0968
    ld c, b
    ld de, $4534
    ld b, b
    ld sp, $3104
    add h
    sub c
    inc b
    xor d
    nop
    adc b
    inc hl
    adc c
    inc hl
    adc c
    inc hl
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca

jr_011_5523:
    ld d, l
    nop
    pop de
    inc b
    ld d, c
    add h
    ld d, c
    add h
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    pop af
    inc bc
    ldh [rP1], a
    ret z

    dec c
    call nz, $8009
    ld hl, $24a0
    and b
    inc h
    ccf
    nop
    adc a

jr_011_5546:
    ret nz

    daa
    jr nc, jr_011_554d

    ret z

    dec bc
    adc b

jr_011_554d:
    ld bc, $0594
    db $f4
    dec b
    db $f4
    add d
    jr z, jr_011_54e8

    db $10
    add c
    db $10
    and l
    dec c
    add b
    ld hl, $208a
    adc b
    inc hl
    xor c
    inc bc
    ld bc, $0974
    ld l, b
    ld bc, $2148
    or h
    add c
    inc b
    ld d, l
    nop
    pop de
    inc b
    ld d, c
    add h
    adc c
    inc hl
    adc c
    inc hl
    adc c
    inc hl
    xor c
    inc bc
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca
    ld d, c
    add h
    ld d, l
    add b
    ld d, c
    add h
    ld d, c
    add h
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    ldh a, [c]
    ld [bc], a
    jp hl


    dec c
    ret nc

    ld de, $14c1
    and c
    inc l
    add c
    jr nz, jr_011_5523

    jr nz, jr_011_55e3

    nop
    ld c, a
    ld b, b
    rla
    or b
    adc e
    ld [$2803], sp
    dec b
    inc [hl]
    ld bc, HeaderLogo
    inc b
    and c
    inc l
    add c
    inc d
    sub c
    ld de, $2988
    add d
    jr nz, jr_011_5546

    inc hl
    xor c
    inc bc
    adc c
    inc hl
    dec b
    inc [hl]
    ld bc, $0928
    adc b
    sub c
    inc d
    ld b, c
    inc b
    pop de
    inc b
    ld d, l
    add b
    ld d, c
    add h
    adc c
    inc hl
    adc c
    inc hl
    xor c
    inc bc
    adc c
    inc hl
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca

jr_011_55e3:
    ld d, c
    add h
    ld d, c
    add h
    ld d, l
    add b
    ld d, c
    add h
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    pop af
    inc bc
    db $e4
    inc c
    ret nz

    inc de
    ret nc

    ld de, $2980
    and b
    cpl
    and b
    cpl
    ccf
    nop
    adc a
    ret nz

    rlca
    nop
    inc hl
    or b
    inc de
    and b

jr_011_560d:
    ld hl, $4584
    inc b
    ld b, l
    inc b
    add b
    ld l, $90
    ld d, $80
    ld [de], a
    add l
    dec l
    add b
    ld hl, $00aa
    adc b
    inc hl
    adc c
    inc hl
    add c
    inc d
    adc c
    ld [$0801], sp
    dec h
    or b
    add c
    inc b
    ld d, c
    inc b
    pop de
    inc b
    ld d, l
    add b
    adc c
    inc hl
    xor c
    inc bc
    adc c
    inc hl
    adc c
    inc hl
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca
    ld d, c
    add h
    ld d, c
    add h
    ld d, c
    add h
    ld d, l
    add b
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$fffc], a
    nop
    ldh a, [c]
    inc bc
    add sp, $0c
    ret nc

    ld [de], a
    ret nz

    ld d, $a0
    cpl
    add b
    cpl
    add b
    cpl
    ccf
    nop
    ld c, a
    ret nz

    rla
    jr nc, jr_011_5675

    ld c, b
    inc bc
    ld l, b
    dec b
    db $e4
    ld de, $09d8
    ret nc

    and b
    cpl

jr_011_5675:
    add b
    ld d, $90
    ld [de], a
    adc b
    inc l
    and d
    ld [bc], a
    adc h
    jr nz, jr_011_560d

    ld hl, $2188
    dec h
    add h
    ld hl, $4900
    ld [$0441], sp
    add l
    nop
    sub c
    inc b
    ld sp, $9184
    inc b
    xor d
    nop
    adc b
    inc hl
    adc c
    inc hl
    adc c
    inc hl
    nop
    nop
    ld b, l
    inc hl
    ld c, e
    daa
    dec bc
    rlca
    ld d, l
    nop
    pop de
    inc b
    ld d, c
    add h
    ld d, c
    add h
    nop
    nop
    ld [hl+], a
    call nz, $e492
    sub b
    ldh [$ff3e], a
    ld l, l
    jp Jump_000_020a


    cp h
    ld d, [hl]
    jp nz, $c756

    ld d, [hl]
    push de
    ld d, [hl]
    db $e3
    ld d, [hl]
    add hl, bc
    inc b
    ld [de], a
    inc b
    rst $38
    nop
    add hl, sp
    ld h, e
    sub d
    ld h, h
    db $e3
    ld e, b
    ld c, [hl]
    ld e, c
    daa
    nop
    ld h, e
    pop af
    ld d, [hl]
    nop
    add hl, sp
    ld h, e
    sub d
    ld h, h
    db $e3
    ld e, b
    ld c, [hl]
    ld e, c
    ld b, a
    nop
    ld h, e
    xor c
    ld d, a
    nop
    add hl, sp
    ld h, e
    sub d
    ld h, h
    db $e4
    ld e, b
    ld c, [hl]
    ld e, c
    ld b, a
    nop
    ld h, e
    and c
    ld e, b
    ld bc, $5948
    ld e, c
    ld e, c
    nop
    nop
    ld sp, $013b
    dec de
    ld d, a
    nop
    ld d, $10
    jr nz, jr_011_5702

jr_011_5702:
    ld c, l
    ld de, $0010
    ld c, l
    add hl, de
    stop
    ld d, $25
    jr nz, jr_011_570e

jr_011_570e:
    ld c, l
    inc l
    stop
    ld c, l
    jr nc, jr_011_5725

    nop
    ld c, l
    scf
    stop
    nop
    ld [bc], a
    ld b, b
    ld e, c
    dec sp
    ld e, e
    jr nz, jr_011_5725

    daa
    inc b
    ld [bc], a

jr_011_5725:
    dec l
    ld d, a
    nop
    ld e, $07
    jr nc, jr_011_572c

jr_011_572c:
    nop
    inc bc
    ld c, b
    ld e, c
    adc l
    ld e, e
    jr nz, jr_011_5737

    daa
    inc b
    ld [bc], a

jr_011_5737:
    ld c, a
    ld d, a
    nop
    ld d, $01
    jr nz, jr_011_573e

jr_011_573e:
    ld [bc], a
    ld bc, $0a60
    ld [bc], a
    ld [bc], a
    ld h, b
    add hl, bc
    ld [bc], a
    rlca
    ld h, b
    add hl, bc
    ld [bc], a
    ld [$0a60], sp
    nop
    inc b
    ld c, b
    ld e, c
    rst $18
    ld e, e
    jr nz, @+$05

    add a
    ld bc, $5d02
    ld d, a
    nop
    nop
    dec b
    ld c, b
    ld e, c
    ld sp, $205c
    inc bc
    ld d, c
    add hl, bc
    ld bc, $576f
    nop
    ld d, $08
    jr nz, jr_011_576e

jr_011_576e:
    nop
    ld b, $40
    ld e, c
    add e
    ld e, h
    ret nz

    inc bc
    inc d
    add hl, bc
    ld bc, $5785
    nop
    ld [de], a
    rlca
    ld b, b
    nop
    ld [bc], a
    ld [$0220], sp
    nop
    rlca
    ld b, b
    ld e, c
    push de
    ld e, h
    ld h, b
    inc b
    db $10
    ld [$9780], sp
    ld d, a
    nop
    ld c, [hl]
    ld b, $60
    nop
    nop
    ld [$5948], sp
    daa
    ld e, l
    ld h, b
    inc b
    jr nz, jr_011_57a1

    add b

jr_011_57a1:
    xor c
    ld d, a
    add a
    ld bc, $8502
    ld d, a
    nop
    add hl, bc
    ld c, b
    ld e, c
    ld a, c
    ld e, l
    ld h, b
    inc b
    ld sp, $0109
    cp e
    ld d, a
    add a
    ld bc, $9702
    ld d, a
    nop
    ld a, [bc]
    ld b, b
    ld e, c
    bit 3, l
    nop
    dec b
    daa
    ld bc, $cd02
    ld d, a
    nop
    ld [de], a
    inc b
    ld h, b
    nop
    nop
    dec bc
    ld c, b
    ld e, c
    dec e
    ld e, [hl]
    nop
    dec b
    jr nz, @+$27

    add b
    db $eb
    ld d, a
    jr nz, jr_011_57dc

    add b

jr_011_57dc:
    cp e
    ld d, a
    ld e, $07
    jr nc, jr_011_57e2

jr_011_57e2:
    ld e, $17
    jr nc, jr_011_57e6

jr_011_57e6:
    ld e, $24
    jr nc, jr_011_57ea

jr_011_57ea:
    nop
    inc c
    ld c, b
    ld e, c
    ld e, a
    ld e, a
    ldh [rTMA], a
    ld hl, $0109
    dec b
    ld e, b
    daa
    rlca
    ld [bc], a
    call Call_000_1f57
    ld bc, $0060
    rra
    inc b
    jr nz, jr_011_5804

jr_011_5804:
    nop
    dec c
    ld b, b
    ld e, c
    or c
    ld e, a
    add b
    rlca
    dec h
    daa
    ld bc, $582f
    nop
    dec d
    rlca
    ld b, b
    nop
    ld c, l
    inc c
    stop
    ld [bc], a
    dec d
    ld h, b
    ld [bc], a
    ld d, $16
    jr nz, jr_011_5822

jr_011_5822:
    ld e, $1f
    ld b, b
    nop
    ld [bc], a
    ld hl, $0140
    ld c, l
    dec h
    stop
    nop
    ld c, $40
    ld e, c
    di
    ld h, b
    ld h, b
    add hl, bc
    rla
    ld [$4d02], sp
    ld e, b
    nop
    ld [bc], a
    ld bc, $0620
    ld [bc], a
    ld [bc], a
    jr nz, jr_011_584d

    ld [bc], a
    inc b
    jr nz, jr_011_5851

    ld [bc], a
    dec b
    jr nz, jr_011_5855

    nop

jr_011_584d:
    rrca
    ld c, b
    ld e, c
    ld b, l

jr_011_5851:
    ld h, c
    ld h, b
    add hl, bc
    scf

jr_011_5855:
    ld bc, $8f02
    ld e, b
    db $10
    ld [$2f80], sp
    ld e, b
    dec d
    inc b
    ld h, b
    nop
    nop
    db $10
    ld c, b
    ld e, c
    sub a
    ld h, c
    ld h, b
    add hl, bc
    rla
    ld bc, $7902
    ld e, b
    jr nz, @+$08

    add b
    adc a
    ld e, b
    rra
    ld bc, $8140
    nop
    ld de, $58ef
    jp hl


    ld h, c
    ld h, b
    add hl, bc
    inc [hl]
    ld [$a101], sp
    ld e, b
    db $10
    ld bc, $6380
    ld e, b
    dec d
    ld b, $60
    nop
    nop
    inc d
    ld c, b
    ld e, c
    rst $20
    ld h, d
    ld h, b
    add hl, bc
    daa
    ld b, $02
    ld h, e
    ld e, b
    jr nc, jr_011_589e

    add b

jr_011_589e:
    ld c, l
    ld e, b
    nop
    ld [de], a
    ei
    ld e, b
    dec sp
    ld h, d
    nop
    ld a, [bc]
    inc [hl]
    ld [$bd01], sp
    ld e, b
    nop
    nop
    ld [de], a
    ld sp, hl
    ld e, b
    dec sp
    ld h, d
    nop
    ld a, [bc]
    inc [hl]
    ld [$bd01], sp
    ld e, b
    nop
    nop
    db $d3
    ld de, $8d59
    ld h, d
    and b
    ld a, [bc]
    nop
    nop
    rla
    add hl, bc
    ld h, b
    nop
    nop
    inc bc
    add hl, bc
    inc b
    ld [hl], $13
    inc de
    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    inc b
    ld [hl], $13
    inc de
    inc bc
    nop
    inc b
    inc bc
    inc bc
    inc bc
    ret


    ld a, $d1
    ld [$d85c], a
    ld a, $58
    ld [$d85d], a
    ret


    ld a, $cb
    ld [$d858], a
    ld a, $58
    ld [$d859], a
    jr jr_011_5905

    ld a, $d1
    ld [$d85a], a
    ld a, $58
    ld [$d85b], a

jr_011_5905:
    ld a, $d7
    ld [$d858], a
    ld a, $58
    ld [$d859], a
    jr jr_011_594a

    ld a, $dd
    ld [$d85a], a
    ld a, $58
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
    jr jr_011_594a

    ld a, $40
    ld [$d821], a
    jp Jump_011_594a


    jr jr_011_594a

Jump_011_594a:
jr_011_594a:
    call Call_011_6ce4
    ret


    call Call_011_6cfd
    ld a, $1b
    ld [$de96], a
    jr nz, jr_011_5958

jr_011_5958:
    ret


    inc a
    ld [$341d], sp
    ld [hl-], a
    dec de
    inc e
    jr nc, jr_011_5993

    ld sp, $3131
    ld [hl-], a
    dec de
    inc e
    inc sp
    ld a, [hl+]
    inc l
    inc sp
    ld l, $2f
    jr nc, @+$35

    ld [$0808], sp
    ld [$2f2e], sp
    ld [$3408], sp
    ld [hl-], a
    dec de
    inc e
    ld l, $2f
    ld a, [hl+]
    inc l
    inc [hl]
    ld l, $2f
    jr nc, jr_011_59b8

    ld [$2e08], sp
    cpl
    ld [$2e08], sp
    cpl
    inc [hl]
    ld [hl-], a
    dec de
    inc e
    jr nc, @+$30

jr_011_5993:
    cpl
    dec de
    inc e
    dec de
    ld e, $36
    scf
    jr c, jr_011_59d4

    add hl, sp
    nop
    nop
    nop
    scf
    add hl, sp
    ld [hl], $42
    ld b, d
    ld [hl], $00
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$4308], sp
    scf

jr_011_59b8:
    jr c, @+$3a

    jr c, jr_011_59f4

    add hl, sp
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3608], sp
    nop
    ld [hl], $00
    nop
    ld [hl], $00
    ld [hl], $20

jr_011_59d4:
    inc de
    db $10
    ld de, $1211
    dec d
    ld d, e
    ld d, h
    db $10
    ld [de], a
    inc de
    inc d
    inc d
    inc de
    ld d, d
    ld d, b
    nop
    nop
    ld [hl], $37
    inc c
    ld b, d
    ld b, d
    nop
    dec h
    dec h
    nop
    inc d
    ld b, d
    ld [hl], $00
    dec c

jr_011_59f4:
    ld c, $0e
    ld c, $0e
    rrca
    nop
    nop
    ld [hl], $42
    nop
    dec h
    ld h, $26
    dec h
    nop
    nop
    nop
    ld b, d
    ld b, d
    inc de
    nop
    inc de
    inc d
    inc d
    inc de
    nop
    inc de
    dec e
    inc de
    db $10
    ld de, $1211
    ld d, l
    nop
    nop
    db $10
    ld [de], a
    inc de
    inc d
    inc d
    inc de
    nop
    ld a, [bc]
    inc c
    ld d, h
    inc de
    dec c
    rrca
    inc d
    inc d
    inc d
    ld b, d
    ld b, d
    inc d
    inc d
    inc d
    inc de
    dec d
    ld d, e
    rra
    nop
    nop
    ld d, c
    ld d, e
    ld d, b
    nop
    inc de
    inc d
    inc d
    nop
    ld [hl], $00
    ld [hl], $14
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc de
    ld d, b
    inc de
    inc d
    inc d
    inc de
    nop
    inc de
    ld e, $13
    dec c
    ld c, $0e
    rrca
    rra
    nop
    nop
    db $10
    ld [de], a
    inc de
    inc d
    inc d
    inc de
    ld d, d
    dec c
    rrca
    nop
    inc de
    inc d
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    inc de
    ld d, l
    ld a, [bc]
    inc c
    nop
    nop
    ld a, [bc]
    inc c
    ld d, l
    nop
    inc de
    ld a, [bc]
    inc c
    inc d
    inc de
    nop
    inc de
    inc d
    dec c
    ld c, $0e
    rrca
    inc de
    ld d, c
    inc de
    inc d
    inc d
    inc de
    nop
    add hl, de
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc c
    nop
    ld a, [bc]
    inc c
    nop
    db $10
    ld [de], a
    inc de
    nop
    inc d
    inc de
    nop
    nop
    ld d, c
    ld d, h
    inc de
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    inc de
    ld d, l
    db $10
    ld [de], a
    ld a, [bc]
    inc c
    dec c
    rrca
    rra
    nop
    inc de
    db $10
    ld [de], a
    inc d
    inc de
    nop
    inc de
    inc d
    inc d
    inc d
    nop
    inc d
    inc de
    nop
    inc de
    nop
    inc d
    inc de
    nop
    dec de
    inc e
    inc de
    nop
    dec c
    rrca
    nop
    jr z, jr_011_5af5

    inc l
    jr z, jr_011_5add

    inc de
    nop
    nop
    inc de
    nop
    nop
    nop
    nop
    inc de
    dec c
    ld c, $0e
    dec h
    ld h, $26

jr_011_5add:
    ld h, $25
    nop
    nop
    dec l
    ld d, c
    dec h
    ld h, $26
    ld h, $25
    ld a, [hl+]
    inc l
    nop
    dec l
    dec c
    rrca
    inc d
    inc de
    nop
    inc de
    inc d
    inc d
    nop

jr_011_5af5:
    nop
    nop
    add hl, de
    ld a, [de]
    dec l
    nop
    nop
    dec [hl]
    jr z, jr_011_5b1c

    ld a, [hl+]
    dec hl
    inc l
    ld a, [hl+]
    dec hl
    inc l
    add hl, hl
    jr nz, jr_011_5b28

    add hl, hl
    ld b, b
    jr z, @+$27

    ld h, $26
    dec h
    jr z, jr_011_5b11

jr_011_5b11:
    nop
    add hl, de
    ld a, [de]
    jr z, jr_011_5b16

jr_011_5b16:
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_5b1c:
    dec [hl]
    jr z, jr_011_5b5f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_5b28:
    dec h
    ld h, $26
    dec h
    nop
    dec h
    ld h, $26
    ld h, $25
    nop
    dec de
    inc e
    jr z, jr_011_5b37

jr_011_5b37:
    nop
    ld a, [hl+]
    inc l
    ld e, $0a
    ld [$341c], sp
    ld [hl-], a
    dec de
    inc e
    jr nc, jr_011_5b75

    ld [hl-], a
    ld l, $2f
    ld [hl], $37
    jr c, jr_011_5b83

    jr c, @+$3a

    jr c, @+$3b

    add hl, hl
    dec a
    inc de
    db $10
    ld de, $1111
    ld de, $1211
    ld [hl], $3f
    inc de
    dec c
    ld c, $0e

jr_011_5b5f:
    ld c, $0e
    ld c, $0f
    inc de
    jr z, jr_011_5b80

    dec [hl]
    add hl, de
    ld a, [de]
    dec d
    ld d, h
    add hl, de
    ld a, [de]
    ld b, b
    add hl, hl
    inc e
    dec e
    dec de
    inc e
    rra
    nop

jr_011_5b75:
    dec de
    inc e
    ld a, $3e
    jr z, @+$20

    inc sp
    dec a
    dec bc
    dec bc
    dec a

jr_011_5b80:
    inc [hl]
    ld a, $31

jr_011_5b83:
    add hl, hl
    jr nz, @+$1b

    ld a, [de]
    ld de, $1911
    ld a, [de]
    ld a, $3e
    ld a, [bc]
    ld [$3328], sp
    dec de
    inc e
    ld de, $1b11
    inc e
    inc sp
    ld a, $29
    scf
    jr c, jr_011_5bd5

    ld de, $3811
    jr c, jr_011_5bdb

    dec e
    ld a, [de]
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    ld e, $1c
    ld a, [bc]
    inc c
    inc de
    inc d
    inc d
    inc de
    ld a, [bc]
    inc c
    jr nz, jr_011_5bd5

    dec c
    rrca
    inc de
    nop
    nop
    inc de
    dec c
    rrca
    ccf
    ld a, [de]
    inc de
    inc d
    jr z, @+$54

    ld d, h
    jr z, jr_011_5bdd

    inc de
    add hl, de
    inc e
    inc de
    inc d
    ld [hl], $00
    nop
    ld [hl], $14
    inc de
    dec de

jr_011_5bd5:
    jr z, jr_011_5bff

    jr z, jr_011_5c01

    nop
    nop

jr_011_5bdb:
    jr z, @+$2a

jr_011_5bdd:
    jr z, jr_011_5c07

    ld a, [bc]
    ld [$2929], sp
    add hl, hl
    add hl, hl
    nop
    nop
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [de]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    ld [hl], $19
    inc e
    inc de
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc de
    dec de

jr_011_5bff:
    inc l
    inc de

jr_011_5c01:
    dec c
    ld c, $0e
    ld c, $0e
    rrca

jr_011_5c07:
    inc de
    ld a, [hl+]
    jr z, @+$15

    ld d, d
    rra
    nop
    nop
    ld d, c
    ld d, h
    inc de
    jr z, jr_011_5c3d

    inc de
    nop
    ld [$0000], sp
    ld [$1300], sp
    add hl, hl
    jr z, jr_011_5c32

    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    inc de
    jr z, jr_011_5c51

    inc de
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    inc de
    add hl, hl
    ld a, [bc]

jr_011_5c32:
    ld [$131a], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc de
    inc [hl]

jr_011_5c3d:
    inc e
    inc de
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    inc de
    ld [hl], $1d
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc de
    inc de

jr_011_5c51:
    ld e, $13
    ld d, d
    ld d, e
    ld d, e
    ld d, b
    inc d
    inc d
    inc de
    inc de
    ld a, [de]
    inc de
    inc d
    inc d
    inc d
    ld d, c
    ld d, e
    ld d, h
    inc de
    inc de
    inc e
    dec l
    nop
    dec h
    ld h, $26
    dec h
    nop
    dec l
    dec l
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    inc sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1b08], sp
    ld a, [bc]
    ld [$3230], sp
    dec de
    inc e
    ld l, $2f
    dec de
    inc e
    inc sp
    add hl, de
    ld [hl], $37
    jr c, @+$3a

    jr c, jr_011_5cce

    ld [hl], $42
    ld b, d
    dec de
    inc de
    db $10
    ld de, $1111
    ld [de], a
    inc de
    dec d
    ld d, h
    dec e
    inc de
    db $10
    ld de, $1111
    ld [de], a
    inc de
    ld d, l
    ld a, [hl+]
    inc l
    inc de
    dec c
    ld c, $0e
    ld c, $0f
    inc de
    ld d, c
    ld b, e
    daa
    inc de
    nop
    nop
    jr z, jr_011_5cec

    ld [hl-], a
    ld a, [hl+]
    dec hl
    inc l
    dec [hl]
    ld a, [de]
    dec [hl]
    ld [hl-], a
    add hl, hl
    ld a, [hl+]
    inc l
    add hl, de
    ld a, [de]
    ld sp, $1c19
    ld a, $28

jr_011_5cce:
    dec a
    jr z, jr_011_5cf9

    dec de
    inc e
    inc sp
    dec de
    ld a, [bc]
    ld [$101a], sp
    ld de, $1312
    ld a, [bc]
    inc c
    inc de
    ld bc, $1c19
    dec c
    ld c, $0f
    inc de
    dec c
    rrca
    inc de
    ld bc, $3d1b

jr_011_5cec:
    inc d
    ld d, l
    ld d, l
    inc de
    inc d
    ld d, l
    inc de
    ld b, d
    jr z, @+$35

    inc d
    ld d, c
    ld d, l

jr_011_5cf9:
    inc de
    ld d, e
    rra
    inc de
    inc d
    add hl, hl
    ld c, a
    ld d, e
    ld d, h
    rra
    inc de
    nop
    jr z, jr_011_5d1a

    inc d
    dec e
    ld b, b
    ld a, [bc]
    dec bc
    inc c
    inc de
    ld a, [bc]
    add hl, sp
    inc de
    inc d
    ld e, $1a
    dec c
    ld c, $0f
    inc de
    dec c
    rrca

jr_011_5d1a:
    inc de
    add hl, de
    ld a, [de]
    inc e
    jr z, jr_011_5d45

    ld h, $26
    ld h, $25
    jr z, jr_011_5d41

    inc e
    ld a, [bc]
    ld [$012c], sp
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    inc de
    inc d
    jr z, jr_011_5d4e

    ld bc, $0c0b
    dec de
    inc e
    ld d, d
    inc de
    ld d, h
    add hl, hl
    inc e
    ld bc, $0f0e

jr_011_5d41:
    add hl, hl
    ld b, d
    inc d
    inc de

jr_011_5d45:
    inc d
    jr z, @+$2a

    ld b, d
    ld d, l
    ld d, c
    ld [hl], $14
    inc d

jr_011_5d4e:
    inc de
    inc d
    add hl, hl
    add hl, hl
    inc d
    ld d, l
    dec h
    ld h, $26
    dec h
    inc de
    ld d, h
    jr z, jr_011_5d72

    ld d, d
    rra
    nop
    ld [hl], $42
    ld b, d
    inc de
    nop
    add hl, hl
    rla
    inc d
    nop
    nop
    inc de
    ld d, d
    ld d, b
    inc de
    ld [bc], a
    add hl, de
    jr @+$0c

    dec bc

jr_011_5d72:
    inc c
    inc de

Call_011_5d74:
    nop
    ld d, c
    inc de
    ld bc, $0a1b
    ld [$1c1b], sp
    jr nc, jr_011_5db1

    ld a, [hl+]
    dec hl
    inc l
    jr nc, jr_011_5db5

    ld sp, $0028
    ld b, d
    ld b, d
    ld [hl], $42
    ld b, d
    ld [hl], $42
    ld [hl], $29
    ld d, d
    ld a, [bc]
    inc c
    inc de
    ld a, [bc]
    inc c
    inc de
    inc d
    inc de
    jr z, jr_011_5daf

    dec c
    rrca
    inc de
    dec c
    rrca
    inc de
    ld a, [hl+]
    dec hl
    add hl, hl
    nop
    inc d
    ld d, l
    inc de
    rra
    ld d, l
    inc de
    ld b, d
    jr z, jr_011_5dda

    ld d, d

jr_011_5daf:
    ld d, e
    rra

jr_011_5db1:
    inc de
    inc d
    jr z, jr_011_5dc8

jr_011_5db5:
    inc d
    add hl, hl
    jr z, jr_011_5db9

jr_011_5db9:
    nop
    jr z, jr_011_5dcf

    nop
    ld b, d
    inc de
    inc d
    jr z, @+$2b

    ld [bc], a
    nop
    nop
    jr z, jr_011_5e07

    nop

jr_011_5dc8:
    inc de
    nop
    add hl, hl
    ld a, [bc]
    ld [$1c1b], sp

jr_011_5dcf:
    inc d
    inc de
    ld a, [bc]
    inc c
    inc d
    inc d
    inc de
    dec de
    ld [hl], $37
    inc c

jr_011_5dda:
    inc de
    dec c
    rrca
    nop
    inc d
    inc de
    dec e
    inc de
    db $10
    ld [de], a
    inc de
    inc d
    nop
    nop
    nop
    inc de
    ld e, $2b
    dec hl
    inc l
    jr nc, @+$34

    ld a, [hl+]
    inc l
    nop
    ld [bc], a
    jr nz, @+$2a

    scf
    add hl, sp
    ld [hl], $42
    ld b, d
    ld b, d
    nop
    ld bc, $2919
    dec c
    rrca
    inc de
    nop
    inc d
    inc d
    inc d

jr_011_5e07:
    ld [hl], $1b
    jr z, jr_011_5e1f

    inc d
    inc de
    nop
    nop
    nop
    inc d
    inc de
    dec e
    add hl, hl
    inc d
    ld [bc], a
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc l
    jr z, jr_011_5e27

jr_011_5e1f:
    inc l
    nop
    ld bc, $1a19
    jr z, jr_011_5e56

    ld [hl-], a

jr_011_5e27:
    ld a, [hl+]
    dec hl
    inc l
    add hl, de
    ld a, [de]
    ld b, b
    ld a, $1b
    inc e
    ld b, b
    ld a, $35
    ld [hl-], a
    dec de
    inc e
    dec de
    inc e
    ld l, $2f
    ld l, $2f
    ld l, $2f
    dec [hl]
    jr z, jr_011_5e5a

    ld a, [de]
    dec a
    dec a
    nop
    ld bc, $1d3e
    nop
    ld bc, $1c1b
    add hl, hl
    dec [hl]
    ld sp, $4031
    dec [hl]
    dec de
    inc e
    inc sp
    inc [hl]

jr_011_5e56:
    add hl, hl
    add hl, hl
    dec e
    ccf

jr_011_5e5a:
    inc [hl]
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    inc l
    jr nc, jr_011_5ea2

    dec [hl]
    ld a, [hl+]
    inc l
    ld b, b
    ccf
    add hl, hl
    dec de
    inc e
    ld a, [hl+]
    inc l
    nop
    ld bc, $1a1d
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    nop
    jr z, jr_011_5ea2

    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_011_5ea3

    ld a, [de]
    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    inc e
    nop
    nop
    nop
    nop
    dec de
    inc e
    nop
    nop
    add hl, hl
    add hl, hl

jr_011_5ea2:
    dec de

jr_011_5ea3:
    inc e
    nop
    nop
    nop
    nop
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    dec e
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1d
    ld d, $3d
    ld d, $1e
    rla
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    ld e, $17
    dec e
    rla
    jr nz, @+$19

    ld e, $17
    jr nz, @+$19

    ld e, $17
    jr nz, @+$19

    ld e, $17
    jr nz, @+$19

    ld e, $17
    jr nz, jr_011_5f60

    ld e, $17
    jr nz, jr_011_5f64

    ld e, $17
    jr nz, jr_011_5f68

    ld e, $17
    jr nz, jr_011_5f6c

    ld e, $17
    jr nz, @+$19

    ld e, $17
    jr nz, jr_011_5f74

    ld e, $17
    ld a, [bc]

jr_011_5f60:
    ld [$2e1c], sp
    cpl

jr_011_5f64:
    ld l, $2f
    ld l, $2f

jr_011_5f68:
    ld l, $2f
    dec de
    dec e

jr_011_5f6c:
    nop
    nop
    nop
    ld [hl], $42
    ld b, d
    ld b, d
    ld b, d

jr_011_5f74:
    ld [hl], $1e
    ld a, [bc]
    dec bc
    inc c
    inc de
    inc d
    inc d
    inc d
    inc d
    inc de
    jr nz, jr_011_5f83

    ld a, [hl+]
    dec hl

jr_011_5f83:
    dec hl
    ld a, [hl+]
    dec hl
    inc l
    ld a, [hl+]
    dec hl
    dec e
    ld bc, $3c3b
    ld [hl], $42
    ld b, d
    ld b, d
    ld b, d
    dec e
    ld a, [de]
    ld b, d
    inc d
    inc d
    inc de
    inc d
    inc d
    nop
    nop
    add hl, de
    inc e
    inc d
    nop
    nop
    inc de
    inc d
    nop
    nop
    nop
    dec de
    inc hl
    ld a, [hl+]
    inc l
    ld a, [hl+]
    inc l
    ld a, [hl+]
    inc l
    nop
    ld [bc], a
    dec a
    jr z, jr_011_5fbb

    inc e
    jr nc, jr_011_5fe8

    dec de
    inc e
    inc sp
    add hl, hl
    add hl, hl

jr_011_5fbb:
    ld a, [hl+]
    inc l
    inc sp
    inc [hl]
    ld l, $2f
    dec de
    inc e
    inc sp
    inc [hl]
    ld [hl-], a
    add hl, hl
    dec de
    inc e
    add hl, hl
    ld l, $2f
    jr nc, @+$34

    dec de
    inc e
    jr nc, jr_011_6005

    add hl, de
    ld a, [de]
    ld a, $19
    ld a, [de]
    add hl, hl
    ld l, $2f
    dec de
    ld [hl], $42
    ld b, d
    ld [hl], $42
    ld b, d
    ld [hl], $00
    nop
    ld [hl], $37
    add hl, sp
    nop

jr_011_5fe8:
    nop
    nop
    ld [hl], $00
    ld [hl], $42
    ld b, d
    ld b, d
    ld b, d
    ld [hl], $00
    nop
    ld b, d
    ld b, d
    ld [hl], $00
    ld [hl], $42
    dec de
    inc e
    ld a, $1b
    inc e
    ld [hl], $00
    nop
    dec e
    inc de
    ld a, [bc]

jr_011_6005:
    inc c
    inc de
    inc d
    inc d
    inc de
    nop
    dec d
    inc de
    db $10
    ld [de], a
    ld d, d
    ld d, e
    ld d, b
    inc de
    nop
    inc de
    ld a, [bc]
    inc c
    inc d
    inc d
    inc de
    nop
    inc d
    ld a, [bc]
    inc c
    inc de
    nop
    inc de
    ld a, [bc]
    inc [hl]
    inc sp
    inc [hl]
    ld b, b
    ld b, d
    inc de
    inc d
    inc d
    ld e, $2b
    inc l
    rrca
    inc de
    inc d
    inc d
    inc de
    ld a, [bc]
    inc c
    inc de
    dec c
    rrca
    nop
    nop
    ld d, l
    inc de
    dec d
    inc de
    dec c
    rrca
    inc d
    nop
    inc de
    inc d
    inc d
    db $10
    ld [de], a
    inc de
    nop
    inc de
    db $10
    jr c, jr_011_6085

    ld b, d
    ld a, $14
    inc de
    inc d
    inc d
    jr nz, jr_011_6071

    nop
    inc d
    inc de
    inc d
    nop
    inc de
    dec c
    rrca
    inc de
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, l
    inc de
    rra
    inc de
    inc d
    nop
    nop
    nop
    inc de
    inc d
    inc d
    dec c
    rrca
    inc de
    nop
    inc de

jr_011_6071:
    dec c
    ld c, $0f
    ld a, [bc]
    dec e
    inc c
    inc de
    inc d
    inc d
    inc [hl]
    ld a, [de]
    nop
    inc d
    inc de
    nop
    nop
    inc de
    add hl, de
    ld a, [de]
    inc de

jr_011_6085:
    nop
    dec h
    ld h, $26
    dec h
    inc de
    nop
    inc de
    dec h
    ld h, $26
    ld h, $25
    inc d
    inc d
    inc d
    inc d
    inc de
    nop
    inc de
    inc d
    ld a, [hl+]
    dec hl
    dec hl
    inc l
    ld [de], a
    inc de
    nop
    inc d
    ld b, d
    inc e
    nop
    dec h
    ld h, $26
    ld h, $25
    dec de
    inc e
    dec l
    nop
    nop
    ld b, c
    nop
    nop
    dec l
    nop
    dec l
    nop
    nop
    nop
    nop
    ld [$0000], sp
    dec h
    ld h, $25
    nop
    inc de
    inc d
    ld b, d
    ld b, d
    ld a, [hl-]
    dec sp
    rrca
    inc de
    nop
    nop
    inc d
    dec a
    nop
    nop
    nop
    inc [hl]
    add hl, de
    ld a, [de]
    inc sp
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $26
    ld h, $25
    jr z, @+$0a

    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $26
    ld h, $26
    ld h, $26
    dec h
    nop
    nop
    ld a, [hl+]
    ld a, [bc]
    ld [$301c], sp
    ld [hl-], a
    dec de
    inc e
    inc sp
    inc [hl]
    ld sp, $4031
    dec e
    ld b, d
    ld [hl], $08
    scf
    add hl, sp
    ld [$4236], sp
    jr z, jr_011_6128

    inc d
    inc de
    ld b, d
    db $10
    ld [de], a
    ld b, d
    inc de
    inc d
    add hl, hl
    jr nz, jr_011_613f

    inc l
    inc d
    ld a, [hl+]
    inc l
    inc d
    jr z, jr_011_611e

    dec a
    inc sp

jr_011_611e:
    ld b, d
    ld [hl], $14
    scf
    add hl, sp
    inc d
    ld [hl], $01
    ccf
    ld b, d

jr_011_6128:
    inc d
    inc de
    inc d
    db $10
    ld [de], a
    inc d
    inc de
    ld b, d
    jr z, jr_011_6146

    inc d
    inc de
    inc d
    dec c
    rrca
    inc d
    inc de
    inc d
    add hl, hl
    inc l
    jr nc, jr_011_6168

    dec hl

jr_011_613f:
    inc l
    ld [hl-], a
    ld a, [hl+]
    inc l
    ld [bc], a
    ld a, [hl+]

Jump_011_6145:
    ld a, [bc]

jr_011_6146:
    ld [$301a], sp
    ld sp, $3231
    add hl, de
    ld a, [de]
    jr nc, jr_011_6151

    ld b, b

jr_011_6151:
    inc e
    ld b, d
    ld [hl], $42
    nop
    dec de
    inc e
    ld [hl], $01
    add hl, de
    dec e
    inc d
    inc de
    inc d
    ld a, [bc]
    add hl, sp
    ld b, d
    inc de
    ld b, d
    dec de
    ld e, $14
    inc de

jr_011_6168:
    inc d
    dec c
    rrca
    inc d
    inc de
    inc d
    jr z, jr_011_6190

    inc d
    inc de
    inc d
    inc d
    inc d
    inc d
    inc de
    inc d
    add hl, hl
    dec e
    inc d
    inc de
    inc d
    ld a, [bc]
    inc c
    inc d
    inc de
    inc d
    dec a
    jr z, @+$16

    inc de
    inc d
    dec c
    rrca
    inc d
    inc de
    inc d
    ccf
    add hl, hl
    inc d
    inc de

jr_011_6190:
    inc d
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    inc l
    add hl, de
    ld a, [bc]
    ld [$301e], sp
    ld [hl-], a
    add hl, de
    ld a, [de]
    inc sp
    inc d
    inc de
    ld [$201b], sp
    ld b, d
    ld [hl], $1b
    inc e
    ld b, d
    inc d
    inc de
    ld [$1d1d], sp
    inc d
    inc de
    ld b, d
    ld b, d
    inc d
    inc d
    inc de
    ld [$1e1e], sp
    inc d
    inc de
    inc d
    ld a, [bc]
    inc c
    inc d
    inc de
    ld [$2020], sp
    inc d
    inc de
    inc d
    db $10
    ld [de], a
    inc d
    inc de
    ld [$1d3f], sp
    ld [bc], a
    jr z, jr_011_61e3

    db $10
    ld [de], a
    inc d
    inc de
    ld [$1e19], sp
    ld bc, $1429
    dec c
    rrca
    inc d
    inc de
    ld [$201b], sp
    ld bc, $1a19

jr_011_61e3:
    dec h
    ld h, $26
    dec h
    ld a, [hl+]
    inc l
    ld a, [bc]
    ld [HeaderTitle], sp
    dec de
    inc e
    jr nc, jr_011_6222

    ld [hl-], a
    ld b, b
    inc b
    dec b
    jr z, @+$03

    ld [hl], $00
    nop
    nop
    nop
    dec a
    ld b, $07
    add hl, hl
    ld b, d
    inc de
    ld d, d
    ld a, [bc]
    inc c
    ld d, h
    ld a, $28
    add hl, de
    dec a
    inc d
    inc de
    nop
    dec c
    rrca
    nop
    inc [hl]
    add hl, hl
    dec de
    ccf
    inc d
    inc de
    nop
    ld d, l
    ld d, c
    ld d, h
    ld [hl], $42
    inc bc
    jr z, jr_011_6233

    inc de
    nop
    ld a, [bc]

jr_011_6222:
    inc c
    nop
    inc de
    inc d
    inc bc
    add hl, hl
    inc d
    inc de
    dec d
    dec c
    rrca
    ld d, b
    inc de
    inc d
    inc bc
    ld a, [hl+]
    dec hl

jr_011_6233:
    inc l
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    dec hl
    inc l
    jr z, jr_011_6246

    ld [$1a19], sp
    inc d
    inc d
    inc d
    dec e
    inc d
    add hl, de
    ld a, [de]

jr_011_6246:
    jr z, jr_011_6263

    inc e
    dec [hl]
    ld sp, $1e32
    ld b, b
    dec de
    inc e
    add hl, hl
    ld a, [de]
    ld b, d
    add hl, de
    ld a, [de]
    ld b, d
    jr nz, jr_011_6280

    jr z, jr_011_6273

    ld a, [de]
    inc e
    ld sp, $1c1b
    ld sp, $2933
    add hl, hl

jr_011_6263:
    dec de
    inc e
    ld [hl], $37
    add hl, sp
    ld [hl], $42
    ld b, d
    ld [hl], $37
    add hl, sp
    inc bc
    inc de
    db $10
    ld [de], a
    inc de

jr_011_6273:
    inc d
    inc d
    inc de
    db $10
    ld [de], a
    inc bc
    inc de
    db $10
    ld [de], a
    inc de
    inc d
    inc d
    inc de

jr_011_6280:
    db $10
    ld [de], a
    inc bc
    jr z, jr_011_62af

    inc l
    ld a, [hl+]
    dec hl
    dec hl
    inc l
    ld a, [hl+]
    inc l
    jr z, jr_011_6299

    ld [$4b28], sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld hl, $4c4b

jr_011_6299:
    add hl, hl
    add hl, hl
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc de
    jr z, jr_011_62ce

    inc de
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc de

jr_011_62af:
    add hl, hl
    add hl, hl
    inc de
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0f
    inc de
    jr z, jr_011_62f2

    inc de
    ld d, c
    ld d, e
    ld d, b
    nop
    dec d
    ld d, e
    rra
    inc de
    add hl, hl
    inc de
    inc de
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_011_62ce:
    inc c
    inc de
    jr z, jr_011_62e5

    inc de
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0f
    inc de
    add hl, hl
    jr z, jr_011_6326

    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c

jr_011_62e5:
    ld c, d
    jr z, jr_011_62f2

    ld [$141a], sp
    inc de
    inc d
    inc [hl]
    ld sp, $1a19
    ld [hl-], a

jr_011_62f2:
    dec de
    inc e
    inc d
    inc de
    inc d
    ld b, d
    ld b, d
    dec de
    inc e
    ld b, d
    dec e
    dec a
    inc d
    inc de
    inc d
    inc d
    ld a, [bc]
    add hl, sp
    ld [hl], $14
    ld e, $1d
    inc d
    inc de
    nop
    inc d
    db $10
    ld [de], a
    inc de
    inc d
    jr nz, jr_011_6330

    inc d
    inc de
    nop
    nop
    dec c
    rrca
    inc de
    nop
    add hl, de
    jr nz, jr_011_6345

    dec l
    nop
    nop
    inc d
    inc d
    inc de
    nop
    dec de
    ld a, [de]

jr_011_6326:
    add hl, hl
    nop
    nop
    add hl, de
    ld a, [de]
    inc d
    inc de
    ld [$1c1d], sp

jr_011_6330:
    inc sp
    ld [$1b08], sp
    inc e
    inc d
    inc de
    ld [$5619], sp
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    db $10
    rrca
    rrca
    db $10

jr_011_6345:
    db $10
    dec c
    dec c
    ld c, $0e
    inc sp
    inc sp
    inc b
    rlca
    dec b
    ld [$0906], sp
    inc sp
    ld hl, $1e0a
    dec bc
    ld e, $0c
    ld e, $11
    inc de
    ld [de], a
    inc d
    inc bc
    inc bc
    inc bc
    inc bc
    dec d
    jr @+$18

    add hl, de
    ld d, $19
    ld d, $19
    ld d, $19
    rla
    ld a, [de]
    jr jr_011_638b

    add hl, de
    inc e
    add hl, de
    inc e
    add hl, de
    inc e
    add hl, de
    inc e
    ld a, [de]
    dec e
    jr jr_011_6394

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld d, d

jr_011_638b:
    ld d, h
    ld d, e
    ld d, l
    ld d, [hl]
    jr c, @+$3d

    ld d, [hl]
    ccf
    ld e, d

jr_011_6394:
    ld b, b
    ld e, e
    ld e, d
    ld e, d
    ld e, e
    ld e, e
    ld e, d
    ld b, l
    ld e, e
    ld b, [hl]
    dec h
    jr z, jr_011_63c7

    add hl, hl
    ld h, $2a
    daa
    dec hl
    inc l
    jr nc, jr_011_63d6

    ld sp, $312e
    cpl
    ld [hl-], a
    inc sp
    inc [hl]
    inc sp
    dec [hl]
    ld [hl], $39
    scf
    ld a, [hl-]
    ld e, c
    dec sp
    jr c, jr_011_6413

    inc a
    inc sp
    dec a
    inc sp
    ld e, $00
    inc h
    nop
    ld b, a
    ld c, d
    ld c, b
    ld c, e
    ld c, b

jr_011_63c7:
    ld c, e
    ld c, c
    ld c, h
    dec h
    jr nc, jr_011_63f4

    ld [hl-], a
    ld h, [hl]
    ld l, b
    ld h, a
    ld l, c
    ld h, d
    ld h, h
    ld h, e
    ld h, l

jr_011_63d6:
    nop
    dec sp
    nop
    dec sp
    ccf
    ld b, c
    ld b, b
    ld b, d
    ld b, e
    ld b, l
    ld b, h
    ld b, [hl]
    ld e, h
    ld e, a
    ld e, l
    ld h, b
    ld e, l
    ld h, b
    ld e, l
    ld h, b
    ld e, l
    ld h, b
    ld e, h
    ld e, a
    ld d, b
    ld e, [hl]
    ld d, c
    ld h, c
    ld c, d
    ld c, l

jr_011_63f4:
    ld c, e
    ld c, [hl]
    ld c, e
    ld c, [hl]
    ld c, h
    ld c, a
    inc h
    inc h
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    inc h
    inc h
    ld [hl+], a
    ld e, $33
    ld [hl+], a
    inc sp
    ld hl, $1e21
    rra
    inc sp
    ld e, $1f
    nop

jr_011_6413:
    ld d, b
    nop
    ld d, c
    nop
    jr jr_011_6419

jr_011_6419:
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    ld a, [de]
    nop
    dec de
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    dec e
    inc hl
    inc sp
    inc hl
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc hl
    inc sp
    inc hl
    ld e, $20
    jr nz, @+$35

    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld d, h
    nop
    ld d, l
    nop
    ld a, $00
    dec sp
    ld b, a
    ld c, l
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, c
    ld c, a
    ld e, d
    ld e, d
    ld e, e
    ld e, e
    ld d, b
    ld b, a
    ld d, c
    ld c, b
    ld d, h
    ld c, b
    ld d, l
    ld c, b
    ld d, b
    ld c, b
    ld d, c
    ld c, c
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    inc h
    nop
    ld e, $00
    ld e, $00
    ld e, $00
    nop
    dec sp
    nop
    ld a, $3b
    ld d, a
    ld d, a
    jr c, jr_011_64b7

    ld e, b
    ld e, b
    dec sp
    ld a, $3e
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld a, $3e
    jr c, jr_011_64c8

    jr c, jr_011_64ca

    nop
    nop
    ld [bc], a
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
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc

jr_011_64b7:
    inc bc
    inc bc
    nop
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

jr_011_64c8:
    nop
    nop

jr_011_64ca:
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld b, $06
    ld b, $06
    nop
    nop
    jp nz, $223c

    inc e
    jp nc, $d2dc

    call c, Call_000_1c12
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld [de], a
    inc e
    rst $38
    nop
    nop
    nop
    inc c
    ld h, b
    inc c
    ld h, b
    nop
    nop
    jr nc, @+$08

    jr nc, jr_011_651c

    nop
    nop
    jp nz, $223c

    inc e

jr_011_651c:
    ld [de], a
    call c, $dc12
    ld [de], a
    inc e
    jp nc, $d21c

    inc e
    ld [de], a
    inc e
    rst $38
    nop
    nop
    nop
    ld h, b
    inc c
    ld h, b
    inc c
    nop
    nop
    ld b, $30
    ld b, $30
    nop
    nop
    jp nz, $223c

    inc e
    jp nc, $d21c

    inc e
    ld [de], a
    inc e
    ld [de], a
    call c, $dc12
    ld [de], a
    inc e
    rst $38
    nop
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    jr nc, jr_011_6584

    jr nc, jr_011_6586

    nop
    nop
    jp nz, $223c

    inc e
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld [de], a
    inc e
    jp nc, $d2dc

    call c, Call_000_1c12
    nop
    nop
    ld c, $1f
    ld [hl+], a
    inc e
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    jr jr_011_658e

    ld a, [hl-]
    jr c, jr_011_6579

jr_011_6579:
    nop
    ld c, $1f
    ld [hl+], a
    inc e
    nop
    nop
    nop
    nop
    add b
    nop

jr_011_6584:
    nop
    nop

jr_011_6586:
    nop
    nop
    jr c, jr_011_65c2

    jr @+$1a

    dec bc
    add hl, bc

jr_011_658e:
    nop
    nop
    nop
    nop
    ld b, h
    jr c, jr_011_6605

    ld hl, sp+$00
    nop
    add b
    add b
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, h
    jr c, jr_011_6615

    ld hl, sp+$00
    nop
    nop
    nop
    jr c, jr_011_6628

    adc b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    jr jr_011_65b7

jr_011_65b7:
    ld a, [hl-]
    nop
    nop
    jr c, jr_011_6638

    adc b
    ld [hl], b
    nop
    nop
    nop
    nop

jr_011_65c2:
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_011_65cb

jr_011_65cb:
    jr jr_011_65cd

jr_011_65cd:
    dec bc
    nop
    nop
    nop
    nop
    ld de, $1c0e
    ld a, $00
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld de, $1c0e
    ld a, $00
    nop
    nop
    nop
    ldh [$fff1], a
    ld [hl+], a
    pop bc
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    jr jr_011_65f6

jr_011_65f6:
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    ldh [$fff1], a
    ld [hl+], a
    pop bc
    nop
    nop
    nop
    nop
    add b
    add b
    nop

jr_011_6605:
    nop
    nop
    nop
    jr c, jr_011_660a

jr_011_660a:
    jr jr_011_660c

jr_011_660c:
    dec bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, h
    add e
    rlca

jr_011_6615:
    adc a
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, h
    add e
    rlca
    adc a
    nop
    nop

jr_011_6628:
    nop
    nop
    add e
    rst $00
    adc b
    rlca
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    jr jr_011_6637

jr_011_6637:
    ld a, [hl-]

jr_011_6638:
    nop
    nop
    add e
    rst $00
    adc b
    rlca
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
    jr c, jr_011_664b

jr_011_664b:
    jr jr_011_664d

jr_011_664d:
    dec bc
    nop
    nop
    nop
    nop
    ld de, $c1e0
    db $e3
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld de, $c1e0
    db $e3
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld h, b
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, b
    ld [hl], c
    ld d, h
    ld h, l
    ld l, h
    ld c, l
    ld e, h
    ld e, l
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    ld hl, sp+$62
    sub b
    sub d
    inc c
    adc d
    inc b
    add [hl]
    nop
    add d
    nop
    ld e, h
    ld e, l
    ld l, h
    ld c, l
    ld d, h
    ld h, l
    ld c, b
    ld [hl], c
    ld h, [hl]
    ld l, c
    ld b, b
    ld c, a
    ccf
    nop
    nop
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    inc b
    sub d
    inc c
    ld l, d
    sbc b
    ld [bc], a
    ldh a, [$fffc]
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld h, b
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, b
    ld [hl], c
    ld d, b
    ld h, c
    ld h, b
    ld b, c
    ld b, b
    ld b, c
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    ld hl, sp+$62
    sub b
    sub d
    inc c
    adc d
    inc b
    add [hl]
    nop
    add d
    nop
    ld b, b
    ld b, c
    ld h, b
    ld b, c
    ld d, b
    ld h, c
    ld c, b
    ld [hl], c
    ld h, [hl]
    ld l, c
    ld b, b
    ld c, a
    ccf
    nop
    nop
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    inc b
    sub d
    inc c
    ld l, d
    sbc b
    ld [bc], a
    ldh a, [$fffc]
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld hl, sp+$44
    jr c, jr_011_66ef

jr_011_66ef:
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [hl], b
    ld hl, sp+$44
    jr c, jr_011_66ff

jr_011_66ff:
    nop
    nop
    nop
    sub b
    db $10
    jr @+$1a

    inc e
    inc e
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    ld [hl+], a
    inc e
    ld c, $1f
    nop
    nop
    sbc h
    sbc h
    jr jr_011_6734

    ld d, b
    stop
    nop
    nop
    nop
    ld [hl+], a
    inc e
    ld c, $1f
    nop
    nop
    nop
    nop
    inc e
    ld a, $11
    ld c, $00
    nop
    nop
    nop
    nop
    ld [bc], a

jr_011_6734:
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    inc e
    ld a, $11
    ld c, $00
    nop
    nop
    nop
    nop
    sub b
    nop
    jr jr_011_6747

jr_011_6747:
    inc e
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    adc b
    ld [hl], b
    jr c, jr_011_67d2

    nop
    nop
    nop
    sbc h
    nop
    jr jr_011_675d

jr_011_675d:
    ld d, b
    nop
    nop
    nop
    nop
    adc b
    ld [hl], b
    jr c, jr_011_67e2

    nop
    nop
    nop
    nop
    rlca
    adc a
    ld b, h
    add e
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca
    adc a
    ld b, h
    add e
    nop
    nop
    nop
    nop
    sub b
    add b
    jr jr_011_6786

jr_011_6786:
    inc e
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [hl+], a
    pop bc
    ldh [$fff1], a
    nop
    nop
    sbc h
    nop
    jr jr_011_679c

jr_011_679c:
    ld d, b
    ld b, b
    nop
    nop
    nop
    nop
    ld [hl+], a
    pop bc
    ldh [$fff1], a
    nop
    nop
    nop
    nop
    pop bc
    db $e3
    ld de, $00e0
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    pop bc
    db $e3
    ld de, $00e0
    nop
    nop

jr_011_67c1:
    nop
    nop
    sub b
    nop
    jr jr_011_67c7

jr_011_67c7:
    inc e
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop

jr_011_67d1:
    nop

jr_011_67d2:
    adc b
    rlca
    add e
    rst $00
    nop
    nop
    nop
    sbc h
    nop
    jr jr_011_67dd

jr_011_67dd:
    ld d, b
    nop
    nop
    nop
    nop

jr_011_67e2:
    adc b
    rlca
    add e
    rst $00
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld h, b
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, b
    ld [hl], c
    ld d, b
    ld h, c
    ld h, b
    ld b, c
    ld b, b
    ld b, c
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    ld hl, sp+$62
    sub b
    sub d
    inc c
    xor d
    inc h
    or [hl]
    jr nc, jr_011_67c1

    jr c, jr_011_6849

    ld b, c
    ld h, b
    ld b, c
    ld d, b
    ld h, c
    ld c, b
    ld [hl], c
    ld h, [hl]
    ld l, c
    ld b, b
    ld c, a
    ccf
    nop
    nop
    nop
    cp d
    jr c, jr_011_67d1

    jr nc, jr_011_67c7

    inc h
    sub d
    inc c
    ld l, d
    sbc b
    ld [bc], a
    ldh a, [$fffc]
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld h, b
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, b
    ld [hl], c
    ld d, b
    ld h, c
    ld h, b
    ld b, c
    ld b, b
    ld b, c
    nop
    nop
    db $fc
    db $fc
    ld a, [bc]
    ld hl, sp+$62
    sub b
    sub d
    inc c
    adc d
    inc b
    add [hl]
    nop
    add d
    nop
    ld b, b

jr_011_6849:
    ld b, c
    ld h, b
    ld b, c
    ld d, b
    ld h, c
    ld c, b
    ld [hl], c
    ld h, [hl]
    ld l, c
    ld b, b
    ld c, a
    ccf
    nop
    nop
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    inc b
    sub d
    inc c
    ld l, d
    sbc b
    ld [bc], a
    ldh a, [$fffc]
    nop
    nop
    nop
    and b
    sub d
    jr nz, jr_011_686c

jr_011_686c:
    add sp, $64
    ld b, $10
    sub c
    nop
    nop
    ld l, b
    ld h, l
    ld b, $a0
    sub d
    jr nz, jr_011_687a

jr_011_687a:
    ld [$0665], sp
    db $10
    sub c
    nop
    nop
    ld l, b
    ld h, l
    ld b, $a0
    sub d
    jr nz, jr_011_6888

jr_011_6888:
    jr z, @+$67

    ld b, $10
    sub c
    nop
    nop
    ld l, b
    ld h, l
    ld b, $a0
    sub d

jr_011_6894:
    jr nz, jr_011_6896

jr_011_6896:
    ld c, b
    ld h, l
    ld b, $10
    sub c
    nop
    nop
    ld l, b
    ld h, l
    ld b, $a0
    sub d
    jr nz, jr_011_68a4

jr_011_68a4:
    jr z, @+$67

    ld b, $10
    sub c
    nop
    nop
    ld l, b
    ld h, l
    ld b, $a0
    sub d

jr_011_68b0:
    jr nz, jr_011_68b2

jr_011_68b2:
    ld [$0665], sp
    db $10
    sub c
    nop
    nop
    ld l, b
    ld h, l
    ld b, $ff
    and b
    sub d
    jr nz, jr_011_68c1

jr_011_68c1:
    add sp, $64
    ld bc, $9620
    ld b, b
    nop
    ld l, b
    ld h, l
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    ld l, b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_68dd

jr_011_68dd:
    add sp, $64
    ld bc, $9620
    ld b, b
    nop
    xor b
    ld h, l
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    ld l, b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_68f9

jr_011_68f9:
    ld [$0165], sp
    jr nz, jr_011_6894

    ld b, b
    nop
    add sp, $65
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    ld l, b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_6915

jr_011_6915:
    ld [$0165], sp
    jr nz, jr_011_68b0

    ld b, b
    nop
    jr z, @+$68

    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    xor b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_6931

jr_011_6931:
    jr z, jr_011_6998

    ld bc, $9620
    ld b, b
    nop
    ld l, b
    ld h, l
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    xor b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_694d

jr_011_694d:
    jr z, jr_011_69b4

    ld bc, $9620
    ld b, b
    nop
    xor b
    ld h, l
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    xor b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_6969

jr_011_6969:
    ld c, b
    ld h, l
    ld bc, $9620
    ld b, b
    nop
    add sp, $65
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    ld l, b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_6985

jr_011_6985:
    ld c, b
    ld h, l
    ld bc, $9620
    ld b, b
    nop
    jr z, @+$68

    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660

jr_011_6998:
    ld b, b
    nop
    ld l, b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_69a1

jr_011_69a1:
    jr z, jr_011_6a08

    ld bc, $9620
    ld b, b
    nop
    ld l, b
    ld h, l
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660

jr_011_69b4:
    ld b, b
    nop
    ld l, b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_69bd

jr_011_69bd:
    jr z, @+$67

    ld bc, $9620
    ld b, b
    nop
    xor b
    ld h, l
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    xor b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_69d9

jr_011_69d9:
    ld [$0165], sp
    jr nz, @-$68

    ld b, b
    nop
    add sp, $65
    ld bc, $9110

jr_011_69e5:
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    xor b
    ld h, [hl]
    ld bc, $92a0
    jr nz, jr_011_69f5

jr_011_69f5:
    ld [$0165], sp
    jr nz, @-$68

    ld b, b
    nop
    jr z, jr_011_6a64

    ld bc, $9110

jr_011_6a01:
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660

jr_011_6a08:
    ld b, b
    nop
    xor b
    ld h, [hl]
    ld bc, $a0ff
    sub d
    jr nz, jr_011_6a12

jr_011_6a12:
    add sp, $64
    ld bc, $9620
    ld b, b
    nop
    add sp, $66
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    add sp, $67
    ld bc, $92a0
    jr nz, jr_011_6a2e

jr_011_6a2e:
    add sp, $64
    ld bc, $9620
    ld b, b
    nop
    jr z, jr_011_6a9e

    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    add sp, $67
    ld bc, $92a0
    jr nz, jr_011_6a4a

jr_011_6a4a:
    ld [$0165], sp
    jr nz, jr_011_69e5

    ld b, b
    nop
    ld l, b
    ld h, a
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    add sp, $67
    ld bc, $92a0

jr_011_6a64:
    jr nz, jr_011_6a66

jr_011_6a66:
    ld [$0165], sp
    jr nz, jr_011_6a01

    ld b, b
    nop
    xor b
    ld h, a
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop

Call_011_6a7b:
    jr z, jr_011_6ae5

    ld bc, $92a0
    jr nz, jr_011_6a82

jr_011_6a82:
    jr z, jr_011_6ae9

    ld bc, $9620
    ld b, b
    nop
    add sp, $66
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    jr z, jr_011_6b01

    ld bc, $92a0
    jr nz, jr_011_6a9e

jr_011_6a9e:
    jr z, jr_011_6b05

    ld bc, $9620
    ld b, b
    nop
    jr z, jr_011_6b0e

    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    jr z, jr_011_6b1d

    ld bc, $92a0
    jr nz, jr_011_6aba

jr_011_6aba:
    ld c, b
    ld h, l
    ld bc, $9620
    ld b, b
    nop
    ld l, b
    ld h, a
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    add sp, $67
    ld bc, $92a0
    jr nz, jr_011_6ad6

jr_011_6ad6:
    ld c, b
    ld h, l
    ld bc, $9620
    ld b, b
    nop
    xor b
    ld h, a
    ld bc, $9110
    nop
    nop
    ld l, b

jr_011_6ae5:
    ld h, l
    ld bc, $9660

jr_011_6ae9:
    ld b, b
    nop
    add sp, $67
    ld bc, $92a0
    jr nz, jr_011_6af2

jr_011_6af2:
    jr z, jr_011_6b59

    ld bc, $9620
    ld b, b
    nop
    add sp, $66
    ld bc, $9110
    nop
    nop
    ld l, b

jr_011_6b01:
    ld h, l
    ld bc, $9660

jr_011_6b05:
    ld b, b
    nop
    add sp, $67
    ld bc, $92a0
    jr nz, jr_011_6b0e

jr_011_6b0e:
    jr z, @+$67

    ld bc, $9620
    ld b, b
    nop
    jr z, @+$69

    ld bc, $9110
    nop
    nop
    ld l, b

jr_011_6b1d:
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    jr z, @+$6a

    ld bc, $92a0
    jr nz, jr_011_6b2a

jr_011_6b2a:
    ld [$0165], sp
    jr nz, @-$68

    ld b, b
    nop
    ld l, b
    ld h, a
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660
    ld b, b
    nop
    jr z, jr_011_6ba9

    ld bc, $92a0
    jr nz, jr_011_6b46

jr_011_6b46:
    ld [$0165], sp
    jr nz, @-$68

    ld b, b
    nop
    xor b
    ld h, a
    ld bc, $9110
    nop
    nop
    ld l, b
    ld h, l
    ld bc, $9660

jr_011_6b59:
    ld b, b
    nop
    jr z, jr_011_6bc5

    ld bc, $40ff
    ld [hl], b
    ld h, a
    rst $38
    sbc c
    nop
    inc a
    nop
    inc a
    nop
    ld e, $00
    nop
    ld [bc], a
    ld bc, $0168
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $0168
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld a, b
    nop
    ld [bc], a
    ld bc, $00f0
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $0168
    ld [bc], a
    ld bc, $0168
    ld [bc], a
    ld bc, $0168
    ld [bc], a

jr_011_6ba9:
    ld bc, $0168
    nop
    nop
    nop
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
    ld a, b
    nop

Call_011_6bbc:
    ld a, [$de8f]
    dec a
    add a
    add a
    ld e, a
    ld d, $00

jr_011_6bc5:
    ld hl, $6b6c
    add hl, de
    ld a, [hl+]
    ld [$d161], a
    ld a, [hl+]
    or a
    jr z, jr_011_6bd4

    ld [$d140], a

jr_011_6bd4:
    ld de, $d15b
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ret


Call_011_6be3:
    ld a, [$d161]
    or a
    ret z

    dec a
    jr nz, jr_011_6c04

    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    ld a, $2e
    add c
    ld l, a
    ld a, [hl]
    cp $0c
    jr c, jr_011_6bfe

    ld [hl], $00

jr_011_6bfe:
    ld de, $6868
    jp Jump_011_41dc


jr_011_6c04:
    ld a, [$deaf]
    or a
    ret nz

    ld hl, $d15b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, l
    ld [$d15b], a
    ld a, h
    ld [$d15c], a
    ld de, $d15d
    ld a, [de]
    sub l
    inc de
    ld a, [de]
    sbc h
    jr nc, jr_011_6c33

    ld a, $00
    ld [$d15b], a
    ld a, $00
    ld [$d15c], a
    ld hl, $d140
    ld a, $03
    sub [hl]
    ld [hl], a

jr_011_6c33:
    ld a, [$d140]
    bit 0, a
    jr z, jr_011_6c3f

    ld de, $68bd
    jr jr_011_6c42

jr_011_6c3f:
    ld de, $6a0e

jr_011_6c42:
    ld a, [$c3e5]
    ld c, a
    ld a, [$c3e6]
    ld h, a
    ld a, $2c
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    call Call_011_41dc
    ld a, [$d74b]
    cp $01
    jr nz, jr_011_6c8c

    ld a, [$d742]
    ld e, a
    call Call_011_6cd5
    jr z, jr_011_6c6d

    ld a, [$d743]
    ld e, a
    call Call_011_6cd5
    jr nz, jr_011_6c8c

jr_011_6c6d:
    ld a, [$d140]
    bit 0, a
    ld hl, $ff80
    jr nz, jr_011_6c7a

    ld hl, $0080

jr_011_6c7a:
    ld a, [$d766]
    or a
    jr nz, jr_011_6c88

    ld a, l
    ld [$d731], a
    ld a, h
    ld [$d732], a

jr_011_6c88:
    xor a
    ld [$d766], a

jr_011_6c8c:
    ld a, [$c2cc]
    or a
    jr z, jr_011_6cd4

    ld a, [$de9b]
    cp $01
    jr nz, jr_011_6cd4

    ld a, [$c2d1]
    bit 0, a
    jr z, jr_011_6cd4

    ld a, [$c2d2]
    add $f7
    ld e, a
    ld a, [$c2d3]
    add $0b
    ld d, a
    push de
    call Call_011_6cdb
    pop de
    jr z, jr_011_6cbf

    ld a, [$c2d2]
    add $09
    ld e, a
    ld a, d
    call Call_011_6cdb
    jr nz, jr_011_6cd4

jr_011_6cbf:
    ld a, [$d140]
    bit 0, a
    ld hl, $ff80
    jr nz, jr_011_6ccc

    ld hl, $0080

jr_011_6ccc:
    ld a, l
    ld [$c2d4], a
    ld a, h
    ld [$c2d5], a

jr_011_6cd4:
    ret


Call_011_6cd5:
    ld a, [$d725]
    add $0d
    ld d, a

Call_011_6cdb:
    call Call_000_0165
    cp $26
    ret z

    cp $25
    ret


Call_011_6ce4:
    xor a
    ld [$d77f], a
    ld [$cc9e], a
    ld [$d186], a
    ld [$cca2], a
    ld a, $c9
    ld [$c0fc], a
    call Call_011_6bbc
    call Call_011_6d08
    ret


Call_011_6cfd:
    call Call_011_6be3
    ld a, [$d151]
    or a
    call nz, Call_011_6d3f
    ret


Call_011_6d08:
    xor a
    ld [$d151], a
    ld a, [$de8f]
    cp $0b
    ret nz

    ld hl, $d141
    ld bc, $001a
    xor a
    call Call_000_0174
    ld hl, $d151
    ld [hl], $01
    ld hl, $6b5f
    ld de, $d141
    ld bc, $000d
    call Call_000_0180
    ld a, [$d14b]
    ld hl, $d152
    ld [hl+], a
    ld a, [$d14c]
    ld [hl], a
    ld a, [$d141]
    ld [$d14f], a
    ret


Call_011_6d3f:
    ld hl, $d155
    ld a, [hl]
    or a
    ret nz

    ld a, [$d81c]
    or a
    ret nz

    ld [hl], $01
    call Call_011_6f07
    call Call_011_6e34
    ld a, [$d7d2]
    ld [$d15a], a
    call Call_011_6ed5
    call Call_011_6e4d
    ret


    ld a, [$d155]
    or a
    ret z

    ld a, [$d14f]
    push af
    ld a, [$deaf]
    or a
    jr nz, jr_011_6dca

    ld hl, $d152
    call Call_000_01ec
    jr nz, jr_011_6dca

    ld a, [$d154]
    or a
    jr nz, jr_011_6da5

    ld hl, $d14e
    ld de, $d145
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld a, [$d142]
    ld e, a
    ld a, [hl]
    cp e
    jr c, jr_011_6dca

    ld [hl], e
    ld a, $01
    ld [$d154], a
    ld a, [$d149]
    ld [$d152], a
    ld a, [$d14a]
    ld [$d153], a
    jr jr_011_6dca

jr_011_6da5:
    ld hl, $d14e
    ld de, $d143
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld a, [$d141]
    cp [hl]
    jr c, jr_011_6dca

    ld [hl], a
    ld a, $00
    ld [$d154], a
    ld a, [$d147]
    ld [$d152], a
    ld a, [$d148]
    ld [$d153], a

jr_011_6dca:
    pop af
    ld hl, $d14f
    sub [hl]
    cpl
    inc a
    ld [$d150], a
    ld a, $01
    ld [$d77f], a
    xor a
    ld [$d186], a
    ld a, [$d150]
    ld [$cc9e], a
    ld a, [$d141]
    ld d, a
    ld b, $00
    call Call_000_0294
    ld a, [$d14f]
    ld d, a
    ld b, $80
    call Call_000_0294
    ld a, [$d14f]
    ld d, a
    ld a, [$d141]
    sub d
    ld d, $ff
    ld b, a
    call Call_000_0294
    ld a, [$deaf]
    or a
    jr nz, jr_011_6e1f

    ld a, [$d74b]
    cp $01
    jr nz, jr_011_6e1f

    ld hl, $c2cc
    bit 7, [hl]
    jr nz, jr_011_6e1f

    ld a, [$d150]
    ld hl, $d725
    add [hl]
    ld [hl], a

jr_011_6e1f:
    ret


Call_011_6e20:
    ld a, [$d14f]
    ld [$d157], a
    ld b, a
    ld a, [$d141]
    sub b
    ld b, a
    ld a, [$d7d2]
    add b
    ld [$d15a], a
    ret


Call_011_6e34:
    ld a, $ff
    ld [$cca2], a
    ld a, $c9
    ld [$c0fc], a
    ld hl, $c0ff
    ld [hl], $11
    dec hl
    ld [hl], $6d
    dec hl
    ld [hl], $5f
    dec hl
    ld [hl], $c3
    ret


Call_011_6e4d:
    ld a, $c9
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0fb
    ld [hl], $11
    dec hl
    ld [hl], $6e
    dec hl
    ld [hl], $69
    dec hl
    ld [hl], $c3
    ld a, $0d
    ld [$de2c], a
    ret


    ld a, [$d156]
    or a
    jr z, jr_011_6ede

    push bc
    dec a
    jr nz, jr_011_6eb2

    ld a, [$d141]
    ld c, a
    ld a, [$d157]
    dec a
    cp c
    jr c, jr_011_6eb2

    dec c
    ld a, [$d158]
    ld b, a

jr_011_6e83:
    ldh a, [rLY]
    cp c
    jr c, jr_011_6e83

jr_011_6e88:
    ldh a, [rSTAT]
    and $03
    jr z, jr_011_6e88

jr_011_6e8e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_011_6e8e

    ld a, b
    ldh [rSCY], a
    xor a
    ldh [rSCX], a
    ldh a, [rLY]
    ld b, a
    ld a, [$d157]
    ld c, a
    sub $05
    cp b
    jr c, jr_011_6eb2

    ld a, c
    sub $03
    ldh [rLYC], a
    ld a, $02
    ld [$d156], a
    pop bc
    ret


jr_011_6eb2:
    ld a, [$d15a]
    ld b, a
    ld a, [$d157]
    dec a
    ld c, a

jr_011_6ebb:
    ldh a, [rLY]
    cp c
    jr c, jr_011_6ebb

jr_011_6ec0:
    ldh a, [rSTAT]
    and $03
    jr z, jr_011_6ec0

jr_011_6ec6:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_011_6ec6

    ld a, b
    ldh [rSCY], a
    ld a, [$d7d1]
    ldh [rSCX], a
    pop bc

Call_011_6ed5:
    xor a
    ld [$d156], a
    ld a, $7e
    ldh [rLYC], a
    ret


jr_011_6ede:
    ld a, [$de42]
    or a
    jr z, jr_011_6ef5

jr_011_6ee4:
    ldh a, [rSTAT]
    and $03
    jr z, jr_011_6ee4

jr_011_6eea:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_011_6eea

    ld a, [$de97]
    ldh [rLCDC], a

jr_011_6ef5:
    ld a, $01
    ld [$d156], a
    ld a, [$d141]
    sub $03
    ldh [rLYC], a
    push bc
    call Call_011_6e20
    pop bc
    ret


Call_011_6f07:
    ld a, [$d7d2]
    add $02
    bit 7, a
    ld hl, $9840
    ld b, $10
    jr nz, jr_011_6f1a

    ld hl, $9a40
    ld b, $90

jr_011_6f1a:
    ld a, [$d141]
    cpl
    inc a
    add b
    ld b, a
    ld [$d158], a
    ld c, $14
    ld b, $0e
    ld a, [$d14d]
    jp Jump_011_4128


    ld [hl-], a
    ld l, a
    jr c, jr_011_6fa1

    add hl, sp
    ld l, a
    add hl, sp
    ld l, a
    add hl, sp
    ld l, a
    rst $38
    nop
    xor [hl]
    ld l, a
    inc sp
    ld [hl], b
    ld d, a
    ld l, a
    ld e, e
    ld l, a
    daa
    nop
    ld h, e
    ld b, a
    ld l, a
    ld bc, $6f58
    ld e, h
    ld l, a
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld b, d
    ld [$0060], sp
    nop
    ret


    jr jr_011_6f5a

jr_011_6f5a:
    ret


    ret


    ld a, [bc]
    ld [$0010], sp
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
    ld c, $0e
    inc de
    inc d
    dec c
    rrca
    ld de, $1700
    rrca
    ld c, $13
    ld d, $15
    rla
    ld c, $16
    ld c, $15
    ld d, $15
    rla
    nop
    ld c, $13
    ld d, $00
    inc de
    rla
    inc de
    inc d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_011_6fa1:
    add hl, bc
    add hl, bc
    add hl, bc
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
    ld hl, $0000
    nop
    nop
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    inc b
    rlca
    dec b
    ld [$0906], sp
    dec c
    dec c
    ld a, [bc]
    ld c, $0b
    dec c
    inc c
    ld c, $0d
    dec c
    ld c, $0e
    rrca
    ld de, $1210
    inc de
    rla
    inc d
    jr jr_011_6ff1

    add hl, de
    ld d, $1a
    dec de
    ld e, $1d
    inc e
    ld e, $00
    nop
    nop
    ld e, $1d
    dec de
    ld e, $00
    ld e, $00
    nop
    ld e, $00

jr_011_6ff1:
    nop
    dec e
    nop
    nop
    nop
    dec de
    nop
    nop
    inc e
    nop
    dec e
    nop
    nop
    ld e, $1d
    inc e
    dec de
    ld e, $00
    ld e, $00
    dec de
    nop
    nop
    nop
    dec de
    ld e, $00
    nop
    dec de
    ld hl, $1f23
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    ld [hl+], a
    inc h
    inc hl
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc h
    inc h
    inc hl
    dec h
    inc bc
    jr nz, @+$05

    jr nz, @+$05

    jr nz, @+$05

    jr nz, jr_011_7056

    ld h, $00
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_7056:
    ld a, [bc]
    inc bc
    jr jr_011_7073

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
    rra
    rra
    rra
    rra
    rra

jr_011_7073:
    rra
    rra
    jr nz, jr_011_7077

jr_011_7077:
    nop
    ld a, [bc]
    inc bc
    stop
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
    ld c, $9c
    ld [hl], b
    and d
    ld [hl], b
    and e
    ld [hl], b
    and e
    ld [hl], b
    and e
    ld [hl], b
    rst $38
    inc bc
    ld a, [de]
    ld [hl], c
    inc de
    ld [hl], d
    cp a
    ld [hl], b
    call nz, Call_000_2770
    nop
    ld h, e
    or c
    ld [hl], b
    ld b, c
    jp $c870


    ld [hl], b
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    call Call_011_7258
    ret


    ret


    call Call_011_728b
    ret


    ld a, [bc]
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [de], a
    inc de
    inc d
    dec d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, $17
    jr jr_011_7101

    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [de]
    dec de
    inc e
    dec e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld e, $1f
    jr nz, jr_011_711d

    rrca
    rrca
    rrca
    rrca
    rrca

jr_011_7101:
    rrca
    ld [hl+], a
    inc hl
    inc h
    dec h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld h, $27
    jr z, jr_011_7139

    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    ld a, $00
    nop

jr_011_711d:
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $0d0d
    ld c, $0e
    nop
    nop
    inc b
    rlca
    dec b
    ld [$0906], sp
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    nop

jr_011_7139:
    inc c
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $ada6
    and a
    xor [hl]
    xor b
    ld h, c
    xor c
    ld h, d
    and [hl]
    ld h, h
    and a
    ld h, l
    xor b
    ld h, h
    xor c
    ld h, l
    ld h, e
    nop
    ld h, e
    nop
    xor a
    xor a
    or b
    or b
    and e
    xor d
    and e
    xor d
    and h
    xor e
    and l
    xor h
    ld bc, $0101
    dec de
    inc de
    inc e
    inc d
    dec e
    dec d
    ld e, $16
    rra
    ld bc, $0120
    ld bc, $2901
    inc hl
    ld a, [hl+]
    inc h
    dec hl
    dec h
    inc l
    ld h, $2d
    daa
    ld l, $28
    cpl
    ld bc, $3130
    ld b, c
    ld [hl-], a
    ld b, d
    inc sp
    ld b, e
    inc [hl]
    ld b, h
    dec [hl]
    ld b, l
    ld [hl], $46
    scf
    ld b, a
    jr c, jr_011_71db

    ld c, c
    ld d, c
    ld c, d
    ld d, d
    ld c, e
    ld d, e
    ld c, h
    ld d, h
    ld c, l
    ld d, l
    ld c, [hl]
    ld d, [hl]
    ld c, a
    ld d, a
    ld d, b
    ld e, b
    ld e, c
    ld h, [hl]
    ld e, d
    ld h, a
    ld e, e
    ld l, b
    ld e, h
    ld l, c
    ld e, l
    ld l, d
    ld e, [hl]
    ld l, e
    ld e, a
    ld l, h
    ld h, b
    ld l, l
    sub e
    sbc e
    sub h
    sbc h
    sub l
    sbc l
    sub [hl]
    sbc [hl]
    sub a
    sbc a
    sbc b
    and b
    sbc c
    and c
    sbc d
    and d
    ld bc, $0101
    rla
    rrca
    jr jr_011_71da

    inc bc
    ld de, $1203
    add hl, de
    ld bc, $011a
    ld bc, $2901
    ld hl, $032a
    dec hl
    inc bc

jr_011_71da:
    inc l

jr_011_71db:
    inc bc
    dec l
    inc bc
    ld l, $22
    cpl
    ld bc, $3130
    add hl, sp
    ld [hl-], a
    ld a, [hl-]
    inc sp
    dec sp
    inc [hl]
    inc a
    dec [hl]
    dec a
    ld [hl], $3e
    scf
    ccf
    jr c, jr_011_7233

    ld bc, $2101
    or c
    inc bc
    or d
    inc bc
    or e
    inc bc
    or h
    inc bc
    or l
    ld [hl+], a
    or [hl]
    ld bc, $0101
    ld bc, $018d
    adc [hl]
    ld bc, $018f
    sub b
    ld bc, $0191
    sub d
    ld bc, $0101
    nop
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
    nop
    nop
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
    nop
    nop
    nop
    nop

jr_011_7233:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0210
    jr nz, @+$16

    stop

Call_011_7258:
    ld a, [$def0]
    bit 2, a
    jr nz, jr_011_728a

    ld hl, $d140
    ld bc, $0001
    xor a
    call Call_000_0174
    ld a, $63
    ld [$d725], a
    ld a, $01
    ld [$d722], a
    ld [$d70d], a
    ld a, $01
    ld [$d74c], a
    xor a
    ld [$dece], a
    ld de, $7251
    call Call_011_408b
    ld hl, $d140
    ld [hl], $5a

jr_011_728a:
    ret


Call_011_728b:
    ld a, [$def0]
    bit 2, a
    jr nz, jr_011_72b0

    call Call_011_409f
    jr c, jr_011_7299

    jr jr_011_72b0

jr_011_7299:
    ld hl, $d140
    call Call_000_01e9
    jr nz, jr_011_72b0

    ld hl, $def0
    set 2, [hl]
    xor a
    ld [$d771], a
    ld [$d74c], a
    ld [$de29], a

jr_011_72b0:
    ret


    or l
    ld [hl], d
    cp e
    ld [hl], d
    cp h
    ld [hl], d
    jp z, $d872

    ld [hl], d
    rst $38
    ld [$7357], sp
    jr nz, jr_011_7335

    ld [bc], a
    ld [hl], e
    inc b
    ld [hl], e
    jr nz, jr_011_72c7

jr_011_72c7:
    ld h, e
    and $72
    ld bc, $7357
    jr nz, jr_011_7343

    ld [bc], a
    ld [hl], e
    inc b
    ld [hl], e
    jr nz, jr_011_72d5

jr_011_72d5:
    ld h, e
    and $72
    dec b
    ld d, a
    ld [hl], e
    jr nz, jr_011_7351

    ld [bc], a
    ld [hl], e
    inc b
    ld [hl], e
    sub h
    nop
    ld h, e
    db $f4
    ld [hl], d
    ld b, c
    inc bc
    ld [hl], e
    dec b
    ld [hl], e
    nop
    nop
    nop
    nop
    inc hl
    add hl, bc
    ld h, b
    nop
    nop
    ld b, d
    inc bc
    ld [hl], e
    dec b
    ld [hl], e
    nop
    nop
    nop
    nop
    inc hl
    add hl, bc
    ld h, b
    nop
    nop
    ret


    ret


    ret


    ld a, [bc]
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_011_7335:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_011_7343:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec d
    ld d, $17
    dec d

jr_011_7351:
    ld d, $17
    dec d
    ld d, $17
    dec d
    ld [hl-], a
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    inc b
    rlca
    dec b
    ld [$0906], sp
    dec c
    dec c
    ld a, [bc]
    ld c, $0b
    dec c
    inc c
    ld c, $0d
    dec c
    ld c, $0e
    rrca
    ld de, $1210
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld de, $1210
    nop
    inc de
    nop
    inc d
    inc bc
    inc bc
    dec d
    dec d
    ld d, $16
    inc bc
    inc bc
    inc bc
    add hl, de
    rla
    ld a, [de]
    jr jr_011_73b7

    inc bc
    inc e
    inc bc
    inc bc
    inc bc
    inc bc
    dec e
    ld hl, $221e
    rra
    inc hl
    jr nz, jr_011_73ce

    inc bc
    inc bc
    dec h
    dec hl
    ld h, $2c
    daa
    dec l
    jr z, jr_011_73e2

    add hl, hl
    cpl
    ld a, [hl+]

jr_011_73b7:
    jr nc, jr_011_73ea

    ld [hl], $32
    scf
    inc sp
    jr c, jr_011_73f3

    add hl, sp
    dec [hl]
    ld a, [hl-]
    inc bc
    inc bc
    dec sp
    ld b, b
    inc a
    ld b, c
    dec a
    ld b, d
    ld a, $43
    ccf
    ld b, h

jr_011_73ce:
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, l
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, a
    ld c, h
    ld c, b
    ld c, l
    ld c, c
    ld c, [hl]
    inc bc
    inc bc
    ld c, a
    ld d, h
    ld d, b
    ld d, l

jr_011_73e2:
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld e, b
    inc bc
    inc bc

jr_011_73ea:
    inc bc
    ld e, a
    ld e, c
    ld h, b
    ld e, d
    ld h, c
    ld e, e
    ld h, d
    ld e, h

jr_011_73f3:
    ld h, e
    ld e, l
    ld h, h
    ld e, [hl]
    ld h, l
    inc bc
    inc bc
    ld h, [hl]
    ld l, e
    ld h, a
    ld l, h
    ld l, b
    inc bc
    ld l, c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, d
    inc bc
    inc bc
    sub b
    ld l, l
    sub c
    adc l
    sub d
    adc [hl]
    sub e
    adc a
    sub h
    inc bc
    inc bc
    sub l
    sbc d
    sub [hl]
    sbc e
    sub a
    sbc h
    sbc b
    sbc l
    sbc c
    inc bc
    inc bc
    inc bc
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    ld d, [hl]
    ld [hl], h
    ld e, h
    ld [hl], h
    ld e, l
    ld [hl], h
    ld e, l
    ld [hl], h
    ld e, l
    ld [hl], h
    rst $38
    rrca
    call nc, Call_011_5d74
    ld [hl], l
    ld [hl], a
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    sbc [hl]
    nop
    ld d, e
    ld l, e
    ld [hl], h
    ld b, c
    ld a, b
    ld [hl], h
    add d
    ld [hl], h
    nop
    nop
    nop
    nop
    rst $38
    add b
    nop
    ret


    call Call_011_757f
    jr jr_011_747d

jr_011_747d:
    ret


    call Call_011_7597
    ret


    ld a, [bc]
    ld [$0b0a], sp
    ld de, $0c0b
    ld a, [bc]
    dec bc
    ld c, $0b
    inc c
    dec c
    dec bc
    dec bc
    dec bc
    rrca
    dec c
    dec bc
    ld de, $0f0b
    rra
    rla
    ld e, $1f
    rra
    jr nz, jr_011_74bd

    rra
    rra
    jr nz, jr_011_74b9

    rla
    ld [de], a
    inc de
    inc de
    inc d
    ld [de], a
    inc de
    inc de
    inc d
    ld a, [de]
    rla
    ld [de], a
    inc de
    inc de
    inc d
    ld [de], a
    inc de
    inc de
    inc d
    dec e
    rla
    ld [de], a

jr_011_74b9:
    inc de
    inc de
    inc d
    ld [de], a

jr_011_74bd:
    inc de
    inc de
    inc d
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    ld a, [bc]
    dec bc
    db $10
    dec bc
    inc c
    dec c
    dec bc
    db $10
    dec bc
    rrca
    dec c
    dec bc
    ld c, $0b
    rrca
    ld [hl+], a
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $0203
    inc b
    rlca
    dec b
    ld [$0906], sp
    inc bc
    ld [bc], a
    ld a, [bc]
    ld bc, $020b
    inc c
    ld bc, $0203
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld bc, $201c
    dec e
    ld hl, $2d2c
    inc l
    dec l
    ld e, $22
    rra
    inc hl
    inc h
    jr z, jr_011_7531

    add hl, hl
    ld h, $22
    dec h
    ld hl, $2a26
    daa
    dec hl
    ld e, $22
    dec e
    ld hl, $2a26
    dec h
    add hl, hl
    ld de, $1211
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rrca
    ld de, $1210
    db $10
    ld [de], a
    db $10
    ld [de], a
    db $10

jr_011_7531:
    rrca
    rrca
    rrca
    rrca
    inc de
    ld d, $14
    rla
    inc d
    rla
    inc d
    rla
    inc d
    rla
    dec d
    jr jr_011_755b

    ld de, $121a
    ld a, [de]
    ld [de], a
    ld a, [de]
    ld [de], a
    ld a, [de]
    ld [de], a
    dec de
    ld [de], a
    nop
    ld de, $1200
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    rrca
    add hl, de
    ld [de], a

jr_011_755b:
    ld a, [de]
    ld [de], a
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_011_757f:
    ld hl, $d140
    ld bc, $0002
    xor a
    call Call_000_0174
    ld hl, $ca00
    ld bc, $0060
    xor a
    call Call_000_0174
    call Call_011_76c3
    ret


Call_011_7597:
    ld hl, $d140
    ld a, [hl]
    or a
    jr nz, jr_011_75a9

    ld [hl], $01
    ld hl, $75cb
    ld de, $9814
    call Call_011_4068

jr_011_75a9:
    call Call_011_770b
    ret


Jump_011_75ad:
    ld b, $78
    call Call_000_023a
    call Call_000_01d1
    ld a, $c9
    ld [$c0f0], a
    xor a
    ld [$de2c], a
    ld [$db0b], a
    ld a, $ff
    ld [$df80], a
    ld a, $1c
    jp Jump_000_0297


    inc c
    db $10
    inc e
    dec e
    inc l
    inc l
    ld h, $25
    inc l
    inc l
    ld e, $1f
    ld h, $25
    jr nz, jr_011_75fc

    dec l
    dec l
    ld a, [hl+]
    add hl, hl
    dec l
    dec l
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld hl, $2524
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld h, $27
    ld h, $25
    jr z, jr_011_761c

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld a, [hl+]
    dec hl
    ld a, [hl+]

jr_011_75fc:
    add hl, hl
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
    rrca
    rrca
    ld de, $1212
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rrca
    ld de, $1212
    ld [de], a
    ld [de], a

jr_011_761c:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rrca
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rrca
    rrca
    inc de
    inc d
    inc d
    inc d
    inc d
    dec d
    rrca
    rrca
    inc de
    inc d
    rrca
    rrca
    ld d, $17
    rla
    rla
    rla
    jr jr_011_7651

    rrca
    ld d, $17
    rrca
    rrca
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    rrca
    rrca
    add hl, de
    ld a, [de]

jr_011_7651:
    rrca
    rrca
    ld de, $1212
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rrca
    ld de, $1c12
    dec e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld e, $1f
    ld e, $1d
    jr nz, jr_011_768c

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld hl, $2524
    inc l
    inc l
    ld e, $1d
    inc l
    inc l
    ld h, $27
    ld h, $25
    jr z, jr_011_76ac

    dec l
    dec l
    ld [hl+], a
    ld hl, $2d2d
    ld a, [hl+]
    dec hl
    ld [hl+], a

jr_011_768c:
    ld hl, $201e
    ld bc, $2010
    nop
    ld bc, $2820
    nop
    ld bc, $fe20
    inc d
    ld a, b
    inc a

jr_011_769d:
    jr nz, jr_011_769d

    ld [hl+], a
    ld a, b
    jr z, jr_011_76c3

    ld e, $00
    dec bc
    jr nz, @+$03

    ld hl, $28fe
    ld a, b

jr_011_76ac:
    ld bc, $fe00
    ld d, e
    ld a, b
    ld e, $00
    cp $58
    ld a, b
    ld e, $00
    cp $5d
    ld a, b
    ld a, b
    nop
    cp $68
    ld a, b
    ld a, b
    nop
    nop

Call_011_76c3:
jr_011_76c3:
    ld a, $80
    ld [$c3b5], a
    ld [$c3b4], a
    ld de, $768d
    call Call_011_408b
    ld hl, $ca00
    ld c, l
    ld b, $10
    ld a, $0a
    call Call_000_01b0
    ld a, $0d
    add c
    ld l, a
    ld [hl], $00
    ld d, $50
    ld e, $02
    ld b, $00
    call Call_000_02e2
    ld a, $50
    ld [$ca52], a
    ld a, $52
    ld [$d713], a
    ld a, $ca
    ld [$d714], a
    ld a, $01
    ld [$d74c], a
    ld a, $8e
    ld de, $8890
    call Call_000_020d
    call Call_011_77fa
    ret


Call_011_770b:
    ld a, [$deaf]
    or a
    ret nz

    call Call_011_788f
    call Call_011_409f
    jp c, Jump_011_75ad

    call Call_011_77d4
    ld hl, $ca00
    ld c, l
    ld l, $2b
    ld a, [hl]
    or a
    ret z

    dec a
    jr nz, jr_011_7763

    ld a, $0d
    add c
    ld l, a
    ld a, [$ca56]
    add [hl]
    ld [hl], a
    ld b, $01
    call Call_000_02e2
    dec b
    jr nz, jr_011_7762

    ld a, $2b
    add c
    ld l, a
    ld [hl], $02
    add $e2
    ld l, a
    ld a, [hl+]
    ld [$ca49], a
    inc l
    ld a, [hl]
    ld [$ca43], a
    ld b, $10
    call Call_000_01b3
    ld a, $14
    call Call_000_01a4
    ld [$ca51], a
    ld c, $02
    call Call_011_77c6
    ld a, $01
    ld [$ca4f], a

jr_011_7762:
    ret


jr_011_7763:
    ld a, [$ca56]
    ld hl, $ca49
    add [hl]
    ld [hl], a
    ld a, [$ca44]
    ld e, a
    ld a, [$ca45]
    ld d, a
    ld hl, $ca46
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$ca46], a
    ld a, h
    ld [$ca47], a
    ld a, [$ca48]
    ld e, a
    ld a, [$ca49]
    ld d, a
    add hl, de
    ld a, l
    ld [$ca48], a
    ld a, h
    ld [$ca49], a
    ld a, [$ca51]
    call Call_000_019e
    ld a, [$ca49]
    ldh [$ff9b], a
    ld a, [$ca54]
    cp $02
    jr nz, jr_011_77a9

    ld a, $50
    ldh [$ff9b], a

jr_011_77a9:
    ld a, [$ca43]
    ldh [$ff9c], a
    ld a, $89
    ldh [$ffac], a
    ld hl, $ca4c
    ld a, [$ca4a]
    ld c, a
    ld b, $01
    ld a, $01
    ld [$df81], a
    ld a, $10
    call Call_000_01cb
    ret


Call_011_77c6:
Jump_011_77c6:
    ld a, c
    ld [$ca4a], a
    ld hl, $ca4c
    ld b, $00
    ld a, $10
    jp Jump_000_01cb


Call_011_77d4:
    ld a, [$ca54]
    or a
    ret z

    dec a
    ld hl, $d70d
    jr z, jr_011_77e2

    ld hl, $ca49

jr_011_77e2:
    ld b, $50
    ld a, [hl]
    sub b
    ld [hl], b
    ld e, a
    cpl
    inc a
    ld [$ca56], a
    ld hl, $ca57
    ld a, [hl]
    add e
    ld [hl], a
    ret


    ld a, [$ca57]
    ldh [rSCX], a
    ret


Call_011_77fa:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f8], a
    call Call_000_01c5
    ld hl, $c0f3
    ld [hl], $11
    dec hl
    ld [hl], $77
    dec hl
    ld [hl], $f4
    dec hl
    ld [hl], $c3
    ret


    ld a, [$d722]
    cp $51
    jp nc, Jump_011_4106

    ld a, $01
    ld [$ca54], a
    ret


    ld hl, $ca2b
    ld [hl], $01
    ret


    ld a, [$d72a]
    bit 7, a
    jr nz, jr_011_7850

    ld a, [$d725]
    cp $45
    jr c, jr_011_7850

    ld c, $03
    call Call_011_77c6
    ld a, $02
    ld [$ca54], a
    ld a, $50
    ld [$ca49], a
    ld a, $2a
    ld [$d70a], a
    ld a, $01
    ld [$d77e], a
    ret


jr_011_7850:
    jp Jump_011_4106


    ld c, $04
    jp Jump_011_77c6


    ld c, $05
    jp Jump_011_77c6


    ld a, $e0
    ld [$ca44], a
    ld a, $ff
    ld [$ca45], a
    ret


    ld a, $01
    ld [$cca6], a
    ld [$ca58], a
    ld b, $ff
    ld e, b
    ld d, b
    ld c, $0f
    jp Jump_011_410c


    jr z, jr_011_787c

    ld [de], a

jr_011_787c:
    or h
    ld [bc], a
    ld [$011e], sp
    ld [$02f0], sp
    ld b, $3c
    ld bc, $1e12
    ld [bc], a
    ld b, $f0
    ld bc, $ff12

Call_011_788f:
    ld hl, $ca59
    ld de, $7879
    call Call_011_401d
    jr z, jr_011_78ba

    jr c, jr_011_78ba

    ld a, [$ca58]
    or a
    jr nz, jr_011_78b0

    ldh a, [$ff8a]
    or a
    jr z, jr_011_78b0

    dec a
    jr nz, jr_011_78ae

    rst $08
    dec h
    jr jr_011_78b0

jr_011_78ae:
    rst $08
    dec hl

jr_011_78b0:
    ldh a, [$ff8b]
    ld [$cca0], a
    ld a, $01
    ld [$cca2], a

jr_011_78ba:
    ret


    jr jr_011_78cc

    ret nz

    ld a, b
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

jr_011_78cc:
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
    jr z, jr_011_793f

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
    nop
    nop
    add h
    inc bc
    add hl, hl
    db $10
    ld [hl], h
    jr c, @+$4b

    jr nc, jr_011_793b

    ld bc, $008d
    ld d, d
    inc l
    xor c
    db $10
    and b
    ld b, b
    ld c, d
    add h
    dec d
    ld a, [bc]
    adc [hl]
    nop
    pop bc
    nop
    add hl, hl
    db $10
    ld b, h
    jr c, jr_011_7957

    nop
    and c
    nop
    ld [de], a
    inc c
    ld d, l
    ld a, [hl-]
    add sp, $7f
    ld [hl-], a
    db $fd
    and l
    ld e, d
    db $d3
    inc l
    ld l, [hl]
    db $10
    ld b, b
    add c
    ld d, h
    ld [$142a], sp
    or [hl]
    ld [$009c], sp
    add b

jr_011_793b:
    nop
    ld sp, $2a00

jr_011_793f:
    ld de, $8045
    xor d
    db $10
    ld e, c
    jr nc, jr_011_7979

    nop
    add l
    ld [bc], a
    ld c, d
    add l
    and a
    ld b, b
    db $10
    ld [$8f54], sp
    add hl, hl
    ld e, $34
    adc e
    rra

jr_011_7957:
    nop
    ret nz

    nop
    adc l
    inc bc
    ld b, [hl]
    ld hl, $0088
    cp b
    nop
    ld b, d
    add b
    push bc
    ld [$0c9a], sp
    inc c
    nop
    ld b, c
    add b
    adc d
    inc b
    ld sp, $4108
    nop
    or h
    ld [$804a], sp
    or c
    ld b, d
    ld h, d

jr_011_7979:
    dec b
    sbc l
    ld [bc], a
    ld [hl-], a
    add hl, bc
    ld c, b
    add h
    nop
    nop
    jr nz, jr_011_79c4

    ld h, b
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
    ld [$182e], sp
    ld a, [de]
    inc [hl]
    ld h, $18
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
    add b
    nop
    nop
    nop
    nop
    ld [de], a
    ld bc, $0206
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
    ld d, l
    xor d

jr_011_79c4:
    xor d
    rst $38
    xor d
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
    nop
    nop
    ld d, l
    xor d
    xor d
    rst $38
    xor d
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl]
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    inc l
    ld e, $18
    ld b, $2e
    nop
    ld de, $aeae
    cp a
    sub c
    ld l, $2e
    nop
    add b
    add b
    sbc d
    cp h
    adc h
    or b
    inc d
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $94
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    sub h
    cp b
    jr jr_011_7a28

    inc l
    ld e, $00
    nop
    ld a, [hl-]
    nop

jr_011_7a28:
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl]
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    nop
    adc h
    or b
    sbc d
    cp h
    add b
    add b
    ld l, $00
    ld de, $aeae
    cp a
    sub c
    ld l, $2e
    nop
    rra
    rrca
    ld b, l
    ld a, d
    nop
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    rst $38
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    nop
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
    inc a
    nop
    ld c, a
    nop
    sub b
    nop
    and b
    nop
    rst $00
    nop
    ret nz

    nop
    ld c, a
    nop
    ld b, b
    nop
    nop
    nop
    rst $38
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
    nop
    nop
    ld a, b
    nop
    db $e4
    nop
    ld [de], a
    nop
    ld a, [bc]
    nop
    or $00
    ld b, $00
    db $f4
    nop
    inc b
    nop
    ld c, a
    nop
    ld b, b
    nop
    ld c, a
    nop
    ld b, b
    nop
    ld c, a
    nop
    ld b, b
    nop
    ld c, a
    nop
    ld b, b
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    db $f4
    nop
    inc b
    nop
    db $f4
    nop
    inc b
    nop
    db $f4
    nop
    inc b
    nop
    db $f4
    nop
    inc b
    nop
    rst $08
    nop
    ret nz

    nop
    and a
    nop
    sub b
    nop
    ld c, a
    nop
    inc a
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
    or $00
    ld b, $00
    ld [$1200], a
    nop
    db $e4
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $aa00
    ld bc, $a305
    xor c
    and a
    sbc e
    add a
    inc sp
    adc a
    or e
    rrca
    inc hl
    rra
    ld a, [$0100]
    ei
    ld a, [$c89a]
    ld l, d
    xor d
    ld c, e
    sbc e
    sbc e
    di
    ei
    jp z, $bff3

    nop
    nop
    cp a
    cp a
    or e
    add hl, sp
    xor l
    or l
    xor c
    or e
    or e
    sbc a
    cp a
    and a
    sbc a
    nop
    nop
    xor d
    nop
    ld b, b
    adc d
    ld a, [hl+]
    jp z, $c2b2

    sbc b
    ldh [c], a
    sbc d
    ldh [$ff88], a
    ldh a, [$ff27]
    rra
    daa
    rra
    daa
    rra
    sub a
    rrca
    rlca
    adc a
    and a
    adc a
    add a
    xor a
    and a
    xor a
    ld b, d
    add d
    ret z

    ldh a, [c]
    ld b, d
    add d
    ret z

    ldh a, [c]
    ld b, b
    add d
    jp z, $43f1

    add b
    ret z

    ldh a, [$ff85]
    add e
    daa
    sbc a
    add l
    add e
    daa
    sbc a
    dec b
    add e
    and a
    rra
    add l
    inc bc
    daa
    rra
    ret z

    ldh a, [$ffc8]
    ldh a, [$ffc8]
    ldh a, [$ffd2]
    ldh [$ffc0], a
    ldh [c], a
    jp z, $c2e2

    ld [$eaca], a
    add a
    xor a
    and a
    adc a
    rlca
    adc a
    sub a
    rrca
    daa
    rra
    daa
    rra
    daa
    rra
    inc hl
    rra
    ld b, d
    add b
    ret


    di
    ld b, d
    add d
    ret z

    ldh a, [c]
    ld b, d
    add e
    set 6, e
    ld b, e
    add e
    jp z, $85f3

    inc bc
    daa
    sbc a
    add l
    add e
    daa
    sbc a
    add l
    add e
    and a
    sbc a
    add l
    add e
    and a
    sbc a
    jp nz, $caea

    ldh [c], a
    ret nz

    ldh [c], a
    jp nc, $c8e0

    ldh a, [$ffc8]
    ldh a, [$ffc8]
    ldh a, [$ff88]
    ldh a, [$ffb3]
    rrca
    inc sp
    adc a
    sbc e
    add a
    xor c
    and a
    dec b
    and e
    xor d
    ld bc, $0001
    nop
    nop
    ldh a, [c]
    ld a, [$9af8]
    jp z, $a86a

    ld c, d
    sbc b
    sbc d
    ld [bc], a
    ld sp, hl
    ei
    nop
    nop
    nop
    sbc a
    cp a
    ccf
    or e
    cp c
    xor l
    dec [hl]
    xor c
    inc sp
    or e
    add b
    ccf
    cp a
    nop
    nop
    nop
    sbc d
    ldh [$ff98], a
    ldh [c], a
    or d
    jp nz, $ca2a

    ld b, b
    adc d
    xor d
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    nop
    ld [hl-], a
    rrca
    ld a, [hl-]
    ld a, h
    nop
    nop
    rst $38
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$f50a]
    ld e, $e1
    dec [hl]

jr_011_7c47:
    jp z, Jump_000_15eb

    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    or b
    rst $08
    ld l, b
    rst $10
    call nc, Call_011_6a7b
    db $fd
    scf
    cp $07
    ld hl, sp-$02
    ld bc, $c4bb
    rrca
    ld hl, sp+$2e
    pop af
    jp c, $bde5

    jp nz, $8a75

    ld a, d
    add l
    db $e4
    dec de
    db $dd
    dec hl
    xor c
    ld d, a
    ld e, l
    and a
    sub b
    ld l, a
    jr c, jr_011_7c47

    ld [hl], b
    rst $18
    ld h, h
    rst $38
    or c
    rst $38
    xor b
    rst $38
    ld e, h
    rst $38
    sub h
    rst $38
    adc $ff
    and a
    rst $38
    inc hl
    rst $38
    add b
    ld a, a
    ldh [$ff9f], a
    ld a, h
    db $e3
    sbc a
    ld hl, sp+$47
    cp $33
    rst $38
    jr @+$01

    add $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    cp c
    add $5f
    ldh [$ff0e], a
    pop af
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$ff74]
    adc e
    db $db
    daa
    and $1f
    cp a
    ld a, a
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, a
    sbc b
    dec a
    ldh [c], a
    ld d, $f9
    adc c
    cp $22
    rst $38
    ld c, $f1
    dec a
    jp nz, $07fa

    push af
    dec bc
    or $0b
    ld l, c
    sub a
    sub d
    ld l, a
    push hl
    rra
    ld [$d415], a
    dec hl
    and c
    ld e, [hl]
    cp a
    add sp, -$22
    di
    ld a, l
    xor a
    adc e
    rst $38
    ld h, l
    rst $38
    jp nz, $c63f

    ccf
    db $ed
    ld a, a
    ld e, d
    rst $38
    sbc l
    rst $38
    rst $28
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    add hl, de
    rst $38
    ld [hl-], a
    rst $38
    ld c, $ff
    add l
    rst $38
    ld d, d
    rst $38
    and l
    rst $38
    ei
    rst $38
    cp $ff
    pop af
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    dec c
    rst $38
    add e
    rst $38
    ld d, c
    rst $38
    db $e4
    rst $38
    cp a
    rst $38
    db $e3
    rst $38
    ld [hl], h
    rst $38
    ld de, $8aff
    rst $38
    push de
    rst $38
    db $eb
    rst $38
    ld [hl], $ff
    ld h, l
    rst $38
    rla
    rst $38
    xor a
    rst $38
    ld e, e
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    call $9bff
    rst $38
    cp a
    rst $38
    add c
    rst $38
    db $e4
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    cp l
    jp nz, $f06f

    inc b
    rst $38
    inc bc
    cp $88
    rst $38
    jr nz, @+$01

    sbc h
    rst $38
    cp a
    rst $38
    rst $38
    cp $ff
    ret z

    ei
    sub l
    or a
    ld c, e
    ld l, [hl]
    sub e
    call c, $9827
    ld h, a
    ld [hl-], a

jr_011_7d69:
    call Call_011_7fff
    rst $38
    db $fd
    rst $18
    ld sp, hl
    cp a
    di
    or a
    ld [$c53e], a
    xor l
    ld d, d
    ret


    ld [hl], $00
    nop
    ret z

    nop
    inc b
    sub c
    ld c, b
    inc bc
    sub c
    ld [bc], a
    inc hl
    inc b
    ld h, a
    nop
    call RST_00
    nop
    db $fd
    nop
    jr nz, jr_011_7d69

    ld b, b
    or e
    ld c, b
    and d
    pop bc
    inc b
    ld d, d
    nop
    ld [hl], $00
    ld a, a
    nop
    db $fd
    nop
    reti


    nop
    or e
    nop
    and d
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    xor $00
    ret z

    nop
    sub c
    nop
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    ld bc, $000f
    nop
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
    db $fc
    db $fc
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
    rrca
    add b
    add b
    ret nc

    rst $38
    nop
    cp $00
    db $fc
    ld bc, $03f9
    di
    rlca
    di
    rlca
    rlca
    rst $28
    rst $20
    rrca
    rrca
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
    rst $38
    rst $38
    rst $38
    ldh [$ffec], a
    db $f4
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    nop
    ld a, a
    nop
    ccf
    add b
    sbc a
    ret nz

    rst $08
    ldh [$ffcf], a
    ldh [$ffc0], a
    rst $10
    rst $20
    ret nc

    rlca
    rst $10
    rrca
    rst $10
    dec de
    cp a
    dec e
    cp a
    dec e
    cp a
    ld a, [de]
    cp a
    ccf
    ld [hl], a
    rra
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    sbc a
    cp $ff
    rst $38
    cp $ff
    cp $ff

jr_011_7e61:
    cp $ff
    cp $ff
    db $fd
    db $fd
    db $fd
    ei
    ei
    or b
    ei
    or b
    ei
    ld hl, sp+$7d
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    db $fc
    cp $fc
    cp $00
    add b
    add hl, sp
    cp a
    nop
    add b
    jr jr_011_7e61

    db $10
    pop de

jr_011_7e84:
    db $10
    pop de
    ld c, $ef
    nop
    ldh a, [rP1]
    nop
    ld a, b
    db $fc

jr_011_7e8e:
    ld [bc], a
    inc bc
    jr nz, jr_011_7e8e

    jr nc, jr_011_7e84

    nop
    add h
    nop
    inc l

jr_011_7e98:
    jr z, @+$30

    nop
    nop
    nop
    rrca
    nop
    db $10
    ret nz

    rst $20
    nop
    inc c
    ld [$fc7c], sp
    rst $38
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    rlca
    rst $38
    rra
    ccf
    jr jr_011_7eee

    jr nz, jr_011_7e98

    nop
    ld [bc], a
    nop
    nop
    cp $ff
    nop
    nop
    db $fc
    rst $38
    nop
    inc bc
    nop
    add hl, sp
    ld [$808c], sp
    and h
    nop
    ld bc, $fd9c
    nop
    ld bc, $fb18
    ld [$088b], sp
    adc e
    ld [hl], b
    rst $30
    nop
    rrca
    nop
    ld sp, hl
    nop
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
    ld b, h
    ld b, [hl]
    nop
    add e

jr_011_7eee:
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rra
    ld h, b
    ld a, a
    nop
    nop
    rra
    ccf
    nop
    rst $18
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ldh a, [c]
    ldh a, [c]
    ld bc, $00c5
    ld [bc], a
    nop
    add hl, bc
    nop
    call c, Call_000_3f00
    nop
    rst $38
    nop
    rst $38
    inc h
    daa
    jp nz, Jump_000_00d3

    ld [hl+], a
    ld [$10c9], sp
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_011_7fff:
    rst $38
