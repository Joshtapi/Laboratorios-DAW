<%-- 
    Document   : login
    Created on : 11/04/2023, 11:05:23 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background-color: #f5f5f5;
                font-family: Arial, sans-serif;
            }

            .container {
                max-width: 600px;
                margin: 0 auto;
            }

            .form-label {
                font-weight: bold;
            }

            .form-control {
                border: 1px solid #ccc;
                border-radius: 4px;
                padding: 10px;
                width: 100%;
            }

            .btn {
                border: none;
                border-radius: 4px;
                padding: 10px;
                margin-top: 10px;
                cursor: pointer;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
            }

            .btn-danger {
                background-color: #dc3545;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava04Tarea/ServletVerifica" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Usuario</label>
                    <input type="text" name="xnom" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" name="xcla" class="form-control" id="exampleInputPassword1">
                </div>
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <a class='btn btn-danger' href="index.html">Cancelar</a>
            </form>
        </div>
    </body>
</html>
