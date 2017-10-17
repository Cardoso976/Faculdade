using System;

namespace ValidaçãoCPF
{
    class Program
    {
        static void Main(string[] args)
        {
            int op = 0;
            do
            {
                Console.WriteLine("1 - Valida Digito Verificador");
                Console.WriteLine("2 - Gerar Digito Verificador");
                Console.WriteLine("3 - Sair do Programa");

                op = Int32.Parse(Console.ReadLine());
                switch (op)
                {
                    case 1:
                        string cpf;
                        string tempCpf;
                        string digito;
                        int soma;
                        int resto;
                        //bool vdd = true;
                        Console.WriteLine("Digite o CPF:");
                        cpf = Console.ReadLine();
                        cpf = cpf.Trim();
                        cpf = cpf.Replace(".", "").Replace("-", "");
                        if (cpf.Length != 11)
                        {
                            Console.WriteLine("CPF Incorreto!");
                        }
                        else
                        {
                            tempCpf = cpf.Substring(0, 9);
                            soma = 0;

                            for (int i = 0, j = 10; i < 9; i++, j--)
                                soma += int.Parse(tempCpf[i].ToString()) * j;
                            resto = soma % 11;
                            if (resto < 2)
                            {
                                resto = 0;
                            }
                            else
                            {
                                resto = 11 - resto;
                            }
                            digito = resto.ToString();
                            tempCpf = tempCpf + digito;
                            soma = 0;
                            for (int i = 0, j = 11; i < 10; i++, j--)
                                soma += int.Parse(tempCpf[i].ToString()) * j;
                            resto = soma % 11;
                            if (resto < 2)
                            {
                                resto = 0;
                            }
                            else
                            {
                                resto = 11 - resto;
                            }
                            digito = digito + resto.ToString();
                            if (digito.Equals(cpf.Substring(9, 2)))
                            {
                                Console.WriteLine("\nO CPF e Valido1");
                            }
                            else
                            {
                                Console.WriteLine("\nO CPF nao e Valido1");
                            }
                            Console.WriteLine("\n");
                        }
                        break;

                    case 2:
                        Console.WriteLine("Informe os 9 digitos: ");
                        cpf = Console.ReadLine();
                        cpf = cpf.Trim();
                        cpf = cpf.Replace(".", "");
                        if (cpf.Length != 9)
                        {
                            Console.WriteLine("Faltam digitos!");
                        }
                        else
                        {
                            tempCpf = cpf.Substring(0, 9);
                            soma = 0;

                            for (int i = 0, j = 10; i < 9; i++, j--)
                                soma += int.Parse(tempCpf[i].ToString()) * j;
                            resto = soma % 11;
                            if (resto < 2)
                            {
                                resto = 0;
                            }
                            else
                            {
                                resto = 11 - resto;
                            }
                            digito = resto.ToString();
                            tempCpf = tempCpf + digito;
                            soma = 0;
                            for (int i = 0, j = 11; i < 10; i++, j--)
                                soma += int.Parse(tempCpf[i].ToString()) * j;
                            resto = soma % 11;
                            if (resto < 2)
                            {
                                resto = 0;
                            }
                            else
                            {
                                resto = 11 - resto;
                            }

                            digito = digito + resto.ToString();

                            Console.WriteLine("\nDigito Verificador = " + digito);
                            Console.WriteLine("\n");
                        }
                        break;
                }

            } while (op != 3);
        }
    }
}