
package ec.edu.utpl.sic.arqapl.Interface;

import ec.edu.utpl.sic.arqapl.Entitis.Empresa;
import java.util.List;

public interface IEmpresaDao {
    List<Empresa>listar();
    Empresa listarId(int id);
    Empresa add(Empresa p);
    Empresa edit(Empresa p);
    Empresa delete(int id);
}
