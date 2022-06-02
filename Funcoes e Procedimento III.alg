algoritmo "Exercícios"


var
gabarito: vetor[1..10] de literal
opcaoMenu: literal
notaFinal: inteiro

procedimento mostrarMenu()
inicio
Escreval("1- Cadastar Gabarito")
Escreval("2- Cadastrar Prova")
Escreval("3- Sair")
leia(opcaoMenu)
fimprocedimento

procedimento cadastarGabarito()
var
i: inteiro
inicio
para i de 1 ate 10 faca
   Escreval ("Informe a resposta da questão ", i)
   leia(gabarito[i])
fimpara
fimprocedimento

funcao cadastarProva(): inteiro
var
i, nota: inteiro
resposta: literal
inicio
nota <- 0
para i de 1 ate 10 faca
   Escreval ("Informe a resposta da questão ", i)
   leia(resposta)
   se resposta = gabarito[i]entao
      nota<- nota +1
   fimse
   retorne a nota
fimpara
fimfuncao


funcao verificarSituacao(nota: inteiro) : literal
inicio
se nota >= 7 entao
   retorne "Aprovado"
senao
   retorne "Reprovado"
fimse
fimfuncao

inicio
repita
   mostrarMenu()
   escolha opcaoMenu
   caso "1"
      cadastarGabarito()
   caso "2"
      notaFinal <- cadastrarProva()
      escreval(verificarSituacao(notaFinal)
   outrocaso
      Escreval("opcão Inválida")
   ate opcaoMenu = "3"

fimalgoritmo
