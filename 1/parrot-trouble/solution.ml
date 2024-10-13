let parrot_trouble (p:bool) (h:int) : bool option =
  if (h<0 || h>23)
    then None
  else (
    if (p && (h < 7 || h > 20))
      then Some true
    else Some false
  )
;;

assert(parrot_trouble true 8 = Some false);;
assert(parrot_trouble true 2 = Some true);;
assert(parrot_trouble true (-3) = None);;
