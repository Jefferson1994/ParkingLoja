/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.utpl.sic.arqapl.Entitis;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author ESCRITORIO
 */
@Entity
@Table(name = "espacioparkin")
public class EspacionParking {
   @Id
    @Column
    private int id;
    @Column
    private boolean estado;
    @Column
    private boolean cubierto;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public boolean isCubierto() {
        return cubierto;
    }

    public void setCubierto(boolean cubierto) {
        this.cubierto = cubierto;
    }
    
    
   

}
