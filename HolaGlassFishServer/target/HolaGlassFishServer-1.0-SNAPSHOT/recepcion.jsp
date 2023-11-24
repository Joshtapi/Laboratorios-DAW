<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="container mt-5">
            <div class="alert alert-primary" role="alert">
                Recepción de variables
            </div>
            <div class="alert alert-info" role="alert">
                <%
                    String xusu = request.getParameter("xusu");
                    String xpas = request.getParameter("xpas");
                    out.print("Usuario = " + xusu);
                    out.print("<br>");
                    out.print("Password = " + xpas);
                %>
            </div>
            <div class="alert alert-dark" role="alert">
                <a class="btn btn-primary" href="envio.html" role="button">Volver a enviar datos</a>
            </div>
        </div>
    </body>
</html>
