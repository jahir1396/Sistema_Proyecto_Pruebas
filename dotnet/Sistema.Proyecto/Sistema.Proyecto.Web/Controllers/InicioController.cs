using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Sistema.Proyecto.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class InicioController : ControllerBase
    {

        [HttpGet]
        public string Get()
        {
            return "Welcome to the Docker & Kubernetes World!";
        }
    }
}
