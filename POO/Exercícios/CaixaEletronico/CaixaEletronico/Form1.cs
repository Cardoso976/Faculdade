using System;
using System.Windows.Forms;

namespace CaixaEletronico
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int idadeRodrigo = 19;
            int idadeLaura = 16;
            int idadeAdenir = 45;
            int idadeValmir = 47;
            double mediaIdade = (idadeAdenir + idadeRodrigo + idadeLaura + idadeValmir) / 4;

            MessageBox.Show("Média Idades = "+mediaIdade);
        }
    }
}
