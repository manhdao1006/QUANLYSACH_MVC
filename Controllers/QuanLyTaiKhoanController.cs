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
    public class QuanLyTaiKhoanController : Controller
    {
        private SkyBrands_WebNCEntities3 db = new SkyBrands_WebNCEntities3();

        // GET: QuanLyTaiKhoan
        public ActionResult Index()
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            return View(db.Accounts.ToList());
        }

        // GET: QuanLyTaiKhoan/Details/5
        public ActionResult Details(int? id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Accounts accounts = db.Accounts.Find(id);
            if (accounts == null)
            {
                return HttpNotFound();
            }
            return View(accounts);
        }

        // GET: QuanLyTaiKhoan/Create
        public ActionResult Create()
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            return View();
        }

        // POST: QuanLyTaiKhoan/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,username,password,email,phoneNumber")] Accounts accounts)
        {
            if (ModelState.IsValid)
            {
                db.Accounts.Add(accounts);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(accounts);
        }

        // GET: QuanLyTaiKhoan/Edit/5
        public ActionResult Edit(int? id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Accounts accounts = db.Accounts.Find(id);
            if (accounts == null)
            {
                return HttpNotFound();
            }
            return View(accounts);
        }

        // POST: QuanLyTaiKhoan/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,username,password,email,phoneNumber")] Accounts accounts)
        {
            if (ModelState.IsValid)
            {
                db.Entry(accounts).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(accounts);
        }

        // GET: QuanLyTaiKhoan/Delete/5
        public ActionResult Delete(int? id)
        {
            if (Session["admin"] == null)
                return RedirectToAction("../Admin/Login");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Accounts accounts = db.Accounts.Find(id);
            if (accounts == null)
            {
                return HttpNotFound();
            }
            return View(accounts);
        }

        // POST: QuanLyTaiKhoan/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Accounts accounts = db.Accounts.Find(id);
            db.Accounts.Remove(accounts);
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
