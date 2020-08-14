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
public class compraBD {
    private static final String datacompra = "SELECT * FROM `compra`";
    private static final String detailcompra ="SELECT compraproducto.id_producto, compraproducto.cantidad, celulares.precio,  compraproducto.precio, celulares.Nombre FROM compraproducto, celulares WHERE compraproducto.id_compra=? and compraproducto.id_producto = celulares.id_celular";
    private static final String buy1 = "INSERT INTO `compra` SET fecha=?";
    private static final String buy2 = "INSERT INTO `compraproducto` SET id_compra=?, id_producto=?, cantidad=?, precio=?";
    private static final String decrease = "UPDATE `almacen` SET `cantidad`=? WHERE id_producto=?";
    
    
    int gotid;
    
    
     private Connection conexion = new connect().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    
    
        public List<compra> Indexcompra() throws SQLException {
        List<compra> data = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(datacompra);
       this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
           data.add(new compra(this.rs.getInt("id_compra"), this.rs.getString("fecha")));

       }
        return data;
    }
        
        public List<compra> Detallecompra(compra compra) throws SQLException {
        List<compra> detail = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(detailcompra);
        this.stmt.setInt(1, compra.getId_compra());
  
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            detail.add(new compra(this.rs.getInt("id_producto"), this.rs.getInt("cantidad"),this.rs.getDouble("celulares.precio"), this.rs.getDouble("compraproducto.precio"), this.rs.getString("Nombre")));

        }
        return detail;
    }
        public boolean AddNew(compra compra) throws SQLException {
        this.stmt = this.conexion.prepareStatement(buy1);
        this.stmt.setString(1, compra.getFecha());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
        public boolean Buy(compra compra) throws SQLException {
        this.stmt = this.conexion.prepareStatement(buy2);
        this.stmt.setInt(1, compra.getId_compra());
        this.stmt.setInt(2, compra.getId_producto());
        this.stmt.setInt(3, compra.getCantidad());
        this.stmt.setDouble(4, compra.getPrecio());

        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
                public boolean Buy2(compra compra) throws SQLException {
            this.stmt = this.conexion.prepareStatement(decrease);
        this.stmt.setInt(1, compra.getCantidad());
        this.stmt.setInt(2, compra.getId_producto());

        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
                }
        
    

                
        public int getId() throws SQLException{
            this.stmt = this.conexion.prepareStatement("SELECT MAX(id_compra) AS yoquese2 FROM compra");
            this.rs = this.stmt.executeQuery();
            this.rs.next();
           gotid =  rs.getInt("yoquese2");
           System.out.println(gotid);
          return gotid; 
        }
}
