using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sistema.Proyecto
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private readonly IUnitOfWork _unitOfWork;

        public Repository(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }        
        

        public virtual List<T> GetAllList()
        {
            return _unitOfWork.Context.Set<T>().ToList();
        }

        public virtual Task<List<T>> GetAllListAsync()
        {
            return Task.FromResult(GetAllList());
        }
    }
}
