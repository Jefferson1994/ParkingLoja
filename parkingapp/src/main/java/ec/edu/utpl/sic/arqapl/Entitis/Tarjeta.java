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
@Table(name = "tarjeta")
public class Tarjeta {
    
    @Id
    @Column
    private int idTarjeta;
    @Column
    private double saldo;

    public Tarjeta() {
    }

    public Tarjeta(int idTarjeta, double saldo) {
        this.idTarjeta = idTarjeta;
        this.saldo = saldo;
    }

    public int getIdTarjeta() {
        return idTarjeta;
    }

    public void setIdTarjeta(int idTarjeta) {
        this.idTarjeta = idTarjeta;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
    
    
 
}
