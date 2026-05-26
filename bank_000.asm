; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    di
    ld sp, $fffe
    jp Jump_000_0150


Jump_000_0007:
    nop

RST_08::
    ld a, l
    ld [$cf78], a
    ld a, h
    jp Jump_000_0876


RST_10::
    ld [$cf7a], a
    ld a, l
    jp Jump_000_0334


    nop

RST_18::
    ld a, [$df03]
    cp $2b
    ret


    nop
    nop

RST_20::
    ld [$df00], a
    ld [$2100], a
    ret


    db $01

RST_28::
    pop hl
    ld a, [hl+]
    push hl
    jp Jump_000_04a0


    nop

Call_000_002f:
    nop

RST_30::
    nop

Jump_000_0031:
    nop
    nop

Call_000_0033:
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop
    nop
    nop

Call_000_003b:
    nop

Call_000_003c:
Jump_000_003c:
    nop
    nop
    nop

Call_000_003f:
Jump_000_003f:
    nop

VBlankInterrupt::
    jp Jump_000_050e


Jump_000_0043:
    nop

Call_000_0044:
Jump_000_0044:
    nop

Call_000_0045:
    nop

Call_000_0046:
Jump_000_0046:
    nop
    nop

LCDCInterrupt::
    jp Jump_000_073d


    ld bc, $ff1f
    nop
    nop

TimerOverflowInterrupt::
    reti


Call_000_0051:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    reti


    nop

Call_000_005a:
    nop
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


    ld bc, $0402
    ld [$2010], sp
    ld b, b

Jump_000_0068:
    add b
    nop

Jump_000_006a:
    nop

Call_000_006b:
Jump_000_006b:
    nop
    nop
    nop
    nop
    ld de, $80ff

Call_000_0072:
    nop

Jump_000_0073:
    ld a, [hl]
    rst $38
    ret


    ret


    ret


    ret


    ret


    ret


    nop
    nop
    nop
    nop
    nop

Jump_000_0080:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00a5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00c0:
    nop
    nop
    nop

Jump_000_00c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ce:
    nop
    nop
    rst $38
    nop

Call_000_00d2:
Jump_000_00d2:
    rst $38

Jump_000_00d3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_000_00dc:
    rst $38
    nop

Call_000_00de:
Jump_000_00de:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_000_00e8:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_000_00ef:
    rst $38

Call_000_00f0:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00f4:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00f8:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00fc:
    rst $38

Call_000_00fd:
Jump_000_00fd:
    rst $38

Call_000_00fe:
Jump_000_00fe:
    rst $38

Call_000_00ff:
Jump_000_00ff:
    rst $38

Boot::
    nop

Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "MEGAMAN5", $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $30, $38

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $04

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $18

HeaderGlobalChecksum::
    db $10, $8e

Jump_000_0150:
    jp Jump_000_04fa


Call_000_0153:
    jp Jump_000_20b2


    jp $3d65


Call_000_0159:
    jp Jump_000_3d71


Call_000_015c:
Jump_000_015c:
    jp Jump_000_2c05


Call_000_015f:
Jump_000_015f:
    jp Jump_000_2c0d


Call_000_0162:
Jump_000_0162:
    jp Jump_000_0406


Call_000_0165:
Jump_000_0165:
    jp Jump_000_0d96


Call_000_0168:
    jp Jump_000_1a96


Call_000_016b:
Jump_000_016b:
    jp Jump_000_19d7


Call_000_016e:
Jump_000_016e:
    jp Jump_000_1cff


Call_000_0171:
Jump_000_0171:
    jp Jump_000_1d0a


Call_000_0174:
Jump_000_0174:
    jp Jump_000_1a5e


Call_000_0177:
    jp Jump_000_19fc


Call_000_017a:
Jump_000_017a:
    jp Jump_000_1a08


Call_000_017d:
    jp Jump_000_1a0e


Call_000_0180:
Jump_000_0180:
    jp Jump_000_1a22


Call_000_0183:
Jump_000_0183:
    jp Jump_000_1c39


Call_000_0186:
Jump_000_0186:
    jp $1bad


Call_000_0189:
Jump_000_0189:
    jp Jump_000_1c15


    jp Jump_000_11ab


    jp Jump_000_243d


    jp Jump_000_2458


    jp Jump_000_2405


    jp Jump_000_2d2d


Call_000_019b:
    jp Jump_000_2d2a


Call_000_019e:
    jp Jump_000_317f


Call_000_01a1:
Jump_000_01a1:
    jp Jump_000_3192


Call_000_01a4:
    jp Jump_000_30c1


Call_000_01a7:
Jump_000_01a7:
    jp Jump_000_30f7


Call_000_01aa:
Jump_000_01aa:
    jp Jump_000_2de8


    jp Jump_000_2b45


Call_000_01b0:
    jp Jump_000_2b51


Call_000_01b3:
Jump_000_01b3:
    jp Jump_000_2b60


Call_000_01b6:
    jp Jump_000_2a5f


Call_000_01b9:
Jump_000_01b9:
    jp Jump_000_3170


Call_000_01bc:
    jp Jump_000_0eda


    jp Jump_000_3b4c


Call_000_01c2:
    jp Jump_000_1e37


Call_000_01c5:
Jump_000_01c5:
    jp Jump_000_19ae


Call_000_01c8:
Jump_000_01c8:
    jp Jump_000_186b


Call_000_01cb:
Jump_000_01cb:
    jp Jump_000_035e


    jp Jump_000_1e48


Call_000_01d1:
    jp Jump_000_3289


Call_000_01d4:
    jp Jump_000_1e5f


    jp Jump_000_2a45


    jp Jump_000_2a57


Call_000_01dd:
Jump_000_01dd:
    jp Jump_000_2a7a


Call_000_01e0:
    jp Jump_000_2a88


Call_000_01e3:
    jp Jump_000_2a98


Call_000_01e6:
    jp Jump_000_2b6e


Call_000_01e9:
    jp Jump_000_2b72


Call_000_01ec:
    jp Jump_000_1d18


Jump_000_01ef:
    jp Jump_000_2b78


Call_000_01f2:
    jp Jump_000_2b89


Call_000_01f5:
    jp Jump_000_048c


Call_000_01f8:
    jp Jump_000_2b9c


Call_000_01fb:
    jp Jump_000_2ba4


    jp Jump_000_2b39


Call_000_0201:
    jp Jump_000_2b20


Call_000_0204:
Jump_000_0204:
    jp Jump_000_2b2a


Call_000_0207:
    jp Jump_000_202a


Call_000_020a:
Jump_000_020a:
    jp Jump_000_202a


Call_000_020d:
    jp Jump_000_1fe8


Call_000_0210:
Jump_000_0210:
    jp Jump_000_31f8


Call_000_0213:
    jp Jump_000_1d26


Call_000_0216:
    jp Jump_000_0fd5


Call_000_0219:
    jp Jump_000_2400


Call_000_021c:
    jp Jump_000_2bf8


Call_000_021f:
Jump_000_021f:
    jp Jump_000_10e0


Call_000_0222:
Jump_000_0222:
    jp Jump_000_0884


Jump_000_0225:
    jp Jump_000_0851


Jump_000_0228:
    jp Jump_000_0afc


Call_000_022b:
    jp Jump_000_1f51


Call_000_022e:
Jump_000_022e:
    jp Jump_000_0429


Call_000_0231:
    jp Jump_000_0421


Call_000_0234:
    jp $03f6


Call_000_0237:
    jp $03fa


Call_000_023a:
Jump_000_023a:
    jp Jump_000_1973


Call_000_023d:
    jp Jump_000_04e9


    jp Jump_000_10c6


Call_000_0243:
    jp Jump_000_3a30


Call_000_0246:
Jump_000_0246:
    jp Jump_000_3a0d


    jp Jump_000_3abc


Call_000_024c:
    jp Jump_000_1d61


Call_000_024f:
    jp Jump_000_2c74


Call_000_0252:
    jp Jump_000_2c97


Call_000_0255:
    jp Jump_000_1e0d


Call_000_0258:
    jp Jump_000_1e23


Call_000_025b:
    jp Jump_000_04b4


Call_000_025e:
    jp $2d0e


Call_000_0261:
    jp Jump_000_1e3d


Call_000_0264:
    jp Jump_000_100f


Call_000_0267:
    jp Jump_000_1079


    jp Jump_000_108b


Call_000_026d:
Jump_000_026d:
    jp Jump_000_2a0e


Call_000_0270:
    jp Jump_000_18f8


Call_000_0273:
    jp Jump_000_1096


Call_000_0276:
    jp Jump_000_129b


Call_000_0279:
    jp Jump_000_1326


Call_000_027c:
Jump_000_027c:
    jp Jump_000_043a


Call_000_027f:
    jp Jump_000_0f32


Call_000_0282:
    jp Jump_000_2db4


Call_000_0285:
    jp Jump_000_1a69


Call_000_0288:
    jp Jump_000_192b


    jp Jump_000_195d


Call_000_028e:
    jp Jump_000_190f


Call_000_0291:
    jp Jump_000_0480


Call_000_0294:
Jump_000_0294:
    jp Jump_000_0ec4


Jump_000_0297:
    jp Jump_000_0bc5


Jump_000_029a:
    jp Jump_000_0bcc


Call_000_029d:
    jp Jump_000_244e


Jump_000_02a0:
    jp Jump_000_0504


Jump_000_02a3:
    jp Jump_000_03e3


Call_000_02a6:
    jp Jump_000_03da


Call_000_02a9:
    jp Jump_000_03ee


    jp Jump_000_23dd


    jp Jump_000_05bc


    jp Jump_000_05df


Jump_000_02b5:
    jp Jump_000_04e6


Call_000_02b8:
    jp Jump_000_191d


Jump_000_02bb:
    jp Jump_000_0927


Call_000_02be:
Jump_000_02be:
    jp Jump_000_31fb


    jp Jump_000_04c5


    jp Jump_000_042d


    jp Jump_000_04c1


Call_000_02ca:
    jp $0466


Call_000_02cd:
    jp $0326


    jp Jump_000_04bc


Call_000_02d3:
Jump_000_02d3:
    jp Jump_000_04dc


Call_000_02d6:
    jp Jump_000_0490


Call_000_02d9:
    jp $03f2


Call_000_02dc:
    jp $03fe


Jump_000_02df:
    jp Jump_000_03d4


Call_000_02e2:
Jump_000_02e2:
    jp Jump_000_047c


Call_000_02e5:
    jp $0462


Jump_000_02e8:
    jp $0322


Jump_000_02eb:
    jp Jump_000_0ac4


    jp Jump_000_0edf


Call_000_02f1:
Jump_000_02f1:
    jp Jump_000_049c


    jp RST_00


Call_000_02f7:
    jp Jump_000_0306


Call_000_02fa:
    jp $030a


Call_000_02fd:
    jp $030e


Call_000_0300:
    jp $0316


Call_000_0303:
    jp $0312


Jump_000_0306:
    rst $10
    db $fd
    ld a, e
    ld bc, $21d7
    ld c, [hl]
    ld bc, $25d7
    inc b
    ld bc, $2ad7
    dec sp
    ld bc, $bed7
    ld d, h
    ld bc, $8ed7
    ld c, a
    ld bc, $9dd7
    ld c, a
    ld bc, $6dd7
    dec bc
    ld bc, $00fa
    rst $18
    push af
    ld a, b
    rst $20
    call Call_000_0332
    pop af
    rst $20
    ret


Call_000_0332:
Jump_000_0332:
    push de
    ret


Jump_000_0334:
    ld [$cf78], a
    ld a, h
    ld [$cf79], a
    pop hl
    ld a, $c3
    ld [$c0e0], a
    ld a, [hl+]
    ld [$c0e1], a
    ld a, [hl+]
    ld [$c0e2], a
    ld a, [$df00]
    push af
    ld a, [hl]
    rst $20
    ld hl, $cf78
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf7a]
    call $c0e0
    pop af
    rst $20
    ret


Jump_000_035e:
    cp $24
    ret nc

    ldh [$ff8a], a
    ld a, [$df00]
    push af
    push hl
    push de
    ldh a, [$ff8a]
    ld e, a
    ld d, $00
    ld hl, $038b
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$c0d1], a
    ld a, [hl+]
    ld [$c0d2], a
    ld a, $c3
    ld [$c0d0], a
    ld a, [hl]
    pop de
    pop hl
    rst $20
    call $c0d0
    pop af
    rst $20
    ret


    db $d3
    inc bc
    ld bc, $4f9d
    ld bc, $4e2b
    ld bc, $400c
    dec c
    ld hl, HeaderGlobalChecksum
    db $f4
    ld b, h
    ld bc, $70c2
    ld bc, $44ab
    ld bc, $4010
    ld a, [de]
    dec hl
    ld b, b
    db $10
    ld c, b
    ld b, b
    dec c
    rrca
    ld b, b
    inc b
    jr z, jr_000_03f1

    db $10
    ld b, $40
    inc b
    ld l, b
    ld [hl+], a
    ld bc, $5fdf
    ld bc, $4010
    inc e

Jump_000_03be:
    inc de
    ld b, b
    add hl, de
    db $d3
    inc bc

Jump_000_03c3:
    ld bc, $4f8e
    ld bc, $4003
    inc bc
    inc bc
    ld b, b
    add hl, bc
    jr nz, jr_000_040f

    ld e, $06
    ld b, b
    dec b
    ret


Jump_000_03d4:
    ld a, $01
    rst $20
    jp $40b1


Jump_000_03da:
    rst $10
    sbc $03
    ld bc, $46cd
    ld d, c
    jr @+$06

Jump_000_03e3:
    rst $10
    rst $20
    inc bc
    ld bc, $dfcd
    ld e, a
    call $559f
    ret


Call_000_03ee:
Jump_000_03ee:
    rst $10
    ld b, d
    ld d, c

jr_000_03f1:
    ld bc, $9fd7
    ld d, l
    ld bc, $5dd7
    ld d, l
    ld bc, $46d7
    ld d, c

Jump_000_03fd:
    ld bc, $43d7

Jump_000_0400:
    ld c, [hl]

Jump_000_0401:
    ld bc, $09d7
    ld b, b
    ld [bc], a

Jump_000_0406:
    ld a, [$cb00]
    cp $06
    jr nc, jr_000_0411

    rst $10
    nop

jr_000_040f:
    ld b, b
    inc bc

jr_000_0411:
    rst $10
    nop
    ld b, b
    add hl, bc
    rst $10
    dec d
    ld b, b
    inc bc
    rst $10
    jr @+$42

    inc bc

Call_000_041d:
    rst $10
    nop
    ld b, b

Call_000_0420:
    inc b

Call_000_0421:
Jump_000_0421:
    rst $10
    add hl, bc
    ld b, b
    inc b
    rst $10
    inc bc
    ld b, b
    inc b

Jump_000_0429:
    rst $10
    dec d
    ld b, b
    inc b

Call_000_042d:
Jump_000_042d:
    rst $10
    ld [de], a
    ld b, b
    inc b

Call_000_0431:
    rst $10
    inc c
    ld b, b
    inc b
    rst $10
    inc h
    ld b, b
    inc b
    ret


Call_000_043a:
Jump_000_043a:
    rst $10
    nop
    ld b, b
    ld b, $d7
    inc bc
    ld b, b
    ld b, $d7
    ld b, $40
    ld b, $d7
    add hl, bc
    ld b, b
    ld b, $d7
    inc c
    ld b, b
    ld b, $d7
    rrca
    ld b, b
    ld b, $d7
    ld [de], a
    ld b, b

Jump_000_0455:
    ld b, $d7
    dec d
    ld b, b
    ld b, $d7

Jump_000_045b:
    jr jr_000_049d

    ld b, $d7
    dec de
    ld b, b
    ld b, $d7
    ld e, $40
    ld b, $21
    cp d
    call z, $235e
    ld a, [hl+]
    cp $ff
    ret z

    ld d, a
    ld a, [$df00]
    push af
    ld a, [hl]
    rst $20
    call Call_000_0332
    pop af
    rst $20
    ret


Jump_000_047c:
    rst $10
    nop
    ld b, b
    dec c

Jump_000_0480:
    rst $10
    rrca
    ld b, b
    dec c

Jump_000_0484:
    rst $10
    add hl, bc
    ld b, b
    dec c

Call_000_0488:
Jump_000_0488:
    rst $10
    inc c
    ld b, b
    dec c

Jump_000_048c:
    rst $10
    jr jr_000_04cf

    dec c

Jump_000_0490:
    rst $10
    ld c, e
    ld b, b
    dec c
    rst $10
    inc bc
    ld b, b
    rrca

Call_000_0498:
    rst $10
    nop
    ld b, b
    rrca

Call_000_049c:
Jump_000_049c:
    rst $10

jr_000_049d:
    ld a, [bc]
    ld b, b
    rrca

Jump_000_04a0:
    rst $10
    dec c
    ld b, b
    rrca

Call_000_04a4:
    rst $10
    db $10
    ld b, b
    rrca

Call_000_04a8:
    rst $10
    inc de
    ld b, b
    rrca

Call_000_04ac:
    rst $10
    inc [hl]
    ld b, b
    db $10

Call_000_04b0:
    rst $10
    rra
    ld b, b
    db $10

Jump_000_04b4:
    rst $10
    ld [hl+], a
    ld b, b
    db $10

Call_000_04b8:
    rst $10
    dec h
    ld b, b
    db $10

Call_000_04bc:
Jump_000_04bc:
    rst $10
    ld sp, $1040
    ret


Jump_000_04c1:
    rst $10
    add hl, de
    ld b, b
    db $10

Jump_000_04c5:
    rst $10
    inc e
    ld b, b
    db $10
    ret


Call_000_04ca:
    rst $10
    inc de
    ld b, b
    db $10

Call_000_04ce:
    rst $10

jr_000_04cf:
    db $10
    ld b, b
    db $10

Call_000_04d2:
    rst $10
    ld d, $40
    db $10

Call_000_04d6:
    ld a, $14
    rst $20
    jp $4010


Jump_000_04dc:
    rst $10
    rla
    ld b, b
    ld d, $3e
    add hl, de
    rst $20
    jp $4010


Call_000_04e6:
Jump_000_04e6:
    jp Jump_000_0930


Jump_000_04e9:
    rst $10
    ld d, $40

Jump_000_04ec:
    rra

Call_000_04ed:
    ld a, [$df00]
    push af
    ld a, $1f
    rst $20
    call $4019
    pop af

Jump_000_04f8:
    rst $20
    ret


Jump_000_04fa:
    di
    ld sp, $fffe
    ld a, $01
    rst $20
    jp $4000


Jump_000_0504:
    di
    ld sp, $fffe

Call_000_0508:
Jump_000_0508:
    ld a, $01
    rst $20
    jp $4030


Jump_000_050e:
    push af
    push hl

Call_000_0510:
    push de
    push bc
    ld a, [$df00]
    push af
    ld a, [$de82]
    inc a
    ld [$de82], a
    ld a, [$d7d1]
    ldh [rSCX], a
    ld a, [$d18d]
    ld b, a
    ld a, [$d7d2]
    add b
    ldh [rSCY], a
    ld a, [$de87]
    ldh [rLCDC], a
    ld a, [$de96]
    ldh [rBGP], a
    ld a, [$cca8]
    and $07
    call nz, Call_000_07ff
    ld a, [$c0f0]
    cp $c9
    jr z, jr_000_054c

Jump_000_0545:
    ld a, [$c0f3]

Call_000_0548:
    rst $20
    call $c0f0

jr_000_054c:
    ld a, [$de86]
    or a
    jr nz, jr_000_0593

    ld a, $01
    ld [$de86], a
    call $ff80
    call Call_000_06a0
    call Call_000_06f2
    ld a, [$dd36]
    bit 0, a
    jr z, jr_000_057d

    ldh a, [rIE]
    and $f0
    ldh [rIE], a
    xor a
    ldh [rIF], a
    inc hl
    ld a, [$dd37]
    ld [$de96], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a

jr_000_057d:
    ld a, [$c0f4]
    cp $c9
    jr z, jr_000_058b

    ld a, [$c0f7]
    rst $20
    call $c0f4

jr_000_058b:
    ld hl, $de80
    inc [hl]
    jr nz, jr_000_0593

    inc hl
    inc [hl]

jr_000_0593:
    call Call_000_05eb
    ld a, [$dd2b]
    or a
    jr nz, jr_000_05af

    dec a
    ld [$dd2b], a
    call Call_000_05bb
    ld a, [$df02]
    rst $20
    call $4000
    ei
    xor a
    ld [$dd2b], a

jr_000_05af:
    pop af
    rst $20
    pop bc
    pop de
    pop hl
    ld a, $01
    ld [$de85], a
    pop af
    ret


Call_000_05bb:
    reti


Jump_000_05bc:
    call Call_000_05df
    ret nz

    ld [$df45], a
    ld a, e
    ld [$df41], a
    ld a, d
    ld [$df42], a
    ld a, l
    ld [$df43], a
    ld a, h
    ld [$df44], a
    di
    ld a, c
    ld [$df3f], a
    ld a, b
    ld [$df40], a
    ei
    xor a
    ret


Call_000_05df:
Jump_000_05df:
    push hl
    push de
    ld e, a
    ld hl, $df3f
    ld a, [hl+]
    or [hl]
    ld a, e
    pop de
    pop hl
    ret


Call_000_05eb:
    ld hl, $df3f
    ld a, [hl+]
    ld c, a
    or [hl]
    ret z

    di
    ldh a, [rLY]
    cp $96
    jr c, jr_000_05fb

Jump_000_05f9:
    ei
    ret


jr_000_05fb:
    ld b, [hl]

Jump_000_05fc:
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$df00]
    push af
    ld a, [$df45]
    rst $20

jr_000_060c:
    ld a, b
    or a
    jr nz, jr_000_0615

    ld a, c

Call_000_0611:
    cp $10
    jr c, jr_000_066c

jr_000_0615:
    ldh a, [rLY]
    cp $97
    jr nc, jr_000_0656

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
    ld a, $f0

jr_000_064c:
    inc de
    add c
    ld c, a
    ld a, $ff
    adc b
    ld b, a
    or c
    jr nz, jr_000_060c

jr_000_0656:
    ei
    ld a, l
    ld [$df43], a
    ld a, h
    ld [$df44], a
    ld hl, $df42
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl

Call_000_0666:
    ld [hl], b
    dec hl
    ld [hl], c
    pop af
    rst $20
    ret


Call_000_066c:
jr_000_066c:
    cp $08

Jump_000_066e:
    jr c, jr_000_0691

    ldh a, [rLY]
    cp $97
    jr nc, jr_000_0656

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_067c:
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
    ld a, $f8
    jr jr_000_064c

jr_000_0691:
    ldh a, [rLY]
    cp $97
    jr nc, jr_000_0656

jr_000_0697:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0697

    ld b, c
    jr jr_000_0656

Call_000_06a0:
    ld hl, $d7d9
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0020
    ld de, $dd50
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a

Call_000_06e1:
    add hl, bc
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc

Jump_000_06e6:
    ld a, [de]
    inc e
    ld [hl], a
    add hl, bc
    ld a, [de]
    inc e

Jump_000_06ec:
    ld [hl], a
    add hl, bc

Call_000_06ee:
    ld a, [de]
    inc e
    ld [hl], a

Jump_000_06f1:
    ret


Call_000_06f2:
    ld hl, $d7df
    ld a, [hl]

Jump_000_06f6:
    or a
    ret z

    ld [hl], $00
    ld hl, $dd60
    ld a, [$d7e0]
    ld e, a
    ld a, [$d7e1]
    ld d, a
    ld a, e

Call_000_0706:
    and $e0

Call_000_0708:
Jump_000_0708:
    ld c, a
    ld b, $1f
    ld a, $03

jr_000_070d:
    push af
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and b
    or c
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and b
    or c
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and b
    or c
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and b
    or c
    ld e, a
    pop af
    dec a
    jr nz, jr_000_070d

    ret


    reti


    reti


Jump_000_073d:
    push af

Jump_000_073e:
    ld a, [$de2c]
    or a
    jr z, jr_000_074f

    cp $0d
    jp z, Jump_000_07f0

    ldh a, [rLYC]
    cp $7f
    jr c, jr_000_076d

jr_000_074f:
    ld a, [$de42]
    or a
    jr z, jr_000_076b

jr_000_0755:
    ldh a, [rSTAT]

Jump_000_0757:
    and $03
    jr z, jr_000_0755

jr_000_075b:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_075b

    ld a, [$de97]
    ldh [rLCDC], a
    ld a, [$de2d]
    ldh [rLYC], a

jr_000_076b:
    pop af
    reti


jr_000_076d:
    ld a, [$de2c]
    cp $08
    jr c, jr_000_077a

    jr jr_000_077c

jr_000_0776:
    ld a, $7f
    ldh [rLYC], a

