
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR of (string)
  | THEN
  | SKIP
  | SEQ
  | RPAREN
  | PLUS
  | OUTPUT
  | OR
  | NOT
  | MINUS
  | LT
  | LPAREN
  | LEQ
  | INT of (int)
  | IF
  | FI
  | EQ
  | EOF
  | ELSE
  | DONE
  | DO
  | BOOL of (bool)
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Imp.cmd)
