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
            return View();
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