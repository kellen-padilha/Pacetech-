algoritmo "Temperatura Convertida Fahreint"
// Fun��o :
// Autor :
// Data : 18/05/2022
// Se��o de Declara��es
var

tempCel, tempFah: real

inicio
Escreval (" Escreva por favor a temperatura desejada: ")
leia(tempFah)
tempCel <- (tempFah-32) /1.8
Escreval (" A temperatura em Celsius �:")
Escreval (tempCel)

se tempCel < 15 entao
   Escreval (" A temperatura est� fria")
senao
   se tempCel < 28 entao
      Escreval ( " A temperatura est� agrad�vel")
   senao
      Escreval ( " A temperatura est� quente")
   fimse
fimse


fimalgoritmo
