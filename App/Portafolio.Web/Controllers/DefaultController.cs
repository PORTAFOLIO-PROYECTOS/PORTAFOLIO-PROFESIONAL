using Model;
using Portafolio.Model;
using Portafolio.Web.App_Start;
using Portafolio.Web.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
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

        public JsonResult EnviarCorreo(ContactoViewModel model)
        {
            var rm = new ResponseModel();

            if (ModelState.IsValid)
            {
                try
                {
                    var _usuario = usuario.Obtener(FrontOfficeStartUp.UsuarioVisualizando());
                    var mail = new MailMessage();
                    mail.From = new MailAddress(model.Correo, model.Nombre);
                    mail.To.Add(_usuario.Email);
                    mail.Subject = "Correo desde contato";
                    mail.IsBodyHtml = true;
                    mail.Body = model.Mensaje;

                    var smtserver = new SmtpClient("smtp.live.com");
                    smtserver.Port = 587;
                    smtserver.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtserver.UseDefaultCredentials = false;
                    smtserver.Credentials = new System.Net.NetworkCredential("", "");
                    smtserver.EnableSsl = true;
                    smtserver.Send(mail);
                }
                catch (Exception e)
                {
                    rm.SetResponse(false, e.Message);
                    return Json(rm);
                    throw;
                }
                rm.SetResponse(true);
                rm.function = "CerrarContacto();";
            }
            return Json(rm);
        }

        public ActionResult ExportaraPDF()
        {
            return new Rotativa.MVC.ActionAsPdf("PDF");
        }

        public ActionResult PDF()
        {
            return View(usuario.Obtener(FrontOfficeStartUp.UsuarioVisualizando(), true));
        }
    }
}