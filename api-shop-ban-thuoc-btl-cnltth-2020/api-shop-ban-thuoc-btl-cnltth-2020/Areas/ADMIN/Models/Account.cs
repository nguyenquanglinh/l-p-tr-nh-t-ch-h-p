using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPIBanThuoc.Models;

namespace WebAPIBanThuoc.Areas.ADMIN.Models
{
    
    public class Account
    {
        public int MaQT { get; set; }
        public string HoTen { get; set; }
        public string MatKhau { get; set; }
        public string SDT { get; set; }
        public ROLE Role { get; set; }
    }
}