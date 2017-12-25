(* Type keyword is used to define new structs/records in ocaml*)
type point2d = {x:float; y:float};;

(*Here we have defined a record of type point2d which has 2 fields namley x and y both of which are of type float*)

(*In order to create a record variable we do the following*)

let newPoint = {x=2.; y=3.};;

(*Note that we use the same notation as that of the record {} to declare a new object of the type*)
(* Semilcons are used to seperate fields*)
