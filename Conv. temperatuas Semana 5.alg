algoritmo "Conversor de Temperaturas"

var
tempFah: vetor [1..4] de real
tempCel: vetor [1..4] de real
conversoes: vetor [1..4] de real
hora: vetor [1..4] de real
opcao, opcaoTemperatura, i, j: inteiro
tempC,tempF, resultado, aux, auxHora, auxConversoes : real

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
      escreval("Escolha Conversão")
      escreval(" 1- Celsius para Fahrenheit ")
      escreval(" 2- Fahrenheit para Celsius")
      leia(OpcaoTemperatura)
      limpatela
      se opcaoTemperatura = 1 entao
         para i de 1 ate 4 faca
            escreval("Informe a temperatura Cº")
            leia (tempCel[i])
            escreval("Informe a Hora")
            leia (hora [i])
            tempC <- (tempCel [i])
            escreval(ConverterParaFahrenheit(tempC))
            limpatela
            escreval("A temperatura em Fahrenheit é:",Resultado:1:1, "ºF")
            escreval("")
            conversoes[i] <- resultado
         fimpara
         limpatela
      senao
         para i de 1 ate 4 faca
            escreval("Informe a Temperatura Fº")
            leia (tempFah[i])
            escreval("Informe a Hora")
            leia (hora[i])
            tempF <- (tempFah [i])
            escreval(ConverterParaCelsius(tempF))
            limpatela
            escreval("A temperatura em Celsius é:",Resultado:1:1, "ºC")
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
                  auxHora <- hora[i]
                  auxConversoes <- conversoes[i]
                  tempCel[i]<-tempCel[j]
                  hora[i] <- hora[j]
                  conversoes[i] <- conversoes[j]
                  tempCel[j]<- aux
                  hora[j] <- auxHora
                  conversoes[j] <- auxConversoes
               fimse
            fimpara
         fimpara
         para i de 1 ate 4 faca
            escreval ("Temperatura de ",tempCel[i], "ºC", " Registrado às ",hora[i], " Hs", " Corresponde a", conversoes[i], "ºF")
            escreval ("")
         fimpara
      fimse
      se opcaoTemperatura = 2 entao
         para i de 1 ate 4 faca
            para j de 1 ate 4 faca
               se tempFah[j] > tempFah[i] entao
                  aux <- tempFah[i]
                  auxHora <- hora[i]
                  auxConversoes <- conversoes[i]
                  tempFah[i]<- tempFah[j]
                  hora[i] <- hora[j]
                  conversoes[i] <- conversoes[j]
                  tempFah[j]<- aux
                  hora[j] <- auxHora
                  conversoes[j] <- auxConversoes
               fimse
            fimpara
         fimpara
         para i de 1 ate 4 faca
            escreval ("Temperatura de ",tempFah[i], "ºF", " Registrado às ",hora[i], " Hs", " Corresponde a", conversoes[i], "ºC")
            escreval ("")
         fimpara
      fimse
   caso 3
      escreval("")
   outrocaso
      escreval("Informação inválida. Tente novamente: ")
   fimescolha
ate opcao = 3
fimalgoritmo

