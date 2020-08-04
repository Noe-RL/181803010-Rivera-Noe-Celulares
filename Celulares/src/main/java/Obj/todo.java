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
public class todo {
    private int id_producto;
    private int cantidad;
    private int id_color;
    private int id_marca;
    private String marca;
    private String Nombre;
    private int id_celular;
    private String Color;
    private double precio;
    private int Modelo;

    public todo() {
    }

    public todo(int id_producto, int cantidad, int id_color, int id_marca, String marca, String Nombre, int id_celular, String Color, double precio, int Modelo) {
        this.id_producto = id_producto;
        this.cantidad = cantidad;
        this.id_color = id_color;
       
        this.id_marca = id_marca;
        this.marca = marca;
        this.Nombre = Nombre;
        this.id_celular = id_celular;
        this.Color = Color;
        this.precio = precio;
        this.Modelo = Modelo;
    }

    public todo(int id_producto, int cantidad, String marca, String Nombre, String Color, double precio, int Modelo) {
        this.id_producto = id_producto;
        this.cantidad = cantidad;
        this.marca = marca;
        this.Nombre = Nombre;
        this.Color = Color;
        this.precio = precio;
        this.Modelo = Modelo;
    }

    public todo(int id_producto) {
        this.id_producto = id_producto;
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

    public int getId_color() {
        return id_color;
    }

    public void setId_color(int id_color) {
        this.id_color = id_color;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getId_celular() {
        return id_celular;
    }

    public void setId_celular(int id_celular) {
        this.id_celular = id_celular;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getModelo() {
        return Modelo;
    }

    public void setModelo(int Modelo) {
        this.Modelo = Modelo;
    }

    
    
}