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
    
    public partial class BAOCAO
    {
        public string IDBC { get; set; }
        public string MANVBC { get; set; }
        public Nullable<System.DateTime> NGAYTHANG { get; set; }
        public Nullable<decimal> DOANHTHU { get; set; }
        public Nullable<decimal> CHIPHI { get; set; }
        public Nullable<decimal> LOINHUAN { get; set; }
    
        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}