;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define sunny #true)
(define friday #false)

(or (not sunny) friday) ;the value of this expression is false because the values of "not sunny" and "friday" are false.

; 4 combinations can be associate with sunny and friday which are as follows
; &sunny  &friday
; ..............
; true   true
; true   false
; false  true
; false  false