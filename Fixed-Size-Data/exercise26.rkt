;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise26) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 26. What do you expect as the value of this program:
;(define (string-insert s i)
;(string-append (substring s 0 i)
;"_"
;(substring s i)))
;(string-insert "helloworld" 6)
;Confirm your expectation with DrRacket and its stepper

(define (string-insert s i)
  (string-append (substring s 0 i)
                 "_"
                 (substring s i)))

(string-insert "helloworld" 6)

;Firstly, the processor replaces the function call
;by the body of the function with the corresponding arguments.
(string-append (substring "helloworld" 0 6)
               "_"
               (substring "helloworld" 6))

;Then the operands are reduced to values
(string-append "hellow"
               "_"
               "orld")

;Finally, the primitive operation is evaluated by the processor.
"hellow_orld"