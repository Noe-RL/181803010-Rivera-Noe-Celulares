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
public class marcaBD {
       private static final String findmark = "SELECT * FROM catalogomarca WHERE id_marca=?";    
        private static final String updatemark = "UPDATE catalogomarca SET Nombre=? WHERE id_marca=?";
         private static final String insertmark = "INSERT INTO catalogomarca SET Nombre=?";
         private static final String delete = "DELETE FROM catalogomarca WHERE id_marca=? ";
         private static final String IMarks = "SELECT * FROM `catalogomarca` ORDER BY `Nombre` ";
     //attributes
    private Connection conexion = new connect().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<marca> Indexmarcas() throws SQLException {
        List<marca> marcas = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(IMarks);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            marcas.add(new marca(this.rs.getInt("id_marca"), this.rs.getString("catalogomarca.Nombre")));

        }
        return marcas;
    }
    public marca findmark(marca marca ) throws SQLException{
        marca markfind = new marca();
        String idexists = String.valueOf(marca.getId_marca());
        if(idexists !=null){
            this.stmt = this.conexion.prepareStatement(findmark);
            this.stmt.setInt(1, marca.getId_marca());
            this.rs=this.stmt.executeQuery();
            rs.next();
            markfind.setMarca(rs.getString("Nombre"));
        }
        return markfind;
    }
    
        public boolean editmark(marca marca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(updatemark);
        this.stmt.setString(1, marca.getMarca());
        this.stmt.setInt(2, marca.getId_marca());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
        public boolean AddNew(marca marca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(insertmark);
        this.stmt.setString(1, marca.getMarca());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
           public boolean Delete(marca marca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(delete);
        this.stmt.setInt(1, marca.getId_marca());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
}
