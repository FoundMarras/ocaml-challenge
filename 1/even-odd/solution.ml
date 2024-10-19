let is_even : int -> bool =
  fun n ->
     n mod 2 = 0
  ;;

let win : int -> int -> int =
  fun a b ->
    match (a,b) with
    | (x,y) when (x < 1 || x > 5) && (y < 1 || y > 5)-> 0
    | (x,y) when (x < 1 || x > 5)-> -1
    | (x,y) when (y < 1 || y > 5)-> 1
    | _-> if ((a + b) mod 2 = 0) then 1
    else -1
  ;;