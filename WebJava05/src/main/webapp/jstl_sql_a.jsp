<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
                           user="root"
                           password="123456"/>

        <sql:query dataSource="${xcon}"
                   sql="select * from t_usuarios"
                   var="result"/>

        <div style="width: 450px; text-align: center; margin: 50px auto;">
            <h1 class="display-8">Listado de Usuarios</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Clave</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${result.rows}">
                        <tr>
                            <th scope="row"><c:out value="${user.codigo}"/></th>
                            <td><c:out value="${user.nombre}"/></td>
                            <td><c:out value="${user.clave}"/></td>
                            <td>
                                <c:choose>
                                    <c:when test="${user.estado eq 'A'}">Activo</c:when>
                                    <c:when test="${user.estado eq 'N'}">Inactivo</c:when>
                                    <c:otherwise>Desconocido</c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <div style="display: flex;">
                                    <c:url var="editUrl" value="/controladorEditar">
                                        <c:param name="action" value="editar"/>
                                        <c:param name="codigo" value="${user.codigo}"/>
                                    </c:url>
                                    <a href="${editUrl}" class="btn btn-primary" style="margin-right: 5px;">Editar</a>

                                    <c:url var="deleteUrl" value="/controladorEditar">
                                        <c:param name="action" value="eliminar"/>
                                        <c:param name="codigo" value="${user.codigo}"/>
                                    </c:url>
                                    <a href="${deleteUrl}" class="btn btn-danger" style="margin-left: 5px;">Eliminar</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            <a href="index.html" class="btn btn-primary" style="margin-bottom: 10px;">Volver al menú principal</a>
        </div>
    </body>
</html>