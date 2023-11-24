<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>Editar Usuario</title>
    </head>
    <body>
        <div style="width: 450px; text-align: center; margin: 50px auto;">
            <h1 class="display-8">Editar Usuario</h1>
            <sql:query dataSource="${xcon}"
                       sql="select * from t_usuarios where codigo = ?"
                       var="result">
                <sql:param value="${param.codigo}"/>
            </sql:query>
            <form method="post" action="/actualizarUsuario" autocomplete="off">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${result.rows[0].nombre}"/>
                </div>
                <div class="form-group">
                    <label for="clave">Clave:</label>
                    <input type="password" class="form-control" id="clave" name="clave" value="${result.rows[0].clave}"/>
                </div>
                <div class="form-group">
                    <label for="estado">Estado:</label>
                    <select class="form-control" id="estado" name="estado">
                        <option value="A" <c:if test="${param.estado eq 'A'}">Activo</option>
                        <option value="N" <c:if test="${param.estado eq 'N'}">Inactivo</option>
                    </select>
                </div>
                    <button id="actualizar" type="submit" name="actualizar" class="btn btn-primary" style="margin-right: 15px">Actualizar</button>
                <a href="jstl_sql_a.jsp" class="btn btn-primary" style="background-color: red;">Cancelar</a>
            </form>
        </div>
                    
    </body>
</html>