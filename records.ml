(* Type keyword is used to define new structs/records in ocaml*)
type point2d = {x:float; y:float};;

(*Here we have defined a record of type point2d which has 2 fields nameley x and y both of which are of type float*)

(*In order to create a record variable we do the following*)

let newPoint = {x=2.; y=3.};;

(*Note that we use the same notation as that of the record {} to declare a new object of the type*)
(* Semilcons are used to seperate fields*)

(*We can also use pattern matching to the filed values here*)

let distanceFromOrigin {x;y} = sqrt((x**2.) +. (y**2.));;

let newDistance = distanceFromOrigin {x=2.; y=3.};;

(*In method1 if we have the same name of arguments as that of field names then pattern matching would automaticall match them*)

(*Method 2 of pattern Matching*)

(*Say we want different names then we use the following method*)
let distanceFromOrigin2 {x=xCoord ; y=yCoord} = sqrt((xCoord**2.) +. (yCoord**2.));;

let newDistance2 = distanceFromOrigin2 {x=2.; y=3.};;


(*Method 3 for pattern matching*)

