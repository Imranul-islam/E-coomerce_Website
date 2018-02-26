using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Sostabiponi.Models;

namespace Sostabiponi.Controllers
{
    public class MyCartController : Controller
    {
        SostabiponiEntities db = new SostabiponiEntities();

        // GET: MyCart
        public ActionResult Index()
        {
            var data = this.GetDefaultData();

            return View(data);

        }

   

        public ActionResult Remove(int id)
        {
            TempshpData.items.RemoveAll(x => x.ProductID == id);
            return RedirectToAction("Index");

        }
        [HttpPost]
        public ActionResult ProcedToCheckout(FormCollection formcoll)
        {
            var a = TempshpData.items.ToList();
            for (int i = 0; i < formcoll.Count / 2; i++)
            {

                int pID = Convert.ToInt32(formcoll["shcartID-" + i + ""]);
                var ODetails = TempshpData.items.FirstOrDefault(x => x.ProductID == pID);


                int qty = Convert.ToInt32(formcoll["Qty-" + i + ""]);
                ODetails.Quantity = qty;
                ODetails.UnitPrice = ODetails.UnitPrice;
                ODetails.TotalAmount = qty * ODetails.UnitPrice;
                TempshpData.items.RemoveAll(x => x.ProductID == pID);

                if (TempshpData.items == null)
                {
                    TempshpData.items = new List<OrderDetail>();
                }
                TempshpData.items.Add(ODetails);

            }

            return RedirectToAction("Index", "CheckOut");
        }

    }
}