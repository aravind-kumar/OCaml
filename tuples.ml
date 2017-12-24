
(*Tuples let you combine different items together*)
let first_tuple = (3,"three");;

let (x,y) = first_tuple in (x*x);;

(*Tuple are obtained using pattern matching *)
let distance (x1,y1) (x2,y2) =
  sqrt(
      ((x1 -. x2)**2.) +.
      ((y1 -. y2)**2.));;

let values = distance (2.,3.) (3.,4.);;


