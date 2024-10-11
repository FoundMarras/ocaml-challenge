let mux2L (s0:bool) (a:bool) (b:bool) : bool =
    (s0 && a) || (not s0 && b)

;;

(*
s0 a bo
0 0 0    0
0 0 1    1
0 1 0    0
0 1 1    1
1 0 0    0
1 0 1    0
1 1 0    1
1 1 1    1
*)

let mux2C (s0:bool) (a:bool) (b:bool) : bool =
  if s0
    then a
else b
;;

let mux2P (s0:bool) (a:bool) (b:bool) : bool =
  match (s0) with
  | (true) -> a
  | (false) -> b
;;