Jump_000_077a:
jr_000_077a:
    pop af
    reti


jr_000_077c:
    jr nz, jr_000_07a3

    push bc
    ld a, [$d8ad]
    sub $01
    ld b, a

jr_000_0785:
    ldh a, [rLY]
    cp b
    jr c, jr_000_0785

jr_000_078a:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_078a

jr_000_0790:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_0790

    ld a, [$d7d2]
    ldh [rSCY], a
    ld a, [$de96]
    ldh [rBGP], a
    pop bc
    jr jr_000_0776

jr_000_07a3:
    cp $09
    jr nz, jr_000_07cd

    push de
    ld de, $5fe3
    ldh a, [rLY]
    cp $40
    jr c, jr_000_07b8

    ld de, $00e1
    ld a, e
    ld [$de87], a

jr_000_07b8:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_07b8

jr_000_07be:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_07be

    ld a, e
    ldh [rLCDC], a

Jump_000_07c7:
    ld a, d
    ldh [rLYC], a
    pop de
    jr jr_000_077a

jr_000_07cd:
    cp $0a
    jr nz, jr_000_07d7

    call Call_000_04ed
    jp Jump_000_077a


jr_000_07d7:
    cp $0b
    jp nz, Jump_000_077a

jr_000_07dc:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_07dc

jr_000_07e2:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_07e2

    ld a, [$d90e]
    ldh [rBGP], a
    jp Jump_000_077a


Jump_000_07f0:
    ld a, [$df00]
    push af
    ld a, [$c0fb]
    rst $20

Jump_000_07f8:
    call $c0f8
    pop af
    rst $20
    pop af
    reti


Call_000_07ff:
    or $f0

Call_000_0801:
Jump_000_0801:
    ld c, a
    ld a, [$ded6]
    or a
    ret nz

    srl c
    jr nc, jr_000_081b

    ld b, $06
    ld hl, $cca9
    ld de, $de96

Call_000_0813:
    call Call_000_0835
    ld a, [$de96]
    ldh [rBGP], a

jr_000_081b:
    srl c
    jr nc, jr_000_082a

    ld b, $05
    ld hl, $ccac
    ld de, $ff48
    call Call_000_0835

jr_000_082a:
    srl c
    ret nc

    ld b, $03
    ld hl, $ccaf
    ld de, $ff49

Call_000_0835:
    ld a, [hl]
    or a
    jr z, jr_000_083b

    dec [hl]
    ret


jr_000_083b:
    inc hl
    ld a, [hl-]
    ld [hl+], a
    inc hl
    push de
    push bc
    ld a, [de]
    ld d, [hl]
    call Call_000_1f51
    pop bc
    pop de
    ld [de], a
    ret nc

    ld a, b
    ld hl, $cca8
    and [hl]
    ld [hl], a
    ret


Call_000_0851:
Jump_000_0851:
    ld a, [$df00]
    push af
    ld hl, $d1e3
    ld e, [hl]
    inc hl

Jump_000_085a:
jr_000_085a:
    ld a, l

Jump_000_085b:
    cp e
    jr nc, jr_000_0868

    ld a, [hl+]
    push hl
    push de

Jump_000_0861:
    call Call_000_08c7
    pop de
    pop hl
    jr jr_000_085a

jr_000_0868:
    pop af
    rst $20

Call_000_086a:
jr_000_086a:
    ld a, $e4
    ld [$d1e3], a
    ret


Call_000_0870:
    xor a
    ld [$d1e2], a
    jr jr_000_086a

Jump_000_0876:
    ld [$cf79], a
    pop hl
    ld a, [hl+]
    push hl
    push af
    ld hl, $cf78
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_0883:
    pop af

Call_000_0884:
Jump_000_0884:
    cp $7f
    ret nc

    or a
    jr nz, jr_000_089b

    call Call_000_0870
    xor a
    call Call_000_089b
    push hl
    push de
    push bc
    call Call_000_0851
    pop bc

Call_000_0898:
    pop de
    pop hl
    ret


Call_000_089b:
jr_000_089b:
    push hl
    ld hl, $d1e2
    bit 0, [hl]
    jr z, jr_000_08a7

    cp $53
    jr c, jr_000_08b4

jr_000_08a7:
    ld hl, $d1e3
    ld l, [hl]
    ld [hl], a
    ld l, $e3
    ld a, [hl]
    cp $eb
    jr nc, jr_000_08b4

    inc [hl]

jr_000_08b4:
    pop hl
    ret


Call_000_08b6:
    call Call_000_0870
    ld a, [$df00]
    push af
    ld a, [$df02]
    rst $20
    call $4006
    pop af
    rst $20
    ret


Call_000_08c7:
    ld e, a
    cp $53
    jr c, jr_000_08f3

    cp $6d
    ld a, $02
    jr c, jr_000_08d4

    ld a, $17

jr_000_08d4:
    ld hl, $df02
    cp [hl]
    jr z, jr_000_08e9

    ld d, a
    push de
    ld e, $00
    ld a, [$df02]
    call Call_000_08e9
    pop de
    ld a, d
    ld [$df02], a

Call_000_08e9:
jr_000_08e9:
    ld [$df00], a
    ld [$2100], a
    ld a, e
    jp $4003


jr_000_08f3:
    ld a, [$df02]

Call_000_08f6:
    jr jr_000_08e9

Jump_000_08f8:
    xor a
    ld [wMegaArmUpgradeMHUnlocked], a
    ld [wMegaArmUpgradeCLUnlocked], a

Call_000_08ff:
    ld [wPowerGeneratorUnlocked], a
    ld a, [$df46]
    cp $01
    jr z, jr_000_090e

    call Call_000_04ca
    jr jr_000_091b

jr_000_090e:
    ld hl, $df6f
    ld a, [hl]
    or a
    jr nz, jr_000_091b

    inc [hl]
    ld a, $02
    jp Jump_000_0c98


Jump_000_091b:
jr_000_091b:
    rst $08
    nop

Jump_000_091d:
    xor a
    ld [$de8a], a
    ld [$dd00], a
    call Call_000_186b

Jump_000_0927:
    ld sp, $fffe
    call Call_000_04bc
    jp $04e0


Jump_000_0930:
    ld a, $01
    rst $20
    ld sp, $fffe
    ld hl, $de56
    ld [hl], $00

Jump_000_093b:
    ld a, $00
    ld [$de8a], a

Jump_000_0940:
    call Call_000_0bdc

Jump_000_0943:
    ld a, $98
    ld [$de9e], a
    xor a
    ld [$de9b], a

Jump_000_094c:
    ld a, $01
    rst $20
    ld sp, $fffe
    xor a
    ld [$de9a], a
    call Call_000_0c26

Jump_000_0959:
    ld a, $01
    rst $20
    ld sp, $fffe
    call Call_000_0bfb
    call Call_000_086a
    call $0402
    xor a
    ld [$de90], a

Call_000_096c:
    call Call_000_3289
    call $79f1
    xor a
    ld [$dd00], a
    ld [$deaf], a
    ld [$deae], a
    call Call_000_3353
    ld a, $01
    rst $20
    di
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $83
    ld [$de87], a
    ei
    call Call_000_19ae
    ld a, $07
    ldh [rWX], a
    ld a, [$df0b]
    or a
    ld a, $80
    jr z, jr_000_09a1

    ld a, $a0

jr_000_09a1:
    ldh [rWY], a
    ld a, $e3
    ld [$de87], a
    ld a, [$de9a]
    or a
    jr z, jr_000_09b6

    ld a, [$de99]
    ld [$de96], a
    jr jr_000_09c1

jr_000_09b6:
    xor a
    ld [$de96], a
    ld b, $1b
    ld c, $0c
    call $783e

jr_000_09c1:
    xor a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld e, $1c
    ld d, $d0
    ld c, $0c
    call $784c
    ld a, [$d897]
    bit 1, a

Call_000_09d4:
    jr z, jr_000_09dd

    ld a, $1e
    ld [$de2a], a
    jr jr_000_09e4

jr_000_09dd:
    ld a, [$de9a]
    or a
    call z, $7863

jr_000_09e4:
    call Call_000_186b
    ld a, $5a
    ld [$de55], a
    jp Jump_000_0a53


Jump_000_09ef:
    ld sp, $fffe
    ld a, [$df01]
    rst $20

Jump_000_09f6:
    call Call_000_145e
    ld a, $01
    rst $20
    call Call_000_197e
    ld a, [$c0fc]
    cp $c3
    jr nz, jr_000_0a0d

    ld a, [$c0ff]
    rst $20
    call $c0fc

jr_000_0a0d:
    ld a, $0d
    rst $20
    call $4048
    ld a, $01
    rst $20
    call Call_000_15e8
    ld hl, $de83
    inc [hl]
    ld b, [hl]
    inc hl
    dec [hl]
    ld hl, $ccb8

Call_000_0a23:
    ld a, [hl]
    bit 0, a
    jr z, jr_000_0a2c

    rr b
    jr c, jr_000_0a32

jr_000_0a2c:
    call Call_000_186b
    call $5fdf

jr_000_0a32:
    call Call_000_0f28
    call $0442
    call Call_000_144c
    ld a, [$d81c]
    or a
    jr nz, jr_000_0a56

    call Call_000_2689
    call Call_000_20be
    call Call_000_3b6c
    call $4e43
    call $4777
    call $559f

Jump_000_0a53:
    call Call_000_3af1

jr_000_0a56:
    ld a, [$df01]
    rst $20
    call $de70
    ld a, $01
    rst $20
    call Call_000_34b0
    ld a, [$de35]
    or a
    jr nz, jr_000_0aac

    ld a, [$cc49]
    or a
    jp z, Jump_000_09ef

    ld hl, $ded7
    ld a, [hl]
    cp $ff
    jr z, jr_000_0a99

    dec [hl]
    jr nz, jr_000_0a99

    dec [hl]
    xor a
    ld [$de34], a
    ld a, [$de2f]
    cp $02
    jr z, jr_000_0a97

    dec a
    jr z, jr_000_0a8e

    rst $08
    ld [hl], b
    jr jr_000_0a99

jr_000_0a8e:
    call $0402
    xor a
    ld [$dd00], a
    jr jr_000_0a99

jr_000_0a97:
    rst $08
    nop

jr_000_0a99:
    ld a, [$de30]
    or a
    jp z, Jump_000_09ef

    ld a, [$d771]
    cp $10
    jr c, jr_000_0aac

    cp $14
    jp c, Jump_000_09ef

jr_000_0aac:
    ld hl, $decc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    and $1f
    or l
    jr z, jr_000_0ac4

    dec hl
    ld a, l
    ld [$decc], a
    ld a, h
    ld [$decd], a
    jp Jump_000_09ef


Jump_000_0ac4:
jr_000_0ac4:
    call Call_000_0c36

Jump_000_0ac7:
    ld hl, $dee0
    ld [hl], $00
    ld a, [$df0a]
    cp $10
    jp z, Jump_000_0ca8

    call Call_000_04d2
    xor a
    ld [$ded4], a
    ld [$de2c], a
    ld [$deaf], a
    ld a, [$df0a]
    cp $09
    jp z, Jump_000_0cca

    ld a, [$df0a]
    ld [$df0e], a
    ld a, [$de31]
    or a
    jr nz, jr_000_0afc

    ld a, [$df0c]
    or a
    jp nz, Jump_000_2094

Jump_000_0afc:
jr_000_0afc:
    ld a, $01
    rst $20
    ld a, [$df0e]
    ld [$df0a], a
    ld sp, $fffe
    call Call_000_04ce
    ld a, [$df0a]
    cp $0a
    ld a, $15
    jp z, Jump_000_0bbf

    ld a, $01
    call Call_000_0cdc

Jump_000_0b1a:
    ld hl, $df68
    ld [hl], $01

Jump_000_0b1f:
    call Call_000_0b25
    jp Jump_000_091d


Call_000_0b25:
    ld a, $01
    rst $20
    call Call_000_0c26
    ld a, [wDarkMoonClearFlag]
    bit 0, a
    call z, Call_000_0b62
    xor a
    ld [$de9b], a
    ret


Call_000_0b38:
    di
    ld bc, $0036
    ld hl, $dd00
    xor a
    call Call_000_1a5e
    ei
    ld a, $01
    ld [$de9c], a
    xor a
    ld [$de9d], a
    ld hl, $df34
    ld bc, $000b
    xor a
    call Call_000_1a5e
    call Call_000_0b5d
    jp Jump_000_0be9


Call_000_0b5d:
    ld a, $98
    ld [$de9e], a

Call_000_0b62:
    ld a, $98
    ld hl, $de9f
    ld bc, $000c
    jp Jump_000_1a5e


Jump_000_0b6d:
    call Call_000_0c36
    call Call_000_186b
    ld hl, $df34
    dec [hl]
    jr z, jr_000_0b80

    xor a
    ld [$df0b], a
    jp Jump_000_0943


jr_000_0b80:
    ld hl, $df34
    ld [hl], $00
    rst $08
    ld l, a
    call Call_000_04ce
    ld a, $10
    rst $20
    call $402e
    ld a, $01
    rst $20
    call Call_000_0be9
    ld a, $02
    call Call_000_0cdc

Jump_000_0b9b:
    ld a, [$ded3]
    or a
    jr nz, jr_000_0bb0

    ld hl, $dedf
    ld [hl], $00
    ld a, [$def4]
    or a
    jp z, Jump_000_0b1f

    jp Jump_000_0d07


jr_000_0bb0:
    call Call_000_0c5e

Jump_000_0bb3:
    ld hl, $def2
    ld a, [hl]
    ld [hl], $00
    ld [$de8a], a
    jp Jump_000_0940


Jump_000_0bbf:
    ld [$df0a], a
    jp Jump_000_093b


Jump_000_0bc5:
    ld [$df0a], a
    call Call_000_0bdc
    xor a

Jump_000_0bcc:
    ld [$de8a], a
    ld hl, $de89
    bit 0, [hl]
    res 0, [hl]
    jp nz, Jump_000_0959

    jp Jump_000_094c


Call_000_0bdc:
    ld hl, $de44
    ld bc, $0012
    xor a
    ld [$df0b], a
    jp Jump_000_1a5e


Call_000_0be9:
Jump_000_0be9:
    ld a, $03
    ld [$df34], a
    call Call_000_0b5d
    xor a
    ld [$de9b], a
    ld [$ded4], a
    jp $454d


Call_000_0bfb:
    ld hl, $c200

Jump_000_0bfe:
    ld bc, $12bc
    xor a
    call Call_000_1a5e
    ld hl, $d700
    ld bc, $0300
    xor a
    call Call_000_1a5e
    ld hl, $dd50
    ld bc, $00f4
    xor a
    jp Jump_000_1a5e


Call_000_0c19:
Jump_000_0c19:
    ld a, $c9
    ld [$c0f0], a
    ld [$c0f4], a
    xor a
    ld [$de2c], a
    ret


Call_000_0c26:
    rst $28
    dec a
    ld hl, $df80
    ld a, [hl]
    ld [hl], $00
    ld [$de96], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


Call_000_0c36:
    rst $08
    nop
    ld hl, $dd38
    ld a, [hl]
    or a
    ld [hl], $00
    jr nz, jr_000_0c4d

    ld a, $01
    ld [$dd36], a
    xor a
    ld [$dd37], a
    call Call_000_19ae

jr_000_0c4d:
    call Call_000_0c19
    xor a
    ld [$dd36], a
    ldh [rIF], a
    ldh a, [rIE]
    or $03
    ldh [rIE], a
    ei
    ret


Call_000_0c5e:
    ld a, [wBusterUpgradeLevel]
    cp $02
    ret nc

    ld a, [$def3]
    or a
    ret nz

    ld hl, $dee0
    ld a, [$df0a]
    cp [hl]
    ld [hl], a
    ld hl, $dedf
    jr z, jr_000_0c79

    ld [hl], $00
    ret


jr_000_0c79:
    inc [hl]
    ld a, [hl]
    cp $03
    ret c

    ld [hl], $00
    ld a, [$df0a]
    ld [$dee1], a
    ld a, $03
    jp Jump_000_0c98


jr_000_0c8b:
    ld hl, wBusterUpgradeLevel
    inc [hl]
    ld a, [$dee1]
    ld [$df0a], a
    jp Jump_000_0bb3


Call_000_0c98:
Jump_000_0c98:
    ld [$de8a], a
    ld hl, $df0a
    ld a, [hl]
    ld [$dedb], a
    ld a, $10
    ld [hl], a
    jp Jump_000_0940


Jump_000_0ca8:
    ld sp, $fffe
    ld a, [$deda]
    cp $01
    jp z, Jump_000_0cd7

    cp $02
    jp z, Jump_000_091b

    cp $03
    jr z, jr_000_0c8b

    cp $04
    jr z, jr_000_0cf0

    ld a, [$def4]
    or a

Call_000_0cc4:
    jp nz, Jump_000_0d16

    jp Jump_000_0927


Jump_000_0cca:
    ld b, $1e
    call Call_000_1973
    call Call_000_04ce
    ld a, $01
    call Call_000_0c98

Jump_000_0cd7:
    ld a, $14
    jp Jump_000_0bbf


Call_000_0cdc:
    ld [$dedc], a
    ld hl, $def0
    bit 1, [hl]
    ret nz

    ld a, [wCrystalCollectedFlags]
    and $0f
    ret z

    ld a, $04
    jp Jump_000_0c98


jr_000_0cf0:
    ld a, [$dedb]
    or a
    jr z, jr_000_0d04

    ld [$df0a], a
    ld a, [$dedc]

Jump_000_0cfc:
    dec a
    jp z, Jump_000_0b1a

    dec a
    jp z, Jump_000_0b9b

jr_000_0d04:
    jp Jump_000_0927


Jump_000_0d07:
    call Call_000_0b25
    call Call_000_0b5d
    xor a
    ld [$deda], a
    ld a, $10
    jp Jump_000_0bc5


Jump_000_0d16:
    ld a, [$def4]
    ld hl, $0d21
    call Call_000_1cf7
    jp Jump_000_0bc5


    inc c
    dec c
    ld a, b
    cp $04
    ret nz

jr_000_0d28:
    ld a, $04
    ld [$dece], a
    xor a
    ld [$d74b], a
    ld [$decf], a
    ld a, e
    ld [$ded0], a
    ld a, $2a
    ld [$d70a], a
    ret


Call_000_0d3e:
    ld a, [$d897]
    bit 3, a
    jr nz, jr_000_0d28

    ld a, [$d725]
    sub $20
    jr nc, jr_000_0d4d

    xor a

jr_000_0d4d:
    ld [$de2b], a
    ld a, $f0
    ld [$d725], a
    ld a, $01
    ld [$dece], a
    xor a
    ld [$decf], a
    ld [$ded0], a
    ld [$d74b], a
    ret


Jump_000_0d65:
    ld a, [$d74b]
    or a
    ret z

    pop hl

Call_000_0d6b:
    rst $08
    inc e
    ld a, $02
    ld [$dece], a
    xor a
    ld [$decf], a
    ld [$ded0], a
    ld [$d77e], a
    ld hl, $d729
    ld [hl+], a
    ld [hl+], a
    ret


Call_000_0d82:
    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    jr jr_000_0d95

Call_000_0d8b:
    ld a, [$d722]
    add [hl]
    inc hl
    ld e, a
    ld a, [$d725]
    add [hl]

Call_000_0d95:
Jump_000_0d95:
jr_000_0d95:
    ld d, a

Call_000_0d96:
Jump_000_0d96:
    ld [$d750], a
    ld [$d751], a
    ld a, e
    ld [$d74f], a
    ld a, [$d831]
    cp $c3
    jr nz, jr_000_0dbc

    ld a, [$df00]
    push af
    ld a, [$d834]
    rst $20
    call $d831
    pop af
    rst $20
    inc b
    jr z, jr_000_0dbc

    dec b
    ld a, b
    jp Jump_000_0e32


jr_000_0dbc:
    ld a, d
    cp $80
    jr nc, jr_000_0df6

    ld hl, $d186

jr_000_0dc4:
    ld a, [hl+]
    or a
    jr z, jr_000_0df6

    dec a
    cp d
    jr nc, jr_000_0dcf

    inc hl
    jr jr_000_0dc4

jr_000_0dcf:
    ld a, [hl]
    cp $80
    jr z, jr_000_0ddc

    cp $81
    jr nz, jr_000_0df4

    ld a, $04
    jr jr_000_0e31

jr_000_0ddc:
    ld a, e
    cp $a0
    jr c, jr_000_0df1

    ldh a, [$ffaa]
    or a
    jr z, jr_000_0df1

    ld a, [$d74c]
    bit 0, a
    jr nz, jr_000_0df1

    ld a, $04
    jr jr_000_0e31

Jump_000_0df1:
jr_000_0df1:
    xor a
    jr jr_000_0e31

jr_000_0df4:
    add d
    ld d, a

jr_000_0df6:
    ld a, d
    ld [$d751], a
    ld a, d
    cp $80
    jr c, jr_000_0e10

    cp $a0
    jr nc, jr_000_0e0e

    ldh a, [$ffaa]
    or a
    ld a, $00
    jr nz, jr_000_0e31

    ld d, $7f
    jr jr_000_0e10

jr_000_0e0e:
    ld d, $00

jr_000_0e10:
    ldh a, [$ffaa]
    or a
    jr z, jr_000_0e2e

    ld a, e
    cp $a0
    jr c, jr_000_0e2e

    ld a, [$d74c]
    bit 0, a
    jr nz, jr_000_0e25

    ld a, $04
    jr jr_000_0e31

jr_000_0e25:
    ld a, e
    cp $e0
    ld e, $00
    jr nc, jr_000_0e2e

    ld e, $9f

jr_000_0e2e:
    call Call_000_0f32

jr_000_0e31:
    ld b, a

Jump_000_0e32:
    ld [$d74e], a
    ld a, [$d835]
    cp $c3
    jr nz, jr_000_0e4d

    ld a, [$df00]
    push af
    ld a, [$d838]
    rst $20
    call $d835
    pop af
    rst $20
    ld a, [$d74e]
    ld b, a

jr_000_0e4d:
    ld a, $00
    add b
    ld l, a
    ld a, $da
    adc $00
    ld h, a
    ld a, [hl]
    and $03
    jr z, jr_000_0e85

    cp $03
    jr z, jr_000_0e6c

    cp $02
    ld a, [$d751]
    jr nz, jr_000_0e68

    xor $08

jr_000_0e68:
    and $08
    jr z, jr_000_0e85

jr_000_0e6c:
    ld a, [$d74e]
    cp $08
    jr nz, jr_000_0e83

    ld [$d74d], a
    ldh a, [$ffaa]
    or a
    jr z, jr_000_0e83

    dec a
    jr nz, jr_000_0e83

    ld a, $14
    ld [$d739], a

jr_000_0e83:
    scf
    ret


jr_000_0e85:
    ld a, [$d74f]
    ld e, a
    ld hl, $de00
    ld a, [hl+]
    ld d, a

jr_000_0e8e:
    ld a, l
    cp d
    jr nc, jr_000_0eb0

jr_000_0e92:
    ld a, e
    add $30
    cp [hl]
    inc l
    jr c, jr_000_0eab

    cp [hl]
    inc l
    jr nc, jr_000_0eac

    ld a, [$d750]
    add $30
    cp [hl]
    inc l
    jr c, jr_000_0ead

    cp [hl]
    inc l
    jr nc, jr_000_0e8e

    ret


jr_000_0eab:
    inc l

jr_000_0eac:
    inc l

jr_000_0ead:
    inc l
    jr jr_000_0e8e

jr_000_0eb0:
    ldh a, [$ffaa]
    or a
    ret z

    ld a, l
    cp $76
    ret z

    ld a, [$cc71]
    or a
    ret z

    ld d, $76
    ld hl, $cc72
    jr jr_000_0e92

Jump_000_0ec4:
    ld hl, $d186

jr_000_0ec7:
    ld a, [hl+]
    or a
    jr z, jr_000_0ed2

    inc hl
    ld a, l
    cp $8c
    jr c, jr_000_0ec7

    ret


jr_000_0ed2:
    dec hl
    ld [hl], d
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $00
    ret


Jump_000_0eda:
    ld de, $de00
    ld a, [de]
    ld e, a

Jump_000_0edf:
    ld a, [hl+]
    add c
    add $30
    ld [de], a
    inc e
    ld a, [hl+]
    add c
    add $30
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    add $30
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    add $30
    ld [de], a
    inc e
    ld a, e
    ld [$de00], a
    ld a, [$deae]
    or a
    jr z, jr_000_0f27

    push hl
    push bc
    dec de
    ld a, [de]
    ld h, a
    dec de
    ld a, [de]
    push af
    dec de
    ld a, [de]
    ld l, a
    dec de
    ld a, [de]
    ld e, a
    pop af
    ld d, a
    ld a, c
    ld [$dec9], a
    ld a, b
    ld [$deca], a
    ld a, [$df00]
    push af
    ld a, $01
    rst $20
    call $7c0d
    pop af
    rst $20
    pop bc
    pop hl

