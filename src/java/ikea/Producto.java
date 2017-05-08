package ikea;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gonzalo Pulido Mendoza
 */
public class Producto implements Serializable {

    private static final long serialVersionUID = 1L;
    
    String nombre;
    String descripcion;
    int id;
    double precio;
    public Producto(int id, String nombre, String descripcion, double precio) {
      this.id = id;
      this.nombre = nombre;
      this.descripcion = descripcion;
      this.precio = precio;
    }

    @Override
    public String toString() {
        return "Producto{" + "id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", precio=" + precio + '}';
    }
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
    
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }


/**
     * Convierte un ArrayList de Object a uno de Producto
     * @param obj ArrayList<Object> - El ArrayList a convertir
     * @return ArrayList<Producto> - El ArrayList convertido
     */
    public static ArrayList<Producto> ObjectoAProducto(ArrayList<Object> obj){
        ArrayList<Producto> listado = new ArrayList<>();
        obj.forEach((objeto) -> {
            listado.add((Producto)objeto);
        });
        return listado;
    }
    
    public static List ObjetoAProducto(List obj){
        List listado = new ArrayList();
        for(Object objeto: obj){
            listado.add((Producto) objeto);
        }
        return listado;
    }
    
    public static ArrayList<Object> ProductoAObjeto(ArrayList<Producto> productos){
        ArrayList<Object> listado = new ArrayList<>();
        productos.forEach((producto) -> {
            listado.add((Object)producto);
        });
        return listado;
    }
    
    public static List ProductoAObjeto(List<Producto> productos){
        List listado = new ArrayList();
        for(Producto pro: productos){
            listado.add((Object) pro);
        }
        return listado;
    }

  
}


