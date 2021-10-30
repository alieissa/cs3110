type 'a mylist = Nil | Cons of 'a * 'a mylist

let rec length = function Nil -> 0 | Cons (_, xs) -> 1 + length xs
