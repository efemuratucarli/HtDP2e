;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise38) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Exercise 38. Design the function string-remove-last, which produces
;;a string like the given one with the last character removed.

;; String -> String
;; Produces the given string with the last character removed.
(check-expect (string-remove-last "test") "tes")
(check-expect (string-remove-last "") "")

;(define (string-remove-last str) "a") ;stub
;(define (string-remove-last str) ;template
;  (... str))

(define (string-remove-last str)
  (if (= (string-length str) 0)
      ""
      (substring str 0 (- (string-length str) 1))))