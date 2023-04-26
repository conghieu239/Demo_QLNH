using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class QuanLyNhanVien : Form
    {
        public QuanLyNhanVien()
        {
            InitializeComponent();
        }

        private void LoadData()
        {
            DataEntities db = new DataEntities();
            var result = from c in db.NHANVIENs select new { c.IDNV, c.HOTEN, c.NGSINH, c.SODT, c.GT, c.DIACHI, c.NGAYLAM, c.CALAM, c.LUONG };
            dataGridView1.DataSource = result.ToList();
        }
        
        private void button1_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
            QuanLy quanLy = new QuanLy();
            quanLy.ShowDialog();
            this.Close();
        }
    }
}
