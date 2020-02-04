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
@Table(name = "reserva")
public class Reserva {
    @Id
    @Column
    private int idreserva;
    @Column
    private Empresa idempres;
    @Column
    private Usuario idTarjeta;
    @Column
    private String horaInicio;
    @Column
    private String tiempo;

    public int getIdreserva() {
        return idreserva;
    }

    public void setIdreserva(int idreserva) {
        this.idreserva = idreserva;
    }

    public Empresa getIdempres() {
        return idempres;
    }

    public void setIdempres(Empresa idempres) {
        this.idempres = idempres;
    }

    public Usuario getIdTarjeta() {
        return idTarjeta;
    }

    public void setIdTarjeta(Usuario idTarjeta) {
        this.idTarjeta = idTarjeta;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }
    
    

}
