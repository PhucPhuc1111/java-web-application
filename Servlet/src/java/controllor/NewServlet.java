/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name="NewServlet", urlPatterns={"/newservlet"})
public class NewServlet extends HttpServlet {
   
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
            out.println("<title>Servlet NewServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath () + "</h1>");
            String name = "Le Nguyen Hoang Phuc";
            out.println("<h1 style = 'color:blue'>My name is "+name+"!</h1>");
            Date d = new Date();
            SimpleDateFormat f = new SimpleDateFormat("hh:mm:ss");
            out.println("<h1 style = 'color:pink'>Date: "+d+"!</h1>");
            out.println("<h1 style = 'color:pink'>Time: "+f.format(d)+"!</h1>");
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
        //response.sendRedirect("https://www.facebook.com/");  // chuyen sang 1 server khac
        //response.sendRedirect("index.html");  // chuyen han qua 1 server khac trong project
        //request.getRequestDispatcher("index.html").forward(request, response); // tham chieu qua 1 trang khac
        String num = request.getParameter("number");
        String name = request.getParameter("name");
        PrintWriter out = response.getWriter();
        int n;
        try {
            n = Integer.parseInt(num);
            if(n % 2 == 0){
                out.println("So chan");
            }else{
                out.println("So le");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        out.println("number:"+num);
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
        processRequest(request, response);
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
