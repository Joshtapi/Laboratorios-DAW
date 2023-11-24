<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="card" style="width: 70rem;padding: 30px 0px 0px 30px;">
            <h4 class="display-8">Listado de Matriculas</h4>
            <form method="POST" action="/WebSistema/controladorPrincipal">
                <input type="hidden" name="accion" value="buscarPorNroDoc">
                <div class="input-group mb-3">
                    <input type="text" name="nro_doc" class="form-control" placeholder="Buscar matrícula por número de documento">
                    <button type="submit" class="btn btn-success btn-lg btn-block">Buscar</button>
                </div>
            </form>
            <div style="display: flex; gap: 5px;">
                <form method=POST action="/WebSistema/controladorPrincipal">
                    <input type="hidden" name="accion" value="matriculaMostrarAlumnos">
                    <input type="hidden" name="modo" value="Lista">
                    <input type="submit" name="boton" class="btn btn-primary" value="Nuevo Registro">
                </form>

                <form id="form2" action="/WebSistema/controladorPrincipal" method="post">
                    <input type="hidden" name="accion" value="NuevoEliminarMatricula">
                    <input type="submit" name="boton" class="btn btn-dark" value="Eliminar Registro" form="form2">

                    </div>

                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nro. de documento</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Codigo de alumno</th>
                                <th scope="col">Total</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Editar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${arrMatriculas}" var="matricula">
                                <tr>
                                    <td><input type="checkbox" name="xcod" value="<c:out value='${matricula.codigo}'/>" /></td>
                                    <td><c:out value='${matricula.codigo}' /></td>
                                    <td><c:out value='${matricula.nro_doc}'/></td>
                                    <td><c:out value='${matricula.fecha}'/></td>
                                    <td><c:out value='${matricula.codigo_alumno}'/></td>
                                    <td><c:out value='${matricula.total}' /></td>
                                    <td><c:out value='${matricula.estado}' /></td>
                                    <td>
                                        <a href="/WebSistema/controladorPrincipal?accion=modificarMatricula&xcod=<c:out value='${matricula.codigo}'/>" class="btn btn-primary" style="background-color:#148F77">Editar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
            </div>
    </body>
</html>
