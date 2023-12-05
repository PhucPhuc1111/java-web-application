/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class adminDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public double getrevenue(){
        String query ="SELECT SUM(unitPrice * amount_sold) AS total_sum\n" +
"FROM products;";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                double revenue = rs.getDouble(1);
                return revenue;
            }
        } catch (Exception e) {
        }
        return 0;
    }
    
    
    
}

