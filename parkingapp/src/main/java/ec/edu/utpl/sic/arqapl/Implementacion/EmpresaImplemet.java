
package ec.edu.utpl.sic.arqapl.Implementacion;

import ec.edu.utpl.sic.arqapl.Entitis.Empresa;
import ec.edu.utpl.sic.arqapl.Interface.EmpresaInterface;
import ec.edu.utpl.sic.arqapl.Interface.IEmpresaDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpresaImplemet implements IEmpresaDao{
    @Autowired
    private EmpresaInterface repositorio;
    
    @Override
    public List<Empresa> listar() {
        return repositorio.findAll();
    }

    @Override
    public Empresa listarId(int id) {
        return repositorio.findOne(id);
    }

    @Override
    public Empresa add(Empresa p) {
        return repositorio.save(p);
    }

    @Override
    public Empresa edit(Empresa p) {
        return repositorio.save(p);
    }

    @Override
    public Empresa delete(int id) {
        Empresa p=repositorio.findOne(id);
        if(p!=null){
            repositorio.delete(p);
        }
       return p;
    }
    
    
    
}
