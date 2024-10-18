type season = Spring | Summer | Autumn | Winter

let squirrel_play: int -> season -> bool =
  fun t s->
    match (s,t) with
    | (Summer,t) when (t >= 15 && t <= 35) -> true
    | (_,t) when (t >= 15 && t <= 30) -> true
    | _-> false
  ;;

  assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;