GCC_OPTS = -m32
.PHONY: clean

all: main

constants.inc: constants.in
	./mk_constants constants.in constants.inc

main: scheme_entry.so constants.inc scheme_entry.c
	gcc ${GCC_OPTS} -Wall scheme_entry.c scheme_entry.so -o main

scheme_entry.so: scheme_entry.s
	gcc ${GCC_OPTS} -shared -fPIC -o scheme_entry.so -m32 scheme_entry.s

scheme_entry.s: scheme_entry.scm compiler.scm constants.inc
	csi -s scheme_entry.scm > scheme_entry.s

clean:
	rm -f scheme_entry.so scheme_entry.s main
