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
    public partial class DatMon : Form
    {
        public DatMon()
        {
            InitializeComponent();
        }

        public string[] MonAn = new string[100];
        public int s = 0;
        public int[] a = new int[100];
        public string[] b = new string[20];
        private void M3_Click(object sender, EventArgs e)
        {
            a[1]++;
            label1.Text = "";
            b[1] = "Khay thịt Un Matin / Un Matin meat tray        x" + a[1].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 890000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M4_Click(object sender, EventArgs e)
        {
            a[2]++;
            label1.Text = "";
            b[2] = "Cánh gà, Ức vịt, Lõi vai bò, Nạm bò Wagyu, thăn bụng heo dùng với Hoa Thiên Lý xào và sốt hành kiểu Việt Nam    x" + a[2].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 990000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M7_Click(object sender, EventArgs e)
        {
            a[3]++;
            label1.Text = "";
            b[3] = "Khay hải sản Un Matin    x" + a[3].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 790000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M6_Click(object sender, EventArgs e)
        {
            a[4]++;
            label1.Text = "";
            b[4] = "Bánh Gạo, Kem bọt Hành và Sốt Hạt Điều    x" + a[4].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 190000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M5_Click(object sender, EventArgs e)
        {
            a[5]++;
            label1.Text = "";
            b[5] = "Thạch Cổ Bê/ Veal Sweetbreads     x" + a[5].ToString() + "\n\n";
            s += 389000;
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M1_Click(object sender, EventArgs e)
        {
            a[6]++;
            label1.Text = "";
            b[6] = "Bánh dâu Pháp/ Fraisier cake     x" + a[6].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 189000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M10_Click(object sender, EventArgs e)
        {
            a[7]++;
            label1.Text = "";
            b[7] = "Trà tứ hoa     x" + a[7].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 49000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void M11_Click(object sender, EventArgs e)
        {
            a[8]++;
            label1.Text = "";
            b[8] = "Cúc tâm trà     x" + a[8].ToString() + "\n\n";
            for (int i = 1; i <= 11; i++)
                if (b[i] != "") label1.Text += b[i];
            s += 49000;
            TinhTien1.Text = "Tổng tiền:     " + s.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            label1.Text = "";
            TinhTien1.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            ChonBan chonBan = new ChonBan();    
            chonBan.ShowDialog();
            this.Close();
        }

        private void X1_Click(object sender, EventArgs e)
        {
            if (a[1] > 0)
            {
                a[1]--;
                label1.Text = "";
                if (a[1] > 0) b[1] = "Khay thịt Un Tin / Un Tin meat tray        x" + a[1].ToString() + "\n\n";
                else b[1] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 890000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }
        private void X2_Click(object sender, EventArgs e)
        {
            if (a[2] > 0)
            {
                a[2]--;
                label1.Text = "";
                if (a[2] > 0) b[2] = "Cánh gà, Ức vịt, Lõi vai bò, Nạm bò Wagyu, thăn bụng heo dùng với Hoa Thiên Lý xào và sốt hành kiểu Việt Nam        x" + a[2].ToString() + "\n\n";
                else b[2] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 990000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }

        private void X3_Click(object sender, EventArgs e)
        {
            if (a[3] > 0)
            {
                a[3]--;
                label1.Text = "";
                if (a[3] > 0) b[3] = "Khay hải sản Un Matin        x" + a[3].ToString() + "\n\n";
                else b[3] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 790000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }

        private void X4_Click(object sender, EventArgs e)
        {
            if (a[4] > 0)
            {
                a[4]--;
                label1.Text = "";
                if (a[4] > 0) b[4] = "Bánh Gạo, Kem bọt Hành và Sốt Hạt Điều        x" + a[4].ToString() + "\n\n";
                else b[4] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 190000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }

        private void X5_Click(object sender, EventArgs e)
        {
            if (a[5] > 0)
            {
                a[5]--;
                label1.Text = "";
                if (a[5] > 0) b[5] = "Thạch Cổ Bê/ Veal Sweetbreads        x" + a[5].ToString() + "\n\n";
                else b[5] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 389000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }

        private void X6_Click(object sender, EventArgs e)
        {
            if (a[6] > 0)
            {
                a[6]--;
                label1.Text = "";
                if (a[6] > 0) b[6] = "Bánh dâu Pháp/ Fraisier cake        x" + a[6].ToString() + "\n\n";
                else b[6] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 189000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }

        private void X7_Click(object sender, EventArgs e)
        {
            if (a[7] > 0)
            {
                a[7]--;
                label1.Text = "";
                if (a[7] > 0) b[7] = "Trà tứ hoa        x" + a[7].ToString() + "\n\n";
                else b[7] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 49000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }

        private void X8_Click(object sender, EventArgs e)
        {
            if (a[8] > 0)
            {
                a[8]--;
                label1.Text = "";
                if (a[8] > 0) b[8] = "Cúc tâm trà        x" + a[8].ToString() + "\n\n";
                else b[8] = "";
                for (int i = 1; i <= 11; i++)
                    if (b[i] != "") label1.Text += b[i];
                s -= 49000;
                TinhTien1.Text = "Tổng tiền:     " + s.ToString();
            }
        }
    }
}
