let square : int -> int =
  fun a-> 
    a*a
  ;;

let exp9: int -> int =
  fun a ->
    square(square(square a))*a
  ;;