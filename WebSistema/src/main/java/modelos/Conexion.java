package modelos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {

    public static Connection getConexion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC";
    String usuario = "root";
    String clave = "123456";

    public Connection Conectar() {
        try {
            Class.forName(driver);
            Connection xcon = DriverManager.getConnection(url, usuario, clave);
            return xcon;
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return null;
    }

    public String generarCodigo(String tabla, String campo) {
        String rpta = "";
        String sql = "select count(*) from " + tabla;
        Connection xcon = this.Conectar();
        try {
            Statement st;
            st = xcon.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            int cant = Integer.parseInt(rs.getString(1).toString());
            if (cant <= 0) {
                rpta = "1";
            } else {
                sql = "select max(" + campo + ") from " + tabla;
                rs = st.executeQuery(sql);
                rs.next();
                cant = Integer.parseInt(rs.getString(1).toString()) + 1;
                rpta = "" + cant;
            }
            xcon.close();
            return rpta;
        } catch (SQLException ex) {
            System.out.println("Error al generar codigo");
            ex.printStackTrace();
        }
        return rpta;
    }
}
