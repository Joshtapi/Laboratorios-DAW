<%-- 
    Document   : prueba_java3
    Created on : 28/03/2023, 11:52:42 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Numeros ascendentes</h1>
        <%
           int numeros [] = {12,15,5,8,7,1};
           for (int i = 0 ; i < numeros.length ; i++) {
               int min = i;
               
               for (int j = i + 1 ; j < numeros.length ; j++) {
                   if (numeros[j] < numeros[min]){
                       min = j;
                   }
               }
               if (i != min) {
                 int sux = numeros[1];
                 numeros [1] = numeros[min];
                 numeros[min] = sux;
               }
               out.print("<td>" + numeros[i] + "</br>");
           }
        %>
    </body>
</html>
