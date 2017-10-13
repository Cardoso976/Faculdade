using System;

namespace ValidaçãoCPF
{
    class Program
    {
        static void Main(string[] args)
        {
            int op = Int32.Parse(Console.ReadLine());
            switch (op)
            {
                case 1:
                    string cpf;
                    int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
                    int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
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
                        Console.WriteLine("CPF Incorreto");
                    }
                    else
                    {
                        tempCpf = cpf.Substring(0, 9);
                        soma = 0;

                        for (int i = 0; i < 9; i++)
                            soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
                        resto = soma % 11;
                        if (resto < 2)
                            resto = 0;
                        else
                            resto = 11 - resto;
                        digito = resto.ToString();
                        tempCpf = tempCpf + digito;
                        soma = 0;
                        for (int i = 0; i < 10; i++)
                            soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
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
                            Console.WriteLine("O CPF e Valido, digito verificador correto = " + digito);
                        }
                        else
                        {
                            Console.WriteLine("O CPF nao e Valido, digito verificador incorreto = " + cpf.Substring(9, 2));
                        }
                        Console.WriteLine("Tecle Enter para encerrar");
                        Console.Read();
                    }
                    break;
                case 2:
                    string cpf1;
                    int[] multiplicador11 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
                    int[] multiplicador22 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
                    string tempCpf1;
                    string digito1;
                    int soma1;
                    int resto1;
                    //bool vdd = true;
                    Console.WriteLine("Digite o CPF:");
                    cpf = Console.ReadLine();
                    cpf = cpf.Trim();
                    cpf = cpf.Replace(".", "").Replace("-", "");
                    if (cpf.Length != 11)
                    {
                        Console.WriteLine("CPF Incorreto");
                    }
                    else
                    {
                        tempCpf = cpf.Substring(0, 9);
                        soma = 0;

                        for (int i = 0; i < 9; i++)
                            soma += int.Parse(tempCpf[i].ToString()) * multiplicador11[i];
                        resto = soma % 11;
                        if (resto < 2)
                            resto = 0;
                        else
                            resto = 11 - resto;
                        digito = resto.ToString();
                        tempCpf = tempCpf + digito;
                        soma = 0;
                        for (int i = 0; i < 10; i++)
                            soma += int.Parse(tempCpf[i].ToString()) * multiplicador22[i];
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
                            Console.WriteLine("O CPF e Valido, digito verificador correto = " + digito);
                        }
                        else
                        {
                            Console.WriteLine("O CPF nao e Valido, digito verificador incorreto = " + cpf.Substring(9, 2));
                        }
                        Console.WriteLine("Tecle Enter para encerrar");
                        Console.Read();
                    }
                    break;
            }

        }
    }
}