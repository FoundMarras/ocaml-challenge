let nand1 (a: bool) (b: bool) : bool = not(a && b);;

let nand2 (a: bool) (b: bool) : bool = 
    if a 
        then (* a is true*)
            (if b 
                then false(*b is true*)
            else true(*b is false*))
    else true (* a is false*)
;;

let nand3 (a: bool) (b: bool) : bool =
    match (a,b) with
    | (true,true) -> false
    | _ -> true
;;
