GCC_OPTS = -m32
.PHONY: clean

all: main


main: scheme_entry.so
	gcc ${GCC_OPTS} -Wall scheme_entry.c scheme_entry.so -o main

scheme_entry.so: scheme_entry.s
	gcc ${GCC_OPTS} -shared -fPIC -o scheme_entry.so -m32 scheme_entry.s

scheme_entry.s: scheme_entry.scm
	csi -s scheme_entry.scm > scheme_entry.s

clean:
	rm -f scheme_entry.so scheme_entry.s main