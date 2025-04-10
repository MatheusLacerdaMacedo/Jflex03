/* 
 * Definição: seção para código do usuário. 
 */
import token.Token;

%%

/* 
 * Opções e Declarações 
 */

%standalone         
%line               
%column             
%class Scanner      

%{
  Token token;
%}

/* 
 * Macros 
 */
BRANCO = [ \t\n\r]+
PONTOEVIRGULA = ";"
DOISPONTOS = ":"
VIRGULA = ","
PONTO = "\."
ABREPARENTESE = "("
FECHAPARENTESE = ")"
ABRECHAVE = "{"
FECHACHAVE = "}"
ABRECOLCHETE = "\["
FECHACOLCHETE = "\]"
SOMA = "+"
INCREMENTO = "++"
ADICAOATRIB = "\+="
ATRIBUICAO = "="
COMPARACAO = "=="
MENORIGUAL = "<="
MAIORIGUAL = ">="
MENOR = "<"
MAIOR = ">"
INTEIRO = 0|[1-9][0-9]*
ID = [_a-zA-Z][_a-zA-Z0-9]*
STRING = \"([^\\\"]|\\.)*\"

%%

/*  
 * Regras léxicas 
 */

/* Palavras reservadas */
"int"              { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada int"); token.imprimir(); }
"main"             { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada main"); token.imprimir(); }
"while"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada while"); token.imprimir(); }
"return"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada return"); token.imprimir(); }
"printf"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada printf"); token.imprimir(); }
"public"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada public"); token.imprimir(); }
"class"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada class"); token.imprimir(); }
"static"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada static"); token.imprimir(); }
"String"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada String"); token.imprimir(); }
"for"              { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada for"); token.imprimir(); }
"System"           { token = new Token(yyline, yycolumn, yytext(), "Classe System"); token.imprimir(); }
"out"              { token = new Token(yyline, yycolumn, yytext(), "Objeto out"); token.imprimir(); }
"println"          { token = new Token(yyline, yycolumn, yytext(), "Método println"); token.imprimir(); }

/* Símbolos e operadores */
{ABREPARENTESE}    { token = new Token(yyline, yycolumn, yytext(), "Abre parêntese"); token.imprimir(); }
{FECHAPARENTESE}   { token = new Token(yyline, yycolumn, yytext(), "Fecha parêntese"); token.imprimir(); }
{ABRECHAVE}        { token = new Token(yyline, yycolumn, yytext(), "Abre chave"); token.imprimir(); }
{FECHACHAVE}       { token = new Token(yyline, yycolumn, yytext(), "Fecha chave"); token.imprimir(); }
{ABRECOLCHETE}     { token = new Token(yyline, yycolumn, yytext(), "Abre colchete"); token.imprimir(); }
{FECHACOLCHETE}    { token = new Token(yyline, yycolumn, yytext(), "Fecha colchete"); token.imprimir(); }

{PONTOEVIRGULA}    { token = new Token(yyline, yycolumn, yytext(), "Ponto e vírgula"); token.imprimir(); }
{VIRGULA}          { token = new Token(yyline, yycolumn, yytext(), "Vírgula"); token.imprimir(); }
{PONTO}            { token = new Token(yyline, yycolumn, yytext(), "Ponto"); token.imprimir(); }
{DOISPONTOS}       { token = new Token(yyline, yycolumn, yytext(), "Dois pontos"); token.imprimir(); }

{ADICAOATRIB}      { token = new Token(yyline, yycolumn, yytext(), "Atribuição com soma (+=)"); token.imprimir(); }
{INCREMENTO}       { token = new Token(yyline, yycolumn, yytext(), "Incremento (++)"); token.imprimir(); }
{SOMA}             { token = new Token(yyline, yycolumn, yytext(), "Operador de soma"); token.imprimir(); }

{ATRIBUICAO}       { token = new Token(yyline, yycolumn, yytext(), "Atribuição"); token.imprimir(); }
{COMPARACAO}       { token = new Token(yyline, yycolumn, yytext(), "Comparação (==)"); token.imprimir(); }
{MENORIGUAL}       { token = new Token(yyline, yycolumn, yytext(), "Operador <= "); token.imprimir(); }
{MAIORIGUAL}       { token = new Token(yyline, yycolumn, yytext(), "Operador >= "); token.imprimir(); }
{MENOR}            { token = new Token(yyline, yycolumn, yytext(), "Operador < "); token.imprimir(); }
{MAIOR}            { token = new Token(yyline, yycolumn, yytext(), "Operador > "); token.imprimir(); }

{BRANCO}           { /* ignora espaços */ }

{INTEIRO}          { token = new Token(yyline, yycolumn, yytext(), "Número inteiro"); token.imprimir(); }
{STRING}           { token = new Token(yyline, yycolumn, yytext(), "String"); token.imprimir(); }
{ID}               { token = new Token(yyline, yycolumn, yytext(), "Identificador"); token.imprimir(); }

/* Qualquer outro caractere */
.                  { token = new Token(yyline, yycolumn, yytext(), "Caractere inválido"); token.dispararExcecao(); }