jr_000_0f27:
    ret


Call_000_0f28:
    ld a, $01
    ld [$de00], a
    xor a
    ld [$cc71], a
    ret


Call_000_0f32:
Jump_000_0f32:
    ld a, e

Jump_000_0f33:
    cp $a0
    jr nc, jr_000_0f50

    ld a, [$d7d1]
    add e
    ld e, a
    ld a, [$d7d2]

Jump_000_0f3f:
    add d
    ld d, a
    ld a, e
    swap a
    and $0f
    ld e, a
    ld a, d
    and $f0
    or e
    ld l, a
    ld h, $c1
    ld a, [hl]
    ret


jr_000_0f50:
    ld a, [$df00]
    push af
    ld a, [$df01]
    rst $20
    ld b, e
    ld a, d
    swap a
    and $0f
    add a
    ld e, a
    ld d, $00
    ld hl, $d7eb
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp $d0
    ld d, $00
    jr c, jr_000_0f71

    dec d

jr_000_0f71:
    ld a, [$d711]
    add b
    ld e, a
    ld a, [$d712]
    adc d
    ld d, a
    push hl
    ld hl, $d7d7
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    pop hl
    jr nc, jr_000_0f9f

jr_000_0f87:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld d, $00
    add hl, de
    ld b, [hl]

jr_000_0f9b:
    pop af
    rst $20
    ld a, b
    ret


jr_000_0f9f:
    bit 7, d
    jr nz, jr_000_0fb5

    ld a, [$d830]
    bit 1, a
    jr nz, jr_000_0fc1

    ld a, [$d7d7]
    ld e, a
    ld a, [$d7d8]
    ld d, a
    dec de
    jr jr_000_0f87

jr_000_0fb5:
    ld a, [$d830]
    bit 0, a
    jr nz, jr_000_0fc1

    ld de, $0000
    jr jr_000_0f87

jr_000_0fc1:
    ld b, $04
    jr jr_000_0f9b

Call_000_0fc5:
    ld a, [$d81e]
    or a
    ret nz

    ld hl, $d711
    ld a, [$d70d]
    sub [hl]
    ld [$d722], a
    ret


Jump_000_0fd5:
    push bc
    ld a, d
    push de
    call Call_000_0d96
    pop de
    pop bc
    ld a, $00
    adc a

Jump_000_0fe0:
    push af
    ld a, [$d74e]
    ld [$df7e], a
    ld e, b
    ld a, d
    call Call_000_0d96
    ld a, [$d74e]
    ld [$df7f], a

Call_000_0ff2:
    pop de
    ld a, d
    adc a
    and $03
    ret


    ld a, [$d72f]
    ld e, a

Jump_000_0ffc:
    ld a, [$d730]
    ld d, a

Jump_000_1000:
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


Call_000_100f:
Jump_000_100f:
    ld a, [$cc52]
    or a
    ld b, a
    ret z

    push hl
    push bc
    xor a

Call_000_1018:
    ldh [$ff8a], a
    ld hl, $cc53
    ld a, [hl]
    or a
    jr z, jr_000_1025

    ld a, [$cc6a]
    add [hl]

jr_000_1025:
    ld [$cc66], a
    ld b, a
    or a
    jr nz, jr_000_1034

    ld a, $02
    ldh [$ff8a], a
    ld a, $03
    jr jr_000_1075

jr_000_1034:
    ld a, d
    cp $e0
    jr nc, jr_000_1070

    cp b
    jr c, jr_000_1070

    inc hl
    ld a, $02
    ldh [$ff8a], a
    ld a, e
    cp $d0
    ld d, $00
    jr c, jr_000_1049

    dec d

jr_000_1049:
    ld a, [$d711]
    add e
    ld e, a

Call_000_104e:
    ld a, [$d712]
    adc d
    ld d, a

jr_000_1053:
    ld a, [hl]
    cp $ff
    jr z, jr_000_1070

    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    inc hl
    jr c, jr_000_106c

    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    inc hl
    jr nc, jr_000_1053

    ld e, $01
    jr jr_000_1072

jr_000_106c:
    inc hl
    inc hl

Jump_000_106e:
    jr jr_000_1053

jr_000_1070:
    ld e, $00

jr_000_1072:
    ldh a, [$ff8a]
    or e

jr_000_1075:
    pop bc
    pop hl
    ld b, a
    ret


Call_000_1079:
Jump_000_1079:
    push de
    call Call_000_100f
    pop de
    ld a, [hl]
    ld [hl], b
    xor b
    cp $03
    ret nz

    ld a, [$cc66]
    ld d, a
    jp Jump_000_0484


Jump_000_108b:
    push de
    call Call_000_100f
    pop de
    ld a, b
    or a
    ret z

    jp Jump_000_0488


Jump_000_1096:
    ld a, [$df00]
    push af
    ld a, [$df01]
    rst $20
    ldh a, [$ffa6]
    swap a
    and $0f
    add a
    ld e, a
    ld d, $00
    ld hl, $d7eb
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa3]
    ld e, a
    ldh a, [$ffa4]
    rra
    rr e
    rra
    rr e
    rra
    rr e
    rra
    rr e
    add hl, de
    ld b, [hl]
    pop af
    rst $20
    ld a, b
    ret


Call_000_10c6:
Jump_000_10c6:
    push hl
    push bc
    ld hl, wETankAndPieceCount
    ld [hl], a
    cp $11
    jr c, jr_000_10d2

    ld [hl], $10

jr_000_10d2:
    ld a, [hl]
    srl a
    srl a
    ld hl, $df39
    ld b, [hl]
    ld [hl], a
    cp b
    pop bc
    pop hl
    ret


Jump_000_10e0:
    ld a, $07
    ld [$c3e1], a
    push hl
    push bc
    ld a, e

Call_000_10e8:
    ld [$ce53], a
    ld a, d
    ld [$ce54], a
    xor a
    ld [$c238], a
    ldh [$ffa7], a
    ld a, [$deaf]
    and $b2
    jp nz, Jump_000_11a5

Jump_000_10fd:
    ld a, b
    ldh [$ffa9], a
    bit 7, a
    jr z, jr_000_1109

    and $03
    jp z, Jump_000_11a5

jr_000_1109:
    ldh a, [$ffa4]
    ld e, a
    ldh a, [$ffa6]
    ld d, a
    call Call_000_12a1
    ld a, [$ccc2]
    or a
    jp nz, Jump_000_11a5

    ldh a, [$ffa9]
    bit 0, a
    jp z, Jump_000_1140

    ld a, [$df08]
    and $61
    jr nz, jr_000_1140

    ld hl, $d739
    ld a, [hl+]
    or [hl]
    jr nz, jr_000_1140

    call Call_000_1326
    jr nc, jr_000_1140

    ld hl, $c3e0
    call Call_000_2a0b
    ld a, $01
    ldh [$ffa7], a
    jp Jump_000_11a5


Jump_000_1140:
jr_000_1140:
    ldh a, [$ffa9]
    bit 7, a
    jp nz, Jump_000_11a5

    ld a, [$de90]
    or a
    jr nz, jr_000_11a5

    call Call_000_1352
    ldh a, [$ff8a]
    ld c, a
    ldh a, [$ff8b]
    ld e, a
    ldh a, [$ff8c]
    ld b, a
    ldh a, [$ff8d]
    ld d, a
    call Call_000_11af
    push af
    call Call_000_1353
    pop af
    jr z, jr_000_11a5

    ld a, $02
    ldh [$ffa7], a
    ld a, [$c3e2]
    or a
    jp nz, Jump_000_11a5

    ld a, [$cc40]

Jump_000_1174:
    ld c, a
    ld a, [$cc41]
    ld h, a
    call Call_000_1404
    ld a, d
    or a
    jr z, jr_000_11a5

    ld a, [$cc46]
    sub d
    jr nc, jr_000_1187

    xor a

jr_000_1187:
    ld [$cc46], a
    jr z, jr_000_11a5

    ld a, [$c238]
    and $07
    cp $01
    jr nz, jr_000_11a5

    rst $08
    dec d
    ld a, [$c2d0]
    or a
    jr nz, jr_000_11a2

    ld a, [$c3e1]
    and $1f

jr_000_11a2:
    ld [$c3e2], a

Jump_000_11a5:
jr_000_11a5:
    pop bc
    pop hl
    ldh a, [$ffa7]
    or a
    ret


Call_000_11ab:
Jump_000_11ab:
    xor a
    ld [$c238], a

Call_000_11af:
    ld a, [$c235]
    ld [$c237], a
    ld hl, $c204
    ld a, [hl]
    or a
    jp z, Jump_000_128c

    ld a, c
    ldh [$ff8e], a
    ld a, b
    ldh [$ff8f], a
    ld a, e
    ldh [$ff90], a
    ld a, d
    ldh [$ff91], a
    call Call_000_11d0
    ret nz

    jp Jump_000_1280


Call_000_11d0:
Jump_000_11d0:
    inc l
    ld a, c
    sub [hl]
    cp $e0
    jr c, jr_000_11d8

    xor a

jr_000_11d8:
    ld c, a
    inc l
    ld a, e
    sub [hl]
    cp $e0
    jr c, jr_000_11e1

    xor a

jr_000_11e1:
    ld e, a
    inc l
    ld a, b
    sub [hl]
    cp $e0
    jr c, jr_000_11ea

    xor a

jr_000_11ea:
    ld b, a
    inc l
    ld a, d
    sub [hl]
    ld d, a
    inc l

jr_000_11f0:
    ld a, [hl+]
    or a
    jr z, jr_000_120a

    ld [$c22a], a
    ld a, [hl+]
    cp c
    jr c, jr_000_1207

    cp e
    jr nc, jr_000_1207

    ld a, [hl+]
    cp b
    jr c, jr_000_11f0

    cp d
    jr c, jr_000_120c

    jr jr_000_11f0

jr_000_1207:
    inc l
    jr jr_000_11f0

jr_000_120a:
    xor a
    ret


jr_000_120c:
    ld hl, $c238
    set 0, [hl]
    ld a, [$c22a]

Jump_000_1214:
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $1f
    ld d, a
    push hl
    ld a, l
    add $08
    ld l, a
    set 6, [hl]
    add $f6
    ld l, a
    ld a, [hl]
    ld [$c2c2], a
    pop hl
    ld a, [$cc46]
    ld e, a
    ld a, [$cc47]
    bit 0, a
    jr z, jr_000_123b

jr_000_1235:
    ld [hl], $00
    ld b, $02
    jr jr_000_1245

jr_000_123b:
    bit 1, a
    jr z, jr_000_1250

jr_000_123f:
    rst $08
    dec e
    ld [hl], $80
    ld b, $04

jr_000_1245:
    ld a, [$c238]
    or b
    ld [$c238], a
    ld d, $00
    jr jr_000_127c

jr_000_1250:
    ld a, [$df00]
    push af
    ld a, $1a
    rst $20
    call $4010
    pop af
    rst $20
    ld a, [$c238]
    bit 2, a
    jr nz, jr_000_123f

    bit 1, a
    jr nz, jr_000_1235

    ld a, [$c237]
    ld b, a
    bit 0, b
    jr nz, jr_000_127c

    ld a, d
    bit 2, b
    jr z, jr_000_1277

    cp e
    jr nc, jr_000_127c

jr_000_1277:
    sub e
    jr nc, jr_000_127b

    xor a

jr_000_127b:
    ld [hl], a

jr_000_127c:
    xor a
    inc a
    ld a, d
    ret


Jump_000_1280:
    ldh a, [$ff8e]
    ld c, a
    ldh a, [$ff8f]
    ld b, a
    ldh a, [$ff90]
    ld e, a
    ldh a, [$ff91]
    ld d, a

Jump_000_128c:
    ld hl, $c218
    ld a, [hl]
    or a
    ret z

    ld a, [$c236]
    ld [$c237], a
    jp Jump_000_11d0


Call_000_129b:
Jump_000_129b:
    ld a, e
    ldh [$ffa4], a
    ld a, d
    ldh [$ffa6], a

Call_000_12a1:
    ld hl, $ce53
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d3ea]
    bit 5, a
    jr z, jr_000_12bf

    ld a, [hl+]
    cpl
    ldh [$ff8b], a
    ld a, [hl+]
    cpl
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8c], a
    ld a, [hl+]
    ldh [$ff8d], a
    ld hl, $ff8a

jr_000_12bf:
    ld a, [hl+]
    add e
    ldh [$ff8a], a
    add $30
    ldh [$ff93], a
    ld a, [hl+]
    add e
    ldh [$ff8b], a
    add $30
    ldh [$ff94], a
    ld a, [hl+]
    add d
    ldh [$ff8c], a
    add $30
    ldh [$ff95], a
    ld a, [hl+]
    add d
    ldh [$ff8d], a
    add $30
    ldh [$ff96], a
    ldh a, [$ffa9]
    bit 1, a
    jr z, jr_000_12fd

    ld de, $de00

Jump_000_12e8:
    ld a, [de]
    ld e, a
    ld hl, $ff93
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]

Jump_000_12f4:
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    ld [$de00], a

jr_000_12fd:
    ld a, [$deae]
    or a
    jr z, jr_000_1325

    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff94]
    ld l, a
    ldh a, [$ff95]
    ld d, a
    ldh a, [$ff96]
    ld h, a
    ldh a, [$ffa4]
    ld [$dec9], a
    ldh a, [$ffa6]
    ld [$deca], a
    ld a, [$df00]
    push af
    ld a, $01
    rst $20
    call $7c0d
    pop af
    rst $20

jr_000_1325:
    ret


Call_000_1326:
Jump_000_1326:
    ld hl, $d746
    ldh a, [$ff94]
    cp [hl]
    jr c, jr_000_1340

    inc hl
    ldh a, [$ff93]
    cp [hl]
    ret nc

    inc hl
    ldh a, [$ff96]
    cp [hl]
    jr c, jr_000_1342

    inc hl
    ldh a, [$ff95]
    cp [hl]
    jr nc, jr_000_1342

Jump_000_133f:
    ret


jr_000_1340:
    or a
    ret


jr_000_1342:
    ld hl, $d749
    ldh a, [$ff95]
    sub [hl]

Call_000_1348:
    dec a
    jr nz, jr_000_1340

    ld a, $01
    ld [$d77c], a
    jr jr_000_1340

Call_000_1352:
    ret


Call_000_1353:
    ld a, [$c238]
    bit 0, a
    jr z, jr_000_1386

    and $06
    jr nz, jr_000_1386

    ld hl, $c2ee
    bit 7, [hl]
    jr z, jr_000_1386

    set 0, [hl]
    ld hl, $c3e7
    ldh a, [$ffa4]
    sub [hl]
    ld [$c2eb], a
    inc hl
    ldh a, [$ffa6]
    sub [hl]
    ld [$c2ec], a
    pop de
    pop af
    ld a, $01
    or a
    push af
    push de
    ld hl, $ff9b
    ld a, [$c2ed]
    add [hl]
    ld [hl], a

jr_000_1386:
    ld a, [$de9b]
    cp $06
    jr nz, jr_000_13bb

    ldh a, [$ffa9]
    bit 7, a
    jr nz, jr_000_13bb

    and $05
    cp $05
    jr nz, jr_000_13bb

    ld a, [$c238]
    and $06
    jr nz, jr_000_13bb

    ld a, [$cc47]
    and $03
    jr nz, jr_000_13bb

    ld hl, $c3f1
    ld a, [$cc46]
    bit 7, a
    jr nz, jr_000_13bb

    cp [hl]
    jr c, jr_000_13bb

    ld [hl+], a
    ldh a, [$ffa4]
    ld [hl+], a
    ldh a, [$ffa6]
    ld [hl+], a

jr_000_13bb:
    ld a, [$c2f5]
    or a
    jr z, jr_000_1403

    ldh a, [$ffa9]
    bit 0, a
    jr z, jr_000_1403

    bit 7, a
    jr nz, jr_000_1403

    ld a, [$cc47]
    and $03
    jr nz, jr_000_1403

    ld hl, $ffa4
    ld a, [hl+]
    add $30
    ld e, a
    inc hl
    ld a, [hl]
    add $30
    ld d, a
    ld hl, $c2f6
    ld b, [hl]
    inc hl
    ld a, [hl+]
    sub e
    jr nc, jr_000_13e9

    cpl
    inc a

jr_000_13e9:
    cp b
    jr nc, jr_000_1403

    ld c, a
    ld a, [hl+]
    sub d
    jr nc, jr_000_13f3

    cpl
    inc a

jr_000_13f3:
    cp b
    jr nc, jr_000_1403

    cp c
    jr nc, jr_000_13fa

    ld a, c

jr_000_13fa:
    ld [$c2f6], a
    ld hl, $c2d3
    ld [hl], e
    inc hl
    ld [hl], d

jr_000_1403:
    ret


Call_000_1404:
    ld a, [$de9b]
    cp $02
    ret nz

    jp Jump_000_140d


Jump_000_140d:
    ld a, [$cc47]
    bit 6, a
    ret nz

    ld a, [$c238]
    and $07

Call_000_1418:
    cp $01
    jr nz, jr_000_144b

    ld l, c
    push hl
    ld a, [$c22a]
    sub $0b
    ld c, a
    ld h, $c2
    ld a, $1d
    add c
    ld l, a
    ld a, [hl-]
    or a
    jr nz, jr_000_1449

    ld a, [$cc46]
    cp d
    jr c, jr_000_1435

    ld a, d

jr_000_1435:
    or a
    jr z, jr_000_1449

    ld [hl+], a
    ld [hl], $01
    ld a, $04
    add c
    ld l, a
    ldh a, [$ffa4]
    ld [hl], a
    ld a, $08
    add c
    ld l, a
    ldh a, [$ffa6]
    ld [hl], a

jr_000_1449:
    pop hl
    ld c, l

jr_000_144b:
    ret


Call_000_144c:
    ld a, [$df01]
    rst $20
    call Call_000_16cd
    ld a, [$d81e]
    or a
    call nz, Call_000_167b
    ld a, $01
    rst $20
    ret


Call_000_145e:
    ld a, [$d7c1]
    or a
    ret z

    ld a, [$d7c6]
    ld c, a
    ld a, [$d7d1]
    ld b, a
    xor c
    and $08
    ret z

    ld a, [$d7c1]
    bit 7, a
    ld a, b
    jp nz, Jump_000_1524

Call_000_1478:
    ldh [$ff8a], a
    add $a8
    srl a
    srl a
    srl a
    ld c, a
    ld a, [$d7d2]
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld b, $98
    add hl, bc
    ld a, l
    ld [$d7da], a
    ld a, h
    ld [$d7db], a
    ldh a, [$ff8a]
    add $a8
    ld e, a
    ld a, [$d7d2]
    ld d, a
    ld a, e
    swap a
    and $0f
    ld e, a
    ld a, d
    and $f0
    or e
    bit 0, c
    ld c, a
    ld e, $02
    ld b, $c1
    jr nz, jr_000_14f5

    ld a, [$d70f]
    ld e, a
    ld a, [$d710]
    ld d, a
    ld hl, $0058
    add hl, de
    ld e, $00

Jump_000_14c2:
    push de
    rr h
    rr l
    rr h
    rr l
    rr h
    rr l
    rr h
    rr l
    ld h, $00
    ld a, [$d7eb]

Call_000_14d8:
    ld e, a
    ld a, [$d7ec]
    ld d, a
    add hl, de
    ld a, [$d88c]
    ld e, a
    ld d, $00
    ld a, $08
    push bc

jr_000_14e7:
    push af
    ld a, [hl]
    ld [bc], a
    add hl, de
    ld a, c
    add $10
    ld c, a
    pop af
    dec a
    jr nz, jr_000_14e7

    pop bc
    pop de

jr_000_14f5:
    ld a, [$d890]
    add e
    ld e, a
    ld a, [$d891]
    adc $00
    ld d, a
    ld hl, $dd50
    ld a, $08

jr_000_1505:
    push af
    push hl
    ld b, $c1
    ld a, [bc]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    pop hl
    ld [hl+], a
    ld [hl], b
    inc l
    ld a, c
    add $10
    ld c, a
    pop af
    dec a
    jr nz, jr_000_1505

    ld a, $10
    ld [$d7d9], a
    ret


Call_000_1524:
Jump_000_1524:
    ldh [$ff8a], a
    add $f0
    srl a
    srl a
    srl a
    ld c, a
    ld a, [$d7d2]
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld b, $98
    add hl, bc
    ld a, l
    ld [$d7da], a
    ld a, h
    ld [$d7db], a
    ldh a, [$ff8a]
    add $f0
    ld e, a
    ld a, [$d7d2]
    ld d, a
    ld a, e
    swap a
    and $0f
    ld e, a
    ld a, d
    and $f0
    or e
    bit 0, c
    ld c, a
    ld e, $00
    ld b, $c1
    jr z, jr_000_14f5

    ld hl, $d70f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffa0
    add hl, de
    ld e, $02
    jp Jump_000_14c2


Call_000_156f:
    ld hl, $d713
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $d7d3
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    ld b, $01
    jr c, jr_000_1597

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    ld b, $02
    jr nc, jr_000_1597

    ld hl, $d713
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld b, $00

jr_000_1597:
    ld d, [hl]
    dec hl
    ld e, [hl]
    ret


Call_000_159b:
    call Call_000_156f
    ld hl, $d70f

Call_000_15a1:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, e
    sub $50
    ld [hl+], a
    ld a, d
    sbc $00
    ld [hl], a
    ret


Call_000_15ae:
    ld a, [$d81c]
    bit 0, a
    ld hl, $0050
    jr nz, jr_000_15be

Jump_000_15b8:
    ld hl, $d70f
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_15be:
    ld a, h
    srl a
    rr l
    srl a
    rr l
    srl a
    rr l
    srl a
    rr l
    ld a, l
    ld [$d7c7], a
    sub $06
    jr nc, jr_000_15d8

    xor a

jr_000_15d8:
    ld [$d7c8], a
    ld a, l
    add $06
    ld [$d7c9], a
    ret


Call_000_15e2:
jr_000_15e2:
    xor a
    ld de, $0000
    jr jr_000_162b

Call_000_15e8:
    ld a, [$d81e]

Jump_000_15eb:
    or a
    jp nz, Jump_000_1652

    ld a, [$d7dd]
    or a
    jr nz, jr_000_15e2

    call Call_000_156f
    ld a, [$d70f]
    ld b, a
    ld a, e
    sub b
    push af
    ld hl, $d827
    ld a, [hl+]

Jump_000_1603:
    or a
    jr z, jr_000_160d

    dec hl
    dec [hl]
    inc hl
    jr nz, jr_000_160d

    ld [hl], $00

jr_000_160d:
    ld a, [hl]
    or a
    jr nz, jr_000_1613

    ld a, $02

jr_000_1613:
    ld b, a
    cpl
    inc a
    ld c, a
    pop af
    bit 7, a
    jr nz, jr_000_1624

    ld d, $00
    cp b
    jr c, jr_000_162a

    ld a, b
    jr jr_000_162a

jr_000_1624:
    ld d, $ff
    cp c
    jr nc, jr_000_162a

    ld a, c

jr_000_162a:
    ld e, a

jr_000_162b:
    ld [$d7c1], a
    ld hl, $d70f
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl-]
    adc d
    ld d, a
    call Call_000_15a1
    ld a, [$d7c1]
    ld e, a
    ld [$d7c2], a
    cpl
    inc a
    ld [$d7c3], a
    ld hl, $d7d1
    ld a, [hl]
    ld [$d7c6], a
    add e
    ld [hl], a
    jp Jump_000_15b8


Jump_000_1652:
    ld a, [$d820]
    ld e, a
    ld d, $00
    bit 7, e
    jr z, jr_000_165d

    dec d

jr_000_165d:
    ld [$d7c1], a
    ld [$d7c2], a
    cpl
    inc a
    ld [$d7c3], a
    ld hl, $d7d1
    ld a, [hl]
    ld [$d7c6], a
    add e
    ld [hl], a
    ld hl, $d70f
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ret


Call_000_167b:
    ld hl, $d81f
    ld a, [hl]
    or a
    jr z, jr_000_16c0

    ld a, [$d820]
    bit 7, a
    jr z, jr_000_168b

    cpl
    inc a

jr_000_168b:
    ld e, a
    ld a, [hl]
    sub e
    jr nc, jr_000_1691

    xor a

jr_000_1691:
    ld [hl], a
    ld a, [$d822]
    ld b, a
    ld e, $00
    bit 7, a
    jr z, jr_000_169d

    dec e

