;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise35) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Exercise 35. Design the function string-last, which extracts the last
;;character from a non-empty string.

;; String -> String
;; produces the last character from the given string

(check-expect (string-last "test") "t")

;(define (string-last str) "a") ;stub
;(define (string-last str) ;template
; (... str))

(define (string-last str)
  (substring str (- (string-length str) 1)))