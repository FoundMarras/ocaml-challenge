let in_range : 'a -> 'a -> 'a -> bool =
  fun x a b ->
    if(x >= a && x <= b) then true
    else false
  ;;