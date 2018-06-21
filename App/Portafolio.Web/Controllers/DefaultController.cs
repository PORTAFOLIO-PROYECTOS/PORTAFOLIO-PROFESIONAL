using Portafolio.Model;
using Portafolio.Web.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Portafolio.Web.Controllers
{
    public class DefaultController : Controller
    {
        private Usuario usuario = new Usuario();

        // GET: Default
        public ActionResult Index()
        {
            return View(usuario.Obtener(FrontOfficeStartUp.UsuarioVisualizando(), true));
        }
    }
}