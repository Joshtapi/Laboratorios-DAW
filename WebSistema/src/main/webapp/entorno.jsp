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
        out.println("<a class='btn btn-primary' href='/WebSistema/index.jsp'>Ir a pagina de acceso</a>");
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

    String sql = "select * from tt_usuarios";
    Statement stm = xcon.createStatement();
    ResultSet rs = stm.executeQuery(sql);
%>

<html>
    <head>
        <title>SistemaWeb</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <frameset rows="80,*" border="0" frameborder="0" y framespacing="40">
          <frame src=titulo.jsp name=titulo>
          <frameset cols="250,*">
              <frame src=opciones.jsp name=izquierda>
              <frame src=contenido.jsp name=derecha>
          </frameset>
       </frameset> 
    </head>
</html>
