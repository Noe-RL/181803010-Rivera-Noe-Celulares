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
public class marca {
     private int id_marca;
    private String marca;

    public marca(int id_marca, String marca) {
        this.id_marca = id_marca;
        this.marca = marca;
    }

    public marca(String marca) {
        this.marca = marca;
    }

    public marca() {
    }

    public marca(int id_marca) {
        this.id_marca = id_marca;
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
