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
    public partial class Form1_Giris : Form
    {
        public Form1_Giris()
        {
            InitializeComponent();
        }

        private void btnKayitOl_Click(object sender, EventArgs e)
        {
            panelKayit_Ol.Visible = true;
        }

        private void Form1_Giris_Load(object sender, EventArgs e)
        {

            panelKayit_Ol.Visible = false;
            panelSifremi_Unuttum.Visible = false;
        }

        private void lblSifre_Unuttum_Click(object sender, EventArgs e)
        {
            panelSifremi_Unuttum.Visible = true;
        }
        //Buradan Sonra
        //Entity Bağlantısını tanımlıyoruz.

         OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();



        private void btnKayit_Ol_Yeni_Kullanici_Click(object sender, EventArgs e)
        {
            KULLANICI kullanici = new KULLANICI();
            kullanici.Kul_Ad_Soyad = txtKayit_Ad.Text;
            kullanici.Kul_Mail = txtKayit_Mail.Text;
            kullanici.Kul_Tel = maskedTextBoxKayit_Tel.Text;
            kullanici.Kul_Foto = txtKayit_Foto.Text;
            if (txtKayit_Sifre.Text == txtKayit_Sifre_Tekrar.Text)
            {
                kullanici.Kul_Sifre = txtKayit_Sifre.Text;
                db.KULLANICI.Add(kullanici);
                db.SaveChanges();
                MessageBox.Show("Kaydınız başarılı şekilde gerçekleşti.", "BİLGİ", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Şifre kontrol sağlanamdı", "UYARI", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtKayit_Sifre.Clear();
                txtKayit_Sifre_Tekrar.Clear();
            }


        }

        private void btnFoto_Sec_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.ShowDialog();
            pictureBoxKayit.ImageLocation = openFileDialog1.FileName;
            txtKayit_Foto.Text = openFileDialog1.FileName;
        }

        private void btnGiris_Click(object sender, EventArgs e)
        {
            KULLANICI k = db.KULLANICI.Where(x => x.Kul_Ad_Soyad == txtGiris_Ad.Text && x.Kul_Sifre == txtGiris_Sifre.Text).SingleOrDefault();
            if (k == null)
            {
                MessageBox.Show("Kullanıcı bulunamadı.", "HATA", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else if (k != null)
            {
                Form2_Anasayfa anasayfa = new Form2_Anasayfa();
                anasayfa.Show();
                this.Hide();

            }
        }

        private void btnSifre_Degistir_Click(object sender, EventArgs e)
        {
            
            if (txtKontrolSifre1.Text==txtKontrolSifre2.Text)
            {
                //İd ile Güncelleme
                //int id = Convert.ToInt32(txtKontrolAd.Text);
                //var x = db.KULLANICI.Find(id);
                //x.Kul_Sifre = txtKontrolSifre1.Text;
                //db.SaveChanges();
                //MessageBox.Show("Güncellendi.");

                //ad kullanarak günelleme
                var ad = txtKontrolAd.Text;
                KULLANICI sfr = db.KULLANICI.First(f => f.Kul_Ad_Soyad == ad);
                sfr.Kul_Sifre = txtKontrolSifre1.Text;
                db.SaveChanges();
                MessageBox.Show("Güncellendi.");

            }
            else
            {
                MessageBox.Show("Şifre kontrolu sağlanamadı.");

            }


        }

       
    }
}
