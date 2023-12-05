/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.entity.Fashion;
import pe.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class fashionDAO {
    public List<Fashion> getFashionbyName(String search) {
        List<Fashion> list = new ArrayList<>();
        String query = "select * from tblFashion\n" +
"where [name] like ? and [status] = 1";
        try {
            Connection conn = new DBUtils().getConnection();//mo ket noi voi sql
            PreparedStatement ps;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Fashion(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getBoolean(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean delete(String id) {
        String query = "update [dbo].[tblFashion]\n" +
"set [status] = 0\n" +
"where [id] = ?";
        try {
            Connection conn = new DBUtils().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
        return false;
    }

    
}
