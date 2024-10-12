let absoluteValue  (a:int) : int =
  if a < 0
    then -(a)
else a
;;

assert(absoluteValue (-5) = 5);;
assert(absoluteValue 4 = 4);;