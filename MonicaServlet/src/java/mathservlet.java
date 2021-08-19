/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author or_mo
 */
@WebServlet(urlPatterns = {"/math-servlet.html"})
public class mathservlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>MathServlet</title>");            
            out.println("</head>");
            out.println("<body>");

            out.println("<h1>Operações Matematicas</h1>");
            out.println("<form action='math-servlet.html'>"+"Continue as operações colocando os números aqui:<br>\n"+"<input type=\"number\" name=\"x\"/>\n"+"e "+"<input type=\"number\" name=\"y\"/>\n"+"<input type=\"submit\" value=\"Calcular Tudo\"/>\n"+"</form>");
            double x = 0, y = 0;
            try{
                x = Double.parseDouble(request.getParameter("x"));
            }catch(NumberFormatException ex){}
            try{
                y = Double.parseDouble(request.getParameter("y"));
            }catch(NumberFormatException ex){}
            out.println("<h4>Resultado da adição: "+(x+y)+"  "+"("+ x +" + "+ y +")"+"</h4>");
            out.println("<h4>Resultado da subtração: "+(x-y)+"  "+"("+ x +" - "+ y +")"+"</h4>");
            out.println("<h4>Resultado da multiplicação: "+(x*y)+"  "+"("+ x +" * "+ y +")"+"</h4>");
            out.println("<h4>Resultado da divisão: "+(x/y)+"  "+"("+ x +" / "+ y +")"+"</h4>");
            out.println("<h4><a href='index.html'>Voltar</a></h4>");
            out.println("</body>");
            out.println("</html>");
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