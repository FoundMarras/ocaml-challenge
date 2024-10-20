type card = Joker | Val of int;;

(* pc -> player card dc -> dealer card*)

let win : card -> card -> bool =
  fun pc dc ->
    match pc,dc with
    | (Joker,Joker) -> false
    | (Joker,Val dc) -> true
    | (Val pc,Joker) -> false
    | (Val pc,Val dc) -> if (pc >= 1 && pc <= 10) && (dc >= 1 && dc <= 10)
        then pc > dc
        else failwith("Valore carta non valido")
  ;;

assert(win Joker Joker = false);;
assert(win Joker (Val 10) = true);;
assert(win (Val 10) Joker = false);;
assert(win (Val 10) (Val 2) = true);;
assert(win (Val 4) (Val 9) = false);;
