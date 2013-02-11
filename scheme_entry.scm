(require "./compiler")
(include "./constants.inc")

(define (compile-function name code)
  (emit "_~a:~n" name)
  (compile-program code))

(emit x86-prelude "_return_char,_return_int")
(compile-function "return_char" #\f)
(compile-function "return_int" 42)
(emit finale)
