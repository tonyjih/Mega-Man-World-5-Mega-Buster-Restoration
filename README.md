# Mega Man World 5: Mega Buster Restoration

Restores the hidden Mega Buster system in *Mega Man World 5* and lets players switch between the Mega Arm and Mega Buster from the pause menu.

## Overview

In the final game, Mega Man normally uses the Mega Arm as his default weapon. However, the ROM still contains unused code, projectile behavior, graphics loading routines, and sound effects for a more traditional Mega Buster.

This project reconnects that hidden functionality and makes it usable during normal gameplay. The restored Mega Buster is not a recreation from scratch; it is based on code and data already present in the game.

## Features

- Restores the unused Mega Buster as a playable main weapon
- Keeps the original Mega Arm fully usable
- Press SELECT on the pause screen to toggle between Mega Arm and Mega Buster
- Loads the correct Mega Buster projectile graphics
- Uses separate switching sound effects for each mode
- Gives the Mega Buster its own behavior, including recoil and very fast charging
- Designed to feel like a restored hidden feature rather than a cheat

## Controls

1. Open the pause menu.
2. Press SELECT to switch the main weapon mode.
3. Resume gameplay.

## Weapon Modes

- **Mega Arm**: the original default weapon.
- **Mega Buster**: the restored hidden buster mode.

## Building

This project is built with [RGBDS](https://rgbds.gbdev.io/).

Make sure `rgbasm`, `rgblink`, and `rgbfix` are available in your `PATH`, then run:

```sh
make
```

The build output is:

```text
game.gb
```

Generated build files such as `game.gb`, `game.o`, `game.map`, and `game.sym` should not be distributed as source.

## Technical Notes

The restored weapon mode is controlled through an existing flag byte:

```text
$def6 bit 7 = 0: Mega Arm
$def6 bit 7 = 1: Mega Buster
```

The pause menu SELECT hook toggles this bit, requests a weapon graphics reload, and queues a mode-specific sound effect:

```text
Mega Buster switch sound: $0D
Mega Arm switch sound:    $0F
```

The Mega Buster projectile graphics are loaded through the existing graphics loader that copies the hidden buster graphics into VRAM at `$86A0`.

The projectile behavior is connected by changing the hidden buster path from a scene-specific check to the same `$def6 bit 7` mode flag.

Some behavior differs from *Mega Man IV* / *Rockman World 4*, suggesting this may have been an early or experimental *Mega Man World 5* version of the buster before the Mega Arm became the final default weapon.

## Repository Notes

This repository is based on an RGBDS-compatible disassembly generated with [mgbdis](https://github.com/mattcurrie/mgbdis).

The most relevant modified areas are:

- `game.asm`: symbolic names for the restored buster state
- `bank_001.asm`: pause menu SELECT toggle hook
- `bank_004.asm`: Mega Buster projectile graphics loading
- `bank_006.asm`: restored Mega Buster projectile behavior

## Legal

This project is for research, preservation, and ROM hacking documentation.

Do not distribute copyrighted ROM images. Distribute only patches or source changes.

Mega Man is owned by Capcom. This project is an unofficial fan work and is not affiliated with or endorsed by Capcom.

## Credits

- Original game by Capcom
- Disassembly generated with [mgbdis](https://github.com/mattcurrie/mgbdis)
- Assembly tooling by [RGBDS](https://rgbds.gbdev.io/)
- Reverse engineering and restoration work by this project's contributors
