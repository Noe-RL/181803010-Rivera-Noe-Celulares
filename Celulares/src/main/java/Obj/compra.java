/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Obj;

/**
 *
 * @author Light
 */
public class compra {
    private int id_compra;
    private int id_producto;
    private int cantidad;
    private Double precio;
    private Double comprecio;
    private int id_compraprod;
    private String fecha;
    
    private String Nombre;

    public compra() {
    }

    public compra(int id_compra, String fecha) {
        this.id_compra = id_compra;
        this.fecha = fecha;
    }

    public compra(int id_producto, int cantidad, Double comprecio, Double precio, String Nombre) {
        this.id_producto = id_producto;
        this.cantidad = cantidad;
        this.precio = precio;
        this.comprecio = comprecio;
        this.Nombre = Nombre;
    }

    public compra(int id_compra, int id_producto, int cantidad, Double precio) {
        this.id_compra = id_compra;
        this.id_producto = id_producto;
        this.cantidad = cantidad;
        this.precio = precio;
    }

    public compra(int id_producto, int cantidad) {
        this.id_producto = id_producto;
        this.cantidad = cantidad;
    }

    public Double getComprecio() {
        return comprecio;
    }

    public void setComprecio(Double comprecio) {
        this.comprecio = comprecio;
    }
    
    

    public compra(String fecha) {
        this.fecha = fecha;
    }
    
    

    
    public compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

 
    
    
    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getId_compraprod() {
        return id_compraprod;
    }

    public void setId_compraprod(int id_compraprod) {
        this.id_compraprod = id_compraprod;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
}
