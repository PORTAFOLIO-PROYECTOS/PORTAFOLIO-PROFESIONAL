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
    public class UsuarioController : Controller
    {
        private Usuario usuario = new Usuario();
        private TablaDato dato = new TablaDato();

        // GET: Admin/Usuario
        public ActionResult Index()
        {
            ViewBag.Paises = dato.Listar("pais");
            return View(usuario.Obtener(SessionHelper.GetUser()));
        }

        public JsonResult Guardar(Usuario model, HttpPostedFileBase Foto)
        {
            var rm = new ResponseModel();
            // se retira la validación de esta propiedad
            ModelState.Remove("Password");
            if (ModelState.IsValid)
            {
                rm = model.Guardar(Foto);
            }
            return Json(rm);
        }
    }
}