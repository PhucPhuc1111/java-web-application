/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class UserDAO {

    int index = 1;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<User> getallUser() {
        String query = "select * from users";
        List<User> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getnouser() {
        String query = "select COUNT(*) from users";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int no_user = rs.getInt(1);
                return no_user;
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public User checklogin(String user, String pass) {
        String query = "select * from users\n"
                + "where userNAME = ? and userPASSWORD = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public User checkUserExist(String user) {
        String query = "select * from users\n"
                + "where userNAME = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void isAdmin(String username) {
        String query = "update users \n"
                + "set userROLE = '1'\n"
                + "where userNAME = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteUser(String userid) {
        String query
                = "  delete from users\n"
                + "  where userID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, userid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void signup(User u) {

        String query = "insert into users(userID,userNAME,userPASSWORD,userROLE,fullname,address,phone,mail) \n"
                + "values(?,?,?,?,?,?,?,?);";
        index = index + 1;
        String id = "ff00" + Integer.toString(index);
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, u.getUsername());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getRole());
            ps.setString(5, u.getFullname());
            ps.setString(6, u.getAddress());
            ps.setString(7, u.getPhone());
            ps.setString(8, u.getMail());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {

    }
}
