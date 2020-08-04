package Obj;

import Config.connect;
import java.sql.*;
import java.util.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Light
 */
public class productoBD {
    private static final String Index = "SELECT id_celular, celulares.Nombre, Modelo, celulares.id_color, colores.color, celulares.id_marca, catalogomarca.Nombre, precio  FROM `celulares` JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca JOIN colores on celulares.id_color = colores.id_color";
    private static final String IMarks = "SELECT * FROM `catalogomarca` ORDER BY `Nombre` ";
    private static final String find = "SELECT * FROM `celulares`JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca JOIN colores on celulares.id_color = colores.id_color WHERE celulares.id_celular=?"; 
    private static final String insert = "INSERT INTO celulares SET celulares.Nombre=?, celulares.Modelo=?, celulares.id_color=?, celulares.id_marca=?, celulares.precio=?";
    private static final String update = "UPDATE celulares SET celulares.Nombre=?, celulares.Modelo=?, celulares.id_color=?, celulares.id_marca=?, celulares.precio=? WHERE id_celular=? ";
    private static final String delete = "DELETE  FROM `celulares` WHERE celulares.id_celular=? ";
   
 
    //attributes
    private Connection conexion = new connect().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;

    public List<producto> Indexproductos() throws SQLException {
        List<producto> productos = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(Index);
        this.rs = this.stmt.executeQuery();

        while (this.rs.next()) {
            productos.add(new producto(this.rs.getInt("id_celular"), this.rs.getString("Nombre"), this.rs.getInt("Modelo"), this.rs.getInt("id_color"), this.rs.getString("colores.color"), this.rs.getInt("id_marca"), this.rs.getString("catalogomarca.Nombre"), this.rs.getDouble("precio")));

        }
        return productos;
    }

    public List<producto> Indexmarcas() throws SQLException {
        List<producto> marcas = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(IMarks);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            marcas.add(new producto(this.rs.getInt("id_marca"), this.rs.getString("catalogomarca.Nombre")));

        }
        return marcas;

    }

    //method to find a registered product 
    public producto find(producto producto) throws SQLException {
        producto productfind = new producto();
        String idexists = String.valueOf(producto.getId_celular());
        if (idexists != null) {
            this.stmt = this.conexion.prepareStatement(find);
            this.stmt.setInt(1, producto.getId_celular());
            this.rs = this.stmt.executeQuery();
            rs.next();
            productfind.setNombre(rs.getString("Nombre"));
            productfind.setModelo(rs.getInt("Modelo"));
            productfind.setId_color(rs.getInt("id_color"));
            productfind.setId_marca(rs.getInt("catalogomarca.id_marca"));
            productfind.setMarca(rs.getString("catalogomarca.Nombre"));
            productfind.setPrecio(rs.getDouble("precio"));
        }
        return productfind;

    }
    
  

    public boolean AddNew(producto producto) throws SQLException {
        this.stmt = this.conexion.prepareStatement(insert);
        this.stmt.setString(1, producto.getNombre());
        this.stmt.setInt(2, producto.getModelo());
        this.stmt.setInt(3, producto.getId_color());
        this.stmt.setString(4, producto.getMarca());
        this.stmt.setDouble(5, producto.getPrecio());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean Edit(producto producto) throws SQLException {
        this.stmt = this.conexion.prepareStatement(update);
        this.stmt.setString(1, producto.getNombre());
        this.stmt.setInt(2, producto.getModelo());
        this.stmt.setInt(3, producto.getId_color());
        this.stmt.setString(4, producto.getMarca());
        this.stmt.setDouble(5, producto.getPrecio());
        this.stmt.setInt(6, producto.getId_celular());
        
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }

    }

    public boolean Delete(producto producto) throws SQLException {
        this.stmt = this.conexion.prepareStatement(delete);
        this.stmt.setInt(1, producto.getId_celular());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }



}
