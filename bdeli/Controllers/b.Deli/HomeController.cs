using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using bdeli.Models;

namespace bdeli.Controllers
{
    public class HomeController : Controller
    {
        bdeliEntities db = new bdeliEntities();
        public ActionResult Index()
        {
            List<HomeMaster> lst = new List<HomeMaster>();
            HomeMaster home = new HomeMaster();
            var video = db.bD_Video.Where(st => st.id == 1);
            var img = db.bD_Images.Where(st => st.id == 1);
            var sli = db.bD_Slide.Where(st => st.id == 1);
            home.image = img;
            home.slide = sli;
            home.video = video;
            lst.Add(home);
            return View(lst);
           
        }

        [HttpPost]
        public ActionResult save(string name, string email, DateTime date, string time, int amount, string note)
        {
            var book = new bD_Booking();
            book.Name = name;
            book.Email = email;
            book.DateBooking = date;
            book.TimeBooking = time;
            book.Amount = amount;
            book.Note = note;
            db.bD_Booking.Add(book);
            db.Entry(book).State = System.Data.Entity.EntityState.Modified;
            return RedirectToAction("Index", "Home");
        }
    }
}