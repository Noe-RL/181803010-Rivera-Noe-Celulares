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
    private static final String Index = "SELECT celulares.id_celular, celulares.Nombre, celulares.Modelo, celulares.Color,celulares.id_marca,catalogomarca.Nombre FROM `celulares` JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca";
    private static final String IMarks = "SELECT catalogomarca.id_marca, catalogomarca.Nombre FROM`celulares` JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca";
    
    //attributes
    private Connection conexion = new connect().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<producto> Indexproductos() throws SQLException {
        List<producto> productos = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(Index);
        this.rs = this.stmt.executeQuery();

        while (this.rs.next()) {
            productos.add(new producto(this.rs.getInt("id_celular"), this.rs.getString("Nombre"), this.rs.getInt("Modelo"), this.rs.getString("Color"),  this.rs.getInt("id_marca"), this.rs.getString("catalogomarca.Nombre")));

        }
        return productos;
    }
           public List<producto> Indexmarcas() throws SQLException {
        List<producto> marcas = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(IMarks);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            marcas.add(new producto(this.rs.getInt("id_celular"), this.rs.getString("Nombre"), this.rs.getInt("Modelo"), this.rs.getString("Color"), this.rs.getInt("id_marca"), this.rs.getString("catalogomarca.Nombre")));

        }
        return marcas;
      
    }
   
    
}
