using Helper;
using Model;
using Portafolio.Model;
using Portafolio.Web.Areas.Admin.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Portafolio.Web.Areas.Admin.Controllers
{
    [Autenticado]
    public class TestimoniosController : Controller
    {
        private Testimonio testimonio = new Testimonio();

        // GET: Admin/Testimonios
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult Listar(AnexGRID grid)
        {
            return Json(testimonio.Listar(grid, SessionHelper.GetUser()));
        }

        public ActionResult Crud(int id = 0)
        {
            return View(testimonio.Obtener(id));
        }

        public JsonResult Guardar(Testimonio model)
        {
            var rm = new ResponseModel();
            if (ModelState.IsValid)
            {
                rm = model.Guardar();
                if (rm.response) rm.href = Url.Content("~/Admin/Testimonios");
            }
            return Json(rm);
        }

        public JsonResult Eliminar(int id)
        {
            return Json(testimonio.Eliminar(id));
        }
    }
}