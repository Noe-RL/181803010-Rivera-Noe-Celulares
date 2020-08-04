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
public class colorBD {
       private static final String findcolor = "SELECT * FROM colores WHERE id_color=?";    
        private static final String update = "UPDATE colores SET color=? WHERE id_color=?";
         private static final String insert = "INSERT INTO colores SET color=?";
         private static final String delete = "DELETE FROM colores WHERE id_color=? ";
         private static final String Indexcolors = "SELECT * FROM `colores`  ";
     //attributes
    private Connection conexion = new connect().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<color> Indexcolores() throws SQLException {
        List<color> colores = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(Indexcolors);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            colores.add(new color(this.rs.getInt("id_color"), this.rs.getString("colores.color")));

        }
        return colores;
    }
    
    public color find(color color ) throws SQLException{
        color colorfind = new color();
        String idexists = String.valueOf(color.getId_color());
        if(idexists !=null){
            this.stmt = this.conexion.prepareStatement(findcolor);
            this.stmt.setInt(1, color.getId_color());
            this.rs=this.stmt.executeQuery();
            rs.next();
            colorfind.setColor(rs.getString("color"));
        }
        return colorfind;
    }
    
        public boolean edit(color color) throws SQLException {
        this.stmt = this.conexion.prepareStatement(update);
        this.stmt.setString(1, color.getColor());
        this.stmt.setInt(2, color.getId_color());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
        public boolean AddNew(color color) throws SQLException {
        this.stmt = this.conexion.prepareStatement(insert);
        this.stmt.setString(1, color.getColor());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
           public boolean Delete(color color) throws SQLException {
        this.stmt = this.conexion.prepareStatement(delete);
        this.stmt.setInt(1, color.getId_color());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }

}