(*With pattern matching*)

let rec sum2 arg1 =
  match arg1 with
    0 -> 0
  | _ -> arg1 + sum2 (arg1 - 1);;

let rec pow2 base exp =
  match exp with
    0 -> 1
  | 1 -> base
  | exp when ((exp mod 2) = 0) ->
    pow2 (base*base) (exp/2)
  | _ -> base * pow2 (base*base) (exp/2);;

let isvowel arg1 =
  match arg1 with
  'a' | 'e' | 'i' | 'o' | 'u' -> true
      | _ -> false;;

let isconsonant arg1 =
  not (isvowel arg1);;

