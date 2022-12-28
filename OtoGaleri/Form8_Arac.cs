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
    public partial class Form8_Arac : Form
    {
        public Form8_Arac()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

            Form2_Anasayfa anasayfa = new Form2_Anasayfa();
            anasayfa.Show();
            this.Hide();
        }
        //Burası 
        OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();
        public static void listele(DataGridView dataGridView)
        {
            OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();


            var query = from item in db.ARACLAR
                        select new
                        {
                            item.Arac_ID,
                            item.Arac_Marka,
                            item.Arac_Model,
                            item.Arac_Renk,
                            item.Arac_Yil,
                            item.Arac_KM,
                            item.Arac_Kasa,
                            item.Arac_Durumu,
                            item.Arac_Fiyati,
                            item.Arac_Foto,
                            item.Arac_Vites,
                            item.Arac_Yakit,
                            item.Arac_Plaka,
                            item.Arac_SatılıkMi,


                        };
            dataGridView.DataSource = query.ToList();
        }
        private void btnSatilik_Arac_Kaydet_Click(object sender, EventArgs e)
        {
            if (txt_Arac_Marka.Text == "" && txt_Arac_Model.Text == "")
            {
                MessageBox.Show("Lütfen araba marka model giriniz.");
            }
            else
            {
                ARACLAR ekle = new ARACLAR();
                ekle.Arac_Marka = txt_Arac_Marka.Text;
                ekle.Arac_Model = txt_Arac_Model.Text;
                ekle.Arac_Yil = maskedTextBoxArac_Yil.Text;
                ekle.Arac_Yakit = comboBoxMusteriArac_Yakit.Text;
                ekle.Arac_Vites = comboBoxArac_Vites.Text;
                ekle.Arac_Durumu = comboBoxArac_Durumu.Text;
                ekle.Arac_KM = txtArac_KM.Text;
                ekle.Arac_Kasa = comboBoxArac_Kasa_Tipi.Text;
                ekle.Arac_Renk = txtArac_Renk.Text;
                ekle.Arac_Plaka = txtArac_Plaka.Text;
                ekle.Arac_Fiyati = txtArac_Fiyat.Text;
                ekle.Arac_Foto = txtArac_Foto.Text;

                if (radioButtonKiralik.Checked == true)
                {
                    ekle.Arac_SatılıkMi = false;
                }
                else if (radioButtonSatilik.Checked == true)
                {
                    ekle.Arac_SatılıkMi = true;

                }
                db.ARACLAR.Add(ekle);
                db.SaveChanges();
                MessageBox.Show("Kayit eklendi.");
                listele(dataGridView_Arac);
            }




        }

        private void btnSatilik_Arc_Foto_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog2 = new OpenFileDialog();
            openFileDialog2.ShowDialog();
            pictureBox_Arac_Resim.ImageLocation = openFileDialog2.FileName;
            txtArac_Foto.Text = openFileDialog2.FileName;
        }

        private void Form8_Satilik_Arac_Load(object sender, EventArgs e)
        {
            txt_Arac_ID.Enabled = false;
        }

        private void btnSatilik_Arac_Goster_Click(object sender, EventArgs e)
        {
            //dataGridView_Arac.DataSource = db.ARACLAR.ToList();
            listele(dataGridView_Arac);
        }

        private void btnArac_Guncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txt_Arac_ID.Text);
            var guncel = db.ARACLAR.Find(id);
            guncel.Arac_Marka = txt_Arac_Marka.Text;
            guncel.Arac_Model = txt_Arac_Model.Text;
            guncel.Arac_Yil = maskedTextBoxArac_Yil.Text;
            guncel.Arac_Yakit = comboBoxMusteriArac_Yakit.Text;
            guncel.Arac_Vites = comboBoxArac_Vites.Text;
            guncel.Arac_Durumu = comboBoxArac_Durumu.Text;
            guncel.Arac_KM = txtArac_KM.Text;
            guncel.Arac_Kasa = comboBoxArac_Kasa_Tipi.Text;
            guncel.Arac_Renk = txtArac_Renk.Text;
            guncel.Arac_Plaka = txtArac_Plaka.Text;
            guncel.Arac_Fiyati = txtArac_Fiyat.Text;
            guncel.Arac_Foto = txtArac_Foto.Text;

            if (radioButtonKiralik.Checked == true)
            {
                guncel.Arac_SatılıkMi = false;
            }
            else if (radioButtonSatilik.Checked == true)
            {
                guncel.Arac_SatılıkMi = true;

            }
            db.SaveChanges();
            MessageBox.Show("Kayıt başarılı bir şekilde güncelendi.", "Güncelleme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listele(dataGridView_Arac);
        }

        private void dataGridView_Arac_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txt_Arac_ID.Text = dataGridView_Arac.CurrentRow.Cells[0].Value.ToString();
            txt_Arac_Marka.Text = dataGridView_Arac.CurrentRow.Cells[1].Value.ToString();
            txt_Arac_Model.Text = dataGridView_Arac.CurrentRow.Cells[2].Value.ToString();
            txtArac_Renk.Text = dataGridView_Arac.CurrentRow.Cells[3].Value.ToString();

            maskedTextBoxArac_Yil.Text = dataGridView_Arac.CurrentRow.Cells[4].Value.ToString();
            txtArac_KM.Text = dataGridView_Arac.CurrentRow.Cells[5].Value.ToString();
            comboBoxArac_Kasa_Tipi.Text = dataGridView_Arac.CurrentRow.Cells[6].Value.ToString();
            comboBoxArac_Durumu.Text = dataGridView_Arac.CurrentRow.Cells[7].Value.ToString();
            txtArac_Fiyat.Text = dataGridView_Arac.CurrentRow.Cells[8].Value.ToString();
            txtArac_Foto.Text = dataGridView_Arac.CurrentRow.Cells[9].Value.ToString();
            comboBoxArac_Vites.Text = dataGridView_Arac.CurrentRow.Cells[10].Value.ToString();
            comboBoxMusteriArac_Yakit.Text = dataGridView_Arac.CurrentRow.Cells[11].Value.ToString();
            txtArac_Plaka.Text = dataGridView_Arac.CurrentRow.Cells[12].Value.ToString();
            pictureBox_Arac_Resim.ImageLocation = dataGridView_Arac.CurrentRow.Cells[9].Value.ToString();







        }
       

        private void btnArac_Sil_Click(object sender, EventArgs e)
        {
            int id;
            if (txt_Arac_ID.Text != "")
            {
                id = Convert.ToInt32(txt_Arac_ID.Text);
                var sil = db.ARACLAR.Find(id);

                if (sil != null)
                {
                    db.ARACLAR.Remove(sil);
                    db.SaveChanges();
                    MessageBox.Show("Kayıt başarılı bir şekilde silindi.", "Silme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    listele(dataGridView_Arac);


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

        private void txtArac_Model_Arama_TextChanged(object sender, EventArgs e)
        {
            dataGridView_Arac.DataSource = db.ARACLAR.Where(x => x.Arac_Model == txtArac_Model_Arama.Text).ToList();

        }
    }
}
