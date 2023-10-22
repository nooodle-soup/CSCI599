(******************************************************************************)
(* Imp: *)

type aexp =
  | Int of int
  | Var of string
  | Plus of aexp * aexp
  | Minus of aexp * aexp

type bexp =
  | Bool of bool
  | Lt of aexp * aexp
  | Leq of aexp * aexp
  | Eq of aexp * aexp
  | And of bexp * bexp
  | Or of bexp * bexp
  | Not of bexp

type cmd =
  | Output of aexp
  | Asgn of string * aexp
  | Skip (* This command is the program which does nothing at all. *)
  | Seq of cmd * cmd
  | IfElse of bexp * cmd * cmd
  | While of bexp * cmd

(******************************************************************************)
(* Pretty printers: *)

let rec string_of_aexp (a : aexp) : string =
  match a with
  | Int c -> Int.to_string c
  | Var v -> v
  | Plus(a1, a2) -> "(" ^ (string_of_aexp a1) ^ ") + " ^
                    "(" ^ (string_of_aexp a2) ^ ")"
  | Minus(a1, a2) -> "(" ^ (string_of_aexp a1) ^ ") - " ^
                     "(" ^ (string_of_aexp a2) ^ ")"

let rec string_of_bexp (e : bexp) : string =
  match e with
  | Bool c -> Bool.to_string c
  | Lt(a1, a2) -> "(" ^ (string_of_aexp a1) ^ ") < " ^
                  "(" ^ (string_of_aexp a2) ^ ")"
  | Leq(a1, a2) -> "(" ^ (string_of_aexp a1) ^ ") <= " ^
                   "(" ^ (string_of_aexp a2) ^ ")"
  | Eq(a1, a2) -> "(" ^ (string_of_aexp a1) ^ ") == " ^
                  "(" ^ (string_of_aexp a2) ^ ")"
  | And(b1, b2) -> "(" ^ (string_of_bexp b1) ^ ") && " ^
                   "(" ^ (string_of_bexp b2) ^ ")"
  | Or(b1, b2) -> "(" ^ (string_of_bexp b1) ^ ") || " ^
                  "(" ^ (string_of_bexp b2) ^ ")"
  | Not b1 -> "!(" ^ (string_of_bexp b1) ^ ")"

let rec string_of_cmd (c : cmd) : string =
  let rec _string_of_cmd (c : cmd) (d : string) =
    match c with
    | Output a -> d ^ "output " ^ string_of_aexp a
    | Asgn(x, a) -> d ^ x ^ " = " ^ string_of_aexp a
    | Skip -> d ^ "skip"
    | Seq(c1, c2) -> _string_of_cmd c1 d ^ ";\n" ^
                     _string_of_cmd c2 d
    | IfElse(b, c1, c2) -> d ^ "if " ^ string_of_bexp b ^ " then\n" ^
                           _string_of_cmd c1 (d ^ "  ") ^ "\n" ^
                           d ^ "else\n" ^
                           _string_of_cmd c2 (d ^ "  ") ^ "\n" ^
                           d ^ "fi"
    | While(b, c1) -> d ^ "while " ^ string_of_bexp b ^ " do\n" ^
                      _string_of_cmd c1 (d ^ "  ") ^ "\n" ^
                      d ^ "done" in
  _string_of_cmd c ""
