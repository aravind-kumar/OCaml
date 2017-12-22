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

let rec pow base exp =
  if exp = 0 then 1
  else if exp = 1 then base
  else if ((exp mod 2) = 0) then
    pow (base*base) (exp/2)
  else base * pow(base*base) (exp/2);;

let rec pow2 base exp =
  match exp with
    0 -> 1
  | 1 -> base
  | exp when ((exp mod 2) = 0) ->
    pow2 (base*base) (exp/2)
  | _ -> base * pow2 (base*base) (exp/2);;
