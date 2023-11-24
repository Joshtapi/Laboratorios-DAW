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
@WebServlet(name = "ServletMultiplicar", urlPatterns = {"/ServletMultiplicar"})
public class ServletMultiplicar extends HttpServlet {

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

            out.println("<!DOCTYPE html>");
            out.println("<center><html>");
            out.println("<head>");
            out.println("<title>Tabla de multiplicar</title>");
            out.println("<style>");
            out.println("table {");
            out.println("  border-collapse: collapse;");
            out.println("  width: 50%;");
            out.println("}");
            out.println("th, td {");
            out.println("  text-align: center;");
            out.println("  padding: 8px;");
            out.println("}");
            out.println("th {");
            out.println("  background-color: #4285F4;");
            out.println("  color: white;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h1>Tablas de multiplicar</h1></center>");


            String numeroTablaStr = request.getParameter("numeroTabla");
            int numeroTabla = 1;
            if (numeroTablaStr != null && !numeroTablaStr.isEmpty()) {
                numeroTabla = Integer.parseInt(numeroTablaStr);
            }

            out.println("<center><h2>Tabla del " + numeroTabla + "</h2></center>");
            out.println("<table>");

            out.println("<center><tr><th>Número</th><th>Resultado</th></tr></center>");
            for (int j = 1; j <= 10; j++) {
                out.println("<center><tr><td>" + numeroTabla + " x " + j + "</td><td>" + "  " + (numeroTabla * j) + "</td></tr><center>");
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html></center>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
