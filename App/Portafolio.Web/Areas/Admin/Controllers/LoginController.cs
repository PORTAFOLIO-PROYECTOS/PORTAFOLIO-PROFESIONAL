using Helper;
using Portafolio.Model;
using Portafolio.Web.Areas.Admin.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Portafolio.Web.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        private Usuario usuario = new Usuario();
        // GET: Admin/Login
        [NoLogin]
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult Acceder(string Email, string Password)
        {
            var rm = usuario.Acceder(Email, Password);
            if (rm.response)
            {
                rm.href = Url.Content("~/admin/usuario");
            }
            return Json(rm);
        }
                

        public ActionResult Logout()
        {
            SessionHelper.DestroyUserSession();
            return Redirect("~/");
        }
    }
}