jr_000_169d:
    ld hl, $d81d
    ld a, [$d821]
    add [hl]
    ld [hl], a
    ld hl, $d70d
    ld a, b
    ld b, [hl]
    adc [hl]
    ld d, a
    ld [hl+], a
    ld a, [hl]
    adc e
    ld [hl], a
    ld a, d
    sub b
    ld e, a
    ld a, [$d722]
    ld b, a
    ld a, [$d7c3]
    add b
    add e
    ld [$d722], a
    ret


jr_000_16c0:
    xor a
    ld [$d756], a
    ld [$d81e], a
    call Call_000_173e
    jp Jump_000_36cd


Call_000_16cd:
    ld a, [$d7dd]

Call_000_16d0:
    or a
    jr z, jr_000_1721

    ld a, [$d7de]
    or a
    jr z, jr_000_1733

    ld b, a
    ld a, $80
    sub b
    ld b, a
    ldh [$ff8a], a
    and $07
    jr nz, jr_000_16f3

    ld a, [$d7dd]
    bit 7, a
    jr nz, jr_000_16f0

    call Call_000_175d
    jr jr_000_16f3

jr_000_16f0:
    call Call_000_1773

jr_000_16f3:
    ld de, $01d0
    ld a, [$d7dd]
    bit 7, a
    jr nz, jr_000_1700

    ld de, $fe30

jr_000_1700:
    ld hl, $d7dc
    ld a, [hl]
    add e
    ld [hl], a
    ld hl, $d725
    ld a, d
    adc [hl]
    ld [hl], a
    ld hl, $d7d2
    ld a, [$d7dd]
    ld b, a
    add [hl]
    ld [hl], a
    ld a, b
    bit 7, a
    jr nz, jr_000_171c

    cpl

Call_000_171b:
    inc a

jr_000_171c:
    ld hl, $d7de
    add [hl]
    ld [hl], a

jr_000_1721:
    ld a, [$d7d2]
    ld b, a
    add a
    add a
    and $e0
    ld [$dd7a], a
    ld a, b
    and $f0
    ld [$dd7b], a
    ret


jr_000_1733:
    xor a
    ld [$d7dd], a
    call Call_000_173e
    call Call_000_3735
    ret


Call_000_173e:
    xor a

Jump_000_173f:
    ld [$d81c], a
    ld [$d739], a
    call Call_000_22ec
    ld a, [$d722]
    ld e, a
    ld a, [$d725]
    ld d, a
    call Call_000_100f
    ld a, b
    ld [$cc64], a
    and $01
    ld [$d899], a
    ret


Call_000_175d:
    ld a, b
    and $08
    ld e, $01
    jr nz, jr_000_1765

    dec e

jr_000_1765:
    ld a, b
    and $08
    ld c, a
    ld a, b
    swap a
    and $07
    ld b, a
    call Call_000_178f
    ret


Call_000_1773:
    ld a, b
    and $08
    ld e, $01
    jr nz, jr_000_177b

    dec e

jr_000_177b:
    ld a, b
    and $08
    xor $08
    ld c, a
    ld a, b
    swap a
    and $07
    ld b, a
    ld a, $07
    sub b
    ld b, a
    call Call_000_178f
    ret


Call_000_178f:
    ld a, c
    ldh [$ff8c], a
    ld a, e
    ldh [$ff8b], a
    or a
    jr nz, jr_000_17cf

    ld l, b
    ld h, $00
    add hl, hl
    ld de, $d7eb
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d7e5]
    ld e, a
    ld a, [$d7e6]
    ld d, a
    add hl, de
    ld a, [$d7e7]
    ld e, a
    ld d, $c1
    ld b, $0c
    call Call_000_184b
    ld a, [$d7dd]
    bit 7, a
    ld b, $90
    jr nz, jr_000_17c2

    ld b, $70

jr_000_17c2:
    ld a, [$d7e7]
    add b
    ld l, a
    ld h, $c1
    ld b, $10
    xor a
    call Call_000_185b

jr_000_17cf:
    ld a, [$d7e7]
    ld l, a
    and $f0
    ld c, a
    ld h, $c1
    ld de, $dd60
    ld b, $0c

jr_000_17dd:
    ld a, [hl]
    push bc
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$d890]
    ld c, a
    ld a, [$d891]
    ld b, a
    add hl, bc
    ldh a, [$ff8c]
    or a
    jr z, jr_000_17f4

    inc hl

jr_000_17f4:
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    inc de
    pop hl
    pop bc
    ld a, l
    inc a
    and $0f
    or c
    ld l, a
    dec b
    jr nz, jr_000_17dd

    ldh a, [$ff8b]

Jump_000_1808:
    or a
    jr z, jr_000_181d

    ld a, [$d7dd]
    bit 7, a
    ld b, $10
    jr z, jr_000_1816

    ld b, $f0

jr_000_1816:
    ld a, [$d7e7]
    add b
    ld [$d7e7], a

jr_000_181d:
    ld a, [$d7e9]
    ld e, a
    ld [$d7e0], a
    ld a, [$d7ea]
    ld d, a
    ld [$d7e1], a
    ld hl, $0020
    ld a, [$d7dd]

Jump_000_1831:
    bit 7, a
    jr z, jr_000_1838

    ld hl, $ffe0

jr_000_1838:
    add hl, de
    ld a, h
    and $03

Call_000_183c:
    or $98
    ld [$d7ea], a
    ld a, l
    ld [$d7e9], a
    ld a, $18
    ld [$d7df], a
    ret


Call_000_184b:
    ld a, e
    and $f0
    ld c, a

jr_000_184f:
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and $0f

Jump_000_1855:
    or c
    ld e, a
    dec b
    jr nz, jr_000_184f

    ret


Call_000_185b:
    ld d, a
    ld a, l
    and $f0
    ld c, a

jr_000_1860:
    ld [hl], d
    ld a, l
    inc a
    and $0f
    or c
    ld l, a
    dec b
    jr nz, jr_000_1860

    ret


Call_000_186b:
Jump_000_186b:
    ld hl, $dfad
    ld a, [hl]
    or a

Jump_000_1870:
    jr z, jr_000_1874

    dec [hl]
    ret


jr_000_1874:
    di

Jump_000_1875:
    ld a, $30
    ldh [rP1], a
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
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
    ld c, a
    ldh a, [rP1]
    or c
    ld c, a
    ldh a, [rP1]
    or c
    cpl
    and $0f
    or b
    ld c, a
    ld a, [$de91]
    ld b, a
    xor c
    and c
    ld [$de92], a
    ld a, c
    ld [$de91], a
    cpl
    and b
    ld [$d75f], a
    ld a, $30
    ldh [rP1], a
    ei
    ld a, [$de91]
    and $0f
    cp $0f
    jp z, Jump_000_0504

    ld a, [$deea]
    or a
    ret nz

    ld a, c
    or a
    ret z

    ld hl, $de80
    xor [hl]
    swap a
    inc hl
    xor [hl]
    ld hl, $deac
    add [hl]
    ld [hl], a
    ld a, c
    ret


Call_000_18e0:
    ld c, $80
    ld b, $0a
    ld hl, $18ee

jr_000_18e7:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_000_18e7

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_18f4:
    dec a
    jr nz, jr_000_18f4

    ret


Call_000_18f8:
Jump_000_18f8:
    di
    ldh a, [rLCDC]
    and $80
    ret z

jr_000_18fe:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_18fe

    cp $97
    jr nc, jr_000_18fe

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ret


Call_000_190f:
Jump_000_190f:
    push bc
    ld a, [$df00]
    push af
    ld a, b
    rst $20
    ld a, [hl+]
    ld c, a
    pop af
    rst $20
    ld a, c
    pop bc
    ret


Jump_000_191d:
    ld a, [$df00]
    push af
    ld a, b
    rst $20
    ld b, $00
    call Call_000_1a22
    pop af
    rst $20
    ret


Call_000_192b:
Jump_000_192b:
    ld a, [$df00]
    push af
    ld a, $04
    rst $20
    call $4000
    ld a, $01
    rst $20
    call $5fb7
    xor a
    ld [$de9b], a
    call $044a
    call Call_000_27fe
    call Call_000_22d1
    call $4f6a
    call Call_000_2d44
    pop af
    rst $20
    ret


    ld a, $01
    rst $20
    call Call_000_27fe
    call Call_000_22d1
    jp Jump_000_2d2a


Jump_000_195d:
    ld a, [$df00]
    push af
    call Call_000_197e
    call Call_000_186b
    call Call_000_20be
    ld a, $01
    rst $20
    call $4e43
    pop af
    rst $20
    ret


Call_000_1973:
Jump_000_1973:
jr_000_1973:
    ld a, b
    or a
    ret z

    push bc
    call Call_000_19ae
    pop bc
    dec b
    jr jr_000_1973

Call_000_197e:
jr_000_197e:
    ldh a, [rLY]
    cp $91
    jr nc, jr_000_197e

    ei
    xor a
    ld [$de86], a

jr_000_1989:
    halt
    ld a, [$de86]
    or a
    jr z, jr_000_1989

    ld a, [$de91]
    bit 0, a
    jr z, jr_000_199e

    ld a, [$deaf]
    and $01
    jr nz, jr_000_19ab

jr_000_199e:
    ld hl, $de88
    ld a, [hl]
    or a
    jr z, jr_000_19a8

    dec [hl]
    jr jr_000_19ab

jr_000_19a8:
    call Call_000_2db4

jr_000_19ab:
    jp Jump_000_0851


Call_000_19ae:
Jump_000_19ae:
    ldh a, [rLCDC]
    bit 7, a
    ret z

    call Call_000_0851

jr_000_19b6:
    ldh a, [rLY]
    cp $91
    jr nc, jr_000_19b6

    ei
    xor a
    ld [$de86], a

jr_000_19c1:
    halt
    ld a, [$de86]
    or a
    jr z, jr_000_19c1

    ret


jr_000_19c9:
    ei
    ldh a, [rLY]
    or a
    jr nz, jr_000_19c9

    ret


jr_000_19d0:
    ei
    ldh a, [rLY]
    cp l
    jr nz, jr_000_19d0

    ret


Jump_000_19d7:
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    ret nz

    inc d
    ret


Call_000_19e1:
    ld a, $83
    ld [$de87], a
    ld b, a
    ldh a, [rLCDC]
    and $80
    jr z, jr_000_19f7

jr_000_19ed:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_19ed

    cp $97
    jr nc, jr_000_19ed

jr_000_19f7:
    ld a, b
    ldh [rLCDC], a
    ret


    ret


Jump_000_19fc:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]

Jump_000_1a00:
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a

Jump_000_1a08:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a

Jump_000_1a0e:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


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
    ret


Call_000_1a22:
Jump_000_1a22:
    push af

jr_000_1a23:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1a23

    pop af
    ret


Call_000_1a2d:
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
    ret


Call_000_1a5e:
Jump_000_1a5e:
    ld [hl], a
    ld e, l
    ld d, h
    inc de
    dec bc
    ld a, b
    or c
    ret z

    jp Jump_000_1a22


Call_000_1a69:
Jump_000_1a69:
    ld hl, $0000
    ld a, $10

jr_000_1a6e:
    add hl, hl
    rl c
    rl b
    jr nc, jr_000_1a79

    add hl, de
    jr nc, jr_000_1a79

    inc bc

jr_000_1a79:
    dec a
    jr nz, jr_000_1a6e

    ret


    push bc
    ld b, a
    dec a
    ld c, $ff
    or a

jr_000_1a83:
    rr c
    jr nc, jr_000_1a8a

    rlca
    jr nc, jr_000_1a83

jr_000_1a8a:
    scf
    rl c

jr_000_1a8d:
    call Call_000_1a96
    and c
    cp b
    jr nc, jr_000_1a8d

    pop bc
    ret


Call_000_1a96:
Jump_000_1a96:
    push hl
    ld hl, $dead
    inc [hl]
    ld a, [hl]
    add $ad
    ld l, a
    ld a, $1a
    adc $00
    ld h, a
    ld a, [$deac]
    xor [hl]
    ld [$deac], a
    pop hl
    ret


    ld c, e
    sub d
    ld sp, $4a19
    dec c
    xor c
    ld [hl], h
    ret nc

    ld b, e
    rrca
    adc l
    sbc c
    add d
    inc b
    dec sp
    sub [hl]
    sub l
    ld a, c
    ld a, [hl+]
    rl e
    ld [hl-], a
    db $dd
    push bc
    ld [hl], e
    sbc e
    or h
    dec de
    adc a
    call z, Call_000_2df4
    ld b, a
    ld l, c
    rst $30
    inc [hl]
    ld a, a
    ld l, [hl]
    adc h
    ld h, a
    add a
    dec e
    add hl, bc
    and l
    sbc d
    add b
    ld [$6dbb], sp
    rst $08
    reti


    call $bd9d
    inc l
    ld a, e
    and $d6
    jp nz, $f9e4

    push hl
    inc a
    daa
    ld d, l
    dec bc
    ld b, l
    add c
    or l
    ld l, h
    jp hl


    jr z, jr_000_1b55

    ldh a, [c]
    sub h
    ld c, [hl]
    ccf
    add hl, sp
    halt
    ld b, c
    ld a, d
    ld [hl], c
    rst $00
    adc $20
    call nc, Call_000_0246
    add $7d
    pop af
    ld hl, $a8e3
    ld a, $98
    ld d, h
    db $d3
    ld a, [hl]
    or [hl]
    ld d, d
    ld l, e
    ld [hl], d
    xor $30
    cp h
    ld h, $c8
    ret c

    db $10
    jp $de8e


    cp c
    ld c, b
    ld d, b
    ld e, d
    ld l, d
    db $ed
    ld c, $51
    ld d, e
    ld c, c
    ld [hl], $57
    or d
    ld bc, $6397
    ret nz

    cpl
    inc sp
    ei
    xor e
    or b
    adc e
    jr c, jr_000_1b4c

    dec a
    ld h, c
    dec [hl]
    ld c, a
    inc hl
    ld a, [hl-]
    ld e, h
    ld l, a
    add h
    sbc h
    ld b, $ba
    sub b
    add l
    ld hl, sp-$59
    ldh [rSCY], a
    ld c, h
    ld a, b

jr_000_1b4c:
    push af
    rlca
    ret


    adc b
    pop hl
    add sp, -$02
    sub e
    ld h, b

jr_000_1b55:
    ld h, d
    jp z, $a424

    ld [de], a
    dec hl
    cp d
    pop bc
    or e
    or a
    xor [hl]
    scf
    ld [hl], a
    db $fc
    xor l
    ld a, [de]
    ld c, l
    db $eb
    ld h, h
    ld e, a
    push de
    ld e, e
    ld a, [$a017]
    ld a, [bc]
    sbc [hl]
    cp b
    jr @-$54

    and d
    sbc a
    dec b
    add [hl]
    ld [hl+], a
    di
    ld b, b
    db $ec
    ld [hl], b
    ldh [c], a
    ld [$09dc], a
    ld a, h
    rst $10
    rst $20
    or c
    ld l, b
    jp nc, $5603

    adc c
    and [hl]
    xor a
    pop de
    call nz, $1558
    ldh a, [$fff6]
    ld b, h
    and c
    dec h
    cp a
    ld l, $ac
    adc d
    cp [hl]
    ld [hl], l
    inc c
    ld h, l
    ld h, [hl]
    rra
    rst $18
    ld e, $fd
    add hl, hl
    rst $38
    db $db
    add e
    ld d, $ef
    and e
    ld e, l
    ld e, c
    sub c
    ld de, $d51c
    ld d, a
    ldh a, [rLCDC]
    and $80
    ld a, d
    pop de
    jr nz, jr_000_1bba

    jp Jump_000_1a5e


jr_000_1bba:
    push de
    ld d, a
    ld a, b
    or a
    jr nz, jr_000_1bc5

    ld a, c
    cp $03
    jr c, jr_000_1bca

jr_000_1bc5:
    call Call_000_1bcf
    jr z, jr_000_1bcd

jr_000_1bca:
    call Call_000_1bf9

jr_000_1bcd:
    pop de
    ret


Call_000_1bcf:
jr_000_1bcf:
    ld a, b
    or a
    jr nz, jr_000_1bd7

    ld a, c
    cp $03
    ret c

jr_000_1bd7:
    ldh a, [rLY]
    cp $8e
    jr nc, jr_000_1bd7

    di

jr_000_1bde:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_1bde

jr_000_1be4:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1be4

    ld [hl], d
    inc hl
    ld [hl], d
    inc hl
    ld [hl], d
    ei
    inc hl

Call_000_1bf1:
    dec bc
    dec bc
    dec bc

Jump_000_1bf4:
    ld a, c
    or b
    jr nz, jr_000_1bcf

    ret


Call_000_1bf9:
jr_000_1bf9:
    ld a, c
    or b
    ret z

jr_000_1bfc:
    ldh a, [rLY]
    cp $8e
    jr nc, jr_000_1bfc

    di

jr_000_1c03:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_1c03

jr_000_1c09:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1c09

    ld [hl], d
    ei
    inc hl

Call_000_1c12:
    dec bc
    jr jr_000_1bf9

Call_000_1c15:
Jump_000_1c15:
    push de
    ld d, a
    ldh a, [rLCDC]
    and $80
    jr nz, jr_000_1c22

    ld [hl], d
    pop de
    ret


    push de
    ld d, a

jr_000_1c22:
    ldh a, [rLY]
    cp $8e
    jr nc, jr_000_1c22

    di

jr_000_1c29:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_1c29

jr_000_1c2f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1c2f

    ld [hl], d
    ei
    pop de
    ret


Call_000_1c39:
Jump_000_1c39:
    ldh a, [rLCDC]
    and $80
    jr nz, jr_000_1c42

    jp Jump_000_1a22


jr_000_1c42:
    ld a, b
    or a
    jr nz, jr_000_1c4b

    ld a, c
    cp $03
    jr c, jr_000_1c50

jr_000_1c4b:
    call Call_000_1c5e
    jr z, jr_000_1c5d

jr_000_1c50:
    ld a, c
    cp $02
    jr nz, jr_000_1c5a

    call Call_000_1c96
    jr jr_000_1c5d

jr_000_1c5a:
    call Call_000_1cc9

jr_000_1c5d:
    ret


Call_000_1c5e:
jr_000_1c5e:
    ld a, b
    or a
    jr nz, jr_000_1c66

    ld a, c
    cp $03
    ret c

jr_000_1c66:
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    push hl
    ld l, e
    ld h, d
    ld d, a

jr_000_1c70:
    ldh a, [rLY]
    cp $8e
    jr nc, jr_000_1c70

    di

jr_000_1c77:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_1c77

jr_000_1c7d:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1c7d

    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], d
    ei
    inc hl
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec bc
    dec bc
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1c5e

    ret


Call_000_1c96:
jr_000_1c96:
    ld a, b
    or a
    jr nz, jr_000_1c9e

    ld a, c
    cp $02
    ret c

jr_000_1c9e:
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld l, e
    ld h, d

jr_000_1ca6:
    ldh a, [rLY]
    cp $8e
    jr nc, jr_000_1ca6

    di

jr_000_1cad:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_1cad

jr_000_1cb3:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1cb3

    ld [hl], c
    inc hl
    ld [hl], b
    ei
    inc hl
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec bc
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1c96

    ret


Call_000_1cc9:
jr_000_1cc9:
    ld a, b
    or a
    jr nz, jr_000_1cd1

    ld a, c
    cp $01
    ret c

jr_000_1cd1:
    push bc
    ld c, [hl]
    inc hl
    push hl
    ld l, e
    ld h, d

jr_000_1cd7:
    ldh a, [rLY]
    cp $8e
    jr nc, jr_000_1cd7

    di

jr_000_1cde:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_1cde

jr_000_1ce4:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1ce4

    ld [hl], c
    ei
    inc hl
    ld e, l
    ld d, h
    pop hl
    pop bc
    dec bc
    ld a, b
    or c

Call_000_1cf4:
    jr nz, jr_000_1cc9

    ret


Call_000_1cf7:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


Call_000_1cff:
Jump_000_1cff:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_1d0a:
Jump_000_1d0a:
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    ret


Jump_000_1d18:
    ld a, [hl+]
    or [hl]
    ret z

    dec l
    ld a, [hl]
    sub $01
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    or [hl]
    ret


Jump_000_1d26:
    ld a, d
    ldh [$ff8a], a
    bit 7, a
    jr z, jr_000_1d36

    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    jr nz, jr_000_1d36

    inc d

jr_000_1d36:
    ldh a, [$ff8b]
    sub e
    ldh a, [$ff8c]
    sbc d
    jr nc, jr_000_1d44

    ldh a, [$ff8b]
    ld e, a
    ldh a, [$ff8c]
    ld d, a

jr_000_1d44:
    ldh a, [$ff8a]
    bit 7, a
    ret z

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc e
    ret nz

    inc d
    ret


Call_000_1d53:
    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl+], a
    ret


    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld [hl+], a
    ret


Call_000_1d61:
Jump_000_1d61:
    or a
    jr nz, jr_000_1d6a

    ld e, a
    ld d, a
    ld c, a
    ld b, a
    jr jr_000_1d82

jr_000_1d6a:
    dec a
    and $0f
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $1dcd
    add hl, bc
    push de
    call Call_000_1d8a
    pop de
    push bc
    call Call_000_1d8a
    pop de
    pop hl

jr_000_1d82:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_000_1d8a:
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld [$d871], a
    ld b, a
    bit 7, a
    jr z, jr_000_1d9e

    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_000_1d9e

    inc b

jr_000_1d9e:
    push hl
    call Call_000_1a69
    rl h
    rl c
    rl b
    rl h
    rl c
    rl b
    rl h
    rl c
    rl b
    rl h
    rl c
    rl b
    pop hl
    ld a, [$d871]
    bit 7, a
    jr z, jr_000_1dcc

    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_000_1dcc

    inc b

jr_000_1dcc:
    ret


    nop
    nop
    nop
    ldh a, [$ff1f]
    ld b, $38
    pop af
    ld d, b
    dec bc
    or b
    db $f4
    ret z

    ld c, $e1
    ld sp, hl
    nop
    stop
    nop
    ret z

    ld c, $1f
    ld b, $50
    dec bc
    ld d, b
    dec bc
    rra
    ld b, $c8

jr_000_1dec:
    ld c, $00
    nop
    nop
    db $10
    pop hl
    ld sp, hl

Call_000_1df3:
    ret z

jr_000_1df4:
    ld c, $b0
    db $f4
    ld d, b
    dec bc
    jr c, jr_000_1dec

    rra
    ld b, $00

Call_000_1dfe:
jr_000_1dfe:
    ldh a, [rP1]
    nop
    jr c, jr_000_1df4

    pop hl
    ld sp, hl
    or b
    db $f4
    or b
    db $f4
    pop hl
    ld sp, hl
    jr c, jr_000_1dfe

Jump_000_1e0d:
    ld e, a
    sub d
    ret z

Call_000_1e10:
    ld a, e
    sub d
    and $0f
    cp $08
    jr nz, jr_000_1e1b

    xor a
    inc a
    ret


jr_000_1e1b:
    ld a, $00
    inc a
    jr nc, jr_000_1e21

    inc a

jr_000_1e21:
    scf
    ret


Jump_000_1e23:
    ld a, d
    add e
    jr z, jr_000_1e2b

    cp $f0
    jr c, jr_000_1e2f

jr_000_1e2b:
    add $10
    jr jr_000_1e35

jr_000_1e2f:
    cp $11
    jr c, jr_000_1e35

    sub $10

jr_000_1e35:
    ld e, a
    ret


Jump_000_1e37:
    call Call_000_1d0a
    jp Jump_000_0332


Call_000_1e3d:
Jump_000_1e3d:
    add $61
    ld e, a
    ld a, $00
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ret


Jump_000_1e48:
jr_000_1e48:
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
    jr nc, jr_000_1e48

    ret


Jump_000_1e5f:
    xor a
    ldh [$ffa9], a
    call Call_000_1e6c
    call Call_000_1ede
    ldh a, [$ffa9]
    or a
    ret


Call_000_1e6c:
    ld hl, $ffa1
    ld a, [hl+]
    ld e, a
    or [hl]
    ret z

    ld d, [hl]
    ld a, d
    ldh [$ff8a], a
    ld hl, $ffa5
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    ldh [$ff8b], a
    adc d
    ld [hl+], a

jr_000_1e82:
    ld hl, $ffa7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff8a]
    bit 7, a
    jr nz, jr_000_1e8f

    inc hl

jr_000_1e8f:
    inc hl
    inc hl
    ldh a, [$ffa6]
    add [hl]
    ld d, a
    ld hl, $ffa7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa4]
    add [hl]
    ld e, a
    inc hl
    ldh a, [$ffa4]
    add [hl]
    ld c, a
    sub e
    ldh [$ff8c], a

