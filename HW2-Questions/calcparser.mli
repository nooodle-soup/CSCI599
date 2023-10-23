
(* The type of tokens. *)

type token = 
  | RPAREN
  | PLUS
  | MULT
  | MINUS
  | LPAREN
  | INT of (int)
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Calc.expr)
