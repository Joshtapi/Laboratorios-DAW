<%-- 
    Document   : prueba_java4
    Created on : 28/03/2023, 12:11:19 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar si un número es primo o no</title>
    </head>
    <body>
        <center>
            <h1>Verificar si un número es primo o no</h1>
            <form action="" method="post">
                <label for="num">Ingrese un número:</label>
                <input type="text" id="num" name="num" required>
                <input type="submit" value="Verificar">
            </form>
            <%-- Verificar si el número es primo o no --%>
            <% 
            if(request.getParameter("num")!=null){
                int num = Integer.parseInt(request.getParameter("num"));
                boolean esPrimo = true;
                if (num < 2) {
                    esPrimo = false;
                } else {
                    for (int i = 2; i <= Math.sqrt(num); i++) {
                        if (num % i == 0) {
                            esPrimo = false;
                            break;
                        }
                    }
                }
                if (esPrimo) {
                    out.print(num + " es un número primo.");
                } else {
                    out.print(num + " no es un número primo.");
                }
            }
            %>
        </center>
    </body>
</html>





