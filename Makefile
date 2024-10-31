$(CC) = gcc
$(CFLAGS) = -Wall
$(SRC) = main.c math/src/math.c io/src/io.c utils/src/utils.c 
$(BUILD_DIR) = build*
$(EXTRA) = 0
$(OPTIMIZE) = 0


compile:
	ifeq($(EXTRA),1)
		SRC += extra/src/extra.c
		$(CC) $(SRC) 
	else ifeq($(OPTIMIZE),1)
		CFLAGS += -O2
		$(CC) $(SRC)
	else
		$(CC) *.c

clean:
	rm -f *.o

help:
	@echo "
    If EXTRA=1 is specified:
        The executable and object files should be placed in a directory named build1.
        An additional file (extra.c) should be compiled, adding extra functionality to the project.

    If OPTIMIZE=1 is specified:
        The -O2 optimization flag should be added, and files should be compiled into build2.

    If no flags are provided:
        The files should be compiled into a default build directory with standard settings.
"
.PHONY: compile clean help
