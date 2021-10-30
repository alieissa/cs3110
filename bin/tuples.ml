type time = int * int * string

let t = (10, 10, "am")

type point = float * float

let p = (5., 3.5)

let x = match not true with true -> "nope" | false -> "yep"

let a = match [] with [] -> "empty" | _ -> "not empty"

let b = match [ "taylor"; "swift" ] with [] -> "folklore" | h :: t -> h

let rec sum = function [] -> 0 | h :: t -> h + sum t
