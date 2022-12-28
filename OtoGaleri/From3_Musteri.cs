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
    public partial class From3_Musteri : Form
    {
        public From3_Musteri()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Form2_Anasayfa anasayfa = new Form2_Anasayfa();
            anasayfa.Show();
            this.Hide();
        }
        //Buradan başlayacağız...
        OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();

        private void From3_Musteri_Load(object sender, EventArgs e)
        {
            txtMusteri_ID.Enabled = false;

            //Araclar
            comboBoxArac_ID.DataSource = db.ARACLAR.ToList();
            comboBoxArac_ID.ValueMember = "Arac_ID";
            comboBoxArac_ID.DisplayMember = "Arac_Model";
            //il
            comboBoxMusteri_il.DataSource = db.iller.ToList();
            comboBoxMusteri_il.ValueMember = "id";
            comboBoxMusteri_il.DisplayMember = "sehir";
            //İLCE
         


        }

        public static void listele(DataGridView dataGridView)
        {
            OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();


            var query = from item in db.MUSTERI
                        select new
                        {
                            item.Musteri_ID,
                            item.Musteri_TC,
                            item.Musteri_Ad_Soyad,
                            item.Musteri_Mail,
                            item.Musteri_Tel,
                            item.iller.sehir,
                            item.ilceler.ilce,
                            item.Musteri_Adres,
                            item.ARACLAR.Arac_Marka,
                            item.ARACLAR.Arac_Model,
                            item.ARACLAR.Arac_Durumu,
                            item.Ehliyet,

                        };
            dataGridView.DataSource = query.ToList();
        }
        private void btnMusteri_Goster_Linq_Click(object sender, EventArgs e)
        {
      

            listele(dataGridViewMusteri);
        }

        private void btnMusteri_Kaydet_Click(object sender, EventArgs e)
        {
            if (txtMusteri_Ad.Text == "" && maskedTextBoxMusteri_TC.Text == "")
            {
                MessageBox.Show("Lütfen TC ve Adınızı giriniz.");
            }
            else
            {
                MUSTERI ekle = new MUSTERI();

                ekle.Musteri_TC = maskedTextBoxMusteri_TC.Text;
                ekle.Musteri_Ad_Soyad = txtMusteri_Ad.Text;
                ekle.Musteri_Mail = txtMusteri_Mail.Text;
                ekle.Musteri_Tel = maskedTextBoxMusteri_Tel.Text;
                ekle.Musteri_İl = Convert.ToInt32(comboBoxMusteri_il.SelectedValue);
                ekle.Musteri_İlçe = Convert.ToInt32(comboBoxMusteri_ilce.SelectedValue);
                ekle.Musteri_Adres = richTextBoxMusteri_Adres.Text;
                ekle.Arac_ID = Convert.ToInt32(comboBoxArac_ID.SelectedValue);
                ekle.Ehliyet = comboBoxEhliyet.Text;



                db.MUSTERI.Add(ekle);
                db.SaveChanges();
                MessageBox.Show("Kayit eklendi.");
                listele(dataGridViewMusteri);
            }
        }

        

        private void btnMusteri_Guncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtMusteri_ID.Text);
            var guncel = db.MUSTERI.Find(id);
            guncel.Musteri_TC = maskedTextBoxMusteri_TC.Text;
            guncel.Musteri_Ad_Soyad = txtMusteri_Ad.Text;
            guncel.Musteri_Mail = txtMusteri_Mail.Text;
            guncel.Musteri_Tel = maskedTextBoxMusteri_Tel.Text;
            guncel.Musteri_İl = Convert.ToInt32(comboBoxMusteri_il.SelectedValue);
            guncel.Musteri_İlçe = Convert.ToInt32(comboBoxMusteri_ilce.SelectedValue);
            guncel.Musteri_Adres = richTextBoxMusteri_Adres.Text;
            guncel.Arac_ID = Convert.ToInt32(comboBoxArac_ID.SelectedValue);
            guncel.Ehliyet = comboBoxEhliyet.Text;
            db.SaveChanges();
            MessageBox.Show("Kayıt başarılı bir şekilde güncelendi.", "Güncelleme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            dataGridViewMusteri.DataSource = db.MUSTERI.ToList();
        }

        private void dataGridViewMusteri_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMusteri_ID.Text = dataGridViewMusteri.CurrentRow.Cells[0].Value.ToString();
            maskedTextBoxMusteri_TC.Text = dataGridViewMusteri.CurrentRow.Cells[1].Value.ToString();
            txtMusteri_Ad.Text = dataGridViewMusteri.CurrentRow.Cells[2].Value.ToString();
            txtMusteri_Mail.Text = dataGridViewMusteri.CurrentRow.Cells[3].Value.ToString();
            maskedTextBoxMusteri_Tel.Text = dataGridViewMusteri.CurrentRow.Cells[4].Value.ToString();
            comboBoxMusteri_il.Text = dataGridViewMusteri.CurrentRow.Cells[5].Value.ToString();
            comboBoxMusteri_ilce.Text = dataGridViewMusteri.CurrentRow.Cells[6].Value.ToString();
            richTextBoxMusteri_Adres.Text = dataGridViewMusteri.CurrentRow.Cells[7].Value.ToString();
            comboBoxArac_ID.Text = dataGridViewMusteri.CurrentRow.Cells[8].Value.ToString();
            comboBoxEhliyet.Text = dataGridViewMusteri.CurrentRow.Cells[9].Value.ToString();
        }

        private void btnMusteri_Sil_Click(object sender, EventArgs e)
        {
            int id;
            if (txtMusteri_ID.Text != "")
            {
                id = Convert.ToInt32(txtMusteri_ID.Text);
                var sil = db.MUSTERI.Find(id);

                if (sil != null)
                {
                    db.MUSTERI.Remove(sil);
                    db.SaveChanges();
                    MessageBox.Show("Kayıt başarılı bir şekilde silindi.", "Silme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    dataGridViewMusteri.DataSource = db.MUSTERI.ToList();

                }
                else
                {
                    MessageBox.Show("Veri Tabanı Boştur.");

                }
            }
            else
            {
                MessageBox.Show("Lütfen alanı doldurunuz.");

            }
        }

        private void txtMusteri_Arama_TextChanged(object sender, EventArgs e)
        {
            dataGridViewMusteri.DataSource = db.MUSTERI.Where(x => x.Musteri_Ad_Soyad == txtMusteri_Arama.Text).ToList();
        }

        private void comboBoxMusteri_il_SelectedIndexChanged(object sender, EventArgs e)
        {
            iller sehir = comboBoxMusteri_il.SelectedItem as iller;
            comboBoxMusteri_ilce.DataSource = sehir.ilceler.ToList();
            comboBoxMusteri_ilce.ValueMember = "id";
            comboBoxMusteri_ilce.DisplayMember = "ilce";
        }
    }
}
