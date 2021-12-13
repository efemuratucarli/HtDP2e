;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;Add the following line to the definitions area of DrRacket:
;(define in ...)
;Then create an expression that converts the value of in to a positive number.
;For a String, it determines how long the String is; for an Image, it uses
;the area; for a Number, it decrements the number by 1, unless it is already
;0 or negative; for #true it uses 10 and for #false 20.

(define in #true)
(if (string? in) (string-length in)
    (if (image? in) (* (image-width in) (image-height in))
        (if (and (number? in) (> in 0)) (- in 1)
            (if (number? in) in
                (if (boolean? in)
                    (if (false? in) 20 10)
                "the type of the value of the in is not appropriate for this exercise")))))