%token RPAREN
%token LPAREN
%token PLUS
%token MINUS
%token MULT
%token <int> INT
%token EOF

%start <Calc.expr> prog

%%

prog:
  | e = expr; EOF { e }
  ;

expr:
  | e = expr2 { e }
  ;

expr2:
  | e = expr1 { e }
  | el = expr2; PLUS; er = expr1 { Calc.Plus(el, er) }
  | el = expr2; MINUS; er = expr1 { Calc.Minus(el, er) }
  ;

expr1:
  | e = expr0 { e }
  | el = expr1; MULT; er = expr0 { Calc.Mult(el, er) }
  ;

expr0:
  | s = INT { Calc.Int s}
  | LPAREN; e = expr1; RPAREN { e }
  ;
