module MyList = struct
  type 'a mylist = Nil | Cons of 'a * 'a mylist

  let rec map f = function
    | Nil -> Nil
    | Cons (h, t) -> Cons (f h, map f t)
end

module Tree = struct
  type 'a tree = Leaf | Node of 'a * 'a tree * 'a tree

  let rec map f = function
    | Leaf -> Leaf
    | Node (v, l, r) -> Node (f v, map f l, map f r)
end

let lst : int MyList.mylist = MyList.map succ (Cons (1, Nil))

module MyStack = struct
  type 'a stack = Empty | Entry of 'a * 'a stack

  let empty = Empty

  let push x s = Entry (x, s)

  let peek = function
    | Empty -> failwith "Empty"
    | Entry (x, _) -> x

  let pop = function
    | Empty -> failwith "Empty"
    | Entry (_, s) -> s
end

module ListStack = struct
  type 'a stack = 'a list

  let empty = []

  let push x s = x :: s

  let peek = function
    | [] -> failwith "Empty"
    | x :: _ -> x

  let pop = function
    | [] -> failwith "Empty"
    | _ :: xs -> xs
end

let lst =
  let open ListStack in
  empty |> push 42 |> peek
