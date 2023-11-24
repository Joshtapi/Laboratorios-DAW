/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miempresa.webapp03tarea;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletValidacion")
public class ServletValidacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletValidacion() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String clave = request.getParameter("clave");
		

		if(usuario.equals("admin") && clave.equals("1234")) {
			response.sendRedirect("servlets.html");
		} else {
			response.setContentType("text/html");
			response.getWriter().println("<html>");
			response.getWriter().println("<head>");
			response.getWriter().println("<title>Error de autenticación</title>");
			response.getWriter().println("<style>");
			response.getWriter().println("body { background-color: #F8F8F8; font-family: Arial, sans-serif; }");
			response.getWriter().println("h1 { color: #FF0000; }");
			response.getWriter().println("p { color: #0000FF; }");
			response.getWriter().println("a { color: #0000FF; text-decoration: none; }");
			response.getWriter().println("</style>");
			response.getWriter().println("</head>");
			response.getWriter().println("<body>");
			response.getWriter().println("<center><h1>Error de autenticación</h1></center>");
			response.getWriter().println("<center><p>Usuario o clave incorrectos.</p></center><br>");
			response.getWriter().println("<strong><center><a href='index.html'>Volver al login</a></center></strong>");
			response.getWriter().println("</body>");
			response.getWriter().println("</html>");
		}
	}
}







