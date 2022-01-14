;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise37) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 37. Design the function string-rest, which produces a
;; string like the given one with the first character removed.

;; String -> String
;; Produces a string which is the given one with the first character removed.
(check-expect (string-rest "test") "est")
(check-expect (string-rest "") "")

;(define (string-rest str) "a") ;stub
;(define (string-rest str) ;template
;  (... str))

(define (string-rest str)
  (if (= (string-length str) 0)
      ""
      (substring str 1)))