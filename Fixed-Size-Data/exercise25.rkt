;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise25) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;Exercise 25. Take a look at this attempt to solve exercise 17:
;(define (image-classify img)
;(cond
;[(>= (image-height img) (image-width img)) "tall"]
;[(= (image-height img) (image-width img)) "square"]
;[(<= (image-height img) (image-width img)) "wide"]))
;Does stepping through an application suggest a fix?

(define (image-classify img)
  (cond
    [(> (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(< (image-height img) (image-width img)) "wide"]))

;In order to determine the square type, the first question-expression should be > , and the third
;question-expression should be < .

; Application
(image-classify (rectangle 20 20 "solid" "blue"))  