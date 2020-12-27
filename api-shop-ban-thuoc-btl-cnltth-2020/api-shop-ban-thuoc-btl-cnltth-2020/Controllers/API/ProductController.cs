using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Http;
using WebAPIBanThuoc.Models;
using FastMember;

namespace WebAPIBanThuoc.Controllers.API
{
    [RoutePrefix("api/product")]
    public class ProductController : ApiController
    {
        //lấy tất cả thuốc
        // GET: api/Thuoc
        [HttpGet]
        [Route("getlistthuoc")]
        public IEnumerable<SANPHAM> GetThuocLists()
        {
            using (MyDBContext context = new MyDBContext())
            {
                return context.SANPHAMs.ToList();
            }
        }
        [HttpGet]
        [Route("getView")]
        public IHttpActionResult GetView()
        {
            MyDBContext context = new MyDBContext();
            IEnumerable<SANPHAM> data = context.SANPHAMs.ToList();
            DataTable table = new DataTable();
            using (var reader = ObjectReader.Create(data, "MaSP", "TenSP"))
            {
                table.Load(reader);
            }
            return Json(table);
        }
        //lấy sản phẩm theo mã
        [HttpGet]
        [Route("getProductbyID/{id}")]
        public SANPHAM getProductbyID(int id)
        {
            using (MyDBContext context = new MyDBContext())
            {
                return context.SANPHAMs.Where(X => X.MaSP == id).FirstOrDefault();
            }
        }

        //lấy danh sách theo mã danh mục
        [HttpGet]
        [Route("getProductbyIDcategory/{id}")]
        public IEnumerable<SANPHAM> getProductbyIDcategory(int id)
        {
            using (MyDBContext context = new MyDBContext())
            {
                return context.SANPHAMs.Where(X => X.MaDM == id).ToList();
            }
        }

        //lấy danh sách sản phẩm theo mã danh mục ngoại trừ sản phẩm
        [HttpGet]
        [Route("getProductCategoryExceptID/{mathuoc}")]
        public IEnumerable<SANPHAM> getProductCategoryExceptID(String mathuoc)
        {
            using (MyDBContext context = new MyDBContext())
            {
                SANPHAM sp = context.SANPHAMs.Find(mathuoc); // lấy sản phẩm có id.
                int madm = (int)sp.MaDM;
                return context.SANPHAMs.Where(X => X.MaSP != int.Parse(mathuoc) && X.MaDM == madm).ToList();
            }
        }

        private bool idHasExist(string id)
        {
            MyDBContext db = new MyDBContext();
            SANPHAM temp = db.SANPHAMs.Single(i=>i.MaSP==int.Parse(id));
            if (temp == null)
            {
                return false;
            }

            return true;
        }
        public string autoID()
        {
            MyDBContext db = new MyDBContext();
            string id = "1";
            int temp = Convert.ToInt32(id);
            while (idHasExist(id) == true)
            {
                temp++;
            }
            id = temp.ToString();
            return id;
        }

        //tìm thuốc theo tên & công dụng
        [HttpGet]
        [Route("searchthuoc/{search}")]
        public IEnumerable<SANPHAM> searchthuoc(String search)
        {
            using (MyDBContext context = new MyDBContext())
            {
                return context.SANPHAMs.Where(X => X.TenSP.Contains(search) || X.CongDung.Contains(search)).ToList();
            }
        }

        [HttpPost]
        [Route("addthuoc")]
        public bool ThemThuoc(SANPHAM thuoc)
        {
            try
            {
                MyDBContext context = new MyDBContext();
                context.SANPHAMs.Add(thuoc);
                context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpPut]
        [Route("updatethuoc")]
        public bool SuaThuoc(SANPHAM thuoc)
        {
            try
            {
                MyDBContext context = new MyDBContext();
                SANPHAM Thuoc = context.SANPHAMs.Find(thuoc.MaSP);
                if (Thuoc == null) return false;
                Thuoc.TenSP = thuoc.TenSP;
                Thuoc.ThanhPhan = thuoc.ThanhPhan;
                //Thuoc.SoLuongTon = thuoc.SoLuongTon;
                Thuoc.MaDM = thuoc.MaDM;
                Thuoc.LieuLuong = thuoc.LieuLuong;
                Thuoc.HinhAnh = thuoc.HinhAnh;
                Thuoc.MoTa = thuoc.MoTa;
                Thuoc.GiaBan = thuoc.GiaBan;
                Thuoc.CongDung = thuoc.CongDung;
                context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        [HttpDelete]
        [Route("delthuoc/{id}")]
        public bool DeleteThuoc(int id)
        {
            using (MyDBContext context = new MyDBContext())
            {
                var thuoc = context.SANPHAMs.Find(id);
                if (thuoc == null)
                    return false;
                else
                {
                    while (true)
                    {
                        var donhangs = context.CHITIETDONHANGs.Where(i => i.MaSP.ToString() == thuoc.MaSP.ToString());
                        if (donhangs != null)
                        {
                            if (donhangs.Count() > 0)
                                foreach (var item in donhangs)
                                {
                                    context.CHITIETDONHANGs.Remove(item);
                                    context.SaveChanges();

                                }
                            else break;
                        }
                        else break;
                    }

                    context.SANPHAMs.Remove(thuoc);
                }

                context.SaveChanges();
                return true;
            }
        }
    }
}
