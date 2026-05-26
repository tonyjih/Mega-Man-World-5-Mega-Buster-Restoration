; Disassembly of "MMV.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "hardware.inc"

DEF wPlayerShotAnimType EQU $c2bc
DEF wBusterChargeMinThreshold EQU $c2ef
DEF wBusterChargeFullThreshold EQU $c2f0
DEF wReleasedChargeCounter EQU $ccc6
DEF wPlayerIdleShotTimer EQU $d704
DEF wBusterChargeCounter EQU $d75c
DEF wBusterChargeFlashTimer EQU $d75d
DEF wBusterChargePaletteSfxTimer EQU $d763
DEF wPauseWeaponMenuForceReload EQU $d1f2
DEF wJoypadPressed EQU $de92
DEF wMenuInputPressedRepeat EQU $de95
DEF wPrimaryWeaponModeFlags EQU $def6
DEF wBusterUpgradeLevel EQU $df33

DEF PRIMARY_WEAPON_ROCK_BUSTER_F EQU 7

DEF BusterChargeThresholdPointerTable EQU $513f
DEF BusterShotParams_Unupgraded EQU $5147
DEF BusterShotParams_Upgrade1 EQU $515d
DEF BusterShotParams_Upgrade2 EQU $5173
DEF BusterChargePaletteCycleLow EQU $521e
DEF BusterChargePaletteCycleHigh EQU $5222
DEF ChargedBusterBaseAnim EQU $55ae
DEF ChargedBusterShotAnim EQU $55cf

INCLUDE "bank_000.asm"
INCLUDE "bank_001.asm"
INCLUDE "bank_002.asm"
INCLUDE "bank_003.asm"
INCLUDE "bank_004.asm"
INCLUDE "bank_005.asm"
INCLUDE "bank_006.asm"
INCLUDE "bank_007.asm"
INCLUDE "bank_008.asm"
INCLUDE "bank_009.asm"
INCLUDE "bank_00a.asm"
INCLUDE "bank_00b.asm"
INCLUDE "bank_00c.asm"
INCLUDE "bank_00d.asm"
INCLUDE "bank_00e.asm"
INCLUDE "bank_00f.asm"
INCLUDE "bank_010.asm"
INCLUDE "bank_011.asm"
INCLUDE "bank_012.asm"
INCLUDE "bank_013.asm"
INCLUDE "bank_014.asm"
INCLUDE "bank_015.asm"
INCLUDE "bank_016.asm"
INCLUDE "bank_017.asm"
INCLUDE "bank_018.asm"
INCLUDE "bank_019.asm"
INCLUDE "bank_01a.asm"
INCLUDE "bank_01b.asm"
INCLUDE "bank_01c.asm"
INCLUDE "bank_01d.asm"
INCLUDE "bank_01e.asm"
INCLUDE "bank_01f.asm"
