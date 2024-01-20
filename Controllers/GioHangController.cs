using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QUANLYSACH_MVC.Controllers
{
    public class GioHangController : Controller
    {
        // GET: DanhSachGioHang
        public ActionResult DanhSach()
        {
            return View();
        }

        // GET: ChiTiet
        public ActionResult ChiTiet()
        {
            return View();
        }

        // GET: PayBank
        public ActionResult PayBank()
        {
            return View();
        }


        // GET: PayZalo
        public ActionResult PayZalo()
        {
            return View();
        }
    }
}