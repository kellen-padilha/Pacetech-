algoritmo "Vetor exercicio 1 "

var
nomes: vetor [1..5] de literal
i: inteiro
pesquisa: literal
encontrado: logico

inicio

para i de 1 ate 5 faca
   Escreval ("Informe o nome a cadastrar")
   leia (nomes[i])
fimpara
limpatela

Escreval("informe um nome a pesquisa")
leia(pesquisa)

para i de 1 ate 5 faca
   se nomes[i] = pesquisa entao
   encontrado <- verdadeiro
   fimse
fimpara


fimalgoritmo
