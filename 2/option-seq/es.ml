let (<*>) (f : ' option) (a : ' option) =
	match f,a with
	| None,_ -> None
	| _,None -> None
	| _ -> Some (f a)
;; 