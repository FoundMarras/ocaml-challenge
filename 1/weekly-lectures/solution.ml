type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (d:weekday) (c:course) : bool =
  match (d,c) with
  | (Tu,ALF)| (Th,ALF) | (Fr,ALF) -> true 
  | (We,LIP) | (Th,LIP) -> true 
  | _-> false
;;

assert(isLecture Tu LIP = false);
assert(isLecture Th LIP = true);
assert(isLecture Tu ALF = true);
assert(isLecture Fr ALF = true);