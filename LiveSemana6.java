/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.livesemana6;

import java.util.Scanner;

/**
 *
 * @author jonathandamasiomedeiros
 */
public class LiveSemana6 {

    public static void main(String[] args) {
        int sexo; //1-Mulher 2-Homem
        float altura=0, totalAlturaMulheres=0, maiorAltura=0, menorAltura=0, mediaAlturaMulheres; 
        int totalMulheres=0;
        
        Scanner teclado = new Scanner(System.in);
        
        for (int i=0; i < 3; i++){
            
            //Entradas de dados
            System.out.print("Digite a altura da pessoa " + (i+1) + ": ");
            altura = teclado.nextFloat();
            System.out.print("Digite o sexo da pessoa (1- Mulher, 2- Homem)" + (i+1) + ": ");
            sexo = teclado.nextInt();
            
            
            //Processamento relacionado as informações de mulheres
            if (sexo == 1){
                //totalMulheres = totalMulheres + 1;
                totalMulheres++;
                
                //totalAlturaMulheres = totalAlturaMulheres + altura;
                totalAlturaMulheres+= altura;
            }
            
            //Processamento geral em relação a altura
            
            if (altura > maiorAltura){
                maiorAltura = altura;               
            }
            
            if ((altura < menorAltura) || (i == 0)) {
                menorAltura = altura;
            }
            
        }
        
        mediaAlturaMulheres = totalAlturaMulheres/totalMulheres;
        
        System.out.println("Apurando resultado...");
        System.out.println("Total de mulheres = " + totalMulheres);
        System.out.println("Média de altura das mulheres = " + String.format("%.2f", mediaAlturaMulheres));
        System.out.println("Maior altura: " + maiorAltura + " |||| Menor altura: " + menorAltura);
        
    }
}
