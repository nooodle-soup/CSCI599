{
  open Lexing
  open Impparser

  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <- { pos with pos_bol = lexbuf.lex_curr_pos;
                                    pos_lnum = pos.pos_lnum + 1 }
}

let digit = ['0'-'9']
let alphabet = ['a'-'z' 'A'-'Z']
let underscore = '_'

let whitespace = [' ' '\t']+
let newline = '\n'

let integer = ('-' | digit)(digit)*
let booleans = ("true" | "false")
let variable_identifier = (underscore | alphabet)(underscore | alphabet | digit)*

rule read =
  parse
  | whitespace { read lexbuf }
  | newline { next_line lexbuf; read lexbuf }
  | '(' { LPAREN }
  | ')' { RPAREN }

  | "output" { OUTPUT }
  | "skip" { SKIP }
  | ";" { SEQ }

  | integer { INT(int_of_string(Lexing.lexeme lexbuf)) }
  | variable_identifier { VAR(Lexing.lexeme lexbuf) }

  | '=' { ASGN }

  | '+' { PLUS }
  | '-' { MINUS }

  | booleans { BOOL(bool_of_string(Lexing.lexeme lexbuf)) }

  | '<' { LT }
  | "=" { EQ }
  | "<=" { LEQ }
  | "&&" { AND }
  | "||" { OR }
  | '!' { NOT }

  | "if" { IF }
  | "then" { THEN }
  | "else" { ELSE }
  | "fi" { FI }

  | "while" { WHILE }
  | "do" { DO }
  | "done" { DONE }

  | eof { EOF }
  | _ { raise (SyntaxError("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
