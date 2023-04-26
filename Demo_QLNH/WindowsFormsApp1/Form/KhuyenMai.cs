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
    public partial class KhuyenMai : Form
    {
        public KhuyenMai()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataEntities db = new DataEntities();
            var result1 = from c in db.KHUYENMAIs
                          select new
                          {
                              c.IDKM,
                              c.TENKM,
                              c.GIAMGIA,
                              c.NGAYBATDAU,
                              c.NGAYKETTHUC
                          };
            dataGridView1.DataSource = result1.ToList();
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
