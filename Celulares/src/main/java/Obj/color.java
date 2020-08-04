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
public class color {
    private int id_color;
    private String color;

    public color() {
    }

    public color(int id_color) {
        this.id_color = id_color;
    }

    public color(String color) {
        this.color = color;
    }
    

    public color(int id_color, String color) {
        this.id_color = id_color;
        this.color = color;
    }

    public int getId_color() {
        return id_color;
    }

    public void setId_color(int id_color) {
        this.id_color = id_color;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    
    
}
