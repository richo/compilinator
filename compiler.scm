(define x86-prelude
"  .section	__TEXT,__text,regular,pure_instructions
	.globl	_scheme_entry
	.align	4, 0x90
_scheme_entry:
")

(define finale
".subsections_via_symbols")

(define emit printf)

(define (compile-program x)
    (emit x86-prelude)
    (emit "movl $~a, %eax~n" x)
    (emit "ret~n"))
