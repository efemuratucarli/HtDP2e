;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise23) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 23. The first 1String in "hello world" is "h". How does the
;following function compute this result?
;(define (string-first s)
;(substring s 0 1))

(define (string-first s)
  (substring s 0 1))

(string-first "hello world")
;Since the argument is already a value, the processor immediately replaces the function call
;by body of the function in which every occurence of the parameter is replaced by the argument "hello world".
(substring "hello world" 0 1)
;Then the primitive operation is evaluated by the processor. The output of the expression is "h" .
"h"