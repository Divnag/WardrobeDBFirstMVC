using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeDBFirstMVC.Models;

namespace WardrobeDBFirstMVC.Controllers
{
    public class Season1Controller : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: Season1
        public ActionResult Index()
        {
            return View(db.Seasons1.ToList());
        }

        // GET: Season1/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Season1 season1 = db.Seasons1.Find(id);
            if (season1 == null)
            {
                return HttpNotFound();
            }
            return View(season1);
        }

        // GET: Season1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Season1/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SeasonID,Season")] Season1 season1)
        {
            if (ModelState.IsValid)
            {
                db.Seasons1.Add(season1);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(season1);
        }

        // GET: Season1/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Season1 season1 = db.Seasons1.Find(id);
            if (season1 == null)
            {
                return HttpNotFound();
            }
            return View(season1);
        }

        // POST: Season1/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SeasonID,Season")] Season1 season1)
        {
            if (ModelState.IsValid)
            {
                db.Entry(season1).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(season1);
        }

        // GET: Season1/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Season1 season1 = db.Seasons1.Find(id);
            if (season1 == null)
            {
                return HttpNotFound();
            }
            return View(season1);
        }

        // POST: Season1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Season1 season1 = db.Seasons1.Find(id);
            db.Seasons1.Remove(season1);
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
