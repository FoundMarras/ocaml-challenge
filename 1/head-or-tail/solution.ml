let hot : unit -> string =
  fun () ->
    if (Random.bool ()) then "Head" else "Tail"
  ;;