jr_000_1ea7:
    ld a, d
    push de
    push bc
    call Call_000_0d96
    pop bc
    pop de
    jr c, jr_000_1ec3

    ld a, e
    add $10
    ld e, a
    ldh a, [$ff8c]
    sub $10
    ldh [$ff8c], a
    jr nc, jr_000_1ea7

    ld e, c
    ld a, d
    call Call_000_0d96
    ret nc

jr_000_1ec3:
    ldh a, [$ffa6]
    ld d, a
    ldh a, [$ff8b]
    cp d
    ret z

    ld hl, $ffa9
    set 1, [hl]
    ldh a, [$ff8a]
    bit 7, a
    jr nz, jr_000_1ed8

    dec d
    jr jr_000_1ed9

jr_000_1ed8:
    inc d

jr_000_1ed9:
    ld a, d
    ldh [$ffa6], a
    jr jr_000_1e82

Call_000_1ede:
    ld hl, $ff9f
    ld a, [hl+]
    ld e, a
    or [hl]
    ret z

    ld d, [hl]
    ld a, d
    ldh [$ff8a], a
    ld hl, $ffa3
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]

Call_000_1ef0:
    ldh [$ff8b], a
    adc d
    ld [hl+], a

jr_000_1ef4:
    ld hl, $ffa7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff8a]

Jump_000_1efc:
    bit 7, a
    jr nz, jr_000_1f01

    inc hl

jr_000_1f01:
    ldh a, [$ffa4]
    add [hl]
    ld e, a
    ld hl, $ffa7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ldh a, [$ffa6]
    add [hl]
    ld d, a
    inc hl
    ldh a, [$ffa6]
    add [hl]
    ld c, a

jr_000_1f16:
    ld a, d
    push de
    push bc
    call Call_000_0d96
    pop bc
    pop de
    jr c, jr_000_1f36

    ld a, d
    add $08
    jr nc, jr_000_1f2c

    ld l, a
    ld a, c
    cp $f8
    jr nc, jr_000_1f30

    ld a, l

jr_000_1f2c:
    ld d, a
    cp c
    jr c, jr_000_1f16

jr_000_1f30:
    ld d, c
    ld a, d
    call Call_000_0d96
    ret nc

jr_000_1f36:
    ldh a, [$ffa4]
    ld d, a
    ldh a, [$ff8b]
    cp d
    ret z

    ld hl, $ffa9
    set 0, [hl]
    ldh a, [$ff8a]
    bit 7, a
    jr nz, jr_000_1f4b

    dec d
    jr jr_000_1f4c

jr_000_1f4b:
    inc d

jr_000_1f4c:
    ld a, d
    ldh [$ffa4], a
    jr jr_000_1ef4

Call_000_1f51:
Jump_000_1f51:
    ld b, $00
    ld c, a
    ld a, d
    and $03

Call_000_1f57:
    ld e, a
    ld a, c
    and $03
    cp e
    jr z, jr_000_1f64

    jr c, jr_000_1f63

    dec a
    jr jr_000_1f64

jr_000_1f63:
    inc a

jr_000_1f64:
    or b
    ld b, a
    ld a, d
    and $0c
    ld e, a
    ld a, c
    and $0c
    cp e
    jr z, jr_000_1f78

    jr c, jr_000_1f76

    sub $04
    jr jr_000_1f78

jr_000_1f76:
    add $04

jr_000_1f78:
    or b
    ld b, a
    ld a, d
    and $30
    ld e, a
    ld a, c
    and $30
    cp e
    jr z, jr_000_1f8c

    jr c, jr_000_1f8a

    sub $10
    jr jr_000_1f8c

jr_000_1f8a:
    add $10

jr_000_1f8c:
    or b
    ld b, a
    ld a, d
    and $c0
    ld e, a
    ld a, c
    and $c0
    cp e
    jr z, jr_000_1fa0

    jr c, jr_000_1f9e

    sub $40
    jr jr_000_1fa0

jr_000_1f9e:
    add $40

jr_000_1fa0:
    or b
    cp d
    jr z, jr_000_1fa6

    or a
    ret


jr_000_1fa6:
    scf
    ret


Call_000_1fa8:
    push hl
    call Call_000_20b2
    ld a, $0c
    rst $20
    call $4000
    pop hl
    ld a, [hl+]
    rst $20
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_1fbb:
    ld a, [hl+]
    or a
    jr z, jr_000_1fe4

    push hl
    swap a
    ld c, a
    and $0f
    ld b, a
    ld a, c
    and $f0
    ld c, a
    ld a, [hl+]
    swap a
    ld e, a
    and $0f
    add $90
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_000_1fda:
    call Call_000_1c39
    pop hl
    ld de, $0003
    add hl, de
    jr jr_000_1fbb

jr_000_1fe4:
    ld a, $01
    rst $20
    ret


Call_000_1fe8:
Jump_000_1fe8:
    or a
    ret z

    ld b, a
    ld a, [$df00]
    push af
    push de
    ld a, b
    call Call_000_2010
    ld a, [hl+]
    or a
    jr nz, jr_000_1ffb

    pop de
    jr jr_000_200d

jr_000_1ffb:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    ld l, e
    ld h, d
    pop de
    call Call_000_1c39

jr_000_200d:
    pop af
    rst $20
    ret


Call_000_2010:
    cp $92
    ret nc

    ld hl, $421f
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld a, $01
    rst $20
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    rst $20
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_202a:
Jump_000_202a:
    or a
    ret z

    ld b, a
    ld c, $0c

Call_000_202f:
    ld hl, $c3c6

jr_000_2032:
    ld a, b
    cp [hl]
    jr z, jr_000_2041

    ld a, [hl]
    or a
    jr z, jr_000_2045

    inc hl
    inc hl
    dec c
    jr nz, jr_000_2032

    scf
    ret


jr_000_2041:
    inc hl
    ld a, [hl]
    or a
    ret


jr_000_2045:
    ld a, [$df00]
    push af
    ld a, b
    ld [hl], b
    inc hl
    ld a, [$c3b4]
    ld [hl], a
    ldh [$ff8a], a
    ld a, b
    call Call_000_2010

Call_000_2056:
    ld a, [hl+]
    or a
    jr z, jr_000_206e

    ld c, a
    ld a, [$c3b4]
    ld b, a
    add c
    jr z, jr_000_2068

    jr nc, jr_000_2068

    pop af
    rst $20
    scf
    ret


jr_000_2068:
    ld [$c3b4], a
    call Call_000_2074

jr_000_206e:
    pop af
    rst $20
    ldh a, [$ff8a]
    or a
    ret


Call_000_2074:
    push hl

Jump_000_2075:
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
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    swap a
    ld c, a
    and $0f
    ld b, a
    ld a, c
    and $f0
    ld c, a
    jp Jump_000_1c39


Jump_000_2094:
    call Call_000_192b
    call Call_000_2d2d
    ld a, $1b
    rst $20
    call $401c
    ld a, $01
    rst $20
    ld a, $0f
    ld [$df0a], a
    ld a, [$df0e]
    dec a
    ld [$de8a], a
    jp Jump_000_0bcc


Call_000_20b2:
Jump_000_20b2:
    ld hl, $00c0
    ld de, $9000
    ld bc, $0040
    jp Jump_000_1c39


Call_000_20be:
    ld a, [$def5]
    or a
    jr z, jr_000_20c9

    dec a
    ld [$def5], a
    ret


jr_000_20c9:
    ld hl, $df08
    res 0, [hl]
    xor a
    ld [$d3ea], a
    ld a, [$d76d]
    bit 0, a
    jr z, jr_000_20e4

    xor a
    ld [$c3f1], a
    ld [$c2f8], a
    dec a
    ld [$c2f6], a

jr_000_20e4:
    ld a, [$c398]
    or a
    ret z

    ld b, a
    ld a, [$df08]
    ld e, a
    bit 7, a
    jr nz, jr_000_20f9

    ld a, [$df09]
    cp $02
    jr nz, jr_000_20fb

jr_000_20f9:
    set 0, e

jr_000_20fb:
    ld a, e
    ld [$df08], a

Jump_000_20ff:
    xor a
    ld [$c3e4], a

Jump_000_2103:
    ld hl, $c3e4
    ld a, [hl]
    ld l, $98
    cp [hl]
    ret nc

    add $80
    ld l, a
    ld a, [hl]
    cp $ff
    ret z

    ld l, $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld de, $c600
    add hl, de

Jump_000_2121:
    ld b, $01
    call Call_000_256f
    ld c, l
    ld a, $d1
    ld [$d3eb], a
    ld a, b
    or a
    jr z, jr_000_2163

    ld a, $18

Jump_000_2132:
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_000_21fe

    ld a, $13
    add c
    ld l, a
    ld a, [hl]
    res 2, [hl]
    ld l, c
    xor a

Call_000_2142:
    ld [$c3e9], a
    ld b, $02
    call Call_000_256f
    ld a, $01
    rst $20
    ld c, l
    ld a, [$c3e9]
    or a
    jp nz, Jump_000_21fe

    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    ld [$d3eb], a
    inc l
    ld a, [hl+]
    ld [$d3ec], a
    ld l, c

jr_000_2163:
    ld e, l
    ld d, h
    ld hl, $c3e4
    ld a, [hl]
    add $80
    ld b, a
    ld l, $98
    dec [hl]
    ld a, [hl]
    add $80

Jump_000_2172:
    ld l, a
    ld c, [hl]
    push hl
    ld l, b
    ld b, [hl]
    ld [hl], c
    pop hl
    ld [hl], $ff
    call Call_000_2458
    ld c, e
    ld h, d
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    call Call_000_30f7
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    cp $ff
    jr z, jr_000_21b4

    ld a, $11
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $ff
    inc de
    ld [de], a
    ld a, $14
    add c
    ld l, a
    bit 0, [hl]
    jr z, jr_000_21b4

    push hl
    ld hl, $0005
    add hl, de
    set 0, [hl]
    pop hl

jr_000_21b4:
    ld a, [$d3eb]
    cp $d1
    jr z, jr_000_21fc

    ld a, $19
    add c
    ld l, a
    bit 4, [hl]

Jump_000_21c1:
    jr z, jr_000_21d0

    ld a, [$d3eb]
    ld e, a
    ld a, [$d3ec]
    ld d, a
    call Call_000_2b89
    jr jr_000_21fc

jr_000_21d0:
    ld a, $13
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_000_21e4

    ld l, c
    push hl
    call $5122
    pop hl
    ld c, l
    call Call_000_2205
    jr jr_000_21fc

Jump_000_21e4:
jr_000_21e4:
    ld a, $19
    add c
    ld l, a
    ld a, [hl]
    bit 2, a
    push af
    call z, $4e2b
    pop af
    bit 6, a
    jr nz, jr_000_21fc

    ld hl, $cc9d
    bit 0, [hl]
    call z, $465b

jr_000_21fc:
    jr jr_000_2202

Jump_000_21fe:
    ld hl, $c3e4
    inc [hl]

Jump_000_2202:
jr_000_2202:
    jp Jump_000_2103


Call_000_2205:
    rst $08
    nop
    rst $08
    ld d, $fa
    xor a
    sbc $e6
    di
    ld [$deaf], a
    xor a

Jump_000_2212:
    ld [$dd01], a
    inc a
    ld [$cc49], a
    ld [$ccc2], a
    ld a, $07
    add c
    ld l, a
    ld a, [hl]
    ld [$de43], a
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    ld a, [$d722]
    cp e
    ld a, $00
    jr nc, jr_000_2236

    inc a

jr_000_2236:
    ld [$d703], a
    xor a
    ld [$d756], a
    ld b, $0c
    call $4f9d

Call_000_2242:
Jump_000_2242:
    ld a, $96

Call_000_2244:
    ld [$ded7], a
    ld a, [$de2e]
    ld b, a
    bit 0, b
    jr nz, jr_000_225a

    ld a, $01
    ld [$d74a], a
    ld [$de29], a
    ld [$d76e], a

jr_000_225a:
    bit 1, b
    call nz, Call_000_228c
    ld a, [$de2e]
    and $08
    call z, Call_000_2268
    ret


Call_000_2268:
    ld a, [$de2e]
    bit 2, a
    ld a, $01
    jr z, jr_000_2272

    inc a

jr_000_2272:
    ld [$de30], a
    ld a, $02
    ld [$d772], a
    ld a, $10
    ld [$d771], a
    ld a, $3c
    ld [$decc], a
    ld a, $00
    ld [$decd], a
    jp $0446


Call_000_228c:
    ld a, $fe
    ld [$d4b0], a
    ld a, $40
    ld [$d4b7], a
    ld a, $80
    ld [$d4b1], a
    ld a, $fa
    ld [$d4b2], a
    ld a, [$d3eb]
    cp $18
    jr nc, jr_000_22ab

    ld a, $18
    jr jr_000_22b1

jr_000_22ab:
    cp $88
    jr c, jr_000_22b1

    ld a, $88

jr_000_22b1:
    ld [$d3eb], a
    ld b, $02
    jp $469c


    nop
    inc b
    ld [$100c], sp
    inc d
    ld bc, $0302
    dec b
    ld b, $07
    add hl, bc
    ld a, [bc]
    dec bc
    dec c
    ld c, $0f
    ld de, $1312
    dec d
    ld d, $17

Call_000_22d1:
    ld a, $8d
    ld [$c3b5], a

Call_000_22d6:
    ld a, l
    ld [$cc4c], a
    ld a, h
    ld [$cc4d], a
    ld a, [$c3b5]
    ld [$c3b4], a

Jump_000_22e4:
    xor a
    ld [$c398], a
    call Call_000_23dd
    ret


Call_000_22ec:
    call Call_000_15ae
    ld a, $00
    ld [$c3c0], a
    ld a, $c4
    ld [$c3c1], a
    ld hl, $cc4c
    ld a, [hl+]
    ld h, [hl]

Jump_000_22fe:
    ld l, a
    call Call_000_2345
    ld hl, $c400

Call_000_2305:
    ld c, $00
    ld a, [$d7c8]
    cp $f0
    jr nc, jr_000_2324

    ld d, a
    ld a, [$c3b3]
    ld b, a

jr_000_2313:
    ld a, [hl]
    cp d
    jr nc, jr_000_2324

    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp b
    jr c, jr_000_2313

jr_000_2324:
    ld a, c
    ld [$d7cb], a
    cp b
    jr nc, jr_000_2341

    ld a, [$d7c9]
    ld d, a

jr_000_232f:
    ld a, [hl]
    cp d
    jr nc, jr_000_2340

    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp b
    jr c, jr_000_232f

jr_000_2340:
    ld a, c

jr_000_2341:
    ld [$d7cc], a
    ret


Call_000_2345:
    xor a
    ld [$c3b3], a
    push hl
    ld a, $01
    rst $20
    call $70a6
    ld a, [$df01]
    rst $20
    pop hl
    ret c

Jump_000_2356:
    ld a, [hl+]
    or a
    ret z

    cp $54
    ret nc

    ld [$c3b7], a
    push hl
    call Call_000_247e
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_000_202a
    ld [$c3b6], a
    pop hl
    jp c, Jump_000_2a41

    ld a, [$df01]
    rst $20
    ld a, [hl+]
    ld b, a
    ld [$c3c2], a
    ld a, [hl+]
    ld [$c3c3], a
    ld a, [hl+]
    ld [$c3c4], a
    push hl
    ld c, $00
    ld hl, $d7c8
    ld a, b
    cp [hl]
    jr c, jr_000_2392

    inc hl
    cp [hl]
    jr nc, jr_000_2392

    ld c, $81

jr_000_2392:
    ld a, c
    ldh [$ff8a], a
    ld hl, $c3c0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c3c2]
    ld [hl+], a
    ldh a, [$ff8a]
    ld [hl], a
    inc hl
    ld [hl], $ff
    inc hl
    ld a, [$c3b6]
    ld [hl+], a
    ld a, [$c3c3]
    ld [hl+], a
    ld a, [$c3b7]
    ld [hl+], a
    ld a, [$c3c4]
    ld [hl+], a
    inc hl
    ld a, l
    ld [$c3c0], a
    ld a, h
    ld [$c3c1], a
    ld a, [$c3b7]
    call Call_000_2469
    ld hl, $c600
    ld c, l
    ld b, $04
    call Call_000_0332
    ld a, [$df01]
    rst $20
    pop hl
    ld a, [$c3b3]
    inc a
    ld [$c3b3], a
    jp Jump_000_2356


Call_000_23dd:
Jump_000_23dd:
    ld hl, $22b9
    ld de, $c3ac

Jump_000_23e3:
    ld bc, $0006
    call Call_000_1a22
    ld a, $ac
    ld [$c3b2], a
    ld hl, $22bf
    ld de, $c399
    ld bc, $0012
    call Call_000_1a22
    ld a, $99
    ld [$c3ab], a
    ret


Jump_000_2400:
    call Call_000_243d
    jr jr_000_2408

Jump_000_2405:
    call Call_000_241c

jr_000_2408:
    jr c, jr_000_2418

    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c600
    add hl, de
    ret


jr_000_2418:
    ld hl, $cc00
    ret


Call_000_241c:
jr_000_241c:
    ld a, [$c3b2]
    cp $b2
    jr nc, jr_000_242d

    ld l, a
    ld h, $c3
    ld b, [hl]
    inc a
    ld [$c3b2], a
    or a
    ret


jr_000_242d:
    ld b, $00
    scf
    ret


jr_000_2431:
    ld a, [$c3b2]
    dec a
    ld l, a
    ld h, $c3

Call_000_2438:
    ld [hl], b
    ld [$c3b2], a
    ret


Call_000_243d:
Jump_000_243d:
    ld a, [$c3ab]
    cp $ab
    jr nc, jr_000_241c

    ld l, a
    ld h, $c3
    ld b, [hl]
    inc a
    ld [$c3ab], a
    or a
    ret


Jump_000_244e:
    ld a, h
    sub $c6
    rl l
    adc a
    rl l
    adc a
    ld b, a

Call_000_2458:
Jump_000_2458:
    ld a, b
    and $03
    jr z, jr_000_2431

    ld a, [$c3ab]
    dec a
    ld l, a
    ld h, $c3
    ld [hl], b
    ld [$c3ab], a
    ret


Call_000_2469:
    call Call_000_247e
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    rst $20
    inc de
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $fff8
    add hl, de
    ret


Call_000_247e:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $40d2
    add hl, de
    ld a, $01
    rst $20
    ret


Call_000_248b:
    push af
    inc hl
    ld a, l
    ld [$cc11], a
    ld a, h
    ld [$cc12], a
    dec hl
    ld de, $cc02
    ld bc, $0008
    call Call_000_1a22
    pop af
    ld [$cc04], a
    ld hl, $c398
    ld a, [hl]
    cp $18

jr_000_24a9:
    jr nc, jr_000_24a9

    ld a, [$cc07]
    cp $54
    ret nc

    call Call_000_243d
    ld hl, $c398
    inc [hl]
    ld a, [hl]
    add $7f
    ld l, a
    ld [hl], b
    ld a, b
    ld [$c3e0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c600
    add hl, de
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    xor a
    ld [$cc09], a
    ld a, [$cc02]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl

Jump_000_24e2:
    add hl, hl

Call_000_24e3:
    add hl, hl
    ld a, l
    ld [$cc0a], a
    ld a, h
    ld [$cc0b], a
    ld a, [$cc06]
    and $f0
    ld [$cc0f], a
    ld a, [$cc07]
    call Call_000_2469
    ld a, e
    ld [$cc00], a
    ld a, d
    ld [$cc01], a
    ld a, b
    ld [$cc1b], a
    ld a, [hl+]
    ld [$cc1c], a
    ld a, $40
    ld [$cc10], a
    xor a
    ld [$cc14], a
    ld [$cc17], a
    ld e, [hl]
    inc hl
    ld b, [hl]
    ld d, $00
    bit 7, e
    jr z, jr_000_2520

    dec d

jr_000_2520:
    push hl
    ld hl, $cc0a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld hl, $cc0f
    ld a, [hl]
    add b
    ld [hl], a
    pop hl
    inc hl
    ld a, [hl+]
    ld [$cc18], a
    ld a, [hl+]
    ld [$cc1a], a
    ld a, [hl+]
    ld [$cc13], a
    ld a, [hl+]
    ld [$cc03], a
    ld a, [hl+]
    ld [$cc19], a
    ld hl, $cc00
    ld a, [$cc40]
    ld e, a
    ld a, [$cc41]
    ld d, a
    ld bc, $001d
    call Call_000_1a22
    ld h, d
    ld l, e
    xor a
    ld bc, $000d
    call Call_000_1a5e
    ld hl, $cc40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    call Call_000_256f
    ld a, [$c3e0]
    ret


Call_000_256f:
    ld a, b
    ld [$c3ec], a
    ld a, l
    ld [$cc40], a
    ld a, h
    ld [$cc41], a
    ld c, l
    ld a, $11
    add c
    ld l, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    ld [$cc44], a
    call Call_000_2648
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ld [$c3e8], a
    ld a, $07
    add c
    ld l, a
    ld a, [hl]
    ld [$cc4a], a
    ld a, $1b
    add c
    ld l, a
    ld a, [hl]
    rst $20
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    call Call_000_2646
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a
    ld a, $07
    add c
    ld l, a
    ld a, [hl]
    ld [$cc4a], a
    ld a, [$c3ec]
    dec a
    jr nz, jr_000_2618

    ld a, b
    or a
    jr z, jr_000_2618

    ld a, [$cc48]
    or a
    jr z, jr_000_2618

    ld a, $13
    add c
    ld l, a
    bit 2, [hl]
    jr z, jr_000_25f7

    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    cp $40
    jr c, jr_000_25e8

    push hl
    push bc
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    and $3f
    call Call_000_30c1
    pop bc
    pop hl
    ld [hl], a

jr_000_25e8:
    push bc
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld b, a
    call Call_000_2808
    pop bc
    jr jr_000_262a

jr_000_25f7:
    ld a, $14
    add c
    ld l, a
    bit 1, [hl]
    jr z, jr_000_2618

Jump_000_25ff:
    ld a, $13
    add c
    ld l, a
    bit 7, [hl]
    jr z, jr_000_260b

Jump_000_2607:
    and $03
    jr z, jr_000_2618

jr_000_260b:
    push bc
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld b, a
    call Call_000_2808
    pop bc

jr_000_2618:
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    cp $40
    jr nc, jr_000_262a

    ld [hl], $40
    push hl
    push bc
    call Call_000_30f7
    pop bc
    pop hl

jr_000_262a:
    ld a, [$cc40]
    ld c, a
    ld a, [$cc41]
    ld h, a

Call_000_2632:
    add $f4
    ld l, a
    ld a, [hl]
    inc a
    jr z, jr_000_2641

    ld a, [$cc44]
    or a
    jr nz, jr_000_2641

    ld b, $00

jr_000_2641:
    ld l, c
    ld a, $01
    rst $20
    ret


Call_000_2646:
    push de
    ret


Call_000_2648:
    ld a, [$d711]
    ld e, a
    ld a, [$d712]
    ld d, a
    ld a, $0a
    add c
    ld l, a
    ld a, [hl+]
    sub e
    ld e, a
    ld a, [hl+]
    sbc d
    jr nz, jr_000_2662

    ld a, e
    cp $c0
    jr nc, jr_000_267a

    jr jr_000_266a

jr_000_2662:
    inc a
    jr nz, jr_000_267a

    ld a, e
    cp $e0
    jr c, jr_000_267a

jr_000_266a:
    ld a, $0d
    add c
    ld l, a
    ld [hl], e
    ld a, e
    ld [$c3e7], a
    ld a, $01
    ld [$cc48], a
    xor a
    ret


jr_000_267a:
    ld a, $0d
    add c
    ld l, a
    ld [hl], e
    ld a, e
    ld [$c3e7], a
    xor a
    ld [$cc48], a
    scf
    ret


Call_000_2689:
    ld a, [$c3b3]
    or a
    ret z

    ld b, a
    ld a, [$d7c8]
    sub $01
    jr nc, jr_000_2697

    xor a

jr_000_2697:
    ld [$d82e], a
    ld a, [$d7c9]
    add $01
    ld [$d82f], a
    ld hl, $c407
    ld de, $0008

jr_000_26a8:
    bit 0, [hl]
    jr z, jr_000_26c4

    push de
    push hl
    ld de, $fff9
    add hl, de
    ld a, [hl]
    ld hl, $d82e
    cp [hl]
    jr c, jr_000_26bd

    inc hl
    cp [hl]
    jr c, jr_000_26c2

jr_000_26bd:
    pop hl
    res 0, [hl]
    jr jr_000_26c3

jr_000_26c2:
    pop hl

jr_000_26c3:
    pop de

jr_000_26c4:
    add hl, de
    dec b
    jr nz, jr_000_26a8

    ld a, [$c3b3]
    ld b, a
    ld hl, $d7ca
    ld a, [$d7c7]
    cp [hl]
    jp z, Jump_000_27b1

    ld [hl], a
    jr c, jr_000_273c

    ld a, [$d7cb]
    cp b
    jr nc, jr_000_2706

    ld c, a
    ld l, a
    ld h, $00

Jump_000_26e3:
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c400
    add hl, de

Jump_000_26ea:
    ld a, [$d7c8]
    ld e, a

jr_000_26ee:
    ld a, [hl]
    cp e
    jr nc, jr_000_2702

    inc hl
    ld [hl], $00
    ld a, l
    add $07
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp b
    jr c, jr_000_26ee

jr_000_2702:
    ld a, c
    ld [$d7cb], a

jr_000_2706:
    ld a, [$d7cc]
    cp b
    jr nc, jr_000_273a

    ld c, a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c400
    add hl, de
    ld a, [$d7c9]
    ld e, a

jr_000_271b:
    ld a, [hl]
    cp e
    jr nc, jr_000_2736

    inc hl
    ld a, [hl]
    or a
    ld a, $01
    jr nz, jr_000_2728

    ld a, $81

jr_000_2728:
    ld [hl], a
    ld a, l
    add $07
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp b
    jr c, jr_000_271b

jr_000_2736:
    ld a, c
    ld [$d7cc], a

jr_000_273a:
    jr jr_000_27b1

jr_000_273c:
    ld a, [$d7cb]
    or a
    jr z, jr_000_277a

    ld c, a

Call_000_2743:
    ld l, a

Jump_000_2744:
    ld h, $00

Call_000_2746:
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c400
    add hl, de
    ld a, [$d7c8]
    ld e, a
    ld a, c
    cp b
    jr c, jr_000_275a

    ld a, l
    sub $08
    jr jr_000_276b

jr_000_275a:
    ld a, [hl]
    cp e
    jr c, jr_000_2775

    inc hl
    ld a, [hl]
    or a
    ld a, $01
    jr nz, jr_000_2767

    ld a, $81

jr_000_2767:
    ld [hl], a

Call_000_2768:
    ld a, l
    sub $09

jr_000_276b:
    ld l, a
    ld a, h
    sbc $00
    ld h, a

Call_000_2770:
    dec c
    bit 7, c
    jr z, jr_000_275a

jr_000_2775:
    inc c
    ld a, c
    ld [$d7cb], a

jr_000_277a:
    ld a, [$d7cc]
    or a
    jr z, jr_000_27b1

    ld c, a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c400
    add hl, de
    ld a, [$d7c9]
    ld e, a
    ld a, c
    cp b
    jr c, jr_000_2798

    ld a, l
    sub $08
    jr jr_000_27a2

jr_000_2798:
    ld a, [hl]
    cp e
    jr c, jr_000_27ac

    inc hl
    ld [hl], $00
    ld a, l
    sub $09

jr_000_27a2:
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec c
    bit 7, c
    jr z, jr_000_2798

jr_000_27ac:
    inc c
    ld a, c
    ld [$d7cc], a

Jump_000_27b1:
jr_000_27b1:
    ld a, [$d7cb]
    ld c, a
    ld a, [$d7cc]
    ld b, a
    cp c
    jr z, jr_000_27fd

    ld l, c
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c400
    add hl, de

jr_000_27c6:
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld [hl], $01
    inc hl
    ld e, a
    bit 7, e
    jr z, jr_000_27f0

    ld a, [hl]
    cp $ff
    jr nz, jr_000_27f0

    push hl
    ld de, $0005
    add hl, de
    bit 0, [hl]
    pop hl
    jr nz, jr_000_27f0

    push hl
    push bc
    dec hl
    dec hl
    ld a, c
    call Call_000_248b
    pop bc
    pop hl
    ld [hl], a
    ld d, h
    ld a, l
    add $04
    ld e, a

jr_000_27f0:
    ld a, l
    add $06
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp b
    jr c, jr_000_27c6

jr_000_27fd:
    ret


Call_000_27fe:
    ld hl, $c380
    ld bc, $0a64
    xor a
    jp Jump_000_1a5e


Call_000_2808:
Jump_000_2808:
    ld h, b
    ld a, $15
    add c
    ld l, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    ret z

    push bc
    inc l
    ld a, [hl]
    add a
    add e
    ld l, a
    ld a, d
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$ce53], a
    ld a, [hl]
    ld [$ce54], a
    ld h, b
    ld a, $13
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffa9], a
    ld a, $18
    add c
    ld l, a
    ld a, [hl+]
    ld [$cc46], a

