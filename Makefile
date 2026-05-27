RGBASM ?= ../rgbasm.exe
RGBLINK ?= ../rgblink.exe
RGBFIX ?= ../rgbfix.exe
RGBGFX ?= ../rgbgfx.exe

all: game.gb

GFX_DEPS := gfx/mkii_icon.2bpp

%.2bpp: %.png
	$(RGBGFX) --colors embedded -o $@ $<

%.1bpp: %.png
	$(RGBGFX) -d 1 -o $@ $<

game.o: game.asm bank_*.asm $(GFX_DEPS)
	$(RGBASM) -o game.o game.asm

game.gb: game.o
	$(RGBLINK) -n game.sym -m game.map -o $@ $<
	$(RGBFIX) -v -p 255 $@

	@if command -v md5sum >/dev/null 2>&1; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gb game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
