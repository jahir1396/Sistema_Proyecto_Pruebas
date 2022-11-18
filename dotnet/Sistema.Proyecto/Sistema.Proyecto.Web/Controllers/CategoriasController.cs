using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Sistema.Proyecto.EntityFramework.SistemaDbContext;

namespace Sistema.Proyecto.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriasController : ControllerBase
    {
        private readonly IRepository<CatCategoria> _catCategoriaRepository;
        IMapper _objectMapper;

        public CategoriasController(IRepository<CatCategoria> catCategoriaRepository, 
            IMapper objectMapper)
        {
            _catCategoriaRepository = catCategoriaRepository;
            _objectMapper = objectMapper;
        }

        [HttpPost]
        [Route("[action]")]
        public async Task<List<CatCategoria>> ConsultarCategorias()
        {
            var mCategorias = await _catCategoriaRepository.GetAllListAsync();

            return mCategorias;
        }

    }
}