Call_000_2834:
    ld a, [hl]
    ld [$cc47], a
    ld a, $0d
    add c
    ld l, a

Call_000_283c:
    ld a, [hl+]
    ldh [$ffa4], a
    ldh [$ff9b], a
    inc l
    ld a, [hl]
    ldh [$ffa6], a
    ldh [$ff9c], a
    ld e, $00
    ld a, $03
    add c
    ld l, a
    bit 6, [hl]
    jr z, jr_000_285a

    add $21
    ld l, a
    bit 0, [hl]
    jr z, jr_000_285a

    ld e, $20

jr_000_285a:
    ld a, e
    ld [$d3ea], a
    ld a, [$deaf]
    and $b2
    jp nz, Jump_000_292e

    ldh a, [$ffa9]
    bit 7, a
    jr z, jr_000_2871

    and $03
    jp z, Jump_000_292e

jr_000_2871:
    ldh a, [$ffa4]
    ld e, a
    ldh a, [$ffa6]
    ld d, a
    call Call_000_129b
    ld a, [$ccc2]
    or a
    jp nz, Jump_000_292e

    ldh a, [$ffa9]
    bit 0, a
    jp z, Jump_000_28af

    ld a, [$d76d]
    bit 0, a
    jp nz, Jump_000_28af

    ld a, [$df08]
    and $61
    jp nz, Jump_000_28af

    ld hl, $d739
    ld a, [hl+]
    or [hl]
    jr nz, jr_000_28af

    ld a, [$c2f7]
    or a
    jr nz, jr_000_28af

    call Call_000_1326
    jr nc, jr_000_28af

    pop bc
    call Call_000_2a00
    push bc

Jump_000_28af:
jr_000_28af:
    ld a, [$d76d]
    bit 0, a
    jp z, Jump_000_292e

    ldh a, [$ffa9]
    bit 7, a
    jr z, jr_000_28c0

    jp Jump_000_292e


jr_000_28c0:
    ld a, [$c2f7]
    or a
    jr z, jr_000_28d1

    ld b, $01
    call $045e
    ld a, b
    or a
    ld a, $14
    jr z, jr_000_28f1

jr_000_28d1:
    ld a, [$de90]
    or a
    jp nz, Jump_000_292e

    call Call_000_1352
    ldh a, [$ff8a]
    ld c, a
    ldh a, [$ff8b]
    ld e, a
    ldh a, [$ff8c]
    ld b, a
    ldh a, [$ff8d]
    ld d, a
    call Call_000_11ab
    push af
    call Call_000_1353
    pop af
    jr z, jr_000_292e

jr_000_28f1:
    pop bc
    push bc
    ld h, b
    ld d, a
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_000_292e

    call Call_000_1404
    pop bc
    ld h, b
    ld a, d
    or a
    jr z, jr_000_292d

    ld a, $18
    add c
    ld l, a
    ld a, [hl]
    sub d
    jr nc, jr_000_2910

    xor a

jr_000_2910:
    ld [hl], a
    jr z, jr_000_292f

    ld a, [$c238]
    or a
    jr z, jr_000_292d

    rst $08
    dec d
    ld a, $03
    add c
    ld l, a
    ld e, [hl]
    add $1e
    ld l, a
    ld a, [$c2d0]
    or a
    jr nz, jr_000_292c

    ld a, e
    and $1f

jr_000_292c:
    ld [hl], a

jr_000_292d:
    push bc

Jump_000_292e:
jr_000_292e:
    pop bc

jr_000_292f:
    push bc
    ld a, [$cc50]
    or a
    jr z, jr_000_2940

    ld d, a
    ldh a, [$ff9b]
    add d
    ldh [$ff9b], a
    xor a
    ld [$cc50], a

jr_000_2940:
    ld h, b
    ld a, $14
    add c
    ld l, a
    ld d, [hl]
    ld a, $21
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_000_2956

    ld a, [$deaf]
    and $b3
    jr nz, jr_000_2956

    dec [hl]

jr_000_2956:
    ldh a, [$ffa9]
    bit 2, a
    jp z, Jump_000_29d1

    ld e, a
    bit 2, d
    jr nz, jr_000_2970

    ld a, [hl]
    or a
    jr z, jr_000_2970

    swap a
    srl a
    and $10
    xor $10
    jr jr_000_2977

jr_000_2970:
    ld a, $10
    bit 3, e
    jr z, jr_000_2977

    xor a

jr_000_2977:
    bit 4, e
    jr z, jr_000_297d

    set 7, a

jr_000_297d:
    ldh [$ffab], a
    xor a
    bit 5, e
    jr z, jr_000_2986

    ld a, $01

jr_000_2986:
    ld [$ce56], a
    ld a, [$cc47]
    bit 7, a
    jr nz, jr_000_29ae

    ld a, [$de74]
    or a
    jr z, jr_000_29ae

    ld a, $0a
    add c
    ld l, a
    ld a, [hl+]
    ldh [$ff8a], a
    ld a, [hl]
    ldh [$ff8b], a
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff8c], a
    ld l, c
    push hl
    call Call_000_3b4c
    pop hl
    ld c, l

jr_000_29ae:
    ld a, $05
    add c
    ld l, a
    ld a, [hl]
    ldh [$ffac], a
    ld a, $10
    add c
    ld l, a
    ld e, [hl]
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    and $c0
    jr nz, jr_000_29d4

    ld hl, $ce53
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, e
    call Call_000_2de8

Jump_000_29d1:
    pop bc
    ld h, b
    ret


jr_000_29d4:
    ld d, a
    ldh a, [$ffab]
    xor $10
    ldh [$ffab], a
    ld a, [$ce53]
    ld c, a
    ld a, [$ce54]
    ld b, a
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    cp $80
    ld a, e
    jr nz, jr_000_29f3

    call Call_000_31b9
    pop bc
    ld h, b
    ret


jr_000_29f3:
    call Call_000_31f8
    pop bc
    ld h, b
    ret


Call_000_29f9:
    push bc
    ld a, $0a
    add c
    ld l, a
    jr jr_000_2a06

Call_000_2a00:
    push bc
    ld h, b
    ld a, $1a
    add c
    ld l, a

jr_000_2a06:
    call Call_000_2a0b
    pop bc
    ret


Call_000_2a0b:
    ld d, [hl]
    set 7, [hl]

Jump_000_2a0e:
    ld a, d
    and $1f
    ret z

    ld a, [$d77a]
    or a
    ret nz

    ld a, [$d739]
    add d
    ld [$d739], a
    ld a, [$d163]
    or a
    jr z, jr_000_2a2d

    xor a
    ld [$d756], a
    ld de, $0000
    jr jr_000_2a39

jr_000_2a2d:
    ld a, [$d722]
    cp e
    ld de, $0030
    jr nc, jr_000_2a39

    ld de, $ffd0

jr_000_2a39:
    ld hl, $d735
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


Jump_000_2a41:
jr_000_2a41:
    jr jr_000_2a41

jr_000_2a43:
    jr jr_000_2a43

Jump_000_2a45:
    bit 7, e
    ld d, $00
    jr z, jr_000_2a4c

    dec d

jr_000_2a4c:
    ld a, $0a
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ret


Jump_000_2a57:
    ld a, $0f
    add c
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    ret


Jump_000_2a5f:
    push af
    ld l, c
    push hl
    ld a, $10
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $40
    call Call_000_30f7
    pop hl
    ld c, l
    ld a, $1c
    add c
    ld l, a
    ld a, [hl]
    and $c0
    ld b, a
    pop af
    or b
    ld [hl], a
    ret


Jump_000_2a7a:
    ld a, $15
    add c
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    add $10
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_000_2a88:
    res 0, a
    ld e, a
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    add e
    ld e, a
    ld a, $17

Jump_000_2a94:
    add c
    ld l, a
    ld [hl], e
    ret


Jump_000_2a98:
    ld a, e
    ldh [$ff8a], a
    ld a, d
    ldh [$ff8b], a
    ld a, $00
    ld [$cc42], a
    ld a, $cc
    ld [$cc43], a
    ld a, b
    ldh [$ff8c], a
    ld hl, $c398
    ld a, [hl]
    cp $18
    jr c, jr_000_2abd

jr_000_2ab3:
    ld a, [$cc42]
    ld c, a
    ld a, [$cc43]
    ld h, a
    scf
    ret


jr_000_2abd:
    call Call_000_243d
    jr c, jr_000_2ab3

    ld hl, $c398
    inc [hl]
    ld a, [hl]
    add $7f
    ld l, a
    ld [hl], b
    ld a, b
    ld l, $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld de, $c600
    add hl, de
    ld a, l
    ld [$cc42], a
    ld a, h
    ld [$cc43], a
    ld c, l
    ld a, $07
    add c
    ld l, a
    ld [hl], $80
    add $1a
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    ld [hl], $00
    add $f4
    ld l, a
    ld [hl], $40
    add $f4
    ld l, a
    ld [hl], $ff
    add $10
    ld l, a
    ld [hl], $00
    add $f9
    ld l, a
    ldh a, [$ff8a]
    ld [hl+], a
    inc l
    ldh a, [$ff8b]
    ld [hl+], a
    ld a, $08
    add c
    ld l, a
    ldh a, [$ff8c]
    ld [hl], a
    ld a, $22
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    call $2d0e
    or a
    ret


Jump_000_2b20:
    ld a, $24
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_000_2b2a

    inc de
    inc de

Jump_000_2b2a:
jr_000_2b2a:
    ld a, $0d
    add c
    ld l, a
    ld a, [de]
    add [hl]
    ld b, a
    inc de
    inc l
    inc l
    ld a, [de]
    add [hl]

Call_000_2b36:
    ld d, a
    ld e, b
    ret


Jump_000_2b39:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    inc l
    ld a, [hl]
    add d
    ld d, a
    ret


Jump_000_2b45:
    push af
    ld a, b
    add c
    ld l, a
    ld a, [hl]
    cp $40
    jr nc, jr_000_2b50

    pop af
    ret


jr_000_2b50:
    pop af

Jump_000_2b51:
    push hl
    push bc
    call Call_000_30c1
    pop bc
    pop hl
    ld e, a
    ld a, b
    add c
    ld l, a
    ld [hl], e
    ret


    ld b, $10

Jump_000_2b60:
    ld a, b
    add c
    ld l, a
    ld a, [hl]
    ld [hl], $40
    push hl
    push bc
    call Call_000_30f7
    pop bc
    pop hl
    ret


Jump_000_2b6e:
    ld a, $2a
    add c
    ld l, a

Jump_000_2b72:
    ld a, [hl]
    or a
    ret z

    dec [hl]
    scf
    ret


Jump_000_2b78:
    ld a, $0d
    add c
    ld l, a
    ld a, [hl+]
    add e
    ld e, a
    inc l
    ld a, [hl]
    add d
    ld d, a
    call Call_000_2b89
    ld b, $00
    ret


Call_000_2b89:
Jump_000_2b89:
    ld l, c
    push hl
    ld a, [$df00]
    push af

Jump_000_2b8f:
    ld a, $0d
    rst $20
    ld b, $05
    call $4015
    pop af
    rst $20
    pop hl
    ld c, l
    ret


Jump_000_2b9c:
    ld a, c
    add b
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Jump_000_2ba4:
    ld a, c
    add b
    ld l, a
    ld b, l
    ld a, e
    ldh [$ff8a], a
    ld a, d
    ldh [$ff8b], a
    ld a, [hl+]
    ldh [$ff8d], a
    xor a
    ldh [$ff8e], a
    ldh [$ff8f], a
    ld a, [hl]
    or a
    jr z, jr_000_2bbd

    dec [hl]
    jr nz, jr_000_2bcf

jr_000_2bbd:
    inc l

jr_000_2bbe:
    ld a, [hl]
    add a
    add e
    ld e, a
    ld a, $00

Call_000_2bc4:
    adc d
    ld d, a
    ld a, [de]
    cp $fe
    jr nz, jr_000_2bd3

    ld a, $02
    ldh [$ff8f], a

jr_000_2bcf:
    ldh a, [$ff8d]
    jr jr_000_2bef

jr_000_2bd3:
    ld a, $01
    ldh [$ff8e], a
    ld a, [de]
    cp $ff
    jr nz, jr_000_2bea

    ld [hl], $00
    ld a, $01
    ldh [$ff8f], a
    ldh a, [$ff8a]
    ld e, a
    ldh a, [$ff8b]
    ld d, a
    jr jr_000_2bbe

jr_000_2bea:
    inc [hl]
    dec l
    ld [hl], a
    inc de
    ld a, [de]

jr_000_2bef:
    ldh [$ff8c], a
    ld l, b
    ld [hl], a
    ld b, a
    ldh a, [$ff8e]
    or a
    ret


Call_000_2bf8:
Jump_000_2bf8:
    ld a, $0d
    add c
    ld l, a
    ld a, $50
    sub [hl]
    jr nc, jr_000_2c03

    cpl
    inc a

jr_000_2c03:
    cp b
    ret


Jump_000_2c05:
    ld a, $25
    add c
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_000_2c0d:
    xor a
    ldh [$ff8b], a
    ldh [$ff8f], a
    ld a, $15
    add c
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $25
    add c
    ld l, a
    inc [hl]
    ld a, [de]
    inc de
    dec a
    cp [hl]
    jr nc, jr_000_2c2f

    ld [hl], $00
    inc l
    inc [hl]
    ld a, $01
    ldh [$ff8f], a

jr_000_2c2f:
    ld a, e

Jump_000_2c30:
    ldh [$ff8c], a
    ld a, d
    ldh [$ff8d], a
    ld a, $26
    add c
    ld l, a

jr_000_2c39:
    ld a, [hl]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    cp $cd
    jr nz, jr_000_2c58

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
    call Call_000_0332
    pop bc
    pop hl
    jr jr_000_2c62

jr_000_2c58:
    cp $ff
    jr nz, jr_000_2c6a

    ld [hl], $00
    ld a, $01
    ldh [$ff8b], a

jr_000_2c62:
    ldh a, [$ff8c]
    ld e, a
    ldh a, [$ff8d]
    ld d, a
    jr jr_000_2c39

jr_000_2c6a:
    ld b, a
    ld a, $17
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff8e], a
    ld [hl], b
    ret


Jump_000_2c74:
    ld l, c
    push hl
    ld a, [$c3ef]
    ldh [$ff8a], a
    ld a, [$c3f0]
    ldh [$ff8b], a
    ld a, $0d
    add c
    ld l, a
    ld e, [hl]
    add $02
    ld l, a
    ld d, [hl]
    call Call_000_2c8f
    pop hl
    ld c, l
    ret


Call_000_2c8f:
    ld a, e
    add $30
    ld e, a
    ld a, d
    add $30
    ld d, a

Jump_000_2c97:
    ld b, $00
    ldh a, [$ff8a]
    sub e
    jr nc, jr_000_2ca2

    cpl
    inc a
    set 0, b

jr_000_2ca2:
    ld e, a
    ldh a, [$ff8b]
    sub d
    jr nc, jr_000_2cac

    cpl
    inc a
    set 1, b

jr_000_2cac:
    ld d, a
    cp e
    jr nc, jr_000_2ccb

    ld c, $00
    add a
    jr c, jr_000_2cbe

    add a
    jr c, jr_000_2cbe

    add d
    jr c, jr_000_2cbe

    cp e
    jr c, jr_000_2ce5

jr_000_2cbe:
    inc c
    ld a, d
    srl a
    add d
    jr c, jr_000_2cc8

    cp e
    jr c, jr_000_2ce5

jr_000_2cc8:
    inc c
    jr jr_000_2ce5

jr_000_2ccb:
    ld c, $02
    ld a, e
    srl a
    add e
    jr c, jr_000_2ce5

    cp d
    jr nc, jr_000_2ce5

    inc c
    ld a, e
    add a
    jr c, jr_000_2ce5

    add a
    jr c, jr_000_2ce5

    add e
    jr c, jr_000_2ce5

    cp d
    jr nc, jr_000_2ce5

    inc c

jr_000_2ce5:
    ld a, b
    ld [$df79], a
    add a
    add a
    add b
    add c
    ld e, a
    ld d, $00
    ld hl, $2cfa
    add hl, de
    ld a, [hl]
    ld b, a
    ld [$df78], a
    ret


    dec b
    ld b, $07
    ld [$0d09], sp
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0e0d
    rrca
    db $10
    ld bc, $0d3e
    add c
    ld l, a
    ld a, [hl]
    ld e, a
    ld d, $00
    cp $d0
    jr c, jr_000_2d1b

    dec d

jr_000_2d1b:
    ld a, $0a
    add c
    ld l, a
    ld a, [$d711]
    add e
    ld [hl+], a
    ld a, [$d712]
    adc d
    ld [hl], a
    ret


Jump_000_2d2a:
    call Call_000_2d44

Call_000_2d2d:
Jump_000_2d2d:
    ld a, [$ce50]
    ld l, a
    ld h, $ce
    ld a, $0a

jr_000_2d35:
    dec l
    dec a
    ld [hl], a
    jr nz, jr_000_2d35

    ld a, l
    ld [$ce50], a
    ld a, $ff
    ld [$ce57], a
    ret


Call_000_2d44:
    ld hl, $ce28
    ld b, $28
    xor a

jr_000_2d4a:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_2d4a

    ld a, $32
    ld [$ce50], a
    ld hl, $cf00
    ld b, $28
    xor a

jr_000_2d5a:
    ld [hl+], a
    add $04
    dec b
    jr nz, jr_000_2d5a

Jump_000_2d60:
    ld hl, $cf28
    ld b, $28
    xor a

jr_000_2d66:
    ld [hl+], a
    add $04
    dec b
    jr nz, jr_000_2d66

    ld hl, $cf50
    ld b, $0a
    xor a

jr_000_2d72:
    ld [hl+], a
    add $04
    dec b
    jr nz, jr_000_2d72

    ld hl, $cf77
    ld b, $1e
    ld a, $28

jr_000_2d7f:
    ld [hl-], a
    add $04
    dec b
    jr nz, jr_000_2d7f

    xor a
    ld [$ce57], a
    ld hl, $d240
    ld b, $40
    xor a

jr_000_2d8f:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_2d8f

    ld a, $40
    ld [$d280], a
    ld a, $fe
    ld hl, $d281
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d100
    ld b, $40
    xor a

jr_000_2dad:
    ld [hl+], a
    add $02
    dec b
    jr nz, jr_000_2dad

    ret


Call_000_2db4:
Jump_000_2db4:
    call Call_000_304f
    ld a, [$de83]
    bit 0, a
    ld de, $cf32
    jr nz, jr_000_2dc4

    ld de, $cf5a

jr_000_2dc4:
    ld b, $1e
    ld c, $0a
    ld a, [$ce57]
    or a
    jr z, jr_000_2dd8

    ld b, $28
    ld c, $00
    ld hl, $fff6
    add hl, de
    ld e, l
    ld d, h

jr_000_2dd8:
    ld h, $cf
    ld l, c
    ld a, [de]

Call_000_2ddc:
    inc e
    ld [hl], a
    ld h, $c0
    ld l, a
    ld [hl], $a0
    inc c
    dec b
    jr nz, jr_000_2dd8

    ret


Call_000_2de8:
Jump_000_2de8:
    cp $40
    jp nc, Jump_000_2eed

    ld e, a
    ld d, $d1
    ld a, [de]
    ld e, a
    dec d
    inc e

Call_000_2df4:
    ld a, [de]
    cp $fe

Jump_000_2df7:
    jp z, Jump_000_2eed

    ldh [$ff92], a
    ld a, [$d3ea]
    bit 5, a
    jp nz, Jump_000_2ef5

    ldh a, [$ff9b]
    add [hl]
    add $08
    ldh [$ff9d], a
    inc hl
    ldh a, [$ff9c]
    add [hl]
    add $10
    ldh [$ff9e], a
    ldh [$ff8b], a
    inc hl
    push bc
    ld a, [hl+]
    ld b, a
    swap a
    and $0f
    ld c, a
    ld a, b
    and $0f
    ld b, a
    or c
    jp z, Jump_000_2eec

    ld e, l
    ld d, h

jr_000_2e28:
    push bc
    ldh a, [$ff9d]
    ldh [$ff8a], a

jr_000_2e2d:
    ldh a, [$ff92]
    cp $fe
    jp z, Jump_000_2eeb

    ld l, a
    ld a, [de]
    cp $ff
    jr z, jr_000_2e7d

    push de
    ld d, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff8b]
    ld [hl+], a
    ldh a, [$ff8a]
    ld [hl+], a
    ld a, [$ce56]
    and $01
    jr nz, jr_000_2e6b

    ld a, d
    and $3f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr z, jr_000_2e63

    set 5, a

