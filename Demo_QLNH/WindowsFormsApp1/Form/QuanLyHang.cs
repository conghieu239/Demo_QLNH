using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class QuanLyHang : Form
    {
        public QuanLyHang()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataEntities db = new DataEntities();
            var result1 = from c in db.SANPHAMNHAPs
                         select new
                         {
                             c.MASP,
                             c.TENSP,
                             c.DONVI,
                             c.SOLUONG,
                             c.GIANHAP
                         };
            var result2 = from c in db.SANPHAMXUATs
                          select new
                          {
                              c.MASP,
                              c.TENSP,
                              c.DONVI,
                              c.SOLUONG
                          };
            dataGridView1.DataSource = result1.ToList();
            dataGridView2.DataSource = result2.ToList();
            //var result = from c in db.SANPHAMNHAPs select db.SANPHAMNHAPs.Sum(c.SOLUONG * Convert.ToInt32(c.GIANHAP.));
            int sum = 0;
            for (int i = 0; i < dataGridView1.Rows.Count; ++i)
            {

                sum += (int)decimal.Parse(dataGridView1.Rows[i].Cells[3].Value.ToString(), System.Globalization.NumberStyles.Any) 
                    * (int)decimal.Parse(dataGridView1.Rows[i].Cells[4].Value.ToString(), System.Globalization.NumberStyles.Any);
            }
            textBox3.Text = "Tong = " + sum.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            QuanLy quanLy = new QuanLy();
            quanLy.ShowDialog();
            this.Close();
        }
    }
}
