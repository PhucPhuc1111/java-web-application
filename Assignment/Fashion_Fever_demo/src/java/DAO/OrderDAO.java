/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import entity.Order;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    public List<Order> getallOrder(){
        String query = "select * from orders";
        List<Order> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Order(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getDouble(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void deleteOrder(String id){
        String query ="delete from orders \n" +
"where orderID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void addOrder(String id,String userid,long total){
        String query="  insert into orders(orderID,user_ido,orderSTATUS,orderDATE,total)\n" +
"  values(?,?,'preparing',GETDATE(),?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, userid);
            ps.setLong(3, total);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void addOrderDetail(String orderid,String productid,int quantity,double price){
        String query = "insert into OrderDetail(order_id,product_id,quantity,price)\n" +
"values(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, orderid);
            ps.setString(2, productid);
            ps.setInt(3, quantity);
            ps.setDouble(4, price);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public int getnoorder(){
        String query="select COUNT(*) from orders";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int no_order = rs.getInt(1);
                return no_order;
            }
        } catch (Exception e) {
        }
        return 0;
    }
    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        System.out.println(dao.getallOrder());
    }
}
