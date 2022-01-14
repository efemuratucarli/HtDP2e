;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;Exercise 30. Define constants for the price optimization program at the
;movie theater so that the price sensitivity of attendance (15 people for every
;10 cents) becomes a computed constant.

(define BASE_PRICE 5.0)
(define BASE_ATTENDEES 120)
(define BASE_PRICE_CHANGE 0.1)
(define BASE_ATTENDEES_CHANGE 15)
(define FIXED_COSTS 180)
(define VARIABLE_COST 0.04)
(define PRICE_SENSITIVITY (/ BASE_ATTENDEES_CHANGE BASE_PRICE_CHANGE)) ;number of change in the attendees per unit price change.

(define (attendees ticket-price)
  (- BASE_ATTENDEES (* (- ticket-price BASE_PRICE) PRICE_SENSITIVITY)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED_COSTS (* VARIABLE_COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))