using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Sostabiponi.Models;

namespace Sostabiponi.Controllers
{
    public static  class LoadDataController
    {
        static SostabiponiEntities db = new SostabiponiEntities();
        public static List<OrderDetail> GetDefaultData(this ControllerBase controller)
        {
            if (TempshpData.items == null)
            {
                TempshpData.items = new List<OrderDetail>();
            }
            var data = TempshpData.items.ToList();

            controller.ViewBag.cartBox = data.Count == 0 ? null : data;
            controller.ViewBag.NoOfItem = data.Count();
            int? SubTotal = Convert.ToInt32(data.Sum(x => x.TotalAmount));
            controller.ViewBag.Total = SubTotal;

            int Discount = 0;
            controller.ViewBag.SubTotal = SubTotal;
            controller.ViewBag.Discount = Discount;
            controller.ViewBag.TotalAmount = SubTotal - Discount;

            controller.ViewBag.WlItemsNo = db.Wishlists.Where(x => x.CustomerID == TempshpData.UserID).ToList().Count();
            return data;
        }
    }
}
