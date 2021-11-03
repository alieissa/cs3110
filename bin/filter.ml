let filter f lst =
  let rec aux acc = function
    | [] -> List.rev acc
    | h :: t ->
        let acc' = if f h then h :: acc else acc in
        aux acc' t
  in
  aux [] lst
