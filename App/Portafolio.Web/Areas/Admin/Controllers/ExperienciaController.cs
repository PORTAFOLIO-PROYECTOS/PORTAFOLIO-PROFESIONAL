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
    public class ExperienciaController : Controller
    {
        private Experiencia experiencia = new Experiencia();

        // GET: Admin/Experiencia
        public ActionResult Index(int tipo = 1)
        {
            ViewBag.Tipo = tipo;
            ViewBag.Title = tipo == 1 ? "Trabajos realizados" : "Estudios previos";
            return View();
        }

        public JsonResult Listar(AnexGRID grid, int tipo)
        {
            return Json(experiencia.Listar(grid, tipo, SessionHelper.GetUser()));
        }

        public ActionResult Crud(byte tipo = 0, int id = 0)
        {
            if (id == 0)
            {
                if (tipo == 0) return Redirect("~/Admin/Experiencia");
                experiencia.Tipo = tipo;
                experiencia.Usuario_id = SessionHelper.GetUser();
            }
            else experiencia = experiencia.Obtener(id);

            return View(experiencia);
        }

        public JsonResult Guardar(Experiencia model)
        {
            var rm = new ResponseModel();
            if (ModelState.IsValid)
            {
                rm = model.Guardar();
                if (rm.response) rm.href = Url.Content("~/Admin/Experiencia?tipo=" + model.Tipo);
            }
            return Json(rm);
        }

        public JsonResult Eliminar(int id)
        {
            return Json(experiencia.Eliminar(id));
        }
    }
}