using Sistema.Proyecto.EntityFramework.SistemaDbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace Sistema.Proyecto
{
    public interface IUnitOfWork : IDisposable
    {
        SistemaDbContext Context { get; }
        void SaveChanges();
    }

    public class UnitOfWork : IUnitOfWork
    {
        public SistemaDbContext Context { get; }

        public UnitOfWork(SistemaDbContext context)
        {
            Context = context;
        }

        public void SaveChanges()
        {
            Context.SaveChanges();
        }

        public void Dispose()
        {
            Context.Dispose();
        }
    }
}
