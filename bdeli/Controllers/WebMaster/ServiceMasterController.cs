using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using bdeli.Models;
using System.IO;

namespace bdeli.Controllers.WebMaster
{
    public class ServiceMasterController : Controller
    {
        bdeliEntities db = new bdeliEntities();
        // GET: ServiceMaster
        public ActionResult Edit()
        {
            if (Session["Authentication"] != null)
            {
           
                var rs = db.bD_Service.Where(st => st.id == 1);
                return View(rs);
            }
            else
            {
                return RedirectToAction("Login", "Webmaster");
            }

        }


        [HttpPost]
        public ActionResult Edit(string id, string title1, string des1, string title2, string des2, string title3, string des3, HttpPostedFileBase[] images1, HttpPostedFileBase[] images2, HttpPostedFileBase[] images3)
        {
            if(Session["Authentication"] != null)
            {
                string Images = "";
                if (images1 != null && images2 != null && images3 != null)
                {
                    foreach (HttpPostedFileBase file in images1)
                    {
                        if (file != null)
                        {
                            if (file.ContentLength > 0)
                            {
                                var filename = Path.GetFileName(file.FileName);
                                var fname = filename.Replace(" ", "_");
                                var path = Path.Combine(Server.MapPath("~/Images/b.Deli/imageHome"), fname);
                                file.SaveAs(path);
                                Images += fname + ",";
                            }
                        }
                    }
                    if (Images != "" && Images.Contains(","))
                    {
                        Images = Images.Remove(Images.Length - 1);
                    }
                }
                var home = db.bD_Service.Find(1);
                home.Title1 = title1;
                home.Description1 = des1;
                home.Title2 = title2;
                home.Description2 = des2;
                home.Title3 = title3;
                home.Description3 = des3;
                if (Images != "")
                {
                    home.Images1 = Images;
                    home.Images2 = Images;
                    home.Images3 = Images;
                }
                db.Entry(home).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Edit");
            }
            else
            {
                return RedirectToAction("Login", "Webmaster");
            }
        }
    }
}