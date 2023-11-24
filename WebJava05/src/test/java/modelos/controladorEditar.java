package modelos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "controladorEditar", urlPatterns = {"/controladorEditar"})
public class controladorEditar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")) {
            String userId = request.getParameter("userId");
            dao.deleteUser(userId);
            String LIST_USER = null;
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());
        } else if (action.equalsIgnoreCase("edit")) {
            String INSERT_OR_EDIT = null;
            forward = INSERT_OR_EDIT;
            String userId = request.getParameter("userId");
            User user = dao.getUserById(userId);
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("listUser")) {
            String LIST_USER = null;
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());
        } else {
            String INSERT_OR_EDIT = null;
            forward = INSERT_OR_EDIT;
        }
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        String codigo = request.getParameter("codigo");

        if (action != null && codigo != null) {
            if (action.equals("editar")) {
               
                try {
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC", "root", "123456");
                    PreparedStatement ps = con.prepareStatement("select * from t_usuarios where codigo = ?");
                    ps.setString(1, codigo);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        // Establecer los atributos del usuario como atributos de la solicitud
                        request.setAttribute("codigo", rs.getString("codigo"));
                        request.setAttribute("nombre", rs.getString("nombre"));
                        request.setAttribute("clave", rs.getString("clave"));
                        request.setAttribute("estado", rs.getString("estado"));
                    }

                    con.close();
                    request.getRequestDispatcher("formularioEditar.jsp").forward(request, response);

                } catch (SQLException ex) {
                  
                }
            } else if (action.equals("eliminar")) {
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            String clave = request.getParameter("clave");
            String estado = request.getParameter("estado");

            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC";
                String user = "root";
                String password = "123456";
                Connection con = (Connection) DriverManager.getConnection(url, user, password);


                String sql = "UPDATE t_usuarios SET nombre = ?, clave = ?, estado = ? WHERE codigo = ?";
                PreparedStatement stmt = con.prepareStatement(sql);
                stmt.setString(1, nombre);
                stmt.setString(2, clave);
                stmt.setString(3, estado);
                stmt.setString(4, codigo);
                stmt.executeUpdate();


                stmt.close();
                con.close();


                response.sendRedirect("jstl_sql_a.jsp");
            } catch (ClassNotFoundException | SQLException ex) {
                out.println("Error al actualizar los datos: " + ex.getMessage());
            }
        }
    }
}

