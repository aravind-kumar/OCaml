(*Write a function to multiply by 10*)

let multiplyBy10 arg1 = arg1*10;;

let bothNonZero arg1 arg2 = arg1<>0 && arg2<>0;;


let rec sum arg1 =
  if arg1 = 0 then 0
  else arg1 + sum (arg1 - 1);;

(*With pattern matching*)

let rec sum2 arg1 =
  match arg1 with
    0 -> 0
  | _ -> arg1 + sum2 (arg1 - 1);;
