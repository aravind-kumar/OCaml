let x = 200 in x*x*x;; (* = 8000 x takes value as 200 its scope in restricted to the in statement*)

let a = 100 in (let b = 2*a in a+b);;
(*This is similar to writing a=100 b=2*1a and print a+b*)

(*Cube function*)
let cube arg = arg*arg*arg;;

cube 2;;

(*Similar to variable declaration but takes an extra argument and then defines the function in terms of its argument*)

(*functions in ocaml needs one argument if no argument is provided we write it with ()*)

let hello_world () = Printf.printf "Hello World";;

hello_world ();;

(*Fuction to check if a number is negative*)

let is_negative arg = if arg < 0
  then true
  else false;;
