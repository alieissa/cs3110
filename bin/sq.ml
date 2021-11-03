let ( >>| ) opt f =
  match opt with
  | None -> None
  | Some x -> Some (f x)

let ( >>= ) opt f =
  match opt with
  | None -> None
  | Some x -> f x
