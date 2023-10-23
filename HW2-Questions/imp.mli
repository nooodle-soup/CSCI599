type aexp =
    Int of int
  | Var of string
  | Plus of aexp * aexp
  | Minus of aexp * aexp
type bexp =
    Bool of bool
  | Lt of aexp * aexp
  | Leq of aexp * aexp
  | Eq of aexp * aexp
  | And of bexp * bexp
  | Or of bexp * bexp
  | Not of bexp
type cmd =
    Output of aexp
  | Asgn of string * aexp
  | Skip
  | Seq of cmd * cmd
  | IfElse of bexp * cmd * cmd
  | While of bexp * cmd
val string_of_aexp : aexp -> string
val string_of_bexp : bexp -> string
val string_of_cmd : cmd -> string
