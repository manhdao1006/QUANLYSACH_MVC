using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QUANLYSACH_MVC;

namespace QUANLYSACH_MVC.Controllers
{
    public class QuanLySachController : Controller
    {
        private SkyBrands_WebNCEntities3 db = new SkyBrands_WebNCEntities3();

        // GET: QuanLySach

        public ActionResult Index(int page = 1, int pageSize = 6)
        {
            if(Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            var totalRecords = db.Books.Count();
            var totalPages = (int)Math.Ceiling((double)totalRecords / pageSize);

            var dataToDisplay = db.Books.OrderBy(x => x.bookId)
                                         .Skip((page - 1) * pageSize)
                                         .Take(pageSize)
                                         .ToList();

            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = totalPages;
            ViewBag.HasPreviousPage = (page > 1);
            ViewBag.HasNextPage = (page < totalPages);

            return View(dataToDisplay);
        }

        // GET: QuanLySach/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Books books = db.Books.Find(id);
            if (books == null)
            {
                return HttpNotFound();
            }
            return View(books);
        }

        // GET: QuanLySach/Create
        public ActionResult Create()
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            ViewBag.cid = new SelectList(db.Categories, "categoryId", "categoryName");
            ViewBag.pcid = new SelectList(db.PublishingCompany, "companyId", "companyName");
            return View();
        }

        // POST: QuanLySach/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Books books, HttpPostedFileBase bookImage)
        {
            if (ModelState.IsValid && bookImage != null && bookImage.ContentLength > 0)
            {
                ViewBag.cid = new SelectList(db.Categories, "categoryId", "categoryName", books.cid);
                ViewBag.pcid = new SelectList(db.PublishingCompany, "companyId", "companyName", books.pcid);
                // Lưu ảnh vào thư mục trong ứng dụng
                var fileName = Path.GetFileName(bookImage.FileName);
                var path = Path.Combine(Server.MapPath("~/img/books"), fileName);
                bookImage.SaveAs(path);
                // Xử lý lưu thông tin về ảnh vào cơ sở dữ liệu
                string imagePath = Path.GetFileName(bookImage.FileName);
                Books book = new Books { bookId = books.bookId, bookName = books.bookName, bookImage = imagePath, author = books.author, price = books.price, quantity = books.quantity, publishingYear = books.publishingYear, language = books.language, numberPage = books.numberPage, form = books.form, weight = books.weight, bookDescribe = books.bookDescribe, cid = books.cid, pcid = books.pcid };
                // Redirect hoặc trả về view cần thiết sau khi upload thành công
                db.Books.Add(book);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(books);
        }

        // GET: QuanLySach/Edit/5
        public ActionResult Edit(string id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Books books = db.Books.Find(id);
            if (books == null)
            {
                return HttpNotFound();
            }
            ViewBag.cid = new SelectList(db.Categories, "categoryId", "categoryName", books.cid);
            ViewBag.pcid = new SelectList(db.PublishingCompany, "companyId", "companyName", books.pcid);
            return View(books);
        }

        // POST: QuanLySach/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Books books, HttpPostedFileBase bookImage)
        {
            if (ModelState.IsValid && bookImage != null && bookImage.ContentLength > 0)
            {
                ViewBag.cid = new SelectList(db.Categories, "categoryId", "categoryName", books.cid);
                ViewBag.pcid = new SelectList(db.PublishingCompany, "companyId", "companyName", books.pcid);
                // Lưu ảnh vào thư mục trong ứng dụng
                var fileName = Path.GetFileName(bookImage.FileName);
                var path = Path.Combine(Server.MapPath("~/img/books"), fileName);
                bookImage.SaveAs(path);
                // Xử lý lưu thông tin về ảnh vào cơ sở dữ liệu
                string imagePath = Path.GetFileName(bookImage.FileName);
                Books book = new Books { bookId = books.bookId, bookName = books.bookName, bookImage = imagePath, author = books.author, price = books.price, quantity = books.quantity, publishingYear = books.publishingYear, language = books.language, numberPage = books.numberPage, form = books.form, weight = books.weight, bookDescribe = books.bookDescribe, cid = books.cid, pcid = books.pcid };
                // Redirect hoặc trả về view cần thiết sau khi upload thành công
                db.Entry(book).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
 
            return View(books);
        }

        // GET: QuanLySach/Delete/5
        public ActionResult Delete(string id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Books books = db.Books.Find(id);
            if (books == null)
            {
                return HttpNotFound();
            }
            return View(books);
        }

        // POST: QuanLySach/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Books books = db.Books.Find(id);
            db.Books.Remove(books);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