jr_000_2e63:
    bit 6, d
    jr z, jr_000_2e7b

    set 6, a
    jr jr_000_2e7b

jr_000_2e6b:
    ld a, d
    and $7f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr z, jr_000_2e7b

    set 5, a

jr_000_2e7b:
    ld [hl+], a
    pop de

jr_000_2e7d:
    inc de
    ldh a, [$ff8a]
    add $08
    ldh [$ff8a], a
    dec c
    jr nz, jr_000_2e2d

    ldh a, [$ff8b]
    add $08
    ldh [$ff8b], a
    pop bc
    dec b
    jr nz, jr_000_2e28

jr_000_2e91:
    ldh a, [$ff92]
    cp $fe
    jr z, jr_000_2eec

    ld l, a
    ld a, [de]
    cp $80
    jr z, jr_000_2eec

    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de
    push de
    ld d, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff9e]
    add b
    ld [hl+], a
    ldh a, [$ff9d]
    add c
    ld [hl+], a
    ld a, [$ce56]
    and $01
    jr nz, jr_000_2ed7

    ld a, d
    and $3f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr z, jr_000_2ecf

    set 5, a

jr_000_2ecf:
    bit 6, d
    jr z, jr_000_2ee7

    set 6, a
    jr jr_000_2ee7

jr_000_2ed7:
    ld a, d
    and $7f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr z, jr_000_2ee7

    set 5, a

jr_000_2ee7:
    ld [hl+], a
    pop de
    jr jr_000_2e91

Jump_000_2eeb:
    pop bc

Jump_000_2eec:
jr_000_2eec:
    pop bc

Jump_000_2eed:
    xor a
    ld [$ce56], a
    ld [$d3ea], a
    ret


Jump_000_2ef5:
    ldh a, [$ff9b]
    sub [hl]
    ldh [$ff9d], a
    inc hl
    ldh a, [$ff9c]
    add [hl]
    add $10
    ldh [$ff9e], a
    ldh [$ff8b], a
    inc hl
    push bc
    ld a, [hl+]
    ld b, a
    swap a
    and $0f
    ld c, a
    ld a, b
    and $0f
    ld b, a
    or c
    jp z, Jump_000_2fdb

    ld e, l
    ld d, h

jr_000_2f17:
    push bc
    ldh a, [$ff9d]
    ldh [$ff8a], a

jr_000_2f1c:
    ldh a, [$ff92]
    cp $fe
    jp z, Jump_000_2fda

    ld l, a
    ld a, [de]
    cp $ff
    jr z, jr_000_2f6c

    push de
    ld d, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff8b]
    ld [hl+], a
    ldh a, [$ff8a]
    ld [hl+], a
    ld a, [$ce56]
    and $01
    jr nz, jr_000_2f5a

    ld a, d
    and $3f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr nz, jr_000_2f52

    set 5, a

jr_000_2f52:
    bit 6, d
    jr z, jr_000_2f6a

    set 6, a
    jr jr_000_2f6a

jr_000_2f5a:
    ld a, d
    and $7f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr nz, jr_000_2f6a

    set 5, a

jr_000_2f6a:
    ld [hl+], a
    pop de

jr_000_2f6c:
    inc de
    ldh a, [$ff8a]
    add $f8
    ldh [$ff8a], a
    dec c
    jr nz, jr_000_2f1c

    ldh a, [$ff8b]
    add $08
    ldh [$ff8b], a
    pop bc
    dec b
    jr nz, jr_000_2f17

jr_000_2f80:
    ldh a, [$ff92]
    cp $fe
    jr z, jr_000_2fdb

    ld l, a
    ld a, [de]
    cp $80
    jr z, jr_000_2fdb

    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de
    push de
    ld d, a
    ld h, $ce
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ldh a, [$ff9e]
    add b
    ld [hl+], a
    ldh a, [$ff9d]
    sub c
    ld [hl+], a
    ld a, [$ce56]
    and $01
    jr nz, jr_000_2fc6

    ld a, d
    and $3f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr nz, jr_000_2fbe

    set 5, a

jr_000_2fbe:
    bit 6, d
    jr z, jr_000_2fd6

    set 6, a
    jr jr_000_2fd6

jr_000_2fc6:
    ld a, d
    and $7f
    ld e, a
    ldh a, [$ffac]
    add e
    ld [hl+], a
    ldh a, [$ffab]
    bit 7, d
    jr nz, jr_000_2fd6

    set 5, a

jr_000_2fd6:
    ld [hl+], a
    pop de
    jr jr_000_2f80

Jump_000_2fda:
    pop bc

Jump_000_2fdb:
jr_000_2fdb:
    pop bc
    jp Jump_000_2eed


Call_000_2fdf:
    ld a, [$ce50]
    sub $51
    cpl
    cp b
    ld a, $fe
    ret c

    ld h, $ce
    ld e, $51
    ld a, [$ce50]

jr_000_2ff0:
    ld l, a
    ld d, [hl]
    ld l, e
    ld [hl], d
    ld e, d
    inc a
    dec b
    jr nz, jr_000_2ff0

    ld [$ce50], a
    ld l, e
    ld [hl], $fe
    ld a, [$ce51]
    or a
    ret


Call_000_3004:
    push bc
    ld l, a
    ld h, $d1
    ld l, [hl]
    dec h

Call_000_300a:
    ld a, [$ce50]
    ld d, a
    inc l
    ld a, [hl]
    ld [hl], $fe

Call_000_3012:
    ld h, $ce
    ld b, $c0

jr_000_3016:
    cp $fe
    jr z, jr_000_3029

    dec d
    ld l, d

Call_000_301c:
    ld [hl], a
    ld l, a
    ld h, $cf
    ld c, [hl]
    ld a, $a0
    ld [bc], a
    ld h, $ce
    ld a, [hl]
    jr jr_000_3016

jr_000_3029:
    ld a, d
    ld [$ce50], a
    pop bc
    ret


Call_000_302f:
    ld hl, $d282

jr_000_3032:
    ld b, a
    ld a, [hl]
    cp $fe
    jr nz, jr_000_303f

    ld [hl], b
    dec l

Call_000_303a:
    ld [hl], b
    ld l, b
    ld [hl], $fe
    ret


Jump_000_303f:
jr_000_303f:
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, b
    ld [hl], $fe
    ret


Call_000_3046:
    ld hl, $d285
    jr jr_000_3032

jr_000_304b:
    jr jr_000_304b

jr_000_304d:
    jr jr_000_304d

Call_000_304f:
    ld hl, $d284
    ld a, [hl]
    cp $fe
    ret z

    ld a, [$d285]
    ld [$d286], a

Jump_000_305c:
jr_000_305c:
    ld hl, $d284
    ld a, [hl]
    ld c, a
    ld l, c
    ld h, $d1
    ld l, [hl]
    dec h
    ld b, [hl]
    ld a, [$ce50]
    sub $51
    cpl
    cp b
    jr nc, jr_000_309a

    ld hl, $d281
    ld a, [hl]
    cp $fe
    jr z, jr_000_304b

    ld c, a
    inc l
    cp [hl]
    jr nz, jr_000_3084

    ld [hl], $fe
    dec l
    ld [hl], $fe
    jr jr_000_3090

jr_000_3084:
    ld l, a
    ld a, [hl]
    ld [$d281], a
    cp $fe
    jr nz, jr_000_3090

    ld [$d282], a

jr_000_3090:
    ld a, c
    call Call_000_3004
    ld a, c
    call Call_000_3046
    jr jr_000_305c

jr_000_309a:
    ld h, $d2
    ld l, c
    ld a, [hl]
    ld l, $84
    ld [hl+], a
    cp $fe
    jr nz, jr_000_30a6

    ld [hl], a

jr_000_30a6:
    ld a, c
    call Call_000_302f
    ld l, c
    ld h, $d1
    ld l, [hl]
    dec h
    ld b, [hl]
    push hl
    call Call_000_2fdf
    pop hl
    jr c, jr_000_304d

    inc l
    ld [hl], a
    ld a, [$d286]
    cp c
    jp nz, Jump_000_305c

    ret


Call_000_30c1:
Jump_000_30c1:
    or a
    jr nz, jr_000_30c9

    ld b, $fe
    ld a, $40
    ret


jr_000_30c9:
    push af

Jump_000_30ca:
    call Call_000_3140
    ld a, b
    ld [$d28a], a
    ld l, a
    ld h, $d1
    ld l, [hl]
    dec h
    pop af
    ld [hl+], a
    ld b, a
    push hl

Jump_000_30da:
    call Call_000_2fdf
    ld [$d28b], a
    ld a, [$d28a]
    jr c, jr_000_30ea

    call Call_000_302f
    jr jr_000_30ed

jr_000_30ea:
    call Call_000_3046

jr_000_30ed:
    pop hl
    ld a, [$d28b]
    ld [hl], a
    ld b, a
    ld a, [$d28a]
    ret


Call_000_30f7:
Jump_000_30f7:
    cp $40
    ret nc

    ld b, a
    call Call_000_3150
    ld a, b
    call Call_000_3004
    ld hl, $d281
    call Call_000_3111
    ret nc

    ld hl, $d284
    call Call_000_3111
    ret nc

    ret


Call_000_3111:
    ld c, l

Call_000_3112:
    ld e, $fe
    ld a, [hl]
    cp e
    jr z, jr_000_313c

    cp b
    jr nz, jr_000_3127

    inc l
    cp [hl]
    jr nz, jr_000_3124

    ld [hl], e
    dec l
    ld [hl], e

Jump_000_3122:
    jr jr_000_313a

jr_000_3124:
    dec l
    jr jr_000_312f

jr_000_3127:
    ld l, a
    ld a, [hl]
    cp e
    jr z, jr_000_313c

    cp b
    jr nz, jr_000_3127

jr_000_312f:
    ld d, l
    ld l, a

Call_000_3131:
Jump_000_3131:
    ld a, [hl]
    ld l, d
    ld [hl], a
    cp e
    jr nz, jr_000_313a

    ld l, c
    inc l
    ld [hl], d

jr_000_313a:
    or a
    ret


jr_000_313c:
    scf
    ret


jr_000_313e:
    jr jr_000_313e

Call_000_3140:
    ld a, [$d280]
    cp $80
    jr nc, jr_000_313e

    ld l, a
    ld h, $d2
    ld b, [hl]
    inc a
    ld [$d280], a
    ret


Call_000_3150:
    ld a, [$d280]
    dec a
    ld l, a
    ld h, $d2
    ld [hl], b
    ld [$d280], a
    ret


    ld a, [$ce50]
    dec a
    ld l, a
    ld h, $ce
    ld [hl], b

Jump_000_3164:
    ld [$ce50], a
    ld l, b
    ld h, $cf
    ld l, [hl]
    ld h, $c0
    ld [hl], $a0
    ret


Jump_000_3170:
    push bc
    push hl
    push af
    ld a, [hl]
    call Call_000_30f7
    pop af
    call Call_000_30c1
    pop hl
    ld [hl], a
    pop bc
    ret


Call_000_317f:
Jump_000_317f:
    cp $40
    jr c, jr_000_3187

    ld a, $fe
    jr jr_000_318f

jr_000_3187:
    ld e, a
    ld d, $d1
    ld a, [de]
    ld e, a
    dec d
    inc e
    ld a, [de]

jr_000_318f:
    ldh [$ff92], a
    ret


Jump_000_3192:
    ldh a, [$ff8e]
    cp $a0
    ret nc

    ldh a, [$ff8f]
    cp $a8
    ret nc

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
    ldh a, [$ff8e]
    ld [hl+], a
    ldh a, [$ff8f]
    ld [hl+], a
    ldh a, [$ff90]
    ld [hl+], a
    ldh a, [$ff91]
    ld [hl+], a
    ret


Call_000_31b9:
    call Call_000_317f
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]
    add $08
    ld e, a

jr_000_31c6:
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
    xor [hl]
    pop hl
    ld [hl], a
    jr jr_000_31c6

Call_000_31f8:
Jump_000_31f8:
    call Call_000_317f

Jump_000_31fb:
    ldh a, [$ff9c]
    add $10
    ld d, a
    ldh a, [$ff9b]

Call_000_3202:
Jump_000_3202:
    add $08
    ld e, a
    ld a, [$d3ea]
    bit 5, a
    jr nz, jr_000_323e

jr_000_320c:
    ldh a, [$ff92]
    cp $fe
    ret z

    ld l, a

Jump_000_3212:
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

Jump_000_3222:
    add d
    ld d, a

Jump_000_3224:
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

Call_000_3232:
Jump_000_3232:
    ld [hl+], a
    push hl

Jump_000_3234:
    ld a, [bc]
    inc bc
    ld hl, $ffab
    xor [hl]
    pop hl
    ld [hl], a

Jump_000_323c:
    jr jr_000_320c

Call_000_323e:
jr_000_323e:
    ldh a, [$ffab]
    xor $20
    ldh [$ffab], a
    ld a, e
    sub $08
    ld e, a

jr_000_3248:
    ldh a, [$ff92]
    cp $fe
    ret z

    ld l, a
    ld a, [bc]
    cp $80
    ret z

Jump_000_3252:
    ld h, $ce

Jump_000_3254:
    ld a, [hl]
    ldh [$ff92], a
    ld h, $cf
    ld l, [hl]

Jump_000_325a:
    ld h, $c0
    ld a, [bc]
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
    push hl
    ld hl, $ffac
    add [hl]
    pop hl
    ld [hl+], a
    push hl
    ld a, [bc]
    inc bc
    ld hl, $ffab
    xor [hl]
    pop hl
    ld [hl], a
    jr jr_000_3248

Call_000_327c:
    ld a, [$ce57]
    or a
    jr nz, jr_000_3289

    ld hl, $c028
    ld b, $1e
    jr jr_000_328e

Call_000_3289:
Jump_000_3289:
jr_000_3289:
    ld hl, $c000
    ld b, $28

jr_000_328e:
    ld de, $0004
    ld a, $a0

jr_000_3293:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_3293

    ret


    inc c
    inc bc
    ld b, b
    ld de, $400c
    inc c
    dec b
    ld b, b
    ld [$4000], sp
    inc b
    ld d, e
    ld b, b
    ld de, $4000
    inc c
    add hl, bc
    ld b, b
    rra
    db $10
    ld b, b
    inc c
    rlca
    ld b, b
    ld a, [bc]
    nop
    ld b, b
    inc c
    rrca
    ld b, b
    ld [$4002], sp
    ld a, [bc]
    inc b
    ld b, b
    ld a, [bc]
    ld [bc], a
    ld b, b
    inc c
    ld de, $0540
    nop
    ld b, b
    inc c
    dec c
    ld b, b
    rra
    inc d
    ld b, b
    ld de, $4008
    ld de, $4002
    dec b
    inc b
    ld b, b
    ld [$4009], sp
    rst $38
    inc e
    inc de
    ld b, b
    nop
    nop
    inc c
    dec d

Jump_000_32e3:
    ld b, b
    jr jr_000_32f6

    ld b, b
    inc b
    ld d, a
    ld b, b
    ld de, $4006
    rrca
    ld b, $40
    rrca
    ld [$0540], sp
    add hl, bc
    ld b, b

jr_000_32f6:
    ld d, $10
    ld b, b
    inc c
    dec bc
    ld b, b
    rra
    ld [de], a
    ld b, b
    inc c
    rla
    ld b, b
    ld de, $4004
    rst $38
    ld bc, $091d
    nop
    nop
    rst $38
    dec bc
    nop
    ld b, b
    nop
    nop

Call_000_3311:
    rst $38
    dec bc
    inc bc
    ld b, b
    nop
    nop
    dec b
    inc b
    ld b, b
    ld [$400b], sp
    inc c
    dec d
    ld b, b
    jr @+$16

Jump_000_3322:
    ld b, b
    rst $38
    inc d
    db $10
    ld b, b
    nop
    nop
    ld de, $4010
    dec b
    ld [bc], a
    ld b, b
    rst $38
    inc d
    inc de
    ld b, b
    nop
    nop
    ld de, $400e
    ld de, $400a
    rst $38
    inc e
    ld d, $40
    nop
    nop
    rst $38
    dec de
    db $10
    ld b, b
    nop
    nop
    ld de, $4010
    dec de
    inc de
    ld b, b
    rst $38
    dec de
    dec d
    ld b, b
    nop
    nop

Call_000_3353:
    di
    xor a
    ldh [rSTAT], a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ei
    xor a
    ld [$cccc], a
    call Call_000_04a4
    ld hl, $d700
    ld bc, $008a
    xor a
    call Call_000_1a5e
    ld hl, $c100
    ld bc, $0100
    ld a, $04
    call Call_000_1a5e
    call Call_000_041d
    call $6ed4
    ld hl, $3299
    ld a, [$df0a]
    cp $04
    jr nz, jr_000_3395

    ld e, a
    ld a, [$de8a]
    cp $01
    jr c, jr_000_3394

    ld e, $11

jr_000_3394:
    ld a, e

jr_000_3395:
    dec a
    cp $1f
    jp nc, RST_00

    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl]
    inc a
    jr nz, jr_000_33b9

    inc hl
    ld a, [hl+]
    rst $20
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld a, [hl+]
    ld [$df5b], a
    ld a, [hl+]
    ld [$df5c], a
    ret


jr_000_33b9:
    push hl
    call Call_000_1fa8
    pop hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$df01], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$df01]
    rst $20
    ld l, e
    ld h, d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld e, a
    ld [$de8b], a
    ld a, [hl+]
    ld d, a
    ld [$de8c], a
    ld a, [hl+]
    ld [$de8d], a
    ld a, [hl+]
    ld [$de8e], a
    ld l, e
    ld h, d
    ld a, [$de8a]
    call Call_000_1cff
    ld a, [hl+]
    ld [$d897], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    ld [$d892], a
    inc de
    ld a, e
    ld [$d890], a
    ld a, d
    ld [$d891], a

Jump_000_3400:
    ld e, [hl]
    inc hl
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $da00
    ld bc, $0100
    call Call_000_1a22
    pop hl
    ld a, [hl+]
    ld [$d81a], a
    ld a, [hl+]
    ld [$d81b], a
    ld a, [hl+]
    ld [$de71], a
    ld a, [hl+]
    ld [$de72], a
    ld a, $c3
    ld [$de70], a
    ld a, [hl+]
    ld [$d70d], a
    ld a, [hl+]
    ld [$d70e], a
    ld a, [hl+]
    ld [$d725], a
    ld [$d77b], a
    xor a
    ld [$d727], a
    ld [$d728], a
    ld [$d729], a
    ld [$d72a], a
    ld a, $0d
    ld [$d713], a
    ld a, $d7
    ld [$d714], a
    ld a, $01
    ld [$d74b], a
    xor a
    ld [$dece], a
    ld a, [$d897]
    bit 0, a
    call z, Call_000_0d3e
    xor a
    ld [$d7d1], a
    ld [$d7d2], a
    ld [$dd7b], a
    ld a, [hl+]
    ld [$d7fd], a
    ld a, [hl+]
    ld [$d7fe], a
    xor a
    ld [$d807], a
    call Call_000_37c5
    call Call_000_22ec
    call Call_000_159b
    call Call_000_15e2
    ld a, [$df01]
    rst $20
    call Call_000_3753
    ld a, $01
    rst $20
    call Call_000_3289
    call Call_000_0fc5
    call $5fb7
    call $555d
    call $454d
    ld a, [$df01]
    rst $20
    ld hl, $d81a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_390d
    ld hl, $d85c
    ld a, $01
    call Call_000_3e11
    ld a, $01
    rst $20
    ret


Call_000_34b0:
    ld a, [$d81c]
    or a
    ret nz

    ld a, [$de34]
    or a
    ret nz

    ld a, [$dece]
    or a
    ret nz

    ld hl, $d808
    ld a, [$d70e]
    ld d, a
    ld a, [$d70d]
    ld e, a
    ld b, $02
    ld c, $01

jr_000_34ce:
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr c, jr_000_34e8

    inc hl
    ld a, e
    sub [hl]
    inc hl
    ld a, d
    sbc [hl]
    jr nc, jr_000_34e8

    inc hl
    ld a, [$d725]
    cp [hl]
    jr c, jr_000_34e8

    inc hl
    cp [hl]
    jr c, jr_000_34f0

jr_000_34e8:
    ld hl, $d811
    inc c
    dec b
    jr nz, jr_000_34ce

    ret


jr_000_34f0:
    inc hl
    bit 7, [hl]
    jr z, jr_000_3501

    ld a, [$d760]
    or a
    jr nz, jr_000_3501

Call_000_34fb:
    ld a, [$d74b]
    cp $02
    ret nz

jr_000_3501:
    ld a, c
    ld [$d829], a
    ld a, [hl]
    and $03
    ld [$d82a], a
    or $80
    ld [$d81c], a
    push hl
    ld a, [$d298]
    cp $c3
    jr nz, jr_000_3526

    push hl
    push bc
    ld a, [$d29b]
    rst $20
    call $d298
    ld a, $01
    rst $20
    pop bc
    pop hl

jr_000_3526:
    call Call_000_3601
    ld a, $01
    rst $20
    call Call_000_3b64
    xor a
    ld [$deaf], a
    ld [$d739], a
    ld a, [$d1ec]
    or a
    call nz, Call_000_0884
    xor a
    ld [$d1ec], a
    call Call_000_3df4
    call $4b9c
    call $5122
    call $0446
    call $455f
    call Call_000_327c
    call Call_000_19ae
    ld a, [$df01]
    rst $20
    pop hl
    inc hl
    ld a, [hl+]
    ld [$d7fd], a
    ld a, [hl]
    ld [$d7fe], a
    call Call_000_37c5
    ld a, [$df01]
    rst $20
    ld a, [$d81c]
    bit 0, a
    jp nz, Jump_000_3652

    ld a, [$d725]
    cp $70
    ld a, $02
    jr nc, jr_000_357e

    ld a, $fe

jr_000_357e:
    ld [$d7dd], a
    ld a, $80
    ld [$d7de], a
    xor a
    ld [$d7dc], a
    ld a, $02
    ld [$d827], a
    ld a, $01
    ld [$d828], a
    xor a
    ld [$d18d], a
    ld a, [$d70f]
    ld e, a
    ld a, [$d710]
    ld d, a
    ld a, e
    sub $58
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    xor a
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    rla
    ld [$d7e4], a
    ld a, e
    ld [$d7e5], a
    ld a, d
    ld [$d7e6], a
    ld a, [$d7d1]
    sub $08
    ld e, a
    ld a, [$d7dd]
    bit 7, a
    ld a, [$d7d2]
    jr nz, jr_000_35d9

    add $80
    jr jr_000_35db

jr_000_35d9:
    sub $08

jr_000_35db:
    ld d, a
    res 3, d
    ld a, [$d7dd]
    bit 7, a
    jr z, jr_000_35e7

    set 3, d

jr_000_35e7:
    push de
    call Call_000_3710
    pop de
    res 0, l
    ld a, l
    ld [$d7e9], a
    ld a, h
    ld [$d7ea], a
    call Call_000_3727
    ld a, l
    ld [$d7e7], a

Jump_000_35fd:
    ld a, $01
    rst $20
    ret


Call_000_3601:
    ld hl, $d858
    ld a, [$d81c]
    bit 0, a
    jr nz, jr_000_3610

    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_000_3615

jr_000_3610:
    ld a, $03
    call Call_000_3e11

jr_000_3615:
    ret


Call_000_3616:
    ld a, [$d81c]
    bit 0, a
    ret z

    ld a, [$d722]
    cp $50
    ld a, $01
    jr c, jr_000_3626

    inc a

jr_000_3626:
    ld [$d81e], a
    dec a
    ld [$d703], a
    xor a
    ld [$d81d], a
    ld a, $9e
    ld [$d81f], a
    ld a, $02
    ld [$d820], a
    ld a, $a0
    ld [$d821], a
    xor a
    ld [$d822], a
    ld de, $0000
    ld hl, $d823
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Jump_000_3652:
    ld a, [$d81e]
    cp $01
    jr z, jr_000_3697

    ld a, [$d722]
    sub $a0
    ld [$d70d], a
    ld a, $ff
    ld [$d70e], a
    ld de, $ffa8
    ld b, $f8
    call Call_000_3683
    ld de, $ffb0
    ld b, $00
    call Call_000_3683
    ld a, $b0
    ld [$d70f], a
    ld a, $ff
    ld [$d710], a
    jp Jump_000_35fd


Call_000_3683:
    ld a, e
    ld [$d70f], a
    ld a, d
    ld [$d710], a
    ld a, [$d7d1]
    add b
    call Call_000_1478
    ld b, $01
    jp Jump_000_1973


