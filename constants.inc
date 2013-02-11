;;/*
;;// Scheme code in here

(define fixnum_mask    3)
(define fixnum_tag     0)
(define fixnum_shift   2)

(define char_mask     15)
(define char_tag      15)
(define char_shift     8)

(define bool_tag      31)
(define bool_mask     31)
(define char_shift     8)

(define null_list_tag  45)
(define null_list_mask 45)


#|
;;*/
;;//C Code goes in here

#define fixnum_mask    3
#define fixnum_tag     0
#define fixnum_shift   2

#define char_mask     15
#define char_tag      15
#define char_shift     8

#define bool_tag      31
#define bool_mask     31
#define bool_shift     8

#define null_list_tag  45
#define null_list_mask 45

;;/*
|#
;;*/
