algoritmo "Conversor de temperaturas"

var
tempCelcius: vetor[1..4] de real
tempFahrenheit: vetor[1..4] de real
hora: vetor[1..4]de real
opcao,i,j, aux: inteiro


procedimento convertercelcius()
var
inicio
para i de 1 ate 4 faca
   escreval (" Digite a temperatura Fahrenheit ",i, "ºF")
   leia(tempFahrenheit[i])
   para j de 1 ate 4 faca
      escreval (" Digite a hora da conversão",j, "")
      leia(hora[j])
      fimprocedimento

      inicio
      repita
         escreval(" Digite 1 para converter Celcius")
         escreval(" Digite 2 para converter em Fahrenheit")
         escreval("Digite 3 para sair")
         leia(opcao)

         escolha opcao
         caso 1
            convertercelcius()
         caso 2
            escreval("dois")
         caso 3
            opcao <- 3
         outrocaso
            escreval("Opção Invalida")
         fimescolha
      ate opcao = 3
   fimalgoritmo
