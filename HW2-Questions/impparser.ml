
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VAR of (
# 27 "impparser.mly"
       (string)
# 16 "impparser.ml"
  )
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
    | INT of (
# 28 "impparser.mly"
       (int)
# 33 "impparser.ml"
  )
    | IF
    | FI
    | EQ
    | EOF
    | ELSE
    | DONE
    | DO
    | BOOL of (
# 29 "impparser.mly"
       (bool)
# 45 "impparser.ml"
  )
    | ASGN
    | AND
  
end

include MenhirBasics

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_prog) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState01 : (('s, _menhir_box_prog) _menhir_cell1_WHILE, _menhir_box_prog) _menhir_state
    (** State 01.
        Stack shape : WHILE.
        Start symbol: prog. *)

  | MenhirState02 : (('s, _menhir_box_prog) _menhir_cell1_NOT, _menhir_box_prog) _menhir_state
    (** State 02.
        Stack shape : NOT.
        Start symbol: prog. *)

  | MenhirState03 : (('s, _menhir_box_prog) _menhir_cell1_LPAREN, _menhir_box_prog) _menhir_state
    (** State 03.
        Stack shape : LPAREN.
        Start symbol: prog. *)

  | MenhirState08 : (('s, _menhir_box_prog) _menhir_cell1_bexpr3, _menhir_box_prog) _menhir_state
    (** State 08.
        Stack shape : bexpr3.
        Start symbol: prog. *)

  | MenhirState10 : (('s, _menhir_box_prog) _menhir_cell1_bexpr2, _menhir_box_prog) _menhir_state
    (** State 10.
        Stack shape : bexpr2.
        Start symbol: prog. *)

  | MenhirState15 : (('s, _menhir_box_prog) _menhir_cell1_aexpr1, _menhir_box_prog) _menhir_state
    (** State 15.
        Stack shape : aexpr1.
        Start symbol: prog. *)

  | MenhirState16 : (('s, _menhir_box_prog) _menhir_cell1_LPAREN, _menhir_box_prog) _menhir_state
    (** State 16.
        Stack shape : LPAREN.
        Start symbol: prog. *)

  | MenhirState19 : (('s, _menhir_box_prog) _menhir_cell1_aexpr1, _menhir_box_prog) _menhir_state
    (** State 19.
        Stack shape : aexpr1.
        Start symbol: prog. *)

  | MenhirState23 : (('s, _menhir_box_prog) _menhir_cell1_aexpr1, _menhir_box_prog) _menhir_state
    (** State 23.
        Stack shape : aexpr1.
        Start symbol: prog. *)

  | MenhirState25 : (('s, _menhir_box_prog) _menhir_cell1_aexpr1, _menhir_box_prog) _menhir_state
    (** State 25.
        Stack shape : aexpr1.
        Start symbol: prog. *)

  | MenhirState27 : (('s, _menhir_box_prog) _menhir_cell1_aexpr1, _menhir_box_prog) _menhir_state
    (** State 27.
        Stack shape : aexpr1.
        Start symbol: prog. *)

  | MenhirState34 : ((('s, _menhir_box_prog) _menhir_cell1_WHILE, _menhir_box_prog) _menhir_cell1_bexpr3, _menhir_box_prog) _menhir_state
    (** State 34.
        Stack shape : WHILE bexpr3.
        Start symbol: prog. *)

  | MenhirState36 : (('s, _menhir_box_prog) _menhir_cell1_VAR, _menhir_box_prog) _menhir_state
    (** State 36.
        Stack shape : VAR.
        Start symbol: prog. *)

  | MenhirState39 : (('s, _menhir_box_prog) _menhir_cell1_OUTPUT, _menhir_box_prog) _menhir_state
    (** State 39.
        Stack shape : OUTPUT.
        Start symbol: prog. *)

  | MenhirState41 : (('s, _menhir_box_prog) _menhir_cell1_LPAREN, _menhir_box_prog) _menhir_state
    (** State 41.
        Stack shape : LPAREN.
        Start symbol: prog. *)

  | MenhirState42 : (('s, _menhir_box_prog) _menhir_cell1_IF, _menhir_box_prog) _menhir_state
    (** State 42.
        Stack shape : IF.
        Start symbol: prog. *)

  | MenhirState44 : ((('s, _menhir_box_prog) _menhir_cell1_IF, _menhir_box_prog) _menhir_cell1_bexpr3, _menhir_box_prog) _menhir_state
    (** State 44.
        Stack shape : IF bexpr3.
        Start symbol: prog. *)

  | MenhirState46 : (((('s, _menhir_box_prog) _menhir_cell1_IF, _menhir_box_prog) _menhir_cell1_bexpr3, _menhir_box_prog) _menhir_cell1_cmd, _menhir_box_prog) _menhir_state
    (** State 46.
        Stack shape : IF bexpr3 cmd.
        Start symbol: prog. *)

  | MenhirState55 : (('s, _menhir_box_prog) _menhir_cell1_cmd1, _menhir_box_prog) _menhir_state
    (** State 55.
        Stack shape : cmd1.
        Start symbol: prog. *)


and ('s, 'r) _menhir_cell1_aexpr1 = 
  | MenhirCell1_aexpr1 of 's * ('s, 'r) _menhir_state * (Imp.aexp)

and ('s, 'r) _menhir_cell1_bexpr2 = 
  | MenhirCell1_bexpr2 of 's * ('s, 'r) _menhir_state * (Imp.bexp)

and ('s, 'r) _menhir_cell1_bexpr3 = 
  | MenhirCell1_bexpr3 of 's * ('s, 'r) _menhir_state * (Imp.bexp)

and ('s, 'r) _menhir_cell1_cmd = 
  | MenhirCell1_cmd of 's * ('s, 'r) _menhir_state * (Imp.cmd)

and ('s, 'r) _menhir_cell1_cmd1 = 
  | MenhirCell1_cmd1 of 's * ('s, 'r) _menhir_state * (Imp.cmd)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OUTPUT = 
  | MenhirCell1_OUTPUT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_VAR = 
  | MenhirCell1_VAR of 's * ('s, 'r) _menhir_state * (
# 27 "impparser.mly"
       (string)
# 187 "impparser.ml"
)

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_prog = 
  | MenhirBox_prog of (Imp.cmd) [@@unboxed]

let _menhir_action_01 =
  fun _2 ->
    (
# 66 "impparser.mly"
                           ( _2 )
# 201 "impparser.ml"
     : (Imp.aexp))

let _menhir_action_02 =
  fun _1 ->
    (
# 67 "impparser.mly"
        ( Imp.Int _1 )
# 209 "impparser.ml"
     : (Imp.aexp))

let _menhir_action_03 =
  fun _1 ->
    (
# 60 "impparser.mly"
          ( _1 )
# 217 "impparser.ml"
     : (Imp.aexp))

let _menhir_action_04 =
  fun _1 _3 ->
    (
# 61 "impparser.mly"
                         ( Imp.Plus(_1, _3) )
# 225 "impparser.ml"
     : (Imp.aexp))

let _menhir_action_05 =
  fun _1 _3 ->
    (
# 62 "impparser.mly"
                         ( Imp.Minus(_1, _3) )
# 233 "impparser.ml"
     : (Imp.aexp))

let _menhir_action_06 =
  fun _2 ->
    (
# 93 "impparser.mly"
                           ( _2 )
# 241 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_07 =
  fun _1 ->
    (
# 94 "impparser.mly"
         ( Imp.Bool _1 )
# 249 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_08 =
  fun _1 ->
    (
# 86 "impparser.mly"
          ( _1 )
# 257 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_09 =
  fun _1 _3 ->
    (
# 87 "impparser.mly"
                        ( Imp.Lt(_1, _3) )
# 265 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_10 =
  fun _1 _3 ->
    (
# 88 "impparser.mly"
                        ( Imp.Leq(_1, _3) )
# 273 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_11 =
  fun _1 _3 ->
    (
# 89 "impparser.mly"
                        ( Imp.Eq(_1, _3) )
# 281 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_12 =
  fun _1 ->
    (
# 81 "impparser.mly"
           ( _1 )
# 289 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_13 =
  fun _2 ->
    (
# 82 "impparser.mly"
                ( Imp.Not _2 )
# 297 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_14 =
  fun _1 ->
    (
# 76 "impparser.mly"
           ( _1 )
# 305 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_15 =
  fun _1 _3 ->
    (
# 77 "impparser.mly"
                        ( Imp.And(_1, _3) )
# 313 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_16 =
  fun _1 ->
    (
# 71 "impparser.mly"
           ( _1 )
# 321 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_17 =
  fun _1 _3 ->
    (
# 72 "impparser.mly"
                       ( Imp.Or(_1, _3) )
# 329 "impparser.ml"
     : (Imp.bexp))

let _menhir_action_18 =
  fun _2 ->
    (
# 49 "impparser.mly"
                                    ( _2 )
# 337 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_19 =
  fun _2 ->
    (
# 50 "impparser.mly"
                                   ( Imp.Output(_2) )
# 345 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_20 =
  fun _1 _3 ->
    (
# 51 "impparser.mly"
                                   ( Imp.Asgn(_1, _3) )
# 353 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_21 =
  fun () ->
    (
# 52 "impparser.mly"
                                    ( Imp.Skip )
# 361 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_22 =
  fun _2 _4 _6 ->
    (
# 53 "impparser.mly"
                                          ( Imp.IfElse(_2, _4, _6) )
# 369 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_23 =
  fun _2 _4 ->
    (
# 54 "impparser.mly"
                                          ( Imp.While(_2, _4) )
# 377 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_24 =
  fun _1 _3 ->
    (
# 44 "impparser.mly"
                    ( Imp.Seq(_1, _3) )
# 385 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_25 =
  fun _1 ->
    (
# 45 "impparser.mly"
                    ( _1 )
# 393 "impparser.ml"
     : (Imp.cmd))

let _menhir_action_26 =
  fun e ->
    (
# 40 "impparser.mly"
                  ( e )
# 401 "impparser.ml"
     : (Imp.cmd))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | ASGN ->
        "ASGN"
    | BOOL _ ->
        "BOOL"
    | DO ->
        "DO"
    | DONE ->
        "DONE"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | FI ->
        "FI"
    | IF ->
        "IF"
    | INT _ ->
        "INT"
    | LEQ ->
        "LEQ"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | MINUS ->
        "MINUS"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | OUTPUT ->
        "OUTPUT"
    | PLUS ->
        "PLUS"
    | RPAREN ->
        "RPAREN"
    | SEQ ->
        "SEQ"
    | SKIP ->
        "SKIP"
    | THEN ->
        "THEN"
    | VAR _ ->
        "VAR"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState01 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState02 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState03 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_aexpr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState15 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState01 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState39 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState36 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState27 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState25 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState19 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_22 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_04 _1 _3 in
      _menhir_goto_aexpr1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_aexpr1 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState39 ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState36 ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState27 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState25 ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState01 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_40 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_OUTPUT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DONE | ELSE | EOF | FI | RPAREN | SEQ ->
          let MenhirCell1_OUTPUT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_19 _2 in
          _menhir_goto_cmd _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_15 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState15 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState16 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_19 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState19 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_cmd : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState55 ->
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState34 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState41 ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState46 ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState44 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_58 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_25 _1 in
      _menhir_goto_cmd1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cmd1 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEQ ->
          let _menhir_stack = MenhirCell1_cmd1 (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState55 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VAR _v ->
              _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | SKIP ->
              _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | OUTPUT ->
              _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | EOF ->
          let e = _v in
          let _v = _menhir_action_26 e in
          MenhirBox_prog _v
      | _ ->
          _eRR ()
  
  and _menhir_run_35 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_VAR (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ASGN ->
          let _menhir_s = MenhirState36 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_38 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_21 () in
      _menhir_goto_cmd _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_39 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OUTPUT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState39 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_41 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState41 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | VAR _v ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | SKIP ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | OUTPUT ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_42 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState42 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_07 _1 in
      _menhir_goto_bexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_bexpr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_08 _1 in
      _menhir_goto_bexpr0 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_bexpr0 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState02 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState01 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_32 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_13 _2 in
      _menhir_goto_bexpr1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_bexpr1 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState01 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_29 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_14 _1 in
      _menhir_goto_bexpr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_bexpr2 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState01 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_30 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AND ->
          let _menhir_stack = MenhirCell1_bexpr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DO | OR | RPAREN | THEN ->
          let _1 = _v in
          let _v = _menhir_action_16 _1 in
          _menhir_goto_bexpr3 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_bexpr2 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState10 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_bexpr3 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState42 ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState01 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_bexpr3 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _menhir_s = MenhirState44 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VAR _v ->
              _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | SKIP ->
              _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | OUTPUT ->
              _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | OR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_bexpr3 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState08 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_bexpr3 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | OR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DO ->
          let _menhir_s = MenhirState34 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VAR _v ->
              _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | SKIP ->
              _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | OUTPUT ->
              _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_06 _2 in
          _menhir_goto_bexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | OR ->
          let _menhir_stack = MenhirCell1_bexpr3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_bexpr3 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AND ->
          let _menhir_stack = MenhirCell1_bexpr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DO | OR | RPAREN | THEN ->
          let MenhirCell1_bexpr3 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_bexpr3 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_bexpr2 -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_bexpr2 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_15 _1 _3 in
      _menhir_goto_bexpr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_12 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_12 _1 in
      _menhir_goto_bexpr1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_56 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_cmd1 -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_cmd1 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_24 _1 _3 in
      _menhir_goto_cmd1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_51 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_WHILE, _menhir_box_prog) _menhir_cell1_bexpr3 -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | DONE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_bexpr3 (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_23 _2 _4 in
          _menhir_goto_cmd _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_49 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_18 _2 in
          _menhir_goto_cmd _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_47 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_IF, _menhir_box_prog) _menhir_cell1_bexpr3, _menhir_box_prog) _menhir_cell1_cmd -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | FI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_cmd (_menhir_stack, _, _4) = _menhir_stack in
          let MenhirCell1_bexpr3 (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _6 = _v in
          let _v = _menhir_action_22 _2 _4 _6 in
          _menhir_goto_cmd _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_45 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_IF, _menhir_box_prog) _menhir_cell1_bexpr3 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_cmd (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_s = MenhirState46 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VAR _v ->
              _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | SKIP ->
              _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | OUTPUT ->
              _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_37 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DONE | ELSE | EOF | FI | RPAREN | SEQ ->
          let MenhirCell1_VAR (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_20 _1 _3 in
          _menhir_goto_cmd _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_18 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LPAREN, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_aexpr1 (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_01 _2 in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_23 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState23 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState25 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_27 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState27 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | DO | OR | RPAREN | THEN ->
          let MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_11 _1 _3 in
          _menhir_goto_bexpr0 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | DO | OR | RPAREN | THEN ->
          let MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_10 _1 _3 in
          _menhir_goto_bexpr0 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_24 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | DO | OR | RPAREN | THEN ->
          let MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_09 _1 _3 in
          _menhir_goto_bexpr0 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_17 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_14 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_03 _1 in
      _menhir_goto_aexpr1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_20 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_aexpr1 -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_aexpr1 (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_05 _1 _3 in
      _menhir_goto_aexpr1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState00 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | VAR _v ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | SKIP ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | OUTPUT ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
end

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
