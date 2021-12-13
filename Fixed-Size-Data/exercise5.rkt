;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(place-images(list
(rotate 90(right-triangle 50 50 "outline" "blue"))
(rotate 90(right-triangle 50 50  "outline" "blue"))
(square 50 "outline" "blue")(square 30 "outline" "blue")
(rotate 180(triangle 60 "solid" "aquamarine"))(triangle 60 "solid" "aquamarine")
(rotate 180(triangle 60 "solid" "aquamarine"))(triangle 60 "solid" "aquamarine")
(rotate 180(triangle 60 "solid" "aquamarine")))
(list(make-posn 103 70)(make-posn 53 120)
     (make-posn 103 120)(make-posn 103 160)
     (make-posn 40 200)(make-posn 70 200)
     (make-posn 100 200)(make-posn 130 200)
     (make-posn 160 200))(empty-scene 200 250))