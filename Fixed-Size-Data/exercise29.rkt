;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise29) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 29. After studying the costs of a show, the owner discovered
;several ways of lowering the cost. As a result of these improvements, there
;is no longer a fixed cost; a variable cost of $1.50 per attendee remains.
;Modify both programs to reflect this change. When the programs are
;modified, test them again with ticket prices of $3, $4, and $5 and compare
;the results.

(define BASE_PRICE 5.0)
(define BASE_ATTENDEES 120)
(define BASE_PRICE_CHANGE 0.1)
(define BASE_ATTENDEES_CHANGE 15)
(define VARIABLE_COST 1.5)

(define (attendees ticket-price)
  (- BASE_ATTENDEES (* (- ticket-price BASE_PRICE) (/ BASE_ATTENDEES_CHANGE BASE_PRICE_CHANGE))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* VARIABLE_COST (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (profit.v2 price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (* 1.5
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price))))))

(profit 3) ;the profit becomes $630
(profit 4) ;the profit becomes $675
(profit 5) ;the profit becomes $420

(profit.v2 3) ;the profit becomes $630
(profit.v2 4) ;the profit becomes $675
(profit.v2 5) ;the profit becomes $420

;$4 is the best price for maximizing profit of the movie theater.