<%-- 
    Document   : buscarMatriculas
    Created on : 13 may. 2023, 16:50:43
    Author     : dante
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="card" style="width: 70rem;padding: 30px 0px 0px 30px;">
            <h4 class="display-8">Resultados de la búsqueda</h4>
            <div class="card" style="width: 50rem;padding: 30px 0px 0px 30px;">
                <table class="table table-striped table-hover" cellspacing="0" >
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Codigo</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Nro_doc</th>
                            <th scope="col">cod_alumno</th>
                            <th scope="col">Total</th>
                            <th scope="col">Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${arrMatriculas}" var="matricula">
                            <tr>
                                <td><input type=checkbox name='xcod'
                                           value=<c:out value='${matricula.codigo}'/> > </td>
                                <td><c:out value='${matricula.codigo}'/></td>
                                <td><c:out value='${matricula.fecha}' /></td>
                                <td><c:out value='${matricula.nro_doc}'/></td>
                                <td><c:out value='${matricula.codigo_alumno}'/></td>
                                <td><c:out value='${matricula.total}'/></td>
                                <td><c:out value='${matricula.estado}'/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
