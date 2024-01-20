using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QUANLYSACH_MVC.Controllers
{
    public class AdminController : Controller
    {
        private SkyBrands_WebNCEntities3 db = new SkyBrands_WebNCEntities3();

        // GET: Admin
        public ActionResult Home()
        {
            if (Session["admin"] == null)
                return RedirectToAction("Login");
            return View();
        }

        // GET: Admin/Login
        public ActionResult Login()
        {
            return View();
        }

        // POST: Admin/Login
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login([Bind(Include = "id,username,password")] Admin adminModel)
        {
            if (ModelState.IsValid)
            {
                var admin = db.Admin.FirstOrDefault(ad => ad.username == adminModel.username && ad.password == adminModel.password);

                if (admin != null)
                {
                    Session["admin"] = admin.username;
                    return RedirectToAction("Home");
                }
                else
                {
                    ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu không chính xác");
                }
            }

            return View(adminModel);
        }

        // GET: Admin/Logout
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Login");
        }
    }
}