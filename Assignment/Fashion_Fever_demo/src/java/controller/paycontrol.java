/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import DAO.OrderDAO;
import entity.Order;
import entity.OrderDetails;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name="paycontrol", urlPatterns={"/pay"})
public class paycontrol extends HttpServlet {
   
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
        OrderDAO o_dao = new OrderDAO();
        HttpSession session = request.getSession();
        User u = (User)session.getAttribute("user");
        Order o = (Order) session.getAttribute("order");
        List<OrderDetails> list = o.getOd();
        long  sum = 0;
            for (int i = 0; i < list.size(); i++) {
                sum += list.get(i).getProduct().getPrice()*list.get(i).getQuantity();
        }
        o.setId("Or002");
        o_dao.addOrder(o.getId(),u.getId(), sum);
        for (int i = 0; i < list.size(); i++) {
            String orderid = o.getId();
            String productid = list.get(i).getProduct().getId();
            int quantity = list.get(i).getQuantity();
            double price = list.get(i).getPrice();
            o_dao.addOrderDetail(orderid, productid, quantity, price);
        }
        session.removeAttribute("order");
        response.sendRedirect("home");
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
        processRequest(request, response);
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
