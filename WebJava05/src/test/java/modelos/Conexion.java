/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author Usuario
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public Connection getConexion() {
        try {
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC","root", "123456");

            return conexion;

        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;
        }

    }
}
