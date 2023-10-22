{
  open Lexing
  open Calcparser

  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <- { pos with pos_bol = lexbuf.lex_curr_pos;
                                    pos_lnum = pos.pos_lnum + 1 }
}

let intPattern = ['0'-'9']+
let white = [' ' '\t']+
let newline = '\n'

rule read =
  parse
  | white { read lexbuf }
  | newline { next_line lexbuf; read lexbuf }
  | intPattern { INT(int_of_string(Lexing.lexeme lexbuf)) }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' { MULT }
  | '(' { LPAREN }
  | ')' { RPAREN }
  | eof { EOF }
  | _ { raise (SyntaxError("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
