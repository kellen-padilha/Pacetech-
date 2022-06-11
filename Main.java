

package SEMANASEIS;

import java.util.Scanner;


public class Main {

 
    public static void main(String[] args) {
    Scanner leitor = new Scanner(System.in);
        int menu = 0;
        while (menu != 4) {

            System.out.println("Ola seja bem-vindo, digite opcao desejada");
            System.out.println("1 - Converter Celsius para Fahrenheit");
            System.out.println("2 - Converter Fahrenheit para Celsius");
            System.out.println("3 - Reais para Dolares");
            System.out.println("4 - D�lares para Reais");

            int opcao = leitor.nextInt();
            switch (opcao) {
                case 1 -> {
                    System.out.println("Digite a temperatura em Celsius: ");
                    float celsius = leitor.nextFloat();
                    float fahrenheit = (float) ((celsius * 1.8) + 32);
                    System.out.printf("A temperatura em fahrenheit � %.0f�F.", fahrenheit);
                }

                case 2 -> {
                    System.out.println("Digite a temperatura em Fahrenheit: ");
                    float fahrenheit2 = leitor.nextFloat();
                    float celsius2 = (float) ((fahrenheit2 - 32) / 1.8);
                    System.out.printf("A temperatura em Celsius e %.0f�C.", celsius2);
                }
                case 3 -> {
                    System.out.println("Digite o valor em reais: ");
                    float reais = leitor.nextFloat();
                    System.out.println("Digite a cota��o do d�lar: ");
                    float cotacao = leitor.nextFloat();

                    float dolares = reais / cotacao;
                    System.out.printf("O valor em d�lares � U$%.2f.", dolares);
                }
                case 4 -> {
                    System.out.println("Digite o valor em d�lares: ");
                    float dolares2 = leitor.nextFloat();
                    System.out.println("Digite a cota��o do d�lar: ");
                    float cotacao = leitor.nextFloat();

                    float reais2 = dolares2 * cotacao;
                    System.out.printf("O valor em reais � R$%.2f.", reais2);
                }

                default -> System.out.println("Opcao Invalida");
            }
            System.out.println("\nDeseja realizar mais alguma convers�o?");
            System.out.println("1 - Sim / 2 - Nao");
            menu = leitor.nextInt();
        }

    }
}
