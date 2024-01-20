using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QUANLYSACH_MVC;

namespace QUANLYSACH_MVC.Controllers
{
    public class QuanLyTheLoaiController : Controller
    {
        private SkyBrands_WebNCEntities3 db = new SkyBrands_WebNCEntities3();

        // GET: QuanLyTheLoai
        public ActionResult Index()
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            return View(db.Categories.ToList());
        }

        // GET: QuanLyTheLoai/Details/5
        public ActionResult Details(int? id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Categories categories = db.Categories.Find(id);
            if (categories == null)
            {
                return HttpNotFound();
            }
            return View(categories);
        }

        // GET: QuanLyTheLoai/Create
        public ActionResult Create()
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            return View();
        }

        // POST: QuanLyTheLoai/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "categoryId,categoryName")] Categories categories)
        {
            if (ModelState.IsValid)
            {
                db.Categories.Add(categories);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(categories);
        }

        // GET: QuanLyTheLoai/Edit/5
        public ActionResult Edit(int? id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Categories categories = db.Categories.Find(id);
            if (categories == null)
            {
                return HttpNotFound();
            }
            return View(categories);
        }

        // POST: QuanLyTheLoai/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "categoryId,categoryName")] Categories categories)
        {
            if (ModelState.IsValid)
            {
                db.Entry(categories).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(categories);
        }

        // GET: QuanLyTheLoai/Delete/5
        public ActionResult Delete(int? id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Categories categories = db.Categories.Find(id);
            if (categories == null)
            {
                return HttpNotFound();
            }
            return View(categories);
        }

        // POST: QuanLyTheLoai/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Categories categories = db.Categories.Find(id);
            db.Categories.Remove(categories);
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
