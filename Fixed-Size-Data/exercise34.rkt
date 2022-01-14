;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise34) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Exercise 34. Design the function string-first, which extracts the
;;first character from a non-empty string. Don’t worry about empty strings.

;; String -> String
;; produces the first character from a given string

(check-expect (string-first "test") "t")

;(define (string-first str) "a") ;stub
;(define (string-first str) ;template
;  (... str))

(define (string-first str)
  (substring str 0 1))