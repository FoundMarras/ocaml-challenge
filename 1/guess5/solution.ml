let guess5 : int -> bool * int =
  fun n ->
    if (n >= 1 && n <= 5)
      then 
        (let r = Random.int(n)+1 in
        if (r = n) then (true,r)
        else (false,r))
      else failwith ("Numero fuori dal range");
  ;;