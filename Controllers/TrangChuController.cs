using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QUANLYSACH_MVC.Controllers
{
    public class TrangChuController : Controller
    {
        private SkyBrands_WebNCEntities3 db = new SkyBrands_WebNCEntities3();
        // GET: TrangChu
        public ActionResult GioiThieu()
        {
            return View();
        }

        public ActionResult ThongTin()
        {
            return View();
        }

        public ActionResult SkyShop()
        {

            if (Session["username"] != null)
            {
                ViewBag.username = Session["username"].ToString();
            }

            return View();
        }

        public ActionResult SanPham(int cid, int page = 1, int pageSize = 8)
        {
            var totalRecords = db.GetBooksByCategoryId(cid).Count();
            var totalPages = (int)Math.Ceiling((double)totalRecords / pageSize);

            var dataToDisplay = db.GetBooksByCategoryId(cid)
                                    .Skip((page - 1) * pageSize)
                                    .Take(pageSize)
                                    .ToList();

            ViewBag.Cid = cid;
            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = totalPages;
            ViewBag.HasPreviousPage = (page > 1);
            ViewBag.HasNextPage = (page < totalPages);

            return View(dataToDisplay);
        }

        public ActionResult ChiTiet(string bookId)
        {
            if (bookId == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            Books tbBooks = db.Books.Find(bookId);
            if (tbBooks == null)
            {
                return HttpNotFound();
            }
            return View(tbBooks);
        }

        // GET: TrangChu/DangKy
        public ActionResult DangKy()
        {
            return View();
        }

        // POST: TrangChu/DangKy
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangKy([Bind(Include = "id,username,password,email,phoneNumber")] Accounts accounts)
        {
            if (ModelState.IsValid)
            {
                // Kiểm tra xem người dùng đã tồn tại trong cơ sở dữ liệu chưa
                if (db.Accounts.Any(acc => acc.username == accounts.username))
                {
                    ModelState.AddModelError("Username", "Tên người dùng đã tồn tại");
                    return View(accounts);
                }

                // Thêm người dùng mới vào cơ sở dữ liệu
                db.Accounts.Add(accounts);
                db.SaveChanges();
                return RedirectToAction("DangNhap");
            }

            return View(accounts);
        }

        // GET: TrangChu/DangNhap
        public ActionResult DangNhap()
        {
            return View();
        }

        // POST: TrangChu/DangNhap
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangNhap([Bind(Include = "id,username,password,email,phoneNumber")] Accounts accounts)
        {
            if (ModelState.IsValid)
            {
                var account = db.Accounts.FirstOrDefault(acc => acc.username == accounts.username && acc.password == accounts.password);

                if (account != null)
                {
                    Session["username"] = account.username;
                    Session["id"] = account.id;
                    return RedirectToAction("SkyShop");
                }
                else
                {
                    ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu không chính xác");
                }
            }

            return View(accounts);
        }

        // GET: TrangChu/DangXuat
        public ActionResult DangXuat()
        {
            Session.Clear();
            return RedirectToAction("SkyShop");
        }
    }
}