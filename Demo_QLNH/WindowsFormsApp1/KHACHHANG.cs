//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WindowsFormsApp1
{
    using System;
    using System.Collections.Generic;
    
    public partial class KHACHHANG
    {
        public string IDKH { get; set; }
        public string HOTENKH { get; set; }
        public string LOAIKHACH { get; set; }
        public Nullable<System.DateTime> NGAYSINH { get; set; }
        public Nullable<System.DateTime> NGAYLAPTHE { get; set; }
        public string SDT { get; set; }
        public string EMAIL { get; set; }
        public string IDNGUOILAP { get; set; }
        public string DIACHI { get; set; }
    
        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}
