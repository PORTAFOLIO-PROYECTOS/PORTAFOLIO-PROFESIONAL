namespace Portafolio.Model
{
    using global::Model;
    using Helper;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity;
    using System.Data.Entity.Spatial;
    using System.Data.Entity.Validation;
    using System.IdentityModel.Metadata;
    using System.IO;
    using System.Linq;
    using System.Web;

    [Table("Usuario")]
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            Experiencia = new HashSet<Experiencia>();
            Habilidad = new HashSet<Habilidad>();
            Testimonio = new HashSet<Testimonio>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        [Required]
        [StringLength(100)]
        public string Apellido { get; set; }

        [Required]
        [StringLength(100)]
        public string Email { get; set; }

        [Required]
        [StringLength(32)]
        public string Password { get; set; }

        [Column(TypeName = "text")]
        public string Direccion { get; set; }

        [StringLength(50)]
        public string Ciudad { get; set; }

        public int? Pais_id { get; set; }

        [StringLength(50)]
        public string Telefono { get; set; }

        [StringLength(100)]
        public string Facebook { get; set; }

        [StringLength(100)]
        public string Twitter { get; set; }

        [StringLength(100)]
        public string YouTube { get; set; }

        [StringLength(50)]
        public string Foto { get; set; }

        public virtual ICollection<Experiencia> Experiencia { get; set; }

        public virtual ICollection<Habilidad> Habilidad { get; set; }

        public virtual ICollection<Testimonio> Testimonio { get; set; }

        // para no conciderar
        [NotMapped]
        public TablaDato Pais { get; set; }

        public ResponseModel Acceder(string Email, string Password)
        {
            var rm = new ResponseModel();
            try
            {
                using (var ctx = new PortafolioContext())
                {
                    Password = HashHelper.MD5(Password);
                    var usuario = ctx.Usuario.Where(x => x.Email == Email)
                                             .Where(x => x.Password == Password)
                                             .SingleOrDefault();

                    if (usuario != null)
                    {
                        SessionHelper.AddUserToSession(usuario.id.ToString());
                        rm.SetResponse(true);
                    }
                    else
                    {
                        rm.SetResponse(false, "Correo o contraseña incorrecta");
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
            return rm;
        }

        public Usuario Obtener(int id, bool include = false)
        {
            var usuario = new Usuario();
            try
            {
                using (var ctx = new PortafolioContext())
                {
                    if (!include)
                    {
                        usuario = ctx.Usuario.Where(x => x.id == id).SingleOrDefault();
                    }
                    else
                    {
                        usuario = ctx.Usuario.Include("Experiencia")
                                            .Include("Habilidad")
                                            .Include("Testimonio")
                                            .Where(x => x.id == id).SingleOrDefault();
                    }
                    // obteniando un registro adicional de manera manual, sin usar include
                    usuario.Pais =  new TablaDato().Obtener("pais", usuario.Pais_id.ToString());
                }
            }
            catch (Exception)
            {

                throw;
            }
            return usuario;
        }

        public ResponseModel Guardar(HttpPostedFileBase Foto)
        {
            var rm = new ResponseModel();
            try
            {
                using (var ctx = new PortafolioContext())
                {
                    ctx.Configuration.ValidateOnSaveEnabled = false;

                    var eUsuario = ctx.Entry(this);
                    eUsuario.State = EntityState.Modified;

                    // campos que estamos ignorando
                    if (Foto != null)
                    {
                        // Nombre del archivo, es decir, lo reno,renombramos para que no se reptita nunca
                        string archivo = DateTime.Now.ToString("yyyyMMddHHmmss") + Path.GetExtension(Foto.FileName);

                        // la ruta donde lo vamos a guardar
                        Foto.SaveAs(HttpContext.Current.Server.MapPath("~/Uploads/" + archivo));

                        // establecemos en nuectro modelo el nombre de archivo
                        this.Foto = archivo;
                    }
                    else eUsuario.Property(x => x.Foto).IsModified = false;

                    if(this.Password == null) eUsuario.Property(x => x.Password).IsModified = false;

                    ctx.SaveChanges();
                    rm.SetResponse(true);
                }
            }
            catch (DbEntityValidationException e)
            {
                throw;
            }
            catch (Exception)
            {

                throw;
            }
            return rm;
        }
    }
}
