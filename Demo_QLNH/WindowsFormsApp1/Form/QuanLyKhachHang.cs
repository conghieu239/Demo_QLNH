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
    public partial class QuanLyKhachHang : Form
    {
        public QuanLyKhachHang()
        {
            InitializeComponent();
        }

        #region methods
        void Load_Data()
        {
            DataEntities db = new DataEntities();
            var result = from c in db.KHACHHANGs select new { c.IDKH, c.HOTENKH, c.LOAIKHACH, c.NGAYSINH,
                                                              c.NGAYLAPTHE, c.SDT, c.EMAIL, c.IDNGUOILAP, c.DIACHI };
            DataView.DataSource = result.ToList();
        }
        void Add_KhachHang()
        {

        }
        void Delete_KhachHang()
        {

        }
        void Edit_KhachHang()
        {

        }
        #endregion

        #region Events
        private void Btn_xem_Click(object sender, EventArgs e)
        {
            Load_Data();
        }

        private void Btn_them_Click(object sender, EventArgs e)
        {
            Add_KhachHang();
        }

        private void Btn_sua_Click(object sender, EventArgs e)
        {
            Edit_KhachHang();
        }

        private void Btn_xoa_Click(object sender, EventArgs e)
        {
            Delete_KhachHang();
        }
        #endregion

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            QuanLy quanLy = new QuanLy();
            quanLy.ShowDialog();
            this.Close();
        }
    }
}
