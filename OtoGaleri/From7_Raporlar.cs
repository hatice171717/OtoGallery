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
    public partial class From7_Raporlar : Form
    {
        public From7_Raporlar()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Form2_Anasayfa anasayfa = new Form2_Anasayfa();
            anasayfa.Show();
            this.Hide();

        }
        OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();
      
     

       
        private void radioButtonAda_Gore_Sirala_A_Z_CheckedChanged(object sender, EventArgs e)
        {
            List<ARACLAR> list1 = db.ARACLAR.OrderBy(x => x.Arac_Model).ToList();
            dataGridViewRaporlama.DataSource = list1;

        }

        private void radioButtonAda_Gore_Siralama_Z_A_CheckedChanged(object sender, EventArgs e)
        {

            List<ARACLAR> list2 = db.ARACLAR.OrderByDescending(x => x.Arac_Model).ToList();
            dataGridViewRaporlama.DataSource = list2;

        }

        private void radioButtonEn_Yeni_Uc_Arac_CheckedChanged(object sender, EventArgs e)
        {
            List<ARACLAR> list = db.ARACLAR.OrderByDescending(x => x.Arac_Yil).Take(3).ToList();
            dataGridViewRaporlama.DataSource = list;

        }

        private void radioButtonEn_Eski_Uc_Arac_CheckedChanged(object sender, EventArgs e)
        {
            List<ARACLAR> list = db.ARACLAR.OrderBy(x => x.Arac_Yil).Take(3).ToList();
            dataGridViewRaporlama.DataSource = list;

        }

        private void radioButtonToplam_Sube_Sayisi_CheckedChanged(object sender, EventArgs e)
        {
            int toplam = db.SUBE.Count();
            lblRaporlama.Text = "Toplam Sube: " + toplam;
            
           
        }

        private void radioButtonToplam_Personel_Sayisi_CheckedChanged(object sender, EventArgs e)
        {
            int toplam = db.PERSONEL.Count();
            lblRaporlama.Text = "Toplam Personel: " + toplam;
        }

        private void radioButtonToplam_Musteri_Sayisi_CheckedChanged(object sender, EventArgs e)
        {
            int toplam = db.MUSTERI.Count();
            lblRaporlama.Text = "Toplam Müşteri: " + toplam;
        }

        private void radioButtonToplam_Arac_Sayisi_CheckedChanged(object sender, EventArgs e)
        {
            int toplam = db.ARACLAR.Count();
            lblRaporlama.Text = "Toplam Araç: " + toplam;
        }

        private void radioButtonKiralik_Araclar_CheckedChanged(object sender, EventArgs e)
        {
            List<ARACLAR> list = db.ARACLAR.Where(x => x.Arac_SatılıkMi == false).ToList();
            dataGridViewRaporlama.DataSource = list;

        }

        private void radioButtonSatilik_Araclar_CheckedChanged(object sender, EventArgs e)
        {
            List<ARACLAR> list = db.ARACLAR.Where(x => x.Arac_SatılıkMi == true).ToList();
            dataGridViewRaporlama.DataSource = list;

        }
    }
}
