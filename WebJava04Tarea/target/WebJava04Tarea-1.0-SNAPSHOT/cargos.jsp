<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%--validacion de sesion--%>
<%
    HttpSession misession = (HttpSession) request.getSession();
    String usuario = (String) misession.getAttribute("usuario");
    if (misession == null || misession.getAttribute("usuario") == null) {
        out.print("<link rel=\"stylesheet\" \n"
                + "              href=\"webjars/bootstrap/5.1.0/css/bootstrap.min.css\" type=\"text/css\" />");
        out.println("<center>");
        out.println("<br>");
        out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
        out.println("<br>");
        out.println("<a class='btn btn-primary' href='/WebJava04Tarea/login.jsp'>Ir a pagina de acceso</a>");
        out.println("</center>");
        return;
    }
%>


<%
    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String user = "root";
    String pass = "123456";

    Class.forName(driver);
    Connection xcon = DriverManager.getConnection(url, user, pass);

    String sql = "select * from cargos";
    Statement stm = xcon.createStatement();
    ResultSet rs = stm.executeQuery(sql);
%>



<%
    String estado = "";
    try {
        // Establecer la conexión a la base de datos
        Connection conn = DriverManager.getConnection(url, user, pass);
        // Crear la consulta
        String query = "SELECT ESTADO FROM tt_usuarios WHERE NOMBRE = ? LIMIT 1";
        // Crear una instancia de PreparedStatement para evitar SQL injection
        PreparedStatement stmt = conn.prepareStatement(query);
        // Establecer el valor del parámetro de nombre de usuario
        stmt.setString(1, usuario);
        // Ejecutar la consulta
        ResultSet rc = stmt.executeQuery();
        // Leer el resultado de la consulta
        if (rc.next()) {
            estado = rc.getString("ESTADO");
        }
        // Cerrar la conexión a la base de datos
        conn.close();
    } catch (SQLException ex) {
        out.println("Error: " + ex.getMessage());
    }
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <style>
            /* Estilos personalizados */
            body {
                background-color: #f5f5f5;
                font-family: Arial, sans-serif;
            }

            .container {
                margin-top: 50px;
                text-align: center;
            }

            h3 {
                margin-bottom: 20px;
            }

            .btn {
                margin-right: 10px;
            }

            .btn-danger {
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-danger:hover {
                background-color: #c82333;
                border-color: #bd2130;
            }

            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-primary:hover {
                background-color: #0069d9;
                border-color: #0062cc;
            }

            b {
                color: #007bff;
            }
        </style>
    </head>
    <body>
        <div class="container" >
            <h3>Usuario Logeado: <b><% out.print(usuario);%></b></h3>
            <h3>Estado: <b><% out.print(estado);%></b></h3>
            <h3><a class='btn btn-danger' href="/WebJava04Tarea/ServletSesion">Cerrar Sesion</a></h3>
            <a href="/WebJava04Tarea/mostrarTabla.jsp" class="btn btn-primary">Cargos</a>
            <a href="/WebJava04Tarea/mostrarTabla2.jsp" class="btn btn-primary">Areas</a>
        </div>
    </body>
</html>
