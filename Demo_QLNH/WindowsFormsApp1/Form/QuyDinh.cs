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
    public partial class QuyDinh : Form
    {
        public QuyDinh()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataEntities db = new DataEntities();
            var result1 = from c in db.QUYDINHs
                          select new
                          {
                              c.MAQD,
                              c.TENQD,
                              c.MANVBIPHAT,
                              c.HINHTHUCPHAT
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
