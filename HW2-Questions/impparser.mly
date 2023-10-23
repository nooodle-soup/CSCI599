%token RPAREN
%token LPAREN
%token PLUS
%token MINUS

%token ASGN
%token OUTPUT
%token SKIP
%token SEQ

%token LT 
%token LEQ
%token EQ
%token AND
%token OR
%token NOT
%token IF 
%token FI
%token THEN
%token ELSE
%token WHILE 
%token DO
%token DONE
(*
*)

%token <string> VAR
%token <int> INT
%token <bool> BOOL
(*
*)

%token EOF

%start <Imp.cmd> prog

%%

prog:
  | e = cmd1; EOF { e }
  ;

cmd1:
  | cmd1; SEQ; cmd  { Imp.Seq($1, $3) } 
  | cmd             { $1 }
  ;

cmd:
  | LPAREN; cmd; RPAREN							      { $2 }
  | OUTPUT; aexpr1      							    { Imp.Output($2) }
  | VAR; ASGN; aexpr1     							  { Imp.Asgn($1, $3) }
  | SKIP               							      { Imp.Skip }
  | IF; bexpr3; THEN; cmd; ELSE; cmd; FI  { Imp.IfElse($2, $4, $6) }
  | WHILE; bexpr3; DO; cmd; DONE          { Imp.While($2, $4) }
  (*
  *)
  ;

aexpr1:
  | aexpr { $1 } 
  | aexpr1; PLUS; aexpr  { Imp.Plus($1, $3) }
  | aexpr1; MINUS; aexpr { Imp.Minus($1, $3) }
  ;

aexpr:
  | LPAREN; aexpr1; RPAREN { $2 }
  | INT { Imp.Int $1 }
  ;

bexpr3:
  | bexpr2 { $1 }
  | bexpr3; OR; bexpr2 { Imp.Or($1, $3) }
  ;

bexpr2:
  | bexpr1 { $1 }
  | bexpr2; AND; bexpr1 { Imp.And($1, $3) }
  ;

bexpr1:
  | bexpr0 { $1 }
  | NOT; bexpr0 { Imp.Not $2 }
  ;

bexpr0:
  | bexpr { $1 }
  | aexpr1; LT; aexpr1  { Imp.Lt($1, $3) }
  | aexpr1; LEQ; aexpr1 { Imp.Leq($1, $3) }
  | aexpr1; EQ; aexpr1  { Imp.Eq($1, $3) }
  ;

bexpr:
  | LPAREN; bexpr3; RPAREN { $2 }
  | BOOL { Imp.Bool $1 }
  ;
  (*
*)
