using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Sostabiponi.Models;

namespace Sostabiponi.Controllers
{
    public class ThankYouController : Controller
    {
        // GET: ThankYou
        public ActionResult Index()
        {
            ViewBag.cartBox = null;
            ViewBag.Total = null;
            ViewBag.NoOfItem = null;
            TempshpData.items = null;
            return View("Thankyou");
        }
    }
}