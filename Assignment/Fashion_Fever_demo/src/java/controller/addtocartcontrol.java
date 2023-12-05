/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import DAO.DAO;
import entity.Order;
import entity.OrderDetails;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name="cartcontrol", urlPatterns={"/addtocart"})
public class addtocartcontrol extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int quantity = 1;
        String id = request.getParameter("pid");
        DAO dao = new DAO();
        Product p = dao.getProductbyid(id);
        if(p != null){
            HttpSession session = request.getSession();
            if(session.getAttribute("order") == null){
                Order order = new Order();
                List<OrderDetails> list = new ArrayList<>();
                OrderDetails od = new OrderDetails();
                od.setQuantity(quantity);
                od.setProduct(p);
                od.setPrice(p.getPrice());
                list.add(od);
                order.setOd(list);
                session.setAttribute("order", order);
            }else{
                Order order = (Order)session.getAttribute("order");
                List<OrderDetails> list = order.getOd();
                boolean check = false;
                for (OrderDetails od : list) {
                    if(od.getProduct().getId().equals(p.getId())){
                        od.setQuantity(od.getQuantity()+quantity);
                        check = true;
                    }
                }
                if(check == false){
                    OrderDetails od = new OrderDetails();
                    od.setQuantity(quantity);
                    od.setProduct(p);
                    od.setPrice(p.getPrice());
                    list.add(od);
                }
                session.setAttribute("order", order);
            }
        }
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
