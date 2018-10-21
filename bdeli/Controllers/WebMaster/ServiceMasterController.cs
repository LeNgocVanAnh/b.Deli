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
        public ActionResult Edit(string ID)
        {
            if (Session["Authentication"] != null)
            {
                var id = int.Parse(ID);
                var rs = db.bD_Service.Find(id);
                return View(rs);
            }
            else
            {
                return RedirectToAction("Login", "Webmaster");
            }

        }


        [HttpPost]
        public ActionResult Edit(string id, string title, string des, HttpPostedFileBase[] images)
        {
            if(Session["Authentication"] != null)
            {
                string Images = "";
                if (images != null)
                {
                    foreach (HttpPostedFileBase file in images)
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
                var home = db.bD_Service.Find(id);
                home.Title = title;
                home.Description = des;
                if (Images != "")
                {
                    home.Images = Images;
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