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

let is_negative2 arg = arg<0;;

let is_vowel c =
  c='a' || c='e' || c='i' || c='o' || c='u' ;;

(*Similar to writing the is_negative2 just return the same function*)


(*Function which takes 2 arguments*)

let addtoten arg1 arg2 = arg1 + arg2 + 10;;

(*( ) are to placed on those which are functions*)


(* Recursice function has the rec keyword*)

let rec fact arg =
  if (arg = 1)
  then 1
  else arg * fact(arg -1);;

(*Instead of if else statements we can also use pattern matching *)

(*Syntax is match arg with case 1 | case2 the special symbol _ means anything else *)
let rec fact2 arg =
  match arg with
    1-> 1
  | _ -> arg * fact(arg - 1);;
