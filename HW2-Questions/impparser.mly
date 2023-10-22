%token RPAREN
%token LPAREN
%token PLUS
%token MINUS
%token TRUE
%token FALSE

%token LT 
%token LEQ
%token EQ
%token AND
%token OR
%token NOT
%token OUTPUT
%token SKIP
%token SEQ
%token IF 
%token FI
%token THEN
%token ELSE
%token WHILE 
%token DO
%token DONE

%token <string> VAR
%token <bool> BOOL
%token <int> INT

%token EOF

%start <Imp.cmd> prog

%%

prog:
  | e = cmd; EOF { e }
  ;

cmd:
  | OUTPUT; aexpr      							{ Imp.Output($2) }
  | VAR; EQ; aexpr     							{ Imp.Asgn($1, $3) }
  | SKIP               							{ Imp.Skip}
  | cmd; SEQ; cmd      							{ Imp.Seq($1, $3) } 
  | IF; bexpr; THEN; cmd; ELSE; cmd { Imp.IfElse($2, $4, $6)}
  | WHILE; bexpr; DO; cmd; DONE     { Imp.While($2, $4) }
  | LPAREN; cmd; RPAREN							{ $2 }
  ;

aexpr:
  | e = exprbasea { e } 
  | aexpr; PLUS; exprbasea { Imp.Plus($1, $2) }
  | aexpr; MINUS; exprbasea { Imp.Minus($1, $2) }
  ;

exprbasea:
  | s = INT { Imp.Int s }
  | s = VAR { Imp.Var s}
  | LPAREN; e = aexpr; RPAREN { e }
  ;

bexpr:
  | e = exprbaseb {e}
  (* Arithmetic on either side *)
  | aexpr; LT; aexpr  {Imp.Lt ($1, $2)}
  | aexpr; LEQ; aexpr {Imp.Leq ($1, $2)}
  | aexpr; EQ; aexpr  {Imp.Eq ($1, $2)}  
  (* Boolean on either side *)
  | exprbaseb; OR; exprbaseb  {Imp.Or ($1, $2)}
  ;

exprbaseb:
  | bexpr; AND; bexpr {Imp.And ($1, $2)}
  | LPAREN; bexpr; RPAREN { $2 }
  ;

exprB:
  | s = BOOL { Imp.Bool s}
  | exprbaseb; NOT            {Imp.Not ($1)}
  ;



