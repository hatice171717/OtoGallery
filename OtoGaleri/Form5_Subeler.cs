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
    public partial class Form5_Subeler : Form
    {
        public Form5_Subeler()
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
        private void Form5_Subeler_Load(object sender, EventArgs e)
        {
            txtSube_ID.Enabled = false;

            //Sube sehir
            comboBoxSube_il.DataSource = db.iller.ToList();
            comboBoxSube_il.ValueMember = "id";
            comboBoxSube_il.DisplayMember = "sehir";
        }

        public static void listele(DataGridView dataGridView)
        {
            OtoGaleriProjesiEntities3 db = new OtoGaleriProjesiEntities3();


            var query = from item in db.SUBE
                        select new
                        {
                            item.Sube_ID,
                            item.Sube_Ad,
                            item.Sorumlı_Kisi,
                            item.Sube_Tel,
                            item.Sube_Mail,
                            item.iller.sehir,
                           

                        };
            dataGridView.DataSource = query.ToList();
        }

        private void btnSube_Kaydet_Click(object sender, EventArgs e)
        {

            if (txtSube_Ad.Text == "")
            {
                MessageBox.Show("Lütfen Şube adını giriniz.");
            }
            else
            {
                SUBE ekle = new SUBE();

                ekle.Sube_Ad = txtSube_Ad.Text;
                ekle.Sorumlı_Kisi = txtSube_Sorumlu_Kisi.Text;
                ekle.Sube_Tel = maskedTextBoxSube_Tel.Text;
                ekle.Sube_Mail = txtSube_Mail.Text;
                ekle.Sube_il = Convert.ToInt32(comboBoxSube_il.SelectedValue);
              



                db.SUBE.Add(ekle);
                db.SaveChanges();
                MessageBox.Show("Kayit eklendi.");
                listele(dataGridViewSubeler);
            }
        }

        private void btnSube_Goster_Click(object sender, EventArgs e)
        {
            listele(dataGridViewSubeler);
        }

        private void dataGridViewSubeler_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txtSube_ID.Text = dataGridViewSubeler.CurrentRow.Cells[0].Value.ToString();
            txtSube_Ad.Text = dataGridViewSubeler.CurrentRow.Cells[1].Value.ToString();
            txtSube_Sorumlu_Kisi.Text = dataGridViewSubeler.CurrentRow.Cells[2].Value.ToString();
            maskedTextBoxSube_Tel.Text = dataGridViewSubeler.CurrentRow.Cells[3].Value.ToString();
            txtSube_Mail.Text = dataGridViewSubeler.CurrentRow.Cells[4].Value.ToString();
            comboBoxSube_il.Text = dataGridViewSubeler.CurrentRow.Cells[5].Value.ToString();
        }

        private void btnSube_Guncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtSube_ID.Text);
            var guncel = db.SUBE.Find(id);
            guncel.Sube_Ad = txtSube_Ad.Text;
            guncel.Sorumlı_Kisi = txtSube_Sorumlu_Kisi.Text;
            guncel.Sube_Tel = maskedTextBoxSube_Tel.Text;
            guncel.Sube_Mail = txtSube_Mail.Text;
            guncel.Sube_il = Convert.ToInt32(comboBoxSube_il.SelectedValue);
           
            db.SaveChanges();
            MessageBox.Show("Kayıt başarılı bir şekilde güncelendi.", "Güncelleme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listele(dataGridViewSubeler);
        }

        private void btnSube_Sil_Click(object sender, EventArgs e)
        {
            int id;
            if (txtSube_ID.Text != "")
            {
                id = Convert.ToInt32(txtSube_ID.Text);
                var sil = db.SUBE.Find(id);

                if (sil != null)
                {
                    db.SUBE.Remove(sil);
                    db.SaveChanges();
                    MessageBox.Show("Kayıt başarılı bir şekilde silindi.", "Silme Bilgisi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    listele(dataGridViewSubeler);

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

        private void txtSube_Arama_TextChanged(object sender, EventArgs e)
        {
            dataGridViewSubeler.DataSource = db.SUBE.Where(x => x.Sube_Ad == txtSube_Arama.Text).ToList();

        }
    }
}
