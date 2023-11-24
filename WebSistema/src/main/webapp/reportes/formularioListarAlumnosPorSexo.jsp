<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" 
              href="../webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <style>
            /* Agrega tus estilos personalizados aquí */
            .card {
                background-color: #f2f2f2;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 30px;
                margin: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 10px;
                text-align: left;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
            }

            /* Agrega más estilos personalizados si es necesario */
        </style>
    </head>
    <body>
        <div class="card" style="width: 50rem; padding: 30px 0px 0px 30px;">
            <form method="post" action="listadoAlumnosPorSexo.jsp">
                <input type="hidden" name="accion" value="MOSTRAR">
                <table>
                    <tr>
                        <td>Seleccione Sexo:</td>
                        <td>
                            <select name="sexo">
                                <option value="F">Femenino</option>
                                <option value="M">Masculino</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <input type="submit" class="btn btn-primary" value="Mostrar Reporte">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
