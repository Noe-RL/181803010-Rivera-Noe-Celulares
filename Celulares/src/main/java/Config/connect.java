/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;


import java.sql.*;
import java.sql.Date;

/**
 *
 * @author Light
 */
public class connect {
        Connection conexion = null;
    private static final String localhost = "localhost";
    private static final String usuario = "root";
    private static final String contrasñea = "";
    private static final String bd = "celulares";
  
    
     

    
    public Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/celulares ?serverTimezone=UTC", "root", "");
        } catch (Exception e) {
            System.out.println(e + "error");
        } finally {
            return conexion;

        }
    }
    
}
    

