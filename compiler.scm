(define x86-prelude
"  .section	__TEXT,__text,regular,pure_instructions
	.globl	~a
	.align	4, 0x90
")

(define finale
".subsections_via_symbols")

(define emit printf)

(define (char->immediaterep x)
  (bitwise-ior (arithmetic-shift (char->integer x) char_shift) char_tag))


(define immediate-rep
  (lambda (x)
    (cond
      ((integer? x)
       (arithmetic-shift x fixnum_shift))
      ((char? x)
       (char->immediaterep x))
      ((and (string? x) (eq? (string-length x) 1))
       (char->immediaterep (char->integer (string-ref x 0))))
       )))

(define (compile-program x)
    (emit "movl $~a, %eax~n" (immediate-rep x))
    (emit "ret~n"))
