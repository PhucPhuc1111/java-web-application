/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import pe.entity.User;
import pe.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class userDAO {
    public User login(String userID, String password) {
        String query = "select * from tblUsers\n" +
"where [userID] = ? and [password] = ?";
        try {
            Connection conn = new DBUtils().getConnection();//mo ket noi voi sql
            PreparedStatement ps;
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
}
