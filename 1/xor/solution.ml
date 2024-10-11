(*
XOR:
  false false -> false
  false true -> true 
  true false -> true
  true true -> false
  *)

let xor1 : bool -> bool -> bool =
  fun a b ->
    
    (not a && b) || (a && not b) 
;;


let xor2 : bool -> bool -> bool =
  fun a b ->
    if a
      then(
        if b 
          then false
        else true
      )
        else(
          if b
            then true
          else false
        )
;;

let xor3 : bool -> bool -> bool =
  fun a b ->
    match (a,b) with
    | (false,true) -> true
    | (true,false) -> true
    | _ -> false
  ;;