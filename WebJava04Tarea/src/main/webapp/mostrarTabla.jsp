<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--validacion de sesion--%>
<%
    HttpSession misession = (HttpSession) request.getSession();
    String usuario = (String) misession.getAttribute("usuario");
    if (misession == null || misession.getAttribute("usuario") == null) {
        out.print("<link rel=\"stylesheet\" \n"
                + "              href=\"webjars/bootstrap/5.1.0/css/bootstrap.min.css\" type=\"text/css\" />");
        out.println("<center>");
        out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
        out.println("<a class='btn btn-primary' href='/WebJava04Tarea/login.jsp'>Ir a pagina de acceso</a>");
        out.println("</center>");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="container">
            <h1>Listado de Cargos</h1>
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

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">CODIGO</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">CARGO</th>
                        <th scope="col">ESTADO</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rs.next()) {
                            out.print("<tr>");
                            out.print("<td>" + rs.getString(1) + "</td>");
                            out.print("<td>" + rs.getString(2) + "</td>");
                            out.print("<td>" + rs.getString(3) + "</td>");
                            out.print("<td>" + rs.getString(4) + "</td>");
                            out.print("</tr>");
                        }
                    %>
                </tbody>
            </table>
                <a href="/WebJava04Tarea/cargos.jsp" class="btn btn-primary">Regresar a menu principal</a>
        </div>  
    </body>
</html>
