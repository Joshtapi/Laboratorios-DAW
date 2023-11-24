/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miempresa.webapp03tarea;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "ServletPares", urlPatterns = {"/ServletPares"})
public class ServletPares extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String opcion = request.getParameter("opcion");
            int n = Integer.parseInt(opcion);


            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Numeros pares</title>");
            out.println("<style>");
            out.println("body {");
            out.println("    font-family: Arial, sans-serif;");
            out.println("    background-color: #F0F0F0;");
            out.println("}");
            out.println("h1 {");
            out.println("    color: #336699;");
            out.println("}");
            out.println("ul {");
            out.println("    list-style-type: none;");
            out.println("    margin: 0;");
            out.println("    padding: 0;");
            out.println("}");
            out.println("li {");
            out.println("    padding: 4px 8px;");
            out.println("    background-color: #FFFFFF;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h1>Los " + n + " primeros numeros pares</h1></centet>");
            out.println("<ul>");
            for (int i = 2; i <= 2 * n; i += 2) {
                out.println("<centet><li>" + i + "</li></centet>");
            }
            out.println("</ul>");
            out.println("</body>");
            out.println("</html>");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
