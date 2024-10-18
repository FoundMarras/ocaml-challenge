type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam : vote -> vote -> vote -> bool =
  fun v1 v2 v3 ->
    match (v1,v2,v3) with
    | (StrongReject,_,_) | (_,StrongReject,_) |(_,_,StrongReject) -> false
    | (WeakReject,WeakReject,_) | (_,WeakReject,WeakReject) | (WeakReject,_,WeakReject) -> false
    | _-> true
  ;;