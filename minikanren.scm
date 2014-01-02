(module minikanren

  (==
   =/=
   absento
   bind
   conde
   empty-c
   fresh
   numbero
   run
   run*
   symbolo
   var)

  (import chicken scheme)

  (require-library data-structures
                   ports
                   srfi-1)

  (import (rename data-structures
                  (sort sort-sequence-less?))
          (rename ports
                  (call-with-output-string
                   call-with-string-output-port))
          (rename srfi-1
                  (any exists)
                  (remove remp)))

  (define (sort less? sequence) (sort-sequence-less? sequence less?))

  (include "mk.scm"))
