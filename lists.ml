
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



(*Pattern matching with Lists in OCAML*)


let getFirst givenList =
  match givenList with
    first::rest -> first
  |
    _ -> "Invalid list" ;;

getFirst list4;;


(*Here we are using pattern matching to segrate the first and the rest of the list the first element is names as first and the rest are named as rest *)


let getSecond givenList =
  match givenList with
    first::second::rest -> second
  | [] -> "Empty list"
  | [first] -> first;;
 

getSecond list4;;

(*Here we are using pattern matching to get the second element of the list which is named as second*)

let rec getKthElement1 k list =
  match list with
    [] -> None
  | h::t -> if k=1 then Some h else getKthElement1 (k-1) t;;

let rec getKthElement2 k = function
  | [] -> None
  | h::t -> if k=1 then Some h else getKthElement2 (k-1) t;;

let rec getKthElement = function
  | [],_ -> None
  | _, n when n < 0 -> raise (Invalid_argument "get_nth")
  | h::_,0 -> Some h
  | h::t,k -> getKthElement(t,(k-1));;

let getLength list =
  let rec getLenghtRec k list =
    match list with
      [] -> k
    | h::t -> getLenghtRec (k+1) t
  in getLenghtRec 0 list;;

getLength [1;2;3;4];;


let reverseList list =
  let rec reverseListRec outList inList =
    match inList with
      [] -> outList
    | h::t -> reverseListRec (h::outList) t
  in reverseListRec [] list;;


reverseList [1;2;3;4];;


let isPalindrome list =
  let reverse = reverseList list in reverse = list;;

isPalindrome [1;1];;

let rec compressRec list =
    match list with
     first::second::rest ->
      if first = second
      then compressRec (second::rest)
      else [first] @ compressRec (second::rest)
      | [first] -> [first]
      |  [] -> [] ;;


let rec duplicate list =
  match list with
    [] -> []
  |
    first::rest -> (first::[first]) @ duplicate rest;;
