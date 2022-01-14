;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise36) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;;Exercise 36. Design the function image-area, which counts the number
;;of pixels in a given image.

;; Image -> Natural
;; computes the area of the given image or in other words the number of the pixels in the given image

(check-expect (image-area (rectangle 40 20 "outline" "black")) 800)

;(define (image-area img) 0) ;stub
;(define (image-area img) ;template
;  (... img))

(define (image-area img)
  (* (image-width img) (image-height img)))