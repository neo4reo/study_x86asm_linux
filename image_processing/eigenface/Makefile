ASSEMBLER = nasm
LINKER    = ld
FORMAT    = elf32
MACHINE   = elf_i386
_START    = eigenface.asm
BIN       = eigenface
OBJ       = build/eigenface.o \
            build/loadpgm.o

LOADPGM = \
  "../../../lib80386/src/imageprocessing/loadpgm/src/loadpgm.asm"


.PHONY: all clean
all:
	@${ASSEMBLER} \
		${_START} \
		-o build/eigenface.o \
		-f ${FORMAT} \
		-g -Fstabs

	@${ASSEMBLER} \
		${LOADPGM} \
		-o build/loadpgm.o \
		-f ${FORMAT} \
		-g -Fstabs

	@${LINKER} \
		${OBJ} \
		-o ${BIN} \
		-m ${MACHINE}

clean:
	@rm \
		${OBJ}
