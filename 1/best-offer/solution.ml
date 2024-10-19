let best_offer : int option -> int option -> int option -> int option =
  fun o1 o2 o3 ->
    match (o1,o2,o3) with
    | (None,None,None) -> None
    | (None,Some x,Some y) | (Some x,Some y,None) | (Some x,None,Some y) -> Some (max x y)
    | (None,None,Some x) | (Some x,None,None) | (None,Some x,None) -> Some x
    | (Some x, Some y,Some z) -> if (x>y) 
      then Some (max x z)
      else Some (max y z)
  ;;


  assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

  assert(best_offer (Some 100) None (Some 150) = Some 150
  );;

  assert(best_offer None None None = None);;

  assert(best_offer None (Some 300) None = Some 300);;