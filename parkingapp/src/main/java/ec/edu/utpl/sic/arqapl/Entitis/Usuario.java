/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package ec.edu.utpl.sic.arqapl.Entitis;

import javax.persistence.*;
/**
 *
 * @author ESCRITORIO
 */
@Entity
@Table(name = "usuario")
public class Usuario {
   
    @Id
    @Column
    private int idUsuario;
    @Column
    private String ip;
    @Column
    private Tarjeta Tarjeta;

    public Usuario(int idUsuario, String ip, Tarjeta Tarjeta) {
        this.idUsuario = idUsuario;
        this.ip = ip;
        this.Tarjeta = Tarjeta;
    }

    public Usuario() {
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Tarjeta getTarjeta() {
        return Tarjeta;
    }

    public void setTarjeta(Tarjeta Tarjeta) {
        this.Tarjeta = Tarjeta;
    }
    
    

  
}
