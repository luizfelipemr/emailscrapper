
%{
#include <stdio.h>
#include <string.h>

%}

begin	[A-Za-z0-9][[-A-Za-z0-9_.]*+
end	[A-Za-z0-9][[.][A-Za-z0-9]]+
rule	(begin)@(end)


%%

{rule} {
	printf("%s\n", yytext);
}

%%

int main() {

  yylex();
  return 0;
}
