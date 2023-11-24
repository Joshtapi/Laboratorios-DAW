<%-- 
    Document   : FormOperaciones
    Created on : 18/04/2023, 11:52:18 AM
    Author     : Usuario
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <title>Formulario de Operaciones</title>
    <style>
        /* Agrega tus estilos CSS aquí */
        body {
            background-color: #f5f5f5;
        }
        h1, h2 {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        form {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            display: block;
            width: 100%;
            margin-top: 10px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <h1>Formulario de Operaciones</h1>
    <form action="Controladormat" method="post">
        Número 1: <input type="number" name="numero1"><br>
        Número 2: <input type="number" name="numero2"><br>
        Operación:
        <select name="operacion">
            <option value="suma">Suma</option>
            <option value="resta">Resta</option>
            <option value="multiplicacion">Multiplicación</option>
            <option value="division">División</option>
        </select><br>
        <input type="submit" value="Calcular">
    </form>
    <%
        // Mostrar resultado de la operación si existe
        String resultado = (String) request.getAttribute("resultado");
        if (resultado != null) {
    %>
    <br>
    <h2>Resultado: <%= resultado %></h2>
    <%
        }
    %>
</body>
</html>
