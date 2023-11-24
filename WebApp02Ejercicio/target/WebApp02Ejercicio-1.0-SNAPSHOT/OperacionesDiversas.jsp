<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.miempresa.funciones.OperacionesDiversas"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operaciones Diversas</title>    
     <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            color: #333;
            background-color: #f5f5f5;
        }
        
        h1 {
            font-size: 28px;
            text-align: center;
            margin-top: 50px;
        }
        
        form {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
        }
        
        input[type="text"], select {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .error {
            color: red;
            font-style: italic;
            margin-top: 10px;
        }
    </style>

</head>
<body>
    <h1>Operaciones Diversas</h1>
    
    <form method="post">
        <label for="a">Valor de a:</label>
        <input type="text" name="a" id="a">
        
        <br><br>
        
        <label for="operacion">Operación:</label>
        <select name="operacion" id="operacion">
            <option value="raizCuadrada">Raíz cuadrada</option>
            <option value="raizCubica">Raíz cúbica</option>
            <option value="potencia">Potencia</option>
            <option value="valorAbsoluto">Valor absoluto</option>
        </select>
        
        <br><br>
        
        <label for="b">Valor de b (sólo para potencia):</label>
        <input type="text" name="b" id="b">
        
        <br><br>
        
        <input type="submit" value="Calcular">
    </form>
    
    <%
    if(request.getMethod().equalsIgnoreCase("post")) {
        double a = Double.parseDouble(request.getParameter("a"));
        String operacion = request.getParameter("operacion");
        double resultado = 0;
        
        if(operacion.equalsIgnoreCase("raizCuadrada")) {
            resultado = OperacionesDiversas.raizCuadrada(a);
        }
        else if(operacion.equalsIgnoreCase("raizCubica")) {
            resultado = OperacionesDiversas.raizCubica(a);
        }
        else if(operacion.equalsIgnoreCase("potencia")) {
            double b = Double.parseDouble(request.getParameter("b"));
            resultado = OperacionesDiversas.potencia(a, b);
        }
        else if(operacion.equalsIgnoreCase("valorAbsoluto")) {
            resultado = OperacionesDiversas.valorAbsoluto(a);
        }
    %>
    
<center><big><p>El resultado de la operación seleccionada es: <%=resultado%></p></big></center>
    
    <%
    }
    %>
    
</body>
</html>