#lang racket/base
(require racket/match)
(require racket/function)
(provide
  todo
  define
  lambda
  match
  define/match
  let let*
  if
  cond
  case
  list list*
  < > = <= >=
  even? odd?
  sin cos tan abs expt
  remainder modulo
  + * - /
  sub1 add1
  eqv? eq? equal?
  car cdr cadr cdar
  cons
  null?
  curry curryr
  quote
  #%app
  #%module-begin
  #%top-interaction
  #%datum)

(define-struct (exn:fail:not-implemented exn:fail) ())

(define-syntax-rule (todo)
  (raise (make-exn:fail:not-implemented
           (string-append
             "Not implemented: "
             (symbol->string (caar
                               (continuation-mark-set->context
                                 (current-continuation-marks)))))
           (current-continuation-marks))))
