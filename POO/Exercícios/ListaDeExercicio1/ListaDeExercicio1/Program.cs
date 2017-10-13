using System;

namespace ListaDeExercicio1
{
    class Program
    {
        static void Main(string[] args)
        {
            int op = 0;
            do
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine("Digite a opcao desejada:");
                Console.WriteLine("1 - Numeros pares do 100 ao 200:");
                Console.WriteLine("2 - Total de numeros negativos digtados:");
                Console.WriteLine("3 - Soma dos numeros entre 0 e 100:");
                Console.WriteLine("4 - Soma dos numeros pares entre 0 e 100:");
                Console.WriteLine("5 - Soma dos multiplos de 7 entre 100 e 200:");
                Console.WriteLine("6 - Tabauada de um numero inteiro qualquer:\n");

                op = int.Parse(Console.ReadLine());

                switch (op)
                {
                    case 1:
                        for (int i = 100; i < 200; i += 2)
                        {
                            Console.Write(i + " ");
                        }
                        Console.WriteLine();
                        break;
                    case 2:
                        Console.WriteLine("\nDigite 5 numeros diferentes:");
                        int aux = 0;
                        int j = 0;
                        for (int i = 0; i < 5; i++)
                        {
                            aux = int.Parse(Console.ReadLine());
                            if (aux < 0)
                            {
                                j++;
                            }
                        }
                        Console.WriteLine("\nTotal de numeros negativos digitados: " + j);
                        break;
                    case 3:
                        int total = 0;
                        for (int i = 0; i < 100; i++)
                        {
                            total += i;
                        }
                        Console.WriteLine("\nSoma dos numeros entre 0 e 100 e igual a: " + total);
                        break;
                    case 4:
                        int totalPar = 0;
                        for (int i = 0; i < 100; i += 2)
                        {
                            totalPar += i;
                        }
                        Console.WriteLine("\nSoma total dos numeros pares: " + totalPar);
                        break;
                    case 5:
                        int somaSete = 0;
                        for (int i = 100; i < 200; i++)
                        {
                            if (i % 7 == 0)
                            {
                                somaSete += i;
                            }
                        }
                        Console.WriteLine("\nSoma Total dos numeros multiplos de 7 e igual a: " + somaSete);
                        break;
                    case 6:
                        Console.WriteLine("Digite um numero para ver a tabuada dele: ");
                        int num = int.Parse(Console.ReadLine());
                        for (int i = 0; i <= 10; i++)
                        {
                            Console.WriteLine(i + "x" + num + "=" + i * num);
                        }
                        break;
                }

            } while (op != 7);

            Console.WriteLine("Tecle Enter para sair!!");
            Console.ReadLine();
        }
    }
}