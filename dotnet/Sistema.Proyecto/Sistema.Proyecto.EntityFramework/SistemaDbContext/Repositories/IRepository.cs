using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sistema.Proyecto
{
    public interface IRepository<T> where T : class
    {
        
        List<T> GetAllList();
        Task<List<T>> GetAllListAsync();

    }
}
