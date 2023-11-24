<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="card" style="width: 40rem;padding: 30px 0px 0px 30px;">
            <h4 class="display-8"><c:out value='${titulo}'/></h4>
            <form name="mod_opcion" method="POST" action="/WebSistema/controladorPrincipal">
                <input type=hidden name=accion value="GRABAR_MATRICULA">
                <input type=hidden name=operacion value='<c:out value="${operacion}"/>'>
                <input type=hidden name=xcod value="<c:out value='${matricula.codigo}'/>">
                <table class="table table-striped table-hover">
                    <tbody>
                        <tr><th>Código de la matrícula:</th>
                            <td><c:out value='${matricula.codigo}'/></td></tr>
                        <tr><th>Fecha de matriculación:</th>
                            <td><input type="date" name="xfecm" value="<c:out value='${matricula.fecha}'/>"
                                       size=30></td></tr>
                        <tr><th>Número de documento:</th>
                            <td><input type="text" name="xnrodoc" value="<c:out value='${matricula.nro_doc}'/>"
                                       size=30></td></tr>
                        <tr><th>Código de alumno:</th>
                            <td><input type="text" name="xcodal" value="<c:out value='${matricula.codigo_alumno}'/>"
                                       size=30></td></tr>
                        <tr><th>Total:</th>
                            <td><input type="text" name="xtotal" value="<c:out value='${matricula.total}'/>"
                                       size=30></td></tr>
                        <tr><th>Estado:</th>
                            <td><c:choose>
                                    <c:when test="${matricula.estado=='X'}">
                                        <input type=radio name=xest value=A>Activo
                                        <input type=radio name=xest value=X checked>Inactivo
                                    </c:when>
                                    <c:otherwise>
                                        <input type=radio name=xest value=A checked>Activo
                                        <input type=radio name=xest value=X>Inactivo
                                    </c:otherwise>
                                </c:choose>
                            </td></tr>
                    </tbody>
                </table>
                <input type="submit" name="boton" class="btn btn-primary" value="GRABAR">
                <input type="submit" name="boton" class="btn btn-dark" value="CANCELAR">
            </form>
        </div>
    </body>
</html>
