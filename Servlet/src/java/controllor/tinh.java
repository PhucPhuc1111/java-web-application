/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name="Calculate", urlPatterns={"/tinh"})
public class tinh extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Calculate</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Calculate at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //processRequest(request, response);
        //request.getRequestDispatcher("tinh.html").forward(request, response);
        String dai_raw = request.getParameter("dai");
        String rong_raw = request.getParameter("rong");
        double a,b;
        PrintWriter out = response.getWriter();
        try {
            a = Double.parseDouble(dai_raw);
            b = Double.parseDouble(rong_raw);
            out.println(Tinh_dien_tich(a, b));
        } catch (Exception e) {
            System.out.println(e);
        }    
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String dai_raw = request.getParameter("dai");
        String rong_raw = request.getParameter("rong");
        double a,b;
        PrintWriter out = response.getWriter();
        try {
            a = Double.parseDouble(dai_raw);
            b = Double.parseDouble(rong_raw);
            out.println(Tinh_dien_tich(a, b));
        } catch (Exception e) {
            System.out.println(e);
        }    
    }
    private String Tinh_dien_tich(double x,double y){
        return "Dien tich: "+(x*y);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
