algoritmo "Conversor de moedas e temperaturas"

var
valoremReais, cotacaoDolar, valorDolar, conversao, moedaReal, moedaDolar,tempFah, tempCel,resulCel, resulFah: real
Opcaomenu: inteiro

inicio

Escreval ("Olá por favor digite o número da opção desejada")
escreval("")

escreval ("------Temperatura-----")
escreval(" 1- Coverter Fahrenheit para Celcius")
escreval("2- Converter Celcius para Fahrenheit")
escreval("")
escreval("-----Moeda-----")
escreval("3- Converter Reais para Dolar")
escreval("4- Converter Dolar para Reais")
escreval("")
escreval("5- para sair")
escreval("")
escreval("=")
leia(opcaomenu)
escreval("opção escolhida: ", opcaomenu)

repita
   se opcaomenu =1 entao
      escreval("Quantos graus em Fahrenhait")
      leia(tempFah)
      resulCel <- (tempFah - 32) *5/9
      escreval("A temperatura em Celcius é °" resulCel:1:2, "c°")
      escreval("=")
      escreval(" Deseja realizar nova conversão?, Se sim digite nova opção de menu,se não digite 5")
   senao
      se opcaomenu=2 entao
         escreval ("Quantos graus Celcius")
         leia(tempCel)
         resulFah <- ( (tempCel * (9/5)) +32)
         escreval(" A temperatura em Fahrenheit é °", resulFah:1:2, "ºF")
         escreval("=")
         escreval(" Deseja realizar nova conversão?, Se sim digite nova opção de menu,se não digite 5")

      senao

         se opcaomenu=3 entao

            Escreval ("informe valor em reais, R$")
            leia(valoremreais)
            Escreval ("Informe cotacao Dolar: R$")
            leia(cotacaoDolar)
            conversao <- valoremReais/ cotacaoDolar
            escreval ("Valores em reais: R$", valoremReais: 2:2)
            escreval ("quantidade em Dolares: U$", conversao: 2:2)
            escreval("=")
            escreval(" Deseja realizar nova conversão?, Se sim digite nova opção de menu,se não digite 5")

         senao

            se opcaomenu=4 entao
               Escreval ("informe valor em dolar, U$")
               leia(valordolar)
               Escreval ("Informe cotacao Dolar: R$")
               leia(cotacaoDolar)
               conversao <- valorDolar * cotacaoDolar
               escreval ("Valores em dolar: U$", valorDolar: 2:2)
               escreval ("quantidade em Reais: R$", conversao: 2:2)
               escreval("=")
               escreval(" Deseja realizar nova conversão?, Se sim digite nova opção de menu,se não digite 5")

            fimse
         fimse
      fimse
      leia (opcaomenu)
   ate opcaomenu = 5
   
fimalgoritmo
