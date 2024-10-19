let movie_rating : int -> int -> int -> string =
  fun c1 c2 c3 ->
    if (c1 < 1 || c1 > 5 || c2 < 1 || c2 > 5 || c3 < 1 || c3 > 5)
      then failwith("Voto fuori range")
  else
    match(c1,c2,c3) with
    | (5,5,5) -> "Masterpiece"
    | (5,5,4) | (5,4,5) | (4,5,5) -> "Higly Recommended"
    | (x,y,z) | (y,z,x) | (z,x,y) when (x >= 4 && y >=4 && z >= 3) -> "Recommended"
    | _-> "Mixed Reviews"
  ;;