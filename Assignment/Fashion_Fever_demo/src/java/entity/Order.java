/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Order {
     //Attribute
    private String id;
    private String username;
    private String status;
    private Date date;
    private double totalprice;
    private List<OrderDetails> od;
    

    //Constructor

    public Order() {
    }

    public Order(String id, String username, String status, Date date, double totalprice) {
        this.id = id;
        this.username = username;
        this.status = status;
        this.date = date;
        this.totalprice = totalprice;
    }

    public Order(String id, String username, String status, Date date, double totalprice, List<OrderDetails> od) {
        this.id = id;
        this.username = username;
        this.status = status;
        this.date = date;
        this.totalprice = totalprice;
        this.od = od;
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    public List<OrderDetails> getOd() {
        return od;
    }

    public void setOd(List<OrderDetails> od) {
        this.od = od;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", username=" + username + ", status=" + status + ", date=" + date + ", totalprice=" + totalprice + ", od=" + od + '}';
    }

    
    
}
