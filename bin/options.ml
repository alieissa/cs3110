type 'a option = None | Some of 'a

let get_val default = function
  | None -> default
  | Some x -> x

let rec list_max = function
  | [] -> None
  | h :: t -> (
    match list_max t with
    | None -> Some h
    | Some m -> Some (max m h) )

let x = list_max [1; 2; 3]

let y = list_max []
