<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.miempresa.funciones.OperacionesBasicas" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operaciones Básicas</title>
<style>
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            color: #333;
            background-color: #f2f2f2;
        }
        
        h1 {
            font-size: 24px;
            text-align: center;
            margin-top: 50px;
        }
        
        form {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        
        label {
            display: inline-block;
            width: 120px;
            text-align: right;
            margin-right: 20px;
        }
        
        input[type="number"] {
            width: 200px;
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>
    <h1>Operaciones Básicas</h1>
    
    <form method="post">
        <label for="a">Valor de a:</label>
        <input type="number" name="a" id="a"><br><br>
        
        <label for="b">Valor de b:</label>
        <input type="number" name="b" id="b"><br><br>
        
        <input type="submit" value="Sumar" name="operacion">
        <input type="submit" value="Restar" name="operacion">
        <input type="submit" value="Multiplicar" name="operacion">
        <input type="submit" value="Dividir" name="operacion">
    </form>
    
    <%
        if(request.getParameter("operacion") != null) {
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            
            String operacion = request.getParameter("operacion");
            
            double resultado = 0;
            String simbolo = "";
            
            if(operacion.equals("Sumar")) {
                resultado = OperacionesBasicas.suma(a, b);
                simbolo = "+";
            }
            else if(operacion.equals("Restar")) {
                resultado = OperacionesBasicas.resta(a, b);
                simbolo = "-";
            }
            else if(operacion.equals("Multiplicar")) {
                resultado = OperacionesBasicas.multiplicacion(a, b);
                simbolo = "*";
            }
            else if(operacion.equals("Dividir")) {
                resultado = OperacionesBasicas.division(a, b);
                simbolo = "/";
            }
    %>
    
<center><big><p>El resultado de <%=a%> <%=simbolo%> <%=b%> es <%=resultado%></p></big></center>
    
    <% } %>
</body>
</html>