jr_000_3697:
    ld hl, $d70f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $08
    call Call_000_36aa
    ld b, $00
    call Call_000_36aa
    jp Jump_000_35fd


Call_000_36aa:
    push hl
    ld d, $00
    ld e, b
    add hl, de
    ld a, l
    ld [$d70f], a
    ld a, h
    ld [$d710], a
    ld a, [$d7d1]
    add b
    call Call_000_1524
    ld b, $01
    call Call_000_1973
    pop hl
    ld a, l
    ld [$d70f], a
    ld a, h
    ld [$d710], a
    ret


Jump_000_36cd:
    ld a, [$d70f]
    ld e, a
    ld a, [$d710]
    ld d, a
    ld b, $00
    call Call_000_3683
    ld hl, $d823
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    or d
    jr z, jr_000_36f5

    ld a, $3c
    ld [$d827], a
    ld a, $01
    ld [$d828], a
    ld a, e
    ld [$d7d3], a
    ld a, d
    ld [$d7d4], a

jr_000_36f5:
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a

Jump_000_36f9:
    or d
    jr z, jr_000_3704

    ld a, e
    ld [$d7d5], a
    ld a, d
    ld [$d7d6], a

jr_000_3704:
    call Call_000_15e8
    ld hl, $d85a
    ld a, $02
    call Call_000_3e11
    ret


Call_000_3710:
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


Call_000_3727:
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


Call_000_3735:
    ld a, [$dd7b]
    and $f0
    push af
    sub $10
    ld h, $c1
    ld l, a
    ld b, $10
    push hl
    push bc
    xor a
    call Call_000_185b
    pop bc
    pop hl
    pop af
    add $80
    ld l, a
    xor a
    call Call_000_185b
    ret


Call_000_3753:
    ld a, $00
    ld hl, $9800
    ld bc, $0800
    call $1bad
    call Call_000_3735
    ld a, [$d70f]
    ld e, a
    ld a, [$d710]
    ld d, a
    ld a, e
    sub $60
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    ld a, e
    ld [$d7e5], a
    ld a, d
    ld [$d7e6], a
    ld hl, $d7eb
    ld de, $981e
    ld a, [$d88d]
    ld b, a

jr_000_3793:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    push de
    ld a, [$d7e5]
    add l
    ld l, a
    ld a, [$d7e6]
    adc h
    ld h, a
    ld c, $0c

jr_000_37a4:
    push bc
    call Call_000_39b8
    pop bc
    ld a, e
    push af
    and $e0
    ld e, a
    pop af
    inc a
    and $1f
    or e
    ld e, a
    dec c
    jr nz, jr_000_37a4

    pop de
    ld a, e
    add $40
    ld e, a
    jr nc, jr_000_37bf

    inc d

jr_000_37bf:
    pop hl
    inc hl
    dec b
    jr nz, jr_000_3793

    ret


Call_000_37c5:
    ld a, $01
    rst $20
    xor a
    ld [$d831], a
    ld [$d835], a
    ld [$c0fc], a
    call Call_000_3b64
    call $5faf
    call Call_000_27fe
    call Call_000_2d44
    call $4537
    call $044a
    call $7a15
    call Call_000_3d42
    call $4f6a
    ld a, [$df01]
    rst $20
    ld hl, $d7fd
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$de8f]
    ld [$de33], a
    ld a, [hl]
    ld [$de32], a
    and $3f
    ld [$de8f], a
    ld a, [hl+]
    and $80
    ld [$d82b], a
    ld a, [hl+]
    ld [$d801], a
    ld a, [hl+]
    ld [$d802], a
    ld a, [hl+]
    ld [$d7ff], a
    ld a, [hl+]
    ld [$d800], a
    ld a, [$d803]
    ld e, a
    ld a, [$d804]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld [$d803], a
    ld a, [hl+]
    ld b, a
    ld [$d804], a
    push hl
    ld a, [$d807]
    or a
    jr z, jr_000_384d

    ld a, e
    sub c
    ld e, a

Jump_000_3838:
    ld a, d
    sbc b
    ld d, a
    ld hl, $d70d
    call Call_000_1d53
    ld hl, $d70f
    call Call_000_1d53
    ld hl, $d711
    call Call_000_1d53

jr_000_384d:
    ld a, $01
    ld [$d807], a
    pop hl
    call Call_000_390e
    xor a
    ld [$d830], a
    ld a, $8d
    ld [$c3b5], a

jr_000_385f:
    ld a, [hl]
    cp $ff
    jr nz, jr_000_386b

    inc hl
    ld a, [hl+]
    ld [$c3b5], a
    jr jr_000_385f

jr_000_386b:
    ld a, [hl]
    cp $fe
    jr nz, jr_000_3877

    inc hl
    ld a, [hl+]
    ld [$d830], a

Jump_000_3875:
    jr jr_000_385f

jr_000_3877:
    push hl
    ld hl, $d7ff
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$d88c], a
    ld a, [hl+]
    ld [$d88d], a
    ld a, $50
    ld [$d7d3], a
    ld a, $00
    ld [$d7d4], a
    ld a, [$d88c]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ld [$d7d7], a
    sub $50
    ld [$d7d5], a
    ld a, h
    ld [$d7d8], a
    sbc $00
    ld [$d7d6], a
    pop hl
    call Call_000_22d6
    ld hl, $cc80
    ld bc, $0057
    xor a
    call Call_000_1a5e
    ld hl, $d7ff
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    inc hl
    call Call_000_3ad5
    ld d, $00
    ld bc, $d7eb
    ld a, [$d88d]

jr_000_38ce:
    push af
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    inc bc
    add hl, de
    pop af
    dec a

Call_000_38d8:
    jr nz, jr_000_38ce

    ld a, $01
    ld [$d898], a
    ld hl, $d858
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [$d768], a
    ld a, $fb
    ld [$d769], a
    ld a, $30
    ld [$d76a], a
    ld a, $1b
    ld [$cc6f], a
    call Call_000_3616
    xor a
    ld [$de74], a
    ld hl, $d801
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_390d
    ld a, $01
    rst $20
    ret


Call_000_390d:
    jp hl


Call_000_390e:
    xor a
    ld [$de34], a
    push hl
    ld hl, $d808
    ld bc, $0012
    ld a, $80
    push hl
    call Call_000_1a5e
    pop de
    pop hl
    ld a, [hl+]
    or a
    call nz, Call_000_392c
    ld a, [hl+]
    or a
    call nz, Call_000_392c
    ret


Call_000_392c:
    ldh [$ff8a], a
    ld a, [hl+]
    ldh [$ff8b], a
    ld a, [hl+]
    ldh [$ff8c], a
    push hl
    ldh a, [$ff8b]
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld bc, $0010
    ldh a, [$ff8c]
    bit 0, a
    jr nz, jr_000_3954

    ldh a, [$ff8a]
    and $f0
    ld c, a

jr_000_3954:
    add hl, bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ldh a, [$ff8a]
    swap a
    and $f0
    ld [de], a
    inc de
    ld l, a
    ld c, $10
    ldh a, [$ff8c]
    bit 0, a
    jr z, jr_000_3971

    ldh a, [$ff8a]
    and $f0
    ld c, a

jr_000_3971:
    ld a, l
    add c
    ld [de], a
    ld l, e
    ld h, d
    inc de
    ldh a, [$ff8c]
    bit 0, a
    jr nz, jr_000_3992

    bit 1, a
    jr z, jr_000_398c

    dec hl
    ld a, [hl]
    add $0c
    ld [hl+], a
    ld a, [hl]
    add $04
    ld [hl], a
    jr jr_000_39ac

jr_000_398c:
    ld a, [hl]
    sub $0c
    ld [hl], a
    jr jr_000_39ac

jr_000_3992:
    dec hl
    dec hl
    dec hl
    ld bc, $0006
    bit 1, a
    jr nz, jr_000_39a6

    dec hl
    dec hl
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    jr jr_000_39ac

jr_000_39a6:
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a

jr_000_39ac:
    ldh a, [$ff8c]
    ld [de], a
    inc de
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ret


Call_000_39b8:
    push de
    rr d
    rr e
    ld a, e
    rr d
    rr e
    and $0f
    ld d, a
    ld a, e
    and $f0
    or d
    ld e, a
    ld d, $c1
    ld a, [hl+]
    ld [de], a
    pop de
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$d890]
    ld c, a
    ld a, [$d891]
    ld b, a
    add hl, bc
    ld a, [hl+]
    push hl
    ld l, e
    ld h, d
    call Call_000_1c15
    pop hl
    push de
    ld a, e
    add $20
    ld e, a
    jr nc, jr_000_39ee

    inc d

jr_000_39ee:
    ld c, e
    ld b, d
    ld a, [hl+]
    push hl
    ld l, e
    ld h, d
    call Call_000_1c15
    pop hl
    pop de
    inc e
    ld a, [hl+]
    push hl
    ld l, e
    ld h, d
    call Call_000_1c15
    pop hl
    inc c
    ld a, [hl+]
    push hl
    ld l, c
    ld h, b
    call Call_000_1c15
    pop hl
    pop hl
    ret


Jump_000_3a0d:
jr_000_3a0d:
    push de
    push bc

jr_000_3a0f:
    ld a, [hl+]
    ldh [$ff8a], a
    push hl
    push de
    push bc
    ld a, [$df00]
    push af
    ld a, [$df01]
    rst $20
    call Call_000_3a32
    pop af
    rst $20
    pop bc
    pop de
    pop hl
    inc e
    dec c
    jr nz, jr_000_3a0f

    pop bc
    pop de
    inc d
    dec b
    jr nz, jr_000_3a0d

    ret


Call_000_3a30:
Jump_000_3a30:
    ldh [$ff8a], a

Call_000_3a32:
    xor a
    ld [$d8ab], a
    call Call_000_3abc
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
    ld a, b
    inc hl
    sbc [hl]
    jr z, jr_000_3a54

    inc a
    ret nz

    ld a, e
    cp $d0
    ret c

    jr jr_000_3a58

jr_000_3a54:
    ld a, e
    cp $d0
    ret nc

jr_000_3a58:
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

Call_000_3a68:
    push de
    call Call_000_3727
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
    ld a, [hl+]
    ld [$d8a7], a
    ld a, [hl+]
    ld [$d8a9], a
    ld a, [hl+]
    ld [$d8a8], a
    ld a, [hl+]
    ld [$d8aa], a
    call Call_000_3710
    res 0, l
    ld e, l
    ld d, h
    push de
    ld bc, $0002
    ld hl, $d8a7
    call Call_000_1c39
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
    call Call_000_1c39
    ld a, $01
    ld [$d8ab], a
    ret


Call_000_3abc:
Jump_000_3abc:
    ld a, [$d82b]
    or a
    ret z

    ld a, d
    and $07
    ld c, a
    ld b, $00
    ld hl, $d7eb
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, e
    add hl, bc
    ldh a, [$ff8a]
    ld [hl], a
    ret


Call_000_3ad5:
    ld a, [$d82b]
    or a
    jr z, jr_000_3ae8

    push de
    ld de, $d500
    ld bc, $0200
    push de
    call Call_000_1a22

Jump_000_3ae6:
    pop hl
    pop de

jr_000_3ae8:
    ld a, l
    ld [$d82c], a
    ld a, h
    ld [$d82d], a
    ret


Call_000_3af1:
    ld a, [$df01]
    rst $20
    ld a, [$d70e]
    swap a
    and $f0
    ld b, a
    ld a, [$d70d]
    swap a
    and $0f
    or b
    ld b, a
    ld a, [$de8f]
    ld c, a
    ld e, $01
    ld hl, $de8d
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_3b12:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_3b26

    cp c
    jr nz, jr_000_3b1e

    ld a, b
    cp [hl]
    jr z, jr_000_3b22

jr_000_3b1e:
    inc hl
    inc e
    jr jr_000_3b12

jr_000_3b22:
    ld a, e
    ld [$de8a], a

jr_000_3b26:
    ld a, $01
    rst $20
    ret


Call_000_3b2a:
    ld l, c
    push hl
    ld hl, $ff8a
    ldh a, [$ff9b]
    cp $e0
    ld d, $00
    jr c, jr_000_3b38

    dec d

jr_000_3b38:
    ld e, a
    ld a, [$d711]
    add e
    ld [hl+], a
    ld a, [$d712]
    adc d
    ld [hl+], a
    ldh a, [$ff9c]
    ld [hl], a
    call Call_000_3b4c
    pop hl
    ld c, l
    ret


Call_000_3b4c:
Jump_000_3b4c:
    ld a, [$de74]
    or a
    ret z

    ld d, a
    ld a, [$de73]
    ld e, a
    ld a, [$df00]
    push af
    ld a, [$df01]
    rst $20
    call Call_000_0332
    pop af
    rst $20
    ret


Call_000_3b64:
    ld a, [$d185]
    or a
    ret nz

    jp Jump_000_0c19


Call_000_3b6c:
    ld a, $01
    rst $20
    ld a, [$ccc2]
    or a
    ret nz

    ld hl, $cd0d
    ld a, [hl]
    or a
    ret z

    ld b, a
    ld l, $00

jr_000_3b7d:
    ld h, $cd
    ld a, [hl+]
    ld c, l
    push bc
    ld c, a
    ld [$cde2], a
    ld a, h
    ld [$cde3], a
    call Call_000_3bb6
    ld a, b
    or a
    jr nz, jr_000_3bb0

    pop bc
    dec c
    push bc
    ld l, $0d
    dec [hl]
    ld l, [hl]
    ld a, [hl]
    ld l, c
    ld b, [hl]
    ld [hl], a
    ld a, [$cd1a]
    dec a
    ld l, a
    ld [hl], b
    ld [$cd1a], a
    ld l, c
    push hl
    ld a, $0b
    add b
    ld l, a
    ld a, [hl]
    call Call_000_30f7
    pop hl

jr_000_3bb0:
    pop bc
    ld l, c
    dec b
    jr nz, jr_000_3b7d

    ret


Call_000_3bb6:
    ld a, $04
    add c
    ld l, a
    ld a, [$d7c3]
    add [hl]
    ld [hl], a
    ldh [$ff9b], a
    ld e, a
    ld a, [$deaf]
    ld b, a
    and $63
    jr z, jr_000_3bd1

    ld a, $08
    add c
    ld l, a
    ld d, [hl]
    jr jr_000_3c46

jr_000_3bd1:
    ld a, [$deaf]
    bit 2, a
    jr z, jr_000_3bec

    ld b, $02
    call $045e
    ld a, b
    or a
    ret z

    ld a, $04
    add c
    ld l, a
    ld e, [hl]
    add $04
    ld l, a
    ld d, [hl]
    jp Jump_000_3cc5


jr_000_3bec:
    ld l, c
    ld b, [hl]
    ld a, $01
    add c
    ld l, a
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld e, a
    bit 7, b
    jr nz, jr_000_3c06

    ld a, [hl+]
    add [hl]
    ld [hl+], a

Call_000_3c00:
Jump_000_3c00:
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld d, a
    jr jr_000_3c46

jr_000_3c06:
    ld a, [$ccbb]
    or a
    jr z, jr_000_3c30

    ldh a, [$ff9b]
    ld e, a
    ld d, $00
    cp $d0
    jr c, jr_000_3c16

    dec d

jr_000_3c16:
    ld a, [$d711]
    add e
    ldh [$ff8a], a
    ld a, [$d712]
    adc d
    ldh [$ff8b], a
    push hl
    push bc
    call $0466
    pop bc
    pop hl
    ld a, [$cc98]
    or a
    ld e, a
    jr nz, jr_000_3c32

jr_000_3c30:
    ld e, $30

jr_000_3c32:
    ld d, $00
    ld a, [hl]
    add e
    ld [hl+], a
    ld b, a
    inc hl
    ld a, [hl]
    adc d
    ld [hl-], a

Jump_000_3c3c:
    ld a, b
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    ld [hl+], a
    ld d, a

Call_000_3c43:
    ldh a, [$ff9b]
    ld e, a

jr_000_3c46:
    ld a, e
    cp $e0
    jr nc, jr_000_3c50

    cp $c0
    jp nc, Jump_000_3d3d

jr_000_3c50:
    ld a, d
    cp $f0
    jr nc, jr_000_3c5a

    cp $90

Jump_000_3c57:
    jp nc, Jump_000_3d3d

Jump_000_3c5a:
jr_000_3c5a:
    ld a, e
    add $2d
    ldh [$ff93], a
    add $06
    ldh [$ff94], a

Call_000_3c63:
    ld a, d
    add $2d
    ldh [$ff95], a
    add $06
    ldh [$ff96], a
    ld a, [$d76d]
    bit 0, a
    jr nz, jr_000_3c8e

    ld a, [$df08]
    and $41
    jr nz, jr_000_3c8e

    call Call_000_1326
    jr nc, jr_000_3c8e

    ld hl, $d739
    ld a, [hl+]
    or [hl]
    ld h, $cd
    call z, Call_000_29f9
    ld h, $cd
    jp Jump_000_3d3d


jr_000_3c8e:
    ld h, $cd
    ld a, [$de9b]
    cp $09
    jr nz, jr_000_3cc5

    push de
    ld l, c
    push hl
    xor a
    ld [$cc47], a
    ld [$cc4a], a
    inc a
    ld [$cc46], a
    ldh a, [$ff93]
    sub $30
    ld c, a
    ldh a, [$ff94]
    sub $30
    ld e, a
    ldh a, [$ff95]
    sub $30
    ld b, a
    ldh a, [$ff96]
    sub $30
    ld d, a
    call Call_000_11ab
    pop hl
    ld c, l

Jump_000_3cbe:
    pop de
    jr z, jr_000_3cc5

    rst $08

Call_000_3cc2:
    dec d

Jump_000_3cc3:
    jr jr_000_3d3d

Jump_000_3cc5:
jr_000_3cc5:
    ld h, $cd
    ld a, $04
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9b], a
    ld a, $08
    add c
    ld l, a
    ld a, [hl]
    ldh [$ff9c], a
    ld a, [$deaf]
    bit 0, a
    jr z, jr_000_3cf5

    ldh a, [$ff9b]

Jump_000_3cde:
    ld [$dec9], a
    ldh a, [$ff9c]
    ld [$deca], a
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff94]
    ld l, a
    ldh a, [$ff95]
    ld d, a
    ldh a, [$ff96]
    ld h, a
    call $7c0d

jr_000_3cf5:
    ld a, $10
    ldh [$ffab], a
    ld a, [$de74]
    or a
    call nz, Call_000_3b2a
    ld h, $cd
    ld a, $09
    add c
    ld l, a
    ld b, [hl]
    ld l, c
    ld a, [$d76d]
    and [hl]
    and $7f
    jr z, jr_000_3d11

    inc b

jr_000_3d11:
    ld a, $0b
    add c
    ld l, a
    ld l, [hl]
    ld h, $d1
    ld l, [hl]
    dec h
    inc l
    ld a, [hl]
    ld h, $cf
    cp $fe
    jr z, jr_000_3d3a

    ld l, a
    ld e, [hl]
    ld d, $c0
    ld h, $cd
    ldh a, [$ff9c]
    add $0c
    ld [de], a
    inc e
    ldh a, [$ff9b]
    add $05
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    ldh a, [$ffab]
    inc e
    ld [de], a

jr_000_3d3a:
    ld b, $01
    ret


Jump_000_3d3d:
jr_000_3d3d:
    ld h, $cd
    ld b, $00
    ret


Call_000_3d42:
    ld hl, $3d59
    ld de, $cd0e
    ld a, e
    ld [$cd1a], a
    ld b, $0c

jr_000_3d4e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_3d4e

    xor a
    ld [$cd0d], a
    ret


    dec de
    dec hl
    dec sp
    ld c, e
    ld e, e
    ld l, e
    ld a, e
    adc e
    sbc e
    xor e
    cp e
    set 6, l
    ld a, $00
    ld [$cddb], a
    ld a, $03
    ld [$cddc], a
    pop af

Jump_000_3d71:
    ldh [$ff8a], a
    ld a, l
    ldh [$ff8e], a
    ld a, h
    ldh [$ff8f], a
    ld hl, $cde1
    ld a, [hl]
    ld [hl], $00
    ldh [$ff90], a
    ld hl, $cd0d
    ld a, [hl]
    cp $0c
    ccf
    ret c

    inc [hl]
    ld c, a
    ld a, b
    ldh [$ff8b], a
    push de
    push bc
    ld a, $01
    call Call_000_30c1
    ldh [$ff8c], a
    ld a, b
    ldh [$ff8d], a
    pop bc
    pop de
    ld h, $cd
    ld a, [$cd1a]
    ld l, a
    inc a
    ld [$cd1a], a
    ld a, [hl]
    ld [$cde2], a
    ld b, a
    ld l, c
    ld [hl], b
    ld l, b
    ld c, b
    ldh a, [$ff90]
    ld [hl], a
    inc l
    inc l
    ld [hl], $00
    inc l
    inc l
    ld [hl], e
    inc l
    inc l
    ld [hl], $00
    inc l
    inc l
    ld [hl], d
    push bc
    ld hl, $cddd
    ld a, [$cddb]
    ld e, a
    ld a, [$cddc]
    ld d, a
    ldh a, [$ff8a]
    inc a
    call Call_000_1d61
    pop bc
    ld h, $cd
    ld l, c
    inc l
    ld de, $cddd
    ld a, [de]
    inc de
    ld [hl+], a
    inc l
    ld a, [de]
    inc de
    ld [hl+], a
    inc l
    ld a, [de]
    inc de
    ld [hl+], a
    inc l
    ld a, [de]
    ld [hl+], a
    inc l
    ldh a, [$ff8b]
    ld [hl+], a
    ldh a, [$ff8e]
    ld [hl+], a
    ldh a, [$ff8c]
    ld [hl+], a
    or a
    ret


Call_000_3df4:
    ld hl, $cd0d
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    ld b, a
    ld l, $00

jr_000_3dff:
    ld a, [hl+]

Call_000_3e00:
    ld c, l
    push bc
    add $0b
    ld l, a
    ld a, [hl]
    call Call_000_30f7
    ld h, $cd
    pop bc
    ld l, c
    dec b
    jr nz, jr_000_3dff

    ret


Call_000_3e11:
    ld [$d85e], a
    ld e, [hl]
    inc hl
    ld a, [hl]
    or e
    ret z

    ld d, [hl]
    ld [hl], $00
    dec hl
    ld [hl], $00
    call Call_000_3ecd
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00

jr_000_3e2b:
    call Call_000_3e4a
    push af
    ld a, [$d85e]
    dec a
    jr z, jr_000_3e43

    ld a, [$c3c0]
    or a
    jr z, @+$07

    rst $08
    ld e, $cd
    ld d, c
    ld [$aecd], sp
    add hl, de

jr_000_3e43:
    pop af
    jr nc, jr_000_3e2b

    ret


    ld [$d85e], a

Call_000_3e4a:
    ld a, [$df00]
    push af
    ld a, [$df01]
    rst $20
    call $de70
    pop af
    rst $20
    call Call_000_3ecd
    xor a
    ld [$c3c0], a
    ld a, [$d85e]
    dec a
    jr z, jr_000_3e75

    ld a, $03
    add c
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_000_3e6e

    dec [hl]
    ret


jr_000_3e6e:
    ld [hl], $06
    ld a, $01
    ld [$c3c0], a

jr_000_3e75:
    ld a, $00
    add c
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    or e
    scf
    ret z

    ld a, [$df00]
    push af
    ld a, [$df01]
    rst $20
    ld a, $02
    add c
    ld l, a
    inc [hl]
    ld a, [de]
    cp [hl]
    jr c, jr_000_3ec2

    ldh [$ff8a], a
    inc de
    ld a, [de]
    ldh [$ff8b], a
    inc de
    ld a, [de]
    ldh [$ff8c], a
    ld a, [$d85e]
    cp $03
    jr nc, jr_000_3ea5

    ld a, [hl]
    jr jr_000_3ea9

jr_000_3ea5:
    ldh a, [$ff8a]
    sub [hl]
    inc a

jr_000_3ea9:
    ld b, a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    push af
    ldh a, [$ff8b]
    ld e, a
    ldh a, [$ff8c]
    add b
    dec a
    ld d, a
    pop af
    call Call_000_3a30
    pop af
    rst $20
    or a

Call_000_3ec1:
    ret


jr_000_3ec2:
    ld a, $00

Call_000_3ec4:
    add c
    ld l, a
    xor a

Call_000_3ec7:
    ld [hl+], a
    ld [hl], a
    pop af
    rst $20
    scf
    ret


Call_000_3ecd:
    ld a, [$d85e]
    dec a
    ld hl, $d85f
    jr z, jr_000_3edf

    dec a
    ld hl, $d863
    jr z, jr_000_3edf

    ld hl, $d867

jr_000_3edf:
    ld c, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3efc:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3fce:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fff:
    rst $38
