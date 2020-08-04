/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Obj;

import Config.connect;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Light
 */
public class almacenBD {
        private static final String find = "SELECT * FROM almacen WHERE id_producto=?";    
        private static final String update = "UPDATE almacen SET cantidad=? WHERE id_producto=?";
         private static final String insert = "INSERT INTO almacen SET id_producto=?, cantidad=?";
         private static final String delete = "DELETE FROM almacen WHERE id_producto=? ";
         private static final String Index = "SELECT id_producto, celulares.Nombre, Modelo, colores.color, catalogomarca.Nombre, precio, cantidad FROM `almacen`, `celulares`, `catalogomarca`, `colores` WHERE celulares.id_celular = almacen.id_producto AND celulares.id_color = colores.id_color AND celulares.id_marca = catalogomarca.id_marca";
         private static final String IndexAlmacen = "SELECT * FROM `almacen`";
     //attributes
    private Connection conexion = new connect().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    int gotid;
    

    public List<almacen> Index() throws SQLException {
        List<almacen> almacen = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(IndexAlmacen);
       this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
           almacen.add(new almacen(this.rs.getInt("id_producto"), this.rs.getInt("cantidad")));

       }
        return almacen;
    }
    
    public List<todo> IndexTodo() throws SQLException {
        List<todo> todo = new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(Index);
        this.rs=this.stmt.executeQuery();
        while(this.rs.next()){
            todo.add(new todo(this.rs.getInt("id_producto"), this.rs.getInt("cantidad"),this.rs.getString("catalogomarca.Nombre"), this.rs.getString("Nombre"),this.rs.getString("color"),this.rs.getDouble("precio"), this.rs.getInt("Modelo")));
        }
        return todo;
    }
        public almacen find(almacen almacen) throws SQLException{
            almacen almafind = new almacen();
        String idexists = String.valueOf(almacen.getId_producto());
        if(idexists !=null){
            this.stmt=this.conexion.prepareStatement(find);
            this.stmt.setInt(1, almacen.getId_producto());
            this.rs=this.stmt.executeQuery();
            rs.next();
            almafind.setCantidad(rs.getInt("cantidad"));
        }
        return almafind;
    }
        
        
        public boolean Update(almacen almacen) throws SQLException {
        this.stmt = this.conexion.prepareStatement(update);
        this.stmt.setInt(1, almacen.getCantidad());
        this.stmt.setInt(2, almacen.getId_producto());
        if (this.stmt.executeUpdate() == 1) {
           return true;
       } else {
            return false;
        }
    }
        
        
        public int getId() throws SQLException{
            this.stmt = this.conexion.prepareStatement("SELECT MAX(id_celular) AS yoquese FROM celulares");
            this.rs = this.stmt.executeQuery();
            this.rs.next();
           gotid =  rs.getInt("yoquese");
           System.out.println(gotid);
          return gotid; 
        }   
        
        
        public boolean AddNew(almacen almacen) throws SQLException {        
        this.stmt = this.conexion.prepareStatement(insert);
        this.stmt.setInt(1, almacen.getId_producto());
        this.stmt.setInt(2, almacen.getCantidad());
        
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
}




