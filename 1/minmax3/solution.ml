let minmax3 : 'a -> 'a -> 'a -> 'a * 'a =
  fun a b c ->
    (min(min a b) c, max(max a b) c)
  ;;