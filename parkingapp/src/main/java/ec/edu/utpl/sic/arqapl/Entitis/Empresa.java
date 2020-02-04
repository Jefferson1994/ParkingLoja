
package ec.edu.utpl.sic.arqapl.Entitis;

import javax.persistence.*;

@Entity
@Table(name = "empresa")
public class Empresa {
   
    @Id
    @Column
    private int id;
    @Column
    private String nombre;
    @Column
    private String direccion;
    @Column
    private String latitud;
    @Column
    private String longitud;
    @Column
    private String num_espacios;
    @Column
    private String fraccion;
    @Column
    private String precio;
    @Column
    private String descuento;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getLatitud() {
        return latitud;
    }

    public void setLatitud(String latitud) {
        this.latitud = latitud;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }

    public String getNum_espacios() {
        return num_espacios;
    }

    public void setNum_espacios(String num_espacios) {
        this.num_espacios = num_espacios;
    }

    public String getFraccion() {
        return fraccion;
    }

    public void setFraccion(String fraccion) {
        this.fraccion = fraccion;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getDescuento() {
        return descuento;
    }

    public void setDescuento(String descuento) {
        this.descuento = descuento;
    }
    
    
    

}
