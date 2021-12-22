;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise28) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 28. Determine the potential profit for these ticket prices: $1,
;$2, $3, $4, and $5. Which price maximizes the profit of the movie theater?
;Determine the best ticket price to a dime.

(define BASE_PRICE 5.0)
(define BASE_ATTENDEES 120)
(define BASE_PRICE_CHANGE 0.1)
(define BASE_ATTENDEES_CHANGE 15)
(define FIXED_COSTS 180)
(define VARIABLE_COST 0.04)

(define (attendees ticket-price)
  (- BASE_ATTENDEES (* (- ticket-price BASE_PRICE) (/ BASE_ATTENDEES_CHANGE BASE_PRICE_CHANGE))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED_COSTS (* VARIABLE_COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1) ;the profit becomes 511.2
(profit 2) ;the profit becomes 937.2
(profit 3) ;the profit becomes 1063.2
(profit 4) ;the profit becomes 889.2
(profit 5) ;the profit becomes 415.2

; $3 is the best price for maximizing the profit of the movie theater.