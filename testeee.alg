algoritmo "Conversor "

var
opcao, opcaoTemperatura, i, j: inteiro
tempC,tempF, resultado, aux, auxHora, auxConversoes : real
tempFah: vetor [1..4] de real
tempCel: vetor [1..4] de real
conversoes    : vetor [1..4] de real
hora: vetor [1..4] de real
horaConversao : vetor [1..4] de real

funcao ConverterParaCelsius(tempF: real) : real
inicio

tempC <- (tempFah[i] - 32) / 1.8
retorne tempC
resultado <- tempC
fimfuncao

funcao ConverterParaFahrenheit (tempC: real) : real
inicio

tempF <- (tempCel[i] * 1.8) + 32
retorne tempF
resultado <- tempF
fimfuncao

inicio
repita
   escreval(" 1- Para Converter Temperatura")
   escreval(" 2- Ver Relatorio das Temperaturas")
   escreval("3- Para Sair ")
   leia(opcao)
   limpatela
   escolha opcao
   caso 1
      escreval("Escolha Convers�o")
      escreval(" 1- Celsius para Fahrenheit ")
      escreval(" 2- Fahrenheit para Celsius")
      leia(OpcaoTemperatura)
      limpatela
      se opcaoTemperatura = 1 entao
         para i de 1 ate 4 faca
            escreval("Informe a temperatura C�")
            leia (tempCel[i])
            escreval("Informe a Hora")
            leia (hora [i])
            tempC <- (tempCel [i])
            escreval(ConverterParaFahrenheit(tempC))
            limpatela
            escreval("A temperatura em Fahrenheit �:",Resultado:1:1, "�F")
            escreval("")
            conversoes[i] <- resultado
         fimpara
         limpatela
      senao
         para i de 1 ate 4 faca
            escreval("Informe a Temperatura F�")
            leia (tempFah[i])
            escreval("Informe a Hora")
            leia (hora[i])
            tempF <- (tempFah [i])
            escreval(ConverterParaCelsius(tempF))
            limpatela
            escreval("A temperatura em Celsius �:",Resultado:1:1, "�C")
            escreval("")
            conversoes[i] <- resultado
         fimpara
      fimse
      limpatela
   caso 2
      se opcaoTemperatura = 1 entao
         para i de 1 ate 4 faca
            para j de 1 ate 4 faca
               se tempCel[j] > tempCel[i] entao
                  aux <- tempCel[i]
                  auxHora <- horaConversao[i]
                  auxConversoes <- conversoes[i]
                  tempCel[i]<-tempCel[j]
                  horaConversao[i] <- horaConversao[j]
                  conversoes[i] <- conversoes[j]
                  tempCel[j]<- aux
                  horaConversao[j] <- auxHora
                  conversoes[j] <- auxConversoes
               fimse
            fimpara
         fimpara
         para i de 1 ate 4 faca
            escreval ("Temperatura de ",tempCel[i], "�C", " Registrado �s ",horaConversao[i], " Hs", " Corresponde a", conversoes[i], "�F")
            escreval ("")
         fimpara
      fimse
      se opcaoTemperatura = 2 entao
         para i de 1 ate 4 faca
            para j de 1 ate 4 faca
               se tempFah[j] > tempFah[i] entao
                  aux <- tempFah[i]
                  auxHora <- horaConversao[i]
                  auxConversoes <- conversoes[i]
                  tempFah[i]<- tempFah[j]
                  horaConversao[i] <- horaConversao[j]
                  conversoes[i] <- conversoes[j]
                  tempFah[j]<- aux
                  horaConversao[j] <- auxHora
                  conversoes[j] <- auxConversoes
               fimse
            fimpara
         fimpara
         para i de 1 ate 4 faca
            escreval ("Temperatura de ",tempFah[i], "�F", " Registrado �s ",horaConversao[i], " Hs", " Corresponde a", conversoes[i], "�C")
            escreval ("")
         fimpara
      fimse
   caso 3
      escreval("")
   outrocaso
      escreval("Informa��o inv�lida. Tente novamente: ")
   fimescolha
ate opcao = 3
fimalgoritmo

