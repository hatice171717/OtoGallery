using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OtoGaleri
{
    public partial class Form2_Anasayfa : Form
    {
        public Form2_Anasayfa()
        {
            InitializeComponent();
        }

        private void Form2_Anasayfa_Load(object sender, EventArgs e)
        {
          
        }

        private void pictureBoxAraclar_Click(object sender, EventArgs e)
        {
            Form8_Arac arac = new Form8_Arac();
            arac.Show();
            this.Hide();
        }

        private void pictureBoxMusteriler_Click(object sender, EventArgs e)
        {
            From3_Musteri musteri = new From3_Musteri();
            musteri.Show();
            this.Hide();
        }

       

      

        private void pictureBoxSubeler_Click(object sender, EventArgs e)
        {
            Form5_Subeler subeler = new Form5_Subeler();
            subeler.Show();
            this.Hide();
        }

        private void pictureBoxPersoneller_Click(object sender, EventArgs e)
        {
            Form6_Personel personel = new Form6_Personel();
            personel.Show();
            this.Hide();
        }

        private void pictureBoxRaporlar_Click(object sender, EventArgs e)
        {
            From7_Raporlar raporlar = new From7_Raporlar();
            raporlar.Show();
            this.Hide();
        }
    }
}
