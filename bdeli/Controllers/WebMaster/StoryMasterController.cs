using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using bdeli.Models;
using System.IO;

namespace bdeli.Controllers.WebMaster
{
    public class StoryMasterController : Controller
    {
        bdeliEntities db = new bdeliEntities();
        // GET: StoryMaster
        public ActionResult Edit()
        {
            if (Session["Authentication"] != null)
            {
                var rs = db.bD_Introduce.Where(s => s.id == 1);
                return View(rs);
            }
            else
            {
                return RedirectToAction("Login", "Webmaster");
            }
        }
        [HttpPost]
        public ActionResult Edit(string title, string des, string subtitle, HttpPostedFileBase[] images)
        {
            if (Session["Authentication"] != null)
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
                                var path = Path.Combine(Server.MapPath("~/Images/b.Deli/imagehome"), fname);
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
                var st = db.bD_Introduce.Find(1);
                st.Title = title;
                st.Description = des;
                st.Subtitle = subtitle;

                if (Images != "")
                {
                    st.Images = Images;
                }
                db.Entry(st).State = System.Data.Entity.EntityState.Modified;
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