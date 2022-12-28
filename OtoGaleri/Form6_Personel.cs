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
    public partial class Form6_Personel : Form
    {
        public Form6_Personel()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Form2_Anasayfa anasayfa = new Form2_Anasayfa();
            anasayfa.Show();
            this.Hide();
        }
        //Buradan başlıyor
        OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();
        public static void listele(DataGridView dataGridView)
        {
            OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();


            var query = from item in db.PERSONEL
                        select new
                        {
                            item.Personel_ID,
                            item.Personel_TC,
                            item.Personel_Ad_Soyad,
                            item.Personel_Yas,
                            item.Personel_Tel,
                            item.Personel_Mail,
                            item.SUBE.Sube_Ad,
                            item.Personel_Foto,

                        };
            dataGridView.DataSource = query.ToList();
        }
        private void Form6_Personel_Load(object sender, EventArgs e)
        {
            txtPersonel_ID.Enabled = false;

            //Çalıştığı sube
            comboBoxCaliştigi_Sube.DataSource = db.SUBE.ToList();
            comboBoxCaliştigi_Sube.ValueMember = "Sube_ID";
            comboBoxCaliştigi_Sube.DisplayMember = "Sube_Ad";

        }

        private void btnFoto_Sec_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog3 = new OpenFileDialog();
            openFileDialog3.ShowDialog();
            pictureBoxPersonel.ImageLocation = openFileDialog3.FileName;
            txtFoto_Yolu.Text = openFileDialog3.FileName;
        }

        private void btnPersonel_Kaydet_Click(object sender, EventArgs e)
        {
            if (txtPersonel_Ad.Text == "" && maskedTextBoxPersonel_TC.Text == "")
            {
                MessageBox.Show("Lütfen personelin TC ve Adını giriniz.");
            }
            else
            {
                PERSONEL ekle = new PERSONEL();

                ekle.Personel_TC = maskedTextBoxPersonel_TC.Text;
                ekle.Personel_Ad_Soyad = txtPersonel_Ad.Text;
                ekle.Personel_Yas = txtPersonelYasi.Text;
                ekle.Personel_Tel = maskedTextBoxPersonel_Tel.Text;
                ekle.Personel_Mail = txtPersonel_Mail.Text;
                ekle.Sube_ID = Convert.ToInt32(comboBoxCaliştigi_Sube.SelectedValue);
                ekle.Personel_Foto = txtFoto_Yolu.Text;




                db.PERSONEL.Add(ekle);
                db.SaveChanges();
                MessageBox.Show("Kayit eklendi.");
                listele(dataGridViewPersonel);
            }
        }

        private void dataGridViewPersonel_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txtPersonel_ID.Text = dataGridViewPersonel.CurrentRow.Cells[0].Value.ToString();
            maskedTextBoxPersonel_TC.Text = dataGridViewPersonel.CurrentRow.Cells[1].Value.ToString();
            txtPersonel_Ad.Text = dataGridViewPersonel.CurrentRow.Cells[2].Value.ToString();
            txtPersonelYasi.Text = dataGridViewPersonel.CurrentRow.Cells[3].Value.ToString();
            maskedTextBoxPersonel_Tel.Text = dataGridViewPersonel.CurrentRow.Cells[4].Value.ToString();
            txtPersonel_Mail.Text = dataGridViewPersonel.CurrentRow.Cells[5].Value.ToString();
            comboBoxCaliştigi_Sube.Text = dataGridViewPersonel.CurrentRow.Cells[6].Value.ToString();

            txtFoto_Yolu.Text = dataGridViewPersonel.CurrentRow.Cells[7].Value.ToString();
            pictureBoxPersonel.ImageLocation = dataGridViewPersonel.CurrentRow.Cells[7].Value.ToString();

        }

        private void btnPersonel_Goster_Click(object sender, EventArgs e)
        {
            listele(dataGridViewPersonel);
        }

        private void btnPersonel_Guncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtPersonel_ID.Text);
            var guncel = db.PERSONEL.Find(id);
            guncel.Personel_TC = maskedTextBoxPersonel_TC.Text;
            guncel.Personel_Ad_Soyad = txtPersonel_Ad.Text;
            guncel.Personel_Yas = txtPersonelYasi.Text;
            guncel.Personel_Tel = maskedTextBoxPersonel_Tel.Text;
            guncel.Personel_Mail = txtPersonel_Mail.Text;
            guncel.Sube_ID = Convert.ToInt32(comboBoxCaliştigi_Sube.SelectedValue); //*****
            guncel.Personel_Foto = txtFoto_Yolu.Text;


            db.SaveChanges();
            MessageBox.Show("Kayıt başarılı bir şekilde güncelendi.", "Güncelleme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listele(dataGridViewPersonel);
        }

        private void btnPersonel_Sil_Click(object sender, EventArgs e)
        {
            int id;
            if (txtPersonel_ID.Text != "")
            {
                id = Convert.ToInt32(txtPersonel_ID.Text);
                var sil = db.PERSONEL.Find(id);

                if (sil != null)
                {
                    db.PERSONEL.Remove(sil);
                    db.SaveChanges();
                    MessageBox.Show("Kayıt başarılı bir şekilde silindi.", "Silme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    listele(dataGridViewPersonel);
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

        private void txtPersonel_Arama_TextChanged(object sender, EventArgs e)
        {
            dataGridViewPersonel.DataSource = db.PERSONEL.Where(x => x.Personel_Ad_Soyad == txtPersonel_Arama.Text).ToList();
        }
    }
}
