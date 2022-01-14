;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise31) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;Create appropriate files, launch main, and check whether it delivers the
;expected letter in a given file.

(require 2htdp/batch-io)

(define (letter fst lst signature-name)
  (string-append (opening fst)
                 "\n\n"
                 (body fst lst)
                 "\n\n"
                 (closing signature-name)))

(define (opening fst)
  (string-append "Dear " fst ","))

(define (body fst lst)
  (string-append "We have discovered that all people with the" "\n"
                 "last name " lst " have won our lottery. So, " "\n"
                 fst ", " "hurry and pick up your prize."))

(define (closing signature-name)
(string-append "Sincerely,"
               "\n\n"
               signature-name
               "\n"))

(define (main in-fst in-scd in-signature out)
  (write-file out (letter (read-file in-fst)
                          (read-file in-scd)
                          (read-file in-signature))))

(write-file "first.txt" "Matthew")
(write-file "second.txt" "Fisler")
(write-file "signature.txt" "Felleisen")

(main "first.txt" "second.txt" "signature.txt" "out.txt")

(write-file 'stdout (string-append (read-file "out.txt") "\n"))