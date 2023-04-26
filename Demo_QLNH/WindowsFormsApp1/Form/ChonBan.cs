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
    public partial class ChonBan : Form
    {
        public ChonBan()
        {
            InitializeComponent();
        }

        public int[] a = new int[30];

        private void B1_Click(object sender, EventArgs e)
        {
            int z = ++a[1] % 3;
            if (z == 0) B1.BackColor = Color.White;
            if (z == 1) B1.BackColor = Color.Yellow;
            if (z == 2) B1.BackColor = Color.Red;
            if (z == 1) CM1.Enabled = true; else CM1.Enabled = false;
        }

        private void B2_Click(object sender, EventArgs e)
        {
            int z = ++a[2] % 3;
            if (z == 0) B2.BackColor = Color.White;
            if (z == 1) B2.BackColor = Color.Yellow;
            if (z == 2) B2.BackColor = Color.Red;
            if (z == 1) CM2.Enabled = true; else CM2.Enabled = false;
        }

        private void B3_Click(object sender, EventArgs e)
        {
            int z = ++a[3] % 3;
            if (z == 0) B3.BackColor = Color.White;
            if (z == 1) B3.BackColor = Color.Yellow;
            if (z == 2) B3.BackColor = Color.Red;
            if (z == 1) CM3.Enabled = true; else CM3.Enabled = false;
        }

        private void B4_Click(object sender, EventArgs e)
        {
            int z = ++a[4] % 3;
            if (z == 0) B4.BackColor = Color.White;
            if (z == 1) B4.BackColor = Color.Yellow;
            if (z == 2) B4.BackColor = Color.Red;
            if (z == 1) CM4.Enabled = true; else CM4.Enabled = false;
        }

        private void B5_Click(object sender, EventArgs e)
        {
            int z = ++a[5] % 3;
            if (z == 0) B5.BackColor = Color.White;
            if (z == 1) B5.BackColor = Color.Yellow;
            if (z == 2) B5.BackColor = Color.Red;
            if (z == 1) CM5.Enabled = true; else CM5.Enabled = false;
        }

        private void B6_Click(object sender, EventArgs e)
        {
            int z = ++a[6] % 3;
            if (z == 0) B6.BackColor = Color.White;
            if (z == 1) B6.BackColor = Color.Yellow;
            if (z == 2) B6.BackColor = Color.Red;
        }

        private void B7_Click(object sender, EventArgs e)
        {
            int z = ++a[7] % 3;
            if (z == 0) B7.BackColor = Color.White;
            if (z == 1) B7.BackColor = Color.Yellow;
            if (z == 2) B7.BackColor = Color.Red;
        }

        private void B8_Click(object sender, EventArgs e)
        {
            int z = ++a[8] % 3;
            if (z == 0) B8.BackColor = Color.White;
            if (z == 1) B8.BackColor = Color.Yellow;
            if (z == 2) B8.BackColor = Color.Red;
        }

        private void B9_Click(object sender, EventArgs e)
        {
            int z = ++a[9] % 3;
            if (z == 0) B9.BackColor = Color.White;
            if (z == 1) B9.BackColor = Color.Yellow;
            if (z == 2) B9.BackColor = Color.Red;
        }

        private void B10_Click(object sender, EventArgs e)
        {
            int z = ++a[10] % 3;
            if (z == 0) B10.BackColor = Color.White;
            if (z == 1) B10.BackColor = Color.Yellow;
            if (z == 2) B10.BackColor = Color.Red;
        }

        private void CM1_Click(object sender, EventArgs e)
        {
            this.Hide();
            DatMon datmon = new DatMon();
            datmon.ShowDialog();
            this.Close();
        }

        private void CM2_Click(object sender, EventArgs e)
        {
            this.Hide();
            DatMon datmon = new DatMon();
            datmon.ShowDialog();
            this.Close();
        }

        private void CM3_Click(object sender, EventArgs e)
        {
            this.Hide();
            DatMon datmon = new DatMon();
            datmon.ShowDialog();
            this.Close();
        }

        private void CM4_Click(object sender, EventArgs e)
        {
            this.Hide();
            DatMon datmon = new DatMon();
            datmon.ShowDialog();
            this.Close();
        }

        private void CM5_Click(object sender, EventArgs e)
        {
            this.Hide();
            DatMon datmon = new DatMon();
            datmon.ShowDialog();
            this.Close();
        }

        private void TroLai_Click(object sender, EventArgs e)
        {
            this.Hide();
            QuanLy quanLy = new QuanLy();
            quanLy.ShowDialog();
            this.Close();
        }
    }
}
