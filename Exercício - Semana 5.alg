algoritmo "semnome"

var
vetorNumero : vetor[1..3] de inteiro
i,j,aux: inteiro
inicio
para i de 1 ate 3 faca
   escreval("Digite o nº ", i)
   leia(vetorNumero[i])
fimpara
limpatela
para i de 1 ate 3 faca
   para j de 1 ate 2 faca
      se vetorNumero[j] > vetorNumero[i] entao
         aux <- vetorNumero[i]
         vetorNumero[i]<-vetorNumero[j]
         vetorNumero[j]<-aux
      fimse
   fimpara
fimpara
fimalgoritmo
