grammar <grammarName>;
@parser::header {
<ImportListener(grammarName)>
}

@parser::members {
<TokenGetterListener(grammarName)>
}

s
@after {
<ToStringTree("$ctx.r"):writeln()>
<WalkListener("$ctx.r")>
}
  : r=a ;
a : INT INT
  | ID
  ;
MULT: '*' ;
ADD : '+' ;
INT : [0-9]+ ;
ID  : [a-z]+ ;
WS : [ \t\n]+ -> skip ;
