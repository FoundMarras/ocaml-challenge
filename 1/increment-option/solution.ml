let incr_opt : int option -> int option =
fun a ->
  match a with
  | (Some a) -> Some (a+1)
  | (None) -> None
;;

assert(incr_opt (Some 5) = Some 6);;
assert(incr_opt None = None);;
