
(*Lists are similar to tuples but can only hold data of the same type*)

(*However lists would have to be seperated by semicolonns*)
let list1 = [1;2;3;4];;

let list2 = ["Ab";"BC";"C";"D"];;

List.length list2;;

List.map list2 ~f:String.length;;

(*:: operator is similar to cons operator used for appending*)

let list3 = "ABC" :: list2;;

(*@ operator is used to append two lists time proposnal to the lenght of the first list*)

let list4 = list3 @ list2;;
