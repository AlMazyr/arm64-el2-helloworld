
SOURCE := source
INCLUDE := include
DIR_OUT := out
OUT := out.elf
LINKER_SCRIPT := linker.ld
CROSS_COMPILE := aarch64-elf-


CC := ${CROSS_COMPILE}gcc
AS := ${CROSS_COMPILE}gcc
LD := ${CROSS_COMPILE}ld


CC_FLAGS := -I$(INCLUDE) -g -O1
AS_FLAGS := -I$(INCLUDE) -g -O1
LD_FLAGS := -T $(LINKER_SCRIPT)


C_SOURCES	:= $(wildcard ${SOURCE}/*.c)
ASM_SOURCES	:= $(wildcard ${SOURCE}/*.S)
C_OBJECTS	:= $(C_SOURCES:${SOURCE}/%.c=${DIR_OUT}/%.o)
ASM_OBJECTS	:= $(ASM_SOURCES:${SOURCE}/%.S=${DIR_OUT}/%.o)
OBJECTS		:= $(C_OBJECTS) $(ASM_OBJECTS)


.PHONY: all clean rebuild

all: ${DIR_OUT} ${OUT}

${DIR_OUT}:
	@mkdir -p $@

clean:
	@rm -rf ${DIR_OUT}
	@rm -f ${OUT}

rebuild: clean all

${DIR_OUT}/%.o: ${SOURCE}/%.c
	$(CC) $(CC_FLAGS) -c $< -o $@

${DIR_OUT}/%.o: ${SOURCE}/%.S
	$(AS) $(AS_FLAGS) -c $< -o $@

${OUT}: ${OBJECTS} ${LINKER_SCRIPT}
	${LD} $^ -o $@ ${LD_FLAGS}
