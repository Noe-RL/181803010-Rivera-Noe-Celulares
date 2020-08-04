package Obj;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Light
 */
public class producto {

    private String Nombre;
    private int id_celular;
    private String Color;
    private double precio;
    private int Modelo;
    private int id_marca;
    private int id_color;
    private int cantidad;
    private String marca;

    public producto( int id_celular, String Nombre, int Modelo,int id_color, String Color,  int id_marca,  String marca) {
        this.Nombre = Nombre;
        this.id_celular = id_celular;
        this.Color = Color;
        this.Modelo = Modelo;
        this.id_marca = id_marca;
        this.id_color = id_color;
        this.marca = marca;
    }
 public producto( int id_celular, String Nombre, int Modelo,int id_color, String Color,  int id_marca,  String marca ,double precio) {
        this.Nombre = Nombre;
        this.id_celular = id_celular;
        this.Color = Color;
        this.Modelo = Modelo;
        this.id_marca = id_marca;
        this.id_color = id_color;
        this.marca = marca;
        this.precio= precio;
    }
 

    public producto(String Nombre,int Modelo ,int id_color , String marca, double precio) {
        this.Nombre = Nombre;
        this.precio = precio;
        this.Modelo = Modelo;
        this.marca = marca;
        this.id_color = id_color;
    }
       public producto(String Nombre,int Modelo ,int id_color , String marca, double precio, int id_celular) {
           this.id_celular = id_celular;
        this.Nombre = Nombre;
        this.precio = precio;
        this.Modelo = Modelo;
        this.marca = marca;
        this.id_color = id_color;
    }
 

    public producto() {
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    


    

    public producto(int id_marca, String marca) {
        this.id_marca = id_marca;
        this.marca = marca;
    }
    

    public producto(int id_celular) {
        this.id_celular = id_celular;
    }
    

    public String getNombre() {
        return Nombre;
    }

    public int getId_color() {
        return id_color;
    }

    public void setId_color(int id_color) {
        this.id_color = id_color;
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

    public int getModelo() {
        return Modelo;
    }

    public void setModelo(int Modelo) {
        this.Modelo = Modelo;
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
    
    
    
    

}
