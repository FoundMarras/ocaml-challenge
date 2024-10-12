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


let mux4 (s0:bool) (s1:bool) (a0:bool) (a1:bool) (a2:bool) (a3:bool): bool =
  match (s0,s1) with
  | (false,false) -> a0
  | (false,true) -> a1
  | (true,false) -> a2
  | (true,true) -> a3
;;

let mux4R (s0:bool) (s1:bool) (a0:bool) (a1:bool) (a2:bool) (a3:bool): bool =
  if (mux2C s0 true false)
    then mux2C s1 a3 a2
    else mux2C s1 a1 a0
;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;

assert(mux4R false false false true false true = false);;
assert(mux4R false true false true false true = true);;
assert(mux4R true false false true false true = false);;
assert(mux4R true true false true false true = true);;