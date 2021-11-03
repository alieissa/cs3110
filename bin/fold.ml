let rec sum = function
  | [] -> 0
  | h :: t -> h + sum t

let rec concat = function
  | [] -> ""
  | h :: t -> h ^ concat t

let rec combine init op = function
  | [] -> init
  | h :: t -> op h (combine init op t)

let sum' lst = combine 0 (fun x y -> x + y) lst

let sum'' = combine 0 ( + )

let concat' lst = combine "" ( ^ ) lst
