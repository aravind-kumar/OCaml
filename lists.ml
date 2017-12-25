
(*Lists are similar to tuples but can only hold data of the same type*)

(*However lists would have to be seperated by semicolonns*)
let list1 = [1;2;3;4];;

let list2 = ["Ab";"BC";"C";"D"];;

List.length list2;;

List.map list2 ~f:String.length;